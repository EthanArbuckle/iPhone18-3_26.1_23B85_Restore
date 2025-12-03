@interface SFBLEScanner
- (BOOL)_needDups;
- (BOOL)_updateCounterpart:(id)counterpart;
- (BOOL)_watchSetupParseData:(id)data fields:(id)fields;
- (BOOL)pairingUpdatePairedInfo:(id)info fields:(id)fields bleDevice:(id)device;
- (BOOL)pairingUpdatePairedInfoMB:(id)b fields:(id)fields bleDevice:(id)device;
- (NSString)description;
- (SFBLEScanner)initWithType:(int64_t)type;
- (id)_useCasesToString:(id)string;
- (id)pairingParsePayload:(id)payload identifier:(id)identifier bleDevice:(id)device peerInfo:(id)info;
- (int)_btSessionEnsureStarted;
- (void)_activateWithCompletion:(id)completion;
- (void)_btSessionEnsureStopped;
- (void)_foundDevice:(id)device advertisementData:(id)data rssi:(int64_t)rssi fields:(id)fields;
- (void)_invalidate;
- (void)_invokeBlockActivateSafe:(id)safe;
- (void)_nearbyParseManufacturerData:(id)data fields:(id)fields;
- (void)_nearbyParseNearbyActionPtr:(const char *)ptr end:(const char *)end fields:(id)fields;
- (void)_nearbyParseNearbyInfoPtr:(const char *)ptr end:(const char *)end fields:(id)fields;
- (void)_poweredOff;
- (void)_poweredOn;
- (void)_recordDevice:(id)device data:(id)data rssi:(id)rssi info:(id)info;
- (void)_removeAllDevicesWithReason:(id)reason;
- (void)_rescanLostFired;
- (void)_rescanTimerFired;
- (void)_restartIfNeeded:(BOOL)needed;
- (void)_rssiLogClose;
- (void)_rssiLogOpen;
- (void)_startTimeoutIfNeeded;
- (void)_timeoutTimerFired;
- (void)_updateRescanTimer;
- (void)_updateTrackedPeers;
- (void)_watchSetupParseName:(id)name fields:(id)fields;
- (void)activateWithCompletion:(id)completion;
- (void)awdl:(id)awdl failedToStartScanningWithError:(id)error;
- (void)awdl:(id)awdl foundDevice:(id)device rssi:(id)rssi;
- (void)awdlDidUpdateState:(id)state;
- (void)awdlStartedScanning:(id)scanning;
- (void)centralManager:(id)manager didDiscoverPeripheral:(id)peripheral advertisementData:(id)data RSSI:(id)i;
- (void)centralManagerDidUpdateState:(id)state;
- (void)dealloc;
- (void)foundAWDLDevice:(id)device rssi:(id)rssi;
- (void)foundNearbyDevice:(id)device data:(id)data peerInfo:(id)info;
- (void)foundPairingDevice:(id)device payload:(id)payload rssi:(id)rssi peerInfo:(id)info withTimeInMachContSeconds:(double)seconds;
- (void)foundPeripheralDevice:(id)device advertisementData:(id)data RSSI:(id)i;
- (void)invalidate;
- (void)nearby:(id)nearby didDiscoverType:(int64_t)type withData:(id)data fromPeer:(id)peer peerInfo:(id)info;
- (void)nearby:(id)nearby didFailToStartScanningForType:(int64_t)type WithError:(id)error;
- (void)nearby:(id)nearby didLosePeer:(id)peer type:(int64_t)type;
- (void)nearby:(id)nearby didStartScanningForType:(int64_t)type;
- (void)nearbyDidUpdateState:(id)state;
- (void)pairing:(id)pairing failedToStartScanningWithError:(id)error;
- (void)pairing:(id)pairing foundDevice:(id)device payload:(id)payload rssi:(id)rssi peerInfo:(id)info;
- (void)pairingDidUpdateState:(id)state;
- (void)pairingParseAccessoryStatusPayloadPtr:(const char *)ptr end:(const char *)end fields:(id)fields;
- (void)pairingStartedScanning:(id)scanning;
- (void)performUpdate:(id)update;
- (void)setChangeFlags:(unsigned int)flags;
- (void)setDeviceFilter:(id)filter;
- (void)setDispatchQueue:(id)queue;
- (void)setPayloadFilterData:(id)data mask:(id)mask;
- (void)setRssiThreshold:(int64_t)threshold;
- (void)setScanCache:(BOOL)cache;
- (void)setScanRate:(int64_t)rate;
- (void)setTimeout:(double)timeout;
- (void)setTrackedPeers:(id)peers;
- (void)setUseCases:(id)cases;
@end

@implementation SFBLEScanner

- (void)_updateRescanTimer
{
  v3 = [(NSMutableDictionary *)self->_devices count];
  if (self->_rescanInterval > 0.0 && v3 != 0)
  {
    if (v3 >= 0x15)
    {
      rescanIntervalScreenOff = 60;
    }

    else
    {
      rescanIntervalScreenOff = 10;
    }

    if (([gSFNearbyAgent screenOn] & 1) == 0 && rescanIntervalScreenOff <= SLODWORD(self->_rescanIntervalScreenOff))
    {
      rescanIntervalScreenOff = self->_rescanIntervalScreenOff;
    }

    if (self->_rescanTimer)
    {
      if (rescanIntervalScreenOff == self->_rescanSecondsActual)
      {
        return;
      }

      var0 = self->_ucat->var0;
      if (var0 > 30)
      {
        goto LABEL_32;
      }

      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_32;
        }

        ucat = self->_ucat;
      }

      LogPrintF();
LABEL_32:
      rescanTimer = self->_rescanTimer;
      CUDispatchTimerSet();
      goto LABEL_33;
    }

    v8 = self->_ucat->var0;
    if (v8 <= 30)
    {
      if (v8 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_30;
        }

        v17 = self->_ucat;
      }

      LogPrintF();
    }

LABEL_30:
    v11 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_dispatchQueue);
    v12 = self->_rescanTimer;
    self->_rescanTimer = v11;

    v13 = self->_rescanTimer;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __34__SFBLEScanner__updateRescanTimer__block_invoke;
    handler[3] = &unk_1E788B198;
    handler[4] = self;
    dispatch_source_set_event_handler(v13, handler);
    v14 = self->_rescanTimer;
    CUDispatchTimerSet();
    dispatch_activate(self->_rescanTimer);
LABEL_33:
    self->_rescanSecondsActual = rescanIntervalScreenOff;
    return;
  }

  if (!self->_rescanTimer)
  {
    return;
  }

  v5 = self->_ucat->var0;
  if (v5 <= 30)
  {
    if (v5 != -1)
    {
LABEL_9:
      LogPrintF();
      goto LABEL_25;
    }

    if (_LogCategory_Initialize())
    {
      v16 = self->_ucat;
      goto LABEL_9;
    }
  }

LABEL_25:
  v9 = self->_rescanTimer;
  if (v9)
  {
    v19 = v9;
    dispatch_source_cancel(v9);
    v10 = self->_rescanTimer;
    self->_rescanTimer = 0;
  }
}

- (void)_rescanLostFired
{
  v26 = *MEMORY[0x1E69E9840];
  lostTimer = self->_lostTimer;
  if (lostTimer)
  {
    v4 = lostTimer;
    dispatch_source_cancel(v4);
    v5 = self->_lostTimer;
    self->_lostTimer = 0;
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  allKeys = [(NSMutableDictionary *)self->_devices allKeys];
  v7 = [allKeys countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      v10 = 0;
      do
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(allKeys);
        }

        v11 = *(*(&v21 + 1) + 8 * v10);
        v12 = [(NSMutableDictionary *)self->_devices objectForKeyedSubscript:v11, v20];
        [v12 lastSeen];
        if (v13 == 0.0)
        {
          var0 = self->_ucat->var0;
          if (var0 <= 8)
          {
            if (var0 != -1)
            {
              goto LABEL_11;
            }

            if (_LogCategory_Initialize())
            {
              ucat = self->_ucat;
LABEL_11:
              v20 = v12;
              LogPrintF();
            }
          }

          v15 = _Block_copy(self->_deviceLostHandler);
          v16 = v15;
          if (v15)
          {
            (*(v15 + 2))(v15, v12);
          }

          [(NSMutableDictionary *)self->_devices removeObjectForKey:v11];
        }

        ++v10;
      }

      while (v8 != v10);
      v18 = [allKeys countByEnumeratingWithState:&v21 objects:v25 count:16];
      v8 = v18;
    }

    while (v18);
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)_updateTrackedPeers
{
  v49 = *MEMORY[0x1E69E9840];
  if ([(NSSet *)self->_trackedPeers count]&& !self->_invalidateCalled)
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v13 = self->_trackedPeersApplied;
    v14 = [(NSSet *)v13 countByEnumeratingWithState:&v42 objects:v48 count:16];
    if (!v14)
    {
      goto LABEL_33;
    }

    v15 = v14;
    v16 = *v43;
    while (1)
    {
      v17 = 0;
      do
      {
        if (*v43 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v42 + 1) + 8 * v17);
        if (![(NSSet *)self->_trackedPeers containsObject:v18])
        {
          var0 = self->_ucat->var0;
          if (var0 <= 30)
          {
            if (var0 != -1)
            {
              goto LABEL_26;
            }

            if (_LogCategory_Initialize())
            {
              ucat = self->_ucat;
LABEL_26:
              LogPrintF();
              [(WPNearby *)self->_wpNearby stopTrackingPeer:v18 forType:self->_wpNearbyType, v18];
              goto LABEL_29;
            }
          }

          [(WPNearby *)self->_wpNearby stopTrackingPeer:v18 forType:self->_wpNearbyType, v33];
        }

LABEL_29:
        ++v17;
      }

      while (v15 != v17);
      v21 = [(NSSet *)v13 countByEnumeratingWithState:&v42 objects:v48 count:16];
      v15 = v21;
      if (!v21)
      {
LABEL_33:

        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v22 = self->_trackedPeers;
        v23 = [(NSSet *)v22 countByEnumeratingWithState:&v38 objects:v47 count:16];
        if (!v23)
        {
LABEL_48:

          v31 = self->_trackedPeers;
          trackedPeersApplied = self->_trackedPeersApplied;
          self->_trackedPeersApplied = v31;
LABEL_49:

          goto LABEL_50;
        }

        v24 = v23;
        v25 = *v39;
        while (2)
        {
          v26 = 0;
LABEL_36:
          if (*v39 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v38 + 1) + 8 * v26);
          if (![(NSSet *)self->_trackedPeersApplied containsObject:v27])
          {
            v28 = self->_ucat->var0;
            if (v28 > 30)
            {
              goto LABEL_43;
            }

            if (v28 != -1)
            {
              goto LABEL_41;
            }

            if (_LogCategory_Initialize())
            {
              v29 = self->_ucat;
LABEL_41:
              LogPrintF();
              [(WPNearby *)self->_wpNearby startTrackingPeer:v27 forType:self->_wpNearbyType, v27];
            }

            else
            {
LABEL_43:
              [(WPNearby *)self->_wpNearby startTrackingPeer:v27 forType:self->_wpNearbyType, v33];
            }
          }

          if (v24 == ++v26)
          {
            v30 = [(NSSet *)v22 countByEnumeratingWithState:&v38 objects:v47 count:16];
            v24 = v30;
            if (!v30)
            {
              goto LABEL_48;
            }

            continue;
          }

          goto LABEL_36;
        }
      }
    }
  }

  if ([(NSSet *)self->_trackedPeersApplied count])
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v3 = self->_trackedPeersApplied;
    v4 = [(NSSet *)v3 countByEnumeratingWithState:&v34 objects:v46 count:16];
    if (!v4)
    {
      goto LABEL_17;
    }

    v5 = v4;
    v6 = *v35;
    while (1)
    {
      v7 = 0;
      do
      {
        if (*v35 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v34 + 1) + 8 * v7);
        v9 = self->_ucat->var0;
        if (v9 <= 30)
        {
          if (v9 != -1)
          {
            goto LABEL_11;
          }

          if (_LogCategory_Initialize())
          {
            v10 = self->_ucat;
LABEL_11:
            v33 = v8;
            LogPrintF();
          }
        }

        [(WPNearby *)self->_wpNearby stopTrackingPeer:v8 forType:self->_wpNearbyType, v33];
        ++v7;
      }

      while (v5 != v7);
      v11 = [(NSSet *)v3 countByEnumeratingWithState:&v34 objects:v46 count:16];
      v5 = v11;
      if (!v11)
      {
LABEL_17:

        trackedPeersApplied = self->_trackedPeersApplied;
        self->_trackedPeersApplied = 0;
        goto LABEL_49;
      }
    }
  }

LABEL_50:
  v32 = *MEMORY[0x1E69E9840];
}

- (BOOL)_needDups
{
  v35 = *MEMORY[0x1E69E9840];
  payloadType = self->_payloadType;
  if (payloadType != 15)
  {
    if (payloadType != 7)
    {
      LOBYTE(screenOn) = [(NSMutableDictionary *)self->_devices count]!= 0;
      goto LABEL_37;
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v4 = self->_devices;
    v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v30;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v30 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [(NSMutableDictionary *)self->_devices objectForKeyedSubscript:*(*(&v29 + 1) + 8 * i)];
          advertisementFields = [v9 advertisementFields];
          if (CFDictionaryGetInt64() || ((Int64Ranged = CFDictionaryGetInt64Ranged(), (Int64Ranged & 0x12) != 0) ? (v12 = (Int64Ranged & 0x200) == 0) : (v12 = 0), v12 || ((v13 = CFDictionaryGetInt64Ranged(), v13 != 5) ? (v14 = v13 == 9) : (v14 = 1), v14)))
          {

            goto LABEL_36;
          }
        }

        v6 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v29 objects:v34 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_32;
  }

  screenOn = [gSFNearbyAgent screenOn];
  if (screenOn)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v4 = self->_devices;
    v16 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v26;
      while (2)
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v26 != v18)
          {
            objc_enumerationMutation(v4);
          }

          v20 = [(NSMutableDictionary *)self->_devices objectForKeyedSubscript:*(*(&v25 + 1) + 8 * j), v25];
          advertisementFields2 = [v20 advertisementFields];

          if (CFDictionaryGetInt64() || CFDictionaryGetInt64() && CFDictionaryGetInt64Ranged() - 50 > 0x1E)
          {

LABEL_36:
            LOBYTE(screenOn) = 1;
            goto LABEL_37;
          }

          v22 = CFDictionaryGetInt64Ranged();

          if ((v22 & 0x10) != 0)
          {
            goto LABEL_36;
          }
        }

        v17 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v17)
        {
          continue;
        }

        break;
      }
    }

LABEL_32:

    LOBYTE(screenOn) = 0;
  }

LABEL_37:
  v23 = *MEMORY[0x1E69E9840];
  return screenOn;
}

- (void)_rescanTimerFired
{
  var0 = self->_ucat->var0;
  if (!self->_poweredOffSleep)
  {
    if (var0 > 10)
    {
      goto LABEL_13;
    }

    if (var0 == -1)
    {
      ucat = self->_ucat;
      if (!_LogCategory_Initialize())
      {
LABEL_13:
        _needActiveScan = [(SFBLEScanner *)self _needActiveScan];
        activeScan = self->_activeScan;
        if (activeScan == _needActiveScan)
        {
LABEL_25:
          if (![(NSMutableDictionary *)self->_devices count:v22])
          {
            if (!self->_needDups)
            {
              if (activeScan == _needActiveScan)
              {
                return;
              }

              goto LABEL_26;
            }

            self->_needDups = 0;
            v17 = self->_ucat->var0;
            if (v17 <= 30)
            {
              if (v17 == -1)
              {
                if (!_LogCategory_Initialize())
                {
                  goto LABEL_26;
                }

                v18 = self->_ucat;
              }

              LogPrintF();
            }
          }

LABEL_26:
          if (!self->_lostTimer)
          {
            [(NSMutableDictionary *)self->_devices enumerateKeysAndObjectsUsingBlock:&__block_literal_global_33];
            v13 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_dispatchQueue);
            lostTimer = self->_lostTimer;
            self->_lostTimer = v13;

            v15 = self->_lostTimer;
            handler[0] = MEMORY[0x1E69E9820];
            handler[1] = 3221225472;
            handler[2] = __33__SFBLEScanner__rescanTimerFired__block_invoke_2;
            handler[3] = &unk_1E788B198;
            handler[4] = self;
            dispatch_source_set_event_handler(v15, handler);
            v16 = self->_lostTimer;
            CUDispatchTimerSet();
            dispatch_activate(self->_lostTimer);
          }

          [(SFBLEScanner *)self _restartIfNeeded:1];
          return;
        }

        v9 = self->_ucat->var0;
        if (v9 <= 30)
        {
          if (v9 != -1)
          {
            v10 = self->_activeScan;
LABEL_17:
            v11 = "no";
            if (v10)
            {
              v12 = "yes";
            }

            else
            {
              v12 = "no";
            }

            if (_needActiveScan)
            {
              v11 = "yes";
            }

            v22 = v12;
            v23 = v11;
            LogPrintF();
            goto LABEL_24;
          }

          if (_LogCategory_Initialize())
          {
            v20 = self->_ucat;
            v10 = self->_activeScan;
            goto LABEL_17;
          }
        }

LABEL_24:
        self->_activeScan = _needActiveScan;
        goto LABEL_25;
      }

      v19 = self->_ucat;
    }

    v21 = [(NSMutableDictionary *)self->_devices count];
    LogPrintF();
    goto LABEL_13;
  }

  if (var0 > 30)
  {
    return;
  }

  if (var0 == -1)
  {
    v4 = self->_ucat;
    if (!_LogCategory_Initialize())
    {
      return;
    }

    v5 = self->_ucat;
  }

  LogPrintF();
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __26__SFBLEScanner_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (NSString)description
{
  v41 = 0;
  v3 = self->_payloadType + 1;
  if (v3 > 0x12)
  {
    v4 = "?";
  }

  else
  {
    v4 = off_1E788E208[v3];
  }

  v32 = v4;
  NSAppendPrintF();
  v5 = v41;
  v6 = v5;
  if (self->_invalidateCalled)
  {
    v40 = v5;
    NSAppendPrintF();
    v7 = v40;

    v6 = v7;
  }

  if (self->_activeScan)
  {
    v39 = v6;
    NSAppendPrintF();
    v8 = v6;

    v6 = v8;
  }

  if (self->_needDups)
  {
    v38 = v6;
    NSAppendPrintF();
    v9 = v6;

    v6 = v9;
  }

  if (self->_rssiThreshold)
  {
    v37 = v6;
    NSAppendPrintF();
    v10 = v6;

    v6 = v10;
  }

  if (self->_scanCache)
  {
    v36 = v6;
    NSAppendPrintF();
    v11 = v6;

    v6 = v11;
  }

  v35 = v6;
  scanRate = self->_scanRate;
  if (scanRate > 9)
  {
    if (scanRate <= 29)
    {
      if (scanRate == 10)
      {
        v13 = "Background";
        goto LABEL_38;
      }

      if (scanRate == 20)
      {
        v13 = "Normal";
        goto LABEL_38;
      }
    }

    else
    {
      switch(scanRate)
      {
        case 30:
          v13 = "HighNormal";
          goto LABEL_38;
        case 40:
          v13 = "High";
          goto LABEL_38;
        case 50:
          v13 = "Aggressive";
          goto LABEL_38;
      }
    }
  }

  else if (scanRate <= 1)
  {
    if (!scanRate)
    {
      v13 = "Invalid";
      goto LABEL_38;
    }

    if (scanRate == 1)
    {
      v13 = "BackgroundOld";
      goto LABEL_38;
    }
  }

  else
  {
    switch(scanRate)
    {
      case 2:
        v13 = "NormalOld";
        goto LABEL_38;
      case 3:
        v13 = "HighOld";
        goto LABEL_38;
      case 4:
        v13 = "AggressiveOld";
        goto LABEL_38;
    }
  }

  v13 = "?";
LABEL_38:
  v27 = v13;
  NSAppendPrintF();
  v14 = v35;

  v34[5] = v14;
  v28 = [(NSMutableDictionary *)self->_devices count:v27];
  NSAppendPrintF();
  v15 = v14;

  v34[4] = v15;
  v29 = [(NSArray *)self->_deviceFilter count];
  NSAppendPrintF();
  v16 = v15;

  v34[3] = v16;
  v30 = [(NSSet *)self->_trackedPeers count];
  NSAppendPrintF();
  v17 = v16;

  payloadFilterData = self->_payloadFilterData;
  if (!payloadFilterData)
  {
    if (!self->_payloadFilterMask)
    {
      goto LABEL_42;
    }

    payloadFilterData = &stru_1F1D30528;
  }

  v34[2] = v17;
  v30 = payloadFilterData;
  NSAppendPrintF();
  v19 = v17;

  v17 = v19;
LABEL_42:
  rescanSecondsActual = self->_rescanSecondsActual;
  if (rescanSecondsActual >= 1)
  {
    v34[1] = v17;
    v30 = rescanSecondsActual;
    NSAppendPrintF();
    v21 = v17;

    v17 = v21;
  }

  changeFlags = self->_changeFlags;
  if (changeFlags)
  {
    if (changeFlags == -1)
    {
      v34[0] = v17;
      v23 = v34;
    }

    else
    {
      v33 = v17;
      v30 = changeFlags;
      v23 = &v33;
    }

    NSAppendPrintF();
    v24 = *v23;

    v17 = v24;
  }

  if (!self->_useCases)
  {
    v31 = [(SFBLEScanner *)self _useCasesToString:0, v30];
    NSAppendPrintF();
    v25 = v17;

    v17 = v25;
  }

  return v17;
}

- (int)_btSessionEnsureStarted
{
  if (self->_btStarted)
  {
    return 0;
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
  v12 = _btSessionEventHandler;
  selfCopy = self;
  v5 = softLinkBTSessionAttachWithQueue(self->_ucat->var4, &v12, selfCopy, selfCopy->_dispatchQueue);
  if (v5)
  {
    v6 = v5;
    CFRelease(selfCopy);
    v7 = v6 + 310000;
    if (v6 != -310000)
    {
      OUTLINED_FUNCTION_2_8();
      if (v8 <= 60)
      {
        if (v8 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return v7;
          }

          v10 = self->_ucat;
        }

        LogPrintF();
      }
    }
  }

  else
  {
    v7 = 0;
    self->_btStarted = 1;
  }

  return v7;
}

- (void)_poweredOff
{
  IOPMConnectionGetSystemCapabilities();
  v3 = IOPMIsASleep();
  self->_poweredOffSleep = v3;
  if (v3)
  {
    var0 = self->_ucat->var0;
    if (var0 > 30)
    {
      return;
    }

    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        return;
      }

      ucat = self->_ucat;
    }

    LogPrintF();
  }

  else
  {

    [(SFBLEScanner *)self _removeAllDevicesWithReason:@"BTPowerOff"];
  }
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
  devices = self->_devices;
  self->_devices = 0;

  lostTimer = self->_lostTimer;
  if (lostTimer)
  {
    v6 = lostTimer;
    dispatch_source_cancel(v6);
    v7 = self->_lostTimer;
    self->_lostTimer = 0;
  }

  rescanTimer = self->_rescanTimer;
  if (rescanTimer)
  {
    v9 = rescanTimer;
    dispatch_source_cancel(v9);
    v10 = self->_rescanTimer;
    self->_rescanTimer = 0;
  }

  timeoutTimer = self->_timeoutTimer;
  if (timeoutTimer)
  {
    v12 = timeoutTimer;
    dispatch_source_cancel(v12);
    v13 = self->_timeoutTimer;
    self->_timeoutTimer = 0;
  }

  [(CURetrier *)self->_startRetrier invalidateDirect];
  startRetrier = self->_startRetrier;
  self->_startRetrier = 0;

  payloadType = self->_payloadType;
  if (payloadType > 14)
  {
    switch(payloadType)
    {
      case 15:
        [(SFBLEScanner *)self _updateTrackedPeers];
        wpNearby = self->_wpNearby;
        v19 = 0;
        break;
      case 16:
        [(SFBLEScanner *)self _updateTrackedPeers];
        wpNearby = self->_wpNearby;
        v19 = 1;
        break;
      case 17:
LABEL_22:
        [(CBCentralManager *)self->_centralManager stopScan];
        centralManager = self->_centralManager;
        self->_centralManager = 0;
LABEL_35:

        goto LABEL_36;
      default:
        goto LABEL_24;
    }

    [(WPNearby *)wpNearby stopScanningForType:v19];
    centralManager = self->_wpNearby;
    if (centralManager)
    {
      v23 = +[SFBLEClient sharedClient];
      [v23 removeNearbyDelegate:self];

      centralManager = self->_wpNearby;
    }

    self->_wpNearby = 0;
    goto LABEL_35;
  }

  switch(payloadType)
  {
    case -1:
      goto LABEL_22;
    case 5:
      [(WPAWDL *)self->_wpAirDrop stopConnectionlessAWDLServiceScanning];
      centralManager = self->_wpAirDrop;
      if (centralManager)
      {
        v22 = +[SFBLEClient sharedClient];
        [v22 removeAirDropDelegate:self];

        centralManager = self->_wpAirDrop;
      }

      self->_wpAirDrop = 0;
      goto LABEL_35;
    case 7:
      [(WPPairing *)self->_wpPairing stopProximityPairingServiceScanning];
      centralManager = self->_wpPairing;
      if (centralManager)
      {
        v17 = +[SFBLEClient sharedClient];
        [v17 removePairingDelegate:self];

        centralManager = self->_wpPairing;
      }

      self->_wpPairing = 0;
      goto LABEL_35;
  }

LABEL_24:
  v20 = self->_ucat->var0;
  if (v20 > 60)
  {
    goto LABEL_36;
  }

  if (v20 == -1)
  {
    if (!_LogCategory_Initialize())
    {
      goto LABEL_36;
    }

    v33 = self->_ucat;
    payloadType = self->_payloadType;
  }

  if ((payloadType + 1) > 0x12)
  {
    v21 = "?";
  }

  else
  {
    v21 = off_1E788E208[payloadType + 1];
  }

  v36 = payloadType;
  v37 = v21;
  LogPrintF();
LABEL_36:
  self->_scanStarted = 0;
  [(SFBLEScanner *)self _btSessionEnsureStopped:v36];
  v24 = self->_ucat->var0;
  if (v24 <= 30)
  {
    if (v24 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_40;
      }

      v35 = self->_ucat;
    }

    LogPrintF();
  }

LABEL_40:
  invalidationHandler = self->_invalidationHandler;
  if (invalidationHandler)
  {
    invalidationHandler[2]();
  }

  [(SFBLEScanner *)self _rssiLogClose];
  bluetoothStateChangedHandler = self->_bluetoothStateChangedHandler;
  self->_bluetoothStateChangedHandler = 0;

  deviceFoundHandler = self->_deviceFoundHandler;
  self->_deviceFoundHandler = 0;

  deviceLostHandler = self->_deviceLostHandler;
  self->_deviceLostHandler = 0;

  deviceChangedHandler = self->_deviceChangedHandler;
  self->_deviceChangedHandler = 0;

  v30 = self->_invalidationHandler;
  self->_invalidationHandler = 0;

  scanStateChangedHandler = self->_scanStateChangedHandler;
  self->_scanStateChangedHandler = 0;

  timeoutHandler = self->_timeoutHandler;
  self->_timeoutHandler = 0;
}

- (void)_btSessionEnsureStopped
{
  p_btSession = &self->_btSession;
  if (self->_btSession)
  {
    var0 = self->_ucat->var0;
    if (var0 <= 30)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        ucat = self->_ucat;
      }

      LogPrintF();
    }

LABEL_6:
    softLinkBTSessionDetachWithQueue(p_btSession);
    *p_btSession = 0;
  }

  self->_btStarted = 0;
}

- (void)_rssiLogClose
{
  if (self->_rssiEventLogFile)
  {
    var0 = self->_ucat->var0;
    if (var0 <= 50)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        ucat = self->_ucat;
      }

      LogPrintF();
    }

LABEL_6:
    rssiEventLogFile = self->_rssiEventLogFile;
    FPrintF();
    v5 = self->_rssiEventLogFile;
    FPrintF();
    fclose(self->_rssiEventLogFile);
    self->_rssiEventLogFile = 0;
  }
}

- (void)dealloc
{
  if (self->_btSession)
  {
    [SFBLEScanner dealloc];
    goto LABEL_15;
  }

  if (self->_centralManager)
  {
LABEL_15:
    [SFBLEScanner dealloc];
    goto LABEL_16;
  }

  if (self->_rescanTimer)
  {
LABEL_16:
    [SFBLEScanner dealloc];
    goto LABEL_17;
  }

  if (self->_startRetrier)
  {
LABEL_17:
    [SFBLEAdvertiser dealloc];
    goto LABEL_18;
  }

  if (self->_wpAirDrop)
  {
LABEL_18:
    [SFBLEScanner dealloc];
    goto LABEL_19;
  }

  if (self->_wpNearby)
  {
LABEL_19:
    [SFBLEAdvertiser dealloc];
    goto LABEL_20;
  }

  if (self->_wpPairing)
  {
LABEL_20:
    v16 = [SFBLEScanner dealloc];
    [(SFBLEScanner *)v16 .cxx_destruct];
    return;
  }

  [(SFBLEScanner *)self _rssiLogClose];
  bluetoothStateChangedHandler = self->_bluetoothStateChangedHandler;
  self->_bluetoothStateChangedHandler = 0;

  devices = self->_devices;
  self->_devices = 0;

  deviceFilter = self->_deviceFilter;
  self->_deviceFilter = 0;

  deviceFoundHandler = self->_deviceFoundHandler;
  self->_deviceFoundHandler = 0;

  deviceLostHandler = self->_deviceLostHandler;
  self->_deviceLostHandler = 0;

  deviceChangedHandler = self->_deviceChangedHandler;
  self->_deviceChangedHandler = 0;

  dispatchQueue = self->_dispatchQueue;
  if (dispatchQueue)
  {
    self->_dispatchQueue = 0;
  }

  invalidationHandler = self->_invalidationHandler;
  self->_invalidationHandler = 0;

  payloadFilterData = self->_payloadFilterData;
  self->_payloadFilterData = 0;

  payloadFilterMask = self->_payloadFilterMask;
  self->_payloadFilterMask = 0;

  scanStateChangedHandler = self->_scanStateChangedHandler;
  self->_scanStateChangedHandler = 0;

  timeoutHandler = self->_timeoutHandler;
  self->_timeoutHandler = 0;

  ucat = self->_ucat;
  if (ucat)
  {
    if ((ucat->var3 & 0x40000) != 0)
    {
      LogCategory_Remove();
      self->_ucat = 0;
    }
  }

  v18.receiver = self;
  v18.super_class = SFBLEScanner;
  [(SFBLEScanner *)&v18 dealloc];
}

- (void)_startTimeoutIfNeeded
{
  if (!self->_timeoutFired && self->_timeout > 0.0 && !self->_timeoutTimer)
  {
    var0 = self->_ucat->var0;
    if (var0 > 20)
    {
      goto LABEL_8;
    }

    if (var0 == -1)
    {
      if (_LogCategory_Initialize())
      {
        goto LABEL_12;
      }

      goto LABEL_8;
    }

    while (1)
    {
      LogPrintF();
LABEL_8:
      v4 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_dispatchQueue);
      timeoutTimer = self->_timeoutTimer;
      self->_timeoutTimer = v4;

      v6 = self->_timeoutTimer;
      if (v6)
      {
        break;
      }

      [SFBLEScanner _startTimeoutIfNeeded];
LABEL_12:
      ucat = self->_ucat;
      timeout = self->_timeout;
    }

    v7 = (self->_timeout * 1000000000.0);
    v8 = dispatch_time(0, v7);
    dispatch_source_set_timer(v6, v8, v7, v7 >> 2);
    v9 = self->_timeoutTimer;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __37__SFBLEScanner__startTimeoutIfNeeded__block_invoke;
    handler[3] = &unk_1E788B198;
    handler[4] = self;
    dispatch_source_set_event_handler(v9, handler);
    dispatch_resume(self->_timeoutTimer);
  }
}

- (void)setChangeFlags:(unsigned int)flags
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __31__SFBLEScanner_setChangeFlags___block_invoke;
  v3[3] = &unk_1E788D970;
  v3[4] = self;
  flagsCopy = flags;
  [(SFBLEScanner *)self _invokeBlockActivateSafe:v3];
}

- (void)setDeviceFilter:(id)filter
{
  filterCopy = filter;
  var0 = self->_ucat->var0;
  if (var0 <= 30)
  {
    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_5;
      }

      ucat = self->_ucat;
    }

    v9 = filterCopy;
    LogPrintF();
  }

LABEL_5:
  v6 = [filterCopy copy];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __32__SFBLEScanner_setDeviceFilter___block_invoke;
  v10[3] = &unk_1E788A658;
  v10[4] = self;
  v11 = v6;
  v7 = v6;
  [(SFBLEScanner *)self _invokeBlockActivateSafe:v10];
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

- (void)setPayloadFilterData:(id)data mask:(id)mask
{
  dataCopy = data;
  maskCopy = mask;
  var0 = self->_ucat->var0;
  if (var0 > 30)
  {
    goto LABEL_5;
  }

  if (var0 == -1)
  {
    if (_LogCategory_Initialize())
    {
      goto LABEL_8;
    }

    goto LABEL_5;
  }

  while (1)
  {
    v15 = dataCopy;
    v16 = maskCopy;
    LogPrintF();
LABEL_5:
    v9 = [dataCopy length];
    if (v9 == [maskCopy length])
    {
      break;
    }

    [SFBLEScanner setPayloadFilterData:dataCopy mask:maskCopy];
LABEL_8:
    ucat = self->_ucat;
  }

  v10 = [dataCopy copy];
  v11 = [maskCopy copy];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __42__SFBLEScanner_setPayloadFilterData_mask___block_invoke;
  v17[3] = &unk_1E788BD88;
  v17[4] = self;
  v18 = v10;
  v19 = v11;
  v12 = v11;
  v13 = v10;
  [(SFBLEScanner *)self _invokeBlockActivateSafe:v17];
}

void __42__SFBLEScanner_setPayloadFilterData_mask___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 320), *(a1 + 40));
  v2 = *(a1 + 48);
  v3 = (*(a1 + 32) + 328);

  objc_storeStrong(v3, v2);
}

- (void)setRssiThreshold:(int64_t)threshold
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __33__SFBLEScanner_setRssiThreshold___block_invoke;
  v3[3] = &unk_1E788B260;
  v3[4] = self;
  v3[5] = threshold;
  [(SFBLEScanner *)self _invokeBlockActivateSafe:v3];
}

- (void)setScanCache:(BOOL)cache
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __29__SFBLEScanner_setScanCache___block_invoke;
  v3[3] = &unk_1E788B700;
  cacheCopy = cache;
  v3[4] = self;
  [(SFBLEScanner *)self _invokeBlockActivateSafe:v3];
}

uint64_t __29__SFBLEScanner_setScanCache___block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  v2 = *(result + 32);
  if (v1 != *(v2 + 258))
  {
    *(v2 + 258) = v1;
    *(*(result + 32) + 104) = 0;
  }

  return result;
}

- (void)setScanRate:(int64_t)rate
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __28__SFBLEScanner_setScanRate___block_invoke;
  v3[3] = &unk_1E788B260;
  v3[4] = self;
  v3[5] = rate;
  [(SFBLEScanner *)self _invokeBlockActivateSafe:v3];
}

- (void)setTimeout:(double)timeout
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __27__SFBLEScanner_setTimeout___block_invoke;
  v3[3] = &unk_1E788B260;
  v3[4] = self;
  *&v3[5] = timeout;
  [(SFBLEScanner *)self _invokeBlockActivateSafe:v3];
}

double __27__SFBLEScanner_setTimeout___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 128);
  if (v2)
  {
    v3 = v2;
    dispatch_source_cancel(v3);
    v4 = *(a1 + 32);
    v5 = *(v4 + 128);
    *(v4 + 128) = 0;
  }

  result = *(a1 + 40);
  *(*(a1 + 32) + 408) = result;
  return result;
}

- (void)setTrackedPeers:(id)peers
{
  peersCopy = peers;
  var0 = self->_ucat->var0;
  if (var0 <= 30)
  {
    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_5;
      }

      ucat = self->_ucat;
    }

    v9 = peersCopy;
    LogPrintF();
  }

LABEL_5:
  v6 = [peersCopy copy];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __32__SFBLEScanner_setTrackedPeers___block_invoke;
  v10[3] = &unk_1E788A658;
  v10[4] = self;
  v11 = v6;
  v7 = v6;
  [(SFBLEScanner *)self _invokeBlockActivateSafe:v10];
}

- (void)setUseCases:(id)cases
{
  v4 = [cases copy];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __28__SFBLEScanner_setUseCases___block_invoke;
  v6[3] = &unk_1E788A658;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(SFBLEScanner *)self _invokeBlockActivateSafe:v6];
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
  v8[2] = __39__SFBLEScanner_activateWithCompletion___block_invoke;
  v8[3] = &unk_1E788B210;
  v8[4] = selfCopy;
  v9 = completionCopy;
  v7 = completionCopy;
  dispatch_async(dispatchQueue, v8);

  objc_sync_exit(selfCopy);
}

- (void)_activateWithCompletion:(id)completion
{
  v30[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  p_ucat = &self->_ucat;
  var0 = self->_ucat->var0;
  if (var0 <= 30)
  {
    if (var0 != -1)
    {
LABEL_3:
      LogPrintF();
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      v27 = *p_ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
  if (self->_invalidateCalled)
  {
    v26 = 4294960572;
    goto LABEL_41;
  }

  if (self->_startRetrier)
  {
    v26 = 4294960575;
    goto LABEL_41;
  }

  payloadType = self->_payloadType;
  if (payloadType > 14)
  {
    if ((payloadType - 15) < 2)
    {
      self->_wpNearbyType = payloadType != 15;
      if (self->_wpNearby)
      {
        goto LABEL_26;
      }

      v11 = +[SFBLEClient sharedClient];
      v12 = [v11 addNearbyDelegate:self];
      wpNearby = self->_wpNearby;
      self->_wpNearby = v12;

      if (self->_wpNearby)
      {
        goto LABEL_26;
      }

LABEL_42:
      v26 = 4294960567;
      goto LABEL_41;
    }

    if (payloadType != 17)
    {
LABEL_33:
      v23 = (*p_ucat)->var0;
      if (v23 <= 60)
      {
        if (v23 != -1)
        {
LABEL_37:
          if ((payloadType + 1) <= 0x12)
          {
            v25 = off_1E788E208[payloadType + 1];
          }

          LogPrintF();
          goto LABEL_40;
        }

        if (_LogCategory_Initialize())
        {
          ucat = self->_ucat;
          payloadType = self->_payloadType;
          goto LABEL_37;
        }
      }

LABEL_40:
      v26 = 4294960561;
LABEL_41:
      [(SFBLEScanner *)completionCopy _activateWithCompletion:v26, &v29, v30, &self->_ucat];
      goto LABEL_32;
    }

LABEL_21:
    if (self->_centralManager)
    {
      goto LABEL_26;
    }

    v14 = [objc_alloc(getCBCentralManagerClass()) initWithDelegate:self queue:self->_dispatchQueue];
    centralManager = self->_centralManager;
    self->_centralManager = v14;

    if (self->_centralManager)
    {
      goto LABEL_26;
    }

    goto LABEL_42;
  }

  if (payloadType == -1)
  {
    goto LABEL_21;
  }

  if (payloadType == 5)
  {
    if (self->_wpAirDrop)
    {
      goto LABEL_26;
    }

    v16 = +[SFBLEClient sharedClient];
    v17 = [v16 addAirDropDelegate:self];
    wpAirDrop = self->_wpAirDrop;
    self->_wpAirDrop = v17;

    if (self->_wpAirDrop)
    {
      goto LABEL_26;
    }

    goto LABEL_42;
  }

  if (payloadType != 7)
  {
    goto LABEL_33;
  }

  if ([(SFBLEScanner *)self _btSessionUsable])
  {
    [(SFBLEScanner *)self _btSessionEnsureStarted];
  }

  if (!self->_wpPairing)
  {
    v8 = +[SFBLEClient sharedClient];
    v9 = [v8 addPairingDelegate:self];
    wpPairing = self->_wpPairing;
    self->_wpPairing = v9;

    if (!self->_wpPairing)
    {
      goto LABEL_42;
    }
  }

LABEL_26:
  if (self->_rssiLog && !self->_rssiEventLogFile)
  {
    [(SFBLEScanner *)self _rssiLogOpen];
  }

  v19 = objc_alloc_init(MEMORY[0x1E6999520]);
  startRetrier = self->_startRetrier;
  self->_startRetrier = v19;

  v21 = self->_startRetrier;
  if (!v21)
  {
    goto LABEL_42;
  }

  [(CURetrier *)v21 setDispatchQueue:self->_dispatchQueue];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __40__SFBLEScanner__activateWithCompletion___block_invoke;
  v28[3] = &unk_1E788B198;
  v28[4] = self;
  [(CURetrier *)self->_startRetrier setActionHandler:v28];
  [(CURetrier *)self->_startRetrier startDirect];
  if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }

LABEL_32:

  v22 = *MEMORY[0x1E69E9840];
}

- (void)performUpdate:(id)update
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__SFBLEScanner_performUpdate___block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  updateCopy = update;
  dispatch_async(dispatchQueue, block);
  updateCopy[2](updateCopy);

  v6 = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __30__SFBLEScanner_performUpdate___block_invoke_2;
  v7[3] = &unk_1E788B198;
  v7[4] = self;
  dispatch_async(v6, v7);
}

_BYTE *__30__SFBLEScanner_performUpdate___block_invoke_2(uint64_t a1)
{
  *(*(a1 + 32) + 152) = 0;
  result = *(a1 + 32);
  if (result[9] == 1 && (result[48] & 1) == 0)
  {
    return [result _restartIfNeeded];
  }

  return result;
}

- (void)_foundDevice:(id)device advertisementData:(id)data rssi:(int64_t)rssi fields:(id)fields
{
  deviceCopy = device;
  dataCopy = data;
  fieldsCopy = fields;
  if ((rssi - 20) >= 0x6B)
  {
    rssiCopy = rssi;
  }

  else
  {
    rssiCopy = rssi - 126;
  }

  if ((rssiCopy - 1) >= 0xFFFFFFFFFFFFFFA5)
  {
    v14 = rssiCopy;
  }

  else
  {
    v14 = 0;
  }

  v98 = v14;
  if ((v14 & 0x8000000000000000) == 0)
  {
    p_needDups = &self->_needDups;
    goto LABEL_28;
  }

  if (self->_rssiLogStdOut || self->_rssiEventLogFile)
  {
    v16 = dataCopy;
    v103 = 0;
    v102 = 0;
    v101 = 0;
    CFDictionaryGetHardwareAddress();
    v17 = [fieldsCopy objectForKeyedSubscript:@"ch"];
    integerValue = [v17 integerValue];

    CFStringGetTypeID();
    v19 = CFDictionaryGetTypedValue();
    if (self->_rssiEventLogFile)
    {
      if (v19)
      {
        v20 = v19;
      }

      else
      {
        v20 = &stru_1F1D30528;
      }

      v87 = v14;
      v88 = integerValue;
      v84 = deviceCopy;
      v86 = &v101;
      v89 = v16;
      v90 = v20;
      FPrintF();
    }

    if (self->_rssiLogStdOut)
    {
      v21 = *MEMORY[0x1E69E9858];
      if (v19)
      {
        v22 = v19;
      }

      else
      {
        v22 = &stru_1F1D30528;
      }

      v89 = v16;
      v90 = v22;
      v87 = v14;
      v88 = integerValue;
      v84 = deviceCopy;
      v86 = &v101;
      FPrintF();
    }

    dataCopy = v16;
  }

  p_needDups = &self->_needDups;
  if (!self->_needDups || (rssiThreshold = self->_rssiThreshold) == 0 || v14 >= rssiThreshold)
  {
LABEL_28:
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __59__SFBLEScanner__foundDevice_advertisementData_rssi_fields___block_invoke;
    aBlock[3] = &unk_1E788E1A8;
    aBlock[4] = self;
    v25 = _Block_copy(aBlock);
    LOBYTE(v101) = 0;
    v26 = [gSFNearbyAgent idsDeviceForBluetoothDeviceID:deviceCopy conflictDetected:&v101];
    v27 = [(NSMutableDictionary *)self->_devices objectForKeyedSubscript:deviceCopy];
    v97 = deviceCopy;
    if (v27)
    {
      v28 = v27;
      if (v26)
      {
        uniqueIDOverride = [v26 uniqueIDOverride];
        if (uniqueIDOverride)
        {
          [fieldsCopy setObject:uniqueIDOverride forKeyedSubscript:@"idsID"];
        }

        v30 = [MEMORY[0x1E696AD98] numberWithBool:{v101, v84, v86, v87, v88, v89, v90}];
        [fieldsCopy setObject:v30 forKeyedSubscript:@"idsIDCD"];
      }

      else
      {
        uniqueIDOverride = 0;
      }

      v95 = v25;
      advertisementFields = [(SFBLEDevice *)v28 advertisementFields];
      CFStringGetTypeID();
      v45 = CFDictionaryGetTypedValue();

      v92 = v45;
      if (uniqueIDOverride)
      {
        v46 = [v45 isEqual:uniqueIDOverride] - 1;
      }

      else
      {
        v46 = 0;
      }

      CFStringGetTypeID();
      v47 = CFDictionaryGetTypedValue();
      modelIdentifier = v47;
      if (v26)
      {
        if (!v47)
        {
          modelIdentifier = [v26 modelIdentifier];
          if (modelIdentifier)
          {
            [fieldsCopy setObject:modelIdentifier forKeyedSubscript:@"model"];
          }
        }
      }

      v96 = modelIdentifier;
      v49 = v26;
      advertisementFields2 = [(SFBLEDevice *)v28 advertisementFields];
      CFStringGetTypeID();
      v51 = CFDictionaryGetTypedValue();

      v93 = p_needDups;
      v91 = v51;
      if (v96 && ![v51 isEqual:?])
      {
        v46 |= 8u;
      }

      [(SFBLEDevice *)v28 setLastSeen:CFAbsoluteTimeGetCurrent()];
      advertisementData = [(SFBLEDevice *)v28 advertisementData];
      v53 = [advertisementData isEqual:dataCopy];

      v26 = v49;
      v94 = dataCopy;
      if (v53)
      {
        v54 = v46 | 0x20u;
      }

      else
      {
        [(SFBLEDevice *)v28 setAdvertisementData:dataCopy];
        v54 = v46 | 0x21u;
      }

      Int64Ranged = CFDictionaryGetInt64Ranged();
      v25 = v95;
      if ([(SFBLEDevice *)v28 connectedServices]!= Int64Ranged)
      {
        [(SFBLEDevice *)v28 setConnectedServices:Int64Ranged];
        v54 = v54 | 8;
      }

      if (v98 < 0)
      {
        [(SFBLEDevice *)v28 updateRSSI:v98];
        v54 = v54 | 4;
      }

      bluetoothAddress = [(SFBLEDevice *)v28 bluetoothAddress];
      if (bluetoothAddress)
      {
        v57 = bluetoothAddress;
      }

      else
      {
        CFDataGetTypeID();
        v57 = CFDictionaryGetTypedValue();
        if (v57)
        {
          [(SFBLEDevice *)v28 setBluetoothAddress:v57];
          v54 = v54 | 8;
        }
      }

      CFStringGetTypeID();
      v58 = CFDictionaryGetTypedValue();
      name = v58;
      if (v26 && !v58)
      {
        name = [v26 name];
      }

      if (name)
      {
        name2 = [(SFBLEDevice *)v28 name];
        v61 = [name2 isEqual:name];

        if ((v61 & 1) == 0)
        {
          [(SFBLEDevice *)v28 setName:name];
          v54 = v54 | 8;
        }

        v25 = v95;
      }

      Int64 = CFDictionaryGetInt64();
      if (v26)
      {
        [fieldsCopy setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"paired"];
      }

      if (![(SFBLEDevice *)v28 paired]|| Int64)
      {
        if (![(SFBLEDevice *)v28 paired]&& Int64)
        {
          [(SFBLEDevice *)v28 setPaired:1];
          v54 = v54 | 8;
        }
      }

      else
      {
        [fieldsCopy setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"paired"];
      }

      counterpartIdentifier = [(SFBLEDevice *)v28 counterpartIdentifier];
      if (counterpartIdentifier)
      {

        if (fieldsCopy)
        {
LABEL_93:
          [(SFBLEDevice *)v28 setAdvertisementFields:fieldsCopy];
        }
      }

      else
      {
        if ([(SFBLEScanner *)self _updateCounterpart:v28])
        {
          v54 = v54 | 8;
        }

        else
        {
          v54 = v54;
        }

        if (fieldsCopy)
        {
          goto LABEL_93;
        }
      }

      v25[2](v25, v28);
      changeFlags = self->_changeFlags;
      var0 = self->_ucat->var0;
      if (changeFlags != -1 && (changeFlags & v54) == 0)
      {
        if (var0 <= 8)
        {
          if (var0 == -1)
          {
            if (!_LogCategory_Initialize())
            {
              goto LABEL_118;
            }

            ucat = self->_ucat;
          }

          v85 = v28;
          LogPrintF();
        }

LABEL_118:

        p_needDups = v93;
        dataCopy = v94;
        v40 = uniqueIDOverride;
        goto LABEL_119;
      }

      if (var0 <= 8)
      {
        if (var0 != -1)
        {
LABEL_101:
          v85 = v28;
          LogPrintF();
          goto LABEL_115;
        }

        if (_LogCategory_Initialize())
        {
          v81 = self->_ucat;
          goto LABEL_101;
        }
      }

LABEL_115:
      deviceChangedHandler = self->_deviceChangedHandler;
      if (deviceChangedHandler)
      {
        deviceChangedHandler[2](deviceChangedHandler, v28, v54);
      }

      goto LABEL_118;
    }

    v31 = CFDictionaryGetInt64();
    CFStringGetTypeID();
    v32 = CFDictionaryGetTypedValue();
    name3 = v32;
    if (v26)
    {
      if (!v32)
      {
        name3 = [v26 name];
      }

      CFStringGetTypeID();
      v34 = CFDictionaryGetTypedValue();
      if (v34 || ([v26 modelIdentifier], (v34 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v35 = v34;
        [fieldsCopy setObject:v34 forKeyedSubscript:{@"model", v84, v86, v87, v88, v89, v90}];
      }

      v99 = name3;
      uniqueIDOverride2 = [v26 uniqueIDOverride];
      if (uniqueIDOverride2)
      {
        [fieldsCopy setObject:uniqueIDOverride2 forKeyedSubscript:@"idsID"];
      }

      v37 = [MEMORY[0x1E696AD98] numberWithBool:v101];
      [fieldsCopy setObject:v37 forKeyedSubscript:@"idsIDCD"];

      [fieldsCopy setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"paired"];
      goto LABEL_42;
    }

    v99 = v32;
    if (!v31)
    {
      v38 = 0;
LABEL_43:
      v28 = objc_alloc_init(SFBLEDevice);
      [(SFBLEDevice *)v28 setAdvertisementData:dataCopy];
      if (fieldsCopy)
      {
        [(SFBLEDevice *)v28 setAdvertisementFields:fieldsCopy];
      }

      CFDataGetTypeID();
      [(SFBLEDevice *)v28 setBluetoothAddress:CFDictionaryGetTypedValue()];
      [(SFBLEDevice *)v28 setConnectedServices:CFDictionaryGetInt64Ranged()];
      [(SFBLEDevice *)v28 setFoundTicks:mach_absolute_time()];
      [(SFBLEDevice *)v28 setIdentifier:deviceCopy];
      [(SFBLEDevice *)v28 setLastSeen:CFAbsoluteTimeGetCurrent()];
      if (v99)
      {
        [(SFBLEDevice *)v28 setName:?];
      }

      [(SFBLEDevice *)v28 setPaired:v38, v84];
      if (v98 < 0)
      {
        [(SFBLEDevice *)v28 updateRSSI:?];
      }

      [(SFBLEScanner *)self _updateCounterpart:v28];
      v25[2](v25, v28);
      devices = self->_devices;
      v40 = v99;
      if (!devices)
      {
        v41 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v42 = self->_devices;
        self->_devices = v41;

        devices = self->_devices;
      }

      [(NSMutableDictionary *)devices setObject:v28 forKeyedSubscript:deviceCopy];
      v43 = self->_ucat->var0;
      if (v43 > 8)
      {
        goto LABEL_112;
      }

      if (v43 == -1)
      {
        if (!_LogCategory_Initialize())
        {
LABEL_112:
          deviceFoundHandler = self->_deviceFoundHandler;
          if (deviceFoundHandler)
          {
            deviceFoundHandler[2](deviceFoundHandler, v28);
          }

LABEL_119:

          _needActiveScan = [(SFBLEScanner *)self _needActiveScan];
          activeScan = self->_activeScan;
          if (activeScan == _needActiveScan)
          {
LABEL_131:
            deviceCopy = v97;
            if (*p_needDups || (self->_changeFlags & 0x16) == 0 || ![(SFBLEScanner *)self _needDups])
            {
              if (activeScan == _needActiveScan)
              {
                goto LABEL_143;
              }

              goto LABEL_142;
            }

            v75 = self->_ucat->var0;
            if (v75 <= 30)
            {
              if (v75 == -1)
              {
                if (!_LogCategory_Initialize())
                {
                  goto LABEL_141;
                }

                v83 = self->_ucat;
              }

              v85 = v28;
              v86 = self->_changeFlags;
              LogPrintF();
            }

LABEL_141:
            *p_needDups = 1;
LABEL_142:
            [(SFBLEScanner *)self _restartIfNeeded:v85];
LABEL_143:
            [(SFBLEScanner *)self _updateRescanTimer];

            goto LABEL_144;
          }

          v71 = self->_ucat->var0;
          if (v71 <= 30)
          {
            if (v71 != -1)
            {
              v72 = self->_activeScan;
LABEL_123:
              v73 = "no";
              if (v72)
              {
                v74 = "yes";
              }

              else
              {
                v74 = "no";
              }

              if (_needActiveScan)
              {
                v73 = "yes";
              }

              v86 = v73;
              v87 = v28;
              v85 = v74;
              LogPrintF();
              goto LABEL_130;
            }

            if (_LogCategory_Initialize())
            {
              v79 = self->_ucat;
              v72 = self->_activeScan;
              goto LABEL_123;
            }
          }

LABEL_130:
          self->_activeScan = _needActiveScan;
          goto LABEL_131;
        }

        v80 = self->_ucat;
      }

      v85 = v28;
      LogPrintF();
      goto LABEL_112;
    }

    v66 = self->_ucat->var0;
    if (v66 <= 60)
    {
      if (v66 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_42;
        }

        v78 = self->_ucat;
      }

      v84 = deviceCopy;
      LogPrintF();
    }

LABEL_42:
    v38 = 1;
    goto LABEL_43;
  }

  v24 = self->_ucat->var0;
  if (v24 <= 10)
  {
    if (v24 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_144;
      }

      v76 = self->_ucat;
      v77 = self->_rssiThreshold;
    }

    LogPrintF();
  }

LABEL_144:
}

void __59__SFBLEScanner__foundDevice_advertisementData_rssi_fields___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(*(a1 + 32) + 72) == 7)
  {
    v9 = v3;
    v4 = [v3 advertisementFields];
    v5 = CFDictionaryGetInt64Ranged() & 0x24;
    Int64 = CFDictionaryGetInt64();
    if (!(v5 | Int64))
    {
      if (![v9 proxPairingTicks])
      {
        [v9 setProxPairingTicks:mach_absolute_time()];
      }

      goto LABEL_10;
    }

    if (Int64)
    {
      if ([v9 proxPairingTicks])
      {
        [v9 setProxPairingTicks:0];
        v7 = **(*(a1 + 32) + 144);
        if (v7 <= 50)
        {
          if (v7 == -1)
          {
            if (!_LogCategory_Initialize())
            {
              goto LABEL_10;
            }

            v8 = *(*(a1 + 32) + 144);
          }

          LogPrintF();
        }
      }
    }

LABEL_10:

    v3 = v9;
  }
}

- (void)_invokeBlockActivateSafe:(id)safe
{
  safeCopy = safe;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_activateCalled)
  {
    dispatchQueue = selfCopy->_dispatchQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __41__SFBLEScanner__invokeBlockActivateSafe___block_invoke;
    v7[3] = &unk_1E788B318;
    v7[4] = selfCopy;
    v8 = safeCopy;
    dispatch_async(dispatchQueue, v7);
  }

  else
  {
    safeCopy[2](safeCopy);
  }

  objc_sync_exit(selfCopy);
}

_BYTE *__41__SFBLEScanner__invokeBlockActivateSafe___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  result = *(a1 + 32);
  if ((result[152] & 1) == 0)
  {

    return [result _restartIfNeeded];
  }

  return result;
}

- (void)_poweredOn
{
  if (self->_poweredOffSleep)
  {
    var0 = self->_ucat->var0;
    if (var0 <= 30)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        ucat = self->_ucat;
      }

      LogPrintF();
    }

LABEL_6:
    self->_poweredOffSleep = 0;
    Current = CFAbsoluteTimeGetCurrent();
    devices = self->_devices;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __26__SFBLEScanner__poweredOn__block_invoke;
    v7[3] = &__block_descriptor_40_e36_v32__0__NSUUID_8__SFBLEDevice_16_B24l;
    *&v7[4] = Current;
    [(NSMutableDictionary *)devices enumerateKeysAndObjectsUsingBlock:v7];
  }

  [(SFBLEScanner *)self _restartIfNeeded];
}

- (void)_removeAllDevicesWithReason:(id)reason
{
  v25 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  self->_scanStarted = 0;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = self->_devices;
  v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      v9 = 0;
      do
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [(NSMutableDictionary *)self->_devices objectForKeyedSubscript:*(*(&v20 + 1) + 8 * v9), v18, v19, v20];
        var0 = self->_ucat->var0;
        if (var0 <= 20)
        {
          if (var0 != -1)
          {
            goto LABEL_8;
          }

          if (_LogCategory_Initialize())
          {
            ucat = self->_ucat;
LABEL_8:
            v18 = reasonCopy;
            v19 = v10;
            LogPrintF();
          }
        }

        deviceLostHandler = self->_deviceLostHandler;
        if (deviceLostHandler)
        {
          deviceLostHandler[2](deviceLostHandler, v10);
        }

        ++v9;
      }

      while (v7 != v9);
      v14 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
      v7 = v14;
    }

    while (v14);
  }

  [(NSMutableDictionary *)self->_devices removeAllObjects];
  self->_activeScan = 0;
  self->_needDups = 0;
  v15 = self->_ucat->var0;
  if (v15 <= 30)
  {
    if (v15 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_20;
      }

      v17 = self->_ucat;
    }

    LogPrintF();
  }

LABEL_20:
  [(SFBLEScanner *)self _updateRescanTimer:v18];

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_rssiLogOpen
{
  v20 = *MEMORY[0x1E69E9840];
  bzero(__filename, 0x400uLL);
  var14 = self->_ucat->var14;
  SNPrintF();
  NormalizePath();
  if (mkpath() && (!*__error() || *__error()))
  {
    var0 = self->_ucat->var0;
    if (var0 <= 90)
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
  }

LABEL_8:
  var4 = self->_ucat->var4;
  SNPrintF();
  __strlcat_chk();
  v4 = fopen(__filename, "a");
  self->_rssiEventLogFile = v4;
  if (v4)
  {
    setlinebuf(v4);
    v5 = self->_ucat->var0;
    if (v5 <= 50)
    {
      if (v5 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_16;
        }

        v14 = self->_ucat;
      }

      LogPrintF();
    }

LABEL_16:
    rssiEventLogFile = self->_rssiEventLogFile;
    FPrintF();
    v8 = self->_rssiEventLogFile;
    FPrintF();
    v9 = self->_rssiEventLogFile;
    FPrintF();
    v10 = self->_rssiEventLogFile;
    FPrintF();
    goto LABEL_17;
  }

  v6 = self->_ucat->var0;
  if (v6 <= 90)
  {
    if (v6 == -1)
    {
      v12 = self->_ucat;
      if (!_LogCategory_Initialize())
      {
        goto LABEL_17;
      }

      v13 = self->_ucat;
    }

    v18 = *__error();
    LogPrintF();
  }

LABEL_17:
  v11 = *MEMORY[0x1E69E9840];
}

- (void)_timeoutTimerFired
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  var0 = self->_ucat->var0;
  if (var0 <= 20)
  {
    if (var0 != -1)
    {
LABEL_3:
      LogPrintF();
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->_ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
  self->_timeoutFired = 1;
  timeoutTimer = self->_timeoutTimer;
  if (timeoutTimer)
  {
    v5 = timeoutTimer;
    dispatch_source_cancel(v5);
    v6 = self->_timeoutTimer;
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

- (id)_useCasesToString:(id)string
{
  v21 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  v19 = 0;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [stringCopy countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(stringCopy);
        }

        unsignedIntValue = [*(*(&v15 + 1) + 8 * i) unsignedIntValue];
        if (unsignedIntValue < 0x20000)
        {
          if (unsignedIntValue <= 0x20000)
          {
            switch(unsignedIntValue)
            {
              case 65536:
                v9 = "FindMyAction";
                break;
              case 65537:
                v9 = "FindMyBackground";
                break;
              case 65538:
                v9 = "FindMyActionHELE";
                break;
              case 65539:
                v9 = "FindMyBackgroundHELE";
                break;
              case 65540:
                v9 = "FindMyActionTransient";
                break;
              case 65541:
                v9 = "FindMyBackgroundTransient";
                break;
              case 65542:
                v9 = "FindMyActionHELETransient";
                break;
              case 65543:
                v9 = "FindMyBackgroundHELETransient";
                break;
              case 65544:
                v9 = "FindMyNotOptedIn";
                break;
              case 65545:
                v9 = "FindMyOptedIn";
                break;
              case 65546:
                v9 = "FindMySepAlertsEnabled";
                break;
              case 65547:
                v9 = "FindMyTemporaryAggressiveLegacy";
                break;
              case 65548:
                v9 = "FindMyTemporaryLongAggressive";
                break;
              case 65549:
                v9 = "FindMyBTFindingUserInitiated";
                break;
              case 65550:
                v9 = "FindMyHELE";
                break;
              case 65551:
                v9 = "FindMyBeaconOnDemand";
                break;
              case 65552:
                v9 = "FindMyWildTimedScan";
                break;
              case 65553:
                v9 = "FindMyBackgroundLeechScan";
                break;
              case 65554:
                v9 = "FindMySnifferMode";
                break;
              case 65555:
                v9 = "FindMyUnpair";
                break;
              case 65556:
                v9 = "FindMyUnpairHELE";
                break;
              case 65557:
                v9 = "FindMyPlaySound";
                break;
              case 65558:
                v9 = "FindMyPlaySoundHELE";
                break;
              case 65559:
                v9 = "FindMyNotOptedInBeepOnMoveWaking";
                break;
              case 65560:
                v9 = "FindMyUTTransient";
                break;
              case 65561:
                v9 = "FindMyUTHELETransient";
                break;
              case 65562:
                v9 = "FindMyActionExtendedRange";
                break;
              case 65563:
                v9 = "FindMyActionExtendedRangeLE2M";
                break;
              case 65564:
                v9 = "FindMyActionExtendedRangeTransient";
                break;
              case 65565:
                v9 = "FindMyPlaySoundExtendedRange";
                break;
              case 65566:
                v9 = "FindMyPair";
                break;
              case 65567:
                v9 = "FindMyTemporaryAggressiveLegacyExtendedRange";
                break;
              default:
                JUMPOUT(0);
            }
          }

          else
          {
            v9 = "Unspecified";
            switch(unsignedIntValue)
            {
              case 0:
                break;
              case 1:
                v9 = "HealthKit";
                break;
              case 2:
                v9 = "HomeKit";
                break;
              case 3:
                v9 = "FindMyObjectConnection";
                break;
              case 4:
                v9 = "FindMyObjectConnectionTransient";
                break;
              case 5:
                v9 = "MIDI";
                break;
              case 6:
                v9 = "Continuity";
                break;
              case 7:
                v9 = "InstantHotSpot";
                break;
              case 8:
                v9 = "NearBy";
                break;
              case 9:
                v9 = "Sharing";
                break;
              case 10:
                v9 = "HearingSupport";
                break;
              case 11:
                v9 = "Magnet";
                break;
              case 12:
                v9 = "HID";
                break;
              case 13:
                v9 = "LEA";
                break;
              case 14:
                v9 = "External";
                break;
              case 15:
                v9 = "ExternalMedical";
                break;
              case 16:
                v9 = "ExternalLock";
                break;
              case 17:
                v9 = "ExternalWatch";
                break;
              case 18:
                v9 = "SmartRouting";
                break;
              case 19:
                v9 = "DigitalID";
                break;
              case 20:
                v9 = "DigitalKey";
                break;
              case 21:
                v9 = "DigitalCarKey";
                break;
              case 22:
                v9 = "HeySiri";
                break;
              case 23:
                v9 = "ThirdPartyApp";
                break;
              case 24:
                v9 = "CNJ";
                break;
              default:
                switch(unsignedIntValue)
                {
                  case 256:
                    v9 = "DevicePresenceDetection";
                    break;
                  case 257:
                    v9 = "AudioBox";
                    break;
                  case 258:
                    v9 = "SIMTransfer";
                    break;
                  case 259:
                    v9 = "ProximityScreenOnLeechScan";
                    break;
                  case 260:
                    v9 = "MacMigrate";
                    break;
                  case 263:
                    v9 = "HIDUARTService";
                    break;
                  case 264:
                    v9 = "AccessibilitySwitchControlPairing";
                    break;
                  case 265:
                    v9 = "BaseBandFastConnect";
                    break;
                  case 266:
                    v9 = "SafetyAlerts";
                    break;
                  case 267:
                    v9 = "LECarPlay";
                    break;
                  case 268:
                    v9 = "TCCBluetooth";
                    break;
                  case 269:
                    v9 = "AOPBufferLeech";
                    break;
                  case 270:
                    v9 = "HighPriorityScanWiFi";
                    break;
                  default:
                    goto LABEL_215;
                }

                break;
            }
          }
        }

        else if (unsignedIntValue > 0x80000)
        {
          if (unsignedIntValue < 0x100000)
          {
            if (unsignedIntValue <= 851968)
            {
              if (unsignedIntValue >= 655360)
              {
                if (unsignedIntValue <= 720896)
                {
                  if (unsignedIntValue == 655360)
                  {
                    v9 = "AccessDigitalHomeKey";
                    goto LABEL_216;
                  }

                  if (unsignedIntValue == 720896)
                  {
                    v9 = "SoftwareUpdateBTWake";
                    goto LABEL_216;
                  }
                }

                else
                {
                  switch(unsignedIntValue)
                  {
                    case 720897:
                      v9 = "SofrwareUpdateOutboxControllerAuth";
                      goto LABEL_216;
                    case 786432:
                      v9 = "ProxControlDeviceClose";
                      goto LABEL_216;
                    case 851968:
                      v9 = "DCTProtocolTelephony";
                      goto LABEL_216;
                  }
                }

                goto LABEL_215;
              }

              if (unsignedIntValue > 524290)
              {
                switch(unsignedIntValue)
                {
                  case 524291:
                    v9 = "MicroLocationLeech";
                    goto LABEL_216;
                  case 589824:
                    v9 = "FindNearbyRemote";
                    goto LABEL_216;
                  case 589825:
                    v9 = "FindNearbyPencil";
                    goto LABEL_216;
                }

LABEL_215:
                v9 = "?";
                goto LABEL_216;
              }

              if (unsignedIntValue == 524289)
              {
                v9 = "ADPDBuffer";
              }

              else
              {
                v9 = "MicroLocation";
              }
            }

            else
            {
              if (unsignedIntValue <= 983041)
              {
                if (unsignedIntValue <= 917504)
                {
                  if (unsignedIntValue == 851969)
                  {
                    v9 = "DCTProtocolDataAndTelephony";
                    goto LABEL_216;
                  }

                  if (unsignedIntValue == 917504)
                  {
                    v9 = "NearbyFaceTime";
                    goto LABEL_216;
                  }
                }

                else
                {
                  switch(unsignedIntValue)
                  {
                    case 917505:
                      v9 = "NearbyFaceTimeData";
                      goto LABEL_216;
                    case 983040:
                      v9 = "SOSBeaconPartA";
                      goto LABEL_216;
                    case 983041:
                      v9 = "SOSBeaconPartB";
                      goto LABEL_216;
                  }
                }

                goto LABEL_215;
              }

              if (unsignedIntValue > 983044)
              {
                switch(unsignedIntValue)
                {
                  case 983045:
                    v9 = "SOSBeaconActivateScan";
                    goto LABEL_216;
                  case 983046:
                    v9 = "SOSBeaconActivateAdvA";
                    goto LABEL_216;
                  case 983047:
                    v9 = "SOSBeaconActivateAdvB";
                    goto LABEL_216;
                }

                goto LABEL_215;
              }

              if (unsignedIntValue == 983042)
              {
                v9 = "SOSBeaconPrecisionFindResponse";
              }

              else if (unsignedIntValue == 983043)
              {
                v9 = "SOSBeaconPrecisionFindRequest";
              }

              else
              {
                v9 = "SOSBeaconScan";
              }
            }
          }

          else
          {
            if (unsignedIntValue <= 2147418111)
            {
              switch(unsignedIntValue)
              {
                case 1048576:
                  v9 = "DOS";
                  goto LABEL_216;
                case 1048577:
                  v9 = "DOD";
                  goto LABEL_216;
                case 1114112:
                  v9 = "ProximityServiceDeviceSetup";
                  goto LABEL_216;
              }

              goto LABEL_215;
            }

            switch(unsignedIntValue)
            {
              case 2147418112:
                v9 = "InternalTestNoLockScan";
                break;
              case 2147418113:
                v9 = "InternalTestNoScreenOffScan";
                break;
              case 2147418114:
                v9 = "InternalTestScanWithNoDups";
                break;
              case 2147418115:
                v9 = "InternalTestScanWithDups";
                break;
              case 2147418116:
                v9 = "InternalTestScanFor20Seconds";
                break;
              case 2147418117:
                v9 = "InternalTestActiveScan";
                break;
              case 2147418118:
                v9 = "InternalTestUUIDScan";
                break;
              case 2147418119:
                v9 = "InternalTestScanFor10ClockSeconds";
                break;
              case 2147418120:
                v9 = "InternalTestScanBoost";
                break;
              case 2147418121:
                v9 = "InternalTestDiscoveryScanWithMRC";
                break;
              case 2147418122:
                v9 = "InternalTestAdvWithHigherPower";
                break;
              case 2147418123:
                v9 = "InternalTestScanLowDutyCycleMCOnly";
                break;
              case 2147418124:
                v9 = "InternalTestUUIDScanWithMinRSSI";
                break;
              case 2147418125:
                v9 = "InternalTestUUIDScanWithMinRSSIMediumLow";
                break;
              case 2147418126:
                v9 = "InternalTestAdvWithHigherPowerServiceDataConnectable";
                break;
              case 2147418127:
                v9 = "InternalTestAdvWithHigherPowerServiceDataNonConnectable";
                break;
              case 2147418128:
                v9 = "InternalTestAdvWithHigherPowerServiceDataS2";
                break;
              case 2147418129:
                v9 = "InternalTestAdvWithHigherPowerServiceDataS8";
                break;
              case 2147418130:
                v9 = "InternalTestDiscoveryScanCodedPHY";
                break;
              default:
                goto LABEL_215;
            }
          }
        }

        else if (unsignedIntValue >= 196608)
        {
          if (unsignedIntValue > 393218)
          {
            if (unsignedIntValue > 458752)
            {
              switch(unsignedIntValue)
              {
                case 0x70001:
                  v9 = "PrecisionFindingFindee";
                  goto LABEL_216;
                case 0x70002:
                  v9 = "SpatialHandoffHome";
                  goto LABEL_216;
                case 0x80000:
                  v9 = "ADPD";
                  goto LABEL_216;
              }
            }

            else
            {
              switch(unsignedIntValue)
              {
                case 393219:
                  v9 = "AppleIDSignIn";
                  goto LABEL_216;
                case 393220:
                  v9 = "AppleIDSignInSettings";
                  goto LABEL_216;
                case 458752:
                  v9 = "PrecisionFindingFinder";
                  goto LABEL_216;
              }
            }

            goto LABEL_215;
          }

          if (unsignedIntValue < 393216)
          {
            switch(unsignedIntValue)
            {
              case 196608:
                v9 = "DigitalIDTSA";
                goto LABEL_216;
              case 262144:
                v9 = "DigitalCarKeyThirdParty";
                goto LABEL_216;
              case 327680:
                v9 = "RapportThirdParty";
                goto LABEL_216;
            }

            goto LABEL_215;
          }

          if (unsignedIntValue == 393216)
          {
            v9 = "CaptiveNetworkJoin";
          }

          else if (unsignedIntValue == 393217)
          {
            v9 = "UseCaseSIMTransfer";
          }

          else
          {
            v9 = "MacSetup";
          }
        }

        else
        {
          switch(unsignedIntValue)
          {
            case 131072:
              v9 = "SharingDefault";
              break;
            case 131073:
              v9 = "SharingPhoneAutoUnlock";
              break;
            case 131074:
              v9 = "SharingSiriWatchAuth";
              break;
            case 131075:
              v9 = "SharingMacAutoUnlock";
              break;
            case 131076:
              v9 = "SharingEDTScreenOn";
              break;
            case 131077:
              v9 = "SharingEDTWiFiDisabled";
              break;
            case 131078:
              v9 = "SharingEDTWombatEligibleAsDefaultCamera";
              break;
            case 131079:
              v9 = "SharingEDTWombatCameraPicker";
              break;
            case 131080:
              v9 = "SharingWombatBackground";
              break;
            case 131081:
              v9 = "SharingUniversalControl";
              break;
            case 131082:
              v9 = "SharingPeopleProximity";
              break;
            case 131083:
              v9 = "SharingEDTEnsembleOpenDisplayPrefs";
              break;
            case 131084:
              v9 = "SharingEDTNearbydMotionStopped";
              break;
            case 131085:
              v9 = "SharingDoubleBoostGenericScan";
              break;
            case 131086:
              v9 = "SharingEDTIncomingAdvertisement ";
              break;
            case 131087:
              v9 = "SharingEDTWombatStreamStart";
              break;
            case 131088:
              v9 = "SharingOYAutoUnlock";
              break;
            case 131090:
              v9 = "SharingAirDrop";
              break;
            case 131091:
              v9 = "SharingNearbyInvitationHost";
              break;
            case 131092:
              v9 = "SharingNearbyInvitationParticipant";
              break;
            case 131093:
              v9 = "SharingAirDropAskToAirDrop";
              break;
            case 131094:
              v9 = "SharingAirDropTempIdentity";
              break;
            case 131095:
              v9 = "SharingAirDropNeedsCLink";
              break;
            case 131096:
              v9 = "SharingRemoteWidgetUpdate";
              break;
            case 131097:
              v9 = "SharingCountryCodeUpdate";
              break;
            case 131098:
              v9 = "SharingMacPhoneAutoUnlock";
              break;
            case 131099:
              v9 = "SharingVisionProDiscovery";
              break;
            case 131100:
              v9 = "SharingVisionProStateChange";
              break;
            case 131101:
              v9 = "SharingContinuityScreen";
              break;
            case 131102:
              v9 = "SharingEDTRemoteDisplay";
              break;
            case 131103:
              v9 = "SharingHomePodSetup";
              break;
            default:
              goto LABEL_215;
          }
        }

LABEL_216:
        v14 = v9;
        NSAppendPrintF();
      }

      v5 = [stringCopy countByEnumeratingWithState:&v15 objects:v20 count:{16, v14}];
    }

    while (v5);
  }

  v10 = v19;
  if (!v19)
  {
    v10 = &stru_1F1D30528;
  }

  v11 = v10;

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (BOOL)_watchSetupParseData:(id)data fields:(id)fields
{
  dataCopy = data;
  fieldsCopy = fields;
  if ([dataCopy length] >= 0xD && *objc_msgSend(dataCopy, "bytes") == 6)
  {
    if (_os_feature_enabled_impl())
    {
      [fieldsCopy setObject:dataCopy forKeyedSubscript:@"wd"];
    }

    else
    {
      v8 = [dataCopy subdataWithRange:{2, 4}];
      v9 = [objc_alloc(getWatchSetupAdvertisementIdentifierClass[0]()) initWithPackedIdentifierData:v8];
      humanReadableName = [v9 humanReadableName];
      [fieldsCopy setObject:humanReadableName forKeyedSubscript:@"name"];

      v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v9, "advertisingIdentifier")}];
      [fieldsCopy setObject:v11 forKeyedSubscript:@"wi"];

      v12 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{objc_msgSend(v9, "deviceSize")}];
      [fieldsCopy setObject:v12 forKeyedSubscript:@"ws"];

      v13 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{objc_msgSend(v9, "enclosureMaterial")}];
      [fieldsCopy setObject:v13 forKeyedSubscript:@"wm"];

      v14 = [dataCopy subdataWithRange:{6, 7}];
      v15 = [objc_alloc(getWatchSetupExtendedMetadataClass[0]()) initWithPackedExtendedMetadataData:v14];
      v16 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{objc_msgSend(v15, "pairingVersion")}];
      [fieldsCopy setObject:v16 forKeyedSubscript:@"wpv"];
    }

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)foundNearbyDevice:(id)device data:(id)data peerInfo:(id)info
{
  deviceCopy = device;
  dataCopy = data;
  infoCopy = info;
  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v11 = getWPNearbyKeyRSSI();
  v12 = [infoCopy objectForKeyedSubscript:v11];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    integerValue = [v12 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  v14 = getWPNearbyKeyManufacturerData();
  v15 = [infoCopy objectForKeyedSubscript:v14];

  if ([v15 length])
  {
    [v10 setObject:v15 forKeyedSubscript:@"mfrD"];
    [(SFBLEScanner *)self _nearbyParseManufacturerData:v15 fields:v10];
  }

  else
  {
    bytes = [dataCopy bytes];
    v20 = [dataCopy length];
    wpNearbyType = self->_wpNearbyType;
    if (wpNearbyType == 1)
    {
      [(SFBLEScanner *)self _nearbyParseNearbyInfoPtr:bytes end:bytes + v20 fields:v10];
    }

    else if (!wpNearbyType)
    {
      [(SFBLEScanner *)self _nearbyParseNearbyActionPtr:bytes end:bytes + v20 fields:v10];
    }
  }

  v16 = [infoCopy objectForKeyedSubscript:@"kDeviceChannel"];
  if (v16)
  {
    [v10 setObject:v16 forKeyedSubscript:@"ch"];
  }

  v17 = getWPNearbyKeyDeviceAddress();
  v18 = [infoCopy objectForKeyedSubscript:v17];

  if ([v18 length] == 6)
  {
    [v10 setObject:v18 forKeyedSubscript:@"bdAddr"];
  }

  getWPNearbyKeyPaired();
  if (CFDictionaryGetInt64())
  {
    [v10 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"paired"];
  }

  [(SFBLEScanner *)self _foundDevice:deviceCopy advertisementData:dataCopy rssi:integerValue fields:v10];
}

- (void)_nearbyParseNearbyActionPtr:(const char *)ptr end:(const char *)end fields:(id)fields
{
  fieldsCopy = fields;
  if (end - ptr < 1)
  {
    LOBYTE(v8) = 0;
  }

  else
  {
    v9 = *ptr++;
    v8 = v9;
    if (v9)
    {
      v10 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v8];
      [fieldsCopy setObject:v10 forKeyedSubscript:@"af1"];

      if ((v8 & 0x20) != 0)
      {
        [fieldsCopy setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"nk"];
      }

      if ((v8 & 0x40) != 0)
      {
        [fieldsCopy setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"ns"];
      }
    }
  }

  if (end - ptr < 1)
  {
    v11 = 0;
    if ((v8 & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v12 = *ptr++;
  v11 = v12;
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v12];
  [fieldsCopy setObject:v13 forKeyedSubscript:@"dt"];

  if (v12 == 50)
  {
    [fieldsCopy setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"na"];
  }

  if ((v8 & 0x80) != 0)
  {
LABEL_14:
    if (end - ptr >= 3)
    {
      v14 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:ptr length:3];
      [fieldsCopy setObject:v14 forKeyedSubscript:@"at"];

      ptr += 3;
    }
  }

LABEL_16:
  if ((v11 <= 0x24 && ((1 << v11) & 0x1200480A00) != 0 || v11 == 90 || v11 == 84) && end - ptr >= 1)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:*ptr >> 5];
    [fieldsCopy setObject:v15 forKeyedSubscript:@"cl"];

    v16 = *ptr++;
    0x1F = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v16 & 0x1F];
    [fieldsCopy setObject:0x1F forKeyedSubscript:@"md"];
  }

  if ((v11 - 33 <= 0x39 && ((1 << (v11 - 33)) & 0x208000000000009) != 0 || v11 - 9 < 3) && end - ptr >= 1)
  {
    v18 = *ptr++;
    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v18];
    [fieldsCopy setObject:v19 forKeyedSubscript:@"cc"];
  }

  if (v11 <= 0x2B && ((1 << v11) & 0x80100000242) != 0 || v11 == 84)
  {
    if (end - ptr <= 0)
    {
      v25 = v11 == 10;
      goto LABEL_45;
    }
  }

  else
  {
    v22 = end - ptr;
    v37 = v11 == 33 || v11 == 11;
    if (!v37 || v22 <= 0)
    {
      goto LABEL_29;
    }
  }

  v20 = *ptr++;
  v21 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v20];
  [fieldsCopy setObject:v21 forKeyedSubscript:@"ov"];

  v22 = end - ptr;
LABEL_29:
  if (v11 == 8 && v22 >= 9)
  {
    v23 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:ptr length:9];
    [fieldsCopy setObject:v23 forKeyedSubscript:@"ach"];
    ptr += 9;

    v22 = end - ptr;
  }

  if (v11 == 8 && v22 >= 3)
  {
    v24 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:ptr length:3];
    [fieldsCopy setObject:v24 forKeyedSubscript:@"ssidH"];
    ptr += 3;
LABEL_48:

    goto LABEL_49;
  }

  v25 = v11 == 10;
  if (v11 == 10 && v22 >= 1)
  {
    v26 = *ptr++;
    v27 = ((2 * v26) | (v26 << 11)) & 0x2000E | (((v26 >> 4) & 1) << 18) | (16 * ((v26 >> 3) & 1)) & 0xFFFEFFFF | (((v26 >> 5) & 1) << 16);
    if ((v26 & 0x80u) == 0)
    {
      v28 = v27;
    }

    else
    {
      v28 = v27 | 0x200000;
    }

    v29 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v28];
    [fieldsCopy setObject:v29 forKeyedSubscript:@"pf"];

    v25 = 1;
  }

LABEL_45:
  if (v25 && end - ptr >= 1)
  {
    v30 = *ptr++;
    v24 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v30];
    [fieldsCopy setObject:v24 forKeyedSubscript:@"ov"];
    goto LABEL_48;
  }

LABEL_49:
  if (v11 == 51 || v11 == 9)
  {
    if (end - ptr >= 1)
    {
      v32 = *ptr;
      v31 = ptr + 1;
      v33 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v32];
      [fieldsCopy setObject:v33 forKeyedSubscript:@"af2"];

      if ((v32 & 4) != 0 && end - v31 >= 3)
      {
        v34 = [MEMORY[0x1E695DEF0] dataWithBytes:v31 length:3];
        v35 = @"tatag";
LABEL_73:
        [fieldsCopy setObject:v34 forKeyedSubscript:v35];

        goto LABEL_74;
      }
    }

    goto LABEL_74;
  }

  v36 = end - ptr;
  if (v11 == 1 && v36 >= 1)
  {
    v34 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:*ptr];
    v35 = @"md";
    goto LABEL_73;
  }

  if (v11 == 90 && v36 >= 1)
  {
    v38 = *(ptr + 2);
    var0 = self->_ucat->var0;
    if (var0 <= 40)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_72;
        }

        ucat = self->_ucat;
      }

      v41 = v38;
      LogPrintF();
    }

LABEL_72:
    v34 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{v38, v41}];
    v35 = @"dpp";
    goto LABEL_73;
  }

LABEL_74:
}

- (void)_nearbyParseNearbyInfoPtr:(const char *)ptr end:(const char *)end fields:(id)fields
{
  fieldsCopy = fields;
  if (end - ptr >= 1)
  {
    v9 = *ptr++;
    v8 = v9;
    v10 = [MEMORY[0x1E696AD98] numberWithInt:v9 & 0xF];
    [fieldsCopy setObject:v10 forKeyedSubscript:@"al"];

    if ((v9 & 0x10) != 0)
    {
      [fieldsCopy setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"meD"];
      if ((v8 & 0x20) == 0)
      {
LABEL_4:
        if ((v8 & 0x40) == 0)
        {
          goto LABEL_6;
        }

        goto LABEL_5;
      }
    }

    else if ((v8 & 0x20) == 0)
    {
      goto LABEL_4;
    }

    [fieldsCopy setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"rgC"];
    if ((v8 & 0x40) != 0)
    {
LABEL_5:
      [fieldsCopy setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"adU"];
    }
  }

LABEL_6:
  if (end - ptr < 1)
  {
    goto LABEL_30;
  }

  v11 = (ptr + 1);
  v12 = *ptr;
  if (*ptr < 0)
  {
    [fieldsCopy setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"ue"];
    if ((v12 & 0x40) == 0)
    {
LABEL_9:
      if ((v12 & 8) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((*ptr & 0x40) == 0)
  {
    goto LABEL_9;
  }

  [fieldsCopy setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"uw"];
  if ((v12 & 8) != 0)
  {
LABEL_10:
    [fieldsCopy setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"ds"];
  }

LABEL_11:
  v13 = MEMORY[0x1E695E118];
  if ((v12 & 0x20) != 0)
  {
    [fieldsCopy setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"wl"];
  }

  if ((v12 & 4) != 0)
  {
    v14 = v13;
  }

  else
  {
    v14 = MEMORY[0x1E695E110];
  }

  [fieldsCopy setObject:v14 forKeyedSubscript:@"wp"];
  v15 = end - v11;
  if ((v12 & 0x10) != 0 && v15 >= 3)
  {
    v16 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:ptr + 1 length:3];
    [fieldsCopy setObject:v16 forKeyedSubscript:@"at"];

    v11 = (ptr + 4);
    v15 = end - (ptr + 4);
  }

  if ((v12 & 2) != 0 && v15 >= 1)
  {
    v17 = *v11++;
    v24 = v17;
    v18 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:&v24 length:1];
    [fieldsCopy setObject:v18 forKeyedSubscript:@"hsi"];

    v15 = end - v11;
  }

  if ((v12 & 1) == 0 || v15 < 1)
  {
    goto LABEL_30;
  }

  v19 = *v11;
  if (*v11 < 0)
  {
    v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:2048];
    [fieldsCopy setObject:v21 forKeyedSubscript:@"df"];

    if ((v19 & 1) == 0)
    {
LABEL_26:
      if ((v19 & 2) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_39;
    }
  }

  else if ((v19 & 1) == 0)
  {
    goto LABEL_26;
  }

  v22 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:1];
  [fieldsCopy setObject:v22 forKeyedSubscript:@"camS"];

  if ((v19 & 2) == 0)
  {
LABEL_27:
    if ((v19 & 4) == 0)
    {
      goto LABEL_28;
    }

LABEL_40:
    [fieldsCopy setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"iLagS"];
    if ((v19 & 8) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_39:
  [fieldsCopy setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"enD"];
  if ((v19 & 4) != 0)
  {
    goto LABEL_40;
  }

LABEL_28:
  if ((v19 & 8) != 0)
  {
LABEL_29:
    v23 = (v19 >> 4) & 7;
    v20 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:&v23 length:1];
    [fieldsCopy setObject:v20 forKeyedSubscript:@"ars"];
  }

LABEL_30:
}

- (void)foundPairingDevice:(id)device payload:(id)payload rssi:(id)rssi peerInfo:(id)info withTimeInMachContSeconds:(double)seconds
{
  deviceCopy = device;
  payloadCopy = payload;
  rssiCopy = rssi;
  infoCopy = info;
  v15 = [(NSMutableDictionary *)self->_devices objectForKeyedSubscript:deviceCopy];
  v16 = [(SFBLEScanner *)self pairingParsePayload:payloadCopy identifier:deviceCopy bleDevice:v15 peerInfo:infoCopy];
  if (v16)
  {
    v18 = [MEMORY[0x1E696AD98] numberWithDouble:seconds];
    [v16 setObject:v18 forKeyedSubscript:@"sampleTimestamp"];

    v19 = getWPPairingKeyAdvertisingChannel();
    v20 = [infoCopy objectForKeyedSubscript:v19];

    if (v20)
    {
      [v16 setObject:v20 forKeyedSubscript:@"ch"];
    }

    -[SFBLEScanner _foundDevice:advertisementData:rssi:fields:](self, "_foundDevice:advertisementData:rssi:fields:", deviceCopy, payloadCopy, [rssiCopy integerValue], v16);
  }

  else
  {
    var0 = self->_ucat->var0;
    if (var0 > 10)
    {
      goto LABEL_8;
    }

    if (var0 != -1)
    {
      goto LABEL_4;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->_ucat;
LABEL_4:
      LogPrintF();
    }
  }

LABEL_8:
}

- (void)pairingParseAccessoryStatusPayloadPtr:(const char *)ptr end:(const char *)end fields:(id)fields
{
  v21[1] = *MEMORY[0x1E69E9840];
  fieldsCopy = fields;
  if (end - ptr < 1)
  {
    goto LABEL_10;
  }

  v9 = *ptr;
  v8 = ptr + 1;
  v10 = [MEMORY[0x1E696AD98] numberWithInt:v9 & 7];
  [fieldsCopy setObject:v10 forKeyedSubscript:@"locP"];

  v11 = (v9 & 4) != 0 ? MEMORY[0x1E695E118] : MEMORY[0x1E695E110];
  [fieldsCopy setObject:v11 forKeyedSubscript:@"lc"];
  if (end - v8 < 1)
  {
LABEL_10:
    LOBYTE(v12) = 0;
    goto LABEL_11;
  }

  v12 = *v8;
  if (v12 != 254)
  {
    if (v12 == 255)
    {
      goto LABEL_20;
    }

    if ((v12 & 0x80) != 0)
    {
      v13 = 2;
LABEL_12:
      v14 = v12 & 0x7F;
      if (v14 >= 0x64)
      {
        v14 = 100;
      }

      v15 = v14 / 100.0;
      goto LABEL_15;
    }

LABEL_11:
    v13 = 1;
    goto LABEL_12;
  }

  v15 = 0.8;
  v13 = 2;
LABEL_15:
  v16 = objc_alloc_init(SFBatteryInfo);
  v17 = v16;
  v18 = 1.0;
  if (v15 <= 1.0)
  {
    v18 = v15;
  }

  if (v18 < 0.0001)
  {
    v18 = 0.0001;
  }

  [(SFBatteryInfo *)v16 setBatteryLevel:v18];
  [(SFBatteryInfo *)v17 setBatteryState:v13];
  [(SFBatteryInfo *)v17 setBatteryType:1];
  v21[0] = v17;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
  [fieldsCopy setObject:v19 forKeyedSubscript:@"batteryInfo"];

LABEL_20:
  v20 = *MEMORY[0x1E69E9840];
}

- (BOOL)pairingUpdatePairedInfo:(id)info fields:(id)fields bleDevice:(id)device
{
  infoCopy = info;
  fieldsCopy = fields;
  deviceCopy = device;
  if ([(SFBLEScanner *)self _btSessionUsable])
  {
    v11 = [(SFBLEScanner *)self pairingUpdatePairedInfoMB:infoCopy fields:fieldsCopy bleDevice:deviceCopy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)pairingUpdatePairedInfoMB:(id)b fields:(id)fields bleDevice:(id)device
{
  v61[2] = *MEMORY[0x1E69E9840];
  bCopy = b;
  fieldsCopy = fields;
  deviceCopy = device;
  paired = [deviceCopy paired];
  if (deviceCopy)
  {
    Current = CFAbsoluteTimeGetCurrent();
    [deviceCopy pairCheckTime];
    if (Current - v13 <= 1.0)
    {
LABEL_38:
      bluetoothAddress = [deviceCopy bluetoothAddress];
      if (bluetoothAddress)
      {
        [fieldsCopy setObject:bluetoothAddress forKeyedSubscript:@"publicAddress"];
      }

      if ([deviceCopy connectedServices])
      {
        v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(deviceCopy, "connectedServices")}];
        [fieldsCopy setObject:v29 forKeyedSubscript:@"CnSv"];
      }

      name = [deviceCopy name];

      if (name)
      {
        [fieldsCopy setObject:name forKeyedSubscript:@"name"];
      }

      v31 = [MEMORY[0x1E696AD98] numberWithBool:paired];
      [fieldsCopy setObject:v31 forKeyedSubscript:@"paired"];

      goto LABEL_45;
    }
  }

  if (!self->_btSession)
  {
    if (!self->_btStarted)
    {
      goto LABEL_34;
    }

    var0 = self->_ucat->var0;
    if (var0 > 60)
    {
      goto LABEL_34;
    }

    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_34;
      }

      ucat = self->_ucat;
    }

    v35 = bCopy;
    LogPrintF();
LABEL_34:
    v15 = 0;
    goto LABEL_35;
  }

  v61[0] = 0;
  v61[1] = 0;
  v43 = 0;
  [bCopy getUUIDBytes:v61];
  v14 = softLinkBTDeviceFromIdentifier(self->_btSession, v61, &v43);
  v15 = v14 == 0;
  if (!v14)
  {
    memset(v60, 0, sizeof(v60));
    v59 = 0u;
    v58 = 0u;
    v57 = 0u;
    v56 = 0u;
    v55 = 0u;
    v54 = 0u;
    v53 = 0u;
    v52 = 0u;
    v51 = 0u;
    v50 = 0u;
    v49 = 0u;
    v48 = 0u;
    v47 = 0u;
    v46 = 0u;
    memset(v44, 0, sizeof(v44));
    v41 = 0;
    v40 = 0;
    v45 = 0;
    if (!softLinkBTDeviceGetName(v43, &v45, 248) && v45)
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:&v45];
      [fieldsCopy setObject:v16 forKeyedSubscript:@"name"];
    }

    v42 = 0;
    if (softLinkBTDeviceGetPairingStatus(v43, &v42))
    {
      paired = paired;
    }

    else
    {
      paired = v42 != 0;
    }

    v17 = [MEMORY[0x1E696AD98] numberWithBool:paired];
    [fieldsCopy setObject:v17 forKeyedSubscript:@"paired"];

    v39 = 0;
    softLinkBTDeviceIsTemporaryPaired(v43, &v39);
    [deviceCopy setTempPaired:v39 != 0];
    v38 = 0;
    if (softLinkBTDeviceGetConnectedServices(v43, &v38))
    {
      v38 = 0;
    }

    else if (v38)
    {
      v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
      [fieldsCopy setObject:v19 forKeyedSubscript:@"CnSv"];
    }

    bluetoothAddress2 = [deviceCopy bluetoothAddress];
    if (bluetoothAddress2)
    {
      [fieldsCopy setObject:bluetoothAddress2 forKeyedSubscript:@"publicAddress"];
    }

    else
    {
      LOBYTE(v44[0]) = 0;
      if (!softLinkBTDeviceGetAddressString(v43, v44, 32) && LOBYTE(v44[0]) && !softLinkBTDeviceAddressFromString(v44, &v40))
      {
        v27 = [MEMORY[0x1E695DEF0] dataWithBytes:&v40 length:6];
        [fieldsCopy setObject:v27 forKeyedSubscript:@"publicAddress"];
      }
    }
  }

  v21 = self->_ucat->var0;
  if (v21 <= 8)
  {
    if (v21 == -1)
    {
      v25 = self->_ucat;
      if (!_LogCategory_Initialize())
      {
        goto LABEL_35;
      }

      v26 = self->_ucat;
    }

    v22 = [fieldsCopy objectForKeyedSubscript:@"name"];
    v23 = v22;
    v24 = "no";
    if (paired)
    {
      v24 = "yes";
    }

    v36 = v22;
    v37 = v24;
    v35 = v61;
    LogPrintF();
  }

LABEL_35:
  if (deviceCopy)
  {
    [deviceCopy setPairCheckTime:CFAbsoluteTimeGetCurrent()];
  }

  if (!v15)
  {
    goto LABEL_38;
  }

LABEL_45:

  v32 = *MEMORY[0x1E69E9840];
  return paired;
}

- (SFBLEScanner)initWithType:(int64_t)type
{
  v13 = 0;
  v12 = 0;
  v11.receiver = self;
  v11.super_class = SFBLEScanner;
  v4 = [(SFBLEScanner *)&v11 init];
  v5 = v4;
  if (!v4)
  {
    goto LABEL_6;
  }

  v6 = SFMainQueue(v4);
  dispatchQueue = v5->_dispatchQueue;
  v5->_dispatchQueue = v6;

  v5->_payloadType = type;
  v5->_rescanInterval = 10.0;
  v5->_rescanIntervalScreenOff = -1;
  v5->_scanRate = 20;
  if ((type + 1) <= 0x12)
  {
    v8 = off_1E788E208[type + 1];
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

- (void)_restartIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  v180[5] = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_invalidateCalled)
  {
    goto LABEL_93;
  }

  OUTLINED_FUNCTION_2_8();
  if (v5 <= 9)
  {
    if (v5 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_6;
      }

      ucat = self->_ucat;
    }

    LogPrintF();
  }

LABEL_6:
  if (self->_needDups)
  {
    changeFlags = self->_changeFlags;
    if ((changeFlags & 0x16) == 0)
    {
      var0 = self->_ucat->var0;
      if (var0 <= 30)
      {
        if (var0 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_12;
          }

          v148 = self->_ucat;
          changeFlags = self->_changeFlags;
        }

        v157 = changeFlags;
        LogPrintF();
      }

LABEL_12:
      self->_needDups = 0;
    }
  }

  payloadType = self->_payloadType;
  if ((payloadType - 15) < 2)
  {
    wpNearby = self->_wpNearby;
    if (!wpNearby)
    {
      goto LABEL_196;
    }

    if (self->_scanCache && self->_scanStarted)
    {
      OUTLINED_FUNCTION_0_13();
      if (!(v54 ^ v55 | v9))
      {
        goto LABEL_196;
      }

      if (v140 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_196;
        }

        v149 = self->_ucat;
      }

      v141 = *MEMORY[0x1E69E9840];
      OUTLINED_FUNCTION_30();

      LogPrintF();
      return;
    }

    state = [(WPNearby *)wpNearby state];
    if (state != 3)
    {
      goto LABEL_258;
    }

    if ([(SFBLEScanner *)self _needDups]|| !self->_needDups)
    {
LABEL_114:
      scanRate = self->_scanRate;
      v58 = 10;
      if (scanRate > 29)
      {
        v58 = 20;
      }

      if (scanRate <= 49)
      {
        v59 = v58;
      }

      else
      {
        v59 = 40;
      }

      v60 = neededCopy || !self->_scanStarted;
      scanParamFilterData = self->_scanParamFilterData;
      v62 = self->_payloadFilterData;
      v63 = scanParamFilterData;
      OUTLINED_FUNCTION_28();
      if (v9)
      {
      }

      else
      {
        OUTLINED_FUNCTION_26();
        if (v64 == (scanParamFilterData == 0))
        {
          goto LABEL_145;
        }

        v65 = [OUTLINED_FUNCTION_8_0() isEqual:?];

        if (!v65)
        {
          goto LABEL_146;
        }
      }

      scanParamFilterData = self->_scanParamFilterMask;
      v62 = self->_payloadFilterMask;
      v66 = scanParamFilterData;
      OUTLINED_FUNCTION_28();
      if (v9)
      {
      }

      else
      {
        OUTLINED_FUNCTION_26();
        if (v67 == (scanParamFilterData == 0))
        {
          goto LABEL_145;
        }

        v68 = [OUTLINED_FUNCTION_8_0() isEqual:?];

        if (!v68)
        {
          goto LABEL_146;
        }
      }

      scanParamFilterData = self->_scanParamPeers;
      v62 = self->_deviceFilter;
      v69 = scanParamFilterData;
      OUTLINED_FUNCTION_28();
      if (v9)
      {
      }

      else
      {
        OUTLINED_FUNCTION_26();
        if (v70 == (scanParamFilterData == 0))
        {
          goto LABEL_145;
        }

        v71 = [OUTLINED_FUNCTION_8_0() isEqual:?];

        if (!v71)
        {
          goto LABEL_146;
        }
      }

      if (v59 != self->_scanParamMode || self->_rssiThreshold != self->_scanParamRSSI || self->_needDups != self->_scanParamDups || self->_scanCache != self->_scanParamCache)
      {
        goto LABEL_146;
      }

      scanParamFilterData = self->_scanUseCases;
      v62 = self->_useCases;
      v72 = scanParamFilterData;
      OUTLINED_FUNCTION_28();
      if (v9)
      {

        goto LABEL_245;
      }

      OUTLINED_FUNCTION_26();
      if (v73 != (scanParamFilterData == 0))
      {
        v74 = [OUTLINED_FUNCTION_8_0() isEqual:?];

        if (v74)
        {
LABEL_245:
          if (!v60)
          {
            OUTLINED_FUNCTION_0_13();
            if (!(v54 ^ v55 | v9))
            {
              goto LABEL_194;
            }

            if (v134 == -1)
            {
              if (!_LogCategory_Initialize())
              {
                goto LABEL_194;
              }

              v138 = self->_ucat;
            }

            LogPrintF();
LABEL_194:
            [(SFBLEScanner *)self _updateTrackedPeers];
            goto LABEL_195;
          }

          v75 = 0;
          if (!self->_scanStarted || !neededCopy)
          {
LABEL_147:
            v76 = self->_ucat->var0;
            if (v76 <= 30)
            {
              if (v76 != -1)
              {
LABEL_149:
                if (self->_payloadFilterData)
                {
                  payloadFilterData = self->_payloadFilterData;
                }

                else
                {
                  payloadFilterData = &stru_1F1D30528;
                }

                if (self->_payloadFilterMask)
                {
                  payloadFilterMask = self->_payloadFilterMask;
                }

                v79 = [(NSArray *)self->_deviceFilter count];
                v80 = self->_scanRate;
                v176 = neededCopy;
                v171 = v79;
                v81 = "Invalid";
                switch(v80)
                {
                  case 0:
                    break;
                  case 1:
                    v81 = "BackgroundOld";
                    break;
                  case 2:
                    v81 = "NormalOld";
                    break;
                  case 3:
                    v81 = "HighOld";
                    break;
                  case 4:
                    v81 = "AggressiveOld";
                    break;
                  case 5:
                  case 6:
                  case 7:
                  case 8:
                  case 9:
                    goto LABEL_163;
                  case 10:
                    v81 = "Background";
                    break;
                  default:
                    switch(v80)
                    {
                      case 20:
                        v81 = "Normal";
                        break;
                      case 30:
                        v81 = "HighNormal";
                        break;
                      case 40:
                        v81 = "High";
                        break;
                      case 50:
                        v81 = "Aggressive";
                        break;
                      default:
LABEL_163:
                        v81 = "?";
                        break;
                    }

                    break;
                }

                v170 = v81;
                rssiThreshold = self->_rssiThreshold;
                if (self->_needDups)
                {
                  v85 = "yes";
                }

                else
                {
                  v85 = "no";
                }

                if (self->_scanCache)
                {
                  v86 = "yes";
                }

                else
                {
                  v86 = "no";
                }

                v87 = [(NSSet *)self->_trackedPeers count];
                v88 = [(SFBLEScanner *)self _useCasesToString:self->_useCases];
                v89 = v88;
                if (v176)
                {
                  v90 = "yes";
                }

                else
                {
                  v90 = "no";
                }

                if (v75)
                {
                  v91 = "yes";
                }

                else
                {
                  v91 = "no";
                }

                v168 = v90;
                v169 = v91;
                v166 = v87;
                v167 = v88;
                v164 = v85;
                v165 = v86;
                v162 = v170;
                v163 = rssiThreshold;
                v161 = v171;
                v158 = payloadFilterData;
                LogPrintF();

                goto LABEL_186;
              }

              v82 = self->_ucat;
              if (_LogCategory_Initialize())
              {
                v83 = self->_ucat;
                goto LABEL_149;
              }
            }

LABEL_186:
            if (v75)
            {
              [(WPNearby *)self->_wpNearby stopScanningForType:self->_wpNearbyType];
            }

            v92 = self->_wpNearby;
            wpNearbyType = self->_wpNearbyType;
            v94 = self->_payloadFilterData;
            v95 = self->_payloadFilterMask;
            deviceFilter = self->_deviceFilter;
            v97 = self->_rssiThreshold;
            if (v97)
            {
              v98 = [MEMORY[0x1E696AD98] numberWithInteger:self->_rssiThreshold];
            }

            else
            {
              v98 = 0;
            }

            BYTE1(v158) = self->_scanCache;
            LOBYTE(v158) = self->_needDups;
            [(WPNearby *)v92 startScanningForType:wpNearbyType data:v94 mask:v95 peers:deviceFilter scanMode:v59 rssi:v98 duplicates:v158 scanCache:self->_useCases useCaseList:v161, v162, v163, v164, v165, v166, v167, v168, v169];
            if (v97)
            {
            }

            goto LABEL_193;
          }

          OUTLINED_FUNCTION_2_8();
          if (v133 <= 30)
          {
            if (v133 == -1)
            {
              if (!_LogCategory_Initialize())
              {
                goto LABEL_274;
              }

              v155 = self->_ucat;
            }

            LogPrintF();
          }

LABEL_274:
          [(WPNearby *)self->_wpNearby clearDuplicatesForType:self->_wpNearbyType, v158];
LABEL_193:
          v99 = [(NSData *)self->_payloadFilterData copy];
          v100 = self->_scanParamFilterData;
          self->_scanParamFilterData = v99;

          v101 = [(NSData *)self->_payloadFilterMask copy];
          scanParamFilterMask = self->_scanParamFilterMask;
          self->_scanParamFilterMask = v101;

          v103 = [(NSArray *)self->_deviceFilter copy];
          scanParamPeers = self->_scanParamPeers;
          self->_scanParamPeers = v103;

          self->_scanParamMode = v59;
          OUTLINED_FUNCTION_24();
          self->_scanParamCache = self->_scanCache;
          v105 = [(NSSet *)self->_useCases copy];
          scanUseCases = self->_scanUseCases;
          self->_scanUseCases = v105;

          goto LABEL_194;
        }

LABEL_146:
        v75 = self->_scanStarted && neededCopy;
        goto LABEL_147;
      }

LABEL_145:

      goto LABEL_146;
    }

    OUTLINED_FUNCTION_2_8();
    if (v14 <= 30)
    {
      if (v14 != -1)
      {
LABEL_31:
        v15 = self->_payloadType + 1;
        if (v15 > 0x12)
        {
          v16 = "?";
        }

        else
        {
          v16 = off_1E788E208[v15];
        }

        v158 = v16;
        LogPrintF();
        goto LABEL_113;
      }

      if (_LogCategory_Initialize())
      {
        v56 = self->_ucat;
        goto LABEL_31;
      }
    }

LABEL_113:
    self->_needDups = 0;
    goto LABEL_114;
  }

  v9 = payloadType == -1 || payloadType == 17;
  if (!v9)
  {
    if (payloadType != 7)
    {
      if (payloadType == 5)
      {
        wpAirDrop = self->_wpAirDrop;
        if (wpAirDrop)
        {
          state2 = [(WPAWDL *)wpAirDrop state];
          if (state2 == 3)
          {
            [(WPAWDL *)self->_wpAirDrop stopConnectionlessAWDLServiceScanning];
            [(WPAWDL *)self->_wpAirDrop startConnectionlessAWDLServiceScanning];
            goto LABEL_195;
          }

          v143 = self->_ucat->var0;
          if (v143 > 20)
          {
            goto LABEL_196;
          }

          v144 = state2;
          if (v143 == -1)
          {
            v150 = self->_ucat;
            if (!_LogCategory_Initialize())
            {
              goto LABEL_196;
            }

            v151 = self->_ucat;
          }

          SFBluetoothStateToString(v144);
          goto LABEL_95;
        }

LABEL_196:
        v107 = *MEMORY[0x1E69E9840];
        OUTLINED_FUNCTION_30();
        return;
      }

      v23 = self->_ucat->var0;
      if (v23 <= 60)
      {
        if (v23 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_93;
          }

          v47 = self->_ucat;
          payloadType = self->_payloadType;
        }

        if ((payloadType + 1) <= 0x12)
        {
          v24 = off_1E788E208[payloadType + 1];
        }

        LogPrintF();
      }

LABEL_93:
      OUTLINED_FUNCTION_2_8();
      if (v48 <= 60)
      {
        if (v48 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_196;
          }

          v49 = self->_ucat;
        }

        goto LABEL_95;
      }

      goto LABEL_196;
    }

    wpPairing = self->_wpPairing;
    if (!wpPairing)
    {
      goto LABEL_196;
    }

    state = [(WPPairing *)wpPairing state];
    if (state == 3)
    {
      v20 = self->_scanRate;
      if (v20 <= 49)
      {
        v21 = 2 * (v20 > 39);
      }

      else
      {
        v21 = 3;
      }

      v22 = neededCopy || !self->_scanStarted;
      v25 = self->_rssiThreshold;
      if (v25 == self->_scanParamRSSI && self->_needDups == self->_scanParamDups)
      {
        scanParamMode = self->_scanParamMode;
        if (((v21 == scanParamMode) & ~v22) != 0)
        {
          OUTLINED_FUNCTION_0_13();
          if (!(v54 ^ v55 | v9))
          {
            goto LABEL_195;
          }

          if (v53 == -1)
          {
            if (!_LogCategory_Initialize())
            {
              goto LABEL_195;
            }

            v132 = self->_ucat;
          }

          LogPrintF();
LABEL_195:
          self->_scanStarted = 1;
          [(SFBLEScanner *)self _updateRescanTimer:v157];
          [(CURetrier *)self->_startRetrier succeededDirect];
          goto LABEL_196;
        }

        v27 = self->_scanStarted && neededCopy;
        if (v21 == scanParamMode && self->_scanStarted && neededCopy)
        {
          OUTLINED_FUNCTION_2_8();
          if (v28 <= 30)
          {
            if (v28 == -1)
            {
              if (!_LogCategory_Initialize())
              {
                goto LABEL_243;
              }

              v154 = self->_ucat;
            }

            LogPrintF();
          }

LABEL_243:
          [(WPPairing *)self->_wpPairing clearProximityPairingServiceDuplicates];
LABEL_104:
          OUTLINED_FUNCTION_24();
          self->_scanParamMode = v21;
          goto LABEL_195;
        }
      }

      else
      {
        v27 = self->_scanStarted && neededCopy;
      }

      v29 = self->_ucat->var0;
      if (v29 <= 30)
      {
        if (v29 != -1)
        {
          v175 = neededCopy;
LABEL_60:
          v30 = SFScanRateToString(v20);
          if (self->_needDups)
          {
            v31 = "yes";
          }

          else
          {
            v31 = "no";
          }

          v157 = [(SFBLEScanner *)self _useCasesToString:self->_useCases, v157];
          v33 = v157;
          if (v175)
          {
            v34 = "yes";
          }

          else
          {
            v34 = "no";
          }

          if (v27)
          {
            v35 = "yes";
          }

          else
          {
            v35 = "no";
          }

          v163 = v34;
          v164 = v35;
          v161 = v31;
          v162 = v157;
          v157 = v25;
          v160 = v30;
          LogPrintF();

          goto LABEL_99;
        }

        v50 = self->_ucat;
        if (_LogCategory_Initialize())
        {
          v175 = neededCopy;
          v153 = self->_ucat;
          v25 = self->_rssiThreshold;
          v20 = self->_scanRate;
          goto LABEL_60;
        }
      }

LABEL_99:
      if (v27)
      {
        [(WPPairing *)self->_wpPairing stopProximityPairingServiceScanning];
      }

      v51 = self->_wpPairing;
      if (self->_rssiThreshold)
      {
        v52 = [MEMORY[0x1E696AD98] numberWithInteger:?];
        [(WPPairing *)v51 startProximityPairingServiceScanningWithRSSI:v52 duplicates:self->_needDups scanMode:v21];
      }

      else
      {
        [(WPPairing *)self->_wpPairing startProximityPairingServiceScanningWithRSSI:0 duplicates:self->_needDups scanMode:v21];
      }

      goto LABEL_104;
    }

LABEL_258:
    v136 = self->_ucat->var0;
    if (v136 > 20)
    {
      goto LABEL_196;
    }

    v137 = state;
    if (v136 == -1)
    {
      v145 = self->_ucat;
      if (!_LogCategory_Initialize())
      {
        goto LABEL_196;
      }

      v146 = self->_ucat;
    }

    SFBluetoothStateToString(v137);
LABEL_95:
    LogPrintF();
    goto LABEL_196;
  }

  array = [MEMORY[0x1E695DF70] array];
  centralManager = self->_centralManager;
  if (centralManager)
  {
    switch([(CBCentralManager *)centralManager state])
    {
      case 1:
        v18 = 1;
        goto LABEL_83;
      case 2:
        v18 = 4;
        goto LABEL_83;
      case 3:
        v18 = 5;
        goto LABEL_83;
      case 4:
        v18 = 2;
        goto LABEL_83;
      case 5:
        if (self->_payloadType != 17)
        {
          goto LABEL_73;
        }

        v36 = [(objc_class *)_MergedGlobals_0() UUIDWithString:@"9AA4730F-B25C-4CC3-B821-C931559FC196"];
        if (v36)
        {
          v37 = v36;
          [array addObject:v36];
          v38 = [(objc_class *)_MergedGlobals_0() UUIDWithString:@"FE25"];

          [array addObject:v38];
LABEL_73:
          scanInterval = self->_scanInterval;
          if (self->_scanWindow >= 1)
          {
            scanWindow = self->_scanWindow;
          }

          else
          {
            scanWindow = 30;
          }

          if (scanInterval <= 0)
          {
            v41 = self->_scanRate;
            if (v41 <= 49)
            {
              if (v41 <= 39)
              {
                if (v41 <= 19)
                {
                  scanInterval = 966;
                }

                else
                {
                  scanInterval = 300;
                }
              }

              else
              {
                scanInterval = 40;
              }
            }

            else
            {
              scanInterval = 30;
            }
          }

          if ([array count])
          {
            v108 = scanWindow;
          }

          else
          {
            scanInterval = 0;
            v108 = 0;
          }

          scanStarted = self->_scanStarted;
          if (!neededCopy && scanStarted)
          {
            if (self->_activeScan == self->_scanParamActive && self->_needDups == self->_scanParamDups && scanInterval == self->_scanParamInterval && v108 == self->_scanParamWindow)
            {
              OUTLINED_FUNCTION_0_13();
              if (!(v54 ^ v55 | v9))
              {
LABEL_236:
                OUTLINED_FUNCTION_29();
                if (!v9)
                {
                  v129 = OUTLINED_FUNCTION_10_0();
                  if (v129)
                  {
                    v130 = OUTLINED_FUNCTION_2_2(v129);
                    v131(v130, 1);
                  }
                }

                [(SFBLEScanner *)self _startTimeoutIfNeeded:v159];

                goto LABEL_195;
              }

              if (v110 == -1)
              {
                if (!_LogCategory_Initialize())
                {
                  goto LABEL_236;
                }

                v135 = self->_ucat;
              }

              LogPrintF();
              goto LABEL_236;
            }

            scanStarted = 1;
          }

          v111 = scanStarted && neededCopy;
          OUTLINED_FUNCTION_2_8();
          if (v112 <= 30)
          {
            if (v112 != -1)
            {
LABEL_216:
              v113 = self->_payloadType + 1;
              if (v113 > 0x12)
              {
                v114 = "?";
              }

              else
              {
                v114 = off_1E788E208[v113];
              }

              v116 = "no";
              if (self->_activeScan)
              {
                v117 = "yes";
              }

              else
              {
                v117 = "no";
              }

              if (self->_needDups)
              {
                v118 = "yes";
              }

              else
              {
                v118 = "no";
              }

              if (neededCopy)
              {
                v119 = "yes";
              }

              else
              {
                v119 = "no";
              }

              if (v111)
              {
                v116 = "yes";
              }

              v164 = v119;
              v165 = v116;
              v162 = v117;
              v163 = v118;
              v160 = v108;
              v161 = scanInterval;
              v159 = v114;
              LogPrintF();
              goto LABEL_233;
            }

            if (_LogCategory_Initialize())
            {
              v115 = self->_ucat;
              goto LABEL_216;
            }
          }

LABEL_233:
          v120 = v108;
          if (v111)
          {
            [(CBCentralManager *)self->_centralManager stopScan];
          }

          v173 = self->_centralManager;
          v177 = off_1EE741438();
          v179[0] = v177;
          v174 = [MEMORY[0x1E696AD98] numberWithBool:self->_activeScan];
          v180[0] = v174;
          v121 = off_1EE741440();
          v179[1] = v121;
          v122 = [MEMORY[0x1E696AD98] numberWithBool:self->_needDups];
          v180[1] = v122;
          v123 = off_1EE741448();
          v179[2] = v123;
          v180[2] = MEMORY[0x1E695E118];
          v124 = off_1EE741450();
          v179[3] = v124;
          [MEMORY[0x1E696AD98] numberWithInteger:scanInterval];
          v125 = v172 = scanInterval;
          v180[3] = v125;
          v126 = off_1EE741458();
          v179[4] = v126;
          v127 = [MEMORY[0x1E696AD98] numberWithInteger:v120];
          v180[4] = v127;
          v128 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v180 forKeys:v179 count:5];
          [(CBCentralManager *)v173 scanForPeripheralsWithServices:array options:v128];

          self->_scanParamActive = self->_activeScan;
          self->_scanParamDups = self->_needDups;
          self->_scanParamInterval = v172;
          self->_scanParamWindow = v120;
          goto LABEL_236;
        }

        OUTLINED_FUNCTION_2_8();
        if (v152 > 90)
        {
          goto LABEL_288;
        }

        if (v152 != -1)
        {
          goto LABEL_285;
        }

        if (_LogCategory_Initialize())
        {
          v156 = self->_ucat;
LABEL_285:
          LogPrintF();
        }

LABEL_288:

        goto LABEL_93;
      default:
        v18 = 0;
LABEL_83:
        v42 = self->_ucat->var0;
        if (v42 > 20)
        {
          break;
        }

        if (v42 != -1)
        {
          goto LABEL_85;
        }

        v43 = self->_ucat;
        if (_LogCategory_Initialize())
        {
          v147 = self->_ucat;
LABEL_85:
          SFBluetoothStateToString(v18);
          LogPrintF();
        }

        break;
    }
  }

  v44 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_30();
}

- (BOOL)_updateCounterpart:(id)counterpart
{
  v25 = *MEMORY[0x1E69E9840];
  counterpartCopy = counterpart;
  v5 = counterpartCopy;
  if (self->_payloadType == 7 && ([counterpartCopy bluetoothAddress], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = self->_devices;
    v9 = [(NSMutableDictionary *)v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v21;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [(NSMutableDictionary *)self->_devices objectForKeyedSubscript:*(*(&v20 + 1) + 8 * i), v20];
          v14 = v13;
          if (v13 == v5)
          {
            bluetoothAddress = 0;
          }

          else
          {
            bluetoothAddress = [v13 bluetoothAddress];
            if ([bluetoothAddress isEqual:v7])
            {
              identifier = [v14 identifier];
              [v5 setCounterpartIdentifier:identifier];

              v17 = 1;
              goto LABEL_15;
            }
          }
        }

        v10 = [(NSMutableDictionary *)v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v10);
    }

    v17 = 0;
LABEL_15:
  }

  else
  {
    v17 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

- (void)centralManagerDidUpdateState:(id)state
{
  stateCopy = state;
  OUTLINED_FUNCTION_31();
  centralManager = self->_centralManager;
  if (centralManager)
  {
    v6 = centralManager == v15;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    goto LABEL_21;
  }

  v7 = [(CBCentralManager *)v15 state]- 1;
  if (v7 > 4)
  {
    v8 = 0;
  }

  else
  {
    v8 = qword_1A998F258[v7];
  }

  OUTLINED_FUNCTION_2_8();
  if (v9 <= 40)
  {
    if (v9 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_13;
      }

      ucat = self->_ucat;
    }

    v14 = off_1E788E2A0[v8];
    LogPrintF();
  }

LABEL_13:
  switch(v8)
  {
    case 1:
      [(SFBLEScanner *)self _removeAllDevicesWithReason:@"BTReset"];
      break;
    case 2:
      [(SFBLEScanner *)self _poweredOff];
      break;
    case 3:
      [(SFBLEScanner *)self _poweredOn];
      break;
  }

  bluetoothStateChangedHandler = self->_bluetoothStateChangedHandler;
  if (bluetoothStateChangedHandler)
  {
    v11 = OUTLINED_FUNCTION_3_8(bluetoothStateChangedHandler);
    v12(v11);
  }

LABEL_21:
}

- (void)centralManager:(id)manager didDiscoverPeripheral:(id)peripheral advertisementData:(id)data RSSI:(id)i
{
  peripheralCopy = peripheral;
  dataCopy = data;
  iCopy = i;
  dispatchQueue = self->_dispatchQueue;
  managerCopy = manager;
  dispatch_assert_queue_V2(dispatchQueue);
  centralManager = self->_centralManager;

  if (centralManager && centralManager == managerCopy)
  {
    identifier = [peripheralCopy identifier];
    if (identifier)
    {
      [(SFBLEScanner *)self _recordDevice:identifier data:0 rssi:iCopy info:dataCopy];
      [(SFBLEScanner *)self foundPeripheralDevice:peripheralCopy advertisementData:dataCopy RSSI:iCopy];
    }
  }
}

- (void)foundPeripheralDevice:(id)device advertisementData:(id)data RSSI:(id)i
{
  deviceCopy = device;
  dataCopy = data;
  iCopy = i;
  identifier = [deviceCopy identifier];
  if (identifier)
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    off_1EE741460();
    objc_claimAutoreleasedReturnValue();
    v12 = [OUTLINED_FUNCTION_8_1() objectForKeyedSubscript:?];

    if (v12)
    {
      [v11 setObject:v12 forKeyedSubscript:@"ch"];
    }

    off_1EE741468();
    objc_claimAutoreleasedReturnValue();
    v13 = [OUTLINED_FUNCTION_8_1() objectForKeyedSubscript:?];

    if ([v13 length] == 6)
    {
      [v11 setObject:v13 forKeyedSubscript:@"bdAddr"];
    }

    off_1EE741470();
    objc_claimAutoreleasedReturnValue();
    v14 = [OUTLINED_FUNCTION_8_1() objectForKeyedSubscript:?];

    if (!v14)
    {
      v14 = objc_alloc_init(MEMORY[0x1E695DEF0]);
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_28;
    }

    if (self->_payloadType != 17)
    {
      goto LABEL_21;
    }

    var0 = self->_ucat->var0;
    if (var0 <= 50)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_14;
        }

        ucat = self->_ucat;
      }

      v26 = deviceCopy;
      LogPrintF();
    }

LABEL_14:
    v31 = v13;
    off_1EE741478();
    objc_claimAutoreleasedReturnValue();
    v16 = [OUTLINED_FUNCTION_8_1() objectForKeyedSubscript:?];

    v17 = [MEMORY[0x1E695D2A0] UUIDWithString:@"FE25"];
    v18 = [v16 objectForKeyedSubscript:v17];
    v30 = identifier;
    if (v18)
    {
      if (![(SFBLEScanner *)self _watchSetupParseData:v18 fields:v11])
      {

        v13 = v31;
        goto LABEL_28;
      }

      v19 = v12;
      v20 = v14;
      v14 = v18;
    }

    else
    {
      v19 = v12;
      v29 = iCopy;
      v21 = off_1EE741480();
      v20 = [dataCopy objectForKeyedSubscript:v21];

      if (v20)
      {
        [v11 setObject:v20 forKeyedSubscript:@"name"];
        [(SFBLEScanner *)self _watchSetupParseName:v20 fields:v11];
      }

      iCopy = v29;
    }

    v12 = v19;
    identifier = v30;
    v13 = v31;
LABEL_21:
    integerValue = [iCopy integerValue];
    off_1EE741488();
    if (!CFDictionaryGetInt64())
    {
LABEL_27:
      [(SFBLEScanner *)self _foundDevice:identifier advertisementData:v14 rssi:integerValue fields:v11, v27, v28];
LABEL_28:

      goto LABEL_29;
    }

    v23 = self->_ucat->var0;
    if (v23 <= 20)
    {
      if (v23 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_26;
        }

        v24 = self->_ucat;
      }

      v27 = integerValue;
      v28 = identifier;
      LogPrintF();
    }

LABEL_26:
    integerValue = 127;
    goto LABEL_27;
  }

LABEL_29:
}

- (void)_watchSetupParseName:(id)name fields:(id)fields
{
  nameCopy = name;
  fieldsCopy = fields;
  if (_os_feature_enabled_impl())
  {
    v6 = [nameCopy dataUsingEncoding:4];
    [OUTLINED_FUNCTION_12() setObject:? forKeyedSubscript:?];
    v7 = 0;
LABEL_24:

    goto LABEL_25;
  }

  if ([nameCopy length] < 8)
  {
    v7 = 0;
    goto LABEL_25;
  }

  v7 = [nameCopy substringWithRange:{0, 5}];
  if (v7)
  {
    [fieldsCopy setObject:v7 forKeyedSubscript:@"wi"];
  }

  v8 = [nameCopy characterAtIndex:5];
  if (v8 > 0x7Fu)
  {
    v9 = __maskrune(v8, 0x500uLL);
  }

  else
  {
    v9 = OUTLINED_FUNCTION_7_1(v8);
  }

  if (v9)
  {
    v10 = memchr("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890", v8, 0x3FuLL);
    if (v10)
    {
      v11 = [MEMORY[0x1E696AD98] numberWithInt:v10 - "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890"];
      [OUTLINED_FUNCTION_12() setObject:? forKeyedSubscript:?];
    }
  }

  v12 = [nameCopy characterAtIndex:6];
  if (v12 > 0x7Fu)
  {
    if (!__maskrune(v12, 0x500uLL))
    {
      goto LABEL_18;
    }
  }

  else if (!OUTLINED_FUNCTION_7_1(v12))
  {
    goto LABEL_18;
  }

  v13 = memchr("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890", v12, 0x3FuLL);
  if (v13)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithInt:v13 - "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890"];
    [OUTLINED_FUNCTION_12() setObject:? forKeyedSubscript:?];
  }

LABEL_18:
  v15 = [nameCopy characterAtIndex:7];
  if (v15 > 0x7Fu)
  {
    if (!__maskrune(v15, 0x500uLL))
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  if (OUTLINED_FUNCTION_7_1(v15))
  {
LABEL_22:
    v16 = memchr("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890", v15, 0x3FuLL);
    if (!v16)
    {
      goto LABEL_25;
    }

    v6 = [MEMORY[0x1E696AD98] numberWithInt:v16 - "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890"];
    [OUTLINED_FUNCTION_12() setObject:? forKeyedSubscript:?];
    goto LABEL_24;
  }

LABEL_25:
}

- (void)awdlDidUpdateState:(id)state
{
  stateCopy = state;
  OUTLINED_FUNCTION_31();
  wpAirDrop = self->_wpAirDrop;
  if (wpAirDrop)
  {
    v6 = wpAirDrop == v14;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    goto LABEL_21;
  }

  state = [(WPAWDL *)v14 state];
  OUTLINED_FUNCTION_2_8();
  if (v8 <= 40)
  {
    if (v8 != -1)
    {
LABEL_8:
      if (state <= 5)
      {
        v9 = off_1E788E2A0[state];
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
  switch(state)
  {
    case 1uLL:
      [(SFBLEScanner *)self _removeAllDevicesWithReason:@"BTReset"];
      break;
    case 2uLL:
      [(SFBLEScanner *)self _poweredOff];
      break;
    case 3uLL:
      [(SFBLEScanner *)self _poweredOn];
      break;
  }

  bluetoothStateChangedHandler = self->_bluetoothStateChangedHandler;
  if (bluetoothStateChangedHandler)
  {
    v12 = OUTLINED_FUNCTION_3_8(bluetoothStateChangedHandler);
    v13(v12);
  }

LABEL_21:
}

- (void)awdlStartedScanning:(id)scanning
{
  dispatchQueue = self->_dispatchQueue;
  scanningCopy = scanning;
  dispatch_assert_queue_V2(dispatchQueue);
  wpAirDrop = self->_wpAirDrop;

  if (wpAirDrop)
  {
    v7 = wpAirDrop == scanningCopy;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    return;
  }

  OUTLINED_FUNCTION_0_13();
  if (v9 ^ v10 | v7)
  {
    if (v8 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_11;
      }

      ucat = self->_ucat;
    }

    LogPrintF();
  }

LABEL_11:
  OUTLINED_FUNCTION_29();
  if (!v7)
  {
    v11 = OUTLINED_FUNCTION_10_0();
    if (v11)
    {
      v12 = OUTLINED_FUNCTION_2_2(v11);
      v13(v12, 1);
    }
  }

  [(SFBLEScanner *)self _startTimeoutIfNeeded];
}

- (void)awdl:(id)awdl failedToStartScanningWithError:(id)error
{
  errorCopy = error;
  dispatchQueue = self->_dispatchQueue;
  awdlCopy = awdl;
  dispatch_assert_queue_V2(dispatchQueue);
  wpAirDrop = self->_wpAirDrop;

  if (wpAirDrop)
  {
    v9 = wpAirDrop == awdlCopy;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    OUTLINED_FUNCTION_2_8();
    if (v10 <= 60)
    {
      if (v10 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_10;
        }

        ucat = self->_ucat;
      }

      OUTLINED_FUNCTION_27();
      LogPrintF();
    }

LABEL_10:
    self->_scanStarted = 0;
    [(CURetrier *)self->_startRetrier failedDirect];
  }
}

- (void)awdl:(id)awdl foundDevice:(id)device rssi:(id)rssi
{
  deviceCopy = device;
  rssiCopy = rssi;
  dispatchQueue = self->_dispatchQueue;
  awdlCopy = awdl;
  dispatch_assert_queue_V2(dispatchQueue);
  wpAirDrop = self->_wpAirDrop;

  if (wpAirDrop && wpAirDrop == awdlCopy)
  {
    [(SFBLEScanner *)self _recordDevice:0 data:deviceCopy rssi:rssiCopy info:0];
    [(SFBLEScanner *)self foundAWDLDevice:deviceCopy rssi:rssiCopy];
  }
}

- (void)foundAWDLDevice:(id)device rssi:(id)rssi
{
  v15 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  rssiCopy = rssi;
  v13 = 0;
  v14 = 0;
  if ([deviceCopy length] == 10)
  {
    bytes = [deviceCopy bytes];
    LODWORD(v13) = 0;
    WORD2(v13) = 0;
    HIBYTE(v13) = *(bytes + 1);
    BYTE1(v14) = *(bytes + 2);
    v9 = *(bytes + 3);
    HIWORD(v14) = *(bytes + 7);
    *(&v14 + 2) = v9;
    BYTE6(v13) = 16;
    LOBYTE(v14) = 0x80;
    v10 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:&v13];
    if (v10)
    {
      v11 = v10;
      -[SFBLEScanner _foundDevice:advertisementData:rssi:fields:](self, "_foundDevice:advertisementData:rssi:fields:", v10, deviceCopy, [rssiCopy integerValue], 0);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)nearbyDidUpdateState:(id)state
{
  stateCopy = state;
  OUTLINED_FUNCTION_31();
  wpNearby = self->_wpNearby;
  if (wpNearby)
  {
    v6 = wpNearby == v14;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    goto LABEL_21;
  }

  state = [(WPNearby *)v14 state];
  OUTLINED_FUNCTION_2_8();
  if (v8 <= 40)
  {
    if (v8 != -1)
    {
LABEL_8:
      if (state <= 5)
      {
        v9 = off_1E788E2A0[state];
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
  switch(state)
  {
    case 1uLL:
      [(SFBLEScanner *)self _removeAllDevicesWithReason:@"BTReset"];
      break;
    case 2uLL:
      [(SFBLEScanner *)self _poweredOff];
      break;
    case 3uLL:
      [(SFBLEScanner *)self _poweredOn];
      break;
  }

  bluetoothStateChangedHandler = self->_bluetoothStateChangedHandler;
  if (bluetoothStateChangedHandler)
  {
    v12 = OUTLINED_FUNCTION_3_8(bluetoothStateChangedHandler);
    v13(v12);
  }

LABEL_21:
}

- (void)nearby:(id)nearby didStartScanningForType:(int64_t)type
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

  OUTLINED_FUNCTION_0_13();
  if (v11 ^ v12 | v9)
  {
    if (v10 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_12;
      }

      ucat = self->_ucat;
    }

    LogPrintF();
  }

LABEL_12:
  OUTLINED_FUNCTION_29();
  if (!v9)
  {
    v13 = OUTLINED_FUNCTION_10_0();
    if (v13)
    {
      v14 = OUTLINED_FUNCTION_2_2(v13);
      v15(v14, 1);
    }
  }

  [(SFBLEScanner *)self _startTimeoutIfNeeded];
}

- (void)nearby:(id)nearby didFailToStartScanningForType:(int64_t)type WithError:(id)error
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

  if (v11 && self->_wpNearbyType == type)
  {
    OUTLINED_FUNCTION_2_8();
    if (v12 <= 60)
    {
      if (v12 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_11;
        }

        ucat = self->_ucat;
      }

      OUTLINED_FUNCTION_27();
      LogPrintF();
    }

LABEL_11:
    self->_scanStarted = 0;
    [(CURetrier *)self->_startRetrier failedDirect];
  }
}

- (void)nearby:(id)nearby didDiscoverType:(int64_t)type withData:(id)data fromPeer:(id)peer peerInfo:(id)info
{
  dataCopy = data;
  peerCopy = peer;
  infoCopy = info;
  dispatchQueue = self->_dispatchQueue;
  nearbyCopy = nearby;
  dispatch_assert_queue_V2(dispatchQueue);
  wpNearby = self->_wpNearby;

  if (wpNearby && wpNearby == nearbyCopy && self->_wpNearbyType == type)
  {
    [(SFBLEScanner *)self _recordDevice:peerCopy data:dataCopy rssi:0 info:infoCopy];
    [(SFBLEScanner *)self foundNearbyDevice:peerCopy data:dataCopy peerInfo:infoCopy];
  }
}

- (void)nearby:(id)nearby didLosePeer:(id)peer type:(int64_t)type
{
  peerCopy = peer;
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
    goto LABEL_22;
  }

  v12 = [(NSMutableDictionary *)self->_devices objectForKeyedSubscript:peerCopy];
  OUTLINED_FUNCTION_2_8();
  if (!v12)
  {
    if (v13 <= 8)
    {
      if (v13 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_22;
        }

        ucat = self->_ucat;
      }

      OUTLINED_FUNCTION_27();
      LogPrintF();
    }

LABEL_22:
    v12 = 0;
    goto LABEL_25;
  }

  if (v13 > 8)
  {
    goto LABEL_15;
  }

  if (v13 != -1)
  {
    goto LABEL_10;
  }

  if (_LogCategory_Initialize())
  {
    v18 = self->_ucat;
LABEL_10:
    v21 = v12;
    LogPrintF();
  }

LABEL_15:
  deviceLostHandler = self->_deviceLostHandler;
  if (deviceLostHandler)
  {
    v15 = OUTLINED_FUNCTION_3_8(deviceLostHandler);
    v16(v15);
  }

  [(NSMutableDictionary *)self->_devices removeObjectForKey:peerCopy, v21];
  if (![(SFBLEScanner *)self _needDups])
  {
    OUTLINED_FUNCTION_2_8();
    if (v17 <= 30)
    {
      if (v17 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_24;
        }

        v20 = self->_ucat;
      }

      v22 = v12;
      LogPrintF();
    }

LABEL_24:
    self->_needDups = 0;
    [(SFBLEScanner *)self _restartIfNeeded];
  }

LABEL_25:
  [(SFBLEScanner *)self _updateRescanTimer];
}

- (void)_nearbyParseManufacturerData:(id)data fields:(id)fields
{
  dataCopy = data;
  fieldsCopy = fields;
  v7 = dataCopy;
  bytes = [dataCopy bytes];
  v9 = [dataCopy length];
  if (v9 >= 2 && *bytes == 76 && !bytes[1] && v9 >= 4)
  {
    v10 = &bytes[v9];
    v11 = bytes + 2;
    do
    {
      v12 = v11[1] & 0x1F;
      if (v10 - (v11 + 2) < v12)
      {
        break;
      }

      v13 = *v11;
      v11 += v12 + 2;
      if (v13 == 16)
      {
        [SFBLEScanner _nearbyParseNearbyInfoPtr:"_nearbyParseNearbyInfoPtr:end:fields:" end:? fields:?];
      }

      else if (v13 == 15)
      {
        [SFBLEScanner _nearbyParseNearbyActionPtr:"_nearbyParseNearbyActionPtr:end:fields:" end:? fields:?];
      }
    }

    while (v10 - v11 > 1);
  }
}

- (void)pairingDidUpdateState:(id)state
{
  stateCopy = state;
  OUTLINED_FUNCTION_31();
  wpPairing = self->_wpPairing;
  if (wpPairing)
  {
    v6 = wpPairing == v14;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    goto LABEL_21;
  }

  state = [(WPPairing *)v14 state];
  OUTLINED_FUNCTION_2_8();
  if (v8 <= 40)
  {
    if (v8 != -1)
    {
LABEL_8:
      if (state <= 5)
      {
        v9 = off_1E788E2A0[state];
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
  switch(state)
  {
    case 1uLL:
      [(SFBLEScanner *)self _removeAllDevicesWithReason:@"BTReset"];
      break;
    case 2uLL:
      [(SFBLEScanner *)self _poweredOff];
      break;
    case 3uLL:
      [(SFBLEScanner *)self _poweredOn];
      break;
  }

  bluetoothStateChangedHandler = self->_bluetoothStateChangedHandler;
  if (bluetoothStateChangedHandler)
  {
    v12 = OUTLINED_FUNCTION_3_8(bluetoothStateChangedHandler);
    v13(v12);
  }

LABEL_21:
}

- (void)pairingStartedScanning:(id)scanning
{
  dispatchQueue = self->_dispatchQueue;
  scanningCopy = scanning;
  dispatch_assert_queue_V2(dispatchQueue);
  wpPairing = self->_wpPairing;

  if (wpPairing)
  {
    v7 = wpPairing == scanningCopy;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    return;
  }

  OUTLINED_FUNCTION_0_13();
  if (v9 ^ v10 | v7)
  {
    if (v8 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_11;
      }

      ucat = self->_ucat;
    }

    LogPrintF();
  }

LABEL_11:
  OUTLINED_FUNCTION_29();
  if (!v7)
  {
    v11 = OUTLINED_FUNCTION_10_0();
    if (v11)
    {
      v12 = OUTLINED_FUNCTION_2_2(v11);
      v13(v12, 1);
    }
  }

  [(SFBLEScanner *)self _startTimeoutIfNeeded];
}

- (void)pairing:(id)pairing failedToStartScanningWithError:(id)error
{
  errorCopy = error;
  dispatchQueue = self->_dispatchQueue;
  pairingCopy = pairing;
  dispatch_assert_queue_V2(dispatchQueue);
  wpPairing = self->_wpPairing;

  if (wpPairing)
  {
    v9 = wpPairing == pairingCopy;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    OUTLINED_FUNCTION_2_8();
    if (v10 <= 60)
    {
      if (v10 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_10;
        }

        ucat = self->_ucat;
      }

      OUTLINED_FUNCTION_27();
      LogPrintF();
    }

LABEL_10:
    self->_scanStarted = 0;
    [(CURetrier *)self->_startRetrier failedDirect];
  }
}

- (void)pairing:(id)pairing foundDevice:(id)device payload:(id)payload rssi:(id)rssi peerInfo:(id)info
{
  deviceCopy = device;
  payloadCopy = payload;
  rssiCopy = rssi;
  infoCopy = info;
  dispatchQueue = self->_dispatchQueue;
  pairingCopy = pairing;
  dispatch_assert_queue_V2(dispatchQueue);
  wpPairing = self->_wpPairing;

  if (wpPairing && wpPairing == pairingCopy)
  {
    var0 = self->_ucat->var0;
    if (var0 <= 10)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_7;
        }

        ucat = self->_ucat;
      }

      LogPrintF();
    }

LABEL_7:
    [OUTLINED_FUNCTION_23() _recordDevice:? data:? rssi:? info:?];
    clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    [OUTLINED_FUNCTION_23() foundPairingDevice:? payload:? rssi:? peerInfo:? withTimeInMachContSeconds:?];
  }
}

- (id)pairingParsePayload:(id)payload identifier:(id)identifier bleDevice:(id)device peerInfo:(id)info
{
  v322[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  deviceCopy = device;
  infoCopy = info;
  payloadCopy = payload;
  payloadCopy2 = payload;
  bytes = [payloadCopy2 bytes];
  v15 = [payloadCopy2 length];

  v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (v15 >= 7)
  {
    v17 = *(bytes + 4);
    v18 = *(bytes + 5);
    hasSplitBattery = 1;
    v19 = (v18 - 8194) > 0xD || ((1 << (v18 - 2)) & 0x3001) == 0;
    if (v19)
    {
      v33 = [[SFHeadphoneProduct alloc] initWithProductID:v18];
      [(SFHeadphoneProduct *)v33 isAirPods];

      OUTLINED_FUNCTION_25();
      if (v19)
      {
        hasSplitBattery = 1;
      }

      else
      {
        v34 = [[SFHeadphoneProduct alloc] initWithProductID:v18];
        hasSplitBattery = [(SFHeadphoneProduct *)v34 hasSplitBattery];
      }
    }

    v316 = [[SFHeadphoneProduct alloc] initWithProductID:v18];
    v20 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v17];
    [OUTLINED_FUNCTION_8_0() setObject:? forKeyedSubscript:?];

    if (!v17 && v15 == 14)
    {
      v21 = [(SFBLEScanner *)self statusToHeadsetStatus:*(bytes + 7) forProductID:v18];
      v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v21];
      OUTLINED_FUNCTION_14_0();

      v23 = [OUTLINED_FUNCTION_13_0() modelWithProductID:?];
      OUTLINED_FUNCTION_14_0();

      v24 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v18];
      OUTLINED_FUNCTION_14_0();

      v25 = [MEMORY[0x1E695DEF0] dataWithBytes:bytes + 8 length:6];
      OUTLINED_FUNCTION_14_0();

      [v16 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"ns"];
LABEL_324:
      v26 = v16;
      goto LABEL_325;
    }

    v26 = 0;
    v27 = (bytes + 7);
    switch(v17)
    {
      case 0:
      case 7:
        v302 = deviceCopy;
        if (v17)
        {
          if (v15 >= 0xD)
          {
            v299 = *(bytes + 7);
            v28 = *(bytes + 8);
            v288 = *(bytes + 9);
            v29 = *(bytes + 10);
            v30 = (bytes + 12);
            v303 = *(bytes + 11);
            v285 = 0;
            if (v17 == 7)
            {
              v31 = 0;
              v32 = 0;
              goto LABEL_62;
            }

            v90 = 7;
LABEL_61:
            v91 = bytes + v90;
            v32 = *v30;
            v30 = (v91 + 6);
            v31 = 1;
LABEL_62:
            v297 = v28;
            OUTLINED_FUNCTION_25();
            v307 = v93;
            if (v19)
            {
              hasSplitCaseColors = 1;
            }

            else
            {
              v292 = v32;
              v94 = v29;
              selfCopy = self;
              v96 = v92;
              v97 = [[SFHeadphoneProduct alloc] initWithProductID:v18];
              hasSplitCaseColors = [(SFHeadphoneProduct *)v97 hasSplitCaseColors];

              v92 = v96;
              self = selfCopy;
              v29 = v94;
              v32 = v292;
            }

            v311 = v92;
            if ((v31 & hasSplitCaseColors) == 1)
            {
              if (v92 - v30 < 1)
              {
                v293 = v30;
                v99 = 0;
              }

              else
              {
                v293 = v30 + 1;
                v99 = *v30 >> 5;
              }

              v117 = v32 >> 4;
              v118 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v32 & 0xF];
              [OUTLINED_FUNCTION_1_11() setObject:? forKeyedSubscript:?];

              v119 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v117];
              [OUTLINED_FUNCTION_1_11() setObject:? forKeyedSubscript:?];

              v120 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v99];
              [OUTLINED_FUNCTION_1_11() setObject:? forKeyedSubscript:?];
            }

            else
            {
              v293 = v30;
              v100 = +[SFHeadphoneProduct airPodsMax];

              if (v316 == v100)
              {
                [MEMORY[0x1E696AD98] numberWithInt:v32 & 0x1F];
              }

              else
              {
                [MEMORY[0x1E696AD98] numberWithUnsignedChar:v32];
              }
              v120 = ;
              [OUTLINED_FUNCTION_1_11() setObject:? forKeyedSubscript:?];
            }

            LODWORD(v120) = [(SFBLEScanner *)self statusToHeadsetStatus:v299 forProductID:v18];
            if (v297 == 255)
            {
              v298 = 0;
            }

            else
            {
              v121 = OUTLINED_FUNCTION_19_0();
              v123 = v122 < 0;
              v124 = 1;
              if (v123)
              {
                v124 = 2;
              }

              v298 = v124;
            }

            if (v288 == 255)
            {
              v290 = 0;
            }

            else
            {
              v121 = OUTLINED_FUNCTION_19_0();
              v123 = v125 < 0;
              v126 = 1;
              if (v123)
              {
                v126 = 2;
              }

              v290 = v126;
            }

            if (v29 == 255)
            {
              v128 = 0;
            }

            else
            {
              v121 = OUTLINED_FUNCTION_19_0();
              if (v127 >= 0)
              {
                v128 = 1;
              }

              else
              {
                v128 = 2;
              }
            }

            if (v18 - 8194) < 0xE && ((0x3201u >> (v18 - 2)))
            {
              hasLid = 1;
            }

            else
            {
              v130 = [[SFHeadphoneProduct alloc] initWithProductID:v18];
              hasLid = [(SFHeadphoneProduct *)v130 hasLid];
            }

            if ((v303 & 0x80u) == 0)
            {
              v131 = 1;
            }

            else
            {
              v131 = hasLid;
            }

            if (v131)
            {
              v120 = v120;
            }

            else
            {
              v120 = v120 | 0x400;
            }

            v132 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{v120, v121}];
            [v16 setObject:v132 forKeyedSubscript:@"hsStatus"];

            if ((hasLid & ((v303 & 8) >> 3)) != 0)
            {
              v133 = MEMORY[0x1E695E118];
            }

            else
            {
              v133 = MEMORY[0x1E695E110];
            }

            [v16 setObject:v133 forKeyedSubscript:@"lc"];
            v134 = [MEMORY[0x1E696AD98] numberWithInt:v303 & 7];
            if ((v120 & 0x100) != 0)
            {
              OUTLINED_FUNCTION_17_0();

              advertisementFields = [v302 advertisementFields];
              v136 = [advertisementFields objectForKeyedSubscript:@"locS"];

              if (!v136)
              {
                goto LABEL_129;
              }
            }

            else
            {
              OUTLINED_FUNCTION_17_0();

              advertisementFields2 = [v302 advertisementFields];
              v136 = [advertisementFields2 objectForKeyedSubscript:@"locP"];

              if (!v136)
              {
                goto LABEL_129;
              }
            }

            OUTLINED_FUNCTION_17_0();
LABEL_129:
            identifierCopy = v307;

            [OUTLINED_FUNCTION_22() parseStatus3:v303 productID:v18 caseLEDColor:? caseLEDStatus:?];
            v138 = +[SFHeadphoneProduct airPodsMax];

            if (v316 == v138)
            {
              0x1F = [MEMORY[0x1E696AD98] numberWithInt:v299 & 0x1F];
            }

            else
            {
              if (v18 != 8207 && v18 != 8194)
              {
LABEL_138:
                if ([(SFHeadphoneProduct *)v316 supportsDigitalEngraving]&& v311 - v293 >= 17)
                {
                  v141 = [MEMORY[0x1E695DEF0] dataWithBytes:v293 length:17];
                  OUTLINED_FUNCTION_17_0();
                }

                v142 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v320];
                OUTLINED_FUNCTION_17_0();

                v143 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v318];
                OUTLINED_FUNCTION_17_0();

                v144 = [OUTLINED_FUNCTION_13_0() modelWithProductID:?];
                OUTLINED_FUNCTION_17_0();

                v145 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v18];
                OUTLINED_FUNCTION_17_0();

                [v16 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"ns"];
                if (v17)
                {
                  v146 = off_1EE741490();
                  v147 = [infoCopy objectForKeyedSubscript:v146];
                  OUTLINED_FUNCTION_17_0();
                }

                else
                {
                  v146 = [MEMORY[0x1E695DEF0] dataWithBytes:v285 length:6];
                  OUTLINED_FUNCTION_14_0();
                }

                v148 = v298;
                v149 = v290;

                v42 = objc_alloc_init(MEMORY[0x1E695DF70]);
                if (!hasSplitBattery)
                {
                  deviceCopy = v302;
                  v150 = objc_alloc_init(SFBatteryInfo);
                  v154 = OUTLINED_FUNCTION_4_6();
                  v155 = OUTLINED_FUNCTION_5_3(v154, 0.0001);
                  [v156 setBatteryLevel:v155];
                  [(SFBatteryInfo *)v150 setBatteryState:v298];
                  [(SFBatteryInfo *)v150 setBatteryType:4];
                  goto LABEL_160;
                }

                if (v128)
                {
                  v150 = objc_alloc_init(SFBatteryInfo);
                  v151 = OUTLINED_FUNCTION_20_0();
                  v152 = OUTLINED_FUNCTION_5_3(v151, 0.0001);
                  [v153 setBatteryLevel:v152];
                  [(SFBatteryInfo *)v150 setBatteryState:v128];
                  [(SFBatteryInfo *)v150 setBatteryType:1];
                  [OUTLINED_FUNCTION_12() addObject:?];
                  if (!(v298 | v290))
                  {
                    LOBYTE(v120) = 0x80;
                    v148 = 2;
                    v149 = 2;
                    goto LABEL_151;
                  }
                }

                else
                {
                  v150 = 0;
                }

                if (!v298)
                {
LABEL_155:
                  if (!v149)
                  {
                    deviceCopy = v302;
                    goto LABEL_161;
                  }

                  deviceCopy = v302;
                  v160 = objc_alloc_init(SFBatteryInfo);

                  v161 = OUTLINED_FUNCTION_21_0();
                  [(SFBatteryInfo *)v160 setBatteryLevel:OUTLINED_FUNCTION_5_3(v161, 0.0001)];
                  [(SFBatteryInfo *)v160 setBatteryState:v149];
                  if ((v120 & 0x80) != 0)
                  {
                    v162 = 3;
                  }

                  else
                  {
                    v162 = 2;
                  }

                  [(SFBatteryInfo *)v160 setBatteryType:v162];
                  v150 = v160;
LABEL_160:
                  [OUTLINED_FUNCTION_12() addObject:?];
LABEL_161:
                  OUTLINED_FUNCTION_14_0();

                  goto LABEL_162;
                }

LABEL_151:
                v157 = objc_alloc_init(SFBatteryInfo);

                v158 = OUTLINED_FUNCTION_4_6();
                [(SFBatteryInfo *)v157 setBatteryLevel:OUTLINED_FUNCTION_5_3(v158, 0.0001)];
                [(SFBatteryInfo *)v157 setBatteryState:v148];
                if ((v120 & 0x80) != 0)
                {
                  v159 = 2;
                }

                else
                {
                  v159 = 3;
                }

                [(SFBatteryInfo *)v157 setBatteryType:v159];
                [v42 addObject:v157];
                v150 = v157;
                goto LABEL_155;
              }

              0x1F = [MEMORY[0x1E696AD98] numberWithInt:(v303 >> 4) & 1];
            }

            OUTLINED_FUNCTION_17_0();

            goto LABEL_138;
          }
        }

        else if (v15 >= 0x13)
        {
          v299 = *(bytes + 13);
          v28 = *(bytes + 14);
          v288 = *(bytes + 15);
          v29 = *(bytes + 16);
          v30 = (bytes + 18);
          v90 = 13;
          v303 = *(bytes + 17);
          v285 = bytes + 7;
          goto LABEL_61;
        }

        v26 = 0;
        goto LABEL_325;
      case 1:
        if (v15 < 0xA)
        {
          goto LABEL_327;
        }

        v43 = *(bytes + 7);
        v304 = *(bytes + 9);
        v44 = deviceCopy;
        v286 = *(bytes + 8);
        if (v15 == 26)
        {
          v45 = identifierCopy;
          v284 = 0;
          v289 = 0;
          v300 = 0;
          v295 = 0;
          v46 = (bytes + 10);
          v47 = (bytes + 11);
          v48 = (bytes + 12);
          v49 = (bytes + 13);
          v281 = bytes + 17;
          v282 = bytes + 14;
        }

        else
        {
          if (v15 < 0x19)
          {
            goto LABEL_327;
          }

          v45 = identifierCopy;
          LODWORD(v284) = *(bytes + 10);
          HIDWORD(v284) = *(bytes + 11);
          v46 = (bytes + 13);
          v289 = *(bytes + 12);
          v47 = (bytes + 14);
          v48 = (bytes + 15);
          v49 = (bytes + 16);
          v281 = bytes + 20;
          v282 = bytes + 17;
          v300 = *(bytes + 23);
          v295 = *(bytes + 24);
        }

        v101 = *v49;
        v102 = *v48;
        v103 = *v47;
        v312 = *v46;
        v280 = v43;
        v104 = [SFBLEScanner statusToHeadsetStatus:"statusToHeadsetStatus:forProductID:" forProductID:?];
        v306 = v45;
        if ([(SFBLEScanner *)self pairingUpdatePairedInfo:v45 fields:v16 bleDevice:v44])
        {
          if (v15 == 26 || !BluetoothProductIDSupportsOBCState(v18))
          {
            v279 = 0;
          }

          else
          {
            if ((v312 & 0x20) != 0)
            {
              v106 = 2;
            }

            else
            {
              v106 = 1;
            }

            v279 = v106;
          }

          if (v103 == -1)
          {
            v294 = 0;
          }

          else
          {
            v199 = v103 & 0x7F;
            if (v199 >= 0x64)
            {
              v199 = 100;
            }

            v105 = OUTLINED_FUNCTION_11_0(v199);
            v200 = 1;
            if (v103 < 0)
            {
              v200 = 2;
            }

            v294 = v200;
          }

          v205 = 0x1E696A000uLL;
          if (v102 == -1)
          {
            v287 = 0;
          }

          else
          {
            v213 = v102 & 0x7F;
            if (v213 >= 0x64)
            {
              v213 = 100;
            }

            v105 = OUTLINED_FUNCTION_11_0(v213);
            v214 = 1;
            if (v102 < 0)
            {
              v214 = 2;
            }

            v287 = v214;
          }

          deviceCopy = v44;
          v204 = v104;
          v206 = v304;
          if (v101 == -1)
          {
            v283 = 0;
          }

          else
          {
            v215 = v101 & 0x7F;
            if (v215 >= 0x64)
            {
              v215 = 100;
            }

            v105 = OUTLINED_FUNCTION_11_0(v215);
            v216 = 1;
            if (v101 < 0)
            {
              v216 = 2;
            }

            v283 = v216;
          }

          v217 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v105];
          [OUTLINED_FUNCTION_1_11() setObject:? forKeyedSubscript:?];

          v218 = [MEMORY[0x1E696AD98] numberWithInteger:v312 & 3];
          [OUTLINED_FUNCTION_1_11() setObject:? forKeyedSubscript:?];

          v219 = [MEMORY[0x1E695DEF0] dataWithBytes:v281 length:3];
          [OUTLINED_FUNCTION_1_11() setObject:? forKeyedSubscript:?];

          v220 = [MEMORY[0x1E695DEF0] dataWithBytes:v282 length:3];
          [OUTLINED_FUNCTION_1_11() setObject:? forKeyedSubscript:?];

          [v16 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"paired"];
          v221 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v279];
          [OUTLINED_FUNCTION_1_11() setObject:? forKeyedSubscript:?];
        }

        else
        {
          v116 = v286;
          if ((v286 & 0xF) == 0xF)
          {
            v294 = 0;
          }

          else
          {
            OUTLINED_FUNCTION_16_0();
            if (v174)
            {
              v201 = v202;
            }

            OUTLINED_FUNCTION_15_0(v201);
            v203 = 1;
            if ((v304 & 0x10) != 0)
            {
              v203 = 2;
            }

            v294 = v203;
          }

          deviceCopy = v44;
          v204 = v104;
          v205 = 0x1E696A000;
          if (v116 >> 4 == 15)
          {
            v287 = 0;
            v206 = v304;
          }

          else
          {
            OUTLINED_FUNCTION_16_0();
            if (v174)
            {
              v207 = v208;
            }

            OUTLINED_FUNCTION_15_0(v207);
            v206 = v304;
            v209 = 1;
            if ((v304 & 0x20) != 0)
            {
              v209 = 2;
            }

            v287 = v209;
          }

          if ((v206 & 0xF) == 0xF)
          {
            v283 = 0;
          }

          else
          {
            OUTLINED_FUNCTION_16_0();
            if (v174)
            {
              v210 = v211;
            }

            OUTLINED_FUNCTION_15_0(v210);
            v212 = 1;
            if ((v206 & 0x40) != 0)
            {
              v212 = 2;
            }

            v283 = v212;
          }
        }

        v222 = [OUTLINED_FUNCTION_13_0() modelWithProductID:?];
        [OUTLINED_FUNCTION_1_11() setObject:? forKeyedSubscript:?];

        v223 = [*(v205 + 3480) numberWithUnsignedShort:v18];
        [OUTLINED_FUNCTION_1_11() setObject:? forKeyedSubscript:?];

        if (v15 == 26)
        {
          goto LABEL_290;
        }

        [OUTLINED_FUNCTION_22() parseStatus3:v284 productID:v18 caseLEDColor:? caseLEDStatus:?];
        OUTLINED_FUNCTION_25();
        if (v19 || (v224 = [[SFHeadphoneProduct alloc] initWithProductID:v18], v225 = [(SFHeadphoneProduct *)v224 hasSplitCaseColors], v224, v225))
        {
          v226 = [*(v205 + 3480) numberWithUnsignedChar:BYTE4(v284) & 0xF];
          [OUTLINED_FUNCTION_8_0() setObject:? forKeyedSubscript:?];

          v205 = 0x1E696A000uLL;
          v227 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:HIDWORD(v284) >> 4];
          [OUTLINED_FUNCTION_1_11() setObject:? forKeyedSubscript:?];

          v228 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v289 >> 5];
        }

        else
        {
          v229 = +[SFHeadphoneProduct airPodsMax];

          v230 = *(v205 + 3480);
          if (v316 == v229)
          {
            [v230 numberWithInt:BYTE4(v284) & 0x1F];
          }

          else
          {
            [v230 numberWithUnsignedChar:HIDWORD(v284)];
          }
          v228 = ;
        }

        OUTLINED_FUNCTION_17_0();

        v231 = +[SFHeadphoneProduct airPodsMax];

        if (v316 == v231)
        {
          v233 = v280 & 0x1F;
        }

        else
        {
          if (v18 != 8207)
          {
            OUTLINED_FUNCTION_25();
            if (v19 || v18 == 8206)
            {
              goto LABEL_273;
            }

            if (v18 != 8194)
            {
LABEL_274:
              v236 = [[SFHeadphoneProduct alloc] initWithProductID:v18];
              hasLid2 = [(SFHeadphoneProduct *)v236 hasLid];

LABEL_275:
              if ((v284 & 0x80u) == 0)
              {
                v237 = 1;
              }

              else
              {
                v237 = hasLid2;
              }

              if (v237)
              {
                v204 = v204;
              }

              else
              {
                v204 = v204 | 0x400;
              }

              v238 = [*(v205 + 3480) numberWithInt:v284 & 7];
              if ((v204 & 0x100) != 0)
              {
                [OUTLINED_FUNCTION_8_0() setObject:? forKeyedSubscript:?];

                advertisementFields3 = [deviceCopy advertisementFields];
                v240 = [advertisementFields3 objectForKeyedSubscript:@"locS"];

                if (v240)
                {
LABEL_285:
                  [OUTLINED_FUNCTION_8_0() setObject:? forKeyedSubscript:?];
                }
              }

              else
              {
                [OUTLINED_FUNCTION_8_0() setObject:? forKeyedSubscript:?];

                advertisementFields4 = [deviceCopy advertisementFields];
                v240 = [advertisementFields4 objectForKeyedSubscript:@"locP"];

                if (v240)
                {
                  goto LABEL_285;
                }
              }

              if ((hasLid2 & ((v284 & 8) >> 3)) != 0)
              {
                v242 = MEMORY[0x1E695E118];
              }

              else
              {
                v242 = MEMORY[0x1E695E110];
              }

              [v16 setObject:v242 forKeyedSubscript:@"lc"];
              v205 = 0x1E696A000uLL;
              v243 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v320];
              OUTLINED_FUNCTION_14_0();

              v244 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v318];
              OUTLINED_FUNCTION_14_0();

LABEL_290:
              v245 = [*(v205 + 3480) numberWithUnsignedInt:v204];
              OUTLINED_FUNCTION_14_0();

              if (v206 < 0)
              {
                v246 = [*(v205 + 3480) numberWithUnsignedInt:2048];
                OUTLINED_FUNCTION_14_0();
              }

              v247 = objc_alloc_init(MEMORY[0x1E695DF70]);
              if (!hasSplitBattery)
              {
                v248 = 0x1E7889000uLL;
                if (!v294)
                {
                  v250 = 0;
LABEL_311:
                  airPodsMax = [*(v248 + 1312) airPodsMax];

                  if (v316 == airPodsMax)
                  {
                    if ((v289 & 0x10) != 0)
                    {
                      v265 = MEMORY[0x1E695E118];
                    }

                    else
                    {
                      v265 = MEMORY[0x1E695E110];
                    }

                    [v16 setObject:v265 forKeyedSubscript:@"usbAudioConnected"];
                  }

                  OUTLINED_FUNCTION_14_0();
                  v266 = MEMORY[0x1E695E118];
                  v267 = MEMORY[0x1E695E110];
                  if ((v312 & 0x40) != 0)
                  {
                    v268 = MEMORY[0x1E695E118];
                  }

                  else
                  {
                    v268 = MEMORY[0x1E695E110];
                  }

                  [v16 setObject:v268 forKeyedSubscript:@"srConnected"];
                  v269 = [MEMORY[0x1E696AD98] numberWithInt:v300 & 0xF];
                  [OUTLINED_FUNCTION_1_11() setObject:? forKeyedSubscript:?];

                  v270 = [MEMORY[0x1E696AD98] numberWithInt:v300 >> 4];
                  [OUTLINED_FUNCTION_1_11() setObject:? forKeyedSubscript:?];

                  v271 = [MEMORY[0x1E696AD98] numberWithInt:v295 & 3];
                  [OUTLINED_FUNCTION_1_11() setObject:? forKeyedSubscript:?];

                  v272 = [MEMORY[0x1E696AD98] numberWithInt:(v295 >> 2) & 3];
                  [OUTLINED_FUNCTION_1_11() setObject:? forKeyedSubscript:?];

                  if ((v295 & 0x10) != 0)
                  {
                    v273 = v266;
                  }

                  else
                  {
                    v273 = v267;
                  }

                  [v16 setObject:v273 forKeyedSubscript:@"primaryiCloudSignIn"];

LABEL_323:
                  identifierCopy = v306;
                  goto LABEL_324;
                }

                v250 = objc_alloc_init(SFBatteryInfo);
                v255 = OUTLINED_FUNCTION_4_6();
                v256 = OUTLINED_FUNCTION_5_3(v255, 0.0001);
                [v257 setBatteryLevel:v256];
                [(SFBatteryInfo *)v250 setBatteryState:v294];
                [(SFBatteryInfo *)v250 setBatteryType:4];
LABEL_309:
                [OUTLINED_FUNCTION_12() addObject:?];
                goto LABEL_311;
              }

              v248 = 0x1E7889000;
              v249 = v294;
              if (v283)
              {
                v250 = objc_alloc_init(SFBatteryInfo);
                v251 = OUTLINED_FUNCTION_20_0();
                v252 = OUTLINED_FUNCTION_5_3(v251, 0.0001);
                [v253 setBatteryLevel:v252];
                [(SFBatteryInfo *)v250 setBatteryState:v283];
                [(SFBatteryInfo *)v250 setBatteryType:1];
                [OUTLINED_FUNCTION_12() addObject:?];
                v254 = v287;
                if (!(v294 | v287))
                {
                  LOBYTE(v204) = 0x80;
                  v254 = 2;
                  v249 = 2;
                  goto LABEL_300;
                }
              }

              else
              {
                v250 = 0;
                v254 = v287;
              }

              if (!v294)
              {
LABEL_304:
                if (!v254)
                {
                  goto LABEL_311;
                }

                v261 = objc_alloc_init(SFBatteryInfo);

                v262 = OUTLINED_FUNCTION_21_0();
                [(SFBatteryInfo *)v261 setBatteryLevel:OUTLINED_FUNCTION_5_3(v262, 0.0001)];
                [(SFBatteryInfo *)v261 setBatteryState:v254];
                if ((v204 & 0x80) != 0)
                {
                  v263 = 3;
                }

                else
                {
                  v263 = 2;
                }

                [(SFBatteryInfo *)v261 setBatteryType:v263];
                v250 = v261;
                goto LABEL_309;
              }

LABEL_300:
              v258 = objc_alloc_init(SFBatteryInfo);

              v259 = OUTLINED_FUNCTION_4_6();
              [(SFBatteryInfo *)v258 setBatteryLevel:OUTLINED_FUNCTION_5_3(v259, 0.0001)];
              [(SFBatteryInfo *)v258 setBatteryState:v249];
              if ((v204 & 0x80) != 0)
              {
                v260 = 2;
              }

              else
              {
                v260 = 3;
              }

              [(SFBatteryInfo *)v258 setBatteryType:v260];
              [v247 addObject:v258];
              v250 = v258;
              goto LABEL_304;
            }
          }

          v233 = (v284 >> 4) & 1;
        }

        v234 = [*(v205 + 3480) numberWithInt:v233];
        [OUTLINED_FUNCTION_1_11() setObject:? forKeyedSubscript:?];

        if (v18 - 8194) < 0xE && ((0x3201u >> (v18 - 2)))
        {
LABEL_273:
          hasLid2 = 1;
          goto LABEL_275;
        }

        goto LABEL_274;
      case 2:
        v50 = [OUTLINED_FUNCTION_18_0() numberWithUnsignedShort:?];
        OUTLINED_FUNCTION_14_0();

        v51 = [OUTLINED_FUNCTION_13_0() modelWithProductID:?];
        OUTLINED_FUNCTION_14_0();

        if (v15 == 7)
        {
          goto LABEL_327;
        }

        v52 = [MEMORY[0xD98] numberWithUnsignedChar:*v27];
        OUTLINED_FUNCTION_14_0();

        if (v15 < 0xE)
        {
          goto LABEL_327;
        }

        v53 = [MEMORY[0x1E695DEF0] dataWithBytes:bytes + 8 length:6];
        OUTLINED_FUNCTION_14_0();

        if (v15 < 0x11)
        {
          goto LABEL_327;
        }

        LOBYTE(v54) = *(bytes + 14);
        v55 = [MEMORY[0xD98] numberWithDouble:v54 / 10.0];
        OUTLINED_FUNCTION_14_0();

        LOBYTE(v56) = *(bytes + 15);
        v57 = [MEMORY[0xD98] numberWithDouble:v56 / 10.0];
        OUTLINED_FUNCTION_14_0();

        LOBYTE(v58) = *(bytes + 16);
        v42 = [MEMORY[0xD98] numberWithDouble:v58 / 10.0];
        goto LABEL_46;
      case 3:
        v59 = [OUTLINED_FUNCTION_18_0() numberWithUnsignedShort:?];
        OUTLINED_FUNCTION_14_0();

        v60 = [OUTLINED_FUNCTION_13_0() modelWithProductID:?];
        OUTLINED_FUNCTION_14_0();

        if (v15 == 7)
        {
          goto LABEL_327;
        }

        v61 = [MEMORY[0xD98] numberWithUnsignedChar:*v27];
        OUTLINED_FUNCTION_14_0();

        if (v15 < 0xB)
        {
          goto LABEL_327;
        }

        v62 = *(bytes + 8);
        v63 = *(bytes + 9);
        if (v62 != 255 && (v63 & 3) == 1)
        {
          v65 = objc_alloc_init(SFBatteryInfo);
          if (v62 >= 0x64)
          {
            v66 = 100;
          }

          else
          {
            v66 = v62;
          }

          v67 = OUTLINED_FUNCTION_11_0(v66);
          [v69 setBatteryLevel:v67 / v68];
          if ((v63 & 0xC0) == 0x40)
          {
            v70 = 2;
          }

          else
          {
            v70 = 1;
          }

          [(SFBatteryInfo *)v65 setBatteryState:v70];
          [(SFBatteryInfo *)v65 setBatteryType:4];
          v322[0] = v65;
          v71 = [MEMORY[0x1E695DEC8] arrayWithObjects:v322 count:1];
          [OUTLINED_FUNCTION_8_0() setObject:? forKeyedSubscript:?];
        }

        if (v15 < 0xD)
        {
          goto LABEL_327;
        }

        v42 = [MEMORY[0x1E696AD98] numberWithDouble:*(bytes + 11) / 10.0];
        goto LABEL_46;
      case 4:
        v306 = identifierCopy;
        if (v15 < 0x1B)
        {
          v26 = 0;
          goto LABEL_325;
        }

        v79 = *(bytes + 7);
        v305 = *(bytes + 8);
        v310 = *(bytes + 9);
        v80 = *(bytes + 10);
        v81 = *(bytes + 11);
        v301 = *(bytes + 12);
        v320 = *(bytes + 13);
        v321 = *(bytes + 17);
        v318 = *(bytes + 19);
        v319 = *(bytes + 23);
        v296 = *(bytes + 25);
        v291 = v79;
        v82 = [SFBLEScanner statusToHeadsetStatus:"statusToHeadsetStatus:forProductID:" forProductID:?];
        v83 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v81];
        [OUTLINED_FUNCTION_1_11() setObject:? forKeyedSubscript:?];

        v84 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v82];
        [OUTLINED_FUNCTION_1_11() setObject:? forKeyedSubscript:?];

        if ((v80 & 8) != 0)
        {
          v85 = MEMORY[0x1E695E118];
        }

        else
        {
          v85 = MEMORY[0x1E695E110];
        }

        [v16 setObject:v85 forKeyedSubscript:@"lc"];
        v86 = [MEMORY[0x1E696AD98] numberWithInt:v80 & 7];
        v87 = deviceCopy;
        v314 = v82;
        if ((v82 & 0x100) != 0)
        {
          [OUTLINED_FUNCTION_1_11() setObject:? forKeyedSubscript:?];

          advertisementFields5 = [deviceCopy advertisementFields];
          v89 = [advertisementFields5 objectForKeyedSubscript:@"locS"];

          if (!v89)
          {
            goto LABEL_81;
          }
        }

        else
        {
          [OUTLINED_FUNCTION_1_11() setObject:? forKeyedSubscript:?];

          advertisementFields6 = [deviceCopy advertisementFields];
          v89 = [advertisementFields6 objectForKeyedSubscript:@"locP"];

          if (!v89)
          {
            goto LABEL_81;
          }
        }

        [OUTLINED_FUNCTION_1_11() setObject:? forKeyedSubscript:?];
LABEL_81:

        v317 = 0;
        [(SFBLEScanner *)self parseStatus3:v80 productID:v18 caseLEDColor:&v317 + 1 caseLEDStatus:&v317];
        isAirPodsPro = [(SFHeadphoneProduct *)v316 isAirPodsPro];
        v109 = +[SFHeadphoneProduct airPods];
        if ([v109 productID] == v18)
        {
          v110 = 1;
        }

        else
        {
          +[SFHeadphoneProduct airPodsSecondGeneration];
          v112 = v111 = deviceCopy;
          v110 = [v112 productID] == v18 || isAirPodsPro;

          v87 = v111;
        }

        v113 = +[SFHeadphoneProduct airPodsMax];

        if (v316 == v113)
        {
          0x1F2 = [MEMORY[0x1E696AD98] numberWithInt:v291 & 0x1F];
        }

        else
        {
          if ((v110 & 1) == 0)
          {
            goto LABEL_166;
          }

          if (isAirPodsPro)
          {
            v114 = (v80 >> 4) & 1 | 2;
          }

          else
          {
            v114 = (v80 >> 4) & 1;
          }

          0x1F2 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v114];
        }

        [OUTLINED_FUNCTION_1_11() setObject:? forKeyedSubscript:?];

LABEL_166:
        v163 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:HIBYTE(v317)];
        [OUTLINED_FUNCTION_1_11() setObject:? forKeyedSubscript:?];

        v164 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v317];
        [OUTLINED_FUNCTION_1_11() setObject:? forKeyedSubscript:?];

        v165 = [OUTLINED_FUNCTION_13_0() modelWithProductID:?];
        [OUTLINED_FUNCTION_1_11() setObject:? forKeyedSubscript:?];

        v166 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v18];
        [OUTLINED_FUNCTION_1_11() setObject:? forKeyedSubscript:?];

        v167 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v296];
        [OUTLINED_FUNCTION_1_11() setObject:? forKeyedSubscript:?];

        v168 = [MEMORY[0x1E695DEF0] dataWithBytes:&v320 length:6];
        [OUTLINED_FUNCTION_1_11() setObject:? forKeyedSubscript:?];

        v169 = [MEMORY[0x1E695DEF0] dataWithBytes:&v318 length:6];
        [OUTLINED_FUNCTION_1_11() setObject:? forKeyedSubscript:?];

        if (v301)
        {
          [v16 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"notMyCase"];
        }

        [(SFBLEScanner *)self pairingUpdatePairedInfo:v306 fields:v16 bleDevice:v87];
        v170 = objc_alloc_init(MEMORY[0x1E695DF70]);
        if ((v310 & 0xF) == 0xF)
        {
          v171 = 0;
        }

        else
        {
          OUTLINED_FUNCTION_16_0();
          if (v174)
          {
            v172 = v173;
          }

          OUTLINED_FUNCTION_15_0(v172);
          if ((v175 & 0x40) != 0)
          {
            v171 = 2;
          }

          else
          {
            v171 = 1;
          }
        }

        v176 = v305;
        if ((v305 & 0xF) == 0xF)
        {
          v177 = 0;
        }

        else
        {
          OUTLINED_FUNCTION_16_0();
          if (v174)
          {
            v178 = v179;
          }

          OUTLINED_FUNCTION_15_0(v178);
          if ((v180 & 0x10) != 0)
          {
            v177 = 2;
          }

          else
          {
            v177 = 1;
          }
        }

        deviceCopy = v87;
        if (v176 >> 4 == 15)
        {
          v181 = 0;
        }

        else
        {
          OUTLINED_FUNCTION_16_0();
          if (v174)
          {
            v182 = v183;
          }

          OUTLINED_FUNCTION_15_0(v182);
          if ((v184 & 0x20) != 0)
          {
            v181 = 2;
          }

          else
          {
            v181 = 1;
          }
        }

        if (v171)
        {
          v185 = objc_alloc_init(SFBatteryInfo);
          v186 = OUTLINED_FUNCTION_20_0();
          v187 = OUTLINED_FUNCTION_5_3(v186, 0.0001);
          [v188 setBatteryLevel:v187];
          [(SFBatteryInfo *)v185 setBatteryState:v171];
          [(SFBatteryInfo *)v185 setBatteryType:1];
          [v170 addObject:v185];
          if (!(v181 | v177))
          {
            v314 = 0x80;
            v177 = 2;
            v181 = 2;
          }
        }

        if (v177)
        {
          v189 = objc_alloc_init(SFBatteryInfo);
          v190 = OUTLINED_FUNCTION_21_0();
          v191 = OUTLINED_FUNCTION_5_3(v190, 0.0001);
          [v192 setBatteryLevel:v191];
          [(SFBatteryInfo *)v189 setBatteryState:v177];
          if (v314 < 0)
          {
            v193 = 2;
          }

          else
          {
            v193 = 3;
          }

          [(SFBatteryInfo *)v189 setBatteryType:v193];
          [v170 addObject:v189];
        }

        if (v181)
        {
          v194 = objc_alloc_init(SFBatteryInfo);
          v195 = OUTLINED_FUNCTION_4_6();
          v196 = OUTLINED_FUNCTION_5_3(v195, 0.0001);
          [v197 setBatteryLevel:v196];
          [(SFBatteryInfo *)v194 setBatteryState:v181];
          if (v314 < 0)
          {
            v198 = 3;
          }

          else
          {
            v198 = 2;
          }

          [(SFBatteryInfo *)v194 setBatteryType:v198];
          [v170 addObject:v194];
        }

        [OUTLINED_FUNCTION_1_11() setObject:? forKeyedSubscript:?];

        goto LABEL_323;
      case 5:
      case 9:
        v308 = bytes + v15;
        v35 = [OUTLINED_FUNCTION_18_0() numberWithUnsignedShort:?];
        OUTLINED_FUNCTION_14_0();

        v36 = [OUTLINED_FUNCTION_13_0() modelWithProductID:?];
        OUTLINED_FUNCTION_14_0();

        if (v15 != 7)
        {
          v27 = (bytes + 8);
          v37 = [MEMORY[0xD98] numberWithUnsignedChar:*(bytes + 7)];
          OUTLINED_FUNCTION_14_0();
        }

        if ((v308 - v27) < 1)
        {
          goto LABEL_324;
        }

        v38 = *v27;
        v39 = [MEMORY[0xD98] numberWithInt:v38 & 3];
        OUTLINED_FUNCTION_14_0();

        v40 = [MEMORY[0xD98] numberWithInt:(v38 >> 2) & 3];
        OUTLINED_FUNCTION_14_0();

        if ((~v27 + v308) < 1)
        {
          goto LABEL_324;
        }

        v41 = [MEMORY[0xD98] numberWithUnsignedChar:v27[1]];
        OUTLINED_FUNCTION_14_0();

        if ((v308 - v27 - 2) < 18)
        {
          goto LABEL_324;
        }

        v42 = [MEMORY[0x1E695DEF0] dataWithBytes:v27 + 3 length:18];
LABEL_46:
        OUTLINED_FUNCTION_14_0();
LABEL_162:

        goto LABEL_324;
      case 6:
        v309 = bytes + v15;
        off_1EE741498();
        Int64 = CFDictionaryGetInt64();
        [(SFBLEScanner *)self pairingUpdatePairedInfo:identifierCopy fields:v16 bleDevice:deviceCopy];
        if (!Int64)
        {
          goto LABEL_324;
        }

        v73 = [OUTLINED_FUNCTION_13_0() modelWithProductID:?];
        OUTLINED_FUNCTION_14_0();

        v74 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v18];
        OUTLINED_FUNCTION_14_0();

        v75 = off_1EE741490();
        v76 = [infoCopy objectForKeyedSubscript:v75];
        [OUTLINED_FUNCTION_1_11() setObject:? forKeyedSubscript:?];

        v77 = [MEMORY[0x1E696AD98] numberWithBool:1];
        OUTLINED_FUNCTION_14_0();

        var0 = self->_ucat->var0;
        if (var0 > 20)
        {
          goto LABEL_259;
        }

        if (var0 != -1)
        {
          goto LABEL_50;
        }

        if (_LogCategory_Initialize())
        {
          ucat = self->_ucat;
LABEL_50:
          v278 = v16;
          LogPrintF();
        }

LABEL_259:
        [(SFBLEScanner *)self pairingParseAccessoryStatusPayloadPtr:v27 end:v309 fields:v16, v278];
        goto LABEL_324;
      default:
        goto LABEL_325;
    }
  }

  v316 = 0;
LABEL_327:
  v26 = 0;
LABEL_325:
  v274 = v26;

  v275 = *MEMORY[0x1E69E9840];
  return v26;
}

- (void)_recordDevice:(id)device data:(id)data rssi:(id)rssi info:(id)info
{
  recorder = self->_recorder;
  if (recorder)
  {
    v12 = 0;
    v8 = [(SFBLERecorder *)recorder recordDevice:device data:data rssi:rssi info:info error:&v12];
    v9 = v12;
    if (v8)
    {
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_2_8();
    if (v10 > 90)
    {
      goto LABEL_7;
    }

    if (v10 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_7;
      }

      ucat = self->_ucat;
    }

    LogPrintF();
LABEL_7:
  }
}

- (uint64_t)setPayloadFilterData:(void *)a1 mask:(void *)a2 .cold.1(void *a1, void *a2)
{
  [a1 length];
  [a2 length];
  v3 = FatalErrorF();
  return [SFBLEScanner _activateWithCompletion:v3];
}

- (void)_activateWithCompletion:(void *)a3 .cold.1(uint64_t a1, uint64_t a2, void *a3, __CFString **a4, int **a5)
{
  v9 = **a5;
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
      v19 = *a5;
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