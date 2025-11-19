@interface PUCropOverlayView
- (CGRect)cropRect;
- (CGRect)cropRectInLocalCoordinateSpace;
- (NSArray)oneNinthCropLines;
- (NSArray)oneThirdCropLines;
- (PUCropOverlayView)initWithFrame:(CGRect)a3;
- (UIView)cropWindowView;
- (id)_addLinesSpacedForCount:(unint64_t)a3 drawFirstAndLast:(BOOL)a4 visible:(BOOL)a5;
- (id)_createConstraintsForLine:(id)a3 centerMultiplier:(double)a4 vertical:(BOOL)a5;
- (id)_createLineViewForCount:(unint64_t)a3;
- (id)_createMaskView;
- (unint64_t)_subviewIndexForLineForCount:(unint64_t)a3;
- (void)_setGridViews:(id)a3 visible:(BOOL)a4 iVarVisibilePtr:(BOOL *)a5 animated:(BOOL)a6;
- (void)_updateCropRectInLocalCoordinateSpace;
- (void)layoutSubviews;
- (void)setCropGridVisible:(BOOL)a3 animated:(BOOL)a4;
- (void)setCropRect:(CGRect)a3;
- (void)setMaskedContentVisible:(BOOL)a3 animated:(BOOL)a4;
- (void)setStraightenGridVisible:(BOOL)a3 animated:(BOOL)a4;
@end

@implementation PUCropOverlayView

- (CGRect)cropRectInLocalCoordinateSpace
{
  x = self->_cropRectInLocalCoordinateSpace.origin.x;
  y = self->_cropRectInLocalCoordinateSpace.origin.y;
  width = self->_cropRectInLocalCoordinateSpace.size.width;
  height = self->_cropRectInLocalCoordinateSpace.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)cropRect
{
  x = self->_cropRect.origin.x;
  y = self->_cropRect.origin.y;
  width = self->_cropRect.size.width;
  height = self->_cropRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)_createMaskView
{
  v2 = objc_alloc_init(PUCropMaskView);

  return v2;
}

- (id)_createLineViewForCount:(unint64_t)a3
{
  v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
  v5 = 0.5;
  if (a3 < 5)
  {
    v5 = 1.0;
  }

  v6 = [MEMORY[0x1E69DC888] colorWithWhite:v5 alpha:?];
  [v4 setBackgroundColor:v6];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  return v4;
}

- (id)_createConstraintsForLine:(id)a3 centerMultiplier:(double)a4 vertical:(BOOL)a5
{
  v5 = a5;
  v33[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = _NSDictionaryOfVariableBindings(&cfstr_Lineview.isa, v8, 0);
  v10 = [MEMORY[0x1E695DF70] array];
  [(PUCropOverlayView *)self px_screenScale];
  if (v5)
  {
    v12 = @"V:|[lineView]|";
  }

  else
  {
    v12 = @"V:[lineView(lineSize)]";
  }

  if (v5)
  {
    v13 = @"H:[lineView(lineSize)]";
  }

  else
  {
    v13 = @"H:|[lineView]|";
  }

  v14 = 9;
  if (!v5)
  {
    v14 = 10;
  }

  v15 = 4;
  if (v5)
  {
    v15 = 2;
  }

  v16 = 3;
  if (v5)
  {
    v16 = 1;
  }

  if (a4 == 0.0)
  {
    v14 = v16;
  }

  else
  {
    v16 = v15;
  }

  if (a4 == 1.0)
  {
    v17 = v15;
  }

  else
  {
    v17 = v14;
  }

  if (a4 == 1.0)
  {
    v18 = v15;
  }

  else
  {
    v18 = v16;
  }

  v19 = 1.0 / v11;
  v20 = a4 == 1.0 || a4 == 0.0;
  v31 = v18;
  v32 = @"lineSize";
  if (v20)
  {
    v19 = 1.0;
  }

  v21 = [MEMORY[0x1E696AD98] numberWithDouble:v19];
  v33[0] = v21;
  v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:&v32 count:1];

  v23 = MEMORY[0x1E696ACD8];
  v24 = v13;
  v25 = [v23 constraintsWithVisualFormat:v12 options:0 metrics:v22 views:v9];
  [v10 addObjectsFromArray:v25];

  v26 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:v24 options:0x10000 metrics:v22 views:v9];

  [v10 addObjectsFromArray:v26];
  v27 = MEMORY[0x1E696ACD8];
  v28 = [(PUCropOverlayView *)self cropWindowView];
  v29 = [v27 constraintWithItem:v8 attribute:v17 relatedBy:0 toItem:v28 attribute:v31 multiplier:a4 constant:0.0];

  [v10 addObject:v29];

  return v10;
}

- (id)_addLinesSpacedForCount:(unint64_t)a3 drawFirstAndLast:(BOOL)a4 visible:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  v33 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v9 = a3 + 1;
  }

  else
  {
    v9 = a3 - 1;
  }

  v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:2 * v9];
  v27 = [(PUCropOverlayView *)self _subviewIndexForLineForCount:v7];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v25 = [&unk_1F2B7CE60 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v25)
  {
    v11 = !v6;
    v12 = v5;
    v24 = *v29;
    v13 = v7;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v29 != v24)
        {
          objc_enumerationMutation(&unk_1F2B7CE60);
        }

        if (v9)
        {
          v14 = 0;
          v15 = *(*(&v28 + 1) + 8 * i);
          do
          {
            v16 = [(PUCropOverlayView *)self _createLineViewForCount:v7, v24];
            [(PUCropOverlayView *)self cropWindowView];
            v17 = v9;
            v19 = v18 = v7;
            [v19 insertSubview:v16 atIndex:v27];

            [v16 setAlpha:v12];
            v20 = -[PUCropOverlayView _createConstraintsForLine:centerMultiplier:vertical:](self, "_createConstraintsForLine:centerMultiplier:vertical:", v16, [v15 BOOLValue], (v11 + v14) / v13);
            v21 = [(PUCropOverlayView *)self cropWindowView];
            [v21 addConstraints:v20];

            [v10 addObject:v16];
            v7 = v18;
            v9 = v17;

            ++v14;
          }

          while (v14 < v17);
        }
      }

      v25 = [&unk_1F2B7CE60 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v25);
  }

  v22 = [v10 copy];

  return v22;
}

- (unint64_t)_subviewIndexForLineForCount:(unint64_t)a3
{
  if (a3 > 4)
  {
    return 0;
  }

  v3 = [(PUCropOverlayView *)self cropWindowView];
  v4 = [v3 subviews];
  v5 = [v4 count];

  return v5;
}

- (NSArray)oneNinthCropLines
{
  oneNinthCropLines = self->_oneNinthCropLines;
  if (!oneNinthCropLines)
  {
    v4 = [(PUCropOverlayView *)self _addLinesSpacedForCount:9 drawFirstAndLast:0 visible:[(PUCropOverlayView *)self isStraightenGridVisible]];
    v5 = self->_oneNinthCropLines;
    self->_oneNinthCropLines = v4;

    oneNinthCropLines = self->_oneNinthCropLines;
  }

  v6 = oneNinthCropLines;

  return v6;
}

- (NSArray)oneThirdCropLines
{
  oneThirdCropLines = self->_oneThirdCropLines;
  if (!oneThirdCropLines)
  {
    v4 = [(PUCropOverlayView *)self _addLinesSpacedForCount:3 drawFirstAndLast:0 visible:[(PUCropOverlayView *)self isCropGridVisible]];
    v5 = self->_oneThirdCropLines;
    self->_oneThirdCropLines = v4;

    oneThirdCropLines = self->_oneThirdCropLines;
  }

  v6 = oneThirdCropLines;

  return v6;
}

- (UIView)cropWindowView
{
  cropWindowView = self->_cropWindowView;
  if (!cropWindowView)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
    v5 = self->_cropWindowView;
    self->_cropWindowView = v4;

    [(UIView *)self->_cropWindowView setFrame:self->_cropRect.origin.x, self->_cropRect.origin.y, self->_cropRect.size.width, self->_cropRect.size.height];
    v6 = self->_cropWindowView;
    v7 = [MEMORY[0x1E69DC888] clearColor];
    [(UIView *)v6 setBackgroundColor:v7];

    cropWindowView = self->_cropWindowView;
  }

  v8 = cropWindowView;

  return v8;
}

- (void)_setGridViews:(id)a3 visible:(BOOL)a4 iVarVisibilePtr:(BOOL *)a5 animated:(BOOL)a6
{
  v6 = a6;
  v8 = a4;
  v9 = a3;
  v10 = v9;
  if (*a5 != v8)
  {
    *a5 = v8;
    if (v8)
    {
      v11 = 1.0;
    }

    else
    {
      v11 = 0.0;
    }

    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __68__PUCropOverlayView__setGridViews_visible_iVarVisibilePtr_animated___block_invoke;
    v17 = &unk_1E7B7FF70;
    v18 = v9;
    v19 = v11;
    v12 = _Block_copy(&v14);
    v13 = v12;
    if (v6)
    {
      [MEMORY[0x1E69DD250] _animateUsingDefaultTimingWithOptions:0 animations:v12 completion:{0, v14, v15, v16, v17}];
    }

    else
    {
      (*(v12 + 2))(v12);
    }
  }
}

void __68__PUCropOverlayView__setGridViews_visible_iVarVisibilePtr_animated___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) setAlpha:{*(a1 + 40), v7}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)setStraightenGridVisible:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(PUCropOverlayView *)self oneNinthCropLines];
  [(PUCropOverlayView *)self _setGridViews:v7 visible:v5 iVarVisibilePtr:&self->_straightenGridVisible animated:v4];
}

- (void)setCropGridVisible:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(PUCropOverlayView *)self oneThirdCropLines];
  [(PUCropOverlayView *)self _setGridViews:v7 visible:v5 iVarVisibilePtr:&self->_cropGridVisible animated:v4];
}

- (void)layoutSubviews
{
  v20.receiver = self;
  v20.super_class = PUCropOverlayView;
  [(PUCropOverlayView *)&v20 layoutSubviews];
  [(PUCropOverlayView *)self cropRectInLocalCoordinateSpace];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(PUCropOverlayView *)self cropWindowView];
  [v11 setFrame:{v4, v6, v8, v10}];

  v12 = [(PUCropOverlayView *)self cropWindowView];
  [v12 frame];
  MinX = CGRectGetMinX(v21);
  [v12 frame];
  MinY = CGRectGetMinY(v22);
  [v12 frame];
  MaxX = CGRectGetMaxX(v23);
  [v12 frame];
  MaxY = CGRectGetMaxY(v24);
  [(PUCropOverlayView *)self frame];
  [(PUCropMaskView *)self->_topMask setFrame:0.0, 0.0];
  [(PUCropOverlayView *)self frame];
  v18 = v17;
  [(PUCropOverlayView *)self bounds];
  [(PUCropMaskView *)self->_bottomMask setFrame:0.0, MaxY, v18, CGRectGetMaxY(v25) - MaxY];
  [v12 frame];
  [(PUCropMaskView *)self->_leftMask setFrame:0.0, MinY, MinX];
  [(PUCropOverlayView *)self bounds];
  v19 = CGRectGetMaxX(v26) - MaxX;
  [v12 frame];
  [(PUCropMaskView *)self->_rightMask setFrame:MaxX, MinY, v19];
}

- (void)_updateCropRectInLocalCoordinateSpace
{
  v7 = [(PUCropOverlayView *)self superview];
  [(PUCropOverlayView *)self cropRect];
  [v7 convertRect:self toView:?];
  [(PUCropOverlayView *)self setCropRectInLocalCoordinateSpace:PURoundRectToPixel(v3, v4, v5, v6)];
}

- (void)setCropRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  p_cropRect = &self->_cropRect;
  if (!CGRectEqualToRect(a3, self->_cropRect))
  {
    p_cropRect->origin.x = x;
    p_cropRect->origin.y = y;
    p_cropRect->size.width = width;
    p_cropRect->size.height = height;
    [(PUCropOverlayView *)self _updateCropRectInLocalCoordinateSpace];

    [(PUCropOverlayView *)self setNeedsLayout];
  }
}

- (void)setMaskedContentVisible:(BOOL)a3 animated:(BOOL)a4
{
  v20 = *MEMORY[0x1E69E9840];
  if (self->_maskedContentVisible != a3)
  {
    v4 = a4;
    v5 = a3;
    self->_maskedContentVisible = a3;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = [(PUCropOverlayView *)self maskViews];
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      v10 = !v5;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          if (v4)
          {
            v14[0] = MEMORY[0x1E69E9820];
            v14[1] = 3221225472;
            v14[2] = __54__PUCropOverlayView_setMaskedContentVisible_animated___block_invoke;
            v14[3] = &unk_1E7B7FF70;
            v14[4] = v12;
            *&v14[5] = v10;
            [MEMORY[0x1E69DD250] _animateUsingDefaultTimingWithOptions:0 animations:v14 completion:0];
          }

          else
          {
            v13 = [v12 opaqueView];
            [v13 setAlpha:v10];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }
  }
}

void __54__PUCropOverlayView_setMaskedContentVisible_animated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) opaqueView];
  [v2 setAlpha:*(a1 + 40)];
}

- (PUCropOverlayView)initWithFrame:(CGRect)a3
{
  v27[4] = *MEMORY[0x1E69E9840];
  v25.receiver = self;
  v25.super_class = PUCropOverlayView;
  v3 = [(PUCropOverlayView *)&v25 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(PUCropOverlayView *)v3 cropWindowView];
    v6 = [(PUCropOverlayView *)v4 _createMaskView];
    topMask = v4->_topMask;
    v4->_topMask = v6;

    v8 = [(PUCropOverlayView *)v4 _createMaskView];
    leftMask = v4->_leftMask;
    v4->_leftMask = v8;

    v10 = [(PUCropOverlayView *)v4 _createMaskView];
    rightMask = v4->_rightMask;
    v4->_rightMask = v10;

    v12 = [(PUCropOverlayView *)v4 _createMaskView];
    bottomMask = v4->_bottomMask;
    v4->_bottomMask = v12;

    v27[0] = v4->_topMask;
    v27[1] = v4->_leftMask;
    v27[2] = v4->_rightMask;
    v27[3] = v4->_bottomMask;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:4];
    [(PUCropOverlayView *)v4 setMaskViews:v14];

    [(PUCropOverlayView *)v4 addSubview:v5];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v15 = [(PUCropOverlayView *)v4 maskViews];
    v16 = [v15 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v22;
      do
      {
        v19 = 0;
        do
        {
          if (*v22 != v18)
          {
            objc_enumerationMutation(v15);
          }

          [(PUCropOverlayView *)v4 addSubview:*(*(&v21 + 1) + 8 * v19++)];
        }

        while (v17 != v19);
        v17 = [v15 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v17);
    }

    [(PUCropOverlayView *)v4 setOpaque:0];
    v4->_maskedContentVisible = 1;
    [v5 setAccessibilityIdentifier:@"cropView"];
  }

  return v4;
}

@end