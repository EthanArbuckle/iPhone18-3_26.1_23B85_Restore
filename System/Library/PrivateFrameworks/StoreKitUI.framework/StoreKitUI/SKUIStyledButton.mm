@interface SKUIStyledButton
+ (CGSize)sizeForTextSize:(CGSize)a3 buttonType:(int64_t)a4;
+ (CGSize)sizeForTextSize:(CGSize)a3 buttonType:(int64_t)a4 borderStyle:(id)a5;
+ (CGSize)sizeForTextSize:(CGSize)a3 buttonType:(int64_t)a4 borderStyle:(id)a5 interiorPadding:(double)a6;
+ (int64_t)buttonTypeForElement:(id)a3;
- (BOOL)_usesTintColor;
- (BOOL)isUsingItemOfferAppearance;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (BOOL)setValuesUsingBuyButtonDescriptor:(id)a3 itemState:(id)a4 clientContext:(id)a5 animated:(BOOL)a6;
- (CGRect)hitRect;
- (CGSize)sizeThatFits:(CGSize)a3;
- (SKUIItemOfferButtonDelegate)itemOfferDelegate;
- (SKUIStyledButton)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)bigHitInsets;
- (UIEdgeInsets)buttonPadding;
- (id)_borderColor;
- (id)_borderFillColor;
- (id)_textBackgroundColor;
- (id)_textColor;
- (void)_reloadDisclosureImage;
- (void)_reloadImageView;
- (void)_reloadOverrideTextColor;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)a3;
- (void)setBorderStyle:(id)a3;
- (void)setButtonType:(int64_t)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setItemOfferDelegate:(id)a3;
- (void)setTitleLayout:(id)a3 forceRefresh:(BOOL)a4;
- (void)setUsesTintColor:(BOOL)a3;
- (void)tintColorDidChange;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
@end

@implementation SKUIStyledButton

- (SKUIStyledButton)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUIStyledButton initWithFrame:];
  }

  v9.receiver = self;
  v9.super_class = SKUIStyledButton;
  result = [(SKUIStyledButton *)&v9 initWithFrame:x, y, width, height];
  if (result)
  {
    result->_imageTextPaddingInterior = 5.0;
  }

  return result;
}

- (void)dealloc
{
  [(SKUIItemOfferButton *)self->_itemOfferButton removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];
  v3.receiver = self;
  v3.super_class = SKUIStyledButton;
  [(SKUIStyledButton *)&v3 dealloc];
}

+ (int64_t)buttonTypeForElement:(id)a3
{
  v3 = a3;
  v4 = [v3 children];
  v5 = [v4 count];

  if (v5 && ([v3 children], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "firstObject"), v7 = objc_claimAutoreleasedReturnValue(), v6, v8 = objc_msgSend(v7, "elementType"), v7, v8 == 49))
  {
    v9 = 6;
  }

  else
  {
    v9 = 5;
  }

  return v9;
}

+ (CGSize)sizeForTextSize:(CGSize)a3 buttonType:(int64_t)a4
{
  [a1 sizeForTextSize:a4 buttonType:0 borderStyle:a3.width interiorPadding:{a3.height, -1.0}];
  result.height = v5;
  result.width = v4;
  return result;
}

+ (CGSize)sizeForTextSize:(CGSize)a3 buttonType:(int64_t)a4 borderStyle:(id)a5
{
  [a1 sizeForTextSize:a4 buttonType:a5 borderStyle:a3.width interiorPadding:{a3.height, -1.0}];
  result.height = v6;
  result.width = v5;
  return result;
}

+ (CGSize)sizeForTextSize:(CGSize)a3 buttonType:(int64_t)a4 borderStyle:(id)a5 interiorPadding:(double)a6
{
  height = a3.height;
  width = a3.width;
  v10 = a5;
  v11 = v10;
  if (a4 > 4)
  {
    if ((a4 - 5) < 2)
    {
      v12 = width + 5.0;
      if (a6 >= 0.0)
      {
        width = v12 + 5.0;
      }

      else
      {
        width = v12 + a6;
      }
    }

    goto LABEL_12;
  }

  if ((a4 - 3) < 2)
  {
    width = width + 7.0;
LABEL_12:
    if (a4 != 1 && v10)
    {
      [v10 borderWidth];
      *&v13 = v13 + v13;
      v14 = floorf(*&v13);
      [v11 contentInset];
      v17 = height + v16 + v15 + v14;
      width = width + v18 + v19 + v14;
      v20 = 44.0;
      if (v17 >= 44.0)
      {
        v20 = v17;
      }

      if (a4 == 7)
      {
        height = v17;
      }

      else
      {
        height = v20;
      }
    }

    goto LABEL_22;
  }

  if (a4 != 1)
  {
    if (a4 == 2)
    {
      width = width + 9.0;
    }

    goto LABEL_12;
  }

  if (height < 26.0)
  {
    height = 26.0;
  }

  width = width + 0.0;
LABEL_22:

  v21 = width;
  v22 = height;
  result.height = v22;
  result.width = v21;
  return result;
}

- (BOOL)isUsingItemOfferAppearance
{
  itemOfferButton = self->_itemOfferButton;
  if (itemOfferButton)
  {
    LOBYTE(itemOfferButton) = [(SKUIItemOfferButton *)itemOfferButton isHidden]^ 1;
  }

  return itemOfferButton;
}

- (void)setBorderStyle:(id)a3
{
  if (self->_borderStyle != a3)
  {
    v4 = [a3 copy];
    borderStyle = self->_borderStyle;
    self->_borderStyle = v4;

    borderView = self->_borderView;
    if (self->_borderStyle)
    {
      if (!borderView)
      {
        v7 = objc_alloc_init(SKUIShapeView);
        v8 = self->_borderView;
        self->_borderView = v7;

        v9 = self->_borderView;
        v10 = [(SKUIStyledButton *)self backgroundColor];
        [(SKUIShapeView *)v9 setBackgroundColor:v10];

        [(SKUIShapeView *)self->_borderView setUserInteractionEnabled:0];
        [(SKUIStyledButton *)self insertSubview:self->_borderView atIndex:0];
        borderView = self->_borderView;
      }

      v11 = 0;
    }

    else
    {
      v11 = 1;
    }

    [(SKUIShapeView *)borderView setHidden:v11];
    attributedStringView = self->_attributedStringView;
    v13 = [(SKUIStyledButton *)self _textBackgroundColor];
    [(SKUIAttributedStringView *)attributedStringView setBackgroundColor:v13];

    [(SKUIStyledButton *)self setNeedsLayout];
  }
}

- (void)setButtonType:(int64_t)a3
{
  if (self->_buttonType != a3)
  {
    v10 = v3;
    self->_buttonType = a3;
    if ((a3 - 5) > 1)
    {
      imageView = self->_imageView;
      if (imageView)
      {
        [(SKUIImageView *)imageView removeFromSuperview];
        v9 = self->_imageView;
        self->_imageView = 0;
      }
    }

    else
    {
      [(SKUIStyledButton *)self _reloadImageView];
    }

    [(SKUIStyledButton *)self _reloadDisclosureImage:v4];

    [(SKUIStyledButton *)self setNeedsLayout];
  }
}

- (void)setTitleLayout:(id)a3 forceRefresh:(BOOL)a4
{
  v4 = a4;
  v14 = a3;
  v6 = [(SKUIStyledButton *)self titleLayout];

  v8 = v14;
  if (v6 != v14 || v4)
  {
    attributedStringView = self->_attributedStringView;
    if (!attributedStringView)
    {
      v10 = objc_alloc_init(SKUIAttributedStringView);
      v11 = self->_attributedStringView;
      self->_attributedStringView = v10;

      v12 = self->_attributedStringView;
      v13 = [(SKUIStyledButton *)self _textBackgroundColor];
      [(SKUIAttributedStringView *)v12 setBackgroundColor:v13];

      [(SKUIAttributedStringView *)self->_attributedStringView setUserInteractionEnabled:0];
      [(SKUIStyledButton *)self addSubview:self->_attributedStringView];
      attributedStringView = self->_attributedStringView;
    }

    [(SKUIAttributedStringView *)attributedStringView setLayout:v14];
    [(SKUIStyledButton *)self _reloadOverrideTextColor];
    v7 = [(SKUIStyledButton *)self _reloadDisclosureImage];
    v8 = v14;
  }

  MEMORY[0x2821F96F8](v7, v8);
}

- (void)setUsesTintColor:(BOOL)a3
{
  if (self->_usesTintColor != a3)
  {
    self->_usesTintColor = a3;
    [(SKUIStyledButton *)self _reloadOverrideTextColor];
  }
}

- (void)setItemOfferDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_itemOfferDelegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_itemOfferDelegate, obj);
    [(SKUIItemOfferButton *)self->_itemOfferButton setItemOfferDelegate:obj];
  }
}

- (BOOL)setValuesUsingBuyButtonDescriptor:(id)a3 itemState:(id)a4 clientContext:(id)a5 animated:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [objc_opt_class() usesItemOfferAppearanceForButtonType:self->_buttonType itemState:v11];
  if (v13)
  {
    p_itemOfferButton = &self->_itemOfferButton;
    itemOfferButton = self->_itemOfferButton;
    if (itemOfferButton)
    {
      if (![(SKUIItemOfferButton *)itemOfferButton setValuesUsingBuyButtonDescriptor:v10 itemState:v11 clientContext:v12 animated:v6])
      {
        v16 = 0;
LABEL_8:
        [(SKUIAttributedStringView *)self->_attributedStringView setHidden:1];
        goto LABEL_9;
      }
    }

    else
    {
      v17 = [SKUIItemOfferButton alloc];
      [(SKUIStyledButton *)self bounds];
      v18 = [(SKUIItemOfferButton *)v17 initWithFrame:?];
      v19 = *p_itemOfferButton;
      *p_itemOfferButton = v18;

      [*p_itemOfferButton addTarget:self action:sel__cancelConfirmationAction_ forControlEvents:0x10000];
      [*p_itemOfferButton addTarget:self action:sel__itemOfferButtonAction_ forControlEvents:0x20000];
      [*p_itemOfferButton addTarget:self action:sel__showConfirmationAction_ forControlEvents:0x40000];
      v20 = *p_itemOfferButton;
      v21 = [(SKUIStyledButton *)self backgroundColor];
      [v20 setBackgroundColor:v21];

      v22 = *p_itemOfferButton;
      WeakRetained = objc_loadWeakRetained(&self->_itemOfferDelegate);
      [v22 setItemOfferDelegate:WeakRetained];

      [*p_itemOfferButton setValuesUsingBuyButtonDescriptor:v10 itemState:v11 clientContext:v12 animated:v6];
      [(SKUIStyledButton *)self addSubview:*p_itemOfferButton];
    }

    [(SKUIStyledButton *)self setNeedsLayout];
    v16 = 1;
    goto LABEL_8;
  }

  v16 = [(SKUIStyledButton *)self isUsingItemOfferAppearance];
  [(SKUIAttributedStringView *)self->_attributedStringView setHidden:0];
  p_itemOfferButton = &self->_itemOfferButton;
LABEL_9:
  [*p_itemOfferButton setHidden:v13 ^ 1u];

  return v16;
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  if ([(SKUIStyledButton *)self isEnabled]!= a3)
  {
    v5.receiver = self;
    v5.super_class = SKUIStyledButton;
    [(SKUIStyledButton *)&v5 setEnabled:v3];
    [(SKUIStyledButton *)self _reloadOverrideTextColor];
    [(SKUIStyledButton *)self setNeedsLayout];
  }
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  self->_didInitialHighlightForTouch = 0;
  v4.receiver = self;
  v4.super_class = SKUIStyledButton;
  [(SKUIStyledButton *)&v4 touchesBegan:a3 withEvent:a4];
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(SKUIStyledButton *)self isTouchInside])
  {
    itemOfferButton = self->_itemOfferButton;
    if (!itemOfferButton || [(SKUIItemOfferButton *)itemOfferButton isHidden])
    {
      [(SKUIStyledButton *)self sendActionsForControlEvents:0x20000];
    }
  }

  v9.receiver = self;
  v9.super_class = SKUIStyledButton;
  [(SKUIStyledButton *)&v9 touchesEnded:v6 withEvent:v7];
}

- (CGRect)hitRect
{
  if (self->_useBigHitTarget)
  {
    v14.receiver = self;
    v14.super_class = SKUIStyledButton;
    [(SKUIStyledButton *)&v14 hitRect];
    top = self->_bigHitInsets.top;
    left = self->_bigHitInsets.left;
    v6 = v5 + left;
    v8 = v7 + top;
    v10 = v9 - (left + self->_bigHitInsets.right);
    v12 = v11 - (top + self->_bigHitInsets.bottom);
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SKUIStyledButton;
    [(SKUIStyledButton *)&v13 hitRect];
  }

  result.size.height = v12;
  result.size.width = v10;
  result.origin.y = v8;
  result.origin.x = v6;
  return result;
}

- (void)layoutSubviews
{
  [(SKUIStyledButton *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  borderView = self->_borderView;
  if (borderView && ([(SKUIShapeView *)borderView isHidden]& 1) == 0)
  {
    v12 = [(SKUIShapeView *)self->_borderView layer];
    v13 = [(SKUIStyledButton *)self _borderFillColor];
    [v12 setFillColor:{objc_msgSend(v13, "CGColor")}];

    [(SKUIButtonBorderStyle *)self->_borderStyle borderWidth];
    [v12 setLineWidth:?];
    v14 = [(SKUIButtonBorderStyle *)self->_borderStyle bezierPathWithBounds:v4, v6, v8, v10];
    [v12 setPath:{objc_msgSend(v14, "CGPath")}];

    v15 = [(SKUIStyledButton *)self _borderColor];
    [v12 setStrokeColor:{objc_msgSend(v15, "CGColor")}];

    [(SKUIShapeView *)self->_borderView setFrame:v4, v6, v8, v10];
    [(SKUIButtonBorderStyle *)self->_borderStyle contentInset];
    v4 = v4 + v16;
    v6 = v6 + v17;
    v8 = v8 - (v16 + v18);
    v10 = v10 - (v17 + v19);
  }

  buttonType = self->_buttonType;
  if (buttonType > 4)
  {
    if ((buttonType - 5) < 2)
    {
      v94 = v4;
      v98 = v6;
      [(SKUIAttributedStringView *)self->_attributedStringView sizeThatFits:v8, v10];
      v36 = v35;
      v38 = v37;
      *&v35 = (v10 - v37) * 0.5;
      v39 = floorf(*&v35);
      [(SKUIImageView *)self->_imageView sizeThatFits:v8, v10];
      v41 = v40;
      v43 = v42;
      recta = v40;
      if (self->_buttonType == 6)
      {
        v90 = v39;
        v44 = *MEMORY[0x277CBF3A0];
        v45 = *(MEMORY[0x277CBF3A0] + 8);
        v46 = *MEMORY[0x277CBF3A0];
        v47 = v45;
        v48 = v43;
        imageTextPaddingInterior = 0.0;
        if (CGRectGetMaxX(*(&v41 - 2)) > 0.0)
        {
          imageTextPaddingInterior = self->_imageTextPaddingInterior;
        }

        v100.origin.x = v44;
        v100.origin.y = v45;
        v100.size.width = recta;
        v100.size.height = v43;
        v50 = imageTextPaddingInterior + CGRectGetMaxX(v100);
        [(SKUIStyledButton *)self buttonPadding];
        v52 = v50 + v51;
        if (v36 >= v8 - (v50 + v51))
        {
          v53 = v8 - (v50 + v51);
        }

        else
        {
          v53 = v36;
        }

        [(SKUIStyledButton *)self buttonPadding];
        v55 = v54;
        v56 = v91;
      }

      else
      {
        v74 = self->_imageTextPaddingInterior;
        if (v36 >= v8 - v40 - v74)
        {
          v53 = v8 - v40 - v74;
        }

        else
        {
          v53 = v36;
        }

        [(SKUIStyledButton *)self buttonPadding];
        v52 = v75;
        v102.origin.x = v75;
        v102.origin.y = v39;
        v102.size.width = v53;
        v102.size.height = v38;
        v55 = CGRectGetMaxX(v102) + self->_imageTextPaddingInterior;
        v56 = v39;
      }

      v76 = (v10 - v43) * 0.5;
      v77 = self->_imageYAdjustment + floorf(v76);
      attributedStringView = self->_attributedStringView;
      v79 = v53;
      v6 = v98;
      SKUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(v52, v56, v79, v38, v94, v98, v8, v10);
      v104 = CGRectIntegral(v103);
      [(SKUIAttributedStringView *)attributedStringView setFrame:v104.origin.x, v104.origin.y, v104.size.width, v104.size.height];
      imageView = self->_imageView;
      v66 = v55;
      v67 = v77;
      v63 = recta;
      v65 = v43;
      v69 = v94;
      goto LABEL_34;
    }

    if (buttonType != 7)
    {
      goto LABEL_37;
    }

LABEL_22:
    [(SKUIAttributedStringView *)self->_attributedStringView sizeThatFits:v8, v10];
    v63 = v62;
    v65 = v64;
    *&v62 = v4 + (v8 - v62) * 0.5;
    v66 = floorf(*&v62);
    *&v64 = v6 + (v10 - v64) * 0.5;
    v67 = floorf(*&v64);
    imageView = self->_attributedStringView;
    v69 = v4;
LABEL_34:
    SKUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(v66, v67, v63, v65, v69, v6, v8, v10);
    [imageView setFrame:?];
    [(SKUIItemOfferButton *)self->_itemOfferButton setHidden:1];
    goto LABEL_37;
  }

  if ((buttonType - 2) < 3)
  {
    v97 = v6;
    v21 = MEMORY[0x277CBF3A0];
    v22 = *MEMORY[0x277CBF3A0];
    [(SKUIAttributedStringView *)self->_attributedStringView sizeThatFits:v8, v10];
    v24 = v23;
    v26 = v25;
    *&v23 = (v10 - v25) * 0.5;
    v27 = floorf(*&v23);
    [(UIImageView *)self->_disclosureImageView sizeThatFits:v8, v10];
    v29 = v28;
    v31 = v30;
    v93 = v28;
    rect = v27;
    if (self->_buttonType == 3)
    {
      v32 = *(v21 + 8);
      v33 = v22;
      v34 = v31;
      v89 = v22;
      v22 = CGRectGetMaxX(*(&v29 - 2)) + 2.0;
      if (v24 >= v8 - v22)
      {
        v24 = v8 - v22;
      }
    }

    else
    {
      if (v24 >= v8 - v28 + -2.0)
      {
        v24 = v8 - v28 + -2.0;
      }

      v101.origin.x = v22;
      v101.origin.y = v27;
      v101.size.width = v24;
      v101.size.height = v26;
      v89 = CGRectGetMaxX(v101) + 2.0;
    }

    v70 = v4;
    v71 = [(SKUIAttributedStringView *)self->_attributedStringView layout];
    if ([v71 numberOfLines] == 1 && self->_buttonType != 2)
    {
      v80 = [(SKUIAttributedStringView *)self->_attributedStringView layout];
      [v80 baselineOffset];
      *&v81 = v81 + rect - v31;
      v73 = ceilf(*&v81);
    }

    else
    {
      v72 = (v10 - v31) * 0.5;
      v73 = floorf(v72);
    }

    v82 = self->_attributedStringView;
    SKUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(v22, rect, v24, v26, v70, v97, v8, v10);
    [(SKUIAttributedStringView *)v82 setFrame:?];
    disclosureImageView = self->_disclosureImageView;
    SKUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(v92, v73, v93, v31, v70, v97, v8, v10);
    [(UIImageView *)disclosureImageView setFrame:?];
    [(SKUIItemOfferButton *)self->_itemOfferButton setHidden:1];

    goto LABEL_37;
  }

  if (!buttonType)
  {
    goto LABEL_22;
  }

  if (buttonType == 1)
  {
    [(SKUIAttributedStringView *)self->_attributedStringView sizeThatFits:v8, v10];
    v58 = v57;
    v60 = v59;
    *&v57 = (v8 - v57) * 0.5;
    *&v59 = (v10 - v59) * 0.5;
    v61 = self->_attributedStringView;
    SKUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(floorf(*&v57), floorf(*&v59), v58, v60, v4, v6, v8, v10);
    [(SKUIAttributedStringView *)v61 setFrame:?];
    [(SKUIItemOfferButton *)self->_itemOfferButton setFrame:v4, v6, v8, v10];
  }

LABEL_37:
  v84 = [(SKUIStyledButton *)self isEnabled];
  v85 = 1.0;
  if (v84)
  {
    v86 = 1.0;
  }

  else
  {
    v86 = 0.25;
  }

  [(SKUIShapeView *)self->_borderView setAlpha:v86];
  if ((v84 & 1) == 0)
  {
    v87 = [(SKUIButtonBorderStyle *)self->_borderStyle fillColor];
    if (v87)
    {
      v85 = 1.0;
    }

    else
    {
      v85 = 0.25;
    }
  }

  [(SKUIAttributedStringView *)self->_attributedStringView setAlpha:v85];
  v88 = self->_disclosureImageView;

  [(UIImageView *)v88 setAlpha:v85];
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  if (self->_useBigHitTarget)
  {
    [(SKUIStyledButton *)self hitRect];
    v10 = x;
    v11 = y;

    return CGRectContainsPoint(*&v6, *&v10);
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SKUIStyledButton;
    return [(SKUIStyledButton *)&v13 pointInside:a4 withEvent:a3.x, a3.y];
  }
}

- (void)setBackgroundColor:(id)a3
{
  v7.receiver = self;
  v7.super_class = SKUIStyledButton;
  v4 = a3;
  [(SKUIStyledButton *)&v7 setBackgroundColor:v4];
  attributedStringView = self->_attributedStringView;
  v6 = [(SKUIStyledButton *)self _textBackgroundColor:v7.receiver];
  [(SKUIAttributedStringView *)attributedStringView setBackgroundColor:v6];

  [(SKUIShapeView *)self->_borderView setBackgroundColor:v4];
  [(UIImageView *)self->_disclosureImageView setBackgroundColor:v4];
  [(SKUIItemOfferButton *)self->_itemOfferButton setBackgroundColor:v4];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  if ([(SKUIStyledButton *)self isHighlighted]!= a3)
  {
    v18.receiver = self;
    v18.super_class = SKUIStyledButton;
    [(SKUIStyledButton *)&v18 setHighlighted:v3];
    if (self->_borderView && ([(SKUIButtonBorderStyle *)self->_borderStyle fillColor], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
    {
      v7 = [(SKUIShapeView *)self->_borderView layer];
      v8 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA658]];
      [v7 setCompositingFilter:v8];

      [v7 removeAnimationForKey:@"borderAnimation"];
      v9 = [MEMORY[0x277D75348] clearColor];
      [(SKUIStyledButton *)self setBackgroundColor:v9];

      [(SKUIStyledButton *)self bringSubviewToFront:self->_borderView];
      v10 = 0.47;
      if (v3 && !self->_didInitialHighlightForTouch)
      {
        self->_didInitialHighlightForTouch = 1;
        v10 = 0.01;
      }

      v11 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"fillColor"];
      [v11 setDelegate:self];
      [v11 setDuration:v10];
      [v11 setFillMode:*MEMORY[0x277CDA238]];
      [v11 setRemovedOnCompletion:0];
      UIAnimationDragCoefficient();
      *&v13 = 1.0 / v12;
      [v11 setSpeed:v13];
      if (v3)
      {
        v14 = [(SKUIShapeView *)self->_borderView backgroundColor];
        [v11 setFromValue:{objc_msgSend(v14, "CGColor")}];

        [v11 setToValue:{objc_msgSend(v7, "strokeColor")}];
      }

      else
      {
        [v11 setFromValue:{objc_msgSend(v7, "strokeColor")}];
        v16 = [(SKUIShapeView *)self->_borderView backgroundColor];
        [v11 setToValue:{objc_msgSend(v16, "CGColor")}];
      }

      [v7 addAnimation:v11 forKey:@"borderAnimation"];
    }

    else
    {
      v6 = 1.0;
      if (v3 && (v6 = 0.2, !self->_didInitialHighlightForTouch))
      {
        borderView = self->_borderView;
        if (borderView || ([(SKUIAttributedStringView *)self->_attributedStringView setAlpha:0.2], [(UIImageView *)self->_disclosureImageView setAlpha:0.2], (borderView = self->_imageView) != 0))
        {
          [borderView setAlpha:0.2];
        }

        self->_didInitialHighlightForTouch = 1;
      }

      else
      {
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __35__SKUIStyledButton_setHighlighted___block_invoke;
        v17[3] = &unk_2781FC960;
        v17[4] = self;
        *&v17[5] = v6;
        [MEMORY[0x277D75D18] animateWithDuration:327684 delay:v17 options:0 animations:0.47 completion:0.0];
      }
    }
  }
}

void *__35__SKUIStyledButton_setHighlighted___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = *(v2 + 504);
  if (result)
  {
    v4 = (a1 + 40);
  }

  else
  {
    v5 = *(a1 + 40);
    v4 = (a1 + 40);
    [*(v2 + 456) setAlpha:v5];
    [*(*(v4 - 1) + 528) setAlpha:*v4];
    result = *(*(v4 - 1) + 544);
    if (!result)
    {
      return result;
    }
  }

  v6 = *v4;

  return [result setAlpha:v6];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(SKUIAttributedStringView *)self->_attributedStringView sizeThatFits:?];
  v7 = v6;
  v9 = v8;
  v10 = [(UIImageView *)self->_disclosureImageView image];

  if (v10)
  {
    [(UIImageView *)self->_disclosureImageView sizeThatFits:width, height];
    v12 = v11;
    v14 = v13;
  }

  else
  {
    v12 = *MEMORY[0x277CBF3A8];
    v14 = *(MEMORY[0x277CBF3A8] + 8);
  }

  imageView = self->_imageView;
  if (imageView)
  {
    v16 = [(SKUIImageView *)imageView image];

    if (v16)
    {
      [(SKUIImageView *)self->_imageView sizeThatFits:width, height];
      v12 = v17;
      v14 = v18;
    }
  }

  buttonType = self->_buttonType;
  if ((buttonType - 2) < 3)
  {
    if (v9 < v14)
    {
      v9 = v14;
    }

    v22 = v12 + 2.0;
  }

  else if ((buttonType - 5) >= 2)
  {
    if (buttonType != 1)
    {
      goto LABEL_16;
    }

    if ([(SKUIStyledButton *)self isUsingItemOfferAppearance])
    {
      [(SKUIItemOfferButton *)self->_itemOfferButton sizeThatFits:width, height];
      v7 = v34;
      v9 = v35;
      goto LABEL_16;
    }

    if (v9 < 26.0)
    {
      v9 = 26.0;
    }

    v22 = 0.0;
  }

  else
  {
    [(SKUIStyledButton *)self buttonPadding];
    if (v9 < v14)
    {
      v9 = v14;
    }

    v22 = v20 + v21 + v12 + self->_imageTextPaddingInterior;
  }

  v7 = v7 + v22;
LABEL_16:
  borderStyle = self->_borderStyle;
  if (borderStyle && self->_buttonType != 1)
  {
    [(SKUIButtonBorderStyle *)borderStyle borderWidth];
    *&v24 = v24 + v24;
    v25 = floorf(*&v24);
    [(SKUIButtonBorderStyle *)self->_borderStyle contentInset];
    v28 = v9 + v27 + v26 + v25;
    v7 = v7 + v29 + v30 + v25;
    v31 = 44.0;
    if (v28 >= 44.0)
    {
      v31 = v28;
    }

    if (self->_buttonType == 7)
    {
      v9 = v28;
    }

    else
    {
      v9 = v31;
    }
  }

  v32 = v7;
  v33 = v9;
  result.height = v33;
  result.width = v32;
  return result;
}

- (void)tintColorDidChange
{
  if ([(SKUIStyledButton *)self _usesTintColor])
  {
    [(SKUIStyledButton *)self _reloadOverrideTextColor];
    [(SKUIStyledButton *)self _reloadDisclosureImage];
  }

  v3 = [(SKUIShapeView *)self->_borderView layer];
  v4 = [(SKUIStyledButton *)self _borderFillColor];
  [v3 setFillColor:{objc_msgSend(v4, "CGColor")}];

  v5 = [(SKUIStyledButton *)self _borderColor];
  [v3 setStrokeColor:{objc_msgSend(v5, "CGColor")}];

  v6.receiver = self;
  v6.super_class = SKUIStyledButton;
  [(SKUIStyledButton *)&v6 tintColorDidChange];
}

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  v8 = [(SKUIShapeView *)self->_borderView layer:a3];
  if ([(SKUIStyledButton *)self isHighlighted])
  {
    v5 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA658]];
    [v8 setCompositingFilter:v5];

    v6 = [MEMORY[0x277D75348] clearColor];
    [(SKUIStyledButton *)self setBackgroundColor:v6];

    [(SKUIStyledButton *)self bringSubviewToFront:self->_borderView];
  }

  else
  {
    [v8 setCompositingFilter:0];
    v7 = [(SKUIShapeView *)self->_borderView backgroundColor];
    [(SKUIStyledButton *)self setBackgroundColor:v7];

    [(SKUIStyledButton *)self sendSubviewToBack:self->_borderView];
  }
}

- (id)_borderColor
{
  v3 = [(SKUIButtonBorderStyle *)self->_borderStyle borderColor];
  v4 = v3;
  if (v3)
  {
    if ([v3 colorType] == 1)
    {
      [(SKUIStyledButton *)self tintColor];
    }

    else
    {
      [v4 color];
    }
    v5 = ;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_borderFillColor
{
  v3 = [(SKUIButtonBorderStyle *)self->_borderStyle fillColor];
  v4 = v3;
  if (v3)
  {
    if ([v3 colorType] == 1)
    {
      [(SKUIStyledButton *)self tintColor];
    }

    else
    {
      [v4 color];
    }
    v5 = ;
  }

  else
  {
    v5 = [(SKUIStyledButton *)self backgroundColor];
  }

  v6 = v5;

  return v6;
}

- (void)_reloadImageView
{
  if (!self->_imageView)
  {
    v3 = [SKUIImageView alloc];
    [(SKUIStyledButton *)self bounds];
    v4 = [(SKUIImageView *)v3 initWithFrame:?];
    imageView = self->_imageView;
    self->_imageView = v4;

    [(SKUIImageView *)self->_imageView setAutoresizingMask:18];
    [(SKUIImageView *)self->_imageView setUserInteractionEnabled:0];
    v6 = self->_imageView;

    [(SKUIStyledButton *)self addSubview:v6];
  }
}

- (void)_reloadDisclosureImage
{
  v3 = *(MEMORY[0x277CBF2C0] + 16);
  *&v22.a = *MEMORY[0x277CBF2C0];
  *&v22.c = v3;
  *&v22.tx = *(MEMORY[0x277CBF2C0] + 32);
  buttonType = self->_buttonType;
  switch(buttonType)
  {
    case 4:
      v5 = MEMORY[0x277D755B8];
      v6 = SKUIBundle();
      v7 = @"ChevronSeeAll";
      goto LABEL_7;
    case 3:
      v8 = MEMORY[0x277D755B8];
      v9 = SKUIBundle();
      v10 = [v8 imageNamed:@"ChevronSeeAll" inBundle:v9];

      CGAffineTransformMakeScale(&v22, -1.0, 1.0);
      goto LABEL_9;
    case 2:
      v5 = MEMORY[0x277D755B8];
      v6 = SKUIBundle();
      v7 = @"SearchFilterDisclosureChevron";
LABEL_7:
      v10 = [v5 imageNamed:v7 inBundle:v6];

      goto LABEL_9;
  }

  v10 = 0;
LABEL_9:
  v11 = [v10 imageFlippedForRightToLeftLayoutDirection];

  disclosureImageView = self->_disclosureImageView;
  if (v11)
  {
    if (!disclosureImageView)
    {
      v13 = objc_alloc_init(MEMORY[0x277D755E8]);
      v14 = self->_disclosureImageView;
      self->_disclosureImageView = v13;

      v15 = self->_disclosureImageView;
      v16 = [(SKUIStyledButton *)self backgroundColor];
      [(UIImageView *)v15 setBackgroundColor:v16];

      v17 = self->_disclosureImageView;
      v21 = v22;
      [(UIImageView *)v17 setTransform:&v21];
      [(SKUIStyledButton *)self addSubview:self->_disclosureImageView];
    }
  }

  else
  {
    [(UIImageView *)disclosureImageView setHidden:1];
  }

  v18 = [(SKUIStyledButton *)self _textColor];
  v19 = v18;
  if (v11 && v18)
  {
    [(UIImageView *)self->_disclosureImageView setTintColor:v18];
    v20 = [v11 imageWithRenderingMode:2];

    v11 = v20;
  }

  [(UIImageView *)self->_disclosureImageView setImage:v11];
}

- (void)_reloadOverrideTextColor
{
  if ([(SKUIStyledButton *)self isEnabled]&& [(SKUIStyledButton *)self _usesTintColor])
  {
    attributedStringView = self->_attributedStringView;
    v5 = [(SKUIStyledButton *)self tintColor];
    [(SKUIAttributedStringView *)attributedStringView setTextColor:v5];
  }

  else
  {
    v4 = self->_attributedStringView;

    [(SKUIAttributedStringView *)v4 setTextColor:0];
  }
}

- (id)_textBackgroundColor
{
  if (self->_borderStyle)
  {
    [MEMORY[0x277D75348] clearColor];
  }

  else
  {
    [(SKUIStyledButton *)self backgroundColor];
  }
  v2 = ;

  return v2;
}

- (id)_textColor
{
  if ([(SKUIStyledButton *)self isEnabled]&& [(SKUIStyledButton *)self _usesTintColor])
  {
    v3 = [(SKUIStyledButton *)self tintColor];
  }

  else
  {
    v4 = [(SKUIAttributedStringView *)self->_attributedStringView layout];
    v5 = [v4 attributedString];

    if ([v5 length])
    {
      v3 = [v5 attribute:*MEMORY[0x277D740C0] atIndex:0 effectiveRange:0];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (BOOL)_usesTintColor
{
  if (self->_usesTintColor)
  {
    return 1;
  }

  v3 = [(SKUIAttributedStringView *)self->_attributedStringView layout];
  v4 = [v3 attributedString];

  if ([v4 length])
  {
    v5 = [v4 attribute:*MEMORY[0x277D740C0] atIndex:0 effectiveRange:0];
    v2 = v5 == 0;
  }

  else
  {
    v2 = 1;
  }

  return v2;
}

- (UIEdgeInsets)bigHitInsets
{
  top = self->_bigHitInsets.top;
  left = self->_bigHitInsets.left;
  bottom = self->_bigHitInsets.bottom;
  right = self->_bigHitInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (SKUIItemOfferButtonDelegate)itemOfferDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_itemOfferDelegate);

  return WeakRetained;
}

- (UIEdgeInsets)buttonPadding
{
  top = self->_buttonPadding.top;
  left = self->_buttonPadding.left;
  bottom = self->_buttonPadding.bottom;
  right = self->_buttonPadding.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)initWithFrame:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIStyledButton initWithFrame:]";
}

@end