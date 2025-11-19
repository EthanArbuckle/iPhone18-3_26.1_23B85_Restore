@interface SearchUILayoutFooterView
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (void)layoutSubviews;
- (void)setFooterView:(id)a3;
@end

@implementation SearchUILayoutFooterView

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  width = a3.width;
  v6 = [(SearchUILayoutFooterView *)self footerView:a3.width];
  [v6 systemLayoutSizeFittingSize:{width, 0.0}];
  v8 = v7;

  v9 = width;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)setFooterView:(id)a3
{
  v5 = a3;
  footerView = self->_footerView;
  if (footerView != v5)
  {
    v7 = v5;
    [(UIView *)footerView removeFromSuperview];
    [(SearchUILayoutFooterView *)self addSubview:v7];
    objc_storeStrong(&self->_footerView, a3);
  }

  MEMORY[0x1EEE66BB8]();
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = SearchUILayoutFooterView;
  [(SearchUILayoutFooterView *)&v12 layoutSubviews];
  [(SearchUILayoutFooterView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(SearchUILayoutFooterView *)self footerView];
  [v11 setFrame:{v4, v6, v8, v10}];
}

@end