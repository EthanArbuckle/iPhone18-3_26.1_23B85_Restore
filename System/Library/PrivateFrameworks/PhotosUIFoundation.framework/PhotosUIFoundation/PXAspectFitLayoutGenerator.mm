@interface PXAspectFitLayoutGenerator
- (CGSize)estimatedSize;
- (CGSize)size;
- (PXAspectFitLayoutGenerator)initWithMetrics:(id)metrics;
- (_PXLayoutGeometry)_geometryForItemAtIndex:(SEL)index atPosition:(unint64_t)position withHorizontalGap:(CGPoint)gap;
- (_PXLayoutGeometry)_lastGeometry;
- (double)_rowHeightForItemsInRange:(_NSRange)range;
- (void)_computeGeometriesIfNeeded;
- (void)_fillRowFromIndex:(int64_t *)index withCount:(int64_t)count;
- (void)_prepareGeometriesForCount:(unint64_t)count;
- (void)dealloc;
- (void)getGeometries:(_PXLayoutGeometry *)geometries inRange:(_NSRange)range withKind:(int64_t)kind;
- (void)invalidate;
@end

@implementation PXAspectFitLayoutGenerator

- (_PXLayoutGeometry)_geometryForItemAtIndex:(SEL)index atPosition:(unint64_t)position withHorizontalGap:(CGPoint)gap
{
  y = gap.y;
  x = gap.x;
  itemLayoutInfoBlock = [(PXLayoutGenerator *)self itemLayoutInfoBlock];
  v21 = itemLayoutInfoBlock[2](itemLayoutInfoBlock, position);

  [v21 size];
  PXSizeGetAspectRatio(v13, v14);
  v16 = v15 * self->_currentRowUnmodifiedHeight;
  currentRowFinalHeight = self->_currentRowFinalHeight;
  retstr->var0 = position;
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

- (double)_rowHeightForItemsInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  metrics = [(PXLayoutGenerator *)self metrics];
  v7 = 0.0;
  if (location < location + length)
  {
    v8 = length;
    do
    {
      itemLayoutInfoBlock = [(PXLayoutGenerator *)self itemLayoutInfoBlock];
      v10 = itemLayoutInfoBlock[2](itemLayoutInfoBlock, location);

      [v10 size];
      PXSizeGetAspectRatio(v11, v12);
      v7 = v7 + v13;

      ++location;
      --v8;
    }

    while (v8);
  }

  [metrics interTileSpacing];
  v15 = v14;
  [metrics contentInsets];
  v17 = v16 + (length + -1.0) * v15;
  [metrics contentInsets];
  v19 = v17 + v18;
  [metrics referenceSize];
  v21 = (v20 - v19) / v7;

  return v21;
}

- (void)_fillRowFromIndex:(int64_t *)index withCount:(int64_t)count
{
  metrics = [(PXLayoutGenerator *)self metrics];
  [(PXAspectFitLayoutGenerator *)self _lastGeometry];
  v8 = *index;
  if (*index < 1)
  {
    [metrics contentInsets];
  }

  else
  {
    [metrics interTileSpacing];
  }

  v10 = v9;
  [(PXAspectFitLayoutGenerator *)self _rowHeightForItemsInRange:v8, count];
  v12 = v11;
  self->_currentRowUnmodifiedHeight = v11;
  [metrics referenceSize];
  v14 = v13;
  [metrics minRowAspectRatio];
  v16 = v14 / v15;
  if (v12 < v16)
  {
    v16 = v12;
  }

  self->_currentRowFinalHeight = v16;
  if (count < 1)
  {
    v28 = 0;
LABEL_16:
    if (v28 <= 1)
    {
      v28 = 1;
    }

    *index = (v8 + v28 - 1) & ~((v8 + v28 - 1) >> 63);
  }

  else
  {
    v17 = 0;
    v18 = v8 + count;
    v19 = v10 + 0.0 * 0.5 + 0.0;
    v20 = v8;
    v21 = 0.0;
    v22 = v8;
    while (1)
    {
      if (v17)
      {
        [metrics interTileSpacing];
        v24 = v23;
      }

      else
      {
        [metrics contentInsets];
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
      [metrics referenceSize];
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

    [(PXAspectFitLayoutGenerator *)self _fillRowFromIndex:index withCount:v22];
  }
}

- (void)_computeGeometriesIfNeeded
{
  if (!self->_geometries || [(PXLayoutGenerator *)self itemCount]> self->_geometriesCount)
  {
    [(PXAspectFitLayoutGenerator *)self _prepareGeometriesForCount:[(PXLayoutGenerator *)self itemCount]];
    metrics = [(PXLayoutGenerator *)self metrics];
    self->_lastGeometryIndex = 0x7FFFFFFFFFFFFFFFLL;
    minTilesPerRow = [metrics minTilesPerRow];
    *&v17 = 0;
    geometriesCount = self->_geometriesCount;
    if (geometriesCount)
    {
      v6 = minTilesPerRow;
      v7 = 0;
      do
      {
        v8 = geometriesCount - v7;
        maxTilesPerRow = [metrics maxTilesPerRow];
        if (maxTilesPerRow >= v8)
        {
          v10 = v8;
        }

        else
        {
          v10 = maxTilesPerRow;
        }

        if (maxTilesPerRow < v8)
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
    [metrics referenceSize];
    p_contentSize = &self->_contentSize;
    p_contentSize->width = v14;
    v15 = *&v18 + *&v19 * 0.5;
    [metrics contentInsets];
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
    selfCopy = self;
    if (*&c >= *&self->var3.b)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a3 object:selfCopy file:@"PXAspectFitLayoutGenerator.m" lineNumber:121 description:{@"last Geometry index is out of bounds %ld >= %ld", *&selfCopy->var3.c, *&selfCopy->var3.b}];

      c = selfCopy->var3.c;
    }

    v6 = *&selfCopy->var3.a + 152 * *&c;
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

- (void)_prepareGeometriesForCount:(unint64_t)count
{
  if (self->_geometriesCount < count)
  {
    self->_geometries = malloc_type_realloc(self->_geometries, 152 * count, 0x100004050011849uLL);
    self->_geometriesCount = count;
  }
}

- (void)getGeometries:(_PXLayoutGeometry *)geometries inRange:(_NSRange)range withKind:(int64_t)kind
{
  if (range.length && !kind)
  {
    length = range.length;
    location = range.location;
    metrics = [(PXLayoutGenerator *)self metrics];
    [metrics referenceSize];
    if (v10 <= 0.0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXAspectFitLayoutGenerator.m" lineNumber:96 description:&stru_1F2B87EE0];
    }

    if (![(PXLayoutGenerator *)self itemCount])
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXAspectFitLayoutGenerator.m" lineNumber:97 description:&stru_1F2B87EE0];
    }

    v11 = length + location - 1;
    if (v11 < 0 || v11 >= [(PXLayoutGenerator *)self itemCount])
    {
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      v29.location = location;
      v29.length = length;
      v23 = NSStringFromRange(v29);
      [currentHandler3 handleFailureInMethod:a2 object:self file:@"PXAspectFitLayoutGenerator.m" lineNumber:99 description:{@"range %@ out of bounds %ld", v23, -[PXLayoutGenerator itemCount](self, "itemCount")}];
    }

    [(PXAspectFitLayoutGenerator *)self _computeGeometriesIfNeeded];
    if ([(PXLayoutGenerator *)self itemCount]!= self->_geometriesCount)
    {
      currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler4 handleFailureInMethod:a2 object:self file:@"PXAspectFitLayoutGenerator.m" lineNumber:103 description:@"The number of geometries should be the "];
    }

    if (location <= v11)
    {
      v12 = location;
      do
      {
        v13 = &geometries[v12];
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
  metrics = [(PXLayoutGenerator *)self metrics];
  if ([(PXLayoutGenerator *)self itemCount])
  {
    itemCount = [(PXLayoutGenerator *)self itemCount];
  }

  else
  {
    itemCount = 10;
  }

  [metrics referenceSize];
  v6 = v5;
  v7 = itemCount / [metrics maxTilesPerRow];
  [metrics minRowAspectRatio];
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

- (PXAspectFitLayoutGenerator)initWithMetrics:(id)metrics
{
  v4.receiver = self;
  v4.super_class = PXAspectFitLayoutGenerator;
  result = [(PXLayoutGenerator *)&v4 initWithMetrics:metrics];
  if (result)
  {
    result->_geometries = 0;
    result->_lastGeometryIndex = 0x7FFFFFFFFFFFFFFFLL;
  }

  return result;
}

@end