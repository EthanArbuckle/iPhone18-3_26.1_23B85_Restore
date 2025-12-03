@interface RPLegacyDeviceDiscovery
- (RPLegacyDeviceDiscovery)init;
- (id)description;
- (int)_bleStart;
- (int)_bonjourStart;
- (int)_mdStart;
- (int)_wifiStart;
- (void)_activateWithCompletion:(id)completion;
- (void)_bleHandleDeviceFound:(id)found;
- (void)_bleHandleDeviceLost:(id)lost;
- (void)_bonjourHandleAddOrUpdateDevice:(id)device;
- (void)_bonjourHandleEventType:(unsigned int)type info:(id)info;
- (void)_bonjourHandleRemoveDevice:(id)device;
- (void)_cleanup;
- (void)_foundDevice:(id)device;
- (void)_interrupted;
- (void)_invalidate;
- (void)_invalidated;
- (void)_lostAllDevices;
- (void)_lostDeviceByIdentifier:(id)identifier;
- (void)_mdHandleDeviceChanged:(id)changed changes:(unsigned int)changes;
- (void)_mdHandleDeviceFound:(id)found;
- (void)_mdHandleDeviceLost:(id)lost;
- (void)_wifiHandleDeviceFound:(id)found;
- (void)_wifiHandleDeviceLost:(id)lost;
- (void)activateWithCompletion:(id)completion;
- (void)dealloc;
- (void)invalidate;
- (void)setBLEPayloadFilterData:(id)data mask:(id)mask;
@end

@implementation RPLegacyDeviceDiscovery

- (RPLegacyDeviceDiscovery)init
{
  v5.receiver = self;
  v5.super_class = RPLegacyDeviceDiscovery;
  v2 = [(RPLegacyDeviceDiscovery *)&v5 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x1E69E96A0]);
    v3->_wifiScanFlags = 3;
  }

  return v3;
}

- (void)dealloc
{
  if (self->_activateCalled && !self->_invalidateCalled)
  {
    v3 = [RPLegacyDeviceDiscovery dealloc];
    [(RPLegacyDeviceDiscovery *)v3 _cleanup];
  }

  else
  {
    [(RPLegacyDeviceDiscovery *)self _cleanup];
    v5.receiver = self;
    v5.super_class = RPLegacyDeviceDiscovery;
    [(RPLegacyDeviceDiscovery *)&v5 dealloc];
  }
}

- (void)_cleanup
{
  deviceFoundHandler = self->_deviceFoundHandler;
  self->_deviceFoundHandler = 0;

  deviceLostHandler = self->_deviceLostHandler;
  self->_deviceLostHandler = 0;

  deviceChangedHandler = self->_deviceChangedHandler;
  self->_deviceChangedHandler = 0;

  interruptionHandler = self->_interruptionHandler;
  self->_interruptionHandler = 0;

  invalidationHandler = self->_invalidationHandler;
  self->_invalidationHandler = 0;

  scanStateChangedHandler = self->_scanStateChangedHandler;
  self->_scanStateChangedHandler = 0;

  timeoutHandler = self->_timeoutHandler;
  self->_timeoutHandler = 0;
}

- (id)description
{
  NSAppendPrintF();

  return 0;
}

- (void)setBLEPayloadFilterData:(id)data mask:(id)mask
{
  dataCopy = data;
  maskCopy = mask;
  if (gLogCategory_RPLegacySupport <= 30 && (gLogCategory_RPLegacySupport != -1 || _LogCategory_Initialize()))
  {
    v15 = dataCopy;
    v16 = maskCopy;
    LogPrintF();
  }

  v8 = [dataCopy length];
  if (v8 == [maskCopy length])
  {
    v9 = [dataCopy copy];
    v10 = [maskCopy copy];
    dispatchQueue = self->_dispatchQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__RPLegacyDeviceDiscovery_setBLEPayloadFilterData_mask___block_invoke;
    block[3] = &unk_1E7C93BC0;
    block[4] = self;
    v18 = v9;
    v19 = v10;
    v12 = v10;
    v13 = v9;
    dispatch_async(dispatchQueue, block);
  }

  else
  {
    v14 = [RPLegacyDeviceDiscovery setBLEPayloadFilterData:dataCopy mask:maskCopy];
    __56__RPLegacyDeviceDiscovery_setBLEPayloadFilterData_mask___block_invoke(v14);
  }
}

void __56__RPLegacyDeviceDiscovery_setBLEPayloadFilterData_mask___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 16), *(a1 + 40));
  v2 = *(a1 + 48);
  v3 = (*(a1 + 32) + 24);

  objc_storeStrong(v3, v2);
}

- (void)activateWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__RPLegacyDeviceDiscovery_activateWithCompletion___block_invoke;
  v7[3] = &unk_1E7C92E20;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_activateWithCompletion:(id)completion
{
  completionCopy = completion;
  if (gLogCategory_RPLegacySupport <= 30 && (gLogCategory_RPLegacySupport != -1 || _LogCategory_Initialize()))
  {
    [RPLegacyDeviceDiscovery _activateWithCompletion:];
  }

  if (!self->_invalidateCalled && !self->_activateCalled)
  {
    p_serviceType = &self->_serviceType;
    serviceType = self->_serviceType;
    if (serviceType)
    {
      self->_activateCalled = 1;
      self->_verifyDevices = [(NSString *)serviceType isEqual:@"RPLegacyServiceTypeSystem"];
      if (*[(NSString *)self->_serviceType UTF8String]== 95)
      {
        _bonjourStart = [(RPLegacyDeviceDiscovery *)self _bonjourStart];
        goto LABEL_14;
      }

      v7 = *p_serviceType;
      if (([(NSString *)v7 isEqual:@"RPLegacyServiceTypeNearbyAction"]& 1) != 0 || ([(NSString *)v7 isEqual:@"RPLegacyServiceTypeNearbyInfo"]& 1) != 0 || [(NSString *)v7 isEqual:@"RPLegacyServiceTypeProximityPairing"])
      {

LABEL_13:
        _bonjourStart = [(RPLegacyDeviceDiscovery *)self _bleStart];
        goto LABEL_14;
      }

      v10 = [(NSString *)v7 isEqual:@"RPLegacyServiceTypeSystem"];

      if (v10)
      {
        goto LABEL_13;
      }

      if ([(NSString *)*p_serviceType isEqual:@"RPLegacyServiceTypeMobileDevice"])
      {
        _bonjourStart = [(RPLegacyDeviceDiscovery *)self _mdStart];
        goto LABEL_14;
      }

      if (([(NSString *)*p_serviceType isEqual:@"RPLegacyServiceTypeWACAirPlay"]& 1) != 0 || [(NSString *)*p_serviceType isEqual:@"RPLegacyServiceTypeWACGeneric"])
      {
        _bonjourStart = [(RPLegacyDeviceDiscovery *)self _wifiStart];
LABEL_14:
        if (!_bonjourStart)
        {
          goto LABEL_18;
        }

        goto LABEL_15;
      }

      if (gLogCategory_RPLegacySupport > 90)
      {
        goto LABEL_18;
      }

      if (gLogCategory_RPLegacySupport != -1 || _LogCategory_Initialize())
      {
        [RPLegacyDeviceDiscovery _activateWithCompletion:?];
      }
    }
  }

LABEL_15:
  if (gLogCategory_RPLegacySupport <= 60 && (gLogCategory_RPLegacySupport != -1 || _LogCategory_Initialize()))
  {
    [RPLegacyDeviceDiscovery _activateWithCompletion:];
  }

LABEL_18:
  v8 = completionCopy;
  if (completionCopy)
  {
    v9 = RPErrorF();
    (*(completionCopy + 2))(completionCopy, v9);

    v8 = completionCopy;
  }
}

- (void)_interrupted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  interruptionHandler = self->_interruptionHandler;
  if (interruptionHandler)
  {
    interruptionHandler[2]();
  }

  [(RPLegacyDeviceDiscovery *)self _lostAllDevices];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__RPLegacyDeviceDiscovery_invalidate__block_invoke;
  block[3] = &unk_1E7C92CE8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateCalled)
  {
    self->_invalidateCalled = 1;
    if (gLogCategory_RPLegacySupport <= 30 && (gLogCategory_RPLegacySupport != -1 || _LogCategory_Initialize()))
    {
      [RPLegacyDeviceDiscovery _invalidate];
    }

    [(SFDeviceDiscovery *)self->_bleDiscovery invalidate];
    if (self->_bonjourBrowser)
    {
      BonjourBrowser_Stop();
    }

    [(CUMobileDeviceDiscovery *)self->_mdDiscovery invalidate];
    [(CUWiFiScanner *)self->_wifiScanner invalidate];
    [(RPLegacyDeviceDiscovery *)self _lostAllDevices];

    [(RPLegacyDeviceDiscovery *)self _invalidated];
  }
}

- (void)_invalidated
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateDone)
  {
    if (!self->_invalidateCalled && gLogCategory_RPLegacySupport <= 50 && (gLogCategory_RPLegacySupport != -1 || _LogCategory_Initialize()))
    {
      [RPLegacyDeviceDiscovery _invalidated];
    }

    if (!self->_bleDiscovery && !self->_bonjourBrowser && !self->_mdDiscovery && !self->_wifiScanner)
    {
      invalidationHandler = self->_invalidationHandler;
      if (invalidationHandler)
      {
        invalidationHandler[2]();
      }

      [(RPLegacyDeviceDiscovery *)self _cleanup];
      self->_invalidateDone = 1;
      if (gLogCategory_RPLegacySupport <= 10 && (gLogCategory_RPLegacySupport != -1 || _LogCategory_Initialize()))
      {
        [RPLegacyDeviceDiscovery _invalidated];
      }
    }
  }
}

- (void)_foundDevice:(id)device
{
  deviceCopy = device;
  if (([deviceCopy reported] & 1) == 0)
  {
    if (!self->_verifyDevices || (v4 = [deviceCopy state], v4 == 4) || v4 == 2)
    {
      [deviceCopy setReported:1];
      deviceFoundHandler = self->_deviceFoundHandler;
      if (deviceFoundHandler)
      {
        device = [deviceCopy device];
        deviceFoundHandler[2](deviceFoundHandler, device);
      }
    }

    else
    {
      [deviceCopy pairVerify];
    }
  }
}

- (void)_lostAllDevices
{
  [(NSMutableDictionary *)self->_devices enumerateKeysAndObjectsUsingBlock:&__block_literal_global_11];
  [(NSMutableDictionary *)self->_devices removeAllObjects];
  devices = self->_devices;
  self->_devices = 0;
}

- (int)_bleStart
{
  [(SFDeviceDiscovery *)self->_bleDiscovery invalidate];
  v3 = objc_alloc_init(getSFDeviceDiscoveryClass[0]());
  bleDiscovery = self->_bleDiscovery;
  self->_bleDiscovery = v3;

  [(SFDeviceDiscovery *)self->_bleDiscovery setDeviceFilter:self->_deviceFilter];
  [(SFDeviceDiscovery *)self->_bleDiscovery setDispatchQueue:self->_dispatchQueue];
  [(SFDeviceDiscovery *)self->_bleDiscovery setRssiThreshold:self->_rssiThreshold];
  [(SFDeviceDiscovery *)self->_bleDiscovery setScanCache:self->_scanCache];
  [(SFDeviceDiscovery *)self->_bleDiscovery setTargetUserSession:self->_targetUserSession];
  [(SFDeviceDiscovery *)self->_bleDiscovery setTimeout:self->_timeout];
  v5 = self->_changeFlags & 1 | (8 * ((self->_changeFlags >> 1) & 1)) | (self->_changeFlags >> 1) & 2 | (self->_changeFlags >> 3) & 4;
  if (self->_changeFlags == -1)
  {
    v5 = -1;
  }

  [(SFDeviceDiscovery *)self->_bleDiscovery setChangeFlags:v5 | (self->_deviceActionType != 0)];
  if (self->_deviceActionType || (p_serviceType = &self->_serviceType, ([(NSString *)self->_serviceType isEqual:@"RPLegacyServiceTypeNearbyAction"]& 1) != 0))
  {
    v7 = 16;
    goto LABEL_6;
  }

  if (([(NSString *)*p_serviceType isEqual:@"RPLegacyServiceTypeNearbyInfo"]& 1) != 0)
  {
    goto LABEL_17;
  }

  if (([(NSString *)*p_serviceType isEqual:@"RPLegacyServiceTypeProximityPairing"]& 1) != 0)
  {
    v7 = 2;
LABEL_6:
    [(SFDeviceDiscovery *)self->_bleDiscovery setDiscoveryFlags:v7];
    scanRate = self->_scanRate;
    if (scanRate > 39)
    {
      if (scanRate == 40)
      {
        scanRate = 40;
        goto LABEL_14;
      }

      if (scanRate == 50)
      {
        scanRate = 50;
        goto LABEL_14;
      }
    }

    else
    {
      if (scanRate == 10)
      {
LABEL_14:
        [(SFDeviceDiscovery *)self->_bleDiscovery setScanRate:scanRate];
        goto LABEL_15;
      }

      if (scanRate == 20)
      {
        scanRate = 20;
        goto LABEL_14;
      }
    }

LABEL_15:
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __36__RPLegacyDeviceDiscovery__bleStart__block_invoke;
    v15[3] = &unk_1E7C94948;
    v15[4] = self;
    [(SFDeviceDiscovery *)self->_bleDiscovery setDeviceFoundHandler:v15];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __36__RPLegacyDeviceDiscovery__bleStart__block_invoke_2;
    v14[3] = &unk_1E7C94948;
    v14[4] = self;
    [(SFDeviceDiscovery *)self->_bleDiscovery setDeviceLostHandler:v14];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __36__RPLegacyDeviceDiscovery__bleStart__block_invoke_3;
    v13[3] = &unk_1E7C94970;
    v13[4] = self;
    [(SFDeviceDiscovery *)self->_bleDiscovery setDeviceChangedHandler:v13];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __36__RPLegacyDeviceDiscovery__bleStart__block_invoke_4;
    v12[3] = &unk_1E7C92CE8;
    v12[4] = self;
    [(SFDeviceDiscovery *)self->_bleDiscovery setInterruptionHandler:v12];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __36__RPLegacyDeviceDiscovery__bleStart__block_invoke_5;
    v11[3] = &unk_1E7C92CE8;
    v11[4] = self;
    [(SFDeviceDiscovery *)self->_bleDiscovery setInvalidationHandler:v11];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __36__RPLegacyDeviceDiscovery__bleStart__block_invoke_6;
    v10[3] = &unk_1E7C92CE8;
    v10[4] = self;
    [(SFDeviceDiscovery *)self->_bleDiscovery setTimeoutHandler:v10];
    [(SFDeviceDiscovery *)self->_bleDiscovery activateWithCompletion:&__block_literal_global_75];
    return 0;
  }

  if (([(NSString *)*p_serviceType isEqual:@"RPLegacyServiceTypeSystem"]& 1) != 0)
  {
LABEL_17:
    v7 = 1;
    goto LABEL_6;
  }

  if (gLogCategory_RPLegacySupport <= 60 && (gLogCategory_RPLegacySupport != -1 || _LogCategory_Initialize()))
  {
    [(RPLegacyDeviceDiscovery *)&self->_serviceType _bleStart];
  }

  return -6762;
}

uint64_t __36__RPLegacyDeviceDiscovery__bleStart__block_invoke_4(uint64_t a1)
{
  if (gLogCategory_RPLegacySupport <= 50 && (gLogCategory_RPLegacySupport != -1 || _LogCategory_Initialize()))
  {
    __36__RPLegacyDeviceDiscovery__bleStart__block_invoke_4_cold_1();
  }

  v2 = *(a1 + 32);

  return [v2 _interrupted];
}

uint64_t __36__RPLegacyDeviceDiscovery__bleStart__block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 48);
  *(v2 + 48) = 0;

  v4 = *(a1 + 32);

  return [v4 _invalidated];
}

uint64_t __36__RPLegacyDeviceDiscovery__bleStart__block_invoke_6(uint64_t a1)
{
  if (gLogCategory_RPLegacySupport <= 30 && (gLogCategory_RPLegacySupport != -1 || _LogCategory_Initialize()))
  {
    __36__RPLegacyDeviceDiscovery__bleStart__block_invoke_6_cold_1();
  }

  result = *(*(a1 + 32) + 200);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __36__RPLegacyDeviceDiscovery__bleStart__block_invoke_7(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    if (gLogCategory_RPLegacySupport <= 60)
    {
      v6 = v2;
      if (gLogCategory_RPLegacySupport != -1 || (v4 = _LogCategory_Initialize(), v3 = v6, v4))
      {
        __36__RPLegacyDeviceDiscovery__bleStart__block_invoke_7_cold_1();
LABEL_13:
        v3 = v6;
      }
    }
  }

  else if (gLogCategory_RPLegacySupport <= 30)
  {
    v6 = 0;
    if (gLogCategory_RPLegacySupport != -1 || (v5 = _LogCategory_Initialize(), v3 = 0, v5))
    {
      __36__RPLegacyDeviceDiscovery__bleStart__block_invoke_7_cold_2();
      goto LABEL_13;
    }
  }
}

- (void)_bleHandleDeviceLost:(id)lost
{
  lostCopy = lost;
  identifier = [lostCopy identifier];
  if (identifier)
  {
    [(RPLegacyDeviceDiscovery *)self _lostDeviceByIdentifier:identifier];
  }

  else
  {
    [RPLegacyDeviceDiscovery _bleHandleDeviceLost:];
  }
}

- (int)_bonjourStart
{
  p_bonjourBrowser = &self->_bonjourBrowser;
  if (self->_bonjourBrowser)
  {
    BonjourBrowser_Stop();
    CFRelease(*p_bonjourBrowser);
    *p_bonjourBrowser = 0;
  }

  v4 = BonjourBrowser_Create();
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    bonjourBrowser = self->_bonjourBrowser;
    dispatchQueue = self->_dispatchQueue;
    BonjourBrowser_SetDispatchQueue();
    v8 = self->_bonjourBrowser;
    BonjourBrowser_SetEventHandlerBlock();
    v9 = self->_bonjourBrowser;
    [(NSString *)self->_serviceType UTF8String];
    v5 = BonjourBrowser_Start();
    if (!v5)
    {
      return v5;
    }
  }

  if (gLogCategory_RPLegacySupport <= 60 && (gLogCategory_RPLegacySupport != -1 || _LogCategory_Initialize()))
  {
    [RPLegacyDeviceDiscovery _bonjourStart];
  }

  if (*p_bonjourBrowser)
  {
    BonjourBrowser_Stop();
    CFRelease(*p_bonjourBrowser);
    *p_bonjourBrowser = 0;
  }

  return v5;
}

- (void)_bonjourHandleEventType:(unsigned int)type info:(id)info
{
  infoCopy = info;
  v7 = infoCopy;
  if (type > 2)
  {
    if (type == 3)
    {
      v8 = infoCopy;
      if (self->_bonjourBrowser)
      {
        BonjourBrowser_Stop();
        CFRelease(self->_bonjourBrowser);
        self->_bonjourBrowser = 0;
      }

      [(RPLegacyDeviceDiscovery *)self _invalidated];
    }

    else
    {
      if (type != 4)
      {
        goto LABEL_16;
      }

      v8 = infoCopy;
      if (gLogCategory_RPLegacySupport <= 30 && (gLogCategory_RPLegacySupport != -1 || _LogCategory_Initialize()))
      {
        [RPLegacyDeviceDiscovery _bonjourHandleEventType:info:];
      }

      [(RPLegacyDeviceDiscovery *)self _interrupted];
    }
  }

  else if (type == 1)
  {
    v8 = infoCopy;
    [(RPLegacyDeviceDiscovery *)self _bonjourHandleAddOrUpdateDevice:infoCopy];
  }

  else
  {
    if (type != 2)
    {
      goto LABEL_16;
    }

    v8 = infoCopy;
    [(RPLegacyDeviceDiscovery *)self _bonjourHandleRemoveDevice:infoCopy];
  }

  v7 = v8;
LABEL_16:
}

- (void)_bonjourHandleAddOrUpdateDevice:(id)device
{
  v15[2] = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  v15[0] = 0;
  v15[1] = 0;
  BonjourDevice_GetDeviceID();
  v5 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v15];
  v6 = [(NSMutableDictionary *)self->_devices objectForKeyedSubscript:v5];
  if (v6)
  {
    v7 = v6;
    device = [(RPDeviceContext *)v6 device];
    v9 = [(RPDevice *)device updateWithBonjourDevice:deviceCopy];
    if (gLogCategory_RPLegacySupport <= 30 && (gLogCategory_RPLegacySupport != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    deviceChangedHandler = self->_deviceChangedHandler;
    if (deviceChangedHandler)
    {
      deviceChangedHandler[2](deviceChangedHandler, device, v9);
    }
  }

  else
  {
    device = objc_alloc_init(RPDevice);
    [(RPDevice *)device setIdentifierUUID:v5];
    v7 = objc_alloc_init(RPDeviceContext);
    [(RPDeviceContext *)v7 setDevice:device];
    [(RPDeviceContext *)v7 setDiscovery:self];
    devices = self->_devices;
    if (!devices)
    {
      v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v12 = self->_devices;
      self->_devices = v11;

      devices = self->_devices;
    }

    [(NSMutableDictionary *)devices setObject:v7 forKeyedSubscript:v5];
    [(RPDevice *)device updateWithBonjourDevice:deviceCopy];
    if (gLogCategory_RPLegacySupport <= 30 && (gLogCategory_RPLegacySupport != -1 || _LogCategory_Initialize()))
    {
      [RPLegacyDeviceDiscovery _bonjourHandleAddOrUpdateDevice:];
    }

    [(RPLegacyDeviceDiscovery *)self _foundDevice:v7];
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_bonjourHandleRemoveDevice:(id)device
{
  v7[2] = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  v7[0] = 0;
  v7[1] = 0;
  BonjourDevice_GetDeviceID();
  v5 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v7];
  [(RPLegacyDeviceDiscovery *)self _lostDeviceByIdentifier:v5];

  v6 = *MEMORY[0x1E69E9840];
}

- (int)_mdStart
{
  [(CUMobileDeviceDiscovery *)self->_mdDiscovery invalidate];
  v3 = objc_alloc_init(MEMORY[0x1E69994D0]);
  mdDiscovery = self->_mdDiscovery;
  self->_mdDiscovery = v3;

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __35__RPLegacyDeviceDiscovery__mdStart__block_invoke;
  v9[3] = &unk_1E7C949E0;
  v9[4] = self;
  [(CUMobileDeviceDiscovery *)self->_mdDiscovery setDeviceFoundHandler:v9];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __35__RPLegacyDeviceDiscovery__mdStart__block_invoke_2;
  v8[3] = &unk_1E7C949E0;
  v8[4] = self;
  [(CUMobileDeviceDiscovery *)self->_mdDiscovery setDeviceLostHandler:v8];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35__RPLegacyDeviceDiscovery__mdStart__block_invoke_3;
  v7[3] = &unk_1E7C94A08;
  v7[4] = self;
  [(CUMobileDeviceDiscovery *)self->_mdDiscovery setDeviceChangedHandler:v7];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __35__RPLegacyDeviceDiscovery__mdStart__block_invoke_4;
  v6[3] = &unk_1E7C92CE8;
  v6[4] = self;
  [(CUMobileDeviceDiscovery *)self->_mdDiscovery setInvalidationHandler:v6];
  [(CUMobileDeviceDiscovery *)self->_mdDiscovery activate];
  return 0;
}

uint64_t __35__RPLegacyDeviceDiscovery__mdStart__block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 64);
  *(v2 + 64) = 0;

  v4 = *(a1 + 32);

  return [v4 _invalidated];
}

- (void)_mdHandleDeviceLost:(id)lost
{
  lostCopy = lost;
  identifier = [lostCopy identifier];
  if (identifier)
  {
    [(RPLegacyDeviceDiscovery *)self _lostDeviceByIdentifier:identifier];
  }

  else
  {
    [RPLegacyDeviceDiscovery _mdHandleDeviceLost:];
  }
}

- (void)_mdHandleDeviceChanged:(id)changed changes:(unsigned int)changes
{
  changedCopy = changed;
  identifier = [changedCopy identifier];
  if (!identifier)
  {
    if (gLogCategory_RPLegacySupport <= 90 && (gLogCategory_RPLegacySupport != -1 || _LogCategory_Initialize()))
    {
      [RPLegacyDeviceDiscovery _mdHandleDeviceChanged:changes:];
    }

    goto LABEL_15;
  }

  v6 = [(NSMutableDictionary *)self->_devices objectForKeyedSubscript:identifier];
  if (!v6)
  {
    if (gLogCategory_RPLegacySupport <= 90 && (gLogCategory_RPLegacySupport != -1 || _LogCategory_Initialize()))
    {
      [RPLegacyDeviceDiscovery _mdHandleDeviceChanged:changes:];
    }

LABEL_15:
    v7 = 0;
    device = 0;
    goto LABEL_5;
  }

  v7 = v6;
  device = [v6 device];
  v9 = [device updateWithMobileDevice:changedCopy];
  deviceChangedHandler = self->_deviceChangedHandler;
  if (deviceChangedHandler)
  {
    v11 = v9;
    device2 = [v7 device];
    deviceChangedHandler[2](deviceChangedHandler, device2, v11);
  }

LABEL_5:
}

- (int)_wifiStart
{
  [(CUWiFiScanner *)self->_wifiScanner invalidate];
  v3 = objc_alloc_init(MEMORY[0x1E6999560]);
  wifiScanner = self->_wifiScanner;
  self->_wifiScanner = v3;

  [(CUWiFiScanner *)self->_wifiScanner setDispatchQueue:self->_dispatchQueue];
  [(CUWiFiScanner *)self->_wifiScanner setScanFlags:self->_wifiScanFlags];
  [(CUWiFiScanner *)self->_wifiScanner setSsid:self->_wifiSSID];
  self->_wifiAirPlayWAC = [(NSString *)self->_serviceType isEqual:@"RPLegacyServiceTypeWACAirPlay"];
  changeFlags = self->_changeFlags;
  v6 = (changeFlags >> 4) & 6;
  if ((changeFlags & 0xA) != 0)
  {
    ++v6;
  }

  if (changeFlags == -1)
  {
    v7 = 0xFFFFFFFFLL;
  }

  else
  {
    v7 = v6;
  }

  [(CUWiFiScanner *)self->_wifiScanner setChangeFlags:v7];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __37__RPLegacyDeviceDiscovery__wifiStart__block_invoke;
  v12[3] = &unk_1E7C94A30;
  v12[4] = self;
  [(CUWiFiScanner *)self->_wifiScanner setDeviceFoundHandler:v12];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __37__RPLegacyDeviceDiscovery__wifiStart__block_invoke_2;
  v11[3] = &unk_1E7C94A30;
  v11[4] = self;
  [(CUWiFiScanner *)self->_wifiScanner setDeviceLostHandler:v11];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __37__RPLegacyDeviceDiscovery__wifiStart__block_invoke_3;
  v10[3] = &unk_1E7C94A58;
  v10[4] = self;
  [(CUWiFiScanner *)self->_wifiScanner setDeviceChangedHandler:v10];
  [(CUWiFiScanner *)self->_wifiScanner setErrorHandler:&__block_literal_global_103];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __37__RPLegacyDeviceDiscovery__wifiStart__block_invoke_5;
  v9[3] = &unk_1E7C92CE8;
  v9[4] = self;
  [(CUWiFiScanner *)self->_wifiScanner setInvalidationHandler:v9];
  [(CUWiFiScanner *)self->_wifiScanner activate];
  return 0;
}

void __37__RPLegacyDeviceDiscovery__wifiStart__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (gLogCategory_RPLegacySupport <= 60)
  {
    v5 = v2;
    if (gLogCategory_RPLegacySupport != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
    {
      __37__RPLegacyDeviceDiscovery__wifiStart__block_invoke_4_cold_1();
      v3 = v5;
    }
  }
}

uint64_t __37__RPLegacyDeviceDiscovery__wifiStart__block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 80);
  *(v2 + 80) = 0;

  v4 = *(a1 + 32);

  return [v4 _invalidated];
}

- (void)_wifiHandleDeviceFound:(id)found
{
  foundCopy = found;
  identifier = [foundCopy identifier];
  if (identifier)
  {
    v5 = [(NSMutableDictionary *)self->_devices objectForKeyedSubscript:identifier];
    deviceIEDeviceID = [foundCopy deviceIEDeviceID];
    if (deviceIEDeviceID)
    {
      v7 = deviceIEDeviceID;
      if (self->_wifiAirPlayWAC)
      {
        deviceIEFlags = [foundCopy deviceIEFlags];

        if ((deviceIEFlags & 0x80000000) == 0)
        {
          goto LABEL_5;
        }
      }

      else
      {
      }

      if (v5)
      {
        device = [(RPDeviceContext *)v5 device];
      }

      else
      {
        device = objc_alloc_init(RPDevice);
        [(RPDevice *)device setIdentifierUUID:identifier];
        v5 = objc_alloc_init(RPDeviceContext);
        [(RPDeviceContext *)v5 setDevice:device];
        [(RPDeviceContext *)v5 setDiscovery:self];
        devices = self->_devices;
        if (!devices)
        {
          v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
          v12 = self->_devices;
          self->_devices = v11;

          devices = self->_devices;
        }

        [(NSMutableDictionary *)devices setObject:v5 forKeyedSubscript:identifier];
      }

      [(RPDevice *)device updateWithWiFiDevice:foundCopy changes:0xFFFFFFFFLL];
      [(RPLegacyDeviceDiscovery *)self _foundDevice:v5];

LABEL_14:
      goto LABEL_15;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_15;
    }

    [(RPLegacyDeviceDiscovery *)self _wifiHandleDeviceLost:foundCopy];
    goto LABEL_14;
  }

  [RPLegacyDeviceDiscovery _wifiHandleDeviceFound:];
LABEL_15:
}

- (void)_wifiHandleDeviceLost:(id)lost
{
  lostCopy = lost;
  identifier = [lostCopy identifier];
  if (identifier)
  {
    [(RPLegacyDeviceDiscovery *)self _lostDeviceByIdentifier:identifier];
  }

  else
  {
    [RPLegacyDeviceDiscovery _wifiHandleDeviceLost:];
  }
}

- (void)_lostDeviceByIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [(NSMutableDictionary *)self->_devices objectForKeyedSubscript:?];
  if (v4)
  {
    [(NSMutableDictionary *)self->_devices removeObjectForKey:identifierCopy];
    if ([v4 reported])
    {
      deviceLostHandler = self->_deviceLostHandler;
      if (deviceLostHandler)
      {
        device = [v4 device];
        deviceLostHandler[2](deviceLostHandler, device);
      }
    }

    [v4 invalidate];
  }
}

- (void)_bleHandleDeviceFound:(id)found
{
  foundCopy = found;
  identifier = [foundCopy identifier];
  if (!identifier)
  {
    if (gLogCategory_RPLegacySupport <= 90 && (gLogCategory_RPLegacySupport != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    goto LABEL_16;
  }

  if (self->_deviceActionType && [foundCopy deviceActionType] != self->_deviceActionType)
  {
LABEL_16:
    v7 = 0;
    goto LABEL_8;
  }

  v5 = [(NSMutableDictionary *)self->_devices objectForKeyedSubscript:identifier];
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v6 = objc_alloc_init(RPDevice);
    [(RPDevice *)v6 setIdentifierUUID:identifier];
    [OUTLINED_FUNCTION_4() updateWithSFDevice:? changes:?];
    v7 = objc_alloc_init(RPDeviceContext);
    [(RPDeviceContext *)v7 setDevice:v6];
    [(RPDeviceContext *)v7 setDiscovery:self];
    devices = self->_devices;
    if (!devices)
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v10 = self->_devices;
      self->_devices = v9;

      devices = self->_devices;
    }

    [(NSMutableDictionary *)devices setObject:v7 forKeyedSubscript:identifier];
    [(RPLegacyDeviceDiscovery *)self _foundDevice:v7];
  }

LABEL_8:
}

- (void)_mdHandleDeviceFound:(id)found
{
  foundCopy = found;
  identifier = [foundCopy identifier];
  if (identifier)
  {
    v5 = [(NSMutableDictionary *)self->_devices objectForKeyedSubscript:identifier];
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v6 = objc_alloc_init(RPDevice);
      [(RPDevice *)v6 setIdentifierUUID:identifier];
      [OUTLINED_FUNCTION_4() updateWithMobileDevice:?];
      v7 = objc_alloc_init(RPDeviceContext);
      [(RPDeviceContext *)v7 setDevice:v6];
      [(RPDeviceContext *)v7 setDiscovery:self];
      devices = self->_devices;
      if (!devices)
      {
        v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v10 = self->_devices;
        self->_devices = v9;

        devices = self->_devices;
      }

      [(NSMutableDictionary *)devices setObject:v7 forKeyedSubscript:identifier];
      [(RPLegacyDeviceDiscovery *)self _foundDevice:v7];
    }
  }

  else
  {
    if (gLogCategory_RPLegacySupport <= 90 && (gLogCategory_RPLegacySupport != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v7 = 0;
  }
}

- (uint64_t)setBLEPayloadFilterData:(void *)a1 mask:(void *)a2 .cold.1(void *a1, void *a2)
{
  [a1 length];
  [a2 length];
  v3 = FatalErrorF();
  return [RPLegacyDeviceDiscovery _activateWithCompletion:v3];
}

- (void)_bleHandleDeviceLost:.cold.1()
{
  if (gLogCategory_RPLegacySupport <= 90)
  {
    OUTLINED_FUNCTION_3_1();
    if (!v0 || _LogCategory_Initialize())
    {
      LogPrintF();
    }
  }
}

- (void)_bonjourHandleRemoveDevice:.cold.1()
{
  if (gLogCategory_RPLegacySupport <= 90)
  {
    OUTLINED_FUNCTION_3_1();
    if (!v0 || _LogCategory_Initialize())
    {
      LogPrintF();
    }
  }
}

- (void)_mdHandleDeviceLost:.cold.1()
{
  if (gLogCategory_RPLegacySupport <= 90)
  {
    OUTLINED_FUNCTION_3_1();
    if (!v0 || _LogCategory_Initialize())
    {
      LogPrintF();
    }
  }
}

- (void)_wifiHandleDeviceFound:.cold.1()
{
  if (gLogCategory_RPLegacySupport <= 90)
  {
    OUTLINED_FUNCTION_3_1();
    if (!v0 || _LogCategory_Initialize())
    {
      LogPrintF();
    }
  }
}

- (void)_wifiHandleDeviceLost:.cold.1()
{
  if (gLogCategory_RPLegacySupport <= 90)
  {
    OUTLINED_FUNCTION_3_1();
    if (!v0 || _LogCategory_Initialize())
    {
      LogPrintF();
    }
  }
}

@end