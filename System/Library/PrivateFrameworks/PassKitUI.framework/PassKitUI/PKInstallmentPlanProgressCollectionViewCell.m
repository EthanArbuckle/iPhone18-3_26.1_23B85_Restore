@interface PKInstallmentPlanProgressCollectionViewCell
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKInstallmentPlanProgressCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setComplete:(BOOL)a3;
- (void)setLeadingAmount:(id)a3;
- (void)setLeadingTitle:(id)a3;
- (void)setSubtitleText:(id)a3;
- (void)setTrailingAmount:(id)a3;
- (void)setTrailingTitle:(id)a3;
@end

@implementation PKInstallmentPlanProgressCollectionViewCell

- (PKInstallmentPlanProgressCollectionViewCell)initWithFrame:(CGRect)a3
{
  v62.receiver = self;
  v62.super_class = PKInstallmentPlanProgressCollectionViewCell;
  v3 = [(PKDashboardCollectionViewCell *)&v62 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(PKInstallmentPlanProgressCollectionViewCell *)v3 contentView];
    v6 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    leadingTitleLabel = v4->_leadingTitleLabel;
    v4->_leadingTitleLabel = v6;

    [(UILabel *)v4->_leadingTitleLabel setNumberOfLines:1];
    [(UILabel *)v4->_leadingTitleLabel setAdjustsFontSizeToFitWidth:1];
    v8 = v4->_leadingTitleLabel;
    v9 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v8 setTextColor:v9];

    v10 = v4->_leadingTitleLabel;
    v11 = *MEMORY[0x1E69DDD80];
    v12 = *MEMORY[0x1E69DDC58];
    v61 = *MEMORY[0x1E69DDD80];
    v13 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD80], *MEMORY[0x1E69DDC58]);
    [(UILabel *)v10 setFont:v13];

    [(UILabel *)v4->_leadingTitleLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9D20]];
    [v5 addSubview:v4->_leadingTitleLabel];
    v14 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    leadingAmountLabel = v4->_leadingAmountLabel;
    v4->_leadingAmountLabel = v14;

    [(UILabel *)v4->_leadingAmountLabel setNumberOfLines:1];
    [(UILabel *)v4->_leadingAmountLabel setAdjustsFontSizeToFitWidth:1];
    v16 = v4->_leadingAmountLabel;
    v60 = *MEMORY[0x1E69DB8D8];
    v17 = *MEMORY[0x1E69DDDC0];
    v18 = *MEMORY[0x1E69DB958];
    v19 = PKFontForDesign(*MEMORY[0x1E69DB8D8], *MEMORY[0x1E69DDDC0], v12, 2, 0, *MEMORY[0x1E69DB958]);
    [(UILabel *)v16 setFont:v19];

    [(UILabel *)v4->_leadingAmountLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9CC8]];
    [v5 addSubview:v4->_leadingAmountLabel];
    v20 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    trailingTitleLabel = v4->_trailingTitleLabel;
    v4->_trailingTitleLabel = v20;

    [(UILabel *)v4->_trailingTitleLabel setNumberOfLines:1];
    [(UILabel *)v4->_trailingTitleLabel setAdjustsFontSizeToFitWidth:1];
    v22 = v4->_trailingTitleLabel;
    v23 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v22 setTextColor:v23];

    v24 = v4->_trailingTitleLabel;
    v25 = PKFontForDefaultDesign(v11, v12);
    [(UILabel *)v24 setFont:v25];

    [(UILabel *)v4->_trailingTitleLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9BF0]];
    [v5 addSubview:v4->_trailingTitleLabel];
    v26 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    trailingAmountLabel = v4->_trailingAmountLabel;
    v4->_trailingAmountLabel = v26;

    [(UILabel *)v4->_trailingAmountLabel setNumberOfLines:1];
    [(UILabel *)v4->_trailingAmountLabel setAdjustsFontSizeToFitWidth:1];
    v28 = v4->_trailingAmountLabel;
    v29 = PKFontForDesign(v60, v17, v12, 2, 0, v18);
    [(UILabel *)v28 setFont:v29];

    [(UILabel *)v4->_trailingAmountLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9BE8]];
    [v5 addSubview:v4->_trailingAmountLabel];
    v30 = [PKProgressBar alloc];
    v31 = *MEMORY[0x1E695F058];
    v32 = *(MEMORY[0x1E695F058] + 8);
    v33 = *(MEMORY[0x1E695F058] + 16);
    v34 = *(MEMORY[0x1E695F058] + 24);
    v35 = [(PKProgressBar *)v30 initWithFrame:*MEMORY[0x1E695F058], v32, v33, v34];
    progressBar = v4->_progressBar;
    v4->_progressBar = v35;

    v37 = v4->_progressBar;
    v38 = [MEMORY[0x1E69DC888] colorWithRed:0.22745098 green:0.725490196 blue:0.42745098 alpha:1.0];
    [(PKProgressBar *)v37 setGradientStartColor:v38];

    v39 = v4->_progressBar;
    v40 = [MEMORY[0x1E69DC888] colorWithRed:0.643137255 green:0.901960784 blue:0.42745098 alpha:1.0];
    [(PKProgressBar *)v39 setGradientEndColor:v40];

    [v5 addSubview:v4->_progressBar];
    v41 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"checkmark.circle.fill"];
    v42 = [v41 imageWithRenderingMode:2];

    v43 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v42];
    completeCheckmark = v4->_completeCheckmark;
    v4->_completeCheckmark = v43;

    v45 = v4->_completeCheckmark;
    v46 = [MEMORY[0x1E69DC888] systemGreenColor];
    [(UIImageView *)v45 setTintColor:v46];

    [(UIImageView *)v4->_completeCheckmark setHidden:1];
    [v5 addSubview:v4->_completeCheckmark];
    v47 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v31, v32, v33, v34}];
    completeLabel = v4->_completeLabel;
    v4->_completeLabel = v47;

    v49 = v4->_completeLabel;
    v50 = PKFontForDesign(v60, *MEMORY[0x1E69DDDB8], *MEMORY[0x1E69DDC70], 2, 0, v18);
    [(UILabel *)v49 setFont:v50];

    v51 = v4->_completeLabel;
    v52 = PKLocalizedFeatureString();
    [(UILabel *)v51 setText:v52];

    [(UILabel *)v4->_completeLabel setNumberOfLines:1];
    [(UILabel *)v4->_completeLabel setHidden:1];
    [(UILabel *)v4->_completeLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9610]];
    [v5 addSubview:v4->_completeLabel];
    v53 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    detailLabel = v4->_detailLabel;
    v4->_detailLabel = v53;

    v55 = v4->_detailLabel;
    v56 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v55 setTextColor:v56];

    v57 = v4->_detailLabel;
    v58 = PKFontForDefaultDesign(v61, v12);
    [(UILabel *)v57 setFont:v58];

    [(UILabel *)v4->_detailLabel setNumberOfLines:0];
    [(UILabel *)v4->_detailLabel setAccessibilityIdentifier:*MEMORY[0x1E69B96F8]];
    [v5 addSubview:v4->_detailLabel];
    [(PKInstallmentPlanProgressCollectionViewCell *)v4 setAccessibilityIdentifier:*MEMORY[0x1E69B9888]];
  }

  return v4;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  if (self->_leadingTitle)
  {
    v5 = [(UILabel *)self->_leadingTitleLabel font:a3.width];
    [v5 _bodyLeading];
    PKFloatCeilToPixel(v6, v7);
    v9 = v8;
  }

  else
  {
    a3.width = 0.0;
    PKFloatCeilToPixel(a3, *&a3.height);
    v9 = v10.n128_f64[0];
  }

  if (self->_leadingAmount)
  {
    v12 = [(UILabel *)self->_leadingAmountLabel font];
    [v12 _bodyLeading];
    PKFloatCeilToPixel(v13, v14);
    v16 = v15;
  }

  else
  {
    v10.n128_u64[0] = 0;
    PKFloatCeilToPixel(v10, v11);
    v16 = v17.n128_f64[0];
  }

  if (self->_complete)
  {
    v19 = [(UILabel *)self->_completeLabel font];
    [v19 _bodyLeading];
    PKFloatCeilToPixel(v20, v21);
    v23 = v22;
  }

  else
  {
    v17.n128_u64[0] = 20.0;
    PKFloatCeilToPixel(v17, v18);
    v23 = v24;
  }

  v25 = [(UILabel *)self->_detailLabel text];
  if (v25)
  {
    [(UILabel *)self->_detailLabel pkui_sizeThatFits:1 forceWordWrap:width + -32.0, 1.79769313e308];
    v27 = v26;
  }

  else
  {
    v27 = 0.0;
  }

  v28 = v9 + v16 + v23 + v27 + dbl_1BE1159C0[v27 > 0.0];
  v29 = width;
  result.height = v28;
  result.width = v29;
  return result;
}

- (void)layoutSubviews
{
  v51.receiver = self;
  v51.super_class = PKInstallmentPlanProgressCollectionViewCell;
  [(PKDashboardCollectionViewCell *)&v51 layoutSubviews];
  v3 = [(PKInstallmentPlanProgressCollectionViewCell *)self contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(PKInstallmentPlanProgressCollectionViewCell *)self _shouldReverseLayoutDirection];
  v13 = v5 + 16.0;
  v14 = v7 + 16.0;
  v15 = v9 + -32.0;
  remainder.origin.x = v13;
  remainder.origin.y = v14;
  v16 = v11 + -32.0;
  remainder.size.width = v15;
  remainder.size.height = v16;
  memset(&v49, 0, sizeof(v49));
  if (v12)
  {
    v17 = CGRectMaxXEdge;
  }

  else
  {
    v17 = CGRectMinXEdge;
  }

  if (v12)
  {
    v18 = CGRectMinXEdge;
  }

  else
  {
    v18 = CGRectMaxXEdge;
  }

  memset(&slice, 0, sizeof(slice));
  memset(&v47, 0, sizeof(v47));
  v52.origin.x = v13;
  v52.origin.y = v14;
  v52.size.width = v15;
  v52.size.height = v16;
  CGRectGetWidth(v52);
  PKFloatRoundToPixel();
  v20 = v19;
  v53.origin.x = v13;
  v53.origin.y = v14;
  v53.size.width = v15;
  v53.size.height = v16;
  CGRectDivide(v53, &slice, &remainder, v20, v17);
  CGRectDivide(remainder, &v49, &remainder, v20, v18);
  [(UILabel *)self->_leadingTitleLabel sizeThatFits:slice.size.width, slice.size.height];
  v22 = v21;
  [(UILabel *)self->_leadingAmountLabel sizeThatFits:slice.size.width, slice.size.height];
  v24 = v23;
  v25 = v22 + v23 + 5.0;
  PKContentAlignmentMake();
  PKSizeAlignedInRect();
  slice.origin.x = v26;
  slice.origin.y = v27;
  slice.size.width = v28;
  slice.size.height = v29;
  PKContentAlignmentMake();
  PKSizeAlignedInRect();
  v49.origin.x = v30;
  v49.origin.y = v31;
  leadingTitleLabel = self->_leadingTitleLabel;
  v49.size.width = v33;
  v49.size.height = v34;
  [(UILabel *)leadingTitleLabel setFrame:slice.origin.x, slice.origin.y, slice.size.width + -16.0, v22];
  [(UILabel *)self->_leadingAmountLabel setFrame:slice.origin.x, v22 + slice.origin.y + 5.0, slice.size.width + -16.0, v24];
  [(UILabel *)self->_trailingTitleLabel setFrame:v49.origin.x, v49.origin.y, v49.size.width, v22];
  [(UILabel *)self->_trailingAmountLabel setFrame:v49.origin.x, v22 + v49.origin.y + 5.0, v49.size.width, v24];
  v54.origin.x = v13;
  v54.origin.y = v14;
  v54.size.width = v15;
  v54.size.height = v16;
  CGRectDivide(v54, &v47, &remainder, v25 + 10.0, CGRectMinYEdge);
  if (self->_complete)
  {
    v35 = [(UILabel *)self->_completeLabel font];
    [v35 _bodyLeading];
    v37 = v36;

    CGRectDivide(remainder, &v47, &remainder, v37, CGRectMinYEdge);
    memset(&v46, 0, sizeof(v46));
    memset(&rect[1], 0, 32);
    CGRectDivide(v47, &v46, &v47, v37, v17);
    CGRectDivide(v47, &v47, &rect[1], 5.0, v17);
    [(UIImageView *)self->_completeCheckmark setFrame:v46.origin.x, v46.origin.y, v46.size.width, v46.size.height];
    completeLabel = self->_completeLabel;
    x = *&rect[1];
    y = *&rect[2];
    width = *&rect[3];
    height = *&rect[4];
  }

  else
  {
    CGRectDivide(remainder, &v47, &remainder, 20.0, CGRectMinYEdge);
    completeLabel = self->_progressBar;
    x = v47.origin.x;
    y = v47.origin.y;
    width = v47.size.width;
    height = v47.size.height;
  }

  [completeLabel setFrame:{x, y, width, height}];
  v43 = [(UILabel *)self->_detailLabel text];

  if (v43)
  {
    p_remainder = &remainder;
    CGRectDivide(remainder, &v47, &remainder, 10.0, CGRectMinYEdge);
  }

  else
  {
    p_remainder = MEMORY[0x1E695F058];
  }

  [(UILabel *)self->_detailLabel setFrame:p_remainder->origin.x, p_remainder->origin.y, p_remainder->size.width, p_remainder->size.height];
}

- (void)setLeadingTitle:(id)a3
{
  v4 = a3;
  v5 = self->_leadingTitle;
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
    leadingTitle = self->_leadingTitle;
    self->_leadingTitle = v8;

    [(UILabel *)self->_leadingTitleLabel setText:self->_leadingTitle];
    [(PKInstallmentPlanProgressCollectionViewCell *)self setNeedsLayout];
  }

LABEL_9:
}

- (void)setLeadingAmount:(id)a3
{
  v7 = a3;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_leadingAmount, a3);
    leadingAmountLabel = self->_leadingAmountLabel;
    v6 = [(PKCurrencyAmount *)self->_leadingAmount formattedStringValue];
    [(UILabel *)leadingAmountLabel setText:v6];

    [(PKInstallmentPlanProgressCollectionViewCell *)self setNeedsLayout];
  }
}

- (void)setTrailingTitle:(id)a3
{
  v4 = a3;
  v5 = self->_trailingTitle;
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
    trailingTitle = self->_trailingTitle;
    self->_trailingTitle = v8;

    [(UILabel *)self->_trailingTitleLabel setText:self->_trailingTitle];
    [(PKInstallmentPlanProgressCollectionViewCell *)self setNeedsLayout];
  }

LABEL_9:
}

- (void)setTrailingAmount:(id)a3
{
  v7 = a3;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_trailingAmount, a3);
    trailingAmountLabel = self->_trailingAmountLabel;
    v6 = [(PKCurrencyAmount *)self->_trailingAmount formattedStringValue];
    [(UILabel *)trailingAmountLabel setText:v6];

    [(PKInstallmentPlanProgressCollectionViewCell *)self setNeedsLayout];
  }
}

- (void)setSubtitleText:(id)a3
{
  v4 = a3;
  v5 = self->_subtitleText;
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
    subtitleText = self->_subtitleText;
    self->_subtitleText = v8;

    [(UILabel *)self->_detailLabel setText:self->_subtitleText];
    [(PKInstallmentPlanProgressCollectionViewCell *)self setNeedsLayout];
  }

LABEL_9:
}

- (void)setComplete:(BOOL)a3
{
  if (self->_complete == !a3)
  {
    self->_complete = a3;
    [(UIImageView *)self->_completeCheckmark setHidden:?];
    [(UILabel *)self->_completeLabel setHidden:!self->_complete];
    [(PKProgressBar *)self->_progressBar setHidden:self->_complete];

    [(PKInstallmentPlanProgressCollectionViewCell *)self setNeedsLayout];
  }
}

@end