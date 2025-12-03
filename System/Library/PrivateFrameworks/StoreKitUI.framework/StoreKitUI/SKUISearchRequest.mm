@interface SKUISearchRequest
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation SKUISearchRequest

- (id)copyWithZone:(_NSZone *)zone
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUISearchRequest copyWithZone:];
  }

  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSNumber *)self->_searchHintIndex copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_searchHintOriginalTerm copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSString *)self->_term copyWithZone:zone];
  v11 = v5[3];
  v5[3] = v10;

  v12 = [(NSURL *)self->_url copyWithZone:zone];
  v13 = v5[4];
  v5[4] = v12;

  return v5;
}

- (void)copyWithZone:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUISearchRequest copyWithZone:]";
}

@end