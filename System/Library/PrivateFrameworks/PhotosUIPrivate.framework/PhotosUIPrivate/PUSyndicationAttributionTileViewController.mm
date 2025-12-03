@interface PUSyndicationAttributionTileViewController
- (PUSyndicationAttributionTileViewControllerDelegate)delegate;
- (id)contextMenuItemsForAttributionView:(id)view;
- (id)loadView;
- (void)_handleHighlight:(id)highlight withAssetUUID:(id)d;
- (void)_invalidateAttributionView;
- (void)_setupAttributionView;
- (void)_updateAttributionView;
- (void)becomeReusable;
- (void)didChangeVisibleRect;
- (void)setAssetViewModel:(id)model;
- (void)setHighlight:(id)highlight;
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
  attributionView = [(PUSyndicationAttributionTileViewController *)self attributionView];
  if (attributionView)
  {
    v4 = attributionView;
    [(PUSyndicationAttributionTileViewController *)self _updateAttributionView];
    attributionView = v4;
  }
}

- (id)contextMenuItemsForAttributionView:(id)view
{
  delegate = [(PUSyndicationAttributionTileViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(PUSyndicationAttributionTileViewController *)self delegate];
    v7 = [delegate2 additionalContextMenuActionsForAttributionTileViewController:self];
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
  highlight = [(PUSyndicationAttributionTileViewController *)self highlight];
  attributionView = [(PUSyndicationAttributionTileViewController *)self attributionView];
  if (highlight)
  {
    mEMORY[0x1E69C3408] = [MEMORY[0x1E69C3408] sharedInstance];
    syndicated1upPillAlignment = [mEMORY[0x1E69C3408] syndicated1upPillAlignment];

    if (!attributionView)
    {
      attributionView = PXContentSyndicationAttributionViewForSocialLayerHighlight();
      [attributionView setDelegate:self];
      if (syndicated1upPillAlignment == 1)
      {
        v6 = 2;
      }

      else
      {
        v6 = 1;
      }

      [attributionView updateAlignment:v6];
      view = [(PUTileViewController *)self view];
      [view addSubview:attributionView];

      [(PUSyndicationAttributionTileViewController *)self setAttributionView:attributionView];
    }

    view2 = [(PUTileViewController *)self view];
    [view2 bounds];
    v10 = v9;

    [attributionView prepareLayoutWithMaxWidth:v10];
    [attributionView intrinsicContentSize];
    [attributionView setFrame:{0.0, 0.0, v11, v12}];
  }

  else
  {
    [attributionView removeFromSuperview];

    [(PUSyndicationAttributionTileViewController *)self setAttributionView:0];
  }
}

- (void)_invalidateAttributionView
{
  attributionView = [(PUSyndicationAttributionTileViewController *)self attributionView];
  [attributionView removeFromSuperview];

  [(PUSyndicationAttributionTileViewController *)self setAttributionView:0];
}

- (void)setHighlight:(id)highlight
{
  highlightCopy = highlight;
  v6 = highlightCopy;
  if (self->_highlight != highlightCopy)
  {
    v7 = highlightCopy;
    highlightCopy = [highlightCopy isEqual:?];
    v6 = v7;
    if ((highlightCopy & 1) == 0)
    {
      [(PUSyndicationAttributionTileViewController *)self _invalidateAttributionView];
      objc_storeStrong(&self->_highlight, highlight);
      highlightCopy = [(PUSyndicationAttributionTileViewController *)self _updateAttributionView];
      v6 = v7;
    }
  }

  MEMORY[0x1EEE66BB8](highlightCopy, v6);
}

- (void)_handleHighlight:(id)highlight withAssetUUID:(id)d
{
  v15 = *MEMORY[0x1E69E9840];
  highlightCopy = highlight;
  dCopy = d;
  if (highlightCopy)
  {
    assetViewModel = [(PUSyndicationAttributionTileViewController *)self assetViewModel];
    asset = [assetViewModel asset];
    uuid = [asset uuid];
    v11 = [dCopy isEqualToString:uuid];

    if (v11)
    {
      [(PUSyndicationAttributionTileViewController *)self setHighlight:highlightCopy];
    }
  }

  else
  {
    v12 = PLUIGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = 138543362;
      v14 = dCopy;
      _os_log_impl(&dword_1B36F3000, v12, OS_LOG_TYPE_ERROR, "1up nil SLHighlight from PHAsset: %{public}@", &v13, 0xCu);
    }
  }
}

- (void)_setupAttributionView
{
  assetViewModel = [(PUSyndicationAttributionTileViewController *)self assetViewModel];
  asset = [assetViewModel asset];
  ShouldShowAttributionViewForAsset = PXContentSyndicationShouldShowAttributionViewForAsset();

  if (ShouldShowAttributionViewForAsset)
  {
    assetViewModel2 = [(PUSyndicationAttributionTileViewController *)self assetViewModel];
    asset2 = [assetViewModel2 asset];

    if (asset2)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_4:
        uuid = [asset2 uuid];
        v10 = [uuid copy];

        [asset2 fetchPropertySetsIfNeeded];
        mEMORY[0x1E69C3400] = [MEMORY[0x1E69C3400] sharedInstance];
        objc_initWeak(&location, self);
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __67__PUSyndicationAttributionTileViewController__setupAttributionView__block_invoke;
        v18[3] = &unk_1E7B7D518;
        objc_copyWeak(&v20, &location);
        v12 = v10;
        v19 = v12;
        [mEMORY[0x1E69C3400] fetchSocialLayerHighlightForAsset:asset2 completion:v18];

        objc_destroyWeak(&v20);
        objc_destroyWeak(&location);

        return;
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v16 = objc_opt_class();
      v15 = NSStringFromClass(v16);
      px_descriptionForAssertionMessage = [asset2 px_descriptionForAssertionMessage];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUSyndicationAttributionTileViewController.m" lineNumber:79 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.assetViewModel.asset", v15, px_descriptionForAssertionMessage}];
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUSyndicationAttributionTileViewController.m" lineNumber:79 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.assetViewModel.asset", v15}];
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

- (void)setAssetViewModel:(id)model
{
  modelCopy = model;
  if (self->_assetViewModel != modelCopy)
  {
    v6 = modelCopy;
    objc_storeStrong(&self->_assetViewModel, model);
    [(PUSyndicationAttributionTileViewController *)self _setupAttributionView];
    modelCopy = v6;
  }
}

@end