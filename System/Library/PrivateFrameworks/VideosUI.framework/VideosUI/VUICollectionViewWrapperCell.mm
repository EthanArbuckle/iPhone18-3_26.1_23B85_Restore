@interface VUICollectionViewWrapperCell
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setChildView:(id)a3;
@end

@implementation VUICollectionViewWrapperCell

- (void)setChildView:(id)a3
{
  v5 = a3;
  childView = self->_childView;
  if (childView != v5)
  {
    v8 = v5;
    [(UIView *)childView removeFromSuperview];
    objc_storeStrong(&self->_childView, a3);
    if (self->_childView)
    {
      v7 = [(VUICollectionViewWrapperCell *)self contentView];
      [v7 addSubview:self->_childView];
    }

    [(VUICollectionViewWrapperCell *)self setNeedsLayout];
    v5 = v8;
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  childView = self->_childView;
  if (childView)
  {
    [(UIView *)childView sizeThatFits:a3.width, a3.height];
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
  v4 = [(VUICollectionViewWrapperCell *)self contentView];
  [v4 bounds];
  [(UIView *)childView setFrame:?];
}

- (void)prepareForReuse
{
  v6.receiver = self;
  v6.super_class = VUICollectionViewWrapperCell;
  [(VUICollectionViewWrapperCell *)&v6 prepareForReuse];
  v3 = [(VUICollectionViewWrapperCell *)self contentView];
  v4 = [v3 subviews];
  [v4 makeObjectsPerformSelector:sel_removeFromSuperview];

  childView = self->_childView;
  self->_childView = 0;
}

@end