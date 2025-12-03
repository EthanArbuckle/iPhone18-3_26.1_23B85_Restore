@interface PKDashboardViewControllerFooterView
- (BOOL)isEqualToFooter:(id)footer;
- (CGSize)sizeThatFits:(CGSize)fits;
- (NSDirectionalEdgeInsets)contentInsets;
- (PKDashboardViewControllerFooterView)initWithFrame:(CGRect)frame;
- (PKDashboardViewControllerFooterViewDelegate)delegate;
- (double)layoutWithBounds:(CGRect)bounds isTemplateLayout:(BOOL)layout;
- (id)_payButtonWithCircleLayout:(BOOL)layout;
- (void)_buttonTapped:(id)tapped;
- (void)_createSubviews;
- (void)layoutSubviews;
- (void)resetFonts;
- (void)setButtonTintColor:(id)color;
- (void)setButtonTitle:(id)title;
- (void)setButtonTitleColor:(id)color;
- (void)setDetailNumberOfLines:(int64_t)lines;
- (void)setPayButtonImage:(id)image;
@end

@implementation PKDashboardViewControllerFooterView

- (PKDashboardViewControllerFooterView)initWithFrame:(CGRect)frame
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = PKDashboardViewControllerFooterView;
  v3 = [(PKDashboardViewControllerFooterView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
  systemGrayColor = [MEMORY[0x1E69DC888] systemGrayColor];
  v3 = objc_alloc(MEMORY[0x1E69DCC10]);
  v4 = *MEMORY[0x1E695F058];
  v5 = *(MEMORY[0x1E695F058] + 8);
  v6 = *(MEMORY[0x1E695F058] + 16);
  v7 = *(MEMORY[0x1E695F058] + 24);
  v8 = [v3 initWithFrame:{*MEMORY[0x1E695F058], v5, v6, v7}];
  leadingTitle = self->_leadingTitle;
  self->_leadingTitle = v8;

  [(UILabel *)self->_leadingTitle setNumberOfLines:1];
  [(UILabel *)self->_leadingTitle setTextColor:systemGrayColor];
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
  [(UILabel *)self->_trailingTitle setTextColor:systemGrayColor];
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
  systemLightGrayColor = [MEMORY[0x1E69DC888] systemLightGrayColor];
  [(UIView *)v18 setBackgroundColor:systemLightGrayColor];

  [(PKDashboardViewControllerFooterView *)self addSubview:self->_separatorView];
  v20 = objc_alloc_init(MEMORY[0x1E69DD250]);
  topSeparatorView = self->_topSeparatorView;
  self->_topSeparatorView = v20;

  v22 = self->_topSeparatorView;
  systemLightGrayColor2 = [MEMORY[0x1E69DC888] systemLightGrayColor];
  [(UIView *)v22 setBackgroundColor:systemLightGrayColor2];

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

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
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

- (double)layoutWithBounds:(CGRect)bounds isTemplateLayout:(BOOL)layout
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  _shouldReverseLayoutDirection = [(PKDashboardViewControllerFooterView *)self _shouldReverseLayoutDirection];
  v10 = _shouldReverseLayoutDirection;
  if (_shouldReverseLayoutDirection)
  {
    v11 = CGRectMaxXEdge;
  }

  else
  {
    v11 = CGRectMinXEdge;
  }

  if (_shouldReverseLayoutDirection)
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
  text = [(UILabel *)self->_trailingTitle text];
  if ([text length])
  {
    v20 = 1;
  }

  else
  {
    text2 = [(UILabel *)self->_trailingDetail text];
    v20 = [text2 length] != 0;
  }

  titleLabel = [(PKContinuousButton *)self->_payButton titleLabel];
  text3 = [titleLabel text];
  v24 = [text3 length];

  currentImage = [(PKContinuousButton *)self->_payButton currentImage];

  v26 = 0x404B000000000000;
  if (v24 >= 4 && !currentImage)
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
  if (v24 | currentImage)
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
  if (!(v24 | currentImage) && v20)
  {
    [(UILabel *)self->_trailingTitle pkui_sizeThatFits:slice.size.width, v59.size.height];
    v42 = v43;
    [(UILabel *)self->_trailingDetail pkui_sizeThatFits:slice.size.width, v59.size.height];
    v41 = v44;
  }

  v45 = fmax(v40, v41 + v42 + 2.0);
  if (!layout)
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
    v48 = (v24 | currentImage) != 0 || !v20;
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
    [(PKContinuousButton *)self->_payButton setHidden:(v24 | currentImage) == 0];
    if (v24 | currentImage)
    {
      PKContentAlignmentMake();
      PKSizeAlignedInRect();
      [(PKContinuousButton *)self->_payButton setFrame:?];
    }
  }

  return v45 + v58 * 2.0;
}

- (void)setButtonTitle:(id)title
{
  titleCopy = title;
  titleLabel = [(PKContinuousButton *)self->_payButton titleLabel];
  text = [titleLabel text];
  v6 = [text length];

  v7 = [titleCopy length];
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
  [(PKContinuousButton *)self->_payButton setTitle:titleCopy forState:0];
}

- (void)setButtonTitleColor:(id)color
{
  colorCopy = color;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_buttonTitleColor, color);
    [(PKContinuousButton *)self->_payButton updateTitleColorWithColor:colorCopy];
    imageView = [(PKContinuousButton *)self->_payButton imageView];
    [imageView setTintColor:colorCopy];
  }
}

- (void)setButtonTintColor:(id)color
{
  colorCopy = color;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_buttonTintColor, color);
    [(PKContinuousButton *)self->_payButton setTintColor:colorCopy];
  }
}

- (void)setPayButtonImage:(id)image
{
  imageCopy = image;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_payButtonImage, image);
    if (imageCopy)
    {
      [(PKDashboardViewControllerFooterView *)self setButtonTitle:0];
    }

    [(PKContinuousButton *)self->_payButton updateWithImage:self->_payButtonImage];
    [(PKDashboardViewControllerFooterView *)self setNeedsLayout];
  }
}

- (id)_payButtonWithCircleLayout:(BOOL)layout
{
  layoutCopy = layout;
  v5 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC70], 2, 0);
  if (layoutCopy)
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
  titleLabel = [(PKContinuousButton *)v6 titleLabel];
  [titleLabel setFont:v5];
  [titleLabel setAdjustsFontSizeToFitWidth:1];
  [(PKContinuousButton *)v6 updateTitleColorWithColor:self->_buttonTitleColor];
  imageView = [(PKContinuousButton *)v6 imageView];
  [imageView setTintColor:self->_buttonTitleColor];

  [(PKContinuousButton *)v6 setTintColor:self->_buttonTintColor];
  [(PKContinuousButton *)v6 addTarget:self action:sel__buttonTapped_ forControlEvents:64];

  return v6;
}

- (void)_buttonTapped:(id)tapped
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v5 = WeakRetained;
    [WeakRetained buttonTappedInFooterView:self];
    WeakRetained = v5;
  }
}

- (void)setDetailNumberOfLines:(int64_t)lines
{
  if ([(UILabel *)self->_leadingDetail numberOfLines]!= lines)
  {
    [(UILabel *)self->_leadingDetail setNumberOfLines:lines];
    [(UILabel *)self->_trailingDetail setNumberOfLines:lines];
    [(UILabel *)self->_leadingDetail setLineBreakMode:4 * (lines == 1)];
    [(UILabel *)self->_trailingDetail setLineBreakMode:4 * (lines == 1)];

    [(PKDashboardViewControllerFooterView *)self setNeedsLayout];
  }
}

- (BOOL)isEqualToFooter:(id)footer
{
  footerCopy = footer;
  if ([footerCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = footerCopy;
    text = [(UILabel *)self->_leadingTitle text];
    text2 = [v5[59] text];
    v8 = text;
    v9 = text2;
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

    text3 = [(UILabel *)self->_leadingDetail text];
    text4 = [v5[60] text];
    v14 = text3;
    v18 = text4;
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

    text5 = [(UILabel *)self->_trailingTitle text];
    text6 = [v5[61] text];
    v24 = text5;
    v25 = text6;
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

    text7 = [(UILabel *)self->_trailingDetail text];
    text8 = [v5[62] text];
    v26 = text7;
    v31 = text8;
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