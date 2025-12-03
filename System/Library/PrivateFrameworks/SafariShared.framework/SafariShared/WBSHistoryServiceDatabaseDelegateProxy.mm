@interface WBSHistoryServiceDatabaseDelegateProxy
- (WBSHistoryServiceDatabaseDelegateProxy)initWithProxy:(id)proxy;
- (void)handleEvent:(id)event completionHandler:(id)handler;
- (void)reportPermanentIDsForItems:(id)items completionHandler:(id)handler;
- (void)reportPermanentIDsForVisits:(id)visits completionHandler:(id)handler;
- (void)reportSevereError:(id)error completionHandler:(id)handler;
@end

@implementation WBSHistoryServiceDatabaseDelegateProxy

- (WBSHistoryServiceDatabaseDelegateProxy)initWithProxy:(id)proxy
{
  proxyCopy = proxy;
  v10.receiver = self;
  v10.super_class = WBSHistoryServiceDatabaseDelegateProxy;
  v6 = [(WBSHistoryServiceDatabaseDelegateProxy *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_proxy, proxy);
    v8 = v7;
  }

  return v7;
}

- (void)reportPermanentIDsForItems:(id)items completionHandler:(id)handler
{
  proxy = self->_proxy;
  handlerCopy = handler;
  itemsCopy = items;
  v8 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:handlerCopy];
  [v8 reportPermanentIDsForItems:itemsCopy completionHandler:handlerCopy];
}

- (void)reportPermanentIDsForVisits:(id)visits completionHandler:(id)handler
{
  proxy = self->_proxy;
  handlerCopy = handler;
  visitsCopy = visits;
  v8 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:handlerCopy];
  [v8 reportPermanentIDsForVisits:visitsCopy completionHandler:handlerCopy];
}

- (void)reportSevereError:(id)error completionHandler:(id)handler
{
  handlerCopy = handler;
  proxy = self->_proxy;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __78__WBSHistoryServiceDatabaseDelegateProxy_reportSevereError_completionHandler___block_invoke;
  v11[3] = &unk_1E7FB8300;
  v12 = handlerCopy;
  v8 = handlerCopy;
  errorCopy = error;
  v10 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:v11];
  [v10 reportSevereError:errorCopy completionHandler:v8];
}

- (void)handleEvent:(id)event completionHandler:(id)handler
{
  proxy = self->_proxy;
  handlerCopy = handler;
  eventCopy = event;
  v8 = [(NSXPCProxyCreating *)proxy remoteObjectProxyWithErrorHandler:handlerCopy];
  [v8 handleEvent:eventCopy completionHandler:handlerCopy];
}

@end