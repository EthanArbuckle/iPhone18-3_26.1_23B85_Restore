@interface PTScanlineMask_FocusBlurMap
- (CGSize)normalizedTileSize;
- (CGSize)placementTileSize;
- (PTScanlineMask_FocusBlurMap)initWithFocusBlurMap:(id)map region:(id)region;
- (_NSRange)pixelRangeForTileRangeX:(_NSRange)x;
- (_NSRange)pixelRangeForTileRangeY:(_NSRange)y;
- (id)scanlineIter;
- (void)_recalculatePlacementTileSize;
- (void)setPlacement:(CGRect)placement;
@end

@implementation PTScanlineMask_FocusBlurMap

- (PTScanlineMask_FocusBlurMap)initWithFocusBlurMap:(id)map region:(id)region
{
  mapCopy = map;
  regionCopy = region;
  v12.receiver = self;
  v12.super_class = PTScanlineMask_FocusBlurMap;
  v9 = [(PTScanlineMask_FocusBlurMap *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_map, map);
    objc_storeStrong(&v10->_region, region);
  }

  return v10;
}

- (id)scanlineIter
{
  v2 = [[PTScanlineIter_FocusBlurMap alloc] initWithMask:self];

  return v2;
}

- (void)setPlacement:(CGRect)placement
{
  v4.receiver = self;
  v4.super_class = PTScanlineMask_FocusBlurMap;
  [(PTScanlineMask *)&v4 setPlacement:placement.origin.x, placement.origin.y, placement.size.width, placement.size.height];
  [(PTScanlineMask_FocusBlurMap *)self _recalculatePlacementTileSize];
}

- (void)_recalculatePlacementTileSize
{
  [(PTScanlineMask *)self placement];
  v4 = v3;
  tileWidth = [(PTFocusBlurMap *)self->_map tileWidth];
  self->_placementTileSize.width = v4 * (tileWidth / [(PTFocusBlurMap *)self->_map inputWidth]);
  [(PTScanlineMask *)self placement];
  v7 = v6;
  tileHeight = [(PTFocusBlurMap *)self->_map tileHeight];
  self->_placementTileSize.height = v7 * (tileHeight / [(PTFocusBlurMap *)self->_map inputHeight]);
}

- (_NSRange)pixelRangeForTileRangeX:(_NSRange)x
{
  length = x.length;
  location = x.location;
  width = self->_placementTileSize.width;
  [(PTScanlineMask *)self placement];
  MinX = CGRectGetMinX(v13);
  [(PTScanlineMask *)self placement];
  MaxX = CGRectGetMaxX(v14);
  v9 = MinX + location * width;
  if (MaxX < v9)
  {
    v9 = MaxX;
  }

  v10 = v9;
  if (MaxX >= v9 + length * width)
  {
    MaxX = v9 + length * width;
  }

  v11 = (MaxX - v9);
  result.length = v11;
  result.location = v10;
  return result;
}

- (_NSRange)pixelRangeForTileRangeY:(_NSRange)y
{
  length = y.length;
  location = y.location;
  height = self->_placementTileSize.height;
  [(PTScanlineMask *)self placement];
  MinY = CGRectGetMinY(v13);
  [(PTScanlineMask *)self placement];
  MaxY = CGRectGetMaxY(v14);
  v9 = MinY + location * height;
  if (MaxY < v9)
  {
    v9 = MaxY;
  }

  v10 = v9;
  if (MaxY >= v9 + length * height)
  {
    MaxY = v9 + length * height;
  }

  v11 = (MaxY - v9);
  result.length = v11;
  result.location = v10;
  return result;
}

- (CGSize)normalizedTileSize
{
  objc_copyStruct(v4, &self->_normalizedTileSize, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)placementTileSize
{
  objc_copyStruct(v4, &self->_placementTileSize, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

@end