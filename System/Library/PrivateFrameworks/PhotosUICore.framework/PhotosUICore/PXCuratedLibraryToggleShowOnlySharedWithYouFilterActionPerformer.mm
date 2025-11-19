@interface PXCuratedLibraryToggleShowOnlySharedWithYouFilterActionPerformer
- (PXCuratedLibraryToggleShowOnlySharedWithYouFilterActionPerformer)initWithViewModel:(id)a3;
- (id)localizedTitleForUseCase:(unint64_t)a3;
- (int64_t)menuElementState;
- (void)performUserInteractionTask;
@end

@implementation PXCuratedLibraryToggleShowOnlySharedWithYouFilterActionPerformer

- (void)performUserInteractionTask
{
  v3 = [(PXCuratedLibraryToggleFilterActionPerformer *)self currentContentFilterState];
  [v3 setShowOnlySharedWithYou:{objc_msgSend(v3, "showOnlySharedWithYou") ^ 1}];
  [(PXCuratedLibraryToggleFilterActionPerformer *)self updateToContentFilterStateAndFinishTask:v3];
}

- (id)localizedTitleForUseCase:(unint64_t)a3
{
  if (a3 == 1)
  {
    v3 = [(PXCuratedLibraryToggleFilterActionPerformer *)self currentContentFilterState];
    if ([v3 showOnlyScreenshots])
    {
      v4 = @"DISABLE_SHOW_ONLY_SWY_FILTER_SHORTCUT";
    }

    else
    {
      v4 = @"ENABLE_SHOW_ONLY_SWY_FILTER_SHORTCUT";
    }

    v5 = PXLocalizedStringFromTable(v4, @"PhotosUICore");
  }

  else
  {
    v5 = PXContentFilterTitleForItemTag(17);
  }

  return v5;
}

- (int64_t)menuElementState
{
  v2 = [(PXCuratedLibraryToggleFilterActionPerformer *)self currentContentFilterState];
  v3 = [v2 isContentFilterActive:17];

  return v3;
}

- (PXCuratedLibraryToggleShowOnlySharedWithYouFilterActionPerformer)initWithViewModel:(id)a3
{
  v4.receiver = self;
  v4.super_class = PXCuratedLibraryToggleShowOnlySharedWithYouFilterActionPerformer;
  return [(PXCuratedLibraryActionPerformer *)&v4 initWithActionType:@"PXCuratedLibraryActionToggleShowOnlySharedWithYouFilter" viewModel:a3];
}

@end