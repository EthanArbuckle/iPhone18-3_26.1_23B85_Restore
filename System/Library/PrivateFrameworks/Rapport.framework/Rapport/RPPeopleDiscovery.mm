@interface RPPeopleDiscovery
- (BOOL)_ensureXPCStarted;
- (NSArray)discoveredPeople;
- (RPPeopleDiscovery)init;
- (RPPeopleDiscovery)initWithCoder:(id)a3;
- (id)descriptionWithLevel:(int)a3;
- (void)_activateWithCompletion:(id)a3 reactivate:(BOOL)a4;
- (void)_interrupted;
- (void)_invalidated;
- (void)_invokeBlockActivateSafe:(id)a3;
- (void)_lostAllPeople;
- (void)_scheduleRetry;
- (void)_updatePeopleDensity:(unint64_t)a3;
- (void)activateWithCompletion:(id)a3;
- (void)addAppleID:(id)a3 completion:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)invalidate;
- (void)removeAppleID:(id)a3 completion:(id)a4;
- (void)setDiscoveryFlags:(unsigned int)a3;
- (void)setRangingPeople:(id)a3;
- (void)setScanRate:(unsigned int)a3;
- (void)xpcPeopleStatusChanged:(unsigned int)a3;
- (void)xpcPersonFound:(id)a3;
- (void)xpcPersonID:(id)a3 deviceID:(id)a4 updatedMeasurement:(id)a5;
- (void)xpcPersonLost:(id)a3;
@end

@implementation RPPeopleDiscovery

- (RPPeopleDiscovery)init
{
  v6.receiver = self;
  v6.super_class = RPPeopleDiscovery;
  v2 = [(RPPeopleDiscovery *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x1E69E96A0]);
    v4 = v3;
  }

  return v3;
}

- (RPPeopleDiscovery)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = RPPeopleDiscovery;
  v5 = [(RPPeopleDiscovery *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_dispatchQueue, MEMORY[0x1E69E96A0]);
    v10 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      v6->_changeFlags = v10;
    }

    v10 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      v6->_discoveryFlags = v10;
    }

    v10 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      v6->_discoveryMode = v10;
    }

    objc_opt_class();
    NSDecodeNSSetOfClassIfPresent();
    v10 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      v6->_scanRate = v10;
    }

    v7 = v6;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  changeFlags = self->_changeFlags;
  v10 = v4;
  if (changeFlags)
  {
    [v4 encodeInt64:changeFlags forKey:@"cf"];
    v4 = v10;
  }

  discoveryFlags = self->_discoveryFlags;
  if (discoveryFlags)
  {
    [v10 encodeInt64:discoveryFlags forKey:@"df"];
    v4 = v10;
  }

  discoveryMode = self->_discoveryMode;
  if (discoveryMode)
  {
    [v10 encodeInteger:discoveryMode forKey:@"dm"];
    v4 = v10;
  }

  rangingPersonIDs = self->_rangingPersonIDs;
  if (rangingPersonIDs)
  {
    [v10 encodeObject:rangingPersonIDs forKey:@"rpi"];
    v4 = v10;
  }

  scanRate = self->_scanRate;
  if (scanRate)
  {
    [v10 encodeInt64:scanRate forKey:@"scr"];
    v4 = v10;
  }
}

- (id)descriptionWithLevel:(int)a3
{
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__5;
  v30 = __Block_byref_object_dispose__5;
  v31 = 0;
  v25 = 0;
  discoveryMode = self->_discoveryMode;
  if (discoveryMode > 199)
  {
    if (discoveryMode == 200)
    {
      v6 = "MyMeDevices";
      goto LABEL_11;
    }

    if (discoveryMode == 400)
    {
      v6 = "Contacts";
      goto LABEL_11;
    }

LABEL_8:
    v6 = "?";
    goto LABEL_11;
  }

  if (!discoveryMode)
  {
    v6 = "~";
    goto LABEL_11;
  }

  if (discoveryMode != 1)
  {
    goto LABEL_8;
  }

  v6 = "PTS";
LABEL_11:
  changeFlags = self->_changeFlags;
  discoveryFlags = self->_discoveryFlags;
  v16 = v6;
  NSAppendPrintF();
  objc_storeStrong(&v31, v25);
  if (a3 <= 30)
  {
    v7 = v27 + 5;
    obj = v27[5];
    v8 = [(NSMutableDictionary *)self->_discoveredPeople count:v16];
    peopleDensity = self->_peopleDensity;
    if (peopleDensity < 1)
    {
      v10 = "None";
    }

    else if (peopleDensity >= 0xB)
    {
      v10 = peopleDensity >= 0x33 ? "High" : "Med";
    }

    else
    {
      v10 = "Low";
    }

    v17 = v8;
    v19 = v10;
    NSAppendPrintF();
    objc_storeStrong(v7, obj);
    if (a3 <= 20)
    {
      v11 = v27;
      v23 = v27[5];
      NSAppendPrintF();
      objc_storeStrong(v11 + 5, v23);
      if (a3 >= 11)
      {
        v12 = 50;
      }

      else
      {
        v12 = 30;
      }

      discoveredPeople = self->_discoveredPeople;
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __42__RPPeopleDiscovery_descriptionWithLevel___block_invoke;
      v21[3] = &unk_1E7C94BC8;
      v21[4] = &v26;
      v22 = v12;
      [(NSMutableDictionary *)discoveredPeople enumerateKeysAndObjectsUsingBlock:v21, v17, v19];
    }
  }

  v14 = v27[5];
  _Block_object_dispose(&v26, 8);

  return v14;
}

void __42__RPPeopleDiscovery_descriptionWithLevel___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  obj = *(v1 + 40);
  v2 = *(a1 + 40);
  v3 = CUDescriptionWithLevel();
  NSAppendPrintF();
  objc_storeStrong((v1 + 40), obj);
}

- (void)setDiscoveryFlags:(unsigned int)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __39__RPPeopleDiscovery_setDiscoveryFlags___block_invoke;
  v3[3] = &unk_1E7C934D8;
  v3[4] = self;
  v4 = a3;
  [(RPPeopleDiscovery *)self _invokeBlockActivateSafe:v3];
}

- (void)setRangingPeople:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 copy];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  }

  else
  {
    v6 = 0;
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = *v22;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = [*(*(&v21 + 1) + 8 * i) identifier];
        [v6 addObject:v11];
      }

      v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }

  v12 = self;
  objc_sync_enter(v12);
  rangingPersonIDs = v12->_rangingPersonIDs;
  v14 = v6;
  v15 = rangingPersonIDs;
  v16 = v15;
  if (v14 == v15)
  {
  }

  else
  {
    if ((v14 != 0) != (v15 == 0))
    {
      v17 = [(NSMutableSet *)v14 isEqual:v15];

      if (v17)
      {
        goto LABEL_19;
      }
    }

    else
    {
    }

    objc_storeStrong(&v12->_rangingPeople, v5);
    objc_storeStrong(&v12->_rangingPersonIDs, v6);
    if (v12->_activateCalled)
    {
      dispatchQueue = v12->_dispatchQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __38__RPPeopleDiscovery_setRangingPeople___block_invoke;
      block[3] = &unk_1E7C92CE8;
      block[4] = v12;
      dispatch_async(dispatchQueue, block);
    }
  }

LABEL_19:
  objc_sync_exit(v12);

  v19 = *MEMORY[0x1E69E9840];
}

void __38__RPPeopleDiscovery_setRangingPeople___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 48) remoteObjectProxy];
  [v2 xpcPeopleDiscoveryUpdate:*(a1 + 32)];
}

- (void)setScanRate:(unsigned int)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __33__RPPeopleDiscovery_setScanRate___block_invoke;
  v3[3] = &unk_1E7C934D8;
  v3[4] = self;
  v4 = a3;
  [(RPPeopleDiscovery *)self _invokeBlockActivateSafe:v3];
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
  v8[2] = __44__RPPeopleDiscovery_activateWithCompletion___block_invoke;
  v8[3] = &unk_1E7C92E20;
  v8[4] = v5;
  v9 = v4;
  v7 = v4;
  dispatch_async(dispatchQueue, v8);

  objc_sync_exit(v5);
}

- (void)_activateWithCompletion:(id)a3 reactivate:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v4)
  {
    if (gLogCategory_RPPeopleDiscovery <= 30 && (gLogCategory_RPPeopleDiscovery != -1 || _LogCategory_Initialize()))
    {
LABEL_14:
      [RPPeopleDiscovery _activateWithCompletion:? reactivate:?];
    }
  }

  else if (gLogCategory_RPPeopleDiscovery <= 30 && (gLogCategory_RPPeopleDiscovery != -1 || _LogCategory_Initialize()))
  {
    goto LABEL_14;
  }

  if ([(RPPeopleDiscovery *)self _ensureXPCStarted])
  {
    xpcCnx = self->_xpcCnx;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __56__RPPeopleDiscovery__activateWithCompletion_reactivate___block_invoke;
    v13[3] = &unk_1E7C93500;
    v15 = v4;
    v13[4] = self;
    v8 = v6;
    v14 = v8;
    v9 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v13];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __56__RPPeopleDiscovery__activateWithCompletion_reactivate___block_invoke_2;
    v10[3] = &unk_1E7C94BF0;
    v12 = v4;
    v10[4] = self;
    v11 = v8;
    [v9 xpcPeopleDiscoveryActivate:self completion:v10];
  }

  else
  {
    [(RPPeopleDiscovery *)self _scheduleRetry];
    if (v6)
    {
      (*(v6 + 2))(v6, 0);
    }
  }
}

void __56__RPPeopleDiscovery__activateWithCompletion_reactivate___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (*(a1 + 48) == 1)
  {
    if (gLogCategory_RPPeopleDiscovery <= 90 && (gLogCategory_RPPeopleDiscovery != -1 || _LogCategory_Initialize()))
    {
LABEL_14:
      __56__RPPeopleDiscovery__activateWithCompletion_reactivate___block_invoke_cold_1();
    }
  }

  else if (gLogCategory_RPPeopleDiscovery <= 90 && (gLogCategory_RPPeopleDiscovery != -1 || _LogCategory_Initialize()))
  {
    goto LABEL_14;
  }

  [*(a1 + 32) _scheduleRetry];
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, 0);
  }
}

void __56__RPPeopleDiscovery__activateWithCompletion_reactivate___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v29 = v5;
  if (!v6)
  {
    obj = *(a1 + 32);
    objc_sync_enter(obj);
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v8)
    {
      v9 = *v35;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v35 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v34 + 1) + 8 * i);
          v12 = *(*(a1 + 32) + 16);
          if (!v12)
          {
            v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
            v14 = *(a1 + 32);
            v15 = *(v14 + 16);
            *(v14 + 16) = v13;

            v12 = *(*(a1 + 32) + 16);
          }

          v16 = [v11 identifier];
          [v12 setObject:v11 forKeyedSubscript:v16];
        }

        v8 = [v7 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v8);
    }

    v17 = [*(*(a1 + 32) + 16) count];
    objc_sync_exit(obj);

    if (*(a1 + 48) == 1)
    {
      if (gLogCategory_RPPeopleDiscovery > 30 || gLogCategory_RPPeopleDiscovery == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_37;
      }
    }

    else if (gLogCategory_RPPeopleDiscovery > 30 || gLogCategory_RPPeopleDiscovery == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_37;
    }

    __56__RPPeopleDiscovery__activateWithCompletion_reactivate___block_invoke_2_cold_2(v7);
LABEL_37:
    v21 = *(a1 + 40);
    if (v21)
    {
      (*(v21 + 16))(v21, 0);
    }

    v22 = _Block_copy(*(*(a1 + 32) + 120));
    if (v22)
    {
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v23 = v7;
      v24 = [v23 countByEnumeratingWithState:&v30 objects:v38 count:16];
      if (v24)
      {
        v25 = *v31;
        do
        {
          for (j = 0; j != v24; ++j)
          {
            if (*v31 != v25)
            {
              objc_enumerationMutation(v23);
            }

            v22[2](v22, *(*(&v30 + 1) + 8 * j));
          }

          v24 = [v23 countByEnumeratingWithState:&v30 objects:v38 count:16];
        }

        while (v24);
      }
    }

    [*(a1 + 32) _updatePeopleDensity:v17];
    goto LABEL_49;
  }

  if (*(a1 + 48) == 1)
  {
    if (gLogCategory_RPPeopleDiscovery <= 90 && (gLogCategory_RPPeopleDiscovery != -1 || _LogCategory_Initialize()))
    {
LABEL_21:
      __56__RPPeopleDiscovery__activateWithCompletion_reactivate___block_invoke_2_cold_1();
    }
  }

  else if (gLogCategory_RPPeopleDiscovery <= 90 && (gLogCategory_RPPeopleDiscovery != -1 || _LogCategory_Initialize()))
  {
    goto LABEL_21;
  }

  if ([v6 code] == -71168)
  {
    v18 = *(a1 + 40);
    if (v18)
    {
      v19 = *(v18 + 16);
LABEL_33:
      v19();
    }
  }

  else
  {
    [*(a1 + 32) _scheduleRetry];
    v20 = *(a1 + 40);
    if (v20)
    {
      v19 = *(v20 + 16);
      goto LABEL_33;
    }
  }

LABEL_49:

  v27 = *MEMORY[0x1E69E9840];
}

- (BOOL)_ensureXPCStarted
{
  if (!self->_xpcCnx)
  {
    v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2EFEDD8];
    v4 = objc_alloc(MEMORY[0x1E695DFD8]);
    v5 = objc_opt_class();
    v6 = [v4 initWithObjects:{v5, objc_opt_class(), 0}];
    [v3 setClasses:v6 forSelector:sel_xpcPeopleDiscoveryActivate_completion_ argumentIndex:0 ofReply:1];

    v7 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.rapport.people" options:0];
    xpcCnx = self->_xpcCnx;
    self->_xpcCnx = v7;

    [(NSXPCConnection *)self->_xpcCnx _setQueue:self->_dispatchQueue];
    v9 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2EF7190];
    [(NSXPCConnection *)self->_xpcCnx setExportedInterface:v9];

    [(NSXPCConnection *)self->_xpcCnx setExportedObject:self];
    [(NSXPCConnection *)self->_xpcCnx setRemoteObjectInterface:v3];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __38__RPPeopleDiscovery__ensureXPCStarted__block_invoke;
    v12[3] = &unk_1E7C92CE8;
    v12[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInterruptionHandler:v12];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __38__RPPeopleDiscovery__ensureXPCStarted__block_invoke_2;
    v11[3] = &unk_1E7C92CE8;
    v11[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInvalidationHandler:v11];
    [(NSXPCConnection *)self->_xpcCnx resume];
    if (gLogCategory_RPPeopleDiscovery <= 10 && (gLogCategory_RPPeopleDiscovery != -1 || _LogCategory_Initialize()))
    {
      [RPPeopleDiscovery _ensureXPCStarted];
    }
  }

  return 1;
}

uint64_t __38__RPPeopleDiscovery__ensureXPCStarted__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 48);
  *(v2 + 48) = 0;

  if (*(*(a1 + 32) + 24) == 1)
  {
    if (gLogCategory_RPPeopleDiscovery <= 30 && (gLogCategory_RPPeopleDiscovery != -1 || _LogCategory_Initialize()))
    {
      __38__RPPeopleDiscovery__ensureXPCStarted__block_invoke_2_cold_2();
    }

    v4 = *(a1 + 32);

    return [v4 _invalidated];
  }

  else
  {
    if (gLogCategory_RPPeopleDiscovery <= 90 && (gLogCategory_RPPeopleDiscovery != -1 || _LogCategory_Initialize()))
    {
      __38__RPPeopleDiscovery__ensureXPCStarted__block_invoke_2_cold_1();
    }

    v6 = *(a1 + 32);

    return [v6 _scheduleRetry];
  }
}

- (void)_invokeBlockActivateSafe:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (v5->_activateCalled)
  {
    dispatchQueue = v5->_dispatchQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __46__RPPeopleDiscovery__invokeBlockActivateSafe___block_invoke;
    v7[3] = &unk_1E7C93550;
    v7[4] = v5;
    v8 = v4;
    dispatch_async(dispatchQueue, v7);
  }

  else
  {
    v4[2](v4);
  }

  objc_sync_exit(v5);
}

void __46__RPPeopleDiscovery__invokeBlockActivateSafe___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = [*(*(a1 + 32) + 48) remoteObjectProxy];
  [v2 xpcPeopleDiscoveryUpdate:*(a1 + 32)];
}

- (void)_interrupted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_RPPeopleDiscovery <= 50 && (gLogCategory_RPPeopleDiscovery != -1 || _LogCategory_Initialize()))
  {
    [RPPeopleDiscovery _interrupted];
  }

  [(RPPeopleDiscovery *)self _lostAllPeople];
  if (self->_activateCalled)
  {
    [(RPPeopleDiscovery *)self _activateWithCompletion:0 reactivate:1];
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
  block[2] = __31__RPPeopleDiscovery_invalidate__block_invoke;
  block[3] = &unk_1E7C92CE8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __31__RPPeopleDiscovery_invalidate__block_invoke(uint64_t result)
{
  v5 = *(result + 32);
  if ((*(v5 + 24) & 1) == 0)
  {
    v12 = v2;
    v13 = v1;
    v6 = result;
    *(v5 + 24) = 1;
    if (gLogCategory_RPPeopleDiscovery <= 30 && (gLogCategory_RPPeopleDiscovery != -1 || _LogCategory_Initialize()))
    {
      __31__RPPeopleDiscovery_invalidate__block_invoke_cold_1();
    }

    v7 = *(*(v6 + 32) + 40);
    if (v7)
    {
      v8 = v7;
      dispatch_source_cancel(v8);
      v9 = *(v6 + 32);
      v10 = *(v9 + 40);
      *(v9 + 40) = 0;
    }

    [*(*(v6 + 32) + 48) invalidate];
    v11 = *(v6 + 32);

    return [v11 _invalidated];
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

    retryTimer = self->_retryTimer;
    if (retryTimer)
    {
      v5 = retryTimer;
      dispatch_source_cancel(v5);
      v6 = self->_retryTimer;
      self->_retryTimer = 0;
    }

    interruptionHandler = self->_interruptionHandler;
    self->_interruptionHandler = 0;

    v8 = self->_invalidationHandler;
    self->_invalidationHandler = 0;

    peopleDensityChangedHandler = self->_peopleDensityChangedHandler;
    self->_peopleDensityChangedHandler = 0;

    personFoundHandler = self->_personFoundHandler;
    self->_personFoundHandler = 0;

    personLostHandler = self->_personLostHandler;
    self->_personLostHandler = 0;

    personChangedHandler = self->_personChangedHandler;
    self->_personChangedHandler = 0;

    statusChangedHandler = self->_statusChangedHandler;
    self->_statusChangedHandler = 0;

    self->_invalidateDone = 1;
    if (gLogCategory_RPPeopleDiscovery <= 30 && (gLogCategory_RPPeopleDiscovery != -1 || _LogCategory_Initialize()))
    {
      [RPPeopleDiscovery _invalidated];
    }
  }
}

- (void)_scheduleRetry
{
  if (!self->_invalidateCalled && !self->_retryTimer)
  {
    v3 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_dispatchQueue);
    retryTimer = self->_retryTimer;
    self->_retryTimer = v3;

    v5 = self->_retryTimer;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __35__RPPeopleDiscovery__scheduleRetry__block_invoke;
    handler[3] = &unk_1E7C92CE8;
    handler[4] = self;
    dispatch_source_set_event_handler(v5, handler);
    v6 = self->_retryTimer;
    CUDispatchTimerSet();
    dispatch_resume(self->_retryTimer);
  }
}

_BYTE *__35__RPPeopleDiscovery__scheduleRetry__block_invoke(uint64_t a1)
{
  if (gLogCategory_RPPeopleDiscovery <= 30 && (gLogCategory_RPPeopleDiscovery != -1 || _LogCategory_Initialize()))
  {
    __35__RPPeopleDiscovery__scheduleRetry__block_invoke_cold_1();
  }

  v2 = *(*(a1 + 32) + 40);
  if (v2)
  {
    v3 = v2;
    dispatch_source_cancel(v3);
    v4 = *(a1 + 32);
    v5 = *(v4 + 40);
    *(v4 + 40) = 0;
  }

  result = *(a1 + 32);
  if ((result[24] & 1) == 0)
  {

    return [result _activateWithCompletion:0 reactivate:1];
  }

  return result;
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

- (void)_lostAllPeople
{
  v19 = *MEMORY[0x1E69E9840];
  if (gLogCategory_RPPeopleDiscovery <= 30 && (gLogCategory_RPPeopleDiscovery != -1 || _LogCategory_Initialize()))
  {
    [RPPeopleDiscovery _lostAllPeople];
  }

  personLostHandler = self->_personLostHandler;
  obj = self;
  objc_sync_enter(obj);
  discoveredPeople = obj->_discoveredPeople;
  if (personLostHandler)
  {
    v5 = [(NSMutableDictionary *)discoveredPeople allValues];
    [(NSMutableDictionary *)obj->_discoveredPeople removeAllObjects];
    objc_sync_exit(obj);

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = self->_personLostHandler;
          if (v10)
          {
            v10[2](v10, *(*(&v14 + 1) + 8 * i));
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }

    v11 = *MEMORY[0x1E69E9840];
  }

  else
  {
    [(NSMutableDictionary *)discoveredPeople removeAllObjects];
    objc_sync_exit(obj);
    v12 = *MEMORY[0x1E69E9840];
  }
}

- (void)_updatePeopleDensity:(unint64_t)a3
{
  if (a3 >= 0x1E)
  {
    v3 = 90;
  }

  else
  {
    v3 = 50;
  }

  if (a3 >= 5)
  {
    v4 = v3;
  }

  else
  {
    v4 = 10;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (v5 != self->_peopleDensity)
  {
    if (gLogCategory_RPPeopleDiscovery <= 30 && (gLogCategory_RPPeopleDiscovery != -1 || _LogCategory_Initialize()))
    {
      [RPPeopleDiscovery _updatePeopleDensity:];
    }

    self->_peopleDensity = v5;
    v7 = _Block_copy(self->_peopleDensityChangedHandler);
    if (v7)
    {
      v8 = v7;
      v7[2]();
      v7 = v8;
    }
  }
}

- (void)xpcPeopleStatusChanged:(unsigned int)a3
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_RPPeopleDiscovery <= 30 && (gLogCategory_RPPeopleDiscovery != -1 || _LogCategory_Initialize()))
  {
    statusFlags = self->_statusFlags;
    LogPrintF();
  }

  self->_statusFlags = a3;
  v5 = _Block_copy(self->_statusChangedHandler);
  if (v5)
  {
    v10 = v5;
    (*(v5 + 2))(v5, v6, v7, v8);
    v5 = v10;
  }
}

- (void)xpcPersonFound:(id)a3
{
  v12 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v4 = self;
  objc_sync_enter(v4);
  v5 = v12;
  discoveredPeople = v4->_discoveredPeople;
  if (!discoveredPeople)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v8 = v4->_discoveredPeople;
    v4->_discoveredPeople = v7;

    discoveredPeople = v4->_discoveredPeople;
    v5 = v12;
  }

  v9 = [v5 identifier];
  [(NSMutableDictionary *)discoveredPeople setObject:v12 forKeyedSubscript:v9];

  v10 = [(NSMutableDictionary *)v4->_discoveredPeople count];
  objc_sync_exit(v4);

  personFoundHandler = v4->_personFoundHandler;
  if (personFoundHandler)
  {
    personFoundHandler[2](personFoundHandler, v12);
  }

  [(RPPeopleDiscovery *)v4 _updatePeopleDensity:v10];
}

- (void)xpcPersonLost:(id)a3
{
  v9 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v4 = self;
  objc_sync_enter(v4);
  discoveredPeople = v4->_discoveredPeople;
  v6 = [v9 identifier];
  [(NSMutableDictionary *)discoveredPeople setObject:0 forKeyedSubscript:v6];

  v7 = [(NSMutableDictionary *)v4->_discoveredPeople count];
  objc_sync_exit(v4);

  personLostHandler = v4->_personLostHandler;
  if (personLostHandler)
  {
    personLostHandler[2](personLostHandler, v9);
  }

  [(RPPeopleDiscovery *)v4 _updatePeopleDensity:v7];
}

- (void)xpcPersonID:(id)a3 deviceID:(id)a4 updatedMeasurement:(id)a5
{
  v30 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v24 = a5;
  v10 = self;
  objc_sync_enter(v10);
  v23 = v8;
  v11 = [(NSMutableDictionary *)v10->_discoveredPeople objectForKeyedSubscript:v8];
  v12 = v11;
  if (!v11)
  {
    goto LABEL_11;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v13 = [v11 devices];
  v14 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (!v14)
  {
LABEL_10:

LABEL_11:
    objc_sync_exit(v10);
    goto LABEL_12;
  }

  v15 = *v26;
LABEL_4:
  v16 = 0;
  while (1)
  {
    if (*v26 != v15)
    {
      objc_enumerationMutation(v13);
    }

    v17 = *(*(&v25 + 1) + 8 * v16);
    v18 = [v17 identifier];
    v19 = [v18 isEqual:v9];

    if (v19)
    {
      break;
    }

    if (v14 == ++v16)
    {
      v14 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v14)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  [v17 setRelativeLocation:v24];

  v21 = (v10->_changeFlags & 8) == 0;
  objc_sync_exit(v10);

  if (v21)
  {
    goto LABEL_13;
  }

  v22 = _Block_copy(v10->_personChangedHandler);
  v10 = v22;
  if (v22)
  {
    (v22->_discoveredPeople)(v22, v12, 8);
  }

LABEL_12:

LABEL_13:
  v20 = *MEMORY[0x1E69E9840];
}

- (void)addAppleID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(RPPeopleDiscovery *)self _ensureXPCStarted];
  xpcCnx = self->_xpcCnx;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __43__RPPeopleDiscovery_addAppleID_completion___block_invoke;
  v16[3] = &unk_1E7C92DA8;
  v9 = v7;
  v17 = v9;
  v10 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v16];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __43__RPPeopleDiscovery_addAppleID_completion___block_invoke_2;
  v13[3] = &unk_1E7C93470;
  v14 = v6;
  v15 = v9;
  v11 = v9;
  v12 = v6;
  [v10 xpcPeopleAddAppleID:v12 completion:v13];
}

void __43__RPPeopleDiscovery_addAppleID_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (gLogCategory_RPPeopleDiscovery <= 90)
  {
    if (gLogCategory_RPPeopleDiscovery != -1 || (v4 = _LogCategory_Initialize(), v3 = v6, v4))
    {
      __43__RPPeopleDiscovery_addAppleID_completion___block_invoke_cold_1();
      v3 = v6;
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v6);
    v3 = v6;
  }
}

void __43__RPPeopleDiscovery_addAppleID_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = v3;
  if (v3)
  {
    if (gLogCategory_RPPeopleDiscovery > 90)
    {
      goto LABEL_11;
    }

    if (gLogCategory_RPPeopleDiscovery == -1)
    {
      v5 = _LogCategory_Initialize();
      v3 = v8;
      if (!v5)
      {
        goto LABEL_11;
      }
    }

    v7 = *(a1 + 32);
    LogPrintF();
LABEL_5:
    v3 = v8;
    goto LABEL_11;
  }

  if (gLogCategory_RPPeopleDiscovery <= 40)
  {
    if (gLogCategory_RPPeopleDiscovery != -1 || (v4 = _LogCategory_Initialize(), v3 = 0, v4))
    {
      __43__RPPeopleDiscovery_addAppleID_completion___block_invoke_2_cold_1(a1);
      goto LABEL_5;
    }
  }

LABEL_11:
  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v8);
    v3 = v8;
  }
}

- (void)removeAppleID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(RPPeopleDiscovery *)self _ensureXPCStarted];
  xpcCnx = self->_xpcCnx;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __46__RPPeopleDiscovery_removeAppleID_completion___block_invoke;
  v16[3] = &unk_1E7C92DA8;
  v9 = v7;
  v17 = v9;
  v10 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v16];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __46__RPPeopleDiscovery_removeAppleID_completion___block_invoke_2;
  v13[3] = &unk_1E7C93470;
  v14 = v6;
  v15 = v9;
  v11 = v9;
  v12 = v6;
  [v10 xpcPeopleRemoveAppleID:v12 completion:v13];
}

void __46__RPPeopleDiscovery_removeAppleID_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (gLogCategory_RPPeopleDiscovery <= 90)
  {
    if (gLogCategory_RPPeopleDiscovery != -1 || (v4 = _LogCategory_Initialize(), v3 = v6, v4))
    {
      __46__RPPeopleDiscovery_removeAppleID_completion___block_invoke_cold_1();
      v3 = v6;
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v6);
    v3 = v6;
  }
}

void __46__RPPeopleDiscovery_removeAppleID_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = v3;
  if (v3)
  {
    if (gLogCategory_RPPeopleDiscovery > 90)
    {
      goto LABEL_11;
    }

    if (gLogCategory_RPPeopleDiscovery == -1)
    {
      v5 = _LogCategory_Initialize();
      v3 = v8;
      if (!v5)
      {
        goto LABEL_11;
      }
    }

    v7 = *(a1 + 32);
    LogPrintF();
LABEL_5:
    v3 = v8;
    goto LABEL_11;
  }

  if (gLogCategory_RPPeopleDiscovery <= 40)
  {
    if (gLogCategory_RPPeopleDiscovery != -1 || (v4 = _LogCategory_Initialize(), v3 = 0, v4))
    {
      __46__RPPeopleDiscovery_removeAppleID_completion___block_invoke_2_cold_1(a1);
      goto LABEL_5;
    }
  }

LABEL_11:
  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v8);
    v3 = v8;
  }
}

@end