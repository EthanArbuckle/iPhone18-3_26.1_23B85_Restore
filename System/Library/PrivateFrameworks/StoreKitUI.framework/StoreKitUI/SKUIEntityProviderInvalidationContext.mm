@interface SKUIEntityProviderInvalidationContext
- (void)setInvalidateDataSourceCounts:(BOOL)counts;
- (void)setInvalidateEverything:(BOOL)everything;
@end

@implementation SKUIEntityProviderInvalidationContext

- (void)setInvalidateDataSourceCounts:(BOOL)counts
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIEntityProviderInvalidationContext setInvalidateDataSourceCounts:];
  }

  self->_invalidateDataSourceCounts = counts;
}

- (void)setInvalidateEverything:(BOOL)everything
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIEntityProviderInvalidationContext setInvalidateEverything:];
  }

  self->_invalidateEverything = everything;
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