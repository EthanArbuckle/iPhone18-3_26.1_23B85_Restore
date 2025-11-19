@interface UITextDragPreviewRenderer
- (CGRect)_correctlyOffsetBoundingRect;
- (CGRect)_rawBoundingRect;
- (CGRect)bodyRect;
- (CGRect)firstLineRect;
- (CGRect)lastLineRect;
- (UIImage)image;
- (UITextDragPreviewRenderer)initWithLayoutManager:(NSLayoutManager *)layoutManager range:(NSRange)range unifyRects:(BOOL)unifyRects;
- (void)_calculate;
- (void)_calculateRectsUsingLayoutManager:(id)a3;
- (void)addRenderingAttributes:(id)a3;
- (void)removeRenderingAttributes:(id)a3;
@end

@implementation UITextDragPreviewRenderer

- (UITextDragPreviewRenderer)initWithLayoutManager:(NSLayoutManager *)layoutManager range:(NSRange)range unifyRects:(BOOL)unifyRects
{
  length = range.length;
  location = range.location;
  v10 = layoutManager;
  v14.receiver = self;
  v14.super_class = UITextDragPreviewRenderer;
  v11 = [(UITextDragPreviewRenderer *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_layoutManager, layoutManager);
    v12->_range.location = location;
    v12->_range.length = length;
    v12->_calculated = 0;
    v12->_unifyRects = unifyRects;
  }

  return v12;
}

- (UIImage)image
{
  [(UITextDragPreviewRenderer *)self _calculate];
  image = self->_image;

  return image;
}

- (CGRect)firstLineRect
{
  [(UITextDragPreviewRenderer *)self _calculate];
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
  [(UITextDragPreviewRenderer *)self _calculate];
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
  [(UITextDragPreviewRenderer *)self _calculate];
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

- (void)_calculate
{
  if (!self->_calculated)
  {
    self->_calculated = 1;
    v3 = *MEMORY[0x1E695F058];
    v4 = *(MEMORY[0x1E695F058] + 16);
    self->_firstRect.origin = *MEMORY[0x1E695F058];
    self->_firstRect.size = v4;
    self->_middleRect.origin = v3;
    self->_middleRect.size = v4;
    self->_lastRect.origin = v3;
    self->_lastRect.size = v4;
    v5 = !self->_excludeBackground;
    v6 = [(UITextDragPreviewRenderer *)self layoutManager];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __39__UITextDragPreviewRenderer__calculate__block_invoke;
    v7[3] = &unk_1E7124800;
    v7[4] = self;
    v8 = v5;
    [v6 coordinateAccess:v7];
  }
}

void __39__UITextDragPreviewRenderer__calculate__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) _calculateRectsUsingLayoutManager:v3];
  [*(a1 + 32) _correctlyOffsetBoundingRect];
  if (v6 > 0.0)
  {
    v8 = v7;
    if (v7 > 0.0)
    {
      v9 = v4;
      v10 = v5;
      v11 = v6;
      v12 = [v3 glyphRangeForCharacterRange:*(*(a1 + 32) + 8) actualCharacterRange:{*(*(a1 + 32) + 16), 0}];
      v14 = v13;
      v15 = [v3 textContainerForGlyphAtIndex:v12 effectiveRange:0];
      v30.origin.x = v9;
      v30.origin.y = v10;
      v30.size.width = v11;
      v30.size.height = v8;
      v31 = CGRectOffset(v30, -*(*(a1 + 32) + 120), -*(*(a1 + 32) + 128));
      v28.location = [v3 glyphRangeForBoundingRect:v15 inTextContainer:{v31.origin.x, v31.origin.y, v31.size.width, v31.size.height}];
      v29.location = v12;
      v29.length = v14;
      v16 = NSIntersectionRange(v28, v29);
      v17 = [[UIGraphicsImageRenderer alloc] initWithSize:v11, v8];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __39__UITextDragPreviewRenderer__calculate__block_invoke_2;
      v23[3] = &unk_1E71247D8;
      v27 = *(a1 + 40);
      v18 = v3;
      v26 = v16;
      v19 = *(a1 + 32);
      v24 = v18;
      v25 = v19;
      v20 = [(UIGraphicsImageRenderer *)v17 imageWithActions:v23];
      v21 = *(a1 + 32);
      v22 = *(v21 + 136);
      *(v21 + 136) = v20;
    }
  }
}

uint64_t __39__UITextDragPreviewRenderer__calculate__block_invoke_2(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    [*(a1 + 32) drawBackgroundForGlyphRange:*(a1 + 48) atPoint:{*(a1 + 56), *(*(a1 + 40) + 120), *(*(a1 + 40) + 128)}];
  }

  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(v3 + 120);
  v7 = *(v3 + 128);

  return [v2 drawGlyphsForGlyphRange:v4 atPoint:{v5, v6, v7}];
}

- (void)_calculateRectsUsingLayoutManager:(id)a3
{
  v4 = a3;
  v54[0] = 0;
  v54[1] = v54;
  v54[2] = 0x4010000000;
  v54[3] = "";
  v5 = *(MEMORY[0x1E695F050] + 16);
  v55 = *MEMORY[0x1E695F050];
  v56 = v5;
  v6 = objc_opt_new();
  v7 = [v4 glyphRangeForCharacterRange:self->_range.location actualCharacterRange:{self->_range.length, 0}];
  v9 = v8;
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __63__UITextDragPreviewRenderer__calculateRectsUsingLayoutManager___block_invoke;
  v48[3] = &unk_1E7124850;
  v52 = v7;
  v53 = v8;
  v48[4] = self;
  v10 = v4;
  v49 = v10;
  v11 = v6;
  v50 = v11;
  v51 = v54;
  [v10 enumerateLineFragmentsForGlyphRange:v7 usingBlock:{v9, v48}];
  v12 = [v10 textStorage];
  v13 = [v12 _ui_containsTables];

  if (v13)
  {
    v42 = MEMORY[0x1E69E9820];
    v43 = 3221225472;
    v44 = __63__UITextDragPreviewRenderer__calculateRectsUsingLayoutManager___block_invoke_3;
    v45 = &unk_1E7124878;
    v46 = v10;
    v47 = v11;
    [v46 ui_enumerateTextBlocksInGlyphRange:v7 usingBlock:{v9, &v42}];
  }

  if ([v11 count] == 1)
  {
    v14 = [v11 firstObject];
    [v14 CGRectValue];
    self->_middleRect.origin.x = v15;
    self->_middleRect.origin.y = v16;
    self->_middleRect.size.width = v17;
    self->_middleRect.size.height = v18;
  }

  else if ([v11 count])
  {
    v19 = [v11 firstObject];
    [v19 CGRectValue];
    self->_firstRect.origin.x = v20;
    self->_firstRect.origin.y = v21;
    self->_firstRect.size.width = v22;
    self->_firstRect.size.height = v23;

    v24 = [v11 lastObject];
    [v24 CGRectValue];
    self->_lastRect.origin.x = v25;
    self->_lastRect.origin.y = v26;
    self->_lastRect.size.width = v27;
    self->_lastRect.size.height = v28;

    if ([v11 count] >= 3)
    {
      v29 = [v11 objectAtIndexedSubscript:1];
      [v29 CGRectValue];
      self->_middleRect.origin.x = v30;
      self->_middleRect.origin.y = v31;
      self->_middleRect.size.width = v32;
      self->_middleRect.size.height = v33;

      for (i = 2; i < [v11 count] - 1; ++i)
      {
        v35 = [v11 objectAtIndexedSubscript:i];
        [v35 CGRectValue];
        v57.origin.x = v36;
        v57.origin.y = v37;
        v57.size.width = v38;
        v57.size.height = v39;
        self->_middleRect = CGRectUnion(self->_middleRect, v57);
      }

      if (self->_unifyRects)
      {
        MinY = CGRectGetMinY(self->_middleRect);
        self->_firstRect.size.height = MinY + 1.0 - CGRectGetMinY(self->_firstRect);
        MaxY = CGRectGetMaxY(self->_lastRect);
        self->_lastRect.size.height = MaxY - CGRectGetMaxY(self->_middleRect) + 1.0;
        self->_lastRect.origin.y = CGRectGetMaxY(self->_middleRect) + -1.0;
      }
    }
  }

  _Block_object_dispose(v54, 8);
}

void __63__UITextDragPreviewRenderer__calculateRectsUsingLayoutManager___block_invoke(uint64_t a1, void *a2, NSUInteger a3, NSUInteger a4, _BYTE *a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13)
{
  v21 = a2;
  v50.location = a3;
  v50.length = a4;
  v22 = NSIntersectionRange(v50, *(a1 + 64));
  if (v22.length > 1)
  {
    goto LABEL_4;
  }

  v23 = [*(a1 + 32) layoutManager];
  v24 = [v23 characterRangeForGlyphRange:v22.location actualGlyphRange:{v22.length, 0}];
  if (!v25)
  {

    goto LABEL_9;
  }

  v26 = v24;
  v27 = v25;
  v28 = [v23 textStorage];
  v29 = [v28 attributedSubstringFromRange:{v26, v27}];
  v30 = [v29 string];

  v31 = [MEMORY[0x1E696AB08] newlineCharacterSet];
  v32 = [v30 stringByTrimmingCharactersInSet:v31];
  v33 = [v32 length];

  if (v33)
  {
LABEL_4:
    v34 = *(a1 + 40);
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __63__UITextDragPreviewRenderer__calculateRectsUsingLayoutManager___block_invoke_2;
    v40[3] = &unk_1E7124828;
    v41 = v34;
    v45 = v22;
    v42 = v21;
    v46 = a10;
    v47 = a11;
    v48 = a12;
    v49 = a13;
    v35 = *(a1 + 48);
    v37 = *(a1 + 56);
    v36 = *(a1 + 64);
    v43 = v35;
    v44 = v37;
    [v41 enumerateEnclosingRectsForGlyphRange:v22.location withinSelectedGlyphRange:v22.length inTextContainer:v36 usingBlock:{*(a1 + 72), v42, v40}];
    v38 = *(*(a1 + 56) + 8);
    v39 = *(v38 + 56);
    if (v39 > 400.0 && *(v38 + 48) / v39 <= 0.8)
    {
      *a5 = 1;
    }
  }

LABEL_9:
}

void __63__UITextDragPreviewRenderer__calculateRectsUsingLayoutManager___block_invoke_2(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  [*(a1 + 32) boundingRectForGlyphRange:*(a1 + 64) inTextContainer:{*(a1 + 72), *(a1 + 40)}];
  v24.origin.y = v10;
  v24.size.height = v11;
  v20.origin.x = a2;
  v20.origin.y = a3;
  v20.size.width = a4;
  v20.size.height = a5;
  v24.origin.x = a2;
  v24.size.width = a4;
  v21 = CGRectUnion(v20, v24);
  v22 = CGRectIntersection(v21, *(a1 + 80));
  x = v22.origin.x;
  y = v22.origin.y;
  width = v22.size.width;
  height = v22.size.height;
  v16 = *(a1 + 48);
  v17 = [MEMORY[0x1E696B098] valueWithCGRect:?];
  [v16 addObject:v17];

  IsEmpty = CGRectIsEmpty(*(*(*(a1 + 56) + 8) + 32));
  v19 = *(*(a1 + 56) + 8);
  if (IsEmpty)
  {
    v19[1].origin.x = x;
  }

  else
  {
    v25.origin.x = x;
    v25.origin.y = y;
    v25.size.width = width;
    v25.size.height = height;
    v23 = CGRectUnion(v19[1], v25);
    y = v23.origin.y;
    width = v23.size.width;
    height = v23.size.height;
    v19 = *(*(a1 + 56) + 8);
    v19[1].origin.x = v23.origin.x;
  }

  v19[1].origin.y = y;
  v19[1].size.width = width;
  v19[1].size.height = height;
}

void __63__UITextDragPreviewRenderer__calculateRectsUsingLayoutManager___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  [*(a1 + 32) boundsRectForTextBlock:a2 glyphRange:{a3, a4}];
  v5 = *(a1 + 40);
  v6 = [MEMORY[0x1E696B098] valueWithCGRect:?];
  [v5 addObject:v6];
}

- (CGRect)_correctlyOffsetBoundingRect
{
  [(UITextDragPreviewRenderer *)self _rawBoundingRect];
  v4 = v3;
  v6 = v5;
  v7 = -v3;
  v13.origin.x = self->_firstRect.origin.x;
  self->_origin.x = v7;
  self->_origin.y = -v6;
  v13.origin.y = self->_firstRect.origin.y;
  v13.size.width = self->_firstRect.size.width;
  v13.size.height = self->_firstRect.size.height;
  if (!CGRectIsEmpty(v13))
  {
    self->_firstRect = CGRectOffset(self->_firstRect, self->_origin.x, self->_origin.y);
  }

  if (!CGRectIsEmpty(self->_middleRect))
  {
    self->_middleRect = CGRectOffset(self->_middleRect, self->_origin.x, self->_origin.y);
  }

  if (!CGRectIsEmpty(self->_lastRect))
  {
    self->_lastRect = CGRectOffset(self->_lastRect, self->_origin.x, self->_origin.y);
  }

  [(UITextDragPreviewRenderer *)self adjustFirstLineRect:&self->_firstRect bodyRect:&self->_middleRect lastLineRect:&self->_lastRect textOrigin:v4, v6];

  [(UITextDragPreviewRenderer *)self _rawBoundingRect];
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (CGRect)_rawBoundingRect
{
  if (CGRectIsEmpty(self->_firstRect))
  {
    x = *MEMORY[0x1E695F058];
    y = *(MEMORY[0x1E695F058] + 8);
    width = *(MEMORY[0x1E695F058] + 16);
    height = *(MEMORY[0x1E695F058] + 24);
  }

  else
  {
    x = self->_firstRect.origin.x;
    y = self->_firstRect.origin.y;
    width = self->_firstRect.size.width;
    height = self->_firstRect.size.height;
  }

  if (CGRectIsEmpty(self->_middleRect))
  {
    v7 = x;
  }

  else
  {
    v20.origin.x = x;
    v20.origin.y = y;
    v20.size.width = width;
    v20.size.height = height;
    IsEmpty = CGRectIsEmpty(v20);
    v7 = self->_middleRect.origin.x;
    if (IsEmpty)
    {
      y = self->_middleRect.origin.y;
      width = self->_middleRect.size.width;
      height = self->_middleRect.size.height;
    }

    else
    {
      v24.origin.x = x;
      v24.origin.y = y;
      v24.size.width = width;
      v24.size.height = height;
      v21 = CGRectUnion(self->_middleRect, v24);
      v7 = v21.origin.x;
      y = v21.origin.y;
      width = v21.size.width;
      height = v21.size.height;
    }
  }

  if (CGRectIsEmpty(self->_lastRect))
  {
    v9 = v7;
  }

  else
  {
    v22.origin.x = v7;
    v22.origin.y = y;
    v22.size.width = width;
    v22.size.height = height;
    v10 = CGRectIsEmpty(v22);
    v9 = self->_lastRect.origin.x;
    if (v10)
    {
      y = self->_lastRect.origin.y;
      width = self->_lastRect.size.width;
      height = self->_lastRect.size.height;
    }

    else
    {
      v11 = self->_lastRect.origin.y;
      v12 = self->_lastRect.size.width;
      v13 = self->_lastRect.size.height;
      v25.origin.x = v7;
      v25.origin.y = y;
      v25.size.width = width;
      v25.size.height = height;
      *&v9 = CGRectUnion(*&v9, v25);
      y = v14;
      width = v15;
      height = v16;
    }
  }

  v17 = y;
  v18 = width;
  v19 = height;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v9;
  return result;
}

- (void)addRenderingAttributes:(id)a3
{
  v4 = a3;
  v5 = [(UITextDragPreviewRenderer *)self layoutManager];
  [v5 addTemporaryAttributes:v4 forCharacterRange:{self->_range.location, self->_range.length}];
}

- (void)removeRenderingAttributes:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        v10 = [(UITextDragPreviewRenderer *)self layoutManager];
        [v10 removeTemporaryAttribute:v9 forCharacterRange:{self->_range.location, self->_range.length}];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

@end