@interface PXPhotosGridToggleShowOnlyFromMyMacFilterActionPerformer
+ (BOOL)canPerformActionType:(id)a3 withViewModel:(id)a4;
- (id)localizedTitleForUseCase:(unint64_t)a3;
- (int64_t)menuElementState;
- (void)performUserInteractionTask;
@end

@implementation PXPhotosGridToggleShowOnlyFromMyMacFilterActionPerformer

+ (BOOL)canPerformActionType:(id)a3 withViewModel:(id)a4
{
  v5 = a4;
  if ([PXPhotosGridToggleIncludeFromMyMacFilterActionPerformer canPerformActionType:a3 withViewModel:v5])
  {
    v6 = [v5 contentFilterState];
    v7 = [v6 shouldExcludeFromMyMac] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (void)performUserInteractionTask
{
  v3 = [(PXPhotosGridActionPerformer *)self currentContentFilterState];
  [v3 setShowOnlyFromMyMac:{objc_msgSend(v3, "showOnlyFromMyMac") ^ 1}];
  [(PXPhotosGridToggleFilterActionPerformer *)self updateToContentFilterStateAndFinishTask:v3];
}

- (id)localizedTitleForUseCase:(unint64_t)a3
{
  if (a3 == 1)
  {
    v3 = [(PXPhotosGridActionPerformer *)self currentContentFilterState];
    if ([v3 showOnlyFromMyMac])
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
  v2 = [(PXPhotosGridActionPerformer *)self currentContentFilterState];
  v3 = [v2 isContentFilterActive:18];

  return v3;
}

@end