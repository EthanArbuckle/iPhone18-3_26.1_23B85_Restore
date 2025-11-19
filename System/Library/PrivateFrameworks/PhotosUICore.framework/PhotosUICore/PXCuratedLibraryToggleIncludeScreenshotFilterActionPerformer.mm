@interface PXCuratedLibraryToggleIncludeScreenshotFilterActionPerformer
- (PXCuratedLibraryToggleIncludeScreenshotFilterActionPerformer)initWithViewModel:(id)a3;
- (id)localizedTitleForUseCase:(unint64_t)a3;
- (int64_t)menuElementState;
- (void)performUserInteractionTask;
@end

@implementation PXCuratedLibraryToggleIncludeScreenshotFilterActionPerformer

- (void)performUserInteractionTask
{
  v5 = [(PXCuratedLibraryToggleFilterActionPerformer *)self currentContentFilterState];
  [v5 setIncludeScreenshots:{objc_msgSend(v5, "isContentFilterActive:", 2) ^ 1}];
  v3 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v5, "includeScreenshots")}];
  v4 = [off_1E7721948 standardUserDefaults];
  [v4 setIncludeScreenshots:v3];

  [(PXCuratedLibraryToggleFilterActionPerformer *)self updateToContentFilterStateAndFinishTask:v5];
}

- (id)localizedTitleForUseCase:(unint64_t)a3
{
  if (a3 == 1)
  {
    v3 = [(PXCuratedLibraryToggleFilterActionPerformer *)self currentContentFilterState];
    v4 = [v3 isContentFilterActive:2];

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
  v2 = [(PXCuratedLibraryToggleFilterActionPerformer *)self currentContentFilterState];
  v3 = [v2 isContentFilterActive:2];

  return v3;
}

- (PXCuratedLibraryToggleIncludeScreenshotFilterActionPerformer)initWithViewModel:(id)a3
{
  v4.receiver = self;
  v4.super_class = PXCuratedLibraryToggleIncludeScreenshotFilterActionPerformer;
  return [(PXCuratedLibraryActionPerformer *)&v4 initWithActionType:@"PXCuratedLibraryActionToggleIncludeScreenshotFilter" viewModel:a3];
}

@end