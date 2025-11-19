@interface SKUIChartColumnHeaderView
- (NSArray)titles;
- (double)edgePadding;
- (void)_buttonAction:(id)a3;
- (void)_reloadSelectedButton;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)a3;
- (void)setSelectedTitleIndex:(int64_t)a3;
- (void)setTitles:(id)a3;
- (void)sizeToFit;
@end

@implementation SKUIChartColumnHeaderView

- (void)dealloc
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_buttons;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7++) removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8.receiver = self;
  v8.super_class = SKUIChartColumnHeaderView;
  [(SKUIChartColumnHeaderView *)&v8 dealloc];
}

- (void)setSelectedTitleIndex:(int64_t)a3
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIChartColumnHeaderView *)v5 setSelectedTitleIndex:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  if (self->_selectedTitleIndex != a3)
  {
    self->_selectedTitleIndex = a3;
    [(SKUIChartColumnHeaderView *)self _reloadSelectedButton];
  }
}

- (void)setTitles:(id)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIChartColumnHeaderView *)v5 setTitles:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = [(SKUIChartColumnHeaderView *)self tintColor];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v4;
  v15 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v39;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v39 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v38 + 1) + 8 * i);
        v20 = objc_alloc_init(MEMORY[0x277D75220]);
        [v20 addTarget:self action:sel__buttonAction_ forControlEvents:64];
        v21 = [(SKUIChartColumnHeaderView *)self backgroundColor];
        [v20 setBackgroundColor:v21];

        [v20 setTitle:v19 forState:0];
        [v20 setTitleColor:v14 forState:1];
        [v20 setTitleColor:v14 forState:4];
        v22 = [MEMORY[0x277D75348] labelColor];
        [v20 setTitleColor:v22 forState:0];

        v23 = [v20 titleLabel];
        v24 = [MEMORY[0x277D74300] systemFontOfSize:17.0];
        [v23 setFont:v24];

        [v20 sizeToFit];
        [v13 addObject:v20];
        [(SKUIChartColumnHeaderView *)self addSubview:v20];
      }

      v16 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v16);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v25 = self->_buttons;
  v26 = [(NSArray *)v25 countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v35;
    do
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v35 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v34 + 1) + 8 * j);
        [v30 removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];
        [v30 removeFromSuperview];
      }

      v27 = [(NSArray *)v25 countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v27);
  }

  v31 = [v13 copy];
  buttons = self->_buttons;
  self->_buttons = v31;

  [(SKUIChartColumnHeaderView *)self _reloadSelectedButton];
}

- (NSArray)titles
{
  v24 = *MEMORY[0x277D85DE8];
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIChartColumnHeaderView *)v3 titles:v4];
      }
    }
  }

  v11 = [MEMORY[0x277CBEB18] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v12 = self->_buttons;
  v13 = [(NSArray *)v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v19 + 1) + 8 * i) titleForState:{0, v19}];
        [v11 addObject:v17];
      }

      v14 = [(NSArray *)v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v14);
  }

  return v11;
}

- (void)layoutSubviews
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIChartColumnHeaderView *)v3 layoutSubviews:v4];
      }
    }
  }

  [(SKUIChartColumnHeaderView *)self bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = [(NSArray *)self->_buttons count];
  v20 = v19 - 1;
  if (v19 >= 1)
  {
    v21 = v19;
    [(SKUIChartColumnHeaderView *)self edgePadding];
    v23 = (v16 + v22 * -2.0 + (v20 * -25.0)) / v21;
    v27[0] = 0;
    v27[1] = v27;
    v27[2] = 0x2020000000;
    [(SKUIChartColumnHeaderView *)self edgePadding];
    v27[3] = v24;
    buttons = self->_buttons;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __43__SKUIChartColumnHeaderView_layoutSubviews__block_invoke;
    v26[3] = &unk_2781FF4F8;
    v26[6] = v12;
    v26[7] = v14;
    *&v26[8] = v16;
    v26[9] = v18;
    *&v26[10] = v23;
    v26[11] = v21;
    v26[4] = self;
    v26[5] = v27;
    [(NSArray *)buttons enumerateObjectsUsingBlock:v26];
    _Block_object_dispose(v27, 8);
  }
}

CGFloat __43__SKUIChartColumnHeaderView_layoutSubviews__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  [v5 frame];
  v8 = v7;
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 24);
  v11 = *(a1 + 72);
  v12 = (v11 - v7) * 0.5;
  v13 = floorf(v12);
  if (v6 >= *(a1 + 80))
  {
    v14 = *(a1 + 80);
  }

  else
  {
    v14 = v6;
  }

  SKUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(*(v9 + 24), v13, v14, v7, *(a1 + 48), *(a1 + 56), *(a1 + 64), v11);
  [v5 setFrame:?];
  v15 = *(a1 + 88) >= 2 && *(*(a1 + 32) + 464) == a3;
  [v5 setSelected:v15];

  v17.origin.x = v10;
  v17.origin.y = v13;
  v17.size.width = v14;
  v17.size.height = v8;
  result = CGRectGetMaxX(v17) + 25.0;
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setBackgroundColor:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIChartColumnHeaderView *)v5 setBackgroundColor:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  [(NSArray *)self->_buttons makeObjectsPerformSelector:sel_setBackgroundColor_ withObject:v4];
  v13.receiver = self;
  v13.super_class = SKUIChartColumnHeaderView;
  [(SKUIChartColumnHeaderView *)&v13 setBackgroundColor:v4];
}

- (void)sizeToFit
{
  v23 = *MEMORY[0x277D85DE8];
  [(SKUIChartColumnHeaderView *)self frame];
  v4 = v3;
  v6 = v5;
  [(SKUIChartColumnHeaderView *)self edgePadding];
  v8 = v7 + v7;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = self->_buttons;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        [v14 sizeToFit];
        [v14 frame];
        v8 = v8 + v15;
      }

      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  v16 = [(NSArray *)self->_buttons count];
  if (v16 <= 1)
  {
    v17 = v8;
  }

  else
  {
    v17 = v8 + (v16 * 25.0);
  }

  [(SKUIChartColumnHeaderView *)self setFrame:v4, v6, v17, 44.0, v18];
}

- (void)_buttonAction:(id)a3
{
  v4 = [(NSArray *)self->_buttons indexOfObjectIdenticalTo:a3];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    self->_selectedTitleIndex = v4;
    [(SKUIChartColumnHeaderView *)self sendActionsForControlEvents:4096];

    [(SKUIChartColumnHeaderView *)self setNeedsLayout];
  }
}

- (double)edgePadding
{
  [(SKUIChartColumnHeaderView *)self size];
  v3 = v2 <= 341.0;
  result = 15.0;
  if (!v3)
  {
    return 20.0;
  }

  return result;
}

- (void)_reloadSelectedButton
{
  v3 = [(NSArray *)self->_buttons count];
  if (v3 >= 1)
  {
    v4 = v3;
    for (i = 0; i != v4; ++i)
    {
      v6 = [(NSArray *)self->_buttons objectAtIndex:i];
      v7 = v6;
      v8 = v4 != 1 && i == self->_selectedTitleIndex;
      [v6 setSelected:v8];
    }
  }
}

@end