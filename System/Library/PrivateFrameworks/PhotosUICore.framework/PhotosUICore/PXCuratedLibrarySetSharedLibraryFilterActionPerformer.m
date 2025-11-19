@interface PXCuratedLibrarySetSharedLibraryFilterActionPerformer
- (PXCuratedLibrarySetSharedLibraryFilterActionPerformer)initWithViewModel:(id)a3;
- (id)menuElement;
- (int64_t)menuElementState;
- (void)performUserInteractionTask;
@end

@implementation PXCuratedLibrarySetSharedLibraryFilterActionPerformer

- (void)performUserInteractionTask
{
  v3 = [(PXCuratedLibraryActionPerformer *)self viewModel];
  v4 = [v3 libraryFilterState];
  [v4 setViewMode:2];

  v6 = [(PXCuratedLibraryActionPerformer *)self viewModel];
  v5 = [v6 libraryFilterState];
  [(PXCuratedLibraryToggleFilterActionPerformer *)self updateToLibraryFilterStateAndFinishTask:v5];
}

- (int64_t)menuElementState
{
  v2 = [(PXCuratedLibraryActionPerformer *)self viewModel];
  v3 = [v2 libraryFilterState];
  v4 = [v3 isLibraryFilterActive:2];

  return v4;
}

- (id)menuElement
{
  v8.receiver = self;
  v8.super_class = PXCuratedLibrarySetSharedLibraryFilterActionPerformer;
  v3 = [(PXCuratedLibraryToggleFilterActionPerformer *)&v8 menuElement];
  v4 = [(PXCuratedLibraryActionPerformer *)self viewModel];
  v5 = [v4 sharedLibraryStatusProvider];
  v6 = [v5 hasPreview];

  if (v6)
  {
    PXSharedLibraryUpdateActionTitleForPreview(v3);
  }

  return v3;
}

- (PXCuratedLibrarySetSharedLibraryFilterActionPerformer)initWithViewModel:(id)a3
{
  v4.receiver = self;
  v4.super_class = PXCuratedLibrarySetSharedLibraryFilterActionPerformer;
  return [(PXCuratedLibraryActionPerformer *)&v4 initWithActionType:@"PXCuratedLibraryActionSetSharedLibraryFilter" viewModel:a3];
}

@end