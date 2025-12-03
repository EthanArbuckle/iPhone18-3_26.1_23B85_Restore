@interface _UIPageIndicatorProgressView
- (_UIPageIndicatorProgressView)initWithCoder:(id)coder;
- (_UIPageIndicatorProgressView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)prepare;
@end

@implementation _UIPageIndicatorProgressView

- (_UIPageIndicatorProgressView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = _UIPageIndicatorProgressView;
  v3 = [(UIView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(_UIPageIndicatorProgressView *)v3 prepare];
  }

  return v4;
}

- (_UIPageIndicatorProgressView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = _UIPageIndicatorProgressView;
  v3 = [(UIView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(_UIPageIndicatorProgressView *)v3 prepare];
  }

  return v4;
}

- (void)prepare
{
  [(UIView *)self setClipsToBounds:1];
  layer = [(UIView *)self layer];
  [layer setAllowsEdgeAntialiasing:1];

  v4 = [UIView alloc];
  v5 = *MEMORY[0x1E695F058];
  v6 = *(MEMORY[0x1E695F058] + 8);
  v7 = *(MEMORY[0x1E695F058] + 16);
  v8 = *(MEMORY[0x1E695F058] + 24);
  v9 = [(UIView *)v4 initWithFrame:*MEMORY[0x1E695F058], v6, v7, v8];
  backgroundView = self->_backgroundView;
  self->_backgroundView = v9;

  [(UIView *)self addSubview:self->_backgroundView];
  v11 = [[UIView alloc] initWithFrame:v5, v6, v7, v8];
  filledView = self->_filledView;
  self->_filledView = v11;

  layer2 = [(UIView *)self->_filledView layer];
  [layer2 setAllowsEdgeAntialiasing:1];

  v14 = self->_filledView;

  [(UIView *)self addSubview:v14];
}

- (void)layoutSubviews
{
  v48.receiver = self;
  v48.super_class = _UIPageIndicatorProgressView;
  [(UIView *)&v48 layoutSubviews];
  [(UIView *)self bounds];
  v4 = v3;
  [(UIView *)self bounds];
  v6 = fmin(v4, v5) * 0.5;
  [(UIView *)self _setContinuousCornerRadius:v6];
  filledView = [(_UIPageIndicatorProgressView *)self filledView];
  [filledView _setContinuousCornerRadius:v6];

  [(UIView *)self bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  backgroundView = [(_UIPageIndicatorProgressView *)self backgroundView];
  [backgroundView setFrame:{v9, v11, v13, v15}];

  indicatorView = [(_UIPageIndicatorProgressView *)self indicatorView];
  direction = [indicatorView direction];

  indicatorView2 = [(_UIPageIndicatorProgressView *)self indicatorView];
  _transitionDirection = [indicatorView2 _transitionDirection];

  indicatorView3 = [(_UIPageIndicatorProgressView *)self indicatorView];
  [indicatorView3 currentProgress];
  v23 = v22;

  indicatorView4 = [(_UIPageIndicatorProgressView *)self indicatorView];
  [indicatorView4 _adjustedDefaultModeSize];
  v26 = v25;
  v28 = v27;

  indicatorView5 = [(_UIPageIndicatorProgressView *)self indicatorView];
  [indicatorView5 _adjustedExpandedModeSize];
  v31 = v30;
  v33 = v32;

  v35 = *MEMORY[0x1E695EFF8];
  v34 = *(MEMORY[0x1E695EFF8] + 8);
  indicatorView6 = [(_UIPageIndicatorProgressView *)self indicatorView];
  direction2 = [indicatorView6 direction];

  v38 = (1.0 - v23) * v26 + v31 * v23;
  if (direction2 <= 1)
  {
    v39 = v33;
  }

  else
  {
    v39 = (1.0 - v23) * v28 + v33 * v23;
  }

  if (direction2 <= 1)
  {
    v40 = v38;
  }

  else
  {
    v40 = v31;
  }

  if (direction > 1)
  {
    if (direction == 2)
    {
      if (_transitionDirection == 1)
      {
        [(UIView *)self bounds];
        Height = CGRectGetHeight(v53);
        v54.origin.x = v35;
        v54.origin.y = v34;
        v54.size.width = v31;
        v54.size.height = v33;
        v34 = Height - CGRectGetHeight(v54);
      }
    }

    else if (direction == 3)
    {
      if (_transitionDirection == 1)
      {
        v50.origin.x = v35;
        v50.origin.y = v34;
        v50.size.width = v31;
        v50.size.height = v33;
        MaxY = CGRectGetHeight(v50);
      }

      else
      {
        [(UIView *)self bounds];
        MaxY = CGRectGetMaxY(v57);
      }

      v46 = MaxY;
      v58.origin.x = v35;
      v58.origin.y = v34;
      v58.size.width = v40;
      v58.size.height = v39;
      v34 = v46 - CGRectGetHeight(v58);
    }
  }

  else if (direction)
  {
    if (direction == 1)
    {
      if (_transitionDirection == 1)
      {
        v49.origin.x = v35;
        v49.origin.y = v34;
        v49.size.width = v31;
        v49.size.height = v33;
        Width = CGRectGetWidth(v49);
      }

      else
      {
        [(UIView *)self bounds];
        Width = CGRectGetMaxX(v55);
      }

      v45 = Width;
      v56.origin.x = v35;
      v56.origin.y = v34;
      v56.size.width = v40;
      v56.size.height = v39;
      v35 = v45 - CGRectGetWidth(v56);
    }
  }

  else if (_transitionDirection == 1)
  {
    [(UIView *)self bounds];
    v43 = CGRectGetWidth(v51);
    v52.origin.x = v35;
    v52.origin.y = v34;
    v52.size.width = v31;
    v52.size.height = v33;
    v35 = v43 - CGRectGetWidth(v52);
  }

  filledView2 = [(_UIPageIndicatorProgressView *)self filledView];
  [filledView2 setFrame:{v35, v34, v40, v39}];
}

@end