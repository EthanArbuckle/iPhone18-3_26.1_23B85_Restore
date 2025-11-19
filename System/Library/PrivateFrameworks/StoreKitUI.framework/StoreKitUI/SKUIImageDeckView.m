@interface SKUIImageDeckView
+ (BOOL)prefetchResourcesForViewElement:(id)a3 reason:(int64_t)a4 context:(id)a5;
+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4;
+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5;
+ (void)requestLayoutForViewElement:(id)a3 width:(double)a4 context:(id)a5;
- (BOOL)setImage:(id)a3 forArtworkRequest:(id)a4 context:(id)a5;
- (CGSize)sizeThatFits:(CGSize)a3;
- (SKUIImageDeckView)init;
- (UIEdgeInsets)contentInset;
- (id)viewForElementIdentifier:(id)a3;
- (void)_layoutImages;
- (void)layoutSubviews;
- (void)reloadWithViewElement:(id)a3 width:(double)a4 context:(id)a5;
- (void)setContentInset:(UIEdgeInsets)a3;
- (void)setImageViews:(id)a3;
@end

@implementation SKUIImageDeckView

- (SKUIImageDeckView)init
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIImageDeckView *)v3 init:v4];
      }
    }
  }

  v17.receiver = self;
  v17.super_class = SKUIImageDeckView;
  v11 = [(SKUIImageDeckView *)&v17 init];
  if (v11)
  {
    v12 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:0 capacity:0];
    viewElementViews = v11->_viewElementViews;
    v11->_viewElementViews = v12;

    v14 = [objc_alloc(MEMORY[0x277D754B0]) initWithReferenceView:v11];
    animator = v11->_animator;
    v11->_animator = v14;
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
        [(SKUIImageDeckView *)v9 prefetchResourcesForViewElement:v10 reason:v11 context:v12, v13, v14, v15, v16];
      }
    }
  }

  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __68__SKUIImageDeckView_prefetchResourcesForViewElement_reason_context___block_invoke;
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

void __68__SKUIImageDeckView_prefetchResourcesForViewElement_reason_context___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if ([v6 elementType] == 49)
  {
    v3 = MEMORY[0x277D75348];
    v4 = v6;
    v5 = [v3 colorWithWhite:0.0 alpha:0.15];
    [v4 setShadowColor:v5];

    [v4 setShadowOffset:{5.0, 0.0}];
    [v4 setShadowRadius:7.0];
  }

  *(*(*(a1 + 40) + 8) + 24) = (*(*(*(a1 + 40) + 8) + 24) | [*(a1 + 32) prefetchResourcesForViewElement:v6 reason:*(a1 + 48)]) & 1;
}

+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v7)
      {
        [(SKUIImageDeckView *)v7 preferredSizeForViewElement:v8 context:v9, v10, v11, v12, v13, v14];
      }
    }
  }

  v23 = 0;
  v24 = &v23;
  v25 = 0x3010000000;
  v26 = &unk_215F8ACD7;
  v27 = *MEMORY[0x277CBF3A8];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __57__SKUIImageDeckView_preferredSizeForViewElement_context___block_invoke;
  v20[3] = &unk_2781F95F0;
  v15 = v6;
  v21 = v15;
  v22 = &v23;
  [v5 enumerateChildrenUsingBlock:v20];
  v16 = v24[4];
  v17 = v24[5];

  _Block_object_dispose(&v23, 8);
  v18 = v16;
  v19 = v17;
  result.height = v19;
  result.width = v18;
  return result;
}

uint64_t __57__SKUIImageDeckView_preferredSizeForViewElement_context___block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [v11 elementType];
  if (v3 == 49)
  {
    v3 = [*(a1 + 32) sizeForImageElement:v11];
    v6 = *(*(a1 + 40) + 8);
    if (*(v6 + 40) >= v5)
    {
      v5 = *(v6 + 40);
    }

    *(v6 + 40) = v5;
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 32);
    if (v8 >= 0.00000011920929)
    {
      v9 = v4 / 3.0;
      v4 = v8 + floorf(v9);
    }

    *(v7 + 32) = v4;
  }

  return MEMORY[0x2821F9730](v3);
}

+ (void)requestLayoutForViewElement:(id)a3 width:(double)a4 context:(id)a5
{
  v7 = a3;
  v8 = a5;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    +[SKUIImageDeckView requestLayoutForViewElement:width:context:];
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63__SKUIImageDeckView_requestLayoutForViewElement_width_context___block_invoke;
  v10[3] = &unk_2781FC058;
  v12 = a4;
  v11 = v8;
  v9 = v8;
  [v7 enumerateChildrenUsingBlock:v10];
}

void __63__SKUIImageDeckView_requestLayoutForViewElement_width_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 elementType] == 49)
  {
    [SKUIAdornedImageView requestLayoutForViewElement:v3 width:*(a1 + 32) context:*(a1 + 40)];
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
      v9 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v9)
      {
        [(SKUIImageDeckView *)v9 sizeThatFitsWidth:v10 viewElement:v11 context:v12, v13, v14, v15, v16];
      }
    }
  }

  v25 = 0;
  v26 = &v25;
  v27 = 0x3010000000;
  v28 = &unk_215F8ACD7;
  v30 = *(MEMORY[0x277CBF3A8] + 8);
  v29 = a3;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __59__SKUIImageDeckView_sizeThatFitsWidth_viewElement_context___block_invoke;
  v22[3] = &unk_2781F95F0;
  v17 = v8;
  v23 = v17;
  v24 = &v25;
  [v7 enumerateChildrenUsingBlock:v22];
  v18 = v26[4];
  v19 = v26[5];

  _Block_object_dispose(&v25, 8);
  v20 = v18;
  v21 = v19;
  result.height = v21;
  result.width = v20;
  return result;
}

void __59__SKUIImageDeckView_sizeThatFitsWidth_viewElement_context___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if ([v6 elementType] == 49)
  {
    [*(a1 + 32) sizeForImageElement:v6];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    if (v5 < v3)
    {
      v5 = v3;
    }

    *(v4 + 40) = v5;
  }
}

- (void)reloadWithViewElement:(id)a3 width:(double)a4 context:(id)a5
{
  v9 = a3;
  v10 = a5;
  objc_storeStrong(&self->_imageDeckViewElement, a3);
  self->_fitWidth = a4;
  [(NSMapTable *)self->_viewElementViews removeAllObjects];
  [(NSMapTable *)self->_imageViewToImageResourceCacheKey removeAllObjects];
  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __57__SKUIImageDeckView_reloadWithViewElement_width_context___block_invoke;
  v18 = &unk_2781FC080;
  v19 = v9;
  v20 = v10;
  v21 = self;
  v22 = v11;
  v12 = v11;
  v13 = v10;
  v14 = v9;
  [(SKUIViewReuseView *)self modifyUsingBlock:&v15];
  [(SKUIImageDeckView *)self setImageViews:v12, v15, v16, v17, v18];
}

void __57__SKUIImageDeckView_reloadWithViewElement_width_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__SKUIImageDeckView_reloadWithViewElement_width_context___block_invoke_2;
  v9[3] = &unk_2781FAFC0;
  v10 = v3;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v11 = v5;
  v12 = v6;
  v13 = v7;
  v8 = v3;
  [v4 enumerateChildrenUsingBlock:v9];
}

uint64_t __57__SKUIImageDeckView_reloadWithViewElement_width_context___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = a2;
  isKindOfClass = [v11 elementType];
  if (isKindOfClass == 49)
  {
    v4 = [*(a1 + 32) addImageViewWithElement:v11 context:*(a1 + 40)];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      isKindOfClass = [v4 setUserInteractionEnabled:0];
    }

    if (v4)
    {
      [*(*(a1 + 48) + 448) setObject:v11 forKey:v4];
      [*(*(a1 + 48) + 448) setObject:v4 forKey:v11];
      [*(a1 + 56) addObject:v4];
      v5 = [*(a1 + 40) imageResourceCacheKeyForViewElement:v11];
      if (v5)
      {
        v6 = *(*(a1 + 48) + 464);
        if (!v6)
        {
          v7 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:517 valueOptions:0 capacity:1];
          v8 = *(a1 + 48);
          v9 = *(v8 + 464);
          *(v8 + 464) = v7;

          v6 = *(*(a1 + 48) + 464);
        }

        [v6 setObject:v5 forKey:v4];
      }
    }
  }

  return MEMORY[0x2821F9730](isKindOfClass);
}

- (void)setContentInset:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentInset.top, v3), vceqq_f64(*&self->_contentInset.bottom, v4)))) & 1) == 0)
  {
    self->_contentInset = a3;
    [(SKUIImageDeckView *)self _layoutImages];

    [(SKUIImageDeckView *)self setNeedsLayout];
  }
}

- (void)setImageViews:(id)a3
{
  v5 = a3;
  if (![(NSArray *)self->_imageViews isEqualToArray:?])
  {
    objc_storeStrong(&self->_imageViews, a3);
    [(SKUIImageDeckView *)self _layoutImages];
    [(SKUIImageDeckView *)self setNeedsLayout];
  }
}

- (BOOL)setImage:(id)a3 forArtworkRequest:(id)a4 context:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v21 = a3;
  v8 = a5;
  v9 = [a4 requestIdentifier];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = self->_imageViewToImageResourceCacheKey;
  v10 = [(NSMapTable *)obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v20 = 0;
    v12 = *v24;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v23 + 1) + 8 * i);
        v15 = [(NSMapTable *)self->_imageViewToImageResourceCacheKey objectForKey:v14];
        v16 = [v8 requestIdentifierForResourceCacheKey:v15];
        v17 = v16;
        if (v16 && [v16 unsignedIntegerValue] == v9)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v18 = [v14 imageView];
            [v18 setImage:v21];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v14 setImage:v21 cacheKey:v15 context:v8];
            }

            else
            {
              [v14 setImage:v21];
            }
          }

          v20 = 1;
        }
      }

      v11 = [(NSMapTable *)obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v11);
  }

  else
  {
    v20 = 0;
  }

  return v20 & 1;
}

- (id)viewForElementIdentifier:(id)a3
{
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__80;
  v19 = __Block_byref_object_dispose__80;
  v20 = 0;
  v5 = [(SKUIViewReuseView *)self allExistingViews];
  v6 = [(SKUIViewElement *)self->_imageDeckViewElement flattenedChildren];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __46__SKUIImageDeckView_viewForElementIdentifier___block_invoke;
  v11[3] = &unk_2781FB2C0;
  v7 = v4;
  v12 = v7;
  v8 = v5;
  v13 = v8;
  v14 = &v15;
  [v6 enumerateObjectsUsingBlock:v11];

  v9 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v9;
}

void __46__SKUIImageDeckView_viewForElementIdentifier___block_invoke(uint64_t a1, void *a2, unint64_t a3, _BYTE *a4)
{
  v7 = [a2 itmlID];
  v8 = [v7 isEqualToString:*(a1 + 32)];

  if (v8)
  {
    if ([*(a1 + 40) count] > a3)
    {
      v9 = [*(a1 + 40) objectAtIndex:a3];
      v10 = *(*(a1 + 48) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;
    }

    *a4 = 1;
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBF3A8];
  fitWidth = self->_fitWidth;
  v5 = *(MEMORY[0x277CBF3A8] + 8);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [(SKUIImageDeckView *)self imageViews];
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    v10 = *v3;
    v11 = v5;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v16 + 1) + 8 * i) sizeThatFits:{v10, v5}];
        if (v11 < v13)
        {
          v11 = v13;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  else
  {
    v11 = v5;
  }

  v14 = fitWidth;
  v15 = v11;
  result.height = v15;
  result.width = v14;
  return result;
}

- (void)layoutSubviews
{
  v14 = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = SKUIImageDeckView;
  [(SKUIImageDeckView *)&v12 layoutSubviews];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = [(SKUIImageDeckView *)self imageViews];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(SKUIImageDeckView *)self sendSubviewToBack:*(*(&v8 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)_layoutImages
{
  v68 = *MEMORY[0x277D85DE8];
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v3 = [(SKUIImageDeckView *)self imageViews];
  v4 = [v3 countByEnumeratingWithState:&v61 objects:v67 count:16];
  v52 = 0.0;
  v5 = MEMORY[0x277CBF3A8];
  v6 = 0.0;
  if (v4)
  {
    v7 = v4;
    v8 = *v62;
    v9 = *MEMORY[0x277CBF3A8];
    v10 = *(MEMORY[0x277CBF3A8] + 8);
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v62 != v8)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v61 + 1) + 8 * i) sizeThatFits:{v9, v10}];
        v6 = v6 + v12;
      }

      v7 = [v3 countByEnumeratingWithState:&v61 objects:v67 count:16];
    }

    while (v7);
  }

  fitWidth = self->_fitWidth;
  [(SKUIImageDeckView *)self contentInset];
  v15 = v14;
  [(SKUIImageDeckView *)self contentInset];
  v17 = v16;
  v18 = [(SKUIImageDeckView *)self imageViews];
  v19 = [v18 count];

  if (v19 >= 2)
  {
    v20 = [(SKUIImageDeckView *)self imageViews];
    v52 = (v6 - (fitWidth - (v15 + v17))) / ([v20 count] - 1);
  }

  [(SKUIImageDeckView *)self contentInset];
  v22 = v21;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v23 = [(SKUIImageDeckView *)self imageViews];
  v24 = [v23 countByEnumeratingWithState:&v57 objects:v66 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v58;
    v28 = *v5;
    v27 = v5[1];
    v29 = 0.0;
    do
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v58 != v26)
        {
          objc_enumerationMutation(v23);
        }

        [*(*(&v57 + 1) + 8 * j) sizeThatFits:{v28, v27}];
        if (v29 < v31)
        {
          v29 = v31;
        }
      }

      v25 = [v23 countByEnumeratingWithState:&v57 objects:v66 count:16];
    }

    while (v25);
  }

  else
  {
    v29 = 0.0;
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v32 = [(SKUIImageDeckView *)self imageViews];
  v33 = [v32 countByEnumeratingWithState:&v53 objects:v65 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v54;
    v36 = v5[1];
    v51 = *v5;
    do
    {
      for (k = 0; k != v34; ++k)
      {
        if (*v54 != v35)
        {
          objc_enumerationMutation(v32);
        }

        v38 = *(*(&v53 + 1) + 8 * k);
        [v38 frame];
        v40 = v39;
        v42 = v41;
        [v38 sizeThatFits:{v51, v36}];
        v44 = v43;
        v46 = v45;
        [(SKUIImageDeckView *)self contentInset];
        v48 = v47;
        v69.origin.x = v40;
        v69.origin.y = v42;
        v69.size.width = v44;
        v69.size.height = v46;
        v49 = v48 + v29 - CGRectGetHeight(v69);
        [v38 setFrame:{v22, v49, v44, v46}];
        [(SKUIImageDeckView *)self sendSubviewToBack:v38];
        v70.origin.x = v22;
        v70.origin.y = v49;
        v70.size.width = v44;
        v70.size.height = v46;
        v50 = v22 + CGRectGetWidth(v70) - v52;
        v22 = floorf(v50);
      }

      v34 = [v32 countByEnumeratingWithState:&v53 objects:v65 count:16];
    }

    while (v34);
  }
}

- (UIEdgeInsets)contentInset
{
  top = self->_contentInset.top;
  left = self->_contentInset.left;
  bottom = self->_contentInset.bottom;
  right = self->_contentInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

+ (void)requestLayoutForViewElement:width:context:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "+[SKUIImageDeckView requestLayoutForViewElement:width:context:]";
}

@end