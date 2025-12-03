@interface SBWidgetIconResizeContainerView
- (CGSize)contentSize;
- (SBWidgetIconResizeContainerView)initWithBlurRadius:(double)radius;
- (void)layoutSubviews;
- (void)setContentView:(id)view;
@end

@implementation SBWidgetIconResizeContainerView

- (SBWidgetIconResizeContainerView)initWithBlurRadius:(double)radius
{
  v9.receiver = self;
  v9.super_class = SBWidgetIconResizeContainerView;
  v4 = [(SBWidgetIconResizeContainerView *)&v9 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v4)
  {
    v5 = [[SBWidgetIconResizeBackdropView alloc] initWithBlurRadius:radius];
    blurView = v4->_blurView;
    v4->_blurView = v5;

    [(SBWidgetIconResizeContainerView *)v4 addSubview:v4->_blurView];
    layer = [(SBWidgetIconResizeContainerView *)v4 layer];
    [layer setAllowsGroupOpacity:1];
  }

  return v4;
}

- (void)setContentView:(id)view
{
  viewCopy = view;
  contentView = self->_contentView;
  if (contentView != viewCopy)
  {
    v10 = viewCopy;
    if (contentView && [(UIView *)contentView isDescendantOfView:self])
    {
      [(UIView *)self->_contentView removeFromSuperview];
    }

    objc_storeStrong(&self->_contentView, view);
    viewCopy = v10;
    if (v10)
    {
      [(SBWidgetIconResizeContainerView *)self insertSubview:v10 atIndex:0];
      p_contentSize = &self->_contentSize;
      contentView = [(UIView *)v10 bounds];
      viewCopy = v10;
      p_contentSize->width = v8;
      p_contentSize->height = v9;
    }
  }

  MEMORY[0x1EEE66BB8](contentView, viewCopy);
}

- (void)layoutSubviews
{
  [(SBWidgetIconResizeContainerView *)self bounds];
  x = v21.origin.x;
  y = v21.origin.y;
  width = v21.size.width;
  height = v21.size.height;
  v7 = CGRectGetWidth(v21);
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  v8 = CGRectGetHeight(v22);
  UIRectGetCenter();
  v10 = v9;
  v12 = v11;
  contentView = [(SBWidgetIconResizeContainerView *)self contentView];
  if (contentView)
  {
    [(SBWidgetIconResizeContainerView *)self sendSubviewToBack:contentView];
    [(SBWidgetIconResizeContainerView *)self contentSize];
    v18 = v14;
    v19 = v7;
    v16 = v15;
    [contentView setCenter:{v10, v12}];
    CGAffineTransformMakeScale(&v20, v19 / v16, v8 / v18);
    [contentView setTransform:&v20];
  }

  blurView = [(SBWidgetIconResizeContainerView *)self blurView];
  [blurView setCenter:{v10, v12}];
  [blurView setBounds:{x, y, width, height}];
}

- (CGSize)contentSize
{
  width = self->_contentSize.width;
  height = self->_contentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end