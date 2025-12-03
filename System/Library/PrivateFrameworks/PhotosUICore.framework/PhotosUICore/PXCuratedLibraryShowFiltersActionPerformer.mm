@interface PXCuratedLibraryShowFiltersActionPerformer
- (BOOL)canPerformWithActivityItems:(id)items forActivity:(id)activity;
- (PXUIFilterController)filterController;
- (id)activitySystemImageName;
- (id)contentFilterHiddenTypesForFilterController:(id)controller;
- (void)filterController:(id)controller contentFilterStateChanged:(id)changed;
- (void)filterControllerDidClose:(id)close;
- (void)performUserInteractionTask;
@end

@implementation PXCuratedLibraryShowFiltersActionPerformer

- (void)filterControllerDidClose:(id)close
{
  if (![(PXCuratedLibraryShowFiltersActionPerformer *)self _isAlreadyDone])
  {

    [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:1 error:0];
  }
}

- (void)filterController:(id)controller contentFilterStateChanged:(id)changed
{
  changedCopy = changed;
  delegate = [(PXActionPerformer *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate curatedLibraryActionPerformer:self contentFilterStateChanged:changedCopy];
  }
}

- (id)contentFilterHiddenTypesForFilterController:(id)controller
{
  viewModel = [(PXCuratedLibraryActionPerformer *)self viewModel];
  currentDataSource = [viewModel currentDataSource];
  containerCollection = [currentDataSource containerCollection];

  viewModel2 = [(PXCuratedLibraryActionPerformer *)self viewModel];
  libraryFilterState = [viewModel2 libraryFilterState];
  v9 = PXContentFilterHiddenTypesForAssetCollection(containerCollection);

  return v9;
}

- (void)performUserInteractionTask
{
  filterController = [(PXCuratedLibraryShowFiltersActionPerformer *)self filterController];
  viewModel = [(PXCuratedLibraryActionPerformer *)self viewModel];
  currentContentFilterState = [viewModel currentContentFilterState];
  v6 = [currentContentFilterState copy];
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

- (BOOL)canPerformWithActivityItems:(id)items forActivity:(id)activity
{
  activityType = [activity activityType];
  activityType2 = [(PXCuratedLibraryShowFiltersActionPerformer *)self activityType];
  v8 = activityType2;
  if (activityType == activityType2)
  {

    goto LABEL_5;
  }

  v9 = [activityType isEqualToString:activityType2];

  if ((v9 & 1) == 0)
  {
    activityType = [MEMORY[0x1E696AAA8] currentHandler];
    [activityType handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryShowFiltersActionPerformer.m" lineNumber:62 description:{@"Invalid parameter not satisfying: %@", @"PXStringEqualToString(activity.activityType, self.activityType)"}];
LABEL_5:
  }

  return 1;
}

- (id)activitySystemImageName
{
  viewModel = [(PXCuratedLibraryActionPerformer *)self viewModel];
  currentContentFilterState = [viewModel currentContentFilterState];
  if ([currentContentFilterState isFiltering])
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
    viewModel = [(PXCuratedLibraryActionPerformer *)self viewModel];
    sharedLibraryStatusProvider = [viewModel sharedLibraryStatusProvider];
    allPhotosContentFilterState = [viewModel allPhotosContentFilterState];
    v7 = allPhotosContentFilterState;
    if (allPhotosContentFilterState)
    {
      v8 = allPhotosContentFilterState;
    }

    else
    {
      photoLibrary = [viewModel photoLibrary];
      v8 = [PXContentFilterState defaultAllPhotosFilterStateForPhotoLibrary:photoLibrary];
    }

    v10 = [PXUIFilterController alloc];
    libraryFilterState = [viewModel libraryFilterState];
    v12 = [(PXUIFilterController *)v10 initWithDelegate:self libraryFilterState:libraryFilterState initialContentFilterState:v8 sharedLibraryStatusProvider:sharedLibraryStatusProvider filterControllerOptions:0];
    v13 = self->_filterController;
    self->_filterController = v12;

    assetsDataSourceManager = [viewModel assetsDataSourceManager];
    [(PXUIFilterController *)self->_filterController setDataSourceManager:assetsDataSourceManager];

    filterController = self->_filterController;
  }

  return filterController;
}

@end