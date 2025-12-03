@interface SKUIProductLockupCollectionViewCell
+ (BOOL)prefetchResourcesForViewElement:(id)element reason:(int64_t)reason context:(id)context;
+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context;
+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context;
+ (double)maximumPerspectiveHeightForSize:(CGSize)size;
+ (id)_attributedStringForButton:(id)button context:(id)context;
+ (id)_attributedStringForLabel:(id)label context:(id)context;
+ (void)_requestLayoutForViewElements:(id)elements width:(double)width context:(id)context;
+ (void)requestLayoutForViewElement:(id)element width:(double)width context:(id)context;
- (BOOL)setImage:(id)image forArtworkRequest:(id)request context:(id)context;
- (BOOL)updateWithItemState:(id)state context:(id)context animated:(BOOL)animated;
- (CGRect)_frameForSection:(int64_t)section;
- (CGRect)_stackBottomRightElements:(id)elements inRect:(CGRect)rect;
- (CGRect)_stackElements:(id)elements alignment:(int64_t)alignment inRect:(CGRect)rect;
- (SKUIProductLockupCollectionViewCell)initWithFrame:(CGRect)frame;
- (id)_viewElementForView:(id)view;
- (id)viewForElementIdentifier:(id)identifier;
- (void)_buttonAction:(id)action;
- (void)_cancelConfirmationAction:(id)action;
- (void)_imageTapAction:(id)action;
- (void)_layoutConfirmationGradientRelativeToSection:(int64_t)section alpha:(double)alpha;
- (void)_prepareOfferConfirmationGradientForView:(id)view;
- (void)_showConfirmationAction:(id)action;
- (void)_updateLayoutToAnimateOfferTransitionForView:(id)view;
- (void)itemOfferButtonDidAnimateTransition:(id)transition;
- (void)layoutSubviews;
- (void)offerViewDidAnimateTransition:(id)transition;
- (void)reloadWithViewElement:(id)element width:(double)width context:(id)context;
- (void)setPerspectiveTargetView:(id)view;
- (void)setVanishingPoint:(CGPoint)point;
@end

@implementation SKUIProductLockupCollectionViewCell

- (SKUIProductLockupCollectionViewCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v8)
      {
        [(SKUIProductLockupCollectionViewCell *)v8 initWithFrame:v9, v10, v11, v12, v13, v14, v15];
      }
    }
  }

  v20.receiver = self;
  v20.super_class = SKUIProductLockupCollectionViewCell;
  height = [(SKUIViewReuseCollectionViewCell *)&v20 initWithFrame:x, y, width, height];
  if (height)
  {
    v17 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:517 valueOptions:0 capacity:0];
    elementViews = height->_elementViews;
    height->_elementViews = v17;
  }

  return height;
}

+ (double)maximumPerspectiveHeightForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIProductLockupCollectionViewCell *)v5 maximumPerspectiveHeightForSize:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  [SKUIStackedImageView maximumPerspectiveHeightForSize:width, height];
  return result;
}

- (void)setPerspectiveTargetView:(id)view
{
  objc_initWeak(&location, view);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __64__SKUIProductLockupCollectionViewCell_setPerspectiveTargetView___block_invoke;
  v4[3] = &unk_2781FC2A8;
  objc_copyWeak(&v5, &location);
  [(SKUIViewReuseCollectionViewCell *)self enumerateExistingViewsForReuseIdentifier:0x28280C8C8 usingBlock:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __64__SKUIProductLockupCollectionViewCell_setPerspectiveTargetView___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [v3 setPerspectiveTargetView:WeakRetained];
}

- (void)setVanishingPoint:(CGPoint)point
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __57__SKUIProductLockupCollectionViewCell_setVanishingPoint___block_invoke;
  v3[3] = &__block_descriptor_48_e23_v32__0__UIView_8Q16_B24l;
  pointCopy = point;
  [(SKUIViewReuseCollectionViewCell *)self enumerateExistingViewsForReuseIdentifier:0x28280C8C8 usingBlock:v3];
}

+ (BOOL)prefetchResourcesForViewElement:(id)element reason:(int64_t)reason context:(id)context
{
  elementCopy = element;
  contextCopy = context;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v9 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v9)
      {
        [(SKUIProductLockupCollectionViewCell *)v9 prefetchResourcesForViewElement:v10 reason:v11 context:v12, v13, v14, v15, v16];
      }
    }
  }

  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __86__SKUIProductLockupCollectionViewCell_prefetchResourcesForViewElement_reason_context___block_invoke;
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

uint64_t __86__SKUIProductLockupCollectionViewCell_prefetchResourcesForViewElement_reason_context___block_invoke(uint64_t a1, uint64_t a2)
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
        [(SKUIProductLockupCollectionViewCell *)v8 preferredSizeForViewElement:v9 context:v10, v11, v12, v13, v14, v15];
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
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v10)
      {
        [(SKUIProductLockupCollectionViewCell *)v10 requestLayoutForViewElement:v11 width:v12 context:v13, v14, v15, v16, v17];
      }
    }
  }

  v18 = [[SKUIProductLockupLayout alloc] initWithLockup:elementCopy width:contextCopy context:width];

  [(SKUIProductLockupLayout *)v18 metadataWidthForWidth:width];
  v20 = v19;
  v21 = [(SKUIProductLockupLayout *)v18 viewElementsForSection:5];
  [self _requestLayoutForViewElements:v21 width:contextCopy context:v20];

  v22 = [(SKUIProductLockupLayout *)v18 viewElementsForSection:1];
  [self _requestLayoutForViewElements:v22 width:contextCopy context:v20];

  if (v18)
  {
    [(SKUIProductLockupLayout *)v18 layoutWidthsForWidth:width];
  }

  v23 = [(SKUIProductLockupLayout *)v18 viewElementsForSection:4, 0, 0];
  [self _requestLayoutForViewElements:v23 width:contextCopy context:0.0];

  v24 = [(SKUIProductLockupLayout *)v18 viewElementsForSection:2];
  [self _requestLayoutForViewElements:v24 width:contextCopy context:0.0];

  v25 = [(SKUIProductLockupLayout *)v18 viewElementsForSection:0];
  [self _requestLayoutForViewElements:v25 width:contextCopy context:v26];
}

+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context
{
  contextCopy = context;
  elementCopy = element;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v9 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v9)
      {
        [(SKUIProductLockupCollectionViewCell *)v9 sizeThatFitsWidth:v10 viewElement:v11 context:v12, v13, v14, v15, v16];
      }
    }
  }

  v17 = [[SKUIProductLockupLayout alloc] initWithLockup:elementCopy width:contextCopy context:width];

  v18 = [(SKUIProductLockupLayout *)v17 viewElementsForSection:3];
  firstObject = [v18 firstObject];

  v20 = 0.0;
  if (firstObject)
  {
    [contextCopy sizeForViewElement:firstObject width:width];
    v20 = v21;
  }

  if (v17)
  {
    [(SKUIProductLockupLayout *)v17 sizingToFitWidth:width, 0.0, 0.0, 0.0, 0];
  }

  v22 = 0.0 > 0.00000011920929;
  if (0.0 > 0.00000011920929)
  {
    v22 += 2;
  }

  v23 = 0.0 + 0.0 + 0.0 + (v22 - 1) * 5.0;
  if (v22 <= 1)
  {
    v23 = 0.0 + 0.0 + 0.0;
  }

  v24 = 0.0 + 0.0 + 5.0;
  if (0.0 <= 0.00000011920929)
  {
    v24 = 0.0 + 0.0;
  }

  if (v23 >= v24)
  {
    v24 = v23;
  }

  if (v20 < v24)
  {
    v20 = v24;
  }

  widthCopy = width;
  v26 = v20;
  result.height = v26;
  result.width = widthCopy;
  return result;
}

- (void)reloadWithViewElement:(id)element width:(double)width context:(id)context
{
  contextCopy = context;
  buyButtonDescriptorToButton = self->_buyButtonDescriptorToButton;
  elementCopy = element;
  [(NSMapTable *)buyButtonDescriptorToButton removeAllObjects];
  [(NSHashTable *)self->_offerViews removeAllObjects];
  v11 = [[SKUIProductLockupLayout alloc] initWithLockup:elementCopy width:contextCopy context:width];

  layout = self->_layout;
  self->_layout = v11;

  self->_offerMetadataPosition = 1;
  segmentedControlControllers = self->_segmentedControlControllers;
  self->_segmentedControlControllers = 0;

  [(SKUIGradientView *)self->_offerConfirmationGradientView removeFromSuperview];
  offerConfirmationGradientView = self->_offerConfirmationGradientView;
  self->_offerConfirmationGradientView = 0;

  [(NSMapTable *)self->_elementViews removeAllObjects];
  [(NSHashTable *)self->_artworkRelatedChildViewElementViews removeAllObjects];
  [(NSMapTable *)self->_imageViewToImageResourceCacheKey removeAllObjects];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __75__SKUIProductLockupCollectionViewCell_reloadWithViewElement_width_context___block_invoke;
  v16[3] = &unk_2781FC1C8;
  widthCopy = width;
  v16[4] = self;
  v17 = contextCopy;
  v15 = contextCopy;
  [(SKUIViewReuseCollectionViewCell *)self modifyUsingBlock:v16];
}

void __75__SKUIProductLockupCollectionViewCell_reloadWithViewElement_width_context___block_invoke(double *a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 4);
  v4 = *(a1 + 5);
  v6 = *(v5 + 856);
  v7 = a1[6];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __75__SKUIProductLockupCollectionViewCell_reloadWithViewElement_width_context___block_invoke_2;
  v9[3] = &unk_2781FC310;
  v12 = v7;
  v9[4] = v5;
  v10 = v3;
  v11 = v4;
  v8 = v3;
  [v6 enumerateViewElementsForWidth:v9 usingBlock:v7];
}

void __75__SKUIProductLockupCollectionViewCell_reloadWithViewElement_width_context___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, double a4)
{
  v53 = a2;
  v7 = a3 & 0xFFFFFFFFFFFFFFFBLL;
  if ((a3 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    [*(*(a1 + 32) + 856) metadataWidthForWidth:*(a1 + 56)];
    a4 = v8;
  }

  v9 = [v53 elementType];
  v10 = v9;
  v11 = 0;
  if (v9 > 76)
  {
    if (v9 <= 137)
    {
      if (v9 <= 130)
      {
        if (v9 == 77)
        {
          v15 = v53;
          v14 = [*(a1 + 40) addOfferViewWithViewElement:v15 width:*(a1 + 48) context:a4];
          if ([(SKUISegmentedControlViewElementController *)v15 isSimpleOffer])
          {
            if (v7 == 1)
            {
              [(SKUISegmentedControlViewElementController *)v14 setMetadataPosition:0];
            }

            v33 = *(a1 + 32);
          }

          else
          {
            v49 = [(SKUISegmentedControlViewElementController *)v14 metadataPosition];
            v33 = 0;
            if (v49 != 1)
            {
              *(*(a1 + 32) + 880) = v49;
            }
          }

          [(SKUISegmentedControlViewElementController *)v14 setDelegate:v33];
          if (!v14)
          {
            goto LABEL_82;
          }

          v17 = *(*(a1 + 32) + 888);
          if (!v17)
          {
            v50 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:517 capacity:1];
            v51 = *(a1 + 32);
            v52 = *(v51 + 888);
            *(v51 + 888) = v50;

            v17 = *(*(a1 + 32) + 888);
          }

          v21 = v14;
        }

        else
        {
          v12 = 0;
          v13 = 0;
          v14 = 0;
          if (v9 != 109)
          {
            goto LABEL_72;
          }

          v14 = [*(a1 + 40) addReusableViewWithReuseIdentifier:0x2828069E8];
          v15 = [[SKUISegmentedControlViewElementController alloc] initWithViewElement:v53 segmentedControl:v14];
          v16 = [*(a1 + 48) clientContext];
          [(SKUISegmentedControlViewElementController *)v15 setClientContext:v16];

          [(SKUISegmentedControlViewElementController *)v15 setDesiredSegmentWidth:40.0];
          v17 = *(*(a1 + 32) + 896);
          if (!v17)
          {
            v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
            v19 = *(a1 + 32);
            v20 = *(v19 + 896);
            *(v19 + 896) = v18;

            v17 = *(*(a1 + 32) + 896);
          }

          v21 = v15;
        }

        [v17 addObject:v21];
LABEL_82:

LABEL_83:
        v11 = 0;
        v12 = 0;
        v13 = 0;
        if (!v14)
        {
          goto LABEL_56;
        }

        goto LABEL_55;
      }

      if (v9 != 131)
      {
        v12 = 0;
        v13 = 0;
        v14 = 0;
        if (v9 != 135)
        {
          goto LABEL_72;
        }

        v28 = [*(a1 + 40) addStarRatingViewWithViewElement:v53 width:*(a1 + 48) context:a4];
        goto LABEL_50;
      }

      v27 = [*(a1 + 40) addStackListViewWithElement:v53 width:*(a1 + 48) context:a4];
      goto LABEL_47;
    }

    if (v9 <= 143)
    {
      if (v9 != 138)
      {
        v12 = 0;
        v13 = 0;
        v14 = 0;
        if (v9 != 141)
        {
          goto LABEL_72;
        }

        goto LABEL_22;
      }

      v28 = [*(a1 + 40) addLabelViewWithElement:v53 width:*(a1 + 48) context:a4];
LABEL_50:
      v14 = v28;
      goto LABEL_83;
    }

    if (v9 == 144)
    {
      v28 = [*(a1 + 40) addTomatoRatingViewWithViewElement:v53 width:*(a1 + 48) context:a4];
      goto LABEL_50;
    }

    v12 = 0;
    v13 = 0;
    v14 = 0;
    if (v9 != 152)
    {
      goto LABEL_72;
    }

    v29 = [*(a1 + 40) addImageViewWithVideoElement:v53 context:*(a1 + 48)];
    goto LABEL_52;
  }

  if (v9 <= 47)
  {
    if (v9 == 8)
    {
      v29 = [*(a1 + 40) addBadgeViewWithElement:v53 width:*(a1 + 48) context:a4];
LABEL_52:
      v24 = v29;
      goto LABEL_53;
    }

    if (v9 != 12)
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
      if (v9 != 13)
      {
        goto LABEL_72;
      }

LABEL_22:
      v25 = [*(a1 + 40) addButtonWithElement:v53 width:*(a1 + 48) context:a4];
      [v25 addTarget:*(a1 + 32) action:sel__buttonAction_ forControlEvents:0x20000];
      [v25 addTarget:*(a1 + 32) action:sel__cancelConfirmationAction_ forControlEvents:0x10000];
      [v25 addTarget:*(a1 + 32) action:sel__showConfirmationAction_ forControlEvents:0x40000];
      LODWORD(v26) = -1097229926;
      [v25 setCharge:v26];
      [v25 setItemOfferDelegate:*(a1 + 32)];
      v24 = v25;
      v11 = v24;
      v12 = 0;
LABEL_48:
      v13 = 0;
      goto LABEL_54;
    }

LABEL_32:
    v30 = [*(a1 + 40) addButtonWithElement:v53 width:*(a1 + 48) context:a4];
    [v30 addTarget:*(a1 + 32) action:sel__buttonAction_ forControlEvents:64];
    LODWORD(v31) = -1097229926;
    [v30 setCharge:v31];
    v32 = v30;
    v14 = v32;
    v12 = 0;
    if (v10 == 50)
    {
      v11 = 0;
    }

    else
    {
      v11 = v32;
    }

    if (v10 == 50)
    {
      v13 = v32;
    }

    else
    {
      v13 = 0;
    }

    if (!v32)
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

  if (v9 > 49)
  {
    if (v9 != 50)
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
      if (v9 != 62)
      {
        goto LABEL_72;
      }

      v27 = [*(a1 + 40) addHorizontalListWithElement:v53 width:*(a1 + 48) context:a4];
LABEL_47:
      v24 = v27;
      v12 = v24;
      v11 = 0;
      goto LABEL_48;
    }

    goto LABEL_32;
  }

  if (v9 == 48)
  {
    v28 = [*(a1 + 40) addHeaderViewWithElement:v53 width:*(a1 + 48) context:a4];
    goto LABEL_50;
  }

  v22 = [*(a1 + 40) addImageViewWithElement:v53 context:*(a1 + 48)];
  v23 = [v22 tapRecognizer];
  [v23 addTarget:*(a1 + 32) action:sel__imageTapAction_];

  v24 = v22;
LABEL_53:
  v13 = v24;
  v11 = 0;
  v12 = 0;
LABEL_54:
  v14 = v24;
  if (v24)
  {
LABEL_55:
    v34 = [*(a1 + 48) textPropertiesForViewElement:v53 width:a4];
    [*(a1 + 40) setTextProperties:v34 forView:v14];
    [*(*(a1 + 32) + 840) setObject:v14 forKey:v53];
  }

LABEL_56:
  if (v11)
  {
    v35 = [v53 buyButtonDescriptor];
    if (v35)
    {
      v36 = *(*(a1 + 32) + 832);
      if (!v36)
      {
        v37 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:517 capacity:1];
        v38 = *(a1 + 32);
        v39 = *(v38 + 832);
        *(v38 + 832) = v37;

        v36 = *(*(a1 + 32) + 832);
      }

      [v36 setObject:v11 forKey:v35];
    }
  }

  if (v13)
  {
    v40 = [*(a1 + 48) imageResourceCacheKeyForViewElement:v53];
    if (v40)
    {
      v41 = *(*(a1 + 32) + 848);
      if (!v41)
      {
        v42 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:517 valueOptions:0 capacity:1];
        v43 = *(a1 + 32);
        v44 = *(v43 + 848);
        *(v43 + 848) = v42;

        v41 = *(*(a1 + 32) + 848);
      }

      [v41 setObject:v40 forKey:v13];
    }
  }

  if (v12)
  {
    v45 = *(*(a1 + 32) + 824);
    if (!v45)
    {
      v46 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:517 capacity:1];
      v47 = *(a1 + 32);
      v48 = *(v47 + 824);
      *(v47 + 824) = v46;

      v45 = *(*(a1 + 32) + 824);
    }

    [v45 addObject:v12];
  }

LABEL_72:
}

- (BOOL)setImage:(id)image forArtworkRequest:(id)request context:(id)context
{
  v39 = *MEMORY[0x277D85DE8];
  imageCopy = image;
  requestCopy = request;
  contextCopy = context;
  v26 = requestCopy;
  requestIdentifier = [requestCopy requestIdentifier];
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
        v17 = [contextCopy requestIdentifierForResourceCacheKey:v16];
        v18 = v17;
        if (v17 && [v17 unsignedIntegerValue] == requestIdentifier)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            imageView = [v15 imageView];
            v21 = imageCopy;
            [imageView setImage:imageCopy];
          }

          else
          {
            v21 = imageCopy;
            [v15 setImage:imageCopy];
          }

          v22 = requestCopy;

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
    v21 = imageCopy;
LABEL_12:
    v23 = 0;
    while (1)
    {
      if (*v30 != v20)
      {
        objc_enumerationMutation(obj);
      }

      if ([*(*(&v29 + 1) + 8 * v23) setImage:imageCopy forArtworkRequest:v26 context:contextCopy])
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
    v22 = requestCopy;
    v21 = imageCopy;
  }

LABEL_24:

  return v19;
}

- (BOOL)updateWithItemState:(id)state context:(id)context animated:(BOOL)animated
{
  animatedCopy = animated;
  v36 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  contextCopy = context;
  clientContext = [contextCopy clientContext];
  selfCopy = self;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v10 = self->_buyButtonDescriptorToButton;
  v11 = [(NSMapTable *)v10 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v31;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v31 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v30 + 1) + 8 * i);
        if ([v16 canPersonalizeUsingItemState:stateCopy])
        {
          v17 = [(NSMapTable *)selfCopy->_buyButtonDescriptorToButton objectForKey:v16];
          v13 |= [v17 setValuesUsingBuyButtonDescriptor:v16 itemState:stateCopy clientContext:clientContext animated:animatedCopy];
        }
      }

      v12 = [(NSMapTable *)v10 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v12);
  }

  else
  {
    v13 = 0;
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v18 = selfCopy->_offerViews;
  v19 = [(NSHashTable *)v18 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v27;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v27 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v13 |= [*(*(&v26 + 1) + 8 * j) updateWithItemState:stateCopy context:contextCopy animated:animatedCopy];
      }

      v20 = [(NSHashTable *)v18 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v20);
  }

  if (v13)
  {
    [(SKUIProductLockupCollectionViewCell *)selfCopy setNeedsLayout];
  }

  return v13 & 1;
}

- (id)viewForElementIdentifier:(id)identifier
{
  v20 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_elementViews;
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
        itmlID = [v10 itmlID];
        v12 = [itmlID isEqualToString:identifierCopy];

        if (v12)
        {
          v13 = [(NSMapTable *)self->_elementViews objectForKey:v10];
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

- (void)layoutSubviews
{
  v141.receiver = self;
  v141.super_class = SKUIProductLockupCollectionViewCell;
  [(SKUICollectionViewCell *)&v141 layoutSubviews];
  contentView = [(SKUIProductLockupCollectionViewCell *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(SKUIViewReuseCollectionViewCell *)self contentInset];
  v78 = v13;
  v79 = v12;
  v135 = 0;
  v136 = &v135;
  v137 = 0x3010000000;
  v138 = &unk_215F8ACD7;
  v71 = v15;
  v72 = v14;
  v139 = v15;
  v140 = v14;
  v16 = [(SKUIProductLockupLayout *)self->_layout viewElementsForSection:3];
  firstObject = [v16 firstObject];

  if (firstObject)
  {
    v18 = v5;
    v19 = [(NSMapTable *)self->_elementViews objectForKey:firstObject];
    [v19 frame];
    v20 = v136[4];
    v21 = v136[5];
    [v19 sizeThatFits:{*(MEMORY[0x277CBF390] + 16), *(MEMORY[0x277CBF390] + 24)}];
    v23 = v22;
    v25 = v24;
    SKUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(v20, v21, v22, v24, v18, v7, v9, v11);
    [v19 setFrame:?];
    v142.origin.x = v20;
    v142.origin.y = v21;
    v142.size.width = v23;
    v142.size.height = v25;
    v136[4] = CGRectGetMaxX(v142) + 13.0;

    v5 = v18;
  }

  v82 = v136[5];
  v83 = v136[4];
  v26 = [(SKUIProductLockupLayout *)self->_layout viewElementsForSection:5];
  ShouldReverseLayoutDirection = storeShouldReverseLayoutDirection();
  v80 = v11 - v79 - v82;
  v81 = v9 - v78 - v83;
  SKUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(v83, v82, v81, v80, v5, v7, v9, v11);
  if (ShouldReverseLayoutDirection)
  {
    v28 = 7;
  }

  else
  {
    v28 = 8;
  }

  [(SKUIProductLockupCollectionViewCell *)self _stackElements:v26 alignment:v28 inRect:v11 - v79];
  v77 = SKUIRectByRemovingStoreUserInterfaceLayoutDirectionInRect(v29, v30, v31, v32, v5, v7, v9, v11);
  v69 = v34;
  v70 = v33;
  v68 = v35;
  v36 = [(SKUIProductLockupLayout *)self->_layout viewElementsForSection:1];
  [(SKUIProductLockupCollectionViewCell *)self _stackBottomRightElements:v36 inRect:v83, v82, v81, v80];
  v75 = v38;
  v76 = v37;
  v73 = v40;
  v74 = v39;
  v127 = 0;
  v128 = &v127;
  v129 = 0x4010000000;
  v130 = &unk_215F8ACD7;
  v131 = v83;
  v132 = v82;
  v133 = v9 - v78 - v83;
  v134 = v11 - v79 - v82;
  if ([v26 count])
  {
    v128[6] = v77 - 5.0 - v128[4];
  }

  v41 = [(SKUIProductLockupLayout *)self->_layout viewElementsForSection:4];
  if (storeShouldReverseLayoutDirection())
  {
    v42 = 8;
  }

  else
  {
    v42 = 7;
  }

  SKUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(v128[4], v128[5], v128[6], v128[7], v5, v7, v9, v11);
  [(SKUIProductLockupCollectionViewCell *)self _stackElements:v41 alignment:v42 inRect:?];
  v47 = SKUIRectByRemovingStoreUserInterfaceLayoutDirectionInRect(v43, v44, v45, v46, v5, v7, v9, v11);
  v49 = v48;
  v51 = v50;
  v52 = v5;
  v54 = v53;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __53__SKUIProductLockupCollectionViewCell_layoutSubviews__block_invoke;
  aBlock[3] = &unk_2781FC338;
  v105 = &v127;
  v106 = v83;
  v107 = v82;
  v108 = v9 - v78 - v83;
  v109 = v11 - v79 - v82;
  v55 = v41;
  v101 = v55;
  v110 = v47;
  v111 = v49;
  v112 = v51;
  v113 = v54;
  v114 = v52;
  v115 = v7;
  v116 = v9;
  v117 = v11;
  v118 = v72;
  v119 = v71;
  v120 = v79;
  v121 = v78;
  v56 = v26;
  v102 = v56;
  v122 = v77;
  v123 = v70;
  v124 = v69;
  v125 = v68;
  v57 = v36;
  v103 = v57;
  selfCopy = self;
  v126 = v42;
  v58 = _Block_copy(aBlock);
  v58[2](v76, v75, v74, v73, 0.0);
  v59 = [(SKUIProductLockupLayout *)self->_layout viewElementsForSection:0];
  if ([v59 count])
  {
    bottomLeftLayoutStyle = [(SKUIProductLockupLayout *)self->_layout bottomLeftLayoutStyle];
    if (bottomLeftLayoutStyle == 2)
    {
      v94 = 0;
      v95 = &v94;
      v61 = *(v136 + 4);
      v96 = 0x2020000000;
      v97 = v61;
      v99[0] = MEMORY[0x277D85DD0];
      v99[1] = 3221225472;
      v99[2] = __53__SKUIProductLockupCollectionViewCell_layoutSubviews__block_invoke_2;
      v99[3] = &unk_2781FC360;
      *&v99[6] = v9 - v78 - v83;
      *&v99[7] = v11 - v79 - v82;
      v99[4] = self;
      v99[5] = &v94;
      *&v99[8] = v52;
      *&v99[9] = v7;
      *&v99[10] = v9;
      *&v99[11] = v11;
      v99[12] = v72;
      v99[13] = v71;
      *&v99[14] = v79;
      *&v99[15] = v78;
      [v59 enumerateObjectsUsingBlock:v99];
      if ([v57 count])
      {
        v143.origin.y = v75;
        v143.origin.x = v76;
        v143.size.height = v73;
        v143.size.width = v74;
        if (CGRectGetMinX(v143) < v95[3])
        {
          if ([(SKUIProductLockupLayout *)self->_layout hasBottomRightElementWithRightAlignment])
          {
            v62 = v95[3];
            v144.origin.x = v83;
            v144.origin.y = v82;
            v144.size.height = v80;
            v144.size.width = v9 - v78 - v83;
            MinY = CGRectGetMinY(v144);
            v145.origin.x = v83;
            v145.origin.y = v82;
            v145.size.height = v80;
            v145.size.width = v81;
            MaxX = CGRectGetMaxX(v145);
            v146.origin.x = v83;
            v146.origin.y = v82;
            v146.size.height = v80;
            v146.size.width = v81;
            [(SKUIProductLockupCollectionViewCell *)self _stackBottomRightElements:v57 inRect:v62, MinY, MaxX - v95[3], CGRectGetHeight(v146)];
            (v58[2])(v58);
          }
        }
      }
    }

    else
    {
      if ([v57 count])
      {
        v65 = v76 - 5.0 - v83;
      }

      else
      {
        v65 = v9 - v78 - v83;
      }

      v94 = 0;
      v95 = &v94;
      v96 = 0x3010000000;
      v97 = &unk_215F8ACD7;
      v98 = *MEMORY[0x277CBF3A8];
      v90 = 0;
      v91 = &v90;
      v92 = 0x2020000000;
      v93 = 0;
      v86 = 0;
      v87 = &v86;
      v88 = 0x2020000000;
      v89 = 0;
      v85[0] = MEMORY[0x277D85DD0];
      v85[1] = 3221225472;
      v85[2] = __53__SKUIProductLockupCollectionViewCell_layoutSubviews__block_invoke_3;
      v85[3] = &unk_2781FC388;
      *&v85[8] = v65;
      *&v85[9] = v52;
      *&v85[10] = v7;
      *&v85[11] = v9;
      *&v85[12] = v11;
      v85[4] = self;
      v85[5] = &v86;
      v85[6] = &v94;
      v85[7] = &v90;
      [v59 enumerateObjectsUsingBlock:v85];
      v66 = v95;
      if (bottomLeftLayoutStyle && v95[4] < v65)
      {
        v65 = v95[4];
      }

      v95[4] = v65;
      v91[3] = 0;
      v136[5] = v67 - v66[5];
      v87[3] = 0;
      v84[0] = MEMORY[0x277D85DD0];
      v84[1] = 3221225472;
      v84[2] = __53__SKUIProductLockupCollectionViewCell_layoutSubviews__block_invoke_4;
      v84[3] = &unk_2781FC3B0;
      v84[4] = self;
      v84[5] = &v135;
      v84[6] = &v90;
      v84[7] = &v86;
      v84[8] = &v94;
      *&v84[9] = v52;
      *&v84[10] = v7;
      *&v84[11] = v9;
      *&v84[12] = v11;
      [v59 enumerateObjectsUsingBlock:v84];
      _Block_object_dispose(&v86, 8);
      _Block_object_dispose(&v90, 8);
    }

    _Block_object_dispose(&v94, 8);
  }

  _Block_object_dispose(&v127, 8);
  _Block_object_dispose(&v135, 8);
}

double __53__SKUIProductLockupCollectionViewCell_layoutSubviews__block_invoke(uint64_t a1, double a2, double a3, double a4, double a5, double a6)
{
  v10 = *(*(a1 + 64) + 8);
  v11 = *(a1 + 88);
  *(v10 + 32) = *(a1 + 72);
  *(v10 + 48) = v11;
  if ([*(a1 + 32) count])
  {
    *(*(*(a1 + 64) + 8) + 40) = CGRectGetMaxY(*(a1 + 104)) + 5.0;
    *(*(*(a1 + 64) + 8) + 56) = *(a1 + 160) - *(a1 + 184) - *(*(*(a1 + 64) + 8) + 40);
  }

  if ([*(a1 + 40) count])
  {
    v12 = *(*(a1 + 64) + 8);
    v13 = *(a1 + 200) - 5.0 - *(v12 + 32);
    if (*(v12 + 48) < v13)
    {
      v13 = *(v12 + 48);
    }

    *(v12 + 48) = v13;
  }

  if ([*(a1 + 48) count])
  {
    v14 = *(*(a1 + 64) + 8);
    v15 = a3 - 5.0;
    v16 = 32;
    if (a6 > 0.00000011920929)
    {
      v16 = 40;
    }

    v17 = 48;
    if (a6 <= 0.00000011920929)
    {
      v15 = a2 - 5.0;
    }

    else
    {
      v17 = 56;
    }

    v18 = v15 - *(v14 + v16);
    if (*(v14 + v17) < v18)
    {
      v18 = *(v14 + v17);
    }

    *(v14 + v17) = v18;
  }

  v19 = *(a1 + 56);
  v20 = [v19[107] viewElementsForSection:2];
  v21 = *(a1 + 232);
  v22 = *(*(a1 + 64) + 8);
  SKUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(v22[4], v22[5], v22[6], v22[7], *(a1 + 136), *(a1 + 144), *(a1 + 152), *(a1 + 160));
  [v19 _stackElements:v20 alignment:v21 inRect:?];
  v24 = v23;

  return v24;
}

void __53__SKUIProductLockupCollectionViewCell_layoutSubviews__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v9 = [*(*(a1 + 32) + 840) objectForKey:a2];
  if (([v9 isHidden] & 1) == 0)
  {
    [v9 frame];
    [v9 sizeThatFits:{*(a1 + 48), 1.79769313e308}];
    v11.size.width = v3;
    v11.size.height = v4;
    v11.origin.x = *(*(*(a1 + 40) + 8) + 24);
    v11.origin.y = *(a1 + 88) - *(a1 + 112) - v4;
    v12 = CGRectIntegral(v11);
    x = v12.origin.x;
    y = v12.origin.y;
    width = v12.size.width;
    height = v12.size.height;
    SKUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(v12.origin.x, v12.origin.y, v12.size.width, v12.size.height, *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88));
    [v9 setFrame:?];
    v13.origin.x = x;
    v13.origin.y = y;
    v13.size.width = width;
    v13.size.height = height;
    *(*(*(a1 + 40) + 8) + 24) = CGRectGetMaxX(v13) + 5.0;
  }
}

void __53__SKUIProductLockupCollectionViewCell_layoutSubviews__block_invoke_3(uint64_t a1, void *a2)
{
  v17 = a2;
  v3 = [*(*(a1 + 32) + 840) objectForKey:?];
  if (([v3 isHidden] & 1) == 0)
  {
    [v3 frame];
    v5 = v4;
    v7 = v6;
    [v3 sizeThatFits:{*(a1 + 64), 1.79769313e308}];
    v10 = v9;
    if (v8 >= *(a1 + 64))
    {
      v11 = *(a1 + 64);
    }

    else
    {
      v11 = v8;
    }

    SKUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(v5, v7, v11, v9, *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96));
    [v3 setFrame:?];
    if (*(*(*(a1 + 40) + 8) + 24) <= 0)
    {
      v12 = v17;
    }

    else
    {
      [*(*(a1 + 32) + 856) topPaddingForViewElement:v17];
      v12 = v17;
      *(*(*(a1 + 48) + 8) + 40) = v13 + *(*(*(a1 + 48) + 8) + 40);
    }

    *(*(*(a1 + 48) + 8) + 40) = v10 + *(*(*(a1 + 56) + 8) + 24) + *(*(*(a1 + 48) + 8) + 40);
    v14 = *(*(a1 + 48) + 8);
    v15 = *(v14 + 32);
    if (v15 < v11)
    {
      v15 = v11;
    }

    *(v14 + 32) = v15;
    [*(*(a1 + 32) + 856) bottomPaddingForViewElement:v12];
    *(*(*(a1 + 56) + 8) + 24) = v16;
    ++*(*(*(a1 + 40) + 8) + 24);
  }
}

void __53__SKUIProductLockupCollectionViewCell_layoutSubviews__block_invoke_4(uint64_t a1, void *a2)
{
  v20 = a2;
  v3 = [*(*(a1 + 32) + 840) objectForKey:?];
  if (([v3 isHidden] & 1) == 0)
  {
    [v3 frame];
    v5 = v4;
    v7 = v6;
    v8 = *(*(*(a1 + 40) + 8) + 40) + *(*(*(a1 + 48) + 8) + 24);
    if (*(*(*(a1 + 56) + 8) + 24) < 1)
    {
      v9 = v20;
    }

    else
    {
      [*(*(a1 + 32) + 856) topPaddingForViewElement:v20];
      v9 = v20;
      v8 = v8 + v10;
    }

    if ([v9 elementType] == 77)
    {
      v11 = *(*(*(a1 + 40) + 8) + 32);
      v5 = *(*(*(a1 + 64) + 8) + 32);
    }

    else
    {
      v11 = *(*(*(a1 + 40) + 8) + 32);
      if (*(*(a1 + 32) + 880) != 1)
      {
        v11 = v11 + *(*(*(a1 + 64) + 8) + 32) - v5;
      }
    }

    v12 = v8;
    v13 = v5;
    v14 = v7;
    v22 = CGRectIntegral(*&v11);
    x = v22.origin.x;
    y = v22.origin.y;
    width = v22.size.width;
    height = v22.size.height;
    SKUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(v22.origin.x, v22.origin.y, v22.size.width, v22.size.height, *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96));
    [v3 setFrame:?];
    [*(*(a1 + 32) + 856) bottomPaddingForViewElement:v20];
    *(*(*(a1 + 48) + 8) + 24) = v19;
    v23.origin.x = x;
    v23.origin.y = y;
    v23.size.width = width;
    v23.size.height = height;
    *(*(*(a1 + 40) + 8) + 40) = CGRectGetMaxY(v23);
    ++*(*(*(a1 + 56) + 8) + 24);
  }
}

- (void)itemOfferButtonDidAnimateTransition:(id)transition
{
  if (([transition isShowingConfirmation] & 1) == 0)
  {
    [(SKUIGradientView *)self->_offerConfirmationGradientView removeFromSuperview];
    offerConfirmationGradientView = self->_offerConfirmationGradientView;
    self->_offerConfirmationGradientView = 0;
  }
}

- (void)offerViewDidAnimateTransition:(id)transition
{
  if (([transition isShowingConfirmation] & 1) == 0)
  {
    [(SKUIGradientView *)self->_offerConfirmationGradientView removeFromSuperview];
    offerConfirmationGradientView = self->_offerConfirmationGradientView;
    self->_offerConfirmationGradientView = 0;
  }
}

- (void)_buttonAction:(id)action
{
  v21 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  v15 = SKUICollectionViewForView(self);
  delegate = [v15 delegate];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = self->_elementViews;
  v7 = [(NSMapTable *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    while (2)
    {
      v10 = delegate;
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = [(NSMapTable *)self->_elementViews objectForKey:v12];

        if (v13 == actionCopy)
        {
          delegate = v10;
          if (objc_opt_respondsToSelector())
          {
            v14 = [v15 indexPathForCell:self];
            [v10 collectionView:v15 didConfirmButtonElement:v12 withClickInfo:0 forItemAtIndexPath:v14];
          }

          else
          {
            [v12 dispatchEventOfType:2 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:0];
          }

          goto LABEL_13;
        }
      }

      v8 = [(NSMapTable *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      delegate = v10;
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
}

- (void)_cancelConfirmationAction:(id)action
{
  actionCopy = action;
  [(SKUIProductLockupCollectionViewCell *)self bringSubviewToFront:actionCopy];
  [actionCopy setShowingConfirmation:0 animated:1];
}

- (void)_imageTapAction:(id)action
{
  v17 = *MEMORY[0x277D85DE8];
  view = [action view];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_elementViews;
  v6 = [(NSMapTable *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        v11 = [(NSMapTable *)self->_elementViews objectForKey:v10, v12];

        if (v11 == view)
        {
          [v10 dispatchEventOfType:2 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:0];
          goto LABEL_11;
        }
      }

      v7 = [(NSMapTable *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (void)_showConfirmationAction:(id)action
{
  actionCopy = action;
  [(SKUIProductLockupCollectionViewCell *)self _prepareOfferConfirmationGradientForView:actionCopy];
  [actionCopy setShowingConfirmation:1 animated:1];
}

+ (id)_attributedStringForButton:(id)button context:(id)context
{
  buttonCopy = button;
  contextCopy = context;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v7)
      {
        [(SKUIProductLockupCollectionViewCell *)v7 _attributedStringForButton:v8 context:v9, v10, v11, v12, v13, v14];
      }
    }
  }

  buttonTitleStyle = [buttonCopy buttonTitleStyle];
  v16 = buttonTitleStyle;
  if (buttonTitleStyle)
  {
    style = buttonTitleStyle;
  }

  else
  {
    style = [buttonCopy style];
  }

  v18 = style;

  v19 = SKUIViewElementFontWithStyle(v18);
  if (!v19)
  {
    v19 = SKUIFontLimitedPreferredFontForTextStyle(21, 5);
  }

  tintColor = [contextCopy tintColor];
  v21 = SKUIViewElementPlainColorWithStyle(v18, tintColor);

  if (!v21)
  {
    v21 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.6];
  }

  buttonText = [buttonCopy buttonText];
  v23 = [buttonText attributedStringWithDefaultFont:v19 foregroundColor:v21 style:v18];

  return v23;
}

+ (id)_attributedStringForLabel:(id)label context:(id)context
{
  labelCopy = label;
  contextCopy = context;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v7)
      {
        [(SKUIProductLockupCollectionViewCell *)v7 _attributedStringForLabel:v8 context:v9, v10, v11, v12, v13, v14];
      }
    }
  }

  style = [labelCopy style];
  v16 = SKUIViewElementFontWithStyle(style);
  tintColor = [contextCopy tintColor];

  v18 = SKUIViewElementPlainColorWithStyle(style, tintColor);

  labelViewStyle = [labelCopy labelViewStyle];
  if (labelViewStyle <= 2)
  {
    if (labelViewStyle < 2)
    {
      if (v16)
      {
        if (v18)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v16 = SKUIFontForTextStyle(10);
        if (v18)
        {
          goto LABEL_32;
        }
      }

      v20 = MEMORY[0x277D75348];
      v21 = 0.6;
      goto LABEL_28;
    }

    if (labelViewStyle != 2)
    {
      goto LABEL_32;
    }

LABEL_15:
    if (v16)
    {
      if (v18)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v16 = SKUIFontLimitedPreferredFontForTextStyle(2, 5);
      if (v18)
      {
        goto LABEL_32;
      }
    }

    blackColor = [MEMORY[0x277D75348] blackColor];
    goto LABEL_31;
  }

  switch(labelViewStyle)
  {
    case 3:
      if (!v16)
      {
        v16 = SKUIFontForTextStyle(10);
      }

      if (v18)
      {
        break;
      }

      v20 = MEMORY[0x277D75348];
      v21 = 0.4;
LABEL_28:
      blackColor = [v20 colorWithWhite:0.0 alpha:v21];
LABEL_31:
      v18 = blackColor;
      break;
    case 4:
      if (!v16)
      {
        v16 = SKUIFontLimitedPreferredFontForTextStyle(21, 5);
      }

      if (v18)
      {
        break;
      }

      v20 = MEMORY[0x277D75348];
      v21 = 0.8;
      goto LABEL_28;
    case 5:
      goto LABEL_15;
  }

LABEL_32:
  text = [labelCopy text];
  v24 = [text attributedStringWithDefaultFont:v16 foregroundColor:v18 style:style];

  return v24;
}

+ (void)_requestLayoutForViewElements:(id)elements width:(double)width context:(id)context
{
  v33 = *MEMORY[0x277D85DE8];
  elementsCopy = elements;
  contextCopy = context;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v10)
      {
        [(SKUIProductLockupCollectionViewCell *)v10 _requestLayoutForViewElements:v11 width:v12 context:v13, v14, v15, v16, v17];
      }
    }
  }

  labelLayoutCache = [contextCopy labelLayoutCache];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v19 = elementsCopy;
  v20 = [v19 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v29;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v29 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v28 + 1) + 8 * i);
        elementType = [v24 elementType];
        if (elementType > 130)
        {
          if (elementType <= 137)
          {
            if (elementType == 131)
            {
              v26 = SKUIStackListCollectionViewCell;
            }

            else
            {
              if (elementType != 135)
              {
                continue;
              }

              v26 = SKUIStarRatingViewElementView;
            }
          }

          else
          {
            if (elementType == 138)
            {
              v27 = [self _attributedStringForLabel:v24 context:contextCopy];
              [labelLayoutCache requestLayoutForLabel:v24 attributedString:v27 width:width];
              goto LABEL_31;
            }

            if (elementType == 141)
            {
              goto LABEL_23;
            }

            if (elementType != 144)
            {
              continue;
            }

            v26 = SKUITomatoRatingView;
          }
        }

        else
        {
          if (elementType <= 47)
          {
            if (elementType == 8)
            {
              [labelLayoutCache requestLayoutForBadge:v24 width:width];
              continue;
            }

            if (elementType != 12)
            {
              continue;
            }

LABEL_23:
            v27 = [self _attributedStringForButton:v24 context:contextCopy];
            [labelLayoutCache requestLayoutForButton:v24 attributedString:v27 width:width];
LABEL_31:

            continue;
          }

          switch(elementType)
          {
            case '0':
              v26 = SKUISectionHeaderView;
              break;
            case '>':
              v26 = SKUIHorizontalListView;
              break;
            case 'M':
              v26 = SKUIOfferView;
              break;
            default:
              continue;
          }
        }

        [(__objc2_class *)v26 requestLayoutForViewElement:v24 width:contextCopy context:width];
      }

      v21 = [v19 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v21);
  }
}

- (CGRect)_frameForSection:(int64_t)section
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x4010000000;
  v18 = &unk_215F8ACD7;
  v4 = *(MEMORY[0x277CBF3A0] + 16);
  v19 = *MEMORY[0x277CBF3A0];
  v20 = v4;
  v5 = [(SKUIProductLockupLayout *)self->_layout viewElementsForSection:section];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __56__SKUIProductLockupCollectionViewCell__frameForSection___block_invoke;
  v14[3] = &unk_2781FC3D8;
  v14[4] = self;
  v14[5] = &v15;
  [v5 enumerateObjectsUsingBlock:v14];

  v6 = v16[4];
  v7 = v16[5];
  v8 = v16[6];
  v9 = v16[7];
  _Block_object_dispose(&v15, 8);
  v10 = v6;
  v11 = v7;
  v12 = v8;
  v13 = v9;
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

void __56__SKUIProductLockupCollectionViewCell__frameForSection___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(*(a1 + 32) + 840) objectForKey:a2];
  if (v5)
  {
    v13 = v5;
    if (a3)
    {
      v7 = *(a1 + 40);
      v6 = a1 + 40;
      v8 = *(v7 + 8);
      [v5 frame];
      v16.origin.x = v9;
      v16.origin.y = v10;
      v16.size.width = v11;
      v16.size.height = v12;
      v15 = CGRectUnion(v8[1], v16);
    }

    else
    {
      [v5 frame];
      v6 = a1 + 40;
    }

    *(*(*v6 + 8) + 32) = v15;
    v5 = v13;
  }
}

- (void)_layoutConfirmationGradientRelativeToSection:(int64_t)section alpha:(double)alpha
{
  v34[3] = *MEMORY[0x277D85DE8];
  offerConfirmationGradientView = self->_offerConfirmationGradientView;
  if (offerConfirmationGradientView)
  {
    v27 = 0;
    v28 = &v27;
    v29 = 0x4010000000;
    v30 = &unk_215F8ACD7;
    v31 = 0u;
    v32 = 0u;
    [(SKUIGradientView *)offerConfirmationGradientView frame];
    *&v31 = v8;
    *(&v31 + 1) = v9;
    *&v32 = v10;
    *(&v32 + 1) = v11;
    layer = [(SKUIGradientView *)self->_offerConfirmationGradientView layer];
    [(SKUIProductLockupCollectionViewCell *)self _frameForSection:section];
    v15 = v13;
    v17 = v16;
    v18 = v14;
    v20 = v19;
    v21 = v28;
    if (section)
    {
      v28[4] = v13 + -30.0;
      v21[6] = v14 + 30.0;
      v33[0] = &unk_2828D2B70;
      v22 = [MEMORY[0x277CCABB0] numberWithDouble:30.0 / (v14 + 30.0)];
      v33[1] = v22;
      v33[2] = &unk_2828D2B58;
      [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:3];
    }

    else
    {
      v28[4] = v13;
      v21[6] = v14 + 30.0;
      v34[0] = &unk_2828D2B58;
      v22 = [MEMORY[0x277CCABB0] numberWithDouble:1.0 - 30.0 / (v14 + 30.0)];
      v34[1] = v22;
      v34[2] = &unk_2828D2B70;
      [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:3];
    }
    v23 = ;
    [layer setLocations:v23];

    superview = [(SKUIGradientView *)self->_offerConfirmationGradientView superview];
    subviews = [superview subviews];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __90__SKUIProductLockupCollectionViewCell__layoutConfirmationGradientRelativeToSection_alpha___block_invoke;
    v26[3] = &unk_2781FC400;
    *&v26[5] = v15;
    v26[6] = v17;
    *&v26[7] = v18;
    v26[8] = v20;
    v26[4] = &v27;
    [subviews enumerateObjectsUsingBlock:v26];

    [(SKUIGradientView *)self->_offerConfirmationGradientView setAlpha:alpha];
    [(SKUIGradientView *)self->_offerConfirmationGradientView setFrame:v28[4], v28[5], v28[6], v28[7]];

    _Block_object_dispose(&v27, 8);
  }
}

void __90__SKUIProductLockupCollectionViewCell__layoutConfirmationGradientRelativeToSection_alpha___block_invoke(double *a1, void *a2)
{
  [a2 frame];
  v4 = v3;
  v6 = v5;
  v7 = a1[5];
  v8 = a1[7];
  v10.origin.x = v7;
  v10.origin.y = v3;
  v10.size.width = v8;
  v10.size.height = v5;
  if (CGRectIntersectsRect(*(*(*(a1 + 4) + 8) + 32), v10))
  {
    v11.origin.x = v7;
    v11.origin.y = v4;
    v11.size.width = v8;
    v11.size.height = v6;
    v9 = CGRectUnion(*(*(*(a1 + 4) + 8) + 32), v11);
    *(*(*(a1 + 4) + 8) + 40) = v9.origin.y;
    *(*(*(a1 + 4) + 8) + 56) = v9.size.height;
  }
}

- (void)_prepareOfferConfirmationGradientForView:(id)view
{
  v36[3] = *MEMORY[0x277D85DE8];
  viewCopy = view;
  v24 = [(SKUIProductLockupCollectionViewCell *)self _viewElementForView:?];
  if (v24)
  {
    v4 = [(SKUIProductLockupLayout *)self->_layout viewElementsForSection:1];
    v5 = [v4 containsObject:v24];

    superview = [viewCopy superview];
    v30 = 0;
    v31 = &v30;
    v32 = 0x3032000000;
    v33 = __Block_byref_object_copy__31;
    v34 = __Block_byref_object_dispose__31;
    v35 = 0;
    v7 = [(SKUIProductLockupLayout *)self->_layout viewElementsForSection:?];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __80__SKUIProductLockupCollectionViewCell__prepareOfferConfirmationGradientForView___block_invoke;
    v27[3] = &unk_2781FC428;
    v27[4] = self;
    v29 = &v30;
    v8 = superview;
    v28 = v8;
    [v7 enumerateObjectsUsingBlock:v27];

    for (i = 0; i != 4; ++i)
    {
      v10 = [(SKUIProductLockupLayout *)self->_layout viewElementsForSection:qword_215F3F458[i]];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __80__SKUIProductLockupCollectionViewCell__prepareOfferConfirmationGradientForView___block_invoke_2;
      v25[3] = &unk_2781FC450;
      v25[4] = self;
      v11 = v8;
      v26 = v11;
      [v10 enumerateObjectsUsingBlock:v25];
    }

    offerConfirmationGradientView = self->_offerConfirmationGradientView;
    if (!offerConfirmationGradientView)
    {
      v13 = [SKUIGradientView alloc];
      v14 = [(SKUIGradientView *)v13 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
      v15 = self->_offerConfirmationGradientView;
      self->_offerConfirmationGradientView = v14;

      backgroundColor = [(SKUIProductLockupCollectionViewCell *)self backgroundColor];
      layer = [(SKUIGradientView *)self->_offerConfirmationGradientView layer];
      v18 = [backgroundColor colorWithAlphaComponent:0.0];
      v19 = v18;
      v36[0] = [v18 CGColor];
      v20 = backgroundColor;
      v36[1] = [backgroundColor CGColor];
      v21 = backgroundColor;
      v36[2] = [backgroundColor CGColor];
      v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:3];
      [layer setColors:v22];

      [layer setEndPoint:{1.0, 0.5}];
      [layer setStartPoint:{0.0, 0.5}];

      offerConfirmationGradientView = self->_offerConfirmationGradientView;
    }

    [v11 insertSubview:offerConfirmationGradientView belowSubview:v31[5]];
    [(SKUIProductLockupCollectionViewCell *)self _layoutConfirmationGradientRelativeToSection:v5 alpha:0.0];

    _Block_object_dispose(&v30, 8);
  }
}

void __80__SKUIProductLockupCollectionViewCell__prepareOfferConfirmationGradientForView___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(*(a1 + 32) + 840) objectForKey:a2];
  v4 = *(*(a1 + 48) + 8);
  v6 = *(v4 + 40);
  v5 = (v4 + 40);
  v7 = v3;
  if (!v6)
  {
    objc_storeStrong(v5, v3);
    v3 = v7;
  }

  [*(a1 + 40) bringSubviewToFront:v3];
}

void __80__SKUIProductLockupCollectionViewCell__prepareOfferConfirmationGradientForView___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(*(a1 + 32) + 840) objectForKey:a2];
  [*(a1 + 40) bringSubviewToFront:v3];
}

- (CGRect)_stackBottomRightElements:(id)elements inRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  elementsCopy = elements;
  v22 = 0;
  v23 = &v22;
  v24 = 0x4010000000;
  v25 = &unk_215F8ACD7;
  v26 = 0u;
  v27 = 0u;
  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = width;
  v28.size.height = height;
  MaxY = CGRectGetMaxY(v28);
  *&v26 = x;
  *(&v26 + 1) = MaxY;
  v27 = 0uLL;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2020000000;
  v21[3] = 0;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v20[3] = 0;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __72__SKUIProductLockupCollectionViewCell__stackBottomRightElements_inRect___block_invoke;
  v19[3] = &unk_2781FC478;
  *&v19[8] = x;
  *&v19[9] = y;
  *&v19[10] = width;
  *&v19[11] = height;
  v19[4] = self;
  v19[5] = &v22;
  v19[6] = v21;
  v19[7] = v20;
  [elementsCopy enumerateObjectsWithOptions:2 usingBlock:v19];
  v11 = v23[4];
  v12 = v23[5];
  v13 = v23[6];
  v14 = v23[7];
  _Block_object_dispose(v20, 8);
  _Block_object_dispose(v21, 8);
  _Block_object_dispose(&v22, 8);

  v15 = v11;
  v16 = v12;
  v17 = v13;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

void __72__SKUIProductLockupCollectionViewCell__stackBottomRightElements_inRect___block_invoke(uint64_t a1, void *a2)
{
  v16 = a2;
  v3 = [*(*(a1 + 32) + 840) objectForKey:?];
  if (([v3 isHidden] & 1) == 0)
  {
    [v3 sizeThatFits:{*(a1 + 80), 1.79769313e308}];
    v18.size.width = v4;
    v18.size.height = v5;
    v18.origin.x = *(a1 + 64) + *(a1 + 80) - v4;
    v18.origin.y = *(*(*(a1 + 40) + 8) + 40) - v5 - *(*(*(a1 + 48) + 8) + 24);
    v19 = CGRectIntegral(v18);
    x = v19.origin.x;
    y = v19.origin.y;
    width = v19.size.width;
    height = v19.size.height;
    [*(a1 + 32) bounds];
    SKUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(x, y, width, height, v10, v11, v12, v13);
    [v3 setFrame:?];
    [v3 setNeedsLayout];
    v14 = *(*(a1 + 40) + 8);
    if (*(*(*(a1 + 56) + 8) + 24))
    {
      v21.origin.x = x;
      v21.origin.y = y;
      v21.size.width = width;
      v21.size.height = height;
      v20 = CGRectUnion(v14[1], v21);
      y = v20.origin.y;
      width = v20.size.width;
      height = v20.size.height;
      v14 = *(*(a1 + 40) + 8);
      v14[1].origin.x = v20.origin.x;
    }

    else
    {
      v14[1].origin.x = x;
    }

    v14[1].origin.y = y;
    v14[1].size.width = width;
    v14[1].size.height = height;
    [*(*(a1 + 32) + 856) bottomPaddingForViewElement:v16];
    *(*(*(a1 + 48) + 8) + 24) = v15;
    ++*(*(*(a1 + 56) + 8) + 24);
  }
}

- (CGRect)_stackElements:(id)elements alignment:(int64_t)alignment inRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  elementsCopy = elements;
  v25 = 0;
  v26 = &v25;
  v27 = 0x4010000000;
  v28 = &unk_215F8ACD7;
  v12 = *(MEMORY[0x277CBF3A0] + 16);
  v29 = *MEMORY[0x277CBF3A0];
  v30 = v12;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x2020000000;
  v24[3] = 0;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v23[3] = 0;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2020000000;
  v22[3] = 0;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __71__SKUIProductLockupCollectionViewCell__stackElements_alignment_inRect___block_invoke;
  v21[3] = &unk_2781FC4A0;
  *&v21[9] = x;
  *&v21[10] = y;
  *&v21[11] = width;
  *&v21[12] = height;
  v21[4] = self;
  v21[5] = &v25;
  v21[13] = alignment;
  v21[6] = v24;
  v21[7] = v22;
  v21[8] = v23;
  [elementsCopy enumerateObjectsUsingBlock:v21];
  v13 = v26[4];
  v14 = v26[5];
  v15 = v26[6];
  v16 = v26[7];
  _Block_object_dispose(v22, 8);
  _Block_object_dispose(v23, 8);
  _Block_object_dispose(v24, 8);
  _Block_object_dispose(&v25, 8);

  v17 = v13;
  v18 = v14;
  v19 = v15;
  v20 = v16;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

void __71__SKUIProductLockupCollectionViewCell__stackElements_alignment_inRect___block_invoke(uint64_t a1, void *a2)
{
  v25 = a2;
  v3 = [*(*(a1 + 32) + 840) objectForKey:?];
  if (([v3 isHidden] & 1) == 0)
  {
    v4 = [*(a1 + 32) textPropertiesForView:v3];
    [v3 sizeThatFits:{*(a1 + 88), 1.79769313e308}];
    v7 = v6;
    if (v5 >= *(a1 + 88))
    {
      v9 = *(a1 + 88);
    }

    else
    {
      v9 = v5;
    }

    v8 = *(a1 + 80);
    v10 = v8 + CGRectGetHeight(*(*(*(a1 + 40) + 8) + 32));
    v11 = *(*(*(a1 + 48) + 8) + 24);
    v12 = *(a1 + 72);
    if (*(a1 + 104) == 8)
    {
      v12 = CGRectGetMaxX(*(a1 + 72)) - v9;
    }

    v13 = v10 + v11;
    if (*(*(*(a1 + 56) + 8) + 24))
    {
      [v4 desiredOffsetTop];
      v15 = v14;
      [*(*(a1 + 32) + 856) topPaddingForViewElement:v25];
      if (v15 >= v16)
      {
        v16 = v15;
      }

      v17 = v16 - *(*(*(a1 + 64) + 8) + 24);
      v13 = v13 + fmaxf(roundf(v17), 0.0);
    }

    v27.origin.x = v12;
    v27.origin.y = v13;
    v27.size.width = v9;
    v27.size.height = v7;
    v28 = CGRectIntegral(v27);
    x = v28.origin.x;
    y = v28.origin.y;
    width = v28.size.width;
    height = v28.size.height;
    [v3 setFrame:?];
    v22 = *(*(a1 + 40) + 8);
    if (*(*(*(a1 + 56) + 8) + 24))
    {
      v30.origin.x = x;
      v30.origin.y = y;
      v30.size.width = width;
      v30.size.height = height;
      v29 = CGRectUnion(v22[1], v30);
      y = v29.origin.y;
      width = v29.size.width;
      height = v29.size.height;
      v22 = *(*(a1 + 40) + 8);
      v22[1].origin.x = v29.origin.x;
    }

    else
    {
      v22[1].origin.x = x;
    }

    v22[1].origin.y = y;
    v22[1].size.width = width;
    v22[1].size.height = height;
    [*(*(a1 + 32) + 856) bottomPaddingForViewElement:v25];
    *(*(*(a1 + 48) + 8) + 24) = v23;
    [v4 baselineOffsetFromBottom];
    *(*(*(a1 + 64) + 8) + 24) = v24;
    ++*(*(*(a1 + 56) + 8) + 24);
  }
}

- (void)_updateLayoutToAnimateOfferTransitionForView:(id)view
{
  viewCopy = view;
  v5 = [(SKUIProductLockupCollectionViewCell *)self _viewElementForView:viewCopy];
  v6 = [(SKUIProductLockupLayout *)self->_layout viewElementsForSection:1];
  v7 = [v6 containsObject:v5];

  if (v7)
  {
    [viewCopy frame];
    x = v41.origin.x;
    y = v41.origin.y;
    MaxX = CGRectGetMaxX(v41);
    [viewCopy sizeThatFits:{*(MEMORY[0x277CBF390] + 16), *(MEMORY[0x277CBF390] + 24)}];
    v12 = v11;
    v14 = v13;
    ShouldReverseLayoutDirection = storeShouldReverseLayoutDirection();
    v16 = MaxX - v12;
    if (ShouldReverseLayoutDirection)
    {
      v16 = x;
    }

    [viewCopy setFrame:{v16, y, v12, v14}];
    v17 = 1;
  }

  else
  {
    if ([(SKUIProductLockupLayout *)self->_layout bottomLeftLayoutStyle]== 2)
    {
      v18 = [(SKUIProductLockupLayout *)self->_layout viewElementsForSection:0];
      v37 = 0;
      v38 = &v37;
      v39 = 0x2020000000;
      elementViews = self->_elementViews;
      firstObject = [v18 firstObject];
      v21 = [(NSMapTable *)elementViews objectForKey:firstObject];
      [v21 frame];
      v23 = v22;

      v40 = v23;
      if (storeShouldReverseLayoutDirection())
      {
        v24 = self->_elementViews;
        firstObject2 = [v18 firstObject];
        v26 = [(NSMapTable *)v24 objectForKey:firstObject2];
        [v26 frame];
        v38[3] = CGRectGetMaxX(v42);
      }

      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __84__SKUIProductLockupCollectionViewCell__updateLayoutToAnimateOfferTransitionForView___block_invoke;
      v34[3] = &unk_2781FC428;
      v34[4] = self;
      v36 = &v37;
      v35 = viewCopy;
      [v18 enumerateObjectsUsingBlock:v34];

      _Block_object_dispose(&v37, 8);
    }

    else
    {
      [viewCopy frame];
      v27 = v43.origin.x;
      v28 = v43.origin.y;
      v29 = CGRectGetMaxX(v43);
      [viewCopy sizeThatFits:{*(MEMORY[0x277CBF390] + 16), *(MEMORY[0x277CBF390] + 24)}];
      v31 = v30;
      v33 = v32;
      if (!self->_offerMetadataPosition && !storeShouldReverseLayoutDirection())
      {
        v27 = v29 - v31;
      }

      [viewCopy setFrame:{v27, v28, v31, v33}];
    }

    v17 = 0;
  }

  [(SKUIProductLockupCollectionViewCell *)self _layoutConfirmationGradientRelativeToSection:v17 alpha:1.0];
}

uint64_t __84__SKUIProductLockupCollectionViewCell__updateLayoutToAnimateOfferTransitionForView___block_invoke(void *a1, uint64_t a2)
{
  v26 = [*(a1[4] + 840) objectForKey:a2];
  v3 = [v26 isHidden];
  v4 = v26;
  if ((v3 & 1) == 0)
  {
    [v26 frame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    if (storeShouldReverseLayoutDirection())
    {
      v13 = *(*(a1[6] + 8) + 24);
      v28.origin.x = v6;
      v28.origin.y = v8;
      v28.size.width = v10;
      v28.size.height = v12;
      v14 = v13 - CGRectGetWidth(v28);
    }

    else
    {
      v14 = *(*(a1[6] + 8) + 24);
    }

    v29.origin.x = v14;
    v29.origin.y = v8;
    v29.size.width = v10;
    v29.size.height = v12;
    MaxX = CGRectGetMaxX(v29);
    if (v26 == a1[5])
    {
      [v26 sizeThatFits:{*(MEMORY[0x277CBF390] + 16), *(MEMORY[0x277CBF390] + 24)}];
      v10 = v16;
      v12 = v17;
    }

    if (storeShouldReverseLayoutDirection())
    {
      v30.origin.x = v14;
      v30.origin.y = v8;
      v30.size.width = v10;
      v30.size.height = v12;
      v14 = MaxX - CGRectGetWidth(v30);
    }

    [v26 setFrame:{v14, v8, v10, v12}];
    ShouldReverseLayoutDirection = storeShouldReverseLayoutDirection();
    v19 = v14;
    v20 = v8;
    v21 = v10;
    v22 = v12;
    if (ShouldReverseLayoutDirection)
    {
      MinX = CGRectGetMinX(*&v19);
      v24 = -5.0;
    }

    else
    {
      MinX = CGRectGetMaxX(*&v19);
      v24 = 5.0;
    }

    *(*(a1[6] + 8) + 24) = MinX + v24;
    v4 = v26;
  }

  return MEMORY[0x2821F96F8](v3, v4);
}

- (id)_viewElementForView:(id)view
{
  v19 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_elementViews;
  v6 = [(NSMapTable *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [(NSMapTable *)self->_elementViews objectForKey:v10, v14];

        if (v11 == viewCopy)
        {
          v12 = v10;
          goto LABEL_11;
        }
      }

      v7 = [(NSMapTable *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

@end