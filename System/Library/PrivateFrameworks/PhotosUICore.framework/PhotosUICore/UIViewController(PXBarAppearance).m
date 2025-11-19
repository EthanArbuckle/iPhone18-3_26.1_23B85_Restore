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
  v2 = [a1 px_barAppearance];
  [v2 setEnabled:1];
}

+ (uint64_t)_px_prepareClassForBarAppearance
{
  v2 = objc_opt_class();
  v3 = PXBarAppearanceContext;

  return [a1 px_swizzleOnceAsSubclassOfClass:v2 context:v3 usingBlock:&__block_literal_global_115684];
}

- (PXBarAppearance)px_barAppearance
{
  v2 = objc_getAssociatedObject(a1, PXBarAppearanceAssocationKey);
  if (!v2)
  {
    v2 = [[PXBarAppearance alloc] initWithViewController:a1];
    objc_setAssociatedObject(a1, PXBarAppearanceAssocationKey, v2, 1);
  }

  return v2;
}

- (uint64_t)_pxswizzled_barAppearance_preferredStatusBarUpdateAnimation
{
  v2 = [a1 _pxswizzled_barAppearance_preferredStatusBarUpdateAnimation];
  v3 = [a1 px_barAppearance];
  v4 = [v3 adjustedPreferredStatusBarUpdateAnimation:v2];

  return v4;
}

- (uint64_t)_pxswizzled_barAppearance_prefersStatusBarHidden
{
  if ([a1 _pxswizzled_barAppearance_prefersStatusBarHidden])
  {
    return 1;
  }

  v3 = [a1 px_barAppearance];
  v4 = [v3 adjustedPrefersStatusBarHidden:0];

  return v4;
}

- (void)_pxswizzled_barAppearance_viewDidDisappear:()PXBarAppearance
{
  [a1 _pxswizzled_barAppearance_viewDidDisappear:?];
  v5 = [a1 px_barAppearance];
  [v5 viewControllerViewDidDisappear:a3];
}

- (void)_pxswizzled_barAppearance_viewIsAppearing:()PXBarAppearance
{
  [a1 _pxswizzled_barAppearance_viewIsAppearing:?];
  v5 = [a1 px_barAppearance];
  [v5 viewControllerViewIsAppearing:a3];
}

- (void)_pxswizzled_barAppearance_viewWillAppear:()PXBarAppearance
{
  [a1 _pxswizzled_barAppearance_viewWillAppear:?];
  v5 = [a1 px_barAppearance];
  [v5 viewControllerViewWillAppear:a3];
}

- (void)px_enablePrefersViewIsAppearingForAppearanceUpdates
{
  v1 = [a1 px_barAppearance];
  [v1 setPrefersViewIsAppearingForAppearanceUpdates:1];
}

@end