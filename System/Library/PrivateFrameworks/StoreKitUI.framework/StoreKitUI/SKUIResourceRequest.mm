@interface SKUIResourceRequest
- (BOOL)isEqual:(id)equal;
- (SKUIResourceRequest)init;
- (id)_initSKUIResourceRequest;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)_initSKUIResourceRequest;
- (void)init;
@end

@implementation SKUIResourceRequest

- (SKUIResourceRequest)init
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUIResourceRequest init];
  }

  v4.receiver = self;
  v4.super_class = SKUIResourceRequest;
  result = [(SKUIResourceRequest *)&v4 init];
  if (result)
  {
    result->_requestID = (atomic_fetch_add_explicit(init_sRequestID, 1u, memory_order_relaxed) + 1);
  }

  return result;
}

- (id)_initSKUIResourceRequest
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUIResourceRequest _initSKUIResourceRequest];
  }

  v4.receiver = self;
  v4.super_class = SKUIResourceRequest;
  return [(SKUIResourceRequest *)&v4 init];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = SKUIResourceRequest;
  v4 = [(SKUIResourceRequest *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@: [%lu]", v4, self->_requestID];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    requestIdentifier = [(SKUIResourceRequest *)self requestIdentifier];
    v6 = requestIdentifier == [equalCopy requestIdentifier];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "_initSKUIResourceRequest"}];
  objc_storeStrong((v4 + 8), self->_cacheKey);
  *(v4 + 16) = self->_requestID;
  return v4;
}

- (void)init
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIResourceRequest init]";
}

- (void)_initSKUIResourceRequest
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIResourceRequest _initSKUIResourceRequest]";
}

@end