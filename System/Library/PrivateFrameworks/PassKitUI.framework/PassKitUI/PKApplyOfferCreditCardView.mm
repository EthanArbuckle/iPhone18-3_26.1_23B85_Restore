@interface PKApplyOfferCreditCardView
- (BOOL)showSchumerBox;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKApplyOfferCreditCardView)init;
- (void)layoutSubviews;
@end

@implementation PKApplyOfferCreditCardView

- (PKApplyOfferCreditCardView)init
{
  v45.receiver = self;
  v45.super_class = PKApplyOfferCreditCardView;
  v2 = [(PKApplyOfferCreditCardView *)&v45 init];
  if (v2)
  {
    v3 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD80], *MEMORY[0x1E69DDC38], 2, 0);
    v4 = PKRoundedSystemFontOfSizeAndWeight(22.0, *MEMORY[0x1E69DB980]);
    v5 = PKOBKTextAlignment();
    v6 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    creditLimitTitleLabel = v2->_creditLimitTitleLabel;
    v2->_creditLimitTitleLabel = v6;

    v8 = v2->_creditLimitTitleLabel;
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v8 setTextColor:secondaryLabelColor];

    [(UILabel *)v2->_creditLimitTitleLabel setFont:v3];
    [(UILabel *)v2->_creditLimitTitleLabel setTextAlignment:v5];
    [(PKApplyOfferCreditCardView *)v2 addSubview:v2->_creditLimitTitleLabel];
    v10 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    creditLimitLabel = v2->_creditLimitLabel;
    v2->_creditLimitLabel = v10;

    [(UILabel *)v2->_creditLimitLabel setFont:v4];
    v12 = v2->_creditLimitLabel;
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v12 setTextColor:labelColor];

    [(UILabel *)v2->_creditLimitLabel setTextAlignment:v5];
    [(UILabel *)v2->_creditLimitLabel setAdjustsFontSizeToFitWidth:1];
    [(PKApplyOfferCreditCardView *)v2 addSubview:v2->_creditLimitLabel];
    v14 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    aprForPurchaseTitleLabel = v2->_aprForPurchaseTitleLabel;
    v2->_aprForPurchaseTitleLabel = v14;

    [(UILabel *)v2->_aprForPurchaseTitleLabel setFont:v3];
    v16 = v2->_aprForPurchaseTitleLabel;
    secondaryLabelColor2 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v16 setTextColor:secondaryLabelColor2];

    [(UILabel *)v2->_aprForPurchaseTitleLabel setTextAlignment:v5];
    [(PKApplyOfferCreditCardView *)v2 addSubview:v2->_aprForPurchaseTitleLabel];
    v18 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    aprForPurchaseLabel = v2->_aprForPurchaseLabel;
    v2->_aprForPurchaseLabel = v18;

    [(UILabel *)v2->_aprForPurchaseLabel setFont:v4];
    v20 = v2->_aprForPurchaseLabel;
    labelColor2 = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v20 setTextColor:labelColor2];

    [(UILabel *)v2->_aprForPurchaseLabel setTextAlignment:v5];
    [(UILabel *)v2->_aprForPurchaseLabel setAdjustsFontSizeToFitWidth:1];
    [(PKApplyOfferCreditCardView *)v2 addSubview:v2->_aprForPurchaseLabel];
    v22 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    feeTitleLabel = v2->_feeTitleLabel;
    v2->_feeTitleLabel = v22;

    [(UILabel *)v2->_feeTitleLabel setTextAlignment:v5];
    v24 = v2->_feeTitleLabel;
    secondaryLabelColor3 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v24 setTextColor:secondaryLabelColor3];

    [(UILabel *)v2->_feeTitleLabel setFont:v3];
    [(PKApplyOfferCreditCardView *)v2 addSubview:v2->_feeTitleLabel];
    v26 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    feeLabel = v2->_feeLabel;
    v2->_feeLabel = v26;

    [(UILabel *)v2->_feeLabel setTextAlignment:v5];
    [(UILabel *)v2->_feeLabel setFont:v4];
    v28 = v2->_feeLabel;
    labelColor3 = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v28 setTextColor:labelColor3];

    [(UILabel *)v2->_feeLabel setAdjustsFontSizeToFitWidth:1];
    [(PKApplyOfferCreditCardView *)v2 addSubview:v2->_feeLabel];
    v30 = objc_alloc_init(MEMORY[0x1E69DD250]);
    dividerLeft = v2->_dividerLeft;
    v2->_dividerLeft = v30;

    v32 = v2->_dividerLeft;
    separatorColor = [MEMORY[0x1E69DC888] separatorColor];
    [(UIView *)v32 setBackgroundColor:separatorColor];

    [(PKApplyOfferCreditCardView *)v2 addSubview:v2->_dividerLeft];
    v34 = objc_alloc_init(MEMORY[0x1E69DD250]);
    dividerRight = v2->_dividerRight;
    v2->_dividerRight = v34;

    v36 = v2->_dividerRight;
    separatorColor2 = [MEMORY[0x1E69DC888] separatorColor];
    [(UIView *)v36 setBackgroundColor:separatorColor2];

    [(PKApplyOfferCreditCardView *)v2 addSubview:v2->_dividerRight];
    v38 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    bodyLabel = v2->_bodyLabel;
    v2->_bodyLabel = v38;

    [(UILabel *)v2->_bodyLabel setTextAlignment:v5];
    v40 = v2->_bodyLabel;
    v41 = PKOBKBodyTextColor();
    [(UILabel *)v40 setTextColor:v41];

    [(UILabel *)v2->_bodyLabel setNumberOfLines:0];
    v42 = v2->_bodyLabel;
    v43 = PKOBKBodyFont();
    [(UILabel *)v42 setFont:v43];

    [(PKApplyOfferCreditCardView *)v2 addSubview:v2->_bodyLabel];
  }

  return v2;
}

- (void)layoutSubviews
{
  v33.receiver = self;
  v33.super_class = PKApplyOfferCreditCardView;
  [(PKApplyOfferCreditCardView *)&v33 layoutSubviews];
  [(PKApplyOfferCreditCardView *)self bounds];
  x = v34.origin.x;
  y = v34.origin.y;
  Width = CGRectGetWidth(v34);
  if ([(PKApplyOfferCreditCardView *)self showSchumerBox])
  {
    PKFloatRoundToPixel();
    v7 = v6;
    [(UILabel *)self->_creditLimitTitleLabel sizeToFit];
    [(UILabel *)self->_creditLimitTitleLabel frame];
    [(UILabel *)self->_creditLimitTitleLabel setFrame:x, y, v7 + -10.0];
    [(UILabel *)self->_creditLimitLabel sizeToFit];
    [(UILabel *)self->_creditLimitLabel frame];
    v9 = v8;
    [(UILabel *)self->_creditLimitTitleLabel frame];
    [(UILabel *)self->_creditLimitLabel setFrame:x, CGRectGetMaxY(v35) + 5.0, v7 + -10.0, v9];
    v10 = x + v7;
    PKFloatRoundToPixel();
    v31 = v11;
    [(UIView *)self->_dividerLeft frame];
    v13 = v12;
    [(UILabel *)self->_creditLimitTitleLabel frame];
    MinY = CGRectGetMinY(v36);
    v15 = PKUIPixelLength();
    [(UILabel *)self->_creditLimitLabel frame];
    MaxY = CGRectGetMaxY(v37);
    v38.origin.x = v10;
    v38.origin.y = MinY;
    v38.size.width = v15;
    v38.size.height = v13;
    [(UIView *)self->_dividerLeft setFrame:v10, MinY, v15, MaxY - CGRectGetMinY(v38)];
    [(UILabel *)self->_aprForPurchaseTitleLabel sizeToFit];
    [(UILabel *)self->_aprForPurchaseTitleLabel frame];
    [(UILabel *)self->_aprForPurchaseTitleLabel setFrame:v10 + 10.0, y, v31 + -20.0];
    [(UILabel *)self->_aprForPurchaseLabel sizeToFit];
    [(UILabel *)self->_aprForPurchaseLabel frame];
    v18 = v17;
    [(UILabel *)self->_creditLimitTitleLabel frame];
    [(UILabel *)self->_aprForPurchaseLabel setFrame:v10 + 10.0, CGRectGetMaxY(v39) + 5.0, v31 + -20.0, v18];
    v19 = v10 + v31;
    PKFloatRoundToPixel();
    v32 = v20;
    [(UIView *)self->_dividerRight frame];
    v22 = v21;
    [(UILabel *)self->_aprForPurchaseTitleLabel frame];
    v23 = CGRectGetMinY(v40);
    v24 = PKUIPixelLength();
    [(UILabel *)self->_aprForPurchaseLabel frame];
    v25 = CGRectGetMaxY(v41);
    v42.origin.x = v19;
    v42.origin.y = v23;
    v42.size.width = v24;
    v42.size.height = v22;
    [(UIView *)self->_dividerRight setFrame:v19, v23, v24, v25 - CGRectGetMinY(v42)];
    [(UILabel *)self->_feeTitleLabel sizeToFit];
    [(UILabel *)self->_feeTitleLabel frame];
    v26 = v19 + 10.0;
    [(UILabel *)self->_feeTitleLabel setFrame:v26, y, v32 + -10.0];
    [(UILabel *)self->_feeLabel sizeToFit];
    [(UILabel *)self->_feeLabel frame];
    v28 = v27;
    [(UILabel *)self->_feeTitleLabel frame];
    [(UILabel *)self->_feeLabel setFrame:v26, CGRectGetMaxY(v43) + 5.0, v32 + -10.0, v28];
  }

  [(UILabel *)self->_aprForPurchaseLabel frame];
  v29 = CGRectGetMaxY(v44) + 10.0;
  [(UILabel *)self->_bodyLabel sizeThatFits:Width, 1.79769313e308];
  [(UILabel *)self->_bodyLabel setFrame:x, v29, Width, v30];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  [(UILabel *)self->_bodyLabel sizeThatFits:fits.width, 1.79769313e308];
  v6 = v5 + 0.0;
  if ([(PKApplyOfferCreditCardView *)self showSchumerBox])
  {
    [(UILabel *)self->_aprForPurchaseTitleLabel sizeThatFits:width, 1.79769313e308];
    v8 = v6 + v7 + 5.0;
    [(UILabel *)self->_aprForPurchaseLabel sizeThatFits:width, 1.79769313e308];
    v6 = v8 + v9 + 10.0;
  }

  v10 = width;
  v11 = v6;
  result.height = v11;
  result.width = v10;
  return result;
}

- (BOOL)showSchumerBox
{
  text = [(UILabel *)self->_creditLimitLabel text];
  if ([text length])
  {
    v4 = 1;
  }

  else
  {
    text2 = [(UILabel *)self->_feeLabel text];
    if ([text2 length])
    {
      v4 = 1;
    }

    else
    {
      text3 = [(UILabel *)self->_aprForPurchaseLabel text];
      v4 = [text3 length] != 0;
    }
  }

  return v4;
}

@end