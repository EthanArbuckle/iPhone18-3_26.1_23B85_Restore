@interface SKUIStarHistogramCollectionViewCell
+ (BOOL)prefetchResourcesForViewElement:(id)element reason:(int64_t)reason context:(id)context;
+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context;
+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context;
+ (id)_attributedStringForLabelViewElement:(id)element;
+ (void)requestLayoutForViewElement:(id)element width:(double)width context:(id)context;
- (SKUIStarHistogramCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)reloadWithViewElement:(id)element width:(double)width context:(id)context;
@end

@implementation SKUIStarHistogramCollectionViewCell

- (SKUIStarHistogramCollectionViewCell)initWithFrame:(CGRect)frame
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
        [(SKUIStarHistogramCollectionViewCell *)v8 initWithFrame:v9, v10, v11, v12, v13, v14, v15];
      }
    }
  }

  v18.receiver = self;
  v18.super_class = SKUIStarHistogramCollectionViewCell;
  height = [(SKUIViewReuseCollectionViewCell *)&v18 initWithFrame:x, y, width, height];
  if (height)
  {
    [(SKUIViewReuseCollectionViewCell *)height registerClass:objc_opt_class() forViewWithReuseIdentifier:@"starBar"];
  }

  return height;
}

+ (BOOL)prefetchResourcesForViewElement:(id)element reason:(int64_t)reason context:(id)context
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIStarHistogramCollectionViewCell *)v5 prefetchResourcesForViewElement:v6 reason:v7 context:v8, v9, v10, v11, v12];
      }
    }
  }

  return 0;
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
        [(SKUIStarHistogramCollectionViewCell *)v8 preferredSizeForViewElement:v9 context:v10, v11, v12, v13, v14, v15];
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
  elementCopy = element;
  contextCopy = context;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v10)
      {
        [(SKUIStarHistogramCollectionViewCell *)v10 requestLayoutForViewElement:v11 width:v12 context:v13, v14, v15, v16, v17];
      }
    }
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __81__SKUIStarHistogramCollectionViewCell_requestLayoutForViewElement_width_context___block_invoke;
  v19[3] = &unk_2781FF580;
  widthCopy = width;
  v20 = contextCopy;
  selfCopy = self;
  v18 = contextCopy;
  [elementCopy enumerateChildrenUsingBlock:v19];
}

uint64_t __81__SKUIStarHistogramCollectionViewCell_requestLayoutForViewElement_width_context___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 elementType];
  if (v3 == 138)
  {
    v5 = [*(a1 + 48) _attributedStringForLabelViewElement:v8];
    v6 = [*(a1 + 32) labelLayoutCache];
    [v6 requestLayoutForLabel:v8 attributedString:v5 width:*(a1 + 40)];
  }

  else
  {
    v4 = v8;
    if (v3 != 135)
    {
      goto LABEL_6;
    }

    v3 = [SKUIStarRatingViewElementView requestLayoutForViewElement:v8 width:*(a1 + 32) context:*(a1 + 40)];
  }

  v4 = v8;
LABEL_6:

  return MEMORY[0x2821F96F8](v3, v4);
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
        [(SKUIStarHistogramCollectionViewCell *)v9 sizeThatFitsWidth:v10 viewElement:v11 context:v12, v13, v14, v15, v16];
      }
    }
  }

  v29 = 0;
  v30 = &v29;
  v31 = 0x3010000000;
  v32 = &unk_215F8ACD7;
  v34 = *(MEMORY[0x277CBF3A8] + 8);
  widthCopy = width;
  labelLayoutCache = [contextCopy labelLayoutCache];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __77__SKUIStarHistogramCollectionViewCell_sizeThatFitsWidth_viewElement_context___block_invoke;
  v24[3] = &unk_2781FF5A8;
  v27 = &v29;
  v18 = contextCopy;
  v25 = v18;
  widthCopy2 = width;
  v19 = labelLayoutCache;
  v26 = v19;
  [elementCopy enumerateChildrenUsingBlock:v24];
  v20 = v30[4];
  v21 = v30[5];

  _Block_object_dispose(&v29, 8);
  v22 = v20;
  v23 = v21;
  result.height = v23;
  result.width = v22;
  return result;
}

void __77__SKUIStarHistogramCollectionViewCell_sizeThatFitsWidth_viewElement_context___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 elementType];
  if (v3 == 138)
  {
    [*(a1 + 40) estimatedSizeForLabel:v7 width:*(a1 + 56)];
    goto LABEL_7;
  }

  if (v3 == 135)
  {
    [*(a1 + 32) sizeForViewElement:v7 width:*(a1 + 56)];
LABEL_7:
    v4 = *(*(a1 + 48) + 8);
    v5 = v6 + *(v4 + 40);
    goto LABEL_8;
  }

  if (v3 != 133)
  {
    goto LABEL_9;
  }

  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40) + 14.0;
LABEL_8:
  *(v4 + 40) = v5;
LABEL_9:
}

- (void)reloadWithViewElement:(id)element width:(double)width context:(id)context
{
  elementCopy = element;
  contextCopy = context;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __75__SKUIStarHistogramCollectionViewCell_reloadWithViewElement_width_context___block_invoke;
  v12[3] = &unk_2781FC1C8;
  widthCopy = width;
  v13 = elementCopy;
  v14 = contextCopy;
  v10 = contextCopy;
  v11 = elementCopy;
  [(SKUIViewReuseCollectionViewCell *)self modifyUsingBlock:v12];
}

void __75__SKUIStarHistogramCollectionViewCell_reloadWithViewElement_width_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __75__SKUIStarHistogramCollectionViewCell_reloadWithViewElement_width_context___block_invoke_2;
  v6[3] = &unk_2781FF5D0;
  v7 = v3;
  v9 = *(a1 + 48);
  v4 = *(a1 + 32);
  v8 = *(a1 + 40);
  v5 = v3;
  [v4 enumerateChildrenUsingBlock:v6];
}

void __75__SKUIStarHistogramCollectionViewCell_reloadWithViewElement_width_context___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [v10 elementType];
  if (v3 == 138)
  {
    v9 = [*(a1 + 32) addLabelViewWithElement:v10 width:*(a1 + 40) context:*(a1 + 48)];
    goto LABEL_9;
  }

  if (v3 == 135)
  {
    v6 = [*(a1 + 32) addStarRatingViewWithViewElement:v10 width:*(a1 + 40) context:*(a1 + 48)];
    [v6 setElementSpacing:10];
    goto LABEL_7;
  }

  v4 = v3 == 133;
  v5 = v10;
  if (v4)
  {
    v6 = [*(a1 + 32) addReusableViewWithReuseIdentifier:@"starBar"];
    v7 = [v10 style];
    [v6 setColoringUsingStyle:v7];

    [v6 setNumberOfStars:{objc_msgSend(v10, "numberOfStars")}];
    [v10 value];
    [v6 setValue:v8];
LABEL_7:

LABEL_9:
    v5 = v10;
  }
}

- (void)layoutSubviews
{
  v46 = *MEMORY[0x277D85DE8];
  v44.receiver = self;
  v44.super_class = SKUIStarHistogramCollectionViewCell;
  [(SKUICollectionViewCell *)&v44 layoutSubviews];
  contentView = [(SKUIStarHistogramCollectionViewCell *)self contentView];
  [contentView bounds];
  v37 = v5;
  v38 = v4;
  rect = v6;
  v8 = v7;

  [(SKUIViewReuseCollectionViewCell *)self contentInset];
  MaxY = v9;
  v12 = v11;
  v14 = v13;
  allExistingViews = [(SKUIViewReuseCollectionViewCell *)self allExistingViews];
  ShouldReverseLayoutDirection = storeShouldReverseLayoutDirection();
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v17 = allExistingViews;
  v18 = [v17 countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v41;
    v21 = rect - v12 - v14;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v41 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v23 = *(*(&v40 + 1) + 8 * i);
        [v23 sizeThatFits:{v21, 1.79769313e308}];
        v25 = v24;
        v27 = v26;
        v28 = v12;
        if (ShouldReverseLayoutDirection)
        {
          v47.origin.y = v37;
          v47.origin.x = v38;
          v47.size.width = rect;
          v47.size.height = v8;
          Width = CGRectGetWidth(v47);
          v48.origin.x = 0.0;
          v48.origin.y = MaxY;
          v48.size.width = v25;
          v48.size.height = v27;
          v28 = Width - CGRectGetWidth(v48) - v12;
        }

        v30 = MaxY;
        v31 = v25;
        v32 = v27;
        v49 = CGRectIntegral(*&v28);
        x = v49.origin.x;
        y = v49.origin.y;
        v35 = v49.size.width;
        height = v49.size.height;
        [v23 setFrame:?];
        v50.origin.x = x;
        v50.origin.y = y;
        v50.size.width = v35;
        v50.size.height = height;
        MaxY = CGRectGetMaxY(v50);
      }

      v19 = [v17 countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v19);
  }
}

+ (id)_attributedStringForLabelViewElement:(id)element
{
  text = [element text];
  v4 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
  blackColor = [MEMORY[0x277D75348] blackColor];
  v6 = [text attributedStringWithDefaultFont:v4 foregroundColor:blackColor];

  return v6;
}

@end