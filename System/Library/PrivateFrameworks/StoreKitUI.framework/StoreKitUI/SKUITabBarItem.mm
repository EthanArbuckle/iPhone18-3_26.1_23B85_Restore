@interface SKUITabBarItem
- (BOOL)isEqual:(id)equal;
- (SKUITabBarItem)initWithTabIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation SKUITabBarItem

- (SKUITabBarItem)initWithTabIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUITabBarItem initWithTabIdentifier:];
  }

  v9.receiver = self;
  v9.super_class = SKUITabBarItem;
  v5 = [(SKUITabBarItem *)&v9 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    tabIdentifier = v5->_tabIdentifier;
    v5->_tabIdentifier = v6;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = SKUITabBarItem;
  v4 = [(SKUITabBarItem *)&v7 description];
  v5 = [v3 stringWithFormat:@"[%@ %@]", v4, self->_tabIdentifier];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    tabIdentifier = [(SKUITabBarItem *)self tabIdentifier];
    tabIdentifier2 = [equalCopy tabIdentifier];
    v6 = [tabIdentifier isEqualToString:tabIdentifier2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v5 + 8) = self->_alwaysCreatesRootViewController;
  *(v5 + 16) = self->_barTintStyle;
  objc_storeStrong((v5 + 24), self->_customRootViewController);
  v6 = [(NSString *)self->_metricsIdentifier copyWithZone:zone];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v8 = [(NSURL *)self->_rootURL copyWithZone:zone];
  v9 = *(v5 + 40);
  *(v5 + 40) = v8;

  objc_storeStrong((v5 + 48), self->_rootViewControllerClass);
  v10 = [(NSString *)self->_tabIdentifier copyWithZone:zone];
  v11 = *(v5 + 56);
  *(v5 + 56) = v10;

  objc_storeStrong((v5 + 64), self->_underlyingTabBarItem);
  objc_storeStrong((v5 + 72), self->_userInterfaceTintColor);
  return v5;
}

- (void)initWithTabIdentifier:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUITabBarItem initWithTabIdentifier:]";
}

@end