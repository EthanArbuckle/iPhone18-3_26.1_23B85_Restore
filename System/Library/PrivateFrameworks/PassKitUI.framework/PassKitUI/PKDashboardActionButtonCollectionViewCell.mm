@interface PKDashboardActionButtonCollectionViewCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKDashboardActionButtonCollectionViewCell)initWithFrame:(CGRect)frame;
- (id)_textColor;
- (void)_layoutTitleLabel;
- (void)layoutSubviews;
- (void)setTitle:(id)title;
@end

@implementation PKDashboardActionButtonCollectionViewCell

- (PKDashboardActionButtonCollectionViewCell)initWithFrame:(CGRect)frame
{
  v11.receiver = self;
  v11.super_class = PKDashboardActionButtonCollectionViewCell;
  v3 = [(PKDashboardCollectionViewCell *)&v11 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCC10]);
    v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v5;

    v7 = v3->_titleLabel;
    v8 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], 0, *MEMORY[0x1E69DB980]);
    [(UILabel *)v7 setFont:v8];

    [(UILabel *)v3->_titleLabel setNumberOfLines:1];
    [(UILabel *)v3->_titleLabel setTextAlignment:1];
    contentView = [(PKDashboardActionButtonCollectionViewCell *)v3 contentView];
    [contentView addSubview:v3->_titleLabel];
  }

  return v3;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  [(PKDashboardActionButtonCollectionViewCell *)self _contentHeightWithWidth:fits.width + -16.0, fits.height];
  v5 = fmax(v4 + 16.0, 55.0);
  v6 = width;
  result.height = v5;
  result.width = v6;
  return result;
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = PKDashboardActionButtonCollectionViewCell;
  [(PKDashboardCollectionViewCell *)&v12 layoutSubviews];
  contentView = [(PKDashboardActionButtonCollectionViewCell *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(UILabel *)self->_titleLabel setFrame:v5 + 8.0, v7 + 8.0, v9 + -16.0, v11 + -16.0];
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  if ((PKEqualObjects() & 1) == 0)
  {
    v4 = [titleCopy copy];
    title = self->_title;
    self->_title = v4;

    [(PKDashboardActionButtonCollectionViewCell *)self _layoutTitleLabel];
  }
}

- (void)_layoutTitleLabel
{
  [(UILabel *)self->_titleLabel setText:self->_title];
  titleLabel = self->_titleLabel;
  _textColor = [(PKDashboardActionButtonCollectionViewCell *)self _textColor];
  [(UILabel *)titleLabel setTextColor:_textColor];

  [(PKDashboardActionButtonCollectionViewCell *)self setNeedsLayout];
}

- (id)_textColor
{
  if ([(PKDashboardActionButtonCollectionViewCell *)self isUserInteractionEnabled])
  {
    [MEMORY[0x1E69DC888] labelColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] tertiaryLabelColor];
  }
  v2 = ;

  return v2;
}

@end