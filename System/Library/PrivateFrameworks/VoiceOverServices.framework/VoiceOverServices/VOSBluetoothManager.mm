@interface VOSBluetoothManager
+ (id)sharedInstance;
- (BOOL)btleDeviceIsPaired:(id)paired;
- (BOOL)isPairedDeviceBrailleDisplay:(id)display;
- (BOOL)isValidBrailleDevice:(id)device;
- (BOOL)unpairDevice:(id)device;
- (NSArray)pairedBrailleDevices;
- (id)alertControllerWithVOSBluetoothResult:(unint64_t)result device:(id)device buttonHandler:(id)handler;
- (void)_removeDeviceFromBrailleCache:(id)cache;
- (void)unpairBTLEDevice:(id)device;
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

- (BOOL)isValidBrailleDevice:(id)device
{
  v60 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  name = [deviceCopy name];
  if ([deviceCopy isNameCached])
  {
    if (!self->_brailleDriverDeviceDetectionInfo)
    {
      brailleDriverDeviceDetectionInfo = [MEMORY[0x277CCA8D8] brailleDriverDeviceDetectionInfo];
      brailleDriverDeviceDetectionInfo = self->_brailleDriverDeviceDetectionInfo;
      self->_brailleDriverDeviceDetectionInfo = brailleDriverDeviceDetectionInfo;
    }

    expressionForEvaluatedObject = [MEMORY[0x277CCA9C0] expressionForEvaluatedObject];
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
      v39 = deviceCopy;
      v40 = v8;
      selfCopy = self;
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
                    v24 = expressionForEvaluatedObject;
                    v25 = [objc_allocWithZone(MEMORY[0x277CCA918]) initWithLeftExpression:expressionForEvaluatedObject rightExpression:v23 modifier:0 type:6 options:0];
                    v26 = [v25 evaluateWithObject:name];

                    if (v26)
                    {

                      v27 = 1;
                      deviceCopy = v39;
                      expressionForEvaluatedObject = v24;
                      goto LABEL_30;
                    }

                    expressionForEvaluatedObject = v24;
                  }

                  v20 = [v18 countByEnumeratingWithState:&v44 objects:v58 count:16];
                  if (v20)
                  {
                    continue;
                  }

                  break;
                }
              }

              self = selfCopy;
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
        deviceCopy = v39;
      }

      while (v10);
    }

    [deviceCopy device];
    BTDeviceGetSupportedServices();
    [deviceCopy device];
    BTDeviceGetDeviceType();
    v27 = 0;
    v28 = AXLogBrailleHW();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = [MEMORY[0x277CCABB0] numberWithBool:0];
      v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:0];
      [MEMORY[0x277CCABB0] numberWithUnsignedInt:0];
      v32 = v31 = expressionForEvaluatedObject;
      *buf = 138412802;
      v53 = v29;
      v54 = 2112;
      v55 = v30;
      v56 = 2112;
      v57 = v32;
      _os_log_impl(&dword_223C70000, v28, OS_LOG_TYPE_DEFAULT, "Check service type: %@ = %@ %@", buf, 0x20u);

      expressionForEvaluatedObject = v31;
    }

LABEL_30:
    v33 = AXLogBrailleHW();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = [MEMORY[0x277CCABB0] numberWithBool:v27];
      *buf = 138412546;
      v53 = v34;
      v54 = 2112;
      v55 = name;
      _os_log_impl(&dword_223C70000, v33, OS_LOG_TYPE_DEFAULT, "Valid braille device %@ %@", buf, 0x16u);
    }
  }

  else
  {
    expressionForEvaluatedObject = AXLogBrailleHW();
    if (os_log_type_enabled(expressionForEvaluatedObject, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_223C70000, expressionForEvaluatedObject, OS_LOG_TYPE_DEFAULT, "Not valid braille device: no name cache", buf, 2u);
    }

    LOBYTE(v27) = 0;
  }

  v35 = *MEMORY[0x277D85DE8];
  return v27;
}

- (BOOL)isPairedDeviceBrailleDisplay:(id)display
{
  v25 = *MEMORY[0x277D85DE8];
  displayCopy = display;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  mEMORY[0x277CE7E20] = [MEMORY[0x277CE7E20] sharedInstance];
  voiceOverBrailleDisplays = [mEMORY[0x277CE7E20] voiceOverBrailleDisplays];

  v6 = [voiceOverBrailleDisplays countByEnumeratingWithState:&v18 objects:v24 count:16];
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
          objc_enumerationMutation(voiceOverBrailleDisplays);
        }

        v11 = [*(*(&v18 + 1) + 8 * i) objectForKey:*v9];
        address = [displayCopy address];
        v13 = [v11 isEqualToString:address];

        if (v13)
        {
          v15 = 1;
          goto LABEL_13;
        }
      }

      v7 = [voiceOverBrailleDisplays countByEnumeratingWithState:&v18 objects:v24 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  voiceOverBrailleDisplays = VOTLogBraille();
  if (os_log_type_enabled(voiceOverBrailleDisplays, OS_LOG_TYPE_INFO))
  {
    address2 = [displayCopy address];
    *buf = 138412290;
    v23 = address2;
    _os_log_impl(&dword_223C70000, voiceOverBrailleDisplays, OS_LOG_TYPE_INFO, "Skipping paired device %@ because did not match paired Braille devices", buf, 0xCu);
  }

  v15 = 0;
LABEL_13:

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (void)unpairBTLEDevice:(id)device
{
  v5.receiver = self;
  v5.super_class = VOSBluetoothManager;
  deviceCopy = device;
  [(AXUIBluetoothHelper *)&v5 unpairBTLEDevice:deviceCopy];
  [(VOSBluetoothManager *)self _removeDeviceFromBrailleCache:deviceCopy, v5.receiver, v5.super_class];
}

- (BOOL)unpairDevice:(id)device
{
  deviceCopy = device;
  v7.receiver = self;
  v7.super_class = VOSBluetoothManager;
  v5 = [(AXUIBluetoothHelper *)&v7 unpairDevice:deviceCopy];
  if (v5)
  {
    [(VOSBluetoothManager *)self _removeDeviceFromBrailleCache:deviceCopy];
  }

  return v5;
}

- (NSArray)pairedBrailleDevices
{
  pairedDevices = [(AXUIBluetoothHelper *)self pairedDevices];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __43__VOSBluetoothManager_pairedBrailleDevices__block_invoke;
  v6[3] = &unk_2784F3828;
  v6[4] = self;
  v4 = [pairedDevices axFilterObjectsUsingBlock:v6];

  return v4;
}

- (BOOL)btleDeviceIsPaired:(id)paired
{
  pairedCopy = paired;
  v14.receiver = self;
  v14.super_class = VOSBluetoothManager;
  if (-[AXUIBluetoothHelper btleDeviceIsPaired:](&v14, sel_btleDeviceIsPaired_, pairedCopy) || ([pairedCopy address], v5 = objc_claimAutoreleasedReturnValue(), v6 = _AXSVoiceOverTouchCopyTactileGraphicsDisplay(), v7 = objc_msgSend(v5, "isEqualToString:", v6), v6, v5, (v7 & 1) != 0))
  {
    v8 = 1;
  }

  else
  {
    mEMORY[0x277CE7E20] = [MEMORY[0x277CE7E20] sharedInstance];
    voiceOverBrailleDisplays = [mEMORY[0x277CE7E20] voiceOverBrailleDisplays];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __42__VOSBluetoothManager_btleDeviceIsPaired___block_invoke;
    v12[3] = &unk_2784F3850;
    v13 = pairedCopy;
    v8 = [voiceOverBrailleDisplays ax_containsObjectUsingBlock:v12];
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

- (void)_removeDeviceFromBrailleCache:(id)cache
{
  v43 = *MEMORY[0x277D85DE8];
  cacheCopy = cache;
  mEMORY[0x277CE6970] = [MEMORY[0x277CE6970] sharedInstance];
  ignoreLogging = [mEMORY[0x277CE6970] ignoreLogging];

  if ((ignoreLogging & 1) == 0)
  {
    identifier = [MEMORY[0x277CE6970] identifier];
    v8 = AXLoggerForFacility();

    v9 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = AXColorizeFormatLog();
      v34 = cacheCopy;
      v11 = _AXStringForArgs();
      if (os_log_type_enabled(v8, v9))
      {
        *buf = 138543362;
        v42 = v11;
        _os_log_impl(&dword_223C70000, v8, v9, "%{public}@", buf, 0xCu);
      }
    }
  }

  mEMORY[0x277CE7E20] = [MEMORY[0x277CE7E20] sharedInstance];
  voiceOverBrailleDisplays = [mEMORY[0x277CE7E20] voiceOverBrailleDisplays];
  v14 = [voiceOverBrailleDisplays mutableCopy];

  v36 = MEMORY[0x277D85DD0];
  v37 = 3221225472;
  v38 = __53__VOSBluetoothManager__removeDeviceFromBrailleCache___block_invoke;
  v39 = &unk_2784F3878;
  v15 = cacheCopy;
  v40 = v15;
  [v14 ax_removeObjectsFromArrayUsingBlock:&v36];
  mEMORY[0x277CE6970]2 = [MEMORY[0x277CE6970] sharedInstance];
  LOBYTE(voiceOverBrailleDisplays) = [mEMORY[0x277CE6970]2 ignoreLogging];

  if ((voiceOverBrailleDisplays & 1) == 0)
  {
    identifier2 = [MEMORY[0x277CE6970] identifier];
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

  mEMORY[0x277CE7E20]2 = [MEMORY[0x277CE7E20] sharedInstance];
  [mEMORY[0x277CE7E20]2 setVoiceOverBrailleDisplays:v14];

  address = [v15 address];
  v24 = _AXSVoiceOverTouchCopyTactileGraphicsDisplay();
  v25 = [address isEqualToString:v24];

  if (v25)
  {
    _AXSVoiceOverTouchSetTactileGraphicsDisplay();
    mEMORY[0x277CE6970]3 = [MEMORY[0x277CE6970] sharedInstance];
    ignoreLogging2 = [mEMORY[0x277CE6970]3 ignoreLogging];

    if ((ignoreLogging2 & 1) == 0)
    {
      identifier3 = [MEMORY[0x277CE6970] identifier];
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

- (id)alertControllerWithVOSBluetoothResult:(unint64_t)result device:(id)device buttonHandler:(id)handler
{
  deviceCopy = device;
  handlerCopy = handler;
  if (*MEMORY[0x277CE7EB8] == result)
  {
    v9 = MEMORY[0x277CCACA8];
    v10 = VOSLocString(@"ERROR_UNSUPPORTED_DEVICE");
    name = [deviceCopy name];
    v12 = [v9 stringWithFormat:v10, name];

    if ([deviceCopy paired])
    {
      v13 = @"FORGET_DEVICE";
    }

    else
    {
      v13 = @"OK";
    }

    goto LABEL_17;
  }

  if (*MEMORY[0x277CE7EB0] == result)
  {
    v14 = MEMORY[0x277CCACA8];
    v15 = @"ERROR_INCORRECT_PIN";
  }

  else if (*MEMORY[0x277CE7EA0] == result)
  {
    v14 = MEMORY[0x277CCACA8];
    v15 = @"LOADING_FAILURE";
  }

  else
  {
    if (*MEMORY[0x277CE7EA8] == result)
    {
      if ([deviceCopy paired])
      {
        v16 = 0;
        v12 = 0;
        goto LABEL_18;
      }

      v30 = MEMORY[0x277CCACA8];
      v17 = VOSLocString(@"ERROR_PAIRING_TIMEOUT");
      v31 = MEMORY[0x277CCACA8];
      v32 = VOSLocString(@"ERROR_GEN_PAIRING_FAILURE");
      name2 = [deviceCopy name];
      v34 = [v31 stringWithFormat:v32, name2];
      v12 = [v30 stringWithFormat:@"%@ %@", v17, v34];

      goto LABEL_16;
    }

    v14 = MEMORY[0x277CCACA8];
    if ([deviceCopy paired])
    {
      v15 = @"ERROR_GEN_CONNECTION_FAILURE";
    }

    else
    {
      v15 = @"ERROR_GEN_PAIRING_FAILURE";
    }
  }

  v17 = VOSLocString(v15);
  name3 = [deviceCopy name];
  v12 = [v14 stringWithFormat:v17, name3];

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
  if ([deviceCopy paired])
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
  v36 = deviceCopy;
  v37 = handlerCopy;
  v26 = handlerCopy;
  v27 = deviceCopy;
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