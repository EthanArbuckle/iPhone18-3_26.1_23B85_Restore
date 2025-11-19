@interface SKUIAdornedImageViewReuseView
+ (BOOL)prefetchResourcesForViewElement:(id)a3 reason:(int64_t)a4 context:(id)a5;
+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4;
+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5;
+ (id)_attributedStringForButton:(id)a3 context:(id)a4;
+ (id)_attributedStringForButtonText:(id)a3 type:(int64_t)a4 style:(id)a5 context:(id)a6;
+ (id)_attributedStringForLabel:(id)a3 context:(id)a4;
+ (id)_attributedStringForMenuItem:(id)a3 context:(id)a4;
+ (void)requestLayoutForViewElement:(id)a3 width:(double)a4 context:(id)a5;
- (BOOL)setImage:(id)a3 forArtworkRequest:(id)a4 context:(id)a5;
- (CGRect)frameForView:(id)a3;
- (SKUIAdornedImageViewReuseView)init;
- (id)viewForElementIdentifier:(id)a3;
- (void)_buttonAction:(id)a3;
- (void)layoutSubviews;
- (void)mediaPlayer:(id)a3 itemStateChanged:(id)a4;
- (void)reloadWithViewElement:(id)a3 width:(double)a4 context:(id)a5;
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

+ (BOOL)prefetchResourcesForViewElement:(id)a3 reason:(int64_t)a4 context:(id)a5
{
  v7 = a3;
  v8 = a5;
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
  v17 = v8;
  v22 = &v24;
  v23 = a4;
  v21 = v17;
  [v7 enumerateChildrenUsingBlock:v20];
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
        [(SKUIAdornedImageViewReuseView *)v8 preferredSizeForViewElement:v9 context:v10, v11, v12, v13, v14, v15];
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
  v8 = a5;
  v9 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    +[SKUIAdornedImageViewReuseView requestLayoutForViewElement:width:context:];
  }

  [v9 size];
  if (v10 <= a4)
  {
    a4 = v10;
  }

  v11 = [v8 labelLayoutCache];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __75__SKUIAdornedImageViewReuseView_requestLayoutForViewElement_width_context___block_invoke;
  v14[3] = &unk_2781FAEB8;
  v17 = a4;
  v18 = a1;
  v15 = v11;
  v16 = v8;
  v12 = v8;
  v13 = v11;
  [v9 enumerateChildrenUsingBlock:v14];
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

+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5
{
  v7 = a4;
  v8 = a5;
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

  [v8 sizeForViewElement:v7 width:a3];
  v18 = v17;
  v20 = v19;

  v21 = v18;
  v22 = v20;
  result.height = v22;
  result.width = v21;
  return result;
}

- (void)reloadWithViewElement:(id)a3 width:(double)a4 context:(id)a5
{
  v9 = a3;
  v10 = a5;
  [(NSMapTable *)self->_viewElementViews removeAllObjects];
  [(NSMapTable *)self->_imageViewToImageResourceCacheKey removeAllObjects];
  objc_storeStrong(&self->_imageViewElement, a3);
  playButton = self->_playButton;
  self->_playButton = 0;

  self->_playButtonPosition = 0;
  v29 = MEMORY[0x277D85DD0];
  v30 = 3221225472;
  v31 = __69__SKUIAdornedImageViewReuseView_reloadWithViewElement_width_context___block_invoke;
  v32 = &unk_2781F95C8;
  v12 = v9;
  v33 = v12;
  v36 = a4;
  v13 = v10;
  v34 = v13;
  v35 = self;
  [(SKUIViewReuseView *)self modifyUsingBlock:&v29];
  v14 = [SKUIMediaPlayerInterface sharedInstance:v29];
  [v14 removeObserver:self];

  v15 = self->_playButton;
  if (v15)
  {
    v16 = [(SKUIPlayButton *)v15 playItemIdentifier];

    if (v16)
    {
      v17 = +[SKUIMediaPlayerInterface sharedInstance];
      v18 = [(SKUIPlayButton *)self->_playButton playItemIdentifier];
      v19 = [v17 playerForItemWithIdentifier:v18];

      v20 = [(SKUIPlayButton *)self->_playButton playItemIdentifier];
      if ([v17 identifierIsOnDeck:v20])
      {
        v21 = [(SKUIPlayButtonControl *)self->_playButton isIndeterminate];

        if (!v21)
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

      v24 = [v19 playerItem];
      v25 = [v24 playState];

      if ([(SKUIPlayButton *)self->_playButton showOnDemand])
      {
        [(SKUIPlayButton *)self->_playButton setHidden:0];
      }

      if (v25 <= 5 && ((1 << v25) & 0x31) != 0)
      {
        [(SKUIPlayButtonControl *)self->_playButton hideProgressAnimated:1];
LABEL_17:
        v28 = +[SKUIMediaPlayerInterface sharedInstance];
        [v28 addObserver:self];

        goto LABEL_18;
      }

      v26 = self->_playButton;
      v27 = [v19 playerItem];
      [(SKUIPlayButton *)v26 reloadWithItemStatus:v27 animated:0];

      v22 = self->_playButton;
      v23 = v25 == 3;
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

- (BOOL)setImage:(id)a3 forArtworkRequest:(id)a4 context:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = [a4 requestIdentifier];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = self->_imageViewToImageResourceCacheKey;
  v11 = [(NSMapTable *)obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v11)
  {
    v12 = v11;
    v22 = v8;
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
        v17 = [v9 requestIdentifierForResourceCacheKey:v16];
        v18 = v17;
        if (v17 && [v17 unsignedIntegerValue] == v10)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v20 = [v15 imageView];
            v8 = v22;
            [v20 setImage:v22];
          }

          else
          {
            v8 = v22;
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
    v8 = v22;
  }

  else
  {
    v19 = 0;
  }

LABEL_16:

  return v19;
}

- (id)viewForElementIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SKUIViewElement *)self->_imageViewElement flattenedChildren];
  v6 = [(SKUIViewReuseView *)self allExistingViews];
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
  v7 = v4;
  v12 = v7;
  v8 = v6;
  v13 = v8;
  v14 = &v15;
  [v5 enumerateObjectsUsingBlock:v11];
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

- (CGRect)frameForView:(id)a3
{
  viewElementViews = self->_viewElementViews;
  v5 = a3;
  v6 = [(NSMapTable *)viewElementViews objectForKey:v5];
  v7 = [v6 style];
  v38 = 0;
  v8 = SKUIViewElementMarginForStyle(v7, &v38);
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
  [v5 sizeThatFits:{v16, Height - (v13 + v15)}];
  v21 = v20;
  v23 = v22;

  v24 = [v7 elementPosition];
  if (v24 > 9)
  {
    v14 = v19;
  }

  else if (((1 << v24) & 0x2A1) != 0)
  {
    [(SKUIAdornedImageViewReuseView *)self bounds];
    Width = CGRectGetWidth(v43);
    v44.origin.x = v19;
    v44.origin.y = v18;
    v44.size.width = v21;
    v44.size.height = v23;
    v14 = Width - CGRectGetWidth(v44) - v12;
  }

  else if (((1 << v24) & 0xE) != 0)
  {
    [(SKUIAdornedImageViewReuseView *)self bounds];
    MidX = CGRectGetMidX(v41);
    v42.origin.x = v19;
    v42.origin.y = v18;
    v42.size.width = v21;
    v42.size.height = v23;
    v14 = MidX + CGRectGetWidth(v42) * -0.5;
  }

  v27 = [v7 elementPosition];
  if (v27 > 9)
  {
    v15 = v18;
  }

  else if (((1 << v27) & 0x309) != 0)
  {
    [(SKUIAdornedImageViewReuseView *)self bounds];
    v29 = CGRectGetHeight(v47);
    v48.origin.x = v14;
    v48.origin.y = v18;
    v48.size.width = v21;
    v48.size.height = v23;
    v15 = v29 - CGRectGetHeight(v48) - v13;
  }

  else if (((1 << v27) & 0x32) != 0)
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
  v3 = [(SKUIViewReuseView *)self allExistingViews];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v14 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        [(SKUIAdornedImageViewReuseView *)self frameForView:v8];
        [v8 setFrame:?];
      }

      v5 = [v3 countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)_buttonAction:(id)a3
{
  if (self->_playButton == a3)
  {
    v9 = +[SKUIMediaPlayerInterface sharedInstance];
    v5 = [(SKUIPlayButton *)self->_playButton playItemIdentifier];
    v6 = [v9 isItemWithIdentifierActive:v5];

    if (v6)
    {
      v7 = [(SKUIPlayButton *)self->_playButton playItemIdentifier];
      [v9 togglePlayStateForItemWithIdentifier:v7];
    }

    else
    {
      v7 = [(NSMapTable *)self->_viewElementViews objectForKey:self->_playButton];
      if (v7)
      {
        if ([(SKUIPlayButtonControl *)self->_playButton isDisabledButSelectable])
        {
          [v7 dispatchEvent:0x28280CC48 eventAttribute:0x28280CC68 canBubble:1 isCancelable:0 extraInfo:0 completionBlock:0];
        }

        else
        {
          v8 = [(SKUIPlayButton *)self->_playButton playItemIdentifier];
          [v9 notifyWillChangeToItemWithItemIdentifer:v8];

          if (![(SKUIPlayButtonControl *)self->_playButton isIndeterminate])
          {
            [(SKUIPlayButtonControl *)self->_playButton beginIndeterminateAnimation];
          }

          [v7 dispatchEventOfType:2 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:0];
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

- (void)mediaPlayer:(id)a3 itemStateChanged:(id)a4
{
  v6 = a3;
  v7 = a4;
  playButton = self->_playButton;
  if (playButton)
  {
    v9 = [(SKUIPlayButton *)playButton playItemIdentifier];
    v10 = [SKUIMediaPlayerInterface identifierMatches:v9 item:v7];

    if (v10)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __62__SKUIAdornedImageViewReuseView_mediaPlayer_itemStateChanged___block_invoke;
      block[3] = &unk_2781F80C8;
      block[4] = self;
      v17 = v7;
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
      v14 = v7;
      v15 = self;
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

+ (id)_attributedStringForButton:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 buttonText];
  v9 = [v6 buttonViewType];
  v10 = [v6 buttonTitleStyle];
  if (v10)
  {
    v11 = [a1 _attributedStringForButtonText:v8 type:v9 style:v10 context:v7];
  }

  else
  {
    v12 = [v6 style];
    v11 = [a1 _attributedStringForButtonText:v8 type:v9 style:v12 context:v7];
  }

  return v11;
}

+ (id)_attributedStringForButtonText:(id)a3 type:(int64_t)a4 style:(id)a5 context:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v12 = SKUIViewElementFontWithStyle(v10);
  if (!v12)
  {
    if (a4)
    {
      v13 = 5;
    }

    else
    {
      v13 = 1;
    }

    v12 = SKUIFontPreferredFontForTextStyle(v13);
  }

  v14 = [v11 tintColor];
  v15 = SKUIViewElementPlainColorWithStyle(v10, v14);

  if (!v15)
  {
    v15 = [MEMORY[0x277D75348] blackColor];
  }

  v16 = [v9 attributedStringWithDefaultFont:v12 foregroundColor:v15 style:v10];

  return v16;
}

+ (id)_attributedStringForLabel:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 style];
  v8 = SKUIViewElementFontWithStyle(v7);
  if (!v8)
  {
    v8 = SKUIFontPreferredFontForTextStyle(5);
  }

  v9 = [v6 tintColor];
  v10 = SKUIViewElementPlainColorWithStyle(v7, v9);

  if (!v10)
  {
    v10 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.8];
  }

  v11 = SKUIViewElementAlignmentForStyle(v7);
  if (v11)
  {
    v12 = SKUIViewElementNSTextAlignmentForIKElementAlignment(v11);
  }

  else
  {
    v12 = 0;
  }

  v13 = [v5 text];
  v14 = [v13 attributedStringWithDefaultFont:v8 foregroundColor:v10 textAlignment:v12 style:v7];

  return v14;
}

+ (id)_attributedStringForMenuItem:(id)a3 context:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 itemText];
  v9 = [v7 style];

  v10 = [a1 _attributedStringForButtonText:v8 type:0 style:v9 context:v6];

  return v10;
}

+ (void)requestLayoutForViewElement:width:context:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "+[SKUIAdornedImageViewReuseView requestLayoutForViewElement:width:context:]";
}

@end