@interface SKUIVerticalLockupView
+ (BOOL)prefetchResourcesForViewElement:(id)a3 reason:(int64_t)a4 context:(id)a5;
+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4;
+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5;
+ (double)_bottomInsetForViewElement:(id)a3 width:(double)a4 context:(id)a5;
+ (double)_topInsetForViewElement:(id)a3 width:(double)a4 context:(id)a5;
+ (double)maximumPerspectiveHeightForSize:(CGSize)a3;
+ (id)_attributedStringForButton:(id)a3 context:(id)a4;
+ (id)_attributedStringForLabel:(id)a3 context:(id)a4;
+ (void)requestLayoutForViewElement:(id)a3 width:(double)a4 context:(id)a5;
- (BOOL)setImage:(id)a3 forArtworkRequest:(id)a4 context:(id)a5;
- (CGSize)sizeThatFits:(CGSize)a3;
- (SKUIVerticalLockupView)initWithFrame:(CGRect)a3;
- (id)viewForElementIdentifier:(id)a3;
- (void)_buttonAction:(id)a3;
- (void)dealloc;
- (void)itemOfferButtonWillAnimateTransition:(id)a3;
- (void)layoutSubviews;
- (void)reloadWithViewElement:(id)a3 width:(double)a4 context:(id)a5;
- (void)setContentInset:(UIEdgeInsets)a3;
- (void)setOpacityOfViewsOtherThanProductImageView:(double)a3;
- (void)setPerspectiveTargetView:(id)a3;
- (void)setVanishingPoint:(CGPoint)a3;
- (void)setZoomingImageAlpha:(double)a3;
- (void)setZoomingImageWidth:(double)a3;
@end

@implementation SKUIVerticalLockupView

- (SKUIVerticalLockupView)initWithFrame:(CGRect)a3
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
        [(SKUIVerticalLockupView *)v8 initWithFrame:v9, v10, v11, v12, v13, v14, v15];
      }
    }
  }

  v24.receiver = self;
  v24.super_class = SKUIVerticalLockupView;
  v16 = [(SKUIViewReuseView *)&v24 initWithFrame:x, y, width, height];
  if (v16)
  {
    v17 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:517 valueOptions:0 capacity:0];
    lineSpacings = v16->_lineSpacings;
    v16->_lineSpacings = v17;

    v19 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:517 valueOptions:0 capacity:0];
    topInsets = v16->_topInsets;
    v16->_topInsets = v19;

    v16->_opacityOfViewsOtherThanProductImageView = 1.0;
    v16->_zoomingImageAlpha = 1.0;
    v21 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:517 valueOptions:0 capacity:0];
    viewElementViews = v16->_viewElementViews;
    v16->_viewElementViews = v21;
  }

  return v16;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277D7FF18] object:0];

  v4.receiver = self;
  v4.super_class = SKUIVerticalLockupView;
  [(SKUIViewReuseView *)&v4 dealloc];
}

+ (double)maximumPerspectiveHeightForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIVerticalLockupView *)v5 maximumPerspectiveHeightForSize:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  [SKUIStackedImageView maximumPerspectiveHeightForSize:width, height];
  return result;
}

- (void)setPerspectiveTargetView:(id)a3
{
  objc_initWeak(&location, a3);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __51__SKUIVerticalLockupView_setPerspectiveTargetView___block_invoke;
  v4[3] = &unk_2781FC2A8;
  objc_copyWeak(&v5, &location);
  [(SKUIViewReuseView *)self enumerateExistingViewsForReuseIdentifier:0x28280C8C8 usingBlock:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __51__SKUIVerticalLockupView_setPerspectiveTargetView___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [v3 setPerspectiveTargetView:WeakRetained];
}

- (void)setVanishingPoint:(CGPoint)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __44__SKUIVerticalLockupView_setVanishingPoint___block_invoke;
  v3[3] = &__block_descriptor_48_e23_v32__0__UIView_8Q16_B24l;
  v4 = a3;
  [(SKUIViewReuseView *)self enumerateExistingViewsForReuseIdentifier:0x28280C8C8 usingBlock:v3];
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
        [(SKUIVerticalLockupView *)v9 prefetchResourcesForViewElement:v10 reason:v11 context:v12, v13, v14, v15, v16];
      }
    }
  }

  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __73__SKUIVerticalLockupView_prefetchResourcesForViewElement_reason_context___block_invoke;
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

uint64_t __73__SKUIVerticalLockupView_prefetchResourcesForViewElement_reason_context___block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) prefetchResourcesForViewElement:a2 reason:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 24) = (*(*(*(a1 + 40) + 8) + 24) | result) & 1;
  return result;
}

+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4
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
        [(SKUIVerticalLockupView *)v8 preferredSizeForViewElement:v9 context:v10, v11, v12, v13, v14, v15];
      }
    }
  }

  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v16 = [v6 style];
  v17 = [v16 valueForStyle:@"itml-lockup-min-width"];

  if (v17)
  {
    [v17 doubleValue];
    v19 = v18;
  }

  else
  {
    v19 = 80.0;
  }

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __62__SKUIVerticalLockupView_preferredSizeForViewElement_context___block_invoke;
  v26[3] = &unk_2781F95A0;
  v20 = v7;
  v27 = v20;
  v28 = &v30;
  v29 = v19;
  [v6 enumerateChildrenUsingBlock:v26];
  [a1 sizeThatFitsWidth:v6 viewElement:v20 context:v31[3]];
  v23 = v22;
  if (v21 >= v19)
  {
    v19 = v21;
  }

  _Block_object_dispose(&v30, 8);
  v24 = v19;
  v25 = v23;
  result.height = v25;
  result.width = v24;
  return result;
}

void __62__SKUIVerticalLockupView_preferredSizeForViewElement_context___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 elementType];
  if (v3 <= 137)
  {
    if (v3 != 12)
    {
      if (v3 == 49)
      {
        [*(a1 + 32) sizeForImageElement:v9];
LABEL_19:
        v4 = *(*(a1 + 40) + 8);
        if (*(v4 + 24) >= v5)
        {
          v5 = *(v4 + 24);
        }

        goto LABEL_21;
      }

      if (v3 != 62)
      {
        goto LABEL_22;
      }
    }

LABEL_9:
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 24);
    if (v5 < *(a1 + 48))
    {
      v5 = *(a1 + 48);
    }

LABEL_21:
    *(v4 + 24) = v5;
    goto LABEL_22;
  }

  if (v3 <= 151)
  {
    if (v3 != 138 && v3 != 141)
    {
      goto LABEL_22;
    }

    goto LABEL_9;
  }

  if (v3 != 152)
  {
    if (v3 != 154)
    {
      goto LABEL_22;
    }

    [SKUIImageGridView preferredSizeForViewElement:v9 context:*(a1 + 32)];
    goto LABEL_19;
  }

  v6 = [v9 thumbnailImage];
  [*(a1 + 32) sizeForImageElement:v6];
  v8 = *(*(a1 + 40) + 8);
  if (*(v8 + 24) >= v7)
  {
    v7 = *(v8 + 24);
  }

  *(v8 + 24) = v7;

LABEL_22:
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
        [(SKUIVerticalLockupView *)v10 requestLayoutForViewElement:v11 width:v12 context:v13, v14, v15, v16, v17];
      }
    }
  }

  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3010000000;
  v37 = &unk_215F8ACD7;
  v38 = *MEMORY[0x277CBF3A8];
  v18 = [v9 labelLayoutCache];
  v24 = MEMORY[0x277D85DD0];
  v25 = 3221225472;
  v26 = __68__SKUIVerticalLockupView_requestLayoutForViewElement_width_context___block_invoke;
  v27 = &unk_2781FD790;
  v19 = v18;
  v28 = v19;
  v32 = a4;
  v33 = a1;
  v20 = v9;
  v29 = v20;
  v30 = &v39;
  v31 = &v34;
  [v8 enumerateChildrenUsingBlock:&v24];
  if (*(v40 + 24) == 1)
  {
    v21 = [v20 aggregateValueForKey:{@"SKUIVLABS", v24, v25, v26, v27, v28}];
    v22 = v21;
    if (v21)
    {
      [(SKUISizeValue *)v21 unionWithSize:v35[4], v35[5]];
    }

    else
    {
      v23 = [SKUISizeValue alloc];
      v22 = [(SKUISizeValue *)v23 initWithSize:v35[4], v35[5]];
      [v20 setAggregateValue:v22 forKey:@"SKUIVLABS"];
    }
  }

  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v39, 8);
}

void __68__SKUIVerticalLockupView_requestLayoutForViewElement_width_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 elementType];
  if (v4 > 76)
  {
    if (v4 <= 140)
    {
      if (v4 == 77)
      {
        v5 = SKUIOfferView;
        goto LABEL_32;
      }

      if (v4 == 135)
      {
        v5 = SKUIStarRatingViewElementView;
        goto LABEL_32;
      }

      if (v4 != 138)
      {
        goto LABEL_41;
      }

      v21 = 0;
      v6 = [v3 style];
      SKUIViewElementMarginForStyle(v6, &v21);
      v8 = v7;
      v10 = v9;

      if (v21)
      {
        v11 = *(a1 + 64) - v8 - v10;
      }

      else
      {
        v11 = *(a1 + 64);
      }

      v12 = [*(a1 + 72) _attributedStringForLabel:v3 context:*(a1 + 40)];
      [*(a1 + 32) requestLayoutForLabel:v3 attributedString:v12 width:v11];
LABEL_27:

      goto LABEL_41;
    }

    if (v4 <= 151)
    {
      if (v4 != 141)
      {
        if (v4 == 144)
        {
          v5 = SKUITomatoRatingView;
LABEL_32:
          [(__objc2_class *)v5 requestLayoutForViewElement:v3 width:*(a1 + 40) context:*(a1 + 64)];
          goto LABEL_41;
        }

        goto LABEL_41;
      }

      goto LABEL_26;
    }

    if (v4 == 152)
    {
      if (*(*(*(a1 + 48) + 8) + 24))
      {
        goto LABEL_41;
      }

      v13 = *(a1 + 40);
      v14 = [v3 thumbnailImage];
      [v13 sizeForImageElement:v14];
      v15 = *(*(a1 + 56) + 8);
      *(v15 + 32) = v16;
      *(v15 + 40) = v17;

LABEL_40:
      *(*(*(a1 + 48) + 8) + 24) = 1;
      goto LABEL_41;
    }

    if (v4 != 154)
    {
      goto LABEL_41;
    }

    goto LABEL_37;
  }

  if (v4 > 48)
  {
    if (v4 == 49)
    {
      [SKUIAdornedImageView requestLayoutForViewElement:v3 width:*(a1 + 40) context:*(a1 + 64)];
      if (*(*(*(a1 + 48) + 8) + 24))
      {
        goto LABEL_41;
      }

      [*(a1 + 40) sizeForImageElement:v3];
      goto LABEL_39;
    }

    if (v4 != 51)
    {
      if (v4 == 62)
      {
        v5 = SKUIHorizontalListView;
        goto LABEL_32;
      }

      goto LABEL_41;
    }

    [SKUIImageDeckView requestLayoutForViewElement:v3 width:*(a1 + 40) context:*(a1 + 64)];
LABEL_37:
    [SKUIImageGridView requestLayoutForViewElement:v3 width:*(a1 + 40) context:*(a1 + 64)];
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      goto LABEL_41;
    }

    [SKUIImageGridView sizeThatFitsWidth:v3 viewElement:*(a1 + 40) context:*(a1 + 64)];
LABEL_39:
    v20 = *(*(a1 + 56) + 8);
    *(v20 + 32) = v18;
    *(v20 + 40) = v19;
    goto LABEL_40;
  }

  switch(v4)
  {
    case 8:
      [*(a1 + 32) requestLayoutForBadge:v3 width:*(a1 + 64)];
      break;
    case 12:
LABEL_26:
      v12 = [*(a1 + 72) _attributedStringForButton:v3 context:*(a1 + 40)];
      [*(a1 + 32) requestLayoutForButton:v3 attributedString:v12 width:*(a1 + 64)];
      goto LABEL_27;
    case 48:
      v5 = SKUISectionHeaderView;
      goto LABEL_32;
  }

LABEL_41:
}

+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v10)
      {
        [(SKUIVerticalLockupView *)v10 sizeThatFitsWidth:v11 viewElement:v12 context:v13, v14, v15, v16, v17];
      }
    }
  }

  v43 = 0;
  v44 = &v43;
  v45 = 0x3010000000;
  v46 = &unk_215F8ACD7;
  v18 = MEMORY[0x277CBF3A8];
  v47 = *MEMORY[0x277CBF3A8];
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  v37[0] = 0;
  v37[1] = v37;
  v37[2] = 0x3032000000;
  v37[3] = __Block_byref_object_copy__48;
  v37[4] = __Block_byref_object_dispose__48;
  v38 = 0;
  v19 = [v9 aggregateValueForKey:@"SKUIVLAUBS"];
  v20 = [v19 BOOLValue];

  if (v20)
  {
    v21 = [v9 aggregateValueForKey:@"SKUIVLABS"];
  }

  else
  {
    v21 = 0;
  }

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __64__SKUIVerticalLockupView_sizeThatFitsWidth_viewElement_context___block_invoke;
  v29[3] = &unk_2781FD7B8;
  v22 = v9;
  v35 = a3;
  v30 = v22;
  v32 = v37;
  v23 = v21;
  v31 = v23;
  v33 = &v39;
  v36 = a1;
  v34 = &v43;
  [v8 enumerateChildrenUsingBlock:v29];
  v25 = v44[4];
  v24 = v44[5];
  if (v24 - v40[3] >= *(v18 + 8))
  {
    v26 = v24 - v40[3];
  }

  else
  {
    v26 = *(v18 + 8);
  }

  v44[5] = v26;

  _Block_object_dispose(v37, 8);
  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(&v43, 8);

  v27 = v25;
  v28 = v26;
  result.height = v28;
  result.width = v27;
  return result;
}

void __64__SKUIVerticalLockupView_sizeThatFitsWidth_viewElement_context___block_invoke(uint64_t a1, void *a2)
{
  v18 = a2;
  [*(a1 + 32) sizeForViewElement:*(a1 + 72) width:?];
  v4 = v3;
  v6 = v5;
  if (!*(*(*(a1 + 48) + 8) + 40) && *(a1 + 40))
  {
    v7 = [v18 elementType];
    if (v7 != 154)
    {
      if (v7 == 152)
      {
        v11 = [v18 thumbnailImage];
        v12 = *(*(a1 + 48) + 8);
        v10 = *(v12 + 40);
        *(v12 + 40) = v11;
        goto LABEL_8;
      }

      if (v7 != 49)
      {
        goto LABEL_9;
      }
    }

    v8 = *(*(a1 + 48) + 8);
    v9 = v18;
    v10 = *(v8 + 40);
    *(v8 + 40) = v9;
LABEL_8:

    [*(a1 + 40) size];
    v6 = v13;
  }

LABEL_9:
  [*(a1 + 80) _bottomInsetForViewElement:v18 width:*(a1 + 32) context:*(a1 + 72)];
  *(*(*(a1 + 56) + 8) + 24) = v14;
  *(*(*(a1 + 64) + 8) + 40) = v6 + *(*(*(a1 + 56) + 8) + 24) + *(*(*(a1 + 64) + 8) + 40);
  [*(a1 + 80) _topInsetForViewElement:v18 width:*(a1 + 32) context:*(a1 + 72)];
  *(*(*(a1 + 64) + 8) + 40) = v15 + *(*(*(a1 + 64) + 8) + 40);
  v16 = *(*(a1 + 64) + 8);
  v17 = *(v16 + 32);
  if (v17 < v4)
  {
    v17 = v4;
  }

  *(v16 + 32) = v17;
}

- (void)reloadWithViewElement:(id)a3 width:(double)a4 context:(id)a5
{
  v9 = a3;
  v10 = a5;
  objc_storeStrong(&self->_lockupElement, a3);
  [(NSMapTable *)self->_lineSpacings removeAllObjects];
  [(NSMapTable *)self->_topInsets removeAllObjects];
  [(NSMapTable *)self->_viewElementViews removeAllObjects];
  productImageBoundingSize = self->_productImageBoundingSize;
  self->_productImageBoundingSize = 0;

  productImageView = self->_productImageView;
  self->_productImageView = 0;

  [(NSHashTable *)self->_artworkRelatedChildViewElementViews removeAllObjects];
  [(NSMapTable *)self->_imageViewToImageResourceCacheKey removeAllObjects];
  v13 = [v10 aggregateValueForKey:@"SKUIVLAUBS"];
  v14 = [v13 BOOLValue];

  if (v14)
  {
    v15 = [v10 aggregateValueForKey:@"SKUIVLABS"];
    v16 = self->_productImageBoundingSize;
    self->_productImageBoundingSize = v15;
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __62__SKUIVerticalLockupView_reloadWithViewElement_width_context___block_invoke;
  v23[3] = &unk_2781F95C8;
  v17 = v9;
  v24 = v17;
  v27 = a4;
  v18 = v10;
  v25 = v18;
  v26 = self;
  [(SKUIViewReuseView *)self modifyUsingBlock:v23];
  v19 = self->_productImageView;
  if (v19)
  {
    [(UIView *)v19 transform];
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
    v20 = 0u;
  }

  *&self->_productImageViewOriginalTransform.a = v20;
  *&self->_productImageViewOriginalTransform.c = v21;
  *&self->_productImageViewOriginalTransform.tx = v22;
}

void __62__SKUIVerticalLockupView_reloadWithViewElement_width_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __62__SKUIVerticalLockupView_reloadWithViewElement_width_context___block_invoke_2;
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

void __62__SKUIVerticalLockupView_reloadWithViewElement_width_context___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 elementType];
  v5 = 0;
  if (v4 <= 50)
  {
    if (v4 > 31)
    {
      if (v4 <= 48)
      {
        if (v4 == 32)
        {
          v9 = [*(a1 + 32) addDividerWithElement:v3 context:*(a1 + 40)];
        }

        else
        {
          v6 = 0;
          v7 = 0;
          if (v4 != 48)
          {
            goto LABEL_73;
          }

          v9 = [*(a1 + 32) addHeaderViewWithElement:v3 width:*(a1 + 40) context:*(a1 + 56)];
        }

        goto LABEL_50;
      }

      if (v4 == 49)
      {
        v14 = [*(a1 + 32) addImageViewWithElement:v3 context:*(a1 + 40)];
        v7 = v14;
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [v7 setUserInteractionEnabled:0];
        }

LABEL_44:
        v18 = *(a1 + 48);
        if (!*(v18 + 504))
        {
          objc_storeStrong((v18 + 504), v14);
        }

LABEL_56:
        v6 = 0;
        v5 = v7;
        goto LABEL_57;
      }
    }

    else
    {
      if (v4 <= 11)
      {
        if (v4 != 7)
        {
          v6 = 0;
          v7 = 0;
          if (v4 != 8)
          {
            goto LABEL_73;
          }

          v7 = [*(a1 + 32) addBadgeViewWithElement:v3 width:*(a1 + 40) context:*(a1 + 56)];
          v6 = 0;
          v5 = v7;
          goto LABEL_57;
        }

        v15 = [v3 firstChildForElementType:49];
        if (v15)
        {
          v7 = [*(a1 + 32) addImageViewWithElement:v15 context:*(a1 + 40)];
          v16 = *(a1 + 48);
          v17 = [MEMORY[0x277D75348] clearColor];
          [v16 setBackgroundColor:v17];
        }

        else
        {
          v7 = 0;
        }

        goto LABEL_56;
      }

      if (v4 != 12)
      {
        v6 = 0;
        v7 = 0;
        if (v4 != 13)
        {
          goto LABEL_73;
        }

        goto LABEL_32;
      }
    }

    v10 = [*(a1 + 32) addButtonWithElement:v3 width:*(a1 + 40) context:*(a1 + 56)];
    [v10 addTarget:*(a1 + 48) action:sel__buttonAction_ forControlEvents:64];
    v7 = v10;
    if ([v3 elementType] == 50)
    {
      v5 = v7;
    }

    else
    {
      v5 = 0;
    }

    v6 = 0;
    goto LABEL_57;
  }

  if (v4 <= 137)
  {
    if (v4 <= 76)
    {
      if (v4 != 51)
      {
        v6 = 0;
        v7 = 0;
        if (v4 != 62)
        {
          goto LABEL_73;
        }

        v7 = [*(a1 + 32) addHorizontalListWithElement:v3 width:*(a1 + 40) context:*(a1 + 56)];
        v5 = 0;
        v6 = v7;
        goto LABEL_57;
      }

      v8 = [*(a1 + 32) addImageDeckViewWithElement:v3 width:*(a1 + 40) context:*(a1 + 56)];
      goto LABEL_34;
    }

    if (v4 == 77)
    {
      v9 = [*(a1 + 32) addOfferViewWithViewElement:v3 width:*(a1 + 40) context:*(a1 + 56)];
    }

    else
    {
      v6 = 0;
      v7 = 0;
      if (v4 != 135)
      {
        goto LABEL_73;
      }

      v9 = [*(a1 + 32) addStarRatingViewWithViewElement:v3 width:*(a1 + 40) context:*(a1 + 56)];
    }

    goto LABEL_50;
  }

  if (v4 > 143)
  {
    if (v4 != 144)
    {
      if (v4 != 152)
      {
        v6 = 0;
        v7 = 0;
        if (v4 != 154)
        {
          goto LABEL_73;
        }

        v8 = [*(a1 + 32) addImageGridViewWithElement:v3 width:*(a1 + 40) context:*(a1 + 56)];
LABEL_34:
        v12 = v8;
        v7 = v8;
        v13 = *(a1 + 48);
        if (!*(v13 + 504))
        {
          objc_storeStrong((v13 + 504), v12);
        }

        v5 = 0;
        v6 = v7;
        goto LABEL_57;
      }

      v14 = [*(a1 + 32) addImageViewWithVideoElement:v3 context:*(a1 + 40)];
      v7 = v14;
      goto LABEL_44;
    }

    v9 = [*(a1 + 32) addTomatoRatingViewWithViewElement:v3 width:*(a1 + 40) context:*(a1 + 56)];
    goto LABEL_50;
  }

  if (v4 == 138)
  {
    v42 = 0;
    v19 = [v3 style];
    SKUIViewElementMarginForStyle(v19, &v42);
    v21 = v20;
    v23 = v22;

    v24 = *(a1 + 56);
    if (v42)
    {
      v24 = v24 - v21 - v23;
    }

    v9 = [*(a1 + 32) addLabelViewWithElement:v3 width:*(a1 + 40) context:v24];
LABEL_50:
    v7 = v9;
    goto LABEL_51;
  }

  v6 = 0;
  v7 = 0;
  if (v4 != 141)
  {
    goto LABEL_73;
  }

LABEL_32:
  v7 = [*(a1 + 32) addButtonWithElement:v3 width:*(a1 + 40) context:*(a1 + 56)];
  [v7 addTarget:*(a1 + 48) action:sel__cancelConfirmationAction_ forControlEvents:0x10000];
  [v7 addTarget:*(a1 + 48) action:sel__buttonAction_ forControlEvents:0x20000];
  [v7 addTarget:*(a1 + 48) action:sel__showConfirmationAction_ forControlEvents:0x40000];
  LODWORD(v11) = -0.5;
  [v7 setCharge:v11];
  [v7 setItemOfferDelegate:*(a1 + 48)];
LABEL_51:
  v6 = 0;
  v5 = 0;
LABEL_57:
  if (v7)
  {
    [objc_opt_class() _bottomInsetForViewElement:v3 width:*(a1 + 40) context:*(a1 + 56)];
    if (v25 > 0.00000011920929)
    {
      v26 = *(*(a1 + 48) + 472);
      v27 = [MEMORY[0x277CCABB0] numberWithDouble:?];
      [v26 setObject:v27 forKey:v7];
    }

    [objc_opt_class() _topInsetForViewElement:v3 width:*(a1 + 40) context:*(a1 + 56)];
    if (v28 > 0.00000011920929)
    {
      v29 = *(*(a1 + 48) + 568);
      v30 = [MEMORY[0x277CCABB0] numberWithDouble:?];
      [v29 setObject:v30 forKey:v7];
    }

    [*(*(a1 + 48) + 576) setObject:v3 forKey:v7];
    [*(*(a1 + 48) + 576) setObject:v7 forKey:v3];
  }

  if (v5)
  {
    v31 = [*(a1 + 40) imageResourceCacheKeyForViewElement:v3];
    if (v31)
    {
      v32 = *(*(a1 + 48) + 464);
      if (!v32)
      {
        v33 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:517 valueOptions:0 capacity:1];
        v34 = *(a1 + 48);
        v35 = *(v34 + 464);
        *(v34 + 464) = v33;

        v32 = *(*(a1 + 48) + 464);
      }

      [v32 setObject:v31 forKey:v5];
    }
  }

  if (v6)
  {
    v36 = *(*(a1 + 48) + 424);
    if (!v36)
    {
      v37 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:517 capacity:1];
      v38 = *(a1 + 48);
      v39 = *(v38 + 424);
      *(v38 + 424) = v37;

      v36 = *(*(a1 + 48) + 424);
    }

    [v36 addObject:v6];
  }

LABEL_73:
  v40 = *(a1 + 48);
  if (v7 == *(v40 + 504))
  {
    v41 = &OBJC_IVAR___SKUIVerticalLockupView__zoomingImageAlpha;
  }

  else
  {
    v41 = &OBJC_IVAR___SKUIVerticalLockupView__opacityOfViewsOtherThanProductImageView;
  }

  [v7 setAlpha:*(v40 + *v41)];
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
    [(SKUIVerticalLockupView *)self setNeedsLayout];
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

            v22 = v8;
          }

          else
          {
            objc_opt_class();
            v22 = v8;
            v21 = v27;
            if (objc_opt_isKindOfClass())
            {
              [v15 setImage:v27 cacheKey:v16 context:v9];
            }

            else
            {
              [v15 setImage:v27];
            }
          }

          goto LABEL_26;
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

        goto LABEL_27;
      }
    }

LABEL_26:
    LOBYTE(v19) = 1;
  }

  else
  {
    v22 = v8;
    v21 = v27;
  }

LABEL_27:

  return v19;
}

- (id)viewForElementIdentifier:(id)a3
{
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__48;
  v19 = __Block_byref_object_dispose__48;
  v20 = 0;
  v5 = [(SKUIViewReuseView *)self allExistingViews];
  v6 = [(SKUIViewElement *)self->_lockupElement flattenedChildren];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __51__SKUIVerticalLockupView_viewForElementIdentifier___block_invoke;
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

void __51__SKUIVerticalLockupView_viewForElementIdentifier___block_invoke(uint64_t a1, void *a2, unint64_t a3, _BYTE *a4)
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

- (void)layoutSubviews
{
  v69 = *MEMORY[0x277D85DE8];
  v67.receiver = self;
  v67.super_class = SKUIVerticalLockupView;
  [(SKUIVerticalLockupView *)&v67 layoutSubviews];
  [(SKUIVerticalLockupView *)self bounds];
  v58 = v4;
  v59 = v3;
  v6 = v5;
  v57 = v7;
  left = self->_contentInset.left;
  right = self->_contentInset.right;
  obj = [(SKUIViewReuseView *)self allExistingViews];
  top = self->_contentInset.top;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v11 = [obj countByEnumeratingWithState:&v63 objects:v68 count:16];
  if (v11)
  {
    v12 = v11;
    v54 = 0;
    v13 = v6 - left - right;
    v14 = *v64;
    v52 = *MEMORY[0x277CBF3A0];
    v50 = *(MEMORY[0x277CBF348] + 8);
    v51 = *MEMORY[0x277CBF348];
    v53 = *v64;
    do
    {
      v15 = 0;
      v55 = v12;
      do
      {
        if (*v64 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v63 + 1) + 8 * v15);
        v17 = [(NSMapTable *)self->_viewElementViews objectForKey:v16];
        if ([v17 elementType] == 32)
        {
          [(UIView *)v16 sizeThatFits:v6 - self->_contentInset.left, 1.79769313e308];
          height = v19;
          if (v6 - self->_contentInset.left >= v18)
          {
            width = v18;
          }

          else
          {
            width = v6 - self->_contentInset.left;
          }

          v22 = 1;
        }

        else
        {
          [(UIView *)v16 sizeThatFits:v13, 1.79769313e308];
          height = v24;
          if (v13 >= v23)
          {
            width = v23;
          }

          else
          {
            width = v13;
          }

          v22 = v54;
        }

        if ([v17 elementType] == 7)
        {
          [(UIView *)v16 setFrame:v59, v58, v6, v57];
          [(SKUIVerticalLockupView *)self sendSubviewToBack:v16];
          goto LABEL_51;
        }

        v25 = [v17 style];
        productImageBoundingSize = self->_productImageBoundingSize;
        y = top;
        if (productImageBoundingSize)
        {
          y = top;
          if (v16 == self->_productImageView)
          {
            [(SKUISizeValue *)productImageBoundingSize size];
            v29 = v28;
            v30 = [v25 elementPosition];
            y = top;
            if (v30 <= 9)
            {
              if (((1 << v30) & 0x309) != 0)
              {
                y = top + v29 - height;
              }

              else
              {
                y = top;
                if (((1 << v30) & 0x32) != 0)
                {
                  v31 = top + (v29 - height) * 0.5;
                  y = floorf(v31);
                }
              }
            }
          }
        }

        v32 = [(NSMapTable *)self->_topInsets objectForKey:v16];
        v33 = v32;
        if (v32)
        {
          [v32 floatValue];
          y = y + v34;
        }

        if ([v17 elementType] == 138)
        {
          v35 = [v25 textAlignment];
        }

        else
        {
          v35 = [v25 elementAlignment];
        }

        if (v35 > 2)
        {
          if ((v35 - 4) < 2)
          {
            goto LABEL_35;
          }

          x = v52;
          if (v35 == 3)
          {
            goto LABEL_37;
          }
        }

        else
        {
          if (!v35)
          {
            v48 = [v25 elementPosition];
            if (v48 > 6)
            {
              if (v48 == 7 || v48 == 9)
              {
LABEL_37:
                x = v6 - self->_contentInset.right - width;
                goto LABEL_38;
              }

              goto LABEL_35;
            }

            if (v48 != 1)
            {
              if (v48 == 5)
              {
                goto LABEL_37;
              }

LABEL_35:
              x = self->_contentInset.left;
              goto LABEL_38;
            }

LABEL_33:
            v37 = (v13 - width) * 0.5;
            x = self->_contentInset.left + floorf(v37);
            goto LABEL_38;
          }

          if (v35 == 1)
          {
            goto LABEL_35;
          }

          x = v52;
          if (v35 == 2)
          {
            goto LABEL_33;
          }
        }

LABEL_38:
        memset(&v62, 0, sizeof(v62));
        if (v16)
        {
          [(UIView *)v16 transform];
        }

        v38 = self->_productImageBoundingSize;
        if (v38 && v16 == self->_productImageView && ([(SKUISizeValue *)v38 size], y = top + v39 - height, productImageAdjustedWidth = self->_productImageAdjustedWidth, productImageAdjustedWidth > 0.00000011920929) && (v41 = productImageAdjustedWidth / width, v42 = *&self->_productImageViewOriginalTransform.c, *&v60.a = *&self->_productImageViewOriginalTransform.a, *&v60.c = v42, *&v60.tx = *&self->_productImageViewOriginalTransform.tx, CGAffineTransformScale(&v61, &v60, v41, v41), v62 = v61, [(UIView *)v16 setTransform:&v61], v43 = self->_productImageAdjustedWidth, vabdd_f64(v43, width) > 0.00000011920929))
        {
          x = x + (v43 - width) * -0.5;
          width = width * v41;
          height = height * v41;
          v60 = v62;
          CGAffineTransformInvert(&v61, &v60);
          v70.origin.y = v50;
          v70.origin.x = v51;
          v70.size.width = width;
          v70.size.height = height;
          v71 = CGRectApplyAffineTransform(v70, &v61);
          [(UIView *)v16 setBounds:v71.origin.x, v71.origin.y, v71.size.width, v71.size.height];
          SKUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(x, y, width, height, v59, v58, v6, v57);
          MidX = CGRectGetMidX(v72);
          v73.origin.x = x;
          v73.origin.y = y;
          v73.size.width = width;
          v73.size.height = height;
          [(UIView *)v16 setCenter:MidX, CGRectGetMidY(v73)];
          v54 = 1;
        }

        else
        {
          if ((v22 & 1) == 0)
          {
            v74.origin.x = x;
            v74.origin.y = y;
            v74.size.width = width;
            v74.size.height = height;
            v75 = CGRectIntegral(v74);
            x = v75.origin.x;
            y = v75.origin.y;
            width = v75.size.width;
            height = v75.size.height;
          }

          SKUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(x, y, width, height, v59, v58, v6, v57);
          [(UIView *)v16 setFrame:?];
        }

        v76.origin.x = x;
        v76.origin.y = y;
        v76.size.width = width;
        v76.size.height = height;
        top = CGRectGetMaxY(v76);
        v45 = [(NSMapTable *)self->_lineSpacings objectForKey:v16];
        v46 = v45;
        if (v45)
        {
          [v45 floatValue];
          top = top + v47;
        }

        v14 = v53;
        v12 = v55;
LABEL_51:

        ++v15;
      }

      while (v12 != v15);
      v49 = [obj countByEnumeratingWithState:&v63 objects:v68 count:16];
      v12 = v49;
    }

    while (v49);
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3010000000;
  v18 = &unk_215F8ACD7;
  v19 = *MEMORY[0x277CBF3A8];
  p_contentInset = &self->_contentInset;
  v5 = a3.width - self->_contentInset.left - self->_contentInset.right;
  if (self->_sizingStyle == 1)
  {
    productImageView = self->_productImageView;
    if (productImageView)
    {
      [(UIView *)productImageView sizeThatFits:?];
      v5 = v7;
    }
  }

  v8 = [(SKUIViewReuseView *)self allExistingViews];
  v9 = [v8 count];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __39__SKUIVerticalLockupView_sizeThatFits___block_invoke;
  v14[3] = &unk_2781FD7E0;
  *&v14[6] = v5;
  v14[4] = self;
  v14[5] = &v15;
  v14[7] = v9;
  [v8 enumerateObjectsUsingBlock:v14];
  v10.f64[0] = p_contentInset->right;
  v10.f64[1] = p_contentInset->top;
  v13 = vaddq_f64(v16[2], vaddq_f64(*&p_contentInset->left, v10));
  v16[2] = v13;

  _Block_object_dispose(&v15, 8);
  v12 = v13.f64[1];
  v11 = v13.f64[0];
  result.height = v12;
  result.width = v11;
  return result;
}

void __39__SKUIVerticalLockupView_sizeThatFits___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = *(v6 + 496);
  v17 = v5;
  if (v7 && *(v6 + 504) == v5)
  {
    [v7 size];
  }

  else
  {
    [v5 sizeThatFits:{*(a1 + 48), 1.79769313e308}];
    if (v8 >= *(a1 + 48))
    {
      v8 = *(a1 + 48);
    }
  }

  *(*(*(a1 + 40) + 8) + 40) = v9 + *(*(*(a1 + 40) + 8) + 40);
  v10 = *(*(a1 + 40) + 8);
  if (*(v10 + 32) >= v8)
  {
    v8 = *(v10 + 32);
  }

  *(v10 + 32) = v8;
  v11 = [*(*(a1 + 32) + 568) objectForKey:v17];
  v12 = v11;
  if (v11)
  {
    [v11 floatValue];
    *(*(*(a1 + 40) + 8) + 40) = *(*(*(a1 + 40) + 8) + 40) + v13;
  }

  if (*(a1 + 56) - 1 > a3)
  {
    v14 = [*(*(a1 + 32) + 472) objectForKey:v17];
    v15 = v14;
    if (v14)
    {
      [v14 floatValue];
      *(*(*(a1 + 40) + 8) + 40) = *(*(*(a1 + 40) + 8) + 40) + v16;
    }
  }
}

- (void)itemOfferButtonWillAnimateTransition:(id)a3
{
  v17 = a3;
  [v17 frame];
  x = v19.origin.x;
  y = v19.origin.y;
  MaxX = CGRectGetMaxX(v19);
  [v17 sizeThatFits:{*(MEMORY[0x277CBF390] + 16), *(MEMORY[0x277CBF390] + 24)}];
  v8 = v7;
  v10 = v9;
  v11 = [(NSMapTable *)self->_viewElementViews objectForKey:v17];
  v12 = [v11 style];
  v13 = SKUIViewElementAlignmentForStyle(v12);

  if (v13 == 3)
  {
    x = MaxX - v8;
  }

  else if (v13 == 2)
  {
    [(SKUIVerticalLockupView *)self bounds];
    left = self->_contentInset.left;
    v16 = (v15 - left - self->_contentInset.right - v8) * 0.5;
    x = left + floorf(v16);
  }

  [v17 setFrame:{x, y, v8, v10}];
}

- (void)setOpacityOfViewsOtherThanProductImageView:(double)a3
{
  v16 = *MEMORY[0x277D85DE8];
  if (vabdd_f64(self->_opacityOfViewsOtherThanProductImageView, a3) > 0.00000011920929)
  {
    self->_opacityOfViewsOtherThanProductImageView = a3;
    v5 = [(SKUIViewReuseView *)self allExistingViews];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v11 + 1) + 8 * i);
          if (v10 != self->_productImageView)
          {
            [(UIView *)v10 setAlpha:a3];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }
}

- (void)setZoomingImageAlpha:(double)a3
{
  if (vabdd_f64(self->_zoomingImageAlpha, a3) > 0.00000011920929)
  {
    self->_zoomingImageAlpha = a3;
    [(UIView *)self->_productImageView setAlpha:?];
  }
}

- (void)setZoomingImageWidth:(double)a3
{
  if (vabdd_f64(self->_productImageAdjustedWidth, a3) > 0.00000011920929)
  {
    self->_productImageAdjustedWidth = a3;
    [(SKUIVerticalLockupView *)self setNeedsLayout];
  }
}

- (void)_buttonAction:(id)a3
{
  v8 = [(NSMapTable *)self->_viewElementViews objectForKey:a3];
  v4 = SKUICollectionViewCellForView(self);
  v5 = SKUICollectionViewForView(v4);
  v6 = [v5 delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [v5 indexPathForCell:v4];
    [v6 collectionView:v5 didConfirmButtonElement:v8 withClickInfo:0 forItemAtIndexPath:v7];
  }

  else
  {
    [v8 dispatchEventOfType:2 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:0];
  }
}

+ (id)_attributedStringForButton:(id)a3 context:(id)a4
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
        [(SKUIVerticalLockupView *)v7 _attributedStringForButton:v8 context:v9, v10, v11, v12, v13, v14];
      }
    }
  }

  v15 = [v5 buttonTitleStyle];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = [v5 style];
  }

  v18 = v17;

  v19 = SKUIViewElementFontWithStyle(v18);
  if (!v19)
  {
    v19 = SKUIFontForTextStyle(6);
  }

  v20 = [v6 tintColor];
  v21 = SKUIViewElementPlainColorWithStyle(v18, v20);

  if (!v21)
  {
    v21 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.6];
  }

  v22 = [v5 buttonText];
  v23 = [v22 attributedStringWithDefaultFont:v19 foregroundColor:v21 style:v18];

  return v23;
}

+ (id)_attributedStringForLabel:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v7)
      {
        [(SKUIVerticalLockupView *)v7 _attributedStringForLabel:v8 context:v9, v10, v11, v12, v13, v14];
      }
    }
  }

  v15 = [v5 style];
  v16 = SKUIViewElementFontWithStyle(v15);
  v17 = [v6 tintColor];

  v18 = SKUIViewElementPlainColorWithStyle(v15, v17);

  v19 = SKUIViewElementAlignmentForStyle(v15);
  if (v19)
  {
    v20 = SKUIViewElementNSTextAlignmentForIKElementAlignment(v19);
  }

  else
  {
    v20 = 0;
  }

  v21 = [v5 labelViewStyle];
  if (v21 <= 5)
  {
    if (((1 << v21) & 0x1B) != 0)
    {
      if (v16)
      {
        if (v18)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v16 = SKUIFontForTextStyle(5);
        if (v18)
        {
          goto LABEL_21;
        }
      }

      v22 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.6];
    }

    else
    {
      if (v16)
      {
        if (v18)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v16 = SKUIFontForTextStyle(6);
        if (v18)
        {
          goto LABEL_21;
        }
      }

      v22 = [MEMORY[0x277D75348] blackColor];
    }

    v18 = v22;
  }

LABEL_21:
  v23 = [v5 text];
  v24 = [v23 attributedStringWithDefaultFont:v16 foregroundColor:v18 textAlignment:v20 style:v15];

  return v24;
}

+ (double)_bottomInsetForViewElement:(id)a3 width:(double)a4 context:(id)a5
{
  v6 = a3;
  v7 = a5;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v8)
      {
        [(SKUIVerticalLockupView *)v8 _bottomInsetForViewElement:v9 width:v10 context:v11, v12, v13, v14, v15];
      }
    }
  }

  v27 = 0;
  v16 = [v6 style];
  SKUIViewElementPaddingForStyle(v16, &v27);
  v18 = v17;

  v26 = 0;
  v19 = [v6 style];
  SKUIViewElementMarginForStyle(v19, &v26);
  v21 = v20;

  if ([v6 elementType] == 154)
  {
    if (v26)
    {
      v18 = v21;
      goto LABEL_28;
    }
  }

  else if (v27)
  {
    goto LABEL_28;
  }

  v22 = [v6 elementType];
  v18 = 0.0;
  if (v22 <= 48)
  {
    switch(v22)
    {
      case 8:
        if ([v6 badgeType] == 1)
        {
          v18 = 2.0;
        }

        else
        {
          v18 = 0.0;
        }

        break;
      case 13:
LABEL_24:
        v18 = 5.0;
        break;
      case 32:
        v18 = 12.0;
        break;
    }
  }

  else
  {
    if (v22 > 151)
    {
      if (v22 != 152 && v22 != 154)
      {
        goto LABEL_28;
      }
    }

    else if (v22 != 49)
    {
      if (v22 != 77)
      {
        goto LABEL_28;
      }

      goto LABEL_24;
    }

    v23 = [v7 aggregateValueForKey:@"SKUIVLABS"];
    [v23 size];
    if (v24 >= 100.0)
    {
      v18 = 12.0;
    }

    else
    {
      v18 = 7.0;
    }
  }

LABEL_28:

  return v18;
}

+ (double)_topInsetForViewElement:(id)a3 width:(double)a4 context:(id)a5
{
  v5 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v6 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v6)
      {
        [(SKUIVerticalLockupView *)v6 _topInsetForViewElement:v7 width:v8 context:v9, v10, v11, v12, v13];
      }
    }
  }

  v18 = 0;
  v14 = [v5 style];
  v15 = SKUIViewElementPaddingForStyle(v14, &v18);

  if (v18 != 1)
  {
    v16 = [v5 elementType];
    v15 = 0.0;
    if (v16 > 31)
    {
      if (v16 == 32)
      {
        v15 = 12.0;
        goto LABEL_17;
      }

      if (v16 == 77)
      {
        goto LABEL_12;
      }
    }

    else
    {
      if (v16 != 8)
      {
        if (v16 != 13)
        {
          goto LABEL_17;
        }

LABEL_12:
        v15 = 5.0;
        goto LABEL_17;
      }

      if ([v5 badgeType] == 1)
      {
        v15 = 3.0;
      }

      else
      {
        v15 = 0.0;
      }
    }
  }

LABEL_17:

  return v15;
}

@end