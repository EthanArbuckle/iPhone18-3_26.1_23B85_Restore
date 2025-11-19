@interface BRCEventsAnalytics
+ (id)sharedAnalytics;
- (void)_sendDictionaryToCoreAnalytics:(id)a3 eventName:(id)a4;
- (void)registerAndSendNewApplyFailureWithOutcome:(id)a3;
- (void)registerAndSendNewContainerResetWithOutcome:(id)a3;
- (void)registerAndSendNewPeriodicSyncWithOutcome:(id)a3;
- (void)registerAndSendShareSaveError:(id)a3 analyticsReporter:(id)a4;
@end

@implementation BRCEventsAnalytics

+ (id)sharedAnalytics
{
  if (sharedAnalytics_onceToken != -1)
  {
    +[BRCEventsAnalytics sharedAnalytics];
  }

  v3 = sharedAnalytics_analytics;

  return v3;
}

uint64_t __37__BRCEventsAnalytics_sharedAnalytics__block_invoke()
{
  sharedAnalytics_analytics = objc_alloc_init(BRCEventsAnalytics);

  return MEMORY[0x2821F96F8]();
}

- (void)registerAndSendShareSaveError:(id)a3 analyticsReporter:(id)a4
{
  v9 = a3;
  v5 = a4;
  v6 = [v9 brc_telemetryReportableErrorWithRecordName:0];
  if (v6)
  {
    v7 = +[BRCAutoBugCaptureReporter sharedABCReporter];
    [v7 captureLogsForOperationType:@"FolderSharing" ofSubtype:@"ShareSave" forError:v6];
  }

  v8 = [AppTelemetryTimeSeriesEvent newShareSaveEventWithError:v9];
  [v5 postReportForDefaultSubCategoryWithCategory:8 telemetryTimeEvent:v8];
}

- (void)registerAndSendNewPeriodicSyncWithOutcome:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  [v5 setObject:v4 forKey:@"periodicSync"];

  [(BRCEventsAnalytics *)self _sendDictionaryToCoreAnalytics:v5 eventName:@"com.apple.iCloudDrive.periodicSync"];
}

- (void)registerAndSendNewContainerResetWithOutcome:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  [v5 setObject:v4 forKey:@"containerReset"];

  [(BRCEventsAnalytics *)self _sendDictionaryToCoreAnalytics:v5 eventName:@"com.apple.iCloudDrive.containerReset"];
}

- (void)registerAndSendNewApplyFailureWithOutcome:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  [v5 setObject:v4 forKey:@"applyFailure"];

  [(BRCEventsAnalytics *)self _sendDictionaryToCoreAnalytics:v5 eventName:@"com.apple.iCloudDrive.applyFailure"];
}

- (void)_sendDictionaryToCoreAnalytics:(id)a3 eventName:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (+[BRCAnalyticsReporter isTelemetryReportingEnabled])
  {
    v7 = [v5 objectForKeyedSubscript:@"error"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v7 isEqualToString:@"CKErrorDomain.2"])
      {
        v8 = brc_bread_crumbs();
        v9 = brc_default_log();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
        {
          [BRCEventsAnalytics _sendDictionaryToCoreAnalytics:v8 eventName:v9];
        }

LABEL_9:
      }
    }

    else if (v7)
    {
      v8 = brc_bread_crumbs();
      v9 = brc_default_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        [(BRCEventsAnalytics *)v7 _sendDictionaryToCoreAnalytics:v8 eventName:v9];
      }

      goto LABEL_9;
    }

    AnalyticsIsEventUsed();
    v10 = v5;
    AnalyticsSendEventLazy();
  }
}

@end