@interface PXPhotosGridSetPersonalLibraryFilterActionPerformer
- (int64_t)menuElementState;
- (void)performUserInteractionTask;
@end

@implementation PXPhotosGridSetPersonalLibraryFilterActionPerformer

- (void)performUserInteractionTask
{
  v3 = [(PXPhotosGridActionPerformer *)self viewModel];
  v4 = [v3 libraryFilterState];

  [v4 setViewMode:1];
  [(PXPhotosGridToggleFilterActionPerformer *)self updateToLibraryFilterStateAndFinishTask:v4];
}

- (int64_t)menuElementState
{
  v2 = [(PXPhotosGridActionPerformer *)self viewModel];
  v3 = [v2 libraryFilterState];
  v4 = [v3 isLibraryFilterActive:1];

  return v4;
}

@end