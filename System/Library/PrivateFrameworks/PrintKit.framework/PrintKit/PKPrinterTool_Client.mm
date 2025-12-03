@interface PKPrinterTool_Client
+ (id)sharedClient;
- (PKPrinterTool_Client)init;
- (id)ptConn;
- (id)ptConn_locked;
- (void)addPrinterToiCloud:(id)cloud;
- (void)browseInfoForPrinter:(id)printer timeout:(double)timeout completionHandler:(id)handler;
- (void)cancelJob:(int)job;
- (void)endpointResolve:(id)resolve timeout:(double)timeout completionHandler:(id)handler;
- (void)finishRequestWithCancel:(BOOL)cancel completionHandler:(id)handler;
- (void)getJobUpdateStatus:(int)status includeThumbnail:(BOOL)thumbnail completionHandler:(id)handler;
- (void)getLastUsedPrintersForCurrentNetworkCompletionHandler:(id)handler;
- (void)getRecentJobsCompletionHandler:(id)handler;
- (void)getiCloudPrintersWithCompletionHandler:(id)handler;
- (void)invalidate;
- (void)logiCloudPrintersCompletionHandler:(id)handler;
- (void)printerTool_checkAccessState:(id)state completionHandler:(id)handler;
- (void)printerTool_getPrinterDescription:(id)description assertReachability:(BOOL)reachability completionHandler:(id)handler;
- (void)printerTool_identifyPrinter:(id)printer message:(id)message actions:(id)actions;
- (void)printerTool_queryPrinter:(id)printer attributes:(id)attributes completionHandler:(id)handler;
- (void)printerTool_realPathForTmp:(id)tmp;
- (void)printerTool_removeKeychainItem:(id)item;
- (void)ptConn_locked;
- (void)removePrinterFromiCloud:(id)cloud;
- (void)resetPKCloudData;
- (void)setLastUsedPrintersForCurrentNetwork:(id)network;
- (void)setiCloudPrinters:(id)printers;
- (void)startStreamingRequest:(id)request printSettings:(id)settings completionHandler:(id)handler;
- (void)updateiCloudPrinter:(id)printer withInfo:(id)info forInfoKey:(id)key;
@end

@implementation PKPrinterTool_Client

- (PKPrinterTool_Client)init
{
  v3.receiver = self;
  v3.super_class = PKPrinterTool_Client;
  return [(PKPrinterTool_Client *)&v3 init];
}

+ (id)sharedClient
{
  if (+[PKPrinterTool_Client sharedClient]::sOnce != -1)
  {
    +[PKPrinterTool_Client sharedClient];
  }

  v3 = +[PKPrinterTool_Client sharedClient]::sSharedClient;

  return v3;
}

- (id)ptConn
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  ptConn_locked = [(PKPrinterTool_Client *)selfCopy ptConn_locked];
  objc_sync_exit(selfCopy);

  return ptConn_locked;
}

- (id)ptConn_locked
{
  conn_needsLock = self->_conn_needsLock;
  if (!conn_needsLock)
  {
    v4 = +[PKDefaults listenerProxy];
    if (v4)
    {
      v5 = objc_alloc(MEMORY[0x277CCAE80]);
      endpoint = [v4 endpoint];
      v7 = [v5 initWithListenerEndpoint:endpoint];
      v8 = self->_conn_needsLock;
      self->_conn_needsLock = v7;

      if (!self->_conn_needsLock)
      {
        v9 = _PKLogCategory(PKLogCategoryDefault[0]);
        [(PKPrinterTool_Client *)v9 ptConn_locked];
      }
    }

    else
    {
      v10 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.PrintKit.PrinterTool"];
      v11 = self->_conn_needsLock;
      self->_conn_needsLock = v10;
    }

    v12 = getPrintdRPCProtocolInterface();
    [(NSXPCConnection *)self->_conn_needsLock setRemoteObjectInterface:v12];

    v13 = self->_conn_needsLock;
    objc_initWeak(&location, self);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __37__PKPrinterTool_Client_ptConn_locked__block_invoke;
    v20[3] = &unk_279A85580;
    v14 = v13;
    v21 = v14;
    objc_copyWeak(&v22, &location);
    [(NSXPCConnection *)self->_conn_needsLock setInvalidationHandler:v20];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __37__PKPrinterTool_Client_ptConn_locked__block_invoke_4;
    v17[3] = &unk_279A85580;
    v15 = v14;
    v18 = v15;
    objc_copyWeak(&v19, &location);
    [(NSXPCConnection *)self->_conn_needsLock setInterruptionHandler:v17];
    [(NSXPCConnection *)self->_conn_needsLock activate];
    objc_destroyWeak(&v19);

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);

    conn_needsLock = self->_conn_needsLock;
  }

  return conn_needsLock;
}

- (void)invalidate
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v4 = selfCopy->_conn_needsLock;
  conn_needsLock = selfCopy->_conn_needsLock;
  selfCopy->_conn_needsLock = 0;

  objc_sync_exit(selfCopy);
  if (v4)
  {
    [(NSXPCConnection *)v4 invalidate];
  }
}

- (void)getRecentJobsCompletionHandler:(id)handler
{
  handlerCopy = handler;
  ptConn = [(PKPrinterTool_Client *)self ptConn];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __55__PKPrinterTool_Client_getRecentJobsCompletionHandler___block_invoke;
  v12 = &unk_279A855A8;
  v14 = a2;
  v7 = handlerCopy;
  v13 = v7;
  v8 = [ptConn remoteObjectProxyWithErrorHandler:&v9];

  if (v8)
  {
    [v8 getRecentJobsReply:{v7, v9, v10, v11, v12}];
  }

  else
  {
    (*(v7 + 2))(v7, 0, 0);
  }
}

- (void)getJobUpdateStatus:(int)status includeThumbnail:(BOOL)thumbnail completionHandler:(id)handler
{
  thumbnailCopy = thumbnail;
  v6 = *&status;
  handlerCopy = handler;
  ptConn = [(PKPrinterTool_Client *)self ptConn];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __78__PKPrinterTool_Client_getJobUpdateStatus_includeThumbnail_completionHandler___block_invoke;
  v16 = &unk_279A855A8;
  v18 = a2;
  v11 = handlerCopy;
  v17 = v11;
  v12 = [ptConn remoteObjectProxyWithErrorHandler:&v13];

  if (v12)
  {
    [v12 getJobUpdateStatus:v6 includeThumbnail:thumbnailCopy reply:{v11, v13, v14, v15, v16}];
  }

  else
  {
    (*(v11 + 2))(v11, 0);
  }
}

- (void)cancelJob:(int)job
{
  v3 = *&job;
  ptConn = [(PKPrinterTool_Client *)self ptConn];
  remoteObjectProxy = [ptConn remoteObjectProxy];

  if (remoteObjectProxy)
  {
    [remoteObjectProxy cancelJob:v3];
  }
}

- (void)getLastUsedPrintersForCurrentNetworkCompletionHandler:(id)handler
{
  handlerCopy = handler;
  ptConn = [(PKPrinterTool_Client *)self ptConn];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __78__PKPrinterTool_Client_getLastUsedPrintersForCurrentNetworkCompletionHandler___block_invoke;
  v12 = &unk_279A855A8;
  v14 = a2;
  v7 = handlerCopy;
  v13 = v7;
  v8 = [ptConn remoteObjectProxyWithErrorHandler:&v9];

  if (v8)
  {
    [v8 getLastUsedPrintersForCurrentNetworkReply:{v7, v9, v10, v11, v12}];
  }

  else
  {
    (*(v7 + 2))(v7, 0, 0);
  }
}

- (void)setLastUsedPrintersForCurrentNetwork:(id)network
{
  networkCopy = network;
  ptConn = [(PKPrinterTool_Client *)self ptConn];
  remoteObjectProxy = [ptConn remoteObjectProxy];

  if (remoteObjectProxy)
  {
    [remoteObjectProxy setLastUsedPrintersForCurrentNetwork:networkCopy];
  }
}

- (void)getiCloudPrintersWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  ptConn = [(PKPrinterTool_Client *)self ptConn];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __63__PKPrinterTool_Client_getiCloudPrintersWithCompletionHandler___block_invoke;
  v12 = &unk_279A855A8;
  v14 = a2;
  v7 = handlerCopy;
  v13 = v7;
  v8 = [ptConn remoteObjectProxyWithErrorHandler:&v9];

  if (v8)
  {
    [v8 getiCloudPrintersReply:{v7, v9, v10, v11, v12}];
  }

  else
  {
    (*(v7 + 2))(v7, 0);
  }
}

- (void)addPrinterToiCloud:(id)cloud
{
  cloudCopy = cloud;
  ptConn = [(PKPrinterTool_Client *)self ptConn];
  remoteObjectProxy = [ptConn remoteObjectProxy];

  if (remoteObjectProxy)
  {
    iCloudInfo = [cloudCopy iCloudInfo];
    [remoteObjectProxy addPrinterToiCloudWithInfo:iCloudInfo];
  }
}

- (void)removePrinterFromiCloud:(id)cloud
{
  cloudCopy = cloud;
  ptConn = [(PKPrinterTool_Client *)self ptConn];
  remoteObjectProxy = [ptConn remoteObjectProxy];

  if (remoteObjectProxy)
  {
    iCloudInfo = [cloudCopy iCloudInfo];
    [remoteObjectProxy removePrinterFromiCloudWithInfo:iCloudInfo];
  }
}

- (void)updateiCloudPrinter:(id)printer withInfo:(id)info forInfoKey:(id)key
{
  printerCopy = printer;
  infoCopy = info;
  keyCopy = key;
  ptConn = [(PKPrinterTool_Client *)self ptConn];
  remoteObjectProxy = [ptConn remoteObjectProxy];

  if (remoteObjectProxy)
  {
    iCloudInfo = [printerCopy iCloudInfo];
    [remoteObjectProxy updateiCloudPrinterInfo:iCloudInfo withNewInfo:infoCopy forInfoKey:keyCopy];
  }
}

- (void)setiCloudPrinters:(id)printers
{
  printersCopy = printers;
  ptConn = [(PKPrinterTool_Client *)self ptConn];
  remoteObjectProxy = [ptConn remoteObjectProxy];

  if (remoteObjectProxy)
  {
    [remoteObjectProxy setiCloudPrinters:printersCopy];
  }
}

- (void)resetPKCloudData
{
  ptConn = [(PKPrinterTool_Client *)self ptConn];
  remoteObjectProxy = [ptConn remoteObjectProxy];

  if (remoteObjectProxy)
  {
    [remoteObjectProxy resetPKCloudData];
  }
}

- (void)logiCloudPrintersCompletionHandler:(id)handler
{
  handlerCopy = handler;
  ptConn = [(PKPrinterTool_Client *)self ptConn];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __59__PKPrinterTool_Client_logiCloudPrintersCompletionHandler___block_invoke;
  v12 = &unk_279A855A8;
  v14 = a2;
  v7 = handlerCopy;
  v13 = v7;
  v8 = [ptConn remoteObjectProxyWithErrorHandler:&v9];

  if (v8)
  {
    [v8 logiCloudPrintersReply:{v7, v9, v10, v11, v12}];
  }

  else
  {
    (*(v7 + 2))(v7, 0);
  }
}

- (void)browseInfoForPrinter:(id)printer timeout:(double)timeout completionHandler:(id)handler
{
  printerCopy = printer;
  handlerCopy = handler;
  ptConn = [(PKPrinterTool_Client *)self ptConn];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __71__PKPrinterTool_Client_browseInfoForPrinter_timeout_completionHandler___block_invoke;
  v17 = &unk_279A855A8;
  v19 = a2;
  v12 = handlerCopy;
  v18 = v12;
  v13 = [ptConn remoteObjectProxyWithErrorHandler:&v14];

  if (v13)
  {
    [v13 browseInfoForPrinter:printerCopy timeout:v12 reply:{timeout, v14, v15, v16, v17}];
  }

  else
  {
    (*(v12 + 2))(v12, 0);
  }
}

- (void)endpointResolve:(id)resolve timeout:(double)timeout completionHandler:(id)handler
{
  resolveCopy = resolve;
  handlerCopy = handler;
  ptConn = [(PKPrinterTool_Client *)self ptConn];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __66__PKPrinterTool_Client_endpointResolve_timeout_completionHandler___block_invoke;
  v17 = &unk_279A855A8;
  v19 = a2;
  v12 = handlerCopy;
  v18 = v12;
  v13 = [ptConn remoteObjectProxyWithErrorHandler:&v14];

  if (v13)
  {
    [v13 _endpointResolve:resolveCopy timeout:v12 reply:{timeout, v14, v15, v16, v17}];
  }

  else
  {
    (*(v12 + 2))(v12, 0, 0);
  }
}

- (void)printerTool_realPathForTmp:(id)tmp
{
  tmpCopy = tmp;
  ptConn = [(PKPrinterTool_Client *)self ptConn];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __51__PKPrinterTool_Client_printerTool_realPathForTmp___block_invoke;
  v12 = &unk_279A855A8;
  v14 = a2;
  v7 = tmpCopy;
  v13 = v7;
  v8 = [ptConn remoteObjectProxyWithErrorHandler:&v9];

  if (v8)
  {
    [v8 _realPathForTmpReply:{v7, v9, v10, v11, v12}];
  }

  else
  {
    (*(v7 + 2))(v7, 0);
  }
}

- (void)printerTool_removeKeychainItem:(id)item
{
  itemCopy = item;
  ptConn = [(PKPrinterTool_Client *)self ptConn];
  remoteObjectProxy = [ptConn remoteObjectProxy];

  if (remoteObjectProxy)
  {
    [remoteObjectProxy _removeKeychainItem:itemCopy];
  }
}

- (void)printerTool_identifyPrinter:(id)printer message:(id)message actions:(id)actions
{
  printerCopy = printer;
  messageCopy = message;
  actionsCopy = actions;
  ptConn = [(PKPrinterTool_Client *)self ptConn];
  remoteObjectProxy = [ptConn remoteObjectProxy];

  if (remoteObjectProxy)
  {
    [remoteObjectProxy _identifyPrinter:printerCopy message:messageCopy actions:actionsCopy];
  }
}

- (void)printerTool_getPrinterDescription:(id)description assertReachability:(BOOL)reachability completionHandler:(id)handler
{
  reachabilityCopy = reachability;
  descriptionCopy = description;
  handlerCopy = handler;
  ptConn = [(PKPrinterTool_Client *)self ptConn];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __95__PKPrinterTool_Client_printerTool_getPrinterDescription_assertReachability_completionHandler___block_invoke;
  v17 = &unk_279A855A8;
  v19 = a2;
  v12 = handlerCopy;
  v18 = v12;
  v13 = [ptConn remoteObjectProxyWithErrorHandler:&v14];

  if (v13)
  {
    [v13 _getPrinterDescription:descriptionCopy assertReachability:reachabilityCopy reply:{v12, v14, v15, v16, v17}];
  }

  else
  {
    (*(v12 + 2))(v12, 0, 0);
  }
}

- (void)printerTool_queryPrinter:(id)printer attributes:(id)attributes completionHandler:(id)handler
{
  printerCopy = printer;
  attributesCopy = attributes;
  handlerCopy = handler;
  ptConn = [(PKPrinterTool_Client *)self ptConn];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __78__PKPrinterTool_Client_printerTool_queryPrinter_attributes_completionHandler___block_invoke;
  v17[3] = &unk_279A855A8;
  v19 = a2;
  v13 = handlerCopy;
  v18 = v13;
  v14 = [ptConn remoteObjectProxyWithErrorHandler:v17];

  if (v14)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __78__PKPrinterTool_Client_printerTool_queryPrinter_attributes_completionHandler___block_invoke_2;
    v15[3] = &unk_279A855D0;
    v16 = v13;
    [v14 _queryPrinter:printerCopy attributes:attributesCopy reply:v15];
  }

  else
  {
    (*(v13 + 2))(v13, 0);
  }
}

- (void)printerTool_checkAccessState:(id)state completionHandler:(id)handler
{
  stateCopy = state;
  handlerCopy = handler;
  ptConn = [(PKPrinterTool_Client *)self ptConn];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __71__PKPrinterTool_Client_printerTool_checkAccessState_completionHandler___block_invoke;
  v15 = &unk_279A855A8;
  v17 = a2;
  v10 = handlerCopy;
  v16 = v10;
  v11 = [ptConn remoteObjectProxyWithErrorHandler:&v12];

  if (v11)
  {
    [v11 _checkAccessState:stateCopy reply:{v10, v12, v13, v14, v15}];
  }

  else
  {
    (*(v10 + 2))(v10, 3);
  }
}

- (void)startStreamingRequest:(id)request printSettings:(id)settings completionHandler:(id)handler
{
  requestCopy = request;
  settingsCopy = settings;
  handlerCopy = handler;
  ptConn = [(PKPrinterTool_Client *)self ptConn];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __78__PKPrinterTool_Client_startStreamingRequest_printSettings_completionHandler___block_invoke;
  v18 = &unk_279A855A8;
  v20 = a2;
  v13 = handlerCopy;
  v19 = v13;
  v14 = [ptConn remoteObjectProxyWithErrorHandler:&v15];

  if (v14)
  {
    [v14 startStreamingRequest:requestCopy printSettings:settingsCopy reply:{v13, v15, v16, v17, v18}];
  }

  else
  {
    (*(v13 + 2))(v13, 0);
  }
}

- (void)finishRequestWithCancel:(BOOL)cancel completionHandler:(id)handler
{
  cancelCopy = cancel;
  handlerCopy = handler;
  streamHandle = self->_streamHandle;
  if (streamHandle)
  {
    [(NSFileHandle *)streamHandle closeFile];
    v9 = self->_streamHandle;
    self->_streamHandle = 0;
  }

  ptConn = [(PKPrinterTool_Client *)self ptConn];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __66__PKPrinterTool_Client_finishRequestWithCancel_completionHandler___block_invoke;
  v16 = &unk_279A855A8;
  v18 = a2;
  v11 = handlerCopy;
  v17 = v11;
  v12 = [ptConn remoteObjectProxyWithErrorHandler:&v13];

  if (v12)
  {
    [v12 finishRequestWithCancel:cancelCopy reply:{v11, v13, v14, v15, v16}];
  }

  else
  {
    (*(v11 + 2))(v11, 0);
  }
}

- (void)ptConn_locked
{
  if (os_log_type_enabled(self, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_25F5FC000, self, OS_LOG_TYPE_DEFAULT, "Couldn't create an XLC connection from proxy listener", v2, 2u);
  }

  abort();
}

@end