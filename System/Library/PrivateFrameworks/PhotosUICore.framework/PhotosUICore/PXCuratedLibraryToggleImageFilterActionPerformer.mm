@interface PXCuratedLibraryToggleImageFilterActionPerformer
- (PXCuratedLibraryToggleImageFilterActionPerformer)initWithViewModel:(id)model;
- (id)localizedTitleForUseCase:(unint64_t)case;
- (int64_t)menuActionState;
- (void)performUserInteractionTask;
@end

@implementation PXCuratedLibraryToggleImageFilterActionPerformer

- (void)performUserInteractionTask
{
  currentContentFilterState = [(PXCuratedLibraryToggleFilterActionPerformer *)self currentContentFilterState];
  [currentContentFilterState setImage:{objc_msgSend(currentContentFilterState, "image") ^ 1}];
  [(PXCuratedLibraryToggleFilterActionPerformer *)self updateToContentFilterStateAndFinishTask:currentContentFilterState];
}

- (int64_t)menuActionState
{
  currentContentFilterState = [(PXCuratedLibraryToggleFilterActionPerformer *)self currentContentFilterState];
  v3 = [currentContentFilterState isContentFilterActive:8];

  return v3;
}

- (id)localizedTitleForUseCase:(unint64_t)case
{
  if (case == 1)
  {
    viewModel = [(PXCuratedLibraryActionPerformer *)self viewModel];
    allPhotosContentFilterState = [viewModel allPhotosContentFilterState];

    if (allPhotosContentFilterState)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        px_descriptionForAssertionMessage = [allPhotosContentFilterState px_descriptionForAssertionMessage];
        [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryToggleImageFilterActionPerformer.m" lineNumber:39 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"self.viewModel.allPhotosContentFilterState", v12, px_descriptionForAssertionMessage}];
      }
    }

    if ([allPhotosContentFilterState image])
    {
      v7 = @"DISABLE_IMAGES_FILTER_SHORTCUT";
    }

    else
    {
      v7 = @"ENABLE_IMAGES_FILTER_SHORTCUT";
    }

    v8 = PXLocalizedStringFromTable(v7, @"PhotosUICore");
  }

  else
  {
    v8 = PXContentFilterTitleForItemTag(8);
  }

  return v8;
}

- (PXCuratedLibraryToggleImageFilterActionPerformer)initWithViewModel:(id)model
{
  v4.receiver = self;
  v4.super_class = PXCuratedLibraryToggleImageFilterActionPerformer;
  return [(PXCuratedLibraryActionPerformer *)&v4 initWithActionType:@"PXCuratedLibraryActionToggleImageFilter" viewModel:model];
}

@end