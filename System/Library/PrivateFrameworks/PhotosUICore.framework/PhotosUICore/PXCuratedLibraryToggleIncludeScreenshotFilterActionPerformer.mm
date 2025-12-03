@interface PXCuratedLibraryToggleIncludeScreenshotFilterActionPerformer
- (PXCuratedLibraryToggleIncludeScreenshotFilterActionPerformer)initWithViewModel:(id)model;
- (id)localizedTitleForUseCase:(unint64_t)case;
- (int64_t)menuElementState;
- (void)performUserInteractionTask;
@end

@implementation PXCuratedLibraryToggleIncludeScreenshotFilterActionPerformer

- (void)performUserInteractionTask
{
  currentContentFilterState = [(PXCuratedLibraryToggleFilterActionPerformer *)self currentContentFilterState];
  [currentContentFilterState setIncludeScreenshots:{objc_msgSend(currentContentFilterState, "isContentFilterActive:", 2) ^ 1}];
  v3 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(currentContentFilterState, "includeScreenshots")}];
  standardUserDefaults = [off_1E7721948 standardUserDefaults];
  [standardUserDefaults setIncludeScreenshots:v3];

  [(PXCuratedLibraryToggleFilterActionPerformer *)self updateToContentFilterStateAndFinishTask:currentContentFilterState];
}

- (id)localizedTitleForUseCase:(unint64_t)case
{
  if (case == 1)
  {
    currentContentFilterState = [(PXCuratedLibraryToggleFilterActionPerformer *)self currentContentFilterState];
    v4 = [currentContentFilterState isContentFilterActive:2];

    if (v4)
    {
      v5 = @"DISABLE_INCLUDE_SCREENSHOTS_FILTER_SHORTCUT";
    }

    else
    {
      v5 = @"ENABLE_INCLUDE_SCREENSHOTS_FILTER_SHORTCUT";
    }

    v6 = PXLocalizedStringFromTable(v5, @"PhotosUICore");
  }

  else
  {
    v6 = PXContentFilterTitleForItemTag(2);
  }

  return v6;
}

- (int64_t)menuElementState
{
  currentContentFilterState = [(PXCuratedLibraryToggleFilterActionPerformer *)self currentContentFilterState];
  v3 = [currentContentFilterState isContentFilterActive:2];

  return v3;
}

- (PXCuratedLibraryToggleIncludeScreenshotFilterActionPerformer)initWithViewModel:(id)model
{
  v4.receiver = self;
  v4.super_class = PXCuratedLibraryToggleIncludeScreenshotFilterActionPerformer;
  return [(PXCuratedLibraryActionPerformer *)&v4 initWithActionType:@"PXCuratedLibraryActionToggleIncludeScreenshotFilter" viewModel:model];
}

@end