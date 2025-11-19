@interface RPNearbyInvitationDiscovery
- (NSArray)discoveredDevices;
- (NSString)description;
- (RPNearbyInvitationDiscovery)init;
- (RPNearbyInvitationDiscovery)initWithCoder:(id)a3;
- (void)_activateWithCompletion:(id)a3 reactivate:(BOOL)a4;
- (void)_ensureXPCStarted;
- (void)_interrupted;
- (void)_invalidated;
- (void)activateWithCompletion:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)invalidate;
- (void)nearbyInvitationFoundDevice:(id)a3;
- (void)nearbyInvitationLostDevice:(id)a3;
@end

@implementation RPNearbyInvitationDiscovery

- (RPNearbyInvitationDiscovery)init
{
  v6.receiver = self;
  v6.super_class = RPNearbyInvitationDiscovery;
  v2 = [(RPNearbyInvitationDiscovery *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x1E69E96A0]);
    v4 = v3;
  }

  return v3;
}

- (RPNearbyInvitationDiscovery)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = RPNearbyInvitationDiscovery;
  v5 = [(RPNearbyInvitationDiscovery *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_dispatchQueue, MEMORY[0x1E69E96A0]);
    v7 = v4;
    if ([v7 containsValueForKey:@"_disFl"])
    {
      v6->_discoveryFlags = [v7 decodeInt64ForKey:@"_disFl"];
    }

    v8 = v6;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  discoveryFlags = self->_discoveryFlags;
  if (discoveryFlags)
  {
    [a3 encodeInt64:discoveryFlags forKey:@"_disFl"];
  }
}

- (NSString)description
{
  discoveryFlags = self;
  NSAppendPrintF();
  v3 = 0;
  v4 = v3;
  if (self->_discoveryFlags)
  {
    v10 = v3;
    discoveryFlags = self->_discoveryFlags;
    v9 = &unk_1B6F2E198;
    NSAppendPrintF();
    v5 = v10;

    v4 = v5;
  }

  if ([(NSMutableDictionary *)self->_discoveredDevices count:discoveryFlags])
  {
    [(NSMutableDictionary *)self->_discoveredDevices count];
    NSAppendPrintF();
    v6 = v4;

    v4 = v6;
  }

  return v4;
}

- (void)activateWithCompletion:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__RPNearbyInvitationDiscovery_activateWithCompletion___block_invoke;
  v7[3] = &unk_1E7C92E20;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (void)_activateWithCompletion:(id)a3 reactivate:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v4)
  {
    if (gLogCategory_RPNearbyInvitationDiscovery <= 30 && (gLogCategory_RPNearbyInvitationDiscovery != -1 || _LogCategory_Initialize()))
    {
LABEL_10:
      [RPNearbyInvitationDiscovery _activateWithCompletion:reactivate:];
    }
  }

  else if (gLogCategory_RPNearbyInvitationDiscovery <= 30 && (gLogCategory_RPNearbyInvitationDiscovery != -1 || _LogCategory_Initialize()))
  {
    goto LABEL_10;
  }

  [(RPNearbyInvitationDiscovery *)self _ensureXPCStarted];
  xpcCnx = self->_xpcCnx;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __66__RPNearbyInvitationDiscovery__activateWithCompletion_reactivate___block_invoke;
  v14[3] = &unk_1E7C93500;
  v14[4] = self;
  v16 = v4;
  v8 = v6;
  v15 = v8;
  v9 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v14];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __66__RPNearbyInvitationDiscovery__activateWithCompletion_reactivate___block_invoke_2;
  v11[3] = &unk_1E7C92F88;
  v13 = v4;
  v12 = v8;
  v10 = v8;
  [v9 nearbyInvitationActivateDiscovery:self completion:v11];
}

void __66__RPNearbyInvitationDiscovery__activateWithCompletion_reactivate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(*(a1 + 32) + 24) == 1)
  {
    v7 = v3;
    v4 = RPNestedErrorF();

    v3 = v4;
  }

  v8 = v3;
  if (*(a1 + 48) == 1)
  {
    if (gLogCategory_RPNearbyInvitationDiscovery <= 90 && (gLogCategory_RPNearbyInvitationDiscovery != -1 || _LogCategory_Initialize()))
    {
LABEL_16:
      __66__RPNearbyInvitationDiscovery__activateWithCompletion_reactivate___block_invoke_cold_1();
    }
  }

  else if (gLogCategory_RPNearbyInvitationDiscovery <= 90 && (gLogCategory_RPNearbyInvitationDiscovery != -1 || _LogCategory_Initialize()))
  {
    goto LABEL_16;
  }

  v5 = *(a1 + 40);
  v6 = v8;
  if (v5)
  {
    (*(v5 + 16))(v5, v8);
    v6 = v8;
  }
}

void __66__RPNearbyInvitationDiscovery__activateWithCompletion_reactivate___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v10 = v3;
  if (v3)
  {
    if (*(a1 + 40))
    {
      if (gLogCategory_RPNearbyInvitationDiscovery <= 90)
      {
        if (gLogCategory_RPNearbyInvitationDiscovery != -1 || (v5 = _LogCategory_Initialize(), v3 = v10, v5))
        {
          __66__RPNearbyInvitationDiscovery__activateWithCompletion_reactivate___block_invoke_2_cold_2();
LABEL_20:
          v3 = v10;
        }
      }
    }

    else if (gLogCategory_RPNearbyInvitationDiscovery <= 90)
    {
      if (gLogCategory_RPNearbyInvitationDiscovery != -1 || (v7 = _LogCategory_Initialize(), v3 = v10, v7))
      {
        __66__RPNearbyInvitationDiscovery__activateWithCompletion_reactivate___block_invoke_2_cold_1();
        goto LABEL_20;
      }
    }
  }

  else if (*(a1 + 40))
  {
    if (gLogCategory_RPNearbyInvitationDiscovery <= 30)
    {
      if (gLogCategory_RPNearbyInvitationDiscovery != -1 || (v6 = _LogCategory_Initialize(), v3 = 0, v6))
      {
        __66__RPNearbyInvitationDiscovery__activateWithCompletion_reactivate___block_invoke_2_cold_4();
        goto LABEL_20;
      }
    }
  }

  else if (gLogCategory_RPNearbyInvitationDiscovery <= 30)
  {
    if (gLogCategory_RPNearbyInvitationDiscovery != -1 || (v8 = _LogCategory_Initialize(), v3 = 0, v8))
    {
      __66__RPNearbyInvitationDiscovery__activateWithCompletion_reactivate___block_invoke_2_cold_3();
      goto LABEL_20;
    }
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, v10);
    v3 = v10;
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
    v7 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.rapport.NearbyInvitation" options:0];
    xpcCnx = self->_xpcCnx;
    self->_xpcCnx = v7;

    [(NSXPCConnection *)self->_xpcCnx _setQueue:self->_dispatchQueue];
    v9 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2EF3528];
    [(NSXPCConnection *)self->_xpcCnx setExportedInterface:v9];

    [(NSXPCConnection *)self->_xpcCnx setExportedObject:self];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __48__RPNearbyInvitationDiscovery__ensureXPCStarted__block_invoke;
    v12[3] = &unk_1E7C92CE8;
    v12[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInterruptionHandler:v12];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __48__RPNearbyInvitationDiscovery__ensureXPCStarted__block_invoke_2;
    v11[3] = &unk_1E7C92CE8;
    v11[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInvalidationHandler:v11];
    v10 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2EFEC58];
    [(NSXPCConnection *)self->_xpcCnx setRemoteObjectInterface:v10];

    [(NSXPCConnection *)self->_xpcCnx resume];
    if (gLogCategory_RPNearbyInvitationDiscovery <= 10 && (gLogCategory_RPNearbyInvitationDiscovery != -1 || _LogCategory_Initialize()))
    {
      [RPNearbyInvitationDiscovery _ensureXPCStarted];
    }
  }
}

uint64_t __48__RPNearbyInvitationDiscovery__ensureXPCStarted__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  *(v2 + 32) = 0;

  v4 = *(a1 + 32);

  return [v4 _invalidated];
}

- (void)_interrupted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_RPNearbyInvitationDiscovery <= 50 && (gLogCategory_RPNearbyInvitationDiscovery != -1 || _LogCategory_Initialize()))
  {
    [RPNearbyInvitationDiscovery _interrupted];
  }

  if (self->_activateCalled)
  {
    [(RPNearbyInvitationDiscovery *)self _activateWithCompletion:0 reactivate:1];
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
  block[2] = __41__RPNearbyInvitationDiscovery_invalidate__block_invoke;
  block[3] = &unk_1E7C92CE8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __41__RPNearbyInvitationDiscovery_invalidate__block_invoke(uint64_t result)
{
  v5 = *(result + 32);
  if ((*(v5 + 24) & 1) == 0)
  {
    v8 = v1;
    v6 = result;
    *(v5 + 24) = 1;
    if (gLogCategory_RPNearbyInvitationDiscovery <= 30 && (gLogCategory_RPNearbyInvitationDiscovery != -1 || _LogCategory_Initialize()))
    {
      __41__RPNearbyInvitationDiscovery_invalidate__block_invoke_cold_1();
    }

    [*(*(v6 + 32) + 32) invalidate];
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

    deviceFoundHandler = self->_deviceFoundHandler;
    self->_deviceFoundHandler = 0;

    deviceLostHandler = self->_deviceLostHandler;
    self->_deviceLostHandler = 0;

    deviceChangedHandler = self->_deviceChangedHandler;
    self->_deviceChangedHandler = 0;

    discoveredDevices = self->_discoveredDevices;
    self->_discoveredDevices = 0;

    v8 = self->_invalidationHandler;
    self->_invalidationHandler = 0;

    self->_invalidateDone = 1;
    if (gLogCategory_RPNearbyInvitationDiscovery <= 30 && (gLogCategory_RPNearbyInvitationDiscovery != -1 || _LogCategory_Initialize()))
    {
      [RPNearbyInvitationDiscovery _invalidated];
    }
  }
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

- (void)nearbyInvitationFoundDevice:(id)a3
{
  v10 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v4 = self;
  objc_sync_enter(v4);
  v5 = [v10 identifier];
  if (v5)
  {
    discoveredDevices = v4->_discoveredDevices;
    if (!discoveredDevices)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v8 = v4->_discoveredDevices;
      v4->_discoveredDevices = v7;

      discoveredDevices = v4->_discoveredDevices;
    }

    [(NSMutableDictionary *)discoveredDevices setObject:v10 forKeyedSubscript:v5];

    objc_sync_exit(v4);
    deviceFoundHandler = v4->_deviceFoundHandler;
    if (deviceFoundHandler)
    {
      deviceFoundHandler[2](deviceFoundHandler, v10);
    }
  }

  else
  {
    objc_sync_exit(v4);
  }
}

- (void)nearbyInvitationLostDevice:(id)a3
{
  v7 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v4 = self;
  objc_sync_enter(v4);
  v5 = [v7 identifier];
  if (v5)
  {
    [(NSMutableDictionary *)v4->_discoveredDevices setObject:0 forKeyedSubscript:v5];

    objc_sync_exit(v4);
    deviceLostHandler = v4->_deviceLostHandler;
    if (deviceLostHandler)
    {
      deviceLostHandler[2](deviceLostHandler, v7);
    }
  }

  else
  {
    objc_sync_exit(v4);
  }
}

@end