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
  px_extendedTraitCollection = [self px_extendedTraitCollection];
  [px_extendedTraitCollection setEnabled:1];
}

+ (void)_px_prepareClassForExtendedTraitCollection
{
  v2 = objc_opt_class();
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __89__UIViewController_PXExtendedTraitCollection___px_prepareClassForExtendedTraitCollection__block_invoke_3;
  v3[3] = &unk_1E7BB7E38;
  v4 = &__block_literal_global_15130;
  [self px_swizzleOnceAsSubclassOfClass:v2 context:PXExtendedTraitCollectionContext usingBlock:v3];
}

- (PXViewControllerExtendedTraitCollection)px_extendedTraitCollection
{
  v2 = objc_getAssociatedObject(self, PXExtendedTraitCollectionAssociationKey);
  if (!v2)
  {
    v2 = [[PXViewControllerExtendedTraitCollection alloc] initWithViewController:self];
    objc_setAssociatedObject(self, PXExtendedTraitCollectionAssociationKey, v2, 1);
  }

  return v2;
}

- (uint64_t)_pxswizzled_viewControllerTraitCollection_viewDidLoad
{
  px_extendedTraitCollection = [self px_extendedTraitCollection];
  [px_extendedTraitCollection viewControllerViewDidLoad];

  return [self _pxswizzled_viewControllerTraitCollection_viewDidLoad];
}

- (uint64_t)_pxswizzled_viewControllerTraitCollection_viewLayoutMarginsDidChange
{
  px_extendedTraitCollection = [self px_extendedTraitCollection];
  [px_extendedTraitCollection viewControllerViewLayoutMarginsDidChange];

  return [self _pxswizzled_viewControllerTraitCollection_viewLayoutMarginsDidChange];
}

- (void)_pxswizzled_viewControllerTraitCollection_viewSafeAreaInsetsDidChange
{
  px_extendedTraitCollection = [self px_extendedTraitCollection];
  [px_extendedTraitCollection viewControllerViewSafeAreaInsetsDidChange];
  [px_extendedTraitCollection peripheryInsetsNeedsUpdate];
  [self _pxswizzled_viewControllerTraitCollection_viewSafeAreaInsetsDidChange];
}

- (uint64_t)_pxswizzled_viewControllerTraitCollection_viewWillLayoutSubviews
{
  px_extendedTraitCollection = [self px_extendedTraitCollection];
  [px_extendedTraitCollection viewControllerViewWillLayoutSubviews];

  return [self _pxswizzled_viewControllerTraitCollection_viewWillLayoutSubviews];
}

- (void)_pxswizzled_viewControllerTraitCollection_didMoveToParentViewController:()PXExtendedTraitCollection
{
  v5 = a3;
  px_extendedTraitCollection = [self px_extendedTraitCollection];
  [px_extendedTraitCollection viewControllerDidMoveToParentViewController:v5];

  [self _pxswizzled_viewControllerTraitCollection_didMoveToParentViewController:v5];
}

- (void)_pxswizzled_viewControllerTraitCollection_traitCollectionDidChange:()PXExtendedTraitCollection
{
  v5 = a3;
  px_extendedTraitCollection = [self px_extendedTraitCollection];
  [px_extendedTraitCollection viewControllerTraitCollectionDidChange];

  [self _pxswizzled_viewControllerTraitCollection_traitCollectionDidChange:v5];
}

- (void)_pxswizzled_viewControllerTraitCollection_viewWillTransitionToSize:()PXExtendedTraitCollection withTransitionCoordinator:
{
  v8 = a5;
  px_extendedTraitCollection = [self px_extendedTraitCollection];
  [px_extendedTraitCollection viewControllerViewWillTransitionToSize:{a2, a3}];
  [self _pxswizzled_viewControllerTraitCollection_viewWillTransitionToSize:v8 withTransitionCoordinator:{a2, a3}];
  objc_initWeak(&location, px_extendedTraitCollection);
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
  px_extendedTraitCollection = [self px_extendedTraitCollection];
  [px_extendedTraitCollection viewControllerViewDidAppear];

  return [self _pxswizzled_viewControllerTraitCollection_viewDidAppear:a3];
}

- (uint64_t)_pxswizzled_viewControllerTraitCollection_viewIsAppearing:()PXExtendedTraitCollection
{
  px_extendedTraitCollection = [self px_extendedTraitCollection];
  [px_extendedTraitCollection viewControllerViewIsAppearing];

  return [self _pxswizzled_viewControllerTraitCollection_viewIsAppearing:a3];
}

- (uint64_t)_pxswizzled_viewControllerTraitCollection_viewWillAppear:()PXExtendedTraitCollection
{
  px_extendedTraitCollection = [self px_extendedTraitCollection];
  [px_extendedTraitCollection viewControllerViewWillAppear];

  return [self _pxswizzled_viewControllerTraitCollection_viewWillAppear:a3];
}

+ (void)px_preloadExtendedTraitCollection
{
  v2 = +[PXPreloadScheduler sharedScheduler];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __80__UIViewController_PXExtendedTraitCollection__px_preloadExtendedTraitCollection__block_invoke;
  v3[3] = &__block_descriptor_40_e5_v8__0l;
  v3[4] = self;
  [v2 scheduleMainQueueTask:v3];
}

@end