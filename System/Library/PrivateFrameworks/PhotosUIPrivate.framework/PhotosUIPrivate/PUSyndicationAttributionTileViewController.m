@interface PUSyndicationAttributionTileViewController
- (PUSyndicationAttributionTileViewControllerDelegate)delegate;
- (id)contextMenuItemsForAttributionView:(id)a3;
- (id)loadView;
- (void)_handleHighlight:(id)a3 withAssetUUID:(id)a4;
- (void)_invalidateAttributionView;
- (void)_setupAttributionView;
- (void)_updateAttributionView;
- (void)becomeReusable;
- (void)didChangeVisibleRect;
- (void)setAssetViewModel:(id)a3;
- (void)setHighlight:(id)a3;
@end

@implementation PUSyndicationAttributionTileViewController

- (PUSyndicationAttributionTileViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)becomeReusable
{
  v3.receiver = self;
  v3.super_class = PUSyndicationAttributionTileViewController;
  [(PUTileViewController *)&v3 becomeReusable];
  [(PUSyndicationAttributionTileViewController *)self _invalidateAttributionView];
  [(PUSyndicationAttributionTileViewController *)self setAssetViewModel:0];
  [(PUSyndicationAttributionTileViewController *)self setHighlight:0];
}

- (void)didChangeVisibleRect
{
  v3 = [(PUSyndicationAttributionTileViewController *)self attributionView];
  if (v3)
  {
    v4 = v3;
    [(PUSyndicationAttributionTileViewController *)self _updateAttributionView];
    v3 = v4;
  }
}

- (id)contextMenuItemsForAttributionView:(id)a3
{
  v4 = [(PUSyndicationAttributionTileViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(PUSyndicationAttributionTileViewController *)self delegate];
    v7 = [v6 additionalContextMenuActionsForAttributionTileViewController:self];
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  v9 = v8;

  return v8;
}

- (void)_updateAttributionView
{
  v13 = [(PUSyndicationAttributionTileViewController *)self highlight];
  v3 = [(PUSyndicationAttributionTileViewController *)self attributionView];
  if (v13)
  {
    v4 = [MEMORY[0x1E69C3408] sharedInstance];
    v5 = [v4 syndicated1upPillAlignment];

    if (!v3)
    {
      v3 = PXContentSyndicationAttributionViewForSocialLayerHighlight();
      [v3 setDelegate:self];
      if (v5 == 1)
      {
        v6 = 2;
      }

      else
      {
        v6 = 1;
      }

      [v3 updateAlignment:v6];
      v7 = [(PUTileViewController *)self view];
      [v7 addSubview:v3];

      [(PUSyndicationAttributionTileViewController *)self setAttributionView:v3];
    }

    v8 = [(PUTileViewController *)self view];
    [v8 bounds];
    v10 = v9;

    [v3 prepareLayoutWithMaxWidth:v10];
    [v3 intrinsicContentSize];
    [v3 setFrame:{0.0, 0.0, v11, v12}];
  }

  else
  {
    [v3 removeFromSuperview];

    [(PUSyndicationAttributionTileViewController *)self setAttributionView:0];
  }
}

- (void)_invalidateAttributionView
{
  v3 = [(PUSyndicationAttributionTileViewController *)self attributionView];
  [v3 removeFromSuperview];

  [(PUSyndicationAttributionTileViewController *)self setAttributionView:0];
}

- (void)setHighlight:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_highlight != v5)
  {
    v7 = v5;
    v5 = [v5 isEqual:?];
    v6 = v7;
    if ((v5 & 1) == 0)
    {
      [(PUSyndicationAttributionTileViewController *)self _invalidateAttributionView];
      objc_storeStrong(&self->_highlight, a3);
      v5 = [(PUSyndicationAttributionTileViewController *)self _updateAttributionView];
      v6 = v7;
    }
  }

  MEMORY[0x1EEE66BB8](v5, v6);
}

- (void)_handleHighlight:(id)a3 withAssetUUID:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [(PUSyndicationAttributionTileViewController *)self assetViewModel];
    v9 = [v8 asset];
    v10 = [v9 uuid];
    v11 = [v7 isEqualToString:v10];

    if (v11)
    {
      [(PUSyndicationAttributionTileViewController *)self setHighlight:v6];
    }
  }

  else
  {
    v12 = PLUIGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = 138543362;
      v14 = v7;
      _os_log_impl(&dword_1B36F3000, v12, OS_LOG_TYPE_ERROR, "1up nil SLHighlight from PHAsset: %{public}@", &v13, 0xCu);
    }
  }
}

- (void)_setupAttributionView
{
  v4 = [(PUSyndicationAttributionTileViewController *)self assetViewModel];
  v5 = [v4 asset];
  ShouldShowAttributionViewForAsset = PXContentSyndicationShouldShowAttributionViewForAsset();

  if (ShouldShowAttributionViewForAsset)
  {
    v7 = [(PUSyndicationAttributionTileViewController *)self assetViewModel];
    v8 = [v7 asset];

    if (v8)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_4:
        v9 = [v8 uuid];
        v10 = [v9 copy];

        [v8 fetchPropertySetsIfNeeded];
        v11 = [MEMORY[0x1E69C3400] sharedInstance];
        objc_initWeak(&location, self);
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __67__PUSyndicationAttributionTileViewController__setupAttributionView__block_invoke;
        v18[3] = &unk_1E7B7D518;
        objc_copyWeak(&v20, &location);
        v12 = v10;
        v19 = v12;
        [v11 fetchSocialLayerHighlightForAsset:v8 completion:v18];

        objc_destroyWeak(&v20);
        objc_destroyWeak(&location);

        return;
      }

      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      v16 = objc_opt_class();
      v15 = NSStringFromClass(v16);
      v17 = [v8 px_descriptionForAssertionMessage];
      [v13 handleFailureInMethod:a2 object:self file:@"PUSyndicationAttributionTileViewController.m" lineNumber:79 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.assetViewModel.asset", v15, v17}];
    }

    else
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      [v13 handleFailureInMethod:a2 object:self file:@"PUSyndicationAttributionTileViewController.m" lineNumber:79 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.assetViewModel.asset", v15}];
    }

    goto LABEL_4;
  }
}

void __67__PUSyndicationAttributionTileViewController__setupAttributionView__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleHighlight:v3 withAssetUUID:*(a1 + 32)];
}

- (id)loadView
{
  v2 = objc_alloc_init(_PUSyndicationAttributionTileView);

  return v2;
}

- (void)setAssetViewModel:(id)a3
{
  v5 = a3;
  if (self->_assetViewModel != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_assetViewModel, a3);
    [(PUSyndicationAttributionTileViewController *)self _setupAttributionView];
    v5 = v6;
  }
}

@end