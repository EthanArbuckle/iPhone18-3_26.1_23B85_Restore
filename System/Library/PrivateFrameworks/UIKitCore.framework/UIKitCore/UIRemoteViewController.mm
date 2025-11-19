@interface UIRemoteViewController
@end

@implementation UIRemoteViewController

uint64_t __53___UIRemoteViewController_appendDescriptionToStream___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) serviceBundleIdentifier];
  [v2 appendString:v3 withName:@"service"];

  v4 = *(a1 + 32);
  v5 = *(a1 + 48);

  return [v4 appendString:v5 withName:@"implementation"];
}

id __53___UIRemoteViewController_appendDescriptionToStream___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) appendInt:objc_msgSend(*(a1 + 40) withName:{"serviceProcessIdentifier"), @"pid"}];
  v3 = *(a1 + 32);
  v4 = [objc_opt_class() serviceViewControllerInterface];
  v5 = [v4 protocol];
  v6 = NSStringFromProtocol(v5);
  v7 = [v3 appendObject:v6 withName:@"serviceViewControllerInterface"];

  v8 = *(a1 + 32);
  v9 = [objc_opt_class() exportedInterface];
  v10 = [v9 protocol];
  v11 = NSStringFromProtocol(v10);
  v12 = [v8 appendObject:v11 withName:@"exportedInterface"];

  return [*(a1 + 32) appendObject:*(*(a1 + 40) + 992) withName:@"implementation"];
}

@end