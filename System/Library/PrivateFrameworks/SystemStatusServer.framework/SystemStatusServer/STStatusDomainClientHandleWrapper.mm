@interface STStatusDomainClientHandleWrapper
- (STStatusDomainClientHandle)wrappedClientHandle;
- (STStatusDomainClientHandleWrapper)initWithWrappedClientHandle:(id)a3 preferredLocalizations:(id)a4;
- (void)observeData:(id)a3 forDomain:(unint64_t)a4 withChangeContext:(id)a5;
@end

@implementation STStatusDomainClientHandleWrapper

- (STStatusDomainClientHandle)wrappedClientHandle
{
  WeakRetained = objc_loadWeakRetained(&self->_wrappedClientHandle);

  return WeakRetained;
}

- (STStatusDomainClientHandleWrapper)initWithWrappedClientHandle:(id)a3 preferredLocalizations:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = STStatusDomainClientHandleWrapper;
  v8 = [(STStatusDomainClientHandleWrapper *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_wrappedClientHandle, v6);
    v10 = [v7 copy];
    preferredLocalizations = v9->_preferredLocalizations;
    v9->_preferredLocalizations = v10;
  }

  return v9;
}

- (void)observeData:(id)a3 forDomain:(unint64_t)a4 withChangeContext:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(STStatusDomainClientHandleWrapper *)self wrappedClientHandle];
  [v10 observeData:v9 forDomain:a4 withChangeContext:v8];
}

@end