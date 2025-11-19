@interface SKUILoadResourceOperation
- (SKUIClientContext)clientContext;
- (SKUILoadResourceOperation)initWithResourceRequest:(id)a3;
- (id)_initSKUILoadResourceOperation;
- (id)outputBlock;
- (void)_initSKUILoadResourceOperation;
- (void)cancel;
- (void)main;
- (void)setClientContext:(id)a3;
- (void)setOutputBlock:(id)a3;
@end

@implementation SKUILoadResourceOperation

- (id)_initSKUILoadResourceOperation
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUILoadResourceOperation _initSKUILoadResourceOperation];
  }

  v7.receiver = self;
  v7.super_class = SKUILoadResourceOperation;
  v3 = [(SKUILoadResourceOperation *)&v7 init];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    lock = v3->_lock;
    v3->_lock = v4;
  }

  return v3;
}

- (SKUILoadResourceOperation)initWithResourceRequest:(id)a3
{
  v4 = a3;
  v5 = [(SKUILoadResourceOperation *)self _initSKUILoadResourceOperation];
  if (v5)
  {
    v6 = [v4 copy];
    request = v5->_request;
    v5->_request = v6;
  }

  return v5;
}

- (SKUIClientContext)clientContext
{
  [(NSLock *)self->_lock lock];
  v3 = self->_clientContext;
  [(NSLock *)self->_lock unlock];

  return v3;
}

- (id)outputBlock
{
  [(NSLock *)self->_lock lock];
  v3 = [self->_outputBlock copy];
  [(NSLock *)self->_lock unlock];
  v4 = _Block_copy(v3);

  return v4;
}

- (void)setClientContext:(id)a3
{
  v5 = a3;
  [(NSLock *)self->_lock lock];
  if (self->_clientContext != v5)
  {
    objc_storeStrong(&self->_clientContext, a3);
  }

  [(NSLock *)self->_lock unlock];
}

- (void)setOutputBlock:(id)a3
{
  v6 = a3;
  [(NSLock *)self->_lock lock];
  if (self->_outputBlock != v6)
  {
    v4 = [v6 copy];
    outputBlock = self->_outputBlock;
    self->_outputBlock = v4;
  }

  [(NSLock *)self->_lock unlock];
}

- (void)main
{
  v2 = [(SKUILoadResourceOperation *)self outputBlock];
  if (v2)
  {
    v3 = v2;
    v2[2](v2, 0, 0);
    v2 = v3;
  }
}

- (void)cancel
{
  v2.receiver = self;
  v2.super_class = SKUILoadResourceOperation;
  [(SKUILoadResourceOperation *)&v2 cancel];
}

- (void)_initSKUILoadResourceOperation
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUILoadResourceOperation _initSKUILoadResourceOperation]";
}

@end