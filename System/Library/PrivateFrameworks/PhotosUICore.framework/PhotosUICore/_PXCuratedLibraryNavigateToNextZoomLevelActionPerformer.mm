@interface _PXCuratedLibraryNavigateToNextZoomLevelActionPerformer
- (_PXCuratedLibraryNavigateToNextZoomLevelActionPerformer)initWithActionType:(id)type viewModel:(id)model layout:(id)layout hitSpriteReference:(id)reference;
- (void)performUserInteractionTask;
@end

@implementation _PXCuratedLibraryNavigateToNextZoomLevelActionPerformer

- (void)performUserInteractionTask
{
  viewModel = [(PXCuratedLibraryActionPerformer *)self viewModel];
  v5 = [viewModel zoomLevelInDirection:1 fromZoomLevel:{-[PXCuratedLibraryActionPerformer actionZoomLevel](self, "actionZoomLevel")}];

  if (v5)
  {
    layout = [(_PXCuratedLibraryNavigateToNextZoomLevelActionPerformer *)self layout];
    rootLayout = [layout rootLayout];

    if (rootLayout)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        px_descriptionForAssertionMessage = [rootLayout px_descriptionForAssertionMessage];
        [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryActionManager.m" lineNumber:612 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"self.layout.rootLayout", v12, px_descriptionForAssertionMessage}];
      }
    }

    [rootLayout clearLastVisibleAreaAnchoringInformation];
    hitSpriteReference = [(_PXCuratedLibraryNavigateToNextZoomLevelActionPerformer *)self hitSpriteReference];
    [rootLayout setLastHitSpriteReference:hitSpriteReference];

    viewModel2 = [(PXCuratedLibraryActionPerformer *)self viewModel];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __85___PXCuratedLibraryNavigateToNextZoomLevelActionPerformer_performUserInteractionTask__block_invoke;
    v14[3] = &__block_descriptor_40_e43_v16__0___PXMutablePhotosLibraryViewModel__8l;
    v14[4] = v5;
    [viewModel2 performChanges:v14];

    [rootLayout invalidateLastVisibleAreaAnchoringInformation];
    [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:1 error:0];
  }

  else
  {

    [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:0 error:0];
  }
}

- (_PXCuratedLibraryNavigateToNextZoomLevelActionPerformer)initWithActionType:(id)type viewModel:(id)model layout:(id)layout hitSpriteReference:(id)reference
{
  layoutCopy = layout;
  referenceCopy = reference;
  v16.receiver = self;
  v16.super_class = _PXCuratedLibraryNavigateToNextZoomLevelActionPerformer;
  v13 = [(PXCuratedLibraryActionPerformer *)&v16 initWithActionType:type viewModel:model];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_layout, layout);
    objc_storeStrong(&v14->_hitSpriteReference, reference);
  }

  return v14;
}

@end