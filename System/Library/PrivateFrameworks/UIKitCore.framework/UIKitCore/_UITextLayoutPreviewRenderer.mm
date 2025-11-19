@interface _UITextLayoutPreviewRenderer
- (CGRect)bodyRect;
- (CGRect)firstLineRect;
- (CGRect)lastLineRect;
- (UIImage)image;
- (_UITextLayoutPreviewRenderer)initWithTextLayoutManager:(id)a3 range:(id)a4 unifyRects:(BOOL)a5;
- (void)_updateDataIfNeeded;
- (void)addRenderingAttributes:(id)a3;
- (void)removeRenderingAttributes:(id)a3;
@end

@implementation _UITextLayoutPreviewRenderer

- (_UITextLayoutPreviewRenderer)initWithTextLayoutManager:(id)a3 range:(id)a4 unifyRects:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = _UITextLayoutPreviewRenderer;
  v11 = [(_UITextLayoutPreviewRenderer *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_textLayoutManager, a3);
    objc_storeStrong(&v12->_range, a4);
    v12->_unifyRects = a5;
    v12->_calculated = 0;
  }

  return v12;
}

- (UIImage)image
{
  [(_UITextLayoutPreviewRenderer *)self _updateDataIfNeeded];
  image = self->_image;

  return image;
}

- (CGRect)firstLineRect
{
  [(_UITextLayoutPreviewRenderer *)self _updateDataIfNeeded];
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
  [(_UITextLayoutPreviewRenderer *)self _updateDataIfNeeded];
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
  [(_UITextLayoutPreviewRenderer *)self _updateDataIfNeeded];
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

- (void)_updateDataIfNeeded
{
  if (!self->_calculated)
  {
    self->_calculated = 1;
    v49 = *(MEMORY[0x1E695F058] + 16);
    v50 = *MEMORY[0x1E695F058];
    self->_firstRect.origin = *MEMORY[0x1E695F058];
    self->_firstRect.size = v49;
    self->_middleRect.origin = v50;
    self->_middleRect.size = v49;
    self->_lastRect.origin = v50;
    self->_lastRect.size = v49;
    v3 = objc_opt_new();
    v4 = +[UIBezierPath bezierPath];
    v64 = 0;
    v65 = &v64;
    v66 = 0x4010000000;
    v67 = "";
    v68 = v50;
    v69 = v49;
    range = self->_range;
    if (range && ![(NSTextRange *)range isEmpty])
    {
      textLayoutManager = self->_textLayoutManager;
      v7 = self->_range;
      v60[0] = MEMORY[0x1E69E9820];
      v60[1] = 3221225472;
      v60[2] = __51___UITextLayoutPreviewRenderer__updateDataIfNeeded__block_invoke;
      v60[3] = &unk_1E7113F38;
      v61 = v3;
      v62 = v4;
      v63 = &v64;
      [(NSTextLayoutManager *)textLayoutManager enumerateTextSegmentsInRange:v7 type:0 options:67108865 usingBlock:v60];
    }

    if ([v3 count] == 1)
    {
      v8 = [v3 firstObject];
      [v8 CGRectValue];
      self->_middleRect.origin.x = v9;
      self->_middleRect.origin.y = v10;
      self->_middleRect.size.width = v11;
      self->_middleRect.size.height = v12;
    }

    else if ([v3 count])
    {
      v13 = [v3 firstObject];
      [v13 CGRectValue];
      self->_firstRect.origin.x = v14;
      self->_firstRect.origin.y = v15;
      self->_firstRect.size.width = v16;
      self->_firstRect.size.height = v17;

      v18 = [v3 lastObject];
      [v18 CGRectValue];
      self->_lastRect.origin.x = v19;
      self->_lastRect.origin.y = v20;
      self->_lastRect.size.width = v21;
      self->_lastRect.size.height = v22;

      if ([v3 count] >= 3)
      {
        v23 = [v3 objectAtIndexedSubscript:1];
        [v23 CGRectValue];
        self->_middleRect.origin.x = v24;
        self->_middleRect.origin.y = v25;
        self->_middleRect.size.width = v26;
        self->_middleRect.size.height = v27;

        for (i = 2; i < [v3 count] - 1; ++i)
        {
          v29 = [v3 objectAtIndexedSubscript:i];
          [v29 CGRectValue];
          v73.origin.x = v30;
          v73.origin.y = v31;
          v73.size.width = v32;
          v73.size.height = v33;
          self->_middleRect = CGRectUnion(self->_middleRect, v73);
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

    v36 = v65[4];
    v37 = v65[5];
    memset(&v59, 0, sizeof(v59));
    CGAffineTransformMakeTranslation(&v59, -v36, -v37);
    if (!CGRectIsEmpty(self->_firstRect))
    {
      firstRect = self->_firstRect;
      v58 = v59;
      self->_firstRect = CGRectApplyAffineTransform(firstRect, &v58);
    }

    if (!CGRectIsEmpty(self->_middleRect))
    {
      middleRect = self->_middleRect;
      v58 = v59;
      self->_middleRect = CGRectApplyAffineTransform(middleRect, &v58);
    }

    if (!CGRectIsEmpty(self->_lastRect))
    {
      lastRect = self->_lastRect;
      v58 = v59;
      self->_lastRect = CGRectApplyAffineTransform(lastRect, &v58);
    }

    v38 = self->_textLayoutManager;
    v39 = self->_range;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    v57 = v59;
    aBlock[2] = __51___UITextLayoutPreviewRenderer__updateDataIfNeeded__block_invoke_2;
    aBlock[3] = &unk_1E7113F60;
    v40 = v4;
    v54 = v40;
    v41 = v38;
    v55 = v41;
    v42 = v39;
    v56 = v42;
    v43 = _Block_copy(aBlock);
    v44 = [UIGraphicsImageRenderer alloc];
    v45 = [(UIGraphicsImageRenderer *)v44 initWithSize:v65[6], v65[7]];
    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3221225472;
    v51[2] = __51___UITextLayoutPreviewRenderer__updateDataIfNeeded__block_invoke_3;
    v51[3] = &unk_1E7106E70;
    v46 = v43;
    v52 = v46;
    v47 = [(UIGraphicsImageRenderer *)v45 imageWithActions:v51];
    image = self->_image;
    self->_image = v47;

    _Block_object_dispose(&v64, 8);
  }
}

- (void)addRenderingAttributes:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __55___UITextLayoutPreviewRenderer_addRenderingAttributes___block_invoke;
  v3[3] = &unk_1E70F6948;
  v3[4] = self;
  [a3 enumerateKeysAndObjectsUsingBlock:v3];
}

- (void)removeRenderingAttributes:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(NSTextLayoutManager *)self->_textLayoutManager removeRenderingAttribute:*(*(&v9 + 1) + 8 * v8++) forTextRange:self->_range];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

@end