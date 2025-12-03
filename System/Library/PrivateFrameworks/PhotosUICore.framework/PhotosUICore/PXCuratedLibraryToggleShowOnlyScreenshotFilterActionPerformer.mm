@interface PXCuratedLibraryToggleShowOnlyScreenshotFilterActionPerformer
- (PXCuratedLibraryToggleShowOnlyScreenshotFilterActionPerformer)initWithViewModel:(id)model;
- (id)localizedTitleForUseCase:(unint64_t)case;
- (int64_t)menuElementState;
- (void)performUserInteractionTask;
@end

@implementation PXCuratedLibraryToggleShowOnlyScreenshotFilterActionPerformer

- (void)performUserInteractionTask
{
  currentContentFilterState = [(PXCuratedLibraryToggleFilterActionPerformer *)self currentContentFilterState];
  [currentContentFilterState setShowOnlyScreenshots:{objc_msgSend(currentContentFilterState, "showOnlyScreenshots") ^ 1}];
  [(PXCuratedLibraryToggleFilterActionPerformer *)self updateToContentFilterStateAndFinishTask:currentContentFilterState];
}

- (id)localizedTitleForUseCase:(unint64_t)case
{
  currentContentFilterState = [(PXCuratedLibraryToggleFilterActionPerformer *)self currentContentFilterState];
  v5 = currentContentFilterState;
  if (case == 1)
  {
    if ([currentContentFilterState showOnlyScreenshots])
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
  currentContentFilterState = [(PXCuratedLibraryToggleFilterActionPerformer *)self currentContentFilterState];
  v3 = [currentContentFilterState isContentFilterActive:16];

  return v3;
}

- (PXCuratedLibraryToggleShowOnlyScreenshotFilterActionPerformer)initWithViewModel:(id)model
{
  v4.receiver = self;
  v4.super_class = PXCuratedLibraryToggleShowOnlyScreenshotFilterActionPerformer;
  return [(PXCuratedLibraryActionPerformer *)&v4 initWithActionType:@"PXCuratedLibraryActionToggleShowOnlyScreenshotFilter" viewModel:model];
}

@end