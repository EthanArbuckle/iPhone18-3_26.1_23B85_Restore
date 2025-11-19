@interface PXEditorialLayoutGenerator
- (CGSize)estimatedSize;
- (CGSize)size;
- (PXEditorialLayoutGenerator)initWithMetrics:(id)a3;
- (_PXLayoutGeometry)_geometryFromFrame:(SEL)a3 index:(CGRect)a4;
- (unint64_t)numberOfGeometriesWithKind:(int64_t)a3;
- (void)_getContentGeometries:(_PXLayoutGeometry *)a3 inRange:(_NSRange)a4;
- (void)_getHeaderGeometries:(_PXLayoutGeometry *)a3 inRange:(_NSRange)a4;
- (void)_prepareBuffersForCount:(unint64_t)a3;
- (void)_prepareIfNeeded;
- (void)dealloc;
- (void)getGeometries:(_PXLayoutGeometry *)a3 inRange:(_NSRange)a4 withKind:(int64_t)a5;
- (void)invalidate;
@end

@implementation PXEditorialLayoutGenerator

- (_PXLayoutGeometry)_geometryFromFrame:(SEL)a3 index:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v12 = [(PXEditorialLayoutGenerator *)self metrics];
  [v12 padding];
  v14 = v13;
  v16 = v15;

  v17 = [(PXEditorialLayoutGenerator *)self metrics];
  [v17 headerHeight];
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
    v4 = [(PXEditorialLayoutGenerator *)self itemCount];
    v5 = [(PXEditorialLayoutGenerator *)self metrics];
    v6 = [v5 useSaliency];
    [v5 referenceSize];
    if (v7 <= 0.0)
    {
      v42 = [MEMORY[0x1E696AAA8] currentHandler];
      [v42 handleFailureInMethod:a2 object:self file:@"PXEditorialLayoutGenerator.m" lineNumber:201 description:@"The reference size.width must be > 0"];
    }

    [(PXEditorialLayoutGenerator *)self _prepareBuffersForCount:v4];
    v56 = 0;
    v57 = &v56;
    v58 = 0x2020000000;
    v59 = 0;
    if (v4)
    {
      if (v4 <= [v5 lowerItemCountThreshold])
      {
        v8 = objc_alloc_init(PXVerticalFeedLayoutGenerator);
        [(PXFeedLayoutGenerator *)v8 setTileCount:v4];
        [v5 interTileSpacing];
        v32 = v31;
        [v5 interTileSpacing];
        [(PXFeedLayoutGenerator *)v8 setInterTileSpacing:v32, v33];
        [v5 referenceSize];
        [(PXVerticalFeedLayoutGenerator *)v8 setReferenceWidth:?];
        v54[0] = MEMORY[0x1E69E9820];
        v54[1] = 3221225472;
        v54[2] = __46__PXEditorialLayoutGenerator__prepareIfNeeded__block_invoke;
        v54[3] = &unk_1E774AF10;
        v54[4] = self;
        v55 = v6;
        [(PXFeedLayoutGenerator *)v8 setTileImageSizeBlock:v54];
        [(PXFeedLayoutGenerator *)v8 setNumberOfMagneticGuidelines:5];
        v53[0] = MEMORY[0x1E69E9820];
        v53[1] = 3221225472;
        v53[2] = __46__PXEditorialLayoutGenerator__prepareIfNeeded__block_invoke_2;
        v53[3] = &unk_1E774AF38;
        v53[4] = self;
        v53[5] = &v56;
        [(PXFeedLayoutGenerator *)v8 enumerateFramesWithBlock:v53];
      }

      else
      {
        v8 = [MEMORY[0x1E695DF70] array];
        for (i = 0; i != v4; ++i)
        {
          v10 = [(PXEditorialLayoutGenerator *)self itemLayoutInfoBlock];
          v11 = v10[2](v10, i);

          [v11 preferredCropRect];
          if (v6 && (v16 = v14, v17 = v15, !CGRectIsNull(*&v12)))
          {
            [v11 size];
            v19 = v18;
            [v11 size];
            v21 = v20;
            v22 = [off_1E7721790 alloc];
            [v11 weight];
            v24 = [v22 initWithSize:v16 * v19 weight:{v17 * v21, v23}];
            [(PXVerticalFeedLayoutGenerator *)v8 addObject:v24];
          }

          else
          {
            [(PXVerticalFeedLayoutGenerator *)v8 addObject:v11];
          }
        }

        [(PXMagazineLayoutTileMaker *)self->_tileMaker getFrames:self->_rects withInputs:v8];
        v25 = 0;
        v26 = 0;
        for (j = 0; j != v4; ++j)
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

    [v5 padding];
    v35 = v34;
    v37 = v36;
    [v5 headerHeight];
    v39 = v38;
    [v5 referenceSize];
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

- (void)_prepareBuffersForCount:(unint64_t)a3
{
  if (self->_geometriesCount < a3)
  {
    self->_geometries = malloc_type_realloc(self->_geometries, 152 * a3, 0x100004050011849uLL);
    self->_rects = malloc_type_realloc(self->_rects, 32 * a3, 0x1000040E0EAB150uLL);
    self->_geometriesCount = a3;
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
  v5 = [(PXMagazineLayoutTileMaker *)self->_tileMaker maxTilesInFrame];
  if ([(PXEditorialLayoutGenerator *)self itemCount])
  {
    v6 = [(PXEditorialLayoutGenerator *)self itemCount];
  }

  else
  {
    v6 = 10.0;
  }

  v7 = [(PXEditorialLayoutGenerator *)self metrics];
  v8 = [v7 numberOfColumns];

  v9 = [(PXEditorialLayoutGenerator *)self metrics];
  [v9 referenceSize];
  v11 = v10;

  v12 = [(PXEditorialLayoutGenerator *)self metrics];
  [v12 headerHeight];
  v14 = v13;

  v15 = v14 + v6 * (v4 * (v5 / v8)) / v8;
  v16 = v11;
  result.height = v15;
  result.width = v16;
  return result;
}

- (void)_getHeaderGeometries:(_PXLayoutGeometry *)a3 inRange:(_NSRange)a4
{
  if (a4.length != 1)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"PXEditorialLayoutGenerator.m" lineNumber:149 description:{@"Invalid parameter not satisfying: %@", @"range.length == 1"}];
  }

  v6 = [(PXEditorialLayoutGenerator *)self metrics];
  [v6 headerHeight];
  v8 = v7;

  v9 = [(PXEditorialLayoutGenerator *)self metrics];
  [v9 referenceSize];
  v11 = v10;

  v12 = [(PXEditorialLayoutGenerator *)self metrics];
  [v12 padding];
  v14 = v13;
  v16 = v15;

  a3->var2.width = v16 + v11 + v14;
  a3->var2.height = v8;
  a3->var0 = 0;
  PXRectGetCenter();
}

- (void)_getContentGeometries:(_PXLayoutGeometry *)a3 inRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v9 = a4.location + a4.length;
  if (a4.location + a4.length > [(PXEditorialLayoutGenerator *)self itemCount])
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"PXEditorialLayoutGenerator.m" lineNumber:138 description:@"the range must be <= to the number of itemCount"];
  }

  [(PXEditorialLayoutGenerator *)self _prepareIfNeeded];
  if (location < v9)
  {
    v10 = location;
    do
    {
      v11 = &a3[v10];
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

- (void)getGeometries:(_PXLayoutGeometry *)a3 inRange:(_NSRange)a4 withKind:(int64_t)a5
{
  if (a5 == 1)
  {

    [(PXEditorialLayoutGenerator *)self _getHeaderGeometries:a3 inRange:a4.location, a4.length];
  }

  else
  {
    if (a5)
    {
      v14 = v6;
      v15 = v5;
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      [v13 handleFailureInMethod:a2 object:self file:@"PXEditorialLayoutGenerator.m" lineNumber:131 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    [(PXEditorialLayoutGenerator *)self _getContentGeometries:a3 inRange:a4.location, a4.length];
  }
}

- (void)invalidate
{
  v3.receiver = self;
  v3.super_class = PXEditorialLayoutGenerator;
  [(PXEditorialLayoutGenerator *)&v3 invalidate];
  self->_isPrepared = 0;
}

- (unint64_t)numberOfGeometriesWithKind:(int64_t)a3
{
  if (a3 == 1)
  {
    v4 = [(PXEditorialLayoutGenerator *)self metrics];
    [v4 headerHeight];
    v3 = v5 > 0.0;
  }

  else
  {
    if (a3)
    {
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      [v9 handleFailureInMethod:a2 object:self file:@"PXEditorialLayoutGenerator.m" lineNumber:107 description:@"Code which should be unreachable has been reached"];

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

- (PXEditorialLayoutGenerator)initWithMetrics:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = PXEditorialLayoutGenerator;
  if ([(PXEditorialLayoutGenerator *)&v6 initWithMetrics:v4])
  {
    [v4 referenceSize];
    [v4 padding];
    PXEdgeInsetsInsetSize();
  }

  return 0;
}

@end