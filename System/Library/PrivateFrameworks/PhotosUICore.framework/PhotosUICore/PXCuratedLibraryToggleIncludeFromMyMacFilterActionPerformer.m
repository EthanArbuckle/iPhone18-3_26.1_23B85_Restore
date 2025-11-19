@interface PXCuratedLibraryToggleIncludeFromMyMacFilterActionPerformer
- (PXCuratedLibraryToggleIncludeFromMyMacFilterActionPerformer)initWithViewModel:(id)a3;
- (id)localizedTitleForUseCase:(unint64_t)a3;
- (int64_t)menuElementState;
- (void)performUserInteractionTask;
@end

@implementation PXCuratedLibraryToggleIncludeFromMyMacFilterActionPerformer

- (void)performUserInteractionTask
{
  v8 = [(PXCuratedLibraryToggleFilterActionPerformer *)self currentContentFilterState];
  [v8 setIncludeFromMyMac:{objc_msgSend(v8, "includeFromMyMac") ^ 1}];
  v3 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v8, "includeFromMyMac")}];
  v4 = [off_1E7721948 standardUserDefaults];
  [v4 setIncludeFromMyMac:v3];

  v5 = [(PXCuratedLibraryActionPerformer *)self viewModel];
  v6 = [v5 photoLibrary];
  v7 = [v6 px_macSyncedAssetsStatusProvider];
  [v7 markAsReadIfNeeded];

  [(PXCuratedLibraryToggleFilterActionPerformer *)self updateToContentFilterStateAndFinishTask:v8];
}

- (id)localizedTitleForUseCase:(unint64_t)a3
{
  if (a3 == 1)
  {
    v3 = [(PXCuratedLibraryToggleFilterActionPerformer *)self currentContentFilterState];
    v4 = [v3 isContentFilterActive:4];

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
  v2 = [(PXCuratedLibraryToggleFilterActionPerformer *)self currentContentFilterState];
  v3 = [v2 isContentFilterActive:4];

  return v3;
}

- (PXCuratedLibraryToggleIncludeFromMyMacFilterActionPerformer)initWithViewModel:(id)a3
{
  v4.receiver = self;
  v4.super_class = PXCuratedLibraryToggleIncludeFromMyMacFilterActionPerformer;
  return [(PXCuratedLibraryActionPerformer *)&v4 initWithActionType:@"PXCuratedLibraryActionToggleIncludeFromMyMacFilter" viewModel:a3];
}

@end