@interface SKUITabularLockupView
+ (BOOL)prefetchResourcesForViewElement:(id)a3 reason:(int64_t)a4 context:(id)a5;
+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4;
+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5;
+ (id)_attributedStringForLabel:(id)a3 context:(id)a4;
+ (void)_requestLayoutForViewElements:(id)a3 width:(double)a4 context:(id)a5;
+ (void)requestLayoutForViewElement:(id)a3 width:(double)a4 context:(id)a5;
- (CGSize)_sizeViewsForColumn:(id)a3 toFitWidth:(double)a4;
- (SKUITabularLockupView)initWithFrame:(CGRect)a3;
- (void)_layoutSubviewsForColumn:(id)a3;
- (void)layoutSubviews;
- (void)reloadWithViewElement:(id)a3 width:(double)a4 context:(id)a5;
@end

@implementation SKUITabularLockupView

- (SKUITabularLockupView)initWithFrame:(CGRect)a3
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
        [(SKUITabularLockupView *)v8 initWithFrame:v9, v10, v11, v12, v13, v14, v15];
      }
    }
  }

  v20.receiver = self;
  v20.super_class = SKUITabularLockupView;
  v16 = [(SKUIViewReuseView *)&v20 initWithFrame:x, y, width, height];
  if (v16)
  {
    v17 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:0 capacity:0];
    viewElementViews = v16->_viewElementViews;
    v16->_viewElementViews = v17;
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
        [(SKUITabularLockupView *)v5 prefetchResourcesForViewElement:v6 reason:v7 context:v8, v9, v10, v11, v12];
      }
    }
  }

  return 0;
}

+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v4)
      {
        [(SKUITabularLockupView *)v4 preferredSizeForViewElement:v5 context:v6, v7, v8, v9, v10, v11];
      }
    }
  }

  v12 = *MEMORY[0x277CBF3A8];
  v13 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v13;
  result.width = v12;
  return result;
}

+ (void)requestLayoutForViewElement:(id)a3 width:(double)a4 context:(id)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v10)
      {
        [(SKUITabularLockupView *)v10 requestLayoutForViewElement:v11 width:v12 context:v13, v14, v15, v16, v17];
      }
    }
  }

  v18 = [[SKUITabularLockupLayout alloc] initWithLockup:v8 context:v9];
  [(SKUITabularLockupLayout *)v18 sizeColumnsToFitWidth:v9 context:a4];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v19 = [(SKUITabularLockupLayout *)v18 columns];
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
        [v24 size];
        v26 = v25;
        v27 = [v24 childViewElements];
        [a1 _requestLayoutForViewElements:v27 width:v9 context:v26];
      }

      v21 = [v19 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v21);
  }
}

+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUITabularLockupView *)v5 sizeThatFitsWidth:v6 viewElement:v7 context:v8, v9, v10, v11, v12];
      }
    }
  }

  v13 = *MEMORY[0x277CBF3A8];
  v14 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v14;
  result.width = v13;
  return result;
}

- (void)reloadWithViewElement:(id)a3 width:(double)a4 context:(id)a5
{
  v8 = a5;
  viewElementViews = self->_viewElementViews;
  v10 = a3;
  [(NSMapTable *)viewElementViews removeAllObjects];
  v11 = [[SKUITabularLockupLayout alloc] initWithLockup:v10 context:v8];

  layout = self->_layout;
  self->_layout = v11;

  [(SKUITabularLockupLayout *)self->_layout sizeColumnsToFitWidth:v8 context:a4];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __61__SKUITabularLockupView_reloadWithViewElement_width_context___block_invoke;
  v14[3] = &unk_2782006B0;
  v14[4] = self;
  v15 = v8;
  v13 = v8;
  [(SKUIViewReuseView *)self modifyUsingBlock:v14];
}

void __61__SKUITabularLockupView_reloadWithViewElement_width_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(a1 + 32) + 424) columns];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__SKUITabularLockupView_reloadWithViewElement_width_context___block_invoke_2;
  v6[3] = &unk_278200688;
  v7 = *(a1 + 40);
  v8 = v3;
  v9 = *(a1 + 32);
  v5 = v3;
  [v4 enumerateObjectsUsingBlock:v6];
}

void __61__SKUITabularLockupView_reloadWithViewElement_width_context___block_invoke_2(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [v3 size];
  v5 = v4;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [v3 childViewElements];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if ([v11 elementType] == 138)
        {
          v12 = *(a1 + 32);
          v13 = v11;
          v14 = [*(a1 + 40) addLabelViewWithElement:v13 width:*(a1 + 32) context:{objc_msgSend(v12, "maxWidthForElement:withDefaultWidth:", v13, v5)}];

          if (v14)
          {
            [*(*(a1 + 48) + 432) setObject:v14 forKey:v13];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }
}

- (void)layoutSubviews
{
  v14 = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = SKUITabularLockupView;
  [(SKUITabularLockupView *)&v12 layoutSubviews];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = [(SKUITabularLockupLayout *)self->_layout columns];
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

        [(SKUITabularLockupView *)self _layoutSubviewsForColumn:*(*(&v8 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v13 count:16];
    }

    while (v5);
  }
}

+ (id)_attributedStringForLabel:(id)a3 context:(id)a4
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
        [(SKUITabularLockupView *)v7 _attributedStringForLabel:v8 context:v9, v10, v11, v12, v13, v14];
      }
    }
  }

  v15 = [SKUITabularLockupLayout fontForLabelViewElement:v5 context:v6];
  v16 = [v5 style];
  v17 = [v6 tintColor];

  v18 = SKUIViewElementPlainColorWithStyle(v16, v17);

  if (!v18)
  {
    v18 = [MEMORY[0x277D75348] blackColor];
  }

  v19 = [v5 text];
  v20 = [v5 style];
  v21 = [v19 attributedStringWithDefaultFont:v15 foregroundColor:v18 style:v20];

  return v21;
}

+ (void)_requestLayoutForViewElements:(id)a3 width:(double)a4 context:(id)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v9 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v9)
      {
        [(SKUITabularLockupView *)v9 _requestLayoutForViewElements:v10 width:v11 context:v12, v13, v14, v15, v16];
      }
    }
  }

  v17 = [v8 labelLayoutCache];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v18 = v7;
  v19 = [v18 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v29;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v29 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v28 + 1) + 8 * i);
        if ([v23 elementType] == 138)
        {
          v24 = v23;
          v25 = [v8 maxWidthForElement:v24 withDefaultWidth:a4];
          v26 = [a1 _attributedStringForLabel:v24 context:v8];
          [v17 requestLayoutForLabel:v24 attributedString:v26 width:v25];
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v20);
  }
}

- (void)_layoutSubviewsForColumn:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 identifier];
  [(SKUITabularLockupView *)self bounds];
  v30 = v7;
  v31 = v6;
  v28 = v9;
  v29 = v8;
  [(SKUITabularLockupView *)self bounds];
  [(SKUITabularLockupView *)self _sizeViewsForColumn:v4 toFitWidth:CGRectGetWidth(v39)];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v10 = [v4 childViewElements];
  v11 = [v10 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v34;
    do
    {
      v14 = 0;
      do
      {
        if (*v34 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [(NSMapTable *)self->_viewElementViews objectForKey:*(*(&v33 + 1) + 8 * v14)];
        [v15 frame];
        v17 = v16;
        v19 = v18;
        v21 = v20;
        v23 = v22;
        rect = v18;
        switch(v5)
        {
          case 2:
            v42.origin.y = v30;
            v42.origin.x = v31;
            v42.size.height = v28;
            v42.size.width = v29;
            Width = CGRectGetWidth(v42);
            v43.origin.x = v17;
            v43.origin.y = v19;
            v43.size.width = v21;
            v43.size.height = v23;
            v17 = Width - CGRectGetWidth(v43);
            break;
          case 1:
            v40.origin.y = v30;
            v40.origin.x = v31;
            v40.size.height = v28;
            v40.size.width = v29;
            v24 = CGRectGetWidth(v40);
            v41.origin.x = v17;
            v41.origin.y = v19;
            v41.size.width = v21;
            v41.size.height = v23;
            v17 = floor((v24 - CGRectGetWidth(v41)) * 0.5);
            break;
          case 0:
            v17 = 0.0;
            break;
        }

        v44.origin.x = v31;
        v44.origin.y = v30;
        v44.size.width = v29;
        v44.size.height = v28;
        Height = CGRectGetHeight(v44);
        v45.origin.x = v17;
        v45.origin.y = rect;
        v45.size.width = v21;
        v45.size.height = v23;
        v27 = CGRectGetHeight(v45);
        SKUIRectByApplyingUserInterfaceLayoutDirectionInRect(v17, floor((Height - v27) * 0.5), v21, v23, v31, v30, v29, v28);
        [v15 setFrame:?];

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v12);
  }
}

- (CGSize)_sizeViewsForColumn:(id)a3 toFitWidth:(double)a4
{
  v6 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3010000000;
  v16 = &unk_215F8ACD7;
  v17 = *MEMORY[0x277CBF3A8];
  v7 = [v6 childViewElements];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __56__SKUITabularLockupView__sizeViewsForColumn_toFitWidth___block_invoke;
  v12[3] = &unk_2781FB2E8;
  *&v12[6] = a4;
  v12[4] = self;
  v12[5] = &v13;
  [v7 enumerateObjectsUsingBlock:v12];
  v8 = v14[4];
  v9 = v14[5];

  _Block_object_dispose(&v13, 8);
  v10 = v8;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

void __56__SKUITabularLockupView__sizeViewsForColumn_toFitWidth___block_invoke(uint64_t a1, uint64_t a2)
{
  v15 = [*(*(a1 + 32) + 432) objectForKey:a2];
  v3 = *MEMORY[0x277CBF3A0];
  v4 = *(MEMORY[0x277CBF3A0] + 8);
  [v15 sizeThatFits:{*(a1 + 48), 1.79769313e308}];
  v7 = v6;
  if (v5 >= *(a1 + 48))
  {
    v8 = *(a1 + 48);
  }

  else
  {
    v8 = v5;
  }

  v9 = v3;
  v10 = v4;
  v17 = CGRectIntegral(*(&v7 - 3));
  width = v17.size.width;
  height = v17.size.height;
  [v15 setFrame:{v17.origin.x, v17.origin.y}];
  *(*(*(a1 + 40) + 8) + 40) = height + *(*(*(a1 + 40) + 8) + 40);
  v13 = *(*(a1 + 40) + 8);
  v14 = *(v13 + 32);
  if (v14 < width)
  {
    v14 = width;
  }

  *(v13 + 32) = v14;
}

@end