@interface PXMemoriesFeedEntryLayoutGenerator
- (CGSize)estimatedSize;
- (CGSize)size;
- (PXMemoriesFeedEntryLayoutGenerator)initWithMetrics:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)numberOfGeometriesWithKind:(int64_t)a3;
- (void)_prepareLayoutIfNeeded;
- (void)getGeometries:(_PXLayoutGeometry *)a3 inRange:(_NSRange)a4 withKind:(int64_t)a5;
- (void)invalidate;
- (void)setLayoutAxis:(int64_t)a3;
@end

@implementation PXMemoriesFeedEntryLayoutGenerator

- (id)copyWithZone:(_NSZone *)a3
{
  v5.receiver = self;
  v5.super_class = PXMemoriesFeedEntryLayoutGenerator;
  result = [(PXMemoriesFeedEntryLayoutGenerator *)&v5 copyWithZone:a3];
  *(result + 16) = self->_layoutAxis;
  return result;
}

- (void)_prepareLayoutIfNeeded
{
  if (!self->_isPrepared)
  {
    self->_isPrepared = 1;
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(PXMemoriesFeedEntryLayoutGenerator *)self itemCount];
    [(PXMemoriesSpec *)self->_spec feedInteritemSpacing];
    [(PXMemoriesSpec *)self->_spec feedEntryEdgeInsets];
    v4 = [(PXMemoriesFeedEntryLayoutGenerator *)self metrics];
    [v4 referenceSize];

    PXEdgeInsetsInsetSize();
  }
}

void __60__PXMemoriesFeedEntryLayoutGenerator__prepareLayoutIfNeeded__block_invoke(void *a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v19 = CGRectIntegral(*&a3);
  x = v19.origin.x;
  y = v19.origin.y;
  width = v19.size.width;
  height = v19.size.height;
  v12 = a1[4];
  v13 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
  v17 = [v12 objectForKeyedSubscript:v13];

  if (!v17)
  {
    v17 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:a1[7]];
    v14 = a1[4];
    v15 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
    [v14 setObject:v17 forKeyedSubscript:v15];
  }

  v16 = [MEMORY[0x1E696B098] valueWithCGRect:{x, y, width, height}];
  [v17 addObject:v16];

  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  if (CGRectGetMaxY(v20) > *(*(a1[5] + 8) + 24))
  {
    v21.origin.x = x;
    v21.origin.y = y;
    v21.size.width = width;
    v21.size.height = height;
    *(*(a1[5] + 8) + 24) = CGRectGetMaxY(v21);
  }

  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  if (CGRectGetMaxX(v22) > *(*(a1[6] + 8) + 24))
  {
    v23.origin.x = x;
    v23.origin.y = y;
    v23.size.width = width;
    v23.size.height = height;
    *(*(a1[6] + 8) + 24) = CGRectGetMaxX(v23);
  }
}

void __60__PXMemoriesFeedEntryLayoutGenerator__prepareLayoutIfNeeded__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    if (v2 == 2)
    {
      v4 = *(a1 + 80);
      (*(*(a1 + 40) + 16))(*(*(*(a1 + 48) + 8) + 32), *(*(*(a1 + 48) + 8) + 40), v4, v4);
      *(*(*(a1 + 48) + 8) + 32) = v4 + *(a1 + 96) + *(*(*(a1 + 48) + 8) + 32);
    }

    else if (v2 == 1)
    {
      v3 = *(a1 + 72) / *(a1 + 88);
      (*(*(a1 + 40) + 16))(*(*(*(a1 + 48) + 8) + 32), *(*(*(a1 + 48) + 8) + 40));
      *(*(*(a1 + 48) + 8) + 40) = v3 + *(a1 + 96) + *(*(*(a1 + 48) + 8) + 40);
    }
  }

  else
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:*(a1 + 104) object:*(a1 + 32) file:@"PXMemoriesFeedEntryLayoutGenerator.m" lineNumber:195 description:@"Unexpected layout axis"];
  }

  --*(*(*(a1 + 56) + 8) + 24);
}

void __60__PXMemoriesFeedEntryLayoutGenerator__prepareLayoutIfNeeded__block_invoke_3(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    if (v2 == 2)
    {
      PXPointAdd();
    }

    if (v2 == 1)
    {
      PXPointAdd();
    }
  }

  else
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    [v3 handleFailureInMethod:a1[13] object:a1[4] file:@"PXMemoriesFeedEntryLayoutGenerator.m" lineNumber:244 description:@"Unexpected layout axis"];
  }
}

- (void)invalidate
{
  v3.receiver = self;
  v3.super_class = PXMemoriesFeedEntryLayoutGenerator;
  [(PXMemoriesFeedEntryLayoutGenerator *)&v3 invalidate];
  self->_isPrepared = 0;
}

- (void)setLayoutAxis:(int64_t)a3
{
  if (self->_layoutAxis != a3)
  {
    self->_layoutAxis = a3;
    [(PXMemoriesFeedEntryLayoutGenerator *)self invalidate];
  }
}

- (void)getGeometries:(_PXLayoutGeometry *)a3 inRange:(_NSRange)a4 withKind:(int64_t)a5
{
  length = a4.length;
  location = a4.location;
  [(PXMemoriesFeedEntryLayoutGenerator *)self _prepareLayoutIfNeeded];
  if (a5)
  {
    if (a5 == 2 && !location && length)
    {
      if ([(PXMemoriesFeedLayoutGenerator *)self includeDateHeader])
      {
        PXRectGetCenter();
      }
    }
  }

  else
  {
    v9 = [(PXMemoriesFeedEntryLayoutGenerator *)self itemCount];
    rectsByIndexByKind = self->_rectsByIndexByKind;
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:0];
    v14 = [(NSDictionary *)rectsByIndexByKind objectForKeyedSubscript:v11];

    if (v9 >= location + length)
    {
      v12 = location + length;
    }

    else
    {
      v12 = v9;
    }

    if (location <= (v12 - 1))
    {
      v13 = [v14 objectAtIndexedSubscript:{location, *off_1E77221F8, *(off_1E77221F8 + 1), *(off_1E77221F8 + 2), *(off_1E77221F8 + 3), *(MEMORY[0x1E695EFD0] + 32), *(MEMORY[0x1E695EFD0] + 40), *(MEMORY[0x1E695EFD0] + 16), *(MEMORY[0x1E695EFD0] + 24), *MEMORY[0x1E695EFD0], *(MEMORY[0x1E695EFD0] + 8)}];
      [v13 CGRectValue];

      PXRectGetCenter();
    }
  }
}

- (unint64_t)numberOfGeometriesWithKind:(int64_t)a3
{
  [(PXMemoriesFeedEntryLayoutGenerator *)self _prepareLayoutIfNeeded];
  if (a3 == 2)
  {
    return [(PXMemoriesFeedLayoutGenerator *)self includeDateHeader];
  }

  if (a3)
  {
    return 0;
  }

  return [(PXMemoriesFeedEntryLayoutGenerator *)self itemCount];
}

- (CGSize)size
{
  [(PXMemoriesFeedEntryLayoutGenerator *)self _prepareLayoutIfNeeded];
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)estimatedSize
{
  [(PXMemoriesFeedEntryLayoutGenerator *)self _prepareLayoutIfNeeded];

  [(PXMemoriesFeedEntryLayoutGenerator *)self size];
  result.height = v4;
  result.width = v3;
  return result;
}

- (PXMemoriesFeedEntryLayoutGenerator)initWithMetrics:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PXMemoriesFeedEntryLayoutGenerator;
  v5 = [(PXMemoriesFeedLayoutGenerator *)&v11 initWithMetrics:v4];
  if (v5)
  {
    v6 = [v4 spec];
    spec = v5->_spec;
    v5->_spec = v6;

    v8 = [MEMORY[0x1E696AD50] indexSetWithIndex:0];
    [(NSIndexSet *)v8 addIndex:2];
    geometryKinds = v5->_geometryKinds;
    v5->_geometryKinds = v8;

    v5->_layoutAxis = 1;
  }

  return v5;
}

@end