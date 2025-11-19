@interface PXCuratedLibrarySetAllLibrariesFilterActionPerformer
- (PXCuratedLibrarySetAllLibrariesFilterActionPerformer)initWithViewModel:(id)a3;
- (int64_t)menuElementState;
- (void)performUserInteractionTask;
@end

@implementation PXCuratedLibrarySetAllLibrariesFilterActionPerformer

- (void)performUserInteractionTask
{
  v3 = [(PXCuratedLibraryActionPerformer *)self viewModel];
  v4 = [v3 libraryFilterState];
  [v4 setViewMode:0];

  v6 = [(PXCuratedLibraryActionPerformer *)self viewModel];
  v5 = [v6 libraryFilterState];
  [(PXCuratedLibraryToggleFilterActionPerformer *)self updateToLibraryFilterStateAndFinishTask:v5];
}

- (int64_t)menuElementState
{
  v2 = [(PXCuratedLibraryActionPerformer *)self viewModel];
  v3 = [v2 libraryFilterState];
  v4 = [v3 isLibraryFilterActive:0];

  return v4;
}

- (PXCuratedLibrarySetAllLibrariesFilterActionPerformer)initWithViewModel:(id)a3
{
  v4.receiver = self;
  v4.super_class = PXCuratedLibrarySetAllLibrariesFilterActionPerformer;
  return [(PXCuratedLibraryActionPerformer *)&v4 initWithActionType:@"PXCuratedLibraryActionSetAllLibrariesFilter" viewModel:a3];
}

@end