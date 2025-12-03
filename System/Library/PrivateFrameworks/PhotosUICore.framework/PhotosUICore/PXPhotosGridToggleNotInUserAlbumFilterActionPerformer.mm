@interface PXPhotosGridToggleNotInUserAlbumFilterActionPerformer
+ (BOOL)canPerformActionType:(id)type withViewModel:(id)model;
- (id)localizedTitleForUseCase:(unint64_t)case;
- (int64_t)menuElementState;
- (void)performUserInteractionTask;
@end

@implementation PXPhotosGridToggleNotInUserAlbumFilterActionPerformer

+ (BOOL)canPerformActionType:(id)type withViewModel:(id)model
{
  modelCopy = model;
  v9.receiver = self;
  v9.super_class = &OBJC_METACLASS___PXPhotosGridToggleNotInUserAlbumFilterActionPerformer;
  if (objc_msgSendSuper2(&v9, sel_canPerformActionType_withViewModel_, type, modelCopy))
  {
    v7 = ![PXPhotosGridToggleFilterActionPerformer isContentFilterHidden:13 viewModel:modelCopy];
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
  [currentContentFilterState setNotInUserAlbum:{objc_msgSend(currentContentFilterState, "notInUserAlbum") ^ 1}];
  [(PXPhotosGridToggleFilterActionPerformer *)self updateToContentFilterStateAndFinishTask:currentContentFilterState];
}

- (id)localizedTitleForUseCase:(unint64_t)case
{
  if (case == 1)
  {
    viewModel = [(PXPhotosGridActionPerformer *)self viewModel];
    contentFilterState = [viewModel contentFilterState];
    if ([contentFilterState notInUserAlbum])
    {
      v5 = @"DISABLE_NOT_INALBUM_FILTER_SHORTCUT";
    }

    else
    {
      v5 = @"ENABLE_NOT_INALBUM_FILTER_SHORTCUT";
    }

    v6 = PXLocalizedStringFromTable(v5, @"PhotosUICore");
  }

  else
  {
    v6 = PXContentFilterTitleForItemTag(13);
  }

  return v6;
}

- (int64_t)menuElementState
{
  currentContentFilterState = [(PXPhotosGridActionPerformer *)self currentContentFilterState];
  v3 = [currentContentFilterState isContentFilterActive:13];

  return v3;
}

@end