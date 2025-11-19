@interface SKUIPageTitledDividerCollectionViewCell
+ (BOOL)prefetchResourcesForViewElement:(id)a3 reason:(int64_t)a4 context:(id)a5;
+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4;
+ (CGSize)sizeThatFitsWidth:(double)a3 dividerTitle:(id)a4 context:(id)a5;
+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5;
+ (UIEdgeInsets)_contentEdgeInsetsForViewElement:(id)a3;
+ (UIEdgeInsets)_imageVerticalPaddingForViewElement:(id)a3;
+ (UIEdgeInsets)_titleVerticalPaddingForViewElement:(id)a3;
+ (double)viewElementInsetDividerHeight:(id)a3;
+ (id)_attributedStringForButtonViewElement:(id)a3 context:(id)a4;
+ (id)_attributedStringForDividerTitle:(id)a3 context:(id)a4;
+ (id)_attributedStringForViewElementText:(id)a3 style:(id)a4 context:(id)a5;
+ (void)requestLayoutForViewElement:(id)a3 width:(double)a4 context:(id)a5;
- (BOOL)setImage:(id)a3 forArtworkRequest:(id)a4 context:(id)a5;
- (SKUIPageTitledDividerCollectionViewCell)initWithFrame:(CGRect)a3;
- (id)_imageForImageViewElement:(id)a3 returningRequestIdentifier:(id *)a4 context:(id)a5;
- (void)_buttonAction:(id)a3;
- (void)applyLayoutAttributes:(id)a3;
- (void)layoutSubviews;
- (void)reloadWithViewElement:(id)a3 width:(double)a4 context:(id)a5;
- (void)setBackgroundColor:(id)a3;
- (void)setColoringWithColorScheme:(id)a3;
- (void)setContentInset:(UIEdgeInsets)a3;
- (void)setDividerTitle:(id)a3;
- (void)setTopEdgeInset:(double)a3;
@end

@implementation SKUIPageTitledDividerCollectionViewCell

- (SKUIPageTitledDividerCollectionViewCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v8)
      {
        [(SKUIPageTitledDividerCollectionViewCell *)v8 initWithFrame:v9, v10, v11, v12, v13, v14, v15];
      }
    }
  }

  v25.receiver = self;
  v25.super_class = SKUIPageTitledDividerCollectionViewCell;
  v16 = [(SKUIPageTitledDividerCollectionViewCell *)&v25 initWithFrame:x, y, width, height];
  if (v16)
  {
    v17 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
    v18 = objc_alloc_init(MEMORY[0x277D75D18]);
    leftLine = v16->_leftLine;
    v16->_leftLine = v18;

    [(UIView *)v16->_leftLine setBackgroundColor:v17];
    v20 = [(SKUIPageTitledDividerCollectionViewCell *)v16 contentView];
    [v20 addSubview:v16->_leftLine];

    v21 = objc_alloc_init(MEMORY[0x277D75D18]);
    rightLine = v16->_rightLine;
    v16->_rightLine = v21;

    [(UIView *)v16->_rightLine setBackgroundColor:v17];
    v23 = [(SKUIPageTitledDividerCollectionViewCell *)v16 contentView];
    [v23 addSubview:v16->_rightLine];

    *&v16->_internalHorizontalMargins.top = xmmword_215F3EDA0;
    *&v16->_internalHorizontalMargins.bottom = xmmword_215F3EDA0;
    v16->_buttonContentHorizontalPadding = 1.0;
  }

  return v16;
}

+ (BOOL)prefetchResourcesForViewElement:(id)a3 reason:(int64_t)a4 context:(id)a5
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIPageTitledDividerCollectionViewCell *)v5 prefetchResourcesForViewElement:v6 reason:v7 context:v8, v9, v10, v11, v12];
      }
    }
  }

  return 0;
}

+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4
{
  v6 = a4;
  v7 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v8)
      {
        [(SKUIPageTitledDividerCollectionViewCell *)v8 preferredSizeForViewElement:v9 context:v10, v11, v12, v13, v14, v15];
      }
    }
  }

  [v6 defaultItemWidthForViewElement:v7];
  [a1 sizeThatFitsWidth:v7 viewElement:v6 context:?];
  v17 = v16;
  v19 = v18;

  v20 = v17;
  v21 = v19;
  result.height = v21;
  result.width = v20;
  return result;
}

+ (void)requestLayoutForViewElement:(id)a3 width:(double)a4 context:(id)a5
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    +[SKUIPageTitledDividerCollectionViewCell requestLayoutForViewElement:width:context:];
  }
}

+ (CGSize)sizeThatFitsWidth:(double)a3 dividerTitle:(id)a4 context:(id)a5
{
  v6 = a5;
  v7 = a4;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    +[SKUIPageTitledDividerCollectionViewCell sizeThatFitsWidth:dividerTitle:context:];
  }

  v8 = [objc_opt_class() _attributedStringForDividerTitle:v7 context:v6];

  [v8 size];
  v10 = v9;
  v12 = v11;
  [v6 displayScale];

  v13 = v10;
  v14 = v12;
  result.height = v14;
  result.width = v13;
  return result;
}

+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v10)
      {
        [(SKUIPageTitledDividerCollectionViewCell *)v10 sizeThatFitsWidth:v11 viewElement:v12 context:v13, v14, v15, v16, v17];
      }
    }
  }

  v18 = *(MEMORY[0x277CBF3A8] + 8);
  v19 = [v8 button];
  if (v19)
  {
    v20 = [a1 _attributedStringForButtonViewElement:v19 context:v9];
    v21 = [v19 buttonImage];
    if (v21)
    {
      [v9 sizeForImageElement:v21];
      v23 = v22;
      [a1 _imageVerticalPaddingForViewElement:v8];
      v18 = v23 + v24 + v25;
    }
  }

  else
  {
    v21 = [v8 text];
    v26 = [v8 style];
    v20 = [a1 _attributedStringForViewElementText:v21 style:v26 context:v9];
  }

  [a1 _titleVerticalPaddingForViewElement:v8];
  v28 = v27;
  v30 = v29;
  [v20 size];
  if (v31 + v28 + v30 >= v18)
  {
    v32 = v31 + v28 + v30;
  }

  else
  {
    v32 = v18;
  }

  [a1 _contentEdgeInsetsForViewElement:v8];
  v35 = v33 + v34 + v32;
  [v9 displayScale];
  v37 = 1.0 / v36;
  if ([v8 dividerType] == 2)
  {
    [SKUIPageTitledDividerCollectionViewCell viewElementInsetDividerHeight:v8];
    v35 = v35 + v38 + v37 * 2.0;
  }

  if (v35 < v37)
  {
    v35 = v37;
  }

  v39 = a3;
  v40 = v35;
  result.height = v40;
  result.width = v39;
  return result;
}

+ (double)viewElementInsetDividerHeight:(id)a3
{
  v3 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v4)
      {
        [(SKUIPageTitledDividerCollectionViewCell *)v4 viewElementInsetDividerHeight:v5, v6, v7, v8, v9, v10, v11];
      }
    }
  }

  v12 = [v3 style];
  v13 = [v12 itemHeight];

  if (v13)
  {
    [v13 floatValue];
    v15 = v14;
  }

  else
  {
    v15 = 7.0;
  }

  return v15;
}

- (void)reloadWithViewElement:(id)a3 width:(double)a4 context:(id)a5
{
  v7 = a3;
  v8 = a5;
  dividerButtonImageRequestIdentifier = self->_dividerButtonImageRequestIdentifier;
  self->_dividerButtonImageRequestIdentifier = 0;

  v10 = [v7 style];
  v11 = [v10 ikBorderColor];
  v12 = [v8 tintColor];
  v13 = SKUIViewElementPlainColorWithIKColor(v11, v12);

  leftLine = self->_leftLine;
  if (v13)
  {
    [(UIView *)self->_leftLine setBackgroundColor:v13];
    [(UIView *)self->_rightLine setBackgroundColor:v13];
  }

  else
  {
    v15 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
    [(UIView *)leftLine setBackgroundColor:v15];

    rightLine = self->_rightLine;
    v17 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
    [(UIView *)rightLine setBackgroundColor:v17];
  }

  [objc_opt_class() _contentEdgeInsetsForViewElement:v7];
  self->_contentEdgeInsets.top = v18;
  self->_contentEdgeInsets.left = v19;
  self->_contentEdgeInsets.bottom = v20;
  self->_contentEdgeInsets.right = v21;
  v22 = [v7 button];
  buttonViewElement = self->_buttonViewElement;
  self->_buttonViewElement = v22;

  self->_buttonContentHorizontalPadding = 1.0;
  [objc_opt_class() _titleVerticalPaddingForViewElement:v7];
  self->_titleVerticalPadding.top = v24;
  self->_titleVerticalPadding.left = v25;
  self->_titleVerticalPadding.bottom = v26;
  self->_titleVerticalPadding.right = v27;
  [objc_opt_class() _imageVerticalPaddingForViewElement:v7];
  self->_imageVerticalPadding.top = v28;
  self->_imageVerticalPadding.left = v29;
  self->_imageVerticalPadding.bottom = v30;
  self->_imageVerticalPadding.right = v31;
  if (self->_buttonViewElement)
  {
    dividerLabel = self->_dividerLabel;
    if (dividerLabel)
    {
      [(UILabel *)dividerLabel removeFromSuperview];
      v33 = self->_dividerLabel;
      self->_dividerLabel = 0;
    }

    if (!self->_dividerButton)
    {
      v34 = [MEMORY[0x277D75220] buttonWithType:1];
      dividerButton = self->_dividerButton;
      self->_dividerButton = v34;

      [(UIButton *)self->_dividerButton addTarget:self action:sel__buttonAction_ forControlEvents:64];
      v36 = self->_dividerButton;
      v37 = [(SKUIPageTitledDividerCollectionViewCell *)self backgroundColor];
      [(UIButton *)v36 setBackgroundColor:v37];

      LODWORD(v38) = -1102263091;
      [(UIButton *)self->_dividerButton setCharge:v38];
      [(UIButton *)self->_dividerButton setContentHorizontalAlignment:1];
      v39 = [(SKUIPageTitledDividerCollectionViewCell *)self contentView];
      [v39 addSubview:self->_dividerButton];
    }

    v40 = [(SKUIButtonViewElement *)self->_buttonViewElement buttonTitleStyle];
    v41 = v40;
    if (v40)
    {
      v42 = v40;
    }

    else
    {
      v42 = [(SKUIButtonViewElement *)self->_buttonViewElement style];
    }

    v91 = v42;

    v58 = [objc_opt_class() _attributedStringForButtonViewElement:self->_buttonViewElement context:v8];
    v88 = v13;
    v89 = v10;
    if ([v58 length])
    {
      v59 = [v58 attribute:*MEMORY[0x277D740C0] atIndex:0 effectiveRange:0];
    }

    else
    {
      v59 = 0;
    }

    v60 = [(SKUIButtonViewElement *)self->_buttonViewElement buttonImage];
    v98[0] = 0;
    v90 = v8;
    v61 = [(SKUIPageTitledDividerCollectionViewCell *)self _imageForImageViewElement:v60 returningRequestIdentifier:v98 context:v8];
    v62 = v98[0];
    v87 = v98[0];

    objc_storeStrong(&self->_dividerButtonImageRequestIdentifier, v62);
    v63 = [(SKUIButtonViewElement *)self->_buttonViewElement buttonImage];
    v64 = [v63 style];

    v65 = [v64 ikColor];
    v66 = SKUIViewElementPlainColorWithIKColor(v65, 0);
    if (v66)
    {
      v67 = [v61 _flatImageWithColor:v66];
      v68 = [v67 imageWithRenderingMode:2];
    }

    else
    {
      v68 = [v61 imageWithRenderingMode:2];
    }

    v69 = MEMORY[0x277D75D18];
    v94[0] = MEMORY[0x277D85DD0];
    v94[1] = 3221225472;
    v94[2] = __79__SKUIPageTitledDividerCollectionViewCell_reloadWithViewElement_width_context___block_invoke;
    v94[3] = &unk_2781F96E8;
    v94[4] = self;
    v95 = v58;
    v96 = v59;
    v97 = v68;
    v70 = v68;
    v86 = v59;
    v71 = v58;
    [v69 performWithoutAnimation:v94];
    v93 = 0;
    v72 = SKUIViewElementPaddingForStyle(v91, &v93);
    if (v93 == 1)
    {
      v76 = v72;
      v77 = v73;
      v78 = v74;
      v79 = v75;
      v92 = 0;
      v80 = SKUIViewElementPaddingForStyle(v64, &v92);
      if ((v92 & 1) == 0)
      {
        v83 = v79;
LABEL_32:
        self->_internalHorizontalMargins.top = v76;
        self->_internalHorizontalMargins.left = v77;
        self->_internalHorizontalMargins.bottom = v78;
        self->_internalHorizontalMargins.right = v83;
        v84 = 1;
LABEL_33:

        v10 = v89;
        v8 = v90;
        v13 = v88;
        if ((v84 & 1) == 0)
        {
          *&self->_internalHorizontalMargins.top = xmmword_215F3EDA0;
          *&self->_internalHorizontalMargins.bottom = xmmword_215F3EDA0;
        }

        goto LABEL_37;
      }
    }

    else
    {
      v92 = 0;
      v80 = SKUIViewElementPaddingForStyle(v64, &v92);
      v84 = 0;
      if (v92 != 1)
      {
        goto LABEL_33;
      }

      v76 = *MEMORY[0x277D768C8];
      v77 = *(MEMORY[0x277D768C8] + 8);
      v78 = *(MEMORY[0x277D768C8] + 16);
      v79 = *(MEMORY[0x277D768C8] + 24);
    }

    if (v93 == 1)
    {
      *(&self->super.super.super.super.super.isa + v85) = v79 + v81;
    }

    else
    {
      v76 = v80;
      v77 = v81;
      v78 = v82;
    }

    goto LABEL_32;
  }

  v43 = self->_dividerButton;
  if (v43)
  {
    [(UIButton *)v43 removeFromSuperview];
    v44 = self->_dividerButton;
    self->_dividerButton = 0;
  }

  v45 = objc_opt_class();
  v46 = [v7 text];
  v47 = [v45 _attributedStringForViewElementText:v46 style:v10 context:v8];

  [v10 elementPadding];
  self->_internalHorizontalMargins.top = v48;
  self->_internalHorizontalMargins.left = v49;
  self->_internalHorizontalMargins.bottom = v50;
  self->_internalHorizontalMargins.right = v51;
  v52 = self->_dividerLabel;
  if (v47)
  {
    if (!v52)
    {
      v53 = objc_alloc_init(MEMORY[0x277D756B8]);
      v54 = self->_dividerLabel;
      self->_dividerLabel = v53;

      v55 = self->_dividerLabel;
      v56 = [(SKUIPageTitledDividerCollectionViewCell *)self backgroundColor];
      [(UILabel *)v55 setBackgroundColor:v56];

      v57 = [(SKUIPageTitledDividerCollectionViewCell *)self contentView];
      [v57 addSubview:self->_dividerLabel];

      v52 = self->_dividerLabel;
    }

    [(UILabel *)v52 setHidden:0];
    [(UILabel *)self->_dividerLabel setAttributedText:v47];
  }

  else
  {
    [(UILabel *)v52 setHidden:1];
  }

LABEL_37:
  [(SKUIPageTitledDividerCollectionViewCell *)self setNeedsLayout];
}

uint64_t __79__SKUIPageTitledDividerCollectionViewCell_reloadWithViewElement_width_context___block_invoke(void *a1)
{
  [*(a1[4] + 728) setAttributedTitle:a1[5] forState:0];
  v2 = [*(a1[4] + 728) titleLabel];
  [v2 _setTextColorFollowsTintColor:a1[6] == 0];

  v3 = *(a1[4] + 728);
  v4 = a1[7];

  return [v3 setImage:v4 forState:0];
}

- (void)setContentInset:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentInset.top, v3), vceqq_f64(*&self->_contentInset.bottom, v4)))) & 1) == 0)
  {
    self->_contentInset = a3;
    [(SKUIPageTitledDividerCollectionViewCell *)self setNeedsLayout];
  }
}

- (BOOL)setImage:(id)a3 forArtworkRequest:(id)a4 context:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (self->_dividerButtonImageRequestIdentifier && (v11 = [v9 requestIdentifier], v11 == -[NSNumber unsignedLongLongValue](self->_dividerButtonImageRequestIdentifier, "unsignedLongLongValue")))
  {
    [(SKUIPageTitledDividerCollectionViewCell *)self setNeedsLayout];
    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)setColoringWithColorScheme:(id)a3
{
  if (a3)
  {
    v13 = [a3 primaryTextColor];
    [(UILabel *)self->_dividerLabel setTextColor:v13];
    [(UIButton *)self->_dividerButton setTitleColor:v13 forState:0];
    [(UIButton *)self->_dividerButton setTintColor:v13];
    [(UIView *)self->_leftLine setBackgroundColor:v13];
    rightLine = self->_rightLine;
    v5 = v13;
  }

  else
  {
    dividerLabel = self->_dividerLabel;
    v7 = [MEMORY[0x277D75348] blackColor];
    [(UILabel *)dividerLabel setTextColor:v7];

    dividerButton = self->_dividerButton;
    v9 = [(SKUIPageTitledDividerCollectionViewCell *)self tintColor];
    [(UIButton *)dividerButton setTitleColor:v9 forState:0];

    leftLine = self->_leftLine;
    v11 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
    [(UIView *)leftLine setBackgroundColor:v11];

    v12 = self->_rightLine;
    v5 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
    rightLine = v12;
    v13 = v5;
  }

  [(UIView *)rightLine setBackgroundColor:v5];
}

- (void)setDividerTitle:(id)a3
{
  v15 = a3;
  v4 = [(SKUIPageTitledDividerCollectionViewCell *)self dividerTitle];
  if (v4 != v15 && ([v15 isEqualToString:v4] & 1) == 0)
  {
    dividerLabel = self->_dividerLabel;
    if (v15)
    {
      if (!dividerLabel)
      {
        v6 = objc_alloc_init(MEMORY[0x277D756B8]);
        v7 = self->_dividerLabel;
        self->_dividerLabel = v6;

        v8 = self->_dividerLabel;
        v9 = [(SKUIPageTitledDividerCollectionViewCell *)self backgroundColor];
        [(UILabel *)v8 setBackgroundColor:v9];

        v10 = self->_dividerLabel;
        v11 = SKUIFontPreferredFontForTextStyle(1);
        [(UILabel *)v10 setFont:v11];

        v12 = self->_dividerLabel;
        v13 = [MEMORY[0x277D75348] blackColor];
        [(UILabel *)v12 setTextColor:v13];

        v14 = [(SKUIPageTitledDividerCollectionViewCell *)self contentView];
        [v14 addSubview:self->_dividerLabel];

        dividerLabel = self->_dividerLabel;
      }

      [(UILabel *)dividerLabel setHidden:0];
      [(UILabel *)self->_dividerLabel setText:v15];
    }

    else
    {
      [(UILabel *)dividerLabel setHidden:1];
    }

    [(SKUIPageTitledDividerCollectionViewCell *)self setNeedsLayout];
  }
}

- (void)setTopEdgeInset:(double)a3
{
  if (vabdd_f64(self->_contentEdgeInsets.top, a3) > 0.00000011920929)
  {
    self->_contentEdgeInsets.top = a3;
    [(SKUIPageTitledDividerCollectionViewCell *)self setNeedsLayout];
  }
}

- (void)applyLayoutAttributes:(id)a3
{
  v4 = a3;
  v5 = [v4 backgroundColor];
  [(SKUIPageTitledDividerCollectionViewCell *)self setBackgroundColor:v5];

  v6.receiver = self;
  v6.super_class = SKUIPageTitledDividerCollectionViewCell;
  [(SKUIPageTitledDividerCollectionViewCell *)&v6 applyLayoutAttributes:v4];
}

- (void)layoutSubviews
{
  v58.receiver = self;
  v58.super_class = SKUIPageTitledDividerCollectionViewCell;
  [(SKUIPageTitledDividerCollectionViewCell *)&v58 layoutSubviews];
  [(SKUIPageTitledDividerCollectionViewCell *)self bounds];
  v4 = v3;
  v5 = v3 + -40.0 - self->_internalHorizontalMargins.left;
  right = self->_internalHorizontalMargins.right;
  v7 = [(SKUIPageTitledDividerCollectionViewCell *)self traitCollection];
  [v7 displayScale];
  v9 = v8;

  if (v9 <= 0.00000011920929)
  {
    v10 = [MEMORY[0x277D759A0] mainScreen];
    [v10 scale];
    v9 = v11;
  }

  v12 = v5 - right;
  p_dividerButton = &self->_dividerButton;
  dividerButton = self->_dividerButton;
  if (dividerButton)
  {
    v15 = [(UIButton *)dividerButton imageForState:0];

    [*p_dividerButton layoutIfNeeded];
    v16 = *p_dividerButton;
    if (v15)
    {
      v17 = [v16 imageView];
      [v17 sizeThatFits:{1.79769313e308, 1.79769313e308}];
      v19 = v18;

      v20 = [*p_dividerButton titleLabel];
      [v20 sizeThatFits:{1.79769313e308, 1.79769313e308}];
      v22 = v21;

      v23 = self->_titleVerticalPadding.top - self->_titleVerticalPadding.bottom;
      v24 = self->_imageVerticalPadding.top - self->_imageVerticalPadding.bottom;
      buttonContentHorizontalPadding = self->_buttonContentHorizontalPadding;
      [*p_dividerButton setTitleEdgeInsets:{v23, -v19, -v23, v19}];
      [*p_dividerButton setImageEdgeInsets:{v24, v22 + self->_buttonContentHorizontalPadding, -v24, -(v22 + self->_buttonContentHorizontalPadding)}];
    }

    else
    {
      v34 = *MEMORY[0x277D768C8];
      v35 = *(MEMORY[0x277D768C8] + 8);
      v37 = *(MEMORY[0x277D768C8] + 16);
      v36 = *(MEMORY[0x277D768C8] + 24);
      [v16 setImageEdgeInsets:{*MEMORY[0x277D768C8], v35, v37, v36}];
      [*p_dividerButton setTitleEdgeInsets:{v34, v35, v37, v36}];
      buttonContentHorizontalPadding = 0.0;
    }

    [*p_dividerButton frame];
    v27 = v38;
    v29 = v39;
    [*p_dividerButton sizeThatFits:{1.79769313e308, 1.79769313e308}];
    v59.size.width = v40;
    v33 = v41;
    v59.origin.x = v27;
    v59.origin.y = v29;
    v59.size.height = v33;
    v42 = buttonContentHorizontalPadding + CGRectGetWidth(v59);
    if (v42 >= v12)
    {
      v31 = v12;
    }

    else
    {
      v31 = v42;
    }
  }

  else
  {
    p_dividerButton = &self->_dividerLabel;
    [(UILabel *)self->_dividerLabel frame];
    v27 = v26;
    v29 = v28;
    [(UILabel *)self->_dividerLabel sizeThatFits:v12, 1.79769313e308];
    v31 = v30;
    v33 = v32;
  }

  v43 = v27;
  v44 = v29;
  v45 = v33;
  CGRectGetWidth(*(&v31 - 2));
  UICeilToViewScale();
  UIRectCenteredXInRectScale();
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;
  [*p_dividerButton setFrame:*&v9];
  v54 = 1.0 / v9;
  UIFloorToViewScale();
  v56 = v49 + v55;
  v60.origin.x = v47;
  v60.origin.y = v49;
  v60.size.width = v51;
  v60.size.height = v53;
  v57 = CGRectGetMaxX(v60) + self->_internalHorizontalMargins.right;
  [(UIView *)self->_leftLine setFrame:self->_contentEdgeInsets.left + self->_contentInset.left, v56, v47 - self->_internalHorizontalMargins.left - self->_contentEdgeInsets.left - self->_contentInset.left, v54];
  [(UIView *)self->_rightLine setFrame:v57, v56, v4 - v57 - self->_contentEdgeInsets.right - self->_contentInset.right, v54];
}

- (void)setBackgroundColor:(id)a3
{
  dividerLabel = self->_dividerLabel;
  v5 = a3;
  [(UILabel *)dividerLabel setBackgroundColor:v5];
  [(UIButton *)self->_dividerButton setBackgroundColor:v5];
  v6.receiver = self;
  v6.super_class = SKUIPageTitledDividerCollectionViewCell;
  [(SKUIPageTitledDividerCollectionViewCell *)&v6 setBackgroundColor:v5];
}

- (void)_buttonAction:(id)a3
{
  buttonViewElement = self->_buttonViewElement;
  if (buttonViewElement)
  {
    [(SKUIButtonViewElement *)buttonViewElement dispatchEventOfType:2 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:0];
  }
}

+ (id)_attributedStringForButtonViewElement:(id)a3 context:(id)a4
{
  v4 = a3;
  v5 = [v4 buttonTitleStyle];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [v4 style];
  }

  v8 = v7;

  v9 = SKUIViewElementPlainColorWithStyle(v8, 0);
  v10 = SKUIViewElementFontWithStyle(v8);
  if (!v10)
  {
    v10 = SKUIFontPreferredFontForTextStyle(1);
  }

  v11 = [v4 buttonText];
  v12 = [v4 style];
  v13 = [v11 attributedStringWithDefaultFont:v10 foregroundColor:v9 style:v12];

  return v13;
}

+ (id)_attributedStringForDividerTitle:(id)a3 context:(id)a4
{
  v13[2] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = MEMORY[0x277CCA898];
    v5 = a3;
    v6 = [v4 alloc];
    v12[0] = *MEMORY[0x277D740C0];
    v7 = [MEMORY[0x277D75348] blackColor];
    v13[0] = v7;
    v12[1] = *MEMORY[0x277D740A8];
    v8 = SKUIFontPreferredFontForTextStyle(1);
    v13[1] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
    v10 = [v6 initWithString:v5 attributes:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)_attributedStringForViewElementText:(id)a3 style:(id)a4 context:(id)a5
{
  v7 = a4;
  v8 = a5;
  if (a3)
  {
    v9 = a3;
    v10 = SKUIViewElementFontWithStyle(v7);
    if (!v10)
    {
      v10 = SKUIFontPreferredFontForTextStyle(1);
    }

    v11 = [v8 tintColor];
    v12 = SKUIViewElementPlainColorWithStyle(v7, v11);
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = [MEMORY[0x277D75348] blackColor];
    }

    v16 = v14;

    v15 = [v9 attributedStringWithDefaultFont:v10 foregroundColor:v16 style:v7];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (UIEdgeInsets)_contentEdgeInsetsForViewElement:(id)a3
{
  v3 = [a3 style];
  v4 = [v3 valueForStyle:*MEMORY[0x277D1AFE8]];
  v5 = v4;
  if (v4)
  {
    [v4 UIEdgeInsetsValue];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
  }

  else
  {
    v7 = 0.0;
    v11 = 15.0;
    v9 = 0.0;
    v13 = 0.0;
  }

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.right = v17;
  result.bottom = v16;
  result.left = v15;
  result.top = v14;
  return result;
}

+ (UIEdgeInsets)_imageVerticalPaddingForViewElement:(id)a3
{
  v4 = *MEMORY[0x277D768C8];
  v3 = *(MEMORY[0x277D768C8] + 8);
  v6 = *(MEMORY[0x277D768C8] + 16);
  v5 = *(MEMORY[0x277D768C8] + 24);
  v7 = [a3 button];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 buttonImage];
    v18 = 0;
    v10 = [v9 style];
    v11 = SKUIViewElementPaddingForStyle(v10, &v18);
    v13 = v12;

    if (v18)
    {
      v6 = v13;
      v4 = v11;
    }
  }

  v14 = v4;
  v15 = v3;
  v16 = v6;
  v17 = v5;
  result.right = v17;
  result.bottom = v16;
  result.left = v15;
  result.top = v14;
  return result;
}

+ (UIEdgeInsets)_titleVerticalPaddingForViewElement:(id)a3
{
  v3 = a3;
  v4 = [v3 button];
  v5 = v4;
  v19 = 0;
  if (!v4)
  {
    v6 = [v3 style];
    v7 = v6;
LABEL_5:
    v8 = SKUIViewElementPaddingForStyle(v6, &v19);
    v10 = v9;
    goto LABEL_7;
  }

  v6 = [v4 buttonTitleStyle];
  v7 = v6;
  if (v6)
  {
    goto LABEL_5;
  }

  v11 = [v5 style];
  v8 = SKUIViewElementPaddingForStyle(v11, &v19);
  v10 = v12;

LABEL_7:
  v13 = *(MEMORY[0x277D768C8] + 8);
  v14 = *(MEMORY[0x277D768C8] + 24);
  if (!v19)
  {
    v10 = *(MEMORY[0x277D768C8] + 16);
    v8 = *MEMORY[0x277D768C8];
  }

  v15 = v8;
  v16 = v13;
  v17 = v10;
  v18 = v14;
  result.right = v18;
  result.bottom = v17;
  result.left = v16;
  result.top = v15;
  return result;
}

- (id)_imageForImageViewElement:(id)a3 returningRequestIdentifier:(id *)a4 context:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [v7 resourceName];
  v10 = v9;
  if (v9)
  {
    v11 = SKUIImageWithResourceName(v9);
    v12 = 0;
  }

  else
  {
    v12 = [v8 requestIdentifierForViewElement:v7];
    if (!v12 || ([v8 resourceLoader], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "cachedResourceForRequestIdentifier:", objc_msgSend(v12, "unsignedIntegerValue")), v11 = objc_claimAutoreleasedReturnValue(), v13, !v11))
    {
      [v8 loadImageForImageElement:v7 reason:1];
      v11 = 0;
    }
  }

  if (a4)
  {
    v14 = v12;
    *a4 = v12;
  }

  return v11;
}

+ (void)requestLayoutForViewElement:width:context:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "+[SKUIPageTitledDividerCollectionViewCell requestLayoutForViewElement:width:context:]";
}

+ (void)sizeThatFitsWidth:dividerTitle:context:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "+[SKUIPageTitledDividerCollectionViewCell sizeThatFitsWidth:dividerTitle:context:]";
}

@end