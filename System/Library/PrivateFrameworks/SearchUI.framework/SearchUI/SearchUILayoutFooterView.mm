@interface SearchUILayoutFooterView
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (void)layoutSubviews;
- (void)setFooterView:(id)view;
@end

@implementation SearchUILayoutFooterView

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  width = size.width;
  v6 = [(SearchUILayoutFooterView *)self footerView:size.width];
  [v6 systemLayoutSizeFittingSize:{width, 0.0}];
  v8 = v7;

  v9 = width;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)setFooterView:(id)view
{
  viewCopy = view;
  footerView = self->_footerView;
  if (footerView != viewCopy)
  {
    v7 = viewCopy;
    [(UIView *)footerView removeFromSuperview];
    [(SearchUILayoutFooterView *)self addSubview:v7];
    objc_storeStrong(&self->_footerView, view);
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
  footerView = [(SearchUILayoutFooterView *)self footerView];
  [footerView setFrame:{v4, v6, v8, v10}];
}

@end