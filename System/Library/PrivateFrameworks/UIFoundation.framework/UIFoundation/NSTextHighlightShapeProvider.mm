@interface NSTextHighlightShapeProvider
- (BOOL)enumerateHighlightPathsForRange:(id)a3 options:(unint64_t)a4 usingBlock:(id)a5;
- (BOOL)enumerateHighlightShapesForRunClusterWithRanges:(id)a3 usingBlock:(id)a4;
- (BOOL)isPoint:(CGPoint)a3 withinHorizontalDistance:(double)a4 onRect:(CGRect)a5 leftDistance:(double *)a6 rightDistance:(double *)a7;
- (NSTextHighlightShapeProvider)initWithTextLayoutManager:(id)a3;
- (id)textLayoutManager;
- (id)textSegmentRectsForRange:(id)a3;
- (unint64_t)modifyOptions:(unint64_t)a3 forLineBoundariesInRange:(id)a4;
- (void)enumerateHighlightPathsForRanges:(id)a3 usingBlock:(id)a4;
@end

@implementation NSTextHighlightShapeProvider

- (NSTextHighlightShapeProvider)initWithTextLayoutManager:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = NSTextHighlightShapeProvider;
  v5 = [(NSTextHighlightShapeProvider *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_textLayoutManager, v4);
  }

  return v6;
}

- (id)textLayoutManager
{
  WeakRetained = objc_loadWeakRetained(&self->_textLayoutManager);

  return WeakRetained;
}

- (BOOL)isPoint:(CGPoint)a3 withinHorizontalDistance:(double)a4 onRect:(CGRect)a5 leftDistance:(double *)a6 rightDistance:(double *)a7
{
  *a6 = a5.origin.x - a3.x;
  *a7 = a5.origin.x + a5.size.width - a3.x;
  v7 = a5.origin.x <= a3.x;
  if (a3.x > a5.origin.x + a5.size.width + a4)
  {
    v7 = 0;
  }

  v8 = a5.origin.x <= a3.x + a4;
  if (a3.x > a5.origin.x + a5.size.width)
  {
    v8 = 0;
  }

  return v8 || v7;
}

- (id)textSegmentRectsForRange:(id)a3
{
  v4 = MEMORY[0x1E695DF70];
  v5 = a3;
  v6 = [v4 array];
  WeakRetained = objc_loadWeakRetained(&self->_textLayoutManager);
  v8 = [WeakRetained textContentManager];
  v9 = [v8 documentRange];
  v10 = [v9 endLocation];

  v11 = objc_loadWeakRetained(&self->_textLayoutManager);
  LOBYTE(v8) = __NSTextHighlightShapeProviderHasTypingAttributesOverride(v11, v5);

  v12 = objc_loadWeakRetained(&self->_textLayoutManager);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __57__NSTextHighlightShapeProvider_textSegmentRectsForRange___block_invoke;
  v18[3] = &unk_1E72672D0;
  v21 = v8;
  v19 = v10;
  v13 = v6;
  v20 = v13;
  v14 = v10;
  [v12 enumerateTextSegmentsInRange:v5 type:0 options:0 usingBlock:v18];

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

- (unint64_t)modifyOptions:(unint64_t)a3 forLineBoundariesInRange:(id)a4
{
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_textLayoutManager);
  v8 = [WeakRetained _rangeForAllLinesContainingTextInRange:v6];

  if (v8)
  {
    v9 = [v6 location];
    v10 = [v8 location];
    v11 = [v9 compare:v10];

    if ((v11 + 1) >= 2)
    {
      v12 = a3;
    }

    else
    {
      v12 = a3 | 4;
    }

    v13 = [v6 endLocation];
    v14 = [v8 endLocation];
    v15 = [v13 compare:v14];

    if (v15 >= 2)
    {
      a3 = v12;
    }

    else
    {
      a3 = v12 | 8;
    }
  }

  return a3;
}

- (void)enumerateHighlightPathsForRanges:(id)a3 usingBlock:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __76__NSTextHighlightShapeProvider_enumerateHighlightPathsForRanges_usingBlock___block_invoke;
  v8[3] = &unk_1E72672F8;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [a3 enumerateObjectsUsingBlock:v8];
}

uint64_t __76__NSTextHighlightShapeProvider_enumerateHighlightPathsForRanges_usingBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) enumerateHighlightPathsForRange:a2 options:0 usingBlock:*(a1 + 40)];
  *a4 = result;
  return result;
}

- (BOOL)enumerateHighlightShapesForRunClusterWithRanges:(id)a3 usingBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[_NSTextHighlightCluster alloc] initWithShapeProvider:?];
  [_NSTextHighlightCluster addRunsWithTextRangeArray:v8];

  [(_NSTextHighlightCluster *)v8 drawRunsUsingBlock:v6];
  return 1;
}

- (BOOL)enumerateHighlightPathsForRange:(id)a3 options:(unint64_t)a4 usingBlock:(id)a5
{
  v18[1] = *MEMORY[0x1E69E9840];
  v7 = a5;
  v8 = a3;
  v9 = [[_NSTextHighlightCluster alloc] initWithShapeProvider:?];
  v18[0] = v8;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  [_NSTextHighlightCluster addRunsWithTextRangeArray:v9];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __83__NSTextHighlightShapeProvider_enumerateHighlightPathsForRange_options_usingBlock___block_invoke;
  v15[3] = &unk_1E7267320;
  v16 = v9;
  v17 = v7;
  v11 = v9;
  v12 = v7;
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