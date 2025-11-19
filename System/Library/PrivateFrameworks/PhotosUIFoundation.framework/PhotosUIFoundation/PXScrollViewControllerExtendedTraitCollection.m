@interface PXScrollViewControllerExtendedTraitCollection
- (PXScrollViewController)scrollViewController;
- (PXScrollViewControllerExtendedTraitCollection)initWithScrollViewController:(id)a3;
- (UIView)underlyingView;
- (id)_initForSubclassWithUserInterfaceFeature:(int64_t)a3;
- (void)_beginObservingTraitEnvironment;
- (void)_invalidateContentSizeCategoryInChangeBlock;
- (void)_invalidateDisplayScaleInChangeBlock;
- (void)_invalidateLayoutDirectionInChangeBlock;
- (void)_invalidateLayoutSizeClassInChangeBlock;
- (void)_invalidateUserInterfaceIdiomInChangeBlock;
- (void)_invalidateUserInterfaceLevelInChangeBlock;
- (void)_invalidateUserInterfaceStyleInChangeBlock;
- (void)scrollViewControllerContentInsetDidChange:(id)a3;
- (void)scrollViewControllerDidLayoutSubviews:(id)a3;
- (void)scrollViewControllerViewDidMoveToWindow:(id)a3;
- (void)scrollViewControllerViewLayoutMarginsDidChange:(id)a3;
- (void)scrollViewControllerWillLayoutSubviews:(id)a3;
@end

@implementation PXScrollViewControllerExtendedTraitCollection

- (PXScrollViewController)scrollViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_scrollViewController);

  return WeakRetained;
}

- (void)_invalidateUserInterfaceLevelInChangeBlock
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __91__PXScrollViewControllerExtendedTraitCollection__invalidateUserInterfaceLevelInChangeBlock__block_invoke;
  v2[3] = &unk_1E7BB69B0;
  v2[4] = self;
  [(PXObservable *)self performChanges:v2];
}

- (void)_invalidateUserInterfaceStyleInChangeBlock
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __91__PXScrollViewControllerExtendedTraitCollection__invalidateUserInterfaceStyleInChangeBlock__block_invoke;
  v2[3] = &unk_1E7BB69B0;
  v2[4] = self;
  [(PXObservable *)self performChanges:v2];
}

- (void)_invalidateUserInterfaceIdiomInChangeBlock
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __91__PXScrollViewControllerExtendedTraitCollection__invalidateUserInterfaceIdiomInChangeBlock__block_invoke;
  v2[3] = &unk_1E7BB69B0;
  v2[4] = self;
  [(PXObservable *)self performChanges:v2];
}

- (void)_invalidateDisplayScaleInChangeBlock
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __85__PXScrollViewControllerExtendedTraitCollection__invalidateDisplayScaleInChangeBlock__block_invoke;
  v2[3] = &unk_1E7BB69B0;
  v2[4] = self;
  [(PXObservable *)self performChanges:v2];
}

- (void)_invalidateContentSizeCategoryInChangeBlock
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __92__PXScrollViewControllerExtendedTraitCollection__invalidateContentSizeCategoryInChangeBlock__block_invoke;
  v2[3] = &unk_1E7BB69B0;
  v2[4] = self;
  [(PXObservable *)self performChanges:v2];
}

- (void)_invalidateLayoutDirectionInChangeBlock
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __88__PXScrollViewControllerExtendedTraitCollection__invalidateLayoutDirectionInChangeBlock__block_invoke;
  v2[3] = &unk_1E7BB69B0;
  v2[4] = self;
  [(PXObservable *)self performChanges:v2];
}

- (void)_invalidateLayoutSizeClassInChangeBlock
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __88__PXScrollViewControllerExtendedTraitCollection__invalidateLayoutSizeClassInChangeBlock__block_invoke;
  v2[3] = &unk_1E7BB69B0;
  v2[4] = self;
  [(PXObservable *)self performChanges:v2];
}

- (void)_beginObservingTraitEnvironment
{
  v24[2] = *MEMORY[0x1E69E9840];
  v3 = [(PXScrollViewControllerExtendedTraitCollection *)self underlyingView];
  v24[0] = objc_opt_class();
  v24[1] = objc_opt_class();
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
  v5 = [v3 registerForTraitChanges:v4 withTarget:self action:sel__invalidateLayoutSizeClassInChangeBlock];

  v23 = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
  v7 = [v3 registerForTraitChanges:v6 withTarget:self action:sel__invalidateLayoutDirectionInChangeBlock];

  v22 = objc_opt_class();
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
  v9 = [v3 registerForTraitChanges:v8 withTarget:self action:sel__invalidateContentSizeCategoryInChangeBlock];

  v21 = objc_opt_class();
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
  v11 = [v3 registerForTraitChanges:v10 withTarget:self action:sel__invalidateDisplayScaleInChangeBlock];

  v20 = objc_opt_class();
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
  v13 = [v3 registerForTraitChanges:v12 withTarget:self action:sel__invalidateUserInterfaceIdiomInChangeBlock];

  v19 = objc_opt_class();
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
  v15 = [v3 registerForTraitChanges:v14 withTarget:self action:sel__invalidateUserInterfaceStyleInChangeBlock];

  v18 = objc_opt_class();
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
  v17 = [v3 registerForTraitChanges:v16 withTarget:self action:sel__invalidateUserInterfaceLevelInChangeBlock];
}

- (void)scrollViewControllerViewDidMoveToWindow:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __89__PXScrollViewControllerExtendedTraitCollection_scrollViewControllerViewDidMoveToWindow___block_invoke;
  v3[3] = &unk_1E7BB69B0;
  v3[4] = self;
  [(PXObservable *)self performChanges:v3];
}

- (void)scrollViewControllerViewLayoutMarginsDidChange:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __96__PXScrollViewControllerExtendedTraitCollection_scrollViewControllerViewLayoutMarginsDidChange___block_invoke;
  v3[3] = &unk_1E7BB69B0;
  v3[4] = self;
  [(PXObservable *)self performChanges:v3];
}

- (void)scrollViewControllerContentInsetDidChange:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __91__PXScrollViewControllerExtendedTraitCollection_scrollViewControllerContentInsetDidChange___block_invoke;
  v3[3] = &unk_1E7BB69B0;
  v3[4] = self;
  [(PXObservable *)self performChanges:v3];
}

uint64_t __91__PXScrollViewControllerExtendedTraitCollection_scrollViewControllerContentInsetDidChange___block_invoke(uint64_t a1)
{
  [*(a1 + 32) invalidateSafeAreaInsets];
  v2 = *(a1 + 32);

  return [v2 peripheryInsetsNeedsUpdate];
}

- (void)scrollViewControllerDidLayoutSubviews:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __87__PXScrollViewControllerExtendedTraitCollection_scrollViewControllerDidLayoutSubviews___block_invoke;
  v3[3] = &unk_1E7BB69B0;
  v3[4] = self;
  [(PXObservable *)self performChanges:v3];
}

- (void)scrollViewControllerWillLayoutSubviews:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __88__PXScrollViewControllerExtendedTraitCollection_scrollViewControllerWillLayoutSubviews___block_invoke;
  v3[3] = &unk_1E7BB69B0;
  v3[4] = self;
  [(PXObservable *)self performChanges:v3];
}

uint64_t __88__PXScrollViewControllerExtendedTraitCollection_scrollViewControllerWillLayoutSubviews___block_invoke(uint64_t a1)
{
  [*(a1 + 32) invalidateLayoutMargins];
  v2 = *(a1 + 32);

  return [v2 invalidateWindowReferenceSize];
}

- (UIView)underlyingView
{
  WeakRetained = objc_loadWeakRetained(&self->_scrollViewController);
  v3 = [WeakRetained scrollView];

  return v3;
}

- (PXScrollViewControllerExtendedTraitCollection)initWithScrollViewController:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PXScrollViewControllerExtendedTraitCollection;
  v5 = [(PXExtendedTraitCollection *)&v8 _initForSubclassWithUserInterfaceFeature:0];
  v6 = v5;
  if (v5)
  {
    [(PXExtendedTraitCollection *)v5 setEnabled:1];
    objc_storeWeak(&v6->_scrollViewController, v4);
    [v4 registerObserver:v6];
    [(PXExtendedTraitCollection *)v6 backingViewDidLoad];
    [(PXScrollViewControllerExtendedTraitCollection *)v6 _prepareForObservation];
  }

  return v6;
}

- (id)_initForSubclassWithUserInterfaceFeature:(int64_t)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"PXScrollViewControllerExtendedTraitCollection.m" lineNumber:25 description:{@"%s is not available as initializer", "-[PXScrollViewControllerExtendedTraitCollection _initForSubclassWithUserInterfaceFeature:]"}];

  abort();
}

@end