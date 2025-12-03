@interface PXPhotosGridSetPersonalLibraryFilterActionPerformer
- (int64_t)menuElementState;
- (void)performUserInteractionTask;
@end

@implementation PXPhotosGridSetPersonalLibraryFilterActionPerformer

- (void)performUserInteractionTask
{
  viewModel = [(PXPhotosGridActionPerformer *)self viewModel];
  libraryFilterState = [viewModel libraryFilterState];

  [libraryFilterState setViewMode:1];
  [(PXPhotosGridToggleFilterActionPerformer *)self updateToLibraryFilterStateAndFinishTask:libraryFilterState];
}

- (int64_t)menuElementState
{
  viewModel = [(PXPhotosGridActionPerformer *)self viewModel];
  libraryFilterState = [viewModel libraryFilterState];
  v4 = [libraryFilterState isLibraryFilterActive:1];

  return v4;
}

@end