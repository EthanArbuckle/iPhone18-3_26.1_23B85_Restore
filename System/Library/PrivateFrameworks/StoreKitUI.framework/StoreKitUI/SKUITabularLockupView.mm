@interface SKUITabularLockupView
+ (BOOL)prefetchResourcesForViewElement:(id)element reason:(int64_t)reason context:(id)context;
+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context;
+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context;
+ (id)_attributedStringForLabel:(id)label context:(id)context;
+ (void)_requestLayoutForViewElements:(id)elements width:(double)width context:(id)context;
+ (void)requestLayoutForViewElement:(id)element width:(double)width context:(id)context;
- (CGSize)_sizeViewsForColumn:(id)column toFitWidth:(double)width;
- (SKUITabularLockupView)initWithFrame:(CGRect)frame;
- (void)_layoutSubviewsForColumn:(id)column;
- (void)layoutSubviews;
- (void)reloadWithViewElement:(id)element width:(double)width context:(id)context;
@end

@implementation SKUITabularLockupView

- (SKUITabularLockupView)initWithFrame:(CGRect)frame
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
        [(SKUITabularLockupView *)v8 initWithFrame:v9, v10, v11, v12, v13, v14, v15];
      }
    }
  }

  v20.receiver = self;
  v20.super_class = SKUITabularLockupView;
  height = [(SKUIViewReuseView *)&v20 initWithFrame:x, y, width, height];
  if (height)
  {
    v17 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:0 capacity:0];
    viewElementViews = height->_viewElementViews;
    height->_viewElementViews = v17;
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
        [(SKUITabularLockupView *)v5 prefetchResourcesForViewElement:v6 reason:v7 context:v8, v9, v10, v11, v12];
      }
    }
  }

  return 0;
}

+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context
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

+ (void)requestLayoutForViewElement:(id)element width:(double)width context:(id)context
{
  v33 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  contextCopy = context;
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

  v18 = [[SKUITabularLockupLayout alloc] initWithLockup:elementCopy context:contextCopy];
  [(SKUITabularLockupLayout *)v18 sizeColumnsToFitWidth:contextCopy context:width];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  columns = [(SKUITabularLockupLayout *)v18 columns];
  v20 = [columns countByEnumeratingWithState:&v28 objects:v32 count:16];
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
          objc_enumerationMutation(columns);
        }

        v24 = *(*(&v28 + 1) + 8 * i);
        [v24 size];
        v26 = v25;
        childViewElements = [v24 childViewElements];
        [self _requestLayoutForViewElements:childViewElements width:contextCopy context:v26];
      }

      v21 = [columns countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v21);
  }
}

+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context
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

- (void)reloadWithViewElement:(id)element width:(double)width context:(id)context
{
  contextCopy = context;
  viewElementViews = self->_viewElementViews;
  elementCopy = element;
  [(NSMapTable *)viewElementViews removeAllObjects];
  v11 = [[SKUITabularLockupLayout alloc] initWithLockup:elementCopy context:contextCopy];

  layout = self->_layout;
  self->_layout = v11;

  [(SKUITabularLockupLayout *)self->_layout sizeColumnsToFitWidth:contextCopy context:width];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __61__SKUITabularLockupView_reloadWithViewElement_width_context___block_invoke;
  v14[3] = &unk_2782006B0;
  v14[4] = self;
  v15 = contextCopy;
  v13 = contextCopy;
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
  columns = [(SKUITabularLockupLayout *)self->_layout columns];
  v4 = [columns countByEnumeratingWithState:&v8 objects:v13 count:16];
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
          objc_enumerationMutation(columns);
        }

        [(SKUITabularLockupView *)self _layoutSubviewsForColumn:*(*(&v8 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [columns countByEnumeratingWithState:&v8 objects:v13 count:16];
    }

    while (v5);
  }
}

+ (id)_attributedStringForLabel:(id)label context:(id)context
{
  labelCopy = label;
  contextCopy = context;
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

  v15 = [SKUITabularLockupLayout fontForLabelViewElement:labelCopy context:contextCopy];
  style = [labelCopy style];
  tintColor = [contextCopy tintColor];

  blackColor = SKUIViewElementPlainColorWithStyle(style, tintColor);

  if (!blackColor)
  {
    blackColor = [MEMORY[0x277D75348] blackColor];
  }

  text = [labelCopy text];
  style2 = [labelCopy style];
  v21 = [text attributedStringWithDefaultFont:v15 foregroundColor:blackColor style:style2];

  return v21;
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
      v9 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v9)
      {
        [(SKUITabularLockupView *)v9 _requestLayoutForViewElements:v10 width:v11 context:v12, v13, v14, v15, v16];
      }
    }
  }

  labelLayoutCache = [contextCopy labelLayoutCache];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v18 = elementsCopy;
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
          v25 = [contextCopy maxWidthForElement:v24 withDefaultWidth:width];
          v26 = [self _attributedStringForLabel:v24 context:contextCopy];
          [labelLayoutCache requestLayoutForLabel:v24 attributedString:v26 width:v25];
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v20);
  }
}

- (void)_layoutSubviewsForColumn:(id)column
{
  v38 = *MEMORY[0x277D85DE8];
  columnCopy = column;
  identifier = [columnCopy identifier];
  [(SKUITabularLockupView *)self bounds];
  v30 = v7;
  v31 = v6;
  v28 = v9;
  v29 = v8;
  [(SKUITabularLockupView *)self bounds];
  [(SKUITabularLockupView *)self _sizeViewsForColumn:columnCopy toFitWidth:CGRectGetWidth(v39)];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  childViewElements = [columnCopy childViewElements];
  v11 = [childViewElements countByEnumeratingWithState:&v33 objects:v37 count:16];
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
          objc_enumerationMutation(childViewElements);
        }

        v15 = [(NSMapTable *)self->_viewElementViews objectForKey:*(*(&v33 + 1) + 8 * v14)];
        [v15 frame];
        v17 = v16;
        v19 = v18;
        v21 = v20;
        v23 = v22;
        rect = v18;
        switch(identifier)
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
      v12 = [childViewElements countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v12);
  }
}

- (CGSize)_sizeViewsForColumn:(id)column toFitWidth:(double)width
{
  columnCopy = column;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3010000000;
  v16 = &unk_215F8ACD7;
  v17 = *MEMORY[0x277CBF3A8];
  childViewElements = [columnCopy childViewElements];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __56__SKUITabularLockupView__sizeViewsForColumn_toFitWidth___block_invoke;
  v12[3] = &unk_2781FB2E8;
  *&v12[6] = width;
  v12[4] = self;
  v12[5] = &v13;
  [childViewElements enumerateObjectsUsingBlock:v12];
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