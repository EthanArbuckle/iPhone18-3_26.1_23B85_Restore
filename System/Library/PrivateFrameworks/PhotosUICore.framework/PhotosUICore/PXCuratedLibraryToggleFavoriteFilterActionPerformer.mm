@interface PXCuratedLibraryToggleFavoriteFilterActionPerformer
- (PXCuratedLibraryToggleFavoriteFilterActionPerformer)initWithViewModel:(id)model;
- (id)localizedTitleForUseCase:(unint64_t)case;
- (int64_t)menuActionState;
- (void)performUserInteractionTask;
@end

@implementation PXCuratedLibraryToggleFavoriteFilterActionPerformer

- (void)performUserInteractionTask
{
  currentContentFilterState = [(PXCuratedLibraryToggleFilterActionPerformer *)self currentContentFilterState];
  [currentContentFilterState setFavorite:{objc_msgSend(currentContentFilterState, "favorite") ^ 1}];
  [(PXCuratedLibraryToggleFilterActionPerformer *)self updateToContentFilterStateAndFinishTask:currentContentFilterState];
}

- (int64_t)menuActionState
{
  currentContentFilterState = [(PXCuratedLibraryToggleFilterActionPerformer *)self currentContentFilterState];
  v3 = [currentContentFilterState isContentFilterActive:11];

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
        [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryToggleFavoriteFilterActionPerformer.m" lineNumber:39 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"self.viewModel.allPhotosContentFilterState", v12, px_descriptionForAssertionMessage}];
      }
    }

    if ([allPhotosContentFilterState favorite])
    {
      v7 = @"DISABLE_FAVORITES_FILTER_SHORTCUT";
    }

    else
    {
      v7 = @"ENABLE_FAVORITES_FILTER_SHORTCUT";
    }

    v8 = PXLocalizedStringFromTable(v7, @"PhotosUICore");
  }

  else
  {
    v8 = PXContentFilterTitleForItemTag(11);
  }

  return v8;
}

- (PXCuratedLibraryToggleFavoriteFilterActionPerformer)initWithViewModel:(id)model
{
  v4.receiver = self;
  v4.super_class = PXCuratedLibraryToggleFavoriteFilterActionPerformer;
  return [(PXCuratedLibraryActionPerformer *)&v4 initWithActionType:@"PXCuratedLibraryActionToggleFavoriteFilter" viewModel:model];
}

@end