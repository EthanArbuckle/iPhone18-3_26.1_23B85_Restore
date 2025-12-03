@interface PXCuratedLibraryToggleIncludeFromMyMacFilterActionPerformer
- (PXCuratedLibraryToggleIncludeFromMyMacFilterActionPerformer)initWithViewModel:(id)model;
- (id)localizedTitleForUseCase:(unint64_t)case;
- (int64_t)menuElementState;
- (void)performUserInteractionTask;
@end

@implementation PXCuratedLibraryToggleIncludeFromMyMacFilterActionPerformer

- (void)performUserInteractionTask
{
  currentContentFilterState = [(PXCuratedLibraryToggleFilterActionPerformer *)self currentContentFilterState];
  [currentContentFilterState setIncludeFromMyMac:{objc_msgSend(currentContentFilterState, "includeFromMyMac") ^ 1}];
  v3 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(currentContentFilterState, "includeFromMyMac")}];
  standardUserDefaults = [off_1E7721948 standardUserDefaults];
  [standardUserDefaults setIncludeFromMyMac:v3];

  viewModel = [(PXCuratedLibraryActionPerformer *)self viewModel];
  photoLibrary = [viewModel photoLibrary];
  px_macSyncedAssetsStatusProvider = [photoLibrary px_macSyncedAssetsStatusProvider];
  [px_macSyncedAssetsStatusProvider markAsReadIfNeeded];

  [(PXCuratedLibraryToggleFilterActionPerformer *)self updateToContentFilterStateAndFinishTask:currentContentFilterState];
}

- (id)localizedTitleForUseCase:(unint64_t)case
{
  if (case == 1)
  {
    currentContentFilterState = [(PXCuratedLibraryToggleFilterActionPerformer *)self currentContentFilterState];
    v4 = [currentContentFilterState isContentFilterActive:4];

    if (v4)
    {
      v5 = @"DISABLE_INCLUDE_FROM_MY_MAC_FILTER_SHORTCUT";
    }

    else
    {
      v5 = @"ENABLE_INCLUDE_FROM_MY_MAC_FILTER_SHORTCUT";
    }

    v6 = PXLocalizedStringFromTable(v5, @"PhotosUICore");
  }

  else
  {
    v6 = PXContentFilterTitleForItemTag(4);
  }

  return v6;
}

- (int64_t)menuElementState
{
  currentContentFilterState = [(PXCuratedLibraryToggleFilterActionPerformer *)self currentContentFilterState];
  v3 = [currentContentFilterState isContentFilterActive:4];

  return v3;
}

- (PXCuratedLibraryToggleIncludeFromMyMacFilterActionPerformer)initWithViewModel:(id)model
{
  v4.receiver = self;
  v4.super_class = PXCuratedLibraryToggleIncludeFromMyMacFilterActionPerformer;
  return [(PXCuratedLibraryActionPerformer *)&v4 initWithActionType:@"PXCuratedLibraryActionToggleIncludeFromMyMacFilter" viewModel:model];
}

@end