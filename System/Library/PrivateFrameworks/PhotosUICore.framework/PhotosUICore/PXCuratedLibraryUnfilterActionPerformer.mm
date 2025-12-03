@interface PXCuratedLibraryUnfilterActionPerformer
- (PXCuratedLibraryUnfilterActionPerformer)initWithViewModel:(id)model;
- (int64_t)menuActionState;
- (void)performUserInteractionTask;
@end

@implementation PXCuratedLibraryUnfilterActionPerformer

- (void)performUserInteractionTask
{
  viewModel = [(PXCuratedLibraryActionPerformer *)self viewModel];
  photoLibrary = [viewModel photoLibrary];
  v6 = [PXContentFilterState defaultAllPhotosFilterStateForPhotoLibrary:photoLibrary];

  currentContentFilterState = [(PXCuratedLibraryToggleFilterActionPerformer *)self currentContentFilterState];
  [v6 setIncludeScreenshots:{objc_msgSend(currentContentFilterState, "includeScreenshots")}];

  [(PXCuratedLibraryToggleFilterActionPerformer *)self updateToContentFilterStateAndFinishTask:v6];
}

- (int64_t)menuActionState
{
  currentContentFilterState = [(PXCuratedLibraryToggleFilterActionPerformer *)self currentContentFilterState];
  v3 = [currentContentFilterState isContentFilterActive:1];

  return v3;
}

- (PXCuratedLibraryUnfilterActionPerformer)initWithViewModel:(id)model
{
  v4.receiver = self;
  v4.super_class = PXCuratedLibraryUnfilterActionPerformer;
  return [(PXCuratedLibraryActionPerformer *)&v4 initWithActionType:@"PXCuratedLibraryActionUnfilter" viewModel:model];
}

@end