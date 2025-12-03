@interface WGWidgetWrapperView
- (CGSize)intrinsicContentSize;
- (WGWidgetWrapperView)initWithPlatterView:(id)view;
- (void)layoutSubviews;
- (void)setOverrideIntrinsicContentHeight:(double)height;
- (void)setTopMarginForLayout:(double)layout;
@end

@implementation WGWidgetWrapperView

- (WGWidgetWrapperView)initWithPlatterView:(id)view
{
  viewCopy = view;
  v11.receiver = self;
  v11.super_class = WGWidgetWrapperView;
  v6 = [(WGWidgetWrapperView *)&v11 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277D75D18]);
    contentView = v6->_contentView;
    v6->_contentView = v7;

    [(UIView *)v6->_contentView setClipsToBounds:0];
    [(UIView *)v6->_contentView setAutoresizingMask:18];
    layer = [(UIView *)v6->_contentView layer];
    [layer setAllowsGroupOpacity:1];

    [(WGWidgetWrapperView *)v6 addSubview:v6->_contentView];
    objc_storeStrong(&v6->_platterView, view);
    [(UIView *)v6->_contentView addSubview:v6->_platterView];
    v6->_overrideIntrinsicContentHeight = -1.0;
  }

  return v6;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = WGWidgetWrapperView;
  [(WGWidgetWrapperView *)&v4 layoutSubviews];
  platterView = self->_platterView;
  [(UIView *)self->_contentView bounds];
  [(WGWidgetPlatterView *)platterView setFrame:?];
  [(WGWidgetPlatterView *)self->_platterView setTopMarginForLayout:self->_topMarginForLayout];
}

- (void)setTopMarginForLayout:(double)layout
{
  if (vabdd_f64(self->_topMarginForLayout, layout) >= 2.22044605e-16)
  {
    self->_topMarginForLayout = layout;
    [(WGWidgetWrapperView *)self setNeedsLayout];
  }
}

- (void)setOverrideIntrinsicContentHeight:(double)height
{
  if (vabdd_f64(self->_overrideIntrinsicContentHeight, height) >= 2.22044605e-16)
  {
    self->_overrideIntrinsicContentHeight = height;
    [(WGWidgetWrapperView *)self invalidateIntrinsicContentSize];
  }
}

- (CGSize)intrinsicContentSize
{
  if (self->_overrideIntrinsicContentHeight <= 0.0)
  {
    platterView = self->_platterView;
    [(WGWidgetWrapperView *)self bounds];
    Width = CGRectGetWidth(v10);

    [(WGWidgetPlatterView *)platterView sizeThatFits:Width, 1.79769313e308];
  }

  else
  {
    [(WGWidgetWrapperView *)self bounds];
    v3 = CGRectGetWidth(v9);
    overrideIntrinsicContentHeight = self->_overrideIntrinsicContentHeight;
  }

  result.height = overrideIntrinsicContentHeight;
  result.width = v3;
  return result;
}

@end