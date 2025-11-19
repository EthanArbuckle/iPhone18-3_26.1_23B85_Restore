@interface PXCMMBannerTileController
+ (id)new;
- (PXCMMBannerTileController)init;
- (PXCMMBannerTileController)initWithActivityType:(unint64_t)a3 sourceType:(unint64_t)a4 viewModel:(id)a5 momentShareStatusPresentation:(id)a6 importStatusManager:(id)a7;
- (PXCMMBannerTileControllerDelegate)delegate;
- (UIView)view;
- (void)_configureBannerViewActionButtonWithTitle:(id)a3;
- (void)_handleButtonActionWithTitle:(id)a3;
- (void)_updateBannerActionButton;
- (void)_updateContainsUnverifierPersons;
- (void)_updateCounts;
- (void)_updateLoadingPeopleSuggestions;
- (void)_updateLocalizedNamesByViewModel;
- (void)_updatePeopleSuggestionNames;
- (void)becomeReusable;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)prepareForReuse;
- (void)setPeopleSuggestionsDataSourceManager:(id)a3;
@end

@implementation PXCMMBannerTileController

- (PXCMMBannerTileControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_updateLocalizedNamesByViewModel
{
  v23 = *MEMORY[0x1E69E9840];
  if (self->_sourceType == 1)
  {
    v3 = [(PXCMMViewModel *)self->_viewModel recipients];
    v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v19;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v19 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v18 + 1) + 8 * i);
          v11 = [v10 firstName];
          if ([v11 length])
          {
            v12 = [v10 firstName];
          }

          else
          {
            v13 = [v10 localizedName];
            if ([v13 length])
            {
              v12 = [v10 localizedName];
            }

            else
            {
              v12 = 0;
            }
          }

          if (v12)
          {
            [v4 addObject:v12];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v7);
    }

    v14 = [v4 copy];
    localizedNames = self->_localizedNames;
    self->_localizedNames = v14;

    v16 = self->_localizedNames;
    v17 = [(PXCMMBannerTileController *)self bannerView];
    [v17 setLocalizedNamesForHeadline:v16];
  }
}

- (void)_updatePeopleSuggestionNames
{
  v3 = [(PXCMMBannerTileController *)self peopleSuggestionsDataSourceManager];
  v16 = [v3 dataSource];

  v4 = [v16 numberOfItemsInSection:0];
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:v4];
  if (v4 >= 1)
  {
    for (i = 0; i != v4; ++i)
    {
      v7 = [MEMORY[0x1E696AC88] indexPathForItem:i inSection:0];
      v8 = [v16 personSuggestionAtIndexPath:v7];

      v9 = [v8 localizedName];
      v10 = v9;
      if (v9)
      {
        v11 = v9;
      }

      else
      {
        v11 = &stru_1F1741150;
      }

      [v5 addObject:v11];
    }
  }

  v12 = [v5 copy];
  localizedNames = self->_localizedNames;
  self->_localizedNames = v12;

  v14 = self->_localizedNames;
  v15 = [(PXCMMBannerTileController *)self bannerView];
  [v15 setLocalizedNamesForHeadline:v14];
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  if (PXViewModelObservationContext_152420 != a5)
  {
    if (PXMomentShareStatusPresentationObservationContext_152421 != a5)
    {
      v11 = v9;
      if (PXPeopleSuggestionsDataSourceManagerContext != a5)
      {
        v10 = [MEMORY[0x1E696AAA8] currentHandler];
        [v10 handleFailureInMethod:a2 object:self file:@"PXCMMBannerTileController.m" lineNumber:250 description:@"Code which should be unreachable has been reached"];

        abort();
      }

      [(PXCMMBannerTileController *)self _updatePeopleSuggestionNames];
      goto LABEL_11;
    }

    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_12;
    }

    v11 = v9;
    goto LABEL_10;
  }

  v11 = v9;
  if ((*&v6 & 0x10606) != 0)
  {
    if ((v6 & 4) != 0)
    {
      [(PXCMMBannerTileController *)self _updateLocalizedNamesByViewModel];
    }

LABEL_10:
    [(PXCMMBannerTileController *)self _updateCounts];
    [(PXCMMBannerTileController *)self _updateBannerActionButton];
LABEL_11:
    v9 = v11;
    goto LABEL_12;
  }

  if ((v6 & 0x800) != 0)
  {
    [(PXCMMBannerTileController *)self _updateLoadingPeopleSuggestions];
    goto LABEL_11;
  }

  if ((v6 & 0x8000) != 0)
  {
    [(PXCMMBannerTileController *)self _updateContainsUnverifierPersons];
    goto LABEL_11;
  }

LABEL_12:
}

- (void)prepareForReuse
{
  v2 = [(PXCMMBannerTileController *)self bannerView];
  [v2 setHidden:0];
}

- (void)becomeReusable
{
  v3 = [(PXCMMBannerTileController *)self bannerView];
  [v3 setHidden:1];

  [(PXCMMBannerTileController *)self setPeopleSuggestionsDataSourceManager:0];
}

- (UIView)view
{
  v3 = [(PXCMMBannerTileController *)self bannerView];

  if (!v3)
  {
    v4 = [PXCMMPosterBannerView alloc];
    v5 = [(PXCMMPosterBannerView *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(PXCMMBannerTileController *)self setBannerView:v5];

    [(PXCMMBannerTileController *)self _updateLocalizedNamesByViewModel];
    [(PXCMMBannerTileController *)self _updateCounts];
    [(PXCMMBannerTileController *)self _updateBannerActionButton];
    [(PXCMMBannerTileController *)self _updateContainsUnverifierPersons];
  }

  return [(PXCMMBannerTileController *)self bannerView];
}

- (void)_updateContainsUnverifierPersons
{
  v3 = [(PXCMMViewModel *)self->_viewModel containsUnverifiedPersons];
  v4 = [(PXCMMBannerTileController *)self bannerView];
  [v4 setContainsUnverifiedPersons:v3];
}

- (void)_configureBannerViewActionButtonWithTitle:(id)a3
{
  v4 = a3;
  if (self->_activityType == 2)
  {
    v9 = v4;
    v5 = [(PXCMMViewModel *)self->_viewModel selectionManager];
    v6 = [v5 selectionSnapshot];
    v7 = [v6 areAllUnsavedAssetsSelectedWithImportStatusManager:self->_importStatusManager];

    if (v7)
    {
      v8 = [(PXCMMBannerTileController *)self bannerView];
      [v8 setActionButtonWithTitle:v9 actionBlock:0];
    }

    v4 = v9;
  }
}

- (void)_updateLoadingPeopleSuggestions
{
  v3 = [(PXCMMViewModel *)self->_viewModel isLoadingPeopleSuggestions];
  v4 = [(PXCMMBannerTileController *)self bannerView];
  [v4 setLoadingPeopleSuggestions:v3];
}

- (void)_handleButtonActionWithTitle:(id)a3
{
  [(PXCMMBannerTileController *)self _configureBannerViewActionButtonWithTitle:a3];
  v4 = [(PXCMMBannerTileController *)self delegate];
  [v4 didTapActionButtonInBannerTileController:self];

  if (self->_activityType == 2)
  {
    v5 = [(PXCMMBannerTileController *)self bannerView];
    [v5 setAddingPhotos:1];
  }
}

- (void)_updateBannerActionButton
{
  v3 = [(PXCMMViewModel *)self->_viewModel selectedCount];
  activityType = self->_activityType;
  sourceType = self->_sourceType;
  v6 = [(PXMomentShareStatusPresentation *)self->_momentShareStatusPresentation state];
  v7 = [(PXCMMViewModel *)self->_viewModel selectionManager];
  v8 = [v7 selectionSnapshot];
  importStatusManager = self->_importStatusManager;
  v25 = 0;
  PXCMMActionButton(activityType, sourceType, v6, v8, importStatusManager, 0, &v25);
  v10 = v25;

  objc_initWeak(&location, self);
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __54__PXCMMBannerTileController__updateBannerActionButton__block_invoke;
  v21 = &unk_1E774B248;
  objc_copyWeak(&v23, &location);
  v11 = v10;
  v22 = v11;
  v12 = _Block_copy(&v18);
  v13 = [(PXCMMBannerTileController *)self bannerView:v18];
  v14 = v13;
  if (v3 <= 0)
  {
    v15 = 0;
  }

  else
  {
    v15 = v12;
  }

  [v13 setActionButtonWithTitle:v11 actionBlock:v15];

  v16 = [(PXMomentShareStatusPresentation *)self->_momentShareStatusPresentation state];
  if (v16 <= 6 && ((1 << v16) & 0x61) != 0)
  {
    v17 = [(PXCMMBannerTileController *)self bannerView];
    [v17 setAddingPhotos:0];
  }

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

void __54__PXCMMBannerTileController__updateBannerActionButton__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleButtonActionWithTitle:*(a1 + 32)];
}

- (void)_updateCounts
{
  v17 = self->_viewModel;
  v4 = [(PXCMMViewModel *)v17 selectedCount];
  activityType = self->_activityType;
  if (activityType <= 1)
  {
    if (activityType == 1)
    {
      localizedNames = self->_localizedNames;
      v8 = [(PXCMMBannerTileController *)self bannerView];
      [v8 setLocalizedNamesForHeadline:localizedNames];

      PXLocalizedAssetCountForUsage(v4, [(PXCMMViewModel *)v17 aggregateMediaType], 0, 0);
    }

    if (!activityType)
    {
      goto LABEL_12;
    }

    goto LABEL_19;
  }

  switch(activityType)
  {
    case 2:
      v9 = PXLocalizedAssetMessageForUsage([(PXCMMViewModel *)v17 aggregateMediaType], 0, 1);
      v10 = [(PXCMMBannerTileController *)self bannerView];
      [v10 setHeadline:v9];

      if ([(PXCMMViewModel *)v17 isSelecting])
      {
        v11 = [(PXCMMViewModel *)v17 aggregateMediaTypeForSelection];
      }

      else
      {
        v13 = [(PXMomentShareStatusPresentation *)self->_momentShareStatusPresentation state];
        if (v13 == 5 || v13 == 3)
        {
          v14 = [(PXCMMViewModel *)v17 aggregateMediaTypeForSelection];
          v15 = v4;
          v16 = 20;
          goto LABEL_18;
        }

        v4 = [(PXCMMViewModel *)v17 totalCount];
        v11 = [(PXCMMViewModel *)v17 aggregateMediaType];
      }

      v14 = v11;
      v15 = v4;
      v16 = 0;
LABEL_18:
      PXLocalizedAssetCountForUsage(v15, v14, 0, v16);
    case 3:
      v6 = [(PXCMMBannerTileController *)self bannerView];
      [v6 setHeadline:0];

      break;
    case 4:
LABEL_12:
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      [v12 handleFailureInMethod:a2 object:self file:@"PXCMMBannerTileController.m" lineNumber:138 description:@"Code which should be unreachable has been reached"];

      abort();
  }

LABEL_19:
}

- (void)setPeopleSuggestionsDataSourceManager:(id)a3
{
  v8 = a3;
  v5 = self->_peopleSuggestionsDataSourceManager;
  v6 = v5;
  if (v5 == v8)
  {
  }

  else
  {
    v7 = [(PXPeopleSuggestionsDataSourceManager *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      [(PXSectionedDataSourceManager *)self->_peopleSuggestionsDataSourceManager unregisterChangeObserver:self context:PXPeopleSuggestionsDataSourceManagerContext];
      objc_storeStrong(&self->_peopleSuggestionsDataSourceManager, a3);
      [(PXSectionedDataSourceManager *)self->_peopleSuggestionsDataSourceManager registerChangeObserver:self context:PXPeopleSuggestionsDataSourceManagerContext];
      [(PXCMMBannerTileController *)self _updatePeopleSuggestionNames];
    }
  }
}

- (PXCMMBannerTileController)initWithActivityType:(unint64_t)a3 sourceType:(unint64_t)a4 viewModel:(id)a5 momentShareStatusPresentation:(id)a6 importStatusManager:(id)a7
{
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (!v14)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"PXCMMBannerTileController.m" lineNumber:59 description:{@"Invalid parameter not satisfying: %@", @"viewModel"}];
  }

  v21.receiver = self;
  v21.super_class = PXCMMBannerTileController;
  v17 = [(PXCMMBannerTileController *)&v21 init];
  v18 = v17;
  if (v17)
  {
    v17->_activityType = a3;
    v17->_sourceType = a4;
    objc_storeStrong(&v17->_viewModel, a5);
    [(PXCMMViewModel *)v18->_viewModel registerChangeObserver:v18 context:PXViewModelObservationContext_152420];
    objc_storeStrong(&v18->_momentShareStatusPresentation, a6);
    [(PXMomentShareStatusPresentation *)v18->_momentShareStatusPresentation registerChangeObserver:v18 context:PXMomentShareStatusPresentationObservationContext_152421];
    objc_storeStrong(&v18->_importStatusManager, a7);
  }

  return v18;
}

- (PXCMMBannerTileController)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXCMMBannerTileController.m" lineNumber:51 description:{@"%s is not available as initializer", "-[PXCMMBannerTileController init]"}];

  abort();
}

+ (id)new
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"PXCMMBannerTileController.m" lineNumber:55 description:{@"%s is not available as initializer", "+[PXCMMBannerTileController new]"}];

  abort();
}

@end