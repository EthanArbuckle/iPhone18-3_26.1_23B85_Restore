@interface VOSBluetoothManager
+ (id)sharedInstance;
- (BOOL)btleDeviceIsPaired:(id)a3;
- (BOOL)isPairedDeviceBrailleDisplay:(id)a3;
- (BOOL)isValidBrailleDevice:(id)a3;
- (BOOL)unpairDevice:(id)a3;
- (NSArray)pairedBrailleDevices;
- (id)alertControllerWithVOSBluetoothResult:(unint64_t)a3 device:(id)a4 buttonHandler:(id)a5;
- (void)_removeDeviceFromBrailleCache:(id)a3;
- (void)unpairBTLEDevice:(id)a3;
@end

@implementation VOSBluetoothManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[VOSBluetoothManager sharedInstance];
  }

  if (([_bluetoothManagerSharedInstance available] & 1) == 0)
  {
    [_bluetoothManagerSharedInstance attach:&unk_283736350];
  }

  v2 = _bluetoothManagerSharedInstance;

  return v2;
}

void __37__VOSBluetoothManager_sharedInstance__block_invoke()
{
  if (!_bluetoothManagerSharedInstance)
  {
    _bluetoothManagerSharedInstance = [objc_allocWithZone(VOSBluetoothManager) init];

    MEMORY[0x2821F96F8]();
  }
}

- (BOOL)isValidBrailleDevice:(id)a3
{
  v60 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v43 = [v4 name];
  if ([v4 isNameCached])
  {
    if (!self->_brailleDriverDeviceDetectionInfo)
    {
      v5 = [MEMORY[0x277CCA8D8] brailleDriverDeviceDetectionInfo];
      brailleDriverDeviceDetectionInfo = self->_brailleDriverDeviceDetectionInfo;
      self->_brailleDriverDeviceDetectionInfo = v5;
    }

    v7 = [MEMORY[0x277CCA9C0] expressionForEvaluatedObject];
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v8 = self->_brailleDriverDeviceDetectionInfo;
    v9 = [(NSDictionary *)v8 countByEnumeratingWithState:&v48 objects:v59 count:16];
    if (v9)
    {
      v10 = v9;
      v42 = *v49;
      v39 = v4;
      v40 = v8;
      v37 = self;
      do
      {
        v11 = 0;
        v12 = MEMORY[0x277D4B848];
        v38 = v10;
        do
        {
          if (*v49 != v42)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v48 + 1) + 8 * v11);
          buf[0] = 0;
          v14 = [(NSDictionary *)self->_brailleDriverDeviceDetectionInfo objectForKey:v13];
          v15 = __UIAccessibilitySafeClass();

          if (buf[0] == 1)
          {
            abort();
          }

          v16 = [v15 objectForKey:*v12];
          if (v16)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v41 = v16;
              v17 = [v16 objectForKey:*MEMORY[0x277D4B840]];
              v44 = 0u;
              v45 = 0u;
              v46 = 0u;
              v47 = 0u;
              v18 = v17;
              v19 = [v18 countByEnumeratingWithState:&v44 objects:v58 count:16];
              if (v19)
              {
                v20 = v19;
                v21 = *v45;
                while (2)
                {
                  for (i = 0; i != v20; ++i)
                  {
                    if (*v45 != v21)
                    {
                      objc_enumerationMutation(v18);
                    }

                    v23 = [objc_allocWithZone(MEMORY[0x277CCA938]) initWithObject:*(*(&v44 + 1) + 8 * i)];
                    v24 = v7;
                    v25 = [objc_allocWithZone(MEMORY[0x277CCA918]) initWithLeftExpression:v7 rightExpression:v23 modifier:0 type:6 options:0];
                    v26 = [v25 evaluateWithObject:v43];

                    if (v26)
                    {

                      v27 = 1;
                      v4 = v39;
                      v7 = v24;
                      goto LABEL_30;
                    }

                    v7 = v24;
                  }

                  v20 = [v18 countByEnumeratingWithState:&v44 objects:v58 count:16];
                  if (v20)
                  {
                    continue;
                  }

                  break;
                }
              }

              self = v37;
              v8 = v40;
              v16 = v41;
              v10 = v38;
              v12 = MEMORY[0x277D4B848];
            }
          }

          ++v11;
        }

        while (v11 != v10);
        v10 = [(NSDictionary *)v8 countByEnumeratingWithState:&v48 objects:v59 count:16];
        v4 = v39;
      }

      while (v10);
    }

    [v4 device];
    BTDeviceGetSupportedServices();
    [v4 device];
    BTDeviceGetDeviceType();
    v27 = 0;
    v28 = AXLogBrailleHW();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = [MEMORY[0x277CCABB0] numberWithBool:0];
      v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:0];
      [MEMORY[0x277CCABB0] numberWithUnsignedInt:0];
      v32 = v31 = v7;
      *buf = 138412802;
      v53 = v29;
      v54 = 2112;
      v55 = v30;
      v56 = 2112;
      v57 = v32;
      _os_log_impl(&dword_223C70000, v28, OS_LOG_TYPE_DEFAULT, "Check service type: %@ = %@ %@", buf, 0x20u);

      v7 = v31;
    }

LABEL_30:
    v33 = AXLogBrailleHW();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = [MEMORY[0x277CCABB0] numberWithBool:v27];
      *buf = 138412546;
      v53 = v34;
      v54 = 2112;
      v55 = v43;
      _os_log_impl(&dword_223C70000, v33, OS_LOG_TYPE_DEFAULT, "Valid braille device %@ %@", buf, 0x16u);
    }
  }

  else
  {
    v7 = AXLogBrailleHW();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_223C70000, v7, OS_LOG_TYPE_DEFAULT, "Not valid braille device: no name cache", buf, 2u);
    }

    LOBYTE(v27) = 0;
  }

  v35 = *MEMORY[0x277D85DE8];
  return v27;
}

- (BOOL)isPairedDeviceBrailleDisplay:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [MEMORY[0x277CE7E20] sharedInstance];
  v5 = [v4 voiceOverBrailleDisplays];

  v6 = [v5 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    v9 = MEMORY[0x277D4B838];
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = [*(*(&v18 + 1) + 8 * i) objectForKey:*v9];
        v12 = [v3 address];
        v13 = [v11 isEqualToString:v12];

        if (v13)
        {
          v15 = 1;
          goto LABEL_13;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v24 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v5 = VOTLogBraille();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v14 = [v3 address];
    *buf = 138412290;
    v23 = v14;
    _os_log_impl(&dword_223C70000, v5, OS_LOG_TYPE_INFO, "Skipping paired device %@ because did not match paired Braille devices", buf, 0xCu);
  }

  v15 = 0;
LABEL_13:

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (void)unpairBTLEDevice:(id)a3
{
  v5.receiver = self;
  v5.super_class = VOSBluetoothManager;
  v4 = a3;
  [(AXUIBluetoothHelper *)&v5 unpairBTLEDevice:v4];
  [(VOSBluetoothManager *)self _removeDeviceFromBrailleCache:v4, v5.receiver, v5.super_class];
}

- (BOOL)unpairDevice:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = VOSBluetoothManager;
  v5 = [(AXUIBluetoothHelper *)&v7 unpairDevice:v4];
  if (v5)
  {
    [(VOSBluetoothManager *)self _removeDeviceFromBrailleCache:v4];
  }

  return v5;
}

- (NSArray)pairedBrailleDevices
{
  v3 = [(AXUIBluetoothHelper *)self pairedDevices];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __43__VOSBluetoothManager_pairedBrailleDevices__block_invoke;
  v6[3] = &unk_2784F3828;
  v6[4] = self;
  v4 = [v3 axFilterObjectsUsingBlock:v6];

  return v4;
}

- (BOOL)btleDeviceIsPaired:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = VOSBluetoothManager;
  if (-[AXUIBluetoothHelper btleDeviceIsPaired:](&v14, sel_btleDeviceIsPaired_, v4) || ([v4 address], v5 = objc_claimAutoreleasedReturnValue(), v6 = _AXSVoiceOverTouchCopyTactileGraphicsDisplay(), v7 = objc_msgSend(v5, "isEqualToString:", v6), v6, v5, (v7 & 1) != 0))
  {
    v8 = 1;
  }

  else
  {
    v9 = [MEMORY[0x277CE7E20] sharedInstance];
    v10 = [v9 voiceOverBrailleDisplays];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __42__VOSBluetoothManager_btleDeviceIsPaired___block_invoke;
    v12[3] = &unk_2784F3850;
    v13 = v4;
    v8 = [v10 ax_containsObjectUsingBlock:v12];
  }

  return v8;
}

uint64_t __42__VOSBluetoothManager_btleDeviceIsPaired___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKey:*MEMORY[0x277D4B838]];
  v4 = [*(a1 + 32) address];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

- (void)_removeDeviceFromBrailleCache:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CE6970] sharedInstance];
  v6 = [v5 ignoreLogging];

  if ((v6 & 1) == 0)
  {
    v7 = [MEMORY[0x277CE6970] identifier];
    v8 = AXLoggerForFacility();

    v9 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = AXColorizeFormatLog();
      v34 = v4;
      v11 = _AXStringForArgs();
      if (os_log_type_enabled(v8, v9))
      {
        *buf = 138543362;
        v42 = v11;
        _os_log_impl(&dword_223C70000, v8, v9, "%{public}@", buf, 0xCu);
      }
    }
  }

  v12 = [MEMORY[0x277CE7E20] sharedInstance];
  v13 = [v12 voiceOverBrailleDisplays];
  v14 = [v13 mutableCopy];

  v36 = MEMORY[0x277D85DD0];
  v37 = 3221225472;
  v38 = __53__VOSBluetoothManager__removeDeviceFromBrailleCache___block_invoke;
  v39 = &unk_2784F3878;
  v15 = v4;
  v40 = v15;
  [v14 ax_removeObjectsFromArrayUsingBlock:&v36];
  v16 = [MEMORY[0x277CE6970] sharedInstance];
  LOBYTE(v13) = [v16 ignoreLogging];

  if ((v13 & 1) == 0)
  {
    v17 = [MEMORY[0x277CE6970] identifier];
    v18 = AXLoggerForFacility();

    v19 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = AXColorizeFormatLog();
      v35 = v14;
      v21 = _AXStringForArgs();
      if (os_log_type_enabled(v18, v19))
      {
        *buf = 138543362;
        v42 = v21;
        _os_log_impl(&dword_223C70000, v18, v19, "%{public}@", buf, 0xCu);
      }
    }
  }

  v22 = [MEMORY[0x277CE7E20] sharedInstance];
  [v22 setVoiceOverBrailleDisplays:v14];

  v23 = [v15 address];
  v24 = _AXSVoiceOverTouchCopyTactileGraphicsDisplay();
  v25 = [v23 isEqualToString:v24];

  if (v25)
  {
    _AXSVoiceOverTouchSetTactileGraphicsDisplay();
    v26 = [MEMORY[0x277CE6970] sharedInstance];
    v27 = [v26 ignoreLogging];

    if ((v27 & 1) == 0)
    {
      v28 = [MEMORY[0x277CE6970] identifier];
      v29 = AXLoggerForFacility();

      v30 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = AXColorizeFormatLog();
        v32 = _AXStringForArgs();
        if (os_log_type_enabled(v29, v30))
        {
          *buf = 138543362;
          v42 = v32;
          _os_log_impl(&dword_223C70000, v29, v30, "%{public}@", buf, 0xCu);
        }
      }
    }
  }

  [(AXUIBluetoothHelper *)self postNotificationName:*MEMORY[0x277CE7EC0] object:v15];

  v33 = *MEMORY[0x277D85DE8];
}

uint64_t __53__VOSBluetoothManager__removeDeviceFromBrailleCache___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKey:*MEMORY[0x277D4B838]];
  v4 = [*(a1 + 32) address];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

- (id)alertControllerWithVOSBluetoothResult:(unint64_t)a3 device:(id)a4 buttonHandler:(id)a5
{
  v7 = a4;
  v8 = a5;
  if (*MEMORY[0x277CE7EB8] == a3)
  {
    v9 = MEMORY[0x277CCACA8];
    v10 = VOSLocString(@"ERROR_UNSUPPORTED_DEVICE");
    v11 = [v7 name];
    v12 = [v9 stringWithFormat:v10, v11];

    if ([v7 paired])
    {
      v13 = @"FORGET_DEVICE";
    }

    else
    {
      v13 = @"OK";
    }

    goto LABEL_17;
  }

  if (*MEMORY[0x277CE7EB0] == a3)
  {
    v14 = MEMORY[0x277CCACA8];
    v15 = @"ERROR_INCORRECT_PIN";
  }

  else if (*MEMORY[0x277CE7EA0] == a3)
  {
    v14 = MEMORY[0x277CCACA8];
    v15 = @"LOADING_FAILURE";
  }

  else
  {
    if (*MEMORY[0x277CE7EA8] == a3)
    {
      if ([v7 paired])
      {
        v16 = 0;
        v12 = 0;
        goto LABEL_18;
      }

      v30 = MEMORY[0x277CCACA8];
      v17 = VOSLocString(@"ERROR_PAIRING_TIMEOUT");
      v31 = MEMORY[0x277CCACA8];
      v32 = VOSLocString(@"ERROR_GEN_PAIRING_FAILURE");
      v33 = [v7 name];
      v34 = [v31 stringWithFormat:v32, v33];
      v12 = [v30 stringWithFormat:@"%@ %@", v17, v34];

      goto LABEL_16;
    }

    v14 = MEMORY[0x277CCACA8];
    if ([v7 paired])
    {
      v15 = @"ERROR_GEN_CONNECTION_FAILURE";
    }

    else
    {
      v15 = @"ERROR_GEN_PAIRING_FAILURE";
    }
  }

  v17 = VOSLocString(v15);
  v18 = [v7 name];
  v12 = [v14 stringWithFormat:v17, v18];

LABEL_16:
  v13 = @"OK";
LABEL_17:
  v16 = VOSLocString(v13);
LABEL_18:
  v43 = 0;
  v44 = &v43;
  v45 = 0x2050000000;
  v19 = getUIAlertControllerClass_softClass;
  v46 = getUIAlertControllerClass_softClass;
  if (!getUIAlertControllerClass_softClass)
  {
    v38 = MEMORY[0x277D85DD0];
    v39 = 3221225472;
    v40 = __getUIAlertControllerClass_block_invoke;
    v41 = &unk_2784F3710;
    v42 = &v43;
    __getUIAlertControllerClass_block_invoke(&v38);
    v19 = v44[3];
  }

  v20 = v19;
  _Block_object_dispose(&v43, 8);
  if ([v7 paired])
  {
    v21 = @"CONNECTION_FAILED_TITLE";
  }

  else
  {
    v21 = @"PAIRING_FAILED_TITLE";
  }

  v22 = VOSLocString(v21);
  v23 = [v19 alertControllerWithTitle:v22 message:v12 preferredStyle:1];

  v43 = 0;
  v44 = &v43;
  v45 = 0x2050000000;
  v24 = getUIAlertActionClass_softClass;
  v46 = getUIAlertActionClass_softClass;
  if (!getUIAlertActionClass_softClass)
  {
    v38 = MEMORY[0x277D85DD0];
    v39 = 3221225472;
    v40 = __getUIAlertActionClass_block_invoke;
    v41 = &unk_2784F3710;
    v42 = &v43;
    __getUIAlertActionClass_block_invoke(&v38);
    v24 = v44[3];
  }

  v25 = v24;
  _Block_object_dispose(&v43, 8);
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __82__VOSBluetoothManager_alertControllerWithVOSBluetoothResult_device_buttonHandler___block_invoke;
  v35[3] = &unk_2784F38A0;
  v36 = v7;
  v37 = v8;
  v26 = v8;
  v27 = v7;
  v28 = [v24 actionWithTitle:v16 style:0 handler:v35];
  [v23 addAction:v28];

  return v23;
}

uint64_t __82__VOSBluetoothManager_alertControllerWithVOSBluetoothResult_device_buttonHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 title];
  v4 = VOSLocString(@"FORGET_DEVICE");
  v5 = [v3 isEqualToString:v4];

  if (v5)
  {
    [*(a1 + 32) unpair];
  }

  result = *(a1 + 40);
  if (result)
  {
    v7 = *(result + 16);

    return v7();
  }

  return result;
}

@end