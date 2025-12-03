@interface _NSTextHighlightCluster
- (uint64_t)addRunsWithTextRangeArray:(uint64_t)result;
- (uint64_t)bottomNeighborExistsAtPoint:(uint64_t)point withinDistance:(double)distance withLeftCornerExtensionDistance:(double)extensionDistance withRightCornerExtensionDistance:(double)cornerExtensionDistance;
- (uint64_t)topNeighborExistsAtPoint:(uint64_t)point withinDistance:(double)distance withLeftCornerExtensionDistance:(double)extensionDistance withRightCornerExtensionDistance:(double)cornerExtensionDistance;
- (void)accessBorderDict:(id)dict forKey:(double)key usingBlock:(id)block;
- (void)addToBorderDict:(id)dict key:(double)key object:(CGRect)object;
- (void)drawRunsUsingBlock:(uint64_t)block;
- (void)initWithShapeProvider:(void *)provider;
- (void)registerMaxYOfRun:(id)run;
- (void)registerMinYOfRun:(id)run;
@end

@implementation _NSTextHighlightCluster

- (uint64_t)topNeighborExistsAtPoint:(uint64_t)point withinDistance:(double)distance withLeftCornerExtensionDistance:(double)extensionDistance withRightCornerExtensionDistance:(double)cornerExtensionDistance
{
  if (self)
  {
    v12 = *(self + 8);
    v13 = [MEMORY[0x1E696AD98] numberWithDouble:extensionDistance];
    v14 = [v12 objectForKey:v13];

    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 0;
    if (v14 && [v14 count])
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __132___NSTextHighlightCluster_topNeighborExistsAtPoint_withinDistance_withLeftCornerExtensionDistance_withRightCornerExtensionDistance___block_invoke;
      v17[3] = &unk_1E7267280;
      *&v17[6] = distance;
      *&v17[7] = extensionDistance;
      *&v17[8] = cornerExtensionDistance;
      v17[9] = a2;
      v17[10] = point;
      v17[4] = self;
      v17[5] = &v18;
      [v14 enumerateObjectsUsingBlock:v17];
    }

    v15 = *(v19 + 24);
    _Block_object_dispose(&v18, 8);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

- (uint64_t)bottomNeighborExistsAtPoint:(uint64_t)point withinDistance:(double)distance withLeftCornerExtensionDistance:(double)extensionDistance withRightCornerExtensionDistance:(double)cornerExtensionDistance
{
  if (self)
  {
    v12 = *(self + 16);
    v13 = [MEMORY[0x1E696AD98] numberWithDouble:extensionDistance];
    v14 = [v12 objectForKey:v13];

    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 0;
    if (v14 && [v14 count])
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __135___NSTextHighlightCluster_bottomNeighborExistsAtPoint_withinDistance_withLeftCornerExtensionDistance_withRightCornerExtensionDistance___block_invoke;
      v17[3] = &unk_1E7267280;
      *&v17[6] = distance;
      *&v17[7] = extensionDistance;
      *&v17[8] = cornerExtensionDistance;
      v17[9] = a2;
      v17[10] = point;
      v17[4] = self;
      v17[5] = &v18;
      [v14 enumerateObjectsUsingBlock:v17];
    }

    v15 = *(v19 + 24);
    _Block_object_dispose(&v18, 8);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

- (void)addToBorderDict:(id)dict key:(double)key object:(CGRect)object
{
  height = object.size.height;
  width = object.size.width;
  y = object.origin.y;
  x = object.origin.x;
  dictCopy = dict;
  v10 = [MEMORY[0x1E696AD98] numberWithLong:(key * 1000.0)];
  array = [dictCopy objectForKey:v10];
  if (!array)
  {
    array = [MEMORY[0x1E695DF70] array];
    [dictCopy setObject:array forKey:v10];
  }

  v12 = [MEMORY[0x1E696B098] valueWithRect:{x, y, width, height}];
  [array addObject:v12];
}

- (void)accessBorderDict:(id)dict forKey:(double)key usingBlock:(id)block
{
  blockCopy = block;
  v8 = MEMORY[0x1E696AD98];
  dictCopy = dict;
  v10 = [v8 numberWithLong:(key * 1000.0)];
  v11 = [dictCopy objectForKey:v10];

  if (v11 && [v11 count])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __62___NSTextHighlightCluster_accessBorderDict_forKey_usingBlock___block_invoke;
    v12[3] = &unk_1E7267258;
    v13 = blockCopy;
    [v11 enumerateObjectsUsingBlock:v12];
  }
}

- (void)registerMinYOfRun:(id)run
{
  runCopy = run;
  if (runCopy && [runCopy[7] count])
  {
    [_NSTextHighlightCluster registerMinYOfRun:];
  }

  MEMORY[0x1EEE66BB8]();
}

- (void)registerMaxYOfRun:(id)run
{
  runCopy = run;
  if (runCopy && [runCopy[7] count])
  {
    [_NSTextHighlightCluster registerMaxYOfRun:];
  }

  MEMORY[0x1EEE66BB8]();
}

- (void)initWithShapeProvider:(void *)provider
{
  v3 = a2;
  if (provider)
  {
    v12.receiver = provider;
    v12.super_class = _NSTextHighlightCluster;
    v4 = objc_msgSendSuper2(&v12, sel_init);
    provider = v4;
    if (v4)
    {
      objc_storeWeak(v4 + 3, v3);
      array = [MEMORY[0x1E695DF70] array];
      v6 = provider[4];
      provider[4] = array;

      v7 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:0 valueOptions:0 capacity:10];
      v8 = provider[1];
      provider[1] = v7;

      v9 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:0 valueOptions:0 capacity:10];
      v10 = provider[2];
      provider[2] = v9;
    }
  }

  return provider;
}

- (uint64_t)addRunsWithTextRangeArray:(uint64_t)result
{
  if (result)
  {
    OUTLINED_FUNCTION_0_2();
    v4 = 3221225472;
    v5 = __53___NSTextHighlightCluster_addRunsWithTextRangeArray___block_invoke;
    v6 = &unk_1E7267230;
    v7 = v1;
    return [v2 enumerateObjectsUsingBlock:v3];
  }

  return result;
}

- (void)drawRunsUsingBlock:(uint64_t)block
{
  v3 = a2;
  if (block)
  {
    v4 = *(block + 32);
    OUTLINED_FUNCTION_0_2();
    v6 = 3221225472;
    v7 = __46___NSTextHighlightCluster_drawRunsUsingBlock___block_invoke;
    v8 = &unk_1E72672A8;
    v9 = v3;
    [v4 enumerateObjectsUsingBlock:v5];
  }
}

- (void)registerMinYOfRun:.cold.1()
{
  OUTLINED_FUNCTION_12_0();
  v6 = [(_NSTextHighlightRun *)v5 firstSegment];
  v7 = v6;
  if (v6)
  {
    v8 = *(v6 + 136);
  }

  else
  {
    v8 = 0.0;
  }

  v32 = [v3 numberWithDouble:v8];

  v9 = [*(v1 + 16) objectForKey:v32];
  if (!v9)
  {
    v9 = [MEMORY[0x1E695DF70] array];
    [*(v1 + 16) setObject:v9 forKey:v32];
  }

  v10 = MEMORY[0x1E696B098];
  v11 = [(_NSTextHighlightRun *)v0 firstSegment];
  v12 = v11;
  if (v11)
  {
    v13 = *(v11 + 128);
    v14 = *(v11 + 136);
    v15 = *(v11 + 144);
    v16 = *(v11 + 152);
  }

  else
  {
    v13 = OUTLINED_FUNCTION_2_1();
  }

  v17 = [v10 valueWithRect:{v13, v14, v15, v16}];
  [v9 addObject:v17];

  if ([*v2 count] >= 2)
  {
    v18 = *(v4 + 3480);
    v19 = [(_NSTextHighlightRun *)v0 secondSegment];
    v20 = v19;
    if (v19)
    {
      v21 = *(v19 + 136);
    }

    else
    {
      v21 = 0.0;
    }

    v22 = [v18 numberWithDouble:v21];

    v23 = [*(v1 + 16) objectForKey:v22];
    if (!v23)
    {
      v23 = [MEMORY[0x1E695DF70] array];
      [*(v1 + 16) setObject:v23 forKey:v22];
    }

    v24 = MEMORY[0x1E696B098];
    v25 = [(_NSTextHighlightRun *)v0 secondSegment];
    v26 = v25;
    if (v25)
    {
      v27 = *(v25 + 128);
      v28 = *(v25 + 136);
      v29 = *(v25 + 144);
      v30 = *(v25 + 152);
    }

    else
    {
      v27 = OUTLINED_FUNCTION_2_1();
    }

    v31 = [v24 valueWithRect:{v27, v28, v29, v30}];
    [v23 addObject:v31];
  }
}

- (void)registerMaxYOfRun:.cold.1()
{
  OUTLINED_FUNCTION_12_0();
  v6 = [(_NSTextHighlightRun *)v5 lastSegment];
  v7 = v6;
  if (v6)
  {
    v8 = *(v6 + 136) + *(v6 + 152);
  }

  else
  {
    v8 = 0.0;
  }

  v32 = [v3 numberWithDouble:v8];

  v9 = [*(v1 + 8) objectForKey:v32];
  if (!v9)
  {
    v9 = [MEMORY[0x1E695DF70] array];
    [*(v1 + 8) setObject:v9 forKey:v32];
  }

  v10 = MEMORY[0x1E696B098];
  v11 = [(_NSTextHighlightRun *)v0 lastSegment];
  v12 = v11;
  if (v11)
  {
    v13 = *(v11 + 128);
    v14 = *(v11 + 136);
    v15 = *(v11 + 144);
    v16 = *(v11 + 152);
  }

  else
  {
    v13 = OUTLINED_FUNCTION_2_1();
  }

  v17 = [v10 valueWithRect:{v13, v14, v15, v16}];
  [v9 addObject:v17];

  if ([*v2 count] >= 2)
  {
    v18 = *(v4 + 3480);
    v19 = [(_NSTextHighlightRun *)v0 secondLastSegment];
    v20 = v19;
    if (v19)
    {
      v21 = *(v19 + 136) + *(v19 + 152);
    }

    else
    {
      v21 = 0.0;
    }

    v22 = [v18 numberWithDouble:v21];

    v23 = [*(v1 + 8) objectForKey:v22];
    if (!v23)
    {
      v23 = [MEMORY[0x1E695DF70] array];
      [*(v1 + 8) setObject:v23 forKey:v22];
    }

    v24 = MEMORY[0x1E696B098];
    v25 = [(_NSTextHighlightRun *)v0 secondLastSegment];
    v26 = v25;
    if (v25)
    {
      v27 = *(v25 + 128);
      v28 = *(v25 + 136);
      v29 = *(v25 + 144);
      v30 = *(v25 + 152);
    }

    else
    {
      v27 = OUTLINED_FUNCTION_2_1();
    }

    v31 = [v24 valueWithRect:{v27, v28, v29, v30}];
    [v23 addObject:v31];
  }
}

@end