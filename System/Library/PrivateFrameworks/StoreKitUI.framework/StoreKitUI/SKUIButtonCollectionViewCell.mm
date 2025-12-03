@interface SKUIButtonCollectionViewCell
+ (BOOL)prefetchResourcesForViewElement:(id)element reason:(int64_t)reason context:(id)context;
+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context;
+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context;
+ (id)_attributedStringWithButton:(id)button context:(id)context;
+ (void)requestLayoutForViewElement:(id)element width:(double)width context:(id)context;
- (BOOL)_usesBackgroundWithAlpha;
- (BOOL)setImage:(id)image forArtworkRequest:(id)request context:(id)context;
- (BOOL)updateWithItemState:(id)state context:(id)context animated:(BOOL)animated;
- (id)viewForElementIdentifier:(id)identifier;
- (void)_buttonAction:(id)action;
- (void)dealloc;
- (void)layoutSubviews;
- (void)reloadWithViewElement:(id)element width:(double)width context:(id)context;
- (void)setBackgroundColor:(id)color;
@end

@implementation SKUIButtonCollectionViewCell

- (void)dealloc
{
  [(UIControl *)self->_button removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];
  v3.receiver = self;
  v3.super_class = SKUIButtonCollectionViewCell;
  [(SKUIViewReuseCollectionViewCell *)&v3 dealloc];
}

+ (BOOL)prefetchResourcesForViewElement:(id)element reason:(int64_t)reason context:(id)context
{
  elementCopy = element;
  contextCopy = context;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v9 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v9)
      {
        [(SKUIButtonCollectionViewCell *)v9 prefetchResourcesForViewElement:v10 reason:v11 context:v12, v13, v14, v15, v16];
      }
    }
  }

  v17 = [contextCopy prefetchResourcesForViewElement:elementCopy reason:reason];

  return v17;
}

+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context
{
  contextCopy = context;
  elementCopy = element;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v8)
      {
        [(SKUIButtonCollectionViewCell *)v8 preferredSizeForViewElement:v9 context:v10, v11, v12, v13, v14, v15];
      }
    }
  }

  [contextCopy defaultItemWidthForViewElement:elementCopy];
  [self sizeThatFitsWidth:elementCopy viewElement:contextCopy context:?];
  v17 = v16;
  v19 = v18;

  v20 = v17;
  v21 = v19;
  result.height = v21;
  result.width = v20;
  return result;
}

+ (void)requestLayoutForViewElement:(id)element width:(double)width context:(id)context
{
  elementCopy = element;
  contextCopy = context;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v10)
      {
        [(SKUIButtonCollectionViewCell *)v10 requestLayoutForViewElement:v11 width:v12 context:v13, v14, v15, v16, v17];
      }
    }
  }

  elementType = [elementCopy elementType];
  if (elementType == 141 || elementType == 12)
  {
    v19 = [self _attributedStringWithButton:elementCopy context:contextCopy];
    labelLayoutCache = [contextCopy labelLayoutCache];
    [labelLayoutCache requestLayoutForButton:elementCopy attributedString:v19 width:width];
  }
}

+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context
{
  elementCopy = element;
  contextCopy = context;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v9 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v9)
      {
        [(SKUIButtonCollectionViewCell *)v9 sizeThatFitsWidth:v10 viewElement:v11 context:v12, v13, v14, v15, v16];
      }
    }
  }

  [contextCopy sizeForViewElement:elementCopy width:width];
  v18 = v17;

  widthCopy = width;
  v20 = v18;
  result.height = v20;
  result.width = widthCopy;
  return result;
}

- (void)reloadWithViewElement:(id)element width:(double)width context:(id)context
{
  elementCopy = element;
  contextCopy = context;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v11 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v11)
      {
        [(SKUIButtonCollectionViewCell *)v11 reloadWithViewElement:v12 width:v13 context:v14, v15, v16, v17, v18];
      }
    }
  }

  v29 = MEMORY[0x277D85DD0];
  v30 = 3221225472;
  v31 = __68__SKUIButtonCollectionViewCell_reloadWithViewElement_width_context___block_invoke;
  v32 = &unk_2781F95C8;
  v19 = elementCopy;
  v33 = v19;
  selfCopy = self;
  widthCopy = width;
  v20 = contextCopy;
  v35 = v20;
  [(SKUIViewReuseCollectionViewCell *)self modifyUsingBlock:&v29];
  v21 = [v20 imageResourceCacheKeyForViewElement:{v19, v29, v30, v31, v32}];
  buttonImageResourceCacheKey = self->_buttonImageResourceCacheKey;
  self->_buttonImageResourceCacheKey = v21;

  style = [v19 style];
  viewElementStyle = self->_viewElementStyle;
  self->_viewElementStyle = style;

  buyButtonDescriptor = [v19 buyButtonDescriptor];
  buyButtonDescriptor = self->_buyButtonDescriptor;
  self->_buyButtonDescriptor = buyButtonDescriptor;

  objc_storeStrong(&self->_viewElement, element);
  if ([(SKUIButtonCollectionViewCell *)self _usesBackgroundWithAlpha])
  {
    button = self->_button;
    if (button)
    {
      clearColor = [MEMORY[0x277D75348] clearColor];
      [(UIControl *)button setBackgroundColor:clearColor];
    }
  }
}

void __68__SKUIButtonCollectionViewCell_reloadWithViewElement_width_context___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [*(a1 + 32) elementType];
  if (v3 == 12 || v3 == 141 || v3 == 50)
  {
    v4 = [v7 addButtonWithElement:*(a1 + 32) width:*(a1 + 48) context:*(a1 + 56)];
    v5 = *(a1 + 40);
    v6 = *(v5 + 824);
    *(v5 + 824) = v4;

    [*(*(a1 + 40) + 824) addTarget:*(a1 + 40) action:sel__buttonAction_ forControlEvents:64];
  }
}

- (void)setBackgroundColor:(id)color
{
  colorCopy = color;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIButtonCollectionViewCell *)v5 setBackgroundColor:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v15.receiver = self;
  v15.super_class = SKUIButtonCollectionViewCell;
  [(SKUIViewReuseCollectionViewCell *)&v15 setBackgroundColor:colorCopy];
  if ([(SKUIButtonCollectionViewCell *)self _usesBackgroundWithAlpha])
  {
    button = self->_button;
    if (button)
    {
      clearColor = [MEMORY[0x277D75348] clearColor];
      [(UIControl *)button setBackgroundColor:clearColor];
    }
  }
}

- (BOOL)setImage:(id)image forArtworkRequest:(id)request context:(id)context
{
  imageCopy = image;
  requestCopy = request;
  contextCopy = context;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v11 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v11)
      {
        [(SKUIButtonCollectionViewCell *)v11 setImage:v12 forArtworkRequest:v13 context:v14, v15, v16, v17, v18];
      }
    }
  }

  v19 = [contextCopy requestIdentifierForResourceCacheKey:self->_buttonImageResourceCacheKey];
  if (v19 && (v20 = [requestCopy requestIdentifier], v20 == objc_msgSend(v19, "unsignedIntegerValue")))
  {
    imageView = [(UIControl *)self->_button imageView];
    [imageView setImage:imageCopy];

    v22 = 1;
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (BOOL)updateWithItemState:(id)state context:(id)context animated:(BOOL)animated
{
  animatedCopy = animated;
  stateCopy = state;
  contextCopy = context;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v10)
      {
        [(SKUIButtonCollectionViewCell *)v10 updateWithItemState:v11 context:v12 animated:v13, v14, v15, v16, v17];
      }
    }
  }

  v18 = [(SKUIBuyButtonDescriptor *)self->_buyButtonDescriptor canPersonalizeUsingItemState:stateCopy];
  if (v18)
  {
    button = self->_button;
    buyButtonDescriptor = self->_buyButtonDescriptor;
    clientContext = [contextCopy clientContext];
    [(UIControl *)button setValuesUsingBuyButtonDescriptor:buyButtonDescriptor itemState:stateCopy clientContext:clientContext animated:animatedCopy];
  }

  return v18;
}

- (id)viewForElementIdentifier:(id)identifier
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIButtonCollectionViewCell *)v3 viewForElementIdentifier:v4, v5, v6, v7, v8, v9, v10];
      }
    }
  }

  return 0;
}

- (void)layoutSubviews
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIButtonCollectionViewCell *)v3 layoutSubviews:v4];
      }
    }
  }

  v33.receiver = self;
  v33.super_class = SKUIButtonCollectionViewCell;
  [(SKUICollectionViewCell *)&v33 layoutSubviews];
  if (self->_button)
  {
    contentView = [(SKUIButtonCollectionViewCell *)self contentView];
    [contentView bounds];
    v13 = v12;
    v15 = v14;

    [(SKUIViewReuseCollectionViewCell *)self contentInset];
    v17 = v16;
    v19 = v18;
    v20 = v13 - v16 - v18;
    v21 = self->_viewElementStyle;
    textAlignment = [(IKViewElementStyle *)v21 textAlignment];
    if (!textAlignment)
    {
      textAlignment = [(IKViewElementStyle *)v21 elementAlignment];
    }

    v23 = *MEMORY[0x277CBF3A0];
    v24 = *(MEMORY[0x277CBF3A0] + 8);
    [(UIControl *)self->_button sizeThatFits:v20, 1.79769313e308];
    v34.size.width = v25;
    v27 = v26;
    v34.origin.x = v23;
    v34.origin.y = v24;
    v34.size.height = v27;
    [SKUIViewElementLayoutContext itemWidthForElement:self->_viewElement withDefaultWidth:CGRectGetWidth(v34) fitWidth:v20];
    if (v28 >= v20)
    {
      v29 = v20;
    }

    else
    {
      v29 = v28;
    }

    v30 = (v15 - v27) * 0.5;
    v31 = floorf(v30);
    if (textAlignment <= 5)
    {
      if (((1 << textAlignment) & 0x35) != 0)
      {
        v32 = (v13 - v29) * 0.5;
        v23 = floorf(v32);
      }

      else if (textAlignment == 1)
      {
        v23 = v17;
      }

      else
      {
        v23 = v13 - v19 - v29;
      }
    }

    [(UIControl *)self->_button setFrame:v23, v31];
  }
}

- (void)_buttonAction:(id)action
{
  v8 = SKUICollectionViewForView(self);
  delegate = [v8 delegate];
  v5 = objc_opt_respondsToSelector();
  viewElement = self->_viewElement;
  if (v5)
  {
    v7 = [v8 indexPathForCell:self];
    [delegate collectionView:v8 didConfirmButtonElement:viewElement withClickInfo:0 forItemAtIndexPath:v7];
  }

  else
  {
    [(SKUIButtonViewElement *)self->_viewElement dispatchEventOfType:2 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:0];
  }
}

+ (id)_attributedStringWithButton:(id)button context:(id)context
{
  buttonCopy = button;
  contextCopy = context;
  buttonTitleStyle = [buttonCopy buttonTitleStyle];
  v8 = buttonTitleStyle;
  if (buttonTitleStyle)
  {
    style = buttonTitleStyle;
  }

  else
  {
    style = [buttonCopy style];
  }

  v10 = style;

  v11 = SKUIViewElementFontWithStyle(v10);
  if (!v11)
  {
    v11 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  }

  tintColor = [contextCopy tintColor];
  blackColor = SKUIViewElementPlainColorWithStyle(v10, tintColor);

  if (!blackColor)
  {
    blackColor = [MEMORY[0x277D75348] blackColor];
  }

  v14 = SKUIViewElementAlignmentForStyle(v10);
  if (v14)
  {
    v15 = SKUIViewElementNSTextAlignmentForIKElementAlignment(v14);
  }

  else
  {
    v15 = 0;
  }

  buttonText = [buttonCopy buttonText];
  v17 = [buttonText attributedStringWithDefaultFont:v11 foregroundColor:blackColor textAlignment:v15 style:v10];

  return v17;
}

- (BOOL)_usesBackgroundWithAlpha
{
  v7 = 0;
  v8 = 0;
  v5 = 0.0;
  v6 = 0;
  backgroundColor = [(SKUIButtonCollectionViewCell *)self backgroundColor];
  v3 = [backgroundColor getHue:&v8 saturation:&v7 brightness:&v6 alpha:&v5];

  return v3 && v5 < 1.0 && v5 != 0.0;
}

@end