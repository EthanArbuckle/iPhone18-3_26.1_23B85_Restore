@interface PXDemoTilingControllerWidget
- (BOOL)hasContentForCurrentInput;
- (PXDemoTilingControllerWidget)init;
- (PXTilingController)contentTilingController;
- (PXWidgetDelegate)widgetDelegate;
- (id)_demoTilingLayoutForDataSource:(id)source;
- (id)tilingController:(id)controller tileIdentifierConverterForChange:(id)change;
- (void)_loadTilingController;
- (void)_setLocalizedSubtitle:(id)subtitle;
- (void)checkInTile:(void *)tile withIdentifier:(PXTileIdentifier *)identifier;
- (void)checkOutTileForIdentifier:(PXTileIdentifier *)identifier layout:(id)layout;
- (void)userDidSelectSubtitle;
@end

@implementation PXDemoTilingControllerWidget

- (PXWidgetDelegate)widgetDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_widgetDelegate);

  return WeakRetained;
}

- (id)tilingController:(id)controller tileIdentifierConverterForChange:(id)change
{
  v15[2] = *MEMORY[0x1E69E9840];
  changeCopy = change;
  controllerCopy = controller;
  _scene = [(PXDemoTilingControllerWidget *)self _scene];
  v9 = [_scene tilingController:controllerCopy tileIdentifierConverterForChange:changeCopy];

  v10 = objc_alloc_init(PXTileIdentifierIdentityConverter);
  v11 = [PXComposedTileIdentifierConverter alloc];
  v15[0] = v9;
  v15[1] = v10;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  v13 = [(PXComposedTileIdentifierConverter *)v11 initWithTileIdentifierConverters:v12];

  return v13;
}

- (void)checkInTile:(void *)tile withIdentifier:(PXTileIdentifier *)identifier
{
  if (*&identifier->length == __PAIR128__(6432423, 5))
  {
    _scene = [(PXDemoTilingControllerWidget *)self _scene];
    v9 = *&identifier->index[5];
    v26 = *&identifier->index[3];
    v27 = v9;
    v28 = *&identifier->index[7];
    v29 = identifier->index[9];
    v10 = *&identifier->index[1];
    v24 = *&identifier->length;
    v25 = v10;
    [_scene checkInTile:tile withIdentifier:&v24];
  }

  else
  {
    +[PXDemoTilingControllerWidgetLayout backgroundTileIdentifier];
    v11 = *&identifier->index[5];
    v22[2] = *&identifier->index[3];
    v22[3] = v11;
    v22[4] = *&identifier->index[7];
    v23 = identifier->index[9];
    v12 = *&identifier->index[1];
    v22[0] = *&identifier->length;
    v22[1] = v12;
    v13 = *&v22[0] == v24;
    if (*&v22[0] && *&v22[0] == v24)
    {
      v14 = 1;
      do
      {
        v15 = *(v22 + v14);
        v16 = *(&v24 + v14);
        v13 = v15 == v16;
        if (v14 >= *&v22[0])
        {
          break;
        }

        ++v14;
      }

      while (v15 == v16);
    }

    if (v13)
    {
      tileCopy = tile;
      _tilesInUse = [(PXDemoTilingControllerWidget *)self _tilesInUse];
      [_tilesInUse removeObject:tileCopy];

      _scene = [tileCopy view];

      [_scene removeFromSuperview];
    }

    else
    {
      _scene = [MEMORY[0x1E696AAA8] currentHandler];
      v19 = *&identifier->index[5];
      v26 = *&identifier->index[3];
      v27 = v19;
      v28 = *&identifier->index[7];
      v29 = identifier->index[9];
      v20 = *&identifier->index[1];
      v24 = *&identifier->length;
      v25 = v20;
      v21 = PXTileIdentifierDescription(&v24);
      [_scene handleFailureInMethod:a2 object:self file:@"PXDemoTilingControllerWidget.m" lineNumber:159 description:{@"unknown identifier %@", v21}];
    }
  }
}

- (void)checkOutTileForIdentifier:(PXTileIdentifier *)identifier layout:(id)layout
{
  layoutCopy = layout;
  if (*&identifier->length == __PAIR128__(6432423, 5))
  {
    _scene = [(PXDemoTilingControllerWidget *)self _scene];
    v9 = *&identifier->index[5];
    v30 = *&identifier->index[3];
    v31 = v9;
    v32 = *&identifier->index[7];
    v33 = identifier->index[9];
    v10 = *&identifier->index[1];
    v28 = *&identifier->length;
    v29 = v10;
    v11 = [(PXDemoTilingControllerWidgetTile *)_scene checkOutTileForIdentifier:&v28 layout:layoutCopy];
  }

  else
  {
    +[PXDemoTilingControllerWidgetLayout backgroundTileIdentifier];
    v12 = *&identifier->index[5];
    v26[2] = *&identifier->index[3];
    v26[3] = v12;
    v26[4] = *&identifier->index[7];
    v27 = identifier->index[9];
    v13 = *&identifier->index[1];
    v26[0] = *&identifier->length;
    v26[1] = v13;
    v14 = *&v26[0] == v28;
    if (*&v26[0] && *&v26[0] == v28)
    {
      v15 = 1;
      do
      {
        v16 = *(v26 + v15);
        v17 = *(&v28 + v15);
        v14 = v16 == v17;
        if (v15 >= *&v26[0])
        {
          break;
        }

        ++v15;
      }

      while (v16 == v17);
    }

    if (v14)
    {
      _scene = objc_alloc_init(PXDemoTilingControllerWidgetTile);
      _tilingController = [(PXDemoTilingControllerWidget *)self _tilingController];
      scrollController = [_tilingController scrollController];

      view = [(PXDemoTilingControllerWidgetTile *)_scene view];
      [scrollController addSubview:view];

      _tilesInUse = [(PXDemoTilingControllerWidget *)self _tilesInUse];
      [_tilesInUse addObject:_scene];

      v11 = _scene;
    }

    else
    {
      _scene = [MEMORY[0x1E696AAA8] currentHandler];
      v22 = *&identifier->index[5];
      v30 = *&identifier->index[3];
      v31 = v22;
      v32 = *&identifier->index[7];
      v33 = identifier->index[9];
      v23 = *&identifier->index[1];
      v28 = *&identifier->length;
      v29 = v23;
      v24 = PXTileIdentifierDescription(&v28);
      [(PXDemoTilingControllerWidgetTile *)_scene handleFailureInMethod:a2 object:self file:@"PXDemoTilingControllerWidget.m" lineNumber:144 description:@"unknown identifier %@", v24];

      v11 = 0;
    }
  }

  return v11;
}

- (void)userDidSelectSubtitle
{
  localizedSubtitle = [(PXDemoTilingControllerWidget *)self localizedSubtitle];
  v4 = [localizedSubtitle mutableCopy];

  [v4 replaceOccurrencesOfString:@"i" withString:@"_#_" options:0 range:{0, objc_msgSend(v4, "length")}];
  [v4 replaceOccurrencesOfString:@"o" withString:@"i" options:0 range:{0, objc_msgSend(v4, "length")}];
  [v4 replaceOccurrencesOfString:@"_#_" withString:@"o" options:0 range:{0, objc_msgSend(v4, "length")}];
  [(PXDemoTilingControllerWidget *)self _setLocalizedSubtitle:v4];
}

- (PXTilingController)contentTilingController
{
  [(PXDemoTilingControllerWidget *)self _loadTilingController];

  return [(PXDemoTilingControllerWidget *)self _tilingController];
}

- (BOOL)hasContentForCurrentInput
{
  v2 = +[PXPhotosDetailsSettings sharedInstance];
  showDemoTilingViewWidget = [v2 showDemoTilingViewWidget];

  return showDemoTilingViewWidget;
}

- (void)_setLocalizedSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  v6 = subtitleCopy;
  if (self->_localizedSubtitle != subtitleCopy)
  {
    v9 = subtitleCopy;
    v7 = [(NSString *)subtitleCopy isEqual:?];
    v6 = v9;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_localizedSubtitle, subtitle);
      widgetDelegate = [(PXDemoTilingControllerWidget *)self widgetDelegate];
      [widgetDelegate widgetLocalizedSubtitleDidChange:self];

      v6 = v9;
    }
  }
}

- (id)_demoTilingLayoutForDataSource:(id)source
{
  sourceCopy = source;
  v4 = [(PXAssetsTilingLayout *)[PXDemoTilingControllerWidgetLayout alloc] initWithDataSource:sourceCopy];

  return v4;
}

- (void)_loadTilingController
{
  if (!self->__tilingController)
  {
    context = [(PXDemoTilingControllerWidget *)self context];
    assetCollections = [context assetCollections];

    v5 = [[PXPhotosDataSourceConfiguration alloc] initWithCollectionListFetchResult:assetCollections options:0];
    v6 = [[PXPhotosDataSource alloc] initWithPhotosDataSourceConfiguration:v5];
    v7 = [[PXPhotoKitAssetsDataSourceManager alloc] initWithPhotosDataSource:v6];
    dataSourceManager = self->__dataSourceManager;
    self->__dataSourceManager = &v7->super;

    v9 = objc_alloc_init(PXPhotoKitUIMediaProvider);
    mediaProvider = self->__mediaProvider;
    self->__mediaProvider = v9;

    v11 = objc_alloc_init(PXBasicUIViewTileAnimator);
    tileAnimator = self->__tileAnimator;
    self->__tileAnimator = v11;

    v13 = [MEMORY[0x1E695DFA8] set];
    tilesInUse = self->__tilesInUse;
    self->__tilesInUse = v13;

    dataSource = [(PXAssetsDataSourceManager *)self->__dataSourceManager dataSource];
    v16 = [(PXDemoTilingControllerWidget *)self _demoTilingLayoutForDataSource:dataSource];

    v17 = [[PXTilingController alloc] initWithLayout:v16];
    tilingController = self->__tilingController;
    self->__tilingController = v17;

    [(PXTilingController *)self->__tilingController setTileAnimator:self->__tileAnimator];
    v19 = [(PXAssetsScene *)[PXUIAssetsScene alloc] initWithTilingController:self->__tilingController mediaProvider:self->__mediaProvider dataSourceManager:self->__dataSourceManager delegate:self];
    scene = self->__scene;
    self->__scene = v19;

    [(PXTilingController *)self->__tilingController setTileSource:self];
    [(PXTilingController *)self->__tilingController setTransitionDelegate:self];
    [(PXTilingController *)self->__tilingController setScrollDelegate:self->__scene];
  }
}

- (PXDemoTilingControllerWidget)init
{
  v6.receiver = self;
  v6.super_class = PXDemoTilingControllerWidget;
  v2 = [(PXDemoTilingControllerWidget *)&v6 init];
  v3 = v2;
  if (v2)
  {
    localizedSubtitle = v2->_localizedSubtitle;
    v2->_localizedSubtitle = @"3 Infinite Loop";
  }

  return v3;
}

@end