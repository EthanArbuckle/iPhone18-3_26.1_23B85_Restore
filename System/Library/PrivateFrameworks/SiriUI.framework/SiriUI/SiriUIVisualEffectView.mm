@interface SiriUIVisualEffectView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size;
- (void)layoutSubviews;
- (void)setCustomView:(id)view;
@end

@implementation SiriUIVisualEffectView

- (void)setCustomView:(id)view
{
  viewCopy = view;
  customView = self->_customView;
  if (customView)
  {
    [(UIView *)customView removeFromSuperview];
  }

  v6 = self->_customView;
  self->_customView = viewCopy;
  v7 = viewCopy;

  v9.receiver = self;
  v9.super_class = SiriUIVisualEffectView;
  contentView = [(SiriUIVisualEffectView *)&v9 contentView];
  [contentView addSubview:v7];

  [(SiriUIVisualEffectView *)self invalidateIntrinsicContentSize];
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = SiriUIVisualEffectView;
  [(SiriUIVisualEffectView *)&v4 layoutSubviews];
  customView = self->_customView;
  [(SiriUIVisualEffectView *)self bounds];
  [(UIView *)customView setFrame:?];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(UIView *)self->_customView sizeThatFits:fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)intrinsicContentSize
{
  [(UIView *)self->_customView intrinsicContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size
{
  [(UIView *)self->_customView systemLayoutSizeFittingSize:size.width, size.height];
  result.height = v4;
  result.width = v3;
  return result;
}

@end