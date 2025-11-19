@interface PrintdRPCService
- (IPPSession)ippNetworkingSession;
- (PrintdRPCService)initWithXPCConnection:(id)a3;
- (id)_ippNetworkingSession:(BOOL)a3;
- (id)ippNetworkingSessionForStreaming;
- (void)_checkAccessState:(id)a3 reply:(id)a4;
- (void)_commonInvalidation;
- (void)_endpointResolve:(id)a3 timeout:(double)a4 reply:(id)a5;
- (void)_getPrinterDescription:(id)a3 assertReachability:(BOOL)a4 reply:(id)a5;
- (void)_identifyPrinter:(id)a3 message:(id)a4 actions:(id)a5;
- (void)_interrupted;
- (void)_invalidated;
- (void)_queryPrinter:(id)a3 attributes:(id)a4 reply:(id)a5;
- (void)_realPathForTmpReply:(id)a3;
- (void)_removeKeychainItem:(id)a3;
- (void)addPrinterToiCloudWithInfo:(id)a3;
- (void)browseInfoForPrinter:(id)a3 timeout:(double)a4 reply:(id)a5;
- (void)finishRequestWithCancel:(BOOL)a3 reply:(id)a4;
- (void)getLastUsedPrintersForCurrentNetworkReply:(id)a3;
- (void)getRecentJobsReply:(id)a3;
- (void)getiCloudPrintersReply:(id)a3;
- (void)logiCloudPrintersReply:(id)a3;
- (void)removePrinterFromiCloudWithInfo:(id)a3;
- (void)resetPKCloudData;
- (void)setLastUsedPrintersForCurrentNetwork:(id)a3;
- (void)setiCloudPrinters:(id)a3;
- (void)startBrowsing:(id)a3 provenance:(unint64_t)a4;
- (void)startStreamingRequest:(id)a3 printSettings:(id)a4 reply:(id)a5;
- (void)startStreamingRequestWithPrinter:(id)a3 printSettings:(id)a4 completionHandler:(id)a5;
- (void)translationsForPrinter:(id)a3 languageCode:(id)a4 reply:(id)a5;
- (void)updateiCloudPrinterInfo:(id)a3 withNewInfo:(id)a4 forInfoKey:(id)a5;
@end

@implementation PrintdRPCService

- (PrintdRPCService)initWithXPCConnection:(id)a3
{
  v5 = a3;
  v25.receiver = self;
  v25.super_class = PrintdRPCService;
  v6 = [(PrintdRPCService *)&v25 init];
  if (v6)
  {
    v7 = objc_opt_class();
    objc_sync_enter(v7);
    v8 = dword_1000C7A20++;
    v6->_clientID = v8;
    objc_sync_exit(v7);

    objc_storeStrong(&v6->_connection, a3);
    objc_initWeak(&location, v6);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1000497EC;
    v22[3] = &unk_1000A2328;
    objc_copyWeak(&v23, &location);
    [(NSXPCConnection *)v6->_connection setInterruptionHandler:v22];
    v17 = _NSConcreteStackBlock;
    v18 = 3221225472;
    v19 = sub_100049858;
    v20 = &unk_1000A2328;
    objc_copyWeak(&v21, &location);
    [(NSXPCConnection *)v6->_connection setInvalidationHandler:&v17];
    clientID = v6->_clientID;
    v10 = [(NSXPCConnection *)v6->_connection processIdentifier];
    v11 = [(NSXPCConnection *)v6->_connection effectiveUserIdentifier];
    v12 = [NSString stringWithFormat:@"<xpc %d from %d/%d>", clientID, v10, v11, v17, v18, v19, v20];
    logLeader = v6->_logLeader;
    v6->_logLeader = v12;

    v14 = _PKLogCategory(PKLogCategoryDefault[0]);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      connection = v6->_connection;
      *buf = 138543362;
      v27 = connection;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Accepted incoming connection from %{public}@", buf, 0xCu);
    }

    objc_destroyWeak(&v21);
    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }

  return v6;
}

- (void)_commonInvalidation
{
  spoolClient = self->_spoolClient;
  if (spoolClient)
  {
    [(job_spool_client_t *)spoolClient invalidate];
  }

  browser = self->_browser;
  if (browser)
  {
    [(BrowseService *)browser stopBrowsing];
    v5 = self->_browser;
    self->_browser = 0;
  }

  if (self->_standardSession)
  {
    v6 = _PKLogCategory(PKLogCategoryDefault[0]);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      standardSession = self->_standardSession;
      v12 = 138543362;
      v13 = standardSession;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Releasing standard session %{public}@", &v12, 0xCu);
    }

    v8 = self->_standardSession;
    self->_standardSession = 0;
  }

  if (self->_streamingSession)
  {
    v9 = _PKLogCategory(PKLogCategoryDefault[0]);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      streamingSession = self->_streamingSession;
      v12 = 138543362;
      v13 = streamingSession;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Releasing streaming session %{public}@", &v12, 0xCu);
    }

    v11 = self->_streamingSession;
    self->_streamingSession = 0;
  }
}

- (void)_interrupted
{
  v3 = _PKLogCategory(PKLogCategoryDefault[0]);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "interrupted", v5, 2u);
  }

  [(PrintdRPCService *)self _commonInvalidation];
  connection = self->_connection;
  if (connection)
  {
    self->_connection = 0;
  }
}

- (void)_invalidated
{
  v3 = _PKLogCategory(PKLogCategoryDefault[0]);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "invalidated", v5, 2u);
  }

  [(PrintdRPCService *)self _commonInvalidation];
  connection = self->_connection;
  self->_connection = 0;
}

- (IPPSession)ippNetworkingSession
{
  standardSession = self->_standardSession;
  if (!standardSession)
  {
    v4 = [(PrintdRPCService *)self _ippNetworkingSession:0];
    v5 = self->_standardSession;
    self->_standardSession = v4;

    standardSession = self->_standardSession;
  }

  return standardSession;
}

- (id)ippNetworkingSessionForStreaming
{
  streamingSession = self->_streamingSession;
  if (!streamingSession)
  {
    v4 = [(PrintdRPCService *)self _ippNetworkingSession:1];
    v5 = self->_streamingSession;
    self->_streamingSession = v4;

    streamingSession = self->_streamingSession;
  }

  return streamingSession;
}

- (id)_ippNetworkingSession:(BOOL)a3
{
  v3 = a3;
  connection = self->_connection;
  if (connection)
  {
    [(NSXPCConnection *)connection auditToken];
  }

  memset(&token, 0, sizeof(token));
  v6 = SecTaskCreateWithAuditToken(kCFAllocatorDefault, &token);
  v7 = v6;
  if (v6)
  {
    v8 = SecTaskCopySigningIdentifier(v6, 0);
    CFRelease(v7);
    if (v8)
    {
      v9 = &off_100094C58;
      if (!v3)
      {
        v9 = off_100094C50;
      }

      v10 = objc_alloc(*v9);
      v11 = [(IPPControlLogging *)v10 initWithBundleIdentifier:v8 clientID:self->_clientID];
      if (PreserveControlFiles)
      {
        v12 = [NSString stringWithFormat:@"%@-%d", v8, self->_clientID];
        v13 = [[IPPControlLogging alloc] initWithIdentifier:v12];
        [(IPPControlLogging *)v11 setControlLogging:v13];
      }

      CFRelease(v8);
      goto LABEL_14;
    }
  }

  v14 = _PKLogCategory(PKLogCategoryDefault[0]);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    token.val[0] = 138543362;
    *&token.val[1] = self;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "No bundle identifier for %{public}@, using the global session", &token, 0xCu);
  }

  v11 = +[IPPSession globalSession];
  if (PreserveControlFiles)
  {
    v10 = [[IPPControlLogging alloc] initWithIdentifier:@"PrinterToolGlobal"];
    [(IPPControlLogging *)v11 setControlLogging:v10];
LABEL_14:
  }

  v15 = _PKLogCategory(PKLogCategoryDefault[0]);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    token.val[0] = 138543362;
    *&token.val[1] = v11;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Created ipp session %{public}@", &token, 0xCu);
  }

  return v11;
}

- (void)startStreamingRequestWithPrinter:(id)a3 printSettings:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [[job_spool_client_t alloc] initWithClientID:self->_clientID printer:v8 printSettings:v9];
  spoolClient = self->_spoolClient;
  self->_spoolClient = v11;

  v13 = self->_spoolClient;
  if (v13)
  {
    [(job_spool_client_t *)v13 startStreamingCompletionHandler:v10];
  }

  else
  {
    v14 = _PKLogCategory(PKLogCategoryProgress[0]);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [v9 debugDescription];
      v16 = 138543618;
      v17 = v8;
      v18 = 2114;
      v19 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Could not create spool for printer %{public}@ and print settings %{public}@", &v16, 0x16u);
    }

    v10[2](v10, 0);
  }
}

- (void)startStreamingRequest:(id)a3 printSettings:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _PKLogCategory(PKLogCategoryDefault[0]);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "startStreamingRequest", buf, 2u);
  }

  if (self->_spoolClient)
  {
    v12 = _PKLogCategory(PKLogCategoryProgress[0]);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Only one spool client allowed at a time", buf, 2u);
    }

    v10[2](v10, 0);
  }

  else
  {
    objc_initWeak(buf, self);
    v13 = [(PrintdRPCService *)self ippNetworkingSessionForStreaming];
    v14 = [v13 ippEndpoint:v8];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10004A308;
    v15[3] = &unk_1000A3520;
    objc_copyWeak(&v19, buf);
    v16 = v9;
    v18 = v10;
    v17 = v8;
    [lite_printer_t withLitePrinterForSessionEndpoint:v14 completionHandler:v15];

    objc_destroyWeak(&v19);
    objc_destroyWeak(buf);
  }
}

- (void)finishRequestWithCancel:(BOOL)a3 reply:(id)a4
{
  v6 = a4;
  v7 = _PKLogCategory(PKLogCategoryDefault[0]);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "finishRequestWithCancel", v12, 2u);
  }

  spoolClient = self->_spoolClient;
  if (spoolClient)
  {
    v9 = spoolClient;
    v10 = self->_spoolClient;
    self->_spoolClient = 0;

    if (a3)
    {
      [(job_spool_client_t *)v9 invalidate];
      v6[2](v6, 0);
    }

    else
    {
      v11 = [(PrintdRPCService *)self ippNetworkingSessionForStreaming];
      [(job_spool_client_t *)v9 submitRequestWithSession:v11 completionHandler:v6];
    }
  }

  else
  {
    v6[2](v6, 0);
  }
}

- (void)translationsForPrinter:(id)a3 languageCode:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _PKLogCategory(PKLogCategoryDefault[0]);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "translationsForPrinter", buf, 2u);
  }

  [(PrintdRPCService *)self ippNetworkingSession];
  v12 = [objc_claimAutoreleasedReturnValue() ippURL:v8];
  v13 = v9;
  v14 = v10;
  sub_100010D5C(buf, 0xBu, @"translationsForPrinter");
}

- (void)getRecentJobsReply:(id)a3
{
  v4 = a3;
  v5 = _PKLogCategory(PKLogCategoryDefault[0]);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v10) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "getRecentJobsReply", &v10, 2u);
  }

  v6 = [(NSXPCConnection *)self->_connection valueForEntitlement:@"com.apple.printing.getjoblist"];
  v7 = [v6 BOOLValue];

  if (v7)
  {
    [lite_job_t getAllJobsCompletionHandler:v4];
  }

  else
  {
    v8 = _PKLogCategory(PKLogCategoryProgress[0]);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      connection = self->_connection;
      v10 = 138543362;
      v11 = connection;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Client %{public}@ doesn't have getjoblist entitlement", &v10, 0xCu);
    }

    (*(v4 + 2))(v4, 0, 0);
  }
}

- (void)startBrowsing:(id)a3 provenance:(unint64_t)a4
{
  v6 = a3;
  v7 = _PKLogCategory(PKLogCategoryDefault[0]);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "startBrowsing", v14, 2u);
  }

  v8 = getPrintdRPCBrowseProtocolInterface();
  [(NSXPCConnection *)self->_connection setRemoteObjectInterface:v8];

  v9 = [BrowseService alloc];
  v10 = [(NSXPCConnection *)self->_connection remoteObjectProxy];
  v11 = [(PrintdRPCService *)self ippNetworkingSession];
  v12 = [(BrowseService *)v9 initWithProxy:v10 session:v11];
  browser = self->_browser;
  self->_browser = v12;

  [(BrowseService *)self->_browser startBrowsing:v6 provenance:a4];
}

- (void)browseInfoForPrinter:(id)a3 timeout:(double)a4 reply:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = _PKLogCategory(PKLogCategoryDefault[0]);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v16 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "browseInfoForPrinter: %{public}@", buf, 0xCu);
  }

  v10 = [lite_printer_t existingPrinterWithEndpoint:v7];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 browseInfo];
    v8[2](v8, v12);
  }

  else
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10004B1A0;
    v13[3] = &unk_1000A3548;
    v14 = v8;
    [v7 resolveWithinPrinterToolWithTimeout:v13 completionHandler:a4];
    v12 = v14;
  }
}

- (void)_endpointResolve:(id)a3 timeout:(double)a4 reply:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = _PKLogCategory(PKLogCategoryDefault[0]);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "_endpointResolve: %{public}@", &v10, 0xCu);
  }

  [PKPrinterBonjourEndpoint resolveEndpoint:v7 timeout:v8 completionHandler:a4];
}

- (void)getLastUsedPrintersForCurrentNetworkReply:(id)a3
{
  v3 = a3;
  v4 = _PKLogCategory(PKLogCategoryDefault[0]);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "getLastUsedPrintersForCurrentNetworkReply", v8, 2u);
  }

  v5 = liteGetPrintersForCurrentNetwork();
  v6 = [v5 networkName];
  v7 = [v5 printers];
  v3[2](v3, v6, v7);
}

- (void)setLastUsedPrintersForCurrentNetwork:(id)a3
{
  v3 = a3;
  v4 = _PKLogCategory(PKLogCategoryDefault[0]);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "setLastUsedPrintersForCurrentNetwork", v5, 2u);
  }

  liteAddPrinterForCurrentNetwork(v3);
}

- (void)getiCloudPrintersReply:(id)a3
{
  v3 = a3;
  v4 = _PKLogCategory(PKLogCategoryDefault[0]);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "getiCloudPrintersReply", v6, 2u);
  }

  v5 = liteGetiCloudPrinters();
  v3[2](v3, v5);
}

- (void)setiCloudPrinters:(id)a3
{
  v3 = a3;
  v4 = _PKLogCategory(PKLogCategoryDefault[0]);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "setiCloudPrinters", v5, 2u);
  }

  liteSetiCloudPrinters(v3);
}

- (void)addPrinterToiCloudWithInfo:(id)a3
{
  v3 = a3;
  v4 = _PKLogCategory(PKLogCategoryDefault[0]);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "addPrinterToiCloudWithInfo", v5, 2u);
  }

  liteAddPrinterToiCloudWithInfo(v3);
}

- (void)removePrinterFromiCloudWithInfo:(id)a3
{
  v3 = a3;
  v4 = _PKLogCategory(PKLogCategoryDefault[0]);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "addPrinterToiCloudWithInfo", v5, 2u);
  }

  liteRemovePrinterFromiCloudWithInfo(v3);
}

- (void)updateiCloudPrinterInfo:(id)a3 withNewInfo:(id)a4 forInfoKey:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = _PKLogCategory(PKLogCategoryDefault[0]);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "updateiCloudPrinterInfo", v11, 2u);
  }

  liteUpdateiCloudPrinterInfo(v7, v8, v9);
}

- (void)resetPKCloudData
{
  v2 = _PKLogCategory(PKLogCategoryDefault[0]);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "resetPKCloudData", v3, 2u);
  }

  liteResetPKCloudData();
}

- (void)logiCloudPrintersReply:(id)a3
{
  v3 = a3;
  v4 = _PKLogCategory(PKLogCategoryDefault[0]);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "logiCloudPrinters", v6, 2u);
  }

  v5 = liteLogiCloudPrinters();
  v3[2](v3, v5);
}

- (void)_checkAccessState:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _PKLogCategory(PKLogCategoryDefault[0]);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "_checkAccessState: %{public}@", buf, 0xCu);
  }

  v9 = [(PrintdRPCService *)self ippNetworkingSession];
  v10 = [v9 ippEndpoint:v6];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10004BB88;
  v12[3] = &unk_1000A3570;
  v11 = v7;
  v12[4] = self;
  v13 = v11;
  [lite_printer_t withLitePrinterForSessionEndpoint:v10 completionHandler:v12];
}

- (void)_identifyPrinter:(id)a3 message:(id)a4 actions:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _PKLogCategory(PKLogCategoryDefault[0]);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v20 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "_identifyPrinter: %{public}@", buf, 0xCu);
  }

  v12 = [(PrintdRPCService *)self ippNetworkingSession];
  v13 = [v12 ippEndpoint:v8];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10004BE1C;
  v16[3] = &unk_1000A3598;
  v16[4] = self;
  v14 = v9;
  v17 = v14;
  v15 = v10;
  v18 = v15;
  [lite_printer_t withLitePrinterForSessionEndpoint:v13 completionHandler:v16];
}

- (void)_getPrinterDescription:(id)a3 assertReachability:(BOOL)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = _PKLogCategory(PKLogCategoryDefault[0]);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v18 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "_getPrinterDescription: %{public}@", buf, 0xCu);
  }

  v11 = [(PrintdRPCService *)self ippNetworkingSession];
  v12 = [v11 ippEndpoint:v8];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10004C068;
  v14[3] = &unk_1000A35C0;
  v13 = v9;
  v16 = a4;
  v14[4] = self;
  v15 = v13;
  [lite_printer_t withLitePrinterForSessionEndpoint:v12 completionHandler:v14];
}

- (void)_queryPrinter:(id)a3 attributes:(id)a4 reply:(id)a5
{
  v18 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [NSString stringWithFormat:@"_queryPrinter(%@)", self->_logLeader];
  v11 = [NSString stringWithFormat:@"%s:%d/%@", "[PrintdRPCService _queryPrinter:attributes:reply:]", 580, v10];

  v12 = _PKLogCategory(PKLogCategoryDefault[0]);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v25 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  v13 = [(PrintdRPCService *)self ippNetworkingSession];
  v14 = [v13 ippEndpoint:v18];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10004C3E0;
  v19[3] = &unk_1000A3610;
  v15 = v9;
  v23 = v15;
  v16 = v11;
  v20 = v16;
  v17 = v8;
  v21 = v17;
  v22 = self;
  [lite_printer_t withLitePrinterForSessionEndpoint:v14 completionHandler:v19];
}

- (void)_removeKeychainItem:(id)a3
{
  v3 = a3;
  v4 = _PKLogCategory(PKLogCategoryDefault[0]);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "_removeKeychainItem: %{public}@", &v7, 0xCu);
  }

  v5 = [lite_printer_t existingPrinterWithEndpoint:v3];
  v6 = v5;
  if (v5)
  {
    liteNotifyClearPassword(v5);
  }
}

- (void)_realPathForTmpReply:(id)a3
{
  v5 = a3;
  v3 = NSTemporaryDirectory();
  v4 = [NSURL fileURLWithPath:v3];
  v5[2](v5, v4);
}

@end