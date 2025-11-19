@interface _UISTouchAuthenticationDurationBasedTelemetryManager
- (_UISTouchAuthenticationDurationBasedTelemetryManager)initWithQueue:(id)a3;
- (void)_reportEventRecordToCoreAnalyticsIfNecessary:(void *)a1;
- (void)enqueueRecordForAnalytics:(id)a3;
- (void)flushRecordsWithIdentifier:(int64_t)a3;
@end

@implementation _UISTouchAuthenticationDurationBasedTelemetryManager

- (_UISTouchAuthenticationDurationBasedTelemetryManager)initWithQueue:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = _UISTouchAuthenticationDurationBasedTelemetryManager;
  v6 = [(_UISTouchAuthenticationDurationBasedTelemetryManager *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, a3);
    v8 = objc_alloc_init(MEMORY[0x1E698E6E0]);
    recordMap = v7->_recordMap;
    v7->_recordMap = v8;
  }

  return v7;
}

- (void)enqueueRecordForAnalytics:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82___UISTouchAuthenticationDurationBasedTelemetryManager_enqueueRecordForAnalytics___block_invoke;
  block[3] = &unk_1E7458F00;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)flushRecordsWithIdentifier:(int64_t)a3
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __83___UISTouchAuthenticationDurationBasedTelemetryManager_flushRecordsWithIdentifier___block_invoke;
  block[3] = &unk_1E7458F28;
  objc_copyWeak(v7, &location);
  v7[1] = a3;
  dispatch_async(queue, block);
  objc_destroyWeak(v7);
  objc_destroyWeak(&location);
}

- (void)_reportEventRecordToCoreAnalyticsIfNecessary:(void *)a1
{
  v1 = a1;
  if ([(_UISTouchAuthenticationRecord *)v1 timeSinceCreation]> 0.2)
  {
    _UISTouchAuthenticationTelemetryReportRecordWithDuration(v1, 1);
  }
}

@end