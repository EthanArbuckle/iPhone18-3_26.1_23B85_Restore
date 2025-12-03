@interface PXCMMBannerTileController
+ (id)new;
- (PXCMMBannerTileController)init;
- (PXCMMBannerTileController)initWithActivityType:(unint64_t)type sourceType:(unint64_t)sourceType viewModel:(id)model momentShareStatusPresentation:(id)presentation importStatusManager:(id)manager;
- (PXCMMBannerTileControllerDelegate)delegate;
- (UIView)view;
- (void)_configureBannerViewActionButtonWithTitle:(id)title;
- (void)_handleButtonActionWithTitle:(id)title;
- (void)_updateBannerActionButton;
- (void)_updateContainsUnverifierPersons;
- (void)_updateCounts;
- (void)_updateLoadingPeopleSuggestions;
- (void)_updateLocalizedNamesByViewModel;
- (void)_updatePeopleSuggestionNames;
- (void)becomeReusable;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)prepareForReuse;
- (void)setPeopleSuggestionsDataSourceManager:(id)manager;
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
    recipients = [(PXCMMViewModel *)self->_viewModel recipients];
    v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(recipients, "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v5 = recipients;
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
          firstName = [v10 firstName];
          if ([firstName length])
          {
            firstName2 = [v10 firstName];
          }

          else
          {
            localizedName = [v10 localizedName];
            if ([localizedName length])
            {
              firstName2 = [v10 localizedName];
            }

            else
            {
              firstName2 = 0;
            }
          }

          if (firstName2)
          {
            [v4 addObject:firstName2];
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
    bannerView = [(PXCMMBannerTileController *)self bannerView];
    [bannerView setLocalizedNamesForHeadline:v16];
  }
}

- (void)_updatePeopleSuggestionNames
{
  peopleSuggestionsDataSourceManager = [(PXCMMBannerTileController *)self peopleSuggestionsDataSourceManager];
  dataSource = [peopleSuggestionsDataSourceManager dataSource];

  v4 = [dataSource numberOfItemsInSection:0];
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:v4];
  if (v4 >= 1)
  {
    for (i = 0; i != v4; ++i)
    {
      v7 = [MEMORY[0x1E696AC88] indexPathForItem:i inSection:0];
      v8 = [dataSource personSuggestionAtIndexPath:v7];

      localizedName = [v8 localizedName];
      v10 = localizedName;
      if (localizedName)
      {
        v11 = localizedName;
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
  bannerView = [(PXCMMBannerTileController *)self bannerView];
  [bannerView setLocalizedNamesForHeadline:v14];
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (PXViewModelObservationContext_152420 != context)
  {
    if (PXMomentShareStatusPresentationObservationContext_152421 != context)
    {
      v11 = observableCopy;
      if (PXPeopleSuggestionsDataSourceManagerContext != context)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMBannerTileController.m" lineNumber:250 description:@"Code which should be unreachable has been reached"];

        abort();
      }

      [(PXCMMBannerTileController *)self _updatePeopleSuggestionNames];
      goto LABEL_11;
    }

    if ((changeCopy & 0x2000) == 0)
    {
      goto LABEL_12;
    }

    v11 = observableCopy;
    goto LABEL_10;
  }

  v11 = observableCopy;
  if ((*&changeCopy & 0x10606) != 0)
  {
    if ((changeCopy & 4) != 0)
    {
      [(PXCMMBannerTileController *)self _updateLocalizedNamesByViewModel];
    }

LABEL_10:
    [(PXCMMBannerTileController *)self _updateCounts];
    [(PXCMMBannerTileController *)self _updateBannerActionButton];
LABEL_11:
    observableCopy = v11;
    goto LABEL_12;
  }

  if ((changeCopy & 0x800) != 0)
  {
    [(PXCMMBannerTileController *)self _updateLoadingPeopleSuggestions];
    goto LABEL_11;
  }

  if ((changeCopy & 0x8000) != 0)
  {
    [(PXCMMBannerTileController *)self _updateContainsUnverifierPersons];
    goto LABEL_11;
  }

LABEL_12:
}

- (void)prepareForReuse
{
  bannerView = [(PXCMMBannerTileController *)self bannerView];
  [bannerView setHidden:0];
}

- (void)becomeReusable
{
  bannerView = [(PXCMMBannerTileController *)self bannerView];
  [bannerView setHidden:1];

  [(PXCMMBannerTileController *)self setPeopleSuggestionsDataSourceManager:0];
}

- (UIView)view
{
  bannerView = [(PXCMMBannerTileController *)self bannerView];

  if (!bannerView)
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
  containsUnverifiedPersons = [(PXCMMViewModel *)self->_viewModel containsUnverifiedPersons];
  bannerView = [(PXCMMBannerTileController *)self bannerView];
  [bannerView setContainsUnverifiedPersons:containsUnverifiedPersons];
}

- (void)_configureBannerViewActionButtonWithTitle:(id)title
{
  titleCopy = title;
  if (self->_activityType == 2)
  {
    v9 = titleCopy;
    selectionManager = [(PXCMMViewModel *)self->_viewModel selectionManager];
    selectionSnapshot = [selectionManager selectionSnapshot];
    v7 = [selectionSnapshot areAllUnsavedAssetsSelectedWithImportStatusManager:self->_importStatusManager];

    if (v7)
    {
      bannerView = [(PXCMMBannerTileController *)self bannerView];
      [bannerView setActionButtonWithTitle:v9 actionBlock:0];
    }

    titleCopy = v9;
  }
}

- (void)_updateLoadingPeopleSuggestions
{
  isLoadingPeopleSuggestions = [(PXCMMViewModel *)self->_viewModel isLoadingPeopleSuggestions];
  bannerView = [(PXCMMBannerTileController *)self bannerView];
  [bannerView setLoadingPeopleSuggestions:isLoadingPeopleSuggestions];
}

- (void)_handleButtonActionWithTitle:(id)title
{
  [(PXCMMBannerTileController *)self _configureBannerViewActionButtonWithTitle:title];
  delegate = [(PXCMMBannerTileController *)self delegate];
  [delegate didTapActionButtonInBannerTileController:self];

  if (self->_activityType == 2)
  {
    bannerView = [(PXCMMBannerTileController *)self bannerView];
    [bannerView setAddingPhotos:1];
  }
}

- (void)_updateBannerActionButton
{
  selectedCount = [(PXCMMViewModel *)self->_viewModel selectedCount];
  activityType = self->_activityType;
  sourceType = self->_sourceType;
  state = [(PXMomentShareStatusPresentation *)self->_momentShareStatusPresentation state];
  selectionManager = [(PXCMMViewModel *)self->_viewModel selectionManager];
  selectionSnapshot = [selectionManager selectionSnapshot];
  importStatusManager = self->_importStatusManager;
  v25 = 0;
  PXCMMActionButton(activityType, sourceType, state, selectionSnapshot, importStatusManager, 0, &v25);
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
  if (selectedCount <= 0)
  {
    v15 = 0;
  }

  else
  {
    v15 = v12;
  }

  [v13 setActionButtonWithTitle:v11 actionBlock:v15];

  state2 = [(PXMomentShareStatusPresentation *)self->_momentShareStatusPresentation state];
  if (state2 <= 6 && ((1 << state2) & 0x61) != 0)
  {
    bannerView = [(PXCMMBannerTileController *)self bannerView];
    [bannerView setAddingPhotos:0];
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
  selectedCount = [(PXCMMViewModel *)v17 selectedCount];
  activityType = self->_activityType;
  if (activityType <= 1)
  {
    if (activityType == 1)
    {
      localizedNames = self->_localizedNames;
      bannerView = [(PXCMMBannerTileController *)self bannerView];
      [bannerView setLocalizedNamesForHeadline:localizedNames];

      PXLocalizedAssetCountForUsage(selectedCount, [(PXCMMViewModel *)v17 aggregateMediaType], 0, 0);
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
      bannerView2 = [(PXCMMBannerTileController *)self bannerView];
      [bannerView2 setHeadline:v9];

      if ([(PXCMMViewModel *)v17 isSelecting])
      {
        aggregateMediaTypeForSelection = [(PXCMMViewModel *)v17 aggregateMediaTypeForSelection];
      }

      else
      {
        state = [(PXMomentShareStatusPresentation *)self->_momentShareStatusPresentation state];
        if (state == 5 || state == 3)
        {
          aggregateMediaTypeForSelection2 = [(PXCMMViewModel *)v17 aggregateMediaTypeForSelection];
          v15 = selectedCount;
          v16 = 20;
          goto LABEL_18;
        }

        selectedCount = [(PXCMMViewModel *)v17 totalCount];
        aggregateMediaTypeForSelection = [(PXCMMViewModel *)v17 aggregateMediaType];
      }

      aggregateMediaTypeForSelection2 = aggregateMediaTypeForSelection;
      v15 = selectedCount;
      v16 = 0;
LABEL_18:
      PXLocalizedAssetCountForUsage(v15, aggregateMediaTypeForSelection2, 0, v16);
    case 3:
      bannerView3 = [(PXCMMBannerTileController *)self bannerView];
      [bannerView3 setHeadline:0];

      break;
    case 4:
LABEL_12:
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMBannerTileController.m" lineNumber:138 description:@"Code which should be unreachable has been reached"];

      abort();
  }

LABEL_19:
}

- (void)setPeopleSuggestionsDataSourceManager:(id)manager
{
  managerCopy = manager;
  v5 = self->_peopleSuggestionsDataSourceManager;
  v6 = v5;
  if (v5 == managerCopy)
  {
  }

  else
  {
    v7 = [(PXPeopleSuggestionsDataSourceManager *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      [(PXSectionedDataSourceManager *)self->_peopleSuggestionsDataSourceManager unregisterChangeObserver:self context:PXPeopleSuggestionsDataSourceManagerContext];
      objc_storeStrong(&self->_peopleSuggestionsDataSourceManager, manager);
      [(PXSectionedDataSourceManager *)self->_peopleSuggestionsDataSourceManager registerChangeObserver:self context:PXPeopleSuggestionsDataSourceManagerContext];
      [(PXCMMBannerTileController *)self _updatePeopleSuggestionNames];
    }
  }
}

- (PXCMMBannerTileController)initWithActivityType:(unint64_t)type sourceType:(unint64_t)sourceType viewModel:(id)model momentShareStatusPresentation:(id)presentation importStatusManager:(id)manager
{
  modelCopy = model;
  presentationCopy = presentation;
  managerCopy = manager;
  if (!modelCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMBannerTileController.m" lineNumber:59 description:{@"Invalid parameter not satisfying: %@", @"viewModel"}];
  }

  v21.receiver = self;
  v21.super_class = PXCMMBannerTileController;
  v17 = [(PXCMMBannerTileController *)&v21 init];
  v18 = v17;
  if (v17)
  {
    v17->_activityType = type;
    v17->_sourceType = sourceType;
    objc_storeStrong(&v17->_viewModel, model);
    [(PXCMMViewModel *)v18->_viewModel registerChangeObserver:v18 context:PXViewModelObservationContext_152420];
    objc_storeStrong(&v18->_momentShareStatusPresentation, presentation);
    [(PXMomentShareStatusPresentation *)v18->_momentShareStatusPresentation registerChangeObserver:v18 context:PXMomentShareStatusPresentationObservationContext_152421];
    objc_storeStrong(&v18->_importStatusManager, manager);
  }

  return v18;
}

- (PXCMMBannerTileController)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMBannerTileController.m" lineNumber:51 description:{@"%s is not available as initializer", "-[PXCMMBannerTileController init]"}];

  abort();
}

+ (id)new
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMBannerTileController.m" lineNumber:55 description:{@"%s is not available as initializer", "+[PXCMMBannerTileController new]"}];

  abort();
}

@end