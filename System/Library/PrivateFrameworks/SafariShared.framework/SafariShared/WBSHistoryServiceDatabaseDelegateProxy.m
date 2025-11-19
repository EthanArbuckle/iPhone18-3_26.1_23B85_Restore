@interface WBSHistoryServiceDatabaseDelegateProxy
- (WBSHistoryServiceDatabaseDelegateProxy)initWithProxy:(id)a3;
- (void)handleEvent:(id)a3 completionHandler:(id)a4;
- (void)reportPermanentIDsForItems:(id)a3 completionHandler:(id)a4;
- (void)reportPermanentIDsForVisits:(id)a3 completionHandler:(id)a4;
- (void)reportSevereError:(id)a3 completionHandler:(id)a4;
@end

@implementation WBSHistoryServiceDatabaseDelegateProxy

- (WBSHistoryServiceDatabaseDelegateProxy)initWithProxy:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = WBSHistoryServiceDatabaseDelegateProxy;
  v6 = [(WBSHistoryServiceDatabaseDelegateProxy *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_proxy, a3);
    v8 = v7;
  }

  return v7;
}

- (void)reportPermanentIDsForItems:(id)a3 completionHandler:(id)a4
{
  proxy = self->_proxy;
  v6 = a4;
  v7 = a3;
  v8 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:v6];
  [v8 reportPermanentIDsForItems:v7 completionHandler:v6];
}

- (void)reportPermanentIDsForVisits:(id)a3 completionHandler:(id)a4
{
  proxy = self->_proxy;
  v6 = a4;
  v7 = a3;
  v8 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:v6];
  [v8 reportPermanentIDsForVisits:v7 completionHandler:v6];
}

- (void)reportSevereError:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  proxy = self->_proxy;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __78__WBSHistoryServiceDatabaseDelegateProxy_reportSevereError_completionHandler___block_invoke;
  v11[3] = &unk_1E7FB8300;
  v12 = v6;
  v8 = v6;
  v9 = a3;
  v10 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:v11];
  [v10 reportSevereError:v9 completionHandler:v8];
}

- (void)handleEvent:(id)a3 completionHandler:(id)a4
{
  proxy = self->_proxy;
  v6 = a4;
  v7 = a3;
  v8 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:v6];
  [v8 handleEvent:v7 completionHandler:v6];
}

@end