@interface _PASDeviceStateStub
+ (void)setClassCLocked:(BOOL)locked;
+ (void)setCurrentOsBuild:(id)build;
+ (void)setDeviceFormattedForProtection:(BOOL)protection;
+ (void)setLockState:(int)state;
+ (void)startMockingSystem;
+ (void)stopMockingSystem;
@end

@implementation _PASDeviceStateStub

+ (void)setCurrentOsBuild:(id)build
{
  buildCopy = build;
  obj = objc_opt_class();
  objc_sync_enter(obj);
  v4 = _currentOsBuild;
  _currentOsBuild = buildCopy;

  objc_sync_exit(obj);
}

+ (void)setDeviceFormattedForProtection:(BOOL)protection
{
  obj = objc_opt_class();
  objc_sync_enter(obj);
  _deviceFormattedForProtection = protection;
  objc_sync_exit(obj);
}

+ (void)setClassCLocked:(BOOL)locked
{
  lockedCopy = locked;
  v4 = objc_opt_class();
  objc_sync_enter(v4);
  v5 = _classCLocked;
  _classCLocked = lockedCopy;
  v8 = 0;
  if (!lockedCopy && (v5 & 1) != 0 && _firstUnlockCallback)
  {
    v8 = MEMORY[0x2666F0150]();
    v6 = _firstUnlockCallback;
    _firstUnlockCallback = 0;
  }

  objc_sync_exit(v4);

  v7 = v8;
  if (v8)
  {
    (*(v8 + 16))(v8);
    v7 = v8;
  }
}

+ (void)setLockState:(int)state
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = objc_opt_class();
  objc_sync_enter(v4);
  _lockState = state;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = _callbackMap;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [_callbackMap objectForKeyedSubscript:{*(*(&v11 + 1) + 8 * v8), v11}];
        v9[2](v9, _lockState);

        ++v8;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  objc_sync_exit(v4);
  v10 = *MEMORY[0x277D85DE8];
}

+ (void)stopMockingSystem
{
  obj = objc_opt_class();
  objc_sync_enter(obj);
  [MEMORY[0x277D42598] setDefaultSystemCallbacks];
  v2 = _callbackMap;
  _callbackMap = 0;

  v3 = _callbackMapAKS;
  _callbackMapAKS = 0;

  v4 = _firstUnlockCallback;
  _firstUnlockCallback = 0;

  objc_sync_exit(obj);
}

+ (void)startMockingSystem
{
  obj = objc_opt_class();
  objc_sync_enter(obj);
  v2 = objc_opt_new();
  v3 = _callbackMap;
  _callbackMap = v2;

  v4 = objc_opt_new();
  v5 = _callbackMapAKS;
  _callbackMapAKS = v4;

  v6 = _firstUnlockCallback;
  _firstUnlockCallback = 0;

  _lockState = 1;
  _classCLocked = 0;
  _deviceFormattedForProtection = 1;
  v7 = _currentOsBuild;
  _currentOsBuild = 0;

  _tokenCounter = 1;
  [MEMORY[0x277D42598] setSystemCallbacks:kMockSystemCallbacks];
  objc_sync_exit(obj);
}

@end