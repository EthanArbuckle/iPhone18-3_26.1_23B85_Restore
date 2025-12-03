@interface STFamilyCircleViewControllerProvider
+ (id)familyRootViewControllerPresentedAsModal:(BOOL)modal;
@end

@implementation STFamilyCircleViewControllerProvider

+ (id)familyRootViewControllerPresentedAsModal:(BOOL)modal
{
  v3 = [[STFamilyRootViewController alloc] initWithModalPresentation:modal];

  return v3;
}

@end