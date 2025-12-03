@interface PXSmallCollectionLayoutGenerator
+ (int64_t)maximumNumberOfItemsSupportedForStyle:(unint64_t)style;
- (CGSize)estimatedSize;
- (CGSize)size;
- (PXSmallCollectionLayoutGenerator)initWithMetrics:(id)metrics;
- (PXSmallCollectionLayoutGenerator)initWithNumberOfItems:(int64_t)items metrics:(id)metrics;
- (_PXCornerSpriteIndexes)cornerSpriteIndexes;
- (unint64_t)keyItemIndex;
- (void)_fillEquallyRect:(CGRect)rect numberOfItems:(int64_t)items axis:(int64_t)axis resultHandler:(id)handler;
- (void)_prepareIfNeeded;
- (void)_sliceItemFromRect:(CGRect)rect itemAspectRatio:(double)ratio axis:(int64_t)axis sliceHandler:(id)handler remainderHandler:(id)remainderHandler;
- (void)dealloc;
- (void)getGeometries:(_PXLayoutGeometry *)geometries inRange:(_NSRange)range withKind:(int64_t)kind;
@end

@implementation PXSmallCollectionLayoutGenerator

- (void)_sliceItemFromRect:(CGRect)rect itemAspectRatio:(double)ratio axis:(int64_t)axis sliceHandler:(id)handler remainderHandler:(id)remainderHandler
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  handlerCopy = handler;
  remainderHandlerCopy = remainderHandler;
  switch(axis)
  {
    case 1:
      v26.origin.x = x;
      v26.origin.y = y;
      v26.size.width = width;
      v26.size.height = height;
      v19 = floor(CGRectGetWidth(v26) / ratio);
      v18 = CGRectMinYEdge;
      break;
    case 2:
      v25.origin.x = x;
      v25.origin.y = y;
      v25.size.width = width;
      v25.size.height = height;
      v18 = CGRectMinXEdge;
      v19 = floor(CGRectGetHeight(v25) / ratio);
      break;
    case 0:
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXSmallCollectionLayoutGenerator.m" lineNumber:304 description:@"Code which should be unreachable has been reached"];

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
  handlerCopy[2](handlerCopy, slice.origin.x, slice.origin.y, slice.size.width, slice.size.height);
  metrics = [(PXSmallCollectionLayoutGenerator *)self metrics];
  [metrics interitemSpacing];
  CGRectDivide(v23, &slice, &v23, v21, v18);

  remainderHandlerCopy[2](remainderHandlerCopy, v23.origin.x, v23.origin.y, v23.size.width, v23.size.height);
}

- (void)_fillEquallyRect:(CGRect)rect numberOfItems:(int64_t)items axis:(int64_t)axis resultHandler:(id)handler
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  handlerCopy = handler;
  metrics = [(PXSmallCollectionLayoutGenerator *)self metrics];
  [metrics interitemSpacing];
  v17 = v16;

  switch(axis)
  {
    case 1:
      v25.origin.x = x;
      v25.origin.y = y;
      v25.size.width = width;
      v25.size.height = height;
      v19 = (v17 + CGRectGetHeight(v25)) / items - v17;
      v18 = CGRectMinYEdge;
      break;
    case 2:
      v24.origin.x = x;
      v24.origin.y = y;
      v24.size.width = width;
      v24.size.height = height;
      v18 = CGRectMinXEdge;
      v19 = (v17 + CGRectGetWidth(v24)) / items - v17;
      break;
    case 0:
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXSmallCollectionLayoutGenerator.m" lineNumber:277 description:@"Code which should be unreachable has been reached"];

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
  if (items >= 1)
  {
    v20 = 0;
    do
    {
      CGRectDivide(remainder, &v22, &remainder, v19, v18);
      handlerCopy[2](handlerCopy, v20, v22.origin.x, v22.origin.y, v22.size.width, v22.size.height);
      if (items != 1)
      {
        CGRectDivide(remainder, &v22, &remainder, v17, v18);
      }

      ++v20;
      --items;
    }

    while (items);
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
    metrics = [(PXSmallCollectionLayoutGenerator *)self metrics];
    style = [metrics style];

    if (style == 2)
    {
      if ([(PXSmallCollectionLayoutGenerator *)self numberOfItems]!= 2)
      {
        [(PXSmallCollectionLayoutGenerator *)self _prepareHighQualityAggregationStyle];
        goto LABEL_9;
      }
    }

    else if (style != 1)
    {
      if (!style)
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

- (void)getGeometries:(_PXLayoutGeometry *)geometries inRange:(_NSRange)range withKind:(int64_t)kind
{
  if (!kind)
  {
    length = range.length;
    [(PXSmallCollectionLayoutGenerator *)self _prepareIfNeeded:geometries];
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

        v11 = &geometries[v8];
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
  metrics = [(PXSmallCollectionLayoutGenerator *)self metrics];
  [metrics referenceSize];
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

- (PXSmallCollectionLayoutGenerator)initWithMetrics:(id)metrics
{
  metricsCopy = metrics;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXSmallCollectionLayoutGenerator.m" lineNumber:39 description:{@"%s is not available as initializer", "-[PXSmallCollectionLayoutGenerator initWithMetrics:]"}];

  abort();
}

- (PXSmallCollectionLayoutGenerator)initWithNumberOfItems:(int64_t)items metrics:(id)metrics
{
  metricsCopy = metrics;
  v11.receiver = self;
  v11.super_class = PXSmallCollectionLayoutGenerator;
  v7 = [(PXSmallCollectionLayoutGenerator *)&v11 initWithMetrics:metricsCopy];
  if (v7)
  {
    v8 = [objc_opt_class() maximumNumberOfItemsSupportedForStyle:{objc_msgSend(metricsCopy, "style")}];
    if (v8 >= items)
    {
      itemsCopy = items;
    }

    else
    {
      itemsCopy = v8;
    }

    v7->_numberOfItems = itemsCopy;
  }

  return v7;
}

+ (int64_t)maximumNumberOfItemsSupportedForStyle:(unint64_t)style
{
  if (style - 1 < 2)
  {
    return 3;
  }

  else
  {
    return 4;
  }
}

@end