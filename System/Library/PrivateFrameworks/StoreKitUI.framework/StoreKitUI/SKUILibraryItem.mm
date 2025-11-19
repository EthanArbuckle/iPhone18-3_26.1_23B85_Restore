@interface SKUILibraryItem
- (BOOL)isEqual:(id)a3;
- (NSNumber)storeItemIdentifier;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)description;
@end

@implementation SKUILibraryItem

- (NSNumber)storeItemIdentifier
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v3)
      {
        [(SKUILibraryItem *)v3 storeItemIdentifier:v4];
      }
    }
  }

  v11 = [(SKUILibraryItem *)self storeIdentifier];
  v12 = [v11 itemIdentifier];

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUILibraryItem copyWithZone:];
  }

  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_storeFlavorIdentifier copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(SKUIStoreIdentifier *)self->_storeIdentifier copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (id)description
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUILibraryItem description];
  }

  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = SKUILibraryItem;
  v4 = [(SKUILibraryItem *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@: [%@, %@]", v4, self->_storeIdentifier, self->_storeFlavorIdentifier];

  return v5;
}

- (unint64_t)hash
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v3)
      {
        [(SKUILibraryItem *)v3 hash:v4];
      }
    }
  }

  v11 = [(SKUILibraryItem *)self storeItemIdentifier];
  v12 = [v11 hash];
  v13 = [(NSString *)self->_storeFlavorIdentifier hash]^ v12;
  v14 = [(SKUIStoreIdentifier *)self->_storeIdentifier hash];

  return v13 ^ v14;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v5)
      {
        [(SKUILibraryItem *)v5 isEqual:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v13 = objc_opt_class();
  if (v13 == objc_opt_class() && (storeIdentifier = self->_storeIdentifier) != 0 && (storeIdentifier == v4[1] || [(SKUIStoreIdentifier *)storeIdentifier isEqual:?]))
  {
    storeFlavorIdentifier = self->_storeFlavorIdentifier;
    if (storeFlavorIdentifier == v4[2])
    {
      v14 = 1;
    }

    else
    {
      v14 = [(NSString *)storeFlavorIdentifier isEqualToString:?];
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)copyWithZone:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUILibraryItem copyWithZone:]";
}

- (void)description
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUILibraryItem description]";
}

@end