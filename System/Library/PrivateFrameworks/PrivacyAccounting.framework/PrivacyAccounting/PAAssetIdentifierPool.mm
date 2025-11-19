@interface PAAssetIdentifierPool
- (PAAssetIdentifierPool)initWithMaxPoolSize:(unint64_t)a3 autoDrainInterval:(double)a4 bundleRecord:(id)a5 aggregateVisibilityStateMonitor:(id)a6 onQueue:(id)a7 delegate:(id)a8;
- (void)invalidate;
@end

@implementation PAAssetIdentifierPool

- (PAAssetIdentifierPool)initWithMaxPoolSize:(unint64_t)a3 autoDrainInterval:(double)a4 bundleRecord:(id)a5 aggregateVisibilityStateMonitor:(id)a6 onQueue:(id)a7 delegate:(id)a8
{
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v27.receiver = self;
  v27.super_class = PAAssetIdentifierPool;
  v18 = [(PAAssetIdentifierPool *)&v27 init];
  if (v18)
  {
    v19 = [[PABasicAssetIdentifierPool alloc] initWithMaxPoolSize:a3 autoDrainInterval:v16 onQueue:v17 delegate:a4];
    assetIdentifierPool = v18->_assetIdentifierPool;
    v18->_assetIdentifierPool = v19;

    if ([v14 conformsToProtocol:&unk_1F5A5DE90])
    {
      v21 = v14;
    }

    else
    {
      v21 = 0;
    }

    v22 = PAAssociatedBundleIdentifiersForApplication(v21);
    v23 = [v15 startMonitoringAggregateVisibilityStateForBundleIdentifiers:v22 onQueue:v16 withDelegate:v18->_assetIdentifierPool];
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