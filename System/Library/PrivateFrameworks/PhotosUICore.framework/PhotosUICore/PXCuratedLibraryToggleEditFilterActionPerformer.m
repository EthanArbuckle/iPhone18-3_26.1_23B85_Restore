@interface PXCuratedLibraryToggleEditFilterActionPerformer
- (PXCuratedLibraryToggleEditFilterActionPerformer)initWithViewModel:(id)a3;
- (id)localizedTitleForUseCase:(unint64_t)a3;
- (int64_t)menuActionState;
- (void)performUserInteractionTask;
@end

@implementation PXCuratedLibraryToggleEditFilterActionPerformer

- (void)performUserInteractionTask
{
  v3 = [(PXCuratedLibraryToggleFilterActionPerformer *)self currentContentFilterState];
  [v3 setEdited:{objc_msgSend(v3, "edited") ^ 1}];
  [(PXCuratedLibraryToggleFilterActionPerformer *)self updateToContentFilterStateAndFinishTask:v3];
}

- (int64_t)menuActionState
{
  v2 = [(PXCuratedLibraryToggleFilterActionPerformer *)self currentContentFilterState];
  v3 = [v2 isContentFilterActive:10];

  return v3;
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
        [v10 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryToggleEditFilterActionPerformer.m" lineNumber:39 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"self.viewModel.allPhotosContentFilterState", v12, v13}];
      }
    }

    if ([v6 edited])
    {
      v7 = @"DISABLE_EDITS_FILTER_SHORTCUT";
    }

    else
    {
      v7 = @"ENABLE_EDITS_FILTER_SHORTCUT";
    }

    v8 = PXLocalizedStringFromTable(v7, @"PhotosUICore");
  }

  else
  {
    v8 = PXContentFilterTitleForItemTag(10);
  }

  return v8;
}

- (PXCuratedLibraryToggleEditFilterActionPerformer)initWithViewModel:(id)a3
{
  v4.receiver = self;
  v4.super_class = PXCuratedLibraryToggleEditFilterActionPerformer;
  return [(PXCuratedLibraryActionPerformer *)&v4 initWithActionType:@"PXCuratedLibraryActionToggleEditFilter" viewModel:a3];
}

@end