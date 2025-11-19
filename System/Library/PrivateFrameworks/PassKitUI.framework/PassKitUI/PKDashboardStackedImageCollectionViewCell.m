@interface PKDashboardStackedImageCollectionViewCell
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKDashboardStackedImageCollectionViewCell)initWithFrame:(CGRect)a3;
- (double)_contentHeightWithWidth:(double)a3;
- (void)layoutSubviews;
- (void)setIcon:(id)a3;
- (void)setSubtitle:(id)a3;
- (void)setTertiaryText:(id)a3;
- (void)setTitle:(id)a3;
@end

@implementation PKDashboardStackedImageCollectionViewCell

- (PKDashboardStackedImageCollectionViewCell)initWithFrame:(CGRect)a3
{
  v33.receiver = self;
  v33.super_class = PKDashboardStackedImageCollectionViewCell;
  v3 = [(PKDashboardCollectionViewCell *)&v33 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(PKDashboardStackedImageCollectionViewCell *)v3 contentView];
    v6 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v7 = *MEMORY[0x1E695F058];
    v8 = *(MEMORY[0x1E695F058] + 8);
    v9 = *(MEMORY[0x1E695F058] + 16);
    v10 = *(MEMORY[0x1E695F058] + 24);
    v11 = [v6 initWithFrame:{*MEMORY[0x1E695F058], v8, v9, v10}];
    iconImageView = v4->_iconImageView;
    v4->_iconImageView = v11;

    [(UIImageView *)v4->_iconImageView _setContinuousCornerRadius:8.0];
    [(UIImageView *)v4->_iconImageView setClipsToBounds:1];
    [(UIImageView *)v4->_iconImageView setContentMode:1];
    v13 = [(UIImageView *)v4->_iconImageView layer];
    v14 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    [v13 setBorderColor:{objc_msgSend(v14, "CGColor")}];

    [v13 setBorderWidth:PKUIPixelLength()];
    [v5 addSubview:v4->_iconImageView];
    v15 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v7, v8, v9, v10}];
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v15;

    v17 = v4->_titleLabel;
    v18 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], 0, 2, 0);
    [(UILabel *)v17 setFont:v18];

    [(UILabel *)v4->_titleLabel setNumberOfLines:2];
    [(UILabel *)v4->_titleLabel setTextAlignment:1];
    [v5 addSubview:v4->_titleLabel];
    v19 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v7, v8, v9, v10}];
    subtitleLabel = v4->_subtitleLabel;
    v4->_subtitleLabel = v19;

    v21 = v4->_subtitleLabel;
    v22 = *MEMORY[0x1E69DDD80];
    v23 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD80], 0);
    [(UILabel *)v21 setFont:v23];

    v24 = v4->_subtitleLabel;
    v25 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v24 setTextColor:v25];

    [(UILabel *)v4->_subtitleLabel setNumberOfLines:2];
    [(UILabel *)v4->_subtitleLabel setTextAlignment:1];
    [v5 addSubview:v4->_subtitleLabel];
    v26 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v7, v8, v9, v10}];
    tertiaryLabel = v4->_tertiaryLabel;
    v4->_tertiaryLabel = v26;

    v28 = v4->_tertiaryLabel;
    v29 = PKFontForDefaultDesign(v22, 0);
    [(UILabel *)v28 setFont:v29];

    v30 = v4->_tertiaryLabel;
    v31 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v30 setTextColor:v31];

    [(UILabel *)v4->_tertiaryLabel setNumberOfLines:2];
    [(UILabel *)v4->_tertiaryLabel setTextAlignment:1];
    [v5 addSubview:v4->_tertiaryLabel];
  }

  return v4;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  [(PKDashboardStackedImageCollectionViewCell *)self _contentHeightWithWidth:a3.width + -32.0, a3.height];
  v5 = fmax(v4 + 32.0, 200.0);
  v6 = width;
  result.height = v5;
  result.width = v6;
  return result;
}

- (double)_contentHeightWithWidth:(double)a3
{
  [(UILabel *)self->_titleLabel pkui_sizeThatFits:1 forceWordWrap:a3, 1.79769313e308];
  v6 = v5 + 86.0;
  v7 = [(UILabel *)self->_subtitleLabel text];

  if (v7)
  {
    [(UILabel *)self->_subtitleLabel pkui_sizeThatFits:1 forceWordWrap:a3, 1.79769313e308];
    v6 = v6 + v8 + 3.0;
  }

  v9 = [(UILabel *)self->_tertiaryLabel text];

  if (v9)
  {
    [(UILabel *)self->_tertiaryLabel pkui_sizeThatFits:1 forceWordWrap:a3, 1.79769313e308];
    return v6 + v10 + 3.0;
  }

  return v6;
}

- (void)layoutSubviews
{
  v40.receiver = self;
  v40.super_class = PKDashboardStackedImageCollectionViewCell;
  [(PKDashboardCollectionViewCell *)&v40 layoutSubviews];
  v3 = [(PKDashboardStackedImageCollectionViewCell *)self contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  x = v5 + 16.0;
  y = v7 + 16.0;
  width = v9 + -32.0;
  remainder.origin.x = x;
  remainder.origin.y = y;
  height = v11 + -32.0;
  remainder.size.width = width;
  remainder.size.height = height;
  v41.origin.x = x;
  v41.origin.y = y;
  v41.size.width = width;
  v41.size.height = height;
  [(PKDashboardStackedImageCollectionViewCell *)self _contentHeightWithWidth:CGRectGetWidth(v41), 0, 0];
  v17 = v16;
  v42.origin.x = x;
  v42.origin.y = y;
  v42.size.width = width;
  v42.size.height = height;
  if (v17 < CGRectGetHeight(v42))
  {
    v43.origin.x = x;
    v43.origin.y = y;
    v43.size.width = width;
    v43.size.height = height;
    CGRectGetHeight(v43);
    PKFloatRoundToPixel();
    CGRectDivide(remainder, &v38, &remainder, v18, CGRectMinYEdge);
    x = remainder.origin.x;
    y = remainder.origin.y;
    width = remainder.size.width;
    height = remainder.size.height;
  }

  v44.origin.x = x;
  v44.origin.y = y;
  v44.size.width = width;
  v44.size.height = height;
  CGRectDivide(v44, &v38, &remainder, 70.0, CGRectMinYEdge);
  iconImageView = self->_iconImageView;
  [(UIImage *)self->_icon size];
  PKSizeAspectFit();
  PKSizeAlignedInRect();
  [(UIImageView *)iconImageView setFrame:?];
  CGRectDivide(remainder, &v38, &remainder, 16.0, CGRectMinYEdge);
  [(UILabel *)self->_titleLabel pkui_sizeThatFits:1 forceWordWrap:remainder.size.width, remainder.size.height];
  CGRectDivide(remainder, &v38, &remainder, v20, CGRectMinYEdge);
  titleLabel = self->_titleLabel;
  PKSizeAlignedInRect();
  [(UILabel *)titleLabel setFrame:?];
  v22 = [(UILabel *)self->_subtitleLabel text];

  if (v22)
  {
    CGRectDivide(remainder, &v38, &remainder, 3.0, CGRectMinYEdge);
    [(UILabel *)self->_subtitleLabel pkui_sizeThatFits:1 forceWordWrap:remainder.size.width, remainder.size.height];
    CGRectDivide(remainder, &v38, &remainder, v23, CGRectMinYEdge);
    subtitleLabel = self->_subtitleLabel;
    PKSizeAlignedInRect();
    v29 = subtitleLabel;
  }

  else
  {
    v29 = self->_subtitleLabel;
    v25 = *MEMORY[0x1E695F058];
    v26 = *(MEMORY[0x1E695F058] + 8);
    v27 = *(MEMORY[0x1E695F058] + 16);
    v28 = *(MEMORY[0x1E695F058] + 24);
  }

  [(UILabel *)v29 setFrame:v25, v26, v27, v28];
  v30 = [(UILabel *)self->_tertiaryLabel text];

  if (v30)
  {
    CGRectDivide(remainder, &v38, &remainder, 3.0, CGRectMinYEdge);
    [(UILabel *)self->_tertiaryLabel pkui_sizeThatFits:1 forceWordWrap:remainder.size.width, remainder.size.height];
    CGRectDivide(remainder, &v38, &remainder, v31, CGRectMinYEdge);
    tertiaryLabel = self->_tertiaryLabel;
    PKSizeAlignedInRect();
    v37 = tertiaryLabel;
  }

  else
  {
    v37 = self->_tertiaryLabel;
    v33 = *MEMORY[0x1E695F058];
    v34 = *(MEMORY[0x1E695F058] + 8);
    v35 = *(MEMORY[0x1E695F058] + 16);
    v36 = *(MEMORY[0x1E695F058] + 24);
  }

  [(UILabel *)v37 setFrame:v33, v34, v35, v36];
}

- (void)setIcon:(id)a3
{
  v5 = a3;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_icon, a3);
    [(UIImageView *)self->_iconImageView setImage:self->_icon];
    [(PKDashboardStackedImageCollectionViewCell *)self setNeedsLayout];
  }
}

- (void)setTitle:(id)a3
{
  v4 = a3;
  v5 = self->_title;
  v6 = v4;
  v10 = v6;
  if (v5 == v6)
  {

    goto LABEL_9;
  }

  if (!v6 || !v5)
  {

    goto LABEL_8;
  }

  v7 = [(NSString *)v5 isEqualToString:v6];

  if (!v7)
  {
LABEL_8:
    v8 = [(NSString *)v10 copy];
    title = self->_title;
    self->_title = v8;

    [(UILabel *)self->_titleLabel setText:self->_title];
    [(PKDashboardStackedImageCollectionViewCell *)self setNeedsLayout];
  }

LABEL_9:
}

- (void)setSubtitle:(id)a3
{
  v4 = a3;
  v5 = self->_subtitle;
  v6 = v4;
  v10 = v6;
  if (v5 == v6)
  {

    goto LABEL_9;
  }

  if (!v6 || !v5)
  {

    goto LABEL_8;
  }

  v7 = [(NSString *)v5 isEqualToString:v6];

  if (!v7)
  {
LABEL_8:
    v8 = [(NSString *)v10 copy];
    subtitle = self->_subtitle;
    self->_subtitle = v8;

    [(UILabel *)self->_subtitleLabel setText:self->_subtitle];
    [(PKDashboardStackedImageCollectionViewCell *)self setNeedsLayout];
  }

LABEL_9:
}

- (void)setTertiaryText:(id)a3
{
  v4 = a3;
  v5 = self->_tertiaryText;
  v6 = v4;
  v10 = v6;
  if (v5 == v6)
  {

    goto LABEL_9;
  }

  if (!v6 || !v5)
  {

    goto LABEL_8;
  }

  v7 = [(NSString *)v5 isEqualToString:v6];

  if (!v7)
  {
LABEL_8:
    v8 = [(NSString *)v10 copy];
    tertiaryText = self->_tertiaryText;
    self->_tertiaryText = v8;

    [(UILabel *)self->_tertiaryLabel setText:self->_tertiaryText];
    [(PKDashboardStackedImageCollectionViewCell *)self setNeedsLayout];
  }

LABEL_9:
}

@end