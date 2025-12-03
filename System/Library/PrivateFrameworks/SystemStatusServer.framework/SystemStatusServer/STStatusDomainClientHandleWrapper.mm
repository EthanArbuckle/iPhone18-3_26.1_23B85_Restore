@interface STStatusDomainClientHandleWrapper
- (STStatusDomainClientHandle)wrappedClientHandle;
- (STStatusDomainClientHandleWrapper)initWithWrappedClientHandle:(id)handle preferredLocalizations:(id)localizations;
- (void)observeData:(id)data forDomain:(unint64_t)domain withChangeContext:(id)context;
@end

@implementation STStatusDomainClientHandleWrapper

- (STStatusDomainClientHandle)wrappedClientHandle
{
  WeakRetained = objc_loadWeakRetained(&self->_wrappedClientHandle);

  return WeakRetained;
}

- (STStatusDomainClientHandleWrapper)initWithWrappedClientHandle:(id)handle preferredLocalizations:(id)localizations
{
  handleCopy = handle;
  localizationsCopy = localizations;
  v13.receiver = self;
  v13.super_class = STStatusDomainClientHandleWrapper;
  v8 = [(STStatusDomainClientHandleWrapper *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_wrappedClientHandle, handleCopy);
    v10 = [localizationsCopy copy];
    preferredLocalizations = v9->_preferredLocalizations;
    v9->_preferredLocalizations = v10;
  }

  return v9;
}

- (void)observeData:(id)data forDomain:(unint64_t)domain withChangeContext:(id)context
{
  contextCopy = context;
  dataCopy = data;
  wrappedClientHandle = [(STStatusDomainClientHandleWrapper *)self wrappedClientHandle];
  [wrappedClientHandle observeData:dataCopy forDomain:domain withChangeContext:contextCopy];
}

@end