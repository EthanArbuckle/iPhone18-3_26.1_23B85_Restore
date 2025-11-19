@interface PUDefaultFrameChangeTileTransitionCoordinator
- (BOOL)_isLayoutInfoVisible:(id)a3;
- (BOOL)useDoubleSidedTransitionForUpdatedTileController:(id)a3 toLayoutInfo:(id)a4;
- (PUTilingView)tilingView;
- (id)_layoutInfoForDisappearedInvisibleTile:(id)a3;
- (id)finalLayoutInfoForDisappearingTileController:(id)a3 fromLayoutInfo:(id)a4;
- (id)initialLayoutInfoForAppearingTileController:(id)a3 toLayoutInfo:(id)a4;
- (void)prepare;
@end

@implementation PUDefaultFrameChangeTileTransitionCoordinator

- (PUTilingView)tilingView
{
  WeakRetained = objc_loadWeakRetained(&self->_tilingView);

  return WeakRetained;
}

- (BOOL)_isLayoutInfoVisible:(id)a3
{
  v4 = a3;
  v5 = [(PUDefaultFrameChangeTileTransitionCoordinator *)self tilingView];
  v6 = [v5 layout];

  [v6 visibleRect];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [v6 coordinateSystem];
  v16 = [v4 coordinateSystem];
  v17 = PUConvertPointFromCoordinateSystemToCoordinateSystem(v15, v16, v8, v10);
  v19 = v18;

  [v4 frame];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  v29.origin.x = v21;
  v29.origin.y = v23;
  v29.size.width = v25;
  v29.size.height = v27;
  v30.origin.x = v17;
  v30.origin.y = v19;
  v30.size.width = v12;
  v30.size.height = v14;
  LOBYTE(v4) = CGRectIntersectsRect(v29, v30);

  return v4;
}

- (void)prepare
{
  v3 = [MEMORY[0x1E695DFA8] set];
  v4 = [(PUDefaultFrameChangeTileTransitionCoordinator *)self tilingView];
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = __56__PUDefaultFrameChangeTileTransitionCoordinator_prepare__block_invoke;
  v9 = &unk_1E7B7A160;
  v10 = self;
  v11 = v3;
  v5 = v3;
  [v4 enumerateAllTileControllersUsingBlock:&v6];

  [(PUDefaultFrameChangeTileTransitionCoordinator *)self _setInvisibleTileControllers:v5, v6, v7, v8, v9, v10];
}

void __56__PUDefaultFrameChangeTileTransitionCoordinator_prepare__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [v4 layoutInfo];
  if (v3 && ([*(a1 + 32) _isLayoutInfoVisible:v3] & 1) == 0)
  {
    [*(a1 + 40) addObject:v4];
  }
}

- (id)_layoutInfoForDisappearedInvisibleTile:(id)a3
{
  v4 = a3;
  v5 = [(PUDefaultFrameChangeTileTransitionCoordinator *)self tilingView];
  v6 = [v5 layout];

  v7 = [v4 dataSourceIdentifier];
  v8 = [v6 dataSource];
  v9 = [v8 identifier];
  v10 = [v7 isEqual:v9];

  v11 = v4;
  if (v10)
  {
    [v6 visibleRect];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v20 = [v6 coordinateSystem];
    v21 = [v4 coordinateSystem];
    v22 = PUConvertPointFromCoordinateSystemToCoordinateSystem(v20, v21, v13, v15);
    v24 = v23;

    [v4 center];
    v26 = v25;
    v28 = v27;
    v43.origin.x = v22;
    v43.origin.y = v24;
    v43.size.width = v17;
    v43.size.height = v19;
    v29 = CGRectGetWidth(v43) * 3.0;
    v44.origin.x = v22;
    v44.origin.y = v24;
    v44.size.width = v17;
    v44.size.height = v19;
    v30 = v26 <= CGRectGetMidX(v44);
    v31 = -1.0;
    if (!v30)
    {
      v31 = 1.0;
    }

    v32 = v26 + v29 * v31;
    v45.origin.x = v22;
    v45.origin.y = v24;
    v45.size.width = v17;
    v45.size.height = v19;
    v33 = CGRectGetHeight(v45) * 3.0;
    v46.origin.x = v22;
    v46.origin.y = v24;
    v46.size.width = v17;
    v46.size.height = v19;
    v30 = v28 <= CGRectGetMidY(v46);
    v34 = -1.0;
    if (!v30)
    {
      v34 = 1.0;
    }

    v35 = v28 + v33 * v34;
    [v4 size];
    v37 = v36;
    v39 = v38;
    if (v4)
    {
      [v4 transform];
    }

    else
    {
      memset(v41, 0, sizeof(v41));
    }

    v11 = [v4 layoutInfoWithCenter:v41 size:v32 transform:{v35, v37, v39}];
  }

  return v11;
}

- (id)finalLayoutInfoForDisappearingTileController:(id)a3 fromLayoutInfo:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PUDefaultFrameChangeTileTransitionCoordinator *)self _invisibleTileControllers];
  v9 = [v8 containsObject:v7];

  v10 = v6;
  if (v9)
  {
    v10 = [(PUDefaultFrameChangeTileTransitionCoordinator *)self _layoutInfoForDisappearedInvisibleTile:v6];
  }

  return v10;
}

- (id)initialLayoutInfoForAppearingTileController:(id)a3 toLayoutInfo:(id)a4
{
  v5 = a4;
  v6 = [(PUDefaultTileTransitionCoordinator *)self _layoutInfoWithDefaultDisappearance:v5];
  if (![(PUDefaultFrameChangeTileTransitionCoordinator *)self _isLayoutInfoVisible:v5])
  {
    v7 = [(PUDefaultFrameChangeTileTransitionCoordinator *)self _layoutInfoForDisappearedInvisibleTile:v5];

    v6 = v7;
  }

  return v6;
}

- (BOOL)useDoubleSidedTransitionForUpdatedTileController:(id)a3 toLayoutInfo:(id)a4
{
  v5 = a4;
  if ([(PUDefaultFrameChangeTileTransitionCoordinator *)self shouldCrossFadeTiles])
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    v6 = ![(PUDefaultFrameChangeTileTransitionCoordinator *)self _isLayoutInfoVisible:v5];
  }

  return v6;
}

@end