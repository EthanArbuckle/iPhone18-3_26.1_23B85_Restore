@interface SKUIModernChartsView
- (SKUIModernChartsView)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)contentInset;
- (void)_contentSizeCategoryDidChange:(id)change;
- (void)_layoutHeadersWithColumnSize:(CGSize)size;
- (void)_layoutViewControllersWithColumnSize:(CGSize)size contentInset:(UIEdgeInsets)inset;
- (void)_updateHeader;
- (void)dealloc;
- (void)layoutSubviews;
- (void)scrollViewDidScroll:(id)scroll;
- (void)setColumnViewControllers:(id)controllers;
@end

@implementation SKUIModernChartsView

- (SKUIModernChartsView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIModernChartsView initWithFrame:];
  }

  v19.receiver = self;
  v19.super_class = SKUIModernChartsView;
  height = [(SKUIModernChartsView *)&v19 initWithFrame:x, y, width, height];
  if (height)
  {
    v9 = objc_alloc_init(MEMORY[0x277D759D8]);
    scrollView = height->_scrollView;
    height->_scrollView = v9;

    [(UIScrollView *)height->_scrollView setAutoresizingMask:18];
    [(UIScrollView *)height->_scrollView setAlwaysBounceHorizontal:1];
    [(UIScrollView *)height->_scrollView setBouncesHorizontally:1];
    [(UIScrollView *)height->_scrollView setBouncesVertically:0];
    [(UIScrollView *)height->_scrollView setCanCancelContentTouches:0];
    [(UIScrollView *)height->_scrollView setDelaysContentTouches:0];
    [(UIScrollView *)height->_scrollView setDelegate:height];
    [(SKUIModernChartsView *)height addSubview:height->_scrollView];
    v11 = [objc_alloc(MEMORY[0x277D75DE8]) initWithPrivateStyle:2010];
    backdropView = height->_backdropView;
    height->_backdropView = v11;

    [(_UIBackdropView *)height->_backdropView setAutoresizingMask:2];
    [(SKUIModernChartsView *)height addSubview:height->_backdropView];
    v13 = objc_alloc_init(MEMORY[0x277D75D18]);
    headerView = height->_headerView;
    height->_headerView = v13;

    [(UIView *)height->_headerView setAutoresizingMask:2];
    v15 = height->_headerView;
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(UIView *)v15 setBackgroundColor:clearColor];

    [(SKUIModernChartsView *)height addSubview:height->_headerView];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:height selector:sel__contentSizeCategoryDidChange_ name:*MEMORY[0x277D76810] object:0];
  }

  return height;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D76810] object:0];

  v4.receiver = self;
  v4.super_class = SKUIModernChartsView;
  [(SKUIModernChartsView *)&v4 dealloc];
}

- (void)setColumnViewControllers:(id)controllers
{
  v30 = *MEMORY[0x277D85DE8];
  controllersCopy = controllers;
  viewControllers = self->_viewControllers;
  if (viewControllers)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v7 = viewControllers;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v25;
      do
      {
        v11 = 0;
        do
        {
          if (*v25 != v10)
          {
            objc_enumerationMutation(v7);
          }

          view = [*(*(&v24 + 1) + 8 * v11) view];
          [view removeFromSuperview];

          ++v11;
        }

        while (v9 != v11);
        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v9);
    }
  }

  objc_storeStrong(&self->_viewControllers, controllers);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v13 = self->_viewControllers;
  v14 = [(NSArray *)v13 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v21;
    do
    {
      v17 = 0;
      do
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(v13);
        }

        scrollView = self->_scrollView;
        view2 = [*(*(&v20 + 1) + 8 * v17) view];
        [(UIScrollView *)scrollView addSubview:view2];

        ++v17;
      }

      while (v15 != v17);
      v15 = [(NSArray *)v13 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v15);
  }

  [(UIScrollView *)self->_scrollView setContentOffset:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
  [(SKUIModernChartsView *)self _updateHeader];
  [(SKUIModernChartsView *)self setNeedsLayout];
}

- (void)scrollViewDidScroll:(id)scroll
{
  [(UIView *)self->_headerView bounds];
  [(UIScrollView *)self->_scrollView bounds];
  headerView = self->_headerView;

  [(UIView *)headerView setBounds:?];
}

- (void)layoutSubviews
{
  v19.receiver = self;
  v19.super_class = SKUIModernChartsView;
  [(SKUIModernChartsView *)&v19 layoutSubviews];
  [(SKUIModernChartsView *)self bounds];
  x = v20.origin.x;
  y = v20.origin.y;
  width = v20.size.width;
  height = v20.size.height;
  v7 = CGRectGetWidth(v20);
  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  v8 = CGRectGetHeight(v21);
  top = self->_contentInset.top;
  [(_UIBackdropView *)self->_backdropView setFrame:0.0, top, v7, 44.0];
  [(UIView *)self->_headerView setFrame:0.0, top, v7, 44.0];
  [(UIScrollView *)self->_scrollView setFrame:0.0, 0.0, v7, v8];
  viewControllers = self->_viewControllers;
  if (viewControllers)
  {
    v11 = [(NSArray *)viewControllers count];
    v12 = ([(NSArray *)self->_viewControllers count]- 1);
    v13 = fmax((v7 + -20.0 - v12 * 28.0 + -20.0) / v11, 285.0);
    [(UIScrollView *)self->_scrollView setContentSize:v12 * 28.0 + 20.0 + v11 * v13 + 20.0, v8];
    v15 = self->_contentInset.top;
    left = self->_contentInset.left;
    bottom = self->_contentInset.bottom;
    right = self->_contentInset.right;
    backdropView = self->_backdropView;
    if (self->_hideHeader)
    {
      [(_UIBackdropView *)backdropView setHidden:1];
      [(UIView *)self->_headerView setHidden:1];
    }

    else
    {
      [(_UIBackdropView *)backdropView setHidden:0];
      [(UIView *)self->_headerView setHidden:0];
      v15 = v15 + 44.0;
      [(SKUIModernChartsView *)self _layoutHeadersWithColumnSize:v13, v8];
    }

    [(SKUIModernChartsView *)self _layoutViewControllersWithColumnSize:v13 contentInset:v8, v15, left, bottom, right];
  }

  else
  {
    [(UIScrollView *)self->_scrollView setContentSize:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
  }
}

- (void)_contentSizeCategoryDidChange:(id)change
{
  [(SKUIModernChartsView *)self _updateHeader];

  [(SKUIModernChartsView *)self setNeedsLayout];
}

- (void)_layoutHeadersWithColumnSize:(CGSize)size
{
  width = size.width;
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_headerViews;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    v8 = 20.0;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        [v10 frame];
        Height = CGRectGetHeight(v18);
        [v10 setFrame:{v8, floor((44.0 - Height) * 0.5), width, Height}];
        v8 = width + 28.0 + v8;
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

- (void)_layoutViewControllersWithColumnSize:(CGSize)size contentInset:(UIEdgeInsets)inset
{
  top = inset.top;
  height = size.height;
  width = size.width;
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = self->_viewControllers;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    v11 = 20.0;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        view = [v13 view];
        [view setFrame:{v11, 0.0, width, height}];
        contentScrollView = [v13 contentScrollView];
        v16 = contentScrollView;
        if (contentScrollView)
        {
          [contentScrollView contentInset];
          [v16 setContentInset:top];
          [v16 scrollIndicatorInsets];
          [v16 setScrollIndicatorInsets:top];
        }

        v11 = width + 28.0 + v11;
      }

      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }
}

- (void)_updateHeader
{
  v29 = *MEMORY[0x277D85DE8];
  headerViews = self->_headerViews;
  if (!headerViews)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v5 = self->_headerViews;
    self->_headerViews = v4;

    headerViews = self->_headerViews;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = headerViews;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    do
    {
      v10 = 0;
      do
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v23 + 1) + 8 * v10++) removeFromSuperview];
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v8);
  }

  [(NSMutableArray *)self->_headerViews removeAllObjects];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = self->_viewControllers;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      v15 = 0;
      do
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v19 + 1) + 8 * v15);
        v17 = objc_alloc_init(SKUIModernChartHeaderView);
        title = [v16 title];
        [(SKUIModernChartHeaderView *)v17 setTitle:title];

        [(NSMutableArray *)self->_headerViews addObject:v17];
        [(UIView *)self->_headerView addSubview:v17];

        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v13);
  }

  self->_hideHeader = [(NSMutableArray *)self->_headerViews count]== 0;
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
  v1 = "[SKUIModernChartsView initWithFrame:]";
}

@end