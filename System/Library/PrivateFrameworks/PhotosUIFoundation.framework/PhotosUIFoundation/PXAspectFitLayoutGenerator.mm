@interface PXAspectFitLayoutGenerator
- (CGSize)estimatedSize;
- (CGSize)size;
- (PXAspectFitLayoutGenerator)initWithMetrics:(id)a3;
- (_PXLayoutGeometry)_geometryForItemAtIndex:(SEL)a3 atPosition:(unint64_t)a4 withHorizontalGap:(CGPoint)a5;
- (_PXLayoutGeometry)_lastGeometry;
- (double)_rowHeightForItemsInRange:(_NSRange)a3;
- (void)_computeGeometriesIfNeeded;
- (void)_fillRowFromIndex:(int64_t *)a3 withCount:(int64_t)a4;
- (void)_prepareGeometriesForCount:(unint64_t)a3;
- (void)dealloc;
- (void)getGeometries:(_PXLayoutGeometry *)a3 inRange:(_NSRange)a4 withKind:(int64_t)a5;
- (void)invalidate;
@end

@implementation PXAspectFitLayoutGenerator

- (_PXLayoutGeometry)_geometryForItemAtIndex:(SEL)a3 atPosition:(unint64_t)a4 withHorizontalGap:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v12 = [(PXLayoutGenerator *)self itemLayoutInfoBlock];
  v21 = v12[2](v12, a4);

  [v21 size];
  PXSizeGetAspectRatio(v13, v14);
  v16 = v15 * self->_currentRowUnmodifiedHeight;
  currentRowFinalHeight = self->_currentRowFinalHeight;
  retstr->var0 = a4;
  retstr->var1.x = x + a6 + v16 * 0.5;
  retstr->var1.y = y + currentRowFinalHeight * 0.5;
  retstr->var2.width = v16;
  retstr->var2.height = currentRowFinalHeight;
  v18 = MEMORY[0x1E695EFD0];
  v19 = *(MEMORY[0x1E695EFD0] + 16);
  *&retstr->var3.a = *MEMORY[0x1E695EFD0];
  *&retstr->var3.c = v19;
  *&retstr->var3.tx = *(v18 + 32);
  *&retstr->var4 = 0;
  retstr->var5 = 0;
  retstr->var6 = *PXRectUnit;
  retstr->var7.width = v16;
  retstr->var7.height = currentRowFinalHeight;

  return result;
}

- (double)_rowHeightForItemsInRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v6 = [(PXLayoutGenerator *)self metrics];
  v7 = 0.0;
  if (location < location + length)
  {
    v8 = length;
    do
    {
      v9 = [(PXLayoutGenerator *)self itemLayoutInfoBlock];
      v10 = v9[2](v9, location);

      [v10 size];
      PXSizeGetAspectRatio(v11, v12);
      v7 = v7 + v13;

      ++location;
      --v8;
    }

    while (v8);
  }

  [v6 interTileSpacing];
  v15 = v14;
  [v6 contentInsets];
  v17 = v16 + (length + -1.0) * v15;
  [v6 contentInsets];
  v19 = v17 + v18;
  [v6 referenceSize];
  v21 = (v20 - v19) / v7;

  return v21;
}

- (void)_fillRowFromIndex:(int64_t *)a3 withCount:(int64_t)a4
{
  v7 = [(PXLayoutGenerator *)self metrics];
  [(PXAspectFitLayoutGenerator *)self _lastGeometry];
  v8 = *a3;
  if (*a3 < 1)
  {
    [v7 contentInsets];
  }

  else
  {
    [v7 interTileSpacing];
  }

  v10 = v9;
  [(PXAspectFitLayoutGenerator *)self _rowHeightForItemsInRange:v8, a4];
  v12 = v11;
  self->_currentRowUnmodifiedHeight = v11;
  [v7 referenceSize];
  v14 = v13;
  [v7 minRowAspectRatio];
  v16 = v14 / v15;
  if (v12 < v16)
  {
    v16 = v12;
  }

  self->_currentRowFinalHeight = v16;
  if (a4 < 1)
  {
    v28 = 0;
LABEL_16:
    if (v28 <= 1)
    {
      v28 = 1;
    }

    *a3 = (v8 + v28 - 1) & ~((v8 + v28 - 1) >> 63);
  }

  else
  {
    v17 = 0;
    v18 = v8 + a4;
    v19 = v10 + 0.0 * 0.5 + 0.0;
    v20 = v8;
    v21 = 0.0;
    v22 = v8;
    while (1)
    {
      if (v17)
      {
        [v7 interTileSpacing];
        v24 = v23;
      }

      else
      {
        [v7 contentInsets];
        v24 = v25;
      }

      [(PXAspectFitLayoutGenerator *)self _geometryForItemAtIndex:v22 atPosition:v21 withHorizontalGap:v19, v24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
      v26 = &self->_geometries[v20];
      *&v26->var0 = v29;
      *&v26->var1.y = v30;
      *&v26->var3.d = v33;
      *&v26->var3.ty = v34;
      *&v26->var2.height = v31;
      *&v26->var3.b = v32;
      v26->var7.height = v38;
      *&v26->var6.origin.y = v36;
      *&v26->var6.size.height = v37;
      *&v26->var5 = v35;
      v21 = *(&v29 + 1) + *(&v30 + 1) * -0.5 + *(&v30 + 1);
      [v7 referenceSize];
      if (v17)
      {
        if (v21 + -1.0 > v27)
        {
          break;
        }
      }

      v19 = *&v30 + *&v31 * -0.5;
      ++v22;
      --v17;
      ++v20;
      if (v22 >= v18)
      {
        v28 = -v17;
        goto LABEL_16;
      }
    }

    [(PXAspectFitLayoutGenerator *)self _fillRowFromIndex:a3 withCount:v22];
  }
}

- (void)_computeGeometriesIfNeeded
{
  if (!self->_geometries || [(PXLayoutGenerator *)self itemCount]> self->_geometriesCount)
  {
    [(PXAspectFitLayoutGenerator *)self _prepareGeometriesForCount:[(PXLayoutGenerator *)self itemCount]];
    v3 = [(PXLayoutGenerator *)self metrics];
    self->_lastGeometryIndex = 0x7FFFFFFFFFFFFFFFLL;
    v4 = [v3 minTilesPerRow];
    *&v17 = 0;
    geometriesCount = self->_geometriesCount;
    if (geometriesCount)
    {
      v6 = v4;
      v7 = 0;
      do
      {
        v8 = geometriesCount - v7;
        v9 = [v3 maxTilesPerRow];
        if (v9 >= v8)
        {
          v10 = v8;
        }

        else
        {
          v10 = v9;
        }

        if (v9 < v8)
        {
          v11 = v8 - v6;
          if (v6 > v8 - v6)
          {
            v11 = v6;
          }

          if (v10 >= v11)
          {
            v10 = v11;
          }
        }

        [(PXAspectFitLayoutGenerator *)self _fillRowFromIndex:&v17 withCount:v10];
        v12 = v17;
        self->_lastGeometryIndex = v17;
        v7 = v12 + 1;
        *&v17 = v7;
        geometriesCount = self->_geometriesCount;
      }

      while (v7 < geometriesCount);
    }

    v26 = 0;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    [(PXAspectFitLayoutGenerator *)self _lastGeometry:0];
    [v3 referenceSize];
    p_contentSize = &self->_contentSize;
    p_contentSize->width = v14;
    v15 = *&v18 + *&v19 * 0.5;
    [v3 contentInsets];
    p_contentSize->height = v15 + v16;
  }
}

- (_PXLayoutGeometry)_lastGeometry
{
  retstr->var7.height = 0.0;
  *&retstr->var5 = xmmword_1B4075480;
  *&retstr->var6.origin.y = unk_1B4075490;
  *&retstr->var6.size.height = xmmword_1B40754A0;
  *&retstr->var2.height = xmmword_1B4075440;
  *&retstr->var3.b = unk_1B4075450;
  *&retstr->var3.d = xmmword_1B4075460;
  *&retstr->var3.ty = unk_1B4075470;
  *&retstr->var0 = PXLayoutGeometryNull;
  *&retstr->var1.y = *algn_1B4075430;
  c = self->var3.c;
  if (c != NAN)
  {
    v5 = self;
    if (*&c >= *&self->var3.b)
    {
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      [v12 handleFailureInMethod:a3 object:v5 file:@"PXAspectFitLayoutGenerator.m" lineNumber:121 description:{@"last Geometry index is out of bounds %ld >= %ld", *&v5->var3.c, *&v5->var3.b}];

      c = v5->var3.c;
    }

    v6 = *&v5->var3.a + 152 * *&c;
    v7 = *(v6 + 112);
    *&retstr->var5 = *(v6 + 96);
    *&retstr->var6.origin.y = v7;
    *&retstr->var6.size.height = *(v6 + 128);
    retstr->var7.height = *(v6 + 144);
    v8 = *(v6 + 48);
    *&retstr->var2.height = *(v6 + 32);
    *&retstr->var3.b = v8;
    v9 = *(v6 + 80);
    *&retstr->var3.d = *(v6 + 64);
    *&retstr->var3.ty = v9;
    v10 = *(v6 + 16);
    *&retstr->var0 = *v6;
    *&retstr->var1.y = v10;
  }

  return self;
}

- (void)_prepareGeometriesForCount:(unint64_t)a3
{
  if (self->_geometriesCount < a3)
  {
    self->_geometries = malloc_type_realloc(self->_geometries, 152 * a3, 0x100004050011849uLL);
    self->_geometriesCount = a3;
  }
}

- (void)getGeometries:(_PXLayoutGeometry *)a3 inRange:(_NSRange)a4 withKind:(int64_t)a5
{
  if (a4.length && !a5)
  {
    length = a4.length;
    location = a4.location;
    v27 = [(PXLayoutGenerator *)self metrics];
    [v27 referenceSize];
    if (v10 <= 0.0)
    {
      v24 = [MEMORY[0x1E696AAA8] currentHandler];
      [v24 handleFailureInMethod:a2 object:self file:@"PXAspectFitLayoutGenerator.m" lineNumber:96 description:&stru_1F2B87EE0];
    }

    if (![(PXLayoutGenerator *)self itemCount])
    {
      v25 = [MEMORY[0x1E696AAA8] currentHandler];
      [v25 handleFailureInMethod:a2 object:self file:@"PXAspectFitLayoutGenerator.m" lineNumber:97 description:&stru_1F2B87EE0];
    }

    v11 = length + location - 1;
    if (v11 < 0 || v11 >= [(PXLayoutGenerator *)self itemCount])
    {
      v22 = [MEMORY[0x1E696AAA8] currentHandler];
      v29.location = location;
      v29.length = length;
      v23 = NSStringFromRange(v29);
      [v22 handleFailureInMethod:a2 object:self file:@"PXAspectFitLayoutGenerator.m" lineNumber:99 description:{@"range %@ out of bounds %ld", v23, -[PXLayoutGenerator itemCount](self, "itemCount")}];
    }

    [(PXAspectFitLayoutGenerator *)self _computeGeometriesIfNeeded];
    if ([(PXLayoutGenerator *)self itemCount]!= self->_geometriesCount)
    {
      v26 = [MEMORY[0x1E696AAA8] currentHandler];
      [v26 handleFailureInMethod:a2 object:self file:@"PXAspectFitLayoutGenerator.m" lineNumber:103 description:@"The number of geometries should be the "];
    }

    if (location <= v11)
    {
      v12 = location;
      do
      {
        v13 = &a3[v12];
        v14 = &self->_geometries[v12];
        v16 = *&v14->var6.origin.y;
        v15 = *&v14->var6.size.height;
        height = v14->var7.height;
        *&v13->var5 = *&v14->var5;
        v18 = *&v14->var1.y;
        *&v13->var0 = *&v14->var0;
        *&v13->var1.y = v18;
        v19 = *&v14->var2.height;
        v20 = *&v14->var3.b;
        v21 = *&v14->var3.ty;
        *&v13->var3.d = *&v14->var3.d;
        *&v13->var3.ty = v21;
        *&v13->var2.height = v19;
        *&v13->var3.b = v20;
        v13->var7.height = height;
        *&v13->var6.origin.y = v16;
        *&v13->var6.size.height = v15;
        v13->var5 = 0;
        ++v12;
        --length;
      }

      while (length);
    }
  }
}

- (CGSize)size
{
  [(PXAspectFitLayoutGenerator *)self _computeGeometriesIfNeeded];
  width = self->_contentSize.width;
  height = self->_contentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)estimatedSize
{
  v3 = [(PXLayoutGenerator *)self metrics];
  if ([(PXLayoutGenerator *)self itemCount])
  {
    v4 = [(PXLayoutGenerator *)self itemCount];
  }

  else
  {
    v4 = 10;
  }

  [v3 referenceSize];
  v6 = v5;
  v7 = v4 / [v3 maxTilesPerRow];
  [v3 minRowAspectRatio];
  v9 = v6 / v8 * v7;

  v10 = v6;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)invalidate
{
  v3.receiver = self;
  v3.super_class = PXAspectFitLayoutGenerator;
  [(PXLayoutGenerator *)&v3 invalidate];
  self->_geometriesCount = 0;
}

- (void)dealloc
{
  geometries = self->_geometries;
  if (geometries)
  {
    free(geometries);
    self->_geometries = 0;
  }

  v4.receiver = self;
  v4.super_class = PXAspectFitLayoutGenerator;
  [(PXAspectFitLayoutGenerator *)&v4 dealloc];
}

- (PXAspectFitLayoutGenerator)initWithMetrics:(id)a3
{
  v4.receiver = self;
  v4.super_class = PXAspectFitLayoutGenerator;
  result = [(PXLayoutGenerator *)&v4 initWithMetrics:a3];
  if (result)
  {
    result->_geometries = 0;
    result->_lastGeometryIndex = 0x7FFFFFFFFFFFFFFFLL;
  }

  return result;
}

@end