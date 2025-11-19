@interface TSKToolbar
- (NSString)title;
- (TSKToolbar)initWithFrame:(CGRect)a3;
- (UIColor)titleColor;
- (id)itemWithTag:(int64_t)a3;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setItems:(id)a3 animated:(BOOL)a4 height:(double)a5 isLeft:(BOOL)a6;
- (void)setLeftItems:(id)a3 title:(id)a4 rightItems:(id)a5 duration:(double)a6;
- (void)setNavigationTitleView:(id)a3;
- (void)setShadowEnabled:(BOOL)a3;
- (void)setTitle:(id)a3;
- (void)setTitleColor:(id)a3;
@end

@implementation TSKToolbar

- (TSKToolbar)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = TSKToolbar;
  v3 = [(TSKToolbar *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D757A8]);
    v3->_navigationItem = v4;
    [(TSKToolbar *)v3 pushNavigationItem:v4 animated:0];
  }

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSKToolbar;
  [(TSKToolbar *)&v3 dealloc];
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = TSKToolbar;
  [(TSKToolbar *)&v8 layoutSubviews];
  if (self->_shadowLayer)
  {
    [(TSKToolbar *)self bounds];
    x = v9.origin.x;
    y = v9.origin.y;
    width = v9.size.width;
    height = v9.size.height;
    v7 = CGRectGetHeight(v9);
    v10.origin.x = x;
    v10.origin.y = y;
    v10.size.width = width;
    v10.size.height = height;
    [(CALayer *)self->_shadowLayer setFrame:0.0, v7, CGRectGetWidth(v10), 2.0];
  }
}

- (id)itemWithTag:(int64_t)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = [(TSKToolbar *)self subviews];
  v5 = [v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v19 = 0u;
          v20 = 0u;
          v17 = 0u;
          v18 = 0u;
          v10 = [v9 subviews];
          v11 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v18;
LABEL_9:
            v14 = 0;
            while (1)
            {
              if (*v18 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v17 + 1) + 8 * v14);
              if ([v15 tag] == a3)
              {
                break;
              }

              if (v12 == ++v14)
              {
                v12 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
                if (v12)
                {
                  goto LABEL_9;
                }

                goto LABEL_17;
              }
            }

            if (v15)
            {
              return v15;
            }
          }
        }

LABEL_17:
        ;
      }

      v6 = [v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v6);
  }

  return 0;
}

- (void)setLeftItems:(id)a3 title:(id)a4 rightItems:(id)a5 duration:(double)a6
{
  [(TSKToolbar *)self setTitle:a4];
  v10 = a6 > 0.0;
  [(TSKToolbar *)self bounds];
  v12 = v11;
  [(TSKToolbar *)self setItems:a3 animated:v10 height:1 isLeft:v11];

  [(TSKToolbar *)self setItems:a5 animated:v10 height:0 isLeft:v12];
}

- (void)setItems:(id)a3 animated:(BOOL)a4 height:(double)a5 isLeft:(BOOL)a6
{
  v6 = a6;
  v8 = a4;
  v9 = a3;
  v18[2] = *MEMORY[0x277D85DE8];
  if (![a3 count])
  {
    v9 = 0;
    if (!v6)
    {
      goto LABEL_17;
    }

LABEL_6:
    [(UINavigationItem *)self->_navigationItem setLeftBarButtonItems:v9 animated:v8];
    return;
  }

  [v9 firstObject];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (v6)
    {
      [(TSKToolbar *)self leftToolbarItemsMaximumWidth];
    }

    else
    {
      [(TSKToolbar *)self rightToolbarItemsMaximumWidth];
    }

    v12 = [[TSKToolbarButtonCollectionView alloc] initWithHeight:v9 items:a5 maximumWidth:v11];
    v13 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:v12];
    if (v6)
    {
      [(TSKToolbar *)self leftToolbarItemsInset];
    }

    else
    {
      [(TSKToolbar *)self rightToolbarItemsInset];
    }

    v15 = v14;
    if (v14 == 0.0)
    {
      v17 = v13;
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
    }

    else
    {
      v16 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:6 target:0 action:0];
      [v16 setWidth:v15];
      v18[0] = v16;
      v18[1] = v13;
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
    }

    if (!v6)
    {
      goto LABEL_17;
    }

    goto LABEL_6;
  }

  if (v6)
  {
    goto LABEL_6;
  }

  v9 = [v9 tsu_arrayByReversingOrder];
LABEL_17:
  [(UINavigationItem *)self->_navigationItem setRightBarButtonItems:v9 animated:v8];
}

- (NSString)title
{
  if (self->_navigationTitleView)
  {
    navigationTitleView = self->_navigationTitleView;
  }

  else
  {
    navigationTitleView = self->_navigationItem;
  }

  return [navigationTitleView title];
}

- (void)setTitle:(id)a3
{
  navigationTitleView = self->_navigationTitleView;
  if (navigationTitleView)
  {
    [(TSKToolbarTitleView *)navigationTitleView setTitle:a3];
  }

  else
  {
    [(UINavigationItem *)self->_navigationItem setTitle:a3];
  }

  v5 = self->_navigationTitleView;
  navigationItem = self->_navigationItem;

  [(UINavigationItem *)navigationItem setTitleView:v5];
}

- (UIColor)titleColor
{
  v2 = [(TSKToolbar *)self titleTextAttributes];
  v3 = *MEMORY[0x277D740C0];

  return [v2 objectForKey:v3];
}

- (void)setTitleColor:(id)a3
{
  v3 = a3;
  v6[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v5 = *MEMORY[0x277D740C0];
    v6[0] = a3;
    a3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  }

  [(TSKToolbar *)self setTitleTextAttributes:a3];
  [(TSKToolbarTitleView *)self->_navigationTitleView setTitleColor:v3];
}

- (void)setNavigationTitleView:(id)a3
{
  if (self->_navigationTitleView != a3)
  {
    v6 = [(NSString *)[(TSKToolbar *)self title] copy];

    v5 = a3;
    self->_navigationTitleView = v5;
    [(TSKToolbarTitleView *)v5 setTitle:v6];
    [(TSKToolbarTitleView *)self->_navigationTitleView setTitleColor:[(TSKToolbar *)self titleColor]];
  }
}

- (void)setShadowEnabled:(BOOL)a3
{
  if (self->_shadowEnabled != a3)
  {
    self->_shadowEnabled = a3;
    shadowLayer = self->_shadowLayer;
    if (a3)
    {
      if (!shadowLayer)
      {
        self->_shadowLayer = +[TSKToolbarShadowLayer layer];
        [-[TSKToolbar layer](self "layer")];
        v5 = self->_shadowLayer;

        [(CALayer *)v5 setNeedsDisplay];
      }
    }

    else
    {
      [(CALayer *)shadowLayer removeFromSuperlayer];
      self->_shadowLayer = 0;
    }
  }
}

@end