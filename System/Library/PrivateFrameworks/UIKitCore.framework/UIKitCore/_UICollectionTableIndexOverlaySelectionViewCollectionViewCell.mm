@interface _UICollectionTableIndexOverlaySelectionViewCollectionViewCell
- (_UICollectionTableIndexOverlaySelectionViewCollectionViewCell)initWithFrame:(CGRect)a3;
- (int64_t)textAlignment;
- (void)applyLayoutAttributes:(id)a3;
- (void)layoutSubviews;
- (void)setRightMargin:(double)a3;
- (void)setTextAlignment:(int64_t)a3;
- (void)tintColorDidChange;
@end

@implementation _UICollectionTableIndexOverlaySelectionViewCollectionViewCell

- (void)layoutSubviews
{
  button = self->_button;
  if (self->_rightMarginAdjusted)
  {
    [(UIView *)self->_button sizeToFit];
    [(UIView *)self->_button bounds];
    v5 = v4;
    v7 = v6;
    [(UIView *)self bounds];
    v10 = v9 + (v8 - v7) * 0.5;
    [(UIView *)self bounds];
    v12 = v11 - v5;
    if (![(UIView *)self _shouldReverseLayoutDirection])
    {
      v12 = v12 - self->_rightMargin;
    }

    v13 = round(v10);
    button = self->_button;
  }

  else
  {
    [(UIView *)self bounds];
    v12 = v14;
    v5 = v15;
    v7 = v16;
  }

  [(UIButton *)button setFrame:v12, v13, v5, v7];
}

- (void)tintColorDidChange
{
  v8.receiver = self;
  v8.super_class = _UICollectionTableIndexOverlaySelectionViewCollectionViewCell;
  [(UIView *)&v8 tintColorDidChange];
  v3 = [(_UICollectionTableIndexOverlaySelectionViewCollectionViewCell *)self button];
  v4 = [(UIView *)self tintColor];
  [v3 setTitleColor:v4 forState:0];

  v5 = [(_UICollectionTableIndexOverlaySelectionViewCollectionViewCell *)self button];
  v6 = [(UIView *)self tintColor];
  v7 = [v6 colorWithAlphaComponent:0.5];
  [v5 setTitleColor:v7 forState:1];
}

- (_UICollectionTableIndexOverlaySelectionViewCollectionViewCell)initWithFrame:(CGRect)a3
{
  v11.receiver = self;
  v11.super_class = _UICollectionTableIndexOverlaySelectionViewCollectionViewCell;
  v3 = [(UICollectionViewCell *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [UIButton buttonWithType:0];
    button = v3->_button;
    v3->_button = v4;

    v6 = v3->_button;
    [(UIView *)v3 bounds];
    [(UIButton *)v6 setFrame:?];
    v7 = [(UIButton *)v3->_button titleLabel];
    v8 = [off_1E70ECC18 systemFontOfSize:16.0];
    [v7 setFont:v8];

    v9 = [(UIButton *)v3->_button titleLabel];
    [v9 setTextAlignment:1];

    [(UIView *)v3 addSubview:v3->_button];
    v3->_rightMarginAdjusted = 0;
  }

  return v3;
}

- (void)applyLayoutAttributes:(id)a3
{
  v7.receiver = self;
  v7.super_class = _UICollectionTableIndexOverlaySelectionViewCollectionViewCell;
  v4 = a3;
  [(UICollectionReusableView *)&v7 applyLayoutAttributes:v4];
  [v4 rightMargin];
  v6 = v5;

  [(_UICollectionTableIndexOverlaySelectionViewCollectionViewCell *)self setRightMargin:v6];
}

- (void)setTextAlignment:(int64_t)a3
{
  v4 = [(UIButton *)self->_button titleLabel];
  [v4 setTextAlignment:a3];
}

- (int64_t)textAlignment
{
  v2 = [(UIButton *)self->_button titleLabel];
  v3 = [v2 textAlignment];

  return v3;
}

- (void)setRightMargin:(double)a3
{
  if (a3 != 0.0)
  {
    self->_rightMarginAdjusted = 1;
    self->_rightMargin = a3;
    [(UIView *)self setNeedsLayout];
  }
}

@end