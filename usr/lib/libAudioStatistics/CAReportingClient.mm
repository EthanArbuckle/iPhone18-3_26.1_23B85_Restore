@interface CAReportingClient
+ (id)getClient;
+ (id)sharedInstance;
+ (void)destroyClient;
- (CAReportingClient)initWithXPC:(BOOL)c endpoint:(id)endpoint;
- (id)getConfigurationForReporterID:(int64_t)d;
- (id)listClientReporterIDs;
- (id)listServerReporterIDs;
- (id)reporterWithID:(int64_t)d;
- (int64_t)createReporterID:(unsigned int)d;
- (uint64_t)requestMessageWithID:category:type:callback:;
- (unsigned)getServiceTypeForReporterID:(int64_t)d;
- (void)addReporter:(id)reporter;
- (void)dealloc;
- (void)destroyReporterWithID:(int64_t)d;
- (void)destroyService;
- (void)disconnectReporters;
- (void)reconnectReporter:(id)reporter;
- (void)reconnectStartedReporters;
- (void)requestMessageWithID:(int64_t)d category:(unsigned int)category type:(unsigned __int16)type callback:(id)callback;
- (void)requestMessageWithID:category:type:callback:;
- (void)setConfiguration:(id)configuration reporterID:(int64_t)d;
- (void)startReporter:(int64_t)reporter;
- (void)stopReporter:(int64_t)reporter;
@end

@implementation CAReportingClient

- (void)reconnectReporter:(id)reporter
{
  v35 = *MEMORY[0x29EDCA608];
  reporterCopy = reporter;
  if (_os_feature_enabled_impl())
  {
    v5 = *AA_ClientCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v23 = 136315650;
      v24 = "CAReportingClient.mm";
      v25 = 1024;
      v26 = 79;
      v27 = 2080;
      v28 = "[CAReportingClient reconnectReporter:]";
      _os_log_impl(&dword_296C89000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d Assertion failed: Unreachable Code. { function=%s }", &v23, 0x1Cu);
    }
  }

  if (reporterCopy && ([reporterCopy connected] & 1) == 0)
  {
    v6 = *AA_ClientCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      reporterID = [reporterCopy reporterID];
      v8 = CAReportingUtilityGenerateServiceNameFromServiceType([reporterCopy serviceType]);
      serviceType = [reporterCopy serviceType];
      v10 = aNy[[reporterCopy started]];
      v23 = 136316418;
      v24 = "CAReportingClient.mm";
      v25 = 1024;
      v26 = 514;
      v27 = 2048;
      v28 = reporterID;
      v29 = 2112;
      v30 = v8;
      v31 = 1024;
      v32 = serviceType;
      v33 = 1024;
      v34 = v10;
      _os_log_impl(&dword_296C89000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Reconnecting reporter { careporter_id=%lli, servicename=%@, servicetype=%i, started=%c }", &v23, 0x32u);
    }

    if (_os_feature_enabled_impl())
    {
      connection = [(CAReportingClient *)self connection];
      _unboostingRemoteObjectProxy = [connection _unboostingRemoteObjectProxy];
      [_unboostingRemoteObjectProxy createSessionWith:{objc_msgSend(reporterCopy, "reporterID")}];

      connection2 = [(CAReportingClient *)self connection];
      _unboostingRemoteObjectProxy2 = [connection2 _unboostingRemoteObjectProxy];
      [_unboostingRemoteObjectProxy2 setWithServiceType:objc_msgSend(reporterCopy for:{"serviceType"), objc_msgSend(reporterCopy, "reporterID")}];

      connection3 = [(CAReportingClient *)self connection];
      _unboostingRemoteObjectProxy3 = [connection3 _unboostingRemoteObjectProxy];
      configuration = [reporterCopy configuration];
      [_unboostingRemoteObjectProxy3 setWithConfiguration:configuration for:{objc_msgSend(reporterCopy, "reporterID")}];
    }

    else
    {
      connection4 = [(CAReportingClient *)self connection];
      _unboostingRemoteObjectProxy4 = [connection4 _unboostingRemoteObjectProxy];
      [_unboostingRemoteObjectProxy4 createReportingSession:{objc_msgSend(reporterCopy, "reporterID")}];

      connection5 = [(CAReportingClient *)self connection];
      _unboostingRemoteObjectProxy5 = [connection5 _unboostingRemoteObjectProxy];
      [_unboostingRemoteObjectProxy5 setServiceType:objc_msgSend(reporterCopy reportingSession:{"serviceType"), objc_msgSend(reporterCopy, "reporterID")}];

      connection3 = [(CAReportingClient *)self connection];
      _unboostingRemoteObjectProxy3 = [connection3 _unboostingRemoteObjectProxy];
      configuration = [reporterCopy configuration];
      [_unboostingRemoteObjectProxy3 setConfiguration:configuration forReporterID:{objc_msgSend(reporterCopy, "reporterID")}];
    }

    [reporterCopy setConnected:1];
  }

  v22 = *MEMORY[0x29EDCA608];
}

- (void)reconnectStartedReporters
{
  v26 = *MEMORY[0x29EDCA608];
  if (_os_feature_enabled_impl())
  {
    v3 = *AA_ClientCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v21 = "CAReportingClient.mm";
      v22 = 1024;
      v23 = 79;
      v24 = 2080;
      v25 = "[CAReportingClient reconnectStartedReporters]";
      _os_log_impl(&dword_296C89000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d Assertion failed: Unreachable Code. { function=%s }", buf, 0x1Cu);
    }
  }

  v4 = gReportingClient;
  objc_sync_enter(v4);
  v5 = [MEMORY[0x29EDBA0A8] predicateWithFormat:@"started == YES"];
  clientReporters = [(CAReportingClient *)self clientReporters];
  allValues = [clientReporters allValues];
  v8 = [allValues filteredArrayUsingPredicate:v5];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        -[CAReportingClient startReporter:](self, "startReporter:", [v13 reporterID]);
        -[CAReportingClient sendMessage:category:type:reporter:](self, "sendMessage:category:type:reporter:", &unk_2A1DF30E0, 1, 0, [v13 reporterID]);
      }

      v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  objc_sync_exit(v4);
  v14 = *MEMORY[0x29EDCA608];
}

- (void)disconnectReporters
{
  v25 = *MEMORY[0x29EDCA608];
  if (_os_feature_enabled_impl())
  {
    v3 = *AA_ClientCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v20 = "CAReportingClient.mm";
      v21 = 1024;
      v22 = 79;
      v23 = 2080;
      v24 = "[CAReportingClient disconnectReporters]";
      _os_log_impl(&dword_296C89000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d Assertion failed: Unreachable Code. { function=%s }", buf, 0x1Cu);
    }
  }

  v4 = *AA_ClientCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v20 = "CAReportingClient.mm";
    v21 = 1024;
    v22 = 555;
    _os_log_impl(&dword_296C89000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Disconnecting reporters", buf, 0x12u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  clientReporters = [(CAReportingClient *)selfCopy clientReporters];
  allValues = [clientReporters allValues];

  v8 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(allValues);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        [v11 setConnected:0];
        perfObject = [v11 perfObject];
        [perfObject abandon];
      }

      v8 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  objc_sync_exit(selfCopy);
  v13 = *MEMORY[0x29EDCA608];
}

- (CAReportingClient)initWithXPC:(BOOL)c endpoint:(id)endpoint
{
  cCopy = c;
  v41 = *MEMORY[0x29EDCA608];
  endpointCopy = endpoint;
  if (_os_feature_enabled_impl())
  {
    v7 = *AA_ClientCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "CAReportingClient.mm";
      v31 = 1024;
      v32 = 79;
      v33 = 2080;
      *v34 = "[CAReportingClient initWithXPC:endpoint:]";
      _os_log_impl(&dword_296C89000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d Assertion failed: Unreachable Code. { function=%s }", buf, 0x1Cu);
    }
  }

  v8 = *AA_ClientCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = aNy[cCopy];
    *buf = 136315906;
    *&buf[4] = "CAReportingClient.mm";
    v31 = 1024;
    v32 = 571;
    v33 = 1024;
    *v34 = v9;
    *&v34[4] = 2112;
    *&v34[6] = endpointCopy;
    _os_log_impl(&dword_296C89000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Creating CAReportingClient { useXPC=%c, endpoint=%@ }", buf, 0x22u);
  }

  v29.receiver = self;
  v29.super_class = CAReportingClient;
  v10 = [(CAReportingClient *)&v29 init];
  if (!v10)
  {
    goto LABEL_26;
  }

  v11 = objc_opt_new();
  [(CAReportingClient *)v10 setClientReporters:v11];

  if (!cCopy)
  {
    goto LABEL_26;
  }

  if (endpointCopy)
  {
    v12 = [objc_alloc(MEMORY[0x29EDBA170]) initWithListenerEndpoint:endpointCopy];
    [(CAReportingClient *)v10 setConnection:v12];
  }

  else
  {
    if (_os_feature_enabled_impl())
    {
      v12 = [objc_alloc(MEMORY[0x29EDBA170]) initWithMachServiceName:@"com.apple.audioanalyticsd" options:4096];
    }

    else
    {
      v12 = [objc_alloc(MEMORY[0x29EDBA170]) initWithServiceName:@"com.apple.audio.toolbox.reporting.service"];
    }

    [(CAReportingClient *)v10 setConnection:v12];
  }

  connection = [(CAReportingClient *)v10 connection];
  v14 = connection == 0;

  if (!v14)
  {
    if (_os_feature_enabled_impl())
    {
      [MEMORY[0x29EDBA178] interfaceWithProtocol:&unk_2A1DF56E0];
    }

    else
    {
      [MEMORY[0x29EDBA178] interfaceWithProtocol:&unk_2A1DF5740];
    }
    v15 = ;
    connection2 = [(CAReportingClient *)v10 connection];
    [connection2 setRemoteObjectInterface:v15];

    objc_initWeak(buf, v10);
    connection3 = [(CAReportingClient *)v10 connection];
    v25[0] = MEMORY[0x29EDCA5F8];
    v25[1] = 3221225472;
    v25[2] = __42__CAReportingClient_initWithXPC_endpoint___block_invoke;
    v25[3] = &unk_29EE531C8;
    objc_copyWeak(&v26, buf);
    [connection3 setInterruptionHandler:v25];

    connection4 = [(CAReportingClient *)v10 connection];
    [connection4 setInvalidationHandler:&__block_literal_global];

    connection5 = [(CAReportingClient *)v10 connection];
    [connection5 resume];

    objc_destroyWeak(&v26);
    objc_destroyWeak(buf);
LABEL_26:
    v21 = v10;
    goto LABEL_27;
  }

  if (_os_feature_enabled_impl())
  {
    v17 = *AA_ClientCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v28 = @"com.apple.audioanalyticsd";
      caulk::slog::detail::string_converter::string_converter<NSString * {__strong}>(buf, &v28);
      *v35 = 136315650;
      v36 = "CAReportingClient.mm";
      v37 = 1024;
      v38 = 592;
      v39 = 2080;
      v40 = *&v34[12];
      _os_log_impl(&dword_296C89000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d Error creating XPC connection { servicename=%s }", v35, 0x1Cu);
      if (v34[4] == 1 && (v34[3] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }
  }

  else
  {
    v24 = *AA_ClientCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v27 = @"com.apple.audio.toolbox.reporting.service";
      caulk::slog::detail::string_converter::string_converter<NSString * {__strong}>(buf, &v27);
      *v35 = 136315650;
      v36 = "CAReportingClient.mm";
      v37 = 1024;
      v38 = 594;
      v39 = 2080;
      v40 = *&v34[12];
      _os_log_impl(&dword_296C89000, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d Error creating XPC connection { servicename=%s }", v35, 0x1Cu);
      if (v34[4] == 1 && (v34[3] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }
  }

  v21 = 0;
LABEL_27:

  v22 = *MEMORY[0x29EDCA608];
  return v21;
}

void __42__CAReportingClient_initWithXPC_endpoint___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  v2 = *AA_ClientCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v6 = 136315394;
    v7 = "CAReportingClient.mm";
    v8 = 1024;
    v9 = 608;
    _os_log_impl(&dword_296C89000, v2, OS_LOG_TYPE_INFO, "%25s:%-5d Interruption Handler: server exited or crashed.", &v6, 0x12u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained disconnectReporters];

  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 reconnectStartedReporters];

  v5 = *MEMORY[0x29EDCA608];
}

void __42__CAReportingClient_initWithXPC_endpoint___block_invoke_210()
{
  v6 = *MEMORY[0x29EDCA608];
  v0 = *AA_ClientCategory();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315394;
    v3 = "CAReportingClient.mm";
    v4 = 1024;
    v5 = 615;
    _os_log_impl(&dword_296C89000, v0, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Invalidation Handler: server exited", &v2, 0x12u);
  }

  v1 = *MEMORY[0x29EDCA608];
}

+ (id)sharedInstance
{
  v17 = *MEMORY[0x29EDCA608];
  if (_os_feature_enabled_impl())
  {
    v3 = *AA_ClientCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315650;
      v12 = "CAReportingClient.mm";
      v13 = 1024;
      v14 = 79;
      v15 = 2080;
      v16 = "+[CAReportingClient sharedInstance]";
      _os_log_impl(&dword_296C89000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d Assertion failed: Unreachable Code. { function=%s }", &v11, 0x1Cu);
    }
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!gReportingClient)
  {
    v5 = [[selfCopy alloc] initWithXPC:1 endpoint:0];
    v6 = gReportingClient;
    gReportingClient = v5;

    v7 = *AA_ClientCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v11 = 136315394;
      v12 = "CAReportingClient.mm";
      v13 = 1024;
      v14 = 636;
      _os_log_impl(&dword_296C89000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d Registering appWillResignActive for UIApplicationWillResignActiveNotification", &v11, 0x12u);
    }
  }

  objc_sync_exit(selfCopy);

  v8 = gReportingClient;
  v9 = *MEMORY[0x29EDCA608];

  return v8;
}

- (int64_t)createReporterID:(unsigned int)d
{
  v21 = *MEMORY[0x29EDCA608];
  if (_os_feature_enabled_impl())
  {
    v5 = *AA_ClientCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v15 = 136315650;
      v16 = "CAReportingClient.mm";
      v17 = 1024;
      v18 = 79;
      v19 = 2080;
      v20 = "[CAReportingClient createReporterID:]";
      _os_log_impl(&dword_296C89000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d Assertion failed: Unreachable Code. { function=%s }", &v15, 0x1Cu);
    }
  }

  v6 = gReportingClient;
  objc_sync_enter(v6);
  dCopy = d;
  kdebug_trace();
  processInfo = [MEMORY[0x29EDBA0B0] processInfo];
  processIdentifier = [processInfo processIdentifier];
  if (!d)
  {
    dCopy = ++gReporterIDCount | (processIdentifier << 32);
  }

  if (_os_feature_enabled_impl())
  {
    connection = [(CAReportingClient *)self connection];
    _unboostingRemoteObjectProxy = [connection _unboostingRemoteObjectProxy];
    [_unboostingRemoteObjectProxy createSessionWith:dCopy];
  }

  else
  {
    connection = [(CAReportingClient *)self connection];
    _unboostingRemoteObjectProxy = [connection _unboostingRemoteObjectProxy];
    [_unboostingRemoteObjectProxy createReportingSession:dCopy];
  }

  v12 = *AA_ClientCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315650;
    v16 = "CAReportingClient.mm";
    v17 = 1024;
    v18 = 661;
    v19 = 2048;
    v20 = dCopy;
    _os_log_impl(&dword_296C89000, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Created reporter { careporter_id=%lli }", &v15, 0x1Cu);
  }

  objc_sync_exit(v6);

  v13 = *MEMORY[0x29EDCA608];
  return dCopy;
}

- (id)reporterWithID:(int64_t)d
{
  v42 = *MEMORY[0x29EDCA608];
  if (_os_feature_enabled_impl())
  {
    v5 = *AA_ClientCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "CAReportingClient.mm";
      v36 = 1024;
      v37 = 79;
      v38 = 2080;
      dCopy = "[CAReportingClient reporterWithID:]";
      _os_log_impl(&dword_296C89000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d Assertion failed: Unreachable Code. { function=%s }", buf, 0x1Cu);
    }
  }

  v6 = *AA_ClientCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "CAReportingClient.mm";
    v36 = 1024;
    v37 = 676;
    v38 = 2048;
    dCopy = d;
    _os_log_impl(&dword_296C89000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Finding reporter { careporter_id=%lli }", buf, 0x1Cu);
  }

  if (d)
  {
    v7 = gReportingClient;
    objc_sync_enter(v7);
    v8 = GetLocalCAReporterObjectFromClient(self, d);
    v9 = v8;
    if (v8)
    {
      longLongValue = v8;
    }

    else
    {
      if (_os_feature_enabled_impl())
      {
        connection = [(CAReportingClient *)self connection];
        caulk::xpc::sync_message<objc_object  {objcproto14ServerProtocol}* {__strong},NSDictionary * {__strong}>::sync_message(buf, connection);

        v12 = caulk::xpc::message<objc_object  {objcproto14ServerProtocol}* {__strong},NSDictionary * {__strong}>::sync_proxy(buf);
        v13 = caulk::xpc::message<objc_object  {objcproto14ServerProtocol}* {__strong},NSDictionary * {__strong}>::reply(buf);
        [v12 validateFor:d completion:v13];

        v14 = v41;
        if (v40)
        {
          v15 = *AA_ClientCategory();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            v16 = v40;
            localizedDescription = [v16 localizedDescription];
            v29 = 136315650;
            v30 = "CAReportingClient.mm";
            v31 = 1024;
            v32 = 699;
            v33 = 2112;
            v34 = localizedDescription;
            _os_log_impl(&dword_296C89000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d Error creating reporter { message=%@ }", &v29, 0x1Cu);
          }
        }
      }

      else
      {
        connection2 = [(CAReportingClient *)self connection];
        caulk::xpc::sync_message<objc_object  {objcproto26CAReportingServiceProtocol}* {__strong},NSDictionary * {__strong}>::sync_message(buf, connection2);

        v19 = caulk::xpc::message<objc_object  {objcproto26CAReportingServiceProtocol}* {__strong},NSDictionary * {__strong}>::sync_proxy(buf);
        v20 = caulk::xpc::message<objc_object  {objcproto26CAReportingServiceProtocol}* {__strong},NSDictionary * {__strong}>::reply(buf);
        [v19 reporterID:d valid:v20];

        v14 = v41;
        if (v40)
        {
          v21 = *AA_ClientCategory();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            v22 = v40;
            localizedDescription2 = [v22 localizedDescription];
            v29 = 136315650;
            v30 = "CAReportingClient.mm";
            v31 = 1024;
            v32 = 707;
            v33 = 2112;
            v34 = localizedDescription2;
            _os_log_impl(&dword_296C89000, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d Error creating reporter { message=%@ }", &v29, 0x1Cu);
          }
        }
      }

      std::__function::__value_func<void ()(NSError *,std::tuple<NSDictionary * {__strong}> &&)>::~__value_func[abi:ne200100](&buf[8]);
      if (v14)
      {
        v24 = [v14 objectForKey:@"reporterID"];
        longLongValue = [v24 longLongValue];

        v25 = [v14 objectForKey:@"serviceType"];
        intValue = [v25 intValue];

        if (longLongValue)
        {
          longLongValue = [[CAReporter alloc] initWithReporterID:longLongValue serviceType:intValue];
        }
      }

      else
      {
        longLongValue = 0;
      }
    }

    objc_sync_exit(v7);
  }

  else
  {
    longLongValue = 0;
  }

  v27 = *MEMORY[0x29EDCA608];

  return longLongValue;
}

- (void)addReporter:(id)reporter
{
  v22 = *MEMORY[0x29EDCA608];
  reporterCopy = reporter;
  if (_os_feature_enabled_impl())
  {
    v5 = *AA_ClientCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v17 = "CAReportingClient.mm";
      v18 = 1024;
      v19 = 79;
      v20 = 2080;
      v21 = "[CAReportingClient addReporter:]";
      _os_log_impl(&dword_296C89000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d Assertion failed: Unreachable Code. { function=%s }", buf, 0x1Cu);
    }
  }

  if (reporterCopy)
  {
    v6 = *AA_ClientCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      reporterID = [reporterCopy reporterID];
      *buf = 136315650;
      v17 = "CAReportingClient.mm";
      v18 = 1024;
      v19 = 737;
      v20 = 2048;
      v21 = reporterID;
      _os_log_impl(&dword_296C89000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Adding reporter to client { careporter_id=%lli }", buf, 0x1Cu);
    }

    v8 = gReportingClient;
    objc_sync_enter(v8);
    clientReporters = [(CAReportingClient *)self clientReporters];
    v10 = [MEMORY[0x29EDBA070] numberWithLongLong:{objc_msgSend(reporterCopy, "reporterID")}];
    v14 = v10;
    v15 = reporterCopy;
    v11 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    [clientReporters addEntriesFromDictionary:v11];

    objc_sync_exit(v8);
  }

  else
  {
    v12 = *AA_ClientCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v17 = "CAReportingClient.mm";
      v18 = 1024;
      v19 = 733;
      _os_log_impl(&dword_296C89000, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Received nil reporter!", buf, 0x12u);
    }
  }

  v13 = *MEMORY[0x29EDCA608];
}

- (void)destroyReporterWithID:(int64_t)d
{
  v23 = *MEMORY[0x29EDCA608];
  if (_os_feature_enabled_impl())
  {
    v5 = *AA_ClientCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v17 = 136315650;
      v18 = "CAReportingClient.mm";
      v19 = 1024;
      v20 = 79;
      v21 = 2080;
      dCopy2 = "[CAReportingClient destroyReporterWithID:]";
      _os_log_impl(&dword_296C89000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d Assertion failed: Unreachable Code. { function=%s }", &v17, 0x1Cu);
    }
  }

  v6 = gReportingClient;
  objc_sync_enter(v6);
  if (d)
  {
    clientReporters = [(CAReportingClient *)self clientReporters];
    v8 = [MEMORY[0x29EDBA070] numberWithLongLong:d];
    v9 = [clientReporters objectForKeyedSubscript:v8];

    if (v9)
    {
      [(CAReportingClient *)self stopReporter:d];
      v10 = *AA_ClientCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 136315650;
        v18 = "CAReportingClient.mm";
        v19 = 1024;
        v20 = 760;
        v21 = 2048;
        dCopy2 = d;
        _os_log_impl(&dword_296C89000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Removing reporter from client and server { careporter_id=%lli }", &v17, 0x1Cu);
      }

      [v9 setRemovedByClient:1];
      clientReporters2 = [(CAReportingClient *)self clientReporters];
      v12 = [MEMORY[0x29EDBA070] numberWithLongLong:d];
      [clientReporters2 removeObjectForKey:v12];

      if ([v9 connected])
      {
        if (_os_feature_enabled_impl())
        {
          connection = [(CAReportingClient *)self connection];
          _unboostingRemoteObjectProxy = [connection _unboostingRemoteObjectProxy];
          [_unboostingRemoteObjectProxy destroySessionFor:d];
        }

        else
        {
          connection = [(CAReportingClient *)self connection];
          _unboostingRemoteObjectProxy = [connection _unboostingRemoteObjectProxy];
          [_unboostingRemoteObjectProxy destroyReportingSession:d];
        }
      }
    }

    else
    {
      v15 = *AA_ClientCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v17 = 136315650;
        v18 = "CAReportingClient.mm";
        v19 = 1024;
        v20 = 773;
        v21 = 2048;
        dCopy2 = d;
        _os_log_impl(&dword_296C89000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d Attempted to remove a reporter not created by this client { careporter_id=%lli }", &v17, 0x1Cu);
      }
    }
  }

  objc_sync_exit(v6);

  v16 = *MEMORY[0x29EDCA608];
}

- (void)requestMessageWithID:(int64_t)d category:(unsigned int)category type:(unsigned __int16)type callback:(id)callback
{
  typeCopy = type;
  v34 = *MEMORY[0x29EDCA608];
  callbackCopy = callback;
  if (_os_feature_enabled_impl())
  {
    v11 = *AA_ClientCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      buf[0] = 136315650;
      *&buf[1] = "CAReportingClient.mm";
      v22 = 1024;
      v23 = 79;
      v24 = 2080;
      dCopy = "[CAReportingClient requestMessageWithID:category:type:callback:]";
      _os_log_impl(&dword_296C89000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d Assertion failed: Unreachable Code. { function=%s }", buf, 0x1Cu);
    }
  }

  v12 = *AA_ClientCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = CAReportingUtilityCategoryString(category);
    v14 = CAReportingUtilityTypeString(typeCopy);
    buf[0] = 136316674;
    *&buf[1] = "CAReportingClient.mm";
    v22 = 1024;
    v23 = 786;
    v24 = 2048;
    dCopy = d;
    v26 = 2112;
    v27 = v13;
    v28 = 1024;
    categoryCopy2 = category;
    v30 = 2112;
    v31 = v14;
    v32 = 1024;
    v33 = typeCopy;
    _os_log_impl(&dword_296C89000, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d requestMessageWithID called. { careporter_id=%lli, eventcategoryname=%@, eventcategory=%i, servicename=%@, servicetype=%i }", buf, 0x3Cu);
  }

  if (!d)
  {
    v15 = *AA_ClientCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = CAReportingUtilityCategoryString(category);
      v17 = CAReportingUtilityTypeString(typeCopy);
      buf[0] = 136316674;
      *&buf[1] = "CAReportingClient.mm";
      v22 = 1024;
      v23 = 788;
      v24 = 2048;
      dCopy = 0;
      v26 = 2112;
      v27 = v16;
      v28 = 1024;
      categoryCopy2 = category;
      v30 = 2112;
      v31 = v17;
      v32 = 1024;
      v33 = typeCopy;
      _os_log_impl(&dword_296C89000, v15, OS_LOG_TYPE_DEFAULT, "%25s:%-5d requestMessageWithID: Invalid reporterID. Invoking callback. { careporter_id=%lli, eventcategoryname=%@, eventcategory=%i, servicename=%@, servicetype=%i }", buf, 0x3Cu);
    }

    callbackCopy[2](callbackCopy, 0);
  }

  objc_sync_enter(gReportingClient);
  v18 = MEMORY[0x29C261C60](callbackCopy);
  if (_os_feature_enabled_impl())
  {
    [(CAReportingClient *)self connection];
    objc_claimAutoreleasedReturnValue();
    MEMORY[0x29C261C60](v18);
    std::function<void ()(NSError *,std::tuple<NSDictionary * {__strong}> &&)>::function<[CAReportingClient requestMessageWithID:category:type:callback:]::$_0,void>(v20);
  }

  [(CAReportingClient *)self connection];
  objc_claimAutoreleasedReturnValue();
  MEMORY[0x29C261C60](v18);
  std::function<void ()(NSError *,std::tuple<NSDictionary * {__strong}> &&)>::function<[CAReportingClient requestMessageWithID:category:type:callback:]::$_0,void>(v19);
}

- (id)listClientReporterIDs
{
  v3 = gReportingClient;
  objc_sync_enter(v3);
  clientReporters = [(CAReportingClient *)self clientReporters];
  allKeys = [clientReporters allKeys];

  objc_sync_exit(v3);

  return allKeys;
}

- (id)listServerReporterIDs
{
  v27 = *MEMORY[0x29EDCA608];
  v3 = gReportingClient;
  objc_sync_enter(v3);
  if (_os_feature_enabled_impl())
  {
    connection = [(CAReportingClient *)self connection];
    caulk::xpc::sync_message<objc_object  {objcproto14ServerProtocol}* {__strong},NSArray<NSNumber *> * {__strong}>::sync_message(&v23, connection);

    v5 = v26;
    if (v25)
    {
      v6 = *AA_ClientCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = v25;
        localizedDescription = [v7 localizedDescription];
        v17 = 136315650;
        v18 = "CAReportingClient.mm";
        v19 = 1024;
        v20 = 836;
        v21 = 2112;
        v22 = localizedDescription;
        _os_log_impl(&dword_296C89000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d error listing reporters { message=%@ }", &v17, 0x1Cu);
      }
    }
  }

  else
  {
    connection2 = [(CAReportingClient *)self connection];
    caulk::xpc::sync_message<objc_object  {objcproto26CAReportingServiceProtocol}* {__strong},NSArray<NSNumber *> * {__strong}>::sync_message(&v23, connection2);

    v10 = caulk::xpc::message<objc_object  {objcproto26CAReportingServiceProtocol}* {__strong},NSArray<NSNumber *> * {__strong}>::sync_proxy(&v23);
    v11 = caulk::xpc::message<objc_object  {objcproto26CAReportingServiceProtocol}* {__strong},NSArray<NSNumber *> * {__strong}>::reply(&v23);
    [v10 getAllReporters:v11];

    v5 = v26;
    if (v25)
    {
      v12 = *AA_ClientCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = v25;
        localizedDescription2 = [v13 localizedDescription];
        v17 = 136315650;
        v18 = "CAReportingClient.mm";
        v19 = 1024;
        v20 = 844;
        v21 = 2112;
        v22 = localizedDescription2;
        _os_log_impl(&dword_296C89000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d error listing reporters { message=%@ }", &v17, 0x1Cu);
      }
    }
  }

  std::__function::__value_func<void ()(NSError *,std::tuple<NSArray<NSNumber *> * {__strong}> &&)>::~__value_func[abi:ne200100](&v24);
  objc_sync_exit(v3);

  v15 = *MEMORY[0x29EDCA608];

  return v5;
}

- (void)startReporter:(int64_t)reporter
{
  v30 = *MEMORY[0x29EDCA608];
  if (_os_feature_enabled_impl())
  {
    v5 = *AA_ClientCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v24 = 136315650;
      *&v24[4] = "CAReportingClient.mm";
      v25 = 1024;
      v26 = 79;
      v27 = 2080;
      reporterCopy2 = "[CAReportingClient startReporter:]";
      _os_log_impl(&dword_296C89000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d Assertion failed: Unreachable Code. { function=%s }", v24, 0x1Cu);
    }
  }

  v6 = gReportingClient;
  objc_sync_enter(v6);
  v7 = *AA_ClientCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v24 = 136315650;
    *&v24[4] = "CAReportingClient.mm";
    v25 = 1024;
    v26 = 861;
    v27 = 2048;
    reporterCopy2 = reporter;
    _os_log_impl(&dword_296C89000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Starting { careporter_id=%lli }", v24, 0x1Cu);
  }

  v8 = GetLocalCAReporterObjectFromClient(self, reporter);
  v9 = v8;
  if (v8)
  {
    [v8 reporterID];
    [v9 serviceType];
    kdebug_trace();
    [(CAReportingClient *)self reconnectReporter:v9];
    if (([v9 started] & 1) == 0)
    {
      date = [MEMORY[0x29EDB8DB0] date];
      [v9 setStartDate:date];

      [v9 setStarted:1];
      v11 = *AA_ClientCategory();
      signpostID = [v9 signpostID];
      if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
      {
        configuration = [v9 configuration];
        v14 = CAReportingUtilityRetrieveAppName(configuration);
        *v24 = 138543362;
        *&v24[4] = v14;
        _os_signpost_emit_with_name_impl(&dword_296C89000, v11, OS_SIGNPOST_INTERVAL_BEGIN, signpostID, "CoreAudioReportingSession", "Starting Application=%{public}@", v24, 0xCu);
      }

      if ([v9 serviceType] == 11 && CAReportingUtilityIsInternalBuild())
      {
        if (_os_feature_enabled_impl())
        {
          connection = [(CAReportingClient *)self connection];
          caulk::xpc::sync_message<objc_object  {objcproto14ServerProtocol}* {__strong},BOOL>::sync_message(v24, connection);

          v16 = caulk::xpc::message<objc_object  {objcproto14ServerProtocol}* {__strong},BOOL>::sync_proxy(v24);
          [v16 startSessionFor:reporter];
        }

        else
        {
          connection2 = [(CAReportingClient *)self connection];
          caulk::xpc::sync_message<objc_object  {objcproto26CAReportingServiceProtocol}* {__strong},BOOL>::sync_message(v24, connection2);

          v16 = caulk::xpc::message<objc_object  {objcproto26CAReportingServiceProtocol}* {__strong},BOOL>::sync_proxy(v24);
          v21 = caulk::xpc::message<objc_object  {objcproto26CAReportingServiceProtocol}* {__strong},BOOL>::reply(v24);
          [v16 startReportingSessionForID:reporter reply:v21];
        }

        std::__function::__value_func<void ()(NSError *,std::tuple<BOOL> &&)>::~__value_func[abi:ne200100](&v24[8]);
      }

      else
      {
        if (_os_feature_enabled_impl())
        {
          connection3 = [(CAReportingClient *)self connection];
          _unboostingRemoteObjectProxy = [connection3 _unboostingRemoteObjectProxy];
          [_unboostingRemoteObjectProxy startSessionFor:reporter];
        }

        else
        {
          connection3 = [(CAReportingClient *)self connection];
          _unboostingRemoteObjectProxy = [connection3 _unboostingRemoteObjectProxy];
          [_unboostingRemoteObjectProxy startReportingSessionForID:reporter];
        }
      }

      perfObject = [v9 perfObject];
      [perfObject begin];
    }
  }

  else
  {
    v17 = *AA_ClientCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *v24 = 136315650;
      *&v24[4] = "CAReportingClient.mm";
      v25 = 1024;
      v26 = 865;
      v27 = 2048;
      reporterCopy2 = reporter;
      _os_log_impl(&dword_296C89000, v17, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Reporter not found { careporter_id=%lli }", v24, 0x1Cu);
    }
  }

  objc_sync_exit(v6);
  v23 = *MEMORY[0x29EDCA608];
}

- (void)stopReporter:(int64_t)reporter
{
  v37[1] = *MEMORY[0x29EDCA608];
  if (_os_feature_enabled_impl())
  {
    v5 = *AA_ClientCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v28 = 136315650;
      v29 = "CAReportingClient.mm";
      v30 = 1024;
      v31 = 79;
      v32 = 2080;
      reporterCopy3 = "[CAReportingClient stopReporter:]";
      _os_log_impl(&dword_296C89000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d Assertion failed: Unreachable Code. { function=%s }", &v28, 0x1Cu);
    }
  }

  v6 = gReportingClient;
  objc_sync_enter(v6);
  v7 = *AA_ClientCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v28 = 136315650;
    v29 = "CAReportingClient.mm";
    v30 = 1024;
    v31 = 909;
    v32 = 2048;
    reporterCopy3 = reporter;
    _os_log_impl(&dword_296C89000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Stopping { careporter_id=%lli }", &v28, 0x1Cu);
  }

  v8 = GetLocalCAReporterObjectFromClient(self, reporter);
  v9 = v8;
  if (v8)
  {
    if (![v8 started] || (objc_msgSend(v9, "startDate"), v10 = objc_claimAutoreleasedReturnValue(), v11 = v10 == 0, v10, v11))
    {
      v22 = *AA_ClientCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        v28 = 136315650;
        v29 = "CAReportingClient.mm";
        v30 = 1024;
        v31 = 917;
        v32 = 2048;
        reporterCopy3 = reporter;
        _os_log_impl(&dword_296C89000, v22, OS_LOG_TYPE_DEBUG, "%25s:%-5d !reporter.started or reporter.startDate is nil { careporter_id=%lli }", &v28, 0x1Cu);
      }
    }

    else
    {
      [v9 reporterID];
      [v9 serviceType];
      kdebug_trace();
      v36 = @"session_duration";
      v12 = MEMORY[0x29EDBA070];
      startDate = [v9 startDate];
      [startDate timeIntervalSinceNow];
      v15 = [v12 numberWithDouble:fabs(v14)];
      v37[0] = v15;
      v16 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v37 forKeys:&v36 count:1];
      [(CAReportingClient *)self sendMessage:v16 category:1 type:0 reporter:reporter];

      perfObject = [v9 perfObject];
      endAndReturnPerformanceMetrics = [perfObject endAndReturnPerformanceMetrics];

      if (endAndReturnPerformanceMetrics)
      {
        v19 = *AA_ClientCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          v28 = 136315906;
          v29 = "CAReportingClient.mm";
          v30 = 1024;
          v31 = 925;
          v32 = 2048;
          reporterCopy3 = reporter;
          v34 = 2112;
          v35 = endAndReturnPerformanceMetrics;
          _os_log_impl(&dword_296C89000, v19, OS_LOG_TYPE_DEBUG, "%25s:%-5d gathered perf metrics { careporter_id=%lli, perfMetrics=%@ }", &v28, 0x26u);
        }

        [(CAReportingClient *)self sendMessage:endAndReturnPerformanceMetrics category:13 type:0 reporter:reporter];
      }

      if ([v9 connected])
      {
        if (_os_feature_enabled_impl())
        {
          connection = [(CAReportingClient *)self connection];
          _unboostingRemoteObjectProxy = [connection _unboostingRemoteObjectProxy];
          [_unboostingRemoteObjectProxy stopSessionFor:reporter];
        }

        else
        {
          connection = [(CAReportingClient *)self connection];
          _unboostingRemoteObjectProxy = [connection _unboostingRemoteObjectProxy];
          [_unboostingRemoteObjectProxy stopReportingSessionForID:reporter];
        }
      }

      v23 = *AA_ClientCategory();
      signpostID = [v9 signpostID];
      if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
      {
        configuration = [v9 configuration];
        v26 = CAReportingUtilityRetrieveAppName(configuration);
        v28 = 138543362;
        v29 = v26;
        _os_signpost_emit_with_name_impl(&dword_296C89000, v23, OS_SIGNPOST_INTERVAL_END, signpostID, "CoreAudioReportingSession", "Stopping Application=%{public}@", &v28, 0xCu);
      }

      [v9 setStarted:0];
      [v9 setStartDate:0];
    }
  }

  objc_sync_exit(v6);
  v27 = *MEMORY[0x29EDCA608];
}

uint64_t __56__CAReportingClient_sendMessage_category_type_reporter___block_invoke()
{
  result = os_variant_is_darwinos();
  [CAReportingClient sendMessage:category:type:reporter:]::gCAReportingIsDarwin = result;
  return result;
}

- (unsigned)getServiceTypeForReporterID:(int64_t)d
{
  v45 = *MEMORY[0x29EDCA608];
  if (_os_feature_enabled_impl())
  {
    v5 = *AA_ClientCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "CAReportingClient.mm";
      v39 = 1024;
      v40 = 79;
      v41 = 2080;
      v42 = "[CAReportingClient getServiceTypeForReporterID:]";
      _os_log_impl(&dword_296C89000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d Assertion failed: Unreachable Code. { function=%s }", buf, 0x1Cu);
    }
  }

  v6 = gReportingClient;
  objc_sync_enter(v6);
  clientReporters = [(CAReportingClient *)self clientReporters];
  v8 = [MEMORY[0x29EDBA070] numberWithLongLong:d];
  v9 = [clientReporters objectForKey:v8];

  if (v9)
  {
    serviceType = [v9 serviceType];
  }

  else if (_os_feature_enabled_impl())
  {
    if (_os_feature_enabled_impl())
    {
      connection = [(CAReportingClient *)self connection];
      caulk::xpc::sync_message<objc_object  {objcproto14ServerProtocol}* {__strong},NSDictionary * {__strong}>::sync_message(buf, connection);

      v12 = caulk::xpc::message<objc_object  {objcproto14ServerProtocol}* {__strong},NSDictionary * {__strong}>::sync_proxy(buf);
      v13 = caulk::xpc::message<objc_object  {objcproto14ServerProtocol}* {__strong},NSDictionary * {__strong}>::reply(buf);
      [v12 validateFor:d completion:v13];

      v14 = v44;
      if (v43)
      {
        v15 = *AA_ClientCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v16 = v43;
          localizedDescription = [v16 localizedDescription];
          v30 = 136315906;
          v31 = "CAReportingClient.mm";
          v32 = 1024;
          v33 = 1084;
          v34 = 2112;
          v35 = localizedDescription;
          v36 = 2048;
          dCopy2 = d;
          _os_log_impl(&dword_296C89000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d Error getting service type { message=%@, careporter_id=%lli }", &v30, 0x26u);
        }
      }
    }

    else
    {
      connection2 = [(CAReportingClient *)self connection];
      caulk::xpc::sync_message<objc_object  {objcproto26CAReportingServiceProtocol}* {__strong},NSDictionary * {__strong}>::sync_message(buf, connection2);

      v19 = caulk::xpc::message<objc_object  {objcproto26CAReportingServiceProtocol}* {__strong},NSDictionary * {__strong}>::sync_proxy(buf);
      v20 = caulk::xpc::message<objc_object  {objcproto26CAReportingServiceProtocol}* {__strong},NSDictionary * {__strong}>::reply(buf);
      [v19 reporterID:d valid:v20];

      v14 = v44;
      if (v43)
      {
        v21 = *AA_ClientCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v22 = v43;
          localizedDescription2 = [v22 localizedDescription];
          v30 = 136315906;
          v31 = "CAReportingClient.mm";
          v32 = 1024;
          v33 = 1094;
          v34 = 2112;
          v35 = localizedDescription2;
          v36 = 2048;
          dCopy2 = d;
          _os_log_impl(&dword_296C89000, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d Error getting service type { message=%@, careporter_id=%lli }", &v30, 0x26u);
        }
      }
    }

    std::__function::__value_func<void ()(NSError *,std::tuple<NSDictionary * {__strong}> &&)>::~__value_func[abi:ne200100](&buf[8]);
    if (v14)
    {
      v24 = [v14 objectForKey:@"reporterID"];
      longLongValue = [v24 longLongValue];

      v26 = [v14 objectForKey:@"serviceType"];
      intValue = [v26 intValue];

      if (longLongValue)
      {
        serviceType = intValue;
      }

      else
      {
        serviceType = -1;
      }
    }

    else
    {
      serviceType = -1;
    }
  }

  else
  {
    serviceType = -1;
  }

  objc_sync_exit(v6);

  v28 = *MEMORY[0x29EDCA608];
  return serviceType;
}

- (void)setConfiguration:(id)configuration reporterID:(int64_t)d
{
  v17 = *MEMORY[0x29EDCA608];
  configurationCopy = configuration;
  if (_os_feature_enabled_impl())
  {
    v7 = *AA_ClientCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315650;
      v12 = "CAReportingClient.mm";
      v13 = 1024;
      v14 = 79;
      v15 = 2080;
      v16 = "[CAReportingClient setConfiguration:reporterID:]";
      _os_log_impl(&dword_296C89000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d Assertion failed: Unreachable Code. { function=%s }", &v11, 0x1Cu);
    }
  }

  v8 = gReportingClient;
  objc_sync_enter(v8);
  v9 = GetLocalCAReporterObjectFromClient(self, d);
  [v9 setConfiguration:configurationCopy];

  objc_sync_exit(v8);
  v10 = *MEMORY[0x29EDCA608];
}

- (id)getConfigurationForReporterID:(int64_t)d
{
  v19 = *MEMORY[0x29EDCA608];
  if (_os_feature_enabled_impl())
  {
    v5 = *AA_ClientCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315650;
      v14 = "CAReportingClient.mm";
      v15 = 1024;
      v16 = 79;
      v17 = 2080;
      v18 = "[CAReportingClient getConfigurationForReporterID:]";
      _os_log_impl(&dword_296C89000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d Assertion failed: Unreachable Code. { function=%s }", &v13, 0x1Cu);
    }
  }

  v6 = gReportingClient;
  objc_sync_enter(v6);
  v7 = GetLocalCAReporterObjectFromClient(self, d);
  v8 = v7;
  if (v7)
  {
    configuration = [v7 configuration];
  }

  else
  {
    configuration = objc_opt_new();
  }

  v10 = configuration;

  objc_sync_exit(v6);
  v11 = *MEMORY[0x29EDCA608];

  return v10;
}

+ (id)getClient
{
  v13 = *MEMORY[0x29EDCA608];
  if (_os_feature_enabled_impl())
  {
    v2 = *AA_ClientCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315650;
      v8 = "CAReportingClient.mm";
      v9 = 1024;
      v10 = 79;
      v11 = 2080;
      v12 = "+[CAReportingClient getClient]";
      _os_log_impl(&dword_296C89000, v2, OS_LOG_TYPE_ERROR, "%25s:%-5d Assertion failed: Unreachable Code. { function=%s }", &v7, 0x1Cu);
    }
  }

  v3 = gReportingClient;
  objc_sync_enter(v3);
  v4 = gReportingClient;
  objc_sync_exit(v3);

  v5 = *MEMORY[0x29EDCA608];

  return v4;
}

+ (void)destroyClient
{
  v12 = *MEMORY[0x29EDCA608];
  if (_os_feature_enabled_impl())
  {
    v2 = *AA_ClientCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315650;
      v7 = "CAReportingClient.mm";
      v8 = 1024;
      v9 = 79;
      v10 = 2080;
      v11 = "+[CAReportingClient destroyClient]";
      _os_log_impl(&dword_296C89000, v2, OS_LOG_TYPE_ERROR, "%25s:%-5d Assertion failed: Unreachable Code. { function=%s }", &v6, 0x1Cu);
    }
  }

  v3 = gReportingClient;
  objc_sync_enter(v3);
  v4 = gReportingClient;
  gReportingClient = 0;

  objc_sync_exit(v3);
  v5 = *MEMORY[0x29EDCA608];
}

- (void)destroyService
{
  v14 = *MEMORY[0x29EDCA608];
  if (_os_feature_enabled_impl())
  {
    v3 = *AA_ClientCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315650;
      v9 = "CAReportingClient.mm";
      v10 = 1024;
      v11 = 79;
      v12 = 2080;
      v13 = "[CAReportingClient destroyService]";
      _os_log_impl(&dword_296C89000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d Assertion failed: Unreachable Code. { function=%s }", &v8, 0x1Cu);
    }
  }

  v4 = gReportingClient;
  objc_sync_enter(v4);
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    connection = [(CAReportingClient *)self connection];
    _unboostingRemoteObjectProxy = [connection _unboostingRemoteObjectProxy];
    [_unboostingRemoteObjectProxy killService];
  }

  objc_sync_exit(v4);

  v7 = *MEMORY[0x29EDCA608];
}

- (void)dealloc
{
  v10 = *MEMORY[0x29EDCA608];
  v3 = *AA_ClientCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v7 = "CAReportingClient.mm";
    v8 = 1024;
    v9 = 1182;
    _os_log_impl(&dword_296C89000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Destroying client", buf, 0x12u);
  }

  v5.receiver = self;
  v5.super_class = CAReportingClient;
  [(CAReportingClient *)&v5 dealloc];
  v4 = *MEMORY[0x29EDCA608];
}

- (void)requestMessageWithID:category:type:callback:
{
  v34 = *MEMORY[0x29EDCA608];
  v4 = *a2;
  v5 = *a3;
  *a3 = 0;
  v6 = v4;
  if (v6)
  {
    v7 = *AA_ClientCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      localizedDescription = [v6 localizedDescription];
      v9 = *(self + 16);
      v20 = 136315906;
      v21 = "CAReportingClient.mm";
      v22 = 1024;
      v23 = 795;
      v24 = 2112;
      v25 = localizedDescription;
      v26 = 2048;
      v27 = v9;
      _os_log_impl(&dword_296C89000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d requestMessageWithID error. { message=%@, careporter_id=%lli }", &v20, 0x26u);
    }

    (*(*(self + 8) + 16))();
  }

  else
  {
    v10 = *AA_ClientCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(self + 16);
      v12 = CAReportingUtilityCategoryString(*(self + 24));
      v13 = *(self + 24);
      v14 = CAReportingUtilityTypeString(*(self + 28));
      v15 = *(self + 28);
      v20 = 136316674;
      v21 = "CAReportingClient.mm";
      v22 = 1024;
      v23 = 800;
      v24 = 2048;
      v25 = v11;
      v26 = 2112;
      v27 = v12;
      v28 = 1024;
      v29 = v13;
      v30 = 2112;
      v31 = v14;
      v32 = 1024;
      v33 = v15;
      _os_log_impl(&dword_296C89000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d requestMessageWithID: Received message. Invoking callback. { careporter_id=%lli, eventcategoryname=%@, eventcategory=%i, servicename=%@, servicetype=%i }", &v20, 0x3Cu);
    }

    v16 = *(self + 8);
    v17 = *(v16 + 16);
    v18 = v5;
    v17(v16, v18);
  }

  v19 = *MEMORY[0x29EDCA608];
}

- (uint64_t)requestMessageWithID:category:type:callback:
{
  {
    return self + 8;
  }

  else
  {
    return 0;
  }
}

@end