@interface PK_PHDevice
+ (BOOL)isGeminiCapable;
+ (id)currentDevice;
- (BOOL)isCellularRadioEnabled;
- (BOOL)isRingerSwitchEnabled;
- (PK_PHDevice)init;
- (RadiosPreferences)radiosPreferences;
- (unint64_t)stateForNotifyToken:(int)token;
- (void)airplaneModeChanged;
- (void)dealloc;
- (void)registerForRingerStateNotifications;
- (void)setCellularRadioEnabled:(BOOL)enabled;
- (void)setRingerSwitchEnabled:(BOOL)enabled;
- (void)unregisterForRingerStateNotifications;
@end

@implementation PK_PHDevice

+ (BOOL)isGeminiCapable
{
  if (isGeminiCapable_onceToken != -1)
  {
    +[PK_PHDevice isGeminiCapable];
  }

  return isGeminiCapable_geminiSupported;
}

+ (id)currentDevice
{
  if (currentDevice_onceToken[0] != -1)
  {
    +[PK_PHDevice currentDevice];
  }

  v3 = currentDevice_device;

  return v3;
}

- (PK_PHDevice)init
{
  v9.receiver = self;
  v9.super_class = PK_PHDevice;
  v2 = [(PK_PHDevice *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_create("PHDevice.serialQueue", 0);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;

    v2->_ringerStateNotifyToken = -1;
    v2->_ringerSwitchEnabled = 0;
    [(PK_PHDevice *)v2 registerForRingerStateNotifications];
    dispatchQueue = [(PK_PHDevice *)v2 dispatchQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __19__PK_PHDevice_init__block_invoke;
    block[3] = &unk_279A22800;
    v8 = v2;
    dispatch_barrier_async(dispatchQueue, block);
  }

  return v2;
}

- (void)dealloc
{
  [(PK_PHDevice *)self unregisterForRingerStateNotifications];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = PK_PHDevice;
  [(PK_PHDevice *)&v4 dealloc];
}

- (BOOL)isCellularRadioEnabled
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = [(PK_PHDevice *)self dispatchQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __37__PK_PHDevice_isCellularRadioEnabled__block_invoke;
  v5[3] = &unk_279A22828;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

- (void)setCellularRadioEnabled:(BOOL)enabled
{
  dispatchQueue = [(PK_PHDevice *)self dispatchQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __39__PK_PHDevice_setCellularRadioEnabled___block_invoke;
  v6[3] = &unk_279A22850;
  v6[4] = self;
  enabledCopy = enabled;
  dispatch_barrier_async(dispatchQueue, v6);
}

- (BOOL)isRingerSwitchEnabled
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = [(PK_PHDevice *)self dispatchQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __36__PK_PHDevice_isRingerSwitchEnabled__block_invoke;
  v5[3] = &unk_279A22828;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

- (void)setRingerSwitchEnabled:(BOOL)enabled
{
  dispatchQueue = [(PK_PHDevice *)self dispatchQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38__PK_PHDevice_setRingerSwitchEnabled___block_invoke;
  v6[3] = &unk_279A22850;
  v6[4] = self;
  enabledCopy = enabled;
  dispatch_barrier_async(dispatchQueue, v6);
}

- (RadiosPreferences)radiosPreferences
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  dispatchQueue = [(PK_PHDevice *)self dispatchQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __32__PK_PHDevice_radiosPreferences__block_invoke;
  v6[3] = &unk_279A22828;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(dispatchQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)registerForRingerStateNotifications
{
  if ([(PK_PHDevice *)self ringerStateNotifyToken]== -1)
  {
    objc_initWeak(&location, self);
    uTF8String = [@"com.apple.springboard.ringerstate" UTF8String];
    dispatchQueue = [(PK_PHDevice *)self dispatchQueue];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __50__PK_PHDevice_registerForRingerStateNotifications__block_invoke;
    v5[3] = &unk_279A22878;
    objc_copyWeak(&v6, &location);
    notify_register_dispatch(uTF8String, &self->_ringerStateNotifyToken, dispatchQueue, v5);

    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

- (void)unregisterForRingerStateNotifications
{
  if ([(PK_PHDevice *)self ringerStateNotifyToken]!= -1)
  {
    notify_cancel([(PK_PHDevice *)self ringerStateNotifyToken]);

    [(PK_PHDevice *)self setRingerStateNotifyToken:0xFFFFFFFFLL];
  }
}

- (unint64_t)stateForNotifyToken:(int)token
{
  state64 = 0;
  if (token == -1)
  {
    return 0;
  }

  notify_get_state(token, &state64);
  return state64;
}

- (void)airplaneModeChanged
{
  fetchCellularRadioEnabled = [(PK_PHDevice *)self fetchCellularRadioEnabled];

  [(PK_PHDevice *)self setCellularRadioEnabled:fetchCellularRadioEnabled];
}

@end