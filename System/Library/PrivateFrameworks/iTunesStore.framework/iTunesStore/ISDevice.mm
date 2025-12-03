@interface ISDevice
+ (id)sharedInstance;
+ (void)setSharedInstance:(id)instance;
- (BOOL)checkCapabilities:(id)capabilities withMismatches:(id *)mismatches;
- (BOOL)releasePowerAssertion:(id)assertion;
- (BOOL)takePowerAssertion:(id)assertion;
- (ISDevice)init;
- (NSString)deviceName;
- (NSString)guid;
- (NSString)hardwareName;
- (NSString)serialNumber;
- (NSString)systemName;
- (id)copyProtocolConditionalContext;
- (id)supportedOfferDeviceForDevices:(id)devices;
- (int)_deviceClass;
- (int64_t)deviceBiometricStyle;
- (void)dealloc;
- (void)requestFreeSpace:(unint64_t)space atPath:(id)path withOptions:(id)options completionBlock:(id)block;
- (void)resetLocationAndPrivacy;
@end

@implementation ISDevice

- (ISDevice)init
{
  __ISRecordSPIClassUsage(self);
  v6.receiver = self;
  v6.super_class = ISDevice;
  v3 = [(ISDevice *)&v6 init];
  v4 = v3;
  if (v3)
  {
    v3->_biometricStyle = 0;
    v3->_dispatchQueue = dispatch_queue_create("com.apple.iTunesStore.ISDevice", 0);
    v4->_lastFreeSpaceRequest = -1.79769313e308;
  }

  return v4;
}

- (void)dealloc
{
  dispatchQueue = self->_dispatchQueue;
  if (dispatchQueue)
  {
    dispatch_sync(dispatchQueue, &__block_literal_global);
    dispatch_release(self->_dispatchQueue);
  }

  v4.receiver = self;
  v4.super_class = ISDevice;
  [(ISDevice *)&v4 dealloc];
}

+ (void)setSharedInstance:(id)instance
{
  pthread_mutex_lock(&__SharedInstanceLock);
  if (__SharedInstance != instance)
  {

    __SharedInstance = instance;
  }

  pthread_mutex_unlock(&__SharedInstanceLock);
}

+ (id)sharedInstance
{
  pthread_mutex_lock(&__SharedInstanceLock);
  v2 = __SharedInstance;
  if (!__SharedInstance)
  {
    v2 = objc_alloc_init(ISDevice);
    __SharedInstance = v2;
  }

  v3 = v2;
  pthread_mutex_unlock(&__SharedInstanceLock);
  return v3;
}

- (BOOL)checkCapabilities:(id)capabilities withMismatches:(id *)mismatches
{
  v6 = ISWeakLinkedSymbolForString("MobileInstallationCheckCapabilitiesMatch", 0x17);
  if (v6 && (v7 = v6(capabilities, 0)) != 0)
  {
    v8 = v7;
    Value = CFDictionaryGetValue(v7, @"CapabilitiesMatch");
    if (Value && CFBooleanGetValue(Value))
    {
      v10 = 0;
      v11 = 1;
    }

    else
    {
      v10 = CFDictionaryGetValue(v8, @"MismatchedCapabilities");
      v12 = v10;
      v11 = 0;
    }

    CFRelease(v8);
    if (!mismatches)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
    if (!mismatches)
    {
LABEL_10:

      return v11;
    }
  }

  *mismatches = v10;
  return v11;
}

- (id)copyProtocolConditionalContext
{
  v3 = objc_alloc_init(MEMORY[0x277D69C00]);
  [v3 setSystemVersion:{objc_msgSend(objc_msgSend(MEMORY[0x277D69A80], "currentDevice"), "productVersion")}];
  _deviceClass = [(ISDevice *)self _deviceClass];
  v5 = MEMORY[0x277D6A508];
  v6 = MEMORY[0x277D6A518];
  if (_deviceClass != 2)
  {
    v6 = MEMORY[0x277D6A510];
  }

  if (_deviceClass != 3)
  {
    v5 = v6;
  }

  [v3 setPlatformName:*v5];
  return v3;
}

- (int64_t)deviceBiometricStyle
{
  if (!self->_biometricStyle)
  {
    v3 = MGCopyAnswer();
    v4 = *MEMORY[0x277CBED28];
    if (v3 == *MEMORY[0x277CBED28])
    {
      v5 = 0;
      v6 = 3;
    }

    else
    {
      v5 = MGCopyAnswer();
      v6 = 1;
      if (v5 == v4)
      {
        v6 = 2;
      }
    }

    self->_biometricStyle = v6;
    if (v3)
    {
      CFRelease(v3);
    }

    if (v5)
    {
      CFRelease(v5);
    }
  }

  return self->_biometricStyle;
}

- (NSString)deviceName
{
  v2 = MGCopyAnswer();
  if (!v2)
  {
    return @"Unknown";
  }

  return v2;
}

- (NSString)guid
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __16__ISDevice_guid__block_invoke;
  v5[3] = &unk_27A6705F0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __16__ISDevice_guid__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  if (!v2)
  {
    *(*(a1 + 32) + 32) = [objc_msgSend(MEMORY[0x277D69B30] "sharedInstance")];
    v2 = *(*(a1 + 32) + 32);
  }

  result = v2;
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (NSString)hardwareName
{
  v2 = MGCopyAnswer();

  return v2;
}

- (BOOL)releasePowerAssertion:(id)assertion
{
  v16 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!mEMORY[0x277D69B38])
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog = [mEMORY[0x277D69B38] shouldLog];
  if ([mEMORY[0x277D69B38] shouldLogToDisk])
  {
    v6 = shouldLog | 2;
  }

  else
  {
    v6 = shouldLog;
  }

  if (!os_log_type_enabled([mEMORY[0x277D69B38] OSLogObject], OS_LOG_TYPE_DEFAULT))
  {
    v6 &= 2u;
  }

  if (v6)
  {
    v12 = 138412546;
    v13 = objc_opt_class();
    v14 = 2112;
    assertionCopy = assertion;
    LODWORD(v11) = 22;
    v7 = _os_log_send_and_compose_impl();
    if (v7)
    {
      v8 = v7;
      [MEMORY[0x277CCACA8] stringWithCString:v7 encoding:{4, &v12, v11}];
      free(v8);
      SSFileLog();
    }
  }

  result = CPSetPowerAssertionWithIdentifier();
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (NSString)serialNumber
{
  v2 = MGCopyAnswer();

  return v2;
}

- (NSString)systemName
{
  v2 = _CFCopySystemVersionDictionary();
  v3 = [v2 objectForKey:*MEMORY[0x277CBEC78]];

  return v3;
}

- (BOOL)takePowerAssertion:(id)assertion
{
  v16 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!mEMORY[0x277D69B38])
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog = [mEMORY[0x277D69B38] shouldLog];
  if ([mEMORY[0x277D69B38] shouldLogToDisk])
  {
    v6 = shouldLog | 2;
  }

  else
  {
    v6 = shouldLog;
  }

  if (!os_log_type_enabled([mEMORY[0x277D69B38] OSLogObject], OS_LOG_TYPE_DEFAULT))
  {
    v6 &= 2u;
  }

  if (v6)
  {
    v12 = 138412546;
    v13 = objc_opt_class();
    v14 = 2112;
    assertionCopy = assertion;
    LODWORD(v11) = 22;
    v7 = _os_log_send_and_compose_impl();
    if (v7)
    {
      v8 = v7;
      [MEMORY[0x277CCACA8] stringWithCString:v7 encoding:{4, &v12, v11}];
      free(v8);
      SSFileLog();
    }
  }

  result = CPSetPowerAssertionWithIdentifier();
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)requestFreeSpace:(unint64_t)space atPath:(id)path withOptions:(id)options completionBlock:(id)block
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3052000000;
  v12 = __Block_byref_object_copy_;
  v13 = __Block_byref_object_dispose_;
  v14 = 0;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__ISDevice_requestFreeSpace_atPath_withOptions_completionBlock___block_invoke;
  block[3] = &unk_27A670618;
  block[5] = self;
  block[6] = &v9;
  block[4] = options;
  dispatch_sync(dispatchQueue, block);
  v7 = v10[5];
  CPFreeSpaceRequestBytesAtPathWithCompletionBlock();

  _Block_object_dispose(&v9, 8);
}

void *__64__ISDevice_requestFreeSpace_atPath_withOptions_completionBlock___block_invoke(void *a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  v3 = Current;
  v4 = a1[4];
  if (v4)
  {
    v5 = v4;
LABEL_5:
    *(*(a1[6] + 8) + 40) = v5;
    goto LABEL_6;
  }

  if (Current - *(a1[5] + 40) < 300.0)
  {
    v6 = objc_alloc(MEMORY[0x277CBEAC0]);
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:0];
    v5 = [v6 initWithObjectsAndKeys:{v7, *MEMORY[0x277CEC5E0], 0}];
    goto LABEL_5;
  }

LABEL_6:
  result = *(*(a1[6] + 8) + 40);
  if (!result || (result = [objc_msgSend(result objectForKey:{*MEMORY[0x277CEC5E0]), "integerValue"}]) != 0)
  {
    *(a1[5] + 40) = v3;
  }

  return result;
}

- (void)resetLocationAndPrivacy
{
  mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!mEMORY[0x277D69B38])
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog = [mEMORY[0x277D69B38] shouldLog];
  if ([mEMORY[0x277D69B38] shouldLogToDisk])
  {
    v4 = shouldLog | 2;
  }

  else
  {
    v4 = shouldLog;
  }

  if (os_log_type_enabled([mEMORY[0x277D69B38] OSLogObject], OS_LOG_TYPE_INFO))
  {
    v5 = v4;
  }

  else
  {
    v5 = v4 & 2;
  }

  if (v5)
  {
    v12[0] = 0;
    LODWORD(v11) = 2;
    v10 = v12;
    v6 = _os_log_send_and_compose_impl();
    if (v6)
    {
      v7 = v6;
      v8 = [MEMORY[0x277CCACA8] stringWithCString:v6 encoding:{4, v12, v11}];
      free(v7);
      v10 = v8;
      SSFileLog();
    }
  }

  mEMORY[0x277D69CB8] = [MEMORY[0x277D69CB8] sharedStorage];
  [mEMORY[0x277D69CB8] removeCookiesWithProperties:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObject:forKey:", @"xp_ci", *MEMORY[0x277CCA240])}];
}

- (id)supportedOfferDeviceForDevices:(id)devices
{
  v19 = *MEMORY[0x277D85DE8];
  _deviceClass = [(ISDevice *)self _deviceClass];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [devices countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(devices);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        deviceIdentifier = [v9 deviceIdentifier];
        if (deviceIdentifier <= 2)
        {
          if (deviceIdentifier == 2)
          {
            if (_deviceClass == 1)
            {
              goto LABEL_23;
            }
          }

          else if (deviceIdentifier == 1)
          {
            goto LABEL_23;
          }
        }

        else if ((deviceIdentifier - 3) >= 2)
        {
          if (deviceIdentifier == 9 && _deviceClass == 3)
          {
            goto LABEL_23;
          }
        }

        else if (_deviceClass == 2)
        {
          goto LABEL_23;
        }
      }

      v6 = [devices countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v9 = 0;
LABEL_23:
  v12 = *MEMORY[0x277D85DE8];
  return v9;
}

- (int)_deviceClass
{
  v2 = MGCopyAnswer();
  integerValue = [v2 integerValue];

  return integerValue;
}

@end