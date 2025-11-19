@interface SCKPMediaControlCardSectionView
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)layoutSubviews;
- (void)setContentView:(id)a3;
@end

@implementation SCKPMediaControlCardSectionView

- (void)layoutSubviews
{
  [(SCKPMediaControlCardSectionView *)self bounds];
  contentView = self->_contentView;

  [(UIView *)contentView setFrame:?];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(UIView *)self->_contentView sizeThatFits:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)setContentView:(id)a3
{
  v5 = a3;
  contentView = self->_contentView;
  if (contentView != v5)
  {
    v7 = v5;
    if (contentView)
    {
      [(UIView *)contentView removeFromSuperview];
    }

    objc_storeStrong(&self->_contentView, a3);
    if (self->_contentView)
    {
      [(SCKPMediaControlCardSectionView *)self addSubview:v7];
    }

    contentView = [(SCKPMediaControlCardSectionView *)self setNeedsLayout];
    v5 = v7;
  }

  MEMORY[0x2821F96F8](contentView, v5);
}

@end