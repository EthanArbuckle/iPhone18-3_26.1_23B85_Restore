@interface PXPhotosGridToggleShowOnlyFromMyMacFilterActionPerformer
+ (BOOL)canPerformActionType:(id)type withViewModel:(id)model;
- (id)localizedTitleForUseCase:(unint64_t)case;
- (int64_t)menuElementState;
- (void)performUserInteractionTask;
@end

@implementation PXPhotosGridToggleShowOnlyFromMyMacFilterActionPerformer

+ (BOOL)canPerformActionType:(id)type withViewModel:(id)model
{
  modelCopy = model;
  if ([PXPhotosGridToggleIncludeFromMyMacFilterActionPerformer canPerformActionType:type withViewModel:modelCopy])
  {
    contentFilterState = [modelCopy contentFilterState];
    v7 = [contentFilterState shouldExcludeFromMyMac] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (void)performUserInteractionTask
{
  currentContentFilterState = [(PXPhotosGridActionPerformer *)self currentContentFilterState];
  [currentContentFilterState setShowOnlyFromMyMac:{objc_msgSend(currentContentFilterState, "showOnlyFromMyMac") ^ 1}];
  [(PXPhotosGridToggleFilterActionPerformer *)self updateToContentFilterStateAndFinishTask:currentContentFilterState];
}

- (id)localizedTitleForUseCase:(unint64_t)case
{
  if (case == 1)
  {
    currentContentFilterState = [(PXPhotosGridActionPerformer *)self currentContentFilterState];
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
  currentContentFilterState = [(PXPhotosGridActionPerformer *)self currentContentFilterState];
  v3 = [currentContentFilterState isContentFilterActive:18];

  return v3;
}

@end