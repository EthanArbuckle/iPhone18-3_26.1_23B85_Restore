@interface PXCuratedLibraryUnfilterActionPerformer
- (PXCuratedLibraryUnfilterActionPerformer)initWithViewModel:(id)a3;
- (int64_t)menuActionState;
- (void)performUserInteractionTask;
@end

@implementation PXCuratedLibraryUnfilterActionPerformer

- (void)performUserInteractionTask
{
  v3 = [(PXCuratedLibraryActionPerformer *)self viewModel];
  v4 = [v3 photoLibrary];
  v6 = [PXContentFilterState defaultAllPhotosFilterStateForPhotoLibrary:v4];

  v5 = [(PXCuratedLibraryToggleFilterActionPerformer *)self currentContentFilterState];
  [v6 setIncludeScreenshots:{objc_msgSend(v5, "includeScreenshots")}];

  [(PXCuratedLibraryToggleFilterActionPerformer *)self updateToContentFilterStateAndFinishTask:v6];
}

- (int64_t)menuActionState
{
  v2 = [(PXCuratedLibraryToggleFilterActionPerformer *)self currentContentFilterState];
  v3 = [v2 isContentFilterActive:1];

  return v3;
}

- (PXCuratedLibraryUnfilterActionPerformer)initWithViewModel:(id)a3
{
  v4.receiver = self;
  v4.super_class = PXCuratedLibraryUnfilterActionPerformer;
  return [(PXCuratedLibraryActionPerformer *)&v4 initWithActionType:@"PXCuratedLibraryActionUnfilter" viewModel:a3];
}

@end