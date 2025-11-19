@interface CAReporter
- (CAReporter)initWithNewReporterID;
- (CAReporter)initWithReporterID:(int64_t)a3 serviceType:(unsigned __int16)a4;
- (NSDictionary)configuration;
- (int64_t)reporterID;
- (unsigned)serviceType;
- (void)dealloc;
- (void)setConfiguration:(id)a3;
- (void)start;
- (void)stop;
- (void)updateWithReporterID:(int64_t)a3;
@end

@implementation CAReporter

- (void)start
{
  v20 = *MEMORY[0x29EDCA608];
  if (_os_feature_enabled_impl())
  {
    v13 = [(CAReporter *)self swiftReporter];
    [v13 start];
    v3 = *MEMORY[0x29EDCA608];
  }

  else
  {
    v4 = gReportingClient;
    objc_sync_enter(v4);
    v5 = *AA_ClientCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      reporterID = self->_reporterID;
      *buf = 136315650;
      v15 = "CAReportingClient.mm";
      v16 = 1024;
      v17 = 385;
      v18 = 2048;
      v19 = reporterID;
      _os_log_impl(&dword_296C89000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d Starting reporter { careporter_id=%lli }", buf, 0x1Cu);
    }

    v7 = *AA_ClientCategory();
    v8 = v7;
    signpostID = self->_signpostID;
    if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      v10 = CAReportingUtilityRetrieveAppName(&self->_internalConfiguration->super);
      *buf = 138543362;
      v15 = v10;
      _os_signpost_emit_with_name_impl(&dword_296C89000, v8, OS_SIGNPOST_INTERVAL_BEGIN, signpostID, "CoreAudioReportingSession", "Starting Application=%{public}@", buf, 0xCu);
    }

    v11 = +[CAReportingClient sharedInstance];
    [v11 startReporter:self->_reporterID];

    objc_sync_exit(v4);
    v12 = *MEMORY[0x29EDCA608];
  }
}

- (void)stop
{
  v20 = *MEMORY[0x29EDCA608];
  if (_os_feature_enabled_impl())
  {
    v13 = [(CAReporter *)self swiftReporter];
    [v13 stop];
    v3 = *MEMORY[0x29EDCA608];
  }

  else
  {
    v4 = gReportingClient;
    objc_sync_enter(v4);
    v5 = *AA_ClientCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      reporterID = self->_reporterID;
      *buf = 136315650;
      v15 = "CAReportingClient.mm";
      v16 = 1024;
      v17 = 421;
      v18 = 2048;
      v19 = reporterID;
      _os_log_impl(&dword_296C89000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d Stopping reporter { careporter_id=%lli }", buf, 0x1Cu);
    }

    v7 = *AA_ClientCategory();
    v8 = v7;
    signpostID = self->_signpostID;
    if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      v10 = CAReportingUtilityRetrieveAppName(&self->_internalConfiguration->super);
      *buf = 138543362;
      v15 = v10;
      _os_signpost_emit_with_name_impl(&dword_296C89000, v8, OS_SIGNPOST_INTERVAL_END, signpostID, "CoreAudioReportingSession", "Stopping Application=%{public}@", buf, 0xCu);
    }

    v11 = +[CAReportingClient sharedInstance];
    [v11 stopReporter:{-[CAReporter reporterID](self, "reporterID")}];

    objc_sync_exit(v4);
    v12 = *MEMORY[0x29EDCA608];
  }
}

- (int64_t)reporterID
{
  if (!_os_feature_enabled_impl())
  {
    return self->_reporterID;
  }

  v3 = [(CAReporter *)self swiftReporter];
  v4 = [v3 reporterID];

  return v4;
}

- (CAReporter)initWithReporterID:(int64_t)a3 serviceType:(unsigned __int16)a4
{
  v4 = a4;
  v43[1] = *MEMORY[0x29EDCA608];
  if (!_os_feature_enabled_impl())
  {
    v10 = *AA_ClientCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = CAReportingUtilityGenerateServiceNameFromServiceType(v4);
      *buf = 136316162;
      v37 = "CAReportingClient.mm";
      v38 = 1024;
      v39 = 145;
      v40 = 1024;
      *v41 = a3;
      *&v41[4] = 2112;
      *&v41[6] = v11;
      *&v41[14] = 1024;
      *&v41[16] = v4;
      _os_log_impl(&dword_296C89000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d initWithReporterID: serviceType: { reporterID=%i, servicename=%@, servicetype=%i }", buf, 0x28u);
    }

    v12 = +[CAReportingClient sharedInstance];
    v13 = v12 == 0;

    if (!v13)
    {
      if (a3)
      {
        v34.receiver = self;
        v34.super_class = CAReporter;
        v14 = [(CAReporter *)&v34 init];
        v7 = v14;
        if (v14)
        {
          v14->_reporterID = a3;
          v15 = *AA_ClientCategory();
          *(v7 + 8) = os_signpost_id_make_with_pointer(v15, v7 + 16);

          *(v7 + 6) = v4;
          *(v7 + 9) = 256;
          v16 = [CAReportingPerformanceObject alloc];
          v17 = MEMORY[0x29EDBA070];
          v18 = [MEMORY[0x29EDBA0B0] processInfo];
          v19 = [v17 numberWithInt:{objc_msgSend(v18, "processIdentifier")}];
          v43[0] = v19;
          v20 = [MEMORY[0x29EDB8D80] arrayWithObjects:v43 count:1];
          v21 = [(CAReportingPerformanceObject *)v16 initWithProcessIdentifiers:v20];
          v22 = *(v7 + 7);
          *(v7 + 7) = v21;

          v23 = objc_opt_new();
          v24 = *(v7 + 5);
          *(v7 + 5) = v23;

          v25 = *AA_ClientCategory();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            v26 = *(v7 + 2);
            v27 = CAReportingUtilityGenerateServiceNameFromServiceType(*(v7 + 6));
            v28 = *(v7 + 6);
            *buf = 136316162;
            v37 = "CAReportingClient.mm";
            v38 = 1024;
            v39 = 165;
            v40 = 2048;
            *v41 = v26;
            *&v41[8] = 2112;
            *&v41[10] = v27;
            *&v41[18] = 1024;
            v42 = v28;
            _os_log_impl(&dword_296C89000, v25, OS_LOG_TYPE_DEBUG, "%25s:%-5d Creating CAReporter { careporter_id=%lli, servicename=%@, servicetype=%i }", buf, 0x2Cu);
          }

          v29 = +[CAReportingClient sharedInstance];
          [v29 addReporter:v7];
        }

        goto LABEL_13;
      }

      v31 = *AA_ClientCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        v37 = "CAReportingClient.mm";
        v38 = 1024;
        v39 = 151;
        _os_log_impl(&dword_296C89000, v31, OS_LOG_TYPE_DEBUG, "%25s:%-5d initWithReporterID: reporterID == CAReporterInvalidID, returning nil", buf, 0x12u);
      }
    }

    v30 = 0;
    v7 = self;
    goto LABEL_18;
  }

  v35.receiver = self;
  v35.super_class = CAReporter;
  v7 = [(CAReporter *)&v35 init];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x29EDBFAA8]) initWithReporterID:a3];
    v9 = *(v7 + 4);
    *(v7 + 4) = v8;

    if (!*(v7 + 4))
    {
      v30 = 0;
      goto LABEL_18;
    }

    *(v7 + 2) = a3;
    *(v7 + 6) = v4;
  }

LABEL_13:
  v7 = v7;
  v30 = v7;
LABEL_18:

  v32 = *MEMORY[0x29EDCA608];
  return v30;
}

- (CAReporter)initWithNewReporterID
{
  v22 = *MEMORY[0x29EDCA608];
  if (_os_feature_enabled_impl())
  {
    v15.receiver = self;
    v15.super_class = CAReporter;
    v3 = [(CAReporter *)&v15 init];
    if (v3)
    {
      v4 = [objc_alloc(MEMORY[0x29EDBFAA8]) initWithNewReporterID];
      swiftReporter = v3->_swiftReporter;
      v3->_swiftReporter = v4;

      v6 = v3->_swiftReporter;
      if (!v6)
      {
        v7 = 0;
        goto LABEL_11;
      }

      v3->_reporterID = [(AudioAnalyticsReporter *)v6 reporterID];
      v3->_serviceType = -1;
    }

    v3 = v3;
    v7 = v3;
  }

  else
  {
    v8 = gReportingClient;
    objc_sync_enter(v8);
    v9 = *AA_ClientCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v17 = "CAReportingClient.mm";
      v18 = 1024;
      v19 = 194;
      _os_log_impl(&dword_296C89000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d CAReporter initWithNewReporterID called", buf, 0x12u);
    }

    v10 = +[CAReportingClient sharedInstance];
    v11 = [v10 createReporterID:0];

    v12 = *AA_ClientCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v17 = "CAReportingClient.mm";
      v18 = 1024;
      v19 = 196;
      v20 = 2048;
      v21 = v11;
      _os_log_impl(&dword_296C89000, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d CAReporter initWithNewReporterID { newid=%lli }", buf, 0x1Cu);
    }

    v3 = [(CAReporter *)self initWithReporterID:v11 serviceType:0xFFFFLL];
    objc_sync_exit(v8);

    v7 = v3;
  }

LABEL_11:

  v13 = *MEMORY[0x29EDCA608];
  return v7;
}

- (void)updateWithReporterID:(int64_t)a3
{
  if (_os_feature_enabled_impl())
  {
    obj = [(CAReporter *)self swiftReporter];
    [obj setReporterID:a3];
  }

  else
  {
    if (!a3)
    {
      return;
    }

    obj = gReportingClient;
    objc_sync_enter(obj);
    self->_reporterID = a3;
    objc_sync_exit(obj);
  }
}

- (unsigned)serviceType
{
  if (!_os_feature_enabled_impl())
  {
    return self->_serviceType;
  }

  v3 = [(CAReporter *)self swiftReporter];
  v4 = [v3 serviceType];

  return v4;
}

- (void)setConfiguration:(id)a3
{
  v34 = *MEMORY[0x29EDCA608];
  v4 = a3;
  if (!_os_feature_enabled_impl())
  {
    v6 = gReportingClient;
    objc_sync_enter(v6);
    if (self->_removedByClient || !self->_reporterID)
    {
      v20 = *AA_ClientCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v26 = 136315394;
        v27 = "CAReportingClient.mm";
        v28 = 1024;
        v29 = 316;
        v21 = "%25s:%-5d Unexpected state, configuration being set on reporter that has been removed or is invalid!";
LABEL_20:
        _os_log_impl(&dword_296C89000, v20, OS_LOG_TYPE_DEFAULT, v21, &v26, 0x12u);
      }
    }

    else
    {
      if (v4 && [v4 count])
      {
        v7 = [MEMORY[0x29EDB8E00] dictionaryWithDictionary:v4];
        v8 = [v7 objectForKeyedSubscript:@"MXHostApplicationDisplayID"];

        if (v8)
        {
          v9 = [v7 objectForKeyedSubscript:@"MXHostApplicationDisplayID"];
          [v7 setObject:v9 forKeyedSubscript:@"HostApplicationDisplayID"];
        }

        if (self->_internalConfiguration)
        {
          v10 = [(CAReporter *)self internalConfiguration];
          [v10 addEntriesFromDictionary:v7];

          v11 = [(CAReporter *)self perfObject];
          [v11 setConfiguration:self->_internalConfiguration];

          v12 = *AA_ClientCategory();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            reporterID = self->_reporterID;
            v26 = 136315906;
            v27 = "CAReportingClient.mm";
            v28 = 1024;
            v29 = 341;
            v30 = 2048;
            v31 = reporterID;
            v32 = 2112;
            v33 = v4;
            _os_log_impl(&dword_296C89000, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d Setting configuration { careporter_id=%lli, newConfiguration=%@ }", &v26, 0x26u);
          }

          v14 = +[CAReportingClient sharedInstance];
          v15 = [v14 connection];
          v16 = v15 == 0;

          if (v16)
          {
            v23 = *AA_ClientCategory();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              v24 = [(CAReporter *)self reporterID];
              v26 = 136315650;
              v27 = "CAReportingClient.mm";
              v28 = 1024;
              v29 = 344;
              v30 = 2048;
              v31 = v24;
              _os_log_impl(&dword_296C89000, v23, OS_LOG_TYPE_DEFAULT, "%25s:%-5d CAReportingClient XPC connection is nil { careporter_id=%lli }", &v26, 0x1Cu);
            }
          }

          else
          {
            if (_os_feature_enabled_impl())
            {
              v17 = +[CAReportingClient sharedInstance];
              v18 = [v17 connection];
              v19 = [v18 _unboostingRemoteObjectProxy];
              [v19 setWithConfiguration:v7 for:{-[CAReporter reporterID](self, "reporterID")}];
            }

            else
            {
              v17 = +[CAReportingClient sharedInstance];
              v18 = [v17 connection];
              v19 = [v18 _unboostingRemoteObjectProxy];
              [v19 setConfiguration:v7 forReporterID:{-[CAReporter reporterID](self, "reporterID")}];
            }
          }
        }

        else
        {
          v22 = *AA_ClientCategory();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v26 = 136315394;
            v27 = "CAReportingClient.mm";
            v28 = 1024;
            v29 = 335;
            _os_log_impl(&dword_296C89000, v22, OS_LOG_TYPE_DEFAULT, "%25s:%-5d internalConfiguration found to be nil", &v26, 0x12u);
          }
        }

        goto LABEL_28;
      }

      v20 = *AA_ClientCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v26 = 136315394;
        v27 = "CAReportingClient.mm";
        v28 = 1024;
        v29 = 322;
        v21 = "%25s:%-5d Incoming configuration nil or empty. Ignoring.";
        goto LABEL_20;
      }
    }

LABEL_28:
    objc_sync_exit(v6);

    goto LABEL_29;
  }

  v5 = [(CAReporter *)self swiftReporter];
  [v5 setConfiguration:v4];

LABEL_29:
  v25 = *MEMORY[0x29EDCA608];
}

- (NSDictionary)configuration
{
  v16 = *MEMORY[0x29EDCA608];
  if (_os_feature_enabled_impl())
  {
    v3 = [(CAReporter *)self swiftReporter];
    v4 = [v3 configuration];
  }

  else
  {
    v5 = gReportingClient;
    objc_sync_enter(v5);
    v6 = *AA_ClientCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      reporterID = self->_reporterID;
      v10 = 136315650;
      v11 = "CAReportingClient.mm";
      v12 = 1024;
      v13 = 368;
      v14 = 2048;
      v15 = reporterID;
      _os_log_impl(&dword_296C89000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d Getting configuration { careporter_id=%lli }", &v10, 0x1Cu);
    }

    v4 = [MEMORY[0x29EDB8DC0] dictionaryWithDictionary:self->_internalConfiguration];
    objc_sync_exit(v5);
  }

  v8 = *MEMORY[0x29EDCA608];

  return v4;
}

- (void)dealloc
{
  v14 = *MEMORY[0x29EDCA608];
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v3 = *AA_ClientCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      reporterID = self->_reporterID;
      *buf = 136315650;
      v9 = "CAReportingClient.mm";
      v10 = 1024;
      v11 = 436;
      v12 = 2048;
      v13 = reporterID;
      _os_log_impl(&dword_296C89000, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d Deallocing reporter { careporter_id=%lli }", buf, 0x1Cu);
    }

    v5 = +[CAReportingClient sharedInstance];
    [v5 destroyReporterWithID:self->_reporterID];
  }

  v7.receiver = self;
  v7.super_class = CAReporter;
  [(CAReporter *)&v7 dealloc];
  v6 = *MEMORY[0x29EDCA608];
}

@end