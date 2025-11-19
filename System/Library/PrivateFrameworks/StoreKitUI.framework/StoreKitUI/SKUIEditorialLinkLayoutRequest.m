@interface SKUIEditorialLinkLayoutRequest
- (Class)layoutClass;
- (id)copyWithZone:(_NSZone *)a3;
- (void)layoutClass;
@end

@implementation SKUIEditorialLinkLayoutRequest

- (Class)layoutClass
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIEditorialLinkLayoutRequest layoutClass];
  }

  v2 = objc_opt_class();

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIEditorialLinkLayoutRequest copyWithZone:];
  }

  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v5 setLinks:self->_links];
  [v5 setWidth:self->_width];
  return v5;
}

- (void)layoutClass
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIEditorialLinkLayoutRequest layoutClass]";
}

- (void)copyWithZone:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIEditorialLinkLayoutRequest copyWithZone:]";
}

@end