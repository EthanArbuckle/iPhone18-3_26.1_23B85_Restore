@interface SKUIVerticalInfoListCollectionViewCell
+ (BOOL)prefetchResourcesForViewElement:(id)a3 reason:(int64_t)a4 context:(id)a5;
+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4;
+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5;
+ (id)_attributedStringForButton:(id)a3 context:(id)a4;
+ (id)_attributedStringForLabel:(id)a3 context:(id)a4;
+ (void)requestLayoutForViewElement:(id)a3 width:(double)a4 context:(id)a5;
- (BOOL)setImage:(id)a3 forArtworkRequest:(id)a4 context:(id)a5;
- (SKUIVerticalInfoListCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)_buttonAction:(id)a3;
- (void)_imageTapAction:(id)a3;
- (void)layoutSubviews;
- (void)reloadWithViewElement:(id)a3 width:(double)a4 context:(id)a5;
- (void)reloadWithViewElements:(id)a3 width:(double)a4 context:(id)a5;
@end

@implementation SKUIVerticalInfoListCollectionViewCell

- (SKUIVerticalInfoListCollectionViewCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIVerticalInfoListCollectionViewCell initWithFrame:];
  }

  v14.receiver = self;
  v14.super_class = SKUIVerticalInfoListCollectionViewCell;
  v8 = [(SKUIViewReuseCollectionViewCell *)&v14 initWithFrame:x, y, width, height];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:517 capacity:0];
    titleViews = v8->_titleViews;
    v8->_titleViews = v9;

    v11 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:517 valueOptions:0 capacity:0];
    valueViews = v8->_valueViews;
    v8->_valueViews = v11;
  }

  return v8;
}

- (void)reloadWithViewElements:(id)a3 width:(double)a4 context:(id)a5
{
  v8 = a3;
  v9 = a5;
  [(NSHashTable *)self->_titleViews removeAllObjects];
  [(NSMapTable *)self->_valueViews removeAllObjects];
  [(NSMapTable *)self->_imageViewToImageResourceCacheKey removeAllObjects];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __79__SKUIVerticalInfoListCollectionViewCell_reloadWithViewElements_width_context___block_invoke;
  v12[3] = &unk_2781F95C8;
  v16 = a4;
  v13 = v8;
  v14 = v9;
  v15 = self;
  v10 = v9;
  v11 = v8;
  [(SKUIViewReuseCollectionViewCell *)self modifyUsingBlock:v12];
}

void __79__SKUIVerticalInfoListCollectionViewCell_reloadWithViewElements_width_context___block_invoke(uint64_t a1, void *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = *(a1 + 32);
  v30 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v30)
  {
    v29 = *v38;
    do
    {
      v4 = 0;
      do
      {
        if (*v38 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v32 = v4;
        v5 = *(*(&v37 + 1) + 8 * v4);
        v6 = [v5 titleElement];
        if (v6)
        {
          v7 = [v3 addLabelViewWithElement:v6 width:*(a1 + 40) context:*(a1 + 56)];
          [*(*(a1 + 48) + 832) addObject:v7];
        }

        v31 = v6;
        v8 = [v5 valueElements];
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v9 = [v8 countByEnumeratingWithState:&v33 objects:v41 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v34;
          do
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v34 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v33 + 1) + 8 * i);
              v14 = [v13 elementType];
              v15 = 0;
              if (v14 > 61)
              {
                if (v14 <= 140)
                {
                  if (v14 == 62)
                  {
                    v17 = [v3 addHorizontalListWithElement:v13 width:*(a1 + 40) context:*(a1 + 56)];
                  }

                  else if (v14 == 135)
                  {
                    v17 = [v3 addStarRatingViewWithViewElement:v13 width:*(a1 + 40) context:*(a1 + 56)];
                  }

                  else
                  {
                    v16 = 0;
                    if (v14 != 138)
                    {
                      goto LABEL_52;
                    }

                    v17 = [v3 addLabelViewWithElement:v13 width:*(a1 + 40) context:*(a1 + 56)];
                  }

LABEL_42:
                  v15 = v17;
LABEL_43:
                  v16 = 0;
                  goto LABEL_44;
                }

                if (v14 == 141)
                {
                  goto LABEL_30;
                }

                if (v14 == 144)
                {
                  v17 = [v3 addTomatoRatingViewWithViewElement:v13 width:*(a1 + 40) context:*(a1 + 56)];
                  goto LABEL_42;
                }

                v16 = 0;
                if (v14 != 152)
                {
                  goto LABEL_52;
                }

                v18 = [v3 addImageViewWithVideoElement:v13 context:*(a1 + 40)];
                goto LABEL_35;
              }

              if (v14 <= 31)
              {
                if (v14 != 8)
                {
                  v16 = 0;
                  if (v14 != 12)
                  {
                    goto LABEL_52;
                  }

LABEL_30:
                  v19 = [v3 addButtonWithElement:v13 width:*(a1 + 40) context:*(a1 + 56)];
                  [v19 addTarget:*(a1 + 48) action:sel__buttonAction_ forControlEvents:64];
                  v15 = v19;
                  if ([v13 elementType] == 50)
                  {
                    v16 = v15;
                  }

                  else
                  {
                    v16 = 0;
                  }

                  goto LABEL_44;
                }

                v18 = [v3 addBadgeViewWithElement:v13 width:*(a1 + 40) context:*(a1 + 56)];
LABEL_35:
                v20 = v18;
                goto LABEL_37;
              }

              if (v14 == 32)
              {
                v15 = [v3 addDividerWithElement:v13 context:*(a1 + 40)];
                [v15 setDividerOrientation:0];
                goto LABEL_43;
              }

              if (v14 != 49)
              {
                v16 = 0;
                if (v14 != 50)
                {
                  goto LABEL_52;
                }

                goto LABEL_30;
              }

              v21 = [v3 addImageViewWithElement:v13 context:*(a1 + 40)];
              v22 = [v21 tapRecognizer];
              [v22 addTarget:*(a1 + 48) action:sel__imageTapAction_];

              v20 = v21;
LABEL_37:
              v15 = v20;
              v16 = v20;
LABEL_44:
              if (v15)
              {
                [*(*(a1 + 48) + 840) setObject:v13 forKey:v15];
              }

              if (v16)
              {
                v23 = [*(a1 + 40) imageResourceCacheKeyForViewElement:v13];
                if (v23)
                {
                  v24 = *(*(a1 + 48) + 824);
                  if (!v24)
                  {
                    v25 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:517 valueOptions:0 capacity:1];
                    v26 = *(a1 + 48);
                    v27 = *(v26 + 824);
                    *(v26 + 824) = v25;

                    v24 = *(*(a1 + 48) + 824);
                  }

                  [v24 setObject:v23 forKey:v16];
                }
              }

LABEL_52:
            }

            v10 = [v8 countByEnumeratingWithState:&v33 objects:v41 count:16];
          }

          while (v10);
        }

        v4 = v32 + 1;
      }

      while (v32 + 1 != v30);
      v30 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v30);
  }
}

+ (BOOL)prefetchResourcesForViewElement:(id)a3 reason:(int64_t)a4 context:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a5;
  v8 = [a3 valueElements];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v11 |= [v7 prefetchResourcesForViewElement:*(*(&v15 + 1) + 8 * i) reason:a4];
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11 & 1;
}

+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4
{
  v4 = *MEMORY[0x277CBF3A8];
  v5 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v5;
  result.width = v4;
  return result;
}

+ (void)requestLayoutForViewElement:(id)a3 width:(double)a4 context:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = [v9 labelLayoutCache];
  v11 = [v8 titleElement];
  if (v11)
  {
    v12 = [a1 _attributedStringForLabel:v11 context:v9];
    [v10 requestLayoutForLabel:v11 attributedString:v12 width:a4];
  }

  v23 = v8;
  v13 = [v8 valueElements];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v14 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v25;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v24 + 1) + 8 * i);
        v19 = [v18 elementType];
        if (v19 <= 134)
        {
          if (v19 == 8)
          {
            [v10 requestLayoutForBadge:v18 width:a4];
            continue;
          }

          if (v19 == 12)
          {
            goto LABEL_20;
          }

          if (v19 != 62)
          {
            continue;
          }

          v21 = SKUIHorizontalListView;
        }

        else if (v19 > 140)
        {
          if (v19 == 141)
          {
LABEL_20:
            v20 = [a1 _attributedStringForButton:v18 context:v9];
            [v10 requestLayoutForButton:v18 attributedString:v20 width:a4];
LABEL_21:

            continue;
          }

          if (v19 != 144)
          {
            continue;
          }

          v21 = SKUITomatoRatingView;
        }

        else
        {
          if (v19 != 135)
          {
            if (v19 != 138)
            {
              continue;
            }

            v20 = [a1 _attributedStringForLabel:v18 context:v9];
            [v10 requestLayoutForLabel:v18 attributedString:v20 width:a4];
            goto LABEL_21;
          }

          v21 = SKUIStarRatingViewElementView;
        }

        [(__objc2_class *)v21 requestLayoutForViewElement:v18 width:v9 context:a4];
      }

      v15 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v15);
  }
}

+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = [v7 valueElements];
  v10 = [v9 count];
  v11 = [v7 titleElement];
  if (v11)
  {
    [v8 sizeForViewElement:v11 width:a3];
    v13 = v12 + 0.0;
    ++v10;
  }

  else
  {
    v13 = 0.0;
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v14 = v9;
  v15 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v23;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [v8 sizeForViewElement:*(*(&v22 + 1) + 8 * i) width:{a3, v22}];
        v13 = v13 + v19;
      }

      v16 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v16);
  }

  if (v10 > 1)
  {
    v13 = v13 + 0.0;
  }

  v20 = a3;
  v21 = v13;
  result.height = v21;
  result.width = v20;
  return result;
}

- (void)reloadWithViewElement:(id)a3 width:(double)a4 context:(id)a5
{
  v8 = MEMORY[0x277CBEA60];
  v9 = a5;
  v10 = a3;
  v11 = [[v8 alloc] initWithObjects:{v10, 0}];

  [(SKUIVerticalInfoListCollectionViewCell *)self reloadWithViewElements:v11 width:v9 context:a4];
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

- (void)layoutSubviews
{
  v22.receiver = self;
  v22.super_class = SKUIVerticalInfoListCollectionViewCell;
  [(SKUICollectionViewCell *)&v22 layoutSubviews];
  v3 = [(SKUIVerticalInfoListCollectionViewCell *)self contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(SKUIViewReuseCollectionViewCell *)self contentInset];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v23.origin.x = v5;
  v23.origin.y = v7;
  v23.size.width = v9;
  v23.size.height = v11;
  Width = CGRectGetWidth(v23);
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3010000000;
  v21[3] = &unk_215F8ACD7;
  *&v21[4] = v15;
  v21[5] = v13;
  v19 = [(SKUIViewReuseCollectionViewCell *)self allExistingViews];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __56__SKUIVerticalInfoListCollectionViewCell_layoutSubviews__block_invoke;
  v20[3] = &unk_278201058;
  v20[4] = self;
  v20[5] = v21;
  *&v20[6] = Width - v15 - v17;
  [v19 enumerateObjectsUsingBlock:v20];

  _Block_object_dispose(v21, 8);
}

void __56__SKUIVerticalInfoListCollectionViewCell_layoutSubviews__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 32);
  v8 = *(v6 + 40);
  v15 = v5;
  if (a3)
  {
    v9 = [*(*(a1 + 32) + 832) containsObject:v5];
    v10 = v15;
    if (v9)
    {
      v8 = v8 + 13.0;
    }
  }

  else
  {
    v10 = v5;
  }

  [v10 sizeThatFits:{*(a1 + 48), 1.79769313e308}];
  v12 = v11;
  v14 = v13;
  [v15 setFrame:{v7, v8, v11, v13}];
  v17.origin.x = v7;
  v17.origin.y = v8;
  v17.size.width = v12;
  v17.size.height = v14;
  *(*(*(a1 + 40) + 8) + 40) = CGRectGetMaxY(v17) + 0.0;
}

- (void)_buttonAction:(id)a3
{
  v4 = [(NSMapTable *)self->_valueViews objectForKey:a3];
  if (v4)
  {
    v8 = v4;
    v5 = SKUICollectionViewForView(self);
    v6 = [v5 delegate];
    if (objc_opt_respondsToSelector())
    {
      v7 = [v5 indexPathForCell:self];
      [v6 collectionView:v5 didConfirmButtonElement:v8 withClickInfo:0 forItemAtIndexPath:v7];
    }

    else
    {
      [v8 dispatchEventOfType:2 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:0];
    }

    v4 = v8;
  }
}

- (void)_imageTapAction:(id)a3
{
  valueViews = self->_valueViews;
  v4 = [a3 view];
  v5 = [(NSMapTable *)valueViews objectForKey:v4];

  [v5 dispatchEventOfType:2 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:0];
}

+ (id)_attributedStringForButton:(id)a3 context:(id)a4
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
    v11 = SKUIFontPreferredFontForTextStyle(5);
  }

  v12 = [v6 tintColor];
  v13 = SKUIViewElementPlainColorWithStyle(v10, v12);

  if (!v13)
  {
    v13 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.8];
  }

  v14 = [v5 buttonText];
  v15 = [v14 attributedStringWithDefaultFont:v11 foregroundColor:v13 style:v10];

  return v15;
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
    v11 = [v5 labelViewStyle] == 5;
    v10 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:dbl_215F3FDA0[v11]];
  }

  v12 = [v5 text];
  v13 = [v12 attributedStringWithDefaultFont:v8 foregroundColor:v10 style:v7];

  return v13;
}

- (void)initWithFrame:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIVerticalInfoListCollectionViewCell initWithFrame:]";
}

@end