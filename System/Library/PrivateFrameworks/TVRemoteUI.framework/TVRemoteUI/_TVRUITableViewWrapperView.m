@interface _TVRUITableViewWrapperView
- (CGRect)collapsedGlassBackgroundFrame;
- (_TVRUITableViewWrapperView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setIsExpanded:(BOOL)a3;
- (void)setShowsGlassBackground:(BOOL)a3;
@end

@implementation _TVRUITableViewWrapperView

- (_TVRUITableViewWrapperView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = _TVRUITableViewWrapperView;
  v3 = [(_TVRUITableViewWrapperView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(_TVRUITableViewWrapperView *)v3 _configureHierarchy];
  }

  return v4;
}

- (void)setIsExpanded:(BOOL)a3
{
  self->_isExpanded = a3;
  [(_TVRUITableViewWrapperView *)self setNeedsLayout];

  [(_TVRUITableViewWrapperView *)self layoutIfNeeded];
}

- (void)layoutSubviews
{
  v38.receiver = self;
  v38.super_class = _TVRUITableViewWrapperView;
  [(_TVRUITableViewWrapperView *)&v38 layoutSubviews];
  [(_TVRUITableViewWrapperView *)self collapsedGlassBackgroundFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = v9;
  v12 = v7;
  v13 = v5;
  v14 = v3;
  if ([(_TVRUITableViewWrapperView *)self isExpanded])
  {
    [(_TVRUITableViewWrapperView *)self bounds];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v39.origin.x = v4;
    v39.origin.y = v6;
    v39.size.width = v8;
    v39.size.height = v10;
    MinY = CGRectGetMinY(v39);
    v40.origin.x = v16;
    v40.origin.y = v18;
    v40.size.width = v20;
    v40.size.height = v22;
    v13 = MinY;
    v12 = CGRectGetWidth(v40) + -50.0;
    [(_TVRUITableViewWrapperView *)self expandedHeight];
    v11 = v24;
    v14 = 25.0;
  }

  v25 = [(_TVRUITableViewWrapperView *)self glassBackground];
  v37 = v13;
  [v25 setFrame:{v14, v13, v12, v11}];

  v26 = 24.0;
  if (![(_TVRUITableViewWrapperView *)self isExpanded])
  {
    v41.origin.x = v4;
    v41.origin.y = v6;
    v41.size.width = v8;
    v41.size.height = v10;
    v26 = CGRectGetHeight(v41) * 0.5;
  }

  v27 = [(_TVRUITableViewWrapperView *)self glassBackground];
  [v27 _setContinuousCornerRadius:v26];

  v28 = [(_TVRUITableViewWrapperView *)self contentViewToMask];

  if (v28)
  {
    v29 = [(_TVRUITableViewWrapperView *)self contentViewToMask];
    v30 = [v29 maskView];
    v31 = v30;
    if (v30)
    {
      v32 = v30;
    }

    else
    {
      v32 = objc_alloc_init(MEMORY[0x277D75D18]);
    }

    v33 = v32;

    if ([(_TVRUITableViewWrapperView *)self isExpanded])
    {
      v34 = [(_TVRUITableViewWrapperView *)self contentViewToMask];
      [v34 bounds];
      [v33 setFrame:?];
    }

    else
    {
      [v33 setFrame:{v14, v37, v12, v11}];
    }

    [v33 _setContinuousCornerRadius:v26];
    v35 = [MEMORY[0x277D75348] blackColor];
    [v33 setBackgroundColor:v35];

    v36 = [(_TVRUITableViewWrapperView *)self contentViewToMask];
    [v36 setMaskView:v33];
  }
}

- (void)setShowsGlassBackground:(BOOL)a3
{
  v3 = a3;
  self->_showsGlassBackground = a3;
  v4 = [(_TVRUITableViewWrapperView *)self glassBackground];
  [v4 setHidden:!v3];
}

- (CGRect)collapsedGlassBackgroundFrame
{
  x = self->_collapsedGlassBackgroundFrame.origin.x;
  y = self->_collapsedGlassBackgroundFrame.origin.y;
  width = self->_collapsedGlassBackgroundFrame.size.width;
  height = self->_collapsedGlassBackgroundFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end