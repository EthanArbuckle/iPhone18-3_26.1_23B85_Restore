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
  v9 = [a1 presentProxCardFlowWithDelegate:v7 initialViewController:v6 configuration:v8];

  return v9;
}

- (id)presentProxCardFlowWithDelegate:()ProxCardKitAdditions initialViewController:configuration:
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[PRXCardContainerViewController alloc] initWithConfiguration:v8];

  [(PRXCardContainerViewController *)v11 setFlowDelegate:v10];
  v12 = [(PRXCardContainerViewController *)v11 mainNavigationController];
  [v12 pushViewController:v9 animated:0];

  [a1 presentViewController:v11 animated:1 completion:0];
  v13 = [(PRXCardContainerViewController *)v11 mainNavigationController];

  return v13;
}

@end