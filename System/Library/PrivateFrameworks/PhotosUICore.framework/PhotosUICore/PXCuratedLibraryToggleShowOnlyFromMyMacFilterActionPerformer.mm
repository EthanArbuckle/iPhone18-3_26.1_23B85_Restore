@interface PXCuratedLibraryToggleShowOnlyFromMyMacFilterActionPerformer
- (PXCuratedLibraryToggleShowOnlyFromMyMacFilterActionPerformer)initWithViewModel:(id)model;
- (id)localizedTitleForUseCase:(unint64_t)case;
- (int64_t)menuElementState;
- (void)performUserInteractionTask;
@end

@implementation PXCuratedLibraryToggleShowOnlyFromMyMacFilterActionPerformer

- (void)performUserInteractionTask
{
  currentContentFilterState = [(PXCuratedLibraryToggleFilterActionPerformer *)self currentContentFilterState];
  [currentContentFilterState setShowOnlyFromMyMac:{objc_msgSend(currentContentFilterState, "showOnlyFromMyMac") ^ 1}];
  [(PXCuratedLibraryToggleFilterActionPerformer *)self updateToContentFilterStateAndFinishTask:currentContentFilterState];
}

- (id)localizedTitleForUseCase:(unint64_t)case
{
  if (case == 1)
  {
    currentContentFilterState = [(PXCuratedLibraryToggleFilterActionPerformer *)self currentContentFilterState];
    if ([currentContentFilterState showOnlyFromMyMac])
    {
      v4 = @"DISABLE_SHOW_ONLY_FROM_MY_MAC_FILTER_SHORTCUT";
    }

    else
    {
      v4 = @"ENABLE_SHOW_ONLY_FROM_MY_MAC_FILTER_SHORTCUT";
    }

    v5 = PXLocalizedStringFromTable(v4, @"PhotosUICore");
  }

  else
  {
    v5 = PXContentFilterTitleForItemTag(18);
  }

  return v5;
}

- (int64_t)menuElementState
{
  currentContentFilterState = [(PXCuratedLibraryToggleFilterActionPerformer *)self currentContentFilterState];
  v3 = [currentContentFilterState isContentFilterActive:18];

  return v3;
}

- (PXCuratedLibraryToggleShowOnlyFromMyMacFilterActionPerformer)initWithViewModel:(id)model
{
  v4.receiver = self;
  v4.super_class = PXCuratedLibraryToggleShowOnlyFromMyMacFilterActionPerformer;
  return [(PXCuratedLibraryActionPerformer *)&v4 initWithActionType:@"PXCuratedLibraryActionToggleShowOnlyFromMyMacFilter" viewModel:model];
}

@end