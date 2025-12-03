@interface WBSBrowsingDataImportServiceProxy
- (WBSBrowsingDataImportServiceProxy)init;
- (WBSBrowsingDataImportServiceProxy)initWithConnection:(id)connection proxy:(id)proxy;
- (WBSBrowsingDataImportServiceProxy)initWithInterface:(id)interface;
- (id)_defaultProxyErrorHandlerWithReplyHandler:(id)handler;
- (id)_defaultProxyErrorHandlerWithSimpleReplyHandler:(id)handler;
- (void)parseChromeExtensionsFromFileHandle:(id)handle delegate:(id)delegate completionHandler:(id)handler;
- (void)parseChromeHistoryJSONFromFileHandle:(id)handle ageLimit:(double)limit delegate:(id)delegate completionHandler:(id)handler;
- (void)parseCreditCardJSONFromFileHandle:(id)handle delegate:(id)delegate completionHandler:(id)handler;
- (void)parseExtensionsFromFileHandle:(id)handle delegate:(id)delegate completionHandler:(id)handler;
- (void)parseHistoryJSONFromFileHandle:(id)handle ageLimit:(double)limit delegate:(id)delegate completionHandler:(id)handler;
- (void)parseNetscapeBookmarkFromFileHandle:(id)handle delegate:(id)delegate completionHandler:(id)handler;
- (void)scanImportURLs:(id)ls sandboxExtensions:(id)extensions completionHandler:(id)handler;
@end

@implementation WBSBrowsingDataImportServiceProxy

- (WBSBrowsingDataImportServiceProxy)init
{
  v3 = WBSBrowsingDataImportServiceInterface();
  v4 = [(WBSBrowsingDataImportServiceProxy *)self initWithInterface:v3];

  return v4;
}

- (WBSBrowsingDataImportServiceProxy)initWithInterface:(id)interface
{
  v4 = initWithInterface__once;
  interfaceCopy = interface;
  if (v4 != -1)
  {
    [WBSBrowsingDataImportServiceProxy initWithInterface:];
  }

  v6 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithServiceName:@"com.apple.Safari.BrowsingDataImport"];
  [v6 setRemoteObjectInterface:interfaceCopy];

  [v6 resume];
  remoteObjectProxy = [v6 remoteObjectProxy];
  v8 = [(WBSBrowsingDataImportServiceProxy *)self initWithConnection:v6 proxy:remoteObjectProxy];

  return v8;
}

- (WBSBrowsingDataImportServiceProxy)initWithConnection:(id)connection proxy:(id)proxy
{
  connectionCopy = connection;
  proxyCopy = proxy;
  v13.receiver = self;
  v13.super_class = WBSBrowsingDataImportServiceProxy;
  v9 = [(WBSBrowsingDataImportServiceProxy *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_connection, connection);
    objc_storeStrong(&v10->_proxy, proxy);
    v11 = v10;
  }

  return v10;
}

- (id)_defaultProxyErrorHandlerWithReplyHandler:(id)handler
{
  handlerCopy = handler;
  v5 = self->_connection;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __79__WBSBrowsingDataImportServiceProxy__defaultProxyErrorHandlerWithReplyHandler___block_invoke;
  v10[3] = &unk_1E7CF2988;
  v11 = v5;
  v12 = handlerCopy;
  v6 = v5;
  v7 = handlerCopy;
  v8 = _Block_copy(v10);

  return v8;
}

void __79__WBSBrowsingDataImportServiceProxy__defaultProxyErrorHandlerWithReplyHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }

  else
  {
    v5 = WBS_LOG_CHANNEL_PREFIXOther();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __79__WBSBrowsingDataImportServiceProxy__defaultProxyErrorHandlerWithReplyHandler___block_invoke_cold_1(v5, v3);
    }
  }

  v6 = *(a1 + 32);
  objc_opt_class();
}

- (id)_defaultProxyErrorHandlerWithSimpleReplyHandler:(id)handler
{
  handlerCopy = handler;
  v5 = self->_connection;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __85__WBSBrowsingDataImportServiceProxy__defaultProxyErrorHandlerWithSimpleReplyHandler___block_invoke;
  v10[3] = &unk_1E7CF2988;
  v11 = v5;
  v12 = handlerCopy;
  v6 = v5;
  v7 = handlerCopy;
  v8 = _Block_copy(v10);

  return v8;
}

void __85__WBSBrowsingDataImportServiceProxy__defaultProxyErrorHandlerWithSimpleReplyHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(v4, 0, v3);
  }

  else
  {
    v5 = WBS_LOG_CHANNEL_PREFIXOther();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __79__WBSBrowsingDataImportServiceProxy__defaultProxyErrorHandlerWithReplyHandler___block_invoke_cold_1(v5, v3);
    }
  }

  v6 = *(a1 + 32);
  objc_opt_class();
}

- (void)parseChromeExtensionsFromFileHandle:(id)handle delegate:(id)delegate completionHandler:(id)handler
{
  proxy = self->_proxy;
  handlerCopy = handler;
  delegateCopy = delegate;
  handleCopy = handle;
  v12 = [(WBSBrowsingDataImportServiceProxy *)self _defaultProxyErrorHandlerWithReplyHandler:handlerCopy];
  v13 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:v12];

  [v13 parseChromeExtensionsFromFileHandle:handleCopy delegate:delegateCopy completionHandler:handlerCopy];
}

- (void)parseHistoryJSONFromFileHandle:(id)handle ageLimit:(double)limit delegate:(id)delegate completionHandler:(id)handler
{
  proxy = self->_proxy;
  handlerCopy = handler;
  delegateCopy = delegate;
  handleCopy = handle;
  v14 = [(WBSBrowsingDataImportServiceProxy *)self _defaultProxyErrorHandlerWithReplyHandler:handlerCopy];
  v15 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:v14];

  [v15 parseHistoryJSONFromFileHandle:handleCopy ageLimit:delegateCopy delegate:handlerCopy completionHandler:limit];
}

- (void)parseCreditCardJSONFromFileHandle:(id)handle delegate:(id)delegate completionHandler:(id)handler
{
  proxy = self->_proxy;
  handlerCopy = handler;
  delegateCopy = delegate;
  handleCopy = handle;
  v12 = [(WBSBrowsingDataImportServiceProxy *)self _defaultProxyErrorHandlerWithReplyHandler:handlerCopy];
  v13 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:v12];

  [v13 parseCreditCardJSONFromFileHandle:handleCopy delegate:delegateCopy completionHandler:handlerCopy];
}

- (void)parseNetscapeBookmarkFromFileHandle:(id)handle delegate:(id)delegate completionHandler:(id)handler
{
  proxy = self->_proxy;
  handlerCopy = handler;
  delegateCopy = delegate;
  handleCopy = handle;
  v12 = [(WBSBrowsingDataImportServiceProxy *)self _defaultProxyErrorHandlerWithReplyHandler:handlerCopy];
  v13 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:v12];

  [v13 parseNetscapeBookmarkFromFileHandle:handleCopy delegate:delegateCopy completionHandler:handlerCopy];
}

- (void)parseExtensionsFromFileHandle:(id)handle delegate:(id)delegate completionHandler:(id)handler
{
  proxy = self->_proxy;
  handlerCopy = handler;
  delegateCopy = delegate;
  handleCopy = handle;
  v12 = [(WBSBrowsingDataImportServiceProxy *)self _defaultProxyErrorHandlerWithReplyHandler:handlerCopy];
  v13 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:v12];

  [v13 parseExtensionsFromFileHandle:handleCopy delegate:delegateCopy completionHandler:handlerCopy];
}

- (void)parseChromeHistoryJSONFromFileHandle:(id)handle ageLimit:(double)limit delegate:(id)delegate completionHandler:(id)handler
{
  proxy = self->_proxy;
  handlerCopy = handler;
  delegateCopy = delegate;
  handleCopy = handle;
  v14 = [(WBSBrowsingDataImportServiceProxy *)self _defaultProxyErrorHandlerWithReplyHandler:handlerCopy];
  v15 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:v14];

  [v15 parseChromeHistoryJSONFromFileHandle:handleCopy ageLimit:delegateCopy delegate:handlerCopy completionHandler:limit];
}

- (void)scanImportURLs:(id)ls sandboxExtensions:(id)extensions completionHandler:(id)handler
{
  proxy = self->_proxy;
  handlerCopy = handler;
  extensionsCopy = extensions;
  lsCopy = ls;
  v12 = [(WBSBrowsingDataImportServiceProxy *)self _defaultProxyErrorHandlerWithSimpleReplyHandler:handlerCopy];
  v13 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:v12];

  [v13 scanImportURLs:lsCopy sandboxExtensions:extensionsCopy completionHandler:handlerCopy];
}

void __79__WBSBrowsingDataImportServiceProxy__defaultProxyErrorHandlerWithReplyHandler___block_invoke_cold_1(void *a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_2(&dword_1B8447000, v5, v6, "XPC Proxy reported: %{public}@", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x1E69E9840];
}

@end