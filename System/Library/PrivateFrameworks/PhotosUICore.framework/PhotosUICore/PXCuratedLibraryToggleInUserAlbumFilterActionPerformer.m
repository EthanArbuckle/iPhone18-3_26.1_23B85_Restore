@interface PXCuratedLibraryToggleInUserAlbumFilterActionPerformer
- (PXCuratedLibraryToggleInUserAlbumFilterActionPerformer)initWithViewModel:(id)a3;
- (id)localizedTitleForUseCase:(unint64_t)a3;
- (int64_t)menuElementState;
- (void)performUserInteractionTask;
@end

@implementation PXCuratedLibraryToggleInUserAlbumFilterActionPerformer

- (void)performUserInteractionTask
{
  v3 = [(PXCuratedLibraryToggleFilterActionPerformer *)self currentContentFilterState];
  [v3 setInUserAlbum:{objc_msgSend(v3, "inUserAlbum") ^ 1}];
  [(PXCuratedLibraryToggleFilterActionPerformer *)self updateToContentFilterStateAndFinishTask:v3];
}

- (id)localizedTitleForUseCase:(unint64_t)a3
{
  if (a3 == 1)
  {
    v5 = [(PXCuratedLibraryActionPerformer *)self viewModel];
    v6 = [v5 allPhotosContentFilterState];

    if (v6)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v10 = [MEMORY[0x1E696AAA8] currentHandler];
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        v13 = [v6 px_descriptionForAssertionMessage];
        [v10 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryToggleInUserAlbumFilterActionPerformer.m" lineNumber:44 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"self.viewModel.allPhotosContentFilterState", v12, v13}];
      }
    }

    if ([v6 inUserAlbum])
    {
      v7 = @"DISABLE_INALBUM_FILTER_SHORTCUT";
    }

    else
    {
      v7 = @"ENABLE_INALBUM_FILTER_SHORTCUT";
    }

    v8 = PXLocalizedStringFromTable(v7, @"PhotosUICore");
  }

  else
  {
    v8 = PXContentFilterTitleForItemTag(12);
  }

  return v8;
}

- (int64_t)menuElementState
{
  v2 = [(PXCuratedLibraryToggleFilterActionPerformer *)self currentContentFilterState];
  v3 = [v2 isContentFilterActive:12];

  return v3;
}

- (PXCuratedLibraryToggleInUserAlbumFilterActionPerformer)initWithViewModel:(id)a3
{
  v4.receiver = self;
  v4.super_class = PXCuratedLibraryToggleInUserAlbumFilterActionPerformer;
  return [(PXCuratedLibraryActionPerformer *)&v4 initWithActionType:@"PXCuratedLibraryActionToggleInUserAlbumFilter" viewModel:a3];
}

@end