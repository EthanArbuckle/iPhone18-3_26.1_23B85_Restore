@interface PUDefaultFrameChangeTileTransitionCoordinator
- (BOOL)_isLayoutInfoVisible:(id)visible;
- (BOOL)useDoubleSidedTransitionForUpdatedTileController:(id)controller toLayoutInfo:(id)info;
- (PUTilingView)tilingView;
- (id)_layoutInfoForDisappearedInvisibleTile:(id)tile;
- (id)finalLayoutInfoForDisappearingTileController:(id)controller fromLayoutInfo:(id)info;
- (id)initialLayoutInfoForAppearingTileController:(id)controller toLayoutInfo:(id)info;
- (void)prepare;
@end

@implementation PUDefaultFrameChangeTileTransitionCoordinator

- (PUTilingView)tilingView
{
  WeakRetained = objc_loadWeakRetained(&self->_tilingView);

  return WeakRetained;
}

- (BOOL)_isLayoutInfoVisible:(id)visible
{
  visibleCopy = visible;
  tilingView = [(PUDefaultFrameChangeTileTransitionCoordinator *)self tilingView];
  layout = [tilingView layout];

  [layout visibleRect];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  coordinateSystem = [layout coordinateSystem];
  coordinateSystem2 = [visibleCopy coordinateSystem];
  v17 = PUConvertPointFromCoordinateSystemToCoordinateSystem(coordinateSystem, coordinateSystem2, v8, v10);
  v19 = v18;

  [visibleCopy frame];
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
  LOBYTE(visibleCopy) = CGRectIntersectsRect(v29, v30);

  return visibleCopy;
}

- (void)prepare
{
  v3 = [MEMORY[0x1E695DFA8] set];
  tilingView = [(PUDefaultFrameChangeTileTransitionCoordinator *)self tilingView];
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = __56__PUDefaultFrameChangeTileTransitionCoordinator_prepare__block_invoke;
  v9 = &unk_1E7B7A160;
  selfCopy = self;
  v11 = v3;
  v5 = v3;
  [tilingView enumerateAllTileControllersUsingBlock:&v6];

  [(PUDefaultFrameChangeTileTransitionCoordinator *)self _setInvisibleTileControllers:v5, v6, v7, v8, v9, selfCopy];
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

- (id)_layoutInfoForDisappearedInvisibleTile:(id)tile
{
  tileCopy = tile;
  tilingView = [(PUDefaultFrameChangeTileTransitionCoordinator *)self tilingView];
  layout = [tilingView layout];

  dataSourceIdentifier = [tileCopy dataSourceIdentifier];
  dataSource = [layout dataSource];
  identifier = [dataSource identifier];
  v10 = [dataSourceIdentifier isEqual:identifier];

  v11 = tileCopy;
  if (v10)
  {
    [layout visibleRect];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    coordinateSystem = [layout coordinateSystem];
    coordinateSystem2 = [tileCopy coordinateSystem];
    v22 = PUConvertPointFromCoordinateSystemToCoordinateSystem(coordinateSystem, coordinateSystem2, v13, v15);
    v24 = v23;

    [tileCopy center];
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
    [tileCopy size];
    v37 = v36;
    v39 = v38;
    if (tileCopy)
    {
      [tileCopy transform];
    }

    else
    {
      memset(v41, 0, sizeof(v41));
    }

    v11 = [tileCopy layoutInfoWithCenter:v41 size:v32 transform:{v35, v37, v39}];
  }

  return v11;
}

- (id)finalLayoutInfoForDisappearingTileController:(id)controller fromLayoutInfo:(id)info
{
  infoCopy = info;
  controllerCopy = controller;
  _invisibleTileControllers = [(PUDefaultFrameChangeTileTransitionCoordinator *)self _invisibleTileControllers];
  v9 = [_invisibleTileControllers containsObject:controllerCopy];

  v10 = infoCopy;
  if (v9)
  {
    v10 = [(PUDefaultFrameChangeTileTransitionCoordinator *)self _layoutInfoForDisappearedInvisibleTile:infoCopy];
  }

  return v10;
}

- (id)initialLayoutInfoForAppearingTileController:(id)controller toLayoutInfo:(id)info
{
  infoCopy = info;
  v6 = [(PUDefaultTileTransitionCoordinator *)self _layoutInfoWithDefaultDisappearance:infoCopy];
  if (![(PUDefaultFrameChangeTileTransitionCoordinator *)self _isLayoutInfoVisible:infoCopy])
  {
    v7 = [(PUDefaultFrameChangeTileTransitionCoordinator *)self _layoutInfoForDisappearedInvisibleTile:infoCopy];

    v6 = v7;
  }

  return v6;
}

- (BOOL)useDoubleSidedTransitionForUpdatedTileController:(id)controller toLayoutInfo:(id)info
{
  infoCopy = info;
  if ([(PUDefaultFrameChangeTileTransitionCoordinator *)self shouldCrossFadeTiles])
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    v6 = ![(PUDefaultFrameChangeTileTransitionCoordinator *)self _isLayoutInfoVisible:infoCopy];
  }

  return v6;
}

@end