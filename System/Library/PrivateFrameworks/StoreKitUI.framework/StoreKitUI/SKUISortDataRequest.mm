@interface SKUISortDataRequest
- (SKUISortDataRequest)initWithSortURL:(id)l;
- (SKUISortDataRequestDelegate)delegate;
- (id)copyWithZone:(_NSZone *)zone;
- (id)newLoadOperation;
- (void)finishWithResource:(id)resource;
@end

@implementation SKUISortDataRequest

- (SKUISortDataRequest)initWithSortURL:(id)l
{
  lCopy = l;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUISortDataRequest initWithSortURL:];
  }

  v9.receiver = self;
  v9.super_class = SKUISortDataRequest;
  v5 = [(SKUIResourceRequest *)&v9 init];
  if (v5)
  {
    v6 = [lCopy copy];
    sortURL = v5->_sortURL;
    v5->_sortURL = v6;
  }

  return v5;
}

- (void)finishWithResource:(id)resource
{
  resourceCopy = resource;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained sortDataRequest:self didFinishWithLockups:resourceCopy];
  }
}

- (id)newLoadOperation
{
  v3 = [SKUILoadSortDataOperation alloc];

  return [(SKUILoadSortDataOperation *)v3 initWithResourceRequest:self];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = SKUISortDataRequest;
  v5 = [(SKUIResourceRequest *)&v9 copyWithZone:?];
  v6 = [(NSURL *)self->_sortURL copyWithZone:zone];
  v7 = v5[4];
  v5[4] = v6;

  return v5;
}

- (SKUISortDataRequestDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithSortURL:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUISortDataRequest initWithSortURL:]";
}

@end