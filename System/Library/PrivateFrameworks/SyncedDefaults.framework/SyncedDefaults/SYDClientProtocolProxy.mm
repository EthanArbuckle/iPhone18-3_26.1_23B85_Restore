@interface SYDClientProtocolProxy
- (SYDClientProtocol)target;
- (SYDClientProtocolProxy)initWithTarget:(id)target;
- (void)storeDidChangeWithStoreID:(id)d changeDictionary:(id)dictionary;
@end

@implementation SYDClientProtocolProxy

- (SYDClientProtocolProxy)initWithTarget:(id)target
{
  targetCopy = target;
  v8.receiver = self;
  v8.super_class = SYDClientProtocolProxy;
  v5 = [(SYDClientProtocolProxy *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_target, targetCopy);
  }

  return v6;
}

- (void)storeDidChangeWithStoreID:(id)d changeDictionary:(id)dictionary
{
  dCopy = d;
  dictionaryCopy = dictionary;
  target = [(SYDClientProtocolProxy *)self target];
  if (target)
  {
    target2 = [(SYDClientProtocolProxy *)self target];
    [target2 storeDidChangeWithStoreID:dCopy changeDictionary:dictionaryCopy];
  }

  else
  {
    target2 = SYDGetConnectionLog();
    if (os_log_type_enabled(target2, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_1C8626000, target2, OS_LOG_TYPE_INFO, "Received storeDidChange for invalidated connection", v10, 2u);
    }
  }
}

- (SYDClientProtocol)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

@end