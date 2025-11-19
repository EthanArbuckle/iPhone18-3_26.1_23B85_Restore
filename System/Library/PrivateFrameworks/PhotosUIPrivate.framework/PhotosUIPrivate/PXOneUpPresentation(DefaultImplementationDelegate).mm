@interface PXOneUpPresentation(DefaultImplementationDelegate)
+ (PUNavigationController)implementationDelegateNavigationControllerWithRootViewController:()DefaultImplementationDelegate;
+ (PUPXOneUpPresentationImplementationDelegate)defaultImplementationDelegate;
@end

@implementation PXOneUpPresentation(DefaultImplementationDelegate)

+ (PUPXOneUpPresentationImplementationDelegate)defaultImplementationDelegate
{
  v0 = objc_alloc_init(PUPXOneUpPresentationImplementationDelegate);

  return v0;
}

+ (PUNavigationController)implementationDelegateNavigationControllerWithRootViewController:()DefaultImplementationDelegate
{
  v3 = a3;
  v4 = [[PUNavigationController alloc] initWithRootViewController:v3];

  return v4;
}

@end