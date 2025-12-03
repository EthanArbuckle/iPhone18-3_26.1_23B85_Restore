@interface _UISTouchAuthenticationDurationBasedTelemetryManager
- (_UISTouchAuthenticationDurationBasedTelemetryManager)initWithQueue:(id)queue;
- (void)_reportEventRecordToCoreAnalyticsIfNecessary:(void *)necessary;
- (void)enqueueRecordForAnalytics:(id)analytics;
- (void)flushRecordsWithIdentifier:(int64_t)identifier;
@end

@implementation _UISTouchAuthenticationDurationBasedTelemetryManager

- (_UISTouchAuthenticationDurationBasedTelemetryManager)initWithQueue:(id)queue
{
  queueCopy = queue;
  v11.receiver = self;
  v11.super_class = _UISTouchAuthenticationDurationBasedTelemetryManager;
  v6 = [(_UISTouchAuthenticationDurationBasedTelemetryManager *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
    v8 = objc_alloc_init(MEMORY[0x1E698E6E0]);
    recordMap = v7->_recordMap;
    v7->_recordMap = v8;
  }

  return v7;
}

- (void)enqueueRecordForAnalytics:(id)analytics
{
  analyticsCopy = analytics;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82___UISTouchAuthenticationDurationBasedTelemetryManager_enqueueRecordForAnalytics___block_invoke;
  block[3] = &unk_1E7458F00;
  objc_copyWeak(&v9, &location);
  v8 = analyticsCopy;
  v6 = analyticsCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)flushRecordsWithIdentifier:(int64_t)identifier
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __83___UISTouchAuthenticationDurationBasedTelemetryManager_flushRecordsWithIdentifier___block_invoke;
  block[3] = &unk_1E7458F28;
  objc_copyWeak(v7, &location);
  v7[1] = identifier;
  dispatch_async(queue, block);
  objc_destroyWeak(v7);
  objc_destroyWeak(&location);
}

- (void)_reportEventRecordToCoreAnalyticsIfNecessary:(void *)necessary
{
  necessaryCopy = necessary;
  if ([(_UISTouchAuthenticationRecord *)necessaryCopy timeSinceCreation]> 0.2)
  {
    _UISTouchAuthenticationTelemetryReportRecordWithDuration(necessaryCopy, 1);
  }
}

@end