@interface SKUIViewModification
- (SKUIViewModification)initWithViewReusePool:(id)a3;
- (id)_addImageViewWithReuseIdentifier:(id)a3 viewElement:(id)a4 context:(id)a5;
- (id)_attributedStringViewForLayout:(id)a3;
- (id)_itemStateForButton:(id)a3;
- (id)addBadgeViewWithElement:(id)a3 width:(double)a4 context:(id)a5;
- (id)addBarRatingWithElement:(id)a3 width:(double)a4 context:(id)a5;
- (id)addButtonWithElement:(id)a3 width:(double)a4 context:(id)a5;
- (id)addDividerWithElement:(id)a3 context:(id)a4;
- (id)addHeaderViewWithElement:(id)a3 width:(double)a4 context:(id)a5;
- (id)addHorizontalListWithElement:(id)a3 width:(double)a4 context:(id)a5;
- (id)addHorizontalLockupWithElement:(id)a3 width:(double)a4 context:(id)a5;
- (id)addImageDeckViewWithElement:(id)a3 width:(double)a4 context:(id)a5;
- (id)addImageGridViewWithElement:(id)a3 width:(double)a4 context:(id)a5;
- (id)addImageViewWithElement:(id)a3 context:(id)a4;
- (id)addImageViewWithVideoElement:(id)a3 context:(id)a4;
- (id)addLabelViewWithElement:(id)a3 width:(double)a4 context:(id)a5;
- (id)addLabelViewWithOrdinalElement:(id)a3 width:(double)a4 context:(id)a5;
- (id)addMenuButtonWithTitleItem:(id)a3 width:(double)a4 context:(id)a5;
- (id)addOfferViewWithViewElement:(id)a3 width:(double)a4 context:(id)a5;
- (id)addResponseViewWithViewElement:(id)a3 width:(double)a4 context:(id)a5;
- (id)addReusableViewWithReuseIdentifier:(id)a3;
- (id)addReviewListTitleViewWithViewElement:(id)a3 width:(double)a4 context:(id)a5;
- (id)addStackItemViewWithElement:(id)a3 width:(double)a4 context:(id)a5;
- (id)addStackListViewWithElement:(id)a3 width:(double)a4 context:(id)a5;
- (id)addStarRatingControlViewWithViewElement:(id)a3 width:(double)a4 context:(id)a5;
- (id)addStarRatingViewWithViewElement:(id)a3 width:(double)a4 context:(id)a5;
- (id)addTabularLockupWithElement:(id)a3 width:(double)a4 context:(id)a5;
- (id)addTextViewWithElement:(id)a3 width:(double)a4 context:(id)a5;
- (id)addTomatoRatingViewWithViewElement:(id)a3 width:(double)a4 context:(id)a5;
- (void)_styleItemOfferButton:(id)a3 forElement:(id)a4 context:(id)a5;
- (void)setTextProperties:(id)a3 forView:(id)a4;
@end

@implementation SKUIViewModification

- (SKUIViewModification)initWithViewReusePool:(id)a3
{
  v5 = a3;
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
    objc_storeStrong(&v6->_viewPool, a3);
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    views = v7->_views;
    v7->_views = v8;
  }

  return v7;
}

- (id)addReusableViewWithReuseIdentifier:(id)a3
{
  v4 = [(SKUIViewReusePool *)self->_viewPool dequeueReusableViewWithReuseIdentifier:a3];
  if (v4)
  {
    [(NSMutableArray *)self->_views addObject:v4];
  }

  return v4;
}

- (void)setTextProperties:(id)a3 forView:(id)a4
{
  v10 = a3;
  v6 = a4;
  if (!self->_allViewTextProperties)
  {
    v7 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:517 valueOptions:0 capacity:1];
    allViewTextProperties = self->_allViewTextProperties;
    self->_allViewTextProperties = v7;
  }

  v9 = self->_allViewTextProperties;
  if (v10)
  {
    [(NSMapTable *)v9 setObject:v10 forKey:v6];
  }

  else
  {
    [(NSMapTable *)v9 removeObjectForKey:v6];
  }
}

- (id)addBadgeViewWithElement:(id)a3 width:(double)a4 context:(id)a5
{
  v8 = a3;
  v9 = a5;
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

  if ([v8 badgeType] == 1)
  {
    v18 = [v9 labelLayoutCache];
    v19 = [v18 layoutForWidth:a4 viewElement:v8];

    v20 = [(SKUIViewModification *)self _attributedStringViewForLayout:v19];
    [v20 setLayout:v19];
    [v20 setStringTreatment:1];
    v21 = [v8 style];
    v22 = [v21 ikBackgroundColor];
    v23 = [v22 color];
    [v20 setTreatmentColor:v23];

    goto LABEL_20;
  }

  v24 = [v8 resourceName];
  v21 = v24;
  if (v24)
  {
    v25 = SKUIImageWithResourceName(v24);
  }

  else
  {
    v26 = [v8 URL];

    if (v26)
    {
      v27 = [v9 requestIdentifierForViewElement:v8];
      if (v27)
      {
        v28 = [v9 resourceLoader];
        v19 = [v28 cachedResourceForRequestIdentifier:{objc_msgSend(v27, "unsignedIntegerValue")}];
        if (!v19 && ([v28 trySetReason:1 forRequestWithIdentifier:{objc_msgSend(v27, "unsignedIntegerValue")}] & 1) == 0)
        {
          [v9 loadTemplatedImageForBadgeElement:v8 reason:1];
        }
      }

      else
      {
        [v9 loadTemplatedImageForBadgeElement:v8 reason:1];
        v19 = 0;
      }

      goto LABEL_19;
    }

    v25 = [v8 fallbackImage];
  }

  v19 = v25;
LABEL_19:
  v20 = [(SKUIViewModification *)self addReusableViewWithReuseIdentifier:0x28280C7E8];
  v29 = [v8 accessibilityText];
  [v20 setAccessibilityLabel:v29];

  [v20 setImage:v19];
  [v8 size];
  [v20 setImageSize:?];
  v30 = [v8 style];
  v31 = SKUIViewElementPlainColorWithStyle(v30, 0);
  [v20 setTintColor:v31];

  [v20 setUserInteractionEnabled:0];
LABEL_20:

  return v20;
}

- (id)addBarRatingWithElement:(id)a3 width:(double)a4 context:(id)a5
{
  v7 = a5;
  v8 = a3;
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
  [v8 ratingValue];
  [v17 setRatingValue:?];
  v18 = [v8 style];

  v19 = [v7 tintColor];
  v20 = SKUIViewElementPlainColorWithStyle(v18, v19);

  if (!v20)
  {
    v20 = [MEMORY[0x277D75348] blackColor];
  }

  [v17 setTintColor:v20];
  v21 = [v7 clientContext];
  v22 = SKUIUserInterfaceIdiom(v21) != 1;

  [v17 setBarRatingStyle:v22];

  return v17;
}

- (id)addButtonWithElement:(id)a3 width:(double)a4 context:(id)a5
{
  v8 = a3;
  v9 = a5;
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

  v18 = [v8 buttonViewType];
  v19 = v18;
  v20 = 0;
  if (v18 <= 5)
  {
    if (v18 > 1)
    {
      if ((v18 - 2) < 2)
      {
        v64 = [(SKUIViewModification *)self _itemStateForButton:v8];
        v20 = [(SKUIViewModification *)self addReusableViewWithReuseIdentifier:0x28280C828];
        [v20 setElement:v8];
      }

      else
      {
        if (v18 != 4)
        {
          if (v18 == 5)
          {
            v20 = [(SKUIViewModification *)self addReusableViewWithReuseIdentifier:0x28280C788];
            v21 = [v20 imageView];
            v22 = [v20 additionalImageView];
            v23 = [v8 buttonImage];
            v121 = __RequestImage(v23, v9);
            [v21 setContents:?];
            [v9 sizeForImageElement:v23];
            v123 = v21;
            [v21 setImageSize:?];
            v24 = [v8 additionalButtonImage];
            v25 = __RequestImage(v24, v9);
            [v22 setContents:v25];
            [v9 sizeForImageElement:v24];
            [v22 setImageSize:?];
            v26 = [v23 accessibilityText];
            if (!v26)
            {
              v26 = [v8 accessibilityText];
            }

            [v20 setAccessibilityLabel:v26];
            v27 = [v8 isEnabled];
            v28 = 0.4;
            if (v27)
            {
              v28 = 1.0;
            }

            [v20 setAlpha:v28];
            [v20 setEnabled:v27];
            v29 = [v8 style];
            v30 = SKUIViewElementPlainColorWithStyle(v29, 0);
            [v20 setTintColor:v30];

            if ([v8 isBigHitButton])
            {
              [v20 setUseBigHitTarget:1];
              [v8 bigHitSize];
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
        v64 = [(SKUIViewModification *)self _itemStateForButton:v8];
      }

      v70 = [v8 buyButtonDescriptor];
      v71 = [v9 clientContext];
      [v20 setValuesUsingBuyButtonDescriptor:v70 itemState:v64 clientContext:v71 animated:0];

      [(SKUIViewModification *)self _styleItemOfferButton:v20 forElement:v8 context:v9];
      goto LABEL_87;
    }

    if (v18)
    {
      if (v18 != 1)
      {
        goto LABEL_87;
      }

      goto LABEL_46;
    }

    goto LABEL_30;
  }

  if (v18 <= 0xD)
  {
    if (((1 << v18) & 0x2D00) != 0)
    {
LABEL_30:
      v45 = [v8 buttonViewSubType];
      if (v45 == 1)
      {
        v46 = [(SKUIViewModification *)self addReusableViewWithReuseIdentifier:0x28280C9C8];
        v47 = [v8 nonToggledText];
        [v46 setNonToggledTitle:v47];

        v48 = [v8 toggledText];
        [v46 setToggledTitle:v48];

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
      v53 = [v8 style];
      v54 = [(SKUIButtonBorderStyle *)v52 initWithElementStyle:v53];

      [v50 setBorderStyle:v54];
      v55 = [v9 labelLayoutCache];
      v56 = [v55 layoutForWidth:a4 viewElement:v8];
      [v50 setTitleLayout:v56];

      v57 = [v8 isEnabled];
      [v50 setEnabled:v57];
      v58 = 0.4;
      if (v57)
      {
        v58 = 1.0;
      }

      [v50 setAlpha:v58];
      if (v45 == 1)
      {
        v59 = [v8 toggleItemIdentifier];
        if ([v59 length])
        {
          v60 = +[SKUIToggleStateCenter defaultCenter];
          [v49 setToggleItemIdentifier:v59];
          v61 = [v60 itemForIdentifier:v59];
          v62 = v61;
          if (!v61 || ([v61 toggled] & 0x80000000) != 0)
          {
            v63 = [v8 isToggled];
          }

          else
          {
            v63 = [v62 toggled] == 1;
          }

          [v49 setToggled:v63 animated:0];
        }

        else
        {
          [v49 setToggled:objc_msgSend(v8 animated:{"isToggled"), 0}];
        }
      }

      v20 = v50;
LABEL_64:

      goto LABEL_87;
    }

    if (v18 == 9)
    {
      v20 = [(SKUIViewModification *)self addReusableViewWithReuseIdentifier:0x28280C6C8];
      [v20 setAlpha:1.0];
      [v20 setBorderStyle:0];
      v72 = 1;
      [v20 setButtonType:1];
      v73 = [v9 labelLayoutCache];
      v74 = [v73 layoutForWidth:a4 viewElement:v8];
      [v20 setTitleLayout:v74];

      v37 = [(SKUIViewModification *)self _itemStateForButton:v8];
      v75 = [v8 buyButtonDescriptor];
      v76 = [v9 clientContext];
      [v20 setValuesUsingBuyButtonDescriptor:v75 itemState:v37 clientContext:v76 animated:0];

      if (([v20 isUsingItemOfferAppearance] & 1) == 0)
      {
        v72 = [v8 isEnabled];
      }

      [v20 setEnabled:v72];
      v77 = [v8 style];
      v78 = SKUIViewElementPlainColorWithStyle(v77, 0);

      [v20 setTintColor:v78];
      goto LABEL_86;
    }

    if (v18 == 12)
    {
      v20 = [(SKUIViewModification *)self addReusableViewWithReuseIdentifier:0x28280C848];
      v35 = [v8 sizeVariant];
      v36 = [v35 isEqualToString:@"large"];

      [v20 setStyle:v36];
      v37 = [v8 playItemIdentifier];
      if ([v20 isIndeterminate])
      {
        [v20 endIndeterminateAnimation];
      }

      [v20 setShowOnDemand:{objc_msgSend(v8, "showOnDemand")}];
      [v20 showPlayIndicator:1];
      [v20 setPlayItemIdentifier:v37];
      [v20 setItemIdentifier:{objc_msgSend(v37, "longLongValue")}];
      [v20 setBigHitInsets:{-15.0, -15.0, -15.0, -15.0}];
      v38 = [v8 style];
      v39 = [v38 ikBackgroundColor];

      v40 = [v39 colorType];
      if (v40 == 2)
      {
        v43 = 0;
        v44 = 0;
      }

      else
      {
        if (v40 == 3)
        {
          v41 = [v39 gradientDirectionType] == 2;
          v42 = [v39 gradientColors];
          [v20 setBackgroundGradientColors:v42 withGradientType:v41];
          v43 = 0;
          v44 = 0;
          v40 = 4;
        }

        else
        {
          v44 = [v39 color];
          v42 = [v8 style];
          v96 = [v42 ikColor];
          v43 = [v96 color];

          v40 = 1;
        }
      }

      [v20 setItemIdentifier:{objc_msgSend(v37, "longLongValue")}];
      [v20 setBackgroundType:v40];
      if (v43)
      {
        [v20 setControlForegroundColor:v43];
      }

      if (v44)
      {
        [v20 setControlColor:v44];
      }

      [v20 setElement:v8];
      [v20 setEnabled:{objc_msgSend(v8, "isEnabled")}];
      [v20 setDisabledButSelectable:{objc_msgSend(v8, "isDisabledButSelectable")}];
      [v20 setHidden:{objc_msgSend(v20, "showOnDemand")}];

LABEL_86:
      goto LABEL_87;
    }
  }

  if (v18 == 6)
  {
    if ([v8 buttonViewSubType] == 1)
    {
      v79 = [(SKUIViewModification *)self addReusableViewWithReuseIdentifier:0x28280C9C8];
      v80 = [v8 nonToggledText];
      [v79 setNonToggledTitle:v80];

      v81 = [v8 toggledText];
      [v79 setToggledTitle:v81];

      [v79 setAutoIncrement:{objc_msgSend(v8, "autoIncrementCount")}];
      v49 = v79;
      v82 = v49;
    }

    else
    {
      v82 = [(SKUIViewModification *)self addReusableViewWithReuseIdentifier:0x28280C6C8];
      v49 = 0;
    }

    [v82 setBorderStyle:0];
    v83 = [SKUIStyledButton buttonTypeForElement:v8];
    if ([v8 isBigHitButton])
    {
      [v8 bigHitSize];
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
    v87 = [v9 labelLayoutCache];
    v88 = [v87 layoutForWidth:a4 viewElement:v8];
    [v82 setTitleLayout:v88];

    v89 = [v8 style];
    [v89 elementPadding];
    [v82 setButtonPadding:?];

    v90 = [v8 isEnabled];
    [v82 setEnabled:v90];
    v91 = 0.4;
    if (v90)
    {
      v91 = 1.0;
    }

    [v82 setAlpha:v91];
    v54 = [v82 imageView];
    v92 = [v8 buttonImage];
    v93 = __RequestImage(v92, v9);
    if (v49)
    {
      [v49 setElement:v8];
      v94 = [v8 toggleItemIdentifier];
      v122 = +[SKUIToggleStateCenter defaultCenter];
      if ([v94 length])
      {
        [v49 setToggleItemIdentifier:v94];
        v95 = [v122 itemForIdentifier:v94];
      }

      else
      {
        v95 = 0;
      }

      if (([v95 toggled] & 0x80000000) != 0)
      {
        v120 = [v8 isToggled];
      }

      else
      {
        v120 = [v95 count];
      }

      v124 = v95;
      v105 = [v8 additionalButtonImage];
      if (v105)
      {
        [v49 setToggleButtonType:1];
        v106 = __RequestImage(v105, v9);
      }

      else
      {
        [v49 setToggleButtonType:0];
        v106 = 0;
      }

      if ([v8 autoIncrementCount] && objc_msgSend(v124, "toggled") == -1)
      {
        v114 = v54;
        v115 = v94;
        v118 = [v49 titleLayout];
        v110 = [v118 attributedString];
        v111 = [v110 string];

        v119 = v111;
        if ([v111 length])
        {
          if (addButtonWithElement_width_context__sOnceToken != -1)
          {
            [SKUIViewModification(SKUIViewElementView) addButtonWithElement:width:context:];
          }

          v94 = v115;
          v54 = v114;
          v112 = [addButtonWithElement_width_context__sNumberFormatter numberFromString:v119];
          if (v112)
          {
            v116 = v112;
            v120 = [v112 integerValue];
            v112 = v116;
          }
        }

        else
        {
          v54 = v114;
          v94 = v115;
        }

        if (v120 < 1)
        {
          [v49 setButtonTitleText:@" "];
          [v49 setAutoIncrementCount:v120];
        }

        else
        {
          [v49 setAutoIncrementCount:v120];
          [v49 setButtonTitleText:v119];
        }

        [v49 setAutoIncrementCount:v120];
        [v49 setToggled:{objc_msgSend(v8, "isToggled")}];
      }

      else if ([v8 autoIncrementCount])
      {
        v117 = v105;
        [v49 setToggled:{objc_msgSend(v124, "toggled") == 1}];
        if (v120 < 1)
        {
          [v49 setButtonTitleText:@" "];
        }

        else
        {
          [v124 toggledString];
          v107 = v93;
          v109 = v108 = v94;
          [v49 setButtonTitleText:v109];

          v94 = v108;
          v93 = v107;
        }

        v105 = v117;
      }

      else
      {
        [v49 setToggled:{objc_msgSend(v8, "isToggled")}];
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

      [(SKUIButtonBorderStyle *)v54 setContents:v113];
    }

    else
    {
      [(SKUIButtonBorderStyle *)v54 setContents:v93];
    }

    [v9 sizeForImageElement:v92];
    [(SKUIButtonBorderStyle *)v54 setImageSize:?];
    v20 = v82;

    goto LABEL_64;
  }

  if (v18 != 7)
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
  v66 = [v9 labelLayoutCache];
  v67 = [v66 layoutForWidth:a4 viewElement:v8];
  [v20 setTitleLayout:v67];

  v68 = [v8 isEnabled];
  [v20 setEnabled:v68];
  v69 = 0.4;
  if (v68)
  {
    v69 = 1.0;
  }

  [v20 setAlpha:v69];
LABEL_87:
  v97 = [v8 attributes];
  v98 = [v97 objectForKeyedSubscript:@"privacy"];

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
    v101 = [v8 buttonTitleStyle];
    v102 = v101;
    if (!v101)
    {
      v102 = [v8 style];
    }

    v103 = [v102 ikColor];
    [v100 setUsesTintColor:{objc_msgSend(v103, "colorType") == 1}];

    if (!v101)
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

- (id)addDividerWithElement:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  v17 = [v6 style];
  v18 = [v7 tintColor];

  v19 = SKUIViewElementPlainColorWithStyle(v17, v18);

  if (v19 || [v6 dividerType] == 3)
  {
    if ([v6 dividerType] == 3)
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

- (id)addHeaderViewWithElement:(id)a3 width:(double)a4 context:(id)a5
{
  v8 = a5;
  v9 = a3;
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
  [v18 reloadWithViewElement:v9 width:v8 context:a4];

  return v18;
}

- (id)addHorizontalListWithElement:(id)a3 width:(double)a4 context:(id)a5
{
  v8 = a5;
  v9 = a3;
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
  v19 = [v9 style];
  [v19 elementPadding];
  [v18 setContentInset:?];

  [v18 reloadWithViewElement:v9 width:v8 context:a4];

  return v18;
}

- (id)addHorizontalLockupWithElement:(id)a3 width:(double)a4 context:(id)a5
{
  v8 = a5;
  v9 = a3;
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
  [v18 reloadWithViewElement:v9 width:v8 context:a4];

  return v18;
}

- (id)addImageDeckViewWithElement:(id)a3 width:(double)a4 context:(id)a5
{
  v8 = a5;
  v9 = a3;
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
  [v18 reloadWithViewElement:v9 width:v8 context:a4];

  return v18;
}

- (id)addImageGridViewWithElement:(id)a3 width:(double)a4 context:(id)a5
{
  v8 = a5;
  v9 = a3;
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
  [v18 reloadWithViewElement:v9 width:v8 context:a4];

  return v18;
}

- (id)addImageViewWithElement:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
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

  v16 = [v6 style];
  v17 = [v16 imageTreatment];
  v18 = SKUIImageTreatmentForString(v17);

  if (v18 == 13)
  {
    v19 = [(SKUIViewModification *)self _addImageViewWithReuseIdentifier:0x28280C868 viewElement:v6 context:v7];
    if (v16)
    {
      [v16 transform];
      [v19 setTransform:v35];
    }

    v21 = SKUIViewElementPlainColorWithStyle(v16, 0);
    [v19 setTintColor:v21];

    [v16 elementPadding];
    [v19 setImagePadding:?];
    v20 = [v16 ikBackgroundColor];
    v22 = [v20 color];
    [v19 setBackgroundColor:v22];
  }

  else if (v18 == 7)
  {
    v19 = [(SKUIViewModification *)self _addImageViewWithReuseIdentifier:0x28280C8C8 viewElement:v6 context:v7];
    v20 = [v7 borderDrawingCache];
    [v19 setBorderDrawingCache:v20];
  }

  else
  {
    v23 = [v6 children];
    v24 = [v23 count];

    if (v24)
    {
      v19 = [(SKUIViewModification *)self _addImageViewWithReuseIdentifier:0x28280C648 viewElement:v6 context:v7];
      [v6 size];
      [v19 reloadWithViewElement:v6 width:v7 context:?];
    }

    else
    {
      [v6 shadowOffset];
      if (v26 == *MEMORY[0x277CBF3A8] && v25 == *(MEMORY[0x277CBF3A8] + 8))
      {
        v19 = [(SKUIViewModification *)self _addImageViewWithReuseIdentifier:0x28280C7E8 viewElement:v6 context:v7];
        [v6 layerShadowOpacity];
        if (v28 != 0.0)
        {
          v29 = [v19 layer];
          [v29 setMasksToBounds:0];

          v30 = [v19 layer];
          [v6 layerShadowOpacity];
          [v30 setShadowOpacity:?];

          v31 = [v19 layer];
          [v6 layerShadowOffset];
          [v31 setShadowOffset:?];
        }

        [v6 layerShadowRadius];
        if (v32 != 0.0)
        {
          v33 = [v19 layer];
          [v6 layerShadowRadius];
          [v33 setShadowRadius:?];
        }
      }

      else
      {
        v19 = [(SKUIViewModification *)self _addImageViewWithReuseIdentifier:0x28280C808 viewElement:v6 context:v7];
        [v19 setContentMode:4];
      }
    }

    if (v16)
    {
      [v16 transform];
      [v19 setTransform:v35];
    }

    v20 = SKUIViewElementPlainColorWithStyle(v16, 0);
    [v19 setTintColor:v20];
  }

  return v19;
}

- (id)addImageViewWithVideoElement:(id)a3 context:(id)a4
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
        [(SKUIViewModification(SKUIViewElementView) *)v8 addImageViewWithVideoElement:v9 context:v10, v11, v12, v13, v14, v15];
      }
    }
  }

  v16 = [v7 thumbnailImage];
  v17 = [v7 isEnabled];

  if (v17)
  {
    v18 = [v16 style];
    v19 = [(SKUIViewModification *)self _addImageViewWithReuseIdentifier:0x28280CA08 viewElement:v16 context:v6];
    if (v18)
    {
      [v18 transform];
      [v19 setTransform:&v21];
    }
  }

  else
  {
    v19 = [(SKUIViewModification *)self addImageViewWithElement:v16 context:v6];
  }

  return v19;
}

- (id)addLabelViewWithElement:(id)a3 width:(double)a4 context:(id)a5
{
  v42 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
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

  v18 = [v9 labelLayoutCache];
  v19 = [v18 layoutForWidth:a4 viewElement:v8];

  v20 = [(SKUIViewModification *)self _attributedStringViewForLayout:v19];
  [v20 setLayout:v19];
  [v20 setContainsLinks:{objc_msgSend(v8, "containsLinks")}];
  if ([v8 containsLinks])
  {
    v21 = [v8 linkDelegate];
    [v20 setLinkDelegate:v21];
  }

  [v20 setStringTreatment:0];
  [v20 setTreatmentColor:0];
  v22 = [v8 style];
  v23 = [v22 ikColor];
  [v20 setTextColorFollowsTintColor:{objc_msgSend(v23, "colorType") == 1}];

  if (v19)
  {
    v24 = [v8 trailingBadges];
    v25 = [v9 badgeImageLoader];
    v26 = [v8 badges];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v27 = [v26 countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v27)
    {
      v28 = v27;
      v35 = v24;
      v36 = v9;
      LOBYTE(v29) = 0;
      v30 = *v38;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v38 != v30)
          {
            objc_enumerationMutation(v26);
          }

          v32 = *(*(&v37 + 1) + 8 * i);
          if (v29)
          {
            v29 = 1;
          }

          else
          {
            v33 = [*(*(&v37 + 1) + 8 * i) image];
            v29 = v33 == 0;
          }

          [v25 loadImageForBadge:v32 layout:v19 reason:{1, v35, v36}];
        }

        v28 = [v26 countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v28);
      v24 = v35;
      v9 = v36;
      if (v29)
      {
        [v25 connectStringView:v20];
      }
    }
  }

  else
  {
    v24 = 0;
  }

  [v20 setRequiredBadges:v24];
  [v20 setBadgePlacement:{objc_msgSend(v8, "badgePlacement") == 1}];

  return v20;
}

- (id)addLabelViewWithOrdinalElement:(id)a3 width:(double)a4 context:(id)a5
{
  v8 = a5;
  v9 = a3;
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

  v18 = [v8 labelLayoutCache];
  v19 = [v18 layoutForWidth:a4 viewElement:v9];

  v20 = [(SKUIViewModification *)self _attributedStringViewForLayout:v19];
  [v20 setLayout:v19];
  [v20 setStringTreatment:0];
  [v20 setTreatmentColor:0];
  v21 = [v9 style];

  v22 = [v21 ikColor];
  [v20 setTextColorFollowsTintColor:{objc_msgSend(v22, "colorType") == 1}];

  return v20;
}

- (id)addMenuButtonWithTitleItem:(id)a3 width:(double)a4 context:(id)a5
{
  v8 = a5;
  v9 = a3;
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
  [v18 setEnabled:{objc_msgSend(v9, "isEnabled")}];
  v19 = [v8 labelLayoutCache];

  v20 = [v19 layoutForWidth:a4 viewElement:v9];

  [v18 setTitleLayout:v20];
  [v18 setUsesTintColor:1];

  return v18;
}

- (id)addOfferViewWithViewElement:(id)a3 width:(double)a4 context:(id)a5
{
  v8 = a5;
  v9 = a3;
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
  [v18 reloadWithViewElement:v9 width:v8 context:a4];

  return v18;
}

- (id)addStackListViewWithElement:(id)a3 width:(double)a4 context:(id)a5
{
  v8 = a5;
  v9 = a3;
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
  v19 = [v9 style];
  [v19 elementPadding];
  [v18 setContentInset:?];

  [v18 reloadWithViewElement:v9 width:v8 context:a4];

  return v18;
}

- (id)addStackItemViewWithElement:(id)a3 width:(double)a4 context:(id)a5
{
  v8 = a5;
  v9 = a3;
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
  v19 = [v9 style];
  [v19 elementPadding];
  [v18 setContentInset:?];

  [v18 reloadWithViewElement:v9 width:v8 context:a4];

  return v18;
}

- (id)addReviewListTitleViewWithViewElement:(id)a3 width:(double)a4 context:(id)a5
{
  v8 = a5;
  v9 = a3;
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
  [v18 reloadWithViewElement:v9 width:v8 context:a4];

  return v18;
}

- (id)addResponseViewWithViewElement:(id)a3 width:(double)a4 context:(id)a5
{
  v8 = a5;
  v9 = a3;
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
  [v18 reloadWithViewElement:v9 width:v8 context:a4];

  return v18;
}

- (id)addStarRatingViewWithViewElement:(id)a3 width:(double)a4 context:(id)a5
{
  v8 = a5;
  v9 = a3;
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
  [v18 reloadWithViewElement:v9 width:v8 context:a4];

  return v18;
}

- (id)addStarRatingControlViewWithViewElement:(id)a3 width:(double)a4 context:(id)a5
{
  v8 = a5;
  v9 = a3;
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
  [v18 setEnabled:{objc_msgSend(v9, "isEnabled")}];
  [v18 reloadWithViewElement:v9 width:v8 context:a4];

  return v18;
}

- (id)addTabularLockupWithElement:(id)a3 width:(double)a4 context:(id)a5
{
  v8 = a5;
  v9 = a3;
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
  [v18 reloadWithViewElement:v9 width:v8 context:a4];

  return v18;
}

- (id)addTextViewWithElement:(id)a3 width:(double)a4 context:(id)a5
{
  v8 = a3;
  v9 = a5;
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
  v19 = [v9 editorialLayoutForLabelElement:v8 width:a4];
  v20 = [v19 bodyTextLayoutForOrientation:0];
  [v18 setContentInsets:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];
  [v18 setEnabled:0];
  [v18 setFixedWidthTextFrame:{objc_msgSend(v20, "textFrame")}];
  v21 = [v8 moreButtonTitle];
  [v18 setMoreButtonTitle:v21];

  if ([v20 requiresTruncation] && (objc_msgSend(v9, "isEditorialLayoutExpanded:", v19) & 1) == 0)
  {
    v22 = [v8 isEnabled];
  }

  else
  {
    v22 = 0;
  }

  [v18 setUserInteractionEnabled:v22];
  if ([v9 isEditorialLayoutExpanded:v19])
  {
    v23 = 0;
  }

  else
  {
    v23 = [v8 numberOfLines];
  }

  [v18 setNumberOfVisibleLines:v23];

  return v18;
}

- (id)addTomatoRatingViewWithViewElement:(id)a3 width:(double)a4 context:(id)a5
{
  v8 = a5;
  v9 = a3;
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
  [v18 reloadWithViewElement:v9 width:v8 context:a4];

  return v18;
}

- (id)_addImageViewWithReuseIdentifier:(id)a3 viewElement:(id)a4 context:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [(SKUIViewModification *)self addReusableViewWithReuseIdentifier:a3];
  v11 = [v9 accessibilityText];
  [v10 setAccessibilityLabel:v11];

  [v10 setUserInteractionEnabled:{objc_msgSend(v9, "isEnabled")}];
  v12 = __RequestImage(v9, v8);
  [v10 setContents:v12];
  [v8 sizeForImageElement:v9];
  v14 = v13;
  v16 = v15;

  [v10 setImageSize:{v14, v16}];

  return v10;
}

- (id)_itemStateForButton:(id)a3
{
  v3 = a3;
  v4 = [v3 itemIdentifier];
  v5 = [v3 storeIdentifier];
  if (!v5 && v4)
  {
    v5 = [[SKUIStoreIdentifier alloc] initWithLongLong:v4];
  }

  if (v5)
  {
    v6 = +[SKUIItemStateCenter defaultCenter];
    v7 = [v6 stateForItemWithStoreIdentifier:v5];

    if (v7 && ([v3 buyButtonDescriptor], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "canPersonalizeUsingItemState:", v7), v8, v9))
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

- (void)_styleItemOfferButton:(id)a3 forElement:(id)a4 context:(id)a5
{
  v20 = a3;
  v7 = a4;
  v8 = [a5 tintColor];
  v9 = [v7 style];
  v10 = SKUIViewElementPlainColorWithStyle(v9, v8);

  [v20 setTintColor:v10];
  v11 = v7;
  v12 = v11;
  if (v11)
  {
    v13 = v11;
    do
    {
      v14 = v13;
      v15 = [v13 style];
      v16 = [v15 ikBackgroundColor];
      v17 = SKUIViewElementPlainColorWithIKColor(v16, v8);

      v13 = [v14 parent];
    }

    while (v13 && !v17);
  }

  else
  {
    v17 = 0;
    v13 = 0;
  }

  v18 = [objc_opt_class() cloudTintColorForBackgroundColor:v17];
  [v20 setCloudTintColor:v18];

  [v20 setElement:v12];
  [v20 setEnabled:{objc_msgSend(v12, "isEnabled")}];
  [v20 setDisabledButSelectable:{objc_msgSend(v12, "isDisabledButSelectable")}];
  v19 = [v12 badgeResourceName];
  [v20 setUniversal:{objc_msgSend(v19, "isEqualToString:", @"plus"}];
}

- (id)_attributedStringViewForLayout:(id)a3
{
  [a3 edgeInsetsForShadow];
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