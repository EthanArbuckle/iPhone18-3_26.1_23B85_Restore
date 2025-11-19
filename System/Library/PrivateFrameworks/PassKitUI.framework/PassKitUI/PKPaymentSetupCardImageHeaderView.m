@interface PKPaymentSetupCardImageHeaderView
- (CGSize)_imageSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKPaymentSetupCardImageHeaderView)initWithFrame:(CGRect)a3;
- (double)_leadingPadding;
- (void)_createSubviews;
- (void)configureWithUIImage:(id)a3 title:(id)a4 subtitle:(id)a5;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation PKPaymentSetupCardImageHeaderView

- (PKPaymentSetupCardImageHeaderView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = PKPaymentSetupCardImageHeaderView;
  v3 = [(PKPaymentSetupCardImageHeaderView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(PKPaymentSetupCardImageHeaderView *)v3 _createSubviews];
  }

  return v4;
}

- (void)configureWithUIImage:(id)a3 title:(id)a4 subtitle:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  image = self->_image;
  self->_image = v8;
  v12 = v8;

  title = self->_title;
  self->_title = v9;
  v14 = v9;

  subtitle = self->_subtitle;
  self->_subtitle = v10;
  v16 = v10;

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

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
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

  v17 = [(UIImageView *)self->_passView layer];
  [v17 setShadowRadius:12.0];
  v8 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.15];
  [v17 setShadowColor:{objc_msgSend(v8, "CGColor")}];

  [v17 setShadowOffset:{0.0, 12.0}];
  LODWORD(v9) = 1.0;
  [v17 setShadowOpacity:v9];
  [v17 setMasksToBounds:0];
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
  v2 = [MEMORY[0x1E69DCC28] valueCellConfiguration];
  [v2 directionalLayoutMargins];
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