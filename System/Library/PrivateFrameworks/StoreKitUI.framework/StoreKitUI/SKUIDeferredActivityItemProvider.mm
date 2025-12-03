@interface SKUIDeferredActivityItemProvider
- (SKUIDeferredActivityItemProvider)initWithProductPageItem:(id)item clientContext:(id)context;
- (SKUIDeferredActivityItemProvider)initWithProductPageItemProvider:(id)provider clientContext:(id)context;
- (SKUIDeferredActivityItemProvider)initWithProductPageItemProvider:(id)provider clientContext:(id)context placeholderItem:(id)item;
- (SKUIProductPageItem)productPageItem;
@end

@implementation SKUIDeferredActivityItemProvider

- (SKUIDeferredActivityItemProvider)initWithProductPageItemProvider:(id)provider clientContext:(id)context placeholderItem:(id)item
{
  providerCopy = provider;
  contextCopy = context;
  itemCopy = item;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUIDeferredActivityItemProvider initWithProductPageItemProvider:clientContext:placeholderItem:];
  }

  v15.receiver = self;
  v15.super_class = SKUIDeferredActivityItemProvider;
  v11 = [(UIActivityItemProvider *)&v15 initWithPlaceholderItem:itemCopy];
  if (v11)
  {
    v12 = _Block_copy(providerCopy);
    itemProvider = v11->_itemProvider;
    v11->_itemProvider = v12;

    objc_storeStrong(&v11->_clientContext, context);
  }

  return v11;
}

- (SKUIDeferredActivityItemProvider)initWithProductPageItem:(id)item clientContext:(id)context
{
  itemCopy = item;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __74__SKUIDeferredActivityItemProvider_initWithProductPageItem_clientContext___block_invoke;
  v12[3] = &unk_2781FDE50;
  v13 = itemCopy;
  v7 = itemCopy;
  contextCopy = context;
  placeholderItem = [objc_opt_class() placeholderItem];
  v10 = [(SKUIDeferredActivityItemProvider *)self initWithProductPageItemProvider:v12 clientContext:contextCopy placeholderItem:placeholderItem];

  return v10;
}

- (SKUIDeferredActivityItemProvider)initWithProductPageItemProvider:(id)provider clientContext:(id)context
{
  contextCopy = context;
  providerCopy = provider;
  placeholderItem = [objc_opt_class() placeholderItem];
  v9 = [(SKUIDeferredActivityItemProvider *)self initWithProductPageItemProvider:providerCopy clientContext:contextCopy placeholderItem:placeholderItem];

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