@interface PXAssetsTileTransitionCoordinator
+ (id)transitionCoordinatorForChange:(id)a3 changeHistory:(id)a4;
- (BOOL)getFinalGeometry:(PXTileGeometry *)a3 finalUserData:(id *)a4 forDisappearingTileWithIdentifier:(PXTileIdentifier *)a5 fromGeometry:(PXTileGeometry *)a6 fromUserData:(id)a7;
- (BOOL)getInitialGeometry:(PXTileGeometry *)a3 initialUserData:(id *)a4 forAppearingTileWithIdentifier:(PXTileIdentifier *)a5 toGeometry:(PXTileGeometry *)a6 toUserData:(id)a7;
- (PXAssetsTileTransitionCoordinator)initWithTilingChange:(id)a3 changeHistory:(id)a4;
- (id)optionsForAnimatingTileWithIdentifier:(PXTileIdentifier *)a3 animationType:(int64_t)a4 fromGeometry:(PXTileGeometry *)a5 fromUserData:(id)a6 toGeometry:(PXTileGeometry *)a7 toUserData:(id)a8;
- (void)disableAnimationsForTileKind:(unint64_t)a3;
- (void)enableAnimationsForTileKind:(unint64_t)a3;
@end

@implementation PXAssetsTileTransitionCoordinator

- (void)enableAnimationsForTileKind:(unint64_t)a3
{
  v5 = [(PXAssetsTileTransitionCoordinator *)self _kindsWithDisabledAnimation];
  v6 = [v5 mutableCopy];

  [(NSIndexSet *)v6 removeIndex:a3];
  kindsWithDisabledAnimation = self->__kindsWithDisabledAnimation;
  self->__kindsWithDisabledAnimation = v6;
}

- (void)disableAnimationsForTileKind:(unint64_t)a3
{
  v5 = [(PXAssetsTileTransitionCoordinator *)self _kindsWithDisabledAnimation];
  v6 = [v5 mutableCopy];

  [(NSIndexSet *)v6 addIndex:a3];
  kindsWithDisabledAnimation = self->__kindsWithDisabledAnimation;
  self->__kindsWithDisabledAnimation = v6;
}

- (BOOL)getFinalGeometry:(PXTileGeometry *)a3 finalUserData:(id *)a4 forDisappearingTileWithIdentifier:(PXTileIdentifier *)a5 fromGeometry:(PXTileGeometry *)a6 fromUserData:(id)a7
{
  a6->alpha = 0.0;
  origin = a6->frame.origin;
  size = a6->frame.size;
  v9 = a6->size;
  a3->center = a6->center;
  a3->size = v9;
  a3->frame.origin = origin;
  a3->frame.size = size;
  v10 = *&a6->hidden;
  v11 = *&a6->contentSize.height;
  v12 = *&a6->contentsRect.size.height;
  *&a3->contentsRect.origin.y = *&a6->contentsRect.origin.y;
  *&a3->contentsRect.size.height = v12;
  *&a3->hidden = v10;
  *&a3->contentSize.height = v11;
  v13 = *&a6->transform.a;
  v14 = *&a6->transform.c;
  v15 = *&a6->alpha;
  *&a3->transform.tx = *&a6->transform.tx;
  *&a3->alpha = v15;
  *&a3->transform.a = v13;
  *&a3->transform.c = v14;
  *a4 = a7;
  return 1;
}

- (BOOL)getInitialGeometry:(PXTileGeometry *)a3 initialUserData:(id *)a4 forAppearingTileWithIdentifier:(PXTileIdentifier *)a5 toGeometry:(PXTileGeometry *)a6 toUserData:(id)a7
{
  a6->alpha = 0.0;
  origin = a6->frame.origin;
  size = a6->frame.size;
  v9 = a6->size;
  a3->center = a6->center;
  a3->size = v9;
  a3->frame.origin = origin;
  a3->frame.size = size;
  v10 = *&a6->hidden;
  v11 = *&a6->contentSize.height;
  v12 = *&a6->contentsRect.size.height;
  *&a3->contentsRect.origin.y = *&a6->contentsRect.origin.y;
  *&a3->contentsRect.size.height = v12;
  *&a3->hidden = v10;
  *&a3->contentSize.height = v11;
  v13 = *&a6->transform.a;
  v14 = *&a6->transform.c;
  v15 = *&a6->alpha;
  *&a3->transform.tx = *&a6->transform.tx;
  *&a3->alpha = v15;
  *&a3->transform.a = v13;
  *&a3->transform.c = v14;
  *a4 = a7;
  return 1;
}

- (id)optionsForAnimatingTileWithIdentifier:(PXTileIdentifier *)a3 animationType:(int64_t)a4 fromGeometry:(PXTileGeometry *)a5 fromUserData:(id)a6 toGeometry:(PXTileGeometry *)a7 toUserData:(id)a8
{
  v11 = a6;
  v12 = a8;
  if (a3->length - 3 <= 2 && a3->index[1] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = [(PXAssetsTileTransitionCoordinator *)self _kindsWithDisabledAnimation];
    if ([v13 containsIndex:a3->index[0]])
    {
      v14 = [(PXAssetsTileTransitionCoordinator *)self _tilingChange];
      v15 = [v14 fromLayout];
      v16 = [(PXAssetsTileTransitionCoordinator *)self _tilingChange];
      v17 = [v16 toLayout];

      if (v15 == v17)
      {
        v18 = 0;
        goto LABEL_8;
      }
    }

    else
    {
    }
  }

  v18 = [(PXAssetsTileTransitionCoordinator *)self _basicAnimationOptions];
LABEL_8:

  return v18;
}

- (PXAssetsTileTransitionCoordinator)initWithTilingChange:(id)a3 changeHistory:(id)a4
{
  v53 = *MEMORY[0x1E69E9840];
  v40 = a3;
  v39 = a4;
  v51.receiver = self;
  v51.super_class = PXAssetsTileTransitionCoordinator;
  v41 = [(PXAssetsTileTransitionCoordinator *)&v51 init];
  if (!v41)
  {
    goto LABEL_19;
  }

  objc_storeStrong(&v41->__tilingChange, a3);
  objc_storeStrong(&v41->__changeHistory, a4);
  v7 = [v40 fromLayout];
  fromLayout = v41->__fromLayout;
  v41->__fromLayout = v7;

  v9 = [v40 toLayout];
  toLayout = v41->__toLayout;
  v41->__toLayout = v9;

  v11 = [v40 fromLayout];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [v40 toLayout];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v18 = 0x7FFFFFFFFFFFFFFFLL;
      v16 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_8;
    }

    v14 = [v40 fromLayout];
    v15 = [v14 dataSource];
    v16 = [v15 identifier];

    v11 = [v40 toLayout];
    v17 = [v11 dataSource];
    v18 = [v17 identifier];
  }

  else
  {
    v18 = 0x7FFFFFFFFFFFFFFFLL;
    v16 = 0x7FFFFFFFFFFFFFFFLL;
  }

LABEL_8:
  v19 = [v39 changeDetailsFromDataSourceIdentifier:v16 toDataSourceIdentifier:v18];
  changeDetails = v41->__changeDetails;
  v41->__changeDetails = v19;

  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v50 = 0;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v21 = v41->__changeDetails;
  v22 = [(NSArray *)v21 countByEnumeratingWithState:&v43 objects:v52 count:16];
  if (v22)
  {
    v23 = *v44;
LABEL_10:
    v24 = 0;
    while (1)
    {
      if (*v44 != v23)
      {
        objc_enumerationMutation(v21);
      }

      v25 = *(*(&v43 + 1) + 8 * v24);
      v26 = [v25 sectionChanges];
      v27 = [v26 removedIndexes];
      v28 = [v27 count] == 0;

      if (!v28)
      {
        *(v48 + 24) = 1;
      }

      v29 = [v25 sectionsWithItemChanges];
      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = __72__PXAssetsTileTransitionCoordinator_initWithTilingChange_changeHistory___block_invoke;
      v42[3] = &unk_1E773BA28;
      v42[4] = v25;
      v42[5] = &v47;
      [v29 enumerateIndexesUsingBlock:v42];

      if (v48[3])
      {
        break;
      }

      if (v22 == ++v24)
      {
        v22 = [(NSArray *)v21 countByEnumeratingWithState:&v43 objects:v52 count:16];
        if (v22)
        {
          goto LABEL_10;
        }

        break;
      }
    }
  }

  v41->_treatRemovalsAsDeletes = *(v48 + 24);
  v30 = +[PXAssetsSceneSettings sharedInstance];
  v31 = +[PXBasicTileAnimationOptions defaultAnimationOptions];
  basicAnimationOptions = v41->__basicAnimationOptions;
  v41->__basicAnimationOptions = v31;

  v33 = v41->__basicAnimationOptions;
  [v30 transitionDuration];
  [(PXBasicTileAnimationOptions *)v33 setDuration:?];
  v34 = [MEMORY[0x1E696AD50] indexSet];
  [v34 addIndex:6332434];
  [v34 addIndex:6332436];
  objc_storeStrong(&v41->__kindsWithDisabledAnimation, v34);
  v35 = [MEMORY[0x1E696AD50] indexSet];
  [v35 addIndex:6332435];
  [v35 addIndex:6332436];
  [v35 addIndex:6332438];
  [v35 addIndex:6332441];
  [v35 addIndex:6332439];
  objc_storeStrong(&v41->__kindsCoveringContentTiles, v35);
  v36 = [MEMORY[0x1E696AD50] indexSet];
  [(NSIndexSet *)v36 addIndex:6332437];
  kindsCenteredOnContentTiles = v41->__kindsCenteredOnContentTiles;
  v41->__kindsCenteredOnContentTiles = v36;

  _Block_object_dispose(&v47, 8);
LABEL_19:

  return v41;
}

void __72__PXAssetsTileTransitionCoordinator_initWithTilingChange_changeHistory___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = [*(a1 + 32) itemChangesInSection:a2];
  v6 = [v5 removedIndexes];
  v7 = [v6 count];

  if (v7)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }
}

+ (id)transitionCoordinatorForChange:(id)a3 changeHistory:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 fromLayout];
  v8 = [v5 toLayout];
  v9 = [v7 dataSource];
  v10 = [v8 dataSource];
  v11 = [v9 isEqual:v10];

  if (v11)
  {
    v12 = [[PXAssetsTileTransitionCoordinator alloc] initWithTilingChange:v5 changeHistory:v6];

    [v5 fromReferenceSize];
    v14 = v13;
    v16 = v15;
    [v5 toReferenceSize];
    if (v14 != v18 || v16 != v17)
    {
      v12->super.__shouldCrossfade = 1;
    }
  }

  else
  {
    v12 = [[PXAssetsDataSourceChangeTransitionCoordinator alloc] initWithTilingChange:v5 changeHistory:v6];
  }

  return v12;
}

@end