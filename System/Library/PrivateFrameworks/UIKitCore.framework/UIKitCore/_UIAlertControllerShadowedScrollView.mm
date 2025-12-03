@interface _UIAlertControllerShadowedScrollView
- (CGRect)_boundsForPinningToBottomWithNewBounds:(CGRect)bounds;
- (void)_updateScrollabilityAndShadow;
- (void)setBounds:(CGRect)bounds;
- (void)setContentSize:(CGSize)size;
@end

@implementation _UIAlertControllerShadowedScrollView

- (CGRect)_boundsForPinningToBottomWithNewBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(UIView *)self bounds];
  if (v10 != width || v9 != height)
  {
    v12 = v8;
    v13 = v9;
    [(UIScrollView *)self contentSize];
    if (v14 - v12 - v13 <= 0.0)
    {
      y = v14 - height;
      if (v14 - height < 0.0)
      {
        y = 0.0;
      }
    }
  }

  v15 = x;
  v16 = y;
  v17 = width;
  v18 = height;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  if ([(_UIAlertControllerShadowedScrollView *)self shouldPinToBottomOnResize])
  {
    [(_UIAlertControllerShadowedScrollView *)self _boundsForPinningToBottomWithNewBounds:x, y, width, height];
    x = v8;
    y = v9;
    width = v10;
    height = v11;
  }

  v12.receiver = self;
  v12.super_class = _UIAlertControllerShadowedScrollView;
  [(UIScrollView *)&v12 setBounds:x, y, width, height];
  [(_UIAlertControllerShadowedScrollView *)self _updateScrollabilityAndShadow];
}

- (void)setContentSize:(CGSize)size
{
  v4.receiver = self;
  v4.super_class = _UIAlertControllerShadowedScrollView;
  [(UIScrollView *)&v4 setContentSize:size.width, size.height];
  [(_UIAlertControllerShadowedScrollView *)self _updateScrollabilityAndShadow];
}

- (void)_updateScrollabilityAndShadow
{
  v33[2] = *MEMORY[0x1E69E9840];
  [(UIView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIScrollView *)self contentSize];
  v12 = v11;
  isScrollEnabled = [(UIScrollView *)self isScrollEnabled];
  if (v12 > v10)
  {
    if (!isScrollEnabled)
    {
      [(UIScrollView *)self setScrollEnabled:1];
    }

    v14 = v12 - v6 - v10;
    shadowView = self->_shadowView;
    if (v14 > 0.0)
    {
      if (!shadowView)
      {
        v16 = [_UIAlertControllerGradientView alloc];
        v17 = [(UIView *)v16 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
        [(UIView *)v17 setTranslatesAutoresizingMaskIntoConstraints:0];
        v18 = +[UIColor blackColor];
        v19 = [v18 colorWithAlphaComponent:0.0];
        v33[0] = v19;
        v20 = +[UIColor blackColor];
        v21 = [v20 colorWithAlphaComponent:0.045];
        v33[1] = v21;
        v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
        [(_UIAlertControllerGradientView *)v17 setGradientColors:v22];

        [(UIView *)self addSubview:v17];
        v23 = self->_shadowView;
        self->_shadowView = v17;

        shadowView = self->_shadowView;
      }

      if (v14 >= 6.0)
      {
        v24 = 1.0;
      }

      else
      {
        v24 = v14 / 6.0;
      }

      [(UIView *)shadowView alpha];
      if (v25 != v24)
      {
        [(UIView *)self->_shadowView setAlpha:v24];
      }

      v35.origin.x = v4;
      v35.origin.y = v6;
      v35.size.width = v8;
      v35.size.height = v10;
      MinX = CGRectGetMinX(v35);
      v36.origin.x = v4;
      v36.origin.y = v6;
      v36.size.width = v8;
      v36.size.height = v10;
      v27 = CGRectGetMaxY(v36) + -2.0;
      v37.origin.x = v4;
      v37.origin.y = v6;
      v37.size.width = v8;
      v37.size.height = v10;
      Width = CGRectGetWidth(v37);
      [(UIView *)self->_shadowView frame];
      v42.size.height = 2.0;
      v42.origin.x = MinX;
      v42.origin.y = v27;
      v42.size.width = Width;
      if (!CGRectEqualToRect(v38, v42))
      {
        v39.origin.x = v4;
        v39.origin.y = v6;
        v39.size.width = v8;
        v39.size.height = v10;
        v29 = CGRectGetMinX(v39);
        v40.origin.x = v4;
        v40.origin.y = v6;
        v40.size.width = v8;
        v40.size.height = v10;
        v30 = CGRectGetMaxY(v40) + -2.0;
        v41.origin.x = v4;
        v41.origin.y = v6;
        v41.size.width = v8;
        v41.size.height = v10;
        [(UIView *)self->_shadowView setFrame:v29, v30, CGRectGetWidth(v41), 2.0];
      }

      if ([(UIView *)self->_shadowView isHidden])
      {
        [(UIView *)self->_shadowView setHidden:0];
      }

      return;
    }

    if ([(UIView *)shadowView isHidden])
    {
      return;
    }

    goto LABEL_23;
  }

  if (isScrollEnabled)
  {
    [(UIScrollView *)self setScrollEnabled:0];
  }

  v31 = self->_shadowView;
  if (v31 && ![(UIView *)v31 isHidden])
  {
LABEL_23:
    [(UIView *)self->_shadowView setFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v32 = self->_shadowView;

    [(UIView *)v32 setHidden:1];
  }
}

@end