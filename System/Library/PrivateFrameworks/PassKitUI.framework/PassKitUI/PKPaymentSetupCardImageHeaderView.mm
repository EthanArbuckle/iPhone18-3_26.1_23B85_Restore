@interface PKPaymentSetupCardImageHeaderView
- (CGSize)_imageSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKPaymentSetupCardImageHeaderView)initWithFrame:(CGRect)frame;
- (double)_leadingPadding;
- (void)_createSubviews;
- (void)configureWithUIImage:(id)image title:(id)title subtitle:(id)subtitle;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation PKPaymentSetupCardImageHeaderView

- (PKPaymentSetupCardImageHeaderView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = PKPaymentSetupCardImageHeaderView;
  v3 = [(PKPaymentSetupCardImageHeaderView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(PKPaymentSetupCardImageHeaderView *)v3 _createSubviews];
  }

  return v4;
}

- (void)configureWithUIImage:(id)image title:(id)title subtitle:(id)subtitle
{
  imageCopy = image;
  titleCopy = title;
  subtitleCopy = subtitle;
  image = self->_image;
  self->_image = imageCopy;
  v12 = imageCopy;

  title = self->_title;
  self->_title = titleCopy;
  v14 = titleCopy;

  subtitle = self->_subtitle;
  self->_subtitle = subtitleCopy;
  v16 = subtitleCopy;

  [(UILabel *)self->_titleLabel setText:self->_title];
  [(UILabel *)self->_subtitleLabel setText:self->_subtitle];
  [(UIImageView *)self->_passView setImage:self->_image];

  [(PKPaymentSetupCardImageHeaderView *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v28.receiver = self;
  v28.super_class = PKPaymentSetupCardImageHeaderView;
  [(PKPaymentSetupCardImageHeaderView *)&v28 layoutSubviews];
  [(PKPaymentSetupCardImageHeaderView *)self bounds];
  v4 = v3;
  v6 = v5;
  v27 = v5;
  [(PKPaymentSetupCardImageHeaderView *)self _leadingPadding];
  v8 = v7;
  v9 = v4 + v7 * -2.0;
  [(PKPaymentSetupCardImageHeaderView *)self _imageSize];
  v11 = v10;
  v13 = v12;
  v14 = v8 + v9 * 0.5;
  v15 = v14 - v10 * 0.5;
  [(UIImageView *)self->_passView setFrame:v15, 20.0, v10, v12];
  [(UILabel *)self->_titleLabel sizeThatFits:v9, v6];
  v17 = v16;
  v19 = v18;
  v20 = v14 - v16 * 0.5;
  v29.origin.y = 20.0;
  v29.origin.x = v15;
  v29.size.width = v11;
  v29.size.height = v13;
  v21 = CGRectGetMaxY(v29) + 20.0;
  [(UILabel *)self->_titleLabel setFrame:v20, v21, v17, v19];
  [(UILabel *)self->_subtitleLabel sizeThatFits:v9, v27];
  v23 = v22;
  v25 = v24;
  v26 = v14 - v22 * 0.5;
  v30.origin.x = v20;
  v30.origin.y = v21;
  v30.size.width = v17;
  v30.size.height = v19;
  [(UILabel *)self->_subtitleLabel setFrame:v26, CGRectGetMaxY(v30) + 15.0, v23, v25];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  [(PKPaymentSetupCardImageHeaderView *)self _leadingPadding];
  v7 = width + v6 * -2.0;
  [(PKPaymentSetupCardImageHeaderView *)self _imageSize];
  v9 = v8 + 20.0 + 20.0;
  [(UILabel *)self->_titleLabel sizeThatFits:v7, height];
  v11 = v9 + v10 + 15.0;
  [(UILabel *)self->_subtitleLabel sizeThatFits:v7, height];
  v13 = v11 + v12 + 40.0;
  v14 = v7;
  result.height = v13;
  result.width = v14;
  return result;
}

- (void)_createSubviews
{
  v3 = objc_alloc(MEMORY[0x1E69DCAE0]);
  image = self->_image;
  v5 = image;
  if (!image)
  {
    v5 = PKUIImageNamed(@"PlaceholderCardArt_Large");
  }

  v6 = [v3 initWithImage:v5];
  passView = self->_passView;
  self->_passView = v6;

  if (!image)
  {
  }

  layer = [(UIImageView *)self->_passView layer];
  [layer setShadowRadius:12.0];
  v8 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.15];
  [layer setShadowColor:{objc_msgSend(v8, "CGColor")}];

  [layer setShadowOffset:{0.0, 12.0}];
  LODWORD(v9) = 1.0;
  [layer setShadowOpacity:v9];
  [layer setMasksToBounds:0];
  [(PKPaymentSetupCardImageHeaderView *)self _imageSize];
  v10 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.1];
  [v10 CGColor];
  PKPaymentStyleApplyCorners();

  [(UIImageView *)self->_passView setAccessibilityIgnoresInvertColors:1];
  [(PKPaymentSetupCardImageHeaderView *)self addSubview:self->_passView];
  v11 = PKFontForDefaultDesign(*MEMORY[0x1E69DDDB0], *MEMORY[0x1E69DDC38], 2, 0);
  v12 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  titleLabel = self->_titleLabel;
  self->_titleLabel = v12;

  [(UILabel *)self->_titleLabel setFont:v11];
  [(UILabel *)self->_titleLabel setNumberOfLines:0];
  [(UILabel *)self->_titleLabel setTextAlignment:1];
  [(UILabel *)self->_titleLabel setLineBreakMode:0];
  [(PKPaymentSetupCardImageHeaderView *)self addSubview:self->_titleLabel];
  v14 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD80], *MEMORY[0x1E69DDC40]);
  v15 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  subtitleLabel = self->_subtitleLabel;
  self->_subtitleLabel = v15;

  [(UILabel *)self->_subtitleLabel setFont:v14];
  [(UILabel *)self->_subtitleLabel setNumberOfLines:0];
  [(UILabel *)self->_subtitleLabel setTextAlignment:1];
  [(UILabel *)self->_subtitleLabel setLineBreakMode:0];
  [(PKPaymentSetupCardImageHeaderView *)self addSubview:self->_subtitleLabel];
}

- (double)_leadingPadding
{
  valueCellConfiguration = [MEMORY[0x1E69DCC28] valueCellConfiguration];
  [valueCellConfiguration directionalLayoutMargins];
  v4 = v3;

  return v4;
}

- (CGSize)_imageSize
{
  v2 = PKUIGetMinScreenWidthType();
  v3 = dbl_1BE1159E0[v2 < 5];
  v4 = dbl_1BE1159F0[v2 < 5];
  if (!v2)
  {
    v4 = 81.0;
    v3 = 51.0;
  }

  result.height = v3;
  result.width = v4;
  return result;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = PKPaymentSetupCardImageHeaderView;
  [(PKPaymentSetupCardImageHeaderView *)&v3 prepareForReuse];
  [(UIImageView *)self->_passView setImage:0];
  [(UILabel *)self->_titleLabel setText:0];
  [(UILabel *)self->_subtitleLabel setText:0];
}

@end