@interface ICWiFiManager
+ (id)sharedWiFiManager;
- (BOOL)_getWiFiAssociated;
- (BOOL)_getWiFiEnabledFromPrefs;
- (ICWiFiManager)init;
- (id)_processIdentifier;
- (void)_wifiCallBack:(unsigned int)back;
- (void)dealloc;
@end

@implementation ICWiFiManager

+ (id)sharedWiFiManager
{
  if (sharedWiFiManager_onceToken != -1)
  {
    dispatch_once(&sharedWiFiManager_onceToken, &__block_literal_global_41452);
  }

  v3 = sharedWiFiManager_sharedWiFiManager;

  return v3;
}

uint64_t __34__ICWiFiManager_sharedWiFiManager__block_invoke()
{
  sharedWiFiManager_sharedWiFiManager = objc_alloc_init(ICWiFiManager);

  return MEMORY[0x1EEE66BB8]();
}

- (ICWiFiManager)init
{
  v13.receiver = self;
  v13.super_class = ICWiFiManager;
  v2 = [(ICWiFiManager *)&v13 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.amp.HomeSharing.HSWiFiManager.accessQueue", 0);
    accessQueue = v2->_accessQueue;
    v2->_accessQueue = v3;

    _processIdentifier = [(ICWiFiManager *)v2 _processIdentifier];
    v6 = SCPreferencesCreate(*MEMORY[0x1E695E480], _processIdentifier, @"com.apple.wifi.plist");
    v2->_wifiPreferences = v6;
    v12.version = 0;
    memset(&v12.retain, 0, 24);
    v12.info = v2;
    SCPreferencesSetCallback(v6, _WiFiCallBack, &v12);
    wifiPreferences = v2->_wifiPreferences;
    Main = CFRunLoopGetMain();
    SCPreferencesScheduleWithRunLoop(wifiPreferences, Main, *MEMORY[0x1E695E8D0]);
    v2->_wiFiEnabled = [(ICWiFiManager *)v2 _getWiFiEnabledFromPrefs];
    v2->_wiFiAssociated = 1;
    v9 = +[ICEnvironmentMonitor sharedMonitor];
    [v9 registerObserver:v2];

    v10 = v2;
  }

  return v2;
}

- (id)_processIdentifier
{
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  if (!bundleIdentifier)
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = getprogname();
    bundleIdentifier = [v4 stringWithFormat:@"%s (%d)", v5, getpid()];
  }

  return bundleIdentifier;
}

- (BOOL)_getWiFiEnabledFromPrefs
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __41__ICWiFiManager__getWiFiEnabledFromPrefs__block_invoke;
  v5[3] = &unk_1E7BFA430;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __41__ICWiFiManager__getWiFiEnabledFromPrefs__block_invoke(uint64_t a1)
{
  Value = SCPreferencesGetValue(*(*(a1 + 32) + 8), @"AllowEnable");
  if (Value)
  {
    v3 = Value;
    v4 = CFGetTypeID(Value);
    if (v4 == CFNumberGetTypeID() || (v5 = CFGetTypeID(v3), v5 == CFBooleanGetTypeID()))
    {
      *(*(*(a1 + 40) + 8) + 24) = CFBooleanGetValue(v3) != 0;
    }
  }

  v6 = *(*(a1 + 32) + 8);

  SCPreferencesSynchronize(v6);
}

- (BOOL)_getWiFiAssociated
{
  v2 = +[ICEnvironmentMonitor sharedMonitor];
  isWiFiAssociated = [v2 isWiFiAssociated];

  return isWiFiAssociated;
}

- (void)_wifiCallBack:(unsigned int)back
{
  backCopy = back;
  v13[2] = *MEMORY[0x1E69E9840];
  _getWiFiEnabledFromPrefs = [(ICWiFiManager *)self _getWiFiEnabledFromPrefs];
  _getWiFiAssociated = [(ICWiFiManager *)self _getWiFiAssociated];
  if (backCopy)
  {
    v7 = _getWiFiAssociated;
    if (_getWiFiEnabledFromPrefs != [(ICWiFiManager *)self isWiFiEnabled]|| v7 != [(ICWiFiManager *)self isWiFiAssociated])
    {
      [(ICWiFiManager *)self setWiFiEnabled:_getWiFiEnabledFromPrefs];
      [(ICWiFiManager *)self setWiFiAssociated:v7];
      v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[ICWiFiManager isWiFiEnabled](self, "isWiFiEnabled")}];
      v12[0] = v8;
      v13[0] = @"ICWiFiManagerWiFiEnabledUserInfoKey";
      v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[ICWiFiManager isWiFiAssociated](self, "isWiFiAssociated")}];
      v12[1] = v9;
      v13[1] = @"ICWiFiManagerWiFiAssociatedUserInfoKey";
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];

      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter postNotificationName:@"ICWiFiManagerWiFiDidChangeNotification" object:self userInfo:v10];
    }
  }
}

- (void)dealloc
{
  wifiPreferences = self->_wifiPreferences;
  Main = CFRunLoopGetMain();
  SCPreferencesUnscheduleFromRunLoop(wifiPreferences, Main, *MEMORY[0x1E695E8D0]);
  CFRelease(self->_wifiPreferences);
  v5.receiver = self;
  v5.super_class = ICWiFiManager;
  [(ICWiFiManager *)&v5 dealloc];
}

@end