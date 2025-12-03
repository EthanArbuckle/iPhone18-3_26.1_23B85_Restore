@interface PXPhotosGridSetSharedLibraryFilterActionPerformer
- (id)localizedTitleForUseCase:(unint64_t)case;
- (int64_t)menuElementState;
- (void)performUserInteractionTask;
@end

@implementation PXPhotosGridSetSharedLibraryFilterActionPerformer

- (void)performUserInteractionTask
{
  viewModel = [(PXPhotosGridActionPerformer *)self viewModel];
  libraryFilterState = [viewModel libraryFilterState];

  [libraryFilterState setViewMode:2];
  [(PXPhotosGridToggleFilterActionPerformer *)self updateToLibraryFilterStateAndFinishTask:libraryFilterState];
}

- (id)localizedTitleForUseCase:(unint64_t)case
{
  viewModel = [(PXPhotosGridActionPerformer *)self viewModel];
  dataSourceManager = [viewModel dataSourceManager];
  dataSource = [dataSourceManager dataSource];
  containerCollection = [dataSource containerCollection];

  photoLibrary = [containerCollection photoLibrary];
  v8 = [PXSharedLibraryStatusProvider sharedLibraryStatusProviderWithPhotoLibrary:photoLibrary];

  [v8 hasPreview];
  v9 = PXLocalizedSharedLibraryString(@"PXSharedLibrary_FilterMenu_Shared");

  return v9;
}

- (int64_t)menuElementState
{
  viewModel = [(PXPhotosGridActionPerformer *)self viewModel];
  libraryFilterState = [viewModel libraryFilterState];
  v4 = [libraryFilterState isLibraryFilterActive:2];

  return v4;
}

@end