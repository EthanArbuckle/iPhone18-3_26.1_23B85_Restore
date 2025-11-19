@interface UIViewController(PXExtendedTraitCollection)
+ (void)_px_prepareClassForExtendedTraitCollection;
+ (void)px_preloadExtendedTraitCollection;
- (PXViewControllerExtendedTraitCollection)px_extendedTraitCollection;
- (uint64_t)_pxswizzled_viewControllerTraitCollection_viewDidAppear:()PXExtendedTraitCollection;
- (uint64_t)_pxswizzled_viewControllerTraitCollection_viewDidLoad;
- (uint64_t)_pxswizzled_viewControllerTraitCollection_viewIsAppearing:()PXExtendedTraitCollection;
- (uint64_t)_pxswizzled_viewControllerTraitCollection_viewLayoutMarginsDidChange;
- (uint64_t)_pxswizzled_viewControllerTraitCollection_viewWillAppear:()PXExtendedTraitCollection;
- (uint64_t)_pxswizzled_viewControllerTraitCollection_viewWillLayoutSubviews;
- (void)_pxswizzled_viewControllerTraitCollection_didMoveToParentViewController:()PXExtendedTraitCollection;
- (void)_pxswizzled_viewControllerTraitCollection_traitCollectionDidChange:()PXExtendedTraitCollection;
- (void)_pxswizzled_viewControllerTraitCollection_viewSafeAreaInsetsDidChange;
- (void)_pxswizzled_viewControllerTraitCollection_viewWillTransitionToSize:()PXExtendedTraitCollection withTransitionCoordinator:;
- (void)px_enableExtendedTraitCollection;
@end

@implementation UIViewController(PXExtendedTraitCollection)

- (void)px_enableExtendedTraitCollection
{
  [objc_opt_class() _px_prepareClassForExtendedTraitCollection];
  v2 = [a1 px_extendedTraitCollection];
  [v2 setEnabled:1];
}

+ (void)_px_prepareClassForExtendedTraitCollection
{
  v2 = objc_opt_class();
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __89__UIViewController_PXExtendedTraitCollection___px_prepareClassForExtendedTraitCollection__block_invoke_3;
  v3[3] = &unk_1E7BB7E38;
  v4 = &__block_literal_global_15130;
  [a1 px_swizzleOnceAsSubclassOfClass:v2 context:PXExtendedTraitCollectionContext usingBlock:v3];
}

- (PXViewControllerExtendedTraitCollection)px_extendedTraitCollection
{
  v2 = objc_getAssociatedObject(a1, PXExtendedTraitCollectionAssociationKey);
  if (!v2)
  {
    v2 = [[PXViewControllerExtendedTraitCollection alloc] initWithViewController:a1];
    objc_setAssociatedObject(a1, PXExtendedTraitCollectionAssociationKey, v2, 1);
  }

  return v2;
}

- (uint64_t)_pxswizzled_viewControllerTraitCollection_viewDidLoad
{
  v2 = [a1 px_extendedTraitCollection];
  [v2 viewControllerViewDidLoad];

  return [a1 _pxswizzled_viewControllerTraitCollection_viewDidLoad];
}

- (uint64_t)_pxswizzled_viewControllerTraitCollection_viewLayoutMarginsDidChange
{
  v2 = [a1 px_extendedTraitCollection];
  [v2 viewControllerViewLayoutMarginsDidChange];

  return [a1 _pxswizzled_viewControllerTraitCollection_viewLayoutMarginsDidChange];
}

- (void)_pxswizzled_viewControllerTraitCollection_viewSafeAreaInsetsDidChange
{
  v2 = [a1 px_extendedTraitCollection];
  [v2 viewControllerViewSafeAreaInsetsDidChange];
  [v2 peripheryInsetsNeedsUpdate];
  [a1 _pxswizzled_viewControllerTraitCollection_viewSafeAreaInsetsDidChange];
}

- (uint64_t)_pxswizzled_viewControllerTraitCollection_viewWillLayoutSubviews
{
  v2 = [a1 px_extendedTraitCollection];
  [v2 viewControllerViewWillLayoutSubviews];

  return [a1 _pxswizzled_viewControllerTraitCollection_viewWillLayoutSubviews];
}

- (void)_pxswizzled_viewControllerTraitCollection_didMoveToParentViewController:()PXExtendedTraitCollection
{
  v5 = a3;
  v4 = [a1 px_extendedTraitCollection];
  [v4 viewControllerDidMoveToParentViewController:v5];

  [a1 _pxswizzled_viewControllerTraitCollection_didMoveToParentViewController:v5];
}

- (void)_pxswizzled_viewControllerTraitCollection_traitCollectionDidChange:()PXExtendedTraitCollection
{
  v5 = a3;
  v4 = [a1 px_extendedTraitCollection];
  [v4 viewControllerTraitCollectionDidChange];

  [a1 _pxswizzled_viewControllerTraitCollection_traitCollectionDidChange:v5];
}

- (void)_pxswizzled_viewControllerTraitCollection_viewWillTransitionToSize:()PXExtendedTraitCollection withTransitionCoordinator:
{
  v8 = a5;
  v9 = [a1 px_extendedTraitCollection];
  [v9 viewControllerViewWillTransitionToSize:{a2, a3}];
  [a1 _pxswizzled_viewControllerTraitCollection_viewWillTransitionToSize:v8 withTransitionCoordinator:{a2, a3}];
  objc_initWeak(&location, v9);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __140__UIViewController_PXExtendedTraitCollection___pxswizzled_viewControllerTraitCollection_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v10[3] = &unk_1E7BB7E60;
  objc_copyWeak(&v11, &location);
  [v8 animateAlongsideTransition:0 completion:v10];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (uint64_t)_pxswizzled_viewControllerTraitCollection_viewDidAppear:()PXExtendedTraitCollection
{
  v5 = [a1 px_extendedTraitCollection];
  [v5 viewControllerViewDidAppear];

  return [a1 _pxswizzled_viewControllerTraitCollection_viewDidAppear:a3];
}

- (uint64_t)_pxswizzled_viewControllerTraitCollection_viewIsAppearing:()PXExtendedTraitCollection
{
  v5 = [a1 px_extendedTraitCollection];
  [v5 viewControllerViewIsAppearing];

  return [a1 _pxswizzled_viewControllerTraitCollection_viewIsAppearing:a3];
}

- (uint64_t)_pxswizzled_viewControllerTraitCollection_viewWillAppear:()PXExtendedTraitCollection
{
  v5 = [a1 px_extendedTraitCollection];
  [v5 viewControllerViewWillAppear];

  return [a1 _pxswizzled_viewControllerTraitCollection_viewWillAppear:a3];
}

+ (void)px_preloadExtendedTraitCollection
{
  v2 = +[PXPreloadScheduler sharedScheduler];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __80__UIViewController_PXExtendedTraitCollection__px_preloadExtendedTraitCollection__block_invoke;
  v3[3] = &__block_descriptor_40_e5_v8__0l;
  v3[4] = a1;
  [v2 scheduleMainQueueTask:v3];
}

@end