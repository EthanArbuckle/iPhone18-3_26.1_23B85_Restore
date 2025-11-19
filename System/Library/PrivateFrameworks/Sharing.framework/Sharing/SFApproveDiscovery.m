@interface SFApproveDiscovery
- (NSArray)devices;
- (SFApproveDiscovery)init;
- (void)_activateWithCompletion:(id)a3;
- (void)_activatedWithError:(id)a3;
- (void)_discoveryDeviceChanged:(id)a3;
- (void)_discoveryEnsureStarted;
- (void)_discoveryEnsureStopped;
- (void)_discoveryFoundDevice:(id)a3;
- (void)_discoveryLostDevice:(id)a3;
- (void)_invalidated;
- (void)activateWithCompletion:(id)a3;
- (void)invalidate;
@end

@implementation SFApproveDiscovery

- (SFApproveDiscovery)init
{
  v7.receiver = self;
  v7.super_class = SFApproveDiscovery;
  v2 = [(SFApproveDiscovery *)&v7 init];
  if (v2)
  {
    v3 = objc_opt_new();
    deviceDictionary = v2->_deviceDictionary;
    v2->_deviceDictionary = v3;

    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x1E69E96A0]);
    v5 = v2;
  }

  return v2;
}

- (void)activateWithCompletion:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__SFApproveDiscovery_activateWithCompletion___block_invoke;
  v7[3] = &unk_1E788B210;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

uint64_t __45__SFApproveDiscovery_activateWithCompletion___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 8) = 1;
  if (gLogCategory_SFApproveDiscovery <= 50 && (gLogCategory_SFApproveDiscovery != -1 || _LogCategory_Initialize()))
  {
    __45__SFApproveDiscovery_activateWithCompletion___block_invoke_cold_1();
  }

  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _activateWithCompletion:v3];
}

- (void)_activateWithCompletion:(id)a3
{
  dispatchQueue = self->_dispatchQueue;
  v5 = a3;
  dispatch_assert_queue_V2(dispatchQueue);
  v6 = _Block_copy(v5);

  activateHandler = self->_activateHandler;
  self->_activateHandler = v6;

  [(SFApproveDiscovery *)self _discoveryEnsureStarted];
}

- (void)_activatedWithError:(id)a3
{
  dispatchQueue = self->_dispatchQueue;
  v5 = a3;
  dispatch_assert_queue_V2(dispatchQueue);
  (*(self->_activateHandler + 2))();
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__SFApproveDiscovery_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __32__SFApproveDiscovery_invalidate__block_invoke(uint64_t result)
{
  v5 = *(result + 32);
  if ((*(v5 + 24) & 1) == 0)
  {
    v8 = v1;
    v6 = result;
    *(v5 + 24) = 1;
    if (gLogCategory_SFApproveDiscovery <= 50 && (gLogCategory_SFApproveDiscovery != -1 || _LogCategory_Initialize()))
    {
      __32__SFApproveDiscovery_invalidate__block_invoke_cold_1();
    }

    [*(v6 + 32) _discoveryEnsureStopped];
    v7 = *(v6 + 32);

    return [v7 _invalidated];
  }

  return result;
}

- (void)_invalidated
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_invalidateCalled && !self->_invalidateDone)
  {
    invalidationHandler = self->_invalidationHandler;
    if (invalidationHandler)
    {
      invalidationHandler[2]();
      v4 = self->_invalidationHandler;
    }

    else
    {
      v4 = 0;
    }

    self->_invalidationHandler = 0;

    self->_invalidateDone = 1;
    if (gLogCategory_SFApproveDiscovery <= 50 && (gLogCategory_SFApproveDiscovery != -1 || _LogCategory_Initialize()))
    {
      [SFApproveDiscovery _invalidated];
    }
  }
}

- (NSArray)devices
{
  v2 = self;
  objc_sync_enter(v2);
  devices = v2->_devices;
  if (!devices)
  {
    devices = MEMORY[0x1E695E0F0];
  }

  v4 = devices;
  objc_sync_exit(v2);

  return v4;
}

- (void)_discoveryEnsureStarted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_deviceDiscovery)
  {
    v3 = objc_opt_new();
    deviceDiscovery = self->_deviceDiscovery;
    self->_deviceDiscovery = v3;

    [(SFDeviceDiscovery *)self->_deviceDiscovery setChangeFlags:1];
    [(SFDeviceDiscovery *)self->_deviceDiscovery setDispatchQueue:self->_dispatchQueue];
    [(SFDeviceDiscovery *)self->_deviceDiscovery setDiscoveryFlags:16777217];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __45__SFApproveDiscovery__discoveryEnsureStarted__block_invoke;
    v10[3] = &unk_1E788C9B0;
    v10[4] = self;
    [(SFDeviceDiscovery *)self->_deviceDiscovery setDeviceFoundHandler:v10];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __45__SFApproveDiscovery__discoveryEnsureStarted__block_invoke_2;
    v9[3] = &unk_1E788C9B0;
    v9[4] = self;
    [(SFDeviceDiscovery *)self->_deviceDiscovery setDeviceLostHandler:v9];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __45__SFApproveDiscovery__discoveryEnsureStarted__block_invoke_3;
    v8[3] = &unk_1E788C9D8;
    v8[4] = self;
    [(SFDeviceDiscovery *)self->_deviceDiscovery setDeviceChangedHandler:v8];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __45__SFApproveDiscovery__discoveryEnsureStarted__block_invoke_4;
    v7[3] = &unk_1E788B198;
    v7[4] = self;
    [(SFDeviceDiscovery *)self->_deviceDiscovery setInvalidationHandler:v7];
    v5 = self->_deviceDiscovery;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __45__SFApproveDiscovery__discoveryEnsureStarted__block_invoke_5;
    v6[3] = &unk_1E788B238;
    v6[4] = self;
    [(SFDeviceDiscovery *)v5 activateWithCompletion:v6];
  }
}

uint64_t __45__SFApproveDiscovery__discoveryEnsureStarted__block_invoke_4(uint64_t a1)
{
  if (gLogCategory_SFApproveDiscovery <= 90 && (gLogCategory_SFApproveDiscovery != -1 || _LogCategory_Initialize()))
  {
    __45__SFApproveDiscovery__discoveryEnsureStarted__block_invoke_4_cold_1();
  }

  v2 = *(a1 + 32);

  return [v2 invalidate];
}

- (void)_discoveryEnsureStopped
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  [(SFDeviceDiscovery *)self->_deviceDiscovery setInvalidationHandler:0];
  [(SFDeviceDiscovery *)self->_deviceDiscovery invalidate];
  deviceDiscovery = self->_deviceDiscovery;
  self->_deviceDiscovery = 0;
}

- (void)_discoveryFoundDevice:(id)a3
{
  v10 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v4 = [v10 identifier];
  if (v4)
  {
    v5 = [(NSMutableDictionary *)self->_deviceDictionary objectForKeyedSubscript:v4];

    if (v5)
    {
      if (gLogCategory_SFApproveDiscovery <= 60 && (gLogCategory_SFApproveDiscovery != -1 || _LogCategory_Initialize()))
      {
        [SFApproveDiscovery _discoveryFoundDevice:];
      }
    }

    else if ([v10 autoUnlockEnabled])
    {
      if (gLogCategory_SFApproveDiscovery <= 50 && (gLogCategory_SFApproveDiscovery != -1 || _LogCategory_Initialize()))
      {
        [SFApproveDiscovery _discoveryFoundDevice:];
      }

      [(NSMutableDictionary *)self->_deviceDictionary setObject:v10 forKeyedSubscript:v4];
      v6 = self;
      objc_sync_enter(v6);
      v7 = [(NSMutableDictionary *)self->_deviceDictionary allValues];
      devices = v6->_devices;
      v6->_devices = v7;

      objc_sync_exit(v6);
      deviceFoundHandler = v6->_deviceFoundHandler;
      if (deviceFoundHandler)
      {
        deviceFoundHandler[2](deviceFoundHandler, v10);
      }
    }

    else if (gLogCategory_SFApproveDiscovery <= 50 && (gLogCategory_SFApproveDiscovery != -1 || _LogCategory_Initialize()))
    {
      [SFApproveDiscovery _discoveryFoundDevice:];
    }
  }

  else if (gLogCategory_SFApproveDiscovery <= 90 && (gLogCategory_SFApproveDiscovery != -1 || _LogCategory_Initialize()))
  {
    [SFApproveDiscovery _discoveryFoundDevice:];
  }
}

- (void)_discoveryDeviceChanged:(id)a3
{
  v16 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v4 = [v16 identifier];
  if (!v4)
  {
    if (gLogCategory_SFApproveDiscovery <= 90 && (gLogCategory_SFApproveDiscovery != -1 || _LogCategory_Initialize()))
    {
      [SFApproveDiscovery _discoveryDeviceChanged:];
    }

    goto LABEL_21;
  }

  v5 = [(NSMutableDictionary *)self->_deviceDictionary objectForKeyedSubscript:v4];
  if (v5)
  {
  }

  else if ([v16 autoUnlockEnabled])
  {
    if (gLogCategory_SFApproveDiscovery <= 50 && (gLogCategory_SFApproveDiscovery != -1 || _LogCategory_Initialize()))
    {
      [SFApproveDiscovery _discoveryDeviceChanged:];
    }

    [(NSMutableDictionary *)self->_deviceDictionary setObject:v16 forKeyedSubscript:v4];
    v6 = self;
    objc_sync_enter(v6);
    v7 = [(NSMutableDictionary *)self->_deviceDictionary allValues];
    devices = v6->_devices;
    v6->_devices = v7;

    objc_sync_exit(v6);
    deviceFoundHandler = v6->_deviceFoundHandler;
    if (deviceFoundHandler)
    {
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  v10 = [(NSMutableDictionary *)self->_deviceDictionary objectForKeyedSubscript:v4];
  if (v10)
  {
    v11 = v10;
    v12 = [v16 autoUnlockEnabled];

    if ((v12 & 1) == 0)
    {
      if (gLogCategory_SFApproveDiscovery <= 50 && (gLogCategory_SFApproveDiscovery != -1 || _LogCategory_Initialize()))
      {
        [SFApproveDiscovery _discoveryDeviceChanged:];
      }

      [(NSMutableDictionary *)self->_deviceDictionary removeObjectForKey:v4];
      v13 = self;
      objc_sync_enter(v13);
      v14 = [(NSMutableDictionary *)self->_deviceDictionary allValues];
      v15 = v13->_devices;
      v13->_devices = v14;

      objc_sync_exit(v13);
      deviceFoundHandler = v13->_deviceLostHandler;
      if (deviceFoundHandler)
      {
LABEL_20:
        deviceFoundHandler[2](deviceFoundHandler, v16);
      }
    }
  }

LABEL_21:
}

- (void)_discoveryLostDevice:(id)a3
{
  v10 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v4 = [v10 identifier];
  if (v4)
  {
    v5 = [(NSMutableDictionary *)self->_deviceDictionary objectForKeyedSubscript:v4];

    if (v5)
    {
      if (gLogCategory_SFApproveDiscovery <= 50 && (gLogCategory_SFApproveDiscovery != -1 || _LogCategory_Initialize()))
      {
        [SFApproveDiscovery _discoveryLostDevice:];
      }

      [(NSMutableDictionary *)self->_deviceDictionary removeObjectForKey:v4];
      v6 = self;
      objc_sync_enter(v6);
      v7 = [(NSMutableDictionary *)self->_deviceDictionary allValues];
      devices = v6->_devices;
      v6->_devices = v7;

      objc_sync_exit(v6);
      deviceLostHandler = v6->_deviceLostHandler;
      if (deviceLostHandler)
      {
        deviceLostHandler[2](deviceLostHandler, v10);
      }
    }

    else if (gLogCategory_SFApproveDiscovery <= 50 && (gLogCategory_SFApproveDiscovery != -1 || _LogCategory_Initialize()))
    {
      [SFApproveDiscovery _discoveryLostDevice:];
    }
  }

  else if (gLogCategory_SFApproveDiscovery <= 90 && (gLogCategory_SFApproveDiscovery != -1 || _LogCategory_Initialize()))
  {
    [SFApproveDiscovery _discoveryLostDevice:];
  }
}

@end