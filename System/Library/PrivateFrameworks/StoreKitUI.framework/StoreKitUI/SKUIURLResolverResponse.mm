@interface SKUIURLResolverResponse
- (SKUIURLResolverResponse)initWithData:(id)a3 URLResponse:(id)a4;
@end

@implementation SKUIURLResolverResponse

- (SKUIURLResolverResponse)initWithData:(id)a3 URLResponse:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUIURLResolverResponse initWithData:URLResponse:];
  }

  v12.receiver = self;
  v12.super_class = SKUIURLResolverResponse;
  v9 = [(SKUIURLResolverResponse *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_data, a3);
    objc_storeStrong(&v10->_response, a4);
  }

  return v10;
}

- (void)initWithData:URLResponse:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIURLResolverResponse initWithData:URLResponse:]";
}

@end