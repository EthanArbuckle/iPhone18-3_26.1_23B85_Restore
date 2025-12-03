@interface PXPhotosGridSetAllLibrariesFilterActionPerformer
- (int64_t)menuElementState;
- (void)performUserInteractionTask;
@end

@implementation PXPhotosGridSetAllLibrariesFilterActionPerformer

- (void)performUserInteractionTask
{
  viewModel = [(PXPhotosGridActionPerformer *)self viewModel];
  libraryFilterState = [viewModel libraryFilterState];

  [libraryFilterState setViewMode:0];
  [(PXPhotosGridToggleFilterActionPerformer *)self updateToLibraryFilterStateAndFinishTask:libraryFilterState];
}

- (int64_t)menuElementState
{
  viewModel = [(PXPhotosGridActionPerformer *)self viewModel];
  libraryFilterState = [viewModel libraryFilterState];
  v4 = [libraryFilterState isLibraryFilterActive:0];

  return v4;
}

@end