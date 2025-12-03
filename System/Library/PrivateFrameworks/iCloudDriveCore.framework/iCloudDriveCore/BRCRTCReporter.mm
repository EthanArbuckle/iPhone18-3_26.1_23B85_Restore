@interface BRCRTCReporter
- (BOOL)_shouldRemoveZoneNameWithPayload:(id)payload;
- (BRCRTCReporter)init;
- (BRCRTCReporter)initWithFPRTCReportingSession:(id)session;
- (void)_init;
- (void)_processReportingBatch;
- (void)close;
- (void)postReportWithCategory:(unint64_t)category type:(unint64_t)type payload:(id)payload error:(id)error;
@end

@implementation BRCRTCReporter

- (void)_init
{
  v25[2] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D44098];
  v24[0] = *MEMORY[0x277D44090];
  v24[1] = v3;
  v25[0] = @"bird";
  v25[1] = @"clouddocs";
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
  userInfo = self->_userInfo;
  self->_userInfo = v4;

  v6 = objc_alloc_init(BRCDeviceConfiguration);
  getConfiguration = [(BRCDeviceConfiguration *)v6 getConfiguration];
  v22[0] = @"isIcloudAnalyticsFlagOn";
  v8 = [MEMORY[0x277CCABB0] numberWithBool:{+[BRCAnalyticsReporter isTelemetryReportingEnabled](BRCAnalyticsReporter, "isTelemetryReportingEnabled")}];
  v23[0] = v8;
  v22[1] = @"isDesktopEnabled";
  v9 = MEMORY[0x277CCABB0];
  v10 = +[BRCAccountHandler currentiCloudAccount];
  v11 = [v9 numberWithBool:{objc_msgSend(v10, "br_isEnabledForDesktopSync")}];
  v23[1] = v11;
  v22[2] = @"isEDS";
  v12 = [getConfiguration objectForKeyedSubscript:@"EDS"];
  v23[2] = v12;
  v22[3] = @"isFPFS";
  v13 = [getConfiguration objectForKeyedSubscript:@"FPFS"];
  v23[3] = v13;
  v22[4] = @"isTestDevice";
  v14 = [getConfiguration objectForKeyedSubscript:@"TESTING"];
  v23[4] = v14;
  v22[5] = @"isSharedIPad";
  v15 = [getConfiguration objectForKeyedSubscript:@"SHARED_IPAD"];
  v23[5] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:6];
  globalPayload = self->_globalPayload;
  self->_globalPayload = v16;

  v18 = [BRCUserDefaults defaultsForMangledID:0];
  telemetryRTCAllowedZoneNamePrefixes = [v18 telemetryRTCAllowedZoneNamePrefixes];
  allowedZoneNamePrefixes = self->_allowedZoneNamePrefixes;
  self->_allowedZoneNamePrefixes = telemetryRTCAllowedZoneNamePrefixes;

  v21 = *MEMORY[0x277D85DE8];
}

- (BRCRTCReporter)initWithFPRTCReportingSession:(id)session
{
  sessionCopy = session;
  v22.receiver = self;
  v22.super_class = BRCRTCReporter;
  v6 = [(BRCRTCReporter *)&v22 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_reportingManager, session);
    v8 = [BRCUserDefaults defaultsForMangledID:0];
    [v8 telemetryRTCPacerMinFireInterval];

    v9 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UNSPECIFIED, 0);
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(v9, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.rtc.pacer.queue", v10);

    pacerQueue = v7->_pacerQueue;
    v7->_pacerQueue = v11;

    v13 = v7->_pacerQueue;
    v14 = br_pacer_create();
    reportingPacer = v7->_reportingPacer;
    v7->_reportingPacer = v14;

    v16 = v7->_reportingPacer;
    v21 = v7;
    br_pacer_set_event_handler();
    v17 = v7->_reportingPacer;
    br_pacer_resume();
    v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
    events = v21->_events;
    v21->_events = v18;

    [(BRCRTCReporter *)v21 _init];
  }

  return v7;
}

- (BRCRTCReporter)init
{
  defaultManager = [MEMORY[0x277D086A8] defaultManager];
  if (!defaultManager)
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, 0x90u))
    {
      [(BRCRTCReporter *)v4 init];
    }
  }

  v6 = [(BRCRTCReporter *)self initWithFPRTCReportingSession:defaultManager];

  return v6;
}

- (void)close
{
  pacerQueue = self->_pacerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __23__BRCRTCReporter_close__block_invoke;
  block[3] = &unk_2784FF450;
  block[4] = self;
  dispatch_sync(pacerQueue, block);
}

uint64_t __23__BRCRTCReporter_close__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 56);
  objc_sync_enter(v2);
  [*(*(a1 + 32) + 56) removeAllObjects];
  objc_sync_exit(v2);

  v3 = *(*(a1 + 32) + 48);

  return br_pacer_cancel();
}

- (BOOL)_shouldRemoveZoneNameWithPayload:(id)payload
{
  v4 = [payload objectForKeyedSubscript:@"zoneName"];
  v5 = v4;
  if (v4)
  {
    allowedZoneNamePrefixes = self->_allowedZoneNamePrefixes;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __51__BRCRTCReporter__shouldRemoveZoneNameWithPayload___block_invoke;
    v9[3] = &unk_2785065B0;
    v10 = v4;
    v7 = [(NSArray *)allowedZoneNamePrefixes br_none_of:v9];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_processReportingBatch
{
  v3 = self->_events;
  objc_sync_enter(v3);
  v4 = [(NSMutableDictionary *)self->_events copy];
  [(NSMutableDictionary *)self->_events removeAllObjects];
  objc_sync_exit(v3);

  if ([v4 count])
  {
    [(FPRTCReportingSessionManager *)self->_reportingManager postMultipleReports:v4 type:1 userinfo:self->_userInfo session:0 observer:0];
  }
}

- (void)postReportWithCategory:(unint64_t)category type:(unint64_t)type payload:(id)payload error:(id)error
{
  payloadCopy = payload;
  errorCopy = error;
  if ([(BRCRTCReporter *)self _shouldRemoveZoneNameWithPayload:payloadCopy])
  {
    [payloadCopy setObject:@"private" forKeyedSubscript:@"zoneName"];
  }

  if (payloadCopy)
  {
    dictionary = payloadCopy;
  }

  else
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
  }

  v11 = dictionary;
  [dictionary addEntriesFromDictionary:self->_globalPayload];
  v12 = self->_events;
  objc_sync_enter(v12);
  events = self->_events;
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:category];
  v15 = [(NSMutableDictionary *)events objectForKey:v14];

  if (!v15)
  {
    v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v17 = self->_events;
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:category];
    [(NSMutableDictionary *)v17 setObject:v16 forKeyedSubscript:v18];
  }

  v19 = self->_events;
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:category];
  v21 = [(NSMutableDictionary *)v19 objectForKeyedSubscript:v20];
  [v21 addObject:v11];

  objc_sync_exit(v12);
  reportingPacer = self->_reportingPacer;
  br_pacer_signal();
}

@end