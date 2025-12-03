@interface SKUIAdornedImageViewReuseView
+ (BOOL)prefetchResourcesForViewElement:(id)element reason:(int64_t)reason context:(id)context;
+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context;
+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context;
+ (id)_attributedStringForButton:(id)button context:(id)context;
+ (id)_attributedStringForButtonText:(id)text type:(int64_t)type style:(id)style context:(id)context;
+ (id)_attributedStringForLabel:(id)label context:(id)context;
+ (id)_attributedStringForMenuItem:(id)item context:(id)context;
+ (void)requestLayoutForViewElement:(id)element width:(double)width context:(id)context;
- (BOOL)setImage:(id)image forArtworkRequest:(id)request context:(id)context;
- (CGRect)frameForView:(id)view;
- (SKUIAdornedImageViewReuseView)init;
- (id)viewForElementIdentifier:(id)identifier;
- (void)_buttonAction:(id)action;
- (void)layoutSubviews;
- (void)mediaPlayer:(id)player itemStateChanged:(id)changed;
- (void)reloadWithViewElement:(id)element width:(double)width context:(id)context;
@end

@implementation SKUIAdornedImageViewReuseView

- (SKUIAdornedImageViewReuseView)init
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIAdornedImageViewReuseView *)v3 init:v4];
      }
    }
  }

  v15.receiver = self;
  v15.super_class = SKUIAdornedImageViewReuseView;
  v11 = [(SKUIAdornedImageViewReuseView *)&v15 init];
  if (v11)
  {
    v12 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:0 capacity:0];
    viewElementViews = v11->_viewElementViews;
    v11->_viewElementViews = v12;
  }

  return v11;
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
        [(SKUIAdornedImageViewReuseView *)v9 prefetchResourcesForViewElement:v10 reason:v11 context:v12, v13, v14, v15, v16];
      }
    }
  }

  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __80__SKUIAdornedImageViewReuseView_prefetchResourcesForViewElement_reason_context___block_invoke;
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

uint64_t __80__SKUIAdornedImageViewReuseView_prefetchResourcesForViewElement_reason_context___block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) prefetchResourcesForViewElement:a2 reason:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 24) = (*(*(*(a1 + 40) + 8) + 24) | result) & 1;
  return result;
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
        [(SKUIAdornedImageViewReuseView *)v8 preferredSizeForViewElement:v9 context:v10, v11, v12, v13, v14, v15];
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
  contextCopy = context;
  elementCopy = element;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    +[SKUIAdornedImageViewReuseView requestLayoutForViewElement:width:context:];
  }

  [elementCopy size];
  if (v10 <= width)
  {
    width = v10;
  }

  labelLayoutCache = [contextCopy labelLayoutCache];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __75__SKUIAdornedImageViewReuseView_requestLayoutForViewElement_width_context___block_invoke;
  v14[3] = &unk_2781FAEB8;
  widthCopy = width;
  selfCopy = self;
  v15 = labelLayoutCache;
  v16 = contextCopy;
  v12 = contextCopy;
  v13 = labelLayoutCache;
  [elementCopy enumerateChildrenUsingBlock:v14];
}

void __75__SKUIAdornedImageViewReuseView_requestLayoutForViewElement_width_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v13 = 0;
  v4 = [v3 style];
  SKUIViewElementMarginForStyle(v4, &v13);
  v6 = v5;
  v8 = v7;

  v9 = v6 + v8;
  if (!v13)
  {
    v9 = 16.0;
  }

  v10 = *(a1 + 48) - v9;
  v11 = [v3 elementType];
  if (v11 > 137)
  {
    if (v11 == 138)
    {
      v12 = [*(a1 + 56) _attributedStringForLabel:v3 context:*(a1 + 40)];
      [*(a1 + 32) requestLayoutForLabel:v3 attributedString:v12 width:v10];
      goto LABEL_12;
    }

    if (v11 == 141)
    {
LABEL_9:
      v12 = [*(a1 + 56) _attributedStringForButton:v3 context:*(a1 + 40)];
      [*(a1 + 32) requestLayoutForButton:v3 attributedString:v12 width:v10];
LABEL_12:
    }
  }

  else
  {
    if (v11 != 8)
    {
      if (v11 != 12)
      {
        goto LABEL_13;
      }

      goto LABEL_9;
    }

    [*(a1 + 32) requestLayoutForBadge:v3 width:v10];
  }

LABEL_13:
}

+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context
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
        [(SKUIAdornedImageViewReuseView *)v9 sizeThatFitsWidth:v10 viewElement:v11 context:v12, v13, v14, v15, v16];
      }
    }
  }

  [contextCopy sizeForViewElement:elementCopy width:width];
  v18 = v17;
  v20 = v19;

  v21 = v18;
  v22 = v20;
  result.height = v22;
  result.width = v21;
  return result;
}

- (void)reloadWithViewElement:(id)element width:(double)width context:(id)context
{
  elementCopy = element;
  contextCopy = context;
  [(NSMapTable *)self->_viewElementViews removeAllObjects];
  [(NSMapTable *)self->_imageViewToImageResourceCacheKey removeAllObjects];
  objc_storeStrong(&self->_imageViewElement, element);
  playButton = self->_playButton;
  self->_playButton = 0;

  self->_playButtonPosition = 0;
  v29 = MEMORY[0x277D85DD0];
  v30 = 3221225472;
  v31 = __69__SKUIAdornedImageViewReuseView_reloadWithViewElement_width_context___block_invoke;
  v32 = &unk_2781F95C8;
  v12 = elementCopy;
  v33 = v12;
  widthCopy = width;
  v13 = contextCopy;
  v34 = v13;
  selfCopy = self;
  [(SKUIViewReuseView *)self modifyUsingBlock:&v29];
  v14 = [SKUIMediaPlayerInterface sharedInstance:v29];
  [v14 removeObserver:self];

  v15 = self->_playButton;
  if (v15)
  {
    playItemIdentifier = [(SKUIPlayButton *)v15 playItemIdentifier];

    if (playItemIdentifier)
    {
      v17 = +[SKUIMediaPlayerInterface sharedInstance];
      playItemIdentifier2 = [(SKUIPlayButton *)self->_playButton playItemIdentifier];
      v19 = [v17 playerForItemWithIdentifier:playItemIdentifier2];

      playItemIdentifier3 = [(SKUIPlayButton *)self->_playButton playItemIdentifier];
      if ([v17 identifierIsOnDeck:playItemIdentifier3])
      {
        isIndeterminate = [(SKUIPlayButtonControl *)self->_playButton isIndeterminate];

        if (!isIndeterminate)
        {
          [(SKUIPlayButtonControl *)self->_playButton beginIndeterminateAnimation];
          v22 = self->_playButton;
          v23 = 0;
          goto LABEL_16;
        }
      }

      else
      {
      }

      if (!v19)
      {
        [(SKUIPlayButtonControl *)self->_playButton hideProgressAnimated:1];
        if ([(SKUIPlayButton *)self->_playButton showOnDemand])
        {
          [(SKUIPlayButton *)self->_playButton setHidden:1];
        }

        goto LABEL_17;
      }

      playerItem = [v19 playerItem];
      playState = [playerItem playState];

      if ([(SKUIPlayButton *)self->_playButton showOnDemand])
      {
        [(SKUIPlayButton *)self->_playButton setHidden:0];
      }

      if (playState <= 5 && ((1 << playState) & 0x31) != 0)
      {
        [(SKUIPlayButtonControl *)self->_playButton hideProgressAnimated:1];
LABEL_17:
        v28 = +[SKUIMediaPlayerInterface sharedInstance];
        [v28 addObserver:self];

        goto LABEL_18;
      }

      v26 = self->_playButton;
      playerItem2 = [v19 playerItem];
      [(SKUIPlayButton *)v26 reloadWithItemStatus:playerItem2 animated:0];

      v22 = self->_playButton;
      v23 = playState == 3;
LABEL_16:
      [(SKUIPlayButtonControl *)v22 showPlayIndicator:v23];
      goto LABEL_17;
    }
  }

LABEL_18:
}

void __69__SKUIAdornedImageViewReuseView_reloadWithViewElement_width_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __69__SKUIAdornedImageViewReuseView_reloadWithViewElement_width_context___block_invoke_2;
  v10[3] = &unk_2781FDEB0;
  v15 = *(a1 + 56);
  v11 = v4;
  v12 = v3;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v13 = v6;
  v14 = v7;
  v8 = v3;
  v9 = v4;
  [v5 enumerateChildrenUsingBlock:v10];
}

void __69__SKUIAdornedImageViewReuseView_reloadWithViewElement_width_context___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 style];
  v5 = [v4 elementPosition];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = 9;
  }

  for (i = [*(a1 + 32) count]; i <= v6; i = objc_msgSend(*(a1 + 32), "count"))
  {
    v8 = *(a1 + 32);
    v9 = [MEMORY[0x277CCABB0] numberWithBool:0];
    [v8 addObject:v9];
  }

  v10 = [*(a1 + 32) objectAtIndex:v6];
  v11 = [v10 BOOLValue];

  if ((v11 & 1) == 0)
  {
    v12 = *(a1 + 32);
    v13 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [v12 replaceObjectAtIndex:v6 withObject:v13];

    v32 = 0;
    SKUIViewElementMarginForStyle(v4, &v32);
    v16 = v14 + v15;
    if (!v32)
    {
      v16 = 16.0;
    }

    v17 = *(a1 + 64) - v16;
    v18 = [v3 elementType];
    v19 = 0;
    if (v18 <= 48)
    {
      if (v18 == 8)
      {
        v23 = [*(a1 + 40) addBadgeViewWithElement:v3 width:*(a1 + 48) context:v17];
LABEL_29:
        v19 = v23;
        v20 = v23;
        if (!v23)
        {
          goto LABEL_35;
        }

        goto LABEL_30;
      }

      if (v18 == 12)
      {
        goto LABEL_21;
      }

      v20 = 0;
      if (v18 != 29)
      {
        goto LABEL_37;
      }
    }

    else
    {
      if (v18 > 137)
      {
        if (v18 == 138)
        {
          v19 = [*(a1 + 40) addLabelViewWithElement:v3 width:*(a1 + 48) context:v17];
          v20 = 0;
          if (!v19)
          {
            goto LABEL_37;
          }

          goto LABEL_36;
        }

        v20 = 0;
        if (v18 != 141)
        {
LABEL_37:

          goto LABEL_38;
        }

LABEL_21:
        v24 = [*(a1 + 40) addButtonWithElement:v3 width:*(a1 + 48) context:v17];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_storeStrong((*(a1 + 56) + 440), v24);
          v25 = [v3 style];
          *(*(a1 + 56) + 448) = [v25 elementPosition];
        }

        [v24 addTarget:*(a1 + 56) action:sel__buttonAction_ forControlEvents:64];
        LODWORD(v26) = -0.5;
        [v24 setCharge:v26];
        v19 = v24;
        if ([v3 elementType] == 50)
        {
          v20 = v19;
        }

        else
        {
          v20 = 0;
        }

        if (!v20)
        {
LABEL_35:
          if (v19)
          {
LABEL_36:
            [*(*(a1 + 56) + 456) setObject:v19 forKey:v3];
            [*(*(a1 + 56) + 456) setObject:v3 forKey:v19];
            goto LABEL_37;
          }

          goto LABEL_37;
        }

LABEL_30:
        v27 = [*(a1 + 48) imageResourceCacheKeyForViewElement:v3];
        if (v27)
        {
          v28 = *(*(a1 + 56) + 424);
          if (!v28)
          {
            v29 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:517 valueOptions:0 capacity:1];
            v30 = *(a1 + 56);
            v31 = *(v30 + 424);
            *(v30 + 424) = v29;

            v28 = *(*(a1 + 56) + 424);
          }

          [v28 setObject:v27 forKey:v20];
        }

        goto LABEL_35;
      }

      if (v18 != 49)
      {
        v20 = 0;
        if (v18 != 50)
        {
          goto LABEL_37;
        }

        goto LABEL_21;
      }
    }

    v21 = [*(a1 + 40) addImageViewWithElement:v3 context:*(a1 + 48)];
    v22 = [v21 tapRecognizer];
    [v22 addTarget:*(a1 + 56) action:sel__buttonAction_];

    v23 = v21;
    goto LABEL_29;
  }

LABEL_38:
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
  identifierCopy = identifier;
  flattenedChildren = [(SKUIViewElement *)self->_imageViewElement flattenedChildren];
  allExistingViews = [(SKUIViewReuseView *)self allExistingViews];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__54;
  v19 = __Block_byref_object_dispose__54;
  v20 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __58__SKUIAdornedImageViewReuseView_viewForElementIdentifier___block_invoke;
  v11[3] = &unk_2781FB2C0;
  v7 = identifierCopy;
  v12 = v7;
  v8 = allExistingViews;
  v13 = v8;
  v14 = &v15;
  [flattenedChildren enumerateObjectsUsingBlock:v11];
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

void __58__SKUIAdornedImageViewReuseView_viewForElementIdentifier___block_invoke(uint64_t a1, void *a2, unint64_t a3, _BYTE *a4)
{
  v11 = [a2 itmlID];
  if ([v11 isEqualToString:*(a1 + 32)])
  {
    v7 = [*(a1 + 40) count];

    if (v7 > a3)
    {
      v8 = [*(a1 + 40) objectAtIndex:a3];
      v9 = *(*(a1 + 48) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;

      *a4 = 1;
    }
  }

  else
  {
  }
}

- (CGRect)frameForView:(id)view
{
  viewElementViews = self->_viewElementViews;
  viewCopy = view;
  v6 = [(NSMapTable *)viewElementViews objectForKey:viewCopy];
  style = [v6 style];
  v38 = 0;
  v8 = SKUIViewElementMarginForStyle(style, &v38);
  if (v38)
  {
    v12 = v11;
  }

  else
  {
    v12 = 8.0;
  }

  if (v38)
  {
    v13 = v10;
  }

  else
  {
    v13 = 8.0;
  }

  if (v38)
  {
    v14 = v9;
  }

  else
  {
    v14 = 8.0;
  }

  if (v38)
  {
    v15 = v8;
  }

  else
  {
    v15 = 8.0;
  }

  [(SKUIAdornedImageViewReuseView *)self frame];
  v16 = CGRectGetWidth(v39) - (v12 + v14);
  [(SKUIAdornedImageViewReuseView *)self frame];
  Height = CGRectGetHeight(v40);
  v19 = *MEMORY[0x277CBF3A0];
  v18 = *(MEMORY[0x277CBF3A0] + 8);
  [viewCopy sizeThatFits:{v16, Height - (v13 + v15)}];
  v21 = v20;
  v23 = v22;

  elementPosition = [style elementPosition];
  if (elementPosition > 9)
  {
    v14 = v19;
  }

  else if (((1 << elementPosition) & 0x2A1) != 0)
  {
    [(SKUIAdornedImageViewReuseView *)self bounds];
    Width = CGRectGetWidth(v43);
    v44.origin.x = v19;
    v44.origin.y = v18;
    v44.size.width = v21;
    v44.size.height = v23;
    v14 = Width - CGRectGetWidth(v44) - v12;
  }

  else if (((1 << elementPosition) & 0xE) != 0)
  {
    [(SKUIAdornedImageViewReuseView *)self bounds];
    MidX = CGRectGetMidX(v41);
    v42.origin.x = v19;
    v42.origin.y = v18;
    v42.size.width = v21;
    v42.size.height = v23;
    v14 = MidX + CGRectGetWidth(v42) * -0.5;
  }

  elementPosition2 = [style elementPosition];
  if (elementPosition2 > 9)
  {
    v15 = v18;
  }

  else if (((1 << elementPosition2) & 0x309) != 0)
  {
    [(SKUIAdornedImageViewReuseView *)self bounds];
    v29 = CGRectGetHeight(v47);
    v48.origin.x = v14;
    v48.origin.y = v18;
    v48.size.width = v21;
    v48.size.height = v23;
    v15 = v29 - CGRectGetHeight(v48) - v13;
  }

  else if (((1 << elementPosition2) & 0x32) != 0)
  {
    [(SKUIAdornedImageViewReuseView *)self bounds];
    MidY = CGRectGetMidY(v45);
    v46.origin.x = v14;
    v46.origin.y = v18;
    v46.size.width = v21;
    v46.size.height = v23;
    v15 = MidY + CGRectGetHeight(v46) * -0.5;
  }

  v49.origin.x = v14;
  v49.origin.y = v15;
  v49.size.width = v21;
  v49.size.height = v23;
  v50 = CGRectIntegral(v49);
  x = v50.origin.x;
  y = v50.origin.y;
  v32 = v50.size.width;
  v33 = v50.size.height;

  v34 = x;
  v35 = y;
  v36 = v32;
  v37 = v33;
  result.size.height = v37;
  result.size.width = v36;
  result.origin.y = v35;
  result.origin.x = v34;
  return result;
}

- (void)layoutSubviews
{
  v15 = *MEMORY[0x277D85DE8];
  v13.receiver = self;
  v13.super_class = SKUIAdornedImageViewReuseView;
  [(SKUIAdornedImageViewReuseView *)&v13 layoutSubviews];
  allExistingViews = [(SKUIViewReuseView *)self allExistingViews];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [allExistingViews countByEnumeratingWithState:&v9 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(allExistingViews);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        [(SKUIAdornedImageViewReuseView *)self frameForView:v8];
        [v8 setFrame:?];
      }

      v5 = [allExistingViews countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)_buttonAction:(id)action
{
  if (self->_playButton == action)
  {
    v9 = +[SKUIMediaPlayerInterface sharedInstance];
    playItemIdentifier = [(SKUIPlayButton *)self->_playButton playItemIdentifier];
    v6 = [v9 isItemWithIdentifierActive:playItemIdentifier];

    if (v6)
    {
      playItemIdentifier2 = [(SKUIPlayButton *)self->_playButton playItemIdentifier];
      [v9 togglePlayStateForItemWithIdentifier:playItemIdentifier2];
    }

    else
    {
      playItemIdentifier2 = [(NSMapTable *)self->_viewElementViews objectForKey:self->_playButton];
      if (playItemIdentifier2)
      {
        if ([(SKUIPlayButtonControl *)self->_playButton isDisabledButSelectable])
        {
          [playItemIdentifier2 dispatchEvent:0x28280CC48 eventAttribute:0x28280CC68 canBubble:1 isCancelable:0 extraInfo:0 completionBlock:0];
        }

        else
        {
          playItemIdentifier3 = [(SKUIPlayButton *)self->_playButton playItemIdentifier];
          [v9 notifyWillChangeToItemWithItemIdentifer:playItemIdentifier3];

          if (![(SKUIPlayButtonControl *)self->_playButton isIndeterminate])
          {
            [(SKUIPlayButtonControl *)self->_playButton beginIndeterminateAnimation];
          }

          [playItemIdentifier2 dispatchEventOfType:2 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:0];
        }
      }
    }
  }

  else
  {
    v4 = [(NSMapTable *)self->_viewElementViews objectForKey:?];
    if (!v4)
    {
      goto LABEL_15;
    }

    v9 = v4;
    if (objc_opt_respondsToSelector())
    {
      [v9 dispatchEventOfType:2 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:0];
    }
  }

  v4 = v9;
LABEL_15:
}

- (void)mediaPlayer:(id)player itemStateChanged:(id)changed
{
  playerCopy = player;
  changedCopy = changed;
  playButton = self->_playButton;
  if (playButton)
  {
    playItemIdentifier = [(SKUIPlayButton *)playButton playItemIdentifier];
    v10 = [SKUIMediaPlayerInterface identifierMatches:playItemIdentifier item:changedCopy];

    if (v10)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __62__SKUIAdornedImageViewReuseView_mediaPlayer_itemStateChanged___block_invoke;
      block[3] = &unk_2781F80C8;
      block[4] = self;
      v17 = changedCopy;
      dispatch_async(MEMORY[0x277D85CD0], block);
      v11 = v17;
LABEL_7:

      goto LABEL_8;
    }

    if ([(SKUIPlayButtonControl *)self->_playButton isIndeterminate]|| [(SKUIPlayButtonControl *)self->_playButton showingProgress])
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __62__SKUIAdornedImageViewReuseView_mediaPlayer_itemStateChanged___block_invoke_2;
      v13[3] = &unk_2781F80C8;
      v14 = changedCopy;
      selfCopy = self;
      dispatch_async(MEMORY[0x277D85CD0], v13);
      v11 = v14;
      goto LABEL_7;
    }

    if ([(SKUIPlayButton *)self->_playButton showOnDemand])
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __62__SKUIAdornedImageViewReuseView_mediaPlayer_itemStateChanged___block_invoke_3;
      v12[3] = &unk_2781F80F0;
      v12[4] = self;
      dispatch_async(MEMORY[0x277D85CD0], v12);
    }
  }

LABEL_8:
}

uint64_t __62__SKUIAdornedImageViewReuseView_mediaPlayer_itemStateChanged___block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 440) showOnDemand])
  {
    [*(*(a1 + 32) + 440) setHidden:0];
  }

  v2 = [*(a1 + 40) playState];
  v3 = *(*(a1 + 32) + 440);
  if ((v2 - 6) > 0xFFFFFFFFFFFFFFFDLL)
  {

    return [v3 hideProgressAnimated:1];
  }

  else
  {
    [v3 reloadWithItemStatus:*(a1 + 40) animated:0];
    v4 = *(*(a1 + 32) + 440);

    return [v4 showPlayIndicator:v2 == 3];
  }
}

uint64_t __62__SKUIAdornedImageViewReuseView_mediaPlayer_itemStateChanged___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) playState];
  if (result != 5)
  {
    [*(*(a1 + 40) + 440) hideProgressAnimated:0];
    result = [*(*(a1 + 40) + 440) showOnDemand];
    if (result)
    {
      v3 = *(*(a1 + 40) + 440);

      return [v3 setHidden:1];
    }
  }

  return result;
}

+ (id)_attributedStringForButton:(id)button context:(id)context
{
  buttonCopy = button;
  contextCopy = context;
  buttonText = [buttonCopy buttonText];
  buttonViewType = [buttonCopy buttonViewType];
  buttonTitleStyle = [buttonCopy buttonTitleStyle];
  if (buttonTitleStyle)
  {
    v11 = [self _attributedStringForButtonText:buttonText type:buttonViewType style:buttonTitleStyle context:contextCopy];
  }

  else
  {
    style = [buttonCopy style];
    v11 = [self _attributedStringForButtonText:buttonText type:buttonViewType style:style context:contextCopy];
  }

  return v11;
}

+ (id)_attributedStringForButtonText:(id)text type:(int64_t)type style:(id)style context:(id)context
{
  textCopy = text;
  styleCopy = style;
  contextCopy = context;
  v12 = SKUIViewElementFontWithStyle(styleCopy);
  if (!v12)
  {
    if (type)
    {
      v13 = 5;
    }

    else
    {
      v13 = 1;
    }

    v12 = SKUIFontPreferredFontForTextStyle(v13);
  }

  tintColor = [contextCopy tintColor];
  blackColor = SKUIViewElementPlainColorWithStyle(styleCopy, tintColor);

  if (!blackColor)
  {
    blackColor = [MEMORY[0x277D75348] blackColor];
  }

  v16 = [textCopy attributedStringWithDefaultFont:v12 foregroundColor:blackColor style:styleCopy];

  return v16;
}

+ (id)_attributedStringForLabel:(id)label context:(id)context
{
  labelCopy = label;
  contextCopy = context;
  style = [labelCopy style];
  v8 = SKUIViewElementFontWithStyle(style);
  if (!v8)
  {
    v8 = SKUIFontPreferredFontForTextStyle(5);
  }

  tintColor = [contextCopy tintColor];
  v10 = SKUIViewElementPlainColorWithStyle(style, tintColor);

  if (!v10)
  {
    v10 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.8];
  }

  v11 = SKUIViewElementAlignmentForStyle(style);
  if (v11)
  {
    v12 = SKUIViewElementNSTextAlignmentForIKElementAlignment(v11);
  }

  else
  {
    v12 = 0;
  }

  text = [labelCopy text];
  v14 = [text attributedStringWithDefaultFont:v8 foregroundColor:v10 textAlignment:v12 style:style];

  return v14;
}

+ (id)_attributedStringForMenuItem:(id)item context:(id)context
{
  contextCopy = context;
  itemCopy = item;
  itemText = [itemCopy itemText];
  style = [itemCopy style];

  v10 = [self _attributedStringForButtonText:itemText type:0 style:style context:contextCopy];

  return v10;
}

+ (void)requestLayoutForViewElement:width:context:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "+[SKUIAdornedImageViewReuseView requestLayoutForViewElement:width:context:]";
}

@end