@interface _UIBoundingTextRectsSolver
- (CGRect)bodyRect;
- (CGRect)boundingRect;
- (CGRect)firstLineRect;
- (CGRect)lastLineRect;
- (NSArray)rects;
- (_UIBoundingTextRectsSolver)initWithTextContainer:(id)container range:(id)range unifyRects:(BOOL)rects;
- (id)description;
- (void)_calculate;
- (void)_calculateRectsUsingLayoutManager:(id)manager;
- (void)_calculateRectsUsingTextLayoutManager:(id)manager;
- (void)_calculateTotalRect;
- (void)_coalesceRectsForRects:(id)rects;
@end

@implementation _UIBoundingTextRectsSolver

- (_UIBoundingTextRectsSolver)initWithTextContainer:(id)container range:(id)range unifyRects:(BOOL)rects
{
  containerCopy = container;
  rangeCopy = range;
  v14.receiver = self;
  v14.super_class = _UIBoundingTextRectsSolver;
  v11 = [(_UIBoundingTextRectsSolver *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_textContainer, container);
    objc_storeStrong(&v12->_range, range);
    v12->_calculated = 0;
    v12->_unifyRects = rects;
  }

  return v12;
}

- (CGRect)firstLineRect
{
  [(_UIBoundingTextRectsSolver *)self _calculate];
  x = self->_firstRect.origin.x;
  y = self->_firstRect.origin.y;
  width = self->_firstRect.size.width;
  height = self->_firstRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)bodyRect
{
  [(_UIBoundingTextRectsSolver *)self _calculate];
  x = self->_middleRect.origin.x;
  y = self->_middleRect.origin.y;
  width = self->_middleRect.size.width;
  height = self->_middleRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)lastLineRect
{
  [(_UIBoundingTextRectsSolver *)self _calculate];
  x = self->_lastRect.origin.x;
  y = self->_lastRect.origin.y;
  width = self->_lastRect.size.width;
  height = self->_lastRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)boundingRect
{
  [(_UIBoundingTextRectsSolver *)self _calculate];
  x = self->_totalRect.origin.x;
  y = self->_totalRect.origin.y;
  width = self->_totalRect.size.width;
  height = self->_totalRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)_calculate
{
  if (!self->_calculated)
  {
    v3 = MEMORY[0x1E695F058];
    self->_calculated = 1;
    v4 = *v3;
    v5 = *(v3 + 16);
    self->_firstRect.origin = *v3;
    self->_firstRect.size = v5;
    self->_middleRect.origin = v4;
    self->_middleRect.size = v5;
    self->_lastRect.origin = v4;
    self->_lastRect.size = v5;
    self->_totalRect.origin = v4;
    self->_totalRect.size = v5;
    textLayoutManager = [(NSTextContainer *)self->_textContainer textLayoutManager];
    if (textLayoutManager)
    {
      [(_UIBoundingTextRectsSolver *)self _calculateRectsUsingTextLayoutManager:textLayoutManager];
    }

    else
    {
      layoutManager = [(NSTextContainer *)self->_textContainer layoutManager];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __40___UIBoundingTextRectsSolver__calculate__block_invoke;
      v8[3] = &unk_1E7127820;
      v8[4] = self;
      [layoutManager coordinateAccess:v8];
    }

    [(_UIBoundingTextRectsSolver *)self _calculateTotalRect];
  }
}

- (void)_calculateRectsUsingTextLayoutManager:(id)manager
{
  managerCopy = manager;
  v5 = objc_opt_new();
  [(NSTextContainer *)self->_textContainer textContainerOrigin];
  v7 = v6;
  v9 = v8;
  unionTextRange = [(UITextRange *)self->_range unionTextRange];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __68___UIBoundingTextRectsSolver__calculateRectsUsingTextLayoutManager___block_invoke;
  v15 = &unk_1E7127848;
  v18 = v7;
  v19 = v9;
  selfCopy = self;
  v17 = v5;
  v11 = v5;
  [managerCopy enumerateTextSegmentsInRange:unionTextRange type:0 options:0 usingBlock:&v12];

  [(_UIBoundingTextRectsSolver *)self _coalesceRectsForRects:v11, v12, v13, v14, v15, selfCopy];
}

- (void)_calculateRectsUsingLayoutManager:(id)manager
{
  managerCopy = manager;
  v5 = objc_opt_new();
  [(NSTextContainer *)self->_textContainer textContainerOrigin];
  v7 = v6;
  v9 = v8;
  asRange = [(UITextRange *)self->_range asRange];
  v12 = [managerCopy glyphRangeForCharacterRange:asRange actualCharacterRange:{v11, 0}];
  v14 = v13;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __64___UIBoundingTextRectsSolver__calculateRectsUsingLayoutManager___block_invoke;
  v17[3] = &unk_1E7127898;
  v20 = v12;
  v21 = v13;
  v17[4] = self;
  v18 = managerCopy;
  v22 = v7;
  v23 = v9;
  v19 = v5;
  v15 = v5;
  v16 = managerCopy;
  [v16 enumerateLineFragmentsForGlyphRange:v12 usingBlock:{v14, v17}];
  [(_UIBoundingTextRectsSolver *)self _coalesceRectsForRects:v15];
}

- (void)_coalesceRectsForRects:(id)rects
{
  rectsCopy = rects;
  if ([rectsCopy count] == 1)
  {
    firstObject = [rectsCopy firstObject];
    [firstObject CGRectValue];
    self->_middleRect.origin.x = v5;
    self->_middleRect.origin.y = v6;
    self->_middleRect.size.width = v7;
    self->_middleRect.size.height = v8;
  }

  else if ([rectsCopy count])
  {
    firstObject2 = [rectsCopy firstObject];
    [firstObject2 CGRectValue];
    self->_firstRect.origin.x = v10;
    self->_firstRect.origin.y = v11;
    self->_firstRect.size.width = v12;
    self->_firstRect.size.height = v13;

    lastObject = [rectsCopy lastObject];
    [lastObject CGRectValue];
    self->_lastRect.origin.x = v15;
    self->_lastRect.origin.y = v16;
    self->_lastRect.size.width = v17;
    self->_lastRect.size.height = v18;

    if ([rectsCopy count] < 3)
    {
      if (self->_unifyRects)
      {
        MinX = CGRectGetMinX(self->_firstRect);
        if (MinX > CGRectGetMaxX(self->_lastRect))
        {
          self->_middleRect = CGRectUnion(self->_firstRect, self->_lastRect);
          v33 = *MEMORY[0x1E695F058];
          v34 = *(MEMORY[0x1E695F058] + 16);
          self->_firstRect.origin = *MEMORY[0x1E695F058];
          self->_firstRect.size = v34;
          self->_lastRect.origin = v33;
          self->_lastRect.size = v34;
        }
      }
    }

    else
    {
      v19 = [rectsCopy objectAtIndexedSubscript:1];
      [v19 CGRectValue];
      self->_middleRect.origin.x = v20;
      self->_middleRect.origin.y = v21;
      self->_middleRect.size.width = v22;
      self->_middleRect.size.height = v23;

      if (([rectsCopy count] - 4) <= 0xFFFFFFFFFFFFFFFCLL)
      {
        v24 = 2;
        do
        {
          v25 = [rectsCopy objectAtIndexedSubscript:v24];
          [v25 CGRectValue];
          v37.origin.x = v26;
          v37.origin.y = v27;
          v37.size.width = v28;
          v37.size.height = v29;
          self->_middleRect = CGRectUnion(self->_middleRect, v37);

          ++v24;
        }

        while (v24 < [rectsCopy count] - 1);
      }

      if (self->_unifyRects)
      {
        v30 = CGRectGetMinY(self->_middleRect) + 1.0;
        self->_firstRect.size.height = v30 - CGRectGetMinY(self->_firstRect);
        MaxY = CGRectGetMaxY(self->_lastRect);
        self->_lastRect.size.height = MaxY - CGRectGetMaxY(self->_middleRect) + 1.0;
        self->_lastRect.origin.y = CGRectGetMaxY(self->_middleRect) + -1.0;
      }
    }
  }
}

- (void)_calculateTotalRect
{
  p_firstRect = &self->_firstRect;
  x = self->_firstRect.origin.x;
  v5 = *(MEMORY[0x1E695F058] + 16);
  self->_totalRect.origin = *MEMORY[0x1E695F058];
  self->_totalRect.size = v5;
  y = self->_firstRect.origin.y;
  v5.width = self->_firstRect.size.width;
  height = self->_firstRect.size.height;
  if (!CGRectIsEmpty(*&x))
  {
    size = p_firstRect->size;
    p_firstRect[3].origin = p_firstRect->origin;
    p_firstRect[3].size = size;
  }

  if (!CGRectIsEmpty(self->_middleRect))
  {
    if (CGRectIsEmpty(self->_totalRect))
    {
      v9 = self->_middleRect.size;
      p_firstRect[3].origin = self->_middleRect.origin;
      p_firstRect[3].size = v9;
    }

    else
    {
      self->_totalRect = CGRectUnion(self->_middleRect, self->_totalRect);
    }
  }

  if (!CGRectIsEmpty(self->_lastRect))
  {
    if (CGRectIsEmpty(self->_totalRect))
    {
      v10 = self->_lastRect.size;
      p_firstRect[3].origin = self->_lastRect.origin;
      p_firstRect[3].size = v10;
    }

    else
    {
      self->_totalRect = CGRectUnion(self->_lastRect, self->_totalRect);
    }
  }
}

- (NSArray)rects
{
  [(_UIBoundingTextRectsSolver *)self _calculate];
  v3 = objc_opt_new();
  if (!CGRectIsEmpty(self->_firstRect))
  {
    v4 = [MEMORY[0x1E696B098] valueWithCGRect:{self->_firstRect.origin.x, self->_firstRect.origin.y, self->_firstRect.size.width, self->_firstRect.size.height}];
    [v3 addObject:v4];
  }

  if (!CGRectIsEmpty(self->_middleRect))
  {
    v5 = [MEMORY[0x1E696B098] valueWithCGRect:{self->_middleRect.origin.x, self->_middleRect.origin.y, self->_middleRect.size.width, self->_middleRect.size.height}];
    [v3 addObject:v5];
  }

  if (!CGRectIsEmpty(self->_lastRect))
  {
    v6 = [MEMORY[0x1E696B098] valueWithCGRect:{self->_lastRect.origin.x, self->_lastRect.origin.y, self->_lastRect.size.width, self->_lastRect.size.height}];
    [v3 addObject:v6];
  }

  v7 = [v3 copy];

  return v7;
}

- (id)description
{
  calculated = self->_calculated;
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = v6;
  range = self->_range;
  if (self->_unifyRects)
  {
    v9 = @"unified";
  }

  else
  {
    v9 = @"not unified";
  }

  if (calculated)
  {
    rects = [(_UIBoundingTextRectsSolver *)self rects];
    v11 = [rects componentsJoinedByString:{@", "}];
    v12 = [v4 stringWithFormat:@"<%@:%p (%@, %@) = (%@)", v7, self, range, v9, v11];
  }

  else
  {
    v12 = [v4 stringWithFormat:@"<%@:%p (%@, %@) not calculated>", v6, self, self->_range, v9];
  }

  return v12;
}

@end