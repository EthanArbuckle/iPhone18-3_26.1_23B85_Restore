@interface SKUISegmentedTableHeaderView
- (CGSize)sizeThatFits:(CGSize)result;
- (SKUISegmentedTableHeaderView)initWithFrame:(CGRect)a3;
- (id)_borderView;
- (void)layoutSubviews;
- (void)setHidesBorderView:(BOOL)a3;
- (void)setSegmentedControl:(id)a3;
@end

@implementation SKUISegmentedTableHeaderView

- (SKUISegmentedTableHeaderView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUISegmentedTableHeaderView initWithFrame:];
  }

  v12.receiver = self;
  v12.super_class = SKUISegmentedTableHeaderView;
  v8 = [(SKUISegmentedTableHeaderView *)&v12 initWithFrame:x, y, width, height];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x277D75DE8]) initWithPrivateStyle:2010];
    backdropView = v8->_backdropView;
    v8->_backdropView = v9;

    [(SKUISegmentedTableHeaderView *)v8 addSubview:v8->_backdropView];
  }

  return v8;
}

- (void)setHidesBorderView:(BOOL)a3
{
  v3 = a3;
  v4 = [(SKUISegmentedTableHeaderView *)self _borderView];
  [v4 setHidden:v3];
}

- (void)setSegmentedControl:(id)a3
{
  v5 = a3;
  segmentedControl = self->_segmentedControl;
  v7 = v5;
  if (segmentedControl != v5)
  {
    [(UIView *)segmentedControl removeFromSuperview];
    objc_storeStrong(&self->_segmentedControl, a3);
    if (self->_segmentedControl)
    {
      [(SKUISegmentedTableHeaderView *)self addSubview:?];
    }
  }
}

- (void)layoutSubviews
{
  [(SKUISegmentedTableHeaderView *)self bounds];
  v4 = v3;
  v6 = v5;
  [(_UIBackdropView *)self->_backdropView setFrame:?];
  segmentedControl = self->_segmentedControl;
  if (segmentedControl)
  {
    [(UIView *)segmentedControl frame];
    v9 = (v6 - v8) * 0.5;
    [(UIView *)self->_segmentedControl setFrame:15.0, floorf(v9), v4 + -15.0 + -15.0];
  }

  v10 = [MEMORY[0x277D759A0] mainScreen];
  [v10 scale];
  v12 = 1.0 / v11;

  v13 = [(SKUISegmentedTableHeaderView *)self _borderView];
  [v13 setFrame:{0.0, v6 - v12, v4, v12}];
}

- (CGSize)sizeThatFits:(CGSize)result
{
  v3 = 44.0;
  result.height = v3;
  return result;
}

- (id)_borderView
{
  borderView = self->_borderView;
  if (!borderView)
  {
    v4 = objc_alloc_init(MEMORY[0x277D75D18]);
    v5 = self->_borderView;
    self->_borderView = v4;

    v6 = self->_borderView;
    v7 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
    [(UIView *)v6 setBackgroundColor:v7];

    [(SKUISegmentedTableHeaderView *)self addSubview:self->_borderView];
    borderView = self->_borderView;
  }

  return borderView;
}

- (void)initWithFrame:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUISegmentedTableHeaderView initWithFrame:]";
}

@end