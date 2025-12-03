@interface PXCuratedLibrarySetPersonalLibraryFilterActionPerformer
- (PXCuratedLibrarySetPersonalLibraryFilterActionPerformer)initWithViewModel:(id)model;
- (int64_t)menuElementState;
- (void)performUserInteractionTask;
@end

@implementation PXCuratedLibrarySetPersonalLibraryFilterActionPerformer

- (void)performUserInteractionTask
{
  viewModel = [(PXCuratedLibraryActionPerformer *)self viewModel];
  libraryFilterState = [viewModel libraryFilterState];
  [libraryFilterState setViewMode:1];

  viewModel2 = [(PXCuratedLibraryActionPerformer *)self viewModel];
  libraryFilterState2 = [viewModel2 libraryFilterState];
  [(PXCuratedLibraryToggleFilterActionPerformer *)self updateToLibraryFilterStateAndFinishTask:libraryFilterState2];
}

- (int64_t)menuElementState
{
  viewModel = [(PXCuratedLibraryActionPerformer *)self viewModel];
  libraryFilterState = [viewModel libraryFilterState];
  v4 = [libraryFilterState isLibraryFilterActive:1];

  return v4;
}

- (PXCuratedLibrarySetPersonalLibraryFilterActionPerformer)initWithViewModel:(id)model
{
  v4.receiver = self;
  v4.super_class = PXCuratedLibrarySetPersonalLibraryFilterActionPerformer;
  return [(PXCuratedLibraryActionPerformer *)&v4 initWithActionType:@"PXCuratedLibraryActionSetPersonalLibraryFilter" viewModel:model];
}

@end