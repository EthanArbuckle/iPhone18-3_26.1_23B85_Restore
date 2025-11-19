@interface PXSmallCollectionLayoutGenerator
+ (int64_t)maximumNumberOfItemsSupportedForStyle:(unint64_t)a3;
- (CGSize)estimatedSize;
- (CGSize)size;
- (PXSmallCollectionLayoutGenerator)initWithMetrics:(id)a3;
- (PXSmallCollectionLayoutGenerator)initWithNumberOfItems:(int64_t)a3 metrics:(id)a4;
- (_PXCornerSpriteIndexes)cornerSpriteIndexes;
- (unint64_t)keyItemIndex;
- (void)_fillEquallyRect:(CGRect)a3 numberOfItems:(int64_t)a4 axis:(int64_t)a5 resultHandler:(id)a6;
- (void)_prepareIfNeeded;
- (void)_sliceItemFromRect:(CGRect)a3 itemAspectRatio:(double)a4 axis:(int64_t)a5 sliceHandler:(id)a6 remainderHandler:(id)a7;
- (void)dealloc;
- (void)getGeometries:(_PXLayoutGeometry *)a3 inRange:(_NSRange)a4 withKind:(int64_t)a5;
@end

@implementation PXSmallCollectionLayoutGenerator

- (void)_sliceItemFromRect:(CGRect)a3 itemAspectRatio:(double)a4 axis:(int64_t)a5 sliceHandler:(id)a6 remainderHandler:(id)a7
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v16 = a6;
  v17 = a7;
  switch(a5)
  {
    case 1:
      v26.origin.x = x;
      v26.origin.y = y;
      v26.size.width = width;
      v26.size.height = height;
      v19 = floor(CGRectGetWidth(v26) / a4);
      v18 = CGRectMinYEdge;
      break;
    case 2:
      v25.origin.x = x;
      v25.origin.y = y;
      v25.size.width = width;
      v25.size.height = height;
      v18 = CGRectMinXEdge;
      v19 = floor(CGRectGetHeight(v25) / a4);
      break;
    case 0:
      v22 = [MEMORY[0x1E696AAA8] currentHandler];
      [v22 handleFailureInMethod:a2 object:self file:@"PXSmallCollectionLayoutGenerator.m" lineNumber:304 description:@"Code which should be unreachable has been reached"];

      abort();
    default:
      v18 = CGRectMinXEdge;
      v19 = 0.0;
      break;
  }

  memset(&slice, 0, sizeof(slice));
  memset(&v23, 0, sizeof(v23));
  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  CGRectDivide(v27, &slice, &v23, v19, v18);
  v16[2](v16, slice.origin.x, slice.origin.y, slice.size.width, slice.size.height);
  v20 = [(PXSmallCollectionLayoutGenerator *)self metrics];
  [v20 interitemSpacing];
  CGRectDivide(v23, &slice, &v23, v21, v18);

  v17[2](v17, v23.origin.x, v23.origin.y, v23.size.width, v23.size.height);
}

- (void)_fillEquallyRect:(CGRect)a3 numberOfItems:(int64_t)a4 axis:(int64_t)a5 resultHandler:(id)a6
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v14 = a6;
  v15 = [(PXSmallCollectionLayoutGenerator *)self metrics];
  [v15 interitemSpacing];
  v17 = v16;

  switch(a5)
  {
    case 1:
      v25.origin.x = x;
      v25.origin.y = y;
      v25.size.width = width;
      v25.size.height = height;
      v19 = (v17 + CGRectGetHeight(v25)) / a4 - v17;
      v18 = CGRectMinYEdge;
      break;
    case 2:
      v24.origin.x = x;
      v24.origin.y = y;
      v24.size.width = width;
      v24.size.height = height;
      v18 = CGRectMinXEdge;
      v19 = (v17 + CGRectGetWidth(v24)) / a4 - v17;
      break;
    case 0:
      v21 = [MEMORY[0x1E696AAA8] currentHandler];
      [v21 handleFailureInMethod:a2 object:self file:@"PXSmallCollectionLayoutGenerator.m" lineNumber:277 description:@"Code which should be unreachable has been reached"];

      abort();
    default:
      v18 = CGRectMinXEdge;
      v19 = 0.0;
      break;
  }

  remainder.origin.x = x;
  remainder.origin.y = y;
  remainder.size.width = width;
  remainder.size.height = height;
  memset(&v22, 0, sizeof(v22));
  if (a4 >= 1)
  {
    v20 = 0;
    do
    {
      CGRectDivide(remainder, &v22, &remainder, v19, v18);
      v14[2](v14, v20, v22.origin.x, v22.origin.y, v22.size.width, v22.size.height);
      if (a4 != 1)
      {
        CGRectDivide(remainder, &v22, &remainder, v17, v18);
      }

      ++v20;
      --a4;
    }

    while (a4);
  }
}

uint64_t __71__PXSmallCollectionLayoutGenerator__prepareHighQualityAggregationStyle__block_invoke_2(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __71__PXSmallCollectionLayoutGenerator__prepareHighQualityAggregationStyle__block_invoke_3;
  v6[3] = &unk_1E7740AF0;
  v6[6] = *(a1 + 48);
  return [*(a1 + 32) _sliceItemFromRect:1 itemAspectRatio:v6 axis:&__block_literal_global_180206 sliceHandler:a2 remainderHandler:{a3, a4, a5, 2.0}];
}

uint64_t __71__PXSmallCollectionLayoutGenerator__prepareHighQualityAggregationStyle__block_invoke_3(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __71__PXSmallCollectionLayoutGenerator__prepareHighQualityAggregationStyle__block_invoke_4;
  v2[3] = &unk_1E7740AC8;
  v2[6] = *(a1 + 48);
  return [*(a1 + 32) _fillEquallyRect:2 numberOfItems:2 axis:v2 resultHandler:?];
}

uint64_t __71__PXSmallCollectionLayoutGenerator__prepareHighQualityAggregationStyle__block_invoke_4(uint64_t result, uint64_t a2)
{
  if (a2 + 1 < *(result + 48))
  {
    PXRectGetCenter();
  }

  return result;
}

void __70__PXSmallCollectionLayoutGenerator__prepareLowQualityAggregationStyle__block_invoke(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __70__PXSmallCollectionLayoutGenerator__prepareLowQualityAggregationStyle__block_invoke_2;
  v11[3] = &unk_1E7740A28;
  v10 = *(a1 + 56);
  v12 = *(a1 + 32);
  v13 = v10;
  [v12 _fillEquallyRect:2 numberOfItems:2 axis:v11 resultHandler:{a2, a3}];
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v14.origin.x = a2;
    v14.origin.y = a3;
    v14.size.width = a4;
    v14.size.height = a5;
    *(*(*(a1 + 48) + 8) + 32) = CGRectUnion(*(*(*(a1 + 48) + 8) + 32), v14);
  }
}

uint64_t __70__PXSmallCollectionLayoutGenerator__prepareLowQualityAggregationStyle__block_invoke_3(uint64_t result, double a2, double a3, double a4, double a5)
{
  v5 = *(*(result + 32) + 8);
  v5[4] = a2;
  v5[5] = a3;
  v5[6] = a4;
  v5[7] = a5;
  return result;
}

uint64_t __70__PXSmallCollectionLayoutGenerator__prepareLowQualityAggregationStyle__block_invoke_2(uint64_t result, uint64_t a2)
{
  if (a2 + 2 * *(result + 48) < *(result + 56))
  {
    PXRectGetCenter();
  }

  return result;
}

uint64_t __58__PXSmallCollectionLayoutGenerator__prepareEditorialStyle__block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __58__PXSmallCollectionLayoutGenerator__prepareEditorialStyle__block_invoke_5;
  v3[3] = &unk_1E7740A00;
  v3[4] = v1;
  return [v1 _fillEquallyRect:2 numberOfItems:2 axis:v3 resultHandler:?];
}

uint64_t __58__PXSmallCollectionLayoutGenerator__prepareEditorialStyle__block_invoke_7(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v7 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __58__PXSmallCollectionLayoutGenerator__prepareEditorialStyle__block_invoke_8;
  v8[3] = &unk_1E77409D8;
  v8[4] = v7;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__PXSmallCollectionLayoutGenerator__prepareEditorialStyle__block_invoke_9;
  v6[3] = &unk_1E77409D8;
  return [v7 _sliceItemFromRect:2 itemAspectRatio:v8 axis:v6 sliceHandler:a2 remainderHandler:{a3, a4, a5, 1.0}];
}

uint64_t __58__PXSmallCollectionLayoutGenerator__prepareEditorialStyle__block_invoke_12(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v7 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __58__PXSmallCollectionLayoutGenerator__prepareEditorialStyle__block_invoke_13;
  v8[3] = &unk_1E77409D8;
  v8[4] = v7;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__PXSmallCollectionLayoutGenerator__prepareEditorialStyle__block_invoke_15;
  v6[3] = &unk_1E77409D8;
  return [v7 _sliceItemFromRect:1 itemAspectRatio:v8 axis:v6 sliceHandler:a2 remainderHandler:{a3, a4, a5, 3.0}];
}

uint64_t __58__PXSmallCollectionLayoutGenerator__prepareEditorialStyle__block_invoke_13(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __58__PXSmallCollectionLayoutGenerator__prepareEditorialStyle__block_invoke_14;
  v3[3] = &unk_1E7740A00;
  v3[4] = v1;
  return [v1 _fillEquallyRect:3 numberOfItems:2 axis:v3 resultHandler:?];
}

uint64_t __58__PXSmallCollectionLayoutGenerator__prepareEditorialStyle__block_invoke_9(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __58__PXSmallCollectionLayoutGenerator__prepareEditorialStyle__block_invoke_10;
  v3[3] = &unk_1E7740A00;
  v3[4] = v1;
  return [v1 _fillEquallyRect:2 numberOfItems:1 axis:v3 resultHandler:?];
}

- (void)_prepareIfNeeded
{
  if (!self->_isPrepared)
  {
    v3 = [(PXSmallCollectionLayoutGenerator *)self metrics];
    v4 = [v3 style];

    if (v4 == 2)
    {
      if ([(PXSmallCollectionLayoutGenerator *)self numberOfItems]!= 2)
      {
        [(PXSmallCollectionLayoutGenerator *)self _prepareHighQualityAggregationStyle];
        goto LABEL_9;
      }
    }

    else if (v4 != 1)
    {
      if (!v4)
      {
        [(PXSmallCollectionLayoutGenerator *)self _prepareEditorialStyle];
      }

      goto LABEL_9;
    }

    [(PXSmallCollectionLayoutGenerator *)self _prepareLowQualityAggregationStyle];
LABEL_9:
    self->_isPrepared = 1;
  }
}

- (void)getGeometries:(_PXLayoutGeometry *)a3 inRange:(_NSRange)a4 withKind:(int64_t)a5
{
  if (!a5)
  {
    length = a4.length;
    [(PXSmallCollectionLayoutGenerator *)self _prepareIfNeeded:a3];
    if (length)
    {
      v8 = 0;
      for (i = 0; i != length; ++i)
      {
        v10 = off_1E7722098;
        if (i < self->_numberOfItems)
        {
          v10 = &self->_geometries[v8];
        }

        v11 = &a3[v8];
        v12 = *&v10->var1.y;
        *&v11->var0 = *&v10->var0;
        *&v11->var1.y = v12;
        v13 = *&v10->var2.height;
        v14 = *&v10->var3.b;
        v15 = *&v10->var3.ty;
        *&v11->var3.d = *&v10->var3.d;
        *&v11->var3.ty = v15;
        *&v11->var2.height = v13;
        *&v11->var3.b = v14;
        v16 = *&v10->var5;
        v17 = *&v10->var6.origin.y;
        v18 = *&v10->var6.size.height;
        v11->var7.height = v10->var7.height;
        *&v11->var6.origin.y = v17;
        *&v11->var6.size.height = v18;
        *&v11->var5 = v16;
        ++v8;
      }
    }
  }
}

- (_PXCornerSpriteIndexes)cornerSpriteIndexes
{
  [(PXSmallCollectionLayoutGenerator *)self _prepareIfNeeded];
  v3 = *&self->_cornerSpriteIndexes.topLeft;
  v4 = *&self->_cornerSpriteIndexes.bottomLeft;
  result.bottomLeft = v4;
  result.bottomRight = HIDWORD(v4);
  result.topLeft = v3;
  result.topRight = HIDWORD(v3);
  return result;
}

- (CGSize)size
{
  [(PXSmallCollectionLayoutGenerator *)self _prepareIfNeeded];
  width = self->_pageRect.size.width;
  height = self->_pageRect.size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)estimatedSize
{
  v2 = [(PXSmallCollectionLayoutGenerator *)self metrics];
  [v2 referenceSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (unint64_t)keyItemIndex
{
  if ([(PXSmallCollectionLayoutGenerator *)self numberOfItems]<= 0)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

- (void)dealloc
{
  free(self->_geometries);
  v3.receiver = self;
  v3.super_class = PXSmallCollectionLayoutGenerator;
  [(PXSmallCollectionLayoutGenerator *)&v3 dealloc];
}

- (PXSmallCollectionLayoutGenerator)initWithMetrics:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PXSmallCollectionLayoutGenerator.m" lineNumber:39 description:{@"%s is not available as initializer", "-[PXSmallCollectionLayoutGenerator initWithMetrics:]"}];

  abort();
}

- (PXSmallCollectionLayoutGenerator)initWithNumberOfItems:(int64_t)a3 metrics:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = PXSmallCollectionLayoutGenerator;
  v7 = [(PXSmallCollectionLayoutGenerator *)&v11 initWithMetrics:v6];
  if (v7)
  {
    v8 = [objc_opt_class() maximumNumberOfItemsSupportedForStyle:{objc_msgSend(v6, "style")}];
    if (v8 >= a3)
    {
      v9 = a3;
    }

    else
    {
      v9 = v8;
    }

    v7->_numberOfItems = v9;
  }

  return v7;
}

+ (int64_t)maximumNumberOfItemsSupportedForStyle:(unint64_t)a3
{
  if (a3 - 1 < 2)
  {
    return 3;
  }

  else
  {
    return 4;
  }
}

@end