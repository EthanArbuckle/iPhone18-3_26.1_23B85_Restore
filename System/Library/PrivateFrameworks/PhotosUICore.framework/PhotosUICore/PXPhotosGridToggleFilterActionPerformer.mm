@interface PXPhotosGridToggleFilterActionPerformer
+ (BOOL)isContentFilterHidden:(int64_t)a3 viewModel:(id)a4;
+ (BOOL)isLibaryFilterHidden:(int64_t)a3 viewModel:(id)a4;
- (BOOL)updateToContentFilterStateAndFinishTask:(id)a3;
- (BOOL)updateToLibraryFilterStateAndFinishTask:(id)a3;
- (id)menuElement;
@end

@implementation PXPhotosGridToggleFilterActionPerformer

- (BOOL)updateToContentFilterStateAndFinishTask:(id)a3
{
  v4 = a3;
  v5 = [(PXActionPerformer *)self delegate];
  v6 = objc_opt_respondsToSelector();
  if (v6)
  {
    [v5 photosGridActionPerformer:self contentFilterStateChanged:v4];
  }

  [(PXPhotosGridToggleFilterActionPerformer *)self finishedUserInteractionTask];

  return v6 & 1;
}

- (BOOL)updateToLibraryFilterStateAndFinishTask:(id)a3
{
  v4 = a3;
  v5 = [(PXActionPerformer *)self delegate];
  v6 = objc_opt_respondsToSelector();
  if (v6)
  {
    [v5 photosGridActionPerformer:self libraryFilterStateChanged:v4];
  }

  [(PXPhotosGridToggleFilterActionPerformer *)self finishedUserInteractionTask];

  return v6 & 1;
}

- (id)menuElement
{
  v11.receiver = self;
  v11.super_class = PXPhotosGridToggleFilterActionPerformer;
  v4 = [(PXActionPerformer *)&v11 menuElement];
  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = [v4 px_descriptionForAssertionMessage];
      [v7 handleFailureInMethod:a2 object:self file:@"PXPhotosGridToggleFilterActionPerformer.m" lineNumber:45 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"[super menuElement]", v9, v10}];
    }
  }

  v5 = [(PXActionPerformer *)self localizedTitleForUseCase:0];
  [v4 setTitle:v5];

  return v4;
}

+ (BOOL)isContentFilterHidden:(int64_t)a3 viewModel:(id)a4
{
  v5 = a4;
  v6 = [v5 dataSourceManager];
  v7 = [v6 dataSource];
  v8 = [v7 containerCollection];

  v9 = [v5 libraryFilterState];

  v10 = PXContentFilterHiddenTypesForAssetCollection(v8);

  v11 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  LOBYTE(v9) = [v10 containsObject:v11];

  return v9;
}

+ (BOOL)isLibaryFilterHidden:(int64_t)a3 viewModel:(id)a4
{
  v5 = a4;
  if ([v5 allowsSwitchLibraryAction] && (objc_msgSend(v5, "sharedLibraryStatusProvider"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "hasSharedLibraryOrPreview"), v6, v7))
  {
    v8 = [v5 dataSourceManager];
    v9 = [v8 dataSource];
    v10 = [v9 containerCollection];

    v11 = [v5 libraryFilterState];
    v12 = PXLibraryFilterHiddenTypesForAssetCollection(v10);

    v13 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    v14 = [v12 containsObject:v13];
  }

  else
  {
    v14 = 1;
  }

  return v14;
}

@end