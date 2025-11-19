@interface SKUIInAppPurchase
- (NSMutableDictionary)cacheRepresentation;
- (SKUIInAppPurchase)initWithCacheRepresentation:(id)a3;
- (SKUIInAppPurchase)initWithInAppPurchaseDictionary:(id)a3;
@end

@implementation SKUIInAppPurchase

- (SKUIInAppPurchase)initWithInAppPurchaseDictionary:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIInAppPurchase initWithInAppPurchaseDictionary:];
  }

  v13.receiver = self;
  v13.super_class = SKUIInAppPurchase;
  v5 = [(SKUIInAppPurchase *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKey:@"price"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      formattedPrice = v5->_formattedPrice;
      v5->_formattedPrice = v7;
    }

    v9 = [v4 objectForKey:@"name"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 copy];
      name = v5->_name;
      v5->_name = v10;
    }
  }

  return v5;
}

- (SKUIInAppPurchase)initWithCacheRepresentation:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIInAppPurchase initWithCacheRepresentation:];
  }

  v13.receiver = self;
  v13.super_class = SKUIInAppPurchase;
  v5 = [(SKUIInAppPurchase *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKey:@"price"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      formattedPrice = v5->_formattedPrice;
      v5->_formattedPrice = v7;
    }

    v9 = [v4 objectForKey:@"name"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 copy];
      name = v5->_name;
      v5->_name = v10;
    }
  }

  return v5;
}

- (NSMutableDictionary)cacheRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  formattedPrice = self->_formattedPrice;
  if (formattedPrice)
  {
    [v3 setObject:formattedPrice forKey:@"price"];
  }

  name = self->_name;
  if (name)
  {
    [v4 setObject:name forKey:@"name"];
  }

  return v4;
}

- (void)initWithInAppPurchaseDictionary:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIInAppPurchase initWithInAppPurchaseDictionary:]";
}

- (void)initWithCacheRepresentation:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIInAppPurchase initWithCacheRepresentation:]";
}

@end