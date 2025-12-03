@interface PXEditorialLayoutGenerator
- (CGSize)estimatedSize;
- (CGSize)size;
- (PXEditorialLayoutGenerator)initWithMetrics:(id)metrics;
- (_PXLayoutGeometry)_geometryFromFrame:(SEL)frame index:(CGRect)index;
- (unint64_t)numberOfGeometriesWithKind:(int64_t)kind;
- (void)_getContentGeometries:(_PXLayoutGeometry *)geometries inRange:(_NSRange)range;
- (void)_getHeaderGeometries:(_PXLayoutGeometry *)geometries inRange:(_NSRange)range;
- (void)_prepareBuffersForCount:(unint64_t)count;
- (void)_prepareIfNeeded;
- (void)dealloc;
- (void)getGeometries:(_PXLayoutGeometry *)geometries inRange:(_NSRange)range withKind:(int64_t)kind;
- (void)invalidate;
@end

@implementation PXEditorialLayoutGenerator

- (_PXLayoutGeometry)_geometryFromFrame:(SEL)frame index:(CGRect)index
{
  height = index.size.height;
  width = index.size.width;
  y = index.origin.y;
  x = index.origin.x;
  metrics = [(PXEditorialLayoutGenerator *)self metrics];
  [metrics padding];
  v14 = v13;
  v16 = v15;

  metrics2 = [(PXEditorialLayoutGenerator *)self metrics];
  [metrics2 headerHeight];
  v19 = v18;

  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  CGRectOffset(v21, v16, v14 + v19);
  retstr->var0 = a5;
  PXRectGetCenter();
}

- (void)_prepareIfNeeded
{
  if (!self->_isPrepared)
  {
    self->_isPrepared = 1;
    itemCount = [(PXEditorialLayoutGenerator *)self itemCount];
    metrics = [(PXEditorialLayoutGenerator *)self metrics];
    useSaliency = [metrics useSaliency];
    [metrics referenceSize];
    if (v7 <= 0.0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXEditorialLayoutGenerator.m" lineNumber:201 description:@"The reference size.width must be > 0"];
    }

    [(PXEditorialLayoutGenerator *)self _prepareBuffersForCount:itemCount];
    v56 = 0;
    v57 = &v56;
    v58 = 0x2020000000;
    v59 = 0;
    if (itemCount)
    {
      if (itemCount <= [metrics lowerItemCountThreshold])
      {
        array = objc_alloc_init(PXVerticalFeedLayoutGenerator);
        [(PXFeedLayoutGenerator *)array setTileCount:itemCount];
        [metrics interTileSpacing];
        v32 = v31;
        [metrics interTileSpacing];
        [(PXFeedLayoutGenerator *)array setInterTileSpacing:v32, v33];
        [metrics referenceSize];
        [(PXVerticalFeedLayoutGenerator *)array setReferenceWidth:?];
        v54[0] = MEMORY[0x1E69E9820];
        v54[1] = 3221225472;
        v54[2] = __46__PXEditorialLayoutGenerator__prepareIfNeeded__block_invoke;
        v54[3] = &unk_1E774AF10;
        v54[4] = self;
        v55 = useSaliency;
        [(PXFeedLayoutGenerator *)array setTileImageSizeBlock:v54];
        [(PXFeedLayoutGenerator *)array setNumberOfMagneticGuidelines:5];
        v53[0] = MEMORY[0x1E69E9820];
        v53[1] = 3221225472;
        v53[2] = __46__PXEditorialLayoutGenerator__prepareIfNeeded__block_invoke_2;
        v53[3] = &unk_1E774AF38;
        v53[4] = self;
        v53[5] = &v56;
        [(PXFeedLayoutGenerator *)array enumerateFramesWithBlock:v53];
      }

      else
      {
        array = [MEMORY[0x1E695DF70] array];
        for (i = 0; i != itemCount; ++i)
        {
          itemLayoutInfoBlock = [(PXEditorialLayoutGenerator *)self itemLayoutInfoBlock];
          v11 = itemLayoutInfoBlock[2](itemLayoutInfoBlock, i);

          [v11 preferredCropRect];
          if (useSaliency && (v16 = v14, v17 = v15, !CGRectIsNull(*&v12)))
          {
            [v11 size];
            v19 = v18;
            [v11 size];
            v21 = v20;
            v22 = [off_1E7721790 alloc];
            [v11 weight];
            v24 = [v22 initWithSize:v16 * v19 weight:{v17 * v21, v23}];
            [(PXVerticalFeedLayoutGenerator *)array addObject:v24];
          }

          else
          {
            [(PXVerticalFeedLayoutGenerator *)array addObject:v11];
          }
        }

        [(PXMagazineLayoutTileMaker *)self->_tileMaker getFrames:self->_rects withInputs:array];
        v25 = 0;
        v26 = 0;
        for (j = 0; j != itemCount; ++j)
        {
          geometries = self->_geometries;
          [(PXEditorialLayoutGenerator *)self _geometryFromFrame:j index:self->_rects[v25].origin.x, self->_rects[v25].origin.y, self->_rects[v25].size.width, self->_rects[v25].size.height];
          v29 = &geometries[v26];
          *&v29->var0 = v43;
          *&v29->var1.y = v44;
          *&v29->var3.d = v47;
          *&v29->var3.ty = v48;
          *&v29->var2.height = v45;
          *&v29->var3.b = v46;
          v29->var7.height = v52;
          *&v29->var6.origin.y = v50;
          *&v29->var6.size.height = v51;
          *&v29->var5 = v49;
          ++v26;
          ++v25;
        }

        [(PXMagazineLayoutTileMaker *)self->_tileMaker height];
        *(v57 + 3) = v30;
      }
    }

    [metrics padding];
    v35 = v34;
    v37 = v36;
    [metrics headerHeight];
    v39 = v38;
    [metrics referenceSize];
    v40 = v37 + v35 + v39 + v57[3];
    self->_actualSize.width = v41;
    self->_actualSize.height = v40;
    _Block_object_dispose(&v56, 8);
  }
}

double __46__PXEditorialLayoutGenerator__prepareIfNeeded__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) itemLayoutInfoBlock];
  v5 = v4[2](v4, a2);

  [v5 preferredCropRect];
  if (*(a1 + 40) == 1 && (v10 = v8, !CGRectIsNull(*&v6)))
  {
    [v5 size];
    v12 = v10 * v13;
    [v5 size];
  }

  else
  {
    [v5 size];
    v12 = v11;
  }

  return v12;
}

void __46__PXEditorialLayoutGenerator__prepareIfNeeded__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  if (!a3)
  {
    v12 = *(a1 + 32);
    v13 = v12[9] + 152 * a2;
    [v12 _geometryFromFrame:a2 index:?];
    *v13 = v16;
    *(v13 + 16) = v17;
    *(v13 + 64) = v20;
    *(v13 + 80) = v21;
    *(v13 + 32) = v18;
    *(v13 + 48) = v19;
    *(v13 + 144) = v25;
    *(v13 + 112) = v23;
    *(v13 + 128) = v24;
    *(v13 + 96) = v22;
    v14 = *(*(*(a1 + 40) + 8) + 24);
    v26.origin.x = a4;
    v26.origin.y = a5;
    v26.size.width = a6;
    v26.size.height = a7;
    MaxY = CGRectGetMaxY(v26);
    if (v14 >= MaxY)
    {
      MaxY = v14;
    }

    *(*(*(a1 + 40) + 8) + 24) = MaxY;
  }
}

- (void)_prepareBuffersForCount:(unint64_t)count
{
  if (self->_geometriesCount < count)
  {
    self->_geometries = malloc_type_realloc(self->_geometries, 152 * count, 0x100004050011849uLL);
    self->_rects = malloc_type_realloc(self->_rects, 32 * count, 0x1000040E0EAB150uLL);
    self->_geometriesCount = count;
  }
}

- (CGSize)size
{
  [(PXEditorialLayoutGenerator *)self _prepareIfNeeded];
  width = self->_actualSize.width;
  height = self->_actualSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)estimatedSize
{
  [(PXMagazineLayoutTileMaker *)self->_tileMaker defaultTileSize];
  v4 = v3;
  maxTilesInFrame = [(PXMagazineLayoutTileMaker *)self->_tileMaker maxTilesInFrame];
  if ([(PXEditorialLayoutGenerator *)self itemCount])
  {
    itemCount = [(PXEditorialLayoutGenerator *)self itemCount];
  }

  else
  {
    itemCount = 10.0;
  }

  metrics = [(PXEditorialLayoutGenerator *)self metrics];
  numberOfColumns = [metrics numberOfColumns];

  metrics2 = [(PXEditorialLayoutGenerator *)self metrics];
  [metrics2 referenceSize];
  v11 = v10;

  metrics3 = [(PXEditorialLayoutGenerator *)self metrics];
  [metrics3 headerHeight];
  v14 = v13;

  v15 = v14 + itemCount * (v4 * (maxTilesInFrame / numberOfColumns)) / numberOfColumns;
  v16 = v11;
  result.height = v15;
  result.width = v16;
  return result;
}

- (void)_getHeaderGeometries:(_PXLayoutGeometry *)geometries inRange:(_NSRange)range
{
  if (range.length != 1)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXEditorialLayoutGenerator.m" lineNumber:149 description:{@"Invalid parameter not satisfying: %@", @"range.length == 1"}];
  }

  metrics = [(PXEditorialLayoutGenerator *)self metrics];
  [metrics headerHeight];
  v8 = v7;

  metrics2 = [(PXEditorialLayoutGenerator *)self metrics];
  [metrics2 referenceSize];
  v11 = v10;

  metrics3 = [(PXEditorialLayoutGenerator *)self metrics];
  [metrics3 padding];
  v14 = v13;
  v16 = v15;

  geometries->var2.width = v16 + v11 + v14;
  geometries->var2.height = v8;
  geometries->var0 = 0;
  PXRectGetCenter();
}

- (void)_getContentGeometries:(_PXLayoutGeometry *)geometries inRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v9 = range.location + range.length;
  if (range.location + range.length > [(PXEditorialLayoutGenerator *)self itemCount])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXEditorialLayoutGenerator.m" lineNumber:138 description:@"the range must be <= to the number of itemCount"];
  }

  [(PXEditorialLayoutGenerator *)self _prepareIfNeeded];
  if (location < v9)
  {
    v10 = location;
    do
    {
      v11 = &geometries[v10];
      v12 = &self->_geometries[v10];
      v14 = *&v12->var6.origin.y;
      v13 = *&v12->var6.size.height;
      height = v12->var7.height;
      *&v11->var5 = *&v12->var5;
      v16 = *&v12->var1.y;
      *&v11->var0 = *&v12->var0;
      *&v11->var1.y = v16;
      v17 = *&v12->var2.height;
      v18 = *&v12->var3.b;
      v19 = *&v12->var3.ty;
      *&v11->var3.d = *&v12->var3.d;
      *&v11->var3.ty = v19;
      *&v11->var2.height = v17;
      *&v11->var3.b = v18;
      v11->var7.height = height;
      *&v11->var6.origin.y = v14;
      *&v11->var6.size.height = v13;
      v11->var5 = 0;
      ++v10;
      --length;
    }

    while (length);
  }
}

- (void)getGeometries:(_PXLayoutGeometry *)geometries inRange:(_NSRange)range withKind:(int64_t)kind
{
  if (kind == 1)
  {

    [(PXEditorialLayoutGenerator *)self _getHeaderGeometries:geometries inRange:range.location, range.length];
  }

  else
  {
    if (kind)
    {
      v14 = v6;
      v15 = v5;
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXEditorialLayoutGenerator.m" lineNumber:131 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    [(PXEditorialLayoutGenerator *)self _getContentGeometries:geometries inRange:range.location, range.length];
  }
}

- (void)invalidate
{
  v3.receiver = self;
  v3.super_class = PXEditorialLayoutGenerator;
  [(PXEditorialLayoutGenerator *)&v3 invalidate];
  self->_isPrepared = 0;
}

- (unint64_t)numberOfGeometriesWithKind:(int64_t)kind
{
  if (kind == 1)
  {
    metrics = [(PXEditorialLayoutGenerator *)self metrics];
    [metrics headerHeight];
    v3 = v5 > 0.0;
  }

  else
  {
    if (kind)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXEditorialLayoutGenerator.m" lineNumber:107 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    v10.receiver = self;
    v10.super_class = PXEditorialLayoutGenerator;
    return [(PXEditorialLayoutGenerator *)&v10 numberOfGeometriesWithKind:?];
  }

  return v3;
}

- (void)dealloc
{
  free(self->_geometries);
  free(self->_rects);
  v3.receiver = self;
  v3.super_class = PXEditorialLayoutGenerator;
  [(PXEditorialLayoutGenerator *)&v3 dealloc];
}

- (PXEditorialLayoutGenerator)initWithMetrics:(id)metrics
{
  metricsCopy = metrics;
  v6.receiver = self;
  v6.super_class = PXEditorialLayoutGenerator;
  if ([(PXEditorialLayoutGenerator *)&v6 initWithMetrics:metricsCopy])
  {
    [metricsCopy referenceSize];
    [metricsCopy padding];
    PXEdgeInsetsInsetSize();
  }

  return 0;
}

@end