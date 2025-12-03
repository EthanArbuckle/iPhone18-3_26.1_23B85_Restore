@interface VKCMockTextProvider
- (CGRect)caretRectForPosition:(id)position;
- (CGRect)firstRectForRange:(id)range documentView:(id)view contentRect:(CGRect)rect;
- (VKCMockTextProvider)initWithDictionary:(id)dictionary;
- (id)allLineQuads;
- (id)characterRangeAtPoint:(CGPoint)point;
- (id)closestPositionToPoint:(CGPoint)point withinRange:(id)range;
- (id)lineForIndex:(unint64_t)index;
- (id)rangeOfLineForPosition:(id)position;
- (id)rangeOfWordForPosition:(id)position;
- (id)selectionRectsForRange:(id)range documentView:(id)view contentRect:(CGRect)rect;
- (id)smallestSelectableRangeForPosition:(id)position;
- (id)wordForIndex:(unint64_t)index;
- (void)loadInfoFromDictionary:(id)dictionary;
@end

@implementation VKCMockTextProvider

- (VKCMockTextProvider)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = VKCMockTextProvider;
  v5 = [(VKCMockTextProvider *)&v9 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    lines = v5->_lines;
    v5->_lines = v6;

    [(VKCMockTextProvider *)v5 loadInfoFromDictionary:dictionaryCopy];
  }

  return v5;
}

- (void)loadInfoFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  lines = [(VKCMockTextProvider *)self lines];
  v6 = [dictionaryCopy objectForKeyedSubscript:VKCMockResultLinesKey];
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2020000000;
  v19[3] = 0;
  v7 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __46__VKCMockTextProvider_loadInfoFromDictionary___block_invoke;
  v14 = &unk_1E7BE75D0;
  v18 = v19;
  v8 = lines;
  v15 = v8;
  v9 = v7;
  v16 = v9;
  v10 = v6;
  v17 = v10;
  [v10 enumerateObjectsUsingBlock:&v11];
  [(VKCMockTextProvider *)self setText:v9, v11, v12, v13, v14];

  _Block_object_dispose(v19, 8);
}

void __46__VKCMockTextProvider_loadInfoFromDictionary___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v10 = [[VKCMockTextLine alloc] initWithWordsArray:v5 startingIndex:*(*(*(a1 + 56) + 8) + 24)];

  [*(a1 + 32) addObject:v10];
  v6 = [(VKCMockTextLine *)v10 range];
  *(*(*(a1 + 56) + 8) + 24) = v6 + v7;
  v8 = *(a1 + 40);
  v9 = [(VKCMockTextLine *)v10 text];
  [v8 appendString:v9];

  if ([*(a1 + 48) count] - 1 != a3)
  {
    ++*(*(*(a1 + 56) + 8) + 24);
    [*(a1 + 40) appendString:@"\n"];
  }
}

- (id)allLineQuads
{
  lines = [(VKCMockTextProvider *)self lines];
  v3 = [lines vk_compactMap:&__block_literal_global_41];

  return v3;
}

- (id)lineForIndex:(unint64_t)index
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__21;
  v15 = __Block_byref_object_dispose__21;
  v16 = 0;
  text = [(VKCMockTextProvider *)self text];
  v6 = [text length];

  if (v6 > index)
  {
    lines = [(VKCMockTextProvider *)self lines];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __36__VKCMockTextProvider_lineForIndex___block_invoke;
    v10[3] = &unk_1E7BE7618;
    v10[4] = &v11;
    v10[5] = index;
    [lines enumerateObjectsUsingBlock:v10];
  }

  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v8;
}

void __36__VKCMockTextProvider_lineForIndex___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 range];
  if (VKMRangeContainsIndex(v7, v8, *(a1 + 40)))
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (id)wordForIndex:(unint64_t)index
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__21;
  v13 = __Block_byref_object_dispose__21;
  v14 = 0;
  v4 = [(VKCMockTextProvider *)self lineForIndex:?];
  words = [v4 words];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __36__VKCMockTextProvider_wordForIndex___block_invoke;
  v8[3] = &unk_1E7BE7640;
  v8[4] = &v9;
  v8[5] = index;
  [words enumerateObjectsUsingBlock:v8];

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

void __36__VKCMockTextProvider_wordForIndex___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 range];
  if (VKMRangeContainsIndex(v7, v8, *(a1 + 40)))
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (CGRect)caretRectForPosition:(id)position
{
  v3 = *MEMORY[0x1E695F058];
  v4 = *(MEMORY[0x1E695F058] + 8);
  v5 = *(MEMORY[0x1E695F058] + 16);
  v6 = *(MEMORY[0x1E695F058] + 24);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (id)characterRangeAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__21;
  v16 = __Block_byref_object_dispose__21;
  v17 = 0;
  lines = [(VKCMockTextProvider *)self lines];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __45__VKCMockTextProvider_characterRangeAtPoint___block_invoke;
  v11[3] = &unk_1E7BE7690;
  *&v11[5] = x;
  *&v11[6] = y;
  v11[4] = &v12;
  [lines enumerateObjectsUsingBlock:v11];

  v6 = v13[5];
  if (v6)
  {
    range = [v6 range];
    v9 = [VKTextRange rangeWithNSRange:range, v8];
  }

  else
  {
    v9 = 0;
  }

  _Block_object_dispose(&v12, 8);

  return v9;
}

void __45__VKCMockTextProvider_characterRangeAtPoint___block_invoke(uint64_t a1, void *a2, uint64_t a3, BOOL *a4)
{
  v6 = a2;
  v7 = [v6 quad];
  v8 = [v7 containsPoint:{*(a1 + 40), *(a1 + 48)}];

  if (v8)
  {
    v9 = [v6 words];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __45__VKCMockTextProvider_characterRangeAtPoint___block_invoke_2;
    v10[3] = &unk_1E7BE7668;
    v11 = *(a1 + 40);
    v10[4] = *(a1 + 32);
    [v9 enumerateObjectsUsingBlock:v10];
  }

  *a4 = *(*(*(a1 + 32) + 8) + 40) != 0;
}

void __45__VKCMockTextProvider_characterRangeAtPoint___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, BOOL *a4)
{
  v9 = a2;
  v7 = [v9 quad];
  v8 = [v7 containsPoint:{*(a1 + 40), *(a1 + 48)}];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }

  *a4 = *(*(*(a1 + 32) + 8) + 40) != 0;
}

- (id)closestPositionToPoint:(CGPoint)point withinRange:(id)range
{
  y = point.y;
  x = point.x;
  rangeCopy = range;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__21;
  v43 = __Block_byref_object_dispose__21;
  v44 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0x7FF0000000000000;
  lines = [(VKCMockTextProvider *)self lines];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __58__VKCMockTextProvider_closestPositionToPoint_withinRange___block_invoke;
  v29[3] = &unk_1E7BE76B8;
  v9 = rangeCopy;
  v33 = x;
  v34 = y;
  v30 = v9;
  v31 = &v35;
  v32 = &v39;
  [lines enumerateObjectsUsingBlock:v29];

  v10 = v40;
  if (v40[5])
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy__21;
    v27 = __Block_byref_object_dispose__21;
    v28 = 0;
    v36[3] = 0x7FF0000000000000;
    words = [v10[5] words];
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __58__VKCMockTextProvider_closestPositionToPoint_withinRange___block_invoke_2;
    v17 = &unk_1E7BE76E0;
    v21 = x;
    v22 = y;
    v18 = v9;
    v19 = &v35;
    v20 = &v23;
    [words enumerateObjectsUsingBlock:&v14];

    v12 = +[VKTextPosition positionWithOffset:](VKTextPosition, "positionWithOffset:", [v24[5] range]);

    _Block_object_dispose(&v23, 8);
  }

  else
  {
    v12 = 0;
  }

  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v39, 8);

  return v12;
}

void __58__VKCMockTextProvider_closestPositionToPoint_withinRange___block_invoke(uint64_t a1, void *a2)
{
  v14 = a2;
  v4 = [v14 range];
  v6 = v5;
  v7 = [*(a1 + 32) nsRange];
  VKMClampRange(v4, v6, v7, v8);
  if (v9)
  {
    v10 = [v14 quad];
    [v10 mininumDistanceToPoint:{*(a1 + 56), *(a1 + 64)}];
    v12 = v11;

    v13 = *(*(a1 + 40) + 8);
    if (v12 < *(v13 + 24))
    {
      *(v13 + 24) = v12;
      objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
    }
  }
}

void __58__VKCMockTextProvider_closestPositionToPoint_withinRange___block_invoke_2(uint64_t a1, void *a2)
{
  v14 = a2;
  v4 = [v14 range];
  v6 = v5;
  v7 = [*(a1 + 32) nsRange];
  VKMClampRange(v4, v6, v7, v8);
  if (v9)
  {
    v10 = [v14 quad];
    [v10 mininumDistanceToPoint:{*(a1 + 56), *(a1 + 64)}];
    v12 = v11;

    v13 = *(*(a1 + 40) + 8);
    if (v12 < *(v13 + 24))
    {
      *(v13 + 24) = v12;
      objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
    }
  }
}

- (CGRect)firstRectForRange:(id)range documentView:(id)view contentRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  viewCopy = view;
  v12 = -[VKCMockTextProvider wordForIndex:](self, "wordForIndex:", [range startOffset]);
  quad = [v12 quad];
  v14 = [quad quadByConvertingFromNormalizedRectToView:viewCopy contentsRect:{x, y, width, height}];

  [v14 boundingBox];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v23 = v16;
  v24 = v18;
  v25 = v20;
  v26 = v22;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

- (id)selectionRectsForRange:(id)range documentView:(id)view contentRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  rangeCopy = range;
  viewCopy = view;
  if ([rangeCopy isEmpty])
  {
    v13 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    lines = [(VKCMockTextProvider *)self lines];
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __71__VKCMockTextProvider_selectionRectsForRange_documentView_contentRect___block_invoke;
    v21 = &unk_1E7BE7758;
    selfCopy = self;
    v23 = rangeCopy;
    v26 = x;
    v27 = y;
    v28 = width;
    v29 = height;
    v24 = viewCopy;
    v25 = v14;
    v16 = v14;
    [lines enumerateObjectsUsingBlock:&v18];

    v13 = [v16 vk_compactMap:{&__block_literal_global_161, v18, v19, v20, v21, selfCopy}];
  }

  return v13;
}

void __71__VKCMockTextProvider_selectionRectsForRange_documentView_contentRect___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) isRunningTest])
  {
    v4 = [v3 words];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __71__VKCMockTextProvider_selectionRectsForRange_documentView_contentRect___block_invoke_2;
    v31[3] = &unk_1E7BE7708;
    v32 = *(a1 + 40);
    v33 = *(a1 + 48);
    v5 = *(a1 + 80);
    v35 = *(a1 + 64);
    v36 = v5;
    v34 = *(a1 + 56);
    [v4 enumerateObjectsUsingBlock:v31];

    v6 = v32;
LABEL_6:

    goto LABEL_7;
  }

  v7 = [*(a1 + 40) nsRange];
  v9 = v8;
  v38.location = [v3 range];
  v38.length = v10;
  v37.location = v7;
  v37.length = v9;
  if (!VKMRangeEnclosesRange(v37, v38))
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x3032000000;
    v28 = __Block_byref_object_copy__21;
    v29 = __Block_byref_object_dispose__21;
    v30 = 0;
    v13 = [v3 words];
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __71__VKCMockTextProvider_selectionRectsForRange_documentView_contentRect___block_invoke_3;
    v19 = &unk_1E7BE7730;
    v20 = *(a1 + 40);
    v14 = *(a1 + 48);
    v15 = *(a1 + 80);
    v23 = *(a1 + 64);
    v24 = v15;
    v21 = v14;
    v22 = &v25;
    [v13 enumerateObjectsUsingBlock:&v16];

    [*(a1 + 56) vk_addNonNilObject:{v26[5], v16, v17, v18, v19}];
    _Block_object_dispose(&v25, 8);
    v6 = v30;
    goto LABEL_6;
  }

  v11 = [v3 quad];
  v12 = [v11 quadByConvertingFromNormalizedRectToView:*(a1 + 48) contentsRect:{*(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88)}];

  [*(a1 + 56) addObject:v12];
LABEL_7:
}

void __71__VKCMockTextProvider_selectionRectsForRange_documentView_contentRect___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [*(a1 + 32) nsRange];
  v5 = v4;
  v12.location = [v9 range];
  v12.length = v6;
  v11.location = v3;
  v11.length = v5;
  if (NSIntersectionRange(v11, v12).length)
  {
    v7 = [v9 quad];
    v8 = [v7 quadByConvertingFromNormalizedRectToView:*(a1 + 40) contentsRect:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];

    [*(a1 + 48) vk_addNonNilObject:v8];
  }
}

void __71__VKCMockTextProvider_selectionRectsForRange_documentView_contentRect___block_invoke_3(uint64_t a1, void *a2)
{
  v17 = a2;
  v3 = [*(a1 + 32) nsRange];
  v5 = v4;
  v20.location = [v17 range];
  v20.length = v6;
  v19.location = v3;
  v19.length = v5;
  length = NSIntersectionRange(v19, v20).length;
  v8 = v17;
  if (length)
  {
    v9 = [v17 quad];
    v10 = [v9 quadByConvertingFromNormalizedRectToView:*(a1 + 40) contentsRect:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];

    v11 = *(*(a1 + 48) + 8);
    v12 = *(v11 + 40);
    if (v12)
    {
      v13 = [v12 quadFromUnionWithQuad:v10];
      v14 = *(*(a1 + 48) + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = v13;
    }

    else
    {
      v16 = v10;
      v15 = *(v11 + 40);
      *(v11 + 40) = v16;
    }

    v8 = v17;
  }
}

VKTextSelectionRect *__71__VKCMockTextProvider_selectionRectsForRange_documentView_contentRect___block_invoke_4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a3 == 0;
  v5 = a3 == a4;
  v6 = a2;
  [v6 boundingBox];
  v7 = [v6 quadFromSubtractingPoint:?];
  v8 = [VKTextSelectionRect alloc];
  [v6 boundingBox];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = [(VKTextSelectionRect *)v8 initWithRect:v4 containsStart:v5 containsEnd:1 layoutDirection:v7 quad:v10, v12, v14, v16];

  return v17;
}

- (id)rangeOfLineForPosition:(id)position
{
  v3 = -[VKCMockTextProvider lineForIndex:](self, "lineForIndex:", [position offset]);
  range = [v3 range];
  v6 = [VKTextRange rangeWithNSRange:range, v5];

  return v6;
}

- (id)rangeOfWordForPosition:(id)position
{
  v3 = -[VKCMockTextProvider wordForIndex:](self, "wordForIndex:", [position offset]);
  range = [v3 range];
  v6 = [VKTextRange rangeWithNSRange:range, v5];

  return v6;
}

- (id)smallestSelectableRangeForPosition:(id)position
{
  positionCopy = position;
  v5 = -[VKCMockTextProvider wordForIndex:](self, "wordForIndex:", [positionCopy offset]);
  if (v5 && (v6 = [positionCopy offset], v7 = objc_msgSend(v5, "range"), v6 != v7 + v8))
  {
    range = [v5 range];
    v10 = v11;
  }

  else
  {
    range = 0x7FFFFFFFFFFFFFFFLL;
    v10 = 0;
  }

  v12 = [VKTextRange rangeWithNSRange:range, v10];

  return v12;
}

@end