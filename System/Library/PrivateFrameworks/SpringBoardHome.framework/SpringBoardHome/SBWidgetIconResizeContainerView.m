@interface SBWidgetIconResizeContainerView
- (CGSize)contentSize;
- (SBWidgetIconResizeContainerView)initWithBlurRadius:(double)a3;
- (void)layoutSubviews;
- (void)setContentView:(id)a3;
@end

@implementation SBWidgetIconResizeContainerView

- (SBWidgetIconResizeContainerView)initWithBlurRadius:(double)a3
{
  v9.receiver = self;
  v9.super_class = SBWidgetIconResizeContainerView;
  v4 = [(SBWidgetIconResizeContainerView *)&v9 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v4)
  {
    v5 = [[SBWidgetIconResizeBackdropView alloc] initWithBlurRadius:a3];
    blurView = v4->_blurView;
    v4->_blurView = v5;

    [(SBWidgetIconResizeContainerView *)v4 addSubview:v4->_blurView];
    v7 = [(SBWidgetIconResizeContainerView *)v4 layer];
    [v7 setAllowsGroupOpacity:1];
  }

  return v4;
}

- (void)setContentView:(id)a3
{
  v5 = a3;
  contentView = self->_contentView;
  if (contentView != v5)
  {
    v10 = v5;
    if (contentView && [(UIView *)contentView isDescendantOfView:self])
    {
      [(UIView *)self->_contentView removeFromSuperview];
    }

    objc_storeStrong(&self->_contentView, a3);
    v5 = v10;
    if (v10)
    {
      [(SBWidgetIconResizeContainerView *)self insertSubview:v10 atIndex:0];
      p_contentSize = &self->_contentSize;
      contentView = [(UIView *)v10 bounds];
      v5 = v10;
      p_contentSize->width = v8;
      p_contentSize->height = v9;
    }
  }

  MEMORY[0x1EEE66BB8](contentView, v5);
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
  v13 = [(SBWidgetIconResizeContainerView *)self contentView];
  if (v13)
  {
    [(SBWidgetIconResizeContainerView *)self sendSubviewToBack:v13];
    [(SBWidgetIconResizeContainerView *)self contentSize];
    v18 = v14;
    v19 = v7;
    v16 = v15;
    [v13 setCenter:{v10, v12}];
    CGAffineTransformMakeScale(&v20, v19 / v16, v8 / v18);
    [v13 setTransform:&v20];
  }

  v17 = [(SBWidgetIconResizeContainerView *)self blurView];
  [v17 setCenter:{v10, v12}];
  [v17 setBounds:{x, y, width, height}];
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