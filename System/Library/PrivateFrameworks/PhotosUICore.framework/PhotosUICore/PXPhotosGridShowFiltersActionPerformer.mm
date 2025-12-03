@interface PXPhotosGridShowFiltersActionPerformer
+ (BOOL)canPerformActionType:(id)type withViewModel:(id)model;
- (PXUIFilterController)filterController;
- (id)activitySystemImageName;
- (id)contentFilterHiddenTypesForFilterController:(id)controller;
- (void)filterController:(id)controller contentFilterStateChanged:(id)changed;
- (void)performUserInteractionTask;
@end

@implementation PXPhotosGridShowFiltersActionPerformer

+ (BOOL)canPerformActionType:(id)type withViewModel:(id)model
{
  modelCopy = model;
  if ([modelCopy canFilterContent])
  {
    dataSourceManager = [modelCopy dataSourceManager];
    dataSource = [dataSourceManager dataSource];
    containerCollection = [dataSource containerCollection];
    canContainAssets = [containerCollection canContainAssets];
  }

  else
  {
    canContainAssets = 0;
  }

  return canContainAssets;
}

- (void)filterController:(id)controller contentFilterStateChanged:(id)changed
{
  changedCopy = changed;
  delegate = [(PXActionPerformer *)self delegate];
  [delegate photosGridActionPerformer:self contentFilterStateChanged:changedCopy];
}

- (id)contentFilterHiddenTypesForFilterController:(id)controller
{
  viewModel = [(PXPhotosGridActionPerformer *)self viewModel];
  dataSourceManager = [viewModel dataSourceManager];
  dataSource = [dataSourceManager dataSource];
  containerCollection = [dataSource containerCollection];

  viewModel2 = [(PXPhotosGridActionPerformer *)self viewModel];
  libraryFilterState = [viewModel2 libraryFilterState];
  v10 = PXContentFilterHiddenTypesForAssetCollection(containerCollection);

  return v10;
}

- (void)performUserInteractionTask
{
  filterController = [(PXPhotosGridShowFiltersActionPerformer *)self filterController];
  viewModel = [(PXPhotosGridActionPerformer *)self viewModel];
  contentFilterState = [viewModel contentFilterState];
  v6 = [contentFilterState copy];
  [filterController setContentFilterState:v6];

  v7 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:filterController];
  [v7 setModalPresentationStyle:7];
  popoverPresentationController = [v7 popoverPresentationController];
  [popoverPresentationController setDelegate:filterController];

  if (![(PXActionPerformer *)self presentViewController:v7])
  {
    PXAssertGetLog();
  }
}

- (id)activitySystemImageName
{
  viewModel = [(PXPhotosGridActionPerformer *)self viewModel];
  contentFilterState = [viewModel contentFilterState];
  if ([contentFilterState isFiltering])
  {
    v4 = @"line.horizontal.3.decrease.circle.fill";
  }

  else
  {
    v4 = @"line.horizontal.3.decrease.circle";
  }

  v5 = v4;

  return v4;
}

- (PXUIFilterController)filterController
{
  filterController = self->_filterController;
  if (!filterController)
  {
    viewModel = [(PXPhotosGridActionPerformer *)self viewModel];
    sharedLibraryStatusProvider = [viewModel sharedLibraryStatusProvider];
    contentFilterState = [viewModel contentFilterState];
    v7 = contentFilterState;
    if (contentFilterState)
    {
      v8 = contentFilterState;
    }

    else
    {
      photoLibrary = [sharedLibraryStatusProvider photoLibrary];
      v8 = [PXContentFilterState defaultFilterStateForPhotoLibrary:photoLibrary];
    }

    dataSourceManager = [viewModel dataSourceManager];
    dataSource = [dataSourceManager dataSource];
    containerCollection = [dataSource containerCollection];

    v13 = PXFilterControllerOptionsForCollection(containerCollection);
    if ([viewModel hidesAssetCountInFooter])
    {
      v13 |= 8uLL;
    }

    v14 = [PXUIFilterController alloc];
    libraryFilterState = [viewModel libraryFilterState];
    v16 = [(PXUIFilterController *)v14 initWithDelegate:self libraryFilterState:libraryFilterState initialContentFilterState:v8 sharedLibraryStatusProvider:sharedLibraryStatusProvider filterControllerOptions:v13];
    v17 = self->_filterController;
    self->_filterController = v16;

    dataSourceManager2 = [viewModel dataSourceManager];
    [(PXUIFilterController *)self->_filterController setDataSourceManager:dataSourceManager2];

    filterController = self->_filterController;
  }

  return filterController;
}

@end