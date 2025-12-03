@interface PKStackedLabelCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKStackedLabelCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_applyLabelStyles;
- (void)layoutSubviews;
- (void)setDetailImage:(id)image;
- (void)setDetailText:(id)text;
- (void)setDetailTextColor:(id)color;
- (void)setTitleText:(id)text;
- (void)setTitleTextColor:(id)color;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation PKStackedLabelCell

- (PKStackedLabelCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v17.receiver = self;
  v17.super_class = PKStackedLabelCell;
  v4 = [(PKStackedLabelCell *)&v17 initWithStyle:0 reuseIdentifier:identifier];
  if (v4)
  {
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    titleTextColor = v4->_titleTextColor;
    v4->_titleTextColor = labelColor;

    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    detailTextColor = v4->_detailTextColor;
    v4->_detailTextColor = secondaryLabelColor;

    v9 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v9;

    [(UILabel *)v4->_titleLabel setNumberOfLines:0];
    [(UILabel *)v4->_titleLabel setTextAlignment:4];
    [(UILabel *)v4->_titleLabel setTextColor:v4->_titleTextColor];
    [(UILabel *)v4->_titleLabel setLineBreakMode:0];
    [(UILabel *)v4->_titleLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9D20]];
    v11 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    detailLabel = v4->_detailLabel;
    v4->_detailLabel = v11;

    [(UILabel *)v4->_detailLabel setNumberOfLines:0];
    [(UILabel *)v4->_detailLabel setTextAlignment:4];
    [(UILabel *)v4->_detailLabel setTextColor:v4->_detailTextColor];
    [(UILabel *)v4->_detailLabel setLineBreakMode:4];
    [(UILabel *)v4->_detailLabel setAccessibilityIdentifier:*MEMORY[0x1E69B96F8]];
    v13 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    detailImageView = v4->_detailImageView;
    v4->_detailImageView = v13;

    [(PKStackedLabelCell *)v4 _applyLabelStyles];
    contentView = [(PKStackedLabelCell *)v4 contentView];
    [contentView addSubview:v4->_titleLabel];
    [contentView addSubview:v4->_detailLabel];
    [contentView addSubview:v4->_detailImageView];
    v4->_isRTL = [(PKStackedLabelCell *)v4 _shouldReverseLayoutDirection];
  }

  return v4;
}

- (void)_applyLabelStyles
{
  titleLabel = self->_titleLabel;
  v4 = *MEMORY[0x1E69DDCF8];
  v5 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [(UILabel *)titleLabel setFont:v5];

  detailLabel = self->_detailLabel;
  v7 = PKFontForDefaultDesign(v4, 0);
  [(UILabel *)detailLabel setFont:v7];
}

- (void)layoutSubviews
{
  v46.receiver = self;
  v46.super_class = PKStackedLabelCell;
  [(PKStackedLabelCell *)&v46 layoutSubviews];
  [(UILabel *)self->_titleLabel frame];
  [(UILabel *)self->_detailLabel frame];
  [(UIImageView *)self->_detailImageView frame];
  font = [(UILabel *)self->_titleLabel font];
  [font lineHeight];
  v42 = v4;

  font2 = [(UILabel *)self->_detailLabel font];
  [font2 lineHeight];

  contentView = [(PKStackedLabelCell *)self contentView];
  [(UITableViewCell *)self pkui_effectiveLayoutMargins];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [contentView bounds];
  v16 = v10 + v15;
  v18 = v8 + v17;
  v20 = v19 - (v10 + v14);
  v22 = v21 - (v8 + v12);
  remainder.origin.x = v16;
  remainder.origin.y = v18;
  remainder.size.width = v20;
  remainder.size.height = v22;
  memset(&slice, 0, sizeof(slice));
  [(UILabel *)self->_titleLabel sizeThatFits:v20, v22];
  v24 = v23;
  amount = v25;
  [(UILabel *)self->_detailLabel sizeThatFits:v20, v22];
  v27 = v26;
  [(UIImageView *)self->_detailImageView sizeThatFits:v20, v22];
  v29 = v28;
  PKFloatRoundToPixel();
  v31 = v30;
  v43 = v27;
  v32 = v24 + v27;
  v33 = v29;
  v34 = v31 + v32 + v29 + v42 * 0.4863;
  if (self->_isRTL)
  {
    v35 = CGRectMaxXEdge;
  }

  else
  {
    v35 = CGRectMinXEdge;
  }

  PKContentAlignmentMake();
  if (v34 <= v20)
  {
    PKContentAlignmentMake();
    CGRectDivide(remainder, &slice, &remainder, v24, v35);
    titleLabel = self->_titleLabel;
    PKSizeAlignedInRect();
    [(UILabel *)titleLabel setFrame:?];
    CGRectDivide(remainder, &slice, &remainder, remainder.size.width - v43 - v31, v35);
    detailImageView = self->_detailImageView;
    PKSizeAlignedInRect();
    [(UIImageView *)detailImageView setFrame:?];
  }

  else
  {
    v47.origin.x = v16;
    v47.origin.y = v18;
    v47.size.width = v20;
    v47.size.height = v22;
    CGRectDivide(v47, &slice, &remainder, amount, CGRectMinYEdge);
    v36 = self->_titleLabel;
    PKSizeAlignedInRect();
    [(UILabel *)v36 setFrame:?];
    CGRectDivide(remainder, &slice, &remainder, 6.0, CGRectMinYEdge);
    CGRectDivide(remainder, &slice, &remainder, v33, v35);
    v37 = self->_detailImageView;
    PKSizeAlignedInRect();
    [(UIImageView *)v37 setFrame:?];
  }

  CGRectDivide(remainder, &slice, &remainder, v31, v35);
  detailLabel = self->_detailLabel;
  PKSizeAlignedInRect();
  [(UILabel *)detailLabel setFrame:?];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v4 = [(PKStackedLabelCell *)self contentView:fits.width];
  [(UITableViewCell *)self pkui_effectiveLayoutMargins];
  v6 = v5;
  v8 = v7;
  [v4 frame];
  v10 = v9 - (v6 + v8);
  [(UILabel *)self->_titleLabel sizeThatFits:v10, 1.79769313e308];
  [(UILabel *)self->_detailLabel sizeThatFits:v10, 1.79769313e308];
  [(UIImageView *)self->_detailImageView sizeThatFits:v10, 1.79769313e308];
  font = [(UILabel *)self->_titleLabel font];
  [font lineHeight];

  font2 = [(UILabel *)self->_detailLabel font];
  [font2 lineHeight];

  PKSizeRoundToPixel();
  v14 = v13;
  v16 = v15;

  v17 = v14;
  v18 = v16;
  result.height = v18;
  result.width = v17;
  return result;
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = PKStackedLabelCell;
  [(PKStackedLabelCell *)&v4 traitCollectionDidChange:change];
  [(PKStackedLabelCell *)self _applyLabelStyles];
  [(PKStackedLabelCell *)self setNeedsLayout];
}

- (void)setTitleText:(id)text
{
  textCopy = text;
  v6 = self->_titleText;
  v7 = textCopy;
  v9 = v7;
  if (v6 == v7)
  {

    goto LABEL_9;
  }

  if (!v7 || !v6)
  {

    goto LABEL_8;
  }

  v8 = [(NSString *)v6 isEqualToString:v7];

  if (!v8)
  {
LABEL_8:
    objc_storeStrong(&self->_titleText, text);
    [(UILabel *)self->_titleLabel setText:self->_titleText];
    [(UILabel *)self->_titleLabel sizeToFit];
    [(PKStackedLabelCell *)self setNeedsLayout];
  }

LABEL_9:
}

- (void)setDetailText:(id)text
{
  textCopy = text;
  v6 = self->_detailText;
  v7 = textCopy;
  v9 = v7;
  if (v6 == v7)
  {

    goto LABEL_9;
  }

  if (!v7 || !v6)
  {

    goto LABEL_8;
  }

  v8 = [(NSString *)v6 isEqualToString:v7];

  if (!v8)
  {
LABEL_8:
    objc_storeStrong(&self->_detailText, text);
    [(UILabel *)self->_detailLabel setText:v9];
    [(UILabel *)self->_detailLabel sizeToFit];
    [(PKStackedLabelCell *)self setNeedsLayout];
  }

LABEL_9:
}

- (void)setDetailImage:(id)image
{
  imageCopy = image;
  if (self->_detailImage != imageCopy)
  {
    v6 = imageCopy;
    objc_storeStrong(&self->_detailImage, image);
    [(UIImageView *)self->_detailImageView setImage:v6];
    [(UIImageView *)self->_detailImageView setTintColor:self->_detailTextColor];
    [(PKStackedLabelCell *)self setNeedsLayout];
    imageCopy = v6;
  }
}

- (void)setTitleTextColor:(id)color
{
  colorCopy = color;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_titleTextColor, color);
    [(UILabel *)self->_titleLabel setTextColor:self->_titleTextColor];
  }
}

- (void)setDetailTextColor:(id)color
{
  colorCopy = color;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_detailTextColor, color);
    [(UILabel *)self->_detailLabel setTextColor:self->_detailTextColor];
  }
}

@end