@interface PXPhotosGridSetAllLibrariesFilterActionPerformer
- (int64_t)menuElementState;
- (void)performUserInteractionTask;
@end

@implementation PXPhotosGridSetAllLibrariesFilterActionPerformer

- (void)performUserInteractionTask
{
  v3 = [(PXPhotosGridActionPerformer *)self viewModel];
  v4 = [v3 libraryFilterState];

  [v4 setViewMode:0];
  [(PXPhotosGridToggleFilterActionPerformer *)self updateToLibraryFilterStateAndFinishTask:v4];
}

- (int64_t)menuElementState
{
  v2 = [(PXPhotosGridActionPerformer *)self viewModel];
  v3 = [v2 libraryFilterState];
  v4 = [v3 isLibraryFilterActive:0];

  return v4;
}

@end