@interface BRCEventsAnalytics
+ (id)sharedAnalytics;
- (void)_sendDictionaryToCoreAnalytics:(id)analytics eventName:(id)name;
- (void)registerAndSendNewApplyFailureWithOutcome:(id)outcome;
- (void)registerAndSendNewContainerResetWithOutcome:(id)outcome;
- (void)registerAndSendNewPeriodicSyncWithOutcome:(id)outcome;
- (void)registerAndSendShareSaveError:(id)error analyticsReporter:(id)reporter;
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

- (void)registerAndSendShareSaveError:(id)error analyticsReporter:(id)reporter
{
  errorCopy = error;
  reporterCopy = reporter;
  v6 = [errorCopy brc_telemetryReportableErrorWithRecordName:0];
  if (v6)
  {
    v7 = +[BRCAutoBugCaptureReporter sharedABCReporter];
    [v7 captureLogsForOperationType:@"FolderSharing" ofSubtype:@"ShareSave" forError:v6];
  }

  v8 = [AppTelemetryTimeSeriesEvent newShareSaveEventWithError:errorCopy];
  [reporterCopy postReportForDefaultSubCategoryWithCategory:8 telemetryTimeEvent:v8];
}

- (void)registerAndSendNewPeriodicSyncWithOutcome:(id)outcome
{
  outcomeCopy = outcome;
  v5 = objc_opt_new();
  [v5 setObject:outcomeCopy forKey:@"periodicSync"];

  [(BRCEventsAnalytics *)self _sendDictionaryToCoreAnalytics:v5 eventName:@"com.apple.iCloudDrive.periodicSync"];
}

- (void)registerAndSendNewContainerResetWithOutcome:(id)outcome
{
  outcomeCopy = outcome;
  v5 = objc_opt_new();
  [v5 setObject:outcomeCopy forKey:@"containerReset"];

  [(BRCEventsAnalytics *)self _sendDictionaryToCoreAnalytics:v5 eventName:@"com.apple.iCloudDrive.containerReset"];
}

- (void)registerAndSendNewApplyFailureWithOutcome:(id)outcome
{
  outcomeCopy = outcome;
  v5 = objc_opt_new();
  [v5 setObject:outcomeCopy forKey:@"applyFailure"];

  [(BRCEventsAnalytics *)self _sendDictionaryToCoreAnalytics:v5 eventName:@"com.apple.iCloudDrive.applyFailure"];
}

- (void)_sendDictionaryToCoreAnalytics:(id)analytics eventName:(id)name
{
  analyticsCopy = analytics;
  nameCopy = name;
  if (+[BRCAnalyticsReporter isTelemetryReportingEnabled])
  {
    v7 = [analyticsCopy objectForKeyedSubscript:@"error"];
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
    v10 = analyticsCopy;
    AnalyticsSendEventLazy();
  }
}

@end