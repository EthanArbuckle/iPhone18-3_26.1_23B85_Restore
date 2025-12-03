@interface PLPhotoAnalysisServiceRemoteServiceProxy
- (BOOL)conformsToProtocol:(id)protocol;
- (BOOL)respondsToSelector:(SEL)selector;
- (PLPhotoAnalysisServiceRemoteServiceProxy)initWithServiceProvider:(id)provider remoteInterface:(id)interface synchronous:(BOOL)synchronous errorHandler:(id)handler;
- (id)methodSignatureForSelector:(SEL)selector;
- (void)forwardInvocation:(id)invocation;
@end

@implementation PLPhotoAnalysisServiceRemoteServiceProxy

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
  v5 = invocationCopy;
  if (self->_synchronous)
  {
    WeakRetained = objc_loadWeakRetained(&self->_service);
    v7 = [WeakRetained synchronousRemoteServiceProxyWithErrorHandler:self->_errorHandler];

    if (v7)
    {
      [v5 invokeWithTarget:v7];
    }
  }

  else
  {
    [invocationCopy retainArguments];
    v8 = objc_loadWeakRetained(&self->_service);
    errorHandler = self->_errorHandler;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __62__PLPhotoAnalysisServiceRemoteServiceProxy_forwardInvocation___block_invoke;
    v10[3] = &unk_1E75732D0;
    v11 = v5;
    [v8 remoteServiceProxyWithErrorHandler:errorHandler reply:v10];
  }
}

- (BOOL)respondsToSelector:(SEL)selector
{
  if (objc_opt_respondsToSelector())
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = PLPhotoAnalysisServiceRemoteServiceProxy;
  return [(PLPhotoAnalysisServiceRemoteServiceProxy *)&v6 respondsToSelector:selector];
}

- (id)methodSignatureForSelector:(SEL)selector
{
  protocol = [(NSXPCInterface *)self->_remoteInterface protocol];
  MethodDescription = protocol_getMethodDescription(protocol, selector, 1, 1);
  types = MethodDescription.types;
  if (!MethodDescription.name && (v8 = protocol_getMethodDescription(protocol, selector, 0, 1), types = v8.types, !v8.name) || ([MEMORY[0x1E695DF68] signatureWithObjCTypes:types], (v9 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v11.receiver = self;
    v11.super_class = PLPhotoAnalysisServiceRemoteServiceProxy;
    v9 = [(PLPhotoAnalysisServiceRemoteServiceProxy *)&v11 methodSignatureForSelector:selector];
  }

  return v9;
}

- (BOOL)conformsToProtocol:(id)protocol
{
  protocolCopy = protocol;
  v8.receiver = self;
  v8.super_class = PLPhotoAnalysisServiceRemoteServiceProxy;
  if ([(PLPhotoAnalysisServiceRemoteServiceProxy *)&v8 conformsToProtocol:protocolCopy])
  {
    v5 = 1;
  }

  else
  {
    protocol = [(NSXPCInterface *)self->_remoteInterface protocol];
    v5 = protocol_conformsToProtocol(protocol, protocolCopy);
  }

  return v5;
}

- (PLPhotoAnalysisServiceRemoteServiceProxy)initWithServiceProvider:(id)provider remoteInterface:(id)interface synchronous:(BOOL)synchronous errorHandler:(id)handler
{
  providerCopy = provider;
  interfaceCopy = interface;
  handlerCopy = handler;
  v18.receiver = self;
  v18.super_class = PLPhotoAnalysisServiceRemoteServiceProxy;
  v13 = [(PLPhotoAnalysisServiceRemoteServiceProxy *)&v18 init];
  v14 = v13;
  if (v13)
  {
    objc_storeWeak(&v13->_service, providerCopy);
    objc_storeStrong(&v14->_remoteInterface, interface);
    v14->_synchronous = synchronous;
    v15 = _Block_copy(handlerCopy);
    errorHandler = v14->_errorHandler;
    v14->_errorHandler = v15;
  }

  return v14;
}

@end