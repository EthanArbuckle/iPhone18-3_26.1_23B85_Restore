@interface _PXCuratedLibraryNavigateToNextZoomLevelActionPerformer
- (_PXCuratedLibraryNavigateToNextZoomLevelActionPerformer)initWithActionType:(id)a3 viewModel:(id)a4 layout:(id)a5 hitSpriteReference:(id)a6;
- (void)performUserInteractionTask;
@end

@implementation _PXCuratedLibraryNavigateToNextZoomLevelActionPerformer

- (void)performUserInteractionTask
{
  v4 = [(PXCuratedLibraryActionPerformer *)self viewModel];
  v5 = [v4 zoomLevelInDirection:1 fromZoomLevel:{-[PXCuratedLibraryActionPerformer actionZoomLevel](self, "actionZoomLevel")}];

  if (v5)
  {
    v6 = [(_PXCuratedLibraryNavigateToNextZoomLevelActionPerformer *)self layout];
    v7 = [v6 rootLayout];

    if (v7)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v10 = [MEMORY[0x1E696AAA8] currentHandler];
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        v13 = [v7 px_descriptionForAssertionMessage];
        [v10 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryActionManager.m" lineNumber:612 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"self.layout.rootLayout", v12, v13}];
      }
    }

    [v7 clearLastVisibleAreaAnchoringInformation];
    v8 = [(_PXCuratedLibraryNavigateToNextZoomLevelActionPerformer *)self hitSpriteReference];
    [v7 setLastHitSpriteReference:v8];

    v9 = [(PXCuratedLibraryActionPerformer *)self viewModel];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __85___PXCuratedLibraryNavigateToNextZoomLevelActionPerformer_performUserInteractionTask__block_invoke;
    v14[3] = &__block_descriptor_40_e43_v16__0___PXMutablePhotosLibraryViewModel__8l;
    v14[4] = v5;
    [v9 performChanges:v14];

    [v7 invalidateLastVisibleAreaAnchoringInformation];
    [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:1 error:0];
  }

  else
  {

    [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:0 error:0];
  }
}

- (_PXCuratedLibraryNavigateToNextZoomLevelActionPerformer)initWithActionType:(id)a3 viewModel:(id)a4 layout:(id)a5 hitSpriteReference:(id)a6
{
  v11 = a5;
  v12 = a6;
  v16.receiver = self;
  v16.super_class = _PXCuratedLibraryNavigateToNextZoomLevelActionPerformer;
  v13 = [(PXCuratedLibraryActionPerformer *)&v16 initWithActionType:a3 viewModel:a4];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_layout, a5);
    objc_storeStrong(&v14->_hitSpriteReference, a6);
  }

  return v14;
}

@end