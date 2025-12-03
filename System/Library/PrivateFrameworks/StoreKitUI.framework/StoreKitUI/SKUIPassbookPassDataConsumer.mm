@interface SKUIPassbookPassDataConsumer
- (id)objectForData:(id)data response:(id)response error:(id *)error;
@end

@implementation SKUIPassbookPassDataConsumer

- (id)objectForData:(id)data response:(id)response error:(id *)error
{
  dataCopy = data;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIPassbookPassDataConsumer objectForData:response:error:];
  }

  v7 = SKUIPassKitCoreFramework();
  v11 = 0;
  v8 = [objc_alloc(SKUIWeakLinkedClassForString(&cfstr_Pkpass.isa v7))];

  v9 = v11;
  if (error && !v8)
  {
    v9 = v9;
    *error = v9;
  }

  return v8;
}

- (void)objectForData:response:error:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIPassbookPassDataConsumer objectForData:response:error:]";
}

@end