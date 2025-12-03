@interface PUCropOverlayView
- (CGRect)cropRect;
- (CGRect)cropRectInLocalCoordinateSpace;
- (NSArray)oneNinthCropLines;
- (NSArray)oneThirdCropLines;
- (PUCropOverlayView)initWithFrame:(CGRect)frame;
- (UIView)cropWindowView;
- (id)_addLinesSpacedForCount:(unint64_t)count drawFirstAndLast:(BOOL)last visible:(BOOL)visible;
- (id)_createConstraintsForLine:(id)line centerMultiplier:(double)multiplier vertical:(BOOL)vertical;
- (id)_createLineViewForCount:(unint64_t)count;
- (id)_createMaskView;
- (unint64_t)_subviewIndexForLineForCount:(unint64_t)count;
- (void)_setGridViews:(id)views visible:(BOOL)visible iVarVisibilePtr:(BOOL *)ptr animated:(BOOL)animated;
- (void)_updateCropRectInLocalCoordinateSpace;
- (void)layoutSubviews;
- (void)setCropGridVisible:(BOOL)visible animated:(BOOL)animated;
- (void)setCropRect:(CGRect)rect;
- (void)setMaskedContentVisible:(BOOL)visible animated:(BOOL)animated;
- (void)setStraightenGridVisible:(BOOL)visible animated:(BOOL)animated;
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

- (id)_createLineViewForCount:(unint64_t)count
{
  v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
  v5 = 0.5;
  if (count < 5)
  {
    v5 = 1.0;
  }

  v6 = [MEMORY[0x1E69DC888] colorWithWhite:v5 alpha:?];
  [v4 setBackgroundColor:v6];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  return v4;
}

- (id)_createConstraintsForLine:(id)line centerMultiplier:(double)multiplier vertical:(BOOL)vertical
{
  verticalCopy = vertical;
  v33[1] = *MEMORY[0x1E69E9840];
  lineCopy = line;
  v9 = _NSDictionaryOfVariableBindings(&cfstr_Lineview.isa, lineCopy, 0);
  array = [MEMORY[0x1E695DF70] array];
  [(PUCropOverlayView *)self px_screenScale];
  if (verticalCopy)
  {
    v12 = @"V:|[lineView]|";
  }

  else
  {
    v12 = @"V:[lineView(lineSize)]";
  }

  if (verticalCopy)
  {
    v13 = @"H:[lineView(lineSize)]";
  }

  else
  {
    v13 = @"H:|[lineView]|";
  }

  v14 = 9;
  if (!verticalCopy)
  {
    v14 = 10;
  }

  v15 = 4;
  if (verticalCopy)
  {
    v15 = 2;
  }

  v16 = 3;
  if (verticalCopy)
  {
    v16 = 1;
  }

  if (multiplier == 0.0)
  {
    v14 = v16;
  }

  else
  {
    v16 = v15;
  }

  if (multiplier == 1.0)
  {
    v17 = v15;
  }

  else
  {
    v17 = v14;
  }

  if (multiplier == 1.0)
  {
    v18 = v15;
  }

  else
  {
    v18 = v16;
  }

  v19 = 1.0 / v11;
  v20 = multiplier == 1.0 || multiplier == 0.0;
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
  [array addObjectsFromArray:v25];

  v26 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:v24 options:0x10000 metrics:v22 views:v9];

  [array addObjectsFromArray:v26];
  v27 = MEMORY[0x1E696ACD8];
  cropWindowView = [(PUCropOverlayView *)self cropWindowView];
  v29 = [v27 constraintWithItem:lineCopy attribute:v17 relatedBy:0 toItem:cropWindowView attribute:v31 multiplier:multiplier constant:0.0];

  [array addObject:v29];

  return array;
}

- (id)_addLinesSpacedForCount:(unint64_t)count drawFirstAndLast:(BOOL)last visible:(BOOL)visible
{
  visibleCopy = visible;
  lastCopy = last;
  countCopy = count;
  v33 = *MEMORY[0x1E69E9840];
  if (last)
  {
    v9 = count + 1;
  }

  else
  {
    v9 = count - 1;
  }

  v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:2 * v9];
  v27 = [(PUCropOverlayView *)self _subviewIndexForLineForCount:countCopy];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v25 = [&unk_1F2B7CE60 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v25)
  {
    v11 = !lastCopy;
    v12 = visibleCopy;
    v24 = *v29;
    v13 = countCopy;
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
            v16 = [(PUCropOverlayView *)self _createLineViewForCount:countCopy, v24];
            [(PUCropOverlayView *)self cropWindowView];
            v17 = v9;
            v19 = v18 = countCopy;
            [v19 insertSubview:v16 atIndex:v27];

            [v16 setAlpha:v12];
            v20 = -[PUCropOverlayView _createConstraintsForLine:centerMultiplier:vertical:](self, "_createConstraintsForLine:centerMultiplier:vertical:", v16, [v15 BOOLValue], (v11 + v14) / v13);
            cropWindowView = [(PUCropOverlayView *)self cropWindowView];
            [cropWindowView addConstraints:v20];

            [v10 addObject:v16];
            countCopy = v18;
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

- (unint64_t)_subviewIndexForLineForCount:(unint64_t)count
{
  if (count > 4)
  {
    return 0;
  }

  cropWindowView = [(PUCropOverlayView *)self cropWindowView];
  subviews = [cropWindowView subviews];
  v5 = [subviews count];

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
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(UIView *)v6 setBackgroundColor:clearColor];

    cropWindowView = self->_cropWindowView;
  }

  v8 = cropWindowView;

  return v8;
}

- (void)_setGridViews:(id)views visible:(BOOL)visible iVarVisibilePtr:(BOOL *)ptr animated:(BOOL)animated
{
  animatedCopy = animated;
  visibleCopy = visible;
  viewsCopy = views;
  v10 = viewsCopy;
  if (*ptr != visibleCopy)
  {
    *ptr = visibleCopy;
    if (visibleCopy)
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
    v18 = viewsCopy;
    v19 = v11;
    v12 = _Block_copy(&v14);
    v13 = v12;
    if (animatedCopy)
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

- (void)setStraightenGridVisible:(BOOL)visible animated:(BOOL)animated
{
  animatedCopy = animated;
  visibleCopy = visible;
  oneNinthCropLines = [(PUCropOverlayView *)self oneNinthCropLines];
  [(PUCropOverlayView *)self _setGridViews:oneNinthCropLines visible:visibleCopy iVarVisibilePtr:&self->_straightenGridVisible animated:animatedCopy];
}

- (void)setCropGridVisible:(BOOL)visible animated:(BOOL)animated
{
  animatedCopy = animated;
  visibleCopy = visible;
  oneThirdCropLines = [(PUCropOverlayView *)self oneThirdCropLines];
  [(PUCropOverlayView *)self _setGridViews:oneThirdCropLines visible:visibleCopy iVarVisibilePtr:&self->_cropGridVisible animated:animatedCopy];
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
  cropWindowView = [(PUCropOverlayView *)self cropWindowView];
  [cropWindowView setFrame:{v4, v6, v8, v10}];

  cropWindowView2 = [(PUCropOverlayView *)self cropWindowView];
  [cropWindowView2 frame];
  MinX = CGRectGetMinX(v21);
  [cropWindowView2 frame];
  MinY = CGRectGetMinY(v22);
  [cropWindowView2 frame];
  MaxX = CGRectGetMaxX(v23);
  [cropWindowView2 frame];
  MaxY = CGRectGetMaxY(v24);
  [(PUCropOverlayView *)self frame];
  [(PUCropMaskView *)self->_topMask setFrame:0.0, 0.0];
  [(PUCropOverlayView *)self frame];
  v18 = v17;
  [(PUCropOverlayView *)self bounds];
  [(PUCropMaskView *)self->_bottomMask setFrame:0.0, MaxY, v18, CGRectGetMaxY(v25) - MaxY];
  [cropWindowView2 frame];
  [(PUCropMaskView *)self->_leftMask setFrame:0.0, MinY, MinX];
  [(PUCropOverlayView *)self bounds];
  v19 = CGRectGetMaxX(v26) - MaxX;
  [cropWindowView2 frame];
  [(PUCropMaskView *)self->_rightMask setFrame:MaxX, MinY, v19];
}

- (void)_updateCropRectInLocalCoordinateSpace
{
  superview = [(PUCropOverlayView *)self superview];
  [(PUCropOverlayView *)self cropRect];
  [superview convertRect:self toView:?];
  [(PUCropOverlayView *)self setCropRectInLocalCoordinateSpace:PURoundRectToPixel(v3, v4, v5, v6)];
}

- (void)setCropRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  p_cropRect = &self->_cropRect;
  if (!CGRectEqualToRect(rect, self->_cropRect))
  {
    p_cropRect->origin.x = x;
    p_cropRect->origin.y = y;
    p_cropRect->size.width = width;
    p_cropRect->size.height = height;
    [(PUCropOverlayView *)self _updateCropRectInLocalCoordinateSpace];

    [(PUCropOverlayView *)self setNeedsLayout];
  }
}

- (void)setMaskedContentVisible:(BOOL)visible animated:(BOOL)animated
{
  v20 = *MEMORY[0x1E69E9840];
  if (self->_maskedContentVisible != visible)
  {
    animatedCopy = animated;
    visibleCopy = visible;
    self->_maskedContentVisible = visible;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    maskViews = [(PUCropOverlayView *)self maskViews];
    v7 = [maskViews countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      v10 = !visibleCopy;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(maskViews);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          if (animatedCopy)
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
            opaqueView = [v12 opaqueView];
            [opaqueView setAlpha:v10];
          }
        }

        v8 = [maskViews countByEnumeratingWithState:&v15 objects:v19 count:16];
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

- (PUCropOverlayView)initWithFrame:(CGRect)frame
{
  v27[4] = *MEMORY[0x1E69E9840];
  v25.receiver = self;
  v25.super_class = PUCropOverlayView;
  v3 = [(PUCropOverlayView *)&v25 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    cropWindowView = [(PUCropOverlayView *)v3 cropWindowView];
    _createMaskView = [(PUCropOverlayView *)v4 _createMaskView];
    topMask = v4->_topMask;
    v4->_topMask = _createMaskView;

    _createMaskView2 = [(PUCropOverlayView *)v4 _createMaskView];
    leftMask = v4->_leftMask;
    v4->_leftMask = _createMaskView2;

    _createMaskView3 = [(PUCropOverlayView *)v4 _createMaskView];
    rightMask = v4->_rightMask;
    v4->_rightMask = _createMaskView3;

    _createMaskView4 = [(PUCropOverlayView *)v4 _createMaskView];
    bottomMask = v4->_bottomMask;
    v4->_bottomMask = _createMaskView4;

    v27[0] = v4->_topMask;
    v27[1] = v4->_leftMask;
    v27[2] = v4->_rightMask;
    v27[3] = v4->_bottomMask;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:4];
    [(PUCropOverlayView *)v4 setMaskViews:v14];

    [(PUCropOverlayView *)v4 addSubview:cropWindowView];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    maskViews = [(PUCropOverlayView *)v4 maskViews];
    v16 = [maskViews countByEnumeratingWithState:&v21 objects:v26 count:16];
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
            objc_enumerationMutation(maskViews);
          }

          [(PUCropOverlayView *)v4 addSubview:*(*(&v21 + 1) + 8 * v19++)];
        }

        while (v17 != v19);
        v17 = [maskViews countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v17);
    }

    [(PUCropOverlayView *)v4 setOpaque:0];
    v4->_maskedContentVisible = 1;
    [cropWindowView setAccessibilityIdentifier:@"cropView"];
  }

  return v4;
}

@end