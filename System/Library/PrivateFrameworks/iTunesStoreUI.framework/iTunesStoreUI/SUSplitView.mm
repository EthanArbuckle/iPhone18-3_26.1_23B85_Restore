@interface SUSplitView
- (SUSplitView)initWithFrame:(CGRect)frame;
- (double)_minimumPaneSizeForLayout;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setFirstView:(id)view;
- (void)setLayoutType:(int64_t)type;
- (void)setMinimumPaneSize:(double)size;
- (void)setSecondView:(id)view;
- (void)setSplitPosition:(double)position;
- (void)setVertical:(BOOL)vertical;
@end

@implementation SUSplitView

- (SUSplitView)initWithFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = SUSplitView;
  result = [(SUSplitView *)&v4 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (result)
  {
    result->_minimumPaneSize = 30.0;
    result->_layoutType = 2;
    result->_vertical = 1;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUSplitView;
  [(SUSplitView *)&v3 dealloc];
}

- (void)layoutSubviews
{
  [(SUSplitView *)self bounds];
  v4 = v3;
  v6 = v5;
  [(SUSplitView *)self _minimumPaneSizeForLayout];
  splitPosition = self->_splitPosition;
  if (self->_layoutType == 1)
  {
    v9 = 0.0;
    v10 = fmax(splitPosition, 0.0);
    if (v10 > 1.0)
    {
      v10 = 1.0;
    }

    if (self->_vertical)
    {
      v11 = floor(v6 * v10);
      if (v11 >= v7)
      {
        v9 = v11;
      }

      else
      {
        v9 = v7;
      }

      v6 = v6 - v9;
      v12 = 0.0;
      v13 = v9;
      v14 = v4;
    }

    else
    {
      v12 = floor(v4 * v10);
      v4 = v4 - v12;
      v13 = v6;
      v14 = v12;
    }
  }

  else
  {
    v15 = fmax(floor(splitPosition), 0.0);
    vertical = self->_vertical;
    if (v15 >= v7)
    {
      v7 = v15;
    }

    if (vertical)
    {
      v14 = v4;
    }

    else
    {
      v14 = v7;
    }

    if (vertical)
    {
      v12 = 0.0;
    }

    else
    {
      v4 = v4 - v7;
      v12 = v7;
    }

    if (vertical)
    {
      v9 = v7;
    }

    else
    {
      v9 = 0.0;
    }

    if (vertical)
    {
      v13 = v7;
    }

    else
    {
      v13 = v6;
    }

    if (vertical)
    {
      v6 = v6 - v7;
    }
  }

  [(UIView *)self->_firstView setFrame:0.0, 0.0, v14, v13];
  [(UIView *)self->_secondView setFrame:v12, v9, v4, v6];
  Mutable = CGPathCreateMutable();
  v18 = *MEMORY[0x1E695EFF8];
  v19 = *(MEMORY[0x1E695EFF8] + 8);
  v22.origin.x = *MEMORY[0x1E695EFF8];
  v22.origin.y = v19;
  v22.size.width = v14;
  v22.size.height = v13;
  CGPathAddRect(Mutable, 0, v22);
  [(CALayer *)[(UIView *)self->_firstView layer] setShadowPath:Mutable];
  CGPathRelease(Mutable);
  v20 = CGPathCreateMutable();
  v23.origin.x = v18;
  v23.origin.y = v19;
  v23.size.width = v4;
  v23.size.height = v6;
  CGPathAddRect(v20, 0, v23);
  [(CALayer *)[(UIView *)self->_secondView layer] setShadowPath:v20];

  CGPathRelease(v20);
}

- (void)setFirstView:(id)view
{
  firstView = self->_firstView;
  if (firstView != view)
  {
    if (firstView)
    {
      [(UIView *)firstView removeFromSuperview];
      v6 = self->_firstView;
    }

    else
    {
      v6 = 0;
    }

    viewCopy = view;
    self->_firstView = viewCopy;
    if (viewCopy)
    {
      [(SUSplitView *)self addSubview:viewCopy];
    }

    [(SUSplitView *)self setNeedsLayout];
  }
}

- (void)setLayoutType:(int64_t)type
{
  if (self->_layoutType != type)
  {
    self->_layoutType = type;
    [(SUSplitView *)self setNeedsLayout];
  }
}

- (void)setMinimumPaneSize:(double)size
{
  if (self->_minimumPaneSize != size)
  {
    self->_minimumPaneSize = size;
    [(SUSplitView *)self setNeedsLayout];
  }
}

- (void)setSecondView:(id)view
{
  secondView = self->_secondView;
  if (secondView != view)
  {
    if (secondView)
    {
      [(UIView *)secondView removeFromSuperview];
      v6 = self->_secondView;
    }

    else
    {
      v6 = 0;
    }

    viewCopy = view;
    self->_secondView = viewCopy;
    if (viewCopy)
    {
      [(SUSplitView *)self addSubview:viewCopy];
    }

    [(SUSplitView *)self setNeedsLayout];
  }
}

- (void)setSplitPosition:(double)position
{
  if (self->_splitPosition != position)
  {
    self->_splitPosition = position;
    [(SUSplitView *)self setNeedsLayout];
  }
}

- (void)setVertical:(BOOL)vertical
{
  if (self->_vertical != vertical)
  {
    self->_vertical = vertical;
    [(SUSplitView *)self setNeedsLayout];
  }
}

- (double)_minimumPaneSizeForLayout
{
  minimumPaneSize = self->_minimumPaneSize;
  if (minimumPaneSize > 0.00000011920929 && minimumPaneSize < 1.0)
  {
    [(SUSplitView *)self bounds];
    if (self->_vertical)
    {
      v7 = v6;
    }

    else
    {
      v7 = v5;
    }

    return minimumPaneSize * v7;
  }

  return minimumPaneSize;
}

@end