@interface VUICollectionViewWrapperCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setChildView:(id)view;
@end

@implementation VUICollectionViewWrapperCell

- (void)setChildView:(id)view
{
  viewCopy = view;
  childView = self->_childView;
  if (childView != viewCopy)
  {
    v8 = viewCopy;
    [(UIView *)childView removeFromSuperview];
    objc_storeStrong(&self->_childView, view);
    if (self->_childView)
    {
      contentView = [(VUICollectionViewWrapperCell *)self contentView];
      [contentView addSubview:self->_childView];
    }

    [(VUICollectionViewWrapperCell *)self setNeedsLayout];
    viewCopy = v8;
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  childView = self->_childView;
  if (childView)
  {
    [(UIView *)childView sizeThatFits:fits.width, fits.height];
  }

  else
  {
    v4 = *MEMORY[0x1E695F060];
    v5 = *(MEMORY[0x1E695F060] + 8);
  }

  result.height = v5;
  result.width = v4;
  return result;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = VUICollectionViewWrapperCell;
  [(VUICollectionViewWrapperCell *)&v5 layoutSubviews];
  childView = self->_childView;
  contentView = [(VUICollectionViewWrapperCell *)self contentView];
  [contentView bounds];
  [(UIView *)childView setFrame:?];
}

- (void)prepareForReuse
{
  v6.receiver = self;
  v6.super_class = VUICollectionViewWrapperCell;
  [(VUICollectionViewWrapperCell *)&v6 prepareForReuse];
  contentView = [(VUICollectionViewWrapperCell *)self contentView];
  subviews = [contentView subviews];
  [subviews makeObjectsPerformSelector:sel_removeFromSuperview];

  childView = self->_childView;
  self->_childView = 0;
}

@end