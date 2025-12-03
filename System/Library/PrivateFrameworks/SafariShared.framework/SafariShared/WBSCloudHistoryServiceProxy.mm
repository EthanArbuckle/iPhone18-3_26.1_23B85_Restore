@interface WBSCloudHistoryServiceProxy
- (WBSCloudHistoryServiceProxy)initWithProxy:(id)proxy;
- (id)_defaultProxyErrorHandlerWithSimpleReplyHandler:(id)handler;
- (void)fetchAndMergeChangesBypassingThrottler:(BOOL)throttler completionHandler:(id)handler;
- (void)fetchDateOfNextPermittedSaveChangesAttemptWithCompletionHandler:(id)handler;
- (void)resetForAccountChangeWithCompletionHandler:(id)handler;
- (void)saveChangesBypassingThrottler:(BOOL)throttler completionHandler:(id)handler;
- (void)updateConfiguration:(id)configuration completionHandler:(id)handler;
- (void)updateProfileLocalIdentifiersToServerIdentifiersMap:(id)map completionHandler:(id)handler;
@end

@implementation WBSCloudHistoryServiceProxy

- (WBSCloudHistoryServiceProxy)initWithProxy:(id)proxy
{
  proxyCopy = proxy;
  v10.receiver = self;
  v10.super_class = WBSCloudHistoryServiceProxy;
  v6 = [(WBSCloudHistoryServiceProxy *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_proxy, proxy);
    v8 = v7;
  }

  return v7;
}

- (id)_defaultProxyErrorHandlerWithSimpleReplyHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __79__WBSCloudHistoryServiceProxy__defaultProxyErrorHandlerWithSimpleReplyHandler___block_invoke;
  v7[3] = &unk_1E7FB8300;
  v8 = handlerCopy;
  v4 = handlerCopy;
  v5 = MEMORY[0x1BFB13CE0](v7);

  return v5;
}

void __79__WBSCloudHistoryServiceProxy__defaultProxyErrorHandlerWithSimpleReplyHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, 0, v3);
  }

  else
  {
    v5 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __79__WBSCloudHistoryServiceProxy__defaultProxyErrorHandlerWithSimpleReplyHandler___block_invoke_cold_1(v5, v3);
    }
  }
}

- (void)fetchDateOfNextPermittedSaveChangesAttemptWithCompletionHandler:(id)handler
{
  proxy = self->_proxy;
  handlerCopy = handler;
  v6 = [(WBSCloudHistoryServiceProxy *)self _defaultProxyErrorHandlerWithSimpleReplyHandler:handlerCopy];
  v7 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:v6];

  [v7 fetchDateOfNextPermittedSaveChangesAttemptWithCompletionHandler:handlerCopy];
}

- (void)updateConfiguration:(id)configuration completionHandler:(id)handler
{
  proxy = self->_proxy;
  handlerCopy = handler;
  configurationCopy = configuration;
  v8 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:handlerCopy];
  [v8 updateConfiguration:configurationCopy completionHandler:handlerCopy];
}

- (void)resetForAccountChangeWithCompletionHandler:(id)handler
{
  proxy = self->_proxy;
  handlerCopy = handler;
  v5 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:handlerCopy];
  [v5 resetForAccountChangeWithCompletionHandler:handlerCopy];
}

- (void)fetchAndMergeChangesBypassingThrottler:(BOOL)throttler completionHandler:(id)handler
{
  throttlerCopy = throttler;
  proxy = self->_proxy;
  handlerCopy = handler;
  v7 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:handlerCopy];
  [v7 fetchAndMergeChangesBypassingThrottler:throttlerCopy completionHandler:handlerCopy];
}

- (void)saveChangesBypassingThrottler:(BOOL)throttler completionHandler:(id)handler
{
  throttlerCopy = throttler;
  proxy = self->_proxy;
  handlerCopy = handler;
  v7 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:handlerCopy];
  [v7 saveChangesBypassingThrottler:throttlerCopy completionHandler:handlerCopy];
}

- (void)updateProfileLocalIdentifiersToServerIdentifiersMap:(id)map completionHandler:(id)handler
{
  proxy = self->_proxy;
  handlerCopy = handler;
  mapCopy = map;
  v8 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:handlerCopy];
  [v8 updateProfileLocalIdentifiersToServerIdentifiersMap:mapCopy completionHandler:handlerCopy];
}

void __79__WBSCloudHistoryServiceProxy__defaultProxyErrorHandlerWithSimpleReplyHandler___block_invoke_cold_1(void *a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_1BB6F3000, v3, OS_LOG_TYPE_ERROR, "XPC Proxy reported: %{public}@", &v5, 0xCu);
}

@end