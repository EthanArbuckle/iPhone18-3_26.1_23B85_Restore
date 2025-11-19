@interface SKUIMenuBarTemplateShelfFixedElementsCollectionViewCell
+ (BOOL)prefetchResourcesForViewElement:(id)a3 reason:(int64_t)a4 context:(id)a5;
+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4;
+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5;
+ (id)_attributedStringForButton:(id)a3 context:(id)a4;
+ (id)_attributedStringForLabel:(id)a3 context:(id)a4;
+ (id)_leftPositionedChildrenOfViewElement:(id)a3;
+ (void)requestLayoutForViewElement:(id)a3 width:(double)a4 context:(id)a5;
- (BOOL)setImage:(id)a3 forArtworkRequest:(id)a4 context:(id)a5;
- (SKUIMenuBarTemplateShelfFixedElementsCollectionViewCell)initWithFrame:(CGRect)a3;
- (id)viewForElementIdentifier:(id)a3;
- (void)layoutSubviews;
- (void)reloadWithViewElement:(id)a3 width:(double)a4 context:(id)a5;
- (void)setContentInset:(UIEdgeInsets)a3;
@end

@implementation SKUIMenuBarTemplateShelfFixedElementsCollectionViewCell

- (SKUIMenuBarTemplateShelfFixedElementsCollectionViewCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v8)
      {
        [(SKUIMenuBarTemplateShelfFixedElementsCollectionViewCell *)v8 initWithFrame:v9, v10, v11, v12, v13, v14, v15];
      }
    }
  }

  v20.receiver = self;
  v20.super_class = SKUIMenuBarTemplateShelfFixedElementsCollectionViewCell;
  v16 = [(SKUIViewReuseCollectionViewCell *)&v20 initWithFrame:x, y, width, height];
  if (v16)
  {
    v17 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:0 capacity:0];
    viewElementViews = v16->_viewElementViews;
    v16->_viewElementViews = v17;
  }

  return v16;
}

- (void)layoutSubviews
{
  v32 = *MEMORY[0x277D85DE8];
  v30.receiver = self;
  v30.super_class = SKUIMenuBarTemplateShelfFixedElementsCollectionViewCell;
  [(SKUICollectionViewCell *)&v30 layoutSubviews];
  v3 = [(SKUIMenuBarTemplateShelfFixedElementsCollectionViewCell *)self contentView];
  [v3 bounds];
  top = self->_contentInset.top;
  left = self->_contentInset.left;
  v7 = v6 + left;
  v9 = v8 + top;
  v11 = v10 - (left + self->_contentInset.right);
  v13 = v12 - (top + self->_contentInset.bottom);

  v33.origin.x = v7;
  v33.origin.y = v9;
  v33.size.width = v11;
  v33.size.height = v13;
  Height = CGRectGetHeight(v33);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v15 = self->_viewElements;
  v16 = [(NSArray *)v15 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = Height + -16.0;
    v19 = *v27;
    v20 = 4.0;
    do
    {
      v21 = 0;
      do
      {
        if (*v27 != v19)
        {
          objc_enumerationMutation(v15);
        }

        v22 = [(NSMapTable *)self->_viewElementViews objectForKey:*(*(&v26 + 1) + 8 * v21), v26];
        v34.origin.x = v7;
        v34.origin.y = v9;
        v34.size.width = v11;
        v34.size.height = v13;
        Width = CGRectGetWidth(v34);
        [v22 sizeThatFits:{Width, v18}];
        v25 = v24;
        [v22 setFrame:{17.0, v20, Width, v24}];
        v20 = v20 + v25 + 3.5;

        ++v21;
      }

      while (v17 != v21);
      v17 = [(NSArray *)v15 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v17);
  }
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
        [(SKUIMenuBarTemplateShelfFixedElementsCollectionViewCell *)v9 prefetchResourcesForViewElement:v10 reason:v11 context:v12, v13, v14, v15, v16];
      }
    }
  }

  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __106__SKUIMenuBarTemplateShelfFixedElementsCollectionViewCell_prefetchResourcesForViewElement_reason_context___block_invoke;
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

uint64_t __106__SKUIMenuBarTemplateShelfFixedElementsCollectionViewCell_prefetchResourcesForViewElement_reason_context___block_invoke(uint64_t a1, uint64_t a2)
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
        [(SKUIMenuBarTemplateShelfFixedElementsCollectionViewCell *)v8 preferredSizeForViewElement:v9 context:v10, v11, v12, v13, v14, v15];
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
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = a1;
  v11 = [a1 _leftPositionedChildrenOfViewElement:v8];
  v23 = v9;
  v12 = [v9 labelLayoutCache];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v13 = v11;
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
        if (v19 != 141)
        {
          if (v19 == 138)
          {
            v21 = v8;
            v22 = v18;
            v20 = [v10 _attributedStringForLabel:v22 context:v23];
            [v12 requestLayoutForLabel:v22 attributedString:v20 width:a4];

            v8 = v21;
            goto LABEL_11;
          }

          if (v19 != 12)
          {
            continue;
          }
        }

        v20 = [v10 _attributedStringForButton:v18 context:v23];
        [v12 requestLayoutForButton:v8 attributedString:v20 width:a4];
LABEL_11:
      }

      v15 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v15);
  }
}

+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v6 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v6)
      {
        [(SKUIMenuBarTemplateShelfFixedElementsCollectionViewCell *)v6 sizeThatFitsWidth:v7 viewElement:v8 context:v9, v10, v11, v12, v13];
      }
    }
  }

  v14 = 63.0;
  v15 = a3;
  result.height = v14;
  result.width = v15;
  return result;
}

- (void)reloadWithViewElement:(id)a3 width:(double)a4 context:(id)a5
{
  v8 = a3;
  v9 = a5;
  [(NSHashTable *)self->_artworkRelatedChildViewElementViews removeAllObjects];
  [(NSMapTable *)self->_imageViewToImageResourceCacheKey removeAllObjects];
  [(NSMapTable *)self->_viewElementViews removeAllObjects];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __95__SKUIMenuBarTemplateShelfFixedElementsCollectionViewCell_reloadWithViewElement_width_context___block_invoke;
  v12[3] = &unk_2781F95C8;
  v12[4] = self;
  v13 = v8;
  v15 = a4;
  v14 = v9;
  v10 = v9;
  v11 = v8;
  [(SKUIViewReuseCollectionViewCell *)self modifyUsingBlock:v12];
}

void __95__SKUIMenuBarTemplateShelfFixedElementsCollectionViewCell_reloadWithViewElement_width_context___block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [objc_opt_class() _leftPositionedChildrenOfViewElement:*(a1 + 40)];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v24;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v23 + 1) + 8 * i);
        v10 = [v9 elementType];
        v11 = v10;
        v12 = 0;
        if (v10 > 137)
        {
          if (v10 == 138)
          {
            v12 = [v3 addLabelViewWithElement:v9 width:*(a1 + 48) context:*(a1 + 56)];
          }

          else
          {
            v13 = 0;
            if (v10 != 141)
            {
              goto LABEL_24;
            }

            v12 = [v3 addButtonWithElement:v9 width:*(a1 + 48) context:*(a1 + 56)];
            LODWORD(v15) = -1.0;
            [v12 setCharge:v15];
          }

LABEL_16:
          v13 = 0;
          if (!v12)
          {
            goto LABEL_18;
          }

LABEL_17:
          [*(*(a1 + 32) + 872) setObject:v12 forKey:v9];
          goto LABEL_18;
        }

        if (v10 != 12)
        {
          v13 = 0;
          if (v10 != 50)
          {
            goto LABEL_24;
          }
        }

        v12 = [v3 addButtonWithElement:v9 width:*(a1 + 48) context:*(a1 + 56)];
        LODWORD(v14) = -0.5;
        [v12 setCharge:v14];
        if (v11 != 50)
        {
          goto LABEL_16;
        }

        v12 = v12;
        v13 = v12;
        if (v12)
        {
          goto LABEL_17;
        }

LABEL_18:
        if (v13)
        {
          v16 = [*(a1 + 48) imageResourceCacheKeyForViewElement:*(a1 + 40)];
          if (v16)
          {
            v17 = *(*(a1 + 32) + 864);
            if (!v17)
            {
              v18 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:517 valueOptions:0 capacity:1];
              v19 = *(a1 + 32);
              v20 = *(v19 + 864);
              *(v19 + 864) = v18;

              v17 = *(*(a1 + 32) + 864);
            }

            [v17 setObject:v16 forKey:v13];
          }
        }

LABEL_24:
      }

      v6 = [v4 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v6);
  }

  v21 = *(a1 + 32);
  v22 = *(v21 + 880);
  *(v21 + 880) = v4;
}

- (void)setContentInset:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_contentInset.top), vceqq_f64(v4, *&self->_contentInset.bottom)))) & 1) == 0)
  {
    self->_contentInset = a3;
    [(SKUIMenuBarTemplateShelfFixedElementsCollectionViewCell *)self setNeedsLayout];
  }
}

- (BOOL)setImage:(id)a3 forArtworkRequest:(id)a4 context:(id)a5
{
  v39 = *MEMORY[0x277D85DE8];
  v27 = a3;
  v8 = a4;
  v9 = a5;
  v26 = v8;
  v10 = [v8 requestIdentifier];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = self->_imageViewToImageResourceCacheKey;
  v11 = [(NSMapTable *)obj countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v34;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v34 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v33 + 1) + 8 * i);
        v16 = [(NSMapTable *)self->_imageViewToImageResourceCacheKey objectForKey:v15];
        v17 = [v9 requestIdentifierForResourceCacheKey:v16];
        v18 = v17;
        if (v17 && [v17 unsignedIntegerValue] == v10)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v24 = [v15 imageView];
            v21 = v27;
            [v24 setImage:v27];
          }

          else
          {
            v21 = v27;
            [v15 setImage:v27];
          }

          v22 = v8;

          goto LABEL_23;
        }
      }

      v12 = [(NSMapTable *)obj countByEnumeratingWithState:&v33 objects:v38 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = self->_artworkRelatedChildViewElementViews;
  v19 = [(NSMapTable *)obj countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v19)
  {
    v20 = *v30;
    v22 = v26;
    v21 = v27;
LABEL_12:
    v23 = 0;
    while (1)
    {
      if (*v30 != v20)
      {
        objc_enumerationMutation(obj);
      }

      if ([*(*(&v29 + 1) + 8 * v23) setImage:v27 forArtworkRequest:v26 context:v9])
      {
        break;
      }

      if (v19 == ++v23)
      {
        v19 = [(NSMapTable *)obj countByEnumeratingWithState:&v29 objects:v37 count:16];
        if (v19)
        {
          goto LABEL_12;
        }

        goto LABEL_24;
      }
    }

LABEL_23:
    LOBYTE(v19) = 1;
  }

  else
  {
    v22 = v8;
    v21 = v27;
  }

LABEL_24:

  return v19;
}

- (id)viewForElementIdentifier:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_viewElementViews;
  v6 = [(NSMapTable *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 itmlID];
        v12 = [v11 isEqualToString:v4];

        if (v12)
        {
          v13 = [(NSMapTable *)self->_viewElementViews objectForKey:v10];
          goto LABEL_11;
        }
      }

      v7 = [(NSMapTable *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
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

+ (id)_attributedStringForButton:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 buttonTitleStyle];
  v8 = v7;
  if (v7)
  {
    v9 = SKUIViewElementFontWithStyle(v7);
  }

  else
  {
    v10 = [v5 style];
    v9 = SKUIViewElementFontWithStyle(v10);
  }

  if (!v9)
  {
    v9 = [MEMORY[0x277D74300] systemFontOfSize:11.0];
  }

  v11 = [v5 buttonTitleStyle];
  v12 = v11;
  if (!v11)
  {
    v12 = [v5 style];
  }

  v13 = [v6 tintColor];
  v14 = SKUIViewElementPlainColorWithStyle(v12, v13);

  if (!v11)
  {
  }

  if (!v14)
  {
    v14 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.8];
  }

  v15 = [v5 buttonText];
  v16 = [v5 style];
  v17 = [v15 attributedStringWithDefaultFont:v9 foregroundColor:v14 style:v16];

  return v17;
}

+ (id)_attributedStringForLabel:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 style];
  v8 = SKUIViewElementFontWithStyle(v7);

  if (!v8)
  {
    v8 = [MEMORY[0x277D74300] systemFontOfSize:11.0];
  }

  v9 = [v5 style];
  v10 = [v6 tintColor];

  v11 = SKUIViewElementPlainColorWithStyle(v9, v10);

  if (!v11)
  {
    v11 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.8];
  }

  v12 = [v5 text];
  v13 = [v5 style];
  v14 = [v12 attributedStringWithDefaultFont:v8 foregroundColor:v11 style:v13];

  return v14;
}

+ (id)_leftPositionedChildrenOfViewElement:(id)a3
{
  v3 = a3;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__1;
  v11 = __Block_byref_object_dispose__1;
  v12 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __96__SKUIMenuBarTemplateShelfFixedElementsCollectionViewCell__leftPositionedChildrenOfViewElement___block_invoke;
  v6[3] = &unk_2781F8568;
  v6[4] = &v7;
  [v3 enumerateChildrenUsingBlock:v6];
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __96__SKUIMenuBarTemplateShelfFixedElementsCollectionViewCell__leftPositionedChildrenOfViewElement___block_invoke(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = [v12 style];
  v4 = [v3 valueForStyle:@"itml-shelf-zooming-layout-element-placement"];
  v5 = [v4 isEqualToString:@"fixed"];

  v6 = [v3 elementPosition];
  if (v5)
  {
    if (v6 == 4)
    {
      v7 = [v12 elementType];
      if (v7 == 12 || v7 == 141 || v7 == 138)
      {
        v8 = *(*(*(a1 + 32) + 8) + 40);
        if (!v8)
        {
          v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v10 = *(*(a1 + 32) + 8);
          v11 = *(v10 + 40);
          *(v10 + 40) = v9;

          v8 = *(*(*(a1 + 32) + 8) + 40);
        }

        [v8 addObject:v12];
      }
    }
  }
}

@end