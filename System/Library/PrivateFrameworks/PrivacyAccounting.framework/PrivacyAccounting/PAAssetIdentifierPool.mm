@interface PAAssetIdentifierPool
- (PAAssetIdentifierPool)initWithMaxPoolSize:(unint64_t)size autoDrainInterval:(double)interval bundleRecord:(id)record aggregateVisibilityStateMonitor:(id)monitor onQueue:(id)queue delegate:(id)delegate;
- (void)invalidate;
@end

@implementation PAAssetIdentifierPool

- (PAAssetIdentifierPool)initWithMaxPoolSize:(unint64_t)size autoDrainInterval:(double)interval bundleRecord:(id)record aggregateVisibilityStateMonitor:(id)monitor onQueue:(id)queue delegate:(id)delegate
{
  recordCopy = record;
  monitorCopy = monitor;
  queueCopy = queue;
  delegateCopy = delegate;
  v27.receiver = self;
  v27.super_class = PAAssetIdentifierPool;
  v18 = [(PAAssetIdentifierPool *)&v27 init];
  if (v18)
  {
    v19 = [[PABasicAssetIdentifierPool alloc] initWithMaxPoolSize:size autoDrainInterval:queueCopy onQueue:delegateCopy delegate:interval];
    assetIdentifierPool = v18->_assetIdentifierPool;
    v18->_assetIdentifierPool = v19;

    if ([recordCopy conformsToProtocol:&unk_1F5A5DE90])
    {
      v21 = recordCopy;
    }

    else
    {
      v21 = 0;
    }

    v22 = PAAssociatedBundleIdentifiersForApplication(v21);
    v23 = [monitorCopy startMonitoringAggregateVisibilityStateForBundleIdentifiers:v22 onQueue:queueCopy withDelegate:v18->_assetIdentifierPool];
    stateMonitorHandle = v18->_stateMonitorHandle;
    v18->_stateMonitorHandle = v23;

    v25 = v18;
  }

  return v18;
}

- (void)invalidate
{
  [(PAProcessStateMonitoringEnding *)self->_stateMonitorHandle invalidate];
  assetIdentifierPool = self->_assetIdentifierPool;

  [(PABasicAssetIdentifierPool *)assetIdentifierPool invalidate];
}

@end