@interface WBSBrowsingDataImportServiceProxy
- (WBSBrowsingDataImportServiceProxy)init;
- (WBSBrowsingDataImportServiceProxy)initWithConnection:(id)a3 proxy:(id)a4;
- (WBSBrowsingDataImportServiceProxy)initWithInterface:(id)a3;
- (id)_defaultProxyErrorHandlerWithReplyHandler:(id)a3;
- (id)_defaultProxyErrorHandlerWithSimpleReplyHandler:(id)a3;
- (void)parseChromeExtensionsFromFileHandle:(id)a3 delegate:(id)a4 completionHandler:(id)a5;
- (void)parseChromeHistoryJSONFromFileHandle:(id)a3 ageLimit:(double)a4 delegate:(id)a5 completionHandler:(id)a6;
- (void)parseCreditCardJSONFromFileHandle:(id)a3 delegate:(id)a4 completionHandler:(id)a5;
- (void)parseExtensionsFromFileHandle:(id)a3 delegate:(id)a4 completionHandler:(id)a5;
- (void)parseHistoryJSONFromFileHandle:(id)a3 ageLimit:(double)a4 delegate:(id)a5 completionHandler:(id)a6;
- (void)parseNetscapeBookmarkFromFileHandle:(id)a3 delegate:(id)a4 completionHandler:(id)a5;
- (void)scanImportURLs:(id)a3 sandboxExtensions:(id)a4 completionHandler:(id)a5;
@end

@implementation WBSBrowsingDataImportServiceProxy

- (WBSBrowsingDataImportServiceProxy)init
{
  v3 = WBSBrowsingDataImportServiceInterface();
  v4 = [(WBSBrowsingDataImportServiceProxy *)self initWithInterface:v3];

  return v4;
}

- (WBSBrowsingDataImportServiceProxy)initWithInterface:(id)a3
{
  v4 = initWithInterface__once;
  v5 = a3;
  if (v4 != -1)
  {
    [WBSBrowsingDataImportServiceProxy initWithInterface:];
  }

  v6 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithServiceName:@"com.apple.Safari.BrowsingDataImport"];
  [v6 setRemoteObjectInterface:v5];

  [v6 resume];
  v7 = [v6 remoteObjectProxy];
  v8 = [(WBSBrowsingDataImportServiceProxy *)self initWithConnection:v6 proxy:v7];

  return v8;
}

- (WBSBrowsingDataImportServiceProxy)initWithConnection:(id)a3 proxy:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = WBSBrowsingDataImportServiceProxy;
  v9 = [(WBSBrowsingDataImportServiceProxy *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_connection, a3);
    objc_storeStrong(&v10->_proxy, a4);
    v11 = v10;
  }

  return v10;
}

- (id)_defaultProxyErrorHandlerWithReplyHandler:(id)a3
{
  v4 = a3;
  v5 = self->_connection;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __79__WBSBrowsingDataImportServiceProxy__defaultProxyErrorHandlerWithReplyHandler___block_invoke;
  v10[3] = &unk_1E7CF2988;
  v11 = v5;
  v12 = v4;
  v6 = v5;
  v7 = v4;
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

- (id)_defaultProxyErrorHandlerWithSimpleReplyHandler:(id)a3
{
  v4 = a3;
  v5 = self->_connection;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __85__WBSBrowsingDataImportServiceProxy__defaultProxyErrorHandlerWithSimpleReplyHandler___block_invoke;
  v10[3] = &unk_1E7CF2988;
  v11 = v5;
  v12 = v4;
  v6 = v5;
  v7 = v4;
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

- (void)parseChromeExtensionsFromFileHandle:(id)a3 delegate:(id)a4 completionHandler:(id)a5
{
  proxy = self->_proxy;
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [(WBSBrowsingDataImportServiceProxy *)self _defaultProxyErrorHandlerWithReplyHandler:v9];
  v13 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:v12];

  [v13 parseChromeExtensionsFromFileHandle:v11 delegate:v10 completionHandler:v9];
}

- (void)parseHistoryJSONFromFileHandle:(id)a3 ageLimit:(double)a4 delegate:(id)a5 completionHandler:(id)a6
{
  proxy = self->_proxy;
  v11 = a6;
  v12 = a5;
  v13 = a3;
  v14 = [(WBSBrowsingDataImportServiceProxy *)self _defaultProxyErrorHandlerWithReplyHandler:v11];
  v15 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:v14];

  [v15 parseHistoryJSONFromFileHandle:v13 ageLimit:v12 delegate:v11 completionHandler:a4];
}

- (void)parseCreditCardJSONFromFileHandle:(id)a3 delegate:(id)a4 completionHandler:(id)a5
{
  proxy = self->_proxy;
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [(WBSBrowsingDataImportServiceProxy *)self _defaultProxyErrorHandlerWithReplyHandler:v9];
  v13 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:v12];

  [v13 parseCreditCardJSONFromFileHandle:v11 delegate:v10 completionHandler:v9];
}

- (void)parseNetscapeBookmarkFromFileHandle:(id)a3 delegate:(id)a4 completionHandler:(id)a5
{
  proxy = self->_proxy;
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [(WBSBrowsingDataImportServiceProxy *)self _defaultProxyErrorHandlerWithReplyHandler:v9];
  v13 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:v12];

  [v13 parseNetscapeBookmarkFromFileHandle:v11 delegate:v10 completionHandler:v9];
}

- (void)parseExtensionsFromFileHandle:(id)a3 delegate:(id)a4 completionHandler:(id)a5
{
  proxy = self->_proxy;
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [(WBSBrowsingDataImportServiceProxy *)self _defaultProxyErrorHandlerWithReplyHandler:v9];
  v13 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:v12];

  [v13 parseExtensionsFromFileHandle:v11 delegate:v10 completionHandler:v9];
}

- (void)parseChromeHistoryJSONFromFileHandle:(id)a3 ageLimit:(double)a4 delegate:(id)a5 completionHandler:(id)a6
{
  proxy = self->_proxy;
  v11 = a6;
  v12 = a5;
  v13 = a3;
  v14 = [(WBSBrowsingDataImportServiceProxy *)self _defaultProxyErrorHandlerWithReplyHandler:v11];
  v15 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:v14];

  [v15 parseChromeHistoryJSONFromFileHandle:v13 ageLimit:v12 delegate:v11 completionHandler:a4];
}

- (void)scanImportURLs:(id)a3 sandboxExtensions:(id)a4 completionHandler:(id)a5
{
  proxy = self->_proxy;
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [(WBSBrowsingDataImportServiceProxy *)self _defaultProxyErrorHandlerWithSimpleReplyHandler:v9];
  v13 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:v12];

  [v13 scanImportURLs:v11 sandboxExtensions:v10 completionHandler:v9];
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