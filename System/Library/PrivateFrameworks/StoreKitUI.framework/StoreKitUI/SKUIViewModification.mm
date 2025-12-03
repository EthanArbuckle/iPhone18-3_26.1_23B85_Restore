@interface SKUIViewModification
- (SKUIViewModification)initWithViewReusePool:(id)pool;
- (id)_addImageViewWithReuseIdentifier:(id)identifier viewElement:(id)element context:(id)context;
- (id)_attributedStringViewForLayout:(id)layout;
- (id)_itemStateForButton:(id)button;
- (id)addBadgeViewWithElement:(id)element width:(double)width context:(id)context;
- (id)addBarRatingWithElement:(id)element width:(double)width context:(id)context;
- (id)addButtonWithElement:(id)element width:(double)width context:(id)context;
- (id)addDividerWithElement:(id)element context:(id)context;
- (id)addHeaderViewWithElement:(id)element width:(double)width context:(id)context;
- (id)addHorizontalListWithElement:(id)element width:(double)width context:(id)context;
- (id)addHorizontalLockupWithElement:(id)element width:(double)width context:(id)context;
- (id)addImageDeckViewWithElement:(id)element width:(double)width context:(id)context;
- (id)addImageGridViewWithElement:(id)element width:(double)width context:(id)context;
- (id)addImageViewWithElement:(id)element context:(id)context;
- (id)addImageViewWithVideoElement:(id)element context:(id)context;
- (id)addLabelViewWithElement:(id)element width:(double)width context:(id)context;
- (id)addLabelViewWithOrdinalElement:(id)element width:(double)width context:(id)context;
- (id)addMenuButtonWithTitleItem:(id)item width:(double)width context:(id)context;
- (id)addOfferViewWithViewElement:(id)element width:(double)width context:(id)context;
- (id)addResponseViewWithViewElement:(id)element width:(double)width context:(id)context;
- (id)addReusableViewWithReuseIdentifier:(id)identifier;
- (id)addReviewListTitleViewWithViewElement:(id)element width:(double)width context:(id)context;
- (id)addStackItemViewWithElement:(id)element width:(double)width context:(id)context;
- (id)addStackListViewWithElement:(id)element width:(double)width context:(id)context;
- (id)addStarRatingControlViewWithViewElement:(id)element width:(double)width context:(id)context;
- (id)addStarRatingViewWithViewElement:(id)element width:(double)width context:(id)context;
- (id)addTabularLockupWithElement:(id)element width:(double)width context:(id)context;
- (id)addTextViewWithElement:(id)element width:(double)width context:(id)context;
- (id)addTomatoRatingViewWithViewElement:(id)element width:(double)width context:(id)context;
- (void)_styleItemOfferButton:(id)button forElement:(id)element context:(id)context;
- (void)setTextProperties:(id)properties forView:(id)view;
@end

@implementation SKUIViewModification

- (SKUIViewModification)initWithViewReusePool:(id)pool
{
  poolCopy = pool;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUIViewModification initWithViewReusePool:];
  }

  v11.receiver = self;
  v11.super_class = SKUIViewModification;
  v6 = [(SKUIViewModification *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_viewPool, pool);
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    views = v7->_views;
    v7->_views = v8;
  }

  return v7;
}

- (id)addReusableViewWithReuseIdentifier:(id)identifier
{
  v4 = [(SKUIViewReusePool *)self->_viewPool dequeueReusableViewWithReuseIdentifier:identifier];
  if (v4)
  {
    [(NSMutableArray *)self->_views addObject:v4];
  }

  return v4;
}

- (void)setTextProperties:(id)properties forView:(id)view
{
  propertiesCopy = properties;
  viewCopy = view;
  if (!self->_allViewTextProperties)
  {
    v7 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:517 valueOptions:0 capacity:1];
    allViewTextProperties = self->_allViewTextProperties;
    self->_allViewTextProperties = v7;
  }

  v9 = self->_allViewTextProperties;
  if (propertiesCopy)
  {
    [(NSMapTable *)v9 setObject:propertiesCopy forKey:viewCopy];
  }

  else
  {
    [(NSMapTable *)v9 removeObjectForKey:viewCopy];
  }
}

- (id)addBadgeViewWithElement:(id)element width:(double)width context:(id)context
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
        [(SKUIViewModification(SKUIViewElementView) *)v10 addBadgeViewWithElement:v11 width:v12 context:v13, v14, v15, v16, v17];
      }
    }
  }

  if ([elementCopy badgeType] == 1)
  {
    labelLayoutCache = [contextCopy labelLayoutCache];
    v19 = [labelLayoutCache layoutForWidth:width viewElement:elementCopy];

    v20 = [(SKUIViewModification *)self _attributedStringViewForLayout:v19];
    [v20 setLayout:v19];
    [v20 setStringTreatment:1];
    style = [elementCopy style];
    ikBackgroundColor = [style ikBackgroundColor];
    color = [ikBackgroundColor color];
    [v20 setTreatmentColor:color];

    goto LABEL_20;
  }

  resourceName = [elementCopy resourceName];
  style = resourceName;
  if (resourceName)
  {
    fallbackImage = SKUIImageWithResourceName(resourceName);
  }

  else
  {
    v26 = [elementCopy URL];

    if (v26)
    {
      v27 = [contextCopy requestIdentifierForViewElement:elementCopy];
      if (v27)
      {
        resourceLoader = [contextCopy resourceLoader];
        v19 = [resourceLoader cachedResourceForRequestIdentifier:{objc_msgSend(v27, "unsignedIntegerValue")}];
        if (!v19 && ([resourceLoader trySetReason:1 forRequestWithIdentifier:{objc_msgSend(v27, "unsignedIntegerValue")}] & 1) == 0)
        {
          [contextCopy loadTemplatedImageForBadgeElement:elementCopy reason:1];
        }
      }

      else
      {
        [contextCopy loadTemplatedImageForBadgeElement:elementCopy reason:1];
        v19 = 0;
      }

      goto LABEL_19;
    }

    fallbackImage = [elementCopy fallbackImage];
  }

  v19 = fallbackImage;
LABEL_19:
  v20 = [(SKUIViewModification *)self addReusableViewWithReuseIdentifier:0x28280C7E8];
  accessibilityText = [elementCopy accessibilityText];
  [v20 setAccessibilityLabel:accessibilityText];

  [v20 setImage:v19];
  [elementCopy size];
  [v20 setImageSize:?];
  style2 = [elementCopy style];
  v31 = SKUIViewElementPlainColorWithStyle(style2, 0);
  [v20 setTintColor:v31];

  [v20 setUserInteractionEnabled:0];
LABEL_20:

  return v20;
}

- (id)addBarRatingWithElement:(id)element width:(double)width context:(id)context
{
  contextCopy = context;
  elementCopy = element;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v9 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v9)
      {
        [(SKUIViewModification(SKUIViewElementView) *)v9 addBarRatingWithElement:v10 width:v11 context:v12, v13, v14, v15, v16];
      }
    }
  }

  v17 = [(SKUIViewModification *)self addReusableViewWithReuseIdentifier:0x28280C6A8];
  [elementCopy ratingValue];
  [v17 setRatingValue:?];
  style = [elementCopy style];

  tintColor = [contextCopy tintColor];
  blackColor = SKUIViewElementPlainColorWithStyle(style, tintColor);

  if (!blackColor)
  {
    blackColor = [MEMORY[0x277D75348] blackColor];
  }

  [v17 setTintColor:blackColor];
  clientContext = [contextCopy clientContext];
  v22 = SKUIUserInterfaceIdiom(clientContext) != 1;

  [v17 setBarRatingStyle:v22];

  return v17;
}

- (id)addButtonWithElement:(id)element width:(double)width context:(id)context
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
        [(SKUIViewModification(SKUIViewElementView) *)v10 addButtonWithElement:v11 width:v12 context:v13, v14, v15, v16, v17];
      }
    }
  }

  buttonViewType = [elementCopy buttonViewType];
  v19 = buttonViewType;
  v20 = 0;
  if (buttonViewType <= 5)
  {
    if (buttonViewType > 1)
    {
      if ((buttonViewType - 2) < 2)
      {
        v64 = [(SKUIViewModification *)self _itemStateForButton:elementCopy];
        v20 = [(SKUIViewModification *)self addReusableViewWithReuseIdentifier:0x28280C828];
        [v20 setElement:elementCopy];
      }

      else
      {
        if (buttonViewType != 4)
        {
          if (buttonViewType == 5)
          {
            v20 = [(SKUIViewModification *)self addReusableViewWithReuseIdentifier:0x28280C788];
            imageView = [v20 imageView];
            additionalImageView = [v20 additionalImageView];
            buttonImage = [elementCopy buttonImage];
            v121 = __RequestImage(buttonImage, contextCopy);
            [imageView setContents:?];
            [contextCopy sizeForImageElement:buttonImage];
            v123 = imageView;
            [imageView setImageSize:?];
            additionalButtonImage = [elementCopy additionalButtonImage];
            v25 = __RequestImage(additionalButtonImage, contextCopy);
            [additionalImageView setContents:v25];
            [contextCopy sizeForImageElement:additionalButtonImage];
            [additionalImageView setImageSize:?];
            accessibilityText = [buttonImage accessibilityText];
            if (!accessibilityText)
            {
              accessibilityText = [elementCopy accessibilityText];
            }

            [v20 setAccessibilityLabel:accessibilityText];
            isEnabled = [elementCopy isEnabled];
            v28 = 0.4;
            if (isEnabled)
            {
              v28 = 1.0;
            }

            [v20 setAlpha:v28];
            [v20 setEnabled:isEnabled];
            style = [elementCopy style];
            v30 = SKUIViewElementPlainColorWithStyle(style, 0);
            [v20 setTintColor:v30];

            if ([elementCopy isBigHitButton])
            {
              [v20 setUseBigHitTarget:1];
              [elementCopy bigHitSize];
              v32 = -v31;
              v33 = v31 == 0.0;
              v34 = -15.0;
              if (!v33)
              {
                v34 = v32;
              }

              [v20 setBigHitInsets:{v34, v34, v34, v34}];
            }

            else
            {
              [v20 setUseBigHitTarget:0];
            }
          }

          goto LABEL_87;
        }

        v20 = [(SKUIViewModification *)self addReusableViewWithReuseIdentifier:0x28280C828];
        v64 = [(SKUIViewModification *)self _itemStateForButton:elementCopy];
      }

      buyButtonDescriptor = [elementCopy buyButtonDescriptor];
      clientContext = [contextCopy clientContext];
      [v20 setValuesUsingBuyButtonDescriptor:buyButtonDescriptor itemState:v64 clientContext:clientContext animated:0];

      [(SKUIViewModification *)self _styleItemOfferButton:v20 forElement:elementCopy context:contextCopy];
      goto LABEL_87;
    }

    if (buttonViewType)
    {
      if (buttonViewType != 1)
      {
        goto LABEL_87;
      }

      goto LABEL_46;
    }

    goto LABEL_30;
  }

  if (buttonViewType <= 0xD)
  {
    if (((1 << buttonViewType) & 0x2D00) != 0)
    {
LABEL_30:
      buttonViewSubType = [elementCopy buttonViewSubType];
      if (buttonViewSubType == 1)
      {
        v46 = [(SKUIViewModification *)self addReusableViewWithReuseIdentifier:0x28280C9C8];
        nonToggledText = [elementCopy nonToggledText];
        [v46 setNonToggledTitle:nonToggledText];

        toggledText = [elementCopy toggledText];
        [v46 setToggledTitle:toggledText];

        v49 = v46;
        v50 = v49;
      }

      else
      {
        v50 = [(SKUIViewModification *)self addReusableViewWithReuseIdentifier:0x28280C6C8];
        v49 = 0;
      }

      if (v19 == 13)
      {
        v51 = 7;
      }

      else
      {
        v51 = 0;
      }

      [v50 setButtonType:v51];
      v52 = [SKUIButtonBorderStyle alloc];
      style2 = [elementCopy style];
      imageView2 = [(SKUIButtonBorderStyle *)v52 initWithElementStyle:style2];

      [v50 setBorderStyle:imageView2];
      labelLayoutCache = [contextCopy labelLayoutCache];
      v56 = [labelLayoutCache layoutForWidth:width viewElement:elementCopy];
      [v50 setTitleLayout:v56];

      isEnabled2 = [elementCopy isEnabled];
      [v50 setEnabled:isEnabled2];
      v58 = 0.4;
      if (isEnabled2)
      {
        v58 = 1.0;
      }

      [v50 setAlpha:v58];
      if (buttonViewSubType == 1)
      {
        toggleItemIdentifier = [elementCopy toggleItemIdentifier];
        if ([toggleItemIdentifier length])
        {
          v60 = +[SKUIToggleStateCenter defaultCenter];
          [v49 setToggleItemIdentifier:toggleItemIdentifier];
          v61 = [v60 itemForIdentifier:toggleItemIdentifier];
          v62 = v61;
          if (!v61 || ([v61 toggled] & 0x80000000) != 0)
          {
            isToggled = [elementCopy isToggled];
          }

          else
          {
            isToggled = [v62 toggled] == 1;
          }

          [v49 setToggled:isToggled animated:0];
        }

        else
        {
          [v49 setToggled:objc_msgSend(elementCopy animated:{"isToggled"), 0}];
        }
      }

      v20 = v50;
LABEL_64:

      goto LABEL_87;
    }

    if (buttonViewType == 9)
    {
      v20 = [(SKUIViewModification *)self addReusableViewWithReuseIdentifier:0x28280C6C8];
      [v20 setAlpha:1.0];
      [v20 setBorderStyle:0];
      isEnabled3 = 1;
      [v20 setButtonType:1];
      labelLayoutCache2 = [contextCopy labelLayoutCache];
      v74 = [labelLayoutCache2 layoutForWidth:width viewElement:elementCopy];
      [v20 setTitleLayout:v74];

      playItemIdentifier = [(SKUIViewModification *)self _itemStateForButton:elementCopy];
      buyButtonDescriptor2 = [elementCopy buyButtonDescriptor];
      clientContext2 = [contextCopy clientContext];
      [v20 setValuesUsingBuyButtonDescriptor:buyButtonDescriptor2 itemState:playItemIdentifier clientContext:clientContext2 animated:0];

      if (([v20 isUsingItemOfferAppearance] & 1) == 0)
      {
        isEnabled3 = [elementCopy isEnabled];
      }

      [v20 setEnabled:isEnabled3];
      style3 = [elementCopy style];
      v78 = SKUIViewElementPlainColorWithStyle(style3, 0);

      [v20 setTintColor:v78];
      goto LABEL_86;
    }

    if (buttonViewType == 12)
    {
      v20 = [(SKUIViewModification *)self addReusableViewWithReuseIdentifier:0x28280C848];
      sizeVariant = [elementCopy sizeVariant];
      v36 = [sizeVariant isEqualToString:@"large"];

      [v20 setStyle:v36];
      playItemIdentifier = [elementCopy playItemIdentifier];
      if ([v20 isIndeterminate])
      {
        [v20 endIndeterminateAnimation];
      }

      [v20 setShowOnDemand:{objc_msgSend(elementCopy, "showOnDemand")}];
      [v20 showPlayIndicator:1];
      [v20 setPlayItemIdentifier:playItemIdentifier];
      [v20 setItemIdentifier:{objc_msgSend(playItemIdentifier, "longLongValue")}];
      [v20 setBigHitInsets:{-15.0, -15.0, -15.0, -15.0}];
      style4 = [elementCopy style];
      ikBackgroundColor = [style4 ikBackgroundColor];

      colorType = [ikBackgroundColor colorType];
      if (colorType == 2)
      {
        color2 = 0;
        color = 0;
      }

      else
      {
        if (colorType == 3)
        {
          v41 = [ikBackgroundColor gradientDirectionType] == 2;
          gradientColors = [ikBackgroundColor gradientColors];
          [v20 setBackgroundGradientColors:gradientColors withGradientType:v41];
          color2 = 0;
          color = 0;
          colorType = 4;
        }

        else
        {
          color = [ikBackgroundColor color];
          gradientColors = [elementCopy style];
          ikColor = [gradientColors ikColor];
          color2 = [ikColor color];

          colorType = 1;
        }
      }

      [v20 setItemIdentifier:{objc_msgSend(playItemIdentifier, "longLongValue")}];
      [v20 setBackgroundType:colorType];
      if (color2)
      {
        [v20 setControlForegroundColor:color2];
      }

      if (color)
      {
        [v20 setControlColor:color];
      }

      [v20 setElement:elementCopy];
      [v20 setEnabled:{objc_msgSend(elementCopy, "isEnabled")}];
      [v20 setDisabledButSelectable:{objc_msgSend(elementCopy, "isDisabledButSelectable")}];
      [v20 setHidden:{objc_msgSend(v20, "showOnDemand")}];

LABEL_86:
      goto LABEL_87;
    }
  }

  if (buttonViewType == 6)
  {
    if ([elementCopy buttonViewSubType] == 1)
    {
      v79 = [(SKUIViewModification *)self addReusableViewWithReuseIdentifier:0x28280C9C8];
      nonToggledText2 = [elementCopy nonToggledText];
      [v79 setNonToggledTitle:nonToggledText2];

      toggledText2 = [elementCopy toggledText];
      [v79 setToggledTitle:toggledText2];

      [v79 setAutoIncrement:{objc_msgSend(elementCopy, "autoIncrementCount")}];
      v49 = v79;
      v82 = v49;
    }

    else
    {
      v82 = [(SKUIViewModification *)self addReusableViewWithReuseIdentifier:0x28280C6C8];
      v49 = 0;
    }

    [v82 setBorderStyle:0];
    v83 = [SKUIStyledButton buttonTypeForElement:elementCopy];
    if ([elementCopy isBigHitButton])
    {
      [elementCopy bigHitSize];
      v85 = -v84;
      v33 = v84 == 0.0;
      v86 = -15.0;
      if (!v33)
      {
        v86 = v85;
      }

      [v82 setBigHitInsets:{v86, v86, v86, v86}];
      [v82 setUseBigHitTarget:1];
    }

    [v82 setButtonType:v83];
    labelLayoutCache3 = [contextCopy labelLayoutCache];
    v88 = [labelLayoutCache3 layoutForWidth:width viewElement:elementCopy];
    [v82 setTitleLayout:v88];

    style5 = [elementCopy style];
    [style5 elementPadding];
    [v82 setButtonPadding:?];

    isEnabled4 = [elementCopy isEnabled];
    [v82 setEnabled:isEnabled4];
    v91 = 0.4;
    if (isEnabled4)
    {
      v91 = 1.0;
    }

    [v82 setAlpha:v91];
    imageView2 = [v82 imageView];
    buttonImage2 = [elementCopy buttonImage];
    v93 = __RequestImage(buttonImage2, contextCopy);
    if (v49)
    {
      [v49 setElement:elementCopy];
      toggleItemIdentifier2 = [elementCopy toggleItemIdentifier];
      v122 = +[SKUIToggleStateCenter defaultCenter];
      if ([toggleItemIdentifier2 length])
      {
        [v49 setToggleItemIdentifier:toggleItemIdentifier2];
        v95 = [v122 itemForIdentifier:toggleItemIdentifier2];
      }

      else
      {
        v95 = 0;
      }

      if (([v95 toggled] & 0x80000000) != 0)
      {
        isToggled2 = [elementCopy isToggled];
      }

      else
      {
        isToggled2 = [v95 count];
      }

      v124 = v95;
      additionalButtonImage2 = [elementCopy additionalButtonImage];
      if (additionalButtonImage2)
      {
        [v49 setToggleButtonType:1];
        v106 = __RequestImage(additionalButtonImage2, contextCopy);
      }

      else
      {
        [v49 setToggleButtonType:0];
        v106 = 0;
      }

      if ([elementCopy autoIncrementCount] && objc_msgSend(v124, "toggled") == -1)
      {
        v114 = imageView2;
        v115 = toggleItemIdentifier2;
        titleLayout = [v49 titleLayout];
        attributedString = [titleLayout attributedString];
        string = [attributedString string];

        v119 = string;
        if ([string length])
        {
          if (addButtonWithElement_width_context__sOnceToken != -1)
          {
            [SKUIViewModification(SKUIViewElementView) addButtonWithElement:width:context:];
          }

          toggleItemIdentifier2 = v115;
          imageView2 = v114;
          v112 = [addButtonWithElement_width_context__sNumberFormatter numberFromString:v119];
          if (v112)
          {
            v116 = v112;
            isToggled2 = [v112 integerValue];
            v112 = v116;
          }
        }

        else
        {
          imageView2 = v114;
          toggleItemIdentifier2 = v115;
        }

        if (isToggled2 < 1)
        {
          [v49 setButtonTitleText:@" "];
          [v49 setAutoIncrementCount:isToggled2];
        }

        else
        {
          [v49 setAutoIncrementCount:isToggled2];
          [v49 setButtonTitleText:v119];
        }

        [v49 setAutoIncrementCount:isToggled2];
        [v49 setToggled:{objc_msgSend(elementCopy, "isToggled")}];
      }

      else if ([elementCopy autoIncrementCount])
      {
        v117 = additionalButtonImage2;
        [v49 setToggled:{objc_msgSend(v124, "toggled") == 1}];
        if (isToggled2 < 1)
        {
          [v49 setButtonTitleText:@" "];
        }

        else
        {
          [v124 toggledString];
          v107 = v93;
          v109 = v108 = toggleItemIdentifier2;
          [v49 setButtonTitleText:v109];

          toggleItemIdentifier2 = v108;
          v93 = v107;
        }

        additionalButtonImage2 = v117;
      }

      else
      {
        [v49 setToggled:{objc_msgSend(elementCopy, "isToggled")}];
      }

      [v49 setNonToggledContents:v93];
      [v49 setToggledContents:v106];
      if ([v49 isToggled])
      {
        v113 = v106;
      }

      else
      {
        v113 = v93;
      }

      [(SKUIButtonBorderStyle *)imageView2 setContents:v113];
    }

    else
    {
      [(SKUIButtonBorderStyle *)imageView2 setContents:v93];
    }

    [contextCopy sizeForImageElement:buttonImage2];
    [(SKUIButtonBorderStyle *)imageView2 setImageSize:?];
    v20 = v82;

    goto LABEL_64;
  }

  if (buttonViewType != 7)
  {
    goto LABEL_87;
  }

LABEL_46:
  v20 = [(SKUIViewModification *)self addReusableViewWithReuseIdentifier:0x28280C6C8];
  [v20 setBorderStyle:0];
  if (v19 == 1)
  {
    v65 = 3;
  }

  else
  {
    v65 = 4;
  }

  [v20 setButtonType:v65];
  labelLayoutCache4 = [contextCopy labelLayoutCache];
  v67 = [labelLayoutCache4 layoutForWidth:width viewElement:elementCopy];
  [v20 setTitleLayout:v67];

  isEnabled5 = [elementCopy isEnabled];
  [v20 setEnabled:isEnabled5];
  v69 = 0.4;
  if (isEnabled5)
  {
    v69 = 1.0;
  }

  [v20 setAlpha:v69];
LABEL_87:
  attributes = [elementCopy attributes];
  v98 = [attributes objectForKeyedSubscript:@"privacy"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v99 = v98;
  }

  else
  {
    v99 = 0;
  }

  [v20 setAdPrivacyData:v99];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v100 = v20;
    buttonTitleStyle = [elementCopy buttonTitleStyle];
    style6 = buttonTitleStyle;
    if (!buttonTitleStyle)
    {
      style6 = [elementCopy style];
    }

    ikColor2 = [style6 ikColor];
    [v100 setUsesTintColor:{objc_msgSend(ikColor2, "colorType") == 1}];

    if (!buttonTitleStyle)
    {
    }
  }

  return v20;
}

uint64_t __80__SKUIViewModification_SKUIViewElementView__addButtonWithElement_width_context___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCABB8]);
  v1 = addButtonWithElement_width_context__sNumberFormatter;
  addButtonWithElement_width_context__sNumberFormatter = v0;

  v2 = addButtonWithElement_width_context__sNumberFormatter;

  return [v2 setNumberStyle:1];
}

- (id)addDividerWithElement:(id)element context:(id)context
{
  elementCopy = element;
  contextCopy = context;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v8)
      {
        [(SKUIViewModification(SKUIViewElementView) *)v8 addDividerWithElement:v9 context:v10, v11, v12, v13, v14, v15];
      }
    }
  }

  v16 = [(SKUIViewModification *)self addReusableViewWithReuseIdentifier:0x282804AE8];
  style = [elementCopy style];
  tintColor = [contextCopy tintColor];

  v19 = SKUIViewElementPlainColorWithStyle(style, tintColor);

  if (v19 || [elementCopy dividerType] == 3)
  {
    if ([elementCopy dividerType] == 3)
    {

      v19 = 0;
    }
  }

  else
  {
    v19 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
  }

  [v16 setDividerColor:v19];

  return v16;
}

- (id)addHeaderViewWithElement:(id)element width:(double)width context:(id)context
{
  contextCopy = context;
  elementCopy = element;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v10)
      {
        [(SKUIViewModification(SKUIViewElementView) *)v10 addHeaderViewWithElement:v11 width:v12 context:v13, v14, v15, v16, v17];
      }
    }
  }

  v18 = [(SKUIViewModification *)self addReusableViewWithReuseIdentifier:0x28280C708];
  [v18 reloadWithViewElement:elementCopy width:contextCopy context:width];

  return v18;
}

- (id)addHorizontalListWithElement:(id)element width:(double)width context:(id)context
{
  contextCopy = context;
  elementCopy = element;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v10)
      {
        [(SKUIViewModification(SKUIViewElementView) *)v10 addHorizontalListWithElement:v11 width:v12 context:v13, v14, v15, v16, v17];
      }
    }
  }

  v18 = [(SKUIViewModification *)self addReusableViewWithReuseIdentifier:0x28280C728];
  style = [elementCopy style];
  [style elementPadding];
  [v18 setContentInset:?];

  [v18 reloadWithViewElement:elementCopy width:contextCopy context:width];

  return v18;
}

- (id)addHorizontalLockupWithElement:(id)element width:(double)width context:(id)context
{
  contextCopy = context;
  elementCopy = element;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v10)
      {
        [(SKUIViewModification(SKUIViewElementView) *)v10 addHorizontalLockupWithElement:v11 width:v12 context:v13, v14, v15, v16, v17];
      }
    }
  }

  v18 = [(SKUIViewModification *)self addReusableViewWithReuseIdentifier:0x28280C768];
  [v18 reloadWithViewElement:elementCopy width:contextCopy context:width];

  return v18;
}

- (id)addImageDeckViewWithElement:(id)element width:(double)width context:(id)context
{
  contextCopy = context;
  elementCopy = element;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v10)
      {
        [(SKUIViewModification(SKUIViewElementView) *)v10 addImageDeckViewWithElement:v11 width:v12 context:v13, v14, v15, v16, v17];
      }
    }
  }

  v18 = [(SKUIViewModification *)self addReusableViewWithReuseIdentifier:0x28280C7A8];
  [v18 reloadWithViewElement:elementCopy width:contextCopy context:width];

  return v18;
}

- (id)addImageGridViewWithElement:(id)element width:(double)width context:(id)context
{
  contextCopy = context;
  elementCopy = element;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v10)
      {
        [(SKUIViewModification(SKUIViewElementView) *)v10 addImageGridViewWithElement:v11 width:v12 context:v13, v14, v15, v16, v17];
      }
    }
  }

  v18 = [(SKUIViewModification *)self addReusableViewWithReuseIdentifier:0x28280C7C8];
  [v18 reloadWithViewElement:elementCopy width:contextCopy context:width];

  return v18;
}

- (id)addImageViewWithElement:(id)element context:(id)context
{
  elementCopy = element;
  contextCopy = context;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v8)
      {
        [(SKUIViewModification(SKUIViewElementView) *)v8 addImageViewWithElement:v9 context:v10, v11, v12, v13, v14, v15];
      }
    }
  }

  style = [elementCopy style];
  imageTreatment = [style imageTreatment];
  v18 = SKUIImageTreatmentForString(imageTreatment);

  if (v18 == 13)
  {
    v19 = [(SKUIViewModification *)self _addImageViewWithReuseIdentifier:0x28280C868 viewElement:elementCopy context:contextCopy];
    if (style)
    {
      [style transform];
      [v19 setTransform:v35];
    }

    v21 = SKUIViewElementPlainColorWithStyle(style, 0);
    [v19 setTintColor:v21];

    [style elementPadding];
    [v19 setImagePadding:?];
    ikBackgroundColor = [style ikBackgroundColor];
    color = [ikBackgroundColor color];
    [v19 setBackgroundColor:color];
  }

  else if (v18 == 7)
  {
    v19 = [(SKUIViewModification *)self _addImageViewWithReuseIdentifier:0x28280C8C8 viewElement:elementCopy context:contextCopy];
    ikBackgroundColor = [contextCopy borderDrawingCache];
    [v19 setBorderDrawingCache:ikBackgroundColor];
  }

  else
  {
    children = [elementCopy children];
    v24 = [children count];

    if (v24)
    {
      v19 = [(SKUIViewModification *)self _addImageViewWithReuseIdentifier:0x28280C648 viewElement:elementCopy context:contextCopy];
      [elementCopy size];
      [v19 reloadWithViewElement:elementCopy width:contextCopy context:?];
    }

    else
    {
      [elementCopy shadowOffset];
      if (v26 == *MEMORY[0x277CBF3A8] && v25 == *(MEMORY[0x277CBF3A8] + 8))
      {
        v19 = [(SKUIViewModification *)self _addImageViewWithReuseIdentifier:0x28280C7E8 viewElement:elementCopy context:contextCopy];
        [elementCopy layerShadowOpacity];
        if (v28 != 0.0)
        {
          layer = [v19 layer];
          [layer setMasksToBounds:0];

          layer2 = [v19 layer];
          [elementCopy layerShadowOpacity];
          [layer2 setShadowOpacity:?];

          layer3 = [v19 layer];
          [elementCopy layerShadowOffset];
          [layer3 setShadowOffset:?];
        }

        [elementCopy layerShadowRadius];
        if (v32 != 0.0)
        {
          layer4 = [v19 layer];
          [elementCopy layerShadowRadius];
          [layer4 setShadowRadius:?];
        }
      }

      else
      {
        v19 = [(SKUIViewModification *)self _addImageViewWithReuseIdentifier:0x28280C808 viewElement:elementCopy context:contextCopy];
        [v19 setContentMode:4];
      }
    }

    if (style)
    {
      [style transform];
      [v19 setTransform:v35];
    }

    ikBackgroundColor = SKUIViewElementPlainColorWithStyle(style, 0);
    [v19 setTintColor:ikBackgroundColor];
  }

  return v19;
}

- (id)addImageViewWithVideoElement:(id)element context:(id)context
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
        [(SKUIViewModification(SKUIViewElementView) *)v8 addImageViewWithVideoElement:v9 context:v10, v11, v12, v13, v14, v15];
      }
    }
  }

  thumbnailImage = [elementCopy thumbnailImage];
  isEnabled = [elementCopy isEnabled];

  if (isEnabled)
  {
    style = [thumbnailImage style];
    v19 = [(SKUIViewModification *)self _addImageViewWithReuseIdentifier:0x28280CA08 viewElement:thumbnailImage context:contextCopy];
    if (style)
    {
      [style transform];
      [v19 setTransform:&v21];
    }
  }

  else
  {
    v19 = [(SKUIViewModification *)self addImageViewWithElement:thumbnailImage context:contextCopy];
  }

  return v19;
}

- (id)addLabelViewWithElement:(id)element width:(double)width context:(id)context
{
  v42 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  contextCopy = context;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v10)
      {
        [(SKUIViewModification(SKUIViewElementView) *)v10 addLabelViewWithElement:v11 width:v12 context:v13, v14, v15, v16, v17];
      }
    }
  }

  labelLayoutCache = [contextCopy labelLayoutCache];
  v19 = [labelLayoutCache layoutForWidth:width viewElement:elementCopy];

  v20 = [(SKUIViewModification *)self _attributedStringViewForLayout:v19];
  [v20 setLayout:v19];
  [v20 setContainsLinks:{objc_msgSend(elementCopy, "containsLinks")}];
  if ([elementCopy containsLinks])
  {
    linkDelegate = [elementCopy linkDelegate];
    [v20 setLinkDelegate:linkDelegate];
  }

  [v20 setStringTreatment:0];
  [v20 setTreatmentColor:0];
  style = [elementCopy style];
  ikColor = [style ikColor];
  [v20 setTextColorFollowsTintColor:{objc_msgSend(ikColor, "colorType") == 1}];

  if (v19)
  {
    trailingBadges = [elementCopy trailingBadges];
    badgeImageLoader = [contextCopy badgeImageLoader];
    badges = [elementCopy badges];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v27 = [badges countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v27)
    {
      v28 = v27;
      v35 = trailingBadges;
      v36 = contextCopy;
      LOBYTE(v29) = 0;
      v30 = *v38;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v38 != v30)
          {
            objc_enumerationMutation(badges);
          }

          v32 = *(*(&v37 + 1) + 8 * i);
          if (v29)
          {
            v29 = 1;
          }

          else
          {
            image = [*(*(&v37 + 1) + 8 * i) image];
            v29 = image == 0;
          }

          [badgeImageLoader loadImageForBadge:v32 layout:v19 reason:{1, v35, v36}];
        }

        v28 = [badges countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v28);
      trailingBadges = v35;
      contextCopy = v36;
      if (v29)
      {
        [badgeImageLoader connectStringView:v20];
      }
    }
  }

  else
  {
    trailingBadges = 0;
  }

  [v20 setRequiredBadges:trailingBadges];
  [v20 setBadgePlacement:{objc_msgSend(elementCopy, "badgePlacement") == 1}];

  return v20;
}

- (id)addLabelViewWithOrdinalElement:(id)element width:(double)width context:(id)context
{
  contextCopy = context;
  elementCopy = element;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v10)
      {
        [(SKUIViewModification(SKUIViewElementView) *)v10 addLabelViewWithOrdinalElement:v11 width:v12 context:v13, v14, v15, v16, v17];
      }
    }
  }

  labelLayoutCache = [contextCopy labelLayoutCache];
  v19 = [labelLayoutCache layoutForWidth:width viewElement:elementCopy];

  v20 = [(SKUIViewModification *)self _attributedStringViewForLayout:v19];
  [v20 setLayout:v19];
  [v20 setStringTreatment:0];
  [v20 setTreatmentColor:0];
  style = [elementCopy style];

  ikColor = [style ikColor];
  [v20 setTextColorFollowsTintColor:{objc_msgSend(ikColor, "colorType") == 1}];

  return v20;
}

- (id)addMenuButtonWithTitleItem:(id)item width:(double)width context:(id)context
{
  contextCopy = context;
  itemCopy = item;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v10)
      {
        [(SKUIViewModification(SKUIViewElementView) *)v10 addMenuButtonWithTitleItem:v11 width:v12 context:v13, v14, v15, v16, v17];
      }
    }
  }

  v18 = [(SKUIViewModification *)self addReusableViewWithReuseIdentifier:0x28280C6C8];
  [v18 setBorderStyle:0];
  [v18 setButtonType:2];
  [v18 setEnabled:{objc_msgSend(itemCopy, "isEnabled")}];
  labelLayoutCache = [contextCopy labelLayoutCache];

  v20 = [labelLayoutCache layoutForWidth:width viewElement:itemCopy];

  [v18 setTitleLayout:v20];
  [v18 setUsesTintColor:1];

  return v18;
}

- (id)addOfferViewWithViewElement:(id)element width:(double)width context:(id)context
{
  contextCopy = context;
  elementCopy = element;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v10)
      {
        [(SKUIViewModification(SKUIViewElementView) *)v10 addOfferViewWithViewElement:v11 width:v12 context:v13, v14, v15, v16, v17];
      }
    }
  }

  v18 = [(SKUIViewModification *)self addReusableViewWithReuseIdentifier:0x282803688];
  [v18 reloadWithViewElement:elementCopy width:contextCopy context:width];

  return v18;
}

- (id)addStackListViewWithElement:(id)element width:(double)width context:(id)context
{
  contextCopy = context;
  elementCopy = element;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v10)
      {
        [(SKUIViewModification(SKUIViewElementView) *)v10 addStackListViewWithElement:v11 width:v12 context:v13, v14, v15, v16, v17];
      }
    }
  }

  v18 = [(SKUIViewModification *)self addReusableViewWithReuseIdentifier:0x28280C8E8];
  style = [elementCopy style];
  [style elementPadding];
  [v18 setContentInset:?];

  [v18 reloadWithViewElement:elementCopy width:contextCopy context:width];

  return v18;
}

- (id)addStackItemViewWithElement:(id)element width:(double)width context:(id)context
{
  contextCopy = context;
  elementCopy = element;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v10)
      {
        [(SKUIViewModification(SKUIViewElementView) *)v10 addStackItemViewWithElement:v11 width:v12 context:v13, v14, v15, v16, v17];
      }
    }
  }

  v18 = [(SKUIViewModification *)self addReusableViewWithReuseIdentifier:0x28280A788];
  style = [elementCopy style];
  [style elementPadding];
  [v18 setContentInset:?];

  [v18 reloadWithViewElement:elementCopy width:contextCopy context:width];

  return v18;
}

- (id)addReviewListTitleViewWithViewElement:(id)element width:(double)width context:(id)context
{
  contextCopy = context;
  elementCopy = element;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v10)
      {
        [(SKUIViewModification(SKUIViewElementView) *)v10 addReviewListTitleViewWithViewElement:v11 width:v12 context:v13, v14, v15, v16, v17];
      }
    }
  }

  v18 = [(SKUIViewModification *)self addReusableViewWithReuseIdentifier:0x28280C8A8];
  [v18 reloadWithViewElement:elementCopy width:contextCopy context:width];

  return v18;
}

- (id)addResponseViewWithViewElement:(id)element width:(double)width context:(id)context
{
  contextCopy = context;
  elementCopy = element;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v10)
      {
        [(SKUIViewModification(SKUIViewElementView) *)v10 addResponseViewWithViewElement:v11 width:v12 context:v13, v14, v15, v16, v17];
      }
    }
  }

  v18 = [(SKUIViewModification *)self addReusableViewWithReuseIdentifier:0x28280C888];
  [v18 reloadWithViewElement:elementCopy width:contextCopy context:width];

  return v18;
}

- (id)addStarRatingViewWithViewElement:(id)element width:(double)width context:(id)context
{
  contextCopy = context;
  elementCopy = element;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v10)
      {
        [(SKUIViewModification(SKUIViewElementView) *)v10 addStarRatingViewWithViewElement:v11 width:v12 context:v13, v14, v15, v16, v17];
      }
    }
  }

  v18 = [(SKUIViewModification *)self addReusableViewWithReuseIdentifier:0x28280C908];
  [v18 setElementSpacing:3];
  [v18 reloadWithViewElement:elementCopy width:contextCopy context:width];

  return v18;
}

- (id)addStarRatingControlViewWithViewElement:(id)element width:(double)width context:(id)context
{
  contextCopy = context;
  elementCopy = element;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v10)
      {
        [(SKUIViewModification(SKUIViewElementView) *)v10 addStarRatingControlViewWithViewElement:v11 width:v12 context:v13, v14, v15, v16, v17];
      }
    }
  }

  v18 = [(SKUIViewModification *)self addReusableViewWithReuseIdentifier:0x28280C928];
  [v18 setEnabled:{objc_msgSend(elementCopy, "isEnabled")}];
  [v18 reloadWithViewElement:elementCopy width:contextCopy context:width];

  return v18;
}

- (id)addTabularLockupWithElement:(id)element width:(double)width context:(id)context
{
  contextCopy = context;
  elementCopy = element;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v10)
      {
        [(SKUIViewModification(SKUIViewElementView) *)v10 addTabularLockupWithElement:v11 width:v12 context:v13, v14, v15, v16, v17];
      }
    }
  }

  v18 = [(SKUIViewModification *)self addReusableViewWithReuseIdentifier:0x28280C988];
  [v18 reloadWithViewElement:elementCopy width:contextCopy context:width];

  return v18;
}

- (id)addTextViewWithElement:(id)element width:(double)width context:(id)context
{
  elementCopy = element;
  contextCopy = context;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v10)
      {
        [(SKUIViewModification(SKUIViewElementView) *)v10 addTextViewWithElement:v11 width:v12 context:v13, v14, v15, v16, v17];
      }
    }
  }

  v18 = [(SKUIViewModification *)self addReusableViewWithReuseIdentifier:0x28280C9A8];
  v19 = [contextCopy editorialLayoutForLabelElement:elementCopy width:width];
  v20 = [v19 bodyTextLayoutForOrientation:0];
  [v18 setContentInsets:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];
  [v18 setEnabled:0];
  [v18 setFixedWidthTextFrame:{objc_msgSend(v20, "textFrame")}];
  moreButtonTitle = [elementCopy moreButtonTitle];
  [v18 setMoreButtonTitle:moreButtonTitle];

  if ([v20 requiresTruncation] && (objc_msgSend(contextCopy, "isEditorialLayoutExpanded:", v19) & 1) == 0)
  {
    isEnabled = [elementCopy isEnabled];
  }

  else
  {
    isEnabled = 0;
  }

  [v18 setUserInteractionEnabled:isEnabled];
  if ([contextCopy isEditorialLayoutExpanded:v19])
  {
    numberOfLines = 0;
  }

  else
  {
    numberOfLines = [elementCopy numberOfLines];
  }

  [v18 setNumberOfVisibleLines:numberOfLines];

  return v18;
}

- (id)addTomatoRatingViewWithViewElement:(id)element width:(double)width context:(id)context
{
  contextCopy = context;
  elementCopy = element;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v10)
      {
        [(SKUIViewModification(SKUIViewElementView) *)v10 addTomatoRatingViewWithViewElement:v11 width:v12 context:v13, v14, v15, v16, v17];
      }
    }
  }

  v18 = [(SKUIViewModification *)self addReusableViewWithReuseIdentifier:0x28280C9E8];
  [v18 reloadWithViewElement:elementCopy width:contextCopy context:width];

  return v18;
}

- (id)_addImageViewWithReuseIdentifier:(id)identifier viewElement:(id)element context:(id)context
{
  contextCopy = context;
  elementCopy = element;
  v10 = [(SKUIViewModification *)self addReusableViewWithReuseIdentifier:identifier];
  accessibilityText = [elementCopy accessibilityText];
  [v10 setAccessibilityLabel:accessibilityText];

  [v10 setUserInteractionEnabled:{objc_msgSend(elementCopy, "isEnabled")}];
  v12 = __RequestImage(elementCopy, contextCopy);
  [v10 setContents:v12];
  [contextCopy sizeForImageElement:elementCopy];
  v14 = v13;
  v16 = v15;

  [v10 setImageSize:{v14, v16}];

  return v10;
}

- (id)_itemStateForButton:(id)button
{
  buttonCopy = button;
  itemIdentifier = [buttonCopy itemIdentifier];
  storeIdentifier = [buttonCopy storeIdentifier];
  if (!storeIdentifier && itemIdentifier)
  {
    storeIdentifier = [[SKUIStoreIdentifier alloc] initWithLongLong:itemIdentifier];
  }

  if (storeIdentifier)
  {
    v6 = +[SKUIItemStateCenter defaultCenter];
    v7 = [v6 stateForItemWithStoreIdentifier:storeIdentifier];

    if (v7 && ([buttonCopy buyButtonDescriptor], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "canPersonalizeUsingItemState:", v7), v8, v9))
    {
      v10 = v7;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_styleItemOfferButton:(id)button forElement:(id)element context:(id)context
{
  buttonCopy = button;
  elementCopy = element;
  tintColor = [context tintColor];
  style = [elementCopy style];
  v10 = SKUIViewElementPlainColorWithStyle(style, tintColor);

  [buttonCopy setTintColor:v10];
  v11 = elementCopy;
  v12 = v11;
  if (v11)
  {
    parent = v11;
    do
    {
      v14 = parent;
      style2 = [parent style];
      ikBackgroundColor = [style2 ikBackgroundColor];
      v17 = SKUIViewElementPlainColorWithIKColor(ikBackgroundColor, tintColor);

      parent = [v14 parent];
    }

    while (parent && !v17);
  }

  else
  {
    v17 = 0;
    parent = 0;
  }

  v18 = [objc_opt_class() cloudTintColorForBackgroundColor:v17];
  [buttonCopy setCloudTintColor:v18];

  [buttonCopy setElement:v12];
  [buttonCopy setEnabled:{objc_msgSend(v12, "isEnabled")}];
  [buttonCopy setDisabledButSelectable:{objc_msgSend(v12, "isDisabledButSelectable")}];
  badgeResourceName = [v12 badgeResourceName];
  [buttonCopy setUniversal:{objc_msgSend(badgeResourceName, "isEqualToString:", @"plus"}];
}

- (id)_attributedStringViewForLayout:(id)layout
{
  [layout edgeInsetsForShadow];
  v5.f64[1] = v4;
  v7.f64[1] = v6;
  if (vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(v5, *MEMORY[0x277D768C8]), vceqq_f64(v7, *(MEMORY[0x277D768C8] + 16))), xmmword_215F3F960)) == 15)
  {
    v8 = SKUIViewReuseAttributedStringIdentifier;
  }

  else
  {
    v8 = SKUIViewReuseAttributedStringWrapperIdentifier;
  }

  v9 = [(SKUIViewModification *)self addReusableViewWithReuseIdentifier:*v8];

  return v9;
}

- (void)initWithViewReusePool:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIViewModification initWithViewReusePool:]";
}

@end