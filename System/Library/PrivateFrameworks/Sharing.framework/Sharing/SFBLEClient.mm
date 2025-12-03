@interface SFBLEClient
+ (id)sharedClient;
- (SFBLEClient)init;
- (id)addAirDropDelegate:(id)delegate;
- (id)addNearbyDelegate:(id)delegate;
- (id)addPairingDelegate:(id)delegate;
- (void)awdl:(id)awdl failedToStartAdvertisingWithError:(id)error;
- (void)awdl:(id)awdl failedToStartScanningWithError:(id)error;
- (void)awdl:(id)awdl foundDevice:(id)device rssi:(id)rssi;
- (void)awdlAdvertisingPending:(id)pending;
- (void)awdlDidUpdateState:(id)state;
- (void)awdlStartedAdvertising:(id)advertising;
- (void)awdlStartedScanning:(id)scanning;
- (void)nearby:(id)nearby didConnectToPeer:(id)peer transport:(int64_t)transport error:(id)error;
- (void)nearby:(id)nearby didDeferAdvertisingType:(int64_t)type;
- (void)nearby:(id)nearby didDisconnectFromPeer:(id)peer error:(id)error;
- (void)nearby:(id)nearby didDiscoverType:(int64_t)type withData:(id)data fromPeer:(id)peer peerInfo:(id)info;
- (void)nearby:(id)nearby didFailToStartAdvertisingOfType:(int64_t)type withError:(id)error;
- (void)nearby:(id)nearby didFailToStartScanningForType:(int64_t)type WithError:(id)error;
- (void)nearby:(id)nearby didLosePeer:(id)peer type:(int64_t)type;
- (void)nearby:(id)nearby didReceiveData:(id)data fromPeer:(id)peer;
- (void)nearby:(id)nearby didSendData:(id)data toPeer:(id)peer error:(id)error;
- (void)nearby:(id)nearby didStartAdvertisingType:(int64_t)type;
- (void)nearby:(id)nearby didStartScanningForType:(int64_t)type;
- (void)nearby:(id)nearby didStopAdvertisingType:(int64_t)type withError:(id)error;
- (void)nearbyDidChangeBluetoothBandwidthState:(id)state;
- (void)nearbyDidUpdateState:(id)state;
- (void)pairing:(id)pairing failedToStartScanningWithError:(id)error;
- (void)pairing:(id)pairing foundDevice:(id)device payload:(id)payload rssi:(id)rssi peerInfo:(id)info;
- (void)pairingDidUpdateState:(id)state;
- (void)pairingStartedScanning:(id)scanning;
- (void)pairingStoppedScanning:(id)scanning;
- (void)removeAirDropDelegate:(id)delegate;
- (void)removeNearbyDelegate:(id)delegate;
- (void)removePairingDelegate:(id)delegate;
@end

@implementation SFBLEClient

+ (id)sharedClient
{
  if (sharedClient_sOnce != -1)
  {
    +[SFBLEClient sharedClient];
  }

  v3 = sharedClient_sClient;

  return v3;
}

void __27__SFBLEClient_sharedClient__block_invoke()
{
  v0 = objc_alloc_init(SFBLEClient);
  v1 = sharedClient_sClient;
  sharedClient_sClient = v0;
}

- (SFBLEClient)init
{
  v6.receiver = self;
  v6.super_class = SFBLEClient;
  v2 = [(SFBLEClient *)&v6 init];
  if (v2)
  {
    if (CFPrefs_GetInt64())
    {
      SFHighPriorityQueue();
    }

    else
    {
      SFMainQueue(0);
    }
    v3 = ;
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;
  }

  return v2;
}

- (id)addAirDropDelegate:(id)delegate
{
  delegateCopy = delegate;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_wpAirDrop)
  {
    v6 = [objc_alloc(getWPAWDLClass()) initWithDelegate:selfCopy queue:selfCopy->_dispatchQueue];
    wpAirDrop = selfCopy->_wpAirDrop;
    selfCopy->_wpAirDrop = v6;
  }

  wpAirDropDelegates = selfCopy->_wpAirDropDelegates;
  if (!wpAirDropDelegates)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v10 = selfCopy->_wpAirDropDelegates;
    selfCopy->_wpAirDropDelegates = v9;

    wpAirDropDelegates = selfCopy->_wpAirDropDelegates;
  }

  [(NSMutableSet *)wpAirDropDelegates addObject:delegateCopy];
  v11 = selfCopy->_wpAirDrop;
  objc_sync_exit(selfCopy);

  return v11;
}

- (void)removeAirDropDelegate:(id)delegate
{
  delegateCopy = delegate;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableSet *)selfCopy->_wpAirDropDelegates removeObject:delegateCopy];
  if (![(NSMutableSet *)selfCopy->_wpAirDropDelegates count])
  {
    if (gLogCategory_SFBLEClient <= 30 && (gLogCategory_SFBLEClient != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    [(WPAWDL *)selfCopy->_wpAirDrop invalidate];
    wpAirDrop = selfCopy->_wpAirDrop;
    selfCopy->_wpAirDrop = 0;
  }

  objc_sync_exit(selfCopy);
}

- (void)awdlDidUpdateState:(id)state
{
  v20 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  allObjects = [(NSMutableSet *)selfCopy->_wpAirDropDelegates allObjects];
  v7 = [allObjects countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(allObjects);
        }

        v10 = *(*(&v15 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          dispatchQueue = [v10 dispatchQueue];
          if (dispatchQueue == selfCopy->_dispatchQueue)
          {
            [v10 awdlDidUpdateState:stateCopy];
          }

          else
          {
            v13[0] = MEMORY[0x1E69E9820];
            v13[1] = 3221225472;
            v13[2] = __34__SFBLEClient_awdlDidUpdateState___block_invoke;
            v13[3] = &unk_1E788A658;
            v13[4] = v10;
            v14 = stateCopy;
            dispatch_async(dispatchQueue, v13);
          }
        }

        else
        {
          dispatchQueue = 0;
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [allObjects countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  objc_sync_exit(selfCopy);
  v12 = *MEMORY[0x1E69E9840];
}

- (void)awdlStartedAdvertising:(id)advertising
{
  v20 = *MEMORY[0x1E69E9840];
  advertisingCopy = advertising;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  allObjects = [(NSMutableSet *)selfCopy->_wpAirDropDelegates allObjects];
  v7 = [allObjects countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(allObjects);
        }

        v10 = *(*(&v15 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          dispatchQueue = [v10 dispatchQueue];
          if (dispatchQueue == selfCopy->_dispatchQueue)
          {
            [v10 awdlStartedAdvertising:advertisingCopy];
          }

          else
          {
            v13[0] = MEMORY[0x1E69E9820];
            v13[1] = 3221225472;
            v13[2] = __38__SFBLEClient_awdlStartedAdvertising___block_invoke;
            v13[3] = &unk_1E788A658;
            v13[4] = v10;
            v14 = advertisingCopy;
            dispatch_async(dispatchQueue, v13);
          }
        }

        else
        {
          dispatchQueue = 0;
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [allObjects countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  objc_sync_exit(selfCopy);
  v12 = *MEMORY[0x1E69E9840];
}

- (void)awdlAdvertisingPending:(id)pending
{
  v20 = *MEMORY[0x1E69E9840];
  pendingCopy = pending;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  allObjects = [(NSMutableSet *)selfCopy->_wpAirDropDelegates allObjects];
  v7 = [allObjects countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(allObjects);
        }

        v10 = *(*(&v15 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          dispatchQueue = [v10 dispatchQueue];
          if (dispatchQueue == selfCopy->_dispatchQueue)
          {
            [v10 awdlAdvertisingPending:pendingCopy];
          }

          else
          {
            v13[0] = MEMORY[0x1E69E9820];
            v13[1] = 3221225472;
            v13[2] = __38__SFBLEClient_awdlAdvertisingPending___block_invoke;
            v13[3] = &unk_1E788A658;
            v13[4] = v10;
            v14 = pendingCopy;
            dispatch_async(dispatchQueue, v13);
          }
        }

        else
        {
          dispatchQueue = 0;
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [allObjects countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  objc_sync_exit(selfCopy);
  v12 = *MEMORY[0x1E69E9840];
}

- (void)awdl:(id)awdl failedToStartAdvertisingWithError:(id)error
{
  v26 = *MEMORY[0x1E69E9840];
  awdlCopy = awdl;
  errorCopy = error;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  allObjects = [(NSMutableSet *)selfCopy->_wpAirDropDelegates allObjects];
  v10 = [allObjects countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = *v22;
    v16 = v18;
    do
    {
      v12 = 0;
      do
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(allObjects);
        }

        v13 = *(*(&v21 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          dispatchQueue = [v13 dispatchQueue];
          if (dispatchQueue == selfCopy->_dispatchQueue)
          {
            [v13 awdl:awdlCopy failedToStartAdvertisingWithError:errorCopy];
          }

          else
          {
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            v18[0] = __54__SFBLEClient_awdl_failedToStartAdvertisingWithError___block_invoke;
            v18[1] = &unk_1E788BD88;
            v18[2] = v13;
            v19 = awdlCopy;
            v20 = errorCopy;
            dispatch_async(dispatchQueue, block);
          }
        }

        else
        {
          dispatchQueue = 0;
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [allObjects countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  objc_sync_exit(selfCopy);
  v15 = *MEMORY[0x1E69E9840];
}

- (void)awdlStartedScanning:(id)scanning
{
  v20 = *MEMORY[0x1E69E9840];
  scanningCopy = scanning;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  allObjects = [(NSMutableSet *)selfCopy->_wpAirDropDelegates allObjects];
  v7 = [allObjects countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(allObjects);
        }

        v10 = *(*(&v15 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          dispatchQueue = [v10 dispatchQueue];
          if (dispatchQueue == selfCopy->_dispatchQueue)
          {
            [v10 awdlStartedScanning:scanningCopy];
          }

          else
          {
            v13[0] = MEMORY[0x1E69E9820];
            v13[1] = 3221225472;
            v13[2] = __35__SFBLEClient_awdlStartedScanning___block_invoke;
            v13[3] = &unk_1E788A658;
            v13[4] = v10;
            v14 = scanningCopy;
            dispatch_async(dispatchQueue, v13);
          }
        }

        else
        {
          dispatchQueue = 0;
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [allObjects countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  objc_sync_exit(selfCopy);
  v12 = *MEMORY[0x1E69E9840];
}

- (void)awdl:(id)awdl failedToStartScanningWithError:(id)error
{
  v26 = *MEMORY[0x1E69E9840];
  awdlCopy = awdl;
  errorCopy = error;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  allObjects = [(NSMutableSet *)selfCopy->_wpAirDropDelegates allObjects];
  v10 = [allObjects countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = *v22;
    v16 = v18;
    do
    {
      v12 = 0;
      do
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(allObjects);
        }

        v13 = *(*(&v21 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          dispatchQueue = [v13 dispatchQueue];
          if (dispatchQueue == selfCopy->_dispatchQueue)
          {
            [v13 awdl:awdlCopy failedToStartScanningWithError:errorCopy];
          }

          else
          {
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            v18[0] = __51__SFBLEClient_awdl_failedToStartScanningWithError___block_invoke;
            v18[1] = &unk_1E788BD88;
            v18[2] = v13;
            v19 = awdlCopy;
            v20 = errorCopy;
            dispatch_async(dispatchQueue, block);
          }
        }

        else
        {
          dispatchQueue = 0;
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [allObjects countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  objc_sync_exit(selfCopy);
  v15 = *MEMORY[0x1E69E9840];
}

- (void)awdl:(id)awdl foundDevice:(id)device rssi:(id)rssi
{
  v28 = *MEMORY[0x1E69E9840];
  awdlCopy = awdl;
  deviceCopy = device;
  rssiCopy = rssi;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  allObjects = [(NSMutableSet *)selfCopy->_wpAirDropDelegates allObjects];
  v11 = [allObjects countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v11)
  {
    v12 = *v24;
    do
    {
      v13 = 0;
      do
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(allObjects);
        }

        v14 = *(*(&v23 + 1) + 8 * v13);
        if (objc_opt_respondsToSelector())
        {
          dispatchQueue = [v14 dispatchQueue];
          if (dispatchQueue == selfCopy->_dispatchQueue)
          {
            [v14 awdl:awdlCopy foundDevice:deviceCopy rssi:rssiCopy];
          }

          else
          {
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __37__SFBLEClient_awdl_foundDevice_rssi___block_invoke;
            block[3] = &unk_1E788B9C0;
            block[4] = v14;
            v20 = awdlCopy;
            v21 = deviceCopy;
            v22 = rssiCopy;
            dispatch_async(dispatchQueue, block);
          }
        }

        else
        {
          dispatchQueue = 0;
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [allObjects countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v11);
  }

  objc_sync_exit(selfCopy);
  v16 = *MEMORY[0x1E69E9840];
}

- (id)addNearbyDelegate:(id)delegate
{
  delegateCopy = delegate;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_wpNearby)
  {
    Int64 = CFPrefs_GetInt64();
    IsVirtualMachine = SFDeviceIsVirtualMachine();
    if (Int64)
    {
      v8 = 0;
    }

    else
    {
      v8 = IsVirtualMachine;
    }

    if (v8)
    {
      WPNearbyClass = WPBonjourNearBy;
    }

    else
    {
      WPNearbyClass = getWPNearbyClass();
    }

    v10 = [[WPNearbyClass alloc] initWithDelegate:selfCopy queue:selfCopy->_dispatchQueue];
    wpNearby = selfCopy->_wpNearby;
    selfCopy->_wpNearby = v10;
  }

  wpNearbyDelegates = selfCopy->_wpNearbyDelegates;
  if (!wpNearbyDelegates)
  {
    v13 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v14 = selfCopy->_wpNearbyDelegates;
    selfCopy->_wpNearbyDelegates = v13;

    wpNearbyDelegates = selfCopy->_wpNearbyDelegates;
  }

  [(NSMutableSet *)wpNearbyDelegates addObject:delegateCopy];
  v15 = selfCopy->_wpNearby;
  objc_sync_exit(selfCopy);

  return v15;
}

- (void)removeNearbyDelegate:(id)delegate
{
  delegateCopy = delegate;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableSet *)selfCopy->_wpNearbyDelegates removeObject:delegateCopy];
  if (![(NSMutableSet *)selfCopy->_wpNearbyDelegates count])
  {
    if (gLogCategory_SFBLEClient <= 30 && (gLogCategory_SFBLEClient != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    [(WPNearby *)selfCopy->_wpNearby invalidate];
    wpNearby = selfCopy->_wpNearby;
    selfCopy->_wpNearby = 0;
  }

  objc_sync_exit(selfCopy);
}

- (void)nearbyDidChangeBluetoothBandwidthState:(id)state
{
  v20 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  allObjects = [(NSMutableSet *)selfCopy->_wpNearbyDelegates allObjects];
  v7 = [allObjects countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(allObjects);
        }

        v10 = *(*(&v15 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          dispatchQueue = [v10 dispatchQueue];
          if (dispatchQueue == selfCopy->_dispatchQueue)
          {
            [v10 nearbyDidChangeBluetoothBandwidthState:stateCopy];
          }

          else
          {
            v13[0] = MEMORY[0x1E69E9820];
            v13[1] = 3221225472;
            v13[2] = __54__SFBLEClient_nearbyDidChangeBluetoothBandwidthState___block_invoke;
            v13[3] = &unk_1E788A658;
            v13[4] = v10;
            v14 = stateCopy;
            dispatch_async(dispatchQueue, v13);
          }
        }

        else
        {
          dispatchQueue = 0;
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [allObjects countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  objc_sync_exit(selfCopy);
  v12 = *MEMORY[0x1E69E9840];
}

- (void)nearbyDidUpdateState:(id)state
{
  v24[1] = *MEMORY[0x1E69E9840];
  stateCopy = state;
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v23 = @"SFBluetoothNotificationKeyState";
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(stateCopy, "state")}];
  v24[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
  [defaultCenter postNotificationName:@"SFBluetoothNotificationNameStateChanged" object:self userInfo:v7];

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  allObjects = [(NSMutableSet *)selfCopy->_wpNearbyDelegates allObjects];
  v10 = [allObjects countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = *v19;
    do
    {
      v12 = 0;
      do
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(allObjects);
        }

        v13 = *(*(&v18 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          dispatchQueue = [v13 dispatchQueue];
          if (dispatchQueue == selfCopy->_dispatchQueue)
          {
            [v13 nearbyDidUpdateState:stateCopy];
          }

          else
          {
            v16[0] = MEMORY[0x1E69E9820];
            v16[1] = 3221225472;
            v16[2] = __36__SFBLEClient_nearbyDidUpdateState___block_invoke;
            v16[3] = &unk_1E788A658;
            v16[4] = v13;
            v17 = stateCopy;
            dispatch_async(dispatchQueue, v16);
          }
        }

        else
        {
          dispatchQueue = 0;
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [allObjects countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  objc_sync_exit(selfCopy);
  v15 = *MEMORY[0x1E69E9840];
}

- (void)nearby:(id)nearby didStartAdvertisingType:(int64_t)type
{
  v25 = *MEMORY[0x1E69E9840];
  nearbyCopy = nearby;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  allObjects = [(NSMutableSet *)selfCopy->_wpNearbyDelegates allObjects];
  v9 = [allObjects countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = *v21;
    v15 = v17;
    do
    {
      v11 = 0;
      do
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(allObjects);
        }

        v12 = *(*(&v20 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          dispatchQueue = [v12 dispatchQueue];
          if (dispatchQueue == selfCopy->_dispatchQueue)
          {
            [v12 nearby:nearbyCopy didStartAdvertisingType:type];
          }

          else
          {
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            v17[0] = __46__SFBLEClient_nearby_didStartAdvertisingType___block_invoke;
            v17[1] = &unk_1E788DC08;
            v17[2] = v12;
            v18 = nearbyCopy;
            typeCopy = type;
            dispatch_async(dispatchQueue, block);
          }
        }

        else
        {
          dispatchQueue = 0;
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [allObjects countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  objc_sync_exit(selfCopy);
  v14 = *MEMORY[0x1E69E9840];
}

- (void)nearby:(id)nearby didStopAdvertisingType:(int64_t)type withError:(id)error
{
  v29 = *MEMORY[0x1E69E9840];
  nearbyCopy = nearby;
  errorCopy = error;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  allObjects = [(NSMutableSet *)selfCopy->_wpNearbyDelegates allObjects];
  v11 = [allObjects countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v11)
  {
    v12 = *v25;
    v17 = v20;
    do
    {
      v13 = 0;
      do
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(allObjects);
        }

        v14 = *(*(&v24 + 1) + 8 * v13);
        if (objc_opt_respondsToSelector())
        {
          dispatchQueue = [v14 dispatchQueue];
          if (dispatchQueue == selfCopy->_dispatchQueue)
          {
            [v14 nearby:nearbyCopy didStopAdvertisingType:type withError:errorCopy];
          }

          else
          {
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            v20[0] = __55__SFBLEClient_nearby_didStopAdvertisingType_withError___block_invoke;
            v20[1] = &unk_1E788B570;
            v20[2] = v14;
            v21 = nearbyCopy;
            typeCopy = type;
            v22 = errorCopy;
            dispatch_async(dispatchQueue, block);
          }
        }

        else
        {
          dispatchQueue = 0;
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [allObjects countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v11);
  }

  objc_sync_exit(selfCopy);
  v16 = *MEMORY[0x1E69E9840];
}

- (void)nearby:(id)nearby didDeferAdvertisingType:(int64_t)type
{
  v25 = *MEMORY[0x1E69E9840];
  nearbyCopy = nearby;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  allObjects = [(NSMutableSet *)selfCopy->_wpNearbyDelegates allObjects];
  v9 = [allObjects countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = *v21;
    v15 = v17;
    do
    {
      v11 = 0;
      do
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(allObjects);
        }

        v12 = *(*(&v20 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          dispatchQueue = [v12 dispatchQueue];
          if (dispatchQueue == selfCopy->_dispatchQueue)
          {
            [v12 nearby:nearbyCopy didDeferAdvertisingType:type];
          }

          else
          {
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            v17[0] = __46__SFBLEClient_nearby_didDeferAdvertisingType___block_invoke;
            v17[1] = &unk_1E788DC08;
            v17[2] = v12;
            v18 = nearbyCopy;
            typeCopy = type;
            dispatch_async(dispatchQueue, block);
          }
        }

        else
        {
          dispatchQueue = 0;
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [allObjects countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  objc_sync_exit(selfCopy);
  v14 = *MEMORY[0x1E69E9840];
}

- (void)nearby:(id)nearby didFailToStartAdvertisingOfType:(int64_t)type withError:(id)error
{
  v29 = *MEMORY[0x1E69E9840];
  nearbyCopy = nearby;
  errorCopy = error;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  allObjects = [(NSMutableSet *)selfCopy->_wpNearbyDelegates allObjects];
  v11 = [allObjects countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v11)
  {
    v12 = *v25;
    v17 = v20;
    do
    {
      v13 = 0;
      do
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(allObjects);
        }

        v14 = *(*(&v24 + 1) + 8 * v13);
        if (objc_opt_respondsToSelector())
        {
          dispatchQueue = [v14 dispatchQueue];
          if (dispatchQueue == selfCopy->_dispatchQueue)
          {
            [v14 nearby:nearbyCopy didFailToStartAdvertisingOfType:type withError:errorCopy];
          }

          else
          {
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            v20[0] = __64__SFBLEClient_nearby_didFailToStartAdvertisingOfType_withError___block_invoke;
            v20[1] = &unk_1E788B570;
            v20[2] = v14;
            v21 = nearbyCopy;
            typeCopy = type;
            v22 = errorCopy;
            dispatch_async(dispatchQueue, block);
          }
        }

        else
        {
          dispatchQueue = 0;
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [allObjects countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v11);
  }

  objc_sync_exit(selfCopy);
  v16 = *MEMORY[0x1E69E9840];
}

- (void)nearby:(id)nearby didStartScanningForType:(int64_t)type
{
  v25 = *MEMORY[0x1E69E9840];
  nearbyCopy = nearby;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  allObjects = [(NSMutableSet *)selfCopy->_wpNearbyDelegates allObjects];
  v9 = [allObjects countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = *v21;
    v15 = v17;
    do
    {
      v11 = 0;
      do
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(allObjects);
        }

        v12 = *(*(&v20 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          dispatchQueue = [v12 dispatchQueue];
          if (dispatchQueue == selfCopy->_dispatchQueue)
          {
            [v12 nearby:nearbyCopy didStartScanningForType:type];
          }

          else
          {
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            v17[0] = __46__SFBLEClient_nearby_didStartScanningForType___block_invoke;
            v17[1] = &unk_1E788DC08;
            v17[2] = v12;
            v18 = nearbyCopy;
            typeCopy = type;
            dispatch_async(dispatchQueue, block);
          }
        }

        else
        {
          dispatchQueue = 0;
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [allObjects countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  objc_sync_exit(selfCopy);
  v14 = *MEMORY[0x1E69E9840];
}

- (void)nearby:(id)nearby didFailToStartScanningForType:(int64_t)type WithError:(id)error
{
  v29 = *MEMORY[0x1E69E9840];
  nearbyCopy = nearby;
  errorCopy = error;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  allObjects = [(NSMutableSet *)selfCopy->_wpNearbyDelegates allObjects];
  v11 = [allObjects countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v11)
  {
    v12 = *v25;
    v17 = v20;
    do
    {
      v13 = 0;
      do
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(allObjects);
        }

        v14 = *(*(&v24 + 1) + 8 * v13);
        if (objc_opt_respondsToSelector())
        {
          dispatchQueue = [v14 dispatchQueue];
          if (dispatchQueue == selfCopy->_dispatchQueue)
          {
            [v14 nearby:nearbyCopy didFailToStartScanningForType:type WithError:errorCopy];
          }

          else
          {
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            v20[0] = __62__SFBLEClient_nearby_didFailToStartScanningForType_WithError___block_invoke;
            v20[1] = &unk_1E788B570;
            v20[2] = v14;
            v21 = nearbyCopy;
            typeCopy = type;
            v22 = errorCopy;
            dispatch_async(dispatchQueue, block);
          }
        }

        else
        {
          dispatchQueue = 0;
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [allObjects countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v11);
  }

  objc_sync_exit(selfCopy);
  v16 = *MEMORY[0x1E69E9840];
}

- (void)nearby:(id)nearby didDiscoverType:(int64_t)type withData:(id)data fromPeer:(id)peer peerInfo:(id)info
{
  v36 = *MEMORY[0x1E69E9840];
  nearbyCopy = nearby;
  dataCopy = data;
  peerCopy = peer;
  infoCopy = info;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v13 = selfCopy;
  allObjects = [(NSMutableSet *)selfCopy->_wpNearbyDelegates allObjects];
  v15 = [allObjects countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v15)
  {
    v16 = *v32;
    do
    {
      v17 = 0;
      do
      {
        if (*v32 != v16)
        {
          objc_enumerationMutation(allObjects);
        }

        v18 = *(*(&v31 + 1) + 8 * v17);
        if (objc_opt_respondsToSelector())
        {
          dispatchQueue = [v18 dispatchQueue];
          if (dispatchQueue == v13->_dispatchQueue)
          {
            [v18 nearby:nearbyCopy didDiscoverType:type withData:dataCopy fromPeer:peerCopy peerInfo:infoCopy];
          }

          else
          {
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __65__SFBLEClient_nearby_didDiscoverType_withData_fromPeer_peerInfo___block_invoke;
            block[3] = &unk_1E788DC30;
            block[4] = v18;
            v26 = nearbyCopy;
            typeCopy = type;
            v27 = dataCopy;
            v28 = peerCopy;
            v29 = infoCopy;
            dispatch_async(dispatchQueue, block);
          }
        }

        else
        {
          dispatchQueue = 0;
        }

        ++v17;
      }

      while (v15 != v17);
      v15 = [allObjects countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v15);
  }

  objc_sync_exit(v13);
  v20 = *MEMORY[0x1E69E9840];
}

- (void)nearby:(id)nearby didLosePeer:(id)peer type:(int64_t)type
{
  v29 = *MEMORY[0x1E69E9840];
  nearbyCopy = nearby;
  peerCopy = peer;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  allObjects = [(NSMutableSet *)selfCopy->_wpNearbyDelegates allObjects];
  v11 = [allObjects countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v11)
  {
    v12 = *v25;
    v17 = v20;
    do
    {
      v13 = 0;
      do
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(allObjects);
        }

        v14 = *(*(&v24 + 1) + 8 * v13);
        if (objc_opt_respondsToSelector())
        {
          dispatchQueue = [v14 dispatchQueue];
          if (dispatchQueue == selfCopy->_dispatchQueue)
          {
            [v14 nearby:nearbyCopy didLosePeer:peerCopy type:type];
          }

          else
          {
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            v20[0] = __39__SFBLEClient_nearby_didLosePeer_type___block_invoke;
            v20[1] = &unk_1E788B570;
            v20[2] = v14;
            v21 = nearbyCopy;
            v22 = peerCopy;
            typeCopy = type;
            dispatch_async(dispatchQueue, block);
          }
        }

        else
        {
          dispatchQueue = 0;
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [allObjects countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v11);
  }

  objc_sync_exit(selfCopy);
  v16 = *MEMORY[0x1E69E9840];
}

- (void)nearby:(id)nearby didConnectToPeer:(id)peer transport:(int64_t)transport error:(id)error
{
  v32 = *MEMORY[0x1E69E9840];
  nearbyCopy = nearby;
  peerCopy = peer;
  errorCopy = error;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v11 = selfCopy;
  allObjects = [(NSMutableSet *)selfCopy->_wpNearbyDelegates allObjects];
  v13 = [allObjects countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v13)
  {
    v14 = *v28;
    do
    {
      v15 = 0;
      do
      {
        if (*v28 != v14)
        {
          objc_enumerationMutation(allObjects);
        }

        v16 = *(*(&v27 + 1) + 8 * v15);
        if (objc_opt_respondsToSelector())
        {
          dispatchQueue = [v16 dispatchQueue];
          if (dispatchQueue == v11->_dispatchQueue)
          {
            [v16 nearby:nearbyCopy didConnectToPeer:peerCopy transport:transport error:errorCopy];
          }

          else
          {
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __55__SFBLEClient_nearby_didConnectToPeer_transport_error___block_invoke;
            block[3] = &unk_1E788DC58;
            block[4] = v16;
            v23 = nearbyCopy;
            v24 = peerCopy;
            transportCopy = transport;
            v25 = errorCopy;
            dispatch_async(dispatchQueue, block);
          }
        }

        else
        {
          dispatchQueue = 0;
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [allObjects countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v13);
  }

  objc_sync_exit(v11);
  v18 = *MEMORY[0x1E69E9840];
}

- (void)nearby:(id)nearby didDisconnectFromPeer:(id)peer error:(id)error
{
  v28 = *MEMORY[0x1E69E9840];
  nearbyCopy = nearby;
  peerCopy = peer;
  errorCopy = error;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  allObjects = [(NSMutableSet *)selfCopy->_wpNearbyDelegates allObjects];
  v11 = [allObjects countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v11)
  {
    v12 = *v24;
    do
    {
      v13 = 0;
      do
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(allObjects);
        }

        v14 = *(*(&v23 + 1) + 8 * v13);
        if (objc_opt_respondsToSelector())
        {
          dispatchQueue = [v14 dispatchQueue];
          if (dispatchQueue == selfCopy->_dispatchQueue)
          {
            [v14 nearby:nearbyCopy didDisconnectFromPeer:peerCopy error:errorCopy];
          }

          else
          {
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __50__SFBLEClient_nearby_didDisconnectFromPeer_error___block_invoke;
            block[3] = &unk_1E788B9C0;
            block[4] = v14;
            v20 = nearbyCopy;
            v21 = peerCopy;
            v22 = errorCopy;
            dispatch_async(dispatchQueue, block);
          }
        }

        else
        {
          dispatchQueue = 0;
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [allObjects countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v11);
  }

  objc_sync_exit(selfCopy);
  v16 = *MEMORY[0x1E69E9840];
}

- (void)nearby:(id)nearby didSendData:(id)data toPeer:(id)peer error:(id)error
{
  v32 = *MEMORY[0x1E69E9840];
  nearbyCopy = nearby;
  dataCopy = data;
  peerCopy = peer;
  errorCopy = error;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  allObjects = [(NSMutableSet *)selfCopy->_wpNearbyDelegates allObjects];
  v13 = [allObjects countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v13)
  {
    v14 = *v28;
    do
    {
      v15 = 0;
      do
      {
        if (*v28 != v14)
        {
          objc_enumerationMutation(allObjects);
        }

        v16 = *(*(&v27 + 1) + 8 * v15);
        if (objc_opt_respondsToSelector())
        {
          dispatchQueue = [v16 dispatchQueue];
          if (dispatchQueue == selfCopy->_dispatchQueue)
          {
            [v16 nearby:nearbyCopy didSendData:dataCopy toPeer:peerCopy error:errorCopy];
          }

          else
          {
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __47__SFBLEClient_nearby_didSendData_toPeer_error___block_invoke;
            block[3] = &unk_1E788DC80;
            block[4] = v16;
            v23 = nearbyCopy;
            v24 = dataCopy;
            v25 = peerCopy;
            v26 = errorCopy;
            dispatch_async(dispatchQueue, block);
          }
        }

        else
        {
          dispatchQueue = 0;
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [allObjects countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v13);
  }

  objc_sync_exit(selfCopy);
  v18 = *MEMORY[0x1E69E9840];
}

- (void)nearby:(id)nearby didReceiveData:(id)data fromPeer:(id)peer
{
  v28 = *MEMORY[0x1E69E9840];
  nearbyCopy = nearby;
  dataCopy = data;
  peerCopy = peer;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  allObjects = [(NSMutableSet *)selfCopy->_wpNearbyDelegates allObjects];
  v11 = [allObjects countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v11)
  {
    v12 = *v24;
    do
    {
      v13 = 0;
      do
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(allObjects);
        }

        v14 = *(*(&v23 + 1) + 8 * v13);
        if (objc_opt_respondsToSelector())
        {
          dispatchQueue = [v14 dispatchQueue];
          if (dispatchQueue == selfCopy->_dispatchQueue)
          {
            [v14 nearby:nearbyCopy didReceiveData:dataCopy fromPeer:peerCopy];
          }

          else
          {
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __46__SFBLEClient_nearby_didReceiveData_fromPeer___block_invoke;
            block[3] = &unk_1E788B9C0;
            block[4] = v14;
            v20 = nearbyCopy;
            v21 = dataCopy;
            v22 = peerCopy;
            dispatch_async(dispatchQueue, block);
          }
        }

        else
        {
          dispatchQueue = 0;
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [allObjects countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v11);
  }

  objc_sync_exit(selfCopy);
  v16 = *MEMORY[0x1E69E9840];
}

- (id)addPairingDelegate:(id)delegate
{
  delegateCopy = delegate;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_wpPairing)
  {
    v6 = [objc_alloc(getWPPairingClass()) initWithDelegate:selfCopy queue:selfCopy->_dispatchQueue];
    wpPairing = selfCopy->_wpPairing;
    selfCopy->_wpPairing = v6;
  }

  wpPairingDelegates = selfCopy->_wpPairingDelegates;
  if (!wpPairingDelegates)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v10 = selfCopy->_wpPairingDelegates;
    selfCopy->_wpPairingDelegates = v9;

    wpPairingDelegates = selfCopy->_wpPairingDelegates;
  }

  [(NSMutableSet *)wpPairingDelegates addObject:delegateCopy];
  v11 = selfCopy->_wpPairing;
  objc_sync_exit(selfCopy);

  return v11;
}

- (void)removePairingDelegate:(id)delegate
{
  delegateCopy = delegate;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableSet *)selfCopy->_wpPairingDelegates removeObject:delegateCopy];
  if (![(NSMutableSet *)selfCopy->_wpPairingDelegates count])
  {
    if (gLogCategory_SFBLEClient <= 30 && (gLogCategory_SFBLEClient != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    [(WPPairing *)selfCopy->_wpPairing invalidate];
    wpPairing = selfCopy->_wpPairing;
    selfCopy->_wpPairing = 0;
  }

  objc_sync_exit(selfCopy);
}

- (void)pairingDidUpdateState:(id)state
{
  v20 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  allObjects = [(NSMutableSet *)selfCopy->_wpPairingDelegates allObjects];
  v7 = [allObjects countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(allObjects);
        }

        v10 = *(*(&v15 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          dispatchQueue = [v10 dispatchQueue];
          if (dispatchQueue == selfCopy->_dispatchQueue)
          {
            [v10 pairingDidUpdateState:stateCopy];
          }

          else
          {
            v13[0] = MEMORY[0x1E69E9820];
            v13[1] = 3221225472;
            v13[2] = __37__SFBLEClient_pairingDidUpdateState___block_invoke;
            v13[3] = &unk_1E788A658;
            v13[4] = v10;
            v14 = stateCopy;
            dispatch_async(dispatchQueue, v13);
          }
        }

        else
        {
          dispatchQueue = 0;
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [allObjects countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  objc_sync_exit(selfCopy);
  v12 = *MEMORY[0x1E69E9840];
}

- (void)pairingStartedScanning:(id)scanning
{
  v20 = *MEMORY[0x1E69E9840];
  scanningCopy = scanning;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  allObjects = [(NSMutableSet *)selfCopy->_wpPairingDelegates allObjects];
  v7 = [allObjects countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(allObjects);
        }

        v10 = *(*(&v15 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          dispatchQueue = [v10 dispatchQueue];
          if (dispatchQueue == selfCopy->_dispatchQueue)
          {
            [v10 pairingStartedScanning:scanningCopy];
          }

          else
          {
            v13[0] = MEMORY[0x1E69E9820];
            v13[1] = 3221225472;
            v13[2] = __38__SFBLEClient_pairingStartedScanning___block_invoke;
            v13[3] = &unk_1E788A658;
            v13[4] = v10;
            v14 = scanningCopy;
            dispatch_async(dispatchQueue, v13);
          }
        }

        else
        {
          dispatchQueue = 0;
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [allObjects countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  objc_sync_exit(selfCopy);
  v12 = *MEMORY[0x1E69E9840];
}

- (void)pairingStoppedScanning:(id)scanning
{
  v20 = *MEMORY[0x1E69E9840];
  scanningCopy = scanning;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  allObjects = [(NSMutableSet *)selfCopy->_wpPairingDelegates allObjects];
  v7 = [allObjects countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(allObjects);
        }

        v10 = *(*(&v15 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          dispatchQueue = [v10 dispatchQueue];
          if (dispatchQueue == selfCopy->_dispatchQueue)
          {
            [v10 pairingStoppedScanning:scanningCopy];
          }

          else
          {
            v13[0] = MEMORY[0x1E69E9820];
            v13[1] = 3221225472;
            v13[2] = __38__SFBLEClient_pairingStoppedScanning___block_invoke;
            v13[3] = &unk_1E788A658;
            v13[4] = v10;
            v14 = scanningCopy;
            dispatch_async(dispatchQueue, v13);
          }
        }

        else
        {
          dispatchQueue = 0;
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [allObjects countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  objc_sync_exit(selfCopy);
  v12 = *MEMORY[0x1E69E9840];
}

- (void)pairing:(id)pairing failedToStartScanningWithError:(id)error
{
  v26 = *MEMORY[0x1E69E9840];
  pairingCopy = pairing;
  errorCopy = error;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  allObjects = [(NSMutableSet *)selfCopy->_wpPairingDelegates allObjects];
  v10 = [allObjects countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = *v22;
    v16 = v18;
    do
    {
      v12 = 0;
      do
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(allObjects);
        }

        v13 = *(*(&v21 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          dispatchQueue = [v13 dispatchQueue];
          if (dispatchQueue == selfCopy->_dispatchQueue)
          {
            [v13 pairing:pairingCopy failedToStartScanningWithError:errorCopy];
          }

          else
          {
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            v18[0] = __54__SFBLEClient_pairing_failedToStartScanningWithError___block_invoke;
            v18[1] = &unk_1E788BD88;
            v18[2] = v13;
            v19 = pairingCopy;
            v20 = errorCopy;
            dispatch_async(dispatchQueue, block);
          }
        }

        else
        {
          dispatchQueue = 0;
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [allObjects countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  objc_sync_exit(selfCopy);
  v15 = *MEMORY[0x1E69E9840];
}

- (void)pairing:(id)pairing foundDevice:(id)device payload:(id)payload rssi:(id)rssi peerInfo:(id)info
{
  v36 = *MEMORY[0x1E69E9840];
  pairingCopy = pairing;
  deviceCopy = device;
  payloadCopy = payload;
  rssiCopy = rssi;
  infoCopy = info;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  allObjects = [(NSMutableSet *)selfCopy->_wpPairingDelegates allObjects];
  v15 = [allObjects countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v15)
  {
    v16 = *v32;
    do
    {
      v17 = 0;
      do
      {
        if (*v32 != v16)
        {
          objc_enumerationMutation(allObjects);
        }

        v18 = *(*(&v31 + 1) + 8 * v17);
        if (objc_opt_respondsToSelector())
        {
          dispatchQueue = [v18 dispatchQueue];
          if (dispatchQueue == selfCopy->_dispatchQueue)
          {
            [v18 pairing:pairingCopy foundDevice:deviceCopy payload:payloadCopy rssi:rssiCopy peerInfo:infoCopy];
          }

          else
          {
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __57__SFBLEClient_pairing_foundDevice_payload_rssi_peerInfo___block_invoke;
            block[3] = &unk_1E788DCA8;
            block[4] = v18;
            v26 = pairingCopy;
            v27 = deviceCopy;
            v28 = payloadCopy;
            v29 = rssiCopy;
            v30 = infoCopy;
            dispatch_async(dispatchQueue, block);
          }
        }

        else
        {
          dispatchQueue = 0;
        }

        ++v17;
      }

      while (v15 != v17);
      v15 = [allObjects countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v15);
  }

  objc_sync_exit(selfCopy);
  v20 = *MEMORY[0x1E69E9840];
}

@end