@interface PCSAnalyticsReporterRTC
+ (id)rtcAnalyticsReporter;
+ (void)sendMetricWithEvent:(id)event success:(BOOL)success error:(id)error;
@end

@implementation PCSAnalyticsReporterRTC

+ (id)rtcAnalyticsReporter
{
  if (rtcAnalyticsReporter_onceToken != -1)
  {
    +[PCSAnalyticsReporterRTC rtcAnalyticsReporter];
  }

  v3 = rtcAnalyticsReporter_rtcReporter;

  return v3;
}

void __47__PCSAnalyticsReporterRTC_rtcAnalyticsReporter__block_invoke()
{
  v2 = [MEMORY[0x1E6985DC8] analyticsTransportRTCWithClientType:0x1F2998418 clientBundleId:@"com.apple.ProtectedCloudStorage" clientName:@"com.apple.aaa.dnu"];
  v0 = [MEMORY[0x1E6985DB8] analyticsReporterWithTransport:v2];
  v1 = rtcAnalyticsReporter_rtcReporter;
  rtcAnalyticsReporter_rtcReporter = v0;
}

+ (void)sendMetricWithEvent:(id)event success:(BOOL)success error:(id)error
{
  eventCopy = event;
  errorCopy = error;
  if ([eventCopy permittedToSendMetrics])
  {
    queue = [eventCopy queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__PCSAnalyticsReporterRTC_sendMetricWithEvent_success_error___block_invoke;
    block[3] = &unk_1E7B1A168;
    v11 = eventCopy;
    successCopy = success;
    v12 = errorCopy;
    dispatch_sync(queue, block);
  }
}

void __61__PCSAnalyticsReporterRTC_sendMetricWithEvent_success_error___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) getEvent];
  v2 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 48)];
  [v4 setObject:v2 forKeyedSubscript:@"didSucceed"];

  [v4 populateUnderlyingErrorsStartingWithRootError:*(a1 + 40)];
  v3 = +[PCSAnalyticsReporterRTC rtcAnalyticsReporter];
  [v3 sendEvent:v4];
}

@end