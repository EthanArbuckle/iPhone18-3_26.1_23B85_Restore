@interface PXCuratedLibrarySetSharedLibraryFilterActionPerformer
- (PXCuratedLibrarySetSharedLibraryFilterActionPerformer)initWithViewModel:(id)model;
- (id)menuElement;
- (int64_t)menuElementState;
- (void)performUserInteractionTask;
@end

@implementation PXCuratedLibrarySetSharedLibraryFilterActionPerformer

- (void)performUserInteractionTask
{
  viewModel = [(PXCuratedLibraryActionPerformer *)self viewModel];
  libraryFilterState = [viewModel libraryFilterState];
  [libraryFilterState setViewMode:2];

  viewModel2 = [(PXCuratedLibraryActionPerformer *)self viewModel];
  libraryFilterState2 = [viewModel2 libraryFilterState];
  [(PXCuratedLibraryToggleFilterActionPerformer *)self updateToLibraryFilterStateAndFinishTask:libraryFilterState2];
}

- (int64_t)menuElementState
{
  viewModel = [(PXCuratedLibraryActionPerformer *)self viewModel];
  libraryFilterState = [viewModel libraryFilterState];
  v4 = [libraryFilterState isLibraryFilterActive:2];

  return v4;
}

- (id)menuElement
{
  v8.receiver = self;
  v8.super_class = PXCuratedLibrarySetSharedLibraryFilterActionPerformer;
  menuElement = [(PXCuratedLibraryToggleFilterActionPerformer *)&v8 menuElement];
  viewModel = [(PXCuratedLibraryActionPerformer *)self viewModel];
  sharedLibraryStatusProvider = [viewModel sharedLibraryStatusProvider];
  hasPreview = [sharedLibraryStatusProvider hasPreview];

  if (hasPreview)
  {
    PXSharedLibraryUpdateActionTitleForPreview(menuElement);
  }

  return menuElement;
}

- (PXCuratedLibrarySetSharedLibraryFilterActionPerformer)initWithViewModel:(id)model
{
  v4.receiver = self;
  v4.super_class = PXCuratedLibrarySetSharedLibraryFilterActionPerformer;
  return [(PXCuratedLibraryActionPerformer *)&v4 initWithActionType:@"PXCuratedLibraryActionSetSharedLibraryFilter" viewModel:model];
}

@end