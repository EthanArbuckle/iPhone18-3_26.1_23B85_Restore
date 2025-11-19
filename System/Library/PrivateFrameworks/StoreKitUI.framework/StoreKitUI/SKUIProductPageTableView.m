@interface SKUIProductPageTableView
- (void)_addContentSubview:(id)a3 atBack:(BOOL)a4;
- (void)setProductPageHeaderView:(id)a3;
@end

@implementation SKUIProductPageTableView

- (void)setProductPageHeaderView:(id)a3
{
  v5 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIProductPageTableView setProductPageHeaderView:];
  }

  productPageHeaderView = self->_productPageHeaderView;
  if (productPageHeaderView != v5)
  {
    if ([(UIView *)productPageHeaderView isDescendantOfView:self])
    {
      [(UIView *)self->_productPageHeaderView removeFromSuperview];
    }

    objc_storeStrong(&self->_productPageHeaderView, a3);
    if (self->_productPageHeaderView)
    {
      [(SKUIProductPageTableView *)self addSubview:?];
    }
  }
}

- (void)_addContentSubview:(id)a3 atBack:(BOOL)a4
{
  v4 = a4;
  v10.receiver = self;
  v10.super_class = SKUIProductPageTableView;
  v6 = a3;
  [(SKUIProductPageTableView *)&v10 _addContentSubview:v6 atBack:v4];
  productPageHeaderView = self->_productPageHeaderView;

  if (productPageHeaderView)
  {
    v8 = productPageHeaderView == v6;
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