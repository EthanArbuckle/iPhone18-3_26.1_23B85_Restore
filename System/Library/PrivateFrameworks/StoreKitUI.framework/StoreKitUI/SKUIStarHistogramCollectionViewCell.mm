@interface SKUIStarHistogramCollectionViewCell
+ (BOOL)prefetchResourcesForViewElement:(id)a3 reason:(int64_t)a4 context:(id)a5;
+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4;
+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5;
+ (id)_attributedStringForLabelViewElement:(id)a3;
+ (void)requestLayoutForViewElement:(id)a3 width:(double)a4 context:(id)a5;
- (SKUIStarHistogramCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)reloadWithViewElement:(id)a3 width:(double)a4 context:(id)a5;
@end

@implementation SKUIStarHistogramCollectionViewCell

- (SKUIStarHistogramCollectionViewCell)initWithFrame:(CGRect)a3
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
        [(SKUIStarHistogramCollectionViewCell *)v8 initWithFrame:v9, v10, v11, v12, v13, v14, v15];
      }
    }
  }

  v18.receiver = self;
  v18.super_class = SKUIStarHistogramCollectionViewCell;
  v16 = [(SKUIViewReuseCollectionViewCell *)&v18 initWithFrame:x, y, width, height];
  if (v16)
  {
    [(SKUIViewReuseCollectionViewCell *)v16 registerClass:objc_opt_class() forViewWithReuseIdentifier:@"starBar"];
  }

  return v16;
}

+ (BOOL)prefetchResourcesForViewElement:(id)a3 reason:(int64_t)a4 context:(id)a5
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
        [(SKUIStarHistogramCollectionViewCell *)v8 preferredSizeForViewElement:v9 context:v10, v11, v12, v13, v14, v15];
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
  v8 = a3;
  v9 = a5;
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
  v21 = a4;
  v20 = v9;
  v22 = a1;
  v18 = v9;
  [v8 enumerateChildrenUsingBlock:v19];
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
        [(SKUIStarHistogramCollectionViewCell *)v9 sizeThatFitsWidth:v10 viewElement:v11 context:v12, v13, v14, v15, v16];
      }
    }
  }

  v29 = 0;
  v30 = &v29;
  v31 = 0x3010000000;
  v32 = &unk_215F8ACD7;
  v34 = *(MEMORY[0x277CBF3A8] + 8);
  v33 = a3;
  v17 = [v8 labelLayoutCache];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __77__SKUIStarHistogramCollectionViewCell_sizeThatFitsWidth_viewElement_context___block_invoke;
  v24[3] = &unk_2781FF5A8;
  v27 = &v29;
  v18 = v8;
  v25 = v18;
  v28 = a3;
  v19 = v17;
  v26 = v19;
  [v7 enumerateChildrenUsingBlock:v24];
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

- (void)reloadWithViewElement:(id)a3 width:(double)a4 context:(id)a5
{
  v8 = a3;
  v9 = a5;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __75__SKUIStarHistogramCollectionViewCell_reloadWithViewElement_width_context___block_invoke;
  v12[3] = &unk_2781FC1C8;
  v15 = a4;
  v13 = v8;
  v14 = v9;
  v10 = v9;
  v11 = v8;
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
  v3 = [(SKUIStarHistogramCollectionViewCell *)self contentView];
  [v3 bounds];
  v37 = v5;
  v38 = v4;
  rect = v6;
  v8 = v7;

  [(SKUIViewReuseCollectionViewCell *)self contentInset];
  MaxY = v9;
  v12 = v11;
  v14 = v13;
  v15 = [(SKUIViewReuseCollectionViewCell *)self allExistingViews];
  ShouldReverseLayoutDirection = storeShouldReverseLayoutDirection();
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v17 = v15;
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

+ (id)_attributedStringForLabelViewElement:(id)a3
{
  v3 = [a3 text];
  v4 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
  v5 = [MEMORY[0x277D75348] blackColor];
  v6 = [v3 attributedStringWithDefaultFont:v4 foregroundColor:v5];

  return v6;
}

@end