@interface SKUIProductPageTableView
- (void)_addContentSubview:(id)subview atBack:(BOOL)back;
- (void)setProductPageHeaderView:(id)view;
@end

@implementation SKUIProductPageTableView

- (void)setProductPageHeaderView:(id)view
{
  viewCopy = view;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIProductPageTableView setProductPageHeaderView:];
  }

  productPageHeaderView = self->_productPageHeaderView;
  if (productPageHeaderView != viewCopy)
  {
    if ([(UIView *)productPageHeaderView isDescendantOfView:self])
    {
      [(UIView *)self->_productPageHeaderView removeFromSuperview];
    }

    objc_storeStrong(&self->_productPageHeaderView, view);
    if (self->_productPageHeaderView)
    {
      [(SKUIProductPageTableView *)self addSubview:?];
    }
  }
}

- (void)_addContentSubview:(id)subview atBack:(BOOL)back
{
  backCopy = back;
  v10.receiver = self;
  v10.super_class = SKUIProductPageTableView;
  subviewCopy = subview;
  [(SKUIProductPageTableView *)&v10 _addContentSubview:subviewCopy atBack:backCopy];
  productPageHeaderView = self->_productPageHeaderView;

  if (productPageHeaderView)
  {
    v8 = productPageHeaderView == subviewCopy;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v9.receiver = self;
    v9.super_class = SKUIProductPageTableView;
    [(SKUIProductPageTableView *)&v9 _addContentSubview:productPageHeaderView atBack:0];
  }
}

- (void)setProductPageHeaderView:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIProductPageTableView setProductPageHeaderView:]";
}

@end