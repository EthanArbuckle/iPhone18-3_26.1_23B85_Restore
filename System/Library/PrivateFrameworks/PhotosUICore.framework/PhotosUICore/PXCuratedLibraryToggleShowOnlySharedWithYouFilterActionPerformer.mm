@interface PXCuratedLibraryToggleShowOnlySharedWithYouFilterActionPerformer
- (PXCuratedLibraryToggleShowOnlySharedWithYouFilterActionPerformer)initWithViewModel:(id)model;
- (id)localizedTitleForUseCase:(unint64_t)case;
- (int64_t)menuElementState;
- (void)performUserInteractionTask;
@end

@implementation PXCuratedLibraryToggleShowOnlySharedWithYouFilterActionPerformer

- (void)performUserInteractionTask
{
  currentContentFilterState = [(PXCuratedLibraryToggleFilterActionPerformer *)self currentContentFilterState];
  [currentContentFilterState setShowOnlySharedWithYou:{objc_msgSend(currentContentFilterState, "showOnlySharedWithYou") ^ 1}];
  [(PXCuratedLibraryToggleFilterActionPerformer *)self updateToContentFilterStateAndFinishTask:currentContentFilterState];
}

- (id)localizedTitleForUseCase:(unint64_t)case
{
  if (case == 1)
  {
    currentContentFilterState = [(PXCuratedLibraryToggleFilterActionPerformer *)self currentContentFilterState];
    if ([currentContentFilterState showOnlyScreenshots])
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
  currentContentFilterState = [(PXCuratedLibraryToggleFilterActionPerformer *)self currentContentFilterState];
  v3 = [currentContentFilterState isContentFilterActive:17];

  return v3;
}

- (PXCuratedLibraryToggleShowOnlySharedWithYouFilterActionPerformer)initWithViewModel:(id)model
{
  v4.receiver = self;
  v4.super_class = PXCuratedLibraryToggleShowOnlySharedWithYouFilterActionPerformer;
  return [(PXCuratedLibraryActionPerformer *)&v4 initWithActionType:@"PXCuratedLibraryActionToggleShowOnlySharedWithYouFilter" viewModel:model];
}

@end