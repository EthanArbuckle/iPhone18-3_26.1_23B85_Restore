@interface PXCuratedLibraryToggleIncludeSharedWithYouFilterActionPerformer
- (PXCuratedLibraryToggleIncludeSharedWithYouFilterActionPerformer)initWithViewModel:(id)a3;
- (id)localizedTitleForUseCase:(unint64_t)a3;
- (int64_t)menuElementState;
- (void)performUserInteractionTask;
@end

@implementation PXCuratedLibraryToggleIncludeSharedWithYouFilterActionPerformer

- (void)performUserInteractionTask
{
  v5 = [(PXCuratedLibraryToggleFilterActionPerformer *)self currentContentFilterState];
  [v5 setIncludeSharedWithYou:{objc_msgSend(v5, "includeSharedWithYou") ^ 1}];
  v3 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v5, "includeSharedWithYou")}];
  v4 = [off_1E7721948 standardUserDefaults];
  [v4 setIncludeSharedWithYou:v3];

  [(PXCuratedLibraryToggleFilterActionPerformer *)self updateToContentFilterStateAndFinishTask:v5];
}

- (id)localizedTitleForUseCase:(unint64_t)a3
{
  if (a3 == 1)
  {
    v3 = [(PXCuratedLibraryToggleFilterActionPerformer *)self currentContentFilterState];
    if ([v3 includeSharedWithYou])
    {
      v4 = @"DISABLE_INCLUDE_SWY_FILTER_SHORTCUT";
    }

    else
    {
      v4 = @"ENABLE_INCLUDE_SWY_FILTER_SHORTCUT";
    }

    v5 = PXLocalizedStringFromTable(v4, @"PhotosUICore");
  }

  else
  {
    v5 = PXContentFilterTitleForItemTag(3);
  }

  return v5;
}

- (int64_t)menuElementState
{
  v2 = [(PXCuratedLibraryToggleFilterActionPerformer *)self currentContentFilterState];
  v3 = [v2 isContentFilterActive:3];

  return v3;
}

- (PXCuratedLibraryToggleIncludeSharedWithYouFilterActionPerformer)initWithViewModel:(id)a3
{
  v4.receiver = self;
  v4.super_class = PXCuratedLibraryToggleIncludeSharedWithYouFilterActionPerformer;
  return [(PXCuratedLibraryActionPerformer *)&v4 initWithActionType:@"PXCuratedLibraryActionToggleIncludeSharedWithYouFilter" viewModel:a3];
}

@end