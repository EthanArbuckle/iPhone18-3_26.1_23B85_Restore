@interface SKUIURLResolverDataConsumer
- (id)objectForData:(id)a3 response:(id)a4 error:(id *)a5;
@end

@implementation SKUIURLResolverDataConsumer

- (id)objectForData:(id)a3 response:(id)a4 error:(id *)a5
{
  v6 = a3;
  v7 = a4;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUIURLResolverDataConsumer objectForData:response:error:];
  }

  v8 = SSVProtocolRedirectURLForResponse();
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = [[SKUIURLResolverResponse alloc] initWithData:v6 URLResponse:v7];
  }

  return v9;
}

- (void)objectForData:response:error:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIURLResolverDataConsumer objectForData:response:error:]";
}

@end