@interface _UICollectionTableIndexOverlaySelectionViewCollectionViewCell
- (_UICollectionTableIndexOverlaySelectionViewCollectionViewCell)initWithFrame:(CGRect)frame;
- (int64_t)textAlignment;
- (void)applyLayoutAttributes:(id)attributes;
- (void)layoutSubviews;
- (void)setRightMargin:(double)margin;
- (void)setTextAlignment:(int64_t)alignment;
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
  button = [(_UICollectionTableIndexOverlaySelectionViewCollectionViewCell *)self button];
  tintColor = [(UIView *)self tintColor];
  [button setTitleColor:tintColor forState:0];

  button2 = [(_UICollectionTableIndexOverlaySelectionViewCollectionViewCell *)self button];
  tintColor2 = [(UIView *)self tintColor];
  v7 = [tintColor2 colorWithAlphaComponent:0.5];
  [button2 setTitleColor:v7 forState:1];
}

- (_UICollectionTableIndexOverlaySelectionViewCollectionViewCell)initWithFrame:(CGRect)frame
{
  v11.receiver = self;
  v11.super_class = _UICollectionTableIndexOverlaySelectionViewCollectionViewCell;
  v3 = [(UICollectionViewCell *)&v11 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [UIButton buttonWithType:0];
    button = v3->_button;
    v3->_button = v4;

    v6 = v3->_button;
    [(UIView *)v3 bounds];
    [(UIButton *)v6 setFrame:?];
    titleLabel = [(UIButton *)v3->_button titleLabel];
    v8 = [off_1E70ECC18 systemFontOfSize:16.0];
    [titleLabel setFont:v8];

    titleLabel2 = [(UIButton *)v3->_button titleLabel];
    [titleLabel2 setTextAlignment:1];

    [(UIView *)v3 addSubview:v3->_button];
    v3->_rightMarginAdjusted = 0;
  }

  return v3;
}

- (void)applyLayoutAttributes:(id)attributes
{
  v7.receiver = self;
  v7.super_class = _UICollectionTableIndexOverlaySelectionViewCollectionViewCell;
  attributesCopy = attributes;
  [(UICollectionReusableView *)&v7 applyLayoutAttributes:attributesCopy];
  [attributesCopy rightMargin];
  v6 = v5;

  [(_UICollectionTableIndexOverlaySelectionViewCollectionViewCell *)self setRightMargin:v6];
}

- (void)setTextAlignment:(int64_t)alignment
{
  titleLabel = [(UIButton *)self->_button titleLabel];
  [titleLabel setTextAlignment:alignment];
}

- (int64_t)textAlignment
{
  titleLabel = [(UIButton *)self->_button titleLabel];
  textAlignment = [titleLabel textAlignment];

  return textAlignment;
}

- (void)setRightMargin:(double)margin
{
  if (margin != 0.0)
  {
    self->_rightMarginAdjusted = 1;
    self->_rightMargin = margin;
    [(UIView *)self setNeedsLayout];
  }
}

@end