@interface PXPhotosGridToggleInUserAlbumFilterActionPerformer
+ (BOOL)canPerformActionType:(id)a3 withViewModel:(id)a4;
- (id)localizedTitleForUseCase:(unint64_t)a3;
- (int64_t)menuActionState;
- (void)performUserInteractionTask;
@end

@implementation PXPhotosGridToggleInUserAlbumFilterActionPerformer

+ (BOOL)canPerformActionType:(id)a3 withViewModel:(id)a4
{
  v6 = a4;
  v9.receiver = a1;
  v9.super_class = &OBJC_METACLASS___PXPhotosGridToggleInUserAlbumFilterActionPerformer;
  if (objc_msgSendSuper2(&v9, sel_canPerformActionType_withViewModel_, a3, v6))
  {
    v7 = ![PXPhotosGridToggleFilterActionPerformer isContentFilterHidden:12 viewModel:v6];
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
  [v3 setInUserAlbum:{objc_msgSend(v3, "inUserAlbum") ^ 1}];
  [(PXPhotosGridToggleFilterActionPerformer *)self updateToContentFilterStateAndFinishTask:v3];
}

- (int64_t)menuActionState
{
  v2 = [(PXPhotosGridActionPerformer *)self currentContentFilterState];
  v3 = [v2 isContentFilterActive:12];

  return v3;
}

- (id)localizedTitleForUseCase:(unint64_t)a3
{
  if (a3 == 1)
  {
    v3 = [(PXPhotosGridActionPerformer *)self viewModel];
    v4 = [v3 contentFilterState];
    if ([v4 inUserAlbum])
    {
      v5 = @"DISABLE_INALBUM_FILTER_SHORTCUT";
    }

    else
    {
      v5 = @"ENABLE_INALBUM_FILTER_SHORTCUT";
    }

    v6 = PXLocalizedStringFromTable(v5, @"PhotosUICore");
  }

  else
  {
    v6 = PXContentFilterTitleForItemTag(12);
  }

  return v6;
}

@end