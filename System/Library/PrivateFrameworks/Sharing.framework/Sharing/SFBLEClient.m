@interface SFBLEClient
+ (id)sharedClient;
- (SFBLEClient)init;
- (id)addAirDropDelegate:(id)a3;
- (id)addNearbyDelegate:(id)a3;
- (id)addPairingDelegate:(id)a3;
- (void)awdl:(id)a3 failedToStartAdvertisingWithError:(id)a4;
- (void)awdl:(id)a3 failedToStartScanningWithError:(id)a4;
- (void)awdl:(id)a3 foundDevice:(id)a4 rssi:(id)a5;
- (void)awdlAdvertisingPending:(id)a3;
- (void)awdlDidUpdateState:(id)a3;
- (void)awdlStartedAdvertising:(id)a3;
- (void)awdlStartedScanning:(id)a3;
- (void)nearby:(id)a3 didConnectToPeer:(id)a4 transport:(int64_t)a5 error:(id)a6;
- (void)nearby:(id)a3 didDeferAdvertisingType:(int64_t)a4;
- (void)nearby:(id)a3 didDisconnectFromPeer:(id)a4 error:(id)a5;
- (void)nearby:(id)a3 didDiscoverType:(int64_t)a4 withData:(id)a5 fromPeer:(id)a6 peerInfo:(id)a7;
- (void)nearby:(id)a3 didFailToStartAdvertisingOfType:(int64_t)a4 withError:(id)a5;
- (void)nearby:(id)a3 didFailToStartScanningForType:(int64_t)a4 WithError:(id)a5;
- (void)nearby:(id)a3 didLosePeer:(id)a4 type:(int64_t)a5;
- (void)nearby:(id)a3 didReceiveData:(id)a4 fromPeer:(id)a5;
- (void)nearby:(id)a3 didSendData:(id)a4 toPeer:(id)a5 error:(id)a6;
- (void)nearby:(id)a3 didStartAdvertisingType:(int64_t)a4;
- (void)nearby:(id)a3 didStartScanningForType:(int64_t)a4;
- (void)nearby:(id)a3 didStopAdvertisingType:(int64_t)a4 withError:(id)a5;
- (void)nearbyDidChangeBluetoothBandwidthState:(id)a3;
- (void)nearbyDidUpdateState:(id)a3;
- (void)pairing:(id)a3 failedToStartScanningWithError:(id)a4;
- (void)pairing:(id)a3 foundDevice:(id)a4 payload:(id)a5 rssi:(id)a6 peerInfo:(id)a7;
- (void)pairingDidUpdateState:(id)a3;
- (void)pairingStartedScanning:(id)a3;
- (void)pairingStoppedScanning:(id)a3;
- (void)removeAirDropDelegate:(id)a3;
- (void)removeNearbyDelegate:(id)a3;
- (void)removePairingDelegate:(id)a3;
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

- (id)addAirDropDelegate:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (!v5->_wpAirDrop)
  {
    v6 = [objc_alloc(getWPAWDLClass()) initWithDelegate:v5 queue:v5->_dispatchQueue];
    wpAirDrop = v5->_wpAirDrop;
    v5->_wpAirDrop = v6;
  }

  wpAirDropDelegates = v5->_wpAirDropDelegates;
  if (!wpAirDropDelegates)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v10 = v5->_wpAirDropDelegates;
    v5->_wpAirDropDelegates = v9;

    wpAirDropDelegates = v5->_wpAirDropDelegates;
  }

  [(NSMutableSet *)wpAirDropDelegates addObject:v4];
  v11 = v5->_wpAirDrop;
  objc_sync_exit(v5);

  return v11;
}

- (void)removeAirDropDelegate:(id)a3
{
  v6 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [(NSMutableSet *)v4->_wpAirDropDelegates removeObject:v6];
  if (![(NSMutableSet *)v4->_wpAirDropDelegates count])
  {
    if (gLogCategory_SFBLEClient <= 30 && (gLogCategory_SFBLEClient != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    [(WPAWDL *)v4->_wpAirDrop invalidate];
    wpAirDrop = v4->_wpAirDrop;
    v4->_wpAirDrop = 0;
  }

  objc_sync_exit(v4);
}

- (void)awdlDidUpdateState:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(NSMutableSet *)v5->_wpAirDropDelegates allObjects];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          v11 = [v10 dispatchQueue];
          if (v11 == v5->_dispatchQueue)
          {
            [v10 awdlDidUpdateState:v4];
          }

          else
          {
            v13[0] = MEMORY[0x1E69E9820];
            v13[1] = 3221225472;
            v13[2] = __34__SFBLEClient_awdlDidUpdateState___block_invoke;
            v13[3] = &unk_1E788A658;
            v13[4] = v10;
            v14 = v4;
            dispatch_async(v11, v13);
          }
        }

        else
        {
          v11 = 0;
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  objc_sync_exit(v5);
  v12 = *MEMORY[0x1E69E9840];
}

- (void)awdlStartedAdvertising:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(NSMutableSet *)v5->_wpAirDropDelegates allObjects];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          v11 = [v10 dispatchQueue];
          if (v11 == v5->_dispatchQueue)
          {
            [v10 awdlStartedAdvertising:v4];
          }

          else
          {
            v13[0] = MEMORY[0x1E69E9820];
            v13[1] = 3221225472;
            v13[2] = __38__SFBLEClient_awdlStartedAdvertising___block_invoke;
            v13[3] = &unk_1E788A658;
            v13[4] = v10;
            v14 = v4;
            dispatch_async(v11, v13);
          }
        }

        else
        {
          v11 = 0;
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  objc_sync_exit(v5);
  v12 = *MEMORY[0x1E69E9840];
}

- (void)awdlAdvertisingPending:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(NSMutableSet *)v5->_wpAirDropDelegates allObjects];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          v11 = [v10 dispatchQueue];
          if (v11 == v5->_dispatchQueue)
          {
            [v10 awdlAdvertisingPending:v4];
          }

          else
          {
            v13[0] = MEMORY[0x1E69E9820];
            v13[1] = 3221225472;
            v13[2] = __38__SFBLEClient_awdlAdvertisingPending___block_invoke;
            v13[3] = &unk_1E788A658;
            v13[4] = v10;
            v14 = v4;
            dispatch_async(v11, v13);
          }
        }

        else
        {
          v11 = 0;
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  objc_sync_exit(v5);
  v12 = *MEMORY[0x1E69E9840];
}

- (void)awdl:(id)a3 failedToStartAdvertisingWithError:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = [(NSMutableSet *)v8->_wpAirDropDelegates allObjects];
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v21 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          v14 = [v13 dispatchQueue];
          if (v14 == v8->_dispatchQueue)
          {
            [v13 awdl:v6 failedToStartAdvertisingWithError:v7];
          }

          else
          {
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            v18[0] = __54__SFBLEClient_awdl_failedToStartAdvertisingWithError___block_invoke;
            v18[1] = &unk_1E788BD88;
            v18[2] = v13;
            v19 = v6;
            v20 = v7;
            dispatch_async(v14, block);
          }
        }

        else
        {
          v14 = 0;
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  objc_sync_exit(v8);
  v15 = *MEMORY[0x1E69E9840];
}

- (void)awdlStartedScanning:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(NSMutableSet *)v5->_wpAirDropDelegates allObjects];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          v11 = [v10 dispatchQueue];
          if (v11 == v5->_dispatchQueue)
          {
            [v10 awdlStartedScanning:v4];
          }

          else
          {
            v13[0] = MEMORY[0x1E69E9820];
            v13[1] = 3221225472;
            v13[2] = __35__SFBLEClient_awdlStartedScanning___block_invoke;
            v13[3] = &unk_1E788A658;
            v13[4] = v10;
            v14 = v4;
            dispatch_async(v11, v13);
          }
        }

        else
        {
          v11 = 0;
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  objc_sync_exit(v5);
  v12 = *MEMORY[0x1E69E9840];
}

- (void)awdl:(id)a3 failedToStartScanningWithError:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = [(NSMutableSet *)v8->_wpAirDropDelegates allObjects];
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v21 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          v14 = [v13 dispatchQueue];
          if (v14 == v8->_dispatchQueue)
          {
            [v13 awdl:v6 failedToStartScanningWithError:v7];
          }

          else
          {
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            v18[0] = __51__SFBLEClient_awdl_failedToStartScanningWithError___block_invoke;
            v18[1] = &unk_1E788BD88;
            v18[2] = v13;
            v19 = v6;
            v20 = v7;
            dispatch_async(v14, block);
          }
        }

        else
        {
          v14 = 0;
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  objc_sync_exit(v8);
  v15 = *MEMORY[0x1E69E9840];
}

- (void)awdl:(id)a3 foundDevice:(id)a4 rssi:(id)a5
{
  v28 = *MEMORY[0x1E69E9840];
  v18 = a3;
  v17 = a4;
  v8 = a5;
  v9 = self;
  objc_sync_enter(v9);
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = [(NSMutableSet *)v9->_wpAirDropDelegates allObjects];
  v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v23 + 1) + 8 * v13);
        if (objc_opt_respondsToSelector())
        {
          v15 = [v14 dispatchQueue];
          if (v15 == v9->_dispatchQueue)
          {
            [v14 awdl:v18 foundDevice:v17 rssi:v8];
          }

          else
          {
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __37__SFBLEClient_awdl_foundDevice_rssi___block_invoke;
            block[3] = &unk_1E788B9C0;
            block[4] = v14;
            v20 = v18;
            v21 = v17;
            v22 = v8;
            dispatch_async(v15, block);
          }
        }

        else
        {
          v15 = 0;
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v11);
  }

  objc_sync_exit(v9);
  v16 = *MEMORY[0x1E69E9840];
}

- (id)addNearbyDelegate:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (!v5->_wpNearby)
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

    v10 = [[WPNearbyClass alloc] initWithDelegate:v5 queue:v5->_dispatchQueue];
    wpNearby = v5->_wpNearby;
    v5->_wpNearby = v10;
  }

  wpNearbyDelegates = v5->_wpNearbyDelegates;
  if (!wpNearbyDelegates)
  {
    v13 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v14 = v5->_wpNearbyDelegates;
    v5->_wpNearbyDelegates = v13;

    wpNearbyDelegates = v5->_wpNearbyDelegates;
  }

  [(NSMutableSet *)wpNearbyDelegates addObject:v4];
  v15 = v5->_wpNearby;
  objc_sync_exit(v5);

  return v15;
}

- (void)removeNearbyDelegate:(id)a3
{
  v6 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [(NSMutableSet *)v4->_wpNearbyDelegates removeObject:v6];
  if (![(NSMutableSet *)v4->_wpNearbyDelegates count])
  {
    if (gLogCategory_SFBLEClient <= 30 && (gLogCategory_SFBLEClient != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    [(WPNearby *)v4->_wpNearby invalidate];
    wpNearby = v4->_wpNearby;
    v4->_wpNearby = 0;
  }

  objc_sync_exit(v4);
}

- (void)nearbyDidChangeBluetoothBandwidthState:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(NSMutableSet *)v5->_wpNearbyDelegates allObjects];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          v11 = [v10 dispatchQueue];
          if (v11 == v5->_dispatchQueue)
          {
            [v10 nearbyDidChangeBluetoothBandwidthState:v4];
          }

          else
          {
            v13[0] = MEMORY[0x1E69E9820];
            v13[1] = 3221225472;
            v13[2] = __54__SFBLEClient_nearbyDidChangeBluetoothBandwidthState___block_invoke;
            v13[3] = &unk_1E788A658;
            v13[4] = v10;
            v14 = v4;
            dispatch_async(v11, v13);
          }
        }

        else
        {
          v11 = 0;
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  objc_sync_exit(v5);
  v12 = *MEMORY[0x1E69E9840];
}

- (void)nearbyDidUpdateState:(id)a3
{
  v24[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  v23 = @"SFBluetoothNotificationKeyState";
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v4, "state")}];
  v24[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
  [v5 postNotificationName:@"SFBluetoothNotificationNameStateChanged" object:self userInfo:v7];

  v8 = self;
  objc_sync_enter(v8);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = [(NSMutableSet *)v8->_wpNearbyDelegates allObjects];
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v18 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          v14 = [v13 dispatchQueue];
          if (v14 == v8->_dispatchQueue)
          {
            [v13 nearbyDidUpdateState:v4];
          }

          else
          {
            v16[0] = MEMORY[0x1E69E9820];
            v16[1] = 3221225472;
            v16[2] = __36__SFBLEClient_nearbyDidUpdateState___block_invoke;
            v16[3] = &unk_1E788A658;
            v16[4] = v13;
            v17 = v4;
            dispatch_async(v14, v16);
          }
        }

        else
        {
          v14 = 0;
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  objc_sync_exit(v8);
  v15 = *MEMORY[0x1E69E9840];
}

- (void)nearby:(id)a3 didStartAdvertisingType:(int64_t)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = self;
  objc_sync_enter(v7);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = [(NSMutableSet *)v7->_wpNearbyDelegates allObjects];
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v20 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          v13 = [v12 dispatchQueue];
          if (v13 == v7->_dispatchQueue)
          {
            [v12 nearby:v6 didStartAdvertisingType:a4];
          }

          else
          {
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            v17[0] = __46__SFBLEClient_nearby_didStartAdvertisingType___block_invoke;
            v17[1] = &unk_1E788DC08;
            v17[2] = v12;
            v18 = v6;
            v19 = a4;
            dispatch_async(v13, block);
          }
        }

        else
        {
          v13 = 0;
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  objc_sync_exit(v7);
  v14 = *MEMORY[0x1E69E9840];
}

- (void)nearby:(id)a3 didStopAdvertisingType:(int64_t)a4 withError:(id)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v18 = a3;
  v8 = a5;
  v9 = self;
  objc_sync_enter(v9);
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = [(NSMutableSet *)v9->_wpNearbyDelegates allObjects];
  v11 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
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
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v24 + 1) + 8 * v13);
        if (objc_opt_respondsToSelector())
        {
          v15 = [v14 dispatchQueue];
          if (v15 == v9->_dispatchQueue)
          {
            [v14 nearby:v18 didStopAdvertisingType:a4 withError:v8];
          }

          else
          {
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            v20[0] = __55__SFBLEClient_nearby_didStopAdvertisingType_withError___block_invoke;
            v20[1] = &unk_1E788B570;
            v20[2] = v14;
            v21 = v18;
            v23 = a4;
            v22 = v8;
            dispatch_async(v15, block);
          }
        }

        else
        {
          v15 = 0;
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v11);
  }

  objc_sync_exit(v9);
  v16 = *MEMORY[0x1E69E9840];
}

- (void)nearby:(id)a3 didDeferAdvertisingType:(int64_t)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = self;
  objc_sync_enter(v7);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = [(NSMutableSet *)v7->_wpNearbyDelegates allObjects];
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v20 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          v13 = [v12 dispatchQueue];
          if (v13 == v7->_dispatchQueue)
          {
            [v12 nearby:v6 didDeferAdvertisingType:a4];
          }

          else
          {
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            v17[0] = __46__SFBLEClient_nearby_didDeferAdvertisingType___block_invoke;
            v17[1] = &unk_1E788DC08;
            v17[2] = v12;
            v18 = v6;
            v19 = a4;
            dispatch_async(v13, block);
          }
        }

        else
        {
          v13 = 0;
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  objc_sync_exit(v7);
  v14 = *MEMORY[0x1E69E9840];
}

- (void)nearby:(id)a3 didFailToStartAdvertisingOfType:(int64_t)a4 withError:(id)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v18 = a3;
  v8 = a5;
  v9 = self;
  objc_sync_enter(v9);
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = [(NSMutableSet *)v9->_wpNearbyDelegates allObjects];
  v11 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
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
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v24 + 1) + 8 * v13);
        if (objc_opt_respondsToSelector())
        {
          v15 = [v14 dispatchQueue];
          if (v15 == v9->_dispatchQueue)
          {
            [v14 nearby:v18 didFailToStartAdvertisingOfType:a4 withError:v8];
          }

          else
          {
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            v20[0] = __64__SFBLEClient_nearby_didFailToStartAdvertisingOfType_withError___block_invoke;
            v20[1] = &unk_1E788B570;
            v20[2] = v14;
            v21 = v18;
            v23 = a4;
            v22 = v8;
            dispatch_async(v15, block);
          }
        }

        else
        {
          v15 = 0;
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v11);
  }

  objc_sync_exit(v9);
  v16 = *MEMORY[0x1E69E9840];
}

- (void)nearby:(id)a3 didStartScanningForType:(int64_t)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = self;
  objc_sync_enter(v7);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = [(NSMutableSet *)v7->_wpNearbyDelegates allObjects];
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v20 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          v13 = [v12 dispatchQueue];
          if (v13 == v7->_dispatchQueue)
          {
            [v12 nearby:v6 didStartScanningForType:a4];
          }

          else
          {
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            v17[0] = __46__SFBLEClient_nearby_didStartScanningForType___block_invoke;
            v17[1] = &unk_1E788DC08;
            v17[2] = v12;
            v18 = v6;
            v19 = a4;
            dispatch_async(v13, block);
          }
        }

        else
        {
          v13 = 0;
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  objc_sync_exit(v7);
  v14 = *MEMORY[0x1E69E9840];
}

- (void)nearby:(id)a3 didFailToStartScanningForType:(int64_t)a4 WithError:(id)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v18 = a3;
  v8 = a5;
  v9 = self;
  objc_sync_enter(v9);
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = [(NSMutableSet *)v9->_wpNearbyDelegates allObjects];
  v11 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
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
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v24 + 1) + 8 * v13);
        if (objc_opt_respondsToSelector())
        {
          v15 = [v14 dispatchQueue];
          if (v15 == v9->_dispatchQueue)
          {
            [v14 nearby:v18 didFailToStartScanningForType:a4 WithError:v8];
          }

          else
          {
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            v20[0] = __62__SFBLEClient_nearby_didFailToStartScanningForType_WithError___block_invoke;
            v20[1] = &unk_1E788B570;
            v20[2] = v14;
            v21 = v18;
            v23 = a4;
            v22 = v8;
            dispatch_async(v15, block);
          }
        }

        else
        {
          v15 = 0;
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v11);
  }

  objc_sync_exit(v9);
  v16 = *MEMORY[0x1E69E9840];
}

- (void)nearby:(id)a3 didDiscoverType:(int64_t)a4 withData:(id)a5 fromPeer:(id)a6 peerInfo:(id)a7
{
  v36 = *MEMORY[0x1E69E9840];
  v24 = a3;
  v23 = a5;
  v22 = a6;
  v11 = a7;
  v12 = self;
  objc_sync_enter(v12);
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v13 = v12;
  v14 = [(NSMutableSet *)v12->_wpNearbyDelegates allObjects];
  v15 = [v14 countByEnumeratingWithState:&v31 objects:v35 count:16];
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
          objc_enumerationMutation(v14);
        }

        v18 = *(*(&v31 + 1) + 8 * v17);
        if (objc_opt_respondsToSelector())
        {
          v19 = [v18 dispatchQueue];
          if (v19 == v13->_dispatchQueue)
          {
            [v18 nearby:v24 didDiscoverType:a4 withData:v23 fromPeer:v22 peerInfo:v11];
          }

          else
          {
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __65__SFBLEClient_nearby_didDiscoverType_withData_fromPeer_peerInfo___block_invoke;
            block[3] = &unk_1E788DC30;
            block[4] = v18;
            v26 = v24;
            v30 = a4;
            v27 = v23;
            v28 = v22;
            v29 = v11;
            dispatch_async(v19, block);
          }
        }

        else
        {
          v19 = 0;
        }

        ++v17;
      }

      while (v15 != v17);
      v15 = [v14 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v15);
  }

  objc_sync_exit(v13);
  v20 = *MEMORY[0x1E69E9840];
}

- (void)nearby:(id)a3 didLosePeer:(id)a4 type:(int64_t)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v18 = a3;
  v8 = a4;
  v9 = self;
  objc_sync_enter(v9);
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = [(NSMutableSet *)v9->_wpNearbyDelegates allObjects];
  v11 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
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
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v24 + 1) + 8 * v13);
        if (objc_opt_respondsToSelector())
        {
          v15 = [v14 dispatchQueue];
          if (v15 == v9->_dispatchQueue)
          {
            [v14 nearby:v18 didLosePeer:v8 type:a5];
          }

          else
          {
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            v20[0] = __39__SFBLEClient_nearby_didLosePeer_type___block_invoke;
            v20[1] = &unk_1E788B570;
            v20[2] = v14;
            v21 = v18;
            v22 = v8;
            v23 = a5;
            dispatch_async(v15, block);
          }
        }

        else
        {
          v15 = 0;
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v11);
  }

  objc_sync_exit(v9);
  v16 = *MEMORY[0x1E69E9840];
}

- (void)nearby:(id)a3 didConnectToPeer:(id)a4 transport:(int64_t)a5 error:(id)a6
{
  v32 = *MEMORY[0x1E69E9840];
  v21 = a3;
  v20 = a4;
  v19 = a6;
  v10 = self;
  objc_sync_enter(v10);
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v11 = v10;
  v12 = [(NSMutableSet *)v10->_wpNearbyDelegates allObjects];
  v13 = [v12 countByEnumeratingWithState:&v27 objects:v31 count:16];
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
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v27 + 1) + 8 * v15);
        if (objc_opt_respondsToSelector())
        {
          v17 = [v16 dispatchQueue];
          if (v17 == v11->_dispatchQueue)
          {
            [v16 nearby:v21 didConnectToPeer:v20 transport:a5 error:v19];
          }

          else
          {
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __55__SFBLEClient_nearby_didConnectToPeer_transport_error___block_invoke;
            block[3] = &unk_1E788DC58;
            block[4] = v16;
            v23 = v21;
            v24 = v20;
            v26 = a5;
            v25 = v19;
            dispatch_async(v17, block);
          }
        }

        else
        {
          v17 = 0;
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [v12 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v13);
  }

  objc_sync_exit(v11);
  v18 = *MEMORY[0x1E69E9840];
}

- (void)nearby:(id)a3 didDisconnectFromPeer:(id)a4 error:(id)a5
{
  v28 = *MEMORY[0x1E69E9840];
  v18 = a3;
  v17 = a4;
  v8 = a5;
  v9 = self;
  objc_sync_enter(v9);
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = [(NSMutableSet *)v9->_wpNearbyDelegates allObjects];
  v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v23 + 1) + 8 * v13);
        if (objc_opt_respondsToSelector())
        {
          v15 = [v14 dispatchQueue];
          if (v15 == v9->_dispatchQueue)
          {
            [v14 nearby:v18 didDisconnectFromPeer:v17 error:v8];
          }

          else
          {
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __50__SFBLEClient_nearby_didDisconnectFromPeer_error___block_invoke;
            block[3] = &unk_1E788B9C0;
            block[4] = v14;
            v20 = v18;
            v21 = v17;
            v22 = v8;
            dispatch_async(v15, block);
          }
        }

        else
        {
          v15 = 0;
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v11);
  }

  objc_sync_exit(v9);
  v16 = *MEMORY[0x1E69E9840];
}

- (void)nearby:(id)a3 didSendData:(id)a4 toPeer:(id)a5 error:(id)a6
{
  v32 = *MEMORY[0x1E69E9840];
  v21 = a3;
  v20 = a4;
  v19 = a5;
  v10 = a6;
  v11 = self;
  objc_sync_enter(v11);
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v12 = [(NSMutableSet *)v11->_wpNearbyDelegates allObjects];
  v13 = [v12 countByEnumeratingWithState:&v27 objects:v31 count:16];
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
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v27 + 1) + 8 * v15);
        if (objc_opt_respondsToSelector())
        {
          v17 = [v16 dispatchQueue];
          if (v17 == v11->_dispatchQueue)
          {
            [v16 nearby:v21 didSendData:v20 toPeer:v19 error:v10];
          }

          else
          {
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __47__SFBLEClient_nearby_didSendData_toPeer_error___block_invoke;
            block[3] = &unk_1E788DC80;
            block[4] = v16;
            v23 = v21;
            v24 = v20;
            v25 = v19;
            v26 = v10;
            dispatch_async(v17, block);
          }
        }

        else
        {
          v17 = 0;
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [v12 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v13);
  }

  objc_sync_exit(v11);
  v18 = *MEMORY[0x1E69E9840];
}

- (void)nearby:(id)a3 didReceiveData:(id)a4 fromPeer:(id)a5
{
  v28 = *MEMORY[0x1E69E9840];
  v18 = a3;
  v17 = a4;
  v8 = a5;
  v9 = self;
  objc_sync_enter(v9);
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = [(NSMutableSet *)v9->_wpNearbyDelegates allObjects];
  v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v23 + 1) + 8 * v13);
        if (objc_opt_respondsToSelector())
        {
          v15 = [v14 dispatchQueue];
          if (v15 == v9->_dispatchQueue)
          {
            [v14 nearby:v18 didReceiveData:v17 fromPeer:v8];
          }

          else
          {
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __46__SFBLEClient_nearby_didReceiveData_fromPeer___block_invoke;
            block[3] = &unk_1E788B9C0;
            block[4] = v14;
            v20 = v18;
            v21 = v17;
            v22 = v8;
            dispatch_async(v15, block);
          }
        }

        else
        {
          v15 = 0;
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v11);
  }

  objc_sync_exit(v9);
  v16 = *MEMORY[0x1E69E9840];
}

- (id)addPairingDelegate:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (!v5->_wpPairing)
  {
    v6 = [objc_alloc(getWPPairingClass()) initWithDelegate:v5 queue:v5->_dispatchQueue];
    wpPairing = v5->_wpPairing;
    v5->_wpPairing = v6;
  }

  wpPairingDelegates = v5->_wpPairingDelegates;
  if (!wpPairingDelegates)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v10 = v5->_wpPairingDelegates;
    v5->_wpPairingDelegates = v9;

    wpPairingDelegates = v5->_wpPairingDelegates;
  }

  [(NSMutableSet *)wpPairingDelegates addObject:v4];
  v11 = v5->_wpPairing;
  objc_sync_exit(v5);

  return v11;
}

- (void)removePairingDelegate:(id)a3
{
  v6 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [(NSMutableSet *)v4->_wpPairingDelegates removeObject:v6];
  if (![(NSMutableSet *)v4->_wpPairingDelegates count])
  {
    if (gLogCategory_SFBLEClient <= 30 && (gLogCategory_SFBLEClient != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    [(WPPairing *)v4->_wpPairing invalidate];
    wpPairing = v4->_wpPairing;
    v4->_wpPairing = 0;
  }

  objc_sync_exit(v4);
}

- (void)pairingDidUpdateState:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [(NSMutableSet *)v5->_wpPairingDelegates allObjects];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          v11 = [v10 dispatchQueue];
          if (v11 == v5->_dispatchQueue)
          {
            [v10 pairingDidUpdateState:v4];
          }

          else
          {
            v13[0] = MEMORY[0x1E69E9820];
            v13[1] = 3221225472;
            v13[2] = __37__SFBLEClient_pairingDidUpdateState___block_invoke;
            v13[3] = &unk_1E788A658;
            v13[4] = v10;
            v14 = v4;
            dispatch_async(v11, v13);
          }
        }

        else
        {
          v11 = 0;
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  objc_sync_exit(v5);
  v12 = *MEMORY[0x1E69E9840];
}

- (void)pairingStartedScanning:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [(NSMutableSet *)v5->_wpPairingDelegates allObjects];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          v11 = [v10 dispatchQueue];
          if (v11 == v5->_dispatchQueue)
          {
            [v10 pairingStartedScanning:v4];
          }

          else
          {
            v13[0] = MEMORY[0x1E69E9820];
            v13[1] = 3221225472;
            v13[2] = __38__SFBLEClient_pairingStartedScanning___block_invoke;
            v13[3] = &unk_1E788A658;
            v13[4] = v10;
            v14 = v4;
            dispatch_async(v11, v13);
          }
        }

        else
        {
          v11 = 0;
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  objc_sync_exit(v5);
  v12 = *MEMORY[0x1E69E9840];
}

- (void)pairingStoppedScanning:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [(NSMutableSet *)v5->_wpPairingDelegates allObjects];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          v11 = [v10 dispatchQueue];
          if (v11 == v5->_dispatchQueue)
          {
            [v10 pairingStoppedScanning:v4];
          }

          else
          {
            v13[0] = MEMORY[0x1E69E9820];
            v13[1] = 3221225472;
            v13[2] = __38__SFBLEClient_pairingStoppedScanning___block_invoke;
            v13[3] = &unk_1E788A658;
            v13[4] = v10;
            v14 = v4;
            dispatch_async(v11, v13);
          }
        }

        else
        {
          v11 = 0;
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  objc_sync_exit(v5);
  v12 = *MEMORY[0x1E69E9840];
}

- (void)pairing:(id)a3 failedToStartScanningWithError:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = [(NSMutableSet *)v8->_wpPairingDelegates allObjects];
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v21 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          v14 = [v13 dispatchQueue];
          if (v14 == v8->_dispatchQueue)
          {
            [v13 pairing:v6 failedToStartScanningWithError:v7];
          }

          else
          {
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            v18[0] = __54__SFBLEClient_pairing_failedToStartScanningWithError___block_invoke;
            v18[1] = &unk_1E788BD88;
            v18[2] = v13;
            v19 = v6;
            v20 = v7;
            dispatch_async(v14, block);
          }
        }

        else
        {
          v14 = 0;
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  objc_sync_exit(v8);
  v15 = *MEMORY[0x1E69E9840];
}

- (void)pairing:(id)a3 foundDevice:(id)a4 payload:(id)a5 rssi:(id)a6 peerInfo:(id)a7
{
  v36 = *MEMORY[0x1E69E9840];
  v24 = a3;
  v23 = a4;
  v22 = a5;
  v21 = a6;
  v12 = a7;
  v13 = self;
  objc_sync_enter(v13);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v14 = [(NSMutableSet *)v13->_wpPairingDelegates allObjects];
  v15 = [v14 countByEnumeratingWithState:&v31 objects:v35 count:16];
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
          objc_enumerationMutation(v14);
        }

        v18 = *(*(&v31 + 1) + 8 * v17);
        if (objc_opt_respondsToSelector())
        {
          v19 = [v18 dispatchQueue];
          if (v19 == v13->_dispatchQueue)
          {
            [v18 pairing:v24 foundDevice:v23 payload:v22 rssi:v21 peerInfo:v12];
          }

          else
          {
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __57__SFBLEClient_pairing_foundDevice_payload_rssi_peerInfo___block_invoke;
            block[3] = &unk_1E788DCA8;
            block[4] = v18;
            v26 = v24;
            v27 = v23;
            v28 = v22;
            v29 = v21;
            v30 = v12;
            dispatch_async(v19, block);
          }
        }

        else
        {
          v19 = 0;
        }

        ++v17;
      }

      while (v15 != v17);
      v15 = [v14 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v15);
  }

  objc_sync_exit(v13);
  v20 = *MEMORY[0x1E69E9840];
}

@end