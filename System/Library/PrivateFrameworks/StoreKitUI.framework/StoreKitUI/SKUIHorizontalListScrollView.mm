@interface SKUIHorizontalListScrollView
+ (BOOL)prefetchResourcesForViewElement:(id)element reason:(int64_t)reason context:(id)context;
+ (CGSize)_sizeForViewElement:(id)element width:(double)width context:(id)context;
+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context;
+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context;
+ (id)_attributedStringForButton:(id)button context:(id)context;
+ (id)_attributedStringForLabel:(id)label context:(id)context;
+ (id)_attributedStringForText:(id)text style:(id)style context:(id)context;
+ (void)requestLayoutForViewElement:(id)element width:(double)width context:(id)context;
- (BOOL)setImage:(id)image forArtworkRequest:(id)request context:(id)context;
- (CGSize)sizeThatFits:(CGSize)fits;
- (SKUIHorizontalListScrollView)initWithFrame:(CGRect)frame;
- (id)viewForElementIdentifier:(id)identifier;
- (void)_buttonAction:(id)action;
- (void)layoutSubviews;
- (void)reloadWithViewElement:(id)element width:(double)width context:(id)context;
@end

@implementation SKUIHorizontalListScrollView

- (SKUIHorizontalListScrollView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v8)
      {
        [(SKUIHorizontalListScrollView *)v8 initWithFrame:v9, v10, v11, v12, v13, v14, v15];
      }
    }
  }

  v23.receiver = self;
  v23.super_class = SKUIHorizontalListScrollView;
  height = [(SKUIViewReuseView *)&v23 initWithFrame:x, y, width, height];
  if (height)
  {
    v17 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:517 valueOptions:0 capacity:0];
    viewElementViews = height->_viewElementViews;
    height->_viewElementViews = v17;

    v19 = objc_alloc(MEMORY[0x277D759D8]);
    [(SKUIHorizontalListScrollView *)height bounds];
    v20 = [v19 initWithFrame:?];
    scrollView = height->_scrollView;
    height->_scrollView = v20;

    [(UIScrollView *)height->_scrollView setAlwaysBounceHorizontal:0];
    [(UIScrollView *)height->_scrollView setAlwaysBounceVertical:0];
    [(UIScrollView *)height->_scrollView setScrollsToTop:0];
    [(UIScrollView *)height->_scrollView setShowsHorizontalScrollIndicator:0];
    [(UIScrollView *)height->_scrollView setShowsVerticalScrollIndicator:0];
    [(SKUIHorizontalListScrollView *)height addSubview:height->_scrollView];
  }

  return height;
}

+ (BOOL)prefetchResourcesForViewElement:(id)element reason:(int64_t)reason context:(id)context
{
  elementCopy = element;
  contextCopy = context;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v9 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v9)
      {
        [(SKUIHorizontalListScrollView *)v9 prefetchResourcesForViewElement:v10 reason:v11 context:v12, v13, v14, v15, v16];
      }
    }
  }

  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __79__SKUIHorizontalListScrollView_prefetchResourcesForViewElement_reason_context___block_invoke;
  v20[3] = &unk_2781F95A0;
  v17 = contextCopy;
  v22 = &v24;
  reasonCopy = reason;
  v21 = v17;
  [elementCopy enumerateChildrenUsingBlock:v20];
  v18 = *(v25 + 24);

  _Block_object_dispose(&v24, 8);
  return v18;
}

uint64_t __79__SKUIHorizontalListScrollView_prefetchResourcesForViewElement_reason_context___block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) prefetchResourcesForViewElement:a2 reason:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 24) = (*(*(*(a1 + 40) + 8) + 24) | result) & 1;
  return result;
}

+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v4)
      {
        [(SKUIHorizontalListScrollView *)v4 preferredSizeForViewElement:v5 context:v6, v7, v8, v9, v10, v11];
      }
    }
  }

  v12 = *MEMORY[0x277CBF3A8];
  v13 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v13;
  result.width = v12;
  return result;
}

+ (void)requestLayoutForViewElement:(id)element width:(double)width context:(id)context
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
        [(SKUIHorizontalListScrollView *)v10 requestLayoutForViewElement:v11 width:v12 context:v13, v14, v15, v16, v17];
      }
    }
  }

  labelLayoutCache = [contextCopy labelLayoutCache];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __74__SKUIHorizontalListScrollView_requestLayoutForViewElement_width_context___block_invoke;
  v21[3] = &unk_2781FAEB8;
  widthCopy = width;
  selfCopy = self;
  v22 = labelLayoutCache;
  v23 = contextCopy;
  v19 = contextCopy;
  v20 = labelLayoutCache;
  [elementCopy enumerateChildrenUsingBlock:v21];
}

void __74__SKUIHorizontalListScrollView_requestLayoutForViewElement_width_context___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 elementType];
  if (v3 <= 137)
  {
    if (v3 == 8)
    {
      [*(a1 + 32) requestLayoutForBadge:v5 width:*(a1 + 48)];
      goto LABEL_12;
    }

    if (v3 != 12)
    {
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  switch(v3)
  {
    case 138:
      v4 = [*(a1 + 56) _attributedStringForLabel:v5 context:*(a1 + 40)];
      [*(a1 + 32) requestLayoutForLabel:v5 attributedString:v4 width:*(a1 + 48)];
      goto LABEL_10;
    case 141:
LABEL_8:
      v4 = [*(a1 + 56) _attributedStringForButton:v5 context:*(a1 + 40)];
      [*(a1 + 32) requestLayoutForButton:v5 attributedString:v4 width:*(a1 + 48)];
LABEL_10:

      break;
    case 144:
      [SKUITomatoRatingView requestLayoutForViewElement:v5 width:*(a1 + 40) context:*(a1 + 48)];
      break;
  }

LABEL_12:
}

+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context
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
        [(SKUIHorizontalListScrollView *)v10 sizeThatFitsWidth:v11 viewElement:v12 context:v13, v14, v15, v16, v17];
      }
    }
  }

  v37 = 0;
  v38 = &v37;
  v39 = 0x3010000000;
  v40 = &unk_215F8ACD7;
  v41 = *MEMORY[0x277CBF3A8];
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __70__SKUIHorizontalListScrollView_sizeThatFitsWidth_viewElement_context___block_invoke;
  v27[3] = &unk_2781FE460;
  selfCopy = self;
  widthCopy = width;
  v18 = contextCopy;
  v28 = v18;
  v29 = &v37;
  v30 = &v33;
  [elementCopy enumerateChildrenUsingBlock:v27];
  v19 = v34[3];
  v20 = v38;
  v21 = v19 <= 1;
  v22 = v19 - 1;
  if (v21)
  {
    v23 = v38[4];
  }

  else
  {
    v23 = v38[4] + (v22 * 18.0);
    v38[4] = v23;
  }

  v24 = v20[5];

  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v37, 8);

  v25 = v23;
  v26 = v24;
  result.height = v26;
  result.width = v25;
  return result;
}

double __70__SKUIHorizontalListScrollView_sizeThatFitsWidth_viewElement_context___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 56) _sizeForViewElement:a2 width:*(a1 + 32) context:*(a1 + 64)];
  v5 = *(*(a1 + 40) + 8);
  if (*(v5 + 40) >= v4)
  {
    v4 = *(v5 + 40);
  }

  *(v5 + 40) = v4;
  v6 = *(*(a1 + 40) + 8);
  result = v3 + *(v6 + 32);
  *(v6 + 32) = result;
  ++*(*(*(a1 + 48) + 8) + 24);
  return result;
}

- (void)reloadWithViewElement:(id)element width:(double)width context:(id)context
{
  elementCopy = element;
  contextCopy = context;
  [(NSMapTable *)self->_viewElementViews removeAllObjects];
  [(NSMapTable *)self->_imageViewToImageResourceCacheKey removeAllObjects];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __68__SKUIHorizontalListScrollView_reloadWithViewElement_width_context___block_invoke;
  v12[3] = &unk_2781F95C8;
  widthCopy = width;
  v13 = elementCopy;
  v14 = contextCopy;
  selfCopy = self;
  v10 = contextCopy;
  v11 = elementCopy;
  [(SKUIViewReuseView *)self modifyUsingBlock:v12];
}

void __68__SKUIHorizontalListScrollView_reloadWithViewElement_width_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __68__SKUIHorizontalListScrollView_reloadWithViewElement_width_context___block_invoke_2;
  v8[3] = &unk_2781FC898;
  v9 = v3;
  v12 = *(a1 + 56);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v10 = v5;
  v11 = v6;
  v7 = v3;
  [v4 enumerateChildrenUsingBlock:v8];
}

void __68__SKUIHorizontalListScrollView_reloadWithViewElement_width_context___block_invoke_2(uint64_t a1, void *a2)
{
  v14 = a2;
  v3 = [v14 elementType];
  v4 = 0;
  if (v3 > 49)
  {
    if (v3 > 140)
    {
      if (v3 != 141)
      {
        if (v3 != 144)
        {
          goto LABEL_27;
        }

        v5 = [*(a1 + 32) addTomatoRatingViewWithViewElement:v14 width:*(a1 + 40) context:*(a1 + 56)];
        goto LABEL_13;
      }
    }

    else if (v3 != 50)
    {
      if (v3 != 138)
      {
        goto LABEL_27;
      }

      v5 = [*(a1 + 32) addLabelViewWithElement:v14 width:*(a1 + 40) context:*(a1 + 56)];
LABEL_13:
      v4 = v5;
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  if (v3 != 8)
  {
    if (v3 != 12)
    {
      if (v3 != 32)
      {
        goto LABEL_27;
      }

      v4 = [*(a1 + 32) addDividerWithElement:v14 context:*(a1 + 40)];
      [v4 setDividerOrientation:1];
      [v4 setDividerSize:16.0];
LABEL_14:
      v6 = 0;
      if (!v4)
      {
        goto LABEL_21;
      }

LABEL_20:
      [*(*(a1 + 48) + 432) setObject:v14 forKey:v4];
      goto LABEL_21;
    }

LABEL_16:
    v7 = [*(a1 + 32) addButtonWithElement:v14 width:*(a1 + 40) context:*(a1 + 56)];
    [v7 addTarget:*(a1 + 48) action:sel__buttonAction_ forControlEvents:64];
    LODWORD(v8) = -1097229926;
    [v7 setCharge:v8];
    v4 = v7;
    if ([v14 elementType] == 50)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0;
    }

    if (v4)
    {
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  v6 = [*(a1 + 32) addBadgeViewWithElement:v14 width:*(a1 + 40) context:*(a1 + 56)];
  v4 = v6;
  if (v6)
  {
    goto LABEL_20;
  }

LABEL_21:
  if (v6)
  {
    v9 = [*(a1 + 40) imageResourceCacheKeyForViewElement:v14];
    if (v9)
    {
      v10 = *(*(a1 + 48) + 440);
      if (!v10)
      {
        v11 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:517 valueOptions:0 capacity:1];
        v12 = *(a1 + 48);
        v13 = *(v12 + 440);
        *(v12 + 440) = v11;

        v10 = *(*(a1 + 48) + 440);
      }

      [v10 setObject:v9 forKey:v6];
    }
  }

LABEL_27:
}

- (BOOL)setImage:(id)image forArtworkRequest:(id)request context:(id)context
{
  v29 = *MEMORY[0x277D85DE8];
  imageCopy = image;
  contextCopy = context;
  requestIdentifier = [request requestIdentifier];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = self->_imageViewToImageResourceCacheKey;
  v11 = [(NSMapTable *)obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v11)
  {
    v12 = v11;
    v22 = imageCopy;
    v13 = *v25;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v24 + 1) + 8 * i);
        v16 = [(NSMapTable *)self->_imageViewToImageResourceCacheKey objectForKey:v15, v22];
        v17 = [contextCopy requestIdentifierForResourceCacheKey:v16];
        v18 = v17;
        if (v17 && [v17 unsignedIntegerValue] == requestIdentifier)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            imageView = [v15 imageView];
            imageCopy = v22;
            [imageView setImage:v22];
          }

          else
          {
            imageCopy = v22;
            [v15 setImage:v22];
          }

          v19 = 1;
          goto LABEL_16;
        }
      }

      v12 = [(NSMapTable *)obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }

    v19 = 0;
    imageCopy = v22;
  }

  else
  {
    v19 = 0;
  }

LABEL_16:

  return v19;
}

- (id)viewForElementIdentifier:(id)identifier
{
  v21 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = self->_viewElementViews;
  v5 = [(NSMapTable *)obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [(NSMapTable *)self->_viewElementViews objectForKey:v9];
        itmlID = [v10 itmlID];
        v12 = [itmlID isEqualToString:identifierCopy];

        if (v12)
        {
          v13 = v9;

          goto LABEL_11;
        }
      }

      v6 = [(NSMapTable *)obj countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  return v13;
}

- (void)layoutSubviews
{
  v25 = *MEMORY[0x277D85DE8];
  [(SKUIHorizontalListScrollView *)self bounds];
  v4 = v3;
  v6 = v5;
  [(UIScrollView *)self->_scrollView setFrame:?];
  allExistingViews = [(SKUIViewReuseView *)self allExistingViews];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = [allExistingViews countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    v11 = 0.0;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(allExistingViews);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        [v13 sizeThatFits:{1.79769313e308, v6}];
        v15 = v14;
        v17 = v16;
        *&v14 = (v6 - v16) * 0.5;
        v18 = floorf(*&v14);
        [v13 setFrame:{v11, v18, v15, v16}];
        v26.origin.x = v11;
        v26.origin.y = v18;
        v26.size.width = v15;
        v26.size.height = v17;
        MaxX = CGRectGetMaxX(v26);
        v27.origin.x = v11;
        v27.origin.y = v18;
        v27.size.width = v15;
        v27.size.height = v17;
        v11 = CGRectGetMaxX(v27) + 18.0;
        [(UIScrollView *)self->_scrollView addSubview:v13];
      }

      v9 = [allExistingViews countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  else
  {
    MaxX = 0.0;
  }

  [(UIScrollView *)self->_scrollView setContentSize:MaxX, v6];
  [(UIScrollView *)self->_scrollView setScrollEnabled:MaxX > v4];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  v23 = *MEMORY[0x277D85DE8];
  v7 = *MEMORY[0x277CBF3A8];
  v6 = *(MEMORY[0x277CBF3A8] + 8);
  allExistingViews = [(SKUIViewReuseView *)self allExistingViews];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = [allExistingViews countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      v12 = 0;
      do
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(allExistingViews);
        }

        [*(*(&v18 + 1) + 8 * v12) sizeThatFits:{width, height}];
        if (v6 < v14)
        {
          v6 = v14;
        }

        v7 = v7 + v13;
        ++v12;
      }

      while (v10 != v12);
      v10 = [allExistingViews countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  if ([allExistingViews count] >= 2)
  {
    v7 = v7 + (([allExistingViews count] - 1) * 18.0);
  }

  [(UIScrollView *)self->_scrollView contentInset];
  if (v7 + v15 < width)
  {
    width = v7 + v15;
  }

  v16 = width;
  v17 = v6;
  result.height = v17;
  result.width = v16;
  return result;
}

- (void)_buttonAction:(id)action
{
  v4 = MEMORY[0x277CCAB98];
  actionCopy = action;
  defaultCenter = [v4 defaultCenter];
  [defaultCenter postNotificationName:0x282804928 object:self];
  v6 = [(NSMapTable *)self->_viewElementViews objectForKey:actionCopy];

  [v6 dispatchEventOfType:2 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:0];
}

+ (id)_attributedStringForButton:(id)button context:(id)context
{
  buttonCopy = button;
  contextCopy = context;
  buttonText = [buttonCopy buttonText];
  buttonTitleStyle = [buttonCopy buttonTitleStyle];
  if (buttonTitleStyle)
  {
    v10 = [self _attributedStringForText:buttonText style:buttonTitleStyle context:contextCopy];
  }

  else
  {
    style = [buttonCopy style];
    v10 = [self _attributedStringForText:buttonText style:style context:contextCopy];
  }

  return v10;
}

+ (id)_attributedStringForLabel:(id)label context:(id)context
{
  contextCopy = context;
  labelCopy = label;
  text = [labelCopy text];
  style = [labelCopy style];

  v10 = [self _attributedStringForText:text style:style context:contextCopy];

  return v10;
}

+ (id)_attributedStringForText:(id)text style:(id)style context:(id)context
{
  textCopy = text;
  styleCopy = style;
  contextCopy = context;
  v10 = SKUIViewElementFontWithStyle(styleCopy);
  if (!v10)
  {
    v10 = SKUIFontForTextStyle(5);
  }

  tintColor = [contextCopy tintColor];
  v12 = SKUIViewElementPlainColorWithStyle(styleCopy, tintColor);

  if (!v12)
  {
    v12 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.8];
  }

  v13 = [textCopy attributedStringWithDefaultFont:v10 foregroundColor:v12 style:styleCopy];

  return v13;
}

+ (CGSize)_sizeForViewElement:(id)element width:(double)width context:(id)context
{
  elementCopy = element;
  contextCopy = context;
  if ([elementCopy elementType] == 32)
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v10 = 16.0;
    v12 = 1.0 / v11;
  }

  else
  {
    [contextCopy sizeForViewElement:elementCopy width:width];
    v12 = v13;
    v10 = v14;
  }

  v15 = v12;
  v16 = v10;
  result.height = v16;
  result.width = v15;
  return result;
}

@end