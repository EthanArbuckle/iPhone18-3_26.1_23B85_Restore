@interface PKInstallmentPlanTotalFinancedCollectionViewCell
- (CGSize)_layoutWithBounds:(CGRect)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKInstallmentPlanTotalFinancedCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setAmount:(id)a3;
- (void)setSubtitleText:(id)a3;
- (void)setTitle:(id)a3;
@end

@implementation PKInstallmentPlanTotalFinancedCollectionViewCell

- (PKInstallmentPlanTotalFinancedCollectionViewCell)initWithFrame:(CGRect)a3
{
  v36.receiver = self;
  v36.super_class = PKInstallmentPlanTotalFinancedCollectionViewCell;
  v3 = [(PKDashboardCollectionViewCell *)&v36 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(PKInstallmentPlanTotalFinancedCollectionViewCell *)v3 contentView];
    v6 = objc_alloc(MEMORY[0x1E69DCC10]);
    v7 = *MEMORY[0x1E695F058];
    v8 = *(MEMORY[0x1E695F058] + 8);
    v9 = *(MEMORY[0x1E695F058] + 16);
    v10 = *(MEMORY[0x1E695F058] + 24);
    v11 = [v6 initWithFrame:{*MEMORY[0x1E695F058], v8, v9, v10}];
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v11;

    v13 = v4->_titleLabel;
    v14 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD80], 0);
    [(UILabel *)v13 setFont:v14];

    v15 = v4->_titleLabel;
    v16 = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v15 setTextColor:v16];

    [(UILabel *)v4->_titleLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9D20]];
    [v5 addSubview:v4->_titleLabel];
    v17 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v7, v8, v9, v10}];
    amountLabel = v4->_amountLabel;
    v4->_amountLabel = v17;

    v19 = v4->_amountLabel;
    v20 = PKFontForDesign(*MEMORY[0x1E69DB8D8], *MEMORY[0x1E69DDDB8], 0, 2, 0, *MEMORY[0x1E69DB958]);
    [(UILabel *)v19 setFont:v20];

    v21 = v4->_amountLabel;
    v22 = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v21 setTextColor:v22];

    [(UILabel *)v4->_amountLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9448]];
    [v5 addSubview:v4->_amountLabel];
    v23 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v7, v8, v9, v10}];
    subtitleLabel = v4->_subtitleLabel;
    v4->_subtitleLabel = v23;

    v25 = v4->_subtitleLabel;
    v26 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD28], 0);
    [(UILabel *)v25 setFont:v26];

    v27 = v4->_subtitleLabel;
    v28 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v27 setTextColor:v28];

    [(UILabel *)v4->_subtitleLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9CC8]];
    [v5 addSubview:v4->_subtitleLabel];
    v29 = objc_alloc(MEMORY[0x1E69DCAE0]);
    if (_UISolariumFeatureFlagEnabled())
    {
      PKUISmallChevronImage();
    }

    else
    {
      PKUIChevronImage();
    }
    v30 = ;
    v31 = [v29 initWithImage:v30];
    disclosureView = v4->_disclosureView;
    v4->_disclosureView = v31;

    v33 = v4->_disclosureView;
    v34 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    [(UIImageView *)v33 setTintColor:v34];

    [v5 addSubview:v4->_disclosureView];
    [(PKInstallmentPlanTotalFinancedCollectionViewCell *)v4 setAccessibilityIdentifier:*MEMORY[0x1E69B9D28]];
  }

  return v4;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  self->_isTemplateLayout = 1;
  [(PKDashboardCollectionViewCell *)self horizontalInset];
  [(PKInstallmentPlanTotalFinancedCollectionViewCell *)self _layoutWithBounds:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), width - (v6 + v6), height];
  self->_isTemplateLayout = 0;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = PKInstallmentPlanTotalFinancedCollectionViewCell;
  [(PKDashboardCollectionViewCell *)&v4 layoutSubviews];
  v3 = [(PKInstallmentPlanTotalFinancedCollectionViewCell *)self contentView];
  [v3 bounds];
  [(PKInstallmentPlanTotalFinancedCollectionViewCell *)self _layoutWithBounds:?];
}

- (CGSize)_layoutWithBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if ([(PKInstallmentPlanTotalFinancedCollectionViewCell *)self _shouldReverseLayoutDirection])
  {
    v8 = CGRectMinXEdge;
  }

  else
  {
    v8 = CGRectMaxXEdge;
  }

  remainder.origin.x = x + 16.0;
  remainder.origin.y = y + 16.0;
  remainder.size.width = width + -32.0;
  remainder.size.height = height + -32.0;
  memset(&slice, 0, sizeof(slice));
  [(UIImageView *)self->_disclosureView frame:*&width];
  v10 = v9;
  v27.origin.x = x + 16.0;
  v27.origin.y = y + 16.0;
  v27.size.width = width + -32.0;
  v27.size.height = height + -32.0;
  CGRectDivide(v27, &slice, &remainder, v10, v8);
  if (!self->_isTemplateLayout)
  {
    PKSizeAlignedInRect();
    [(UIImageView *)self->_disclosureView setFrame:?];
  }

  CGRectDivide(remainder, &slice, &remainder, 16.0, v8);
  [(UILabel *)self->_titleLabel sizeThatFits:remainder.size.width, remainder.size.height];
  v12 = v11;
  [(UILabel *)self->_amountLabel sizeThatFits:remainder.size.width, remainder.size.height];
  v14 = v13;
  if (self->_subtitleText)
  {
    [(UILabel *)self->_subtitleLabel sizeThatFits:remainder.size.width, remainder.size.height];
    v16 = v15;
  }

  else
  {
    v16 = *(MEMORY[0x1E695F060] + 8);
  }

  if (!self->_isTemplateLayout)
  {
    CGRectDivide(remainder, &slice, &remainder, v12, CGRectMinYEdge);
    [(UILabel *)self->_titleLabel setFrame:slice.origin.x, slice.origin.y, slice.size.width, slice.size.height];
    CGRectDivide(remainder, &slice, &remainder, 5.0, CGRectMinYEdge);
    CGRectDivide(remainder, &slice, &remainder, v14, CGRectMinYEdge);
    [(UILabel *)self->_amountLabel setFrame:slice.origin.x, slice.origin.y, slice.size.width, slice.size.height];
    if (v16 <= 0.0)
    {
      p_slice = MEMORY[0x1E695F058];
    }

    else
    {
      p_slice = &slice;
      CGRectDivide(remainder, &slice, &remainder, 5.0, CGRectMinYEdge);
      CGRectDivide(remainder, &slice, &remainder, v16, CGRectMinYEdge);
    }

    [(UILabel *)self->_subtitleLabel setFrame:p_slice->origin.x, p_slice->origin.y, p_slice->size.width, p_slice->size.height];
  }

  v18 = v12 + v14 + 5.0;
  if (v16 > 0.0)
  {
    v18 = v18 + v16 + 5.0;
  }

  v19 = v18 + 32.0;
  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = v22;
  v28.size.height = v23;
  v20 = CGRectGetWidth(v28);
  v21 = v19;
  result.height = v21;
  result.width = v20;
  return result;
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
    [(PKInstallmentPlanTotalFinancedCollectionViewCell *)self setNeedsLayout];
  }

LABEL_9:
}

- (void)setAmount:(id)a3
{
  v7 = a3;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_amount, a3);
    amountLabel = self->_amountLabel;
    v6 = [v7 formattedStringValue];
    [(UILabel *)amountLabel setText:v6];

    [(PKInstallmentPlanTotalFinancedCollectionViewCell *)self setNeedsLayout];
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

    [(UILabel *)self->_subtitleLabel setText:self->_subtitleText];
    [(PKInstallmentPlanTotalFinancedCollectionViewCell *)self setNeedsLayout];
  }

LABEL_9:
}

@end