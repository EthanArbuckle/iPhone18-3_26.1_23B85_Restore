@interface SMDeviceConfigurationChecker
+ (id)convertLowPowerModeWarningStateToString:(int64_t)a3;
- (BOOL)isEffectivePairedDeviceNearby;
- (SMDeviceConfigurationChecker)initWithQueue:(id)a3;
- (SMDeviceConfigurationChecker)initWithQueue:(id)a3 messagingService:(id)a4;
- (id)effectivePairedDevice;
- (int64_t)getDeviceConfigurationLowPowerModeWarningState;
- (int64_t)getDeviceConfigurationLowPowerModeWarningStateWithPairedDeviceNearby:(BOOL)a3;
- (void)fetchDeviceConfigurationLowPowerModeWarningStateWithHandler:(id)a3;
@end

@implementation SMDeviceConfigurationChecker

- (SMDeviceConfigurationChecker)initWithQueue:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v12.receiver = self;
    v12.super_class = SMDeviceConfigurationChecker;
    v6 = [(SMDeviceConfigurationChecker *)&v12 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_queue, a3);
      v8 = [objc_alloc(MEMORY[0x277D18778]) initWithService:@"com.apple.private.alloy.safetymonitor.ownaccount"];
      ownAccountIDSService = v7->_ownAccountIDSService;
      v7->_ownAccountIDSService = v8;

      [v7->_ownAccountIDSService addDelegate:v7 queue:v7->_queue];
    }

    self = v7;
    v10 = self;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (SMDeviceConfigurationChecker)initWithQueue:(id)a3 messagingService:(id)a4
{
  v10.receiver = self;
  v10.super_class = SMDeviceConfigurationChecker;
  v6 = [(SMDeviceConfigurationChecker *)&v10 init];
  v7 = v6;
  if (!v6 || (v8 = 0, a3) && a4)
  {
    v8 = v6;
  }

  return v8;
}

- (int64_t)getDeviceConfigurationLowPowerModeWarningState
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = [(SMDeviceConfigurationChecker *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __78__SMDeviceConfigurationChecker_getDeviceConfigurationLowPowerModeWarningState__block_invoke;
  v6[3] = &unk_279B64BD8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __78__SMDeviceConfigurationChecker_getDeviceConfigurationLowPowerModeWarningState__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _getDeviceConfigurationLowPowerModeWarningState];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (int64_t)getDeviceConfigurationLowPowerModeWarningStateWithPairedDeviceNearby:(BOOL)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v5 = [(SMDeviceConfigurationChecker *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __101__SMDeviceConfigurationChecker_getDeviceConfigurationLowPowerModeWarningStateWithPairedDeviceNearby___block_invoke;
  block[3] = &unk_279B64C00;
  block[4] = self;
  block[5] = &v10;
  v9 = a3;
  dispatch_sync(v5, block);

  v6 = v11[3];
  _Block_object_dispose(&v10, 8);
  return v6;
}

uint64_t __101__SMDeviceConfigurationChecker_getDeviceConfigurationLowPowerModeWarningStateWithPairedDeviceNearby___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _getDeviceConfigurationLowPowerModeWarningStateWithPairedDeviceNearby:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)fetchDeviceConfigurationLowPowerModeWarningStateWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(SMDeviceConfigurationChecker *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __92__SMDeviceConfigurationChecker_fetchDeviceConfigurationLowPowerModeWarningStateWithHandler___block_invoke;
  v7[3] = &unk_279B64C28;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (id)effectivePairedDevice
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(SMDeviceConfigurationChecker *)self ownAccountIDSService];
  v3 = [v2 devices];

  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if ([v7 isDefaultPairedDevice] && objc_msgSend(v7, "relationship") == 1)
        {
          v4 = v7;
          goto LABEL_12;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v8 = *MEMORY[0x277D85DE8];

  return v4;
}

- (BOOL)isEffectivePairedDeviceNearby
{
  v2 = [(SMDeviceConfigurationChecker *)self effectivePairedDevice];
  v3 = [v2 isNearby];

  return v3;
}

+ (id)convertLowPowerModeWarningStateToString:(int64_t)a3
{
  v3 = @"LowPowerModeWarningStateEnabled";
  if (a3 == 1)
  {
    v3 = @"LowPowerModeStateWarningDisabled";
  }

  if (a3)
  {
    return v3;
  }

  else
  {
    return @"LowPowerModeStateWarningUnknown";
  }
}

@end