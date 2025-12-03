@interface SFBLEAdvertiser
- (NSString)description;
- (SFBLEAdvertiser)initWithType:(int64_t)type;
- (id)_preparePayloadNearbyAction:(int *)action;
- (id)_preparePayloadNearbyInfo:(int *)info;
- (int)_preparePayload:(BOOL)payload;
- (void)_activateWithCompletion:(id)completion;
- (void)_invalidate;
- (void)activateWithCompletion:(id)completion;
- (void)dealloc;
- (void)invalidate;
- (void)nearby:(id)nearby didConnectToPeer:(id)peer transport:(int64_t)transport error:(id)error;
- (void)nearby:(id)nearby didDeferAdvertisingType:(int64_t)type;
- (void)nearby:(id)nearby didFailToStartAdvertisingOfType:(int64_t)type withError:(id)error;
- (void)nearby:(id)nearby didStartAdvertisingType:(int64_t)type;
- (void)nearby:(id)nearby didStopAdvertisingType:(int64_t)type withError:(id)error;
- (void)nearbyDidUpdateState:(id)state;
- (void)setAdvertiseRate:(int64_t)rate;
- (void)setDispatchQueue:(id)queue;
- (void)setLePipeDevices:(id)devices;
- (void)setPayloadData:(id)data;
- (void)setPayloadFields:(id)fields;
@end

@implementation SFBLEAdvertiser

- (void)dealloc
{
  if (self->_startRetrier)
  {
    [SFBLEAdvertiser dealloc];
    goto LABEL_10;
  }

  if (self->_wpNearby)
  {
LABEL_10:
    v13 = [SFBLEAdvertiser dealloc];
    [(SFBLEAdvertiser *)v13 description];
    return;
  }

  advertiseStateChangedHandler = self->_advertiseStateChangedHandler;
  self->_advertiseStateChangedHandler = 0;

  bluetoothStateChangedHandler = self->_bluetoothStateChangedHandler;
  self->_bluetoothStateChangedHandler = 0;

  connectionHandler = self->_connectionHandler;
  self->_connectionHandler = 0;

  dispatchQueue = self->_dispatchQueue;
  if (dispatchQueue)
  {
    self->_dispatchQueue = 0;
  }

  invalidationHandler = self->_invalidationHandler;
  self->_invalidationHandler = 0;

  payloadDataCurrent = self->_payloadDataCurrent;
  self->_payloadDataCurrent = 0;

  payloadDataPrevious = self->_payloadDataPrevious;
  self->_payloadDataPrevious = 0;

  payloadFields = self->_payloadFields;
  self->_payloadFields = 0;

  payloadIdentifier = self->_payloadIdentifier;
  self->_payloadIdentifier = 0;

  ucat = self->_ucat;
  if (ucat)
  {
    if ((ucat->var3 & 0x40000) != 0)
    {
      LogCategory_Remove();
      self->_ucat = 0;
    }
  }

  v15.receiver = self;
  v15.super_class = SFBLEAdvertiser;
  [(SFBLEAdvertiser *)&v15 dealloc];
}

- (NSString)description
{
  v3 = self->_payloadType + 1;
  if (v3 > 0x12)
  {
    v4 = "?";
  }

  else
  {
    v4 = off_1E788DB38[v3];
  }

  v17 = v4;
  NSAppendPrintF();
  v5 = 0;
  v6 = v5;
  if (self->_invalidateCalled)
  {
    v18 = v5;
    NSAppendPrintF();
    v7 = v18;

    v6 = v7;
  }

  advertiseState = self->_advertiseState;
  if (advertiseState <= 3)
  {
    v9 = off_1E788DB18[advertiseState];
  }

  NSAppendPrintF();
  v10 = v6;

  advertiseRate = self->_advertiseRate;
  if (advertiseRate > 39)
  {
    if (advertiseRate > 59)
    {
      if (advertiseRate == 60)
      {
        v12 = "Aggressive";
        goto LABEL_28;
      }

      if (advertiseRate == 70)
      {
        v12 = "Max";
        goto LABEL_28;
      }
    }

    else
    {
      if (advertiseRate == 40)
      {
        v12 = "Normal";
        goto LABEL_28;
      }

      if (advertiseRate == 50)
      {
        v12 = "High";
        goto LABEL_28;
      }
    }

LABEL_27:
    v12 = "?";
    goto LABEL_28;
  }

  if (advertiseRate > 19)
  {
    if (advertiseRate == 20)
    {
      v12 = "LowBackground";
      goto LABEL_28;
    }

    if (advertiseRate == 30)
    {
      v12 = "Background";
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  if (!advertiseRate)
  {
    v12 = "Invalid";
    goto LABEL_28;
  }

  if (advertiseRate != 10)
  {
    goto LABEL_27;
  }

  v12 = "Infrequent";
LABEL_28:
  v16 = v12;
  NSAppendPrintF();
  v13 = v10;

  [(NSData *)self->_payloadDataCurrent bytes:v16];
  [(NSData *)self->_payloadDataCurrent length];
  [(NSData *)self->_payloadDataCurrent length];
  NSAppendPrintF();
  v14 = v13;

  return v13;
}

- (void)setAdvertiseRate:(int64_t)rate
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_activateCalled)
  {
    dispatchQueue = selfCopy->_dispatchQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __36__SFBLEAdvertiser_setAdvertiseRate___block_invoke;
    v6[3] = &unk_1E788B260;
    v6[4] = selfCopy;
    v6[5] = rate;
    dispatch_async(dispatchQueue, v6);
  }

  else
  {
    selfCopy->_advertiseRate = rate;
  }

  objc_sync_exit(selfCopy);
}

uint64_t __36__SFBLEAdvertiser_setAdvertiseRate___block_invoke(uint64_t result)
{
  v2 = *(result + 32);
  v1 = *(result + 40);
  if (v1 != *(v2 + 104))
  {
    *(v2 + 104) = v1;
    return [*(result + 32) _restartIfNeeded:1];
  }

  return result;
}

- (void)setDispatchQueue:(id)queue
{
  queueCopy = queue;
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
    obj->_dispatchQueue = queueCopy;

    objc_sync_exit(obj);
  }
}

- (void)setLePipeDevices:(id)devices
{
  v4 = [devices copy];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_activateCalled)
  {
    dispatchQueue = selfCopy->_dispatchQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __36__SFBLEAdvertiser_setLePipeDevices___block_invoke;
    v7[3] = &unk_1E788A658;
    v7[4] = selfCopy;
    v8 = v4;
    dispatch_async(dispatchQueue, v7);
  }

  else
  {
    objc_storeStrong(&selfCopy->_lePipeDevices, v4);
  }

  objc_sync_exit(selfCopy);
}

uint64_t __36__SFBLEAdvertiser_setLePipeDevices___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 152), *(a1 + 40));
  v2 = *(a1 + 32);

  return [v2 _restartIfNeeded:1];
}

- (void)setPayloadData:(id)data
{
  dataCopy = data;
  v5 = [dataCopy copy];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __34__SFBLEAdvertiser_setPayloadData___block_invoke;
  aBlock[3] = &unk_1E788A658;
  aBlock[4] = selfCopy;
  v7 = v5;
  v14 = v7;
  v8 = _Block_copy(aBlock);
  v9 = v8;
  if (selfCopy->_activateCalled)
  {
    dispatchQueue = selfCopy->_dispatchQueue;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __34__SFBLEAdvertiser_setPayloadData___block_invoke_2;
    v11[3] = &unk_1E788B318;
    v11[4] = selfCopy;
    v12 = v8;
    dispatch_async(dispatchQueue, v11);
  }

  else
  {
    v8[2](v8);
  }

  objc_sync_exit(selfCopy);
}

void __34__SFBLEAdvertiser_setPayloadData___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 32), *(a1 + 40));
  v2 = *(a1 + 32);
  v3 = *(v2 + 48);
  *(v2 + 48) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 56);
  *(v4 + 56) = 0;
}

uint64_t __34__SFBLEAdvertiser_setPayloadData___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 _restartIfNeeded:0];
}

- (void)setPayloadFields:(id)fields
{
  fieldsCopy = fields;
  v5 = [fieldsCopy copy];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __36__SFBLEAdvertiser_setPayloadFields___block_invoke;
  aBlock[3] = &unk_1E788A658;
  aBlock[4] = selfCopy;
  v7 = v5;
  v14 = v7;
  v8 = _Block_copy(aBlock);
  v9 = v8;
  if (selfCopy->_activateCalled)
  {
    dispatchQueue = selfCopy->_dispatchQueue;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __36__SFBLEAdvertiser_setPayloadFields___block_invoke_2;
    v11[3] = &unk_1E788B318;
    v11[4] = selfCopy;
    v12 = v8;
    dispatch_async(dispatchQueue, v11);
  }

  else
  {
    v8[2](v8);
  }

  objc_sync_exit(selfCopy);
}

void __36__SFBLEAdvertiser_setPayloadFields___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  *(v2 + 32) = 0;

  objc_storeStrong((*(a1 + 32) + 48), *(a1 + 40));
  v4 = *(a1 + 32);
  v5 = *(v4 + 56);
  *(v4 + 56) = 0;
}

uint64_t __36__SFBLEAdvertiser_setPayloadFields___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 _restartIfNeeded:0];
}

- (void)activateWithCompletion:(id)completion
{
  completionCopy = completion;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_activateCalled = 1;
  dispatchQueue = selfCopy->_dispatchQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __42__SFBLEAdvertiser_activateWithCompletion___block_invoke;
  v8[3] = &unk_1E788B210;
  v8[4] = selfCopy;
  v9 = completionCopy;
  v7 = completionCopy;
  dispatch_async(dispatchQueue, v8);

  objc_sync_exit(selfCopy);
}

- (void)_activateWithCompletion:(id)completion
{
  v19[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_invalidateCalled)
  {
    v16 = 4294960572;
    goto LABEL_18;
  }

  if (self->_startRetrier)
  {
    v16 = 4294960575;
    goto LABEL_18;
  }

  payloadType = self->_payloadType;
  if ((payloadType - 15) > 1)
  {
    var0 = self->_ucat->var0;
    if (var0 <= 90)
    {
      if (var0 != -1)
      {
LABEL_14:
        if ((payloadType + 1) <= 0x12)
        {
          v15 = off_1E788DB38[payloadType + 1];
        }

        LogPrintF();
        goto LABEL_17;
      }

      if (_LogCategory_Initialize())
      {
        ucat = self->_ucat;
        payloadType = self->_payloadType;
        goto LABEL_14;
      }
    }

LABEL_17:
    v16 = 4294960561;
LABEL_18:
    [(SFBLEAdvertiser *)completionCopy _activateWithCompletion:v16, &v18, v19, self];
    goto LABEL_9;
  }

  self->_wpNearbyType = payloadType != 15;
  if (!self->_wpNearby)
  {
    v6 = +[SFBLEClient sharedClient];
    v7 = [v6 addNearbyDelegate:self];
    wpNearby = self->_wpNearby;
    self->_wpNearby = v7;

    if (!self->_wpNearby)
    {
      goto LABEL_19;
    }
  }

  v9 = objc_alloc_init(MEMORY[0x1E6999520]);
  startRetrier = self->_startRetrier;
  self->_startRetrier = v9;

  v11 = self->_startRetrier;
  if (!v11)
  {
LABEL_19:
    v16 = 4294960567;
    goto LABEL_18;
  }

  [(CURetrier *)v11 setDispatchQueue:self->_dispatchQueue];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __43__SFBLEAdvertiser__activateWithCompletion___block_invoke;
  v17[3] = &unk_1E788B198;
  v17[4] = self;
  [(CURetrier *)self->_startRetrier setActionHandler:v17];
  [(CURetrier *)self->_startRetrier startDirect];
  if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }

LABEL_9:

  v12 = *MEMORY[0x1E69E9840];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__SFBLEAdvertiser_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_invalidateCalled)
  {
    return;
  }

  var0 = self->_ucat->var0;
  if (var0 <= 30)
  {
    if (var0 != -1)
    {
LABEL_4:
      LogPrintF();
      goto LABEL_6;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->_ucat;
      goto LABEL_4;
    }
  }

LABEL_6:
  self->_invalidateCalled = 1;
  [(CURetrier *)self->_startRetrier invalidateDirect];
  startRetrier = self->_startRetrier;
  self->_startRetrier = 0;

  payloadType = self->_payloadType;
  if (payloadType == 16)
  {
    wpNearby = self->_wpNearby;
    v8 = 1;
    goto LABEL_10;
  }

  if (payloadType == 15)
  {
    wpNearby = self->_wpNearby;
    v8 = 0;
LABEL_10:
    [(WPNearby *)wpNearby stopAdvertisingOfType:v8];
    v9 = self->_wpNearby;
    if (v9)
    {
      v10 = +[SFBLEClient sharedClient];
      [v10 removeNearbyDelegate:self];

      v9 = self->_wpNearby;
    }

    self->_wpNearby = 0;

    goto LABEL_13;
  }

  v12 = self->_ucat->var0;
  if (v12 > 90)
  {
    goto LABEL_13;
  }

  if (v12 == -1)
  {
    if (!_LogCategory_Initialize())
    {
      goto LABEL_13;
    }

    v19 = self->_ucat;
    payloadType = self->_payloadType;
  }

  if ((payloadType + 1) <= 0x12)
  {
    v13 = off_1E788DB38[payloadType + 1];
  }

  LogPrintF();
LABEL_13:
  v11 = self->_ucat->var0;
  if (v11 <= 30)
  {
    if (v11 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_21;
      }

      v21 = self->_ucat;
    }

    LogPrintF();
  }

LABEL_21:
  invalidationHandler = self->_invalidationHandler;
  if (invalidationHandler)
  {
    invalidationHandler[2](invalidationHandler, v5);
  }

  advertiseStateChangedHandler = self->_advertiseStateChangedHandler;
  self->_advertiseStateChangedHandler = 0;

  bluetoothStateChangedHandler = self->_bluetoothStateChangedHandler;
  self->_bluetoothStateChangedHandler = 0;

  connectionHandler = self->_connectionHandler;
  self->_connectionHandler = 0;

  v18 = self->_invalidationHandler;
  self->_invalidationHandler = 0;
}

- (int)_preparePayload:(BOOL)payload
{
  v13 = 0;
  if (self->_payloadDataCurrent)
  {
    goto LABEL_2;
  }

  payloadType = self->_payloadType;
  if (payloadType == 16)
  {
    v8 = [(SFBLEAdvertiser *)self _preparePayloadNearbyInfo:&v13];
LABEL_14:
    payloadDataCurrent = self->_payloadDataCurrent;
    self->_payloadDataCurrent = v8;

    result = v13;
    if (v13)
    {
      return result;
    }

    goto LABEL_2;
  }

  if (payloadType == 15)
  {
    v8 = [(SFBLEAdvertiser *)self _preparePayloadNearbyAction:&v13];
    goto LABEL_14;
  }

  var0 = self->_ucat->var0;
  if (var0 <= 60)
  {
    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_22;
      }

      ucat = self->_ucat;
    }

    LogPrintF();
  }

LABEL_22:
  v13 = -6757;
LABEL_2:
  if (!payload && self->_payloadDataPrevious && ([(NSData *)self->_payloadDataCurrent isEqual:?]& 1) != 0)
  {
    v5 = self->_ucat->var0;
    if (v5 <= 9)
    {
      if (v5 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          return -6757;
        }

        v11 = self->_ucat;
      }

      LogPrintF();
    }

    return -6757;
  }

  objc_storeStrong(&self->_payloadDataPrevious, self->_payloadDataCurrent);
  return 0;
}

- (id)_preparePayloadNearbyAction:(int *)action
{
  v46 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E695DF88]);
  payloadFields = self->_payloadFields;
  Int64Ranged = CFDictionaryGetInt64Ranged();
  v42 = Int64Ranged;
  v8 = self->_payloadFields;
  if (CFDictionaryGetInt64())
  {
    Int64Ranged |= 0x20u;
    v42 = Int64Ranged;
  }

  v9 = self->_payloadFields;
  if (CFDictionaryGetInt64())
  {
    Int64Ranged |= 0x40u;
    v42 = Int64Ranged;
  }

  v10 = self->_payloadFields;
  CFDataGetTypeID();
  v11 = CFDictionaryGetTypedValue();
  if ([v11 length] == 3)
  {
    v42 = Int64Ranged | 0x80;
  }

  v43 = 0;
  [v5 appendBytes:&v42 length:1];
  v12 = self->_payloadFields;
  v41 = CFDictionaryGetInt64Ranged();
  [v5 appendBytes:&v41 length:1];
  if (v42 < 0)
  {
    [v5 appendData:v11];
  }

  v13 = v41;
  if (v41 <= 0x24u && ((1 << v41) & 0x1200480A00) != 0 || v41 == 90 || v41 == 84)
  {
    v14 = self->_payloadFields;
    v15 = CFDictionaryGetInt64Ranged();
    v16 = self->_payloadFields;
    v43 = CFDictionaryGetInt64Ranged() & 0x1F | (32 * v15);
    [v5 appendBytes:&v43 length:1];
    v13 = v41;
  }

  if (v13 - 33 <= 0x39 && ((1 << (v13 - 33)) & 0x208000000000009) != 0 || v13 - 9 < 3)
  {
    v17 = self->_payloadFields;
    LOBYTE(v44) = CFDictionaryGetInt64Ranged();
    [v5 appendBytes:&v44 length:1];
    v13 = v41;
  }

  if (v13 <= 0x2B && (((1 << v13) & 0x81100000242) != 0 || ((1 << v13) & 0x200000800) != 0) || v13 == 84 || v13 == 90)
  {
    LOBYTE(v44) = 13;
    [v5 appendBytes:&v44 length:1];
    v13 = v41;
  }

  if (v13 == 8)
  {
    v18 = self->_payloadFields;
    CFDataGetTypeID();
    v19 = CFDictionaryGetTypedValue();
    v20 = [v19 length];
    if (v20)
    {
      v21 = v20;
      v45 = 0;
      v44 = 0;
      [v19 bytes];
      __memcpy_chk();
      if (v21 <= 8)
      {
        bzero(&v44 + v21, 9 - v21);
      }

      [v5 appendBytes:&v44 length:9];
    }

    v13 = v41;
    if (v41 == 8)
    {
      v22 = self->_payloadFields;
      CFDataGetTypeID();
      v23 = CFDictionaryGetTypedValue();
      if ([v23 length] == 3)
      {
        [v5 appendData:v23];
      }

      v13 = v41;
    }
  }

  if (v13 == 10)
  {
    v24 = self->_payloadFields;
    Int64 = CFDictionaryGetInt64();
    v43 = (Int64 >> 11) & 0x40 | ((Int64 & 0xFE) >> 1) & 7 | (Int64 >> 14) & 0x10 | (Int64 >> 11) & 0x20 | (Int64 >> 1) & 8 | (Int64 >> 14) & 0x80;
    [v5 appendBytes:&v43 length:1];
    v13 = v41;
    if (v41 == 10)
    {
      LOBYTE(v44) = 13;
      [v5 appendBytes:&v44 length:1];
      v13 = v41;
    }
  }

  LOBYTE(v44) = 0;
  if (v13 - 36 <= 0x36 && ((1 << (v13 - 36)) & 0x40000000008001) != 0 || v13 == 9)
  {
    v26 = self->_payloadFields;
    LOBYTE(v44) = CFDictionaryGetInt64Ranged();
    [v5 appendBytes:&v44 length:1];
    if ((v44 & 4) != 0)
    {
      v27 = self->_payloadFields;
      CFDataGetTypeID();
      v28 = CFDictionaryGetTypedValue();
      if (v28)
      {
        [v5 appendData:v28];
      }
    }
  }

  v29 = v41;
  if (v41 == 1)
  {
    v30 = self->_payloadFields;
    v40 = CFDictionaryGetInt64Ranged();
    [v5 appendBytes:&v40 length:1];
    v29 = v41;
  }

  if (v29 == 90)
  {
    v31 = [(NSDictionary *)self->_payloadFields objectForKeyedSubscript:@"dpp"];
    v32 = v31;
    if (v31)
    {
      unsignedCharValue = [v31 unsignedCharValue];
    }

    else
    {
      unsignedCharValue = 0;
    }

    v40 = unsignedCharValue;
    var0 = self->_ucat->var0;
    if (var0 > 40)
    {
      goto LABEL_54;
    }

    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_54;
      }

      ucat = self->_ucat;
    }

    v39 = unsignedCharValue;
    LogPrintF();
LABEL_54:
    [v5 appendBytes:&v40 length:{1, v39}];
  }

  if (action)
  {
    *action = 0;
  }

  v35 = v5;

  v36 = *MEMORY[0x1E69E9840];

  return v35;
}

- (id)_preparePayloadNearbyInfo:(int *)info
{
  v5 = objc_alloc_init(MEMORY[0x1E695DF88]);
  payloadFields = self->_payloadFields;
  Int64Ranged = CFDictionaryGetInt64Ranged();
  v32 = Int64Ranged;
  v8 = self->_payloadFields;
  if (CFDictionaryGetInt64())
  {
    Int64Ranged |= 0x10u;
    v32 = Int64Ranged;
  }

  v9 = self->_payloadFields;
  if (CFDictionaryGetInt64())
  {
    Int64Ranged |= 0x20u;
    v32 = Int64Ranged;
  }

  v10 = self->_payloadFields;
  if (CFDictionaryGetInt64())
  {
    v32 = Int64Ranged | 0x40;
  }

  [v5 appendBytes:&v32 length:1];
  v31 = 0;
  v11 = self->_payloadFields;
  if (CFDictionaryGetInt64())
  {
    v12 = 0x80;
    v31 = 0x80;
  }

  else
  {
    v12 = 0;
  }

  v13 = self->_payloadFields;
  if (CFDictionaryGetInt64())
  {
    v12 |= 0x40u;
    v31 = v12;
  }

  v14 = self->_payloadFields;
  if (CFDictionaryGetInt64())
  {
    v12 |= 8u;
    v31 = v12;
  }

  v15 = self->_payloadFields;
  if (CFDictionaryGetInt64())
  {
    v12 |= 0x20u;
    v31 = v12;
  }

  v16 = self->_payloadFields;
  if (CFDictionaryGetInt64())
  {
    v12 |= 4u;
    v31 = v12;
  }

  v17 = self->_payloadFields;
  CFDataGetTypeID();
  v18 = CFDictionaryGetTypedValue();
  if ([v18 length] == 3)
  {
    v12 |= 0x10u;
    v31 = v12;
  }

  v19 = self->_payloadFields;
  CFDataGetTypeID();
  v20 = CFDictionaryGetTypedValue();
  if ([v20 length])
  {
    v12 |= 2u;
    v31 = v12;
  }

  v30 = 0;
  v21 = self->_payloadFields;
  if (CFDictionaryGetInt64())
  {
    v22 = 2;
    v30 = 2;
  }

  else
  {
    v22 = 0;
  }

  v23 = self->_payloadFields;
  if (CFDictionaryGetInt64())
  {
    v22 |= 4u;
    v30 = v22;
  }

  v24 = self->_payloadFields;
  if ((CFDictionaryGetInt64Ranged() & 0x800) != 0)
  {
    v22 |= 0xFFFFFF80;
    v30 = v22;
  }

  v25 = self->_payloadFields;
  if (CFDictionaryGetInt64Ranged() == 1)
  {
    v22 |= 1u;
    v30 = v22;
  }

  v26 = self->_payloadFields;
  CFDataGetTypeID();
  v27 = CFDictionaryGetTypedValue();
  if ([v27 length])
  {
    v30 = v22 | (16 * (*[v27 bytes] & 7)) | 8;
  }

  else if (!v22)
  {
    goto LABEL_35;
  }

  v31 = v12 | 1;
LABEL_35:
  [v5 appendBytes:&v31 length:1];
  v28 = v31;
  if ((v31 & 0x10) != 0)
  {
    [v5 appendData:v18];
    v28 = v31;
    if ((v31 & 2) == 0)
    {
LABEL_37:
      if ((v28 & 1) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_45;
    }
  }

  else if ((v31 & 2) == 0)
  {
    goto LABEL_37;
  }

  [v5 appendBytes:objc_msgSend(v20 length:{"bytes"), 1}];
  if ((v31 & 1) == 0)
  {
LABEL_38:
    if (!info)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

LABEL_45:
  [v5 appendBytes:&v30 length:1];
  if (info)
  {
LABEL_39:
    *info = 0;
  }

LABEL_40:

  return v5;
}

_BYTE *__59__SFBLEAdvertiser_nearby_didStopAdvertisingType_withError___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if ((result[24] & 1) == 0)
  {
    return [result _restartIfNeeded:1];
  }

  return result;
}

- (SFBLEAdvertiser)initWithType:(int64_t)type
{
  v13 = 0;
  v12 = 0;
  v11.receiver = self;
  v11.super_class = SFBLEAdvertiser;
  v4 = [(SFBLEAdvertiser *)&v11 init];
  v5 = v4;
  if (!v4)
  {
    goto LABEL_6;
  }

  v4->_advertiseRate = 40;
  v6 = SFMainQueue(v4);
  dispatchQueue = v5->_dispatchQueue;
  v5->_dispatchQueue = v6;

  v5->_payloadType = type;
  if ((type + 1) <= 0x12)
  {
    v8 = off_1E788DB38[type + 1];
  }

  ASPrintF();
  if (v13 && (v5->_ucat = LogCategoryCreateEx(), free(v13), !v12))
  {
    v9 = v5;
  }

  else
  {
LABEL_6:
    v9 = 0;
  }

  return v9;
}

- (void)nearbyDidUpdateState:(id)state
{
  stateCopy = state;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  wpNearby = self->_wpNearby;
  if (wpNearby)
  {
    v5 = wpNearby == stateCopy;
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
    goto LABEL_17;
  }

  state = [(WPNearby *)stateCopy state];
  OUTLINED_FUNCTION_0_11();
  if (v7 <= 40)
  {
    if (v7 != -1)
    {
LABEL_8:
      if (state <= 5)
      {
        v8 = off_1E788DBD0[state];
      }

      LogPrintF();
      goto LABEL_13;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->_ucat;
      goto LABEL_8;
    }
  }

LABEL_13:
  if (state == 3)
  {
    [(SFBLEAdvertiser *)self _restartIfNeeded:1];
  }

  bluetoothStateChangedHandler = self->_bluetoothStateChangedHandler;
  if (bluetoothStateChangedHandler)
  {
    v11 = OUTLINED_FUNCTION_2_2(bluetoothStateChangedHandler);
    v12(v11, state);
  }

LABEL_17:
}

- (void)nearby:(id)nearby didStartAdvertisingType:(int64_t)type
{
  dispatchQueue = self->_dispatchQueue;
  nearbyCopy = nearby;
  dispatch_assert_queue_V2(dispatchQueue);
  wpNearby = self->_wpNearby;

  if (wpNearby)
  {
    v9 = wpNearby == nearbyCopy;
  }

  else
  {
    v9 = 0;
  }

  if (!v9 || self->_wpNearbyType != type)
  {
    return;
  }

  advertiseState = self->_advertiseState;
  OUTLINED_FUNCTION_0_11();
  if (v12 == 2)
  {
    if (v11 <= 50)
    {
      if (v11 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_17;
        }

        ucat = self->_ucat;
      }

      goto LABEL_13;
    }
  }

  else if (v11 <= 20)
  {
    if (v11 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_17;
      }

      v16 = self->_ucat;
    }

LABEL_13:
    LogPrintF();
  }

LABEL_17:
  if (self->_advertiseState != 1)
  {
    self->_advertiseState = 1;
    advertiseStateChangedHandler = self->_advertiseStateChangedHandler;
    if (advertiseStateChangedHandler)
    {
      v15 = *(advertiseStateChangedHandler + 2);

      v15();
    }
  }
}

- (void)nearby:(id)nearby didStopAdvertisingType:(int64_t)type withError:(id)error
{
  errorCopy = error;
  dispatchQueue = self->_dispatchQueue;
  nearbyCopy = nearby;
  dispatch_assert_queue_V2(dispatchQueue);
  wpNearby = self->_wpNearby;

  if (wpNearby)
  {
    v12 = wpNearby == nearbyCopy;
  }

  else
  {
    v12 = 0;
  }

  if (!v12 || self->_wpNearbyType != type)
  {
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_1_8();
  if (v14 ^ v15 | v12)
  {
    if (v13 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_12;
      }

      ucat = self->_ucat;
    }

    v25 = errorCopy;
    LogPrintF();
  }

LABEL_12:
  if (self->_advertiseState)
  {
    self->_advertiseState = 0;
    advertiseStateChangedHandler = self->_advertiseStateChangedHandler;
    if (advertiseStateChangedHandler)
    {
      v17 = OUTLINED_FUNCTION_2_2(advertiseStateChangedHandler);
      v18(v17, 0);
    }
  }

  if ([errorCopy code] == 28)
  {
    v19 = arc4random() % 0x123 + 10;
    OUTLINED_FUNCTION_1_8();
    if (!(v14 ^ v15 | v12))
    {
      goto LABEL_21;
    }

    if (v20 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_21;
      }

      v24 = self->_ucat;
    }

    LogPrintF();
LABEL_21:
    v21 = dispatch_time(0, 1000000 * v19);
    v22 = self->_dispatchQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __59__SFBLEAdvertiser_nearby_didStopAdvertisingType_withError___block_invoke;
    block[3] = &unk_1E788B198;
    block[4] = self;
    dispatch_after(v21, v22, block);
  }

LABEL_22:
}

- (void)nearby:(id)nearby didDeferAdvertisingType:(int64_t)type
{
  dispatchQueue = self->_dispatchQueue;
  nearbyCopy = nearby;
  dispatch_assert_queue_V2(dispatchQueue);
  wpNearby = self->_wpNearby;

  if (wpNearby)
  {
    v9 = wpNearby == nearbyCopy;
  }

  else
  {
    v9 = 0;
  }

  if (!v9 || self->_wpNearbyType != type || self->_advertiseState == 2)
  {
    return;
  }

  OUTLINED_FUNCTION_0_11();
  if (v10 <= 50)
  {
    if (v10 != -1)
    {
LABEL_10:
      LogPrintF();
      goto LABEL_12;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->_ucat;
      goto LABEL_10;
    }
  }

LABEL_12:
  self->_advertiseState = 2;
  advertiseStateChangedHandler = self->_advertiseStateChangedHandler;
  if (advertiseStateChangedHandler)
  {
    v12 = *(advertiseStateChangedHandler + 2);

    v12();
  }
}

- (void)nearby:(id)nearby didFailToStartAdvertisingOfType:(int64_t)type withError:(id)error
{
  errorCopy = error;
  dispatchQueue = self->_dispatchQueue;
  nearbyCopy = nearby;
  dispatch_assert_queue_V2(dispatchQueue);
  wpNearby = self->_wpNearby;

  if (wpNearby)
  {
    v11 = wpNearby == nearbyCopy;
  }

  else
  {
    v11 = 0;
  }

  if (!v11 || self->_wpNearbyType != type)
  {
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_0_11();
  if (v12 <= 50)
  {
    if (v12 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_11;
      }

      ucat = self->_ucat;
    }

    v17 = errorCopy;
    LogPrintF();
  }

LABEL_11:
  [(CURetrier *)self->_startRetrier failedDirect];
  if (self->_advertiseState != 3)
  {
    self->_advertiseState = 3;
    advertiseStateChangedHandler = self->_advertiseStateChangedHandler;
    if (advertiseStateChangedHandler)
    {
      v14 = OUTLINED_FUNCTION_2_2(advertiseStateChangedHandler);
      v15(v14, 3);
    }
  }

LABEL_14:
}

- (void)nearby:(id)nearby didConnectToPeer:(id)peer transport:(int64_t)transport error:(id)error
{
  peerCopy = peer;
  errorCopy = error;
  dispatchQueue = self->_dispatchQueue;
  nearbyCopy = nearby;
  dispatch_assert_queue_V2(dispatchQueue);
  wpNearby = self->_wpNearby;

  if (!wpNearby || wpNearby != nearbyCopy || !self->_connectionHandler)
  {
    goto LABEL_10;
  }

  var0 = self->_ucat->var0;
  if (var0 <= 20)
  {
    if (var0 != -1)
    {
LABEL_6:
      LogPrintF();
      goto LABEL_8;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->_ucat;
      goto LABEL_6;
    }
  }

LABEL_8:
  if (!errorCopy)
  {
    v14 = objc_alloc_init(SFBLEDevice);
    [(SFBLEDevice *)v14 setIdentifier:peerCopy];
    v15 = OUTLINED_FUNCTION_2_2(self->_connectionHandler);
    v16(v15, v14);

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_1_8();
  if (v19 ^ v20 | v18)
  {
    if (v17 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_10;
      }

      v22 = self->_ucat;
    }

    LogPrintF();
  }

LABEL_10:
}

- (void)_activateWithCompletion:(void *)a3 .cold.1(uint64_t a1, uint64_t a2, void *a3, __CFString **a4, uint64_t a5)
{
  v9 = **(a5 + 96);
  if (v9 <= 60)
  {
    if (v9 != -1)
    {
LABEL_3:
      v20 = a2;
      LogPrintF();
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      v19 = *(a5 + 96);
      goto LABEL_3;
    }
  }

LABEL_5:
  if (a1)
  {
    v11 = MEMORY[0x1E696ABC0];
    v12 = *MEMORY[0x1E696A768];
    v13 = a2;
    *a3 = *MEMORY[0x1E696A578];
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
    v15 = v14;
    v16 = @"?";
    if (v14)
    {
      v16 = v14;
    }

    *a4 = v16;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:a4 forKeys:a3 count:{1, v20}];
    v18 = [v11 errorWithDomain:v12 code:v13 userInfo:v17];
    (*(a1 + 16))(a1, v18);
  }
}

@end