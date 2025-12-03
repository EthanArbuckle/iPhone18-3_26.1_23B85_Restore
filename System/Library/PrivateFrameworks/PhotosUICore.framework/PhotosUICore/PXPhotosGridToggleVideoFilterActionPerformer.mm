@interface PXPhotosGridToggleVideoFilterActionPerformer
+ (BOOL)canPerformActionType:(id)type withViewModel:(id)model;
- (id)localizedTitleForUseCase:(unint64_t)case;
- (int64_t)menuActionState;
- (void)performUserInteractionTask;
@end

@implementation PXPhotosGridToggleVideoFilterActionPerformer

+ (BOOL)canPerformActionType:(id)type withViewModel:(id)model
{
  modelCopy = model;
  v9.receiver = self;
  v9.super_class = &OBJC_METACLASS___PXPhotosGridToggleVideoFilterActionPerformer;
  if (objc_msgSendSuper2(&v9, sel_canPerformActionType_withViewModel_, type, modelCopy))
  {
    v7 = ![PXPhotosGridToggleFilterActionPerformer isContentFilterHidden:9 viewModel:modelCopy];
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
  [currentContentFilterState setVideo:{objc_msgSend(currentContentFilterState, "video") ^ 1}];
  [(PXPhotosGridToggleFilterActionPerformer *)self updateToContentFilterStateAndFinishTask:currentContentFilterState];
}

- (int64_t)menuActionState
{
  currentContentFilterState = [(PXPhotosGridActionPerformer *)self currentContentFilterState];
  v3 = [currentContentFilterState isContentFilterActive:9];

  return v3;
}

- (id)localizedTitleForUseCase:(unint64_t)case
{
  if (case == 1)
  {
    viewModel = [(PXPhotosGridActionPerformer *)self viewModel];
    contentFilterState = [viewModel contentFilterState];
    if ([contentFilterState video])
    {
      v5 = @"DISABLE_VIDEOS_FILTER_SHORTCUT";
    }

    else
    {
      v5 = @"ENABLE_VIDEOS_FILTER_SHORTCUT";
    }

    v6 = PXLocalizedStringFromTable(v5, @"PhotosUICore");
  }

  else
  {
    v6 = PXContentFilterTitleForItemTag(9);
  }

  return v6;
}

@end