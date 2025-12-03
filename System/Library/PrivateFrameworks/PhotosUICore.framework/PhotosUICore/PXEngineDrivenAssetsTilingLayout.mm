@interface PXEngineDrivenAssetsTilingLayout
- (BOOL)getGeometry:(PXTileGeometry *)geometry group:(unint64_t *)group userData:(id *)data forTileWithIdentifier:(PXTileIdentifier *)identifier;
- (CGRect)_contentsRectForItemAtIndexPath:(PXSimpleIndexPath *)path forAspectRatio:(double)ratio;
- (CGRect)contentBounds;
- (CGSize)playButtonSizeForItemAtIndexPath:(PXSimpleIndexPath *)path contentTileSize:(CGSize)size;
- (PXEngineDrivenAssetsTilingLayout)initWithDataSource:(id)source;
- (PXEngineDrivenAssetsTilingLayout)initWithLayoutEngineSnapshot:(id)snapshot;
- (PXEngineDrivenAssetsTilingLayoutDelegate)delegate;
- (double)_aspectRatioForItemAtIndexPath:(PXSimpleIndexPath *)path;
- (double)_zPositionForItemAtIndexPath:(PXSimpleIndexPath *)path;
- (id)dataSource;
- (void)adjustGeometry:(PXTileGeometry *)geometry forContentTileWithIndexPath:(PXSimpleIndexPath *)path;
- (void)enumerateTilesInRect:(CGRect)rect withOptions:(id)options usingBlock:(id)block;
- (void)setContentMode:(int64_t)mode;
- (void)setDelegate:(id)delegate;
- (void)setLayoutSnapshot:(id)snapshot;
- (void)setReferenceSize:(CGSize)size;
@end

@implementation PXEngineDrivenAssetsTilingLayout

- (PXEngineDrivenAssetsTilingLayoutDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGRect)_contentsRectForItemAtIndexPath:(PXSimpleIndexPath *)path forAspectRatio:(double)ratio
{
  if (self->_delegateFlags.respondsToEngineDrivenLayoutContentsRectForItemAtIndexPathForAspectRatio)
  {
    delegate = [(PXEngineDrivenAssetsTilingLayout *)self delegate];
    v8 = *&path->item;
    v21[0] = *&path->dataSourceIdentifier;
    v21[1] = v8;
    [delegate engineDrivenLayout:self contentsRectForItemAtIndexPath:v21 forAspectRatio:ratio];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
  }

  else
  {
    v10 = *off_1E77221F8;
    v12 = *(off_1E77221F8 + 1);
    v14 = *(off_1E77221F8 + 2);
    v16 = *(off_1E77221F8 + 3);
  }

  v17 = v10;
  v18 = v12;
  v19 = v14;
  v20 = v16;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (double)_zPositionForItemAtIndexPath:(PXSimpleIndexPath *)path
{
  v3 = 0.0;
  if (self->_delegateFlags.respondsToEngineDrivenLayoutZPositionForItemAtIndexPath)
  {
    delegate = [(PXEngineDrivenAssetsTilingLayout *)self delegate];
    v7 = *&path->item;
    v10[0] = *&path->dataSourceIdentifier;
    v10[1] = v7;
    [delegate engineDrivenLayout:self zPositionForItemAtIndexPath:v10];
    v3 = v8;
  }

  return v3;
}

- (double)_aspectRatioForItemAtIndexPath:(PXSimpleIndexPath *)path
{
  v3 = 1.0;
  if (self->_delegateFlags.respondsToEngineDrivenLayoutAspectRatioForItemAtIndexPath)
  {
    delegate = [(PXEngineDrivenAssetsTilingLayout *)self delegate];
    v7 = *&path->item;
    v10[0] = *&path->dataSourceIdentifier;
    v10[1] = v7;
    [delegate engineDrivenLayout:self aspectRatioForItemAtIndexPath:v10];
    v3 = v8;
  }

  return v3;
}

- (CGSize)playButtonSizeForItemAtIndexPath:(PXSimpleIndexPath *)path contentTileSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if (self->_delegateFlags.respondsToEngineDrivenLayoutPlayButtonSizeForItemAtIndexPathForAspectRatio)
  {
    delegate = [(PXEngineDrivenAssetsTilingLayout *)self delegate];
    v9 = *&path->item;
    v20 = *&path->dataSourceIdentifier;
    v21 = v9;
    [delegate engineDrivenLayout:self playButtonSizeForItemAtIndexPath:&v20 contentTileSize:{width, height}];
    v11 = v10;
    v13 = v12;
  }

  else
  {
    v19.receiver = self;
    v19.super_class = PXEngineDrivenAssetsTilingLayout;
    v14 = *&path->item;
    v20 = *&path->dataSourceIdentifier;
    v21 = v14;
    [(PXAssetsTilingLayout *)&v19 playButtonSizeForItemAtIndexPath:&v20 contentTileSize:size.width, height];
    v11 = v15;
    v13 = v16;
  }

  v17 = v11;
  v18 = v13;
  result.height = v18;
  result.width = v17;
  return result;
}

- (id)dataSource
{
  layoutSnapshot = [(PXEngineDrivenAssetsTilingLayout *)self layoutSnapshot];
  dataSourceSnapshot = [layoutSnapshot dataSourceSnapshot];
  v5 = dataSourceSnapshot;
  if (dataSourceSnapshot)
  {
    dataSource = dataSourceSnapshot;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = PXEngineDrivenAssetsTilingLayout;
    dataSource = [(PXAssetsTilingLayout *)&v9 dataSource];
  }

  v7 = dataSource;

  return v7;
}

- (void)setContentMode:(int64_t)mode
{
  if (self->_contentMode != mode)
  {
    self->_contentMode = mode;
    v5 = objc_alloc_init(PXTilingLayoutInvalidationContext);
    [(PXTilingLayoutInvalidationContext *)v5 invalidateAllTiles];
    [(PXTilingLayout *)self invalidateLayoutWithContext:v5];
  }
}

- (void)setLayoutSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  if (self->_layoutSnapshot != snapshotCopy)
  {
    v21 = snapshotCopy;
    if (snapshotCopy)
    {
      dataSourceSnapshot = [(PXLayoutSnapshot *)snapshotCopy dataSourceSnapshot];
      identifier = [dataSourceSnapshot identifier];
      dataSource = [(PXEngineDrivenAssetsTilingLayout *)self dataSource];
      identifier2 = [dataSource identifier];

      if (identifier != identifier2)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"PXEngineDrivenAssetsTilingLayout.m" lineNumber:223 description:@"Changing to a layoutSnapshot with a new data source version is not supported."];
      }

      if (self->_layoutSnapshot)
      {
        dataSourceSnapshot2 = [(PXLayoutSnapshot *)v21 dataSourceSnapshot];
        identifier3 = [dataSourceSnapshot2 identifier];
        dataSourceSnapshot3 = [(PXLayoutSnapshot *)self->_layoutSnapshot dataSourceSnapshot];
        identifier4 = [dataSourceSnapshot3 identifier];

        if (identifier3 != identifier4)
        {
          currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXEngineDrivenAssetsTilingLayout.m" lineNumber:224 description:@"Changing to a layoutSnapshot with a new data source version is not supported."];
        }
      }

      dataSourceSnapshot4 = [(PXLayoutSnapshot *)v21 dataSourceSnapshot];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler3 handleFailureInMethod:a2 object:self file:@"PXEngineDrivenAssetsTilingLayout.m" lineNumber:225 description:@"Requires a layout snapshot with a PXAssetsDataSource data source."];
      }
    }

    objc_storeStrong(&self->_layoutSnapshot, snapshot);
    v18 = objc_alloc_init(PXTilingLayoutInvalidationContext);
    [(PXTilingLayoutInvalidationContext *)v18 invalidateAllTiles];
    [(PXTilingLayoutInvalidationContext *)v18 invalidateContentBounds];
    [(PXTilingLayout *)self invalidateLayoutWithContext:v18];

    snapshotCopy = v21;
  }
}

- (CGRect)contentBounds
{
  layoutSnapshot = [(PXEngineDrivenAssetsTilingLayout *)self layoutSnapshot];
  if (layoutSnapshot)
  {
    [layoutSnapshot contentRect];
  }

  [(PXTilingLayout *)self contentInset];
  sub_1A524D1F4();
}

- (void)adjustGeometry:(PXTileGeometry *)geometry forContentTileWithIndexPath:(PXSimpleIndexPath *)path
{
  v4.receiver = self;
  v4.super_class = PXEngineDrivenAssetsTilingLayout;
  [(PXAssetsTilingLayout *)&v4 adjustGeometry:path->dataSourceIdentifier forContentTileWithIndexPath:path->section, path->item, path->subitem];
  PXSizeGetAspectRatio();
}

- (BOOL)getGeometry:(PXTileGeometry *)geometry group:(unint64_t *)group userData:(id *)data forTileWithIdentifier:(PXTileIdentifier *)identifier
{
  length = identifier->length;
  v12 = *(off_1E7722248 + 9);
  v42 = *(off_1E7722248 + 8);
  v43 = v12;
  v13 = *(off_1E7722248 + 11);
  v44 = *(off_1E7722248 + 10);
  v45 = v13;
  v14 = *(off_1E7722248 + 5);
  v38 = *(off_1E7722248 + 4);
  v39 = v14;
  v15 = *(off_1E7722248 + 7);
  v40 = *(off_1E7722248 + 6);
  v41 = v15;
  v16 = *(off_1E7722248 + 1);
  v34 = *off_1E7722248;
  v35 = v16;
  v17 = *(off_1E7722248 + 3);
  v36 = *(off_1E7722248 + 2);
  v37 = v17;
  if (length - 3 <= 2)
  {
    v18 = identifier->index[1];
    if (v18 != 0x7FFFFFFFFFFFFFFFLL && length == 5 && identifier->index[0] == 6432423)
    {
      dataSource = [(PXEngineDrivenAssetsTilingLayout *)self dataSource];
      identifier = [dataSource identifier];

      if (v18 == identifier)
      {
        v21 = identifier->index[2];
        v23 = identifier->index[3];
        v22 = identifier->index[4];
        *&v28 = identifier->index[1];
        *(&v28 + 1) = v21;
        *&v29 = v23;
        *(&v29 + 1) = v22;
        PXIndexPathFromSimpleIndexPath();
      }
    }
  }

  v27.receiver = self;
  v27.super_class = PXEngineDrivenAssetsTilingLayout;
  v24 = *&identifier->index[5];
  v30 = *&identifier->index[3];
  v31 = v24;
  v32 = *&identifier->index[7];
  *&v33 = identifier->index[9];
  v25 = *&identifier->index[1];
  v28 = *&identifier->length;
  v29 = v25;
  return [(PXAssetsTilingLayout *)&v27 getGeometry:geometry group:group userData:data forTileWithIdentifier:&v28];
}

- (void)enumerateTilesInRect:(CGRect)rect withOptions:(id)options usingBlock:(id)block
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  optionsCopy = options;
  blockCopy = block;
  dataSource = [(PXEngineDrivenAssetsTilingLayout *)self dataSource];
  identifier = [dataSource identifier];

  coordinateSpaceIdentifier = [(PXTilingLayout *)self coordinateSpaceIdentifier];
  v16 = [(PXEngineDrivenAssetsTilingLayout *)self contentMode]== 0;
  layoutSnapshot = [(PXEngineDrivenAssetsTilingLayout *)self layoutSnapshot];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __80__PXEngineDrivenAssetsTilingLayout_enumerateTilesInRect_withOptions_usingBlock___block_invoke;
  v20[3] = &unk_1E772FA88;
  v25 = v16;
  v23 = identifier;
  v24 = coordinateSpaceIdentifier;
  v21 = optionsCopy;
  v22 = blockCopy;
  v20[4] = self;
  v18 = optionsCopy;
  v19 = blockCopy;
  [layoutSnapshot enumerateGeometriesForItemsInRect:v20 usingBlock:{x, y, width, height}];
}

void __80__PXEngineDrivenAssetsTilingLayout_enumerateTilesInRect_withOptions_usingBlock___block_invoke(uint64_t a1, void *a2, uint64_t *a3)
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 56);
  v6 = a2;
  v7 = [v6 px_section];
  v8 = [v6 px_item];

  v9 = a3[12];
  if (v9)
  {
    goto LABEL_8;
  }

  v10 = [*(a1 + 32) dataSource];
  if (v7 >= [v10 numberOfSections])
  {
  }

  else
  {
    v11 = [*(a1 + 32) dataSource];
    v12 = [v11 numberOfItemsInSection:v7];

    if (v8 < v12)
    {
      *&v39 = 0;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v32 = 0u;
      if (*(a1 + 72) == 1)
      {
        v13 = *(a1 + 32);
        *v26 = v5;
        *&v26[8] = v7;
        v27 = v8;
        v28 = 0x7FFFFFFFFFFFFFFFLL;
        MEMORY[0x1A590D300]([v13 _aspectRatioForItemAtIndexPath:v26]);
      }

      PXRectWithCenterAndSize();
    }
  }

  v9 = a3[12];
  if (v9)
  {
LABEL_8:
    v25 = 0;
    memset(v24, 0, sizeof(v24));
    v23 = 0;
    v14 = *(a1 + 32);
    *buf = v5;
    *&buf[8] = v7;
    v30 = v8;
    v31 = 0x7FFFFFFFFFFFFFFFLL;
    if ([v14 getAdditionalTileIdentifier:v24 group:&v23 layoutGeometryKind:v9 indexPath:buf])
    {
      PXRectWithCenterAndSize();
    }
  }

  else
  {
    v15 = PLUIGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v22 = [*(a1 + 32) layoutSnapshot];
      v16 = MEMORY[0x1E696AEC0];
      v17 = *a3;
      v18 = NSStringFromCGPoint(*(a3 + 1));
      v19 = NSStringFromCGSize(*(a3 + 3));
      v20 = [v16 stringWithFormat:@"  [geometry[%ld] = {center:%@, size:%@}]\r", v17, v18, v19, v22];

      *buf = v5;
      *&buf[8] = v7;
      v30 = v8;
      v31 = 0x7FFFFFFFFFFFFFFFLL;
      v21 = v20;
      PXSimpleIndexPathDescription();
    }
  }
}

- (void)setReferenceSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(PXTilingLayout *)self referenceSize];
  if (width != v7 || height != v6)
  {
    v11.receiver = self;
    v11.super_class = PXEngineDrivenAssetsTilingLayout;
    [(PXTilingLayout *)&v11 setReferenceSize:width, height];
    delegate = [(PXEngineDrivenAssetsTilingLayout *)self delegate];
    v10 = delegate;
    if (self->_delegateFlags.respondsToEngineDrivenLayoutReferenceSizeDidChange)
    {
      [delegate engineDrivenLayoutReferenceSizeDidChange:self];
    }
  }
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    p_delegateFlags = &self->_delegateFlags;
    p_delegateFlags->respondsToEngineDrivenLayoutReferenceSizeDidChange = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToEngineDrivenLayoutAspectRatioForItemAtIndexPath = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToEngineDrivenLayoutZPositionForItemAtIndexPath = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToEngineDrivenLayoutContentsRectForItemAtIndexPathForAspectRatio = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToEngineDrivenLayoutPlayButtonSizeForItemAtIndexPathForAspectRatio = objc_opt_respondsToSelector() & 1;
  }
}

- (PXEngineDrivenAssetsTilingLayout)initWithLayoutEngineSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  dataSourceSnapshot = [snapshotCopy dataSourceSnapshot];
  v10.receiver = self;
  v10.super_class = PXEngineDrivenAssetsTilingLayout;
  v7 = [(PXAssetsTilingLayout *)&v10 initWithDataSource:dataSourceSnapshot];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_layoutSnapshot, snapshot);
    [(PXEngineDrivenAssetsTilingLayout *)v8 _commonInit];
  }

  return v8;
}

- (PXEngineDrivenAssetsTilingLayout)initWithDataSource:(id)source
{
  v6.receiver = self;
  v6.super_class = PXEngineDrivenAssetsTilingLayout;
  v3 = [(PXAssetsTilingLayout *)&v6 initWithDataSource:source];
  v4 = v3;
  if (v3)
  {
    [(PXEngineDrivenAssetsTilingLayout *)v3 _commonInit];
  }

  return v4;
}

@end