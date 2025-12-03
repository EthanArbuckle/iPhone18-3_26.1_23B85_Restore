@interface SKUICardViewElementCollectionViewCell
+ (BOOL)prefetchResourcesForViewElement:(id)element reason:(int64_t)reason context:(id)context;
+ (CGSize)artworkBoundingSizeWithViewElement:(id)element width:(double)width context:(id)context;
+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context;
+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context;
+ (double)_defaultWidthForLockupWithContext:(id)context;
+ (void)requestLayoutForViewElement:(id)element width:(double)width context:(id)context;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)setImage:(id)image forArtworkRequest:(id)request context:(id)context;
- (BOOL)updateWithItemState:(id)state context:(id)context animated:(BOOL)animated;
- (CALayer)compactAdCardHairlineLayer;
- (NSString)impressionIdentifier;
- (NSString)lineItem;
- (SKUICardViewElementCollectionViewCell)initWithFrame:(CGRect)frame;
- (UIView)adCardBackgroundView;
- (double)_dividerHeight:(id)height;
- (id)viewForElementIdentifier:(id)identifier;
- (void)_buttonAction:(id)action;
- (void)_imageTapAction:(id)action;
- (void)_performDefaultActionForViewElement:(id)element;
- (void)applyLayoutAttributes:(id)attributes;
- (void)layoutSubviews;
- (void)reloadWithViewElement:(id)element width:(double)width context:(id)context;
- (void)setArtworkBoundingSize:(id)size;
- (void)setBackgroundColor:(id)color;
- (void)setPerspectiveTargetView:(id)view;
- (void)setSelected:(BOOL)selected;
- (void)skuiadvertising_advertSelectionEventShouldBeForwarded:(id)forwarded;
@end

@implementation SKUICardViewElementCollectionViewCell

- (SKUICardViewElementCollectionViewCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUICardViewElementCollectionViewCell initWithFrame:];
  }

  v12.receiver = self;
  v12.super_class = SKUICardViewElementCollectionViewCell;
  height = [(SKUIViewReuseCollectionViewCell *)&v12 initWithFrame:x, y, width, height];
  if (height)
  {
    v9 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:0 capacity:0];
    viewElements = height->_viewElements;
    height->_viewElements = v9;
  }

  return height;
}

+ (CGSize)artworkBoundingSizeWithViewElement:(id)element width:(double)width context:(id)context
{
  elementCopy = element;
  contextCopy = context;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3010000000;
  v21 = &unk_215F8ACD7;
  v22 = *MEMORY[0x277CBF3A8];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __90__SKUICardViewElementCollectionViewCell_artworkBoundingSizeWithViewElement_width_context___block_invoke;
  v14[3] = &unk_2781FC1F0;
  v16 = &v18;
  v9 = contextCopy;
  v15 = v9;
  widthCopy = width;
  [elementCopy enumerateChildrenUsingBlock:v14];
  v10 = v19[4];
  v11 = v19[5];

  _Block_object_dispose(&v18, 8);
  v12 = v10;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

void __90__SKUICardViewElementCollectionViewCell_artworkBoundingSizeWithViewElement_width_context___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v10 = a2;
  v5 = [v10 elementType];
  if (v5 != 152)
  {
    if (v5 == 62)
    {
      [SKUIHorizontalListView preferredSizeForViewElement:v10 context:*(a1 + 32)];
      if (v6 == *MEMORY[0x277CBF3A8] && v7 == *(MEMORY[0x277CBF3A8] + 8))
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }

    if (v5 != 49)
    {
      goto LABEL_6;
    }
  }

  [*(a1 + 32) sizeForViewElement:v10 width:*(a1 + 48)];
LABEL_5:
  v8 = *(*(a1 + 40) + 8);
  *(v8 + 32) = v6;
  *(v8 + 40) = v7;
  *a3 = 1;
LABEL_6:
}

- (void)setArtworkBoundingSize:(id)size
{
  sizeCopy = size;
  artworkBoundingSize = self->_artworkBoundingSize;
  if (artworkBoundingSize != sizeCopy)
  {
    v8 = sizeCopy;
    artworkBoundingSize = [artworkBoundingSize isEqual:sizeCopy];
    sizeCopy = v8;
    if ((artworkBoundingSize & 1) == 0)
    {
      v6 = [v8 copy];
      v7 = self->_artworkBoundingSize;
      self->_artworkBoundingSize = v6;

      artworkBoundingSize = [(SKUICardViewElementCollectionViewCell *)self setNeedsLayout];
      sizeCopy = v8;
    }
  }

  MEMORY[0x2821F96F8](artworkBoundingSize, sizeCopy);
}

- (UIView)adCardBackgroundView
{
  adCardBackgroundView = self->_adCardBackgroundView;
  if (!adCardBackgroundView)
  {
    v4 = objc_alloc_init(MEMORY[0x277D75D18]);
    v5 = self->_adCardBackgroundView;
    self->_adCardBackgroundView = v4;

    layer = [(UIView *)self->_adCardBackgroundView layer];
    [layer setCornerRadius:5.0];

    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v9 = 1.0 / v8;
    layer2 = [(UIView *)self->_adCardBackgroundView layer];
    [layer2 setBorderWidth:v9];

    v11 = [MEMORY[0x277D75348] colorWithHue:0.57292 saturation:0.06531 brightness:0.96078 alpha:1.0];
    cGColor = [v11 CGColor];
    layer3 = [(UIView *)self->_adCardBackgroundView layer];
    [layer3 setBorderColor:cGColor];

    adCardBackgroundView = self->_adCardBackgroundView;
  }

  v14 = adCardBackgroundView;

  return v14;
}

- (CALayer)compactAdCardHairlineLayer
{
  compactAdCardHairlineLayer = self->_compactAdCardHairlineLayer;
  if (!compactAdCardHairlineLayer)
  {
    layer = [MEMORY[0x277CD9ED0] layer];
    v5 = self->_compactAdCardHairlineLayer;
    self->_compactAdCardHairlineLayer = layer;

    v6 = [MEMORY[0x277D75348] colorWithHue:0.57292 saturation:0.06531 brightness:0.96078 alpha:1.0];
    -[CALayer setBackgroundColor:](self->_compactAdCardHairlineLayer, "setBackgroundColor:", [v6 CGColor]);

    compactAdCardHairlineLayer = self->_compactAdCardHairlineLayer;
  }

  v7 = compactAdCardHairlineLayer;

  return v7;
}

+ (BOOL)prefetchResourcesForViewElement:(id)element reason:(int64_t)reason context:(id)context
{
  elementCopy = element;
  contextCopy = context;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v9 = [elementCopy cardType] == 1;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __88__SKUICardViewElementCollectionViewCell_prefetchResourcesForViewElement_reason_context___block_invoke;
  v12[3] = &unk_2781FC870;
  reasonCopy = reason;
  v10 = contextCopy;
  v16 = v9;
  v13 = v10;
  v14 = &v17;
  [elementCopy enumerateChildrenUsingBlock:v12];
  LOBYTE(contextCopy) = *(v18 + 24);

  _Block_object_dispose(&v17, 8);
  return contextCopy;
}

void __88__SKUICardViewElementCollectionViewCell_prefetchResourcesForViewElement_reason_context___block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [v11 elementType];
  if (v3 == 49)
  {
    if (*(a1 + 56) == 1)
    {
      v8 = v11;
      LODWORD(v9) = 1045220557;
      [v8 setLayerShadowOpacity:v9];
      [v8 setLayerShadowRadius:10.0];
      [v8 setLayerShadowOffset:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];

      v10 = v11;
      v4 = 0;
      goto LABEL_12;
    }

    v4 = 0;
  }

  else if (v3 == 66)
  {
    v4 = [SKUIHorizontalLockupView prefetchResourcesForViewElement:v11 reason:*(a1 + 48) context:*(a1 + 32)];
    if (*(a1 + 56) == 1)
    {
      v5 = [v11 firstChildForElementType:49];
      v7 = v5;
      if (v5)
      {
        LODWORD(v6) = 1045220557;
        [v5 setLayerShadowOpacity:v6];
        [v7 setLayerShadowRadius:10.0];
        [v7 setLayerShadowOffset:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];
      }
    }
  }

  else
  {
    v4 = [*(a1 + 32) prefetchResourcesForViewElement:v11 reason:*(a1 + 48)];
  }

  v10 = v11;
LABEL_12:
  *(*(*(a1 + 40) + 8) + 24) = (*(*(*(a1 + 40) + 8) + 24) | v4) & 1;
}

+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context
{
  elementCopy = element;
  contextCopy = context;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  style = [elementCopy style];
  itemWidth = [style itemWidth];
  [itemWidth floatValue];
  v11 = v10;

  if (v11 <= 0.00000011921)
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __77__SKUICardViewElementCollectionViewCell_preferredSizeForViewElement_context___block_invoke;
    v19[3] = &unk_2781F95A0;
    v20 = contextCopy;
    v21 = &v23;
    selfCopy = self;
    [elementCopy enumerateChildrenUsingBlock:v19];

    v12 = v24[3];
  }

  else
  {
    v12 = v11;
    v24[3] = v11;
  }

  if (v12 <= 0.00000011920929)
  {
    [contextCopy defaultItemWidthForViewElement:elementCopy];
  }

  [self sizeThatFitsWidth:elementCopy viewElement:contextCopy context:?];
  v14 = v13;
  v16 = v15;
  _Block_object_dispose(&v23, 8);

  v17 = v14;
  v18 = v16;
  result.height = v18;
  result.width = v17;
  return result;
}

void __77__SKUICardViewElementCollectionViewCell_preferredSizeForViewElement_context___block_invoke(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = [v12 elementType];
  if (v3 <= 65)
  {
    if (v3 == 49)
    {
      [*(a1 + 32) sizeForImageElement:v12];
    }

    else
    {
      if (v3 != 62)
      {
        goto LABEL_23;
      }

      [SKUIHorizontalListView preferredSizeForViewElement:v12 context:*(a1 + 32)];
      if (v4 == *MEMORY[0x277CBF3A8] && v5 == *(MEMORY[0x277CBF3A8] + 8))
      {
        goto LABEL_23;
      }
    }

    v10 = *(*(a1 + 40) + 8);
    if (*(v10 + 24) >= v4)
    {
      v4 = *(v10 + 24);
    }

    goto LABEL_22;
  }

  if (v3 == 66)
  {
    v11 = *(*(*(a1 + 40) + 8) + 24);
    [*(a1 + 48) _defaultWidthForLockupWithContext:*(a1 + 32)];
    if (v11 >= v4)
    {
      v4 = v11;
    }

    v10 = *(*(a1 + 40) + 8);
LABEL_22:
    *(v10 + 24) = v4;
    goto LABEL_23;
  }

  if (v3 == 152)
  {
    v7 = [v12 thumbnailImage];
    [*(a1 + 32) sizeForImageElement:v7];
    v9 = *(*(a1 + 40) + 8);
    if (*(v9 + 24) >= v8)
    {
      v8 = *(v9 + 24);
    }

    *(v9 + 24) = v8;
  }

LABEL_23:
}

+ (void)requestLayoutForViewElement:(id)element width:(double)width context:(id)context
{
  contextCopy = context;
  elementCopy = element;
  v9 = [SKUICardLayout layoutWithCardViewElement:elementCopy context:contextCopy];
  labelLayoutCache = [contextCopy labelLayoutCache];
  [v9 horizontalContentInset];
  v15[1] = 3221225472;
  v15[0] = MEMORY[0x277D85DD0];
  v15[2] = __83__SKUICardViewElementCollectionViewCell_requestLayoutForViewElement_width_context___block_invoke;
  v15[3] = &unk_2781FC898;
  v16 = v9;
  v17 = labelLayoutCache;
  v19 = width + v11 * -2.0;
  v18 = contextCopy;
  v12 = contextCopy;
  v13 = labelLayoutCache;
  v14 = v9;
  [elementCopy enumerateChildrenUsingBlock:v15];
}

uint64_t __83__SKUICardViewElementCollectionViewCell_requestLayoutForViewElement_width_context___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 elementType];
  if (v3 > 61)
  {
    if (v3 > 130)
    {
      v4 = v8;
      if (v3 != 131)
      {
        if (v3 != 138)
        {
          goto LABEL_23;
        }

        v5 = [*(a1 + 32) attributedStringForLabel:v8];
        [*(a1 + 40) requestLayoutForLabel:v8 attributedString:v5 width:*(a1 + 56)];
        goto LABEL_16;
      }

      v6 = SKUIStackListCollectionViewCell;
    }

    else
    {
      v4 = v8;
      if (v3 == 62)
      {
        v6 = SKUIHorizontalListView;
      }

      else
      {
        if (v3 != 66)
        {
          goto LABEL_23;
        }

        v6 = SKUIHorizontalLockupView;
      }
    }

LABEL_21:
    v3 = [(__objc2_class *)v6 requestLayoutForViewElement:v8 width:*(a1 + 48) context:*(a1 + 56)];
    goto LABEL_22;
  }

  if (v3 > 47)
  {
    v4 = v8;
    if (v3 == 48)
    {
      v6 = SKUISectionHeaderView;
    }

    else
    {
      if (v3 != 51)
      {
        goto LABEL_23;
      }

      v6 = SKUIImageDeckView;
    }

    goto LABEL_21;
  }

  v4 = v8;
  if (v3 == 8)
  {
    v3 = [*(a1 + 40) requestLayoutForBadge:v8 width:*(a1 + 56)];
    goto LABEL_22;
  }

  if (v3 != 12)
  {
    goto LABEL_23;
  }

  v5 = [*(a1 + 32) attributedStringForButton:v8];
  [*(a1 + 40) requestLayoutForButton:v8 attributedString:v5 width:*(a1 + 56)];
LABEL_16:

LABEL_22:
  v4 = v8;
LABEL_23:

  return MEMORY[0x2821F96F8](v3, v4);
}

+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context
{
  elementCopy = element;
  contextCopy = context;
  v50 = 0;
  v51 = &v50;
  v52 = 0x3010000000;
  v53 = &unk_215F8ACD7;
  widthCopy = width;
  v55 = 0;
  v9 = [SKUICardLayout layoutWithCardViewElement:elementCopy context:contextCopy];
  [v9 horizontalContentInset];
  v11 = v10;
  v45 = 0;
  v46 = &v45;
  v47 = 0x3010000000;
  v48 = &unk_215F8ACD7;
  v49 = *MEMORY[0x277CBF3A8];
  v29 = v49;
  flattenedChildren = [elementCopy flattenedChildren];
  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x3032000000;
  v43[3] = __Block_byref_object_copy__34;
  v43[4] = __Block_byref_object_dispose__34;
  v44 = 0;
  cardType = [elementCopy cardType];
  v14 = width + v11 * -2.0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3010000000;
  v41 = &unk_215F8ACD7;
  v42 = v29;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __79__SKUICardViewElementCollectionViewCell_sizeThatFitsWidth_viewElement_context___block_invoke;
  v30[3] = &unk_2781FC8C0;
  v15 = v9;
  v36 = v14;
  v31 = v15;
  v32 = &v45;
  v33 = &v38;
  v34 = v43;
  v37 = cardType == 2;
  v35 = &v50;
  [flattenedChildren enumerateObjectsUsingBlock:v30];
  lastObject = [flattenedChildren lastObject];
  v17 = lastObject;
  if (cardType == 2)
  {
    v18 = v39;
    v19 = v51;
    v20 = v39[5] + v51[5];
    v51[5] = v20;
    if (v18[5] == 0.0)
    {
      v21 = 30.0;
    }

    else
    {
      v21 = 15.0;
    }

    goto LABEL_7;
  }

  if (lastObject)
  {
    [v15 bottomInsetForLastViewElement:lastObject width:v14];
    v19 = v51;
    v21 = v51[5];
LABEL_7:
    v19[5] = v20 + v21;
    goto LABEL_8;
  }

  v19 = v51;
LABEL_8:
  v22 = v46;
  v23 = v46[4];
  v24 = v19[4];
  if (v23 > v24)
  {
    v19[4] = v23;
    v24 = v23;
  }

  v25 = v22[5];
  v26 = v19[5];
  if (v25 > v26)
  {
    v19[5] = v25;
    v26 = v25;
  }

  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(v43, 8);

  _Block_object_dispose(&v45, 8);
  _Block_object_dispose(&v50, 8);

  v27 = v24;
  v28 = v26;
  result.height = v28;
  result.width = v27;
  return result;
}

void __79__SKUICardViewElementCollectionViewCell_sizeThatFitsWidth_viewElement_context___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v18 = a2;
  v6 = [v18 elementType];
  [*(a1 + 32) sizeForViewElement:v18 width:*(a1 + 72)];
  v9 = v8;
  if (v6 == 7)
  {
    v10 = v18;
    v11 = *(*(a1 + 40) + 8);
    if (v7 > *(v11 + 32))
    {
      *(v11 + 32) = v7;
      v11 = *(*(a1 + 40) + 8);
    }

    if (v8 > *(v11 + 40))
    {
      *(v11 + 40) = v8;
    }

    v12 = *(*(a1 + 48) + 8);
    *(v12 + 32) = v7;
    *(v12 + 40) = v8;
  }

  else
  {
    [*(a1 + 32) topInsetForViewElement:v18 previousViewElement:*(*(*(a1 + 56) + 8) + 40) width:*(a1 + 72)];
    v14 = v13;
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
    if (*(a1 + 80) == 1)
    {
      v15 = *(*(*(a1 + 48) + 8) + 40);
      v16 = a3 > 1;
      if (v15 <= 0.0)
      {
        v16 = 0;
      }

      v17 = v15 != 0.0 && !v16;
      v10 = v18;
      if (!v17)
      {
        *(*(*(a1 + 64) + 8) + 40) = v9 + *(*(*(a1 + 64) + 8) + 40);
      }
    }

    else
    {
      *(*(*(a1 + 64) + 8) + 40) = v9 + v14 + *(*(*(a1 + 64) + 8) + 40);
      v10 = v18;
    }
  }
}

- (void)reloadWithViewElement:(id)element width:(double)width context:(id)context
{
  elementCopy = element;
  contextCopy = context;
  [(NSHashTable *)self->_artworkRelatedChildViewElementViews removeAllObjects];
  [(NSMapTable *)self->_imageViewToImageResourceCacheKey removeAllObjects];
  objc_storeStrong(&self->_cardElement, element);
  v11 = [SKUICardLayout layoutWithCardViewElement:elementCopy context:contextCopy];
  layout = self->_layout;
  self->_layout = v11;

  productImageElement = self->_productImageElement;
  self->_productImageElement = 0;

  [(NSMapTable *)self->_viewElements removeAllObjects];
  self->_hasBottomAlignedItems = 0;
  self->_isActivityCard = [elementCopy cardType] == 1;
  layoutStyle = [(SKUICardLayout *)self->_layout layoutStyle];
  programmedCardBackgroundView = self->_programmedCardBackgroundView;
  v16 = layoutStyle == 1;
  if (layoutStyle == 1)
  {
    if (!programmedCardBackgroundView)
    {
      v17 = objc_alloc_init(MEMORY[0x277D75D18]);
      v18 = self->_programmedCardBackgroundView;
      self->_programmedCardBackgroundView = v17;

      layer = [(UIView *)self->_programmedCardBackgroundView layer];
      [layer setCornerRadius:5.0];

      contentView = [(SKUICardViewElementCollectionViewCell *)self contentView];
      [contentView addSubview:self->_programmedCardBackgroundView];

      programmedCardBackgroundView = self->_programmedCardBackgroundView;
    }

    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  [(UIView *)programmedCardBackgroundView setHidden:v21];
  isAdCard = [elementCopy isAdCard];
  adCardBackgroundView = [(SKUICardViewElementCollectionViewCell *)self adCardBackgroundView];
  [adCardBackgroundView setHidden:isAdCard ^ 1u];

  compactAdCardHairlineLayer = [(SKUICardViewElementCollectionViewCell *)self compactAdCardHairlineLayer];
  [compactAdCardHairlineLayer setHidden:isAdCard ^ 1u];

  [(SKUICardLayout *)self->_layout horizontalContentInset];
  v26 = width + v25 * -2.0;
  backgroundWrapper = self->_backgroundWrapper;
  self->_backgroundWrapper = 0;

  backgroundViewWithParallax = self->_backgroundViewWithParallax;
  self->_backgroundViewWithParallax = 0;

  v60 = 0;
  v61 = &v60;
  v62 = 0x2020000000;
  v63 = 0;
  v50 = MEMORY[0x277D85DD0];
  v51 = 3221225472;
  v52 = __77__SKUICardViewElementCollectionViewCell_reloadWithViewElement_width_context___block_invoke;
  v53 = &unk_2781FC8E8;
  v29 = elementCopy;
  v54 = v29;
  v58 = v26;
  v30 = contextCopy;
  v55 = v30;
  selfCopy = self;
  v59 = v16;
  v57 = &v60;
  [(SKUIViewReuseCollectionViewCell *)self modifyUsingBlock:&v50];
  if ([v29 cardType] == 2 && self->_backgroundWrapper && *(v61 + 24) == 1)
  {
    self->_hasBottomAlignedItems = 1;
  }

  if (self->_isActivityCard)
  {
    clientContext = [v30 clientContext];
    v32 = SKUIUserInterfaceIdiom(clientContext);

    if (v32 == 1)
    {
      style = [(SKUICardViewElement *)self->_cardElement style];
      borderRadius = [style borderRadius];

      if (borderRadius)
      {
        v35 = objc_alloc_init(MEMORY[0x277CD9F90]);
        [borderRadius cornerRadiiValue];
        v37 = v36;
        v39 = v38;
        v41 = v40;
        v43 = v42;
        v44 = MEMORY[0x277D75208];
        [(SKUICardViewElementCollectionViewCell *)self bounds];
        if (v39 <= 0.0)
        {
          v45 = 4 * (v37 > 0.0);
        }

        else
        {
          v45 = (4 * (v37 > 0.0)) | 8;
        }

        if (v41 != 0.0)
        {
          ++v45;
        }

        if (v43 == 0.0)
        {
          v46 = v45;
        }

        else
        {
          v46 = v45 | 2;
        }

        v47 = [v44 bezierPathWithRoundedRect:v46 byRoundingCorners:? cornerRadii:?];
        [v35 setPath:{objc_msgSend(v47, "CGPath")}];
        layer2 = [(SKUICardViewElementCollectionViewCell *)self layer];
        [layer2 setMasksToBounds:1];

        layer3 = [(SKUICardViewElementCollectionViewCell *)self layer];
        [layer3 setMask:v35];
      }
    }
  }

  _Block_object_dispose(&v60, 8);
}

void __77__SKUICardViewElementCollectionViewCell_reloadWithViewElement_width_context___block_invoke(uint64_t a1, void *a2)
{
  v52 = *MEMORY[0x277D85DE8];
  v46 = a2;
  [*(a1 + 32) flattenedChildren];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = v50 = 0u;
  v3 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v48;
    v6 = *MEMORY[0x277CBF3A8];
    v7 = *(MEMORY[0x277CBF3A8] + 8);
    do
    {
      v8 = 0;
      v44 = sel__imageTapAction_;
      do
      {
        if (*v48 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v47 + 1) + 8 * v8);
        v10 = [v9 elementType];
        v11 = 0;
        if (v10 > 50)
        {
          if (v10 <= 130)
          {
            if (v10 == 51)
            {
              v28 = [v46 addImageDeckViewWithElement:v9 width:*(a1 + 40) context:*(a1 + 64)];
            }

            else
            {
              if (v10 != 62)
              {
                v12 = 0;
                v13 = 0;
                if (v10 != 66)
                {
                  goto LABEL_65;
                }

                v13 = [v46 addHorizontalLockupWithElement:v9 width:*(a1 + 40) context:*(a1 + 64)];
                v15 = *(*(a1 + 48) + 840);
                if (v15)
                {
                  [v15 setLockup:v13];
                }

                v11 = 0;
                v12 = v13;
                if (!v13)
                {
                  goto LABEL_55;
                }

                goto LABEL_54;
              }

              if (!*(*(a1 + 48) + 896) && (*(a1 + 72) & 1) == 0)
              {
                [SKUIHorizontalListView preferredSizeForViewElement:v9 context:*(a1 + 40)];
                if (v41 != v6 || v40 != v7)
                {
                  objc_storeStrong((*(a1 + 48) + 896), v9);
                }
              }

              v28 = [v46 addHorizontalListWithElement:v9 width:*(a1 + 40) context:*(a1 + 64)];
            }

            v13 = v28;
            v11 = 0;
            v12 = v13;
            if (!v13)
            {
              goto LABEL_55;
            }

            goto LABEL_54;
          }

          if (v10 > 140)
          {
            if (v10 == 152)
            {
              v22 = *(a1 + 48);
              if (!*(v22 + 896))
              {
                objc_storeStrong((v22 + 896), v9);
              }

              v21 = [v46 addImageViewWithVideoElement:v9 context:*(a1 + 40)];
              goto LABEL_44;
            }

            v12 = 0;
            v13 = 0;
            if (v10 != 141)
            {
              goto LABEL_65;
            }

            goto LABEL_32;
          }

          if (v10 == 131)
          {
            v14 = [v46 addStackListViewWithElement:v9 width:*(a1 + 40) context:*(a1 + 64)];
          }

          else
          {
            v12 = 0;
            v13 = 0;
            if (v10 != 138)
            {
              goto LABEL_65;
            }

            v14 = [v46 addLabelViewWithElement:v9 width:*(a1 + 40) context:*(a1 + 64)];
          }

          goto LABEL_52;
        }

        if (v10 <= 31)
        {
          if (v10 == 7)
          {
            v23 = [v9 firstChildForElementType:49];
            v24 = [v46 addImageViewWithElement:v23 context:*(a1 + 40)];
            v25 = [[SKUIBackgroundImageWrapperForHorizontalLockup alloc] initWithImage:v24];
            v26 = *(a1 + 48);
            v27 = *(v26 + 840);
            *(v26 + 840) = v25;

            v11 = *(*(a1 + 48) + 840);
            v13 = v24;
            if ([v13 conformsToProtocol:&unk_282916328])
            {
              objc_storeStrong((*(a1 + 48) + 832), v24);
            }

            v12 = 0;
            if (!v13)
            {
              goto LABEL_55;
            }

            goto LABEL_54;
          }

          if (v10 != 8)
          {
            v12 = 0;
            v13 = 0;
            if (v10 != 12)
            {
              goto LABEL_65;
            }

LABEL_32:
            v13 = [v46 addButtonWithElement:v9 width:*(a1 + 40) context:*(a1 + 64)];
            [v13 addTarget:*(a1 + 48) action:sel__buttonAction_ forControlEvents:64];
            goto LABEL_53;
          }

          v14 = [v46 addBadgeViewWithElement:v9 width:*(a1 + 40) context:*(a1 + 64)];
          goto LABEL_52;
        }

        if (v10 > 48)
        {
          if (v10 == 49)
          {
            v18 = [v46 addImageViewWithElement:v9 context:*(a1 + 40)];
            v19 = [v18 tapRecognizer];
            [v19 addTarget:*(a1 + 48) action:v44];

            v20 = *(a1 + 48);
            if (!*(v20 + 896) && (*(a1 + 72) & 1) == 0)
            {
              objc_storeStrong((v20 + 896), v9);
            }

            v21 = v18;
LABEL_44:
            v13 = v21;
            v12 = 0;
            v11 = v21;
            if (!v21)
            {
              goto LABEL_55;
            }

LABEL_54:
            [*(*(a1 + 48) + 904) setObject:v9 forKey:v13];
            goto LABEL_55;
          }

          goto LABEL_32;
        }

        if (v10 != 32)
        {
          v12 = 0;
          v13 = 0;
          if (v10 != 48)
          {
            goto LABEL_65;
          }

          v14 = [v46 addHeaderViewWithElement:v9 width:*(a1 + 40) context:*(a1 + 64)];
LABEL_52:
          v13 = v14;
          goto LABEL_53;
        }

        v13 = [v46 addDividerWithElement:v9 context:*(a1 + 40)];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = v9;
          if ([v16 dividerType] == 3)
          {
            [*(a1 + 48) _dividerHeight:v16];
            [v13 setDividerSize:?];
            v17 = 1;
          }

          else
          {
            v17 = 0;
          }

          [v13 setDividerOrientation:v17];
        }

LABEL_53:
        v12 = 0;
        v11 = 0;
        if (v13)
        {
          goto LABEL_54;
        }

LABEL_55:
        if (v11)
        {
          v29 = [*(a1 + 40) imageResourceCacheKeyForViewElement:v9];
          if (v29)
          {
            v30 = *(*(a1 + 48) + 864);
            if (!v30)
            {
              v31 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:517 valueOptions:0 capacity:1];
              v32 = *(a1 + 48);
              v33 = *(v32 + 864);
              *(v32 + 864) = v31;

              v30 = *(*(a1 + 48) + 864);
            }

            [v30 setObject:v29 forKey:v11];
          }
        }

        if (v12)
        {
          v34 = *(*(a1 + 48) + 824);
          if (!v34)
          {
            v35 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:517 capacity:1];
            v36 = *(a1 + 48);
            v37 = *(v36 + 824);
            *(v36 + 824) = v35;

            v34 = *(*(a1 + 48) + 824);
          }

          [v34 addObject:v12];
        }

LABEL_65:
        v38 = [v9 style];
        v39 = [v38 elementPosition];

        if (v39 == 3)
        {
          *(*(*(a1 + 56) + 8) + 24) = 1;
        }

        ++v8;
      }

      while (v4 != v8);
      v43 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
      v4 = v43;
    }

    while (v43);
  }
}

- (BOOL)setImage:(id)image forArtworkRequest:(id)request context:(id)context
{
  v38 = *MEMORY[0x277D85DE8];
  imageCopy = image;
  requestCopy = request;
  contextCopy = context;
  v25 = requestCopy;
  requestIdentifier = [requestCopy requestIdentifier];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = self->_imageViewToImageResourceCacheKey;
  v11 = [(NSMapTable *)obj countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v33;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v33 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v32 + 1) + 8 * i);
        v16 = [(NSMapTable *)self->_imageViewToImageResourceCacheKey objectForKey:v15];
        v17 = [contextCopy requestIdentifierForResourceCacheKey:v16];
        v18 = v17;
        if (v17 && [v17 unsignedIntegerValue] == requestIdentifier)
        {
          v21 = imageCopy;
          [v15 setImage:imageCopy];

          LOBYTE(v19) = 1;
          v22 = requestCopy;
          goto LABEL_22;
        }
      }

      v12 = [(NSMapTable *)obj countByEnumeratingWithState:&v32 objects:v37 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = self->_artworkRelatedChildViewElementViews;
  v19 = [(NSMapTable *)obj countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v19)
  {
    v20 = *v29;
    v22 = v25;
    v21 = imageCopy;
    while (2)
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v29 != v20)
        {
          objc_enumerationMutation(obj);
        }

        if ([*(*(&v28 + 1) + 8 * j) setImage:imageCopy forArtworkRequest:v25 context:contextCopy])
        {
          LOBYTE(v19) = 1;
          goto LABEL_22;
        }
      }

      v19 = [(NSMapTable *)obj countByEnumeratingWithState:&v28 objects:v36 count:16];
      if (v19)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v22 = requestCopy;
    v21 = imageCopy;
  }

LABEL_22:

  return v19;
}

- (BOOL)updateWithItemState:(id)state context:(id)context animated:(BOOL)animated
{
  stateCopy = state;
  contextCopy = context;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  flattenedChildren = [(SKUIViewElement *)self->_cardElement flattenedChildren];
  allExistingViews = [(SKUIViewReuseCollectionViewCell *)self allExistingViews];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __78__SKUICardViewElementCollectionViewCell_updateWithItemState_context_animated___block_invoke;
  v17[3] = &unk_2781FC910;
  v12 = allExistingViews;
  v18 = v12;
  v21 = &v23;
  v13 = stateCopy;
  v19 = v13;
  v14 = contextCopy;
  v20 = v14;
  animatedCopy = animated;
  [flattenedChildren enumerateObjectsUsingBlock:v17];
  v15 = *(v24 + 24);

  _Block_object_dispose(&v23, 8);
  return v15;
}

void __78__SKUICardViewElementCollectionViewCell_updateWithItemState_context_animated___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 elementType];
  if (v7 == 66 || v7 == 62)
  {
    v9 = [*(a1 + 32) objectAtIndex:a3];
    v8 = [v9 updateWithItemState:*(a1 + 40) context:*(a1 + 48) animated:*(a1 + 64)];
    *a4 = v8;
    *(*(*(a1 + 56) + 8) + 24) = v8;
  }
}

- (id)viewForElementIdentifier:(id)identifier
{
  identifierCopy = identifier;
  flattenedChildren = [(SKUIViewElement *)self->_cardElement flattenedChildren];
  allExistingViews = [(SKUIViewReuseCollectionViewCell *)self allExistingViews];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__34;
  v19 = __Block_byref_object_dispose__34;
  v20 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __66__SKUICardViewElementCollectionViewCell_viewForElementIdentifier___block_invoke;
  v11[3] = &unk_2781FC428;
  v7 = allExistingViews;
  v12 = v7;
  v14 = &v15;
  v8 = identifierCopy;
  v13 = v8;
  [flattenedChildren enumerateObjectsUsingBlock:v11];
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

void __66__SKUICardViewElementCollectionViewCell_viewForElementIdentifier___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 elementType];
  if (v7 == 66 || v7 == 62)
  {
    v11 = [*(a1 + 32) objectAtIndex:a3];
    v8 = [v11 viewForElementIdentifier:*(a1 + 40)];
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    if (*(*(*(a1 + 48) + 8) + 40))
    {
      *a4 = 1;
    }
  }
}

- (void)setPerspectiveTargetView:(id)view
{
  backgroundViewWithParallax = self->_backgroundViewWithParallax;
  viewCopy = view;
  [(SKUIPerspectiveView *)backgroundViewWithParallax setPerspectiveTargetView:viewCopy];
}

- (void)applyLayoutAttributes:(id)attributes
{
  v9.receiver = self;
  v9.super_class = SKUICardViewElementCollectionViewCell;
  [(SKUIViewReuseCollectionViewCell *)&v9 applyLayoutAttributes:attributes];
  if ([(SKUICardViewElement *)self->_cardElement isAdCard])
  {
    adCardBackgroundView = [(SKUICardViewElementCollectionViewCell *)self adCardBackgroundView];
    isHidden = [adCardBackgroundView isHidden];

    if ((isHidden & 1) == 0)
    {
      whiteColor = [MEMORY[0x277D75348] whiteColor];
      cGColor = [whiteColor CGColor];
      layer = [(SKUICardViewElementCollectionViewCell *)self layer];
      [layer setBackgroundColor:cGColor];
    }
  }
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  v6.receiver = self;
  v6.super_class = SKUICardViewElementCollectionViewCell;
  [(SKUICollectionViewCell *)&v6 setSelected:?];
  if (selectedCopy)
  {
    if ([(SKUICardViewElement *)self->_cardElement isAdCard])
    {
      mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
      [mEMORY[0x277D75128] sendAction:sel_skuiadvertising_advertWasSelected_ to:0 from:self forEvent:0];
    }
  }
}

- (void)setBackgroundColor:(id)color
{
  if (self->_isActivityCard)
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
    v6.receiver = self;
    v6.super_class = SKUICardViewElementCollectionViewCell;
    [(SKUIViewReuseCollectionViewCell *)&v6 setBackgroundColor:clearColor];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = SKUICardViewElementCollectionViewCell;
    [(SKUIViewReuseCollectionViewCell *)&v5 setBackgroundColor:color];
  }
}

- (void)layoutSubviews
{
  v124.receiver = self;
  v124.super_class = SKUICardViewElementCollectionViewCell;
  [(SKUICollectionViewCell *)&v124 layoutSubviews];
  backgroundColor = [(SKUICardViewElementCollectionViewCell *)self backgroundColor];
  v4 = [(SKUIViewElement *)self->_cardElement firstChildForElementType:7];

  cardType = [(SKUICardViewElement *)self->_cardElement cardType];
  v95 = v4;
  if (v4)
  {
    clearColor = [MEMORY[0x277D75348] clearColor];

    backgroundColor = clearColor;
  }

  contentView = [(SKUICardViewElementCollectionViewCell *)self contentView];
  [contentView bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [(SKUIViewReuseCollectionViewCell *)self contentInset];
  v16 = v8 + v15;
  v18 = v10 + v17;
  v20 = v12 - (v15 + v19);
  v22 = v14 - (v17 + v21);

  programmedCardBackgroundView = self->_programmedCardBackgroundView;
  if (programmedCardBackgroundView && ![(UIView *)programmedCardBackgroundView isHidden])
  {
    v24 = SKUIColorSchemeStyleForColor(backgroundColor);
    if (v24 <= 3)
    {
      v25 = SKUIColorByAdjustingBrightness(backgroundColor, flt_215F3F770[v24]);

      backgroundColor = v25;
    }

    [(UIView *)self->_programmedCardBackgroundView setBackgroundColor:backgroundColor];
    [(UIView *)self->_programmedCardBackgroundView setFrame:v16, v18, v20, v22];
  }

  [(SKUICardLayout *)self->_layout horizontalContentInset];
  v27 = v26;
  v122[0] = 0;
  v122[1] = v122;
  v122[2] = 0x3032000000;
  v122[3] = __Block_byref_object_copy__34;
  v122[4] = __Block_byref_object_dispose__34;
  v123 = 0;
  allExistingViews = [(SKUIViewReuseCollectionViewCell *)self allExistingViews];
  v29 = [allExistingViews count];
  v121[0] = 0;
  v121[1] = v121;
  v121[2] = 0x2020000000;
  *&v121[3] = v18;
  v115 = 0;
  v116 = &v115;
  v117 = 0x3032000000;
  v118 = __Block_byref_object_copy__34;
  v119 = __Block_byref_object_dispose__34;
  v120 = 0;
  v114[0] = 0;
  v114[1] = v114;
  v114[2] = 0x2020000000;
  v114[3] = 0x402E000000000000;
  v113[0] = 0;
  v113[1] = v113;
  v113[2] = 0x2020000000;
  v113[3] = 0;
  v111[0] = 0;
  v111[1] = v111;
  v111[2] = 0x2020000000;
  v112 = 0;
  adCardBackgroundView = [(SKUICardViewElementCollectionViewCell *)self adCardBackgroundView];
  [adCardBackgroundView removeFromSuperview];

  compactAdCardHairlineLayer = [(SKUICardViewElementCollectionViewCell *)self compactAdCardHairlineLayer];
  [compactAdCardHairlineLayer removeFromSuperlayer];

  v32 = v16 + v27;
  v33 = v20 + v27 * -2.0;
  if ([(SKUICardViewElement *)self->_cardElement isAdCard])
  {
    traitCollection = [(SKUICardViewElementCollectionViewCell *)self traitCollection];
    horizontalSizeClass = [traitCollection horizontalSizeClass];

    [(SKUICardViewElement *)self->_cardElement style];
    if (horizontalSizeClass == 1)
      v36 = {;
      ikBackgroundColor = [v36 ikBackgroundColor];
      color = [ikBackgroundColor color];
      cGColor = [color CGColor];
      layer = [(SKUICardViewElementCollectionViewCell *)self layer];
      [layer setBackgroundColor:cGColor];

      contentView2 = [(SKUICardViewElementCollectionViewCell *)self contentView];
      layer2 = [contentView2 layer];
      compactAdCardHairlineLayer2 = [(SKUICardViewElementCollectionViewCell *)self compactAdCardHairlineLayer];
      [layer2 addSublayer:compactAdCardHairlineLayer2];

      contentView3 = [(SKUICardViewElementCollectionViewCell *)self contentView];
      layer3 = [contentView3 layer];
      [layer3 frame];
      Width = CGRectGetWidth(v125);
      mainScreen = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen scale];
      v49 = v48;

      contentView4 = [(SKUICardViewElementCollectionViewCell *)self contentView];
      layer4 = [contentView4 layer];
      [layer4 frame];
      MaxY = CGRectGetMaxY(v126);
      v127.origin.x = *MEMORY[0x277CBF3A0];
      v127.origin.y = *(MEMORY[0x277CBF3A0] + 8);
      v53 = 1.0 / v49;
      v127.size.width = Width;
      v127.size.height = v53;
      Height = CGRectGetHeight(v127);

      compactAdCardHairlineLayer3 = [(SKUICardViewElementCollectionViewCell *)self compactAdCardHairlineLayer];
      [compactAdCardHairlineLayer3 setFrame:{0.0, MaxY - Height, Width, v53}];
    }

    else
      v56 = {;
      ikBackgroundColor2 = [v56 ikBackgroundColor];
      color2 = [ikBackgroundColor2 color];

      adCardBackgroundView2 = [(SKUICardViewElementCollectionViewCell *)self adCardBackgroundView];
      [adCardBackgroundView2 setBackgroundColor:color2];

      contentView5 = [(SKUICardViewElementCollectionViewCell *)self contentView];
      adCardBackgroundView3 = [(SKUICardViewElementCollectionViewCell *)self adCardBackgroundView];
      [contentView5 addSubview:adCardBackgroundView3];

      contentView6 = [(SKUICardViewElementCollectionViewCell *)self contentView];
      adCardBackgroundView4 = [(SKUICardViewElementCollectionViewCell *)self adCardBackgroundView];
      [contentView6 sendSubviewToBack:adCardBackgroundView4];

      v128.origin.x = v32;
      v128.origin.y = v18;
      v128.size.width = v20 + v27 * -2.0;
      v128.size.height = v22;
      v129 = CGRectInset(v128, -10.0, -10.0);
      x = v129.origin.x;
      y = v129.origin.y;
      v66 = v129.size.width;
      v67 = v129.size.height;
      adCardBackgroundView5 = [(SKUICardViewElementCollectionViewCell *)self adCardBackgroundView];
      [adCardBackgroundView5 setFrame:{x, y, v66, v67}];

      compactAdCardHairlineLayer3 = [MEMORY[0x277D75348] whiteColor];
      cGColor2 = [compactAdCardHairlineLayer3 CGColor];
      layer5 = [(SKUICardViewElementCollectionViewCell *)self layer];
      [layer5 setBackgroundColor:cGColor2];

      backgroundColor = color2;
    }
  }

  v96[0] = MEMORY[0x277D85DD0];
  v96[1] = 3221225472;
  v96[2] = __55__SKUICardViewElementCollectionViewCell_layoutSubviews__block_invoke;
  v96[3] = &unk_2781FC938;
  v105 = v32;
  v106 = v18;
  v107 = v33;
  v108 = v22;
  v96[4] = self;
  v99 = v113;
  v110 = cardType == 2;
  v100 = &v115;
  v101 = v111;
  v109 = v29;
  v102 = v114;
  v103 = v121;
  v104 = v122;
  v71 = allExistingViews;
  v97 = v71;
  v72 = backgroundColor;
  v98 = v72;
  [v71 enumerateObjectsUsingBlock:v96];
  if ([(SKUICardViewElement *)self->_cardElement isAdCard])
  {
    compactAdCardHairlineLayer4 = [(SKUICardViewElementCollectionViewCell *)self compactAdCardHairlineLayer];
    [compactAdCardHairlineLayer4 frame];
    v75 = v74;
    v77 = v76;

    contentView7 = [(SKUICardViewElementCollectionViewCell *)self contentView];
    [contentView7 bounds];
    v79 = CGRectGetWidth(v130);
    mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen2 scale];
    v82 = v81;

    compactAdCardHairlineLayer5 = [(SKUICardViewElementCollectionViewCell *)self compactAdCardHairlineLayer];
    [compactAdCardHairlineLayer5 setFrame:{v75, v77, v79, 1.0 / v82}];
  }

  if (v95 && v116[5] && cardType != 2)
  {
    v84 = [(NSMapTable *)self->_viewElements objectForKey:?];
    [v116[5] frame];
    v86 = v85;
    v88 = v87;
    v90 = v89;
    v131.origin.x = v32;
    v131.origin.y = v18;
    v131.size.width = v33;
    v131.size.height = v22;
    v91 = CGRectGetMaxY(v131);
    [*(&self->super.super.super.super.super.super.super.isa + v93) bottomInsetForLastViewElement:v84 width:v33];
    [v116[5] setFrame:{v86, v91 - v90 - v92, v88, v90}];
  }

  _Block_object_dispose(v111, 8);
  _Block_object_dispose(v113, 8);
  _Block_object_dispose(v114, 8);
  _Block_object_dispose(&v115, 8);

  _Block_object_dispose(v121, 8);
  _Block_object_dispose(v122, 8);
}

void __55__SKUICardViewElementCollectionViewCell_layoutSubviews__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v51 = a2;
  v6 = MEMORY[0x277CBF3A0];
  v7 = *(MEMORY[0x277CBF3A0] + 8);
  v8 = [*(*(a1 + 32) + 904) objectForKey:v51];
  v9 = *(a1 + 120);
  if (*(*(a1 + 32) + 872))
  {
    v9 = v9 + -2.0;
    v10 = 1.0;
  }

  else
  {
    v10 = 0.0;
  }

  [v51 sizeThatFits:{v9, 1.79769313e308}];
  v12 = v11;
  v14 = v13;
  if ([v8 elementType] == 7)
  {
    v15 = (*(a1 + 120) - v12) * 0.5;
    v16 = *(a1 + 104) + floorf(v15);
    [v51 setContentMode:2];
    [v51 setFrame:{v16, v7, v12, v14}];
    [*(a1 + 32) sendSubviewToBack:v51];
    if (*(*(a1 + 32) + 856) == 1)
    {
      v53.origin.x = v16;
      v53.origin.y = v7;
      v53.size.width = v12;
      v53.size.height = v14;
      *(*(*(a1 + 56) + 8) + 24) = CGRectGetHeight(v53);
    }

    goto LABEL_51;
  }

  v17 = [v8 style];
  v18 = SKUIViewElementAlignmentForStyle(v17);

  if (v18 > 5)
  {
    v20 = *v6;
  }

  else if (((1 << v18) & 0x25) != 0)
  {
    v19 = (*(a1 + 120) - v12) * 0.5;
    v20 = *(a1 + 104) + floorf(v19);
  }

  else if (((1 << v18) & 0x12) != 0)
  {
    v20 = v10 + *(a1 + 104);
  }

  else
  {
    v20 = *(a1 + 104) + *(a1 + 120) - v12;
  }

  v21 = [v8 elementType];
  if (v21 == 66)
  {
    v23 = v8;
    v24 = [v23 lockupViewType];
    v22 = v24 == 7;
    if (v24 != 7)
    {
      objc_storeStrong((*(*(a1 + 64) + 8) + 40), a2);
    }

    if ([*(*(a1 + 32) + 848) isAdCard] && (objc_msgSend(*(a1 + 32), "adCardBackgroundView"), v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "isHidden"), v25, (v26 & 1) == 0))
    {
      v27 = [*(a1 + 32) adCardBackgroundView];
      v28 = [v27 backgroundColor];
      [v51 setGradientColor:v28];
    }

    else
    {
      [v51 setGradientColor:0];
    }
  }

  else
  {
    v22 = 0;
  }

  if (*(a1 + 144) == 1)
  {
    v29 = [v8 style];
    v30 = [v29 elementPosition];

    if (v30 == 3 && *(*(a1 + 32) + 856) == 1 && (*(*(*(a1 + 72) + 8) + 24) & 1) == 0)
    {
      v31 = *(*(*(a1 + 56) + 8) + 24);
      v54.origin.x = v20;
      v54.origin.y = v7;
      v54.size.width = v12;
      v54.size.height = v14;
      *(*(*(a1 + 56) + 8) + 24) = v31 - CGRectGetHeight(v54);
      *(*(*(a1 + 80) + 8) + 24) = *(*(*(a1 + 56) + 8) + 24);
      *(*(*(a1 + 72) + 8) + 24) = 1;
    }

    v32 = *(*(*(a1 + 80) + 8) + 24);
    v55.origin.x = v20;
    v55.origin.y = v32;
    v55.size.width = v12;
    v55.size.height = v14;
    *(*(*(a1 + 80) + 8) + 24) = CGRectGetHeight(v55) + v32;
    goto LABEL_36;
  }

  if (*(a1 + 136) - 1 == a3 && [v8 elementType] == 32)
  {
    v32 = CGRectGetMaxY(*(a1 + 104)) - v14;
    goto LABEL_36;
  }

  v33 = *(a1 + 32);
  v34 = *(v33 + 912);
  if (!v34 || v8 != *(v33 + 896))
  {
    v32 = *(*(*(a1 + 88) + 8) + 24);
    if (v22)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  v48 = *(*(*(a1 + 88) + 8) + 24);
  [v34 size];
  v50 = v48 + (v49 - v14) * 0.5;
  v32 = floorf(v50);
  if (!v22)
  {
LABEL_35:
    [*(*(a1 + 32) + 880) topInsetForViewElement:v8 previousViewElement:*(*(*(a1 + 96) + 8) + 40) width:*(a1 + 120)];
    v32 = v32 + v35;
  }

LABEL_36:
  if ([*(*(a1 + 32) + 848) isAdCard])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && *(a1 + 136) - 1 == a3)
    {
      v56.origin.x = v20;
      v56.origin.y = v32;
      v56.size.width = v12;
      v56.size.height = v14;
      Height = CGRectGetHeight(v56);
      v32 = CGRectGetMaxY(*(a1 + 104)) - Height;
      v37 = [*(a1 + 40) objectAtIndex:a3 - 1];
      [v37 frame];
      MaxX = CGRectGetMaxX(v57);
      v58.origin.x = v20;
      v58.origin.y = v32;
      v58.size.width = v12;
      v58.size.height = v14;
      v20 = MaxX - CGRectGetWidth(v58);
    }
  }

  [v51 setFrame:{v20, v32, v12, v14}];
  objc_storeStrong((*(*(a1 + 96) + 8) + 40), v8);
  v59.origin.x = v20;
  v59.origin.y = v32;
  v59.size.width = v12;
  v59.size.height = v14;
  *(*(*(a1 + 88) + 8) + 24) = CGRectGetMaxY(v59);
  v39 = *(a1 + 32);
  if (v21 == 66 || (*(v39 + 872) & 1) == 0)
  {
    if (v21 == 66)
    {
      v42 = [v8 style];
      v43 = [v42 ikBackgroundColor];
      v41 = [v43 color];

      v39 = *(a1 + 32);
    }

    else
    {
      v41 = 0;
    }

    if ([*(v39 + 848) isAdCard])
    {
      v44 = [*(*(a1 + 32) + 848) style];
      v45 = [v44 ikBackgroundColor];
      v46 = [v45 color];

      v41 = v46;
    }

    v47 = v41;
    if (!v41)
    {
      v47 = *(a1 + 48);
    }

    [v51 setBackgroundColor:v47];
  }

  else
  {
    v40 = [MEMORY[0x277D75348] clearColor];
    [v51 setBackgroundColor:v40];
  }

LABEL_51:
}

- (void)_buttonAction:(id)action
{
  v3 = [(NSMapTable *)self->_viewElements objectForKey:action];
  [v3 dispatchEventOfType:2 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:0];
}

- (void)_imageTapAction:(id)action
{
  actionCopy = action;
  viewElements = self->_viewElements;
  view = [actionCopy view];
  v7 = [(NSMapTable *)viewElements objectForKey:view];

  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__SKUICardViewElementCollectionViewCell__imageTapAction___block_invoke;
  v9[3] = &unk_2781FB338;
  objc_copyWeak(&v11, &location);
  v8 = v7;
  v10 = v8;
  [v8 dispatchEventOfType:2 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __57__SKUICardViewElementCollectionViewCell__imageTapAction___block_invoke(uint64_t a1, int a2, char a3)
{
  if (!a2 || (a3 & 1) == 0)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __57__SKUICardViewElementCollectionViewCell__imageTapAction___block_invoke_2;
    v4[3] = &unk_2781FB310;
    objc_copyWeak(&v6, (a1 + 40));
    v5 = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], v4);

    objc_destroyWeak(&v6);
  }
}

void __57__SKUICardViewElementCollectionViewCell__imageTapAction___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _performDefaultActionForViewElement:*(a1 + 32)];
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  if (objc_opt_respondsToSelector())
  {
    v7 = 1;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SKUICardViewElementCollectionViewCell;
    v7 = [(SKUICardViewElementCollectionViewCell *)&v9 canPerformAction:action withSender:senderCopy];
  }

  return v7;
}

- (void)skuiadvertising_advertSelectionEventShouldBeForwarded:(id)forwarded
{
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  [mEMORY[0x277D75128] sendAction:sel_skuiadvertising_advertWasSelected_ to:0 from:self forEvent:0];
}

- (NSString)lineItem
{
  if ([(SKUICardViewElement *)self->_cardElement isAdCard])
  {
    attributes = [(SKUICardViewElement *)self->_cardElement attributes];
    v4 = [attributes objectForKeyedSubscript:@"lineItem"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)impressionIdentifier
{
  if ([(SKUICardViewElement *)self->_cardElement isAdCard])
  {
    attributes = [(SKUICardViewElement *)self->_cardElement attributes];
    v4 = [attributes objectForKeyedSubscript:@"impressionId"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (double)_defaultWidthForLockupWithContext:(id)context
{
  contextCopy = context;
  [contextCopy activePageWidth];
  v5 = v4;
  clientContext = [contextCopy clientContext];

  v7 = SKUIUserInterfaceIdiom(clientContext);
  if (v7 == 1)
  {
    v8 = v5 < 500.0;
    v9 = &unk_215F3F760;
    return v9[v8];
  }

  if (v5 > 500.0)
  {
    return 284.0;
  }

  if (v5 > 414.0)
  {
    return 357.6;
  }

  if (v5 <= 375.0)
  {
    v8 = v5 > 320.0;
    v9 = &unk_215F3F750;
    return v9[v8];
  }

  return 364.0;
}

- (double)_dividerHeight:(id)height
{
  style = [height style];
  itemHeight = [style itemHeight];

  if (itemHeight)
  {
    [itemHeight floatValue];
    v6 = v5;
  }

  else
  {
    v6 = 10.0;
  }

  return v6;
}

- (void)_performDefaultActionForViewElement:(id)element
{
  elementCopy = element;
  v4 = SKUICollectionViewForView(self);
  v5 = [v4 indexPathForCell:self];
  if (v5)
  {
    delegate = [v4 delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate collectionView:v4 performDefaultActionForViewElement:elementCopy indexPath:v5];
    }
  }
}

- (void)initWithFrame:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUICardViewElementCollectionViewCell initWithFrame:]";
}

@end