@interface PXPhotosGridTogglePortraitFilterActionPerformer
+ (BOOL)canPerformActionType:(id)a3 withViewModel:(id)a4;
- (id)localizedTitleForUseCase:(unint64_t)a3;
- (int64_t)menuElementState;
- (void)performUserInteractionTask;
@end

@implementation PXPhotosGridTogglePortraitFilterActionPerformer

+ (BOOL)canPerformActionType:(id)a3 withViewModel:(id)a4
{
  v6 = a4;
  v9.receiver = a1;
  v9.super_class = &OBJC_METACLASS___PXPhotosGridTogglePortraitFilterActionPerformer;
  if (objc_msgSendSuper2(&v9, sel_canPerformActionType_withViewModel_, a3, v6))
  {
    v7 = ![PXPhotosGridToggleFilterActionPerformer isContentFilterHidden:15 viewModel:v6];
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
  [v3 setPortrait:{objc_msgSend(v3, "portrait") ^ 1}];
  [(PXPhotosGridToggleFilterActionPerformer *)self updateToContentFilterStateAndFinishTask:v3];
}

- (id)localizedTitleForUseCase:(unint64_t)a3
{
  if (a3 == 1)
  {
    v5 = [(PXPhotosGridActionPerformer *)self viewModel];
    v6 = [v5 contentFilterState];

    if (v6)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v10 = [MEMORY[0x1E696AAA8] currentHandler];
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        v13 = [v6 px_descriptionForAssertionMessage];
        [v10 handleFailureInMethod:a2 object:self file:@"PXPhotosGridTogglePortraitFilterActionPerformer.m" lineNumber:39 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"self.viewModel.contentFilterState", v12, v13}];
      }
    }

    if ([v6 portrait])
    {
      v7 = @"DISABLE_PORTRAIT_FILTER_SHORTCUT";
    }

    else
    {
      v7 = @"ENABLE_PORTRAIT_FILTER_SHORTCUT";
    }

    v8 = PXLocalizedStringFromTable(v7, @"PhotosUICore");
  }

  else
  {
    v8 = PXContentFilterTitleForItemTag(15);
  }

  return v8;
}

- (int64_t)menuElementState
{
  v2 = [(PXPhotosGridActionPerformer *)self currentContentFilterState];
  v3 = [v2 isContentFilterActive:15];

  return v3;
}

@end