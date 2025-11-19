@interface WBSCloudHistoryServiceProxy
- (WBSCloudHistoryServiceProxy)initWithProxy:(id)a3;
- (id)_defaultProxyErrorHandlerWithSimpleReplyHandler:(id)a3;
- (void)fetchAndMergeChangesBypassingThrottler:(BOOL)a3 completionHandler:(id)a4;
- (void)fetchDateOfNextPermittedSaveChangesAttemptWithCompletionHandler:(id)a3;
- (void)resetForAccountChangeWithCompletionHandler:(id)a3;
- (void)saveChangesBypassingThrottler:(BOOL)a3 completionHandler:(id)a4;
- (void)updateConfiguration:(id)a3 completionHandler:(id)a4;
- (void)updateProfileLocalIdentifiersToServerIdentifiersMap:(id)a3 completionHandler:(id)a4;
@end

@implementation WBSCloudHistoryServiceProxy

- (WBSCloudHistoryServiceProxy)initWithProxy:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = WBSCloudHistoryServiceProxy;
  v6 = [(WBSCloudHistoryServiceProxy *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_proxy, a3);
    v8 = v7;
  }

  return v7;
}

- (id)_defaultProxyErrorHandlerWithSimpleReplyHandler:(id)a3
{
  v3 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __79__WBSCloudHistoryServiceProxy__defaultProxyErrorHandlerWithSimpleReplyHandler___block_invoke;
  v7[3] = &unk_1E7FB8300;
  v8 = v3;
  v4 = v3;
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

- (void)fetchDateOfNextPermittedSaveChangesAttemptWithCompletionHandler:(id)a3
{
  proxy = self->_proxy;
  v5 = a3;
  v6 = [(WBSCloudHistoryServiceProxy *)self _defaultProxyErrorHandlerWithSimpleReplyHandler:v5];
  v7 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:v6];

  [v7 fetchDateOfNextPermittedSaveChangesAttemptWithCompletionHandler:v5];
}

- (void)updateConfiguration:(id)a3 completionHandler:(id)a4
{
  proxy = self->_proxy;
  v6 = a4;
  v7 = a3;
  v8 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:v6];
  [v8 updateConfiguration:v7 completionHandler:v6];
}

- (void)resetForAccountChangeWithCompletionHandler:(id)a3
{
  proxy = self->_proxy;
  v4 = a3;
  v5 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:v4];
  [v5 resetForAccountChangeWithCompletionHandler:v4];
}

- (void)fetchAndMergeChangesBypassingThrottler:(BOOL)a3 completionHandler:(id)a4
{
  v4 = a3;
  proxy = self->_proxy;
  v6 = a4;
  v7 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:v6];
  [v7 fetchAndMergeChangesBypassingThrottler:v4 completionHandler:v6];
}

- (void)saveChangesBypassingThrottler:(BOOL)a3 completionHandler:(id)a4
{
  v4 = a3;
  proxy = self->_proxy;
  v6 = a4;
  v7 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:v6];
  [v7 saveChangesBypassingThrottler:v4 completionHandler:v6];
}

- (void)updateProfileLocalIdentifiersToServerIdentifiersMap:(id)a3 completionHandler:(id)a4
{
  proxy = self->_proxy;
  v6 = a4;
  v7 = a3;
  v8 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:v6];
  [v8 updateProfileLocalIdentifiersToServerIdentifiersMap:v7 completionHandler:v6];
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