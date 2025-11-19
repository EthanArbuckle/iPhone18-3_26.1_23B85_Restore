@interface PKPrinterTool_Client
+ (id)sharedClient;
- (PKPrinterTool_Client)init;
- (id)ptConn;
- (id)ptConn_locked;
- (void)addPrinterToiCloud:(id)a3;
- (void)browseInfoForPrinter:(id)a3 timeout:(double)a4 completionHandler:(id)a5;
- (void)cancelJob:(int)a3;
- (void)endpointResolve:(id)a3 timeout:(double)a4 completionHandler:(id)a5;
- (void)finishRequestWithCancel:(BOOL)a3 completionHandler:(id)a4;
- (void)getJobUpdateStatus:(int)a3 includeThumbnail:(BOOL)a4 completionHandler:(id)a5;
- (void)getLastUsedPrintersForCurrentNetworkCompletionHandler:(id)a3;
- (void)getRecentJobsCompletionHandler:(id)a3;
- (void)getiCloudPrintersWithCompletionHandler:(id)a3;
- (void)invalidate;
- (void)logiCloudPrintersCompletionHandler:(id)a3;
- (void)printerTool_checkAccessState:(id)a3 completionHandler:(id)a4;
- (void)printerTool_getPrinterDescription:(id)a3 assertReachability:(BOOL)a4 completionHandler:(id)a5;
- (void)printerTool_identifyPrinter:(id)a3 message:(id)a4 actions:(id)a5;
- (void)printerTool_queryPrinter:(id)a3 attributes:(id)a4 completionHandler:(id)a5;
- (void)printerTool_realPathForTmp:(id)a3;
- (void)printerTool_removeKeychainItem:(id)a3;
- (void)ptConn_locked;
- (void)removePrinterFromiCloud:(id)a3;
- (void)resetPKCloudData;
- (void)setLastUsedPrintersForCurrentNetwork:(id)a3;
- (void)setiCloudPrinters:(id)a3;
- (void)startStreamingRequest:(id)a3 printSettings:(id)a4 completionHandler:(id)a5;
- (void)updateiCloudPrinter:(id)a3 withInfo:(id)a4 forInfoKey:(id)a5;
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
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(PKPrinterTool_Client *)v2 ptConn_locked];
  objc_sync_exit(v2);

  return v3;
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
      v6 = [v4 endpoint];
      v7 = [v5 initWithListenerEndpoint:v6];
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
  v2 = self;
  objc_sync_enter(v2);
  v4 = v2->_conn_needsLock;
  conn_needsLock = v2->_conn_needsLock;
  v2->_conn_needsLock = 0;

  objc_sync_exit(v2);
  if (v4)
  {
    [(NSXPCConnection *)v4 invalidate];
  }
}

- (void)getRecentJobsCompletionHandler:(id)a3
{
  v5 = a3;
  v6 = [(PKPrinterTool_Client *)self ptConn];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __55__PKPrinterTool_Client_getRecentJobsCompletionHandler___block_invoke;
  v12 = &unk_279A855A8;
  v14 = a2;
  v7 = v5;
  v13 = v7;
  v8 = [v6 remoteObjectProxyWithErrorHandler:&v9];

  if (v8)
  {
    [v8 getRecentJobsReply:{v7, v9, v10, v11, v12}];
  }

  else
  {
    (*(v7 + 2))(v7, 0, 0);
  }
}

- (void)getJobUpdateStatus:(int)a3 includeThumbnail:(BOOL)a4 completionHandler:(id)a5
{
  v5 = a4;
  v6 = *&a3;
  v9 = a5;
  v10 = [(PKPrinterTool_Client *)self ptConn];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __78__PKPrinterTool_Client_getJobUpdateStatus_includeThumbnail_completionHandler___block_invoke;
  v16 = &unk_279A855A8;
  v18 = a2;
  v11 = v9;
  v17 = v11;
  v12 = [v10 remoteObjectProxyWithErrorHandler:&v13];

  if (v12)
  {
    [v12 getJobUpdateStatus:v6 includeThumbnail:v5 reply:{v11, v13, v14, v15, v16}];
  }

  else
  {
    (*(v11 + 2))(v11, 0);
  }
}

- (void)cancelJob:(int)a3
{
  v3 = *&a3;
  v4 = [(PKPrinterTool_Client *)self ptConn];
  v5 = [v4 remoteObjectProxy];

  if (v5)
  {
    [v5 cancelJob:v3];
  }
}

- (void)getLastUsedPrintersForCurrentNetworkCompletionHandler:(id)a3
{
  v5 = a3;
  v6 = [(PKPrinterTool_Client *)self ptConn];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __78__PKPrinterTool_Client_getLastUsedPrintersForCurrentNetworkCompletionHandler___block_invoke;
  v12 = &unk_279A855A8;
  v14 = a2;
  v7 = v5;
  v13 = v7;
  v8 = [v6 remoteObjectProxyWithErrorHandler:&v9];

  if (v8)
  {
    [v8 getLastUsedPrintersForCurrentNetworkReply:{v7, v9, v10, v11, v12}];
  }

  else
  {
    (*(v7 + 2))(v7, 0, 0);
  }
}

- (void)setLastUsedPrintersForCurrentNetwork:(id)a3
{
  v6 = a3;
  v4 = [(PKPrinterTool_Client *)self ptConn];
  v5 = [v4 remoteObjectProxy];

  if (v5)
  {
    [v5 setLastUsedPrintersForCurrentNetwork:v6];
  }
}

- (void)getiCloudPrintersWithCompletionHandler:(id)a3
{
  v5 = a3;
  v6 = [(PKPrinterTool_Client *)self ptConn];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __63__PKPrinterTool_Client_getiCloudPrintersWithCompletionHandler___block_invoke;
  v12 = &unk_279A855A8;
  v14 = a2;
  v7 = v5;
  v13 = v7;
  v8 = [v6 remoteObjectProxyWithErrorHandler:&v9];

  if (v8)
  {
    [v8 getiCloudPrintersReply:{v7, v9, v10, v11, v12}];
  }

  else
  {
    (*(v7 + 2))(v7, 0);
  }
}

- (void)addPrinterToiCloud:(id)a3
{
  v7 = a3;
  v4 = [(PKPrinterTool_Client *)self ptConn];
  v5 = [v4 remoteObjectProxy];

  if (v5)
  {
    v6 = [v7 iCloudInfo];
    [v5 addPrinterToiCloudWithInfo:v6];
  }
}

- (void)removePrinterFromiCloud:(id)a3
{
  v7 = a3;
  v4 = [(PKPrinterTool_Client *)self ptConn];
  v5 = [v4 remoteObjectProxy];

  if (v5)
  {
    v6 = [v7 iCloudInfo];
    [v5 removePrinterFromiCloudWithInfo:v6];
  }
}

- (void)updateiCloudPrinter:(id)a3 withInfo:(id)a4 forInfoKey:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(PKPrinterTool_Client *)self ptConn];
  v11 = [v10 remoteObjectProxy];

  if (v11)
  {
    v12 = [v13 iCloudInfo];
    [v11 updateiCloudPrinterInfo:v12 withNewInfo:v8 forInfoKey:v9];
  }
}

- (void)setiCloudPrinters:(id)a3
{
  v6 = a3;
  v4 = [(PKPrinterTool_Client *)self ptConn];
  v5 = [v4 remoteObjectProxy];

  if (v5)
  {
    [v5 setiCloudPrinters:v6];
  }
}

- (void)resetPKCloudData
{
  v2 = [(PKPrinterTool_Client *)self ptConn];
  v3 = [v2 remoteObjectProxy];

  if (v3)
  {
    [v3 resetPKCloudData];
  }
}

- (void)logiCloudPrintersCompletionHandler:(id)a3
{
  v5 = a3;
  v6 = [(PKPrinterTool_Client *)self ptConn];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __59__PKPrinterTool_Client_logiCloudPrintersCompletionHandler___block_invoke;
  v12 = &unk_279A855A8;
  v14 = a2;
  v7 = v5;
  v13 = v7;
  v8 = [v6 remoteObjectProxyWithErrorHandler:&v9];

  if (v8)
  {
    [v8 logiCloudPrintersReply:{v7, v9, v10, v11, v12}];
  }

  else
  {
    (*(v7 + 2))(v7, 0);
  }
}

- (void)browseInfoForPrinter:(id)a3 timeout:(double)a4 completionHandler:(id)a5
{
  v9 = a3;
  v10 = a5;
  v11 = [(PKPrinterTool_Client *)self ptConn];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __71__PKPrinterTool_Client_browseInfoForPrinter_timeout_completionHandler___block_invoke;
  v17 = &unk_279A855A8;
  v19 = a2;
  v12 = v10;
  v18 = v12;
  v13 = [v11 remoteObjectProxyWithErrorHandler:&v14];

  if (v13)
  {
    [v13 browseInfoForPrinter:v9 timeout:v12 reply:{a4, v14, v15, v16, v17}];
  }

  else
  {
    (*(v12 + 2))(v12, 0);
  }
}

- (void)endpointResolve:(id)a3 timeout:(double)a4 completionHandler:(id)a5
{
  v9 = a3;
  v10 = a5;
  v11 = [(PKPrinterTool_Client *)self ptConn];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __66__PKPrinterTool_Client_endpointResolve_timeout_completionHandler___block_invoke;
  v17 = &unk_279A855A8;
  v19 = a2;
  v12 = v10;
  v18 = v12;
  v13 = [v11 remoteObjectProxyWithErrorHandler:&v14];

  if (v13)
  {
    [v13 _endpointResolve:v9 timeout:v12 reply:{a4, v14, v15, v16, v17}];
  }

  else
  {
    (*(v12 + 2))(v12, 0, 0);
  }
}

- (void)printerTool_realPathForTmp:(id)a3
{
  v5 = a3;
  v6 = [(PKPrinterTool_Client *)self ptConn];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __51__PKPrinterTool_Client_printerTool_realPathForTmp___block_invoke;
  v12 = &unk_279A855A8;
  v14 = a2;
  v7 = v5;
  v13 = v7;
  v8 = [v6 remoteObjectProxyWithErrorHandler:&v9];

  if (v8)
  {
    [v8 _realPathForTmpReply:{v7, v9, v10, v11, v12}];
  }

  else
  {
    (*(v7 + 2))(v7, 0);
  }
}

- (void)printerTool_removeKeychainItem:(id)a3
{
  v6 = a3;
  v4 = [(PKPrinterTool_Client *)self ptConn];
  v5 = [v4 remoteObjectProxy];

  if (v5)
  {
    [v5 _removeKeychainItem:v6];
  }
}

- (void)printerTool_identifyPrinter:(id)a3 message:(id)a4 actions:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(PKPrinterTool_Client *)self ptConn];
  v11 = [v10 remoteObjectProxy];

  if (v11)
  {
    [v11 _identifyPrinter:v12 message:v8 actions:v9];
  }
}

- (void)printerTool_getPrinterDescription:(id)a3 assertReachability:(BOOL)a4 completionHandler:(id)a5
{
  v6 = a4;
  v9 = a3;
  v10 = a5;
  v11 = [(PKPrinterTool_Client *)self ptConn];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __95__PKPrinterTool_Client_printerTool_getPrinterDescription_assertReachability_completionHandler___block_invoke;
  v17 = &unk_279A855A8;
  v19 = a2;
  v12 = v10;
  v18 = v12;
  v13 = [v11 remoteObjectProxyWithErrorHandler:&v14];

  if (v13)
  {
    [v13 _getPrinterDescription:v9 assertReachability:v6 reply:{v12, v14, v15, v16, v17}];
  }

  else
  {
    (*(v12 + 2))(v12, 0, 0);
  }
}

- (void)printerTool_queryPrinter:(id)a3 attributes:(id)a4 completionHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(PKPrinterTool_Client *)self ptConn];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __78__PKPrinterTool_Client_printerTool_queryPrinter_attributes_completionHandler___block_invoke;
  v17[3] = &unk_279A855A8;
  v19 = a2;
  v13 = v11;
  v18 = v13;
  v14 = [v12 remoteObjectProxyWithErrorHandler:v17];

  if (v14)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __78__PKPrinterTool_Client_printerTool_queryPrinter_attributes_completionHandler___block_invoke_2;
    v15[3] = &unk_279A855D0;
    v16 = v13;
    [v14 _queryPrinter:v9 attributes:v10 reply:v15];
  }

  else
  {
    (*(v13 + 2))(v13, 0);
  }
}

- (void)printerTool_checkAccessState:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(PKPrinterTool_Client *)self ptConn];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __71__PKPrinterTool_Client_printerTool_checkAccessState_completionHandler___block_invoke;
  v15 = &unk_279A855A8;
  v17 = a2;
  v10 = v8;
  v16 = v10;
  v11 = [v9 remoteObjectProxyWithErrorHandler:&v12];

  if (v11)
  {
    [v11 _checkAccessState:v7 reply:{v10, v12, v13, v14, v15}];
  }

  else
  {
    (*(v10 + 2))(v10, 3);
  }
}

- (void)startStreamingRequest:(id)a3 printSettings:(id)a4 completionHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(PKPrinterTool_Client *)self ptConn];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __78__PKPrinterTool_Client_startStreamingRequest_printSettings_completionHandler___block_invoke;
  v18 = &unk_279A855A8;
  v20 = a2;
  v13 = v11;
  v19 = v13;
  v14 = [v12 remoteObjectProxyWithErrorHandler:&v15];

  if (v14)
  {
    [v14 startStreamingRequest:v9 printSettings:v10 reply:{v13, v15, v16, v17, v18}];
  }

  else
  {
    (*(v13 + 2))(v13, 0);
  }
}

- (void)finishRequestWithCancel:(BOOL)a3 completionHandler:(id)a4
{
  v4 = a3;
  v7 = a4;
  streamHandle = self->_streamHandle;
  if (streamHandle)
  {
    [(NSFileHandle *)streamHandle closeFile];
    v9 = self->_streamHandle;
    self->_streamHandle = 0;
  }

  v10 = [(PKPrinterTool_Client *)self ptConn];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __66__PKPrinterTool_Client_finishRequestWithCancel_completionHandler___block_invoke;
  v16 = &unk_279A855A8;
  v18 = a2;
  v11 = v7;
  v17 = v11;
  v12 = [v10 remoteObjectProxyWithErrorHandler:&v13];

  if (v12)
  {
    [v12 finishRequestWithCancel:v4 reply:{v11, v13, v14, v15, v16}];
  }

  else
  {
    (*(v11 + 2))(v11, 0);
  }
}

- (void)ptConn_locked
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_25F5FC000, a1, OS_LOG_TYPE_DEFAULT, "Couldn't create an XLC connection from proxy listener", v2, 2u);
  }

  abort();
}

@end