@interface SKUIPredicateViewElement
- (NSPredicate)entityValuePredicate;
- (void)entityValuePredicate;
@end

@implementation SKUIPredicateViewElement

- (NSPredicate)entityValuePredicate
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIPredicateViewElement entityValuePredicate];
  }

  v2 = [MEMORY[0x277CCAC30] predicateWithValue:1];

  return v2;
}

- (void)entityValuePredicate
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIPredicateViewElement entityValuePredicate]";
}

@end