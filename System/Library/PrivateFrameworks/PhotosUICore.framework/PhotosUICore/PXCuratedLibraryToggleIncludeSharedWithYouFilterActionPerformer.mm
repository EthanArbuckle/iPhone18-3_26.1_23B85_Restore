@interface PXCuratedLibraryToggleIncludeSharedWithYouFilterActionPerformer
- (PXCuratedLibraryToggleIncludeSharedWithYouFilterActionPerformer)initWithViewModel:(id)model;
- (id)localizedTitleForUseCase:(unint64_t)case;
- (int64_t)menuElementState;
- (void)performUserInteractionTask;
@end

@implementation PXCuratedLibraryToggleIncludeSharedWithYouFilterActionPerformer

- (void)performUserInteractionTask
{
  currentContentFilterState = [(PXCuratedLibraryToggleFilterActionPerformer *)self currentContentFilterState];
  [currentContentFilterState setIncludeSharedWithYou:{objc_msgSend(currentContentFilterState, "includeSharedWithYou") ^ 1}];
  v3 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(currentContentFilterState, "includeSharedWithYou")}];
  standardUserDefaults = [off_1E7721948 standardUserDefaults];
  [standardUserDefaults setIncludeSharedWithYou:v3];

  [(PXCuratedLibraryToggleFilterActionPerformer *)self updateToContentFilterStateAndFinishTask:currentContentFilterState];
}

- (id)localizedTitleForUseCase:(unint64_t)case
{
  if (case == 1)
  {
    currentContentFilterState = [(PXCuratedLibraryToggleFilterActionPerformer *)self currentContentFilterState];
    if ([currentContentFilterState includeSharedWithYou])
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
  currentContentFilterState = [(PXCuratedLibraryToggleFilterActionPerformer *)self currentContentFilterState];
  v3 = [currentContentFilterState isContentFilterActive:3];

  return v3;
}

- (PXCuratedLibraryToggleIncludeSharedWithYouFilterActionPerformer)initWithViewModel:(id)model
{
  v4.receiver = self;
  v4.super_class = PXCuratedLibraryToggleIncludeSharedWithYouFilterActionPerformer;
  return [(PXCuratedLibraryActionPerformer *)&v4 initWithActionType:@"PXCuratedLibraryActionToggleIncludeSharedWithYouFilter" viewModel:model];
}

@end