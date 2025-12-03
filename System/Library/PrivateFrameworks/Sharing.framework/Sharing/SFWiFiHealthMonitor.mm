@interface SFWiFiHealthMonitor
- (SFWiFiHealthMonitor)init;
- (id)description;
- (void)_activate;
- (void)_invalidate;
- (void)_update;
- (void)_wifiAutoJoinNotification:(id)notification;
- (void)_wifiEnsureStarted;
- (void)_wifiEnsureStopped;
- (void)_wifiStatusChangedExternal:(int64_t)external;
- (void)_wifiStatusChangedInternal:(int64_t)internal;
- (void)activate;
- (void)invalidate;
- (void)reset;
@end

@implementation SFWiFiHealthMonitor

- (SFWiFiHealthMonitor)init
{
  v7.receiver = self;
  v7.super_class = SFWiFiHealthMonitor;
  v2 = [(SFWiFiHealthMonitor *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v4 = SFMainQueue(v2);
    dispatchQueue = v3->_dispatchQueue;
    v3->_dispatchQueue = v4;

    *&v3->_lockdownActivated = -1;
  }

  return v3;
}

- (id)description
{
  NSAppendPrintF();
  v3 = 0;
  wifiStatusInternal = self->_wifiStatusInternal;
  if (wifiStatusInternal <= 3)
  {
    v5 = off_1E78913F8[wifiStatusInternal];
  }

  NSAppendPrintF();
  v6 = v3;

  wifiStatusExternal = self->_wifiStatusExternal;
  if (wifiStatusExternal <= 3)
  {
    v8 = off_1E78913F8[wifiStatusExternal];
  }

  NSAppendPrintF();
  v9 = v6;

  if (self->_wifiStatusGoodTicks)
  {
    mach_absolute_time();
    wifiStatusGoodTicks = self->_wifiStatusGoodTicks;
    UpTicksToSeconds();
    NSAppendPrintF();
    v11 = v9;

    v9 = v11;
  }

  if (self->_wifiStatusBadTicks)
  {
    mach_absolute_time();
    wifiStatusBadTicks = self->_wifiStatusBadTicks;
    UpTicksToSeconds();
    NSAppendPrintF();
    v13 = v9;

    v9 = v13;
  }

  return v9;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__SFWiFiHealthMonitor_activate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activate
{
  if (gLogCategory_SFWiFiHealthMonitor <= 30 && (gLogCategory_SFWiFiHealthMonitor != -1 || _LogCategory_Initialize()))
  {
    [SFWiFiHealthMonitor _activate];
  }

  v10 = 0;
  CFPrefs_GetDouble();
  v4 = v3;
  wifiStatusDebounceSecs = self->_wifiStatusDebounceSecs;
  if (v4 != wifiStatusDebounceSecs)
  {
    if (gLogCategory_SFWiFiHealthMonitor <= 40)
    {
      if (gLogCategory_SFWiFiHealthMonitor == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_9;
        }

        wifiStatusDebounceSecs = self->_wifiStatusDebounceSecs;
      }

      v7 = wifiStatusDebounceSecs;
      v8 = v4;
      LogPrintF();
    }

LABEL_9:
    self->_wifiStatusDebounceSecs = v4;
  }

  if (self->_lockdownActivationNotifyToken == -1)
  {
    dispatchQueue = self->_dispatchQueue;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __32__SFWiFiHealthMonitor__activate__block_invoke;
    handler[3] = &unk_1E788CB60;
    handler[4] = self;
    notify_register_dispatch("com.apple.mobile.lockdown.activation_state", &self->_lockdownActivationNotifyToken, dispatchQueue, handler);
  }

  [(SFWiFiHealthMonitor *)self _update:*&v7];
}

uint64_t __32__SFWiFiHealthMonitor__activate__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if ((*(v1 + 8) & 1) == 0)
  {
    *(v1 + 12) = -1;
    return [*(result + 32) _update];
  }

  return result;
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__SFWiFiHealthMonitor_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  if (!self->_invalidateCalled && gLogCategory_SFWiFiHealthMonitor <= 30 && (gLogCategory_SFWiFiHealthMonitor != -1 || _LogCategory_Initialize()))
  {
    [SFWiFiHealthMonitor _invalidate];
  }

  self->_invalidateCalled = 1;
  lockdownActivationNotifyToken = self->_lockdownActivationNotifyToken;
  if (lockdownActivationNotifyToken != -1)
  {
    notify_cancel(lockdownActivationNotifyToken);
    self->_lockdownActivationNotifyToken = -1;
  }

  [(CURetrier *)self->_wifiRetrier invalidateDirect];
  wifiRetrier = self->_wifiRetrier;
  self->_wifiRetrier = 0;

  [(SFWiFiHealthMonitor *)self _wifiEnsureStopped];
  invalidationHandler = self->_invalidationHandler;
  if (invalidationHandler)
  {
    invalidationHandler[2]();
    v6 = self->_invalidationHandler;
  }

  else
  {
    v6 = 0;
  }

  self->_invalidationHandler = 0;

  statusHandler = self->_statusHandler;
  self->_statusHandler = 0;
}

- (void)reset
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__SFWiFiHealthMonitor_reset__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __28__SFWiFiHealthMonitor_reset__block_invoke(uint64_t a1)
{
  if (gLogCategory_SFWiFiHealthMonitor <= 30 && (gLogCategory_SFWiFiHealthMonitor != -1 || _LogCategory_Initialize()))
  {
    __28__SFWiFiHealthMonitor_reset__block_invoke_cold_1();
  }

  v2 = *(a1 + 32);

  return [v2 _wifiStatusChangedInternal:1];
}

- (void)_update
{
  lockdownActivated = self->_lockdownActivated;
  if (lockdownActivated < 0)
  {
    lockdownActivated = MAGetActivationState();
    if (self->_lockdownActivated != lockdownActivated)
    {
      if (gLogCategory_SFWiFiHealthMonitor <= 30 && (gLogCategory_SFWiFiHealthMonitor != -1 || _LogCategory_Initialize()))
      {
        [SFWiFiHealthMonitor _update];
      }

      self->_lockdownActivated = lockdownActivated;
    }
  }

  wifiRetrier = self->_wifiRetrier;
  if (lockdownActivated)
  {
    if (!wifiRetrier)
    {
      if (gLogCategory_SFWiFiHealthMonitor <= 30 && (gLogCategory_SFWiFiHealthMonitor != -1 || _LogCategory_Initialize()))
      {
        [SFWiFiHealthMonitor _update];
      }

      v5 = objc_alloc_init(MEMORY[0x1E6999520]);
      v6 = self->_wifiRetrier;
      self->_wifiRetrier = v5;

      [(CURetrier *)self->_wifiRetrier setDispatchQueue:self->_dispatchQueue];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __30__SFWiFiHealthMonitor__update__block_invoke;
      v8[3] = &unk_1E788B198;
      v8[4] = self;
      [(CURetrier *)self->_wifiRetrier setActionHandler:v8];
      [(CURetrier *)self->_wifiRetrier startDirect];
    }
  }

  else
  {
    if (wifiRetrier)
    {
      if (gLogCategory_SFWiFiHealthMonitor <= 30 && (gLogCategory_SFWiFiHealthMonitor != -1 || _LogCategory_Initialize()))
      {
        [SFWiFiHealthMonitor _update];
      }

      [(CURetrier *)self->_wifiRetrier invalidateDirect];
      v7 = self->_wifiRetrier;
      self->_wifiRetrier = 0;
    }

    [(SFWiFiHealthMonitor *)self _wifiEnsureStopped];
  }
}

- (void)_wifiEnsureStarted
{
  *&self->_wifiStatusExternal = vdupq_n_s64(1uLL);
  v3 = mach_absolute_time();
  self->_wifiStatusBadTicks = 0;
  self->_wifiStatusGoodTicks = v3;
  if (self->_wifiManager)
  {
    goto LABEL_39;
  }

  v4 = WiFiManagerClientCreate();
  self->_wifiManager = v4;
  if (v4)
  {
    goto LABEL_39;
  }

  if (gLogCategory_SFWiFiHealthMonitor <= 60)
  {
    if (gLogCategory_SFWiFiHealthMonitor != -1 || _LogCategory_Initialize())
    {
      [SFWiFiHealthMonitor _wifiEnsureStarted];
    }

    if (self->_wifiManager)
    {
LABEL_39:
      if (!self->_wifiManagerSetup)
      {
        CFRunLoopGetMain();
        v5 = *MEMORY[0x1E695E8D0];
        WiFiManagerClientScheduleWithRunLoop();
        wifiManager = self->_wifiManager;
        WiFiManagerClientRegisterDeviceAttachmentCallback();
        v7 = self->_wifiManager;
        WiFiManagerClientRegisterServerRestartCallback();
        self->_wifiManagerSetup = 1;
        if (gLogCategory_SFWiFiHealthMonitor <= 30 && (gLogCategory_SFWiFiHealthMonitor != -1 || _LogCategory_Initialize()))
        {
          [SFWiFiHealthMonitor _wifiEnsureStarted];
        }
      }

      if (self->_wifiManager && !self->_wifiDevice)
      {
        v8 = WiFiManagerClientCopyDevices();
        v9 = v8;
        if (v8 && CFArrayGetCount(v8) >= 1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v9, 0);
          self->_wifiDevice = ValueAtIndex;
          CFRetain(ValueAtIndex);
          goto LABEL_21;
        }

        if (gLogCategory_SFWiFiHealthMonitor <= 60 && (gLogCategory_SFWiFiHealthMonitor != -1 || _LogCategory_Initialize()))
        {
          [SFWiFiHealthMonitor _wifiEnsureStarted];
          if (!v9)
          {
            goto LABEL_22;
          }

          goto LABEL_21;
        }

        if (v9)
        {
LABEL_21:
          CFRelease(v9);
        }
      }
    }
  }

LABEL_22:
  if (self->_wifiDevice && !self->_wifiDeviceSetup)
  {
    WiFiDeviceClientRegisterAutoJoinNotificationCallback();
    wifiDevice = self->_wifiDevice;
    WiFiDeviceClientRegisterRemovalCallback();
    self->_wifiDeviceSetup = 1;
    if (gLogCategory_SFWiFiHealthMonitor <= 30 && (gLogCategory_SFWiFiHealthMonitor != -1 || _LogCategory_Initialize()))
    {
      [SFWiFiHealthMonitor _wifiEnsureStarted];
    }

    [(CURetrier *)self->_wifiRetrier succeededDirect];
  }

  if (!self->_wifiDeviceSetup)
  {
    wifiRetrier = self->_wifiRetrier;

    [(CURetrier *)wifiRetrier failedDirect];
  }
}

- (void)_wifiEnsureStopped
{
  wifiStatusDebounceTimer = self->_wifiStatusDebounceTimer;
  if (wifiStatusDebounceTimer)
  {
    v4 = wifiStatusDebounceTimer;
    dispatch_source_cancel(v4);
    v5 = self->_wifiStatusDebounceTimer;
    self->_wifiStatusDebounceTimer = 0;
  }

  self->_wifiDeviceSetup = 0;
  if (self->_wifiDevice)
  {
    WiFiDeviceClientRegisterAutoJoinNotificationCallback();
    wifiDevice = self->_wifiDevice;
    WiFiDeviceClientRegisterRemovalCallback();
    CFRelease(self->_wifiDevice);
    self->_wifiDevice = 0;
    if (gLogCategory_SFWiFiHealthMonitor <= 30 && (gLogCategory_SFWiFiHealthMonitor != -1 || _LogCategory_Initialize()))
    {
      [SFWiFiHealthMonitor _wifiEnsureStopped];
    }
  }

  self->_wifiManagerSetup = 0;
  if (self->_wifiManager)
  {
    WiFiManagerClientRegisterDeviceAttachmentCallback();
    wifiManager = self->_wifiManager;
    WiFiManagerClientRegisterServerRestartCallback();
    v8 = self->_wifiManager;
    CFRunLoopGetMain();
    v9 = *MEMORY[0x1E695E8D0];
    WiFiManagerClientUnscheduleFromRunLoop();
    CFRelease(self->_wifiManager);
    self->_wifiManager = 0;
    if (gLogCategory_SFWiFiHealthMonitor <= 30 && (gLogCategory_SFWiFiHealthMonitor != -1 || _LogCategory_Initialize()))
    {
      [SFWiFiHealthMonitor _wifiEnsureStopped];
    }
  }
}

- (void)_wifiAutoJoinNotification:(id)notification
{
  notificationCopy = notification;
  v4 = *MEMORY[0x1E69B2030];
  CFStringGetTypeID();
  v5 = CFDictionaryGetTypedValue();
  if (gLogCategory_SFWiFiHealthMonitor <= 30 && (gLogCategory_SFWiFiHealthMonitor != -1 || _LogCategory_Initialize()))
  {
    [SFWiFiHealthMonitor _wifiAutoJoinNotification:];
  }

  if (([v5 isEqual:*MEMORY[0x1E69B2040]] & 1) != 0 || (objc_msgSend(v5, "isEqual:", *MEMORY[0x1E69B2038]) & 1) != 0 || objc_msgSend(v5, "isEqual:", *MEMORY[0x1E69B2020]))
  {
    v6 = *MEMORY[0x1E69B2028];
    if (CFDictionaryGetInt64())
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    goto LABEL_10;
  }

  if ([v5 isEqual:*MEMORY[0x1E69B2048]])
  {
    v7 = 1;
LABEL_10:
    [(SFWiFiHealthMonitor *)self _wifiStatusChangedInternal:v7];
  }
}

- (void)_wifiStatusChangedExternal:(int64_t)external
{
  wifiStatusExternal = self->_wifiStatusExternal;
  if (wifiStatusExternal == external)
  {
    return;
  }

  if (gLogCategory_SFWiFiHealthMonitor <= 30)
  {
    if (gLogCategory_SFWiFiHealthMonitor != -1)
    {
LABEL_4:
      if (wifiStatusExternal <= 3)
      {
        v6 = off_1E78913F8[wifiStatusExternal];
      }

      if (external <= 3)
      {
        v7 = off_1E78913F8[external];
      }

      LogPrintF();
      goto LABEL_11;
    }

    if (_LogCategory_Initialize())
    {
      wifiStatusExternal = self->_wifiStatusExternal;
      goto LABEL_4;
    }
  }

LABEL_11:
  self->_wifiStatusExternal = external;
  statusHandler = self->_statusHandler;
  if (statusHandler)
  {
    v9 = *(statusHandler + 2);

    v9();
  }
}

- (void)_wifiStatusChangedInternal:(int64_t)internal
{
  wifiStatusInternal = self->_wifiStatusInternal;
  if (wifiStatusInternal == internal)
  {
    return;
  }

  if (gLogCategory_SFWiFiHealthMonitor <= 30)
  {
    if (gLogCategory_SFWiFiHealthMonitor != -1)
    {
LABEL_5:
      if (wifiStatusInternal <= 3)
      {
        v6 = off_1E78913F8[wifiStatusInternal];
      }

      if (internal <= 3)
      {
        v7 = off_1E78913F8[internal];
      }

      LogPrintF();
      goto LABEL_12;
    }

    if (_LogCategory_Initialize())
    {
      wifiStatusInternal = self->_wifiStatusInternal;
      goto LABEL_5;
    }
  }

LABEL_12:
  self->_wifiStatusInternal = internal;
  if (internal == 1)
  {
    self->_wifiStatusBadTicks = 0;
    self->_wifiStatusGoodTicks = mach_absolute_time();
    wifiStatusDebounceTimer = self->_wifiStatusDebounceTimer;
    if (wifiStatusDebounceTimer)
    {
      v9 = wifiStatusDebounceTimer;
      dispatch_source_cancel(v9);
      v10 = self->_wifiStatusDebounceTimer;
      self->_wifiStatusDebounceTimer = 0;
    }

    v11 = self->_wifiStatusInternal;

    [(SFWiFiHealthMonitor *)self _wifiStatusChangedExternal:v11];
  }

  else if ((internal & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    self->_wifiStatusBadTicks = mach_absolute_time();
    self->_wifiStatusGoodTicks = 0;
    if (!self->_wifiStatusDebounceTimer)
    {
      v12 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_dispatchQueue);
      v13 = self->_wifiStatusDebounceTimer;
      self->_wifiStatusDebounceTimer = v12;

      v14 = self->_wifiStatusDebounceTimer;
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __50__SFWiFiHealthMonitor__wifiStatusChangedInternal___block_invoke;
      handler[3] = &unk_1E788B198;
      handler[4] = self;
      dispatch_source_set_event_handler(v14, handler);
      SFDispatchTimerSet(self->_wifiStatusDebounceTimer, self->_wifiStatusDebounceSecs, -1.0, -4.0);
      dispatch_resume(self->_wifiStatusDebounceTimer);
    }
  }
}

uint64_t __50__SFWiFiHealthMonitor__wifiStatusChangedInternal___block_invoke(uint64_t result)
{
  if ((*(*(result + 32) + 8) & 1) == 0)
  {
    v2 = result;
    if (gLogCategory_SFWiFiHealthMonitor <= 30 && (gLogCategory_SFWiFiHealthMonitor != -1 || _LogCategory_Initialize()))
    {
      __50__SFWiFiHealthMonitor__wifiStatusChangedInternal___block_invoke_cold_1();
    }

    v3 = *(*(v2 + 32) + 88);
    if (v3)
    {
      v4 = v3;
      dispatch_source_cancel(v4);
      v5 = *(v2 + 32);
      v6 = *(v5 + 88);
      *(v5 + 88) = 0;
    }

    v7 = *(v2 + 32);
    v8 = v7[13];

    return [v7 _wifiStatusChangedExternal:v8];
  }

  return result;
}

@end