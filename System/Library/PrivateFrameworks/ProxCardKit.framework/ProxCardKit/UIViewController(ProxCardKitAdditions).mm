@interface UIViewController(ProxCardKitAdditions)
- (id)presentProxCardFlowWithDelegate:()ProxCardKitAdditions initialViewController:;
- (id)presentProxCardFlowWithDelegate:()ProxCardKitAdditions initialViewController:configuration:;
@end

@implementation UIViewController(ProxCardKitAdditions)

- (id)presentProxCardFlowWithDelegate:()ProxCardKitAdditions initialViewController:
{
  v6 = a4;
  v7 = a3;
  v8 = +[PRXFlowConfiguration defaultConfiguration];
  v9 = [self presentProxCardFlowWithDelegate:v7 initialViewController:v6 configuration:v8];

  return v9;
}

- (id)presentProxCardFlowWithDelegate:()ProxCardKitAdditions initialViewController:configuration:
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[PRXCardContainerViewController alloc] initWithConfiguration:v8];

  [(PRXCardContainerViewController *)v11 setFlowDelegate:v10];
  mainNavigationController = [(PRXCardContainerViewController *)v11 mainNavigationController];
  [mainNavigationController pushViewController:v9 animated:0];

  [self presentViewController:v11 animated:1 completion:0];
  mainNavigationController2 = [(PRXCardContainerViewController *)v11 mainNavigationController];

  return mainNavigationController2;
}

@end