@interface SKUIDeferredActivityItemProvider
- (SKUIDeferredActivityItemProvider)initWithProductPageItem:(id)a3 clientContext:(id)a4;
- (SKUIDeferredActivityItemProvider)initWithProductPageItemProvider:(id)a3 clientContext:(id)a4;
- (SKUIDeferredActivityItemProvider)initWithProductPageItemProvider:(id)a3 clientContext:(id)a4 placeholderItem:(id)a5;
- (SKUIProductPageItem)productPageItem;
@end

@implementation SKUIDeferredActivityItemProvider

- (SKUIDeferredActivityItemProvider)initWithProductPageItemProvider:(id)a3 clientContext:(id)a4 placeholderItem:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUIDeferredActivityItemProvider initWithProductPageItemProvider:clientContext:placeholderItem:];
  }

  v15.receiver = self;
  v15.super_class = SKUIDeferredActivityItemProvider;
  v11 = [(UIActivityItemProvider *)&v15 initWithPlaceholderItem:v10];
  if (v11)
  {
    v12 = _Block_copy(v8);
    itemProvider = v11->_itemProvider;
    v11->_itemProvider = v12;

    objc_storeStrong(&v11->_clientContext, a4);
  }

  return v11;
}

- (SKUIDeferredActivityItemProvider)initWithProductPageItem:(id)a3 clientContext:(id)a4
{
  v6 = a3;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __74__SKUIDeferredActivityItemProvider_initWithProductPageItem_clientContext___block_invoke;
  v12[3] = &unk_2781FDE50;
  v13 = v6;
  v7 = v6;
  v8 = a4;
  v9 = [objc_opt_class() placeholderItem];
  v10 = [(SKUIDeferredActivityItemProvider *)self initWithProductPageItemProvider:v12 clientContext:v8 placeholderItem:v9];

  return v10;
}

- (SKUIDeferredActivityItemProvider)initWithProductPageItemProvider:(id)a3 clientContext:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [objc_opt_class() placeholderItem];
  v9 = [(SKUIDeferredActivityItemProvider *)self initWithProductPageItemProvider:v7 clientContext:v6 placeholderItem:v8];

  return v9;
}

- (SKUIProductPageItem)productPageItem
{
  productPageItem = self->_productPageItem;
  if (!productPageItem)
  {
    productPageItem = self->_itemProvider;
    if (productPageItem)
    {
      v4 = productPageItem[2](productPageItem, a2);
      v5 = self->_productPageItem;
      self->_productPageItem = v4;

      productPageItem = self->_productPageItem;
    }
  }

  return productPageItem;
}

- (void)initWithProductPageItemProvider:clientContext:placeholderItem:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIDeferredActivityItemProvider initWithProductPageItemProvider:clientContext:placeholderItem:]";
}

@end