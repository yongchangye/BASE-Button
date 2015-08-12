//
//  ViewController.m
//  BASE-Button
//
//  Created by 叶永长 on 8/11/15.
//  Copyright (c) 2015 YYC. All rights reserved.
//

#import "ViewController.h"
#import "FirstViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];//初始化一个普通button
    button.frame = CGRectMake(50, 100, 100, 25);//初始化button大小
    [button setBackgroundColor:[UIColor redColor]];//button的背景颜色
    [button setImage:[UIImage imageNamed:@""] forState:UIControlStateNormal];//button上添加图片
    [button setBackgroundImage:[UIImage imageNamed:@""] forState:UIControlStateNormal];//button添加背景图片
    [button setTitle:@"button" forState:UIControlStateNormal];//button上添加文字
    button.titleLabel.font = [UIFont systemFontOfSize:12];//设置button上字体大小;
    [button setTitleColor:[UIColor yellowColor] forState:UIControlStateNormal];//设置button上文字颜色
    [button addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];//添加button的事件
    [self.view addSubview:button];//把button放到view上
    
    
    
    
    
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(50, 150, 100, 20)];//初始化label并且设置大小
    label.text = @"我是label";//设置label的text
    label.textColor = [UIColor redColor];//设置label文字颜色
    label.font = [UIFont systemFontOfSize:12];//设置文字大小
    label.textAlignment = NSTextAlignmentCenter;//设置label的对其方式
    label.backgroundColor = [UIColor yellowColor];//设置label背景颜色
    [self.view addSubview:label];//把label放到view上
    
    
    
    
    UIView *view = [[UIView alloc]initWithFrame:CGRectMake(50, 200, 100, 20)];//初始化view设置大小
    view.backgroundColor = [UIColor greenColor];//设置view的背景色
    [self.view addSubview:view];//把view放到view上
    
    
    UIImageView *imageView = [[UIImageView alloc]initWithFrame:CGRectMake(50, 250, 100, 100)];//初始化imageView设置大小
    [imageView setImage:[UIImage imageNamed:@""]];//设置imageview的图片
    imageView.backgroundColor = [UIColor grayColor];//设置imageview背景色
    [self.view addSubview:imageView];//imageView放到view上
    
    
    
    UIScrollView *scrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(200, 100, 100, 300)];//初始化scrollview设置大小
    scrollView.backgroundColor = [UIColor whiteColor];//设置scrollview大小
    scrollView.showsHorizontalScrollIndicator = YES;//显示竖向滚动条
    scrollView.showsVerticalScrollIndicator = YES;//显示横向滚动条
    scrollView.contentSize = CGSizeMake(100, 600);//设置滚动的范围
    [self.view addSubview:scrollView];//把scrollview放到view上
    
}
-(void)btnClick:(UIButton *)sender{//button的点击事件一定要实现
    FirstViewController *first = [[FirstViewController alloc]init];
    [self.navigationController pushViewController:first animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
