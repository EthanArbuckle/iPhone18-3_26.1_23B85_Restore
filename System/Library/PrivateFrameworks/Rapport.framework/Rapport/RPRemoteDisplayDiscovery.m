@interface RPRemoteDisplayDiscovery
- (BOOL)_checkRSSIThresholdForDevice:(id)a3;
- (BOOL)shouldReportDevice:(id)a3;
- (NSArray)discoveredDevices;
- (NSArray)discoveredPeople;
- (RPRemoteDisplayDiscovery)init;
- (RPRemoteDisplayDiscovery)initWithCoder:(id)a3;
- (id)description;
- (void)_activateWithCompletion:(id)a3 reactivate:(BOOL)a4;
- (void)_ensureXPCStarted;
- (void)_interrupted;
- (void)_invalidated;
- (void)_lostAllDevices;
- (void)_lostAllPeople;
- (void)activateWithCompletion:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)enterDiscoverySessionWithDevice:(id)a3 reason:(id)a4;
- (void)exitDiscoverySessionWithReason:(id)a3;
- (void)invalidate;
- (void)personCanceled:(id)a3;
- (void)remoteDisplayDedicatedDeviceChanged:(id)a3;
- (void)remoteDisplayDeviceSelected:(id)a3;
- (void)remoteDisplayFoundDevice:(id)a3;
- (void)remoteDisplayLostDevice:(id)a3;
- (void)remoteDisplayPersonDeclined;
- (void)remoteDisplayUpdateErrorFlags:(unint64_t)a3;
- (void)requestDedicatedDeviceConfirmationWithCompletion:(id)a3;
- (void)saveDedicatedDevice:(id)a3;
@end

@implementation RPRemoteDisplayDiscovery

- (RPRemoteDisplayDiscovery)init
{
  v8.receiver = self;
  v8.super_class = RPRemoteDisplayDiscovery;
  v2 = [(RPRemoteDisplayDiscovery *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_controlFlags = 6;
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x1E69E96A0]);
    DeviceClass = GestaltGetDeviceClass();
    v5 = -60;
    if (DeviceClass == 4)
    {
      v5 = -75;
    }

    v3->_rssiThreshold = v5;
    v6 = v3;
  }

  return v3;
}

- (RPRemoteDisplayDiscovery)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = RPRemoteDisplayDiscovery;
  v5 = [(RPRemoteDisplayDiscovery *)&v13 init];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_dispatchQueue, MEMORY[0x1E69E96A0]);
    v7 = v4;
    if ([v7 containsValueForKey:@"cFl"])
    {
      v6->_controlFlags = [v7 decodeInt64ForKey:@"cFl"];
    }

    v8 = v7;
    if ([v8 containsValueForKey:@"dFl"])
    {
      v6->_discoveryFlags = [v8 decodeInt64ForKey:@"dFl"];
    }

    v9 = v8;
    if ([v9 containsValueForKey:@"eDis"])
    {
      v6->_triggerEnhancedDiscovery = [v9 decodeBoolForKey:@"eDis"];
    }

    v10 = v9;
    if ([v10 containsValueForKey:@"rssiTh"])
    {
      v6->_rssiThreshold = [v10 decodeIntegerForKey:@"rssiTh"];
    }

    v11 = v6;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  controlFlags = self->_controlFlags;
  v8 = v4;
  if (controlFlags)
  {
    [v4 encodeInt64:controlFlags forKey:@"cFl"];
    v4 = v8;
  }

  discoveryFlags = self->_discoveryFlags;
  if (discoveryFlags)
  {
    [v8 encodeInt64:discoveryFlags forKey:@"dFl"];
    v4 = v8;
  }

  if (self->_triggerEnhancedDiscovery)
  {
    [v8 encodeBool:1 forKey:@"eDis"];
    v4 = v8;
  }

  rssiThreshold = self->_rssiThreshold;
  if (rssiThreshold)
  {
    [v8 encodeInteger:rssiThreshold forKey:@"rssiTh"];
    v4 = v8;
  }
}

- (id)description
{
  discoveryFlags = self;
  NSAppendPrintF();
  v3 = 0;
  v4 = v3;
  if (self->_discoveryFlags)
  {
    v15 = v3;
    discoveryFlags = self->_discoveryFlags;
    v14 = &unk_1B6F2E991;
    NSAppendPrintF();
    v5 = v15;

    v4 = v5;
  }

  if (self->_controlFlags)
  {
    discoveryFlags = self->_controlFlags;
    v14 = &unk_1B6F2E9B0;
    NSAppendPrintF();
    v6 = v4;

    v4 = v6;
  }

  if ([(NSMutableDictionary *)self->_discoveredDevices count:discoveryFlags])
  {
    v12 = [(NSMutableDictionary *)self->_discoveredDevices count];
    NSAppendPrintF();
    v7 = v4;

    v4 = v7;
  }

  if ([(NSMutableDictionary *)self->_discoveredPeople count])
  {
    [(NSMutableDictionary *)self->_discoveredPeople count];
    NSAppendPrintF();
    v8 = v4;

    v4 = v8;
  }

  if (self->_rssiThreshold)
  {
    rssiThreshold = self->_rssiThreshold;
    NSAppendPrintF();
    v9 = v4;

    v4 = v9;
  }

  return v4;
}

- (void)activateWithCompletion:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__RPRemoteDisplayDiscovery_activateWithCompletion___block_invoke;
  v7[3] = &unk_1E7C92E20;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

uint64_t __51__RPRemoteDisplayDiscovery_activateWithCompletion___block_invoke(uint64_t a1)
{
  DeviceClass = GestaltGetDeviceClass();
  *(*(a1 + 32) + 8) = 1;
  v3 = *(a1 + 32);
  if (*(v3 + 64))
  {
    v4 = DeviceClass == 100;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  *(v3 + 50) = v5;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);

  return [v6 _activateWithCompletion:v7 reactivate:0];
}

- (void)_activateWithCompletion:(id)a3 reactivate:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v4)
  {
    if (gLogCategory_RPRemoteDisplayDiscovery <= 30 && (gLogCategory_RPRemoteDisplayDiscovery != -1 || _LogCategory_Initialize()))
    {
LABEL_10:
      [RPRemoteDisplayDiscovery _activateWithCompletion:reactivate:];
    }
  }

  else if (gLogCategory_RPRemoteDisplayDiscovery <= 30 && (gLogCategory_RPRemoteDisplayDiscovery != -1 || _LogCategory_Initialize()))
  {
    goto LABEL_10;
  }

  [(RPRemoteDisplayDiscovery *)self _ensureXPCStarted];
  xpcCnx = self->_xpcCnx;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __63__RPRemoteDisplayDiscovery__activateWithCompletion_reactivate___block_invoke;
  v14[3] = &unk_1E7C92F88;
  v16 = v4;
  v8 = v6;
  v15 = v8;
  v9 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v14];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __63__RPRemoteDisplayDiscovery__activateWithCompletion_reactivate___block_invoke_2;
  v11[3] = &unk_1E7C94D00;
  v13 = v4;
  v11[4] = self;
  v12 = v8;
  v10 = v8;
  [v9 remoteDisplayActivateDiscovery:self completion:v11];
}

void __63__RPRemoteDisplayDiscovery__activateWithCompletion_reactivate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = v3;
  if (*(a1 + 40) == 1)
  {
    if (gLogCategory_RPRemoteDisplayDiscovery <= 90)
    {
      if (gLogCategory_RPRemoteDisplayDiscovery != -1 || (v4 = _LogCategory_Initialize(), v3 = v7, v4))
      {
LABEL_14:
        __63__RPRemoteDisplayDiscovery__activateWithCompletion_reactivate___block_invoke_cold_1();
        v3 = v7;
      }
    }
  }

  else if (gLogCategory_RPRemoteDisplayDiscovery <= 90)
  {
    if (gLogCategory_RPRemoteDisplayDiscovery != -1)
    {
      goto LABEL_14;
    }

    v5 = _LogCategory_Initialize();
    v3 = v7;
    if (v5)
    {
      goto LABEL_14;
    }
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v7);
    v3 = v7;
  }
}

void __63__RPRemoteDisplayDiscovery__activateWithCompletion_reactivate___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  *(*(a1 + 32) + 112) = a2;
  v14 = v5;
  if (a2 && (*(a1 + 48) & 1) != 0)
  {
    v6 = _Block_copy(*(*(a1 + 32) + 120));
    v7 = v6;
    if (v6)
    {
      (*(v6 + 2))(v6);
    }

    v5 = v14;
  }

  v8 = *(a1 + 48);
  if (v5)
  {
    if (*(a1 + 48))
    {
      if (gLogCategory_RPRemoteDisplayDiscovery <= 90)
      {
        if (gLogCategory_RPRemoteDisplayDiscovery != -1 || (v9 = _LogCategory_Initialize(), v5 = v14, v9))
        {
          __63__RPRemoteDisplayDiscovery__activateWithCompletion_reactivate___block_invoke_2_cold_2();
LABEL_25:
          v5 = v14;
        }
      }
    }

    else if (gLogCategory_RPRemoteDisplayDiscovery <= 90)
    {
      if (gLogCategory_RPRemoteDisplayDiscovery != -1 || (v11 = _LogCategory_Initialize(), v5 = v14, v11))
      {
        __63__RPRemoteDisplayDiscovery__activateWithCompletion_reactivate___block_invoke_2_cold_1();
        goto LABEL_25;
      }
    }
  }

  else if (*(a1 + 48))
  {
    if (gLogCategory_RPRemoteDisplayDiscovery <= 30)
    {
      if (gLogCategory_RPRemoteDisplayDiscovery != -1 || (v10 = _LogCategory_Initialize(), v5 = v14, v10))
      {
        __63__RPRemoteDisplayDiscovery__activateWithCompletion_reactivate___block_invoke_2_cold_4();
        goto LABEL_25;
      }
    }
  }

  else if (gLogCategory_RPRemoteDisplayDiscovery <= 30)
  {
    if (gLogCategory_RPRemoteDisplayDiscovery != -1 || (v12 = _LogCategory_Initialize(), v5 = v14, v12))
    {
      __63__RPRemoteDisplayDiscovery__activateWithCompletion_reactivate___block_invoke_2_cold_3();
      goto LABEL_25;
    }
  }

  v13 = *(a1 + 40);
  if (v13)
  {
    (*(v13 + 16))(v13, v14);
    v5 = v14;
  }
}

- (void)_ensureXPCStarted
{
  if (!self->_xpcCnx)
  {
    v12[5] = v5;
    v12[6] = v4;
    v12[11] = v2;
    v12[12] = v3;
    v7 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.RemoteDisplay" options:0];
    xpcCnx = self->_xpcCnx;
    self->_xpcCnx = v7;

    [(NSXPCConnection *)self->_xpcCnx _setQueue:self->_dispatchQueue];
    v9 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2EF7D58];
    [(NSXPCConnection *)self->_xpcCnx setExportedInterface:v9];

    [(NSXPCConnection *)self->_xpcCnx setExportedObject:self];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __45__RPRemoteDisplayDiscovery__ensureXPCStarted__block_invoke;
    v12[3] = &unk_1E7C92CE8;
    v12[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInterruptionHandler:v12];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __45__RPRemoteDisplayDiscovery__ensureXPCStarted__block_invoke_2;
    v11[3] = &unk_1E7C92CE8;
    v11[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInvalidationHandler:v11];
    v10 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2EFEE98];
    [(NSXPCConnection *)self->_xpcCnx setRemoteObjectInterface:v10];

    [(NSXPCConnection *)self->_xpcCnx resume];
    if (gLogCategory_RPRemoteDisplayDiscovery <= 10 && (gLogCategory_RPRemoteDisplayDiscovery != -1 || _LogCategory_Initialize()))
    {
      [RPRemoteDisplayDiscovery _ensureXPCStarted];
    }
  }
}

uint64_t __45__RPRemoteDisplayDiscovery__ensureXPCStarted__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  v4 = *(a1 + 32);

  return [v4 _invalidated];
}

- (void)_interrupted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_RPRemoteDisplayDiscovery <= 50 && (gLogCategory_RPRemoteDisplayDiscovery != -1 || _LogCategory_Initialize()))
  {
    [RPRemoteDisplayDiscovery _interrupted];
  }

  [(RPRemoteDisplayDiscovery *)self _lostAllDevices];
  [(RPRemoteDisplayDiscovery *)self _lostAllPeople];
  if (self->_activateCalled)
  {
    [(RPRemoteDisplayDiscovery *)self _activateWithCompletion:0 reactivate:1];
  }

  interruptionHandler = self->_interruptionHandler;
  if (interruptionHandler)
  {
    v4 = *(interruptionHandler + 2);

    v4();
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__RPRemoteDisplayDiscovery_invalidate__block_invoke;
  block[3] = &unk_1E7C92CE8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __38__RPRemoteDisplayDiscovery_invalidate__block_invoke(uint64_t result)
{
  v5 = *(result + 32);
  if ((*(v5 + 32) & 1) == 0)
  {
    v8 = v1;
    v6 = result;
    *(v5 + 32) = 1;
    if (gLogCategory_RPRemoteDisplayDiscovery <= 30 && (gLogCategory_RPRemoteDisplayDiscovery != -1 || _LogCategory_Initialize()))
    {
      __38__RPRemoteDisplayDiscovery_invalidate__block_invoke_cold_1();
    }

    [*(*(v6 + 32) + 40) invalidate];
    v7 = *(v6 + 32);

    return [v7 _invalidated];
  }

  return result;
}

- (void)_invalidated
{
  if (self->_invalidateCalled && !self->_invalidateDone && !self->_xpcCnx)
  {
    invalidationHandler = self->_invalidationHandler;
    if (invalidationHandler)
    {
      invalidationHandler[2](invalidationHandler, a2);
    }

    dedicatedDeviceChangedHandler = self->_dedicatedDeviceChangedHandler;
    self->_dedicatedDeviceChangedHandler = 0;

    dedicatedDevice = self->_dedicatedDevice;
    self->_dedicatedDevice = 0;

    deviceFoundHandler = self->_deviceFoundHandler;
    self->_deviceFoundHandler = 0;

    deviceLostHandler = self->_deviceLostHandler;
    self->_deviceLostHandler = 0;

    deviceChangedHandler = self->_deviceChangedHandler;
    self->_deviceChangedHandler = 0;

    discoverySessionStateChangedHandler = self->_discoverySessionStateChangedHandler;
    self->_discoverySessionStateChangedHandler = 0;

    discoveredDevices = self->_discoveredDevices;
    self->_discoveredDevices = 0;

    discoveredPeople = self->_discoveredPeople;
    self->_discoveredPeople = 0;

    errorFlagsChangedHandler = self->_errorFlagsChangedHandler;
    self->_errorFlagsChangedHandler = 0;

    interruptionHandler = self->_interruptionHandler;
    self->_interruptionHandler = 0;

    v14 = self->_invalidationHandler;
    self->_invalidationHandler = 0;

    personDeclinedHandler = self->_personDeclinedHandler;
    self->_personDeclinedHandler = 0;

    personFoundHandler = self->_personFoundHandler;
    self->_personFoundHandler = 0;

    personLostHandler = self->_personLostHandler;
    self->_personLostHandler = 0;

    personChangedHandler = self->_personChangedHandler;
    self->_personChangedHandler = 0;

    personSelected = self->_personSelected;
    self->_personSelected = 0;

    peerDeviceIdentifier = self->_peerDeviceIdentifier;
    self->_peerDeviceIdentifier = 0;

    self->_invalidateDone = 1;
    if (gLogCategory_RPRemoteDisplayDiscovery <= 30 && (gLogCategory_RPRemoteDisplayDiscovery != -1 || _LogCategory_Initialize()))
    {
      [RPRemoteDisplayDiscovery _invalidated];
    }
  }
}

- (void)personCanceled:(id)a3
{
  v4 = a3;
  if (v4)
  {
    [(RPRemoteDisplayDiscovery *)self _ensureXPCStarted];
    xpcCnx = self->_xpcCnx;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __43__RPRemoteDisplayDiscovery_personCanceled___block_invoke;
    v8[3] = &unk_1E7C92D58;
    v6 = v4;
    v9 = v6;
    v7 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v8];
    [v7 remoteDisplayPersonCanceled:v6];
  }
}

void __43__RPRemoteDisplayDiscovery_personCanceled___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (gLogCategory_RPRemoteDisplayDiscovery <= 90)
  {
    v7 = v3;
    if (gLogCategory_RPRemoteDisplayDiscovery != -1 || (v5 = _LogCategory_Initialize(), v4 = v7, v5))
    {
      v6 = *(a1 + 32);
      LogPrintF();
      v4 = v7;
    }
  }
}

- (BOOL)_checkRSSIThresholdForDevice:(id)a3
{
  v4 = [a3 bleDevice];
  v5 = [v4 bleDevice];
  v6 = [v5 rssi];

  return !v6 || v6 >= self->_rssiThreshold;
}

- (NSArray)discoveredDevices
{
  v2 = self;
  objc_sync_enter(v2);
  discoveredDevices = v2->_discoveredDevices;
  if (discoveredDevices)
  {
    v4 = [(NSMutableDictionary *)discoveredDevices allValues];
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  objc_sync_exit(v2);

  return v4;
}

- (NSArray)discoveredPeople
{
  v2 = self;
  objc_sync_enter(v2);
  discoveredPeople = v2->_discoveredPeople;
  if (discoveredPeople)
  {
    v4 = [(NSMutableDictionary *)discoveredPeople allValues];
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  objc_sync_exit(v2);

  return v4;
}

void __61__RPRemoteDisplayDiscovery_setPersonSelected_forPairingType___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if (gLogCategory_RPRemoteDisplayDiscovery <= 90 && (gLogCategory_RPRemoteDisplayDiscovery != -1 || _LogCategory_Initialize()))
  {
    v6 = *(a1 + 32);
    LogPrintF();
  }

  v3 = *(a1 + 40);
  objc_sync_enter(v3);
  v4 = *(a1 + 40);
  v5 = *(v4 + 176);
  *(v4 + 176) = 0;

  objc_sync_exit(v3);
}

- (void)remoteDisplayFoundDevice:(id)a3
{
  v20 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v4 = self;
  objc_sync_enter(v4);
  discoveredDevices = v4->_discoveredDevices;
  if (!discoveredDevices)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v7 = v4->_discoveredDevices;
    v4->_discoveredDevices = v6;

    discoveredDevices = v4->_discoveredDevices;
  }

  v8 = [v20 identifier];
  [(NSMutableDictionary *)discoveredDevices setObject:v20 forKeyedSubscript:v8];

  v9 = [v20 accountAltDSID];
  if (!v9)
  {
    goto LABEL_14;
  }

  v10 = [(NSMutableDictionary *)v4->_discoveredPeople valueForKey:v9];
  v11 = v10;
  if (v10)
  {
    [v10 addDevice:v20];
    v12 = 0;
    goto LABEL_15;
  }

  v11 = [[RPRemoteDisplayPerson alloc] initPersonWithDevice:v20];
  if (!v11)
  {
    if (gLogCategory_RPRemoteDisplayDiscovery <= 90 && (gLogCategory_RPRemoteDisplayDiscovery != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

LABEL_14:
    v12 = 0;
    v11 = 0;
    goto LABEL_15;
  }

  discoveredPeople = v4->_discoveredPeople;
  if (!discoveredPeople)
  {
    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v15 = v4->_discoveredPeople;
    v4->_discoveredPeople = v14;

    discoveredPeople = v4->_discoveredPeople;
  }

  [(NSMutableDictionary *)discoveredPeople setObject:v11 forKeyedSubscript:v9];
  v12 = 1;
LABEL_15:

  objc_sync_exit(v4);
  if (v11)
  {
    if (v12)
    {
      personFoundHandler = v4->_personFoundHandler;
    }

    else
    {
      personFoundHandler = v4->_personChangedHandler;
    }

    v17 = _Block_copy(personFoundHandler);
    v18 = v17;
    if (v17)
    {
      (*(v17 + 2))(v17, v11);
    }
  }

  deviceFoundHandler = v4->_deviceFoundHandler;
  if (deviceFoundHandler)
  {
    deviceFoundHandler[2](deviceFoundHandler, v20);
  }
}

- (void)remoteDisplayLostDevice:(id)a3
{
  v17 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v4 = self;
  objc_sync_enter(v4);
  discoveredDevices = v4->_discoveredDevices;
  v6 = [v17 identifier];
  [(NSMutableDictionary *)discoveredDevices setObject:0 forKeyedSubscript:v6];

  v7 = [v17 accountAltDSID];
  if (v7)
  {
    v8 = [(NSMutableDictionary *)v4->_discoveredPeople valueForKey:v7];
    v9 = v8;
    if (v8 && ([v8 removeDevice:v17], objc_msgSend(v9, "discoveredDevices"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "count"), v10, !v11))
    {
      [(NSMutableDictionary *)v4->_discoveredPeople removeObjectForKey:v7];
      v12 = 1;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
    v9 = 0;
  }

  objc_sync_exit(v4);
  if (v9)
  {
    if (v12)
    {
      personLostHandler = v4->_personLostHandler;
    }

    else
    {
      personLostHandler = v4->_personChangedHandler;
    }

    v14 = _Block_copy(personLostHandler);
    v15 = v14;
    if (v14)
    {
      (*(v14 + 2))(v14, v9);
    }
  }

  deviceLostHandler = v4->_deviceLostHandler;
  if (deviceLostHandler)
  {
    deviceLostHandler[2](deviceLostHandler, v17);
  }
}

- (void)remoteDisplayUpdateErrorFlags:(unint64_t)a3
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_errorFlags != a3)
  {
    self->_errorFlags = a3;
    v5 = _Block_copy(self->_errorFlagsChangedHandler);
    if (v5)
    {
      v6 = v5;
      v5[2]();
      v5 = v6;
    }
  }
}

- (void)remoteDisplayDeviceSelected:(id)a3
{
  v9 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v4 = v9;
  if (v9)
  {
    v5 = [(RPRemoteDisplayPerson *)v9 accountAltDSID];

    if (v5)
    {
      v4 = [[RPRemoteDisplayPerson alloc] initPersonWithDevice:v9];
    }

    else
    {
      v4 = 0;
    }
  }

  personSelected = self->_personSelected;
  self->_personSelected = v4;

  v7 = _Block_copy(self->_deviceSelectedHandler);
  v8 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7, v9);
  }
}

- (void)remoteDisplayPersonDeclined
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v3 = _Block_copy(self->_personDeclinedHandler);
  if (v3)
  {
    v4 = v3;
    v3[2]();
    v3 = v4;
  }
}

- (void)_lostAllDevices
{
  v21 = *MEMORY[0x1E69E9840];
  if (gLogCategory_RPRemoteDisplayDiscovery <= 30 && (gLogCategory_RPRemoteDisplayDiscovery != -1 || _LogCategory_Initialize()))
  {
    [RPRemoteDisplayDiscovery _lostAllDevices];
  }

  deviceLostHandler = self->_deviceLostHandler;
  obj = self;
  objc_sync_enter(obj);
  discoveredDevices = obj->_discoveredDevices;
  if (deviceLostHandler)
  {
    v5 = [(NSMutableDictionary *)discoveredDevices allValues];
    [(NSMutableDictionary *)obj->_discoveredDevices removeAllObjects];
    v6 = obj->_discoveredDevices;
    obj->_discoveredDevices = 0;

    objc_sync_exit(obj);
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = *v17;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = self->_deviceLostHandler;
          if (v11)
          {
            v11[2](v11, *(*(&v16 + 1) + 8 * i));
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }

    v12 = *MEMORY[0x1E69E9840];
  }

  else
  {
    [(NSMutableDictionary *)discoveredDevices removeAllObjects];
    v13 = obj->_discoveredDevices;
    obj->_discoveredDevices = 0;

    objc_sync_exit(obj);
    v14 = *MEMORY[0x1E69E9840];
  }
}

- (void)_lostAllPeople
{
  v18 = *MEMORY[0x1E69E9840];
  if (gLogCategory_RPRemoteDisplayDiscovery <= 30 && (gLogCategory_RPRemoteDisplayDiscovery != -1 || _LogCategory_Initialize()))
  {
    [RPRemoteDisplayDiscovery _lostAllPeople];
  }

  v3 = [(RPRemoteDisplayDiscovery *)self discoveredPeople];
  v4 = self;
  objc_sync_enter(v4);
  [(NSMutableDictionary *)v4->_discoveredPeople removeAllObjects];
  discoveredPeople = v4->_discoveredPeople;
  v4->_discoveredPeople = 0;

  personSelected = v4->_personSelected;
  v4->_personSelected = 0;

  objc_sync_exit(v4);
  if (v4->_personLostHandler)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = v3;
    v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v13 + 1) + 8 * i);
          (*(v4->_personLostHandler + 2))(v4->_personLostHandler);
        }

        v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (BOOL)shouldReportDevice:(id)a3
{
  v4 = a3;
  v5 = (([v4 statusFlags] & 0x80000) != 0 || (objc_msgSend(v4, "statusFlags") & 0x2000000000) != 0 && (self->_discoveryFlags & 1) != 0 || (objc_msgSend(v4, "statusFlags") & 0x1000000000) != 0 && (self->_discoveryFlags & 2) != 0) && -[RPRemoteDisplayDiscovery _checkRSSIThresholdForDevice:](self, "_checkRSSIThresholdForDevice:", v4);

  return v5;
}

- (void)enterDiscoverySessionWithDevice:(id)a3 reason:(id)a4
{
  xpcCnx = self->_xpcCnx;
  v6 = a4;
  v7 = a3;
  v8 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:&__block_literal_global_14];
  [v8 remoteDisplayChangeDiscoverySessionStateForDevice:v7 reason:v6];
}

void __67__RPRemoteDisplayDiscovery_enterDiscoverySessionWithDevice_reason___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (gLogCategory_RPRemoteDisplayDiscovery <= 90)
  {
    v5 = v2;
    if (gLogCategory_RPRemoteDisplayDiscovery != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
    {
      __67__RPRemoteDisplayDiscovery_enterDiscoverySessionWithDevice_reason___block_invoke_cold_1();
      v3 = v5;
    }
  }
}

- (void)exitDiscoverySessionWithReason:(id)a3
{
  xpcCnx = self->_xpcCnx;
  v4 = a3;
  v5 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:&__block_literal_global_123];
  [v5 remoteDisplayChangeDiscoverySessionStateForDevice:0 reason:v4];
}

void __59__RPRemoteDisplayDiscovery_exitDiscoverySessionWithReason___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (gLogCategory_RPRemoteDisplayDiscovery <= 90)
  {
    v5 = v2;
    if (gLogCategory_RPRemoteDisplayDiscovery != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
    {
      __59__RPRemoteDisplayDiscovery_exitDiscoverySessionWithReason___block_invoke_cold_1();
      v3 = v5;
    }
  }
}

- (void)saveDedicatedDevice:(id)a3
{
  xpcCnx = self->_xpcCnx;
  v4 = a3;
  v5 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:&__block_literal_global_126];
  [v5 remoteDisplayChangeDedicatedDevice:v4];
}

void __48__RPRemoteDisplayDiscovery_saveDedicatedDevice___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (gLogCategory_RPRemoteDisplayDiscovery <= 90)
  {
    v5 = v2;
    if (gLogCategory_RPRemoteDisplayDiscovery != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
    {
      __48__RPRemoteDisplayDiscovery_saveDedicatedDevice___block_invoke_cold_1();
      v3 = v5;
    }
  }
}

- (void)remoteDisplayDedicatedDeviceChanged:(id)a3
{
  v8 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v5 = self;
  objc_sync_enter(v5);
  if (v5->_dedicatedDevice == v8)
  {
    objc_storeStrong(&v5->_dedicatedDevice, a3);
    objc_sync_exit(v5);
  }

  else
  {
    v6 = [(RPRemoteDisplayDevice *)v8 isEqualToDevice:?];
    objc_storeStrong(&v5->_dedicatedDevice, a3);
    objc_sync_exit(v5);

    if (!v6)
    {
      dedicatedDeviceChangedHandler = v5->_dedicatedDeviceChangedHandler;
      if (dedicatedDeviceChangedHandler)
      {
        dedicatedDeviceChangedHandler[2](dedicatedDeviceChangedHandler, v8);
      }
    }
  }
}

- (void)requestDedicatedDeviceConfirmationWithCompletion:(id)a3
{
  v4 = a3;
  [(RPRemoteDisplayDiscovery *)self _ensureXPCStarted];
  v5 = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxyWithErrorHandler:&__block_literal_global_129];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __77__RPRemoteDisplayDiscovery_requestDedicatedDeviceConfirmationWithCompletion___block_invoke_2;
  v7[3] = &unk_1E7C92DA8;
  v8 = v4;
  v6 = v4;
  [v5 remoteDisplayDedicatedDeviceConfirmationWithCompletion:v7];
}

void __77__RPRemoteDisplayDiscovery_requestDedicatedDeviceConfirmationWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (gLogCategory_RPRemoteDisplayDiscovery <= 90)
  {
    v5 = v2;
    if (gLogCategory_RPRemoteDisplayDiscovery != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
    {
      __77__RPRemoteDisplayDiscovery_requestDedicatedDeviceConfirmationWithCompletion___block_invoke_cold_1();
      v3 = v5;
    }
  }
}

void __77__RPRemoteDisplayDiscovery_requestDedicatedDeviceConfirmationWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (v3)
  {
    if (gLogCategory_RPRemoteDisplayDiscovery <= 90)
    {
      if (gLogCategory_RPRemoteDisplayDiscovery != -1 || (v4 = _LogCategory_Initialize(), v3 = v6, v4))
      {
        __77__RPRemoteDisplayDiscovery_requestDedicatedDeviceConfirmationWithCompletion___block_invoke_2_cold_1();
        v3 = v6;
      }
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v6);
    v3 = v6;
  }
}

@end