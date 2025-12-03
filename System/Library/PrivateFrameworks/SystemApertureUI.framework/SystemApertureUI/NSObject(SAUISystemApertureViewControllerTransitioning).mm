@interface NSObject(SAUISystemApertureViewControllerTransitioning)
- (BOOL)_isSystemApertureTransitioningOptionEnabled:()SAUISystemApertureViewControllerTransitioning;
- (void)_setSystemApertureTransitioningOption:()SAUISystemApertureViewControllerTransitioning enabled:;
@end

@implementation NSObject(SAUISystemApertureViewControllerTransitioning)

- (BOOL)_isSystemApertureTransitioningOptionEnabled:()SAUISystemApertureViewControllerTransitioning
{
  v4 = objc_getAssociatedObject(self, "com.apple.SystemApertureUI.viewControllerTransitioningOptions");
  v5 = ([v4 unsignedIntegerValue] & a3) != 0;

  return v5;
}

- (void)_setSystemApertureTransitioningOption:()SAUISystemApertureViewControllerTransitioning enabled:
{
  v7 = objc_getAssociatedObject(self, "com.apple.SystemApertureUI.viewControllerTransitioningOptions");
  unsignedIntegerValue = [v7 unsignedIntegerValue];

  v9 = 0;
  if (a4 && unsignedIntegerValue | a3)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{unsignedIntegerValue | a3, 0}];
  }

  v10 = v9;
  objc_setAssociatedObject(self, "com.apple.SystemApertureUI.viewControllerTransitioningOptions", v9, 3);
}

@end