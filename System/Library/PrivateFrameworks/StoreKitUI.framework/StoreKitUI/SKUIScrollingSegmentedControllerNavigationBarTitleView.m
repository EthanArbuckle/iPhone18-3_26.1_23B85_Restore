@interface SKUIScrollingSegmentedControllerNavigationBarTitleView
+ (UIEdgeInsets)defaultLayoutMargins;
- (CGSize)sizeThatFits:(CGSize)a3;
- (SKUIScrollingSegmentedControllerNavigationBarTitleView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setLayoutStyle:(int64_t)a3;
- (void)setSegmentedControl:(id)a3;
@end

@implementation SKUIScrollingSegmentedControllerNavigationBarTitleView

- (SKUIScrollingSegmentedControllerNavigationBarTitleView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIScrollingSegmentedControllerNavigationBarTitleView initWithFrame:];
  }

  v11.receiver = self;
  v11.super_class = SKUIScrollingSegmentedControllerNavigationBarTitleView;
  v8 = [(SKUIScrollingSegmentedControllerNavigationBarTitleView *)&v11 initWithFrame:x, y, width, height];
  v9 = v8;
  if (v8)
  {
    v8->_segmentedControlMinimumHeight = 29.0;
    [objc_opt_class() defaultLayoutMargins];
    [(SKUIScrollingSegmentedControllerNavigationBarTitleView *)v9 setLayoutMargins:?];
  }

  return v9;
}

- (void)layoutSubviews
{
  v28.receiver = self;
  v28.super_class = SKUIScrollingSegmentedControllerNavigationBarTitleView;
  [(SKUIScrollingSegmentedControllerNavigationBarTitleView *)&v28 layoutSubviews];
  if (self->_segmentedControl)
  {
    v3 = [(SKUIScrollingSegmentedControllerNavigationBarTitleView *)self traitCollection];
    [v3 displayScale];
    v5 = v4;

    if (v5 <= 0.00000011920929)
    {
      v6 = [MEMORY[0x277D759A0] mainScreen];
      [v6 scale];
      v5 = v7;
    }

    [(SKUIScrollingSegmentedControllerNavigationBarTitleView *)self bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    [(SKUIScrollingSegmentedControllerNavigationBarTitleView *)self layoutMargins];
    v17 = v16;
    v19 = v9 + v18;
    v21 = v11 + v20;
    v23 = v13 - (v18 + v22);
    v24 = v15 - (v20 + v17);
    if (self->_layoutStyle != 1)
    {
      [(SKUIInteractiveSegmentedControl *)self->_segmentedControl sizeThatFits:v23, v24];
      v27 = v5;
      UIRectCenteredXInRectScale();
      v19 = v25;
      v21 = v26;
    }

    [(SKUIInteractiveSegmentedControl *)self->_segmentedControl setFrame:v19, v21, v23, v24, *&v27];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(SKUIInteractiveSegmentedControl *)self->_segmentedControl sizeThatFits:1.79769313e308, self->_segmentedControlMinimumHeight];
  v5 = v4;
  v7 = v6;
  [(SKUIScrollingSegmentedControllerNavigationBarTitleView *)self layoutMargins];
  v10 = v5 + v8 + v9;
  v13 = v7 + v11 + v12;
  v14 = v10;
  result.height = v13;
  result.width = v14;
  return result;
}

+ (UIEdgeInsets)defaultLayoutMargins
{
  v2 = 4.0;
  v3 = 8.0;
  v4 = 4.0;
  v5 = 8.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)setSegmentedControl:(id)a3
{
  v5 = a3;
  segmentedControl = self->_segmentedControl;
  if (segmentedControl != v5)
  {
    v8 = v5;
    v7 = [(SKUIInteractiveSegmentedControl *)segmentedControl superview];

    if (v7 == self)
    {
      [(SKUIInteractiveSegmentedControl *)self->_segmentedControl removeFromSuperview];
    }

    objc_storeStrong(&self->_segmentedControl, a3);
    segmentedControl = [(SKUIScrollingSegmentedControllerNavigationBarTitleView *)self addSubview:self->_segmentedControl];
    v5 = v8;
  }

  MEMORY[0x2821F96F8](segmentedControl, v5);
}

- (void)setLayoutStyle:(int64_t)a3
{
  if (self->_layoutStyle != a3)
  {
    self->_layoutStyle = a3;
    [(SKUIScrollingSegmentedControllerNavigationBarTitleView *)self setNeedsLayout];
  }
}

- (void)initWithFrame:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIScrollingSegmentedControllerNavigationBarTitleView initWithFrame:]";
}

@end