@interface SASLockStateMonitor
- (BOOL)hasUnlockedSinceBoot;
- (BOOL)isBlocked;
- (BOOL)isScreenOn;
- (NSNumber)assistantIsEnabled;
- (SASLockStateMonitor)initWithLoggingAllowed:(BOOL)allowed;
- (SASLockStateMonitorDelegate)delegate;
- (unint64_t)_currentLockState;
- (void)_lockStateDidChange:(id)change;
- (void)_updateLockState;
- (void)dealloc;
@end

@implementation SASLockStateMonitor

- (void)_updateLockState
{
  _currentLockState = [(SASLockStateMonitor *)self _currentLockState];
  if ([(SASLockStateMonitor *)self lockState]== _currentLockState)
  {
    return;
  }

  lockState = [(SASLockStateMonitor *)self lockState];
  [(SASLockStateMonitor *)self setLockState:_currentLockState];
  delegate = [(SASLockStateMonitor *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate didChangeLockState:lockState toState:{-[SASLockStateMonitor lockState](self, "lockState")}];
  }

  else if (objc_opt_respondsToSelector())
  {
    [delegate didChangeLockState:{-[SASLockStateMonitor lockState](self, "lockState")}];
  }

  assistantIsEnabled = [(SASLockStateMonitor *)self assistantIsEnabled];
  if (![assistantIsEnabled BOOLValue])
  {
    goto LABEL_12;
  }

  loggingAllowed = self->_loggingAllowed;

  if (loggingAllowed)
  {
    mEMORY[0x1E698D0C8] = [MEMORY[0x1E698D0C8] sharedAnalytics];
    assistantIsEnabled = mEMORY[0x1E698D0C8];
    if (_currentLockState)
    {
      v8 = 1435;
    }

    else
    {
      v8 = 1436;
    }

    [mEMORY[0x1E698D0C8] logEventWithType:v8 context:0];
LABEL_12:
  }
}

- (SASLockStateMonitorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (unint64_t)_currentLockState
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __40__SASLockStateMonitor__currentLockState__block_invoke;
  aBlock[3] = &unk_1E82F38F8;
  aBlock[4] = &v9;
  v2 = _Block_copy(aBlock);
  currentThread = [MEMORY[0x1E696AF00] currentThread];
  mainThread = [MEMORY[0x1E696AF00] mainThread];
  v5 = [currentThread isEqual:mainThread];

  if (v5)
  {
    v2[2](v2);
  }

  else
  {
    dispatch_sync(MEMORY[0x1E69E96A0], v2);
  }

  v6 = v10[3];

  _Block_object_dispose(&v9, 8);
  return v6;
}

void __40__SASLockStateMonitor__currentLockState__block_invoke(uint64_t a1)
{
  v2 = soft_SBUIGetUserAgent_0();
  v3 = [v2 lockScreenIsShowing];

  if (v3)
  {
    *(*(*(a1 + 32) + 8) + 24) |= 1uLL;
  }

  v4 = soft_SBUIGetUserAgent_0();
  v5 = [v4 deviceIsPasscodeLocked];

  if (v5)
  {
    *(*(*(a1 + 32) + 8) + 24) |= 2uLL;
  }
}

- (NSNumber)assistantIsEnabled
{
  assistantIsEnabled = self->_assistantIsEnabled;
  if (!assistantIsEnabled)
  {
    v4 = MEMORY[0x1E696AD98];
    mEMORY[0x1E698D1C0] = [MEMORY[0x1E698D1C0] sharedPreferences];
    v6 = [v4 numberWithBool:{objc_msgSend(mEMORY[0x1E698D1C0], "assistantIsEnabled")}];
    v7 = self->_assistantIsEnabled;
    self->_assistantIsEnabled = v6;

    assistantIsEnabled = self->_assistantIsEnabled;
  }

  return assistantIsEnabled;
}

void __32__SASLockStateMonitor_isBlocked__block_invoke(uint64_t a1)
{
  v2 = soft_SBUIGetUserAgent_0();
  *(*(*(a1 + 32) + 8) + 24) = [v2 deviceIsBlocked];
}

- (BOOL)isBlocked
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  currentThread = [MEMORY[0x1E696AF00] currentThread];
  mainThread = [MEMORY[0x1E696AF00] mainThread];
  v4 = [currentThread isEqual:mainThread];

  if (v4)
  {
    v5 = soft_SBUIGetUserAgent_0();
    deviceIsBlocked = [v5 deviceIsBlocked];
    *(v11 + 24) = deviceIsBlocked;
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __32__SASLockStateMonitor_isBlocked__block_invoke;
    block[3] = &unk_1E82F38F8;
    block[4] = &v10;
    dispatch_sync(MEMORY[0x1E69E96A0], block);
  }

  v7 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return v7;
}

- (BOOL)isScreenOn
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  currentThread = [MEMORY[0x1E696AF00] currentThread];
  mainThread = [MEMORY[0x1E696AF00] mainThread];
  v4 = [currentThread isEqual:mainThread];

  if (v4)
  {
    v5 = soft_SBUIGetUserAgent_0();
    isScreenOn = [v5 isScreenOn];
    *(v11 + 24) = isScreenOn;
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __33__SASLockStateMonitor_isScreenOn__block_invoke;
    block[3] = &unk_1E82F38F8;
    block[4] = &v10;
    dispatch_sync(MEMORY[0x1E69E96A0], block);
  }

  v7 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return v7;
}

void __33__SASLockStateMonitor_isScreenOn__block_invoke(uint64_t a1)
{
  v2 = soft_SBUIGetUserAgent_0();
  *(*(*(a1 + 32) + 8) + 24) = [v2 isScreenOn];
}

- (BOOL)hasUnlockedSinceBoot
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = getMKBDeviceUnlockedSinceBootSymbolLoc_ptr;
  v9 = getMKBDeviceUnlockedSinceBootSymbolLoc_ptr;
  if (!getMKBDeviceUnlockedSinceBootSymbolLoc_ptr)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __getMKBDeviceUnlockedSinceBootSymbolLoc_block_invoke;
    v5[3] = &unk_1E82F38F8;
    v5[4] = &v6;
    __getMKBDeviceUnlockedSinceBootSymbolLoc_block_invoke(v5);
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v2)
  {
    MTTimerManagerTimersChanged_cold_1 = getMTTimerManagerTimersChanged_cold_1();
    _Block_object_dispose(&v6, 8);
    _Unwind_Resume(MTTimerManagerTimersChanged_cold_1);
  }

  return v2() == 1;
}

- (SASLockStateMonitor)initWithLoggingAllowed:(BOOL)allowed
{
  v13.receiver = self;
  v13.super_class = SASLockStateMonitor;
  v4 = [(SASLockStateMonitor *)&v13 init];
  v5 = v4;
  if (v4)
  {
    v4->_loggingAllowed = allowed;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v5 selector:sel__lockStateDidChange_ name:@"SBDeviceLockStateChangedNotification" object:0];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v5, _PasscodeLockStateDidChange, @"com.apple.springboard.DeviceLockStatusChanged", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v5 selector:sel__lockStateDidChange_ name:@"SBBiometricEventMonitorHasAuthenticated" object:0];

    v9 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v9, v5, _AFPreferencesDidChangeCallback, *MEMORY[0x1E698D290], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __46__SASLockStateMonitor_initWithLoggingAllowed___block_invoke;
    block[3] = &unk_1E82F3A08;
    v12 = v5;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  return v5;
}

uint64_t __46__SASLockStateMonitor_initWithLoggingAllowed___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _currentLockState];
  v3 = *(a1 + 32);

  return [v3 setLockState:v2];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.springboard.DeviceLockStatusChanged", 0);
  v5 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v5, self, *MEMORY[0x1E698D290], 0);
  v6.receiver = self;
  v6.super_class = SASLockStateMonitor;
  [(SASLockStateMonitor *)&v6 dealloc];
}

- (void)_lockStateDidChange:(id)change
{
  changeCopy = change;
  name = [changeCopy name];
  v5 = [name isEqual:@"SBBiometricEventMonitorHasAuthenticated"];

  if (v5)
  {
    goto LABEL_2;
  }

  name2 = [changeCopy name];
  v7 = [name2 isEqual:@"SBDeviceLockStateChangedNotification"];

  if (v7)
  {
    userInfo = [changeCopy userInfo];
    v9 = [userInfo valueForKey:@"kSBNotificationKeyState"];
    bOOLValue = [v9 BOOLValue];

    if (bOOLValue)
    {
LABEL_2:
      [(SASLockStateMonitor *)self setUnlockedByTouchID:v5];
    }
  }

  [(SASLockStateMonitor *)self _updateLockState];
}

@end