@interface SXTextLayouter
- (CGRect)typographicBounds;
- (CGSize)boundingSize;
- (NSArray)paragraphRanges;
- (SXTextLayouter)initWithTextSource:(id)a3 andDocumentRoot:(id)a4;
- (_NSRange)validAnchorRangeForRange:(_NSRange)a3;
- (double)baselineForLastLine;
- (double)calculateHeightForWidth:(double)a3;
- (double)verticalLocationOfCharacterAtIndex:(unint64_t)a3;
- (id)exclusionPathIndexes;
- (id)firstColumn;
- (id)textLayout;
- (id)wpLayout;
- (id)wpStorage;
- (void)addExclusionPath:(id)a3;
- (void)assignExclusionPaths;
- (void)createTextInfoIfNeeded;
- (void)invalidate;
- (void)removeAllExclusionPaths;
@end

@implementation SXTextLayouter

- (SXTextLayouter)initWithTextSource:(id)a3 andDocumentRoot:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = SXTextLayouter;
  v9 = [(SXTextLayouter *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_textSource, a3);
    v11 = [MEMORY[0x1E695DFD8] set];
    exclusionPaths = v10->_exclusionPaths;
    v10->_exclusionPaths = v11;

    objc_storeStrong(&v10->_documentRoot, a4);
    +[SXTextTangierApplicationDelegate setup];
    v13 = [objc_alloc(MEMORY[0x1E69D5660]) initWithCanvas:0];
    layoutController = v10->_layoutController;
    v10->_layoutController = v13;
  }

  return v10;
}

- (double)calculateHeightForWidth:(double)a3
{
  [(SXTextLayouter *)self createTextInfoIfNeeded];
  [(SXTextLayouter *)self assignExclusionPaths];
  v5 = [objc_alloc(MEMORY[0x1E69D5648]) initWithSize:{a3, 10000000.0}];
  v6 = [(SXTextLayouter *)self textInfo];
  [v6 setGeometry:v5];

  v7 = [(SXTextLayouter *)self layoutController];
  v8 = [(SXTextLayouter *)self textInfo];
  v9 = [v7 validatedLayoutForInfo:v8];

  v10 = [v9 children];
  v11 = [v10 firstObject];

  v12 = [v11 geometry];
  [v12 size];
  v14 = v13;

  return v14;
}

- (void)createTextInfoIfNeeded
{
  if (!self->_textInfo)
  {
    v4 = objc_alloc(MEMORY[0x1E69D5648]);
    v20 = [v4 initWithPosition:*MEMORY[0x1E695EFF8] size:{*(MEMORY[0x1E695EFF8] + 8), *MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
    v5 = [SXTextTangierContainerInfo alloc];
    v6 = [(SXTextLayouter *)self documentRoot];
    v7 = [v6 context];
    v8 = [(SXTextLayouter *)self documentRoot];
    v9 = [v8 stylesheet];
    v10 = [(SXTextLayouter *)self textSource];
    v11 = [v10 string];
    v12 = [(SXTextLayouter *)self textSource];
    v13 = [v12 locale];
    v14 = [(SXTextTangierContainerInfo *)v5 initWithContext:v7 geometry:v20 stylesheet:v9 string:v11 locale:v13];
    textInfo = self->_textInfo;
    self->_textInfo = v14;

    v16 = [(SXTextLayouter *)self textSource];
    v17 = [(SXTextTangierContainerInfo *)self->_textInfo storage];
    [v16 applyStylingOnTextTangierStorage:v17];

    v18 = [(SXTextLayouter *)self textSource];
    v19 = [(SXTextTangierContainerInfo *)self->_textInfo storage];
    [v18 applyAdditionsOnTextTangierStorage:v19];
  }
}

- (void)invalidate
{
  [(SXTextLayouter *)self assignExclusionPaths];
  v3 = [(SXTextLayouter *)self textLayout];
  [v3 invalidate];
}

- (void)assignExclusionPaths
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = [(SXTextLayouter *)self exclusionPaths];
  v6 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        v11 = [(SXTextExclusionPath *)v10 type];
        v12 = v3;
        if (v11 != 1)
        {
          v13 = [(SXTextExclusionPath *)v10 type];
          v12 = v4;
          if (v13 != 2)
          {
            continue;
          }
        }

        [v12 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v7);
  }

  v14 = [(SXTextLayouter *)self textInfo];
  v15 = [v14 rangedExclusionPaths];
  v16 = [v15 isEqual:v4];

  if ((v16 & 1) == 0)
  {
    v17 = [(SXTextLayouter *)self textInfo];
    [v17 setRangedExclusionPaths:v4];
  }

  v18 = [(SXTextLayouter *)self textInfo];
  v19 = [v18 fixedExclusionPaths];
  v20 = [v19 isEqual:v3];

  if ((v20 & 1) == 0)
  {
    v21 = [(SXTextLayouter *)self textInfo];
    [v21 setFixedExclusionPaths:v3];
  }
}

- (void)addExclusionPath:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v28 = v4;
    if ([(SXTextExclusionPath *)v4 type]== 2)
    {
      v5 = [(SXTextLayouter *)self textSource];
      v6 = [(SXTextExclusionPath *)v28 range];
      v8 = [v5 rangeForRange:{v6, v7}];
      v10 = v9;

      [(SXTextExclusionPath *)v28 setRange:v8, v10];
    }

    v11 = [(SXTextLayouter *)self validAnchorRangeForRange:[(SXTextExclusionPath *)v28 range], 1];
    [(SXTextExclusionPath *)v28 setRange:v11, v12];
    v13 = [(SXTextLayouter *)self wpStorage];
    v14 = [v13 paragraphStartAtCharIndex:-[SXTextExclusionPath range](v28)];

    if (v14)
    {
      v15 = [(SXTextExclusionPath *)v28 range];
      if ([(SXTangierTextRenderCollectorItem *)v28 selectable])
      {
        if (v15 >= v14 - 1 && v15 - (v14 - 1) <= 1)
        {
          v16 = [(SXTextLayouter *)self wpStorage];
          v17 = [v16 paragraphIndexAtCharIndex:-[SXTextExclusionPath range](v28) - 1];

          if (v17)
          {
            v18 = [(SXTextLayouter *)self wpStorage];
            v19 = [v18 paragraphStyleAtParIndex:v17 - 1 effectiveRange:0];

            [v19 floatValueForProperty:88];
            v21 = v20;
            v22 = [(SXTextExclusionPath *)v28 exclusionRect];
            [(SXTextExclusionPath *)v28 setExclusionRect:v22, v24, v25, v23 + v21];
          }
        }
      }
    }

    v26 = [(NSSet *)self->_exclusionPaths setByAddingObject:v28];
    exclusionPaths = self->_exclusionPaths;
    self->_exclusionPaths = v26;

    v4 = v28;
  }
}

- (_NSRange)validAnchorRangeForRange:(_NSRange)a3
{
  location = a3.location;
  if (a3.location <= 10)
  {
    v5 = 10;
  }

  else
  {
    v5 = a3.location;
  }

  if (a3.location >= 0xA)
  {
    v6 = 10;
  }

  else
  {
    v6 = a3.location;
  }

  v7 = [(SXTextLayouter *)self textSource];
  v8 = [v7 string];
  v9 = [v8 substringWithRange:{v5 - 10, v6}];

  v43 = v9;
  v10 = [v9 rangeOfString:@"\n"];
  v11 = [(SXTextLayouter *)self textSource];
  v12 = [v11 string];
  v13 = [v12 length] - 1;

  if (location + 10 >= v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = location + 10;
  }

  v15 = v14 - location;
  v16 = [(SXTextLayouter *)self textSource];
  v17 = [v16 string];
  v18 = [v17 substringWithRange:{location + 1, v15}];

  v19 = [v18 rangeOfString:@"\n"];
  v20 = v5 + v10 - 9;
  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v20 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v21 = v10 - location;
  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v21 = -1;
  }

  v22 = v19 - location < v21 || v21 == -1;
  v23 = location + 1 + v19;
  if (!v22)
  {
    v23 = v20;
  }

  if (v19 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v20 = v23;
  }

  if (v20 != 0x7FFFFFFFFFFFFFFFLL)
  {
    location = v20;
  }

  while (1)
  {
    v24 = [(SXTextLayouter *)self textSource];
    v25 = [v24 string];
    v26 = [v25 length];

    if (location >= v26)
    {
      break;
    }

    v27 = [(SXTextLayouter *)self textSource];
    v28 = [v27 string];
    v29 = [v28 substringWithRange:{location, 1}];
    v30 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    v31 = [v29 rangeOfCharacterFromSet:v30];

    ++location;
    if (v31 == 0x7FFFFFFFFFFFFFFFLL)
    {
      --location;
      break;
    }
  }

  v32 = location + 1;
  v33 = [(SXTextLayouter *)self exclusionPathIndexes];
  if ([v33 containsIndex:v32])
  {
    while (1)
    {
      v34 = [(SXTextLayouter *)self textSource];
      v35 = [v34 string];
      if (v32 >= [v35 length] - 1)
      {
        break;
      }

      v36 = [v33 containsIndex:v32];

      if (!v36)
      {
        goto LABEL_31;
      }

      ++v32;
    }
  }

LABEL_31:
  v37 = [(SXTextLayouter *)self textSource];
  v38 = [v37 string];
  v39 = [v38 length] - 1;

  if (v32 >= v39)
  {
    v40 = v39;
  }

  else
  {
    v40 = v32;
  }

  v41 = v40;
  v42 = 1;
  result.length = v42;
  result.location = v41;
  return result;
}

- (void)removeAllExclusionPaths
{
  v3 = [MEMORY[0x1E695DFD8] set];
  exclusionPaths = self->_exclusionPaths;
  self->_exclusionPaths = v3;

  MEMORY[0x1EEE66BB8](v3, exclusionPaths);
}

- (id)textLayout
{
  v3 = [(SXTextLayouter *)self layoutController];
  v4 = [(SXTextLayouter *)self textInfo];
  v5 = [v3 layoutForInfo:v4];

  return v5;
}

- (id)firstColumn
{
  v2 = [(SXTextLayouter *)self wpLayout];
  v3 = [v2 columns];
  v4 = [v3 firstObject];

  return v4;
}

- (double)baselineForLastLine
{
  v2 = [(SXTextLayouter *)self textLayout];
  v3 = [v2 children];
  v4 = [v3 firstObject];

  [v4 baselineForLastLine];
  v6 = v5;

  return v6;
}

- (CGRect)typographicBounds
{
  v3 = [(SXTextLayouter *)self firstColumn];
  v4 = [(SXTextLayouter *)self textSource];
  v5 = [v4 string];
  [v3 glyphRectForRange:0 includingLabel:{objc_msgSend(v5, "length"), 1}];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGSize)boundingSize
{
  v2 = [(SXTextLayouter *)self wpLayout];
  v3 = [v2 geometry];
  [v3 size];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (NSArray)paragraphRanges
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(SXTextLayouter *)self firstColumn];
  v5 = [v4 storage];
  v6 = [(SXTextLayouter *)self firstColumn];
  v7 = [v6 range];
  v9 = [v5 paragraphIndexRangeForCharRange:{v7, v8}];
  v11 = v10;

  if (v9 < v9 + v11)
  {
    do
    {
      v12 = [(SXTextLayouter *)self firstColumn];
      v13 = [v12 storage];
      v14 = [v13 textRangeForParagraphAtIndex:v9];
      v16 = v15;

      v17 = [MEMORY[0x1E696B098] valueWithRange:{v14, v16}];
      [v3 addObject:v17];

      ++v9;
      --v11;
    }

    while (v11);
  }

  return v3;
}

- (double)verticalLocationOfCharacterAtIndex:(unint64_t)a3
{
  v5 = [(SXTextLayouter *)self textSource];
  v6 = [v5 string];
  v7 = [v6 length];

  if (v7 <= a3)
  {
    return 0.0;
  }

  v8 = [(SXTextLayouter *)self firstColumn];
  [v8 topOfLineAtCharIndex:a3];
  v10 = v9;

  return v10;
}

- (id)wpStorage
{
  [(SXTextLayouter *)self createTextInfoIfNeeded];
  v3 = [(SXTextLayouter *)self textInfo];
  v4 = [v3 storage];

  return v4;
}

- (id)wpLayout
{
  v2 = [(SXTextLayouter *)self textLayout];
  v3 = [v2 children];
  v4 = [v3 firstObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)exclusionPathIndexes
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD50] indexSet];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(SXTextLayouter *)self exclusionPaths];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [(SXTextExclusionPath *)*(*(&v12 + 1) + 8 * i) range];
        [v3 addIndexesInRange:{v9, v10}];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v3;
}

@end