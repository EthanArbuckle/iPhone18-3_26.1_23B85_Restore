@interface PXCuratedLibrarySetAllLibrariesFilterActionPerformer
- (PXCuratedLibrarySetAllLibrariesFilterActionPerformer)initWithViewModel:(id)model;
- (int64_t)menuElementState;
- (void)performUserInteractionTask;
@end

@implementation PXCuratedLibrarySetAllLibrariesFilterActionPerformer

- (void)performUserInteractionTask
{
  viewModel = [(PXCuratedLibraryActionPerformer *)self viewModel];
  libraryFilterState = [viewModel libraryFilterState];
  [libraryFilterState setViewMode:0];

  viewModel2 = [(PXCuratedLibraryActionPerformer *)self viewModel];
  libraryFilterState2 = [viewModel2 libraryFilterState];
  [(PXCuratedLibraryToggleFilterActionPerformer *)self updateToLibraryFilterStateAndFinishTask:libraryFilterState2];
}

- (int64_t)menuElementState
{
  viewModel = [(PXCuratedLibraryActionPerformer *)self viewModel];
  libraryFilterState = [viewModel libraryFilterState];
  v4 = [libraryFilterState isLibraryFilterActive:0];

  return v4;
}

- (PXCuratedLibrarySetAllLibrariesFilterActionPerformer)initWithViewModel:(id)model
{
  v4.receiver = self;
  v4.super_class = PXCuratedLibrarySetAllLibrariesFilterActionPerformer;
  return [(PXCuratedLibraryActionPerformer *)&v4 initWithActionType:@"PXCuratedLibraryActionSetAllLibrariesFilter" viewModel:model];
}

@end