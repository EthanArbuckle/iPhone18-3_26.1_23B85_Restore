@interface SKUIURLResolverDataConsumer
- (id)objectForData:(id)data response:(id)response error:(id *)error;
@end

@implementation SKUIURLResolverDataConsumer

- (id)objectForData:(id)data response:(id)response error:(id *)error
{
  dataCopy = data;
  responseCopy = response;
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
    v9 = [[SKUIURLResolverResponse alloc] initWithData:dataCopy URLResponse:responseCopy];
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