@interface PXCuratedLibraryToggleNotInUserAlbumFilterActionPerformer
- (PXCuratedLibraryToggleNotInUserAlbumFilterActionPerformer)initWithViewModel:(id)model;
- (id)localizedTitleForUseCase:(unint64_t)case;
- (int64_t)menuElementState;
- (void)performUserInteractionTask;
@end

@implementation PXCuratedLibraryToggleNotInUserAlbumFilterActionPerformer

- (void)performUserInteractionTask
{
  currentContentFilterState = [(PXCuratedLibraryToggleFilterActionPerformer *)self currentContentFilterState];
  [currentContentFilterState setNotInUserAlbum:{objc_msgSend(currentContentFilterState, "notInUserAlbum") ^ 1}];
  [(PXCuratedLibraryToggleFilterActionPerformer *)self updateToContentFilterStateAndFinishTask:currentContentFilterState];
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
        [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryToggleNotInUserAlbumFilterActionPerformer.m" lineNumber:43 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"self.viewModel.allPhotosContentFilterState", v12, px_descriptionForAssertionMessage}];
      }
    }

    if ([allPhotosContentFilterState notInUserAlbum])
    {
      v7 = @"DISABLE_NOT_INALBUM_FILTER_SHORTCUT";
    }

    else
    {
      v7 = @"ENABLE_NOT_INALBUM_FILTER_SHORTCUT";
    }

    v8 = PXLocalizedStringFromTable(v7, @"PhotosUICore");
  }

  else
  {
    v8 = PXContentFilterTitleForItemTag(13);
  }

  return v8;
}

- (int64_t)menuElementState
{
  currentContentFilterState = [(PXCuratedLibraryToggleFilterActionPerformer *)self currentContentFilterState];
  v3 = [currentContentFilterState isContentFilterActive:13];

  return v3;
}

- (PXCuratedLibraryToggleNotInUserAlbumFilterActionPerformer)initWithViewModel:(id)model
{
  v4.receiver = self;
  v4.super_class = PXCuratedLibraryToggleNotInUserAlbumFilterActionPerformer;
  return [(PXCuratedLibraryActionPerformer *)&v4 initWithActionType:@"PXCuratedLibraryActionToggleNotInUserAlbumFilter" viewModel:model];
}

@end