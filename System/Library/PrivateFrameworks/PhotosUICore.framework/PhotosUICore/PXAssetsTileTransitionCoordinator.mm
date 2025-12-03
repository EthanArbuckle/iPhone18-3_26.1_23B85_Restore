@interface PXAssetsTileTransitionCoordinator
+ (id)transitionCoordinatorForChange:(id)change changeHistory:(id)history;
- (BOOL)getFinalGeometry:(PXTileGeometry *)geometry finalUserData:(id *)data forDisappearingTileWithIdentifier:(PXTileIdentifier *)identifier fromGeometry:(PXTileGeometry *)fromGeometry fromUserData:(id)userData;
- (BOOL)getInitialGeometry:(PXTileGeometry *)geometry initialUserData:(id *)data forAppearingTileWithIdentifier:(PXTileIdentifier *)identifier toGeometry:(PXTileGeometry *)toGeometry toUserData:(id)userData;
- (PXAssetsTileTransitionCoordinator)initWithTilingChange:(id)change changeHistory:(id)history;
- (id)optionsForAnimatingTileWithIdentifier:(PXTileIdentifier *)identifier animationType:(int64_t)type fromGeometry:(PXTileGeometry *)geometry fromUserData:(id)data toGeometry:(PXTileGeometry *)toGeometry toUserData:(id)userData;
- (void)disableAnimationsForTileKind:(unint64_t)kind;
- (void)enableAnimationsForTileKind:(unint64_t)kind;
@end

@implementation PXAssetsTileTransitionCoordinator

- (void)enableAnimationsForTileKind:(unint64_t)kind
{
  _kindsWithDisabledAnimation = [(PXAssetsTileTransitionCoordinator *)self _kindsWithDisabledAnimation];
  v6 = [_kindsWithDisabledAnimation mutableCopy];

  [(NSIndexSet *)v6 removeIndex:kind];
  kindsWithDisabledAnimation = self->__kindsWithDisabledAnimation;
  self->__kindsWithDisabledAnimation = v6;
}

- (void)disableAnimationsForTileKind:(unint64_t)kind
{
  _kindsWithDisabledAnimation = [(PXAssetsTileTransitionCoordinator *)self _kindsWithDisabledAnimation];
  v6 = [_kindsWithDisabledAnimation mutableCopy];

  [(NSIndexSet *)v6 addIndex:kind];
  kindsWithDisabledAnimation = self->__kindsWithDisabledAnimation;
  self->__kindsWithDisabledAnimation = v6;
}

- (BOOL)getFinalGeometry:(PXTileGeometry *)geometry finalUserData:(id *)data forDisappearingTileWithIdentifier:(PXTileIdentifier *)identifier fromGeometry:(PXTileGeometry *)fromGeometry fromUserData:(id)userData
{
  fromGeometry->alpha = 0.0;
  origin = fromGeometry->frame.origin;
  size = fromGeometry->frame.size;
  v9 = fromGeometry->size;
  geometry->center = fromGeometry->center;
  geometry->size = v9;
  geometry->frame.origin = origin;
  geometry->frame.size = size;
  v10 = *&fromGeometry->hidden;
  v11 = *&fromGeometry->contentSize.height;
  v12 = *&fromGeometry->contentsRect.size.height;
  *&geometry->contentsRect.origin.y = *&fromGeometry->contentsRect.origin.y;
  *&geometry->contentsRect.size.height = v12;
  *&geometry->hidden = v10;
  *&geometry->contentSize.height = v11;
  v13 = *&fromGeometry->transform.a;
  v14 = *&fromGeometry->transform.c;
  v15 = *&fromGeometry->alpha;
  *&geometry->transform.tx = *&fromGeometry->transform.tx;
  *&geometry->alpha = v15;
  *&geometry->transform.a = v13;
  *&geometry->transform.c = v14;
  *data = userData;
  return 1;
}

- (BOOL)getInitialGeometry:(PXTileGeometry *)geometry initialUserData:(id *)data forAppearingTileWithIdentifier:(PXTileIdentifier *)identifier toGeometry:(PXTileGeometry *)toGeometry toUserData:(id)userData
{
  toGeometry->alpha = 0.0;
  origin = toGeometry->frame.origin;
  size = toGeometry->frame.size;
  v9 = toGeometry->size;
  geometry->center = toGeometry->center;
  geometry->size = v9;
  geometry->frame.origin = origin;
  geometry->frame.size = size;
  v10 = *&toGeometry->hidden;
  v11 = *&toGeometry->contentSize.height;
  v12 = *&toGeometry->contentsRect.size.height;
  *&geometry->contentsRect.origin.y = *&toGeometry->contentsRect.origin.y;
  *&geometry->contentsRect.size.height = v12;
  *&geometry->hidden = v10;
  *&geometry->contentSize.height = v11;
  v13 = *&toGeometry->transform.a;
  v14 = *&toGeometry->transform.c;
  v15 = *&toGeometry->alpha;
  *&geometry->transform.tx = *&toGeometry->transform.tx;
  *&geometry->alpha = v15;
  *&geometry->transform.a = v13;
  *&geometry->transform.c = v14;
  *data = userData;
  return 1;
}

- (id)optionsForAnimatingTileWithIdentifier:(PXTileIdentifier *)identifier animationType:(int64_t)type fromGeometry:(PXTileGeometry *)geometry fromUserData:(id)data toGeometry:(PXTileGeometry *)toGeometry toUserData:(id)userData
{
  dataCopy = data;
  userDataCopy = userData;
  if (identifier->length - 3 <= 2 && identifier->index[1] != 0x7FFFFFFFFFFFFFFFLL)
  {
    _kindsWithDisabledAnimation = [(PXAssetsTileTransitionCoordinator *)self _kindsWithDisabledAnimation];
    if ([_kindsWithDisabledAnimation containsIndex:identifier->index[0]])
    {
      _tilingChange = [(PXAssetsTileTransitionCoordinator *)self _tilingChange];
      fromLayout = [_tilingChange fromLayout];
      _tilingChange2 = [(PXAssetsTileTransitionCoordinator *)self _tilingChange];
      toLayout = [_tilingChange2 toLayout];

      if (fromLayout == toLayout)
      {
        _basicAnimationOptions = 0;
        goto LABEL_8;
      }
    }

    else
    {
    }
  }

  _basicAnimationOptions = [(PXAssetsTileTransitionCoordinator *)self _basicAnimationOptions];
LABEL_8:

  return _basicAnimationOptions;
}

- (PXAssetsTileTransitionCoordinator)initWithTilingChange:(id)change changeHistory:(id)history
{
  v53 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  historyCopy = history;
  v51.receiver = self;
  v51.super_class = PXAssetsTileTransitionCoordinator;
  v41 = [(PXAssetsTileTransitionCoordinator *)&v51 init];
  if (!v41)
  {
    goto LABEL_19;
  }

  objc_storeStrong(&v41->__tilingChange, change);
  objc_storeStrong(&v41->__changeHistory, history);
  fromLayout = [changeCopy fromLayout];
  fromLayout = v41->__fromLayout;
  v41->__fromLayout = fromLayout;

  toLayout = [changeCopy toLayout];
  toLayout = v41->__toLayout;
  v41->__toLayout = toLayout;

  fromLayout2 = [changeCopy fromLayout];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    toLayout2 = [changeCopy toLayout];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      identifier2 = 0x7FFFFFFFFFFFFFFFLL;
      identifier = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_8;
    }

    fromLayout3 = [changeCopy fromLayout];
    dataSource = [fromLayout3 dataSource];
    identifier = [dataSource identifier];

    fromLayout2 = [changeCopy toLayout];
    dataSource2 = [fromLayout2 dataSource];
    identifier2 = [dataSource2 identifier];
  }

  else
  {
    identifier2 = 0x7FFFFFFFFFFFFFFFLL;
    identifier = 0x7FFFFFFFFFFFFFFFLL;
  }

LABEL_8:
  v19 = [historyCopy changeDetailsFromDataSourceIdentifier:identifier toDataSourceIdentifier:identifier2];
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
      sectionChanges = [v25 sectionChanges];
      removedIndexes = [sectionChanges removedIndexes];
      v28 = [removedIndexes count] == 0;

      if (!v28)
      {
        *(v48 + 24) = 1;
      }

      sectionsWithItemChanges = [v25 sectionsWithItemChanges];
      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = __72__PXAssetsTileTransitionCoordinator_initWithTilingChange_changeHistory___block_invoke;
      v42[3] = &unk_1E773BA28;
      v42[4] = v25;
      v42[5] = &v47;
      [sectionsWithItemChanges enumerateIndexesUsingBlock:v42];

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
  indexSet = [MEMORY[0x1E696AD50] indexSet];
  [indexSet addIndex:6332434];
  [indexSet addIndex:6332436];
  objc_storeStrong(&v41->__kindsWithDisabledAnimation, indexSet);
  indexSet2 = [MEMORY[0x1E696AD50] indexSet];
  [indexSet2 addIndex:6332435];
  [indexSet2 addIndex:6332436];
  [indexSet2 addIndex:6332438];
  [indexSet2 addIndex:6332441];
  [indexSet2 addIndex:6332439];
  objc_storeStrong(&v41->__kindsCoveringContentTiles, indexSet2);
  indexSet3 = [MEMORY[0x1E696AD50] indexSet];
  [(NSIndexSet *)indexSet3 addIndex:6332437];
  kindsCenteredOnContentTiles = v41->__kindsCenteredOnContentTiles;
  v41->__kindsCenteredOnContentTiles = indexSet3;

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

+ (id)transitionCoordinatorForChange:(id)change changeHistory:(id)history
{
  changeCopy = change;
  historyCopy = history;
  fromLayout = [changeCopy fromLayout];
  toLayout = [changeCopy toLayout];
  dataSource = [fromLayout dataSource];
  dataSource2 = [toLayout dataSource];
  v11 = [dataSource isEqual:dataSource2];

  if (v11)
  {
    v12 = [[PXAssetsTileTransitionCoordinator alloc] initWithTilingChange:changeCopy changeHistory:historyCopy];

    [changeCopy fromReferenceSize];
    v14 = v13;
    v16 = v15;
    [changeCopy toReferenceSize];
    if (v14 != v18 || v16 != v17)
    {
      v12->super.__shouldCrossfade = 1;
    }
  }

  else
  {
    v12 = [[PXAssetsDataSourceChangeTransitionCoordinator alloc] initWithTilingChange:changeCopy changeHistory:historyCopy];
  }

  return v12;
}

@end