@interface SKUIEntityProviderInvalidationContext
- (void)setInvalidateDataSourceCounts:(BOOL)a3;
- (void)setInvalidateEverything:(BOOL)a3;
@end

@implementation SKUIEntityProviderInvalidationContext

- (void)setInvalidateDataSourceCounts:(BOOL)a3
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIEntityProviderInvalidationContext setInvalidateDataSourceCounts:];
  }

  self->_invalidateDataSourceCounts = a3;
}

- (void)setInvalidateEverything:(BOOL)a3
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIEntityProviderInvalidationContext setInvalidateEverything:];
  }

  self->_invalidateEverything = a3;
}

- (void)setInvalidateDataSourceCounts:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIEntityProviderInvalidationContext setInvalidateDataSourceCounts:]";
}

- (void)setInvalidateEverything:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIEntityProviderInvalidationContext setInvalidateEverything:]";
}

@end