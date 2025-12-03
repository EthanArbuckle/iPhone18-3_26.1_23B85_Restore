@interface PKFDICSignageView
- (BOOL)isEqualToFooter:(id)footer;
- (CGSize)_layoutWithBounds:(CGRect)bounds isTemplateLayout:(BOOL)layout;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKFDICSignageView)initWithConfiguration:(id)configuration;
- (PKFDICSignageView)initWithFeature:(unint64_t)feature displayingBankName:(BOOL)name;
- (UIEdgeInsets)contentInsets;
- (id)_fdicInsuredAttributedStringWithLineBreak:(int64_t)break;
- (void)_updateFDICInsuredTextWithLineBreak:(int64_t)break;
- (void)layoutSubviews;
- (void)setContentInsets:(UIEdgeInsets)insets;
@end

@implementation PKFDICSignageView

- (PKFDICSignageView)initWithFeature:(unint64_t)feature displayingBankName:(BOOL)name
{
  if ((feature & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    nameCopy = name;
    v33.receiver = self;
    v33.super_class = PKFDICSignageView;
    v6 = *MEMORY[0x1E695F058];
    v7 = *(MEMORY[0x1E695F058] + 8);
    v8 = *(MEMORY[0x1E695F058] + 16);
    v9 = *(MEMORY[0x1E695F058] + 24);
    v10 = [(PKFDICSignageView *)&v33 initWithFrame:*MEMORY[0x1E695F058], v7, v8, v9];
    p_isa = &v10->super.super.super.isa;
    if (v10)
    {
      v10->_feature = feature;
      v10->_displayingBankName = nameCopy;
      v12 = [objc_alloc(MEMORY[0x1E69DC888]) initWithDynamicProvider:&__block_literal_global_143];
      v13 = objc_alloc(MEMORY[0x1E69DCAE0]);
      v14 = PKUIImageNamed(@"FDICLogo");
      v15 = [v13 initWithImage:v14];
      v16 = p_isa[55];
      p_isa[55] = v15;

      [p_isa[55] setTintColor:v12];
      [p_isa addSubview:p_isa[55]];
      v17 = [objc_alloc(MEMORY[0x1E69DC888]) initWithDynamicProvider:&__block_literal_global_35_1];
      v18 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v6, v7, v8, v9}];
      v19 = p_isa[56];
      p_isa[56] = v18;

      [p_isa[56] setTextColor:v17];
      [p_isa[56] setNumberOfLines:0];
      [p_isa _updateFDICInsuredTextWithLineBreak:0];
      [p_isa addSubview:p_isa[56]];
      if (nameCopy)
      {
        v20 = objc_alloc_init(MEMORY[0x1E69DCC10]);
        v21 = p_isa[53];
        p_isa[53] = v20;

        v22 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:*MEMORY[0x1E69DDC70]];
        v23 = [v22 traitCollectionByModifyingTraits:&__block_literal_global_40];

        v24 = p_isa[53];
        v25 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD10] compatibleWithTraitCollection:v23];
        [v24 setFont:v25];

        [p_isa[53] setTextColor:v17];
        [p_isa[53] setNumberOfLines:0];
        [p_isa[53] setTextAlignment:0];
        [p_isa addSubview:p_isa[53]];
        v26 = p_isa[53];
        v27 = PKLocalizedFeatureString();
        [v26 setText:v27];

        v28 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v6, v7, v8, v9}];
        v29 = p_isa[54];
        p_isa[54] = v28;

        v30 = [objc_alloc(MEMORY[0x1E69DC888]) initWithDynamicProvider:&__block_literal_global_47];
        [p_isa[54] setBackgroundColor:v30];
        [p_isa addSubview:p_isa[54]];
      }
    }

    self = p_isa;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

id __56__PKFDICSignageView_initWithFeature_displayingBankName___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 userInterfaceStyle];
  if (v2 >= 2)
  {
    if (v2 == 2)
    {
      v2 = [MEMORY[0x1E69DC888] whiteColor];
    }
  }

  else
  {
    v2 = [objc_alloc(MEMORY[0x1E69DC888]) initWithRed:0.0 green:0.196 blue:0.337 alpha:1.0];
  }

  return v2;
}

id __56__PKFDICSignageView_initWithFeature_displayingBankName___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 userInterfaceStyle];
  if (v2 >= 2)
  {
    if (v2 == 2)
    {
      v2 = [MEMORY[0x1E69DC888] whiteColor];
    }
  }

  else
  {
    v2 = [MEMORY[0x1E69DC888] blackColor];
  }

  return v2;
}

id __56__PKFDICSignageView_initWithFeature_displayingBankName___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 userInterfaceStyle];
  if (v2 >= 2)
  {
    if (v2 == 2)
    {
      v2 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    }
  }

  else
  {
    v2 = [MEMORY[0x1E69DC888] quaternaryLabelColor];
  }

  return v2;
}

- (PKFDICSignageView)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  feature = [configurationCopy feature];
  displayingBankName = [configurationCopy displayingBankName];

  return [(PKFDICSignageView *)self initWithFeature:feature displayingBankName:displayingBankName];
}

- (void)_updateFDICInsuredTextWithLineBreak:(int64_t)break
{
  v4 = [(PKFDICSignageView *)self _fdicInsuredAttributedStringWithLineBreak:break];
  [(UILabel *)self->_fdicInsuredLabel setAttributedText:v4];
}

- (id)_fdicInsuredAttributedStringWithLineBreak:(int64_t)break
{
  v11[2] = *MEMORY[0x1E69E9840];
  v3 = PKLocalizedFeatureString();
  v4 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
  [v4 setLineHeightMultiple:0.8];
  v5 = *MEMORY[0x1E69DB648];
  v10[0] = *MEMORY[0x1E69DB688];
  v10[1] = v5;
  v11[0] = v4;
  pk_fdicSignageFont = [MEMORY[0x1E69DB878] pk_fdicSignageFont];
  v11[1] = pk_fdicSignageFont;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];

  v8 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v3 attributes:v7];

  return v8;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PKFDICSignageView;
  [(PKFDICSignageView *)&v3 layoutSubviews];
  [(PKFDICSignageView *)self bounds];
  [(PKFDICSignageView *)self _layoutWithBounds:0 isTemplateLayout:?];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(PKFDICSignageView *)self _layoutWithBounds:1 isTemplateLayout:0.0, 0.0, fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)intrinsicContentSize
{
  [(PKFDICSignageView *)self _layoutWithBounds:1 isTemplateLayout:0.0, 0.0, 1.79769313e308, 1.79769313e308];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)_layoutWithBounds:(CGRect)bounds isTemplateLayout:(BOOL)layout
{
  layoutCopy = layout;
  memset(&slice, 0, sizeof(slice));
  p_contentInsets = &self->_contentInsets;
  top = self->_contentInsets.top;
  left = self->_contentInsets.left;
  right = self->_contentInsets.right;
  v10 = bounds.origin.x + left;
  v11 = bounds.origin.y + top;
  v12 = bounds.size.width - (left + right);
  v13 = bounds.size.height - (top + self->_contentInsets.bottom);
  v47.origin.x = bounds.origin.x + left;
  v47.origin.y = bounds.origin.y + top;
  v47.size.width = v12;
  v47.size.height = v13;
  v15 = *MEMORY[0x1E695F060];
  v14 = *(MEMORY[0x1E695F060] + 8);
  if (self->_displayingBankName)
  {
    [(UILabel *)self->_bankNameLabel sizeThatFits:bounds.size.width - (left + right), 1.79769313e308];
    v17 = v16;
    v19 = v18;
    v50.origin.x = v10;
    v50.origin.y = v11;
    v50.size.width = v12;
    v50.size.height = v13;
    CGRectDivide(v50, &slice, &v47, v17, CGRectMinXEdge);
    if (!layoutCopy)
    {
      bankNameLabel = self->_bankNameLabel;
      PKContentAlignmentMake();
      PKSizeAlignedInRect();
      [(UILabel *)bankNameLabel setFrame:?];
    }

    CGRectDivide(v47, &slice, &v47, 12.0, CGRectMinXEdge);
    v21 = v15 + v17 + 12.0;
    v22 = PKUIPixelLength();
    CGRectDivide(v47, &slice, &v47, v22, CGRectMinXEdge);
    if (!layoutCopy)
    {
      divider = self->_divider;
      PKContentAlignmentMake();
      PKSizeAlignedInRect();
      [(UIView *)divider setFrame:?];
    }

    v14 = v14 + v19;
    CGRectDivide(v47, &slice, &v47, 12.0, CGRectMinXEdge);
    v15 = v21 + v22 + 12.0;
  }

  v24 = [(UIImageView *)self->_fdicLogoView image:*&v47.origin.x];
  [v24 size];
  v26 = v25;
  v28 = v27;

  CGRectDivide(v47, &slice, &v47, v26, CGRectMinXEdge);
  if (!layoutCopy)
  {
    PKSizeAlignedInRect();
    [(UIImageView *)self->_fdicLogoView setFrame:?];
  }

  CGRectDivide(v47, &slice, &v47, 9.0, CGRectMinXEdge);
  if (!self->_displayingBankName)
  {
    if (self->_forceFixedHalfWrapping)
    {
      v40 = [(PKFDICSignageView *)self _fdicInsuredAttributedStringWithLineBreak:1];
      [v40 pkui_sizeThatFits:0 withNumberOfLines:1 forceWordWrap:{1.79769313e308, 1.79769313e308}];
      v34 = v41;
      v36 = v42;
      [(UILabel *)self->_fdicInsuredLabel setAttributedText:v40];

      if (layoutCopy)
      {
        goto LABEL_23;
      }
    }

    else
    {
LABEL_19:
      [(PKFDICSignageView *)self _updateFDICInsuredTextWithLineBreak:0];
      [(UILabel *)self->_fdicInsuredLabel sizeThatFits:v47.size.width, 1.79769313e308];
      v34 = v43;
      v36 = v44;
      if (layoutCopy)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_22;
  }

  v29 = 3;
  while (1)
  {
    v30 = [(PKFDICSignageView *)self _fdicInsuredAttributedStringWithLineBreak:v29];
    v31 = v30;
    width = v47.size.width;
    if (v29)
    {
      width = 1.79769313e308;
    }

    [v30 pkui_sizeThatFits:0 withNumberOfLines:1 forceWordWrap:{width, 1.79769313e308}];
    v34 = v33;
    v36 = v35;
    PKFloatRoundToPixel();
    v38 = v37;
    PKFloatRoundToPixel();
    if (v38 <= v39)
    {
      break;
    }

    if (--v29 == -1)
    {
      goto LABEL_19;
    }
  }

  [(UILabel *)self->_fdicInsuredLabel setAttributedText:v31];

  if (!layoutCopy)
  {
LABEL_22:
    PKContentAlignmentMake();
    PKSizeAlignedInRect();
    [(UILabel *)self->_fdicInsuredLabel setFrame:?];
  }

LABEL_23:
  [(UILabel *)self->_fdicInsuredLabel setTextAlignment:0];
  v45 = v15 + v26 + 9.0 + v34 + p_contentInsets->left + p_contentInsets->right;
  v46 = fmax(fmax(v14, v28), v36) + p_contentInsets->top + p_contentInsets->bottom;
  result.height = v46;
  result.width = v45;
  return result;
}

- (void)setContentInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentInsets.top, v3), vceqq_f64(*&self->_contentInsets.bottom, v4)))) & 1) == 0)
  {
    self->_contentInsets = insets;
    [(PKFDICSignageView *)self setNeedsLayout];
  }
}

- (BOOL)isEqualToFooter:(id)footer
{
  footerCopy = footer;
  v5 = [footerCopy isMemberOfClass:objc_opt_class()] && self->_feature == *(footerCopy + 51) && self->_displayingBankName == footerCopy[416];

  return v5;
}

- (UIEdgeInsets)contentInsets
{
  top = self->_contentInsets.top;
  left = self->_contentInsets.left;
  bottom = self->_contentInsets.bottom;
  right = self->_contentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end