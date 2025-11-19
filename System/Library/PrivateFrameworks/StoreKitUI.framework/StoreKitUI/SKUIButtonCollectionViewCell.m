@interface SKUIButtonCollectionViewCell
+ (BOOL)prefetchResourcesForViewElement:(id)a3 reason:(int64_t)a4 context:(id)a5;
+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4;
+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5;
+ (id)_attributedStringWithButton:(id)a3 context:(id)a4;
+ (void)requestLayoutForViewElement:(id)a3 width:(double)a4 context:(id)a5;
- (BOOL)_usesBackgroundWithAlpha;
- (BOOL)setImage:(id)a3 forArtworkRequest:(id)a4 context:(id)a5;
- (BOOL)updateWithItemState:(id)a3 context:(id)a4 animated:(BOOL)a5;
- (id)viewForElementIdentifier:(id)a3;
- (void)_buttonAction:(id)a3;
- (void)dealloc;
- (void)layoutSubviews;
- (void)reloadWithViewElement:(id)a3 width:(double)a4 context:(id)a5;
- (void)setBackgroundColor:(id)a3;
@end

@implementation SKUIButtonCollectionViewCell

- (void)dealloc
{
  [(UIControl *)self->_button removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];
  v3.receiver = self;
  v3.super_class = SKUIButtonCollectionViewCell;
  [(SKUIViewReuseCollectionViewCell *)&v3 dealloc];
}

+ (BOOL)prefetchResourcesForViewElement:(id)a3 reason:(int64_t)a4 context:(id)a5
{
  v7 = a3;
  v8 = a5;
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

  v17 = [v8 prefetchResourcesForViewElement:v7 reason:a4];

  return v17;
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
        [(SKUIButtonCollectionViewCell *)v8 preferredSizeForViewElement:v9 context:v10, v11, v12, v13, v14, v15];
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
  v8 = a3;
  v9 = a5;
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

  v18 = [v8 elementType];
  if (v18 == 141 || v18 == 12)
  {
    v19 = [a1 _attributedStringWithButton:v8 context:v9];
    v20 = [v9 labelLayoutCache];
    [v20 requestLayoutForButton:v8 attributedString:v19 width:a4];
  }
}

+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5
{
  v7 = a4;
  v8 = a5;
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

  [v8 sizeForViewElement:v7 width:a3];
  v18 = v17;

  v19 = a3;
  v20 = v18;
  result.height = v20;
  result.width = v19;
  return result;
}

- (void)reloadWithViewElement:(id)a3 width:(double)a4 context:(id)a5
{
  v9 = a3;
  v10 = a5;
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
  v19 = v9;
  v33 = v19;
  v34 = self;
  v36 = a4;
  v20 = v10;
  v35 = v20;
  [(SKUIViewReuseCollectionViewCell *)self modifyUsingBlock:&v29];
  v21 = [v20 imageResourceCacheKeyForViewElement:{v19, v29, v30, v31, v32}];
  buttonImageResourceCacheKey = self->_buttonImageResourceCacheKey;
  self->_buttonImageResourceCacheKey = v21;

  v23 = [v19 style];
  viewElementStyle = self->_viewElementStyle;
  self->_viewElementStyle = v23;

  v25 = [v19 buyButtonDescriptor];
  buyButtonDescriptor = self->_buyButtonDescriptor;
  self->_buyButtonDescriptor = v25;

  objc_storeStrong(&self->_viewElement, a3);
  if ([(SKUIButtonCollectionViewCell *)self _usesBackgroundWithAlpha])
  {
    button = self->_button;
    if (button)
    {
      v28 = [MEMORY[0x277D75348] clearColor];
      [(UIControl *)button setBackgroundColor:v28];
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

- (void)setBackgroundColor:(id)a3
{
  v4 = a3;
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
  [(SKUIViewReuseCollectionViewCell *)&v15 setBackgroundColor:v4];
  if ([(SKUIButtonCollectionViewCell *)self _usesBackgroundWithAlpha])
  {
    button = self->_button;
    if (button)
    {
      v14 = [MEMORY[0x277D75348] clearColor];
      [(UIControl *)button setBackgroundColor:v14];
    }
  }
}

- (BOOL)setImage:(id)a3 forArtworkRequest:(id)a4 context:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
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

  v19 = [v10 requestIdentifierForResourceCacheKey:self->_buttonImageResourceCacheKey];
  if (v19 && (v20 = [v9 requestIdentifier], v20 == objc_msgSend(v19, "unsignedIntegerValue")))
  {
    v21 = [(UIControl *)self->_button imageView];
    [v21 setImage:v8];

    v22 = 1;
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (BOOL)updateWithItemState:(id)a3 context:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
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

  v18 = [(SKUIBuyButtonDescriptor *)self->_buyButtonDescriptor canPersonalizeUsingItemState:v8];
  if (v18)
  {
    button = self->_button;
    buyButtonDescriptor = self->_buyButtonDescriptor;
    v21 = [v9 clientContext];
    [(UIControl *)button setValuesUsingBuyButtonDescriptor:buyButtonDescriptor itemState:v8 clientContext:v21 animated:v5];
  }

  return v18;
}

- (id)viewForElementIdentifier:(id)a3
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
    v11 = [(SKUIButtonCollectionViewCell *)self contentView];
    [v11 bounds];
    v13 = v12;
    v15 = v14;

    [(SKUIViewReuseCollectionViewCell *)self contentInset];
    v17 = v16;
    v19 = v18;
    v20 = v13 - v16 - v18;
    v21 = self->_viewElementStyle;
    v22 = [(IKViewElementStyle *)v21 textAlignment];
    if (!v22)
    {
      v22 = [(IKViewElementStyle *)v21 elementAlignment];
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
    if (v22 <= 5)
    {
      if (((1 << v22) & 0x35) != 0)
      {
        v32 = (v13 - v29) * 0.5;
        v23 = floorf(v32);
      }

      else if (v22 == 1)
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

- (void)_buttonAction:(id)a3
{
  v8 = SKUICollectionViewForView(self);
  v4 = [v8 delegate];
  v5 = objc_opt_respondsToSelector();
  viewElement = self->_viewElement;
  if (v5)
  {
    v7 = [v8 indexPathForCell:self];
    [v4 collectionView:v8 didConfirmButtonElement:viewElement withClickInfo:0 forItemAtIndexPath:v7];
  }

  else
  {
    [(SKUIButtonViewElement *)self->_viewElement dispatchEventOfType:2 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:0];
  }
}

+ (id)_attributedStringWithButton:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 buttonTitleStyle];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [v5 style];
  }

  v10 = v9;

  v11 = SKUIViewElementFontWithStyle(v10);
  if (!v11)
  {
    v11 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  }

  v12 = [v6 tintColor];
  v13 = SKUIViewElementPlainColorWithStyle(v10, v12);

  if (!v13)
  {
    v13 = [MEMORY[0x277D75348] blackColor];
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

  v16 = [v5 buttonText];
  v17 = [v16 attributedStringWithDefaultFont:v11 foregroundColor:v13 textAlignment:v15 style:v10];

  return v17;
}

- (BOOL)_usesBackgroundWithAlpha
{
  v7 = 0;
  v8 = 0;
  v5 = 0.0;
  v6 = 0;
  v2 = [(SKUIButtonCollectionViewCell *)self backgroundColor];
  v3 = [v2 getHue:&v8 saturation:&v7 brightness:&v6 alpha:&v5];

  return v3 && v5 < 1.0 && v5 != 0.0;
}

@end