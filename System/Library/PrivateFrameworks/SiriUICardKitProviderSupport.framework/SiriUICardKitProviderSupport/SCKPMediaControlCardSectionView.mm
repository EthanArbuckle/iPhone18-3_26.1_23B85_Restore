@interface SCKPMediaControlCardSectionView
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)layoutSubviews;
- (void)setContentView:(id)view;
@end

@implementation SCKPMediaControlCardSectionView

- (void)layoutSubviews
{
  [(SCKPMediaControlCardSectionView *)self bounds];
  contentView = self->_contentView;

  [(UIView *)contentView setFrame:?];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(UIView *)self->_contentView sizeThatFits:fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)setContentView:(id)view
{
  viewCopy = view;
  contentView = self->_contentView;
  if (contentView != viewCopy)
  {
    v7 = viewCopy;
    if (contentView)
    {
      [(UIView *)contentView removeFromSuperview];
    }

    objc_storeStrong(&self->_contentView, view);
    if (self->_contentView)
    {
      [(SCKPMediaControlCardSectionView *)self addSubview:v7];
    }

    contentView = [(SCKPMediaControlCardSectionView *)self setNeedsLayout];
    viewCopy = v7;
  }

  MEMORY[0x2821F96F8](contentView, viewCopy);
}

@end