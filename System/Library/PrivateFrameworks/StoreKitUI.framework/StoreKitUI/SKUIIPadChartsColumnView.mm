@interface SKUIIPadChartsColumnView
- (UIEdgeInsets)contentInset;
- (UIViewController)selectedViewController;
- (void)_addSelectedViewController;
- (void)layoutSubviews;
- (void)setContentViewControllers:(id)a3;
- (void)setSelectedViewControllerIndex:(int64_t)a3;
@end

@implementation SKUIIPadChartsColumnView

- (UIViewController)selectedViewController
{
  selectedViewControllerIndex = self->_selectedViewControllerIndex;
  if (selectedViewControllerIndex >= [(NSArray *)self->_contentViewControllers count])
  {
    v4 = 0;
  }

  else
  {
    v4 = [(NSArray *)self->_contentViewControllers objectAtIndex:self->_selectedViewControllerIndex];
  }

  return v4;
}

- (void)setContentViewControllers:(id)a3
{
  v5 = a3;
  if (self->_contentViewControllers != v5)
  {
    v8 = v5;
    v6 = [(SKUIIPadChartsColumnView *)self selectedViewController];
    if ([v6 isViewLoaded])
    {
      v7 = [v6 view];
      [v7 removeFromSuperview];
    }

    objc_storeStrong(&self->_contentViewControllers, a3);
    self->_selectedViewControllerIndex = 0;
    [(SKUIIPadChartsColumnView *)self _addSelectedViewController];

    v5 = v8;
  }
}

- (void)setSelectedViewControllerIndex:(int64_t)a3
{
  if (self->_selectedViewControllerIndex != a3)
  {
    v6 = [(SKUIIPadChartsColumnView *)self selectedViewController];
    if ([v6 isViewLoaded])
    {
      v5 = [v6 view];
      [v5 removeFromSuperview];
    }

    self->_selectedViewControllerIndex = a3;
    [(SKUIIPadChartsColumnView *)self _addSelectedViewController];
  }
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = SKUIIPadChartsColumnView;
  [(SKUIIPadChartsColumnView *)&v5 layoutSubviews];
  v3 = [(SKUIIPadChartsColumnView *)self selectedViewController];
  v4 = [v3 view];
  [(SKUIIPadChartsColumnView *)self bounds];
  [v4 setFrame:?];
}

- (void)_addSelectedViewController
{
  v3 = [(SKUIIPadChartsColumnView *)self selectedViewController];
  if (v3)
  {
    v21 = v3;
    v4 = [v3 view];
    [(SKUIIPadChartsColumnView *)self addSubview:v4];

    v5 = [v21 contentScrollView];
    v6 = v5;
    if (v5)
    {
      p_contentInset = &self->_contentInset;
      top = p_contentInset->top;
      left = p_contentInset->left;
      bottom = p_contentInset->bottom;
      right = p_contentInset->right;
      [v5 contentOffset];
      v13 = v12;
      v15 = v14;
      [v6 scrollIndicatorInsets];
      v17 = v16;
      v19 = v18;
      v20 = top + 44.0;
      if (v15 == 0.0)
      {
        v15 = v15 - (p_contentInset->top + 44.0);
      }

      [v6 setContentInset:{v20, left, bottom, right}];
      [v6 setContentOffset:{v13, v15}];
      [v6 setScrollIndicatorInsets:{v20, v17, bottom, v19}];
    }

    v3 = v21;
  }
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

@end