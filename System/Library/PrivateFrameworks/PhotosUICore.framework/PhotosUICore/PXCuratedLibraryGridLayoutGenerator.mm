@interface PXCuratedLibraryGridLayoutGenerator
- (CGSize)estimatedSize;
- (CGSize)size;
- (PXCuratedLibraryGridLayoutGenerator)initWithMetrics:(id)a3;
- (_NSRange)geometriesRangeCoveringRect:(CGRect)a3;
- (_PXCornerSpriteIndexes)cornerSpriteIndexes;
- (void)_prepareGeometriesBufferForCount:(unint64_t)a3;
- (void)_prepareIfNeeded;
- (void)dealloc;
- (void)getGeometries:(_PXLayoutGeometry *)a3 inRange:(_NSRange)a4 withKind:(int64_t)a5;
- (void)invalidate;
@end

@implementation PXCuratedLibraryGridLayoutGenerator

- (_PXCornerSpriteIndexes)cornerSpriteIndexes
{
  p_cornerSpriteIndexes = &self->_cornerSpriteIndexes;
  v3 = *&self->_cornerSpriteIndexes.topLeft;
  v4 = *&p_cornerSpriteIndexes->bottomLeft;
  result.bottomLeft = v4;
  result.bottomRight = HIDWORD(v4);
  result.topLeft = v3;
  result.topRight = HIDWORD(v3);
  return result;
}

- (_NSRange)geometriesRangeCoveringRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(PXCuratedLibraryGridLayoutGenerator *)self _prepareIfNeeded];
  v8 = [(PXCuratedLibraryGridLayoutGenerator *)self itemCount];
  v9 = v8 - 1;
  if (v8 < 1)
  {
    goto LABEL_8;
  }

  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  v10 = vcvtmd_s64_f64((CGRectGetMinY(v21) - self->_insets.top + self->_interItemSpacing) / (self->_interItemSpacing + self->_itemSize.height));
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  v11 = (ceil((CGRectGetMaxY(v22) - self->_insets.top) / (self->_itemSize.height + self->_interItemSpacing)) + -1.0);
  v12 = [(PXCuratedLibraryGridLayoutGenerator *)self metrics];
  v13 = [v12 numberOfColumns];

  v14 = v13 * v10;
  if ((v13 * v10) >= v9)
  {
    v14 = v9;
  }

  v15 = v14 & ~(v14 >> 63);
  v16 = v13 + v13 * v11 - 1;
  if (v16 >= v9)
  {
    v16 = v9;
  }

  v17 = v16 < v15;
  v18 = v16 - v15;
  if (v17)
  {
LABEL_8:
    v19 = 0;
    v15 = 0;
  }

  else
  {
    v19 = v18 + 1;
  }

  result.length = v19;
  result.location = v15;
  return result;
}

- (void)_prepareGeometriesBufferForCount:(unint64_t)a3
{
  if (self->_geometriesCount < a3)
  {
    self->_geometries = malloc_type_realloc(self->_geometries, 152 * a3, 0x100004050011849uLL);
    self->_geometriesCount = a3;
  }
}

- (void)_prepareIfNeeded
{
  if (!self->_isPrepared)
  {
    self->_isPrepared = 1;
    v4 = [(PXCuratedLibraryGridLayoutGenerator *)self itemCount];
    v5 = [(PXCuratedLibraryGridLayoutGenerator *)self keyItemIndex];
    if (v4 <= 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = v4;
    }

    v7 = v6 - 1;
    [(PXCuratedLibraryGridLayoutGenerator *)self _prepareGeometriesBufferForCount:v4];
    v30 = [(PXCuratedLibraryGridLayoutGenerator *)self metrics];
    v8 = [v30 numberOfColumns];
    [v30 referenceSize];
    top = self->_insets.top;
    height = self->_itemSize.height;
    interItemSpacing = self->_interItemSpacing;
    if (v5 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v13 = v4;
    }

    else
    {
      v13 = v7;
    }

    bottom = self->_insets.bottom;
    v27 = v13;
    if (v5 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = v9 - self->_insets.left - self->_insets.right;
      [v30 headerAspectRatio];
      top = top + v14 / v15 + self->_interItemSpacing;
    }

    v16 = [v30 numberOfPrecedingAssets];
    if (v16 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v29 = 0;
    }

    else
    {
      v29 = v16 % v8;
    }

    v26 = height + interItemSpacing;
    if (v4 >= 1)
    {
      if (!v5)
      {
        PXRectGetCenter();
      }

      PXRectGetCenter();
    }

    v17 = (v8 + v29 + v27 - 1) / v8;
    v18 = 0.0;
    if (v17 > 0)
    {
      v18 = self->_interItemSpacing;
    }

    v19 = bottom + top + v17 * v26 - v18;
    [v30 referenceSize];
    self->_actualSize.width = v20;
    self->_actualSize.height = v19;
    if ((v29 + v27) % v8 <= 0)
    {
      v21 = 0.0;
    }

    else
    {
      v21 = v26;
    }

    self->_lastFullRowBottomEdge = v19 - bottom - v21;
    if (v5 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v22 = v8 - v29;
    }

    else
    {
      v22 = v5;
    }

    if (v5 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v23 = v29;
    }

    else
    {
      v23 = v5;
    }

    self->_cornerSpriteIndexes.topLeft = v23;
    self->_cornerSpriteIndexes.topRight = v22;
    if (v17)
    {
      self->_cornerSpriteIndexes.bottomLeft = (v17 - 1) * v8 - v29;
      self->_cornerSpriteIndexes.bottomRight = v4;
      if (v5 <= ((v17 - 1) * v8 - v29))
      {
        self->_cornerSpriteIndexes.bottomLeft = (v17 - 1) * v8 - v29 + 1;
      }

      v24 = v30;
      if (v5 <= v4)
      {
        v25 = (v4 - 1);
        self->_cornerSpriteIndexes.bottomRight = v25;
        if (v5 == v25)
        {
          self->_cornerSpriteIndexes.bottomRight = v4 - 2;
        }
      }
    }

    else
    {
      self->_cornerSpriteIndexes.bottomLeft = v23;
      self->_cornerSpriteIndexes.bottomRight = v23;
      v24 = v30;
    }
  }
}

- (void)getGeometries:(_PXLayoutGeometry *)a3 inRange:(_NSRange)a4 withKind:(int64_t)a5
{
  if (!a5)
  {
    length = a4.length;
    location = a4.location;
    v10 = a4.location + a4.length;
    if (a4.location + a4.length > [(PXCuratedLibraryGridLayoutGenerator *)self itemCount])
    {
      v21 = [MEMORY[0x1E696AAA8] currentHandler];
      [v21 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryGridLayoutGenerator.m" lineNumber:143 description:@"the range must be <= to the number of itemCount"];
    }

    [(PXCuratedLibraryGridLayoutGenerator *)self _prepareIfNeeded];
    if (location < v10)
    {
      v11 = location;
      do
      {
        v12 = &a3[v11];
        v13 = &self->_geometries[v11];
        v15 = *&v13->var6.origin.y;
        v14 = *&v13->var6.size.height;
        height = v13->var7.height;
        *&v12->var5 = *&v13->var5;
        v17 = *&v13->var1.y;
        *&v12->var0 = *&v13->var0;
        *&v12->var1.y = v17;
        v18 = *&v13->var2.height;
        v19 = *&v13->var3.b;
        v20 = *&v13->var3.ty;
        *&v12->var3.d = *&v13->var3.d;
        *&v12->var3.ty = v20;
        *&v12->var2.height = v18;
        *&v12->var3.b = v19;
        v12->var7.height = height;
        *&v12->var6.origin.y = v15;
        *&v12->var6.size.height = v14;
        v12->var5 = 0;
        ++v11;
        --length;
      }

      while (length);
    }
  }
}

- (CGSize)size
{
  [(PXCuratedLibraryGridLayoutGenerator *)self _prepareIfNeeded];
  width = self->_actualSize.width;
  height = self->_actualSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)estimatedSize
{
  v3 = [(PXCuratedLibraryGridLayoutGenerator *)self metrics];
  v4 = [v3 numberOfColumns];
  __asm { FMOV            V4.2D, #3.0 }

  _Q4.f64[0] = v4;
  v10 = vmlaq_f64(vdupq_lane_s64(COERCE__INT64(-self->_interItemSpacing), 0), vaddq_f64(vdupq_lane_s64(*&self->_interItemSpacing, 0), self->_itemSize), _Q4);
  v13 = vaddq_f64(*&self->_insets.bottom, vaddq_f64(*&self->_insets.top, vmaxnmq_f64(vextq_s8(v10, v10, 8uLL), 0)));

  v11 = v13.f64[1];
  v12 = v13.f64[0];
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)invalidate
{
  v3.receiver = self;
  v3.super_class = PXCuratedLibraryGridLayoutGenerator;
  [(PXCuratedLibraryGridLayoutGenerator *)&v3 invalidate];
  self->_isPrepared = 0;
}

- (void)dealloc
{
  free(self->_geometries);
  v3.receiver = self;
  v3.super_class = PXCuratedLibraryGridLayoutGenerator;
  [(PXCuratedLibraryGridLayoutGenerator *)&v3 dealloc];
}

- (PXCuratedLibraryGridLayoutGenerator)initWithMetrics:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = PXCuratedLibraryGridLayoutGenerator;
  v5 = [(PXCuratedLibraryGridLayoutGenerator *)&v24 initWithMetrics:v4];
  if (v5)
  {
    [v4 padding];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    [v4 referenceSize];
    v15 = v14 - v9 - v13;
    v16 = [v4 numberOfColumns];
    [v4 interitemSpacing];
    v18 = v17;
    v19 = [v4 style];
    if (v19 == 1)
    {
      [v4 screenScale];
      v25 = 0.0;
      v26 = 0.0;
      [off_1E7721798 bestItemSizeForAvailableWidth:v16 screenScale:&v26 columns:&v25 bestSpacing:v15 bestInset:v22];
      v18 = v26;
      v9 = v9 + v25;
      v13 = v13 + v25;
    }

    else if (v19)
    {
      v7 = *off_1E7721FA8;
      v9 = *(off_1E7721FA8 + 1);
      v11 = *(off_1E7721FA8 + 2);
      v13 = *(off_1E7721FA8 + 3);
      v20 = *MEMORY[0x1E695F060];
      v21 = *(MEMORY[0x1E695F060] + 8);
    }

    else
    {
      v20 = (v15 - (v16 - 1) * v18) / v16;
      v21 = v20;
    }

    v5->_itemSize.width = v20;
    v5->_itemSize.height = v21;
    v5->_interItemSpacing = v18;
    v5->_insets.top = v7;
    v5->_insets.left = v9;
    v5->_insets.bottom = v11;
    v5->_insets.right = v13;
    v5->_cornerSpriteIndexes = *off_1E7721FF8;
  }

  return v5;
}

@end