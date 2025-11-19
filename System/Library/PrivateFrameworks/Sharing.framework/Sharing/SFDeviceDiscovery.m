@interface SFDeviceDiscovery
- (SFDeviceDiscovery)init;
- (SFDeviceDiscovery)initWithCoder:(id)a3;
- (id)description;
- (int)_ensureXPCStarted;
- (void)_activateWithCompletion:(id)a3;
- (void)_interrupted;
- (void)_invalidated;
- (void)_invokeBlockActivateSafe:(id)a3;
- (void)_retryConsole;
- (void)_startTimeoutIfNeeded;
- (void)_timeoutTimerFired;
- (void)activateWithCompletion:(id)a3;
- (void)dealloc;
- (void)deviceDiscoveryFoundDevice:(id)a3;
- (void)deviceDiscoveryLostDevice:(id)a3;
- (void)deviceDiscoveryScanStateChanged:(int64_t)a3;
- (void)encodeWithCoder:(id)a3;
- (void)fastScanCancel:(id)a3;
- (void)fastScanTrigger:(id)a3;
- (void)invalidate;
- (void)setChangeFlags:(unsigned int)a3;
- (void)setDeviceFilter:(id)a3;
- (void)setDiscoveryFlags:(unint64_t)a3;
- (void)setDispatchQueue:(id)a3;
- (void)setFastScanMode:(int64_t)a3;
- (void)setOverrideScreenOff:(BOOL)a3;
- (void)setOverrideScreenOffRescanInterval:(int64_t)a3;
- (void)setRssiChangeDetection:(BOOL)a3;
- (void)setRssiThreshold:(int64_t)a3;
- (void)setScanCache:(BOOL)a3;
- (void)setScanRate:(int64_t)a3;
- (void)setTimeout:(double)a3;
- (void)setTrackPeers:(BOOL)a3;
- (void)setUseCases:(id)a3;
- (void)triggerEnhancedDiscovery:(id)a3;
- (void)triggerEnhancedDiscovery:(id)a3 useCase:(unsigned int)a4 completion:(id)a5;
@end

@implementation SFDeviceDiscovery

- (void)_startTimeoutIfNeeded
{
  if (self->_timeout > 0.0)
  {
    handler[7] = v2;
    handler[8] = v3;
    if (self->_scanState == 1 && !self->_timeoutFired && !self->_timeoutTimer)
    {
      if (gLogCategory_SFDeviceDiscovery <= 20)
      {
        if (gLogCategory_SFDeviceDiscovery == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_9;
          }

          timeout = self->_timeout;
        }

        LogPrintF();
      }

LABEL_9:
      v5 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_dispatchQueue);
      timeoutTimer = self->_timeoutTimer;
      self->_timeoutTimer = v5;

      v7 = self->_timeoutTimer;
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __42__SFDeviceDiscovery__startTimeoutIfNeeded__block_invoke;
      handler[3] = &unk_1E788B198;
      handler[4] = self;
      dispatch_source_set_event_handler(v7, handler);
      SFDispatchTimerSet(self->_timeoutTimer, self->_timeout, 1.0, -4.0);
      dispatch_resume(self->_timeoutTimer);
    }
  }
}

- (id)description
{
  v35 = 0;
  NSAppendPrintF();
  v3 = 0;
  v4 = v3;
  purpose = self->_purpose;
  if (purpose)
  {
    v34 = v3;
    v28 = purpose;
    NSAppendPrintF();
    v6 = v34;

    v4 = v6;
  }

  if (self->_invalidateCalled)
  {
    v33[4] = v4;
    NSAppendPrintF();
    v7 = v4;

    v4 = v7;
  }

  if (self->_legacy)
  {
    v33[3] = v4;
    NSAppendPrintF();
    v8 = v4;

    v4 = v8;
  }

  if ([(NSSet *)self->_deviceFilter count])
  {
    v33[2] = v4;
    [(NSSet *)self->_deviceFilter count];
    NSAppendPrintF();
    v9 = v4;

    v4 = v9;
  }

  v33[1] = v4;
  discoveryFlags = self->_discoveryFlags;
  v31 = &unk_1A998F660;
  NSAppendPrintF();
  v10 = v4;

  changeFlags = self->_changeFlags;
  if (changeFlags)
  {
    if (changeFlags == -1)
    {
      v33[0] = v10;
      v12 = v33;
    }

    else
    {
      v32 = v10;
      v31 = &unk_1A998F77C;
      v12 = &v32;
    }

    NSAppendPrintF();
    v13 = *v12;

    v10 = v13;
  }

  scanRate = self->_scanRate;
  if (scanRate > 9)
  {
    if (scanRate <= 29)
    {
      if (scanRate == 10)
      {
        v15 = "Background";
        goto LABEL_38;
      }

      if (scanRate == 20)
      {
        v15 = "Normal";
        goto LABEL_38;
      }
    }

    else
    {
      switch(scanRate)
      {
        case 30:
          v15 = "HighNormal";
          goto LABEL_38;
        case 40:
          v15 = "High";
          goto LABEL_38;
        case 50:
          v15 = "Aggressive";
          goto LABEL_38;
      }
    }
  }

  else if (scanRate <= 1)
  {
    if (!scanRate)
    {
      v15 = "Invalid";
      goto LABEL_38;
    }

    if (scanRate == 1)
    {
      v15 = "BackgroundOld";
      goto LABEL_38;
    }
  }

  else
  {
    switch(scanRate)
    {
      case 2:
        v15 = "NormalOld";
        goto LABEL_38;
      case 3:
        v15 = "HighOld";
        goto LABEL_38;
      case 4:
        v15 = "AggressiveOld";
        goto LABEL_38;
    }
  }

  v15 = "?";
LABEL_38:
  overrideScreenOffRescanInterval = v15;
  NSAppendPrintF();
  v16 = v10;

  fastScanMode = self->_fastScanMode;
  if (fastScanMode)
  {
    v18 = "?";
    if (fastScanMode == 1)
    {
      v18 = "Start";
    }

    if (fastScanMode == 2)
    {
      v19 = "Match";
    }

    else
    {
      v19 = v18;
    }

    overrideScreenOffRescanInterval = v19;
    NSAppendPrintF();
    v20 = v16;

    v16 = v20;
  }

  if (self->_overrideScreenOff)
  {
    NSAppendPrintF();
    v21 = v16;

    if (self->_overrideScreenOff && self->_overrideScreenOffRescanInterval)
    {
      overrideScreenOffRescanInterval = self->_overrideScreenOffRescanInterval;
      NSAppendPrintF();
      v16 = v21;
    }

    else
    {
      v16 = v21;
    }
  }

  if (self->_rssiChangeDetection)
  {
    NSAppendPrintF();
    v22 = v16;

    v16 = v22;
  }

  if (self->_rssiThreshold)
  {
    overrideScreenOffRescanInterval = self->_rssiThreshold;
    NSAppendPrintF();
    v23 = v16;

    v16 = v23;
  }

  if (self->_scanCache)
  {
    NSAppendPrintF();
    v24 = v16;

    v16 = v24;
  }

  if (self->_trackPeers)
  {
    NSAppendPrintF();
    v25 = v16;

    v16 = v25;
  }

  if (self->_xpcCnx)
  {
    [(NSMutableDictionary *)self->_devices count:overrideScreenOffRescanInterval];
    NSAppendPrintF();
    v26 = v16;

    v16 = v26;
  }

  return v16;
}

- (void)dealloc
{
  if (!self->_activateCalled || self->_invalidateCalled || self->_invalidateDone)
  {
    deviceFoundHandler = self->_deviceFoundHandler;
    self->_deviceFoundHandler = 0;

    deviceLostHandler = self->_deviceLostHandler;
    self->_deviceLostHandler = 0;

    interruptionHandler = self->_interruptionHandler;
    self->_interruptionHandler = 0;

    invalidationHandler = self->_invalidationHandler;
    self->_invalidationHandler = 0;

    scanStateChangedHandler = self->_scanStateChangedHandler;
    self->_scanStateChangedHandler = 0;

    timeoutHandler = self->_timeoutHandler;
    self->_timeoutHandler = 0;

    v11.receiver = self;
    v11.super_class = SFDeviceDiscovery;
    [(SFDeviceDiscovery *)&v11 dealloc];
  }

  else
  {
    v9 = [SFRemoteAutoFillService dealloc];
    [(SFService *)v9 advertiseRate];
  }
}

- (SFDeviceDiscovery)init
{
  v7.receiver = self;
  v7.super_class = SFDeviceDiscovery;
  v2 = [(SFDeviceDiscovery *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_changeFlags = 1;
    v2->_discoveryFlags = 1;
    v4 = SFMainQueue();
    dispatchQueue = v3->_dispatchQueue;
    v3->_dispatchQueue = v4;

    v3->_legacy = 1;
    *&v3->_rssiThreshold = xmmword_1A998F650;
  }

  return v3;
}

- (int)_ensureXPCStarted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_xpcCnx)
  {
    v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.SharingServices" options:0];
    xpcCnx = self->_xpcCnx;
    self->_xpcCnx = v3;

    [(NSXPCConnection *)self->_xpcCnx _setQueue:self->_dispatchQueue];
    v5 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1D855A0];
    [(NSXPCConnection *)self->_xpcCnx setExportedInterface:v5];

    [(NSXPCConnection *)self->_xpcCnx setExportedObject:self];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __38__SFDeviceDiscovery__ensureXPCStarted__block_invoke;
    v9[3] = &unk_1E788B198;
    v9[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInterruptionHandler:v9];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __38__SFDeviceDiscovery__ensureXPCStarted__block_invoke_2;
    v8[3] = &unk_1E788B198;
    v8[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInvalidationHandler:v8];
    v6 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1DAEC60];
    [(NSXPCConnection *)self->_xpcCnx setRemoteObjectInterface:v6];

    [(NSXPCConnection *)self->_xpcCnx resume];
    if (gLogCategory_SFDeviceDiscovery <= 30 && (gLogCategory_SFDeviceDiscovery != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceDiscovery _ensureXPCStarted];
    }
  }

  return 0;
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__SFDeviceDiscovery_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __31__SFDeviceDiscovery_invalidate__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 40) & 1) == 0)
  {
    *(v1 + 40) = 1;
    if ((*(*(a1 + 32) + 41) & 1) == 0 && gLogCategory_SFDeviceDiscovery <= 30 && (gLogCategory_SFDeviceDiscovery != -1 || _LogCategory_Initialize()))
    {
      __31__SFDeviceDiscovery_invalidate__block_invoke_cold_1();
    }

    v3 = *(*(a1 + 32) + 24);
    if (v3)
    {
      v4 = v3;
      dispatch_source_cancel(v4);
      v5 = *(a1 + 32);
      v6 = *(v5 + 24);
      *(v5 + 24) = 0;
    }

    v7 = *(*(a1 + 32) + 48);
    if (v7)
    {
      v8 = v7;
      dispatch_source_cancel(v8);
      v9 = *(a1 + 32);
      v10 = *(v9 + 48);
      *(v9 + 48) = 0;
    }

    v11 = *(*(a1 + 32) + 56);
    if (v11)
    {
      [v11 invalidate];
      v12 = *(a1 + 32);
      v13 = *(v12 + 56);
      *(v12 + 56) = 0;
    }

    else
    {
      v14 = *(a1 + 32);

      [v14 _invalidated];
    }
  }
}

- (void)_invalidated
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateDone)
  {
    if (!self->_invalidateCalled && gLogCategory_SFDeviceDiscovery <= 50 && (gLogCategory_SFDeviceDiscovery != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceDiscovery _invalidated];
    }

    invalidationHandler = self->_invalidationHandler;
    if (invalidationHandler)
    {
      invalidationHandler[2]();
    }

    consoleUserTimer = self->_consoleUserTimer;
    if (consoleUserTimer)
    {
      v5 = consoleUserTimer;
      dispatch_source_cancel(v5);
      v6 = self->_consoleUserTimer;
      self->_consoleUserTimer = 0;
    }

    timeoutTimer = self->_timeoutTimer;
    if (timeoutTimer)
    {
      v8 = timeoutTimer;
      dispatch_source_cancel(v8);
      v9 = self->_timeoutTimer;
      self->_timeoutTimer = 0;
    }

    [(NSMutableDictionary *)self->_devices removeAllObjects];
    devices = self->_devices;
    self->_devices = 0;

    deviceFoundHandler = self->_deviceFoundHandler;
    self->_deviceFoundHandler = 0;

    deviceLostHandler = self->_deviceLostHandler;
    self->_deviceLostHandler = 0;

    deviceChangedHandler = self->_deviceChangedHandler;
    self->_deviceChangedHandler = 0;

    interruptionHandler = self->_interruptionHandler;
    self->_interruptionHandler = 0;

    v15 = self->_invalidationHandler;
    self->_invalidationHandler = 0;

    scanStateChangedHandler = self->_scanStateChangedHandler;
    self->_scanStateChangedHandler = 0;

    timeoutHandler = self->_timeoutHandler;
    self->_timeoutHandler = 0;

    xpcCnx = self->_xpcCnx;
    self->_xpcCnx = 0;

    self->_invalidateDone = 1;
    if (gLogCategory_SFDeviceDiscovery <= 30 && (gLogCategory_SFDeviceDiscovery != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceDiscovery _invalidated];
    }
  }
}

- (void)encodeWithCoder:(id)a3
{
  v13 = a3;
  [v13 encodeInteger:self->_changeFlags forKey:@"changeFlags"];
  deviceFilter = self->_deviceFilter;
  if (deviceFilter)
  {
    [v13 encodeObject:deviceFilter forKey:@"deviceFilter"];
  }

  [v13 encodeInteger:self->_discoveryFlags forKey:@"discoveryFlags"];
  fastScanMode = self->_fastScanMode;
  if (fastScanMode)
  {
    [v13 encodeInteger:fastScanMode forKey:@"fastScanMode"];
  }

  if (self->_legacy)
  {
    [v13 encodeBool:1 forKey:@"legacy"];
  }

  v6 = v13;
  if (self->_overrideScreenOff)
  {
    [v13 encodeBool:1 forKey:@"overrideScreenOff"];
    v6 = v13;
  }

  overrideScreenOffRescanInterval = self->_overrideScreenOffRescanInterval;
  if (overrideScreenOffRescanInterval)
  {
    [v13 encodeInteger:overrideScreenOffRescanInterval forKey:@"osoitvl"];
    v6 = v13;
  }

  purpose = self->_purpose;
  if (purpose)
  {
    [v13 encodeObject:purpose forKey:@"purpose"];
    v6 = v13;
  }

  if (self->_rssiChangeDetection)
  {
    [v13 encodeBool:1 forKey:@"rssiChangeDetection"];
    v6 = v13;
  }

  rssiThreshold = self->_rssiThreshold;
  if (rssiThreshold)
  {
    [v13 encodeInteger:rssiThreshold forKey:@"rssiThreshold"];
    v6 = v13;
  }

  if (self->_scanCache)
  {
    [v13 encodeBool:1 forKey:@"scanCache"];
    v6 = v13;
  }

  useCases = self->_useCases;
  if (useCases)
  {
    [v13 encodeObject:useCases forKey:@"useCases"];
    v6 = v13;
  }

  scanRate = self->_scanRate;
  if (scanRate > 2)
  {
    if (scanRate == 20)
    {
      goto LABEL_33;
    }

    if (scanRate != 3)
    {
      goto LABEL_28;
    }

    v12 = 40;
  }

  else
  {
    if (scanRate != 1)
    {
      if (scanRate == 2)
      {
        goto LABEL_33;
      }

LABEL_28:
      if (scanRate == 4)
      {
        v12 = 50;
      }

      else
      {
        v12 = self->_scanRate;
      }

      goto LABEL_32;
    }

    v12 = 10;
  }

LABEL_32:
  [v13 encodeInteger:v12 forKey:@"scanRate"];
  v6 = v13;
LABEL_33:
  if (self->_trackPeers)
  {
    [v13 encodeBool:1 forKey:@"trackPeers"];
    v6 = v13;
  }
}

- (void)setChangeFlags:(unsigned int)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __36__SFDeviceDiscovery_setChangeFlags___block_invoke;
  v3[3] = &unk_1E788D970;
  v3[4] = self;
  v4 = a3;
  [(SFDeviceDiscovery *)self _invokeBlockActivateSafe:v3];
}

uint64_t __36__SFDeviceDiscovery_setChangeFlags___block_invoke(uint64_t result)
{
  *(*(result + 32) + 72) = *(result + 40);
  *(*(result + 32) + 42) = 0;
  return result;
}

- (void)setDeviceFilter:(id)a3
{
  v4 = [a3 copy];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __37__SFDeviceDiscovery_setDeviceFilter___block_invoke;
  v6[3] = &unk_1E788A658;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(SFDeviceDiscovery *)self _invokeBlockActivateSafe:v6];
}

void __37__SFDeviceDiscovery_setDeviceFilter___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  objc_storeStrong((*(a1 + 32) + 80), *(a1 + 40));
  if ([*(a1 + 40) count])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v2 = [*(*(a1 + 32) + 32) allKeys];
    v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v13;
      do
      {
        v6 = 0;
        do
        {
          if (*v13 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v12 + 1) + 8 * v6);
          if (([*(a1 + 40) containsObject:v7] & 1) == 0)
          {
            v8 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:v7];
            if (v8)
            {
              if (gLogCategory_SFDeviceDiscovery <= 30 && (gLogCategory_SFDeviceDiscovery != -1 || _LogCategory_Initialize()))
              {
                __37__SFDeviceDiscovery_setDeviceFilter___block_invoke_cold_1();
              }

              [*(*(a1 + 32) + 32) removeObjectForKey:v7];
              v9 = *(*(a1 + 32) + 96);
              if (v9)
              {
                (*(v9 + 16))(v9, v8);
              }
            }
          }

          ++v6;
        }

        while (v4 != v6);
        v10 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
        v4 = v10;
      }

      while (v10);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)setDiscoveryFlags:(unint64_t)a3
{
  v3 = a3 & 0xFFFFFFEC | 0x10;
  if ((a3 & 0xE47FFC0) == 0)
  {
    v3 = a3;
  }

  if ((v3 & 0x400000) != 0)
  {
    v3 |= 0x60uLL;
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __39__SFDeviceDiscovery_setDiscoveryFlags___block_invoke;
  v4[3] = &unk_1E788B260;
  if ((v3 & 0x40000) != 0)
  {
    v3 |= 0x20060uLL;
  }

  v4[4] = self;
  v4[5] = v3;
  [(SFDeviceDiscovery *)self _invokeBlockActivateSafe:v4];
}

- (void)setDispatchQueue:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  if (obj->_activateCalled)
  {
    FatalErrorF();
    __break(1u);
  }

  else
  {
    dispatchQueue = obj->_dispatchQueue;
    obj->_dispatchQueue = v4;

    objc_sync_exit(obj);
  }
}

- (void)setFastScanMode:(int64_t)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __37__SFDeviceDiscovery_setFastScanMode___block_invoke;
  v3[3] = &unk_1E788B260;
  v3[4] = self;
  v3[5] = a3;
  [(SFDeviceDiscovery *)self _invokeBlockActivateSafe:v3];
}

- (void)setOverrideScreenOff:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __42__SFDeviceDiscovery_setOverrideScreenOff___block_invoke;
  v3[3] = &unk_1E788B700;
  v3[4] = self;
  v4 = a3;
  [(SFDeviceDiscovery *)self _invokeBlockActivateSafe:v3];
}

- (void)setOverrideScreenOffRescanInterval:(int64_t)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __56__SFDeviceDiscovery_setOverrideScreenOffRescanInterval___block_invoke;
  v3[3] = &unk_1E788B260;
  v3[4] = self;
  v3[5] = a3;
  [(SFDeviceDiscovery *)self _invokeBlockActivateSafe:v3];
}

- (void)setRssiChangeDetection:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __44__SFDeviceDiscovery_setRssiChangeDetection___block_invoke;
  v3[3] = &unk_1E788B700;
  v3[4] = self;
  v4 = a3;
  [(SFDeviceDiscovery *)self _invokeBlockActivateSafe:v3];
}

- (void)setRssiThreshold:(int64_t)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __38__SFDeviceDiscovery_setRssiThreshold___block_invoke;
  v3[3] = &unk_1E788B260;
  v3[4] = self;
  v3[5] = a3;
  [(SFDeviceDiscovery *)self _invokeBlockActivateSafe:v3];
}

- (void)setScanCache:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __34__SFDeviceDiscovery_setScanCache___block_invoke;
  v3[3] = &unk_1E788B700;
  v3[4] = self;
  v4 = a3;
  [(SFDeviceDiscovery *)self _invokeBlockActivateSafe:v3];
}

- (void)setScanRate:(int64_t)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __33__SFDeviceDiscovery_setScanRate___block_invoke;
  v3[3] = &unk_1E788B260;
  v3[4] = self;
  v3[5] = a3;
  [(SFDeviceDiscovery *)self _invokeBlockActivateSafe:v3];
}

- (void)setTimeout:(double)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __32__SFDeviceDiscovery_setTimeout___block_invoke;
  v3[3] = &unk_1E788B260;
  v3[4] = self;
  *&v3[5] = a3;
  [(SFDeviceDiscovery *)self _invokeBlockActivateSafe:v3];
}

double __32__SFDeviceDiscovery_setTimeout___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  if (v2)
  {
    v3 = v2;
    dispatch_source_cancel(v3);
    v4 = *(a1 + 32);
    v5 = *(v4 + 48);
    *(v4 + 48) = 0;
  }

  result = *(a1 + 40);
  *(*(a1 + 32) + 192) = result;
  return result;
}

- (void)setTrackPeers:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __35__SFDeviceDiscovery_setTrackPeers___block_invoke;
  v3[3] = &unk_1E788B700;
  v3[4] = self;
  v4 = a3;
  [(SFDeviceDiscovery *)self _invokeBlockActivateSafe:v3];
}

- (void)setUseCases:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __33__SFDeviceDiscovery_setUseCases___block_invoke;
  v6[3] = &unk_1E788A658;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(SFDeviceDiscovery *)self _invokeBlockActivateSafe:v6];
}

- (void)activateWithCompletion:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v5->_activateCalled = 1;
  dispatchQueue = v5->_dispatchQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__SFDeviceDiscovery_activateWithCompletion___block_invoke;
  v8[3] = &unk_1E788B210;
  v8[4] = v5;
  v9 = v4;
  v7 = v4;
  dispatch_async(dispatchQueue, v8);

  objc_sync_exit(v5);
}

- (void)_activateWithCompletion:(id)a3
{
  v19[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_SFDeviceDiscovery <= 30 && (gLogCategory_SFDeviceDiscovery != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceDiscovery _activateWithCompletion:?];
  }

  if (self->_invalidateCalled)
  {
    [(SFDeviceDiscovery *)v4 _activateWithCompletion:v19];
  }

  else
  {
    if (!self->_purpose)
    {
      v5 = getprogname();
      if (v5)
      {
        v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v5];
        purpose = self->_purpose;
        self->_purpose = v6;
      }
    }

    self->_activateTicks = mach_absolute_time();
    if ([(SFDeviceDiscovery *)self _ensureXPCStarted])
    {
      if (gLogCategory_SFDeviceDiscovery <= 50 && (gLogCategory_SFDeviceDiscovery != -1 || _LogCategory_Initialize()))
      {
        [SFDeviceDiscovery _activateWithCompletion:];
      }

      if (v4)
      {
        v4[2](v4, 0);
      }
    }

    else
    {
      v8 = _os_activity_create(&dword_1A9662000, "Sharing/SFDeviceDiscovery/deviceDiscoveryActivate", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
      state.opaque[0] = 0;
      state.opaque[1] = 0;
      os_activity_scope_enter(v8, &state);
      xpcCnx = self->_xpcCnx;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __45__SFDeviceDiscovery__activateWithCompletion___block_invoke;
      v15[3] = &unk_1E788B6D8;
      v10 = v4;
      v16 = v10;
      v11 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v15];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __45__SFDeviceDiscovery__activateWithCompletion___block_invoke_2;
      v13[3] = &unk_1E788B6D8;
      v14 = v10;
      [v11 deviceDiscoveryActivate:self completion:v13];

      os_activity_scope_leave(&state);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t __45__SFDeviceDiscovery__activateWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __45__SFDeviceDiscovery__activateWithCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)fastScanTrigger:(id)a3
{
  v4 = a3;
  v5 = _os_activity_create(&dword_1A9662000, "Sharing/SFDeviceDiscovery/deviceDiscoveryFastScanTrigger", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  dispatchQueue = self->_dispatchQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __37__SFDeviceDiscovery_fastScanTrigger___block_invoke;
  v8[3] = &unk_1E788A658;
  v9 = v4;
  v10 = self;
  v7 = v4;
  dispatch_async(dispatchQueue, v8);

  os_activity_scope_leave(&state);
}

void __37__SFDeviceDiscovery_fastScanTrigger___block_invoke(uint64_t a1)
{
  if (gLogCategory_SFDeviceDiscovery <= 50 && (gLogCategory_SFDeviceDiscovery != -1 || _LogCategory_Initialize()))
  {
    __37__SFDeviceDiscovery_fastScanTrigger___block_invoke_cold_1(a1);
  }

  v2 = [*(*(a1 + 40) + 56) remoteObjectProxy];
  [v2 deviceDiscoveryFastScanTrigger:*(a1 + 32)];
}

- (void)fastScanCancel:(id)a3
{
  v4 = a3;
  v5 = _os_activity_create(&dword_1A9662000, "Sharing/SFDeviceDiscovery/deviceDiscoveryFastScanCancel", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  dispatchQueue = self->_dispatchQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __36__SFDeviceDiscovery_fastScanCancel___block_invoke;
  v8[3] = &unk_1E788A658;
  v9 = v4;
  v10 = self;
  v7 = v4;
  dispatch_async(dispatchQueue, v8);

  os_activity_scope_leave(&state);
}

void __36__SFDeviceDiscovery_fastScanCancel___block_invoke(uint64_t a1)
{
  if (gLogCategory_SFDeviceDiscovery <= 50 && (gLogCategory_SFDeviceDiscovery != -1 || _LogCategory_Initialize()))
  {
    __36__SFDeviceDiscovery_fastScanCancel___block_invoke_cold_1(a1);
  }

  *(*(a1 + 40) + 128) = 0;
  v2 = [*(*(a1 + 40) + 56) remoteObjectProxy];
  [v2 deviceDiscoveryFastScanCancel:*(a1 + 32)];
}

- (void)triggerEnhancedDiscovery:(id)a3
{
  v4 = a3;
  v5 = _os_activity_create(&dword_1A9662000, "Sharing/SFDeviceDiscovery/deviceDiscoveryTrigggerEnhancedDiscovery", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  dispatchQueue = self->_dispatchQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __46__SFDeviceDiscovery_triggerEnhancedDiscovery___block_invoke;
  v8[3] = &unk_1E788A658;
  v9 = v4;
  v10 = self;
  v7 = v4;
  dispatch_async(dispatchQueue, v8);

  os_activity_scope_leave(&state);
}

void __46__SFDeviceDiscovery_triggerEnhancedDiscovery___block_invoke(uint64_t a1)
{
  if (gLogCategory_SFDeviceDiscovery <= 30 && (gLogCategory_SFDeviceDiscovery != -1 || _LogCategory_Initialize()))
  {
    __46__SFDeviceDiscovery_triggerEnhancedDiscovery___block_invoke_cold_1(a1);
  }

  v2 = [*(*(a1 + 40) + 56) remoteObjectProxy];
  [v2 deviceDiscoveryTriggerEnhancedDiscovery:*(a1 + 32)];
}

- (void)triggerEnhancedDiscovery:(id)a3 useCase:(unsigned int)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = _os_activity_create(&dword_1A9662000, "Sharing/SFDeviceDiscovery/deviceDiscoveryTrigggerEnhancedDiscovery", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v10, &state);
  dispatchQueue = self->_dispatchQueue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __65__SFDeviceDiscovery_triggerEnhancedDiscovery_useCase_completion___block_invoke;
  v14[3] = &unk_1E788EAB8;
  v18 = a4;
  v15 = v8;
  v16 = self;
  v17 = v9;
  v12 = v9;
  v13 = v8;
  dispatch_async(dispatchQueue, v14);

  os_activity_scope_leave(&state);
}

void __65__SFDeviceDiscovery_triggerEnhancedDiscovery_useCase_completion___block_invoke(uint64_t a1)
{
  if (gLogCategory_SFDeviceDiscovery <= 30 && (gLogCategory_SFDeviceDiscovery != -1 || _LogCategory_Initialize()))
  {
    __65__SFDeviceDiscovery_triggerEnhancedDiscovery_useCase_completion___block_invoke_cold_1(a1);
  }

  v2 = [*(*(a1 + 40) + 56) remoteObjectProxy];
  v3 = *(a1 + 32);
  v4 = *(a1 + 56);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __65__SFDeviceDiscovery_triggerEnhancedDiscovery_useCase_completion___block_invoke_2;
  v5[3] = &unk_1E788BF88;
  v6 = v3;
  v7 = *(a1 + 48);
  [v2 deviceDiscoveryTriggerEnhancedDiscovery:v6 useCase:v4 completion:v5];
}

void __65__SFDeviceDiscovery_triggerEnhancedDiscovery_useCase_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = v3;
  if (v3)
  {
    if (gLogCategory_SFDeviceDiscovery <= 60)
    {
      if (gLogCategory_SFDeviceDiscovery != -1 || (v4 = _LogCategory_Initialize(), v3 = v7, v4))
      {
        v6 = *(a1 + 32);
        LogPrintF();
        v3 = v7;
      }
    }
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v7);
    v3 = v7;
  }
}

- (void)_interrupted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_SFDeviceDiscovery <= 50 && (gLogCategory_SFDeviceDiscovery != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceDiscovery _interrupted];
  }

  interruptionHandler = self->_interruptionHandler;
  if (interruptionHandler)
  {
    interruptionHandler[2]();
  }

  [(NSMutableDictionary *)self->_devices removeAllObjects];
  devices = self->_devices;
  self->_devices = 0;

  if (self->_activateCalled)
  {
    if ([(SFDeviceDiscovery *)self _ensureXPCStarted])
    {
      if (gLogCategory_SFDeviceDiscovery <= 50 && (gLogCategory_SFDeviceDiscovery != -1 || _LogCategory_Initialize()))
      {
        [SFDeviceDiscovery _interrupted];
      }
    }

    else
    {
      v5 = _os_activity_create(&dword_1A9662000, "Sharing/SFDeviceDiscovery/deviceDiscoveryActivate", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
      v7.opaque[0] = 0;
      v7.opaque[1] = 0;
      os_activity_scope_enter(v5, &v7);
      if (gLogCategory_SFDeviceDiscovery <= 50 && (gLogCategory_SFDeviceDiscovery != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v6 = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
      [v6 deviceDiscoveryActivate:self completion:&__block_literal_global_41];

      os_activity_scope_leave(&v7);
    }
  }
}

void __33__SFDeviceDiscovery__interrupted__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (gLogCategory_SFDeviceDiscovery <= 30)
  {
    v5 = v2;
    if (gLogCategory_SFDeviceDiscovery != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
    {
      __33__SFDeviceDiscovery__interrupted__block_invoke_cold_1();
      v3 = v5;
    }
  }
}

- (void)_invokeBlockActivateSafe:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (v5->_activateCalled)
  {
    v6 = _os_activity_create(&dword_1A9662000, "Sharing/SFDeviceDiscovery/deviceDiscoveryUpdate", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v6, &state);
    dispatchQueue = v5->_dispatchQueue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __46__SFDeviceDiscovery__invokeBlockActivateSafe___block_invoke;
    v8[3] = &unk_1E788B318;
    v8[4] = v5;
    v9 = v4;
    dispatch_async(dispatchQueue, v8);

    os_activity_scope_leave(&state);
  }

  else
  {
    v4[2](v4);
  }

  objc_sync_exit(v5);
}

uint64_t __46__SFDeviceDiscovery__invokeBlockActivateSafe___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = [*(*(a1 + 32) + 56) remoteObjectProxy];
  [v2 deviceDiscoveryUpdate:*(a1 + 32)];

  v3 = *(a1 + 32);

  return [v3 _startTimeoutIfNeeded];
}

- (void)_retryConsole
{
  consoleUserTimer = self->_consoleUserTimer;
  if (consoleUserTimer)
  {
    v4 = consoleUserTimer;
    dispatch_source_cancel(v4);
    v5 = self->_consoleUserTimer;
    self->_consoleUserTimer = 0;
  }

  if ([(SFDeviceDiscovery *)self _ensureXPCStarted])
  {
    if (gLogCategory_SFDeviceDiscovery <= 50 && (gLogCategory_SFDeviceDiscovery != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceDiscovery _retryConsole];
    }
  }

  else
  {
    v6 = _os_activity_create(&dword_1A9662000, "Sharing/SFDeviceDiscovery/deviceDiscoveryActivate", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v8.opaque[0] = 0;
    v8.opaque[1] = 0;
    os_activity_scope_enter(v6, &v8);
    if (gLogCategory_SFDeviceDiscovery <= 50 && (gLogCategory_SFDeviceDiscovery != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v7 = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
    [v7 deviceDiscoveryActivate:self completion:&__block_literal_global_311];

    os_activity_scope_leave(&v8);
  }
}

void __34__SFDeviceDiscovery__retryConsole__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (gLogCategory_SFDeviceDiscovery <= 30)
  {
    v5 = v2;
    if (gLogCategory_SFDeviceDiscovery != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
    {
      __34__SFDeviceDiscovery__retryConsole__block_invoke_cold_1();
      v3 = v5;
    }
  }
}

- (void)_timeoutTimerFired
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_SFDeviceDiscovery <= 20 && (gLogCategory_SFDeviceDiscovery != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceDiscovery _timeoutTimerFired];
  }

  self->_timeoutFired = 1;
  timeoutTimer = self->_timeoutTimer;
  if (timeoutTimer)
  {
    v4 = timeoutTimer;
    dispatch_source_cancel(v4);
    v5 = self->_timeoutTimer;
    self->_timeoutTimer = 0;
  }

  timeoutHandler = self->_timeoutHandler;
  if (timeoutHandler)
  {
    timeoutHandler[2]();
    timeoutHandler = self->_timeoutHandler;
  }

  self->_timeoutHandler = 0;
}

- (void)deviceDiscoveryScanStateChanged:(int64_t)a3
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  self->_scanState = a3;
  scanStateChangedHandler = self->_scanStateChangedHandler;
  if (scanStateChangedHandler)
  {
    scanStateChangedHandler[2](scanStateChangedHandler, a3);
  }

  [(SFDeviceDiscovery *)self _startTimeoutIfNeeded];
}

- (SFDeviceDiscovery)initWithCoder:(id)a3
{
  v4 = a3;
  v32.receiver = self;
  v32.super_class = SFDeviceDiscovery;
  v5 = [(SFDeviceDiscovery *)&v32 init];
  v6 = v5;
  if (v5)
  {
    v7 = SFMainQueue(v5);
    dispatchQueue = v6->_dispatchQueue;
    v6->_dispatchQueue = v7;

    *&v6->_rssiThreshold = xmmword_1A998F650;
    if ([v4 containsValueForKey:@"changeFlags"])
    {
      v6->_changeFlags = [v4 decodeIntegerForKey:@"changeFlags"];
    }

    v9 = [v4 containsValueForKey:@"deviceFilter"];
    v10 = MEMORY[0x1E695D940];
    if (v9)
    {
      v11 = MEMORY[0x1E695DFD8];
      v12 = objc_opt_class();
      v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
      v14 = [v4 decodeObjectOfClasses:v13 forKey:@"deviceFilter"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v15 = MEMORY[0x1E695DF30];
        v16 = *v10;
        v17 = _NSMethodExceptionProem();
        [v15 raise:v16 format:{@"%@: non-set value for key %@ : %@", v17, @"deviceFilter", v14}];

        v10 = MEMORY[0x1E695D940];
      }

      deviceFilter = v6->_deviceFilter;
      v6->_deviceFilter = v14;
    }

    if ([v4 containsValueForKey:@"discoveryFlags"])
    {
      v6->_discoveryFlags = [v4 decodeIntegerForKey:@"discoveryFlags"];
    }

    v19 = v4;
    if ([v19 containsValueForKey:@"fastScanMode"])
    {
      v6->_fastScanMode = [v19 decodeIntegerForKey:@"fastScanMode"];
    }

    if ([v19 containsValueForKey:@"legacy"])
    {
      v6->_legacy = [v19 decodeBoolForKey:@"legacy"];
    }

    if ([v19 containsValueForKey:@"overrideScreenOff"])
    {
      v6->_overrideScreenOff = [v19 decodeBoolForKey:@"overrideScreenOff"];
    }

    if ([v19 containsValueForKey:@"osoitvl"])
    {
      v6->_overrideScreenOffRescanInterval = [v19 decodeIntegerForKey:@"osoitvl"];
    }

    v20 = v19;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    if ([v20 containsValueForKey:@"rssiChangeDetection"])
    {
      v6->_rssiChangeDetection = [v20 decodeBoolForKey:@"rssiChangeDetection"];
    }

    if ([v20 containsValueForKey:@"rssiThreshold"])
    {
      v6->_rssiThreshold = [v20 decodeIntegerForKey:@"rssiThreshold"];
    }

    if ([v20 containsValueForKey:@"scanCache"])
    {
      v6->_scanCache = [v20 decodeBoolForKey:@"scanCache"];
    }

    if ([v20 containsValueForKey:@"scanRate"])
    {
      v6->_scanRate = [v20 decodeIntegerForKey:@"scanRate"];
    }

    v21 = v20;
    if ([v21 containsValueForKey:@"trackPeers"])
    {
      v6->_trackPeers = [v21 decodeBoolForKey:@"trackPeers"];
    }

    if ([v21 containsValueForKey:@"useCases"])
    {
      v22 = MEMORY[0x1E695DFD8];
      v23 = objc_opt_class();
      v24 = [v22 setWithObjects:{v23, objc_opt_class(), 0}];
      v25 = [v21 decodeObjectOfClasses:v24 forKey:@"useCases"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v26 = MEMORY[0x1E695DF30];
        v27 = *v10;
        v28 = _NSMethodExceptionProem();
        [v26 raise:v27 format:{@"%@: non-set value for key %@ : %@", v28, @"deviceFilter", v25}];
      }

      useCases = v6->_useCases;
      v6->_useCases = v25;
    }

    v30 = v6;
  }

  return v6;
}

- (void)deviceDiscoveryFoundDevice:(id)a3
{
  v14 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_SFDeviceDiscovery <= 9 && (gLogCategory_SFDeviceDiscovery != -1 || _LogCategory_Initialize()))
  {
    v13 = v14;
    LogPrintF();
  }

  v4 = [v14 identifier];
  if (v4)
  {
    v5 = [(NSMutableDictionary *)self->_devices objectForKeyedSubscript:v4];

    devices = self->_devices;
    if (v5)
    {
      [(NSMutableDictionary *)devices setObject:v14 forKeyedSubscript:v4];
      v7 = _Block_copy(self->_deviceChangedHandler);
      if (!v7)
      {
LABEL_13:

        goto LABEL_14;
      }
    }

    else
    {
      v8 = v14;
      if (!devices)
      {
        v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v10 = self->_devices;
        self->_devices = v9;

        v8 = v14;
        devices = self->_devices;
      }

      [(NSMutableDictionary *)devices setObject:v8 forKeyedSubscript:v4];
      v7 = _Block_copy(self->_deviceFoundHandler);
      if (!v7)
      {
        goto LABEL_13;
      }
    }

    v11 = OUTLINED_FUNCTION_2_11();
    v12(v11);
    goto LABEL_13;
  }

LABEL_14:
}

- (void)deviceDiscoveryLostDevice:(id)a3
{
  v8 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_SFDeviceDiscovery <= 9 && (gLogCategory_SFDeviceDiscovery != -1 || _LogCategory_Initialize()))
  {
    v7 = v8;
    LogPrintF();
  }

  v4 = [v8 identifier];
  if (v4)
  {
    v5 = [(NSMutableDictionary *)self->_devices objectForKeyedSubscript:v4];
    if (v5)
    {
      [(NSMutableDictionary *)self->_devices removeObjectForKey:v4];
      [v5 setIsBLEDeviceReplaced:{objc_msgSend(v8, "isBLEDeviceReplaced")}];
      deviceLostHandler = self->_deviceLostHandler;
      if (deviceLostHandler)
      {
        deviceLostHandler[2](deviceLostHandler, v5);
      }
    }
  }

  else
  {
    v5 = 0;
  }
}

- (void)_activateWithCompletion:(__CFString *)a3 .cold.3(uint64_t a1, void *a2, __CFString **a3)
{
  if (gLogCategory_SFDeviceDiscovery <= 60 && (gLogCategory_SFDeviceDiscovery != -1 || _LogCategory_Initialize()))
  {
    v13 = 4294960572;
    LogPrintF();
  }

  if (a1)
  {
    v6 = MEMORY[0x1E696ABC0];
    v7 = *MEMORY[0x1E696A768];
    *a2 = *MEMORY[0x1E696A578];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
    v9 = v8;
    v10 = @"?";
    if (v8)
    {
      v10 = v8;
    }

    *a3 = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:a3 forKeys:a2 count:{1, v13}];
    v12 = [v6 errorWithDomain:v7 code:-6724 userInfo:v11];
    (*(a1 + 16))(a1, v12);
  }
}

uint64_t __65__SFDeviceDiscovery_triggerEnhancedDiscovery_useCase_completion___block_invoke_cold_1(uint64_t a1)
{
  if (!(!v2 & v1))
  {
    switch(*(a1 + 56))
    {
      case 0x10000:
      case 0x10001:
      case 0x10002:
      case 0x10003:
      case 0x10004:
      case 0x10005:
      case 0x10006:
      case 0x10007:
      case 0x10008:
      case 0x10009:
      case 0x1000A:
      case 0x1000B:
      case 0x1000C:
      case 0x1000D:
      case 0x1000E:
      case 0x1000F:
      case 0x10010:
      case 0x10011:
      case 0x10012:
      case 0x10013:
      case 0x10014:
      case 0x10015:
      case 0x10016:
      case 0x10017:
      case 0x10018:
      case 0x10019:
      case 0x1001A:
      case 0x1001B:
      case 0x1001C:
      case 0x1001D:
      case 0x1001E:
      case 0x1001F:
        break;
      default:
        JUMPOUT(0);
    }
  }

  v4 = *(a1 + 32);
  return LogPrintF();
}

@end