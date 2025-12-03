@interface SKUIStyledButton
+ (CGSize)sizeForTextSize:(CGSize)size buttonType:(int64_t)type;
+ (CGSize)sizeForTextSize:(CGSize)size buttonType:(int64_t)type borderStyle:(id)style;
+ (CGSize)sizeForTextSize:(CGSize)size buttonType:(int64_t)type borderStyle:(id)style interiorPadding:(double)padding;
+ (int64_t)buttonTypeForElement:(id)element;
- (BOOL)_usesTintColor;
- (BOOL)isUsingItemOfferAppearance;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (BOOL)setValuesUsingBuyButtonDescriptor:(id)descriptor itemState:(id)state clientContext:(id)context animated:(BOOL)animated;
- (CGRect)hitRect;
- (CGSize)sizeThatFits:(CGSize)fits;
- (SKUIItemOfferButtonDelegate)itemOfferDelegate;
- (SKUIStyledButton)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)bigHitInsets;
- (UIEdgeInsets)buttonPadding;
- (id)_borderColor;
- (id)_borderFillColor;
- (id)_textBackgroundColor;
- (id)_textColor;
- (void)_reloadDisclosureImage;
- (void)_reloadImageView;
- (void)_reloadOverrideTextColor;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)color;
- (void)setBorderStyle:(id)style;
- (void)setButtonType:(int64_t)type;
- (void)setEnabled:(BOOL)enabled;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setItemOfferDelegate:(id)delegate;
- (void)setTitleLayout:(id)layout forceRefresh:(BOOL)refresh;
- (void)setUsesTintColor:(BOOL)color;
- (void)tintColorDidChange;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
@end

@implementation SKUIStyledButton

- (SKUIStyledButton)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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

+ (int64_t)buttonTypeForElement:(id)element
{
  elementCopy = element;
  children = [elementCopy children];
  v5 = [children count];

  if (v5 && ([elementCopy children], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "firstObject"), v7 = objc_claimAutoreleasedReturnValue(), v6, v8 = objc_msgSend(v7, "elementType"), v7, v8 == 49))
  {
    v9 = 6;
  }

  else
  {
    v9 = 5;
  }

  return v9;
}

+ (CGSize)sizeForTextSize:(CGSize)size buttonType:(int64_t)type
{
  [self sizeForTextSize:type buttonType:0 borderStyle:size.width interiorPadding:{size.height, -1.0}];
  result.height = v5;
  result.width = v4;
  return result;
}

+ (CGSize)sizeForTextSize:(CGSize)size buttonType:(int64_t)type borderStyle:(id)style
{
  [self sizeForTextSize:type buttonType:style borderStyle:size.width interiorPadding:{size.height, -1.0}];
  result.height = v6;
  result.width = v5;
  return result;
}

+ (CGSize)sizeForTextSize:(CGSize)size buttonType:(int64_t)type borderStyle:(id)style interiorPadding:(double)padding
{
  height = size.height;
  width = size.width;
  styleCopy = style;
  v11 = styleCopy;
  if (type > 4)
  {
    if ((type - 5) < 2)
    {
      v12 = width + 5.0;
      if (padding >= 0.0)
      {
        width = v12 + 5.0;
      }

      else
      {
        width = v12 + padding;
      }
    }

    goto LABEL_12;
  }

  if ((type - 3) < 2)
  {
    width = width + 7.0;
LABEL_12:
    if (type != 1 && styleCopy)
    {
      [styleCopy borderWidth];
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

      if (type == 7)
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

  if (type != 1)
  {
    if (type == 2)
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

- (void)setBorderStyle:(id)style
{
  if (self->_borderStyle != style)
  {
    v4 = [style copy];
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
        backgroundColor = [(SKUIStyledButton *)self backgroundColor];
        [(SKUIShapeView *)v9 setBackgroundColor:backgroundColor];

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
    _textBackgroundColor = [(SKUIStyledButton *)self _textBackgroundColor];
    [(SKUIAttributedStringView *)attributedStringView setBackgroundColor:_textBackgroundColor];

    [(SKUIStyledButton *)self setNeedsLayout];
  }
}

- (void)setButtonType:(int64_t)type
{
  if (self->_buttonType != type)
  {
    v10 = v3;
    self->_buttonType = type;
    if ((type - 5) > 1)
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

- (void)setTitleLayout:(id)layout forceRefresh:(BOOL)refresh
{
  refreshCopy = refresh;
  layoutCopy = layout;
  titleLayout = [(SKUIStyledButton *)self titleLayout];

  v8 = layoutCopy;
  if (titleLayout != layoutCopy || refreshCopy)
  {
    attributedStringView = self->_attributedStringView;
    if (!attributedStringView)
    {
      v10 = objc_alloc_init(SKUIAttributedStringView);
      v11 = self->_attributedStringView;
      self->_attributedStringView = v10;

      v12 = self->_attributedStringView;
      _textBackgroundColor = [(SKUIStyledButton *)self _textBackgroundColor];
      [(SKUIAttributedStringView *)v12 setBackgroundColor:_textBackgroundColor];

      [(SKUIAttributedStringView *)self->_attributedStringView setUserInteractionEnabled:0];
      [(SKUIStyledButton *)self addSubview:self->_attributedStringView];
      attributedStringView = self->_attributedStringView;
    }

    [(SKUIAttributedStringView *)attributedStringView setLayout:layoutCopy];
    [(SKUIStyledButton *)self _reloadOverrideTextColor];
    _reloadDisclosureImage = [(SKUIStyledButton *)self _reloadDisclosureImage];
    v8 = layoutCopy;
  }

  MEMORY[0x2821F96F8](_reloadDisclosureImage, v8);
}

- (void)setUsesTintColor:(BOOL)color
{
  if (self->_usesTintColor != color)
  {
    self->_usesTintColor = color;
    [(SKUIStyledButton *)self _reloadOverrideTextColor];
  }
}

- (void)setItemOfferDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_itemOfferDelegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_itemOfferDelegate, obj);
    [(SKUIItemOfferButton *)self->_itemOfferButton setItemOfferDelegate:obj];
  }
}

- (BOOL)setValuesUsingBuyButtonDescriptor:(id)descriptor itemState:(id)state clientContext:(id)context animated:(BOOL)animated
{
  animatedCopy = animated;
  descriptorCopy = descriptor;
  stateCopy = state;
  contextCopy = context;
  v13 = [objc_opt_class() usesItemOfferAppearanceForButtonType:self->_buttonType itemState:stateCopy];
  if (v13)
  {
    p_itemOfferButton = &self->_itemOfferButton;
    itemOfferButton = self->_itemOfferButton;
    if (itemOfferButton)
    {
      if (![(SKUIItemOfferButton *)itemOfferButton setValuesUsingBuyButtonDescriptor:descriptorCopy itemState:stateCopy clientContext:contextCopy animated:animatedCopy])
      {
        isUsingItemOfferAppearance = 0;
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
      backgroundColor = [(SKUIStyledButton *)self backgroundColor];
      [v20 setBackgroundColor:backgroundColor];

      v22 = *p_itemOfferButton;
      WeakRetained = objc_loadWeakRetained(&self->_itemOfferDelegate);
      [v22 setItemOfferDelegate:WeakRetained];

      [*p_itemOfferButton setValuesUsingBuyButtonDescriptor:descriptorCopy itemState:stateCopy clientContext:contextCopy animated:animatedCopy];
      [(SKUIStyledButton *)self addSubview:*p_itemOfferButton];
    }

    [(SKUIStyledButton *)self setNeedsLayout];
    isUsingItemOfferAppearance = 1;
    goto LABEL_8;
  }

  isUsingItemOfferAppearance = [(SKUIStyledButton *)self isUsingItemOfferAppearance];
  [(SKUIAttributedStringView *)self->_attributedStringView setHidden:0];
  p_itemOfferButton = &self->_itemOfferButton;
LABEL_9:
  [*p_itemOfferButton setHidden:v13 ^ 1u];

  return isUsingItemOfferAppearance;
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if ([(SKUIStyledButton *)self isEnabled]!= enabled)
  {
    v5.receiver = self;
    v5.super_class = SKUIStyledButton;
    [(SKUIStyledButton *)&v5 setEnabled:enabledCopy];
    [(SKUIStyledButton *)self _reloadOverrideTextColor];
    [(SKUIStyledButton *)self setNeedsLayout];
  }
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  self->_didInitialHighlightForTouch = 0;
  v4.receiver = self;
  v4.super_class = SKUIStyledButton;
  [(SKUIStyledButton *)&v4 touchesBegan:began withEvent:event];
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  endedCopy = ended;
  eventCopy = event;
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
  [(SKUIStyledButton *)&v9 touchesEnded:endedCopy withEvent:eventCopy];
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
    layer = [(SKUIShapeView *)self->_borderView layer];
    _borderFillColor = [(SKUIStyledButton *)self _borderFillColor];
    [layer setFillColor:{objc_msgSend(_borderFillColor, "CGColor")}];

    [(SKUIButtonBorderStyle *)self->_borderStyle borderWidth];
    [layer setLineWidth:?];
    v14 = [(SKUIButtonBorderStyle *)self->_borderStyle bezierPathWithBounds:v4, v6, v8, v10];
    [layer setPath:{objc_msgSend(v14, "CGPath")}];

    _borderColor = [(SKUIStyledButton *)self _borderColor];
    [layer setStrokeColor:{objc_msgSend(_borderColor, "CGColor")}];

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
    layout = [(SKUIAttributedStringView *)self->_attributedStringView layout];
    if ([layout numberOfLines] == 1 && self->_buttonType != 2)
    {
      layout2 = [(SKUIAttributedStringView *)self->_attributedStringView layout];
      [layout2 baselineOffset];
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
  isEnabled = [(SKUIStyledButton *)self isEnabled];
  v85 = 1.0;
  if (isEnabled)
  {
    v86 = 1.0;
  }

  else
  {
    v86 = 0.25;
  }

  [(SKUIShapeView *)self->_borderView setAlpha:v86];
  if ((isEnabled & 1) == 0)
  {
    fillColor = [(SKUIButtonBorderStyle *)self->_borderStyle fillColor];
    if (fillColor)
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

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
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
    return [(SKUIStyledButton *)&v13 pointInside:event withEvent:inside.x, inside.y];
  }
}

- (void)setBackgroundColor:(id)color
{
  v7.receiver = self;
  v7.super_class = SKUIStyledButton;
  colorCopy = color;
  [(SKUIStyledButton *)&v7 setBackgroundColor:colorCopy];
  attributedStringView = self->_attributedStringView;
  v6 = [(SKUIStyledButton *)self _textBackgroundColor:v7.receiver];
  [(SKUIAttributedStringView *)attributedStringView setBackgroundColor:v6];

  [(SKUIShapeView *)self->_borderView setBackgroundColor:colorCopy];
  [(UIImageView *)self->_disclosureImageView setBackgroundColor:colorCopy];
  [(SKUIItemOfferButton *)self->_itemOfferButton setBackgroundColor:colorCopy];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  if ([(SKUIStyledButton *)self isHighlighted]!= highlighted)
  {
    v18.receiver = self;
    v18.super_class = SKUIStyledButton;
    [(SKUIStyledButton *)&v18 setHighlighted:highlightedCopy];
    if (self->_borderView && ([(SKUIButtonBorderStyle *)self->_borderStyle fillColor], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
    {
      layer = [(SKUIShapeView *)self->_borderView layer];
      v8 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA658]];
      [layer setCompositingFilter:v8];

      [layer removeAnimationForKey:@"borderAnimation"];
      clearColor = [MEMORY[0x277D75348] clearColor];
      [(SKUIStyledButton *)self setBackgroundColor:clearColor];

      [(SKUIStyledButton *)self bringSubviewToFront:self->_borderView];
      v10 = 0.47;
      if (highlightedCopy && !self->_didInitialHighlightForTouch)
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
      if (highlightedCopy)
      {
        backgroundColor = [(SKUIShapeView *)self->_borderView backgroundColor];
        [v11 setFromValue:{objc_msgSend(backgroundColor, "CGColor")}];

        [v11 setToValue:{objc_msgSend(layer, "strokeColor")}];
      }

      else
      {
        [v11 setFromValue:{objc_msgSend(layer, "strokeColor")}];
        backgroundColor2 = [(SKUIShapeView *)self->_borderView backgroundColor];
        [v11 setToValue:{objc_msgSend(backgroundColor2, "CGColor")}];
      }

      [layer addAnimation:v11 forKey:@"borderAnimation"];
    }

    else
    {
      v6 = 1.0;
      if (highlightedCopy && (v6 = 0.2, !self->_didInitialHighlightForTouch))
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

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  [(SKUIAttributedStringView *)self->_attributedStringView sizeThatFits:?];
  v7 = v6;
  v9 = v8;
  image = [(UIImageView *)self->_disclosureImageView image];

  if (image)
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
    image2 = [(SKUIImageView *)imageView image];

    if (image2)
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

  layer = [(SKUIShapeView *)self->_borderView layer];
  _borderFillColor = [(SKUIStyledButton *)self _borderFillColor];
  [layer setFillColor:{objc_msgSend(_borderFillColor, "CGColor")}];

  _borderColor = [(SKUIStyledButton *)self _borderColor];
  [layer setStrokeColor:{objc_msgSend(_borderColor, "CGColor")}];

  v6.receiver = self;
  v6.super_class = SKUIStyledButton;
  [(SKUIStyledButton *)&v6 tintColorDidChange];
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  v8 = [(SKUIShapeView *)self->_borderView layer:stop];
  if ([(SKUIStyledButton *)self isHighlighted])
  {
    v5 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA658]];
    [v8 setCompositingFilter:v5];

    clearColor = [MEMORY[0x277D75348] clearColor];
    [(SKUIStyledButton *)self setBackgroundColor:clearColor];

    [(SKUIStyledButton *)self bringSubviewToFront:self->_borderView];
  }

  else
  {
    [v8 setCompositingFilter:0];
    backgroundColor = [(SKUIShapeView *)self->_borderView backgroundColor];
    [(SKUIStyledButton *)self setBackgroundColor:backgroundColor];

    [(SKUIStyledButton *)self sendSubviewToBack:self->_borderView];
  }
}

- (id)_borderColor
{
  borderColor = [(SKUIButtonBorderStyle *)self->_borderStyle borderColor];
  v4 = borderColor;
  if (borderColor)
  {
    if ([borderColor colorType] == 1)
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
  fillColor = [(SKUIButtonBorderStyle *)self->_borderStyle fillColor];
  v4 = fillColor;
  if (fillColor)
  {
    if ([fillColor colorType] == 1)
    {
      [(SKUIStyledButton *)self tintColor];
    }

    else
    {
      [v4 color];
    }
    backgroundColor = ;
  }

  else
  {
    backgroundColor = [(SKUIStyledButton *)self backgroundColor];
  }

  v6 = backgroundColor;

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
  imageFlippedForRightToLeftLayoutDirection = [v10 imageFlippedForRightToLeftLayoutDirection];

  disclosureImageView = self->_disclosureImageView;
  if (imageFlippedForRightToLeftLayoutDirection)
  {
    if (!disclosureImageView)
    {
      v13 = objc_alloc_init(MEMORY[0x277D755E8]);
      v14 = self->_disclosureImageView;
      self->_disclosureImageView = v13;

      v15 = self->_disclosureImageView;
      backgroundColor = [(SKUIStyledButton *)self backgroundColor];
      [(UIImageView *)v15 setBackgroundColor:backgroundColor];

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

  _textColor = [(SKUIStyledButton *)self _textColor];
  v19 = _textColor;
  if (imageFlippedForRightToLeftLayoutDirection && _textColor)
  {
    [(UIImageView *)self->_disclosureImageView setTintColor:_textColor];
    v20 = [imageFlippedForRightToLeftLayoutDirection imageWithRenderingMode:2];

    imageFlippedForRightToLeftLayoutDirection = v20;
  }

  [(UIImageView *)self->_disclosureImageView setImage:imageFlippedForRightToLeftLayoutDirection];
}

- (void)_reloadOverrideTextColor
{
  if ([(SKUIStyledButton *)self isEnabled]&& [(SKUIStyledButton *)self _usesTintColor])
  {
    attributedStringView = self->_attributedStringView;
    tintColor = [(SKUIStyledButton *)self tintColor];
    [(SKUIAttributedStringView *)attributedStringView setTextColor:tintColor];
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
    tintColor = [(SKUIStyledButton *)self tintColor];
  }

  else
  {
    layout = [(SKUIAttributedStringView *)self->_attributedStringView layout];
    attributedString = [layout attributedString];

    if ([attributedString length])
    {
      tintColor = [attributedString attribute:*MEMORY[0x277D740C0] atIndex:0 effectiveRange:0];
    }

    else
    {
      tintColor = 0;
    }
  }

  return tintColor;
}

- (BOOL)_usesTintColor
{
  if (self->_usesTintColor)
  {
    return 1;
  }

  layout = [(SKUIAttributedStringView *)self->_attributedStringView layout];
  attributedString = [layout attributedString];

  if ([attributedString length])
  {
    v5 = [attributedString attribute:*MEMORY[0x277D740C0] atIndex:0 effectiveRange:0];
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