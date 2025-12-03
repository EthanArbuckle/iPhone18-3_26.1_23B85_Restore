@interface PUSingleAssetLayout
- (CGRect)assetRect;
- (CGRect)contentBounds;
- (CGRect)contentsRect;
- (UIEdgeInsets)cropInsets;
- (id)layoutInfoForTileWithIndexPath:(id)path kind:(id)kind;
- (id)layoutInfosForTilesInRect:(CGRect)rect;
- (void)_invalidateSingleAssetLayout;
- (void)setAssetRect:(CGRect)rect;
- (void)setContentsRect:(CGRect)rect;
- (void)setCornerCurve:(id)curve;
- (void)setCornerMask:(unint64_t)mask;
- (void)setCornerRadius:(double)radius;
- (void)setCropInsets:(UIEdgeInsets)insets;
@end

@implementation PUSingleAssetLayout

- (CGRect)contentsRect
{
  x = self->_contentsRect.origin.x;
  y = self->_contentsRect.origin.y;
  width = self->_contentsRect.size.width;
  height = self->_contentsRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (UIEdgeInsets)cropInsets
{
  top = self->_cropInsets.top;
  left = self->_cropInsets.left;
  bottom = self->_cropInsets.bottom;
  right = self->_cropInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGRect)assetRect
{
  x = self->_assetRect.origin.x;
  y = self->_assetRect.origin.y;
  width = self->_assetRect.size.width;
  height = self->_assetRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)layoutInfoForTileWithIndexPath:(id)path kind:(id)kind
{
  pathCopy = path;
  kindCopy = kind;
  assetReference = [(PUSingleAssetLayout *)self assetReference];
  indexPath = [assetReference indexPath];
  [(PUSingleAssetLayout *)self assetRect];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [(PUSingleAssetLayout *)self cornerRadius];
  v48 = v18;
  cornerCurve = [(PUSingleAssetLayout *)self cornerCurve];
  cornerMask = [(PUSingleAssetLayout *)self cornerMask];
  [(PUSingleAssetLayout *)self cropInsets];
  v46 = v22;
  v47 = v21;
  v44 = v24;
  v45 = v23;
  [(PUSingleAssetLayout *)self contentsRect];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  if ([pathCopy isEqual:indexPath] && objc_msgSend(kindCopy, "isEqual:", @"PUTileKindItemContent") && (v51.origin.x = v11, v51.origin.y = v13, v51.size.width = v15, v51.size.height = v17, !CGRectIsInfinite(v51)) && (v52.origin.x = v11, v52.origin.y = v13, v52.size.width = v15, v52.size.height = v17, !CGRectIsNull(v52)))
  {
    v35 = [(PUTilingLayout *)self tileIdentifierForTileWithIndexPath:pathCopy kind:kindCopy];
    v36 = [PUCroppedTileLayoutInfo alloc];
    v53.origin.x = v11;
    v53.origin.y = v13;
    v53.size.width = v15;
    v53.size.height = v17;
    MidX = CGRectGetMidX(v53);
    v54.origin.x = v11;
    v54.origin.y = v13;
    v54.size.width = v15;
    v54.size.height = v17;
    MidY = CGRectGetMidY(v54);
    coordinateSystem = [(PUTilingLayout *)self coordinateSystem];
    v39 = *MEMORY[0x1E69DDCE0];
    v40 = *(MEMORY[0x1E69DDCE0] + 8);
    v41 = *(MEMORY[0x1E69DDCE0] + 24);
    v42 = *(MEMORY[0x1E695EFD0] + 16);
    v49[0] = *MEMORY[0x1E695EFD0];
    v49[1] = v42;
    v49[2] = *(MEMORY[0x1E695EFD0] + 32);
    v33 = [(PUCroppedTileLayoutInfo *)v36 initWithTileIdentifier:v35 center:cornerCurve size:cornerMask cropInsets:v49 normalizedLegibilityInsets:coordinateSystem alpha:MidX cornerRadius:MidY cornerCurve:v15 cornerMask:v17 transform:v47 zPosition:v46 contentsRect:v45 coordinateSystem:v44, v39, v40, v41, 0x3FF0000000000000, v48, 0, v26, v28, v30, v32];
  }

  else
  {
    v33 = 0;
  }

  return v33;
}

- (id)layoutInfosForTilesInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v19[1] = *MEMORY[0x1E69E9840];
  [(PUSingleAssetLayout *)self assetRect];
  v21.origin.x = v8;
  v21.origin.y = v9;
  v21.size.width = v10;
  v21.size.height = v11;
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  if (CGRectIntersectsRect(v20, v21))
  {
    assetReference = [(PUSingleAssetLayout *)self assetReference];
    indexPath = [assetReference indexPath];
    v14 = [(PUSingleAssetLayout *)self layoutInfoForTileWithIndexPath:indexPath kind:@"PUTileKindItemContent"];
    v19[0] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  }

  else
  {
    v15 = 0;
  }

  if (v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = MEMORY[0x1E695E0F0];
  }

  v17 = v16;

  return v16;
}

- (CGRect)contentBounds
{
  v2 = *MEMORY[0x1E695EFF8];
  v3 = *(MEMORY[0x1E695EFF8] + 8);
  [(PUTilingLayout *)self visibleRect];
  v6 = v2;
  v7 = v3;
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (void)setCornerMask:(unint64_t)mask
{
  if (self->_cornerMask != mask)
  {
    self->_cornerMask = mask;
    [(PUSingleAssetLayout *)self _invalidateSingleAssetLayout];
  }
}

- (void)setCornerCurve:(id)curve
{
  curveCopy = curve;
  v5 = curveCopy;
  if (self->_cornerCurve != curveCopy)
  {
    v8 = curveCopy;
    curveCopy = [curveCopy isEqualToString:?];
    v5 = v8;
    if ((curveCopy & 1) == 0)
    {
      v6 = [v8 copy];
      cornerCurve = self->_cornerCurve;
      self->_cornerCurve = v6;

      curveCopy = [(PUSingleAssetLayout *)self _invalidateSingleAssetLayout];
      v5 = v8;
    }
  }

  MEMORY[0x1EEE66BB8](curveCopy, v5);
}

- (void)setCornerRadius:(double)radius
{
  if (self->_cornerRadius != radius)
  {
    self->_cornerRadius = radius;
    [(PUSingleAssetLayout *)self _invalidateSingleAssetLayout];
  }
}

- (void)setContentsRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  p_contentsRect = &self->_contentsRect;
  if (!CGRectEqualToRect(rect, self->_contentsRect))
  {
    p_contentsRect->origin.x = x;
    p_contentsRect->origin.y = y;
    p_contentsRect->size.width = width;
    p_contentsRect->size.height = height;

    [(PUSingleAssetLayout *)self _invalidateSingleAssetLayout];
  }
}

- (void)setCropInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_cropInsets.top), vceqq_f64(v4, *&self->_cropInsets.bottom)))) & 1) == 0)
  {
    self->_cropInsets = insets;
    [(PUSingleAssetLayout *)self _invalidateSingleAssetLayout];
  }
}

- (void)setAssetRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  p_assetRect = &self->_assetRect;
  if (!CGRectEqualToRect(rect, self->_assetRect))
  {
    p_assetRect->origin.x = x;
    p_assetRect->origin.y = y;
    p_assetRect->size.width = width;
    p_assetRect->size.height = height;

    [(PUSingleAssetLayout *)self _invalidateSingleAssetLayout];
  }
}

- (void)_invalidateSingleAssetLayout
{
  v5 = objc_alloc_init(PUTilingLayoutInvalidationContext);
  assetReference = [(PUSingleAssetLayout *)self assetReference];
  indexPath = [assetReference indexPath];
  if (indexPath)
  {
    [(PUTilingLayoutInvalidationContext *)v5 invalidateTileWithIndexPath:indexPath kind:@"PUTileKindItemContent"];
  }

  [(PUTilingLayout *)self invalidateLayoutWithContext:v5];
}

@end