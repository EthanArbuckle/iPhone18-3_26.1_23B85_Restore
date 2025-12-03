@interface SKUIViewReuseView
- (SKUIViewReuseView)initWithFrame:(CGRect)frame;
- (void)dealloc;
- (void)enumerateExistingViewsForReuseIdentifier:(id)identifier usingBlock:(id)block;
- (void)modifyUsingBlock:(id)block;
- (void)setBackgroundColor:(id)color;
@end

@implementation SKUIViewReuseView

- (SKUIViewReuseView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUIViewReuseView initWithFrame:];
  }

  v12.receiver = self;
  v12.super_class = SKUIViewReuseView;
  height = [(SKUIViewReuseView *)&v12 initWithFrame:x, y, width, height];
  if (height)
  {
    v9 = [[SKUIViewReusePool alloc] initWithParentView:height];
    viewReusePool = height->_viewReusePool;
    height->_viewReusePool = v9;
  }

  return height;
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
  v9.super_class = SKUIViewReuseView;
  [(SKUIViewReuseView *)&v9 dealloc];
}

- (void)enumerateExistingViewsForReuseIdentifier:(id)identifier usingBlock:(id)block
{
  v22 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  blockCopy = block;
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
        if (v15 && [identifierCopy isEqualToString:v15])
        {
          v16 = 0;
          blockCopy[2](blockCopy, v14, v11, &v16);
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

- (void)modifyUsingBlock:(id)block
{
  v21 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (self->_allExistingViews)
  {
    [(SKUIViewReusePool *)self->_viewReusePool recycleReusableViews:?];
    allExistingViews = self->_allExistingViews;
    self->_allExistingViews = 0;
  }

  v6 = [[SKUIViewModification alloc] initWithViewReusePool:self->_viewReusePool];
  blockCopy[2](blockCopy, v6);
  backgroundColor = [(SKUIViewReuseView *)self backgroundColor];
  views = [(SKUIViewModification *)v6 views];
  v9 = self->_allExistingViews;
  self->_allExistingViews = views;

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = self->_allExistingViews;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v16 + 1) + 8 * i);
        [v15 setBackgroundColor:{backgroundColor, v16}];
        [(SKUIViewReuseView *)self addSubview:v15];
      }

      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }

  [(SKUIViewReusePool *)self->_viewReusePool hideUnusedViews];
  [(SKUIViewReuseView *)self setNeedsLayout];
}

- (void)setBackgroundColor:(id)color
{
  v21 = *MEMORY[0x277D85DE8];
  colorCopy = color;
  v18 = 0.0;
  v19 = 0.0;
  v16 = 0.0;
  v17 = 0.0;
  clearColor = colorCopy;
  if ([colorCopy getHue:&v19 saturation:&v18 brightness:&v17 alpha:&v16])
  {
    clearColor = colorCopy;
    if (v16 < 1.0)
    {
      clearColor = colorCopy;
      if (v19 != 0.0)
      {
        clearColor = colorCopy;
        if (v18 != 0.0)
        {
          clearColor = colorCopy;
          if (v17 != 0.0)
          {
            clearColor = [MEMORY[0x277D75348] clearColor];
          }
        }
      }
    }
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = self->_allExistingViews;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v12 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v12 + 1) + 8 * i) setBackgroundColor:clearColor];
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v12 objects:v20 count:16];
    }

    while (v8);
  }

  v11.receiver = self;
  v11.super_class = SKUIViewReuseView;
  [(SKUIViewReuseView *)&v11 setBackgroundColor:colorCopy];
}

- (void)initWithFrame:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIViewReuseView initWithFrame:]";
}

@end