@interface PrintdRPCService
- (IPPSession)ippNetworkingSession;
- (PrintdRPCService)initWithXPCConnection:(id)connection;
- (id)_ippNetworkingSession:(BOOL)session;
- (id)ippNetworkingSessionForStreaming;
- (void)_checkAccessState:(id)state reply:(id)reply;
- (void)_commonInvalidation;
- (void)_endpointResolve:(id)resolve timeout:(double)timeout reply:(id)reply;
- (void)_getPrinterDescription:(id)description assertReachability:(BOOL)reachability reply:(id)reply;
- (void)_identifyPrinter:(id)printer message:(id)message actions:(id)actions;
- (void)_interrupted;
- (void)_invalidated;
- (void)_queryPrinter:(id)printer attributes:(id)attributes reply:(id)reply;
- (void)_realPathForTmpReply:(id)reply;
- (void)_removeKeychainItem:(id)item;
- (void)addPrinterToiCloudWithInfo:(id)info;
- (void)browseInfoForPrinter:(id)printer timeout:(double)timeout reply:(id)reply;
- (void)finishRequestWithCancel:(BOOL)cancel reply:(id)reply;
- (void)getLastUsedPrintersForCurrentNetworkReply:(id)reply;
- (void)getRecentJobsReply:(id)reply;
- (void)getiCloudPrintersReply:(id)reply;
- (void)logiCloudPrintersReply:(id)reply;
- (void)removePrinterFromiCloudWithInfo:(id)info;
- (void)resetPKCloudData;
- (void)setLastUsedPrintersForCurrentNetwork:(id)network;
- (void)setiCloudPrinters:(id)printers;
- (void)startBrowsing:(id)browsing provenance:(unint64_t)provenance;
- (void)startStreamingRequest:(id)request printSettings:(id)settings reply:(id)reply;
- (void)startStreamingRequestWithPrinter:(id)printer printSettings:(id)settings completionHandler:(id)handler;
- (void)translationsForPrinter:(id)printer languageCode:(id)code reply:(id)reply;
- (void)updateiCloudPrinterInfo:(id)info withNewInfo:(id)newInfo forInfoKey:(id)key;
@end

@implementation PrintdRPCService

- (PrintdRPCService)initWithXPCConnection:(id)connection
{
  connectionCopy = connection;
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

    objc_storeStrong(&v6->_connection, connection);
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
    processIdentifier = [(NSXPCConnection *)v6->_connection processIdentifier];
    effectiveUserIdentifier = [(NSXPCConnection *)v6->_connection effectiveUserIdentifier];
    v12 = [NSString stringWithFormat:@"<xpc %d from %d/%d>", clientID, processIdentifier, effectiveUserIdentifier, v17, v18, v19, v20];
    logLeader = v6->_logLeader;
    v6->_logLeader = v12;

    v14 = _PKLogCategory(PKLogCategoryDefault[0]);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      connection = v6->_connection;
      *buf = 138543362;
      connectionCopy2 = connection;
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

- (id)_ippNetworkingSession:(BOOL)session
{
  sessionCopy = session;
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
      if (!sessionCopy)
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

- (void)startStreamingRequestWithPrinter:(id)printer printSettings:(id)settings completionHandler:(id)handler
{
  printerCopy = printer;
  settingsCopy = settings;
  handlerCopy = handler;
  v11 = [[job_spool_client_t alloc] initWithClientID:self->_clientID printer:printerCopy printSettings:settingsCopy];
  spoolClient = self->_spoolClient;
  self->_spoolClient = v11;

  v13 = self->_spoolClient;
  if (v13)
  {
    [(job_spool_client_t *)v13 startStreamingCompletionHandler:handlerCopy];
  }

  else
  {
    v14 = _PKLogCategory(PKLogCategoryProgress[0]);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [settingsCopy debugDescription];
      v16 = 138543618;
      v17 = printerCopy;
      v18 = 2114;
      v19 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Could not create spool for printer %{public}@ and print settings %{public}@", &v16, 0x16u);
    }

    handlerCopy[2](handlerCopy, 0);
  }
}

- (void)startStreamingRequest:(id)request printSettings:(id)settings reply:(id)reply
{
  requestCopy = request;
  settingsCopy = settings;
  replyCopy = reply;
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

    replyCopy[2](replyCopy, 0);
  }

  else
  {
    objc_initWeak(buf, self);
    ippNetworkingSessionForStreaming = [(PrintdRPCService *)self ippNetworkingSessionForStreaming];
    v14 = [ippNetworkingSessionForStreaming ippEndpoint:requestCopy];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10004A308;
    v15[3] = &unk_1000A3520;
    objc_copyWeak(&v19, buf);
    v16 = settingsCopy;
    v18 = replyCopy;
    v17 = requestCopy;
    [lite_printer_t withLitePrinterForSessionEndpoint:v14 completionHandler:v15];

    objc_destroyWeak(&v19);
    objc_destroyWeak(buf);
  }
}

- (void)finishRequestWithCancel:(BOOL)cancel reply:(id)reply
{
  replyCopy = reply;
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

    if (cancel)
    {
      [(job_spool_client_t *)v9 invalidate];
      replyCopy[2](replyCopy, 0);
    }

    else
    {
      ippNetworkingSessionForStreaming = [(PrintdRPCService *)self ippNetworkingSessionForStreaming];
      [(job_spool_client_t *)v9 submitRequestWithSession:ippNetworkingSessionForStreaming completionHandler:replyCopy];
    }
  }

  else
  {
    replyCopy[2](replyCopy, 0);
  }
}

- (void)translationsForPrinter:(id)printer languageCode:(id)code reply:(id)reply
{
  printerCopy = printer;
  codeCopy = code;
  replyCopy = reply;
  v11 = _PKLogCategory(PKLogCategoryDefault[0]);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "translationsForPrinter", buf, 2u);
  }

  [(PrintdRPCService *)self ippNetworkingSession];
  v12 = [objc_claimAutoreleasedReturnValue() ippURL:printerCopy];
  v13 = codeCopy;
  v14 = replyCopy;
  sub_100010D5C(buf, 0xBu, @"translationsForPrinter");
}

- (void)getRecentJobsReply:(id)reply
{
  replyCopy = reply;
  v5 = _PKLogCategory(PKLogCategoryDefault[0]);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v10) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "getRecentJobsReply", &v10, 2u);
  }

  v6 = [(NSXPCConnection *)self->_connection valueForEntitlement:@"com.apple.printing.getjoblist"];
  bOOLValue = [v6 BOOLValue];

  if (bOOLValue)
  {
    [lite_job_t getAllJobsCompletionHandler:replyCopy];
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

    (*(replyCopy + 2))(replyCopy, 0, 0);
  }
}

- (void)startBrowsing:(id)browsing provenance:(unint64_t)provenance
{
  browsingCopy = browsing;
  v7 = _PKLogCategory(PKLogCategoryDefault[0]);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "startBrowsing", v14, 2u);
  }

  v8 = getPrintdRPCBrowseProtocolInterface();
  [(NSXPCConnection *)self->_connection setRemoteObjectInterface:v8];

  v9 = [BrowseService alloc];
  remoteObjectProxy = [(NSXPCConnection *)self->_connection remoteObjectProxy];
  ippNetworkingSession = [(PrintdRPCService *)self ippNetworkingSession];
  v12 = [(BrowseService *)v9 initWithProxy:remoteObjectProxy session:ippNetworkingSession];
  browser = self->_browser;
  self->_browser = v12;

  [(BrowseService *)self->_browser startBrowsing:browsingCopy provenance:provenance];
}

- (void)browseInfoForPrinter:(id)printer timeout:(double)timeout reply:(id)reply
{
  printerCopy = printer;
  replyCopy = reply;
  v9 = _PKLogCategory(PKLogCategoryDefault[0]);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v16 = printerCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "browseInfoForPrinter: %{public}@", buf, 0xCu);
  }

  v10 = [lite_printer_t existingPrinterWithEndpoint:printerCopy];
  v11 = v10;
  if (v10)
  {
    browseInfo = [v10 browseInfo];
    replyCopy[2](replyCopy, browseInfo);
  }

  else
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10004B1A0;
    v13[3] = &unk_1000A3548;
    v14 = replyCopy;
    [printerCopy resolveWithinPrinterToolWithTimeout:v13 completionHandler:timeout];
    browseInfo = v14;
  }
}

- (void)_endpointResolve:(id)resolve timeout:(double)timeout reply:(id)reply
{
  resolveCopy = resolve;
  replyCopy = reply;
  v9 = _PKLogCategory(PKLogCategoryDefault[0]);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = resolveCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "_endpointResolve: %{public}@", &v10, 0xCu);
  }

  [PKPrinterBonjourEndpoint resolveEndpoint:resolveCopy timeout:replyCopy completionHandler:timeout];
}

- (void)getLastUsedPrintersForCurrentNetworkReply:(id)reply
{
  replyCopy = reply;
  v4 = _PKLogCategory(PKLogCategoryDefault[0]);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "getLastUsedPrintersForCurrentNetworkReply", v8, 2u);
  }

  v5 = liteGetPrintersForCurrentNetwork();
  networkName = [v5 networkName];
  printers = [v5 printers];
  replyCopy[2](replyCopy, networkName, printers);
}

- (void)setLastUsedPrintersForCurrentNetwork:(id)network
{
  networkCopy = network;
  v4 = _PKLogCategory(PKLogCategoryDefault[0]);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "setLastUsedPrintersForCurrentNetwork", v5, 2u);
  }

  liteAddPrinterForCurrentNetwork(networkCopy);
}

- (void)getiCloudPrintersReply:(id)reply
{
  replyCopy = reply;
  v4 = _PKLogCategory(PKLogCategoryDefault[0]);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "getiCloudPrintersReply", v6, 2u);
  }

  v5 = liteGetiCloudPrinters();
  replyCopy[2](replyCopy, v5);
}

- (void)setiCloudPrinters:(id)printers
{
  printersCopy = printers;
  v4 = _PKLogCategory(PKLogCategoryDefault[0]);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "setiCloudPrinters", v5, 2u);
  }

  liteSetiCloudPrinters(printersCopy);
}

- (void)addPrinterToiCloudWithInfo:(id)info
{
  infoCopy = info;
  v4 = _PKLogCategory(PKLogCategoryDefault[0]);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "addPrinterToiCloudWithInfo", v5, 2u);
  }

  liteAddPrinterToiCloudWithInfo(infoCopy);
}

- (void)removePrinterFromiCloudWithInfo:(id)info
{
  infoCopy = info;
  v4 = _PKLogCategory(PKLogCategoryDefault[0]);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "addPrinterToiCloudWithInfo", v5, 2u);
  }

  liteRemovePrinterFromiCloudWithInfo(infoCopy);
}

- (void)updateiCloudPrinterInfo:(id)info withNewInfo:(id)newInfo forInfoKey:(id)key
{
  infoCopy = info;
  newInfoCopy = newInfo;
  keyCopy = key;
  v10 = _PKLogCategory(PKLogCategoryDefault[0]);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "updateiCloudPrinterInfo", v11, 2u);
  }

  liteUpdateiCloudPrinterInfo(infoCopy, newInfoCopy, keyCopy);
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

- (void)logiCloudPrintersReply:(id)reply
{
  replyCopy = reply;
  v4 = _PKLogCategory(PKLogCategoryDefault[0]);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "logiCloudPrinters", v6, 2u);
  }

  v5 = liteLogiCloudPrinters();
  replyCopy[2](replyCopy, v5);
}

- (void)_checkAccessState:(id)state reply:(id)reply
{
  stateCopy = state;
  replyCopy = reply;
  v8 = _PKLogCategory(PKLogCategoryDefault[0]);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v15 = stateCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "_checkAccessState: %{public}@", buf, 0xCu);
  }

  ippNetworkingSession = [(PrintdRPCService *)self ippNetworkingSession];
  v10 = [ippNetworkingSession ippEndpoint:stateCopy];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10004BB88;
  v12[3] = &unk_1000A3570;
  v11 = replyCopy;
  v12[4] = self;
  v13 = v11;
  [lite_printer_t withLitePrinterForSessionEndpoint:v10 completionHandler:v12];
}

- (void)_identifyPrinter:(id)printer message:(id)message actions:(id)actions
{
  printerCopy = printer;
  messageCopy = message;
  actionsCopy = actions;
  v11 = _PKLogCategory(PKLogCategoryDefault[0]);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v20 = printerCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "_identifyPrinter: %{public}@", buf, 0xCu);
  }

  ippNetworkingSession = [(PrintdRPCService *)self ippNetworkingSession];
  v13 = [ippNetworkingSession ippEndpoint:printerCopy];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10004BE1C;
  v16[3] = &unk_1000A3598;
  v16[4] = self;
  v14 = messageCopy;
  v17 = v14;
  v15 = actionsCopy;
  v18 = v15;
  [lite_printer_t withLitePrinterForSessionEndpoint:v13 completionHandler:v16];
}

- (void)_getPrinterDescription:(id)description assertReachability:(BOOL)reachability reply:(id)reply
{
  descriptionCopy = description;
  replyCopy = reply;
  v10 = _PKLogCategory(PKLogCategoryDefault[0]);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v18 = descriptionCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "_getPrinterDescription: %{public}@", buf, 0xCu);
  }

  ippNetworkingSession = [(PrintdRPCService *)self ippNetworkingSession];
  v12 = [ippNetworkingSession ippEndpoint:descriptionCopy];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10004C068;
  v14[3] = &unk_1000A35C0;
  v13 = replyCopy;
  reachabilityCopy = reachability;
  v14[4] = self;
  v15 = v13;
  [lite_printer_t withLitePrinterForSessionEndpoint:v12 completionHandler:v14];
}

- (void)_queryPrinter:(id)printer attributes:(id)attributes reply:(id)reply
{
  printerCopy = printer;
  attributesCopy = attributes;
  replyCopy = reply;
  v10 = [NSString stringWithFormat:@"_queryPrinter(%@)", self->_logLeader];
  v11 = [NSString stringWithFormat:@"%s:%d/%@", "[PrintdRPCService _queryPrinter:attributes:reply:]", 580, v10];

  v12 = _PKLogCategory(PKLogCategoryDefault[0]);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v25 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  ippNetworkingSession = [(PrintdRPCService *)self ippNetworkingSession];
  v14 = [ippNetworkingSession ippEndpoint:printerCopy];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10004C3E0;
  v19[3] = &unk_1000A3610;
  v15 = replyCopy;
  v23 = v15;
  v16 = v11;
  v20 = v16;
  v17 = attributesCopy;
  v21 = v17;
  selfCopy = self;
  [lite_printer_t withLitePrinterForSessionEndpoint:v14 completionHandler:v19];
}

- (void)_removeKeychainItem:(id)item
{
  itemCopy = item;
  v4 = _PKLogCategory(PKLogCategoryDefault[0]);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = itemCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "_removeKeychainItem: %{public}@", &v7, 0xCu);
  }

  v5 = [lite_printer_t existingPrinterWithEndpoint:itemCopy];
  v6 = v5;
  if (v5)
  {
    liteNotifyClearPassword(v5);
  }
}

- (void)_realPathForTmpReply:(id)reply
{
  replyCopy = reply;
  v3 = NSTemporaryDirectory();
  v4 = [NSURL fileURLWithPath:v3];
  replyCopy[2](replyCopy, v4);
}

@end