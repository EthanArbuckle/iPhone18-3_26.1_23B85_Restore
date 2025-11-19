@interface PXCuratedLibraryToggleShowOnlyScreenshotFilterActionPerformer
- (PXCuratedLibraryToggleShowOnlyScreenshotFilterActionPerformer)initWithViewModel:(id)a3;
- (id)localizedTitleForUseCase:(unint64_t)a3;
- (int64_t)menuElementState;
- (void)performUserInteractionTask;
@end

@implementation PXCuratedLibraryToggleShowOnlyScreenshotFilterActionPerformer

- (void)performUserInteractionTask
{
  v3 = [(PXCuratedLibraryToggleFilterActionPerformer *)self currentContentFilterState];
  [v3 setShowOnlyScreenshots:{objc_msgSend(v3, "showOnlyScreenshots") ^ 1}];
  [(PXCuratedLibraryToggleFilterActionPerformer *)self updateToContentFilterStateAndFinishTask:v3];
}

- (id)localizedTitleForUseCase:(unint64_t)a3
{
  v4 = [(PXCuratedLibraryToggleFilterActionPerformer *)self currentContentFilterState];
  v5 = v4;
  if (a3 == 1)
  {
    if ([v4 showOnlyScreenshots])
    {
      v6 = @"DISABLE_SHOW_ONLY_SCREENSHOTS_FILTER_SHORTCUT";
    }

    else
    {
      v6 = @"ENABLE_SHOW_ONLY_SCREENSHOTS_FILTER_SHORTCUT";
    }

    v7 = PXLocalizedStringFromTable(v6, @"PhotosUICore");
  }

  else
  {
    v7 = PXContentFilterTitleForItemTag(16);
  }

  v8 = v7;

  return v8;
}

- (int64_t)menuElementState
{
  v2 = [(PXCuratedLibraryToggleFilterActionPerformer *)self currentContentFilterState];
  v3 = [v2 isContentFilterActive:16];

  return v3;
}

- (PXCuratedLibraryToggleShowOnlyScreenshotFilterActionPerformer)initWithViewModel:(id)a3
{
  v4.receiver = self;
  v4.super_class = PXCuratedLibraryToggleShowOnlyScreenshotFilterActionPerformer;
  return [(PXCuratedLibraryActionPerformer *)&v4 initWithActionType:@"PXCuratedLibraryActionToggleShowOnlyScreenshotFilter" viewModel:a3];
}

@end