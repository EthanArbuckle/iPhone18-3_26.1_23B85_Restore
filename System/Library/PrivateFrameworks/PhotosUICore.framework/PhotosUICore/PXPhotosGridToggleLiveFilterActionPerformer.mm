@interface PXPhotosGridToggleLiveFilterActionPerformer
+ (BOOL)canPerformActionType:(id)type withViewModel:(id)model;
- (id)localizedTitleForUseCase:(unint64_t)case;
- (int64_t)menuElementState;
- (void)performUserInteractionTask;
@end

@implementation PXPhotosGridToggleLiveFilterActionPerformer

+ (BOOL)canPerformActionType:(id)type withViewModel:(id)model
{
  modelCopy = model;
  v9.receiver = self;
  v9.super_class = &OBJC_METACLASS___PXPhotosGridToggleLiveFilterActionPerformer;
  if (objc_msgSendSuper2(&v9, sel_canPerformActionType_withViewModel_, type, modelCopy))
  {
    v7 = ![PXPhotosGridToggleFilterActionPerformer isContentFilterHidden:14 viewModel:modelCopy];
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
  [currentContentFilterState setLive:{objc_msgSend(currentContentFilterState, "live") ^ 1}];
  [(PXPhotosGridToggleFilterActionPerformer *)self updateToContentFilterStateAndFinishTask:currentContentFilterState];
}

- (id)localizedTitleForUseCase:(unint64_t)case
{
  if (case == 1)
  {
    viewModel = [(PXPhotosGridActionPerformer *)self viewModel];
    contentFilterState = [viewModel contentFilterState];

    if (contentFilterState)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        px_descriptionForAssertionMessage = [contentFilterState px_descriptionForAssertionMessage];
        [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosGridToggleLiveFilterActionPerformer.m" lineNumber:39 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"self.viewModel.contentFilterState", v12, px_descriptionForAssertionMessage}];
      }
    }

    if ([contentFilterState live])
    {
      v7 = @"DISABLE_LIVE_FILTER_SHORTCUT";
    }

    else
    {
      v7 = @"ENABLE_LIVE_FILTER_SHORTCUT";
    }

    v8 = PXLocalizedStringFromTable(v7, @"PhotosUICore");
  }

  else
  {
    v8 = PXContentFilterTitleForItemTag(14);
  }

  return v8;
}

- (int64_t)menuElementState
{
  currentContentFilterState = [(PXPhotosGridActionPerformer *)self currentContentFilterState];
  v3 = [currentContentFilterState isContentFilterActive:14];

  return v3;
}

@end