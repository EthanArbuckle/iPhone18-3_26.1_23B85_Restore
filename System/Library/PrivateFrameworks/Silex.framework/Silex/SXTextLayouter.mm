@interface SXTextLayouter
- (CGRect)typographicBounds;
- (CGSize)boundingSize;
- (NSArray)paragraphRanges;
- (SXTextLayouter)initWithTextSource:(id)source andDocumentRoot:(id)root;
- (_NSRange)validAnchorRangeForRange:(_NSRange)range;
- (double)baselineForLastLine;
- (double)calculateHeightForWidth:(double)width;
- (double)verticalLocationOfCharacterAtIndex:(unint64_t)index;
- (id)exclusionPathIndexes;
- (id)firstColumn;
- (id)textLayout;
- (id)wpLayout;
- (id)wpStorage;
- (void)addExclusionPath:(id)path;
- (void)assignExclusionPaths;
- (void)createTextInfoIfNeeded;
- (void)invalidate;
- (void)removeAllExclusionPaths;
@end

@implementation SXTextLayouter

- (SXTextLayouter)initWithTextSource:(id)source andDocumentRoot:(id)root
{
  sourceCopy = source;
  rootCopy = root;
  v16.receiver = self;
  v16.super_class = SXTextLayouter;
  v9 = [(SXTextLayouter *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_textSource, source);
    v11 = [MEMORY[0x1E695DFD8] set];
    exclusionPaths = v10->_exclusionPaths;
    v10->_exclusionPaths = v11;

    objc_storeStrong(&v10->_documentRoot, root);
    +[SXTextTangierApplicationDelegate setup];
    v13 = [objc_alloc(MEMORY[0x1E69D5660]) initWithCanvas:0];
    layoutController = v10->_layoutController;
    v10->_layoutController = v13;
  }

  return v10;
}

- (double)calculateHeightForWidth:(double)width
{
  [(SXTextLayouter *)self createTextInfoIfNeeded];
  [(SXTextLayouter *)self assignExclusionPaths];
  v5 = [objc_alloc(MEMORY[0x1E69D5648]) initWithSize:{width, 10000000.0}];
  textInfo = [(SXTextLayouter *)self textInfo];
  [textInfo setGeometry:v5];

  layoutController = [(SXTextLayouter *)self layoutController];
  textInfo2 = [(SXTextLayouter *)self textInfo];
  v9 = [layoutController validatedLayoutForInfo:textInfo2];

  children = [v9 children];
  firstObject = [children firstObject];

  geometry = [firstObject geometry];
  [geometry size];
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
    documentRoot = [(SXTextLayouter *)self documentRoot];
    context = [documentRoot context];
    documentRoot2 = [(SXTextLayouter *)self documentRoot];
    stylesheet = [documentRoot2 stylesheet];
    textSource = [(SXTextLayouter *)self textSource];
    string = [textSource string];
    textSource2 = [(SXTextLayouter *)self textSource];
    locale = [textSource2 locale];
    v14 = [(SXTextTangierContainerInfo *)v5 initWithContext:context geometry:v20 stylesheet:stylesheet string:string locale:locale];
    textInfo = self->_textInfo;
    self->_textInfo = v14;

    textSource3 = [(SXTextLayouter *)self textSource];
    storage = [(SXTextTangierContainerInfo *)self->_textInfo storage];
    [textSource3 applyStylingOnTextTangierStorage:storage];

    textSource4 = [(SXTextLayouter *)self textSource];
    storage2 = [(SXTextTangierContainerInfo *)self->_textInfo storage];
    [textSource4 applyAdditionsOnTextTangierStorage:storage2];
  }
}

- (void)invalidate
{
  [(SXTextLayouter *)self assignExclusionPaths];
  textLayout = [(SXTextLayouter *)self textLayout];
  [textLayout invalidate];
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
  exclusionPaths = [(SXTextLayouter *)self exclusionPaths];
  v6 = [exclusionPaths countByEnumeratingWithState:&v22 objects:v26 count:16];
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
          objc_enumerationMutation(exclusionPaths);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        type = [(SXTextExclusionPath *)v10 type];
        v12 = v3;
        if (type != 1)
        {
          type2 = [(SXTextExclusionPath *)v10 type];
          v12 = v4;
          if (type2 != 2)
          {
            continue;
          }
        }

        [v12 addObject:v10];
      }

      v7 = [exclusionPaths countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v7);
  }

  textInfo = [(SXTextLayouter *)self textInfo];
  rangedExclusionPaths = [textInfo rangedExclusionPaths];
  v16 = [rangedExclusionPaths isEqual:v4];

  if ((v16 & 1) == 0)
  {
    textInfo2 = [(SXTextLayouter *)self textInfo];
    [textInfo2 setRangedExclusionPaths:v4];
  }

  textInfo3 = [(SXTextLayouter *)self textInfo];
  fixedExclusionPaths = [textInfo3 fixedExclusionPaths];
  v20 = [fixedExclusionPaths isEqual:v3];

  if ((v20 & 1) == 0)
  {
    textInfo4 = [(SXTextLayouter *)self textInfo];
    [textInfo4 setFixedExclusionPaths:v3];
  }
}

- (void)addExclusionPath:(id)path
{
  pathCopy = path;
  if (pathCopy)
  {
    v28 = pathCopy;
    if ([(SXTextExclusionPath *)pathCopy type]== 2)
    {
      textSource = [(SXTextLayouter *)self textSource];
      range = [(SXTextExclusionPath *)v28 range];
      v8 = [textSource rangeForRange:{range, v7}];
      v10 = v9;

      [(SXTextExclusionPath *)v28 setRange:v8, v10];
    }

    v11 = [(SXTextLayouter *)self validAnchorRangeForRange:[(SXTextExclusionPath *)v28 range], 1];
    [(SXTextExclusionPath *)v28 setRange:v11, v12];
    wpStorage = [(SXTextLayouter *)self wpStorage];
    v14 = [wpStorage paragraphStartAtCharIndex:-[SXTextExclusionPath range](v28)];

    if (v14)
    {
      range2 = [(SXTextExclusionPath *)v28 range];
      if ([(SXTangierTextRenderCollectorItem *)v28 selectable])
      {
        if (range2 >= v14 - 1 && range2 - (v14 - 1) <= 1)
        {
          wpStorage2 = [(SXTextLayouter *)self wpStorage];
          v17 = [wpStorage2 paragraphIndexAtCharIndex:-[SXTextExclusionPath range](v28) - 1];

          if (v17)
          {
            wpStorage3 = [(SXTextLayouter *)self wpStorage];
            v19 = [wpStorage3 paragraphStyleAtParIndex:v17 - 1 effectiveRange:0];

            [v19 floatValueForProperty:88];
            v21 = v20;
            exclusionRect = [(SXTextExclusionPath *)v28 exclusionRect];
            [(SXTextExclusionPath *)v28 setExclusionRect:exclusionRect, v24, v25, v23 + v21];
          }
        }
      }
    }

    v26 = [(NSSet *)self->_exclusionPaths setByAddingObject:v28];
    exclusionPaths = self->_exclusionPaths;
    self->_exclusionPaths = v26;

    pathCopy = v28;
  }
}

- (_NSRange)validAnchorRangeForRange:(_NSRange)range
{
  location = range.location;
  if (range.location <= 10)
  {
    v5 = 10;
  }

  else
  {
    v5 = range.location;
  }

  if (range.location >= 0xA)
  {
    v6 = 10;
  }

  else
  {
    v6 = range.location;
  }

  textSource = [(SXTextLayouter *)self textSource];
  string = [textSource string];
  v9 = [string substringWithRange:{v5 - 10, v6}];

  v43 = v9;
  v10 = [v9 rangeOfString:@"\n"];
  textSource2 = [(SXTextLayouter *)self textSource];
  string2 = [textSource2 string];
  v13 = [string2 length] - 1;

  if (location + 10 >= v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = location + 10;
  }

  v15 = v14 - location;
  textSource3 = [(SXTextLayouter *)self textSource];
  string3 = [textSource3 string];
  v18 = [string3 substringWithRange:{location + 1, v15}];

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
    textSource4 = [(SXTextLayouter *)self textSource];
    string4 = [textSource4 string];
    v26 = [string4 length];

    if (location >= v26)
    {
      break;
    }

    textSource5 = [(SXTextLayouter *)self textSource];
    string5 = [textSource5 string];
    v29 = [string5 substringWithRange:{location, 1}];
    whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    v31 = [v29 rangeOfCharacterFromSet:whitespaceAndNewlineCharacterSet];

    ++location;
    if (v31 == 0x7FFFFFFFFFFFFFFFLL)
    {
      --location;
      break;
    }
  }

  v32 = location + 1;
  exclusionPathIndexes = [(SXTextLayouter *)self exclusionPathIndexes];
  if ([exclusionPathIndexes containsIndex:v32])
  {
    while (1)
    {
      textSource6 = [(SXTextLayouter *)self textSource];
      string6 = [textSource6 string];
      if (v32 >= [string6 length] - 1)
      {
        break;
      }

      v36 = [exclusionPathIndexes containsIndex:v32];

      if (!v36)
      {
        goto LABEL_31;
      }

      ++v32;
    }
  }

LABEL_31:
  textSource7 = [(SXTextLayouter *)self textSource];
  string7 = [textSource7 string];
  v39 = [string7 length] - 1;

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
  layoutController = [(SXTextLayouter *)self layoutController];
  textInfo = [(SXTextLayouter *)self textInfo];
  v5 = [layoutController layoutForInfo:textInfo];

  return v5;
}

- (id)firstColumn
{
  wpLayout = [(SXTextLayouter *)self wpLayout];
  columns = [wpLayout columns];
  firstObject = [columns firstObject];

  return firstObject;
}

- (double)baselineForLastLine
{
  textLayout = [(SXTextLayouter *)self textLayout];
  children = [textLayout children];
  firstObject = [children firstObject];

  [firstObject baselineForLastLine];
  v6 = v5;

  return v6;
}

- (CGRect)typographicBounds
{
  firstColumn = [(SXTextLayouter *)self firstColumn];
  textSource = [(SXTextLayouter *)self textSource];
  string = [textSource string];
  [firstColumn glyphRectForRange:0 includingLabel:{objc_msgSend(string, "length"), 1}];
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
  wpLayout = [(SXTextLayouter *)self wpLayout];
  geometry = [wpLayout geometry];
  [geometry size];
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
  array = [MEMORY[0x1E695DF70] array];
  firstColumn = [(SXTextLayouter *)self firstColumn];
  storage = [firstColumn storage];
  firstColumn2 = [(SXTextLayouter *)self firstColumn];
  range = [firstColumn2 range];
  v9 = [storage paragraphIndexRangeForCharRange:{range, v8}];
  v11 = v10;

  if (v9 < v9 + v11)
  {
    do
    {
      firstColumn3 = [(SXTextLayouter *)self firstColumn];
      storage2 = [firstColumn3 storage];
      v14 = [storage2 textRangeForParagraphAtIndex:v9];
      v16 = v15;

      v17 = [MEMORY[0x1E696B098] valueWithRange:{v14, v16}];
      [array addObject:v17];

      ++v9;
      --v11;
    }

    while (v11);
  }

  return array;
}

- (double)verticalLocationOfCharacterAtIndex:(unint64_t)index
{
  textSource = [(SXTextLayouter *)self textSource];
  string = [textSource string];
  v7 = [string length];

  if (v7 <= index)
  {
    return 0.0;
  }

  firstColumn = [(SXTextLayouter *)self firstColumn];
  [firstColumn topOfLineAtCharIndex:index];
  v10 = v9;

  return v10;
}

- (id)wpStorage
{
  [(SXTextLayouter *)self createTextInfoIfNeeded];
  textInfo = [(SXTextLayouter *)self textInfo];
  storage = [textInfo storage];

  return storage;
}

- (id)wpLayout
{
  textLayout = [(SXTextLayouter *)self textLayout];
  children = [textLayout children];
  firstObject = [children firstObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = firstObject;
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
  indexSet = [MEMORY[0x1E696AD50] indexSet];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  exclusionPaths = [(SXTextLayouter *)self exclusionPaths];
  v5 = [exclusionPaths countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(exclusionPaths);
        }

        range = [(SXTextExclusionPath *)*(*(&v12 + 1) + 8 * i) range];
        [indexSet addIndexesInRange:{range, v10}];
      }

      v6 = [exclusionPaths countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return indexSet;
}

@end