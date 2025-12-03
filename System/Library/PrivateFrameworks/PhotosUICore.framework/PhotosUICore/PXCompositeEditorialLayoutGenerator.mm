@interface PXCompositeEditorialLayoutGenerator
- (CGSize)estimatedSize;
- (CGSize)size;
- (PXCompositeEditorialLayoutGenerator)initWithMetrics:(id)metrics;
- (_PXLayoutGeometry)_geometryFromFrame:(SEL)frame index:(CGRect)index;
- (id)_layoutInputsInRange:(_NSRange)range;
- (id)_minCostingTemplateAmongTemplates:(id)templates forFittingInputItems:(id)items inRange:(_NSRange)range minCost:(double *)cost;
- (void)_computeTemplatesByTileCountIfNeeded;
- (void)_enumerateTemplatesWithBlock:(id)block;
- (void)_normalizeWeightsForInputItems:(id)items;
- (void)_prepareGeometriesBufferForCount:(unint64_t)count;
- (void)_prepareIfNeeded;
- (void)_prepareLayoutItemWeightsBufferForCount:(unint64_t)count;
- (void)dealloc;
- (void)getGeometries:(_PXLayoutGeometry *)geometries inRange:(_NSRange)range withKind:(int64_t)kind;
- (void)invalidate;
@end

@implementation PXCompositeEditorialLayoutGenerator

- (_PXLayoutGeometry)_geometryFromFrame:(SEL)frame index:(CGRect)index
{
  height = index.size.height;
  width = index.size.width;
  y = index.origin.y;
  x = index.origin.x;
  metrics = [(PXCompositeEditorialLayoutGenerator *)self metrics];
  [metrics padding];
  v13 = v12;
  v15 = v14;

  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  CGRectOffset(v17, v15, v13);
  retstr->var0 = a5;
  PXRectGetCenter();
}

- (id)_layoutInputsInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  array = [MEMORY[0x1E695DF70] array];
  if (location < location + length)
  {
    do
    {
      itemLayoutInfoBlock = [(PXCompositeEditorialLayoutGenerator *)self itemLayoutInfoBlock];
      v8 = itemLayoutInfoBlock[2](itemLayoutInfoBlock, location);
      [array addObject:v8];

      ++location;
      --length;
    }

    while (length);
  }

  v9 = [array copy];

  return v9;
}

- (void)_prepareGeometriesBufferForCount:(unint64_t)count
{
  if (self->_geometriesCount < count)
  {
    self->_geometries = malloc_type_realloc(self->_geometries, 152 * count, 0x100004050011849uLL);
    self->_geometriesCount = count;
  }
}

- (void)_prepareLayoutItemWeightsBufferForCount:(unint64_t)count
{
  if (self->_layoutItemWeightsCount < count)
  {
    self->_layoutItemWeights = malloc_type_realloc(self->_layoutItemWeights, 8 * count, 0x100004000313F17uLL);
    self->_layoutItemWeightsCount = count;
  }
}

- (void)_normalizeWeightsForInputItems:(id)items
{
  itemsCopy = items;
  -[PXCompositeEditorialLayoutGenerator _prepareLayoutItemWeightsBufferForCount:](self, "_prepareLayoutItemWeightsBufferForCount:", [itemsCopy count]);
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2020000000;
  v8[3] = 0;
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x2020000000;
  v7[3] = 0x47EFFFFFE0000000;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __70__PXCompositeEditorialLayoutGenerator__normalizeWeightsForInputItems___block_invoke;
  v6[3] = &unk_1E772E848;
  v6[4] = v8;
  v6[5] = v7;
  [itemsCopy enumerateObjectsUsingBlock:v6];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __70__PXCompositeEditorialLayoutGenerator__normalizeWeightsForInputItems___block_invoke_2;
  v5[3] = &unk_1E772E870;
  v5[4] = self;
  v5[5] = v7;
  v5[6] = v8;
  [itemsCopy enumerateObjectsUsingBlock:v5];
  _Block_object_dispose(v7, 8);
  _Block_object_dispose(v8, 8);
}

void __70__PXCompositeEditorialLayoutGenerator__normalizeWeightsForInputItems___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 24);
  v4 = a2;
  [v4 weight];
  if (v3 >= v5)
  {
    v5 = v3;
  }

  *(*(*(a1 + 32) + 8) + 24) = v5;
  v6 = *(*(*(a1 + 40) + 8) + 24);
  [v4 weight];
  v8 = v7;

  if (v6 >= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v6;
  }

  *(*(*(a1 + 40) + 8) + 24) = v9;
}

double __70__PXCompositeEditorialLayoutGenerator__normalizeWeightsForInputItems___block_invoke_2(void *a1, void *a2, uint64_t a3)
{
  [a2 weight];
  v5 = *(*(a1[5] + 8) + 24);
  result = (v6 - v5) / (*(*(a1[6] + 8) + 24) - v5);
  *(*(a1[4] + 56) + 8 * a3) = result;
  return result;
}

- (id)_minCostingTemplateAmongTemplates:(id)templates forFittingInputItems:(id)items inRange:(_NSRange)range minCost:(double *)cost
{
  costCopy = cost;
  v34 = *MEMORY[0x1E69E9840];
  templatesCopy = templates;
  itemsCopy = items;
  itemCount = [(PXCompositeEditorialLayoutGenerator *)self itemCount];
  metrics = [(PXCompositeEditorialLayoutGenerator *)self metrics];
  useSaliency = [metrics useSaliency];

  selfCopy = self;
  [(PXCompositeEditorialLayoutGenerator *)self _normalizeWeightsForInputItems:itemsCopy];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v13 = templatesCopy;
  v14 = [v13 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = 0;
    v17 = *v30;
    v18 = 3.40282347e38;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v30 != v17)
        {
          objc_enumerationMutation(v13);
        }

        v20 = *(*(&v29 + 1) + 8 * i);
        numberOfRects = [v20 numberOfRects];
        if (numberOfRects <= [itemsCopy count])
        {
          [v20 costForFittingLayoutItemInputs:itemsCopy inRange:range.location ofTotalItemCount:range.length normalizedWeights:itemCount useSaliency:{selfCopy->_layoutItemWeights, useSaliency}];
          v23 = v22;
          if (!v16 || v22 < v18)
          {
            v24 = v20;

            v16 = v24;
            v18 = v23;
          }
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v15);
  }

  else
  {
    v16 = 0;
    v18 = 3.40282347e38;
  }

  if (costCopy)
  {
    *costCopy = v18;
  }

  return v16;
}

- (void)_enumerateTemplatesWithBlock:(id)block
{
  blockCopy = block;
  [(PXCompositeEditorialLayoutGenerator *)self _computeTemplatesByTileCountIfNeeded];
  if ([(NSDictionary *)self->_templatesByTileCount count])
  {
    metrics = [(PXCompositeEditorialLayoutGenerator *)self metrics];
    editorialLayoutSpec = [metrics editorialLayoutSpec];

    v33 = editorialLayoutSpec;
    templates = [editorialLayoutSpec templates];
    itemCount = [(PXCompositeEditorialLayoutGenerator *)self itemCount];
    v9 = itemCount;
    if (itemCount >= self->_maxTemplateItemCount)
    {
      maxTemplateItemCount = self->_maxTemplateItemCount;
    }

    else
    {
      maxTemplateItemCount = itemCount;
    }

    maxTemplateItemCount = [(PXCompositeEditorialLayoutGenerator *)self _layoutInputsInRange:0, maxTemplateItemCount];
    v32 = templates;
    v12 = [(PXCompositeEditorialLayoutGenerator *)self _minCostingTemplateAmongTemplates:templates forFittingInputItems:maxTemplateItemCount inRange:0 minCost:maxTemplateItemCount, 0];
    numberOfRects = [v12 numberOfRects];
    v14 = [maxTemplateItemCount subarrayWithRange:{0, numberOfRects}];
    blockCopy[2](blockCopy, 0, numberOfRects, v14, v12);
    v15 = v9 - numberOfRects;

    if (v9 - numberOfRects <= self->_minTemplateItemCount)
    {
      v19 = v12;
    }

    else
    {
      do
      {
        if (v15 >= self->_maxTemplateItemCount)
        {
          v16 = self->_maxTemplateItemCount;
        }

        else
        {
          v16 = v15;
        }

        v17 = [v33 preferredNextTemplatesForTemplate:v12];
        v18 = [(PXCompositeEditorialLayoutGenerator *)self _layoutInputsInRange:numberOfRects, v16];
        v34 = 3.40282347e38;
        v19 = [(PXCompositeEditorialLayoutGenerator *)self _minCostingTemplateAmongTemplates:v17 forFittingInputItems:v18 inRange:numberOfRects minCost:v16, &v34];
        if (v19)
        {
          v20 = v34 < 0.5;
        }

        else
        {
          v20 = 0;
        }

        if (!v20)
        {
          v21 = [(PXCompositeEditorialLayoutGenerator *)self _minCostingTemplateAmongTemplates:v32 forFittingInputItems:v18 inRange:numberOfRects minCost:v16, &v34, v34];

          v19 = v21;
        }

        numberOfRects2 = [v19 numberOfRects];
        v23 = [v18 subarrayWithRange:{0, numberOfRects2}];
        blockCopy[2](blockCopy, numberOfRects, numberOfRects2, v23, v19);
        v15 -= numberOfRects2;
        numberOfRects += numberOfRects2;

        v12 = v19;
      }

      while (v15 > self->_minTemplateItemCount);
    }

    if (v15 >= 1)
    {
      if (v15 >= self->_maxTemplateItemCount)
      {
        v24 = self->_maxTemplateItemCount;
      }

      else
      {
        v24 = v15;
      }

      v25 = [v33 preferredNextTemplatesForTemplate:v19];
      v26 = [(PXCompositeEditorialLayoutGenerator *)self _layoutInputsInRange:numberOfRects, v24];
      v34 = 3.40282347e38;
      v27 = [(PXCompositeEditorialLayoutGenerator *)self _minCostingTemplateAmongTemplates:v25 forFittingInputItems:v26 inRange:numberOfRects minCost:v24, &v34];
      if (v27)
      {
        v28 = v34 <= 0.5;
      }

      else
      {
        v28 = 0;
      }

      if (!v28)
      {
        v29 = [(PXCompositeEditorialLayoutGenerator *)self _minCostingTemplateAmongTemplates:v32 forFittingInputItems:v26 inRange:numberOfRects minCost:v24, 0, v34];

        v27 = v29;
      }

      numberOfRects3 = [v27 numberOfRects];
      v31 = [v26 subarrayWithRange:{0, numberOfRects3}];
      blockCopy[2](blockCopy, numberOfRects, numberOfRects3, v31, v27);
    }
  }
}

- (void)_computeTemplatesByTileCountIfNeeded
{
  v24 = *MEMORY[0x1E69E9840];
  if (!self->_templatesByTileCount)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    selfCopy = self;
    metrics = [(PXCompositeEditorialLayoutGenerator *)self metrics];
    editorialLayoutSpec = [metrics editorialLayoutSpec];
    templates = [editorialLayoutSpec templates];

    v7 = [templates countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v20;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(templates);
          }

          v11 = *(*(&v19 + 1) + 8 * i);
          numberOfRects = [v11 numberOfRects];
          v13 = [MEMORY[0x1E696AD98] numberWithInteger:numberOfRects];
          array = [dictionary objectForKeyedSubscript:v13];

          if (!array)
          {
            array = [MEMORY[0x1E695DF70] array];
            v15 = [MEMORY[0x1E696AD98] numberWithInteger:numberOfRects];
            [dictionary setObject:array forKeyedSubscript:v15];
          }

          [array addObject:v11];
        }

        v8 = [templates countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v8);
    }

    v16 = [dictionary copy];
    templatesByTileCount = selfCopy->_templatesByTileCount;
    selfCopy->_templatesByTileCount = v16;
  }
}

- (void)_prepareIfNeeded
{
  if (!self->_isPrepared)
  {
    self->_isPrepared = 1;
    [(PXCompositeEditorialLayoutGenerator *)self _prepareGeometriesBufferForCount:[(PXCompositeEditorialLayoutGenerator *)self itemCount]];
    metrics = [(PXCompositeEditorialLayoutGenerator *)self metrics];
    [metrics referenceSize];
    v6 = v5;
    v8 = v7;
    [metrics interTileSpacing];
    v19 = 0;
    v20 = &v19;
    v21 = 0x3010000000;
    v22 = &unk_1A561E057;
    v23 = *MEMORY[0x1E695EFF8];
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0;
    v14[0] = 0;
    v14[1] = v14;
    v14[2] = 0x2020000000;
    v14[3] = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __55__PXCompositeEditorialLayoutGenerator__prepareIfNeeded__block_invoke;
    v13[3] = &unk_1E772E820;
    v13[7] = &v19;
    v13[8] = a2;
    v13[4] = self;
    v13[5] = v14;
    v13[9] = v6;
    v13[10] = v8;
    v13[11] = v9;
    v13[6] = &v15;
    [(PXCompositeEditorialLayoutGenerator *)self _enumerateTemplatesWithBlock:v13];
    free(v16[3]);
    metrics2 = [(PXCompositeEditorialLayoutGenerator *)self metrics];
    [metrics2 referenceSize];
    v11 = v20[5];
    self->_contentSize.width = v12;
    self->_contentSize.height = v11;

    _Block_object_dispose(v14, 8);
    _Block_object_dispose(&v15, 8);
    _Block_object_dispose(&v19, 8);
  }
}

void __55__PXCompositeEditorialLayoutGenerator__prepareIfNeeded__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a5;
  v8 = [v7 numberOfRects];
  if (v8 <= 0)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:*(a1 + 64) object:*(a1 + 32) file:@"PXCompositeEditorialLayoutGenerator.m" lineNumber:136 description:{@"no rects in template %@", v7}];
  }

  v30 = *MEMORY[0x1E695F060];
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 24);
  if (v10 < v8)
  {
    if (!v10)
    {
      *(v9 + 24) = 10;
      v9 = *(*(a1 + 40) + 8);
      v10 = *(v9 + 24);
    }

    if (v10 < v8)
    {
      v11 = (v9 + 24);
      do
      {
        *v11 = 2 * v10;
        v12 = *(*(a1 + 40) + 8);
        v13 = *(v12 + 24);
        v11 = (v12 + 24);
        v10 = v13;
      }

      while (v13 < v8);
    }

    *(*(*(a1 + 48) + 8) + 24) = malloc_type_realloc(*(*(*(a1 + 48) + 8) + 24), 32 * v10, 0x1000040E0EAB150uLL);
  }

  [v7 getComputedRects:*(*(*(a1 + 48) + 8) + 24) contentSize:&v30 forReferenceSize:*(a1 + 72) interTileSpacing:{*(a1 + 80), *(a1 + 88)}];
  if (v8 >= 1)
  {
    v14 = 0;
    v15 = 152 * a2;
    do
    {
      v31 = CGRectOffset(*(*(*(*(a1 + 48) + 8) + 24) + v14), 0.0, *(*(*(a1 + 56) + 8) + 40));
      v16 = *(a1 + 32);
      v17 = v16[5] + v15;
      [v16 _geometryFromFrame:a2 index:{v31.origin.x, v31.origin.y, v31.size.width, v31.size.height}];
      *v17 = v20;
      *(v17 + 16) = v21;
      *(v17 + 64) = v24;
      *(v17 + 80) = v25;
      *(v17 + 32) = v22;
      *(v17 + 48) = v23;
      *(v17 + 144) = v29;
      *(v17 + 112) = v27;
      *(v17 + 128) = v28;
      *(v17 + 96) = v26;
      ++a2;
      v15 += 152;
      v14 += 32;
      --v8;
    }

    while (v8);
  }

  v18 = *(&v30 + 1);
  *(*(*(a1 + 56) + 8) + 32) = *&v30 + *(*(*(a1 + 56) + 8) + 32);
  *(*(*(a1 + 56) + 8) + 40) = v18 + *(a1 + 88) + *(*(*(a1 + 56) + 8) + 40);
}

- (void)getGeometries:(_PXLayoutGeometry *)geometries inRange:(_NSRange)range withKind:(int64_t)kind
{
  if (!kind)
  {
    length = range.length;
    location = range.location;
    v10 = range.location + range.length;
    if (range.location + range.length > [(PXCompositeEditorialLayoutGenerator *)self itemCount])
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXCompositeEditorialLayoutGenerator.m" lineNumber:109 description:@"the range must be <= to the number of itemCount"];
    }

    [(PXCompositeEditorialLayoutGenerator *)self _prepareIfNeeded];
    if (location < v10)
    {
      v11 = location;
      do
      {
        v12 = &geometries[v11];
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
  [(PXCompositeEditorialLayoutGenerator *)self _prepareIfNeeded];
  width = self->_contentSize.width;
  height = self->_contentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)estimatedSize
{
  metrics = [(PXCompositeEditorialLayoutGenerator *)self metrics];
  [metrics referenceSize];
  v5 = v4;
  v6 = self->_maxTemplateItemCount / self->_minNumberOfColumns;
  editorialLayoutSpec = [metrics editorialLayoutSpec];
  templates = [editorialLayoutSpec templates];
  firstObject = [templates firstObject];
  [firstObject tileAspectRatio];
  v11 = v10;

  v12 = 0.25;
  if (v11 >= 0.25)
  {
    v12 = v11;
  }

  v13 = v5 / v12 * v6;

  v14 = v5;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

- (void)invalidate
{
  v3.receiver = self;
  v3.super_class = PXCompositeEditorialLayoutGenerator;
  [(PXCompositeEditorialLayoutGenerator *)&v3 invalidate];
  self->_geometriesCount = 0;
}

- (void)dealloc
{
  free(self->_geometries);
  free(self->_layoutItemWeights);
  v3.receiver = self;
  v3.super_class = PXCompositeEditorialLayoutGenerator;
  [(PXCompositeEditorialLayoutGenerator *)&v3 dealloc];
}

- (PXCompositeEditorialLayoutGenerator)initWithMetrics:(id)metrics
{
  metricsCopy = metrics;
  v9.receiver = self;
  v9.super_class = PXCompositeEditorialLayoutGenerator;
  v5 = [(PXCompositeEditorialLayoutGenerator *)&v9 initWithMetrics:metricsCopy];
  v6 = v5;
  if (v5)
  {
    v5->_geometries = 0;
    editorialLayoutSpec = [metricsCopy editorialLayoutSpec];
    v6->_minNumberOfColumns = [editorialLayoutSpec minNumberOfColumns];
    v6->_minTemplateItemCount = [editorialLayoutSpec minNumberOfRects];
    v6->_maxTemplateItemCount = [editorialLayoutSpec maxNumberOfRects];
  }

  return v6;
}

@end