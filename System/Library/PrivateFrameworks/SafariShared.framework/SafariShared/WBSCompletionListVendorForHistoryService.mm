@interface WBSCompletionListVendorForHistoryService
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (WBSCompletionListVendorForHistoryService)initWithDataSource:(id)a3;
- (WBSCompletionListVendorForHistoryServiceDataSource)dataSource;
- (void)_connect;
@end

@implementation WBSCompletionListVendorForHistoryService

- (WBSCompletionListVendorForHistoryService)initWithDataSource:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = WBSCompletionListVendorForHistoryService;
  v5 = [(WBSCompletionListVendorForHistoryService *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_dataSource, v4);
    [(WBSCompletionListVendorForHistoryService *)v6 _connect];
    v7 = v6;
  }

  return v6;
}

- (void)_connect
{
  v3 = [MEMORY[0x1E696B0D8] anonymousListener];
  xpcListener = self->_xpcListener;
  self->_xpcListener = v3;

  [(NSXPCListener *)self->_xpcListener setDelegate:self];
  [(NSXPCListener *)self->_xpcListener resume];
  v5 = objc_alloc_init(WBSHistoryConnectionProxy);
  historyProxy = self->_historyProxy;
  self->_historyProxy = v5;

  v7 = self->_historyProxy;
  v8 = [(NSXPCListener *)self->_xpcListener endpoint];
  [(WBSHistoryConnectionProxy *)v7 setCompletionListVendorEndpoint:v8 completionHandler:&__block_literal_global_23];
}

void __52__WBSCompletionListVendorForHistoryService__connect__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = WBS_LOG_CHANNEL_PREFIXHistory();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __52__WBSCompletionListVendorForHistoryService__connect__block_invoke_cold_1(v4, v2);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_1BB6F3000, v4, OS_LOG_TYPE_INFO, "Successfully sent completion list endpoint to history service.", v5, 2u);
  }
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    [v7 auditToken];
  }

  HasEntitlement = WBSAuditTokenHasEntitlement();
  if (HasEntitlement)
  {
    [(WBSCompletionListVendorForHistoryService *)self _setExportedInterfaceAndObjectForConnection:v8];
    [v8 resume];
  }

  else
  {
    v10 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [WBSCompletionListVendorForHistoryService listener:v10 shouldAcceptNewConnection:?];
    }
  }

  return HasEntitlement;
}

- (WBSCompletionListVendorForHistoryServiceDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

void __52__WBSCompletionListVendorForHistoryService__connect__block_invoke_cold_1(void *a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_1BB6F3000, v3, OS_LOG_TYPE_ERROR, "Error sending completion list endpoint to history service: %{public}@", &v5, 0xCu);
}

@end