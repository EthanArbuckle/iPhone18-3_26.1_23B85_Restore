@interface PXDemoTilingControllerWidget
- (BOOL)hasContentForCurrentInput;
- (PXDemoTilingControllerWidget)init;
- (PXTilingController)contentTilingController;
- (PXWidgetDelegate)widgetDelegate;
- (id)_demoTilingLayoutForDataSource:(id)a3;
- (id)tilingController:(id)a3 tileIdentifierConverterForChange:(id)a4;
- (void)_loadTilingController;
- (void)_setLocalizedSubtitle:(id)a3;
- (void)checkInTile:(void *)a3 withIdentifier:(PXTileIdentifier *)a4;
- (void)checkOutTileForIdentifier:(PXTileIdentifier *)a3 layout:(id)a4;
- (void)userDidSelectSubtitle;
@end

@implementation PXDemoTilingControllerWidget

- (PXWidgetDelegate)widgetDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_widgetDelegate);

  return WeakRetained;
}

- (id)tilingController:(id)a3 tileIdentifierConverterForChange:(id)a4
{
  v15[2] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = [(PXDemoTilingControllerWidget *)self _scene];
  v9 = [v8 tilingController:v7 tileIdentifierConverterForChange:v6];

  v10 = objc_alloc_init(PXTileIdentifierIdentityConverter);
  v11 = [PXComposedTileIdentifierConverter alloc];
  v15[0] = v9;
  v15[1] = v10;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  v13 = [(PXComposedTileIdentifierConverter *)v11 initWithTileIdentifierConverters:v12];

  return v13;
}

- (void)checkInTile:(void *)a3 withIdentifier:(PXTileIdentifier *)a4
{
  if (*&a4->length == __PAIR128__(6432423, 5))
  {
    v8 = [(PXDemoTilingControllerWidget *)self _scene];
    v9 = *&a4->index[5];
    v26 = *&a4->index[3];
    v27 = v9;
    v28 = *&a4->index[7];
    v29 = a4->index[9];
    v10 = *&a4->index[1];
    v24 = *&a4->length;
    v25 = v10;
    [v8 checkInTile:a3 withIdentifier:&v24];
  }

  else
  {
    +[PXDemoTilingControllerWidgetLayout backgroundTileIdentifier];
    v11 = *&a4->index[5];
    v22[2] = *&a4->index[3];
    v22[3] = v11;
    v22[4] = *&a4->index[7];
    v23 = a4->index[9];
    v12 = *&a4->index[1];
    v22[0] = *&a4->length;
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
      v17 = a3;
      v18 = [(PXDemoTilingControllerWidget *)self _tilesInUse];
      [v18 removeObject:v17];

      v8 = [v17 view];

      [v8 removeFromSuperview];
    }

    else
    {
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      v19 = *&a4->index[5];
      v26 = *&a4->index[3];
      v27 = v19;
      v28 = *&a4->index[7];
      v29 = a4->index[9];
      v20 = *&a4->index[1];
      v24 = *&a4->length;
      v25 = v20;
      v21 = PXTileIdentifierDescription(&v24);
      [v8 handleFailureInMethod:a2 object:self file:@"PXDemoTilingControllerWidget.m" lineNumber:159 description:{@"unknown identifier %@", v21}];
    }
  }
}

- (void)checkOutTileForIdentifier:(PXTileIdentifier *)a3 layout:(id)a4
{
  v7 = a4;
  if (*&a3->length == __PAIR128__(6432423, 5))
  {
    v8 = [(PXDemoTilingControllerWidget *)self _scene];
    v9 = *&a3->index[5];
    v30 = *&a3->index[3];
    v31 = v9;
    v32 = *&a3->index[7];
    v33 = a3->index[9];
    v10 = *&a3->index[1];
    v28 = *&a3->length;
    v29 = v10;
    v11 = [(PXDemoTilingControllerWidgetTile *)v8 checkOutTileForIdentifier:&v28 layout:v7];
  }

  else
  {
    +[PXDemoTilingControllerWidgetLayout backgroundTileIdentifier];
    v12 = *&a3->index[5];
    v26[2] = *&a3->index[3];
    v26[3] = v12;
    v26[4] = *&a3->index[7];
    v27 = a3->index[9];
    v13 = *&a3->index[1];
    v26[0] = *&a3->length;
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
      v8 = objc_alloc_init(PXDemoTilingControllerWidgetTile);
      v18 = [(PXDemoTilingControllerWidget *)self _tilingController];
      v19 = [v18 scrollController];

      v20 = [(PXDemoTilingControllerWidgetTile *)v8 view];
      [v19 addSubview:v20];

      v21 = [(PXDemoTilingControllerWidget *)self _tilesInUse];
      [v21 addObject:v8];

      v11 = v8;
    }

    else
    {
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      v22 = *&a3->index[5];
      v30 = *&a3->index[3];
      v31 = v22;
      v32 = *&a3->index[7];
      v33 = a3->index[9];
      v23 = *&a3->index[1];
      v28 = *&a3->length;
      v29 = v23;
      v24 = PXTileIdentifierDescription(&v28);
      [(PXDemoTilingControllerWidgetTile *)v8 handleFailureInMethod:a2 object:self file:@"PXDemoTilingControllerWidget.m" lineNumber:144 description:@"unknown identifier %@", v24];

      v11 = 0;
    }
  }

  return v11;
}

- (void)userDidSelectSubtitle
{
  v3 = [(PXDemoTilingControllerWidget *)self localizedSubtitle];
  v4 = [v3 mutableCopy];

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
  v3 = [v2 showDemoTilingViewWidget];

  return v3;
}

- (void)_setLocalizedSubtitle:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_localizedSubtitle != v5)
  {
    v9 = v5;
    v7 = [(NSString *)v5 isEqual:?];
    v6 = v9;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_localizedSubtitle, a3);
      v8 = [(PXDemoTilingControllerWidget *)self widgetDelegate];
      [v8 widgetLocalizedSubtitleDidChange:self];

      v6 = v9;
    }
  }
}

- (id)_demoTilingLayoutForDataSource:(id)a3
{
  v3 = a3;
  v4 = [(PXAssetsTilingLayout *)[PXDemoTilingControllerWidgetLayout alloc] initWithDataSource:v3];

  return v4;
}

- (void)_loadTilingController
{
  if (!self->__tilingController)
  {
    v4 = [(PXDemoTilingControllerWidget *)self context];
    v21 = [v4 assetCollections];

    v5 = [[PXPhotosDataSourceConfiguration alloc] initWithCollectionListFetchResult:v21 options:0];
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

    v15 = [(PXAssetsDataSourceManager *)self->__dataSourceManager dataSource];
    v16 = [(PXDemoTilingControllerWidget *)self _demoTilingLayoutForDataSource:v15];

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