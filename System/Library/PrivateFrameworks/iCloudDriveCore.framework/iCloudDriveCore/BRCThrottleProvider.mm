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
    v4 = [v3 appLibraryResetThrottleParams];
    v5 = [[BRCThrottle alloc] initWithName:@"container.reset.throttle" andParameters:v4];
    appLibraryResetThrottle = v2->_appLibraryResetThrottle;
    v2->_appLibraryResetThrottle = v5;

    v7 = [v3 sharedAppLibraryResetThrottleParams];

    v8 = [[BRCThrottle alloc] initWithName:@"shared-container.reset.throttle" andParameters:v7];
    sharedAppLibraryResetThrottle = v2->_sharedAppLibraryResetThrottle;
    v2->_sharedAppLibraryResetThrottle = v8;

    v10 = [v3 operationFailureThrottleParams];

    v11 = [[BRCThrottle alloc] initWithName:@"operation.failure.throttle" andParameters:v10];
    operationFailureThrottle = v2->_operationFailureThrottle;
    v2->_operationFailureThrottle = v11;

    v13 = [v3 syncClientZoneThrottleParams];

    v14 = [[BRCThrottle alloc] initWithName:@"sync.container.throttle" andParameters:v13];
    syncClientZoneThrottle = v2->_syncClientZoneThrottle;
    v2->_syncClientZoneThrottle = v14;

    v16 = [v3 syncClientZoneErrorThrottleParams];

    v17 = [[BRCThrottle alloc] initWithName:@"sync.container.error.throttle" andParameters:v16];
    syncClientZoneErrorThrottle = v2->_syncClientZoneErrorThrottle;
    v2->_syncClientZoneErrorThrottle = v17;
  }

  return v2;
}

- (void)resetThrottles
{
  v3 = [(BRCThrottleProvider *)self appLibraryResetThrottle];
  [v3 reset];

  v4 = [(BRCThrottleProvider *)self sharedAppLibraryResetThrottle];
  [v4 reset];

  v5 = [(BRCThrottleProvider *)self operationFailureThrottle];
  [v5 reset];

  v6 = [(BRCThrottleProvider *)self syncClientZoneThrottle];
  [v6 reset];

  v7 = [(BRCThrottleProvider *)self syncClientZoneErrorThrottle];
  [v7 reset];
}

@end