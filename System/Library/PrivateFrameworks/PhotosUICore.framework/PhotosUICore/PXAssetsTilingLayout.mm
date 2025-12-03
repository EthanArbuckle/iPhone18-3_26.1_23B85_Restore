@interface PXAssetsTilingLayout
- (BOOL)_getAnimatedImageOverlayTileIdentifier:(PXTileIdentifier *)identifier outGeometry:(PXTileGeometry *)geometry group:(unint64_t *)group userData:(id *)data forContentTileGeometry:(const PXTileGeometry *)tileGeometry indexPath:(PXSimpleIndexPath *)path;
- (BOOL)_getDimmingTileIdentifier:(PXTileIdentifier *)identifier outGeometry:(PXTileGeometry *)geometry group:(unint64_t *)group userData:(id *)data forContentTileGeometry:(const PXTileGeometry *)tileGeometry indexPath:(PXSimpleIndexPath *)path;
- (BOOL)_getLivePhotoOverlayTileIdentifier:(PXTileIdentifier *)identifier outGeometry:(PXTileGeometry *)geometry group:(unint64_t *)group userData:(id *)data forContentTileGeometry:(const PXTileGeometry *)tileGeometry indexPath:(PXSimpleIndexPath *)path;
- (BOOL)_getLoopingVideoOverlayTileIdentifier:(PXTileIdentifier *)identifier outGeometry:(PXTileGeometry *)geometry group:(unint64_t *)group userData:(id *)data forContentTileGeometry:(const PXTileGeometry *)tileGeometry indexPath:(PXSimpleIndexPath *)path;
- (BOOL)_getOverlayBadgeTileIdentifier:(PXTileIdentifier *)identifier outGeometry:(PXTileGeometry *)geometry group:(unint64_t *)group userData:(id *)data forContentTileGeometry:(const PXTileGeometry *)tileGeometry indexPath:(PXSimpleIndexPath *)path;
- (BOOL)_getPlayButtonTileIdentifier:(PXTileIdentifier *)identifier outGeometry:(PXTileGeometry *)geometry group:(unint64_t *)group userData:(id *)data forContentTileGeometry:(const PXTileGeometry *)tileGeometry indexPath:(PXSimpleIndexPath *)path;
- (BOOL)_getSelectionBadgeTileIdentifier:(PXTileIdentifier *)identifier outGeometry:(PXTileGeometry *)geometry group:(unint64_t *)group userData:(id *)data forContentTileGeometry:(const PXTileGeometry *)tileGeometry indexPath:(PXSimpleIndexPath *)path;
- (BOOL)_getVideoOverlayTileIdentifier:(PXTileIdentifier *)identifier outGeometry:(PXTileGeometry *)geometry group:(unint64_t *)group userData:(id *)data forContentTileGeometry:(const PXTileGeometry *)tileGeometry indexPath:(PXSimpleIndexPath *)path;
- (BOOL)getGeometry:(PXTileGeometry *)geometry group:(unint64_t *)group userData:(id *)data forTileWithIdentifier:(PXTileIdentifier *)identifier;
- (CGSize)_preferredSelectionBadgeSize;
- (CGSize)playButtonSizeForItemAtIndexPath:(PXSimpleIndexPath *)path contentTileSize:(CGSize)size;
- (PXAssetsTilingLayout)init;
- (PXAssetsTilingLayout)initWithDataSource:(id)source;
- (PXSimpleIndexPath)focusedIndexPath;
- (PXSimpleIndexPath)highlightedIndexPath;
- (double)zPositionOffsetForKind:(unint64_t)kind;
- (id)description;
- (void)_invalidateAllAnimatedOverlayTiles;
- (void)_invalidateAllSelectionTiles;
- (void)adjustGeometry:(PXTileGeometry *)geometry forContentTileWithIndexPath:(PXSimpleIndexPath *)path;
- (void)enumerateAccessoryTilesForContentTileWithIndexPath:(PXSimpleIndexPath *)path geometry:(const PXTileGeometry *)geometry withOptions:(id)options usingBlock:(id)block;
- (void)setAnimatedOverlayBehavior:(unint64_t)behavior;
- (void)setBadgeOptions:(unint64_t)options;
- (void)setDraggingIndexPaths:(id)paths;
- (void)setFocusedIndexPath:(PXSimpleIndexPath *)path;
- (void)setHiddenIndexPaths:(id)paths;
- (void)setHighlightedIndexPath:(PXSimpleIndexPath *)path;
- (void)setSelectedIndexPaths:(id)paths;
- (void)setSelectionBadgeOptions:(unint64_t)options;
@end

@implementation PXAssetsTilingLayout

- (PXSimpleIndexPath)focusedIndexPath
{
  v3 = *&self[8].subitem;
  *&retstr->dataSourceIdentifier = *&self[8].section;
  *&retstr->item = v3;
  return self;
}

- (PXSimpleIndexPath)highlightedIndexPath
{
  v3 = *&self[7].subitem;
  *&retstr->dataSourceIdentifier = *&self[7].section;
  *&retstr->item = v3;
  return self;
}

- (double)zPositionOffsetForKind:(unint64_t)kind
{
  result = 0.0;
  if (kind - 6332434 <= 7)
  {
    return dbl_1A5383168[kind - 6332434];
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PXAssetsTilingLayout;
  v4 = [(PXAssetsTilingLayout *)&v8 description];
  dataSource = [(PXAssetsTilingLayout *)self dataSource];
  v6 = [v3 stringWithFormat:@"<%@ dataSource:%@>", v4, dataSource];

  return v6;
}

- (void)_invalidateAllAnimatedOverlayTiles
{
  v3 = objc_alloc_init(PXTilingLayoutInvalidationContext);
  [(PXTilingLayoutInvalidationContext *)v3 invalidateTilesInGroup:450001];
  [(PXTilingLayout *)self invalidateLayoutWithContext:v3];
}

- (void)_invalidateAllSelectionTiles
{
  v3 = objc_alloc_init(PXTilingLayoutInvalidationContext);
  [(PXTilingLayoutInvalidationContext *)v3 invalidateTilesInGroup:450000];
  [(PXTilingLayout *)self invalidateLayoutWithContext:v3];
}

- (BOOL)_getOverlayBadgeTileIdentifier:(PXTileIdentifier *)identifier outGeometry:(PXTileGeometry *)geometry group:(unint64_t *)group userData:(id *)data forContentTileGeometry:(const PXTileGeometry *)tileGeometry indexPath:(PXSimpleIndexPath *)path
{
  v15 = !tileGeometry->hidden & [(PXAssetsTilingLayout *)self badgeOptions];
  if (v15)
  {
    if (identifier)
    {
      v16 = *&path->dataSourceIdentifier;
      v17 = *&path->item;
      *&identifier->length = xmmword_1A5381210;
      *&identifier->index[1] = v16;
      *&identifier->index[3] = v17;
      *&identifier->index[5] = 0u;
      *&identifier->index[7] = 0u;
      identifier->index[9] = 0;
    }

    if (geometry)
    {
      origin = tileGeometry->frame.origin;
      size = tileGeometry->frame.size;
      v20 = tileGeometry->size;
      geometry->center = tileGeometry->center;
      geometry->size = v20;
      geometry->frame.origin = origin;
      geometry->frame.size = size;
      v21 = *&tileGeometry->transform.a;
      v22 = *&tileGeometry->transform.c;
      v23 = *&tileGeometry->alpha;
      *&geometry->transform.tx = *&tileGeometry->transform.tx;
      *&geometry->alpha = v23;
      *&geometry->transform.a = v21;
      *&geometry->transform.c = v22;
      v24 = *&tileGeometry->hidden;
      v25 = *&tileGeometry->contentSize.height;
      v26 = *&tileGeometry->contentsRect.size.height;
      *&geometry->contentsRect.origin.y = *&tileGeometry->contentsRect.origin.y;
      *&geometry->contentsRect.size.height = v26;
      *&geometry->hidden = v24;
      *&geometry->contentSize.height = v25;
      zPosition = tileGeometry->zPosition;
      [(PXAssetsTilingLayout *)self zPositionOffsetForKind:6332435];
      geometry->zPosition = zPosition + v28;
    }

    if (group)
    {
      *group = 450000;
    }

    if (data)
    {
      *data = [(PXAssetsTilingLayout *)self _overlayBadgeTileUserData];
    }
  }

  return v15 & 1;
}

- (BOOL)_getDimmingTileIdentifier:(PXTileIdentifier *)identifier outGeometry:(PXTileGeometry *)geometry group:(unint64_t *)group userData:(id *)data forContentTileGeometry:(const PXTileGeometry *)tileGeometry indexPath:(PXSimpleIndexPath *)path
{
  selectionBadgeOptions = [(PXAssetsTilingLayout *)self selectionBadgeOptions];
  [(PXAssetsTilingLayout *)self highlightedIndexPath];
  v16 = path->dataSourceIdentifier == v43 && path->section == *(&v43 + 1) && path->item == v44;
  dataCopy = data;
  v17 = v16 && path->subitem == *(&v44 + 1);
  draggingIndexPaths = [(PXAssetsTilingLayout *)self draggingIndexPaths];
  v19 = *&path->item;
  v43 = *&path->dataSourceIdentifier;
  v44 = v19;
  v42 = [draggingIndexPaths containsIndexPath:&v43];

  selectedIndexPaths = [(PXAssetsTilingLayout *)self selectedIndexPaths];
  v21 = *&path->item;
  v43 = *&path->dataSourceIdentifier;
  v44 = v21;
  v22 = [selectedIndexPaths containsIndexPath:&v43];

  v23 = +[PXGridSettings sharedInstance];
  disableSelectionOverlayView = [v23 disableSelectionOverlayView];

  if (tileGeometry->hidden || (((disableSelectionOverlayView ^ 1) & v22) != 1 || (selectionBadgeOptions & 0x400) == 0) && (((selectionBadgeOptions >> 11) & ~v22 | v17 | v42 & (selectionBadgeOptions >> 10)) & 1) == 0)
  {
    return 0;
  }

  if (identifier)
  {
    v26 = *&path->dataSourceIdentifier;
    v27 = *&path->item;
    *&identifier->length = xmmword_1A5381220;
    *&identifier->index[1] = v26;
    *&identifier->index[3] = v27;
    *&identifier->index[5] = 0u;
    *&identifier->index[7] = 0u;
    identifier->index[9] = 0;
  }

  if (geometry)
  {
    origin = tileGeometry->frame.origin;
    size = tileGeometry->frame.size;
    v30 = tileGeometry->size;
    geometry->center = tileGeometry->center;
    geometry->size = v30;
    geometry->frame.origin = origin;
    geometry->frame.size = size;
    v31 = *&tileGeometry->transform.a;
    v32 = *&tileGeometry->transform.c;
    v33 = *&tileGeometry->alpha;
    *&geometry->transform.tx = *&tileGeometry->transform.tx;
    *&geometry->alpha = v33;
    *&geometry->transform.a = v31;
    *&geometry->transform.c = v32;
    v34 = *&tileGeometry->hidden;
    v35 = *&tileGeometry->contentSize.height;
    v36 = *&tileGeometry->contentsRect.size.height;
    *&geometry->contentsRect.origin.y = *&tileGeometry->contentsRect.origin.y;
    *&geometry->contentsRect.size.height = v36;
    *&geometry->hidden = v34;
    *&geometry->contentSize.height = v35;
    zPosition = tileGeometry->zPosition;
    [(PXAssetsTilingLayout *)self zPositionOffsetForKind:6332436];
    geometry->zPosition = zPosition + v38;
    if ((selectionBadgeOptions & 0xC00) == 0 && !v17)
    {
      geometry->alpha = 0.0;
    }
  }

  if (group)
  {
    *group = 450000;
  }

  if (dataCopy)
  {
    if (v42)
    {
      _draggingDimmingUserData = [(PXAssetsTilingLayout *)self _draggingDimmingUserData];
    }

    else
    {
      if (v17)
      {
        [(PXAssetsTilingLayout *)self _highlightedDimmingUserData];
      }

      else
      {
        [(PXAssetsTilingLayout *)self _selectedDimmingUserData];
      }
      _draggingDimmingUserData = ;
    }

    *dataCopy = _draggingDimmingUserData;
  }

  return 1;
}

- (BOOL)_getAnimatedImageOverlayTileIdentifier:(PXTileIdentifier *)identifier outGeometry:(PXTileGeometry *)geometry group:(unint64_t *)group userData:(id *)data forContentTileGeometry:(const PXTileGeometry *)tileGeometry indexPath:(PXSimpleIndexPath *)path
{
  animatedOverlayBehavior = [(PXAssetsTilingLayout *)self animatedOverlayBehavior];
  dataSource = [(PXAssetsTilingLayout *)self dataSource];
  v16 = *&path->item;
  v35[0] = *&path->dataSourceIdentifier;
  v35[1] = v16;
  v17 = [dataSource assetAtItemIndexPath:v35];
  playbackStyle = [v17 playbackStyle];

  v19 = (playbackStyle == 2) & (animatedOverlayBehavior >> 1);
  if (v19)
  {
    if (identifier)
    {
      v20 = *&path->dataSourceIdentifier;
      v21 = *&path->item;
      *&identifier->length = xmmword_1A5381230;
      *&identifier->index[1] = v20;
      *&identifier->index[3] = v21;
      *&identifier->index[5] = 0u;
      *&identifier->index[7] = 0u;
      identifier->index[9] = 0;
    }

    if (geometry)
    {
      origin = tileGeometry->frame.origin;
      size = tileGeometry->frame.size;
      v24 = tileGeometry->size;
      geometry->center = tileGeometry->center;
      geometry->size = v24;
      geometry->frame.origin = origin;
      geometry->frame.size = size;
      v25 = *&tileGeometry->transform.a;
      v26 = *&tileGeometry->transform.c;
      v27 = *&tileGeometry->alpha;
      *&geometry->transform.tx = *&tileGeometry->transform.tx;
      *&geometry->alpha = v27;
      *&geometry->transform.a = v25;
      *&geometry->transform.c = v26;
      v28 = *&tileGeometry->hidden;
      v29 = *&tileGeometry->contentSize.height;
      v30 = *&tileGeometry->contentsRect.size.height;
      *&geometry->contentsRect.origin.y = *&tileGeometry->contentsRect.origin.y;
      *&geometry->contentsRect.size.height = v30;
      *&geometry->hidden = v28;
      *&geometry->contentSize.height = v29;
      zPosition = tileGeometry->zPosition;
      [(PXAssetsTilingLayout *)self zPositionOffsetForKind:6332438];
      geometry->zPosition = zPosition + v32;
    }

    if (group)
    {
      *group = 450001;
    }

    if (data)
    {
      *data = 0;
    }
  }

  return v19;
}

- (BOOL)_getLoopingVideoOverlayTileIdentifier:(PXTileIdentifier *)identifier outGeometry:(PXTileGeometry *)geometry group:(unint64_t *)group userData:(id *)data forContentTileGeometry:(const PXTileGeometry *)tileGeometry indexPath:(PXSimpleIndexPath *)path
{
  animatedOverlayBehavior = [(PXAssetsTilingLayout *)self animatedOverlayBehavior];
  dataSource = [(PXAssetsTilingLayout *)self dataSource];
  v16 = *&path->item;
  v35[0] = *&path->dataSourceIdentifier;
  v35[1] = v16;
  v17 = [dataSource assetAtItemIndexPath:v35];
  playbackStyle = [v17 playbackStyle];

  animatedOverlayBehavior2 = [(PXAssetsTilingLayout *)self animatedOverlayBehavior];
  if ((animatedOverlayBehavior & 1) == 0 || playbackStyle != 5 && ((playbackStyle == 3) & (animatedOverlayBehavior2 >> 4)) == 0)
  {
    return 0;
  }

  if (identifier)
  {
    v21 = *&path->dataSourceIdentifier;
    v22 = *&path->item;
    *&identifier->length = xmmword_1A5381240;
    *&identifier->index[1] = v21;
    *&identifier->index[3] = v22;
    *&identifier->index[5] = 0u;
    *&identifier->index[7] = 0u;
    identifier->index[9] = 0;
  }

  if (geometry)
  {
    origin = tileGeometry->frame.origin;
    size = tileGeometry->frame.size;
    v25 = tileGeometry->size;
    geometry->center = tileGeometry->center;
    geometry->size = v25;
    geometry->frame.origin = origin;
    geometry->frame.size = size;
    v26 = *&tileGeometry->transform.a;
    v27 = *&tileGeometry->transform.c;
    v28 = *&tileGeometry->alpha;
    *&geometry->transform.tx = *&tileGeometry->transform.tx;
    *&geometry->alpha = v28;
    *&geometry->transform.a = v26;
    *&geometry->transform.c = v27;
    v29 = *&tileGeometry->hidden;
    v30 = *&tileGeometry->contentSize.height;
    v31 = *&tileGeometry->contentsRect.size.height;
    *&geometry->contentsRect.origin.y = *&tileGeometry->contentsRect.origin.y;
    *&geometry->contentsRect.size.height = v31;
    *&geometry->hidden = v29;
    *&geometry->contentSize.height = v30;
    zPosition = tileGeometry->zPosition;
    [(PXAssetsTilingLayout *)self zPositionOffsetForKind:6332440];
    geometry->zPosition = zPosition + v33;
  }

  if (group)
  {
    *group = 450001;
  }

  if (data)
  {
    *data = 0;
  }

  return 1;
}

- (BOOL)_getVideoOverlayTileIdentifier:(PXTileIdentifier *)identifier outGeometry:(PXTileGeometry *)geometry group:(unint64_t *)group userData:(id *)data forContentTileGeometry:(const PXTileGeometry *)tileGeometry indexPath:(PXSimpleIndexPath *)path
{
  animatedOverlayBehavior = [(PXAssetsTilingLayout *)self animatedOverlayBehavior];
  dataSource = [(PXAssetsTilingLayout *)self dataSource];
  v16 = *&path->item;
  v35[0] = *&path->dataSourceIdentifier;
  v35[1] = v16;
  v17 = [dataSource assetAtItemIndexPath:v35];
  playbackStyle = [v17 playbackStyle];

  v19 = (playbackStyle == 4) & (animatedOverlayBehavior >> 2);
  if (v19)
  {
    if (identifier)
    {
      v20 = *&path->dataSourceIdentifier;
      v21 = *&path->item;
      *&identifier->length = xmmword_1A5381250;
      *&identifier->index[1] = v20;
      *&identifier->index[3] = v21;
      *&identifier->index[5] = 0u;
      *&identifier->index[7] = 0u;
      identifier->index[9] = 0;
    }

    if (geometry)
    {
      origin = tileGeometry->frame.origin;
      size = tileGeometry->frame.size;
      v24 = tileGeometry->size;
      geometry->center = tileGeometry->center;
      geometry->size = v24;
      geometry->frame.origin = origin;
      geometry->frame.size = size;
      v25 = *&tileGeometry->transform.a;
      v26 = *&tileGeometry->transform.c;
      v27 = *&tileGeometry->alpha;
      *&geometry->transform.tx = *&tileGeometry->transform.tx;
      *&geometry->alpha = v27;
      *&geometry->transform.a = v25;
      *&geometry->transform.c = v26;
      v28 = *&tileGeometry->hidden;
      v29 = *&tileGeometry->contentSize.height;
      v30 = *&tileGeometry->contentsRect.size.height;
      *&geometry->contentsRect.origin.y = *&tileGeometry->contentsRect.origin.y;
      *&geometry->contentsRect.size.height = v30;
      *&geometry->hidden = v28;
      *&geometry->contentSize.height = v29;
      zPosition = tileGeometry->zPosition;
      [(PXAssetsTilingLayout *)self zPositionOffsetForKind:6332439];
      geometry->zPosition = zPosition + v32;
    }

    if (group)
    {
      *group = 450001;
    }

    if (data)
    {
      *data = 0;
    }
  }

  return v19;
}

- (BOOL)_getLivePhotoOverlayTileIdentifier:(PXTileIdentifier *)identifier outGeometry:(PXTileGeometry *)geometry group:(unint64_t *)group userData:(id *)data forContentTileGeometry:(const PXTileGeometry *)tileGeometry indexPath:(PXSimpleIndexPath *)path
{
  if (([(PXAssetsTilingLayout *)self animatedOverlayBehavior]& 8) == 0)
  {
    return 0;
  }

  dataSource = [(PXAssetsTilingLayout *)self dataSource];
  v16 = *&path->item;
  v33[0] = *&path->dataSourceIdentifier;
  v33[1] = v16;
  v17 = [dataSource assetAtItemIndexPath:v33];
  playbackStyle = [v17 playbackStyle];

  if (playbackStyle != 3 || ([(PXAssetsTilingLayout *)self animatedOverlayBehavior]& 0x10) != 0)
  {
    return 0;
  }

  if (identifier)
  {
    v19 = *&path->dataSourceIdentifier;
    v20 = *&path->item;
    *&identifier->length = xmmword_1A5381260;
    *&identifier->index[1] = v19;
    *&identifier->index[3] = v20;
    *&identifier->index[5] = 0u;
    *&identifier->index[7] = 0u;
    identifier->index[9] = 0;
  }

  if (geometry)
  {
    origin = tileGeometry->frame.origin;
    size = tileGeometry->frame.size;
    v23 = tileGeometry->size;
    geometry->center = tileGeometry->center;
    geometry->size = v23;
    geometry->frame.origin = origin;
    geometry->frame.size = size;
    v24 = *&tileGeometry->transform.a;
    v25 = *&tileGeometry->transform.c;
    v26 = *&tileGeometry->alpha;
    *&geometry->transform.tx = *&tileGeometry->transform.tx;
    *&geometry->alpha = v26;
    *&geometry->transform.a = v24;
    *&geometry->transform.c = v25;
    v27 = *&tileGeometry->hidden;
    v28 = *&tileGeometry->contentSize.height;
    v29 = *&tileGeometry->contentsRect.size.height;
    *&geometry->contentsRect.origin.y = *&tileGeometry->contentsRect.origin.y;
    *&geometry->contentsRect.size.height = v29;
    *&geometry->hidden = v27;
    *&geometry->contentSize.height = v28;
    zPosition = tileGeometry->zPosition;
    [(PXAssetsTilingLayout *)self zPositionOffsetForKind:6332441];
    geometry->zPosition = zPosition + v31;
  }

  if (group)
  {
    *group = 450001;
  }

  if (data)
  {
    *data = 0;
  }

  return 1;
}

- (BOOL)_getPlayButtonTileIdentifier:(PXTileIdentifier *)identifier outGeometry:(PXTileGeometry *)geometry group:(unint64_t *)group userData:(id *)data forContentTileGeometry:(const PXTileGeometry *)tileGeometry indexPath:(PXSimpleIndexPath *)path
{
  v14 = *&path->item;
  v21[0] = *&path->dataSourceIdentifier;
  v21[1] = v14;
  [(PXAssetsTilingLayout *)self playButtonSizeForItemAtIndexPath:v21 contentTileSize:tileGeometry->size.width, tileGeometry->size.height];
  if (tileGeometry->hidden)
  {
    return 0;
  }

  if (v15 == *MEMORY[0x1E695F060] && v16 == *(MEMORY[0x1E695F060] + 8))
  {
    return 0;
  }

  if (identifier)
  {
    v18 = *&path->dataSourceIdentifier;
    v19 = *&path->item;
    *&identifier->length = xmmword_1A5381270;
    *&identifier->index[1] = v18;
    *&identifier->index[3] = v19;
    *&identifier->index[5] = 0u;
    *&identifier->index[7] = 0u;
    identifier->index[9] = 0;
  }

  if (geometry)
  {
    PXRectWithCenterAndSize();
  }

  if (group)
  {
    *group = 0;
  }

  if (data)
  {
    *data = 0;
  }

  return 1;
}

- (BOOL)_getSelectionBadgeTileIdentifier:(PXTileIdentifier *)identifier outGeometry:(PXTileGeometry *)geometry group:(unint64_t *)group userData:(id *)data forContentTileGeometry:(const PXTileGeometry *)tileGeometry indexPath:(PXSimpleIndexPath *)path
{
  selectionBadgeOptions = [(PXAssetsTilingLayout *)self selectionBadgeOptions];
  if (tileGeometry->hidden)
  {
    return 0;
  }

  if ((selectionBadgeOptions & 2) == 0)
  {
    if ((selectionBadgeOptions & 1) == 0)
    {
      return 0;
    }

    selectedIndexPaths = [(PXAssetsTilingLayout *)self selectedIndexPaths];
    v18 = *&path->item;
    v26 = *&path->dataSourceIdentifier;
    v27 = v18;
    v19 = [selectedIndexPaths containsIndexPath:&v26];

    if (!v19)
    {
      return 0;
    }
  }

  if (identifier)
  {
    v20 = *&path->dataSourceIdentifier;
    v21 = *&path->item;
    *&identifier->length = xmmword_1A5381280;
    *&identifier->index[1] = v20;
    *&identifier->index[3] = v21;
    *&identifier->index[5] = 0u;
    *&identifier->index[7] = 0u;
    identifier->index[9] = 0;
  }

  if (geometry)
  {
    [(PXAssetsTilingLayout *)self _preferredSelectionBadgeSize];
    CGRectGetMaxX(tileGeometry->frame);
    CGRectGetMaxY(tileGeometry->frame);
    [(PXTilingLayout *)self coordinateSpaceIdentifier];
    PXRectGetCenter();
  }

  if (group)
  {
    *group = 450000;
  }

  if (data)
  {
    selectedIndexPaths2 = [(PXAssetsTilingLayout *)self selectedIndexPaths];
    v23 = *&path->item;
    v26 = *&path->dataSourceIdentifier;
    v27 = v23;
    v24 = [selectedIndexPaths2 containsIndexPath:&v26];

    if (v24)
    {
      [(PXAssetsTilingLayout *)self _selectedUserData];
    }

    else
    {
      [(PXAssetsTilingLayout *)self _unselectedUserData];
    }
    v25 = ;
    *data = v25;
  }

  return 1;
}

- (CGSize)playButtonSizeForItemAtIndexPath:(PXSimpleIndexPath *)path contentTileSize:(CGSize)size
{
  v4 = *MEMORY[0x1E695F060];
  v5 = *(MEMORY[0x1E695F060] + 8);
  result.height = v5;
  result.width = v4;
  return result;
}

- (BOOL)getGeometry:(PXTileGeometry *)geometry group:(unint64_t *)group userData:(id *)data forTileWithIdentifier:(PXTileIdentifier *)identifier
{
  if (identifier->length - 3 > 2)
  {
    LOBYTE(v22) = 0;
    return v22;
  }

  v37 = v6;
  v38 = v7;
  v9 = identifier->index[1];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL || (-[PXAssetsTilingLayout dataSource](self, "dataSource"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v14 identifier], v14, v9 != v15))
  {
LABEL_25:
    LOBYTE(v22) = 0;
    return v22;
  }

  v17 = identifier->index[2];
  v16 = identifier->index[3];
  v18 = identifier->index[4];
  index = identifier->index;
  v19 = identifier->index[0];
  v20 = index[1];
  memset(v36, 0, 192);
  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  v30 = xmmword_1A5380D20;
  *&v31 = v20;
  *(&v31 + 1) = v17;
  *&v32 = v16;
  *(&v32 + 1) = v18;
  v22 = [(PXAssetsTilingLayout *)self getGeometry:v36 group:0 userData:0 forTileWithIdentifier:&v30];
  if (v22)
  {
    v35 = 0;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
    if (v19 > 6332437)
    {
      if (v19 > 6332439)
      {
        if (v19 == 6332440)
        {
          v26 = v20;
          v27 = v17;
          v28 = v16;
          v29 = v18;
          LOBYTE(v22) = [(PXAssetsTilingLayout *)self _getLoopingVideoOverlayTileIdentifier:&v30 outGeometry:geometry group:group userData:data forContentTileGeometry:v36 indexPath:&v26];
          return v22;
        }

        if (v19 == 6332441)
        {
          v26 = v20;
          v27 = v17;
          v28 = v16;
          v29 = v18;
          LOBYTE(v22) = [(PXAssetsTilingLayout *)self _getLivePhotoOverlayTileIdentifier:&v30 outGeometry:geometry group:group userData:data forContentTileGeometry:v36 indexPath:&v26];
          return v22;
        }

LABEL_23:
        additionalAccessoryTileKinds = [(PXAssetsTilingLayout *)self additionalAccessoryTileKinds];
        v25 = [additionalAccessoryTileKinds containsIndex:v19];

        if (v25)
        {
          v26 = v20;
          v27 = v17;
          v28 = v16;
          v29 = v18;
          LOBYTE(v22) = [(PXAssetsTilingLayout *)self getAdditionalAccessoryTileIdentifier:&v30 outGeometry:geometry group:group userData:data forTileKind:v19 contentTileGeometry:v36 indexPath:&v26];
          return v22;
        }

        goto LABEL_25;
      }

      v26 = v20;
      v27 = v17;
      v28 = v16;
      v29 = v18;
      if (v19 == 6332438)
      {
        LOBYTE(v22) = [(PXAssetsTilingLayout *)self _getAnimatedImageOverlayTileIdentifier:&v30 outGeometry:geometry group:group userData:data forContentTileGeometry:v36 indexPath:&v26];
      }

      else
      {
        LOBYTE(v22) = [(PXAssetsTilingLayout *)self _getVideoOverlayTileIdentifier:&v30 outGeometry:geometry group:group userData:data forContentTileGeometry:v36 indexPath:&v26];
      }
    }

    else
    {
      if (v19 <= 6332435)
      {
        if (v19 == 6332434)
        {
          v26 = v20;
          v27 = v17;
          v28 = v16;
          v29 = v18;
          LOBYTE(v22) = [(PXAssetsTilingLayout *)self _getSelectionBadgeTileIdentifier:&v30 outGeometry:geometry group:group userData:data forContentTileGeometry:v36 indexPath:&v26];
          return v22;
        }

        if (v19 == 6332435)
        {
          v26 = v20;
          v27 = v17;
          v28 = v16;
          v29 = v18;
          LOBYTE(v22) = [(PXAssetsTilingLayout *)self _getOverlayBadgeTileIdentifier:&v30 outGeometry:geometry group:group userData:data forContentTileGeometry:v36 indexPath:&v26];
          return v22;
        }

        goto LABEL_23;
      }

      v26 = v20;
      v27 = v17;
      v28 = v16;
      v29 = v18;
      if (v19 == 6332436)
      {
        LOBYTE(v22) = [(PXAssetsTilingLayout *)self _getDimmingTileIdentifier:&v30 outGeometry:geometry group:group userData:data forContentTileGeometry:v36 indexPath:&v26];
      }

      else
      {
        LOBYTE(v22) = [(PXAssetsTilingLayout *)self _getPlayButtonTileIdentifier:&v30 outGeometry:geometry group:group userData:data forContentTileGeometry:v36 indexPath:&v26];
      }
    }
  }

  return v22;
}

- (void)enumerateAccessoryTilesForContentTileWithIndexPath:(PXSimpleIndexPath *)path geometry:(const PXTileGeometry *)geometry withOptions:(id)options usingBlock:(id)block
{
  optionsCopy = options;
  blockCopy = block;
  v184 = 0;
  v185 = &v184;
  v186 = 0x2020000000;
  v187 = 0;
  v178 = 0;
  v179 = &v178;
  v180 = 0x7810000000;
  v181 = &unk_1A561E057;
  memset(v182, 0, sizeof(v182));
  v183 = 0;
  v173 = 0;
  v174 = &v173;
  v175 = 0xE010000000;
  v176 = &unk_1A561E057;
  memset(v177, 0, sizeof(v177));
  v169 = 0;
  v170 = &v169;
  v171 = 0x2020000000;
  v172 = 0;
  v163 = 0;
  v164 = &v163;
  v165 = 0x3032000000;
  v166 = __Block_byref_object_copy__216026;
  v167 = __Block_byref_object_dispose__216027;
  v168 = 0;
  obj = 0;
  v12 = *&path->item;
  v144 = *&path->dataSourceIdentifier;
  v145 = v12;
  v13 = [(PXAssetsTilingLayout *)self _getSelectionBadgeTileIdentifier:v182 outGeometry:v177 group:&v172 userData:&obj forContentTileGeometry:geometry indexPath:&v144];
  objc_storeStrong(&v168, obj);
  if (v13)
  {
    v14 = v170[3];
    v15 = v164[5];
    v16 = blockCopy[2];
    v17 = *(v179 + 5);
    v158 = *(v179 + 4);
    v159 = v17;
    v160 = *(v179 + 6);
    v161 = v179[14];
    v18 = *(v179 + 3);
    v156 = *(v179 + 2);
    v157 = v18;
    v19 = *(v174 + 11);
    v152 = *(v174 + 10);
    v153 = v19;
    v20 = *(v174 + 13);
    v154 = *(v174 + 12);
    v155 = v20;
    v21 = *(v174 + 7);
    v148 = *(v174 + 6);
    v149 = v21;
    v22 = *(v174 + 9);
    v150 = *(v174 + 8);
    v151 = v22;
    v23 = *(v174 + 3);
    v144 = *(v174 + 2);
    v145 = v23;
    v24 = *(v174 + 5);
    v146 = *(v174 + 4);
    v147 = v24;
    v16(blockCopy, &v156, &v144, v14, v15, v185 + 3);
  }

  v25 = v185;
  if ((v185[3] & 1) == 0)
  {
    v26 = v164;
    v143 = 0;
    v27 = *&path->item;
    v144 = *&path->dataSourceIdentifier;
    v145 = v27;
    v28 = [(PXAssetsTilingLayout *)self _getDimmingTileIdentifier:v179 + 4 outGeometry:v174 + 4 group:v170 + 3 userData:&v143 forContentTileGeometry:geometry indexPath:&v144];
    objc_storeStrong(v26 + 5, v143);
    v25 = v185;
    if (v28)
    {
      v29 = v170[3];
      v30 = v164[5];
      v31 = blockCopy[2];
      v32 = *(v179 + 5);
      v158 = *(v179 + 4);
      v159 = v32;
      v160 = *(v179 + 6);
      v161 = v179[14];
      v33 = *(v179 + 3);
      v156 = *(v179 + 2);
      v157 = v33;
      v34 = *(v174 + 11);
      v152 = *(v174 + 10);
      v153 = v34;
      v35 = *(v174 + 13);
      v154 = *(v174 + 12);
      v155 = v35;
      v36 = *(v174 + 7);
      v148 = *(v174 + 6);
      v149 = v36;
      v37 = *(v174 + 9);
      v150 = *(v174 + 8);
      v151 = v37;
      v38 = *(v174 + 3);
      v144 = *(v174 + 2);
      v145 = v38;
      v39 = *(v174 + 5);
      v146 = *(v174 + 4);
      v147 = v39;
      v31(blockCopy, &v156, &v144, v29, v30, v185 + 3);
      v25 = v185;
    }
  }

  if ((v25[3] & 1) == 0)
  {
    v40 = v164;
    v142 = 0;
    v41 = *&path->item;
    v144 = *&path->dataSourceIdentifier;
    v145 = v41;
    v42 = [(PXAssetsTilingLayout *)self _getOverlayBadgeTileIdentifier:v179 + 4 outGeometry:v174 + 4 group:v170 + 3 userData:&v142 forContentTileGeometry:geometry indexPath:&v144];
    objc_storeStrong(v40 + 5, v142);
    v25 = v185;
    if (v42)
    {
      v43 = v170[3];
      v44 = v164[5];
      v45 = blockCopy[2];
      v46 = *(v179 + 5);
      v158 = *(v179 + 4);
      v159 = v46;
      v160 = *(v179 + 6);
      v161 = v179[14];
      v47 = *(v179 + 3);
      v156 = *(v179 + 2);
      v157 = v47;
      v48 = *(v174 + 11);
      v152 = *(v174 + 10);
      v153 = v48;
      v49 = *(v174 + 13);
      v154 = *(v174 + 12);
      v155 = v49;
      v50 = *(v174 + 7);
      v148 = *(v174 + 6);
      v149 = v50;
      v51 = *(v174 + 9);
      v150 = *(v174 + 8);
      v151 = v51;
      v52 = *(v174 + 3);
      v144 = *(v174 + 2);
      v145 = v52;
      v53 = *(v174 + 5);
      v146 = *(v174 + 4);
      v147 = v53;
      v45(blockCopy, &v156, &v144, v43, v44, v185 + 3);
      v25 = v185;
    }
  }

  if ((v25[3] & 1) == 0)
  {
    v54 = v164;
    v141 = 0;
    v55 = *&path->item;
    v144 = *&path->dataSourceIdentifier;
    v145 = v55;
    v56 = [(PXAssetsTilingLayout *)self _getPlayButtonTileIdentifier:v179 + 4 outGeometry:v174 + 4 group:v170 + 3 userData:&v141 forContentTileGeometry:geometry indexPath:&v144];
    objc_storeStrong(v54 + 5, v141);
    v25 = v185;
    if (v56)
    {
      v57 = v170[3];
      v58 = v164[5];
      v59 = blockCopy[2];
      v60 = *(v179 + 5);
      v158 = *(v179 + 4);
      v159 = v60;
      v160 = *(v179 + 6);
      v161 = v179[14];
      v61 = *(v179 + 3);
      v156 = *(v179 + 2);
      v157 = v61;
      v62 = *(v174 + 11);
      v152 = *(v174 + 10);
      v153 = v62;
      v63 = *(v174 + 13);
      v154 = *(v174 + 12);
      v155 = v63;
      v64 = *(v174 + 7);
      v148 = *(v174 + 6);
      v149 = v64;
      v65 = *(v174 + 9);
      v150 = *(v174 + 8);
      v151 = v65;
      v66 = *(v174 + 3);
      v144 = *(v174 + 2);
      v145 = v66;
      v67 = *(v174 + 5);
      v146 = *(v174 + 4);
      v147 = v67;
      v59(blockCopy, &v156, &v144, v57, v58, v185 + 3);
      v25 = v185;
    }
  }

  if ((v25[3] & 1) == 0)
  {
    v68 = v164;
    v140 = 0;
    v69 = *&path->item;
    v144 = *&path->dataSourceIdentifier;
    v145 = v69;
    v70 = [(PXAssetsTilingLayout *)self _getVideoOverlayTileIdentifier:v179 + 4 outGeometry:v174 + 4 group:v170 + 3 userData:&v140 forContentTileGeometry:geometry indexPath:&v144];
    objc_storeStrong(v68 + 5, v140);
    v25 = v185;
    if (v70)
    {
      v71 = v170[3];
      v72 = v164[5];
      v73 = blockCopy[2];
      v74 = *(v179 + 5);
      v158 = *(v179 + 4);
      v159 = v74;
      v160 = *(v179 + 6);
      v161 = v179[14];
      v75 = *(v179 + 3);
      v156 = *(v179 + 2);
      v157 = v75;
      v76 = *(v174 + 11);
      v152 = *(v174 + 10);
      v153 = v76;
      v77 = *(v174 + 13);
      v154 = *(v174 + 12);
      v155 = v77;
      v78 = *(v174 + 7);
      v148 = *(v174 + 6);
      v149 = v78;
      v79 = *(v174 + 9);
      v150 = *(v174 + 8);
      v151 = v79;
      v80 = *(v174 + 3);
      v144 = *(v174 + 2);
      v145 = v80;
      v81 = *(v174 + 5);
      v146 = *(v174 + 4);
      v147 = v81;
      v73(blockCopy, &v156, &v144, v71, v72, v185 + 3);
      v25 = v185;
    }
  }

  if ((v25[3] & 1) == 0)
  {
    v82 = v164;
    v139 = 0;
    v83 = *&path->item;
    v144 = *&path->dataSourceIdentifier;
    v145 = v83;
    v84 = [(PXAssetsTilingLayout *)self _getLoopingVideoOverlayTileIdentifier:v179 + 4 outGeometry:v174 + 4 group:v170 + 3 userData:&v139 forContentTileGeometry:geometry indexPath:&v144];
    objc_storeStrong(v82 + 5, v139);
    v25 = v185;
    if (v84)
    {
      v85 = v170[3];
      v86 = v164[5];
      v87 = blockCopy[2];
      v88 = *(v179 + 5);
      v158 = *(v179 + 4);
      v159 = v88;
      v160 = *(v179 + 6);
      v161 = v179[14];
      v89 = *(v179 + 3);
      v156 = *(v179 + 2);
      v157 = v89;
      v90 = *(v174 + 11);
      v152 = *(v174 + 10);
      v153 = v90;
      v91 = *(v174 + 13);
      v154 = *(v174 + 12);
      v155 = v91;
      v92 = *(v174 + 7);
      v148 = *(v174 + 6);
      v149 = v92;
      v93 = *(v174 + 9);
      v150 = *(v174 + 8);
      v151 = v93;
      v94 = *(v174 + 3);
      v144 = *(v174 + 2);
      v145 = v94;
      v95 = *(v174 + 5);
      v146 = *(v174 + 4);
      v147 = v95;
      v87(blockCopy, &v156, &v144, v85, v86, v185 + 3);
      v25 = v185;
    }
  }

  if ((v25[3] & 1) == 0)
  {
    v96 = v164;
    v138 = 0;
    v97 = *&path->item;
    v144 = *&path->dataSourceIdentifier;
    v145 = v97;
    v98 = [(PXAssetsTilingLayout *)self _getAnimatedImageOverlayTileIdentifier:v179 + 4 outGeometry:v174 + 4 group:v170 + 3 userData:&v138 forContentTileGeometry:geometry indexPath:&v144];
    objc_storeStrong(v96 + 5, v138);
    v25 = v185;
    if (v98)
    {
      v99 = v170[3];
      v100 = v164[5];
      v101 = blockCopy[2];
      v102 = *(v179 + 5);
      v158 = *(v179 + 4);
      v159 = v102;
      v160 = *(v179 + 6);
      v161 = v179[14];
      v103 = *(v179 + 3);
      v156 = *(v179 + 2);
      v157 = v103;
      v104 = *(v174 + 11);
      v152 = *(v174 + 10);
      v153 = v104;
      v105 = *(v174 + 13);
      v154 = *(v174 + 12);
      v155 = v105;
      v106 = *(v174 + 7);
      v148 = *(v174 + 6);
      v149 = v106;
      v107 = *(v174 + 9);
      v150 = *(v174 + 8);
      v151 = v107;
      v108 = *(v174 + 3);
      v144 = *(v174 + 2);
      v145 = v108;
      v109 = *(v174 + 5);
      v146 = *(v174 + 4);
      v147 = v109;
      v101(blockCopy, &v156, &v144, v99, v100, v185 + 3);
      v25 = v185;
    }
  }

  if ((v25[3] & 1) == 0)
  {
    v110 = v164;
    v137 = 0;
    v111 = *&path->item;
    v144 = *&path->dataSourceIdentifier;
    v145 = v111;
    v112 = [(PXAssetsTilingLayout *)self _getLivePhotoOverlayTileIdentifier:v179 + 4 outGeometry:v174 + 4 group:v170 + 3 userData:&v137 forContentTileGeometry:geometry indexPath:&v144];
    objc_storeStrong(v110 + 5, v137);
    if (v112)
    {
      v113 = v170[3];
      v114 = v164[5];
      v115 = blockCopy[2];
      v116 = *(v179 + 5);
      v158 = *(v179 + 4);
      v159 = v116;
      v160 = *(v179 + 6);
      v161 = v179[14];
      v117 = *(v179 + 3);
      v156 = *(v179 + 2);
      v157 = v117;
      v118 = *(v174 + 11);
      v152 = *(v174 + 10);
      v153 = v118;
      v119 = *(v174 + 13);
      v154 = *(v174 + 12);
      v155 = v119;
      v120 = *(v174 + 7);
      v148 = *(v174 + 6);
      v149 = v120;
      v121 = *(v174 + 9);
      v150 = *(v174 + 8);
      v151 = v121;
      v122 = *(v174 + 3);
      v144 = *(v174 + 2);
      v145 = v122;
      v123 = *(v174 + 5);
      v146 = *(v174 + 4);
      v147 = v123;
      v115(blockCopy, &v156, &v144, v113, v114, v185 + 3);
    }
  }

  additionalAccessoryTileKinds = [(PXAssetsTilingLayout *)self additionalAccessoryTileKinds];
  v127[0] = MEMORY[0x1E69E9820];
  v127[1] = 3221225472;
  v127[2] = __107__PXAssetsTilingLayout_enumerateAccessoryTilesForContentTileWithIndexPath_geometry_withOptions_usingBlock___block_invoke;
  v127[3] = &unk_1E7746190;
  v129 = &v184;
  v127[4] = self;
  v130 = &v178;
  v131 = &v173;
  v132 = &v169;
  v133 = &v163;
  geometryCopy = geometry;
  v125 = *&path->item;
  v135 = *&path->dataSourceIdentifier;
  v136 = v125;
  v126 = blockCopy;
  v128 = v126;
  [additionalAccessoryTileKinds enumerateIndexesUsingBlock:v127];

  _Block_object_dispose(&v163, 8);
  _Block_object_dispose(&v169, 8);
  _Block_object_dispose(&v173, 8);
  _Block_object_dispose(&v178, 8);
  _Block_object_dispose(&v184, 8);
}

void __107__PXAssetsTilingLayout_enumerateAccessoryTilesForContentTileWithIndexPath_geometry_withOptions_usingBlock___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v4 = *(a1 + 48);
  if ((*(*(v4 + 8) + 24) & 1) == 0)
  {
    v6 = *(a1 + 32);
    v7 = *(*(a1 + 56) + 8);
    v8 = *(*(a1 + 64) + 8);
    v9 = *(*(a1 + 72) + 8);
    v10 = *(*(a1 + 80) + 8);
    v43 = 0;
    v11 = *(a1 + 88);
    v12 = *(a1 + 112);
    v25 = *(a1 + 96);
    v26 = v12;
    v13 = [v6 getAdditionalAccessoryTileIdentifier:v7 + 32 outGeometry:v8 + 32 group:v9 + 24 userData:&v43 forTileKind:a2 contentTileGeometry:v11 indexPath:&v25];
    objc_storeStrong((v10 + 40), v43);
    v4 = *(a1 + 48);
    if (v13)
    {
      v14 = *(*(a1 + 56) + 8);
      v15 = *(*(a1 + 64) + 8);
      v16 = *(*(a1 + 40) + 16);
      v17 = *(v14 + 80);
      v39 = *(v14 + 64);
      v40 = v17;
      v41 = *(v14 + 96);
      v42 = *(v14 + 112);
      v18 = *(v14 + 48);
      v37 = *(v14 + 32);
      v38 = v18;
      v19 = v15[11];
      v33 = v15[10];
      v34 = v19;
      v20 = v15[13];
      v35 = v15[12];
      v36 = v20;
      v21 = v15[7];
      v29 = v15[6];
      v30 = v21;
      v22 = v15[9];
      v31 = v15[8];
      v32 = v22;
      v23 = v15[3];
      v25 = v15[2];
      v26 = v23;
      v24 = v15[5];
      v27 = v15[4];
      v28 = v24;
      v16();
      v4 = *(a1 + 48);
    }
  }

  if (*(*(v4 + 8) + 24) == 1)
  {
    *a3 = 1;
  }
}

- (void)adjustGeometry:(PXTileGeometry *)geometry forContentTileWithIndexPath:(PXSimpleIndexPath *)path
{
  hiddenIndexPaths = [(PXAssetsTilingLayout *)self hiddenIndexPaths];
  v7 = *&path->item;
  v8[0] = *&path->dataSourceIdentifier;
  v8[1] = v7;
  if ([hiddenIndexPaths containsIndexPath:v8])
  {
    geometry->hidden = 1;
  }
}

- (void)setFocusedIndexPath:(PXSimpleIndexPath *)path
{
  v3 = *&self->_focusedIndexPath.dataSourceIdentifier;
  v4 = *&self->_focusedIndexPath.item;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(*&path->dataSourceIdentifier, v3), vceqq_s64(*&path->item, v4)))) & 1) == 0)
  {
    v7 = *&path->item;
    *&self->_focusedIndexPath.dataSourceIdentifier = *&path->dataSourceIdentifier;
    *&self->_focusedIndexPath.item = v7;
    v18 = v4;
    v19 = v3;
    v8 = objc_alloc_init(PXTilingLayoutInvalidationContext);
    v9 = v8;
    v10 = *off_1E7721F68;
    if (v19.i64[0] != *off_1E7721F68 && v18.i64[0] != 0x7FFFFFFFFFFFFFFFLL && v18.i64[1] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v20 = xmmword_1A5380D20;
      v21 = v19;
      v22 = v18.i64[0];
      v23 = 0x7FFFFFFFFFFFFFFFLL;
      v24 = 0u;
      v25 = 0u;
      v26 = 0;
      [(PXTilingLayoutInvalidationContext *)v8 invalidateTileWithIdentifier:&v20];
    }

    dataSourceIdentifier = path->dataSourceIdentifier;
    item = path->item;
    if (path->dataSourceIdentifier != v10 && item != 0x7FFFFFFFFFFFFFFFLL && path->subitem == 0x7FFFFFFFFFFFFFFFLL)
    {
      section = path->section;
      v20 = xmmword_1A5380D20;
      v21.i64[0] = dataSourceIdentifier;
      v21.i64[1] = section;
      v22 = item;
      v23 = 0x7FFFFFFFFFFFFFFFLL;
      v24 = 0u;
      v25 = 0u;
      v26 = 0;
      [(PXTilingLayoutInvalidationContext *)v9 invalidateTileWithIdentifier:&v20];
    }

    [(PXTilingLayout *)self invalidateLayoutWithContext:v9, v18.i64[0]];
  }
}

- (void)setHighlightedIndexPath:(PXSimpleIndexPath *)path
{
  v3 = *&self->_highlightedIndexPath.dataSourceIdentifier;
  v4 = *&self->_highlightedIndexPath.item;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(*&path->dataSourceIdentifier, v3), vceqq_s64(*&path->item, v4)))) & 1) == 0)
  {
    v7 = *&path->item;
    *&self->_highlightedIndexPath.dataSourceIdentifier = *&path->dataSourceIdentifier;
    *&self->_highlightedIndexPath.item = v7;
    v18 = v4;
    v19 = v3;
    v8 = objc_alloc_init(PXTilingLayoutInvalidationContext);
    v9 = v8;
    v10 = *off_1E7721F68;
    if (v19.i64[0] != *off_1E7721F68 && v18.i64[0] != 0x7FFFFFFFFFFFFFFFLL && v18.i64[1] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v20 = xmmword_1A5380D20;
      v21 = v19;
      v22 = v18.i64[0];
      v23 = 0x7FFFFFFFFFFFFFFFLL;
      v24 = 0u;
      v25 = 0u;
      v26 = 0;
      [(PXTilingLayoutInvalidationContext *)v8 invalidateTileWithIdentifier:&v20];
    }

    dataSourceIdentifier = path->dataSourceIdentifier;
    item = path->item;
    if (path->dataSourceIdentifier != v10 && item != 0x7FFFFFFFFFFFFFFFLL && path->subitem == 0x7FFFFFFFFFFFFFFFLL)
    {
      section = path->section;
      v20 = xmmword_1A5380D20;
      v21.i64[0] = dataSourceIdentifier;
      v21.i64[1] = section;
      v22 = item;
      v23 = 0x7FFFFFFFFFFFFFFFLL;
      v24 = 0u;
      v25 = 0u;
      v26 = 0;
      [(PXTilingLayoutInvalidationContext *)v9 invalidateTileWithIdentifier:&v20];
    }

    [(PXTilingLayout *)self invalidateLayoutWithContext:v9, v18.i64[0]];
  }
}

- (void)setAnimatedOverlayBehavior:(unint64_t)behavior
{
  if (self->_animatedOverlayBehavior != behavior)
  {
    self->_animatedOverlayBehavior = behavior;
    [(PXAssetsTilingLayout *)self _invalidateAllAnimatedOverlayTiles];
  }
}

- (void)setDraggingIndexPaths:(id)paths
{
  pathsCopy = paths;
  if (self->_draggingIndexPaths != pathsCopy)
  {
    v6 = pathsCopy;
    objc_storeStrong(&self->_draggingIndexPaths, paths);
    [(PXAssetsTilingLayout *)self _invalidateAllSelectionTiles];
    pathsCopy = v6;
  }
}

- (void)setSelectedIndexPaths:(id)paths
{
  pathsCopy = paths;
  if (self->_selectedIndexPaths != pathsCopy)
  {
    v6 = pathsCopy;
    objc_storeStrong(&self->_selectedIndexPaths, paths);
    [(PXAssetsTilingLayout *)self _invalidateAllSelectionTiles];
    pathsCopy = v6;
  }
}

- (void)setSelectionBadgeOptions:(unint64_t)options
{
  if (self->_selectionBadgeOptions != options)
  {
    self->_selectionBadgeOptions = options;
    [(PXAssetsTilingLayout *)self _invalidateAllSelectionTiles];
  }
}

- (void)setHiddenIndexPaths:(id)paths
{
  pathsCopy = paths;
  hiddenIndexPaths = self->_hiddenIndexPaths;
  if (hiddenIndexPaths != pathsCopy && ([(PXIndexPathSet *)hiddenIndexPaths isEqual:pathsCopy]& 1) == 0)
  {
    v8 = objc_alloc_init(PXTilingLayoutInvalidationContext);
    v9 = self->_hiddenIndexPaths;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __44__PXAssetsTilingLayout_setHiddenIndexPaths___block_invoke;
    v19[3] = &unk_1E7746140;
    v10 = v8;
    v20 = v10;
    [(PXIndexPathSet *)v9 enumerateAllIndexPathsUsingBlock:v19];
    objc_storeStrong(&self->_hiddenIndexPaths, paths);
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __44__PXAssetsTilingLayout_setHiddenIndexPaths___block_invoke_2;
    v15 = &unk_1E7746168;
    v17 = v10;
    v18 = a2;
    selfCopy = self;
    v11 = v10;
    [(PXIndexPathSet *)pathsCopy enumerateAllIndexPathsUsingBlock:&v12];
    [(PXTilingLayout *)self invalidateLayoutWithContext:v11, v12, v13, v14, v15, selfCopy];
  }
}

uint64_t __44__PXAssetsTilingLayout_setHiddenIndexPaths___block_invoke(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 32);
  v5 = *a2;
  v6 = a2[1];
  v17 = xmmword_1A5380D20;
  v18 = v5;
  v19 = v6;
  v20 = 0u;
  v21 = 0u;
  v22 = 0;
  [v4 invalidateTileWithIdentifier:&v17];
  v7 = *(a1 + 32);
  v8 = *a2;
  v9 = a2[1];
  v17 = xmmword_1A5381250;
  v18 = v8;
  v19 = v9;
  v20 = 0u;
  v21 = 0u;
  v22 = 0;
  [v7 invalidateTileWithIdentifier:&v17];
  v10 = *(a1 + 32);
  v11 = *a2;
  v12 = a2[1];
  v17 = xmmword_1A5381240;
  v18 = v11;
  v19 = v12;
  v20 = 0u;
  v21 = 0u;
  v22 = 0;
  [v10 invalidateTileWithIdentifier:&v17];
  v13 = *(a1 + 32);
  v14 = *a2;
  v15 = a2[1];
  v17 = xmmword_1A5381230;
  v18 = v14;
  v19 = v15;
  v20 = 0u;
  v21 = 0u;
  v22 = 0;
  return [v13 invalidateTileWithIdentifier:&v17];
}

uint64_t __44__PXAssetsTilingLayout_setHiddenIndexPaths___block_invoke_2(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 40);
  v5 = *a2;
  v6 = a2[1];
  v17 = xmmword_1A5380D20;
  v18 = v5;
  v19 = v6;
  v20 = 0u;
  v21 = 0u;
  v22 = 0;
  [v4 invalidateTileWithIdentifier:&v17];
  v7 = *(a1 + 40);
  v8 = *a2;
  v9 = a2[1];
  v17 = xmmword_1A5381250;
  v18 = v8;
  v19 = v9;
  v20 = 0u;
  v21 = 0u;
  v22 = 0;
  [v7 invalidateTileWithIdentifier:&v17];
  v10 = *(a1 + 40);
  v11 = *a2;
  v12 = a2[1];
  v17 = xmmword_1A5381240;
  v18 = v11;
  v19 = v12;
  v20 = 0u;
  v21 = 0u;
  v22 = 0;
  [v10 invalidateTileWithIdentifier:&v17];
  v13 = *(a1 + 40);
  v14 = *a2;
  v15 = a2[1];
  v17 = xmmword_1A5381230;
  v18 = v14;
  v19 = v15;
  v20 = 0u;
  v21 = 0u;
  v22 = 0;
  return [v13 invalidateTileWithIdentifier:&v17];
}

- (CGSize)_preferredSelectionBadgeSize
{
  +[PXSelectionBadgeUIViewTile preferredSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setBadgeOptions:(unint64_t)options
{
  if (self->_badgeOptions != options)
  {
    self->_badgeOptions = options;
    v5 = objc_alloc_init(PXOverlayBadgeTileUserData);
    overlayBadgeTileUserData = self->_overlayBadgeTileUserData;
    self->_overlayBadgeTileUserData = v5;

    [(PXOverlayBadgeTileUserData *)self->_overlayBadgeTileUserData setBadgeOptions:[(PXAssetsTilingLayout *)self badgeOptions]];
    v7 = objc_alloc_init(PXTilingLayoutInvalidationContext);
    [(PXTilingLayoutInvalidationContext *)v7 invalidateAllTiles];
    [(PXTilingLayout *)self invalidateLayoutWithContext:v7];
  }
}

- (PXAssetsTilingLayout)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXAssetsTilingLayout.m" lineNumber:85 description:{@"%@ is not available", v5}];

  abort();
}

- (PXAssetsTilingLayout)initWithDataSource:(id)source
{
  sourceCopy = source;
  v28.receiver = self;
  v28.super_class = PXAssetsTilingLayout;
  v6 = [(PXTilingLayout *)&v28 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataSource, source);
    v8 = objc_alloc_init(PXSelectionBadgeTileUserData);
    unselectedUserData = v7->__unselectedUserData;
    v7->__unselectedUserData = v8;

    v10 = objc_alloc_init(PXSelectionBadgeTileUserData);
    selectedUserData = v7->__selectedUserData;
    v7->__selectedUserData = v10;

    [(PXSelectionBadgeTileUserData *)v7->__selectedUserData setSelected:1];
    v12 = objc_alloc_init(off_1E7721968);
    systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
    v14 = [systemBackgroundColor colorWithAlphaComponent:0.25];
    [v12 setBackgroundColor:v14];

    v15 = [PXBasicTileUserData userDataWithViewSpec:v12];
    selectedDimmingUserData = v7->__selectedDimmingUserData;
    v7->__selectedDimmingUserData = v15;

    v17 = objc_alloc_init(off_1E7721968);
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    v19 = [labelColor colorWithAlphaComponent:0.4];
    [v17 setBackgroundColor:v19];

    v20 = [PXBasicTileUserData userDataWithViewSpec:v17];
    highlightedDimmingUserData = v7->__highlightedDimmingUserData;
    v7->__highlightedDimmingUserData = v20;

    v22 = objc_alloc_init(off_1E7721968);
    systemBackgroundColor2 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    v24 = [systemBackgroundColor2 colorWithAlphaComponent:0.5];
    [v22 setBackgroundColor:v24];

    v25 = [PXBasicTileUserData userDataWithViewSpec:v22];
    draggingDimmingUserData = v7->__draggingDimmingUserData;
    v7->__draggingDimmingUserData = v25;

    v7->_animatedOverlayBehavior = 0;
  }

  return v7;
}

@end