@interface STFamilyCircleViewControllerProvider
+ (id)familyRootViewControllerPresentedAsModal:(BOOL)a3;
@end

@implementation STFamilyCircleViewControllerProvider

+ (id)familyRootViewControllerPresentedAsModal:(BOOL)a3
{
  v3 = [[STFamilyRootViewController alloc] initWithModalPresentation:a3];

  return v3;
}

@end