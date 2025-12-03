@interface SKUILoadResourceOperation
- (SKUIClientContext)clientContext;
- (SKUILoadResourceOperation)initWithResourceRequest:(id)request;
- (id)_initSKUILoadResourceOperation;
- (id)outputBlock;
- (void)_initSKUILoadResourceOperation;
- (void)cancel;
- (void)main;
- (void)setClientContext:(id)context;
- (void)setOutputBlock:(id)block;
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

- (SKUILoadResourceOperation)initWithResourceRequest:(id)request
{
  requestCopy = request;
  _initSKUILoadResourceOperation = [(SKUILoadResourceOperation *)self _initSKUILoadResourceOperation];
  if (_initSKUILoadResourceOperation)
  {
    v6 = [requestCopy copy];
    request = _initSKUILoadResourceOperation->_request;
    _initSKUILoadResourceOperation->_request = v6;
  }

  return _initSKUILoadResourceOperation;
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

- (void)setClientContext:(id)context
{
  contextCopy = context;
  [(NSLock *)self->_lock lock];
  if (self->_clientContext != contextCopy)
  {
    objc_storeStrong(&self->_clientContext, context);
  }

  [(NSLock *)self->_lock unlock];
}

- (void)setOutputBlock:(id)block
{
  blockCopy = block;
  [(NSLock *)self->_lock lock];
  if (self->_outputBlock != blockCopy)
  {
    v4 = [blockCopy copy];
    outputBlock = self->_outputBlock;
    self->_outputBlock = v4;
  }

  [(NSLock *)self->_lock unlock];
}

- (void)main
{
  outputBlock = [(SKUILoadResourceOperation *)self outputBlock];
  if (outputBlock)
  {
    v3 = outputBlock;
    outputBlock[2](outputBlock, 0, 0);
    outputBlock = v3;
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