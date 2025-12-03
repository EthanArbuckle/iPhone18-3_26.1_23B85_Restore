@interface NSTextHighlightShapeProvider
- (BOOL)enumerateHighlightPathsForRange:(id)range options:(unint64_t)options usingBlock:(id)block;
- (BOOL)enumerateHighlightShapesForRunClusterWithRanges:(id)ranges usingBlock:(id)block;
- (BOOL)isPoint:(CGPoint)point withinHorizontalDistance:(double)distance onRect:(CGRect)rect leftDistance:(double *)leftDistance rightDistance:(double *)rightDistance;
- (NSTextHighlightShapeProvider)initWithTextLayoutManager:(id)manager;
- (id)textLayoutManager;
- (id)textSegmentRectsForRange:(id)range;
- (unint64_t)modifyOptions:(unint64_t)options forLineBoundariesInRange:(id)range;
- (void)enumerateHighlightPathsForRanges:(id)ranges usingBlock:(id)block;
@end

@implementation NSTextHighlightShapeProvider

- (NSTextHighlightShapeProvider)initWithTextLayoutManager:(id)manager
{
  managerCopy = manager;
  v8.receiver = self;
  v8.super_class = NSTextHighlightShapeProvider;
  v5 = [(NSTextHighlightShapeProvider *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_textLayoutManager, managerCopy);
  }

  return v6;
}

- (id)textLayoutManager
{
  WeakRetained = objc_loadWeakRetained(&self->_textLayoutManager);

  return WeakRetained;
}

- (BOOL)isPoint:(CGPoint)point withinHorizontalDistance:(double)distance onRect:(CGRect)rect leftDistance:(double *)leftDistance rightDistance:(double *)rightDistance
{
  *leftDistance = rect.origin.x - point.x;
  *rightDistance = rect.origin.x + rect.size.width - point.x;
  v7 = rect.origin.x <= point.x;
  if (point.x > rect.origin.x + rect.size.width + distance)
  {
    v7 = 0;
  }

  v8 = rect.origin.x <= point.x + distance;
  if (point.x > rect.origin.x + rect.size.width)
  {
    v8 = 0;
  }

  return v8 || v7;
}

- (id)textSegmentRectsForRange:(id)range
{
  v4 = MEMORY[0x1E695DF70];
  rangeCopy = range;
  array = [v4 array];
  WeakRetained = objc_loadWeakRetained(&self->_textLayoutManager);
  textContentManager = [WeakRetained textContentManager];
  documentRange = [textContentManager documentRange];
  endLocation = [documentRange endLocation];

  v11 = objc_loadWeakRetained(&self->_textLayoutManager);
  LOBYTE(textContentManager) = __NSTextHighlightShapeProviderHasTypingAttributesOverride(v11, rangeCopy);

  v12 = objc_loadWeakRetained(&self->_textLayoutManager);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __57__NSTextHighlightShapeProvider_textSegmentRectsForRange___block_invoke;
  v18[3] = &unk_1E72672D0;
  v21 = textContentManager;
  v19 = endLocation;
  v13 = array;
  v20 = v13;
  v14 = endLocation;
  [v12 enumerateTextSegmentsInRange:rangeCopy type:0 options:0 usingBlock:v18];

  v15 = v20;
  v16 = v13;

  return v13;
}

uint64_t __57__NSTextHighlightShapeProvider_textSegmentRectsForRange___block_invoke(uint64_t a1, void *a2, void *a3, double a4, double a5, double a6, double a7)
{
  v13 = a2;
  v14 = a3;
  if (*(a1 + 48) != 1 || ([v13 isNotEmpty] & 1) != 0 || (objc_msgSend(v13, "endLocation"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "isEqual:", *(a1 + 32)), v15, (v16 & 1) == 0))
  {
    v17 = *(a1 + 40);
    v18 = [MEMORY[0x1E696B098] valueWithRect:{a4, a5, a6, a7}];
    [v17 addObject:v18];
  }

  return 1;
}

- (unint64_t)modifyOptions:(unint64_t)options forLineBoundariesInRange:(id)range
{
  rangeCopy = range;
  WeakRetained = objc_loadWeakRetained(&self->_textLayoutManager);
  v8 = [WeakRetained _rangeForAllLinesContainingTextInRange:rangeCopy];

  if (v8)
  {
    location = [rangeCopy location];
    location2 = [v8 location];
    v11 = [location compare:location2];

    if ((v11 + 1) >= 2)
    {
      optionsCopy = options;
    }

    else
    {
      optionsCopy = options | 4;
    }

    endLocation = [rangeCopy endLocation];
    endLocation2 = [v8 endLocation];
    v15 = [endLocation compare:endLocation2];

    if (v15 >= 2)
    {
      options = optionsCopy;
    }

    else
    {
      options = optionsCopy | 8;
    }
  }

  return options;
}

- (void)enumerateHighlightPathsForRanges:(id)ranges usingBlock:(id)block
{
  blockCopy = block;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __76__NSTextHighlightShapeProvider_enumerateHighlightPathsForRanges_usingBlock___block_invoke;
  v8[3] = &unk_1E72672F8;
  v8[4] = self;
  v9 = blockCopy;
  v7 = blockCopy;
  [ranges enumerateObjectsUsingBlock:v8];
}

uint64_t __76__NSTextHighlightShapeProvider_enumerateHighlightPathsForRanges_usingBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) enumerateHighlightPathsForRange:a2 options:0 usingBlock:*(a1 + 40)];
  *a4 = result;
  return result;
}

- (BOOL)enumerateHighlightShapesForRunClusterWithRanges:(id)ranges usingBlock:(id)block
{
  blockCopy = block;
  rangesCopy = ranges;
  v8 = [[_NSTextHighlightCluster alloc] initWithShapeProvider:?];
  [_NSTextHighlightCluster addRunsWithTextRangeArray:v8];

  [(_NSTextHighlightCluster *)v8 drawRunsUsingBlock:blockCopy];
  return 1;
}

- (BOOL)enumerateHighlightPathsForRange:(id)range options:(unint64_t)options usingBlock:(id)block
{
  v18[1] = *MEMORY[0x1E69E9840];
  blockCopy = block;
  rangeCopy = range;
  v9 = [[_NSTextHighlightCluster alloc] initWithShapeProvider:?];
  v18[0] = rangeCopy;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  [_NSTextHighlightCluster addRunsWithTextRangeArray:v9];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __83__NSTextHighlightShapeProvider_enumerateHighlightPathsForRange_options_usingBlock___block_invoke;
  v15[3] = &unk_1E7267320;
  v16 = v9;
  v17 = blockCopy;
  v11 = v9;
  v12 = blockCopy;
  v13 = MEMORY[0x193AD48B0](v15);
  [(_NSTextHighlightCluster *)v11 drawRunsUsingBlock:v13];

  return 1;
}

void __83__NSTextHighlightShapeProvider_enumerateHighlightPathsForRange_options_usingBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  if (v7)
  {
    v7 = v7[4];
  }

  v9 = v7;
  v10 = [v9 objectAtIndex:a4];
  v12 = v10;
  if (v10)
  {
    v11 = *(v10 + 48);
  }

  else
  {
    v11 = 0;
  }

  (*(v8 + 16))(v8, a2, a3, v11, 0, 0);
}

@end