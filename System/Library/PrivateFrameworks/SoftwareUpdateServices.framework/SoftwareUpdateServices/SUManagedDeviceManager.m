@interface SUManagedDeviceManager
+ (id)sharedInstance;
- (BOOL)allowSplat;
- (BOOL)allowSplatRollback;
- (BOOL)isDelayingUpdates;
- (BOOL)isManagedByMDM;
- (SUManagedDeviceManager)init;
- (unint64_t)MCPathToSUMDMPath:(int64_t)a3;
- (unint64_t)delayPeriodInDays;
- (unint64_t)softwareUpdatePathRestriction;
- (void)dealloc;
- (void)profileChanged;
- (void)refreshAssetAudience;
- (void)registerProfileChangeListener;
- (void)setAssetAudience:(id)a3;
- (void)unregisterProfileChangeListener;
@end

@implementation SUManagedDeviceManager

- (SUManagedDeviceManager)init
{
  v9.receiver = self;
  v9.super_class = SUManagedDeviceManager;
  v2 = [(SUManagedDeviceManager *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.softwareupdateservices.mdmWorkQueue", 0);
    workQueue = v2->_workQueue;
    v2->_workQueue = v3;

    v5 = +[SUState currentState];
    v6 = [v5 lastAssetAudience];
    assetAudience = v2->_assetAudience;
    v2->_assetAudience = v6;

    v2->_notifyToken = 0;
    [(SUManagedDeviceManager *)v2 registerProfileChangeListener];
  }

  return v2;
}

- (void)dealloc
{
  delegate = self->_delegate;
  self->_delegate = 0;

  [(SUManagedDeviceManager *)self unregisterProfileChangeListener];
  v4.receiver = self;
  v4.super_class = SUManagedDeviceManager;
  [(SUManagedDeviceManager *)&v4 dealloc];
}

+ (id)sharedInstance
{
  if (sharedInstance_pred_2 != -1)
  {
    +[SUManagedDeviceManager sharedInstance];
  }

  v3 = sharedInstance___instance_6;

  return v3;
}

uint64_t __40__SUManagedDeviceManager_sharedInstance__block_invoke()
{
  sharedInstance___instance_6 = objc_alloc_init(SUManagedDeviceManager);

  return MEMORY[0x2821F96F8]();
}

- (BOOL)isManagedByMDM
{
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [v2 isSupervised];

  return v3;
}

- (BOOL)isDelayingUpdates
{
  v2 = [(SUManagedDeviceManager *)self isManagedByMDM];
  if (v2)
  {
    v3 = [MEMORY[0x277D262A0] sharedConnection];
    v4 = [v3 isSoftwareUpdateResisted];

    LOBYTE(v2) = v4;
  }

  return v2;
}

- (BOOL)allowSplat
{
  v2 = [(SUManagedDeviceManager *)self isManagedByMDM];
  if (v2)
  {
    v3 = [MEMORY[0x277D262A0] sharedConnection];
    v4 = [v3 isRapidSecurityResponseInstallationAllowed];

    LOBYTE(v2) = v4;
  }

  return v2;
}

- (BOOL)allowSplatRollback
{
  v2 = [(SUManagedDeviceManager *)self isManagedByMDM];
  if (v2)
  {
    v3 = [MEMORY[0x277D262A0] sharedConnection];
    v4 = [v3 isRapidSecurityResponseRemovalAllowed];

    LOBYTE(v2) = v4;
  }

  return v2;
}

- (unint64_t)delayPeriodInDays
{
  if (![(SUManagedDeviceManager *)self isDelayingUpdates])
  {
    return 0;
  }

  v2 = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [v2 enforcedSoftwareUpdateDelayInDays];

  return v3;
}

- (unint64_t)softwareUpdatePathRestriction
{
  if (![(SUManagedDeviceManager *)self isManagedByMDM])
  {
    return 3;
  }

  v3 = [MEMORY[0x277D262A0] sharedConnection];
  v4 = [v3 softwareUpdatePath];

  return [(SUManagedDeviceManager *)self MCPathToSUMDMPath:v4];
}

- (void)registerProfileChangeListener
{
  v3 = [*MEMORY[0x277D26148] UTF8String];
  v4 = +[SUUtility mainWorkQueue];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __55__SUManagedDeviceManager_registerProfileChangeListener__block_invoke;
  handler[3] = &unk_279CABC58;
  handler[4] = self;
  notify_register_dispatch(v3, &self->_notifyToken, v4, handler);
}

uint64_t __55__SUManagedDeviceManager_registerProfileChangeListener__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  SULogInfo(@"Received profile change notification in registerProfileChangeListener", a2, a3, a4, a5, a6, a7, a8, v11);
  v9 = *(a1 + 32);

  return [v9 profileChanged];
}

- (void)unregisterProfileChangeListener
{
  notifyToken = self->_notifyToken;
  if (notifyToken)
  {
    notify_cancel(notifyToken);
  }
}

- (void)profileChanged
{
  SULogInfo(@"received profile change notification", a2, v2, v3, v4, v5, v6, v7, v11);
  v9 = dispatch_time(0, 1000000000);
  v10 = +[SUUtility mainWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__SUManagedDeviceManager_profileChanged__block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  dispatch_after(v9, v10, block);
}

void __40__SUManagedDeviceManager_profileChanged__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = MEMORY[0x26D6683A0](@"com.apple.MobileAsset.SoftwareUpdate");
  [v1 setAssetAudience:v2];
}

- (void)setAssetAudience:(id)a3
{
  v4 = a3;
  workQueue = self->_workQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__SUManagedDeviceManager_setAssetAudience___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(workQueue, v7);
}

void __43__SUManagedDeviceManager_setAssetAudience___block_invoke(uint64_t a1)
{
  if (([*(*(a1 + 32) + 16) isEqualToString:*(a1 + 40)] & 1) == 0)
  {
    v10 = *(a1 + 40);
    SULogInfo(@"Asset audience changed from:%@ to:%@", v2, v3, v4, v5, v6, v7, v8, *(*(a1 + 32) + 16));
    objc_storeStrong((*(a1 + 32) + 16), *(a1 + 40));
    v11 = +[SUState currentState];
    [v11 setLastAssetAudience:*(*(a1 + 32) + 16)];
    [v11 save];
    v9 = *(*(a1 + 32) + 8);
    if (objc_opt_respondsToSelector())
    {
      [*(*(a1 + 32) + 8) assetAudienceChanged:?];
    }
  }
}

- (void)refreshAssetAudience
{
  v3 = MEMORY[0x26D6683A0](@"com.apple.MobileAsset.SoftwareUpdate", a2);
  [(SUManagedDeviceManager *)self setAssetAudience:v3];
}

- (unint64_t)MCPathToSUMDMPath:(int64_t)a3
{
  if (a3 == 2)
  {
    return 2;
  }

  else
  {
    return a3 == 1;
  }
}

@end