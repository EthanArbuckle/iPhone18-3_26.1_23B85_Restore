@interface BRCThrottleProvider
- (BRCThrottleProvider)init;
- (void)resetThrottles;
@end

@implementation BRCThrottleProvider

- (BRCThrottleProvider)init
{
  v20.receiver = self;
  v20.super_class = BRCThrottleProvider;
  v2 = [(BRCThrottleProvider *)&v20 init];
  if (v2)
  {
    v3 = [BRCUserDefaults defaultsForMangledID:0];
    appLibraryResetThrottleParams = [v3 appLibraryResetThrottleParams];
    v5 = [[BRCThrottle alloc] initWithName:@"container.reset.throttle" andParameters:appLibraryResetThrottleParams];
    appLibraryResetThrottle = v2->_appLibraryResetThrottle;
    v2->_appLibraryResetThrottle = v5;

    sharedAppLibraryResetThrottleParams = [v3 sharedAppLibraryResetThrottleParams];

    v8 = [[BRCThrottle alloc] initWithName:@"shared-container.reset.throttle" andParameters:sharedAppLibraryResetThrottleParams];
    sharedAppLibraryResetThrottle = v2->_sharedAppLibraryResetThrottle;
    v2->_sharedAppLibraryResetThrottle = v8;

    operationFailureThrottleParams = [v3 operationFailureThrottleParams];

    v11 = [[BRCThrottle alloc] initWithName:@"operation.failure.throttle" andParameters:operationFailureThrottleParams];
    operationFailureThrottle = v2->_operationFailureThrottle;
    v2->_operationFailureThrottle = v11;

    syncClientZoneThrottleParams = [v3 syncClientZoneThrottleParams];

    v14 = [[BRCThrottle alloc] initWithName:@"sync.container.throttle" andParameters:syncClientZoneThrottleParams];
    syncClientZoneThrottle = v2->_syncClientZoneThrottle;
    v2->_syncClientZoneThrottle = v14;

    syncClientZoneErrorThrottleParams = [v3 syncClientZoneErrorThrottleParams];

    v17 = [[BRCThrottle alloc] initWithName:@"sync.container.error.throttle" andParameters:syncClientZoneErrorThrottleParams];
    syncClientZoneErrorThrottle = v2->_syncClientZoneErrorThrottle;
    v2->_syncClientZoneErrorThrottle = v17;
  }

  return v2;
}

- (void)resetThrottles
{
  appLibraryResetThrottle = [(BRCThrottleProvider *)self appLibraryResetThrottle];
  [appLibraryResetThrottle reset];

  sharedAppLibraryResetThrottle = [(BRCThrottleProvider *)self sharedAppLibraryResetThrottle];
  [sharedAppLibraryResetThrottle reset];

  operationFailureThrottle = [(BRCThrottleProvider *)self operationFailureThrottle];
  [operationFailureThrottle reset];

  syncClientZoneThrottle = [(BRCThrottleProvider *)self syncClientZoneThrottle];
  [syncClientZoneThrottle reset];

  syncClientZoneErrorThrottle = [(BRCThrottleProvider *)self syncClientZoneErrorThrottle];
  [syncClientZoneErrorThrottle reset];
}

@end