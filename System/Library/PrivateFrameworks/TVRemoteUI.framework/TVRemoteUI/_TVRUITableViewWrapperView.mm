@interface _TVRUITableViewWrapperView
- (CGRect)collapsedGlassBackgroundFrame;
- (_TVRUITableViewWrapperView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setIsExpanded:(BOOL)expanded;
- (void)setShowsGlassBackground:(BOOL)background;
@end

@implementation _TVRUITableViewWrapperView

- (_TVRUITableViewWrapperView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = _TVRUITableViewWrapperView;
  v3 = [(_TVRUITableViewWrapperView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(_TVRUITableViewWrapperView *)v3 _configureHierarchy];
  }

  return v4;
}

- (void)setIsExpanded:(BOOL)expanded
{
  self->_isExpanded = expanded;
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

  glassBackground = [(_TVRUITableViewWrapperView *)self glassBackground];
  v37 = v13;
  [glassBackground setFrame:{v14, v13, v12, v11}];

  v26 = 24.0;
  if (![(_TVRUITableViewWrapperView *)self isExpanded])
  {
    v41.origin.x = v4;
    v41.origin.y = v6;
    v41.size.width = v8;
    v41.size.height = v10;
    v26 = CGRectGetHeight(v41) * 0.5;
  }

  glassBackground2 = [(_TVRUITableViewWrapperView *)self glassBackground];
  [glassBackground2 _setContinuousCornerRadius:v26];

  contentViewToMask = [(_TVRUITableViewWrapperView *)self contentViewToMask];

  if (contentViewToMask)
  {
    contentViewToMask2 = [(_TVRUITableViewWrapperView *)self contentViewToMask];
    maskView = [contentViewToMask2 maskView];
    v31 = maskView;
    if (maskView)
    {
      v32 = maskView;
    }

    else
    {
      v32 = objc_alloc_init(MEMORY[0x277D75D18]);
    }

    v33 = v32;

    if ([(_TVRUITableViewWrapperView *)self isExpanded])
    {
      contentViewToMask3 = [(_TVRUITableViewWrapperView *)self contentViewToMask];
      [contentViewToMask3 bounds];
      [v33 setFrame:?];
    }

    else
    {
      [v33 setFrame:{v14, v37, v12, v11}];
    }

    [v33 _setContinuousCornerRadius:v26];
    blackColor = [MEMORY[0x277D75348] blackColor];
    [v33 setBackgroundColor:blackColor];

    contentViewToMask4 = [(_TVRUITableViewWrapperView *)self contentViewToMask];
    [contentViewToMask4 setMaskView:v33];
  }
}

- (void)setShowsGlassBackground:(BOOL)background
{
  backgroundCopy = background;
  self->_showsGlassBackground = background;
  glassBackground = [(_TVRUITableViewWrapperView *)self glassBackground];
  [glassBackground setHidden:!backgroundCopy];
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