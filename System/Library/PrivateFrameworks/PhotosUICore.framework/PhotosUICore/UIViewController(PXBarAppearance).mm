@interface UIViewController(PXBarAppearance)
+ (uint64_t)_px_prepareClassForBarAppearance;
- (PXBarAppearance)px_barAppearance;
- (uint64_t)_pxswizzled_barAppearance_preferredStatusBarUpdateAnimation;
- (uint64_t)_pxswizzled_barAppearance_prefersStatusBarHidden;
- (void)_pxswizzled_barAppearance_viewDidDisappear:()PXBarAppearance;
- (void)_pxswizzled_barAppearance_viewIsAppearing:()PXBarAppearance;
- (void)_pxswizzled_barAppearance_viewWillAppear:()PXBarAppearance;
- (void)px_enableBarAppearance;
- (void)px_enablePrefersViewIsAppearingForAppearanceUpdates;
@end

@implementation UIViewController(PXBarAppearance)

- (void)px_enableBarAppearance
{
  [objc_opt_class() _px_prepareClassForBarAppearance];
  px_barAppearance = [self px_barAppearance];
  [px_barAppearance setEnabled:1];
}

+ (uint64_t)_px_prepareClassForBarAppearance
{
  v2 = objc_opt_class();
  v3 = PXBarAppearanceContext;

  return [self px_swizzleOnceAsSubclassOfClass:v2 context:v3 usingBlock:&__block_literal_global_115684];
}

- (PXBarAppearance)px_barAppearance
{
  v2 = objc_getAssociatedObject(self, PXBarAppearanceAssocationKey);
  if (!v2)
  {
    v2 = [[PXBarAppearance alloc] initWithViewController:self];
    objc_setAssociatedObject(self, PXBarAppearanceAssocationKey, v2, 1);
  }

  return v2;
}

- (uint64_t)_pxswizzled_barAppearance_preferredStatusBarUpdateAnimation
{
  _pxswizzled_barAppearance_preferredStatusBarUpdateAnimation = [self _pxswizzled_barAppearance_preferredStatusBarUpdateAnimation];
  px_barAppearance = [self px_barAppearance];
  v4 = [px_barAppearance adjustedPreferredStatusBarUpdateAnimation:_pxswizzled_barAppearance_preferredStatusBarUpdateAnimation];

  return v4;
}

- (uint64_t)_pxswizzled_barAppearance_prefersStatusBarHidden
{
  if ([self _pxswizzled_barAppearance_prefersStatusBarHidden])
  {
    return 1;
  }

  px_barAppearance = [self px_barAppearance];
  v4 = [px_barAppearance adjustedPrefersStatusBarHidden:0];

  return v4;
}

- (void)_pxswizzled_barAppearance_viewDidDisappear:()PXBarAppearance
{
  [self _pxswizzled_barAppearance_viewDidDisappear:?];
  px_barAppearance = [self px_barAppearance];
  [px_barAppearance viewControllerViewDidDisappear:a3];
}

- (void)_pxswizzled_barAppearance_viewIsAppearing:()PXBarAppearance
{
  [self _pxswizzled_barAppearance_viewIsAppearing:?];
  px_barAppearance = [self px_barAppearance];
  [px_barAppearance viewControllerViewIsAppearing:a3];
}

- (void)_pxswizzled_barAppearance_viewWillAppear:()PXBarAppearance
{
  [self _pxswizzled_barAppearance_viewWillAppear:?];
  px_barAppearance = [self px_barAppearance];
  [px_barAppearance viewControllerViewWillAppear:a3];
}

- (void)px_enablePrefersViewIsAppearingForAppearanceUpdates
{
  px_barAppearance = [self px_barAppearance];
  [px_barAppearance setPrefersViewIsAppearingForAppearanceUpdates:1];
}

@end