@interface SKUIToggleStateItem
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation SKUIToggleStateItem

- (id)copyWithZone:(_NSZone *)zone
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIToggleStateItem copyWithZone:];
  }

  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v5 + 16) = self->_count;
  v6 = [(NSString *)self->_itemIdentifier copyWithZone:zone];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  *(v5 + 8) = self->_toggled;
  v8 = [(NSString *)self->_nonToggledString copyWithZone:zone];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  v10 = [(NSString *)self->_toggledString copyWithZone:zone];
  v11 = *(v5 + 40);
  *(v5 + 40) = v10;

  return v5;
}

- (void)copyWithZone:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIToggleStateItem copyWithZone:]";
}

@end