@interface SKUIViewReuseCollectionViewCell
- (SKUIViewReuseCollectionViewCell)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)contentInset;
- (id)existingViewForIndex:(int64_t)a3;
- (id)existingViewsForReuseIdentifier:(id)a3;
- (void)applyLayoutAttributes:(id)a3;
- (void)dealloc;
- (void)enumerateExistingViewsForReuseIdentifier:(id)a3 usingBlock:(id)a4;
- (void)modifyUsingBlock:(id)a3;
- (void)setBackgroundColor:(id)a3;
- (void)setContentInset:(UIEdgeInsets)a3;
@end

@implementation SKUIViewReuseCollectionViewCell

- (SKUIViewReuseCollectionViewCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUIViewReuseCollectionViewCell initWithFrame:];
  }

  v12.receiver = self;
  v12.super_class = SKUIViewReuseCollectionViewCell;
  v8 = [(SKUICollectionViewCell *)&v12 initWithFrame:x, y, width, height];
  if (v8)
  {
    v9 = [[SKUIViewReusePool alloc] initWithParentView:v8];
    viewPool = v8->_viewPool;
    v8->_viewPool = v9;
  }

  return v8;
}

- (void)dealloc
{
  v15 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_allExistingViews;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        if (objc_opt_isKindOfClass())
        {
          [v8 removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9.receiver = self;
  v9.super_class = SKUIViewReuseCollectionViewCell;
  [(SKUIViewReuseCollectionViewCell *)&v9 dealloc];
}

- (void)enumerateExistingViewsForReuseIdentifier:(id)a3 usingBlock:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = self->_allExistingViews;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v18;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        v15 = SKUIReuseIdentifierForView(v14);
        if (v15 && [v6 isEqualToString:v15])
        {
          v16 = 0;
          v7[2](v7, v14, v11, &v16);
          if (v16)
          {

            goto LABEL_14;
          }

          ++v11;
        }
      }

      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:
}

- (id)existingViewForIndex:(int64_t)a3
{
  if ([(NSArray *)self->_allExistingViews count]<= a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSArray *)self->_allExistingViews objectAtIndex:a3];
  }

  return v5;
}

- (id)existingViewsForReuseIdentifier:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = self->_allExistingViews;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = SKUIReuseIdentifierForView(v11);
        if (v12 && [v4 isEqualToString:{v12, v14}])
        {
          [v5 addObject:v11];
        }
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  return v5;
}

- (void)modifyUsingBlock:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_allExistingViews)
  {
    [(SKUIViewReusePool *)self->_viewPool recycleReusableViews:?];
    allExistingViews = self->_allExistingViews;
    self->_allExistingViews = 0;
  }

  v6 = [[SKUIViewModification alloc] initWithViewReusePool:self->_viewPool];
  v4[2](v4, v6);
  v7 = [(SKUIViewReuseCollectionViewCell *)self backgroundColor];
  v8 = [(SKUIViewReuseCollectionViewCell *)self contentView];
  v9 = [(SKUIViewModification *)v6 allViewTextProperties];
  allViewTextProperties = self->_allViewTextProperties;
  self->_allViewTextProperties = v9;

  v11 = [(SKUIViewModification *)v6 views];
  v12 = self->_allExistingViews;
  self->_allExistingViews = v11;

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v13 = self->_allExistingViews;
  v14 = [(NSArray *)v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v20;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v20 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v19 + 1) + 8 * i);
        [v18 setBackgroundColor:v7];
        [v8 addSubview:v18];
      }

      v15 = [(NSArray *)v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v15);
  }

  [(SKUIViewReusePool *)self->_viewPool hideUnusedViews];
  [(SKUIViewReuseCollectionViewCell *)self setNeedsLayout];
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
    [(SKUIViewReuseCollectionViewCell *)self setNeedsLayout];
  }
}

- (void)applyLayoutAttributes:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 backgroundColor];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = self->_allExistingViews;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v12 + 1) + 8 * v10++) setBackgroundColor:v5];
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11.receiver = self;
  v11.super_class = SKUIViewReuseCollectionViewCell;
  [(SKUICollectionViewCell *)&v11 applyLayoutAttributes:v4];
}

- (void)setBackgroundColor:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_allExistingViews;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * v9++) setBackgroundColor:v4];
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10.receiver = self;
  v10.super_class = SKUIViewReuseCollectionViewCell;
  [(SKUICollectionViewCell *)&v10 setBackgroundColor:v4];
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

- (void)initWithFrame:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIViewReuseCollectionViewCell initWithFrame:]";
}

@end