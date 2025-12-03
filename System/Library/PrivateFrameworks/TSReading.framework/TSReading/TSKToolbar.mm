@interface TSKToolbar
- (NSString)title;
- (TSKToolbar)initWithFrame:(CGRect)frame;
- (UIColor)titleColor;
- (id)itemWithTag:(int64_t)tag;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setItems:(id)items animated:(BOOL)animated height:(double)height isLeft:(BOOL)left;
- (void)setLeftItems:(id)items title:(id)title rightItems:(id)rightItems duration:(double)duration;
- (void)setNavigationTitleView:(id)view;
- (void)setShadowEnabled:(BOOL)enabled;
- (void)setTitle:(id)title;
- (void)setTitleColor:(id)color;
@end

@implementation TSKToolbar

- (TSKToolbar)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = TSKToolbar;
  v3 = [(TSKToolbar *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

- (id)itemWithTag:(int64_t)tag
{
  v27 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  subviews = [(TSKToolbar *)self subviews];
  v5 = [subviews countByEnumeratingWithState:&v21 objects:v26 count:16];
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
          objc_enumerationMutation(subviews);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v19 = 0u;
          v20 = 0u;
          v17 = 0u;
          v18 = 0u;
          subviews2 = [v9 subviews];
          v11 = [subviews2 countByEnumeratingWithState:&v17 objects:v25 count:16];
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
                objc_enumerationMutation(subviews2);
              }

              v15 = *(*(&v17 + 1) + 8 * v14);
              if ([v15 tag] == tag)
              {
                break;
              }

              if (v12 == ++v14)
              {
                v12 = [subviews2 countByEnumeratingWithState:&v17 objects:v25 count:16];
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

      v6 = [subviews countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v6);
  }

  return 0;
}

- (void)setLeftItems:(id)items title:(id)title rightItems:(id)rightItems duration:(double)duration
{
  [(TSKToolbar *)self setTitle:title];
  v10 = duration > 0.0;
  [(TSKToolbar *)self bounds];
  v12 = v11;
  [(TSKToolbar *)self setItems:items animated:v10 height:1 isLeft:v11];

  [(TSKToolbar *)self setItems:rightItems animated:v10 height:0 isLeft:v12];
}

- (void)setItems:(id)items animated:(BOOL)animated height:(double)height isLeft:(BOOL)left
{
  leftCopy = left;
  animatedCopy = animated;
  itemsCopy = items;
  v18[2] = *MEMORY[0x277D85DE8];
  if (![items count])
  {
    itemsCopy = 0;
    if (!leftCopy)
    {
      goto LABEL_17;
    }

LABEL_6:
    [(UINavigationItem *)self->_navigationItem setLeftBarButtonItems:itemsCopy animated:animatedCopy];
    return;
  }

  [itemsCopy firstObject];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (leftCopy)
    {
      [(TSKToolbar *)self leftToolbarItemsMaximumWidth];
    }

    else
    {
      [(TSKToolbar *)self rightToolbarItemsMaximumWidth];
    }

    v12 = [[TSKToolbarButtonCollectionView alloc] initWithHeight:itemsCopy items:height maximumWidth:v11];
    v13 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:v12];
    if (leftCopy)
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
      itemsCopy = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
    }

    else
    {
      v16 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:6 target:0 action:0];
      [v16 setWidth:v15];
      v18[0] = v16;
      v18[1] = v13;
      itemsCopy = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
    }

    if (!leftCopy)
    {
      goto LABEL_17;
    }

    goto LABEL_6;
  }

  if (leftCopy)
  {
    goto LABEL_6;
  }

  itemsCopy = [itemsCopy tsu_arrayByReversingOrder];
LABEL_17:
  [(UINavigationItem *)self->_navigationItem setRightBarButtonItems:itemsCopy animated:animatedCopy];
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

- (void)setTitle:(id)title
{
  navigationTitleView = self->_navigationTitleView;
  if (navigationTitleView)
  {
    [(TSKToolbarTitleView *)navigationTitleView setTitle:title];
  }

  else
  {
    [(UINavigationItem *)self->_navigationItem setTitle:title];
  }

  v5 = self->_navigationTitleView;
  navigationItem = self->_navigationItem;

  [(UINavigationItem *)navigationItem setTitleView:v5];
}

- (UIColor)titleColor
{
  titleTextAttributes = [(TSKToolbar *)self titleTextAttributes];
  v3 = *MEMORY[0x277D740C0];

  return [titleTextAttributes objectForKey:v3];
}

- (void)setTitleColor:(id)color
{
  colorCopy = color;
  v6[1] = *MEMORY[0x277D85DE8];
  if (color)
  {
    v5 = *MEMORY[0x277D740C0];
    v6[0] = color;
    color = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  }

  [(TSKToolbar *)self setTitleTextAttributes:color];
  [(TSKToolbarTitleView *)self->_navigationTitleView setTitleColor:colorCopy];
}

- (void)setNavigationTitleView:(id)view
{
  if (self->_navigationTitleView != view)
  {
    v6 = [(NSString *)[(TSKToolbar *)self title] copy];

    viewCopy = view;
    self->_navigationTitleView = viewCopy;
    [(TSKToolbarTitleView *)viewCopy setTitle:v6];
    [(TSKToolbarTitleView *)self->_navigationTitleView setTitleColor:[(TSKToolbar *)self titleColor]];
  }
}

- (void)setShadowEnabled:(BOOL)enabled
{
  if (self->_shadowEnabled != enabled)
  {
    self->_shadowEnabled = enabled;
    shadowLayer = self->_shadowLayer;
    if (enabled)
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