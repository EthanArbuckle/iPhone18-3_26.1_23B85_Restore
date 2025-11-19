@interface PKDashboardViewControllerFooterView
- (BOOL)isEqualToFooter:(id)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (NSDirectionalEdgeInsets)contentInsets;
- (PKDashboardViewControllerFooterView)initWithFrame:(CGRect)a3;
- (PKDashboardViewControllerFooterViewDelegate)delegate;
- (double)layoutWithBounds:(CGRect)a3 isTemplateLayout:(BOOL)a4;
- (id)_payButtonWithCircleLayout:(BOOL)a3;
- (void)_buttonTapped:(id)a3;
- (void)_createSubviews;
- (void)layoutSubviews;
- (void)resetFonts;
- (void)setButtonTintColor:(id)a3;
- (void)setButtonTitle:(id)a3;
- (void)setButtonTitleColor:(id)a3;
- (void)setDetailNumberOfLines:(int64_t)a3;
- (void)setPayButtonImage:(id)a3;
@end

@implementation PKDashboardViewControllerFooterView

- (PKDashboardViewControllerFooterView)initWithFrame:(CGRect)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = PKDashboardViewControllerFooterView;
  v3 = [(PKDashboardViewControllerFooterView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(PKDashboardViewControllerFooterView *)v3 _createSubviews];
    [(PKDashboardViewControllerFooterView *)v4 setUserInteractionEnabled:1];
    [(PKDashboardViewControllerFooterView *)v4 resetFonts];
    v9[0] = objc_opt_class();
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    v6 = [(PKDashboardViewControllerFooterView *)v4 registerForTraitChanges:v5 withHandler:&__block_literal_global_165];

    if (_UISolariumFeatureFlagEnabled())
    {
      [(UIView *)v4 pkui_applyGlassBackground];
      [(UIView *)v4 pkui_applyContainerConcentricCornerConfigurationWithFallbackCornerRadius:35.0];
    }

    [(PKDashboardViewControllerFooterView *)v4 setAccessibilityIdentifier:*MEMORY[0x1E69B9680]];
  }

  return v4;
}

- (void)_createSubviews
{
  v24 = [MEMORY[0x1E69DC888] systemGrayColor];
  v3 = objc_alloc(MEMORY[0x1E69DCC10]);
  v4 = *MEMORY[0x1E695F058];
  v5 = *(MEMORY[0x1E695F058] + 8);
  v6 = *(MEMORY[0x1E695F058] + 16);
  v7 = *(MEMORY[0x1E695F058] + 24);
  v8 = [v3 initWithFrame:{*MEMORY[0x1E695F058], v5, v6, v7}];
  leadingTitle = self->_leadingTitle;
  self->_leadingTitle = v8;

  [(UILabel *)self->_leadingTitle setNumberOfLines:1];
  [(UILabel *)self->_leadingTitle setTextColor:v24];
  [(UILabel *)self->_leadingTitle setAccessibilityIdentifier:*MEMORY[0x1E69B98E0]];
  [(PKDashboardViewControllerFooterView *)self addSubview:self->_leadingTitle];
  v10 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v4, v5, v6, v7}];
  leadingDetail = self->_leadingDetail;
  self->_leadingDetail = v10;

  [(UILabel *)self->_leadingDetail setNumberOfLines:1];
  [(UILabel *)self->_leadingDetail setAdjustsFontSizeToFitWidth:1];
  [(UILabel *)self->_leadingDetail setAccessibilityIdentifier:*MEMORY[0x1E69B9CC8]];
  [(PKDashboardViewControllerFooterView *)self addSubview:self->_leadingDetail];
  v12 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v4, v5, v6, v7}];
  trailingTitle = self->_trailingTitle;
  self->_trailingTitle = v12;

  [(UILabel *)self->_trailingTitle setNumberOfLines:1];
  [(UILabel *)self->_trailingTitle setTextColor:v24];
  [(UILabel *)self->_trailingTitle setAccessibilityIdentifier:*MEMORY[0x1E69B9D30]];
  [(PKDashboardViewControllerFooterView *)self addSubview:self->_trailingTitle];
  v14 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v4, v5, v6, v7}];
  trailingDetail = self->_trailingDetail;
  self->_trailingDetail = v14;

  [(UILabel *)self->_trailingDetail setNumberOfLines:1];
  [(UILabel *)self->_trailingDetail setAdjustsFontSizeToFitWidth:1];
  [(UILabel *)self->_trailingDetail setAccessibilityIdentifier:*MEMORY[0x1E69B96F8]];
  [(PKDashboardViewControllerFooterView *)self addSubview:self->_trailingDetail];
  v16 = objc_alloc_init(MEMORY[0x1E69DD250]);
  separatorView = self->_separatorView;
  self->_separatorView = v16;

  v18 = self->_separatorView;
  v19 = [MEMORY[0x1E69DC888] systemLightGrayColor];
  [(UIView *)v18 setBackgroundColor:v19];

  [(PKDashboardViewControllerFooterView *)self addSubview:self->_separatorView];
  v20 = objc_alloc_init(MEMORY[0x1E69DD250]);
  topSeparatorView = self->_topSeparatorView;
  self->_topSeparatorView = v20;

  v22 = self->_topSeparatorView;
  v23 = [MEMORY[0x1E69DC888] systemLightGrayColor];
  [(UIView *)v22 setBackgroundColor:v23];

  [(PKDashboardViewControllerFooterView *)self addSubview:self->_topSeparatorView];
  [(PKDashboardViewControllerFooterView *)self setAccessibilityIdentifier:*MEMORY[0x1E69B9818]];
}

- (void)resetFonts
{
  v3 = *MEMORY[0x1E69DDC58];
  v5 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD80], *MEMORY[0x1E69DDC58]);
  v4 = PKFontForDesign(*MEMORY[0x1E69DB8D8], *MEMORY[0x1E69DDDB8], v3, 2, 0, *MEMORY[0x1E69DB958]);
  [(UILabel *)self->_leadingTitle setFont:v5];
  [(UILabel *)self->_leadingDetail setFont:v4];
  [(UILabel *)self->_trailingTitle setFont:v5];
  [(UILabel *)self->_trailingDetail setFont:v4];
  [(PKDashboardViewControllerFooterView *)self setNeedsLayout];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = _UISolariumFeatureFlagEnabled();
  v7 = 0.0;
  if (v6)
  {
    v7 = 28.0;
  }

  v8 = width + v7 * -2.0;
  [(PKDashboardViewControllerFooterView *)self layoutWithBounds:1 isTemplateLayout:0.0, 0.0, v8, height];
  v10 = v9;
  v11 = v8;
  result.height = v10;
  result.width = v11;
  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PKDashboardViewControllerFooterView;
  [(PKDashboardViewControllerFooterView *)&v3 layoutSubviews];
  [(PKDashboardViewControllerFooterView *)self bounds];
  [(PKDashboardViewControllerFooterView *)self layoutWithBounds:0 isTemplateLayout:?];
}

- (double)layoutWithBounds:(CGRect)a3 isTemplateLayout:(BOOL)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = [(PKDashboardViewControllerFooterView *)self _shouldReverseLayoutDirection];
  v10 = v9;
  if (v9)
  {
    v11 = CGRectMaxXEdge;
  }

  else
  {
    v11 = CGRectMinXEdge;
  }

  if (v9)
  {
    v12 = CGRectMinXEdge;
  }

  else
  {
    v12 = CGRectMaxXEdge;
  }

  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentInsets.top, *MEMORY[0x1E69DC5C0]), vceqq_f64(*&self->_contentInsets.bottom, *(MEMORY[0x1E69DC5C0] + 16))))))
  {
    trailing = 18.0;
    leading = 18.0;
    if (_UISolariumFeatureFlagEnabled())
    {
      PKFloatRoundToPixel();
      leading = v15;
    }

    if (_UISolariumFeatureFlagEnabled())
    {
      PKFloatRoundToPixel();
      trailing = v16;
    }
  }

  else
  {
    leading = self->_contentInsets.leading;
    trailing = self->_contentInsets.trailing;
  }

  v17 = 18.0;
  if (_UISolariumFeatureFlagEnabled())
  {
    PKFloatRoundToPixel();
    v17 = v18;
  }

  memset(&v61, 0, sizeof(v61));
  remainder.origin.x = x;
  remainder.origin.y = y;
  remainder.size.width = width;
  remainder.size.height = height;
  memset(&slice, 0, sizeof(slice));
  memset(&v59, 0, sizeof(v59));
  v19 = [(UILabel *)self->_trailingTitle text];
  if ([v19 length])
  {
    v20 = 1;
  }

  else
  {
    v21 = [(UILabel *)self->_trailingDetail text];
    v20 = [v21 length] != 0;
  }

  v22 = [(PKContinuousButton *)self->_payButton titleLabel];
  v23 = [v22 text];
  v24 = [v23 length];

  v25 = [(PKContinuousButton *)self->_payButton currentImage];

  v26 = 0x404B000000000000;
  if (v24 >= 4 && !v25)
  {
    [(PKContinuousButton *)self->_payButton sizeThatFits:width, height];
  }

  amount = *&v26;
  if (v10)
  {
    v27 = trailing;
  }

  else
  {
    v27 = leading;
  }

  if (v10)
  {
    v28 = leading;
  }

  else
  {
    v28 = trailing;
  }

  v29 = x + v27;
  v30 = y + v17;
  v31 = width - (v27 + v17);
  remainder.origin.x = v29;
  remainder.origin.y = y + v17;
  v32 = height - (v28 + v17);
  remainder.size.width = v31;
  remainder.size.height = v32;
  v63.origin.x = v29;
  v63.origin.y = y + v17;
  v63.size.width = v31;
  v63.size.height = v32;
  CGRectGetMidX(v63);
  PKFloatRoundToPixel();
  v54 = v33;
  v58 = v17;
  if (v24 | v25)
  {
    v64.origin.x = v29;
    v64.origin.y = y + v17;
    v64.size.width = v31;
    v64.size.height = v32;
    CGRectDivide(v64, &slice, &remainder, amount, v12);
    v59 = remainder;
  }

  else if (v20)
  {
    v65.origin.x = v29;
    v65.origin.y = y + v17;
    v65.size.width = v31;
    v65.size.height = v32;
    CGRectGetWidth(v65);
    PKFloatRoundToPixel();
    v35 = v34 + -18.0;
    v66.origin.x = v29;
    v66.origin.y = v30;
    v66.size.width = v31;
    v66.size.height = v32;
    CGRectDivide(v66, &v59, &remainder, v35, v11);
    CGRectDivide(remainder, &slice, &remainder, v35, v12);
  }

  else
  {
    v59 = remainder;
  }

  [(UILabel *)self->_leadingTitle pkui_sizeThatFits:v59.size.width, v59.size.height, v54];
  v37 = v36;
  [(UILabel *)self->_leadingDetail pkui_sizeThatFits:v59.size.width, v59.size.height];
  v39 = v38;
  v40 = v37 + v38 + 2.0;
  v41 = *(MEMORY[0x1E695F060] + 8);
  v42 = v41;
  if (!(v24 | v25) && v20)
  {
    [(UILabel *)self->_trailingTitle pkui_sizeThatFits:slice.size.width, v59.size.height];
    v42 = v43;
    [(UILabel *)self->_trailingDetail pkui_sizeThatFits:slice.size.width, v59.size.height];
    v41 = v44;
  }

  v45 = fmax(v40, v41 + v42 + 2.0);
  if (!a4)
  {
    remainder = v59;
    CGRectDivide(v59, &v61, &remainder, v37, CGRectMinYEdge);
    leadingTitle = self->_leadingTitle;
    PKContentAlignmentMake();
    PKSizeAlignedInRect();
    [(UILabel *)leadingTitle setFrame:?];
    CGRectDivide(remainder, &v61, &remainder, 2.0, CGRectMinYEdge);
    CGRectDivide(remainder, &v61, &remainder, v39, CGRectMinYEdge);
    leadingDetail = self->_leadingDetail;
    PKContentAlignmentMake();
    PKSizeAlignedInRect();
    [(UILabel *)leadingDetail setFrame:?];
    v48 = (v24 | v25) != 0 || !v20;
    separatorView = self->_separatorView;
    if (v48)
    {
      [(UIView *)separatorView setHidden:1];
      [(UILabel *)self->_trailingTitle setHidden:1];
      p_trailingDetail = &self->_trailingDetail;
    }

    else
    {
      [(UIView *)separatorView setHidden:0];
      [(UIView *)self->_separatorView setFrame:v55, v59.origin.y, PKUIPixelLength() * 3.0, v45];
      remainder = slice;
      CGRectDivide(slice, &v61, &remainder, v42, CGRectMinYEdge);
      trailingTitle = self->_trailingTitle;
      PKContentAlignmentMake();
      PKSizeAlignedInRect();
      [(UILabel *)trailingTitle setFrame:?];
      CGRectDivide(remainder, &v61, &remainder, 2.0, CGRectMinYEdge);
      CGRectDivide(remainder, &v61, &remainder, v41, CGRectMinYEdge);
      p_trailingDetail = &self->_trailingDetail;
      trailingDetail = self->_trailingDetail;
      PKContentAlignmentMake();
      PKSizeAlignedInRect();
      [(UILabel *)trailingDetail setFrame:?];
      [(UILabel *)self->_trailingTitle setHidden:0];
    }

    [(UILabel *)*p_trailingDetail setHidden:v48];
    [(PKContinuousButton *)self->_payButton setHidden:(v24 | v25) == 0];
    if (v24 | v25)
    {
      PKContentAlignmentMake();
      PKSizeAlignedInRect();
      [(PKContinuousButton *)self->_payButton setFrame:?];
    }
  }

  return v45 + v58 * 2.0;
}

- (void)setButtonTitle:(id)a3
{
  v18 = a3;
  v4 = [(PKContinuousButton *)self->_payButton titleLabel];
  v5 = [v4 text];
  v6 = [v5 length];

  v7 = [v18 length];
  if (v6 <= 3 && v7 >= 4)
  {
    payButton = self->_payButton;
    if (payButton)
    {
      [(PKContinuousButton *)payButton removeFromSuperview];
    }

    v14 = [(PKDashboardViewControllerFooterView *)self _payButtonWithCircleLayout:0];
    v15 = self->_payButton;
    self->_payButton = v14;

    [(PKDashboardViewControllerFooterView *)self addSubview:self->_payButton];
    goto LABEL_20;
  }

  v9 = v7;
  v10 = v7 < 4;
  v11 = self->_payButton;
  if (v6 >= 4 && v9 <= 3)
  {
    if (v11)
    {
      [(PKContinuousButton *)v11 removeFromSuperview];
    }

    v10 = 1;
LABEL_19:
    v16 = [(PKDashboardViewControllerFooterView *)self _payButtonWithCircleLayout:v10];
    v17 = self->_payButton;
    self->_payButton = v16;

    [(PKDashboardViewControllerFooterView *)self addSubview:self->_payButton];
    if (!v9)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (!v11)
  {
    goto LABEL_19;
  }

  if (v9)
  {
LABEL_20:
    [(PKDashboardViewControllerFooterView *)self setPayButtonImage:0];
  }

LABEL_21:
  [(PKContinuousButton *)self->_payButton setTitle:v18 forState:0];
}

- (void)setButtonTitleColor:(id)a3
{
  v6 = a3;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_buttonTitleColor, a3);
    [(PKContinuousButton *)self->_payButton updateTitleColorWithColor:v6];
    v5 = [(PKContinuousButton *)self->_payButton imageView];
    [v5 setTintColor:v6];
  }
}

- (void)setButtonTintColor:(id)a3
{
  v5 = a3;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_buttonTintColor, a3);
    [(PKContinuousButton *)self->_payButton setTintColor:v5];
  }
}

- (void)setPayButtonImage:(id)a3
{
  v5 = a3;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_payButtonImage, a3);
    if (v5)
    {
      [(PKDashboardViewControllerFooterView *)self setButtonTitle:0];
    }

    [(PKContinuousButton *)self->_payButton updateWithImage:self->_payButtonImage];
    [(PKDashboardViewControllerFooterView *)self setNeedsLayout];
  }
}

- (id)_payButtonWithCircleLayout:(BOOL)a3
{
  v3 = a3;
  v5 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC70], 2, 0);
  if (v3)
  {
    v14 = 0;
    *v15 = 0;
    *&v15[8] = vdupq_n_s64(2uLL);
    *&v15[24] = 2;
    v6 = [[PKContinuousButton alloc] initWithConfiguration:&v14];
    [(PKContinuousButton *)v6 setContentEdgeInsets:1.0, 1.0, 1.0, 1.0];
    v7 = 1;
  }

  else
  {
    PKFloatRoundToPixel();
    v9 = v8;
    [v5 lineHeight];
    PKFloatRoundToPixel();
    v14 = v10;
    *v15 = xmmword_1BE0B69E0;
    *&v15[16] = vdupq_n_s64(2uLL);
    v6 = [[PKContinuousButton alloc] initWithConfiguration:&v14];
    [(PKContinuousButton *)v6 setContentEdgeInsets:v9, 16.0, 24.0 - v9, 16.0];
    v7 = 0;
  }

  self->_usingCircleButton = v7;
  v11 = [(PKContinuousButton *)v6 titleLabel];
  [v11 setFont:v5];
  [v11 setAdjustsFontSizeToFitWidth:1];
  [(PKContinuousButton *)v6 updateTitleColorWithColor:self->_buttonTitleColor];
  v12 = [(PKContinuousButton *)v6 imageView];
  [v12 setTintColor:self->_buttonTitleColor];

  [(PKContinuousButton *)v6 setTintColor:self->_buttonTintColor];
  [(PKContinuousButton *)v6 addTarget:self action:sel__buttonTapped_ forControlEvents:64];

  return v6;
}

- (void)_buttonTapped:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v5 = WeakRetained;
    [WeakRetained buttonTappedInFooterView:self];
    WeakRetained = v5;
  }
}

- (void)setDetailNumberOfLines:(int64_t)a3
{
  if ([(UILabel *)self->_leadingDetail numberOfLines]!= a3)
  {
    [(UILabel *)self->_leadingDetail setNumberOfLines:a3];
    [(UILabel *)self->_trailingDetail setNumberOfLines:a3];
    [(UILabel *)self->_leadingDetail setLineBreakMode:4 * (a3 == 1)];
    [(UILabel *)self->_trailingDetail setLineBreakMode:4 * (a3 == 1)];

    [(PKDashboardViewControllerFooterView *)self setNeedsLayout];
  }
}

- (BOOL)isEqualToFooter:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    v6 = [(UILabel *)self->_leadingTitle text];
    v7 = [v5[59] text];
    v8 = v6;
    v9 = v7;
    v10 = v9;
    if (v8 == v9)
    {
    }

    else
    {
      if (v8)
      {
        v11 = v9 == 0;
      }

      else
      {
        v11 = 1;
      }

      if (v11)
      {
        v12 = 0;
        v13 = v9;
        v14 = v8;
LABEL_34:

        goto LABEL_35;
      }

      v15 = [v8 isEqualToString:v9];

      if (!v15)
      {
        v12 = 0;
LABEL_35:

        goto LABEL_36;
      }
    }

    v16 = [(UILabel *)self->_leadingDetail text];
    v17 = [v5[60] text];
    v14 = v16;
    v18 = v17;
    v13 = v18;
    if (v14 == v18)
    {
    }

    else
    {
      v12 = 0;
      v19 = v18;
      v20 = v14;
      if (!v14 || !v18)
      {
        goto LABEL_33;
      }

      v21 = [v14 isEqualToString:v18];

      if (!v21)
      {
        v12 = 0;
        goto LABEL_34;
      }
    }

    v22 = [(UILabel *)self->_trailingTitle text];
    v23 = [v5[61] text];
    v24 = v22;
    v25 = v23;
    v26 = v24;
    v19 = v25;
    v33 = v5;
    v34 = v26;
    if (v26 == v25)
    {
    }

    else
    {
      v12 = 0;
      v27 = v25;
      if (!v26 || !v25)
      {
LABEL_31:

        v5 = v33;
        goto LABEL_32;
      }

      v28 = [v26 isEqualToString:v25];

      v5 = v33;
      if (!v28)
      {
        v12 = 0;
LABEL_32:
        v20 = v34;
LABEL_33:

        goto LABEL_34;
      }
    }

    v29 = [(UILabel *)self->_trailingDetail text];
    v30 = [v5[62] text];
    v26 = v29;
    v31 = v30;
    v27 = v31;
    if (v26 == v31)
    {
      v12 = 1;
    }

    else
    {
      v12 = 0;
      if (v26 && v31)
      {
        v12 = [v26 isEqualToString:v31];
      }
    }

    goto LABEL_31;
  }

  v12 = 0;
LABEL_36:

  return v12;
}

- (PKDashboardViewControllerFooterViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NSDirectionalEdgeInsets)contentInsets
{
  top = self->_contentInsets.top;
  leading = self->_contentInsets.leading;
  bottom = self->_contentInsets.bottom;
  trailing = self->_contentInsets.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

@end