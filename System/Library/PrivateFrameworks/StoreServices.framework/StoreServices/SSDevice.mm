@interface SSDevice
+ (BOOL)promptNeedsDisplay:(id)a3;
+ (BOOL)setCachedAvailableItemKinds:(id)a3;
+ (id)copyCachedAvailableItemKinds;
+ (id)currentDevice;
+ (void)setLastPromptAttemptDate:(id)a3 forPromptWithIdentifier:(id)a4;
+ (void)setPromptWithIdentifier:(id)a3 needsDisplay:(BOOL)a4;
- (BOOL)_getDeviceType:(unsigned int *)a3 error:(id *)a4;
- (BOOL)_is1080pCapable;
- (BOOL)_is720pCapable;
- (BOOL)getMachineIdentifier:(id *)a3 otp:(id *)a4 forAccountIdentifier:(id)a5;
- (BOOL)isPluggedIn;
- (BOOL)supportsDeviceCapability:(int64_t)a3;
- (NSSet)automaticDownloadKinds;
- (NSString)clientName;
- (NSString)clientVersion;
- (NSString)cloudMediaLibraryIdentifier;
- (NSString)compatibleProductType;
- (NSString)legacyUserAgent;
- (NSString)mediaLibraryIdentifier;
- (NSString)phoneNumber;
- (NSString)productType;
- (NSString)productVersion;
- (NSString)serialNumber;
- (NSString)softwareLibraryIdentifier;
- (NSString)storeFrontIdentifier;
- (NSString)thinnedApplicationVariantIdentifier;
- (NSString)uniqueDeviceIdentifier;
- (NSString)userAgent;
- (SSDevice)init;
- (SSPromise)storeFrontIdentifierPromise;
- (double)batteryLevel;
- (id)_appleTVProductVersion;
- (id)_copyCarrierBundleEligibilityWithStatus:(id)a3;
- (id)_copyKeyValueStoreValueForDomain:(id)a3 key:(id)a4;
- (id)_diskCapacityString;
- (id)_fairPlayDeviceTypeString;
- (id)_newLegacyUserAgent:(BOOL *)a3;
- (id)_newModernUserAgentWithClientName:(id)a3 version:(id)a4 isCachable:(BOOL *)a5;
- (id)_productVersion;
- (id)_userAgentClientNameForAppleTVBundleID:(id)a3;
- (id)_userAgentClientNameForBundleID:(id)a3;
- (id)_userAgentClientNameForInfoPlist:(id)a3;
- (id)_userAgentClientVersionForInfoPlist:(id)a3 clientName:(id)a4;
- (id)carrierBundleStatusForService:(int64_t)a3;
- (id)copyStoreFrontRequestHeaders;
- (id)userAgentWithBundleIdentifier:(id)a3 version:(id)a4;
- (id)userAgentWithBundleRef:(__CFBundle *)a3 isCachable:(BOOL *)a4;
- (id)userAgentWithClientName:(id)a3 version:(id)a4;
- (int)_deviceClass;
- (int)_screenClass;
- (int64_t)_deviceType;
- (int64_t)_deviceTypeForProductType:(id)a3;
- (int64_t)_deviceTypeForUnknownAppleTV:(id)a3;
- (int64_t)_deviceTypeForUnknownIPad:(id)a3;
- (int64_t)_deviceTypeForUnknownIPhone:(id)a3;
- (int64_t)_deviceTypeForUnknownIPod:(id)a3;
- (int64_t)deviceBiometricStyle;
- (int64_t)deviceType;
- (unsigned)deviceTypeIdentifier;
- (void)_cacheKeyValueStoreValues;
- (void)_invalidateAutomaticDownloadKinds;
- (void)_invalidatePhoneNumber;
- (void)_invalidateSoftwareCUID;
- (void)_postStoreFrontDidChangeNotification;
- (void)_reloadPluggedInState;
- (void)_updateAutomaticDownloadKinds:(id)a3 withValue:(id)a4 completionBlock:(id)a5;
- (void)_updateBatteryLevelFromService:(unsigned int)a3;
- (void)dealloc;
- (void)enableAllAutomaticDownloadKindsWithCompletionBlock:(id)a3;
- (void)getAvailableItemKindsWithBlock:(id)a3;
- (void)getCarrierBundleStatusForService:(int64_t)a3 completionHandler:(id)a4;
- (void)getCellularNetworkingAllowedWithBlock:(id)a3;
- (void)loadStoreFrontWithCompletionHandler:(id)a3;
- (void)minusAutomaticDownloadKinds:(id)a3 withCompletionBlock:(id)a4;
- (void)sdk_loadStoreFrontIdentifier:(id)a3;
- (void)sdk_loadStorefrontCountryCode:(id)a3;
- (void)setAutomaticDownloadKinds:(id)a3 withCompletionBlock:(id)a4;
- (void)setCellularNetworkingAllowed:(BOOL)a3;
- (void)setCloudMediaLibraryIdentifier:(id)a3;
- (void)setMediaLibraryIdentifier:(id)a3;
- (void)setSoftwareLibraryIdentifier:(id)a3;
- (void)setStoreFrontIdentifier:(id)a3;
- (void)setStoreFrontIdentifier:(id)a3 accountIdentifier:(id)a4;
- (void)setStoreFrontIdentifier:(id)a3 forRequest:(id)a4 response:(id)a5 account:(id)a6;
- (void)setStoreFrontWithResponseHeaders:(id)a3;
- (void)showPromptWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)startPowerMonitoring;
- (void)stopPowerMonitoring;
- (void)synchronizeAutomaticDownloadKinds;
- (void)unionAutomaticDownloadKinds:(id)a3 withCompletionBlock:(id)a4;
@end

@implementation SSDevice

SSDevice *__25__SSDevice_currentDevice__block_invoke()
{
  result = objc_alloc_init(SSDevice);
  currentDevice_sCurrentDevice = result;
  return result;
}

- (SSDevice)init
{
  v6.receiver = self;
  v6.super_class = SSDevice;
  v2 = [(SSDevice *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_biometricStyle = 0;
    v2->_dispatchQueue = dispatch_queue_create("com.apple.storeservices.SSDevice", 0);
    v3->_keyValueStore = objc_alloc_init(SSKeyValueStore);
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v3, __SoftwareCUIDChangedNotification, @"com.apple.StoreServices.SoftwareCUIDChanged", 0, CFNotificationSuspensionBehaviorCoalesce);
    if ((SSIsDaemon() & 1) == 0)
    {
      CFNotificationCenterAddObserver(DarwinNotifyCenter, v3, __AutoDownloadsChangedNotification, @"com.apple.itunesstored.autodownloadschanged", 0, CFNotificationSuspensionBehaviorCoalesce);
      CFNotificationCenterAddObserver(DarwinNotifyCenter, v3, __CellularNetworkingChangedNotification, @"com.apple.itunesstored.autodownloaddefaultschange", 0, CFNotificationSuspensionBehaviorCoalesce);
      CFNotificationCenterAddObserver(DarwinNotifyCenter, v3, __StoreFrontChangedNotification, @"com.apple.StoreServices.StorefrontChanged", 0, CFNotificationSuspensionBehaviorCoalesce);
    }
  }

  return v3;
}

+ (id)currentDevice
{
  if (currentDevice_sInstanceGuard != -1)
  {
    +[SSDevice currentDevice];
  }

  return currentDevice_sCurrentDevice;
}

id __26__SSDevice_productVersion__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _productVersion];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (id)_productVersion
{
  result = self->_productVersion;
  if (!result)
  {
    v4 = _CFCopySystemVersionDictionary();
    self->_productVersion = [v4 objectForKey:*MEMORY[0x1E695E208]];

    return self->_productVersion;
  }

  return result;
}

- (NSString)productVersion
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__22;
  v10 = __Block_byref_object_dispose__22;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __26__SSDevice_productVersion__block_invoke;
  v5[3] = &unk_1E84AC698;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (NSString)storeFrontIdentifier
{
  v2 = [(SSDevice *)self storeFrontIdentifierPromise];

  return [(SSPromise *)v2 resultWithError:0];
}

- (SSPromise)storeFrontIdentifierPromise
{
  v2 = [+[SSAccountStore defaultStore](SSAccountStore "defaultStore")];

  return [v2 thenWithBlock:&__block_literal_global_92];
}

SSPromise *__39__SSDevice_storeFrontIdentifierPromise__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 storeFrontIdentifier];
  if (v2)
  {

    return [SSPromise promiseWithResult:v2];
  }

  else
  {
    v4 = SSError(@"SSErrorDomain", 106, @"Missing Storefront Identifier", @"The local account doesn't have a storefront identifier.");

    return [SSPromise promiseWithError:v4];
  }
}

- (int64_t)_deviceType
{
  if (self->_productType)
  {
    return self->_deviceType;
  }

  v4 = [(SSDevice *)self _copyProductType];
  self->_productType = v4;
  result = [(SSDevice *)self _deviceTypeForProductType:v4];
  self->_deviceType = result;
  return result;
}

- (id)_fairPlayDeviceTypeString
{
  v4 = 0;
  v2 = [(SSDevice *)self _getDeviceType:&v4 error:0];
  result = 0;
  if (v2)
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"dt:%lu", v4];
  }

  return result;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.itunesstored.autodownloadschanged", 0);
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.itunesstored.autodownloaddefaultschange", 0);
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.StoreServices.SoftwareCUIDChanged", 0);
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.StoreServices.StorefrontChanged", 0);
  notify_cancel(self->_pluggedInToken);
  batteryMonitorPort = self->_batteryMonitorPort;
  if (batteryMonitorPort)
  {
    IONotificationPortDestroy(batteryMonitorPort);
    self->_batteryMonitorPort = 0;
  }

  batteryMonitorNotification = self->_batteryMonitorNotification;
  if (batteryMonitorNotification)
  {
    IOObjectRelease(batteryMonitorNotification);
    self->_batteryMonitorNotification = 0;
  }

  dispatch_release(self->_dispatchQueue);

  v6.receiver = self;
  v6.super_class = SSDevice;
  [(SSDevice *)&v6 dealloc];
}

- (NSString)clientVersion
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__22;
  v10 = __Block_byref_object_dispose__22;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __25__SSDevice_clientVersion__block_invoke;
  v5[3] = &unk_1E84AF0E0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  if ([v7[5] length])
  {
    v3 = v7[5];
  }

  else
  {
    v3 = @"1.0";
    v7[5] = @"1.0";
  }

  _Block_object_dispose(&v6, 8);
  return &v3->isa;
}

uint64_t __25__SSDevice_clientVersion__block_invoke(uint64_t a1)
{
  MainBundle = CFBundleGetMainBundle();
  InfoDictionary = CFBundleGetInfoDictionary(MainBundle);
  result = [*(a1 + 32) _userAgentClientVersionForInfoPlist:InfoDictionary clientName:{objc_msgSend(*(a1 + 32), "_userAgentClientNameForInfoPlist:", InfoDictionary)}];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (NSString)clientName
{
  result = self->_clientName;
  if (!result)
  {
    v6 = 0;
    v7 = &v6;
    v8 = 0x3052000000;
    v9 = __Block_byref_object_copy__22;
    v10 = __Block_byref_object_dispose__22;
    v11 = 0;
    dispatchQueue = self->_dispatchQueue;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __22__SSDevice_clientName__block_invoke;
    v5[3] = &unk_1E84AC698;
    v5[4] = self;
    v5[5] = &v6;
    dispatch_sync(dispatchQueue, v5);
    self->_clientName = [v7[5] copy];
    _Block_object_dispose(&v6, 8);
    return self->_clientName;
  }

  return result;
}

uint64_t __22__SSDevice_clientName__block_invoke(uint64_t a1)
{
  MainBundle = CFBundleGetMainBundle();
  result = [*(a1 + 32) _userAgentClientNameForInfoPlist:CFBundleGetInfoDictionary(MainBundle)];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (NSSet)automaticDownloadKinds
{
  v26 = *MEMORY[0x1E69E9840];
  if (MGGetBoolAnswer() && _os_feature_enabled_impl())
  {
    v3 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v3)
    {
      v3 = +[SSLogConfig sharedConfig];
    }

    v4 = [v3 shouldLog];
    if ([v3 shouldLogToDisk])
    {
      v5 = v4 | 2;
    }

    else
    {
      v5 = v4;
    }

    if (os_log_type_enabled([v3 OSLogObject], OS_LOG_TYPE_DEBUG))
    {
      v6 = v5;
    }

    else
    {
      v6 = v5 & 2;
    }

    if (v6)
    {
      LODWORD(v21) = 136446210;
      *(&v21 + 4) = "[SSDevice automaticDownloadKinds]";
      LODWORD(v19) = 12;
      v7 = _os_log_send_and_compose_impl();
      if (v7)
      {
        v8 = v7;
        v9 = [MEMORY[0x1E696AEC0] stringWithCString:v7 encoding:{4, &v21, v19}];
        free(v8);
        SSFileLog(v3, @"%@", v10, v11, v12, v13, v14, v15, v9);
      }
    }
  }

  *&v21 = 0;
  *(&v21 + 1) = &v21;
  v22 = 0x3052000000;
  v23 = __Block_byref_object_copy__22;
  v24 = __Block_byref_object_dispose__22;
  v25 = 0;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__SSDevice_automaticDownloadKinds__block_invoke;
  block[3] = &unk_1E84AF0E0;
  block[4] = self;
  block[5] = &v21;
  dispatch_sync(dispatchQueue, block);
  v17 = *(*(&v21 + 1) + 40);
  _Block_object_dispose(&v21, 8);
  return v17;
}

uint64_t __34__SSDevice_automaticDownloadKinds__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  if (!v2)
  {
    v3 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v3, "0", 74);
    v4 = [[SSXPCConnection alloc] initWithServiceName:@"com.apple.itunesstored.xpc"];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __34__SSDevice_automaticDownloadKinds__block_invoke_2;
    v6[3] = &unk_1E84AF2C8;
    v6[4] = *(a1 + 32);
    [(SSXPCConnection *)v4 sendSynchronousMessage:v3 withReply:v6];

    xpc_release(v3);
    v2 = *(*(a1 + 32) + 16);
  }

  result = [v2 copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

void __34__SSDevice_automaticDownloadKinds__block_invoke_2(uint64_t a1, void *a2)
{
  if (a2 && MEMORY[0x1DA6E0380](a2) == MEMORY[0x1E69E9E80])
  {
    objc_opt_class();
    v4 = SSXPCDictionaryCopyCFObjectWithClass(a2, "0");
    v5 = v4;
    if (v4)
    {
      v6 = v4;
      v4 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v4];
      v5 = v6;
    }

    *(*(a1 + 32) + 16) = v4;
  }
}

- (NSString)cloudMediaLibraryIdentifier
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__22;
  v10 = __Block_byref_object_dispose__22;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__SSDevice_cloudMediaLibraryIdentifier__block_invoke;
  v5[3] = &unk_1E84AF0E0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __39__SSDevice_cloudMediaLibraryIdentifier__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[4];
  if (!v3)
  {
    [v2 _cacheKeyValueStoreValues];
    v3 = *(*(a1 + 32) + 32);
  }

  result = [MEMORY[0x1E695DFB0] null];
  if (v3 != result)
  {
    result = *(*(a1 + 32) + 32);
    *(*(*(a1 + 40) + 8) + 40) = result;
  }

  return result;
}

- (id)copyStoreFrontRequestHeaders
{
  result = [(SSDevice *)self storeFrontIdentifier];
  if (result)
  {
    return [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{result, @"X-Apple-Store-Front", 0}];
  }

  return result;
}

- (unsigned)deviceTypeIdentifier
{
  v3 = 0;
  if ([(SSDevice *)self _getDeviceType:&v3 error:0])
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

- (void)getAvailableItemKindsWithBlock:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"block is nil"];
  }

  CFPreferencesAppSynchronize(@"com.apple.itunesstored");
  v4 = [objc_opt_class() copyCachedAvailableItemKinds];
  if (v4)
  {
    v21 = v4;
    (*(a3 + 2))(a3);
  }

  else
  {
    if (MGGetBoolAnswer() && _os_feature_enabled_impl())
    {
      v5 = +[SSLogConfig sharedStoreServicesConfig];
      if (!v5)
      {
        v5 = +[SSLogConfig sharedConfig];
      }

      v6 = [v5 shouldLog];
      if ([v5 shouldLogToDisk])
      {
        v7 = v6 | 2;
      }

      else
      {
        v7 = v6;
      }

      if (os_log_type_enabled([v5 OSLogObject], OS_LOG_TYPE_DEBUG))
      {
        v8 = v7;
      }

      else
      {
        v8 = v7 & 2;
      }

      if (v8)
      {
        v23 = 136446210;
        v24 = "[SSDevice getAvailableItemKindsWithBlock:]";
        LODWORD(v20) = 12;
        v9 = _os_log_send_and_compose_impl();
        if (v9)
        {
          v10 = v9;
          v11 = [MEMORY[0x1E696AEC0] stringWithCString:v9 encoding:{4, &v23, v20}];
          free(v10);
          SSFileLog(v5, @"%@", v12, v13, v14, v15, v16, v17, v11);
        }
      }
    }

    v18 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v18, "0", 68);
    v19 = [[SSXPCConnection alloc] initWithServiceName:@"com.apple.itunesstored.xpc"];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __43__SSDevice_getAvailableItemKindsWithBlock___block_invoke;
    v22[3] = &unk_1E84AC760;
    v22[4] = v19;
    v22[5] = a3;
    [(SSXPCConnection *)v19 sendMessage:v18 withReply:v22];
    xpc_release(v18);
  }
}

void __43__SSDevice_getAvailableItemKindsWithBlock___block_invoke(uint64_t a1, void *a2)
{
  if (a2 == MEMORY[0x1E69E9E18])
  {
    v4 = 121;
  }

  else
  {
    if (a2 && MEMORY[0x1DA6E0380](a2) == MEMORY[0x1E69E9E80])
    {
      objc_opt_class();
      v9 = SSXPCDictionaryCopyCFObjectWithClass(a2, "1");
      v5 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithXPCEncoding:{xpc_dictionary_get_value(a2, "2")}];
      if (v9)
      {
        v6 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v9];
      }

      else
      {
        v6 = 0;
      }

      goto LABEL_7;
    }

    v4 = 111;
  }

  v5 = SSError(@"SSErrorDomain", v4, 0, 0);
  v6 = 0;
LABEL_7:
  if (!(v5 | v6))
  {
    v5 = SSError(@"SSErrorDomain", 100, 0, 0);
  }

  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__SSDevice_getAvailableItemKindsWithBlock___block_invoke_2;
  block[3] = &unk_1E84AD618;
  v8 = *(a1 + 40);
  block[5] = v5;
  block[6] = v8;
  block[4] = v6;
  dispatch_async(global_queue, block);
}

- (void)getCellularNetworkingAllowedWithBlock:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  if (MGGetBoolAnswer() && _os_feature_enabled_impl())
  {
    v4 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v4)
    {
      v4 = +[SSLogConfig sharedConfig];
    }

    v5 = [v4 shouldLog];
    if ([v4 shouldLogToDisk])
    {
      v6 = v5 | 2;
    }

    else
    {
      v6 = v5;
    }

    if (os_log_type_enabled([v4 OSLogObject], OS_LOG_TYPE_DEBUG))
    {
      v7 = v6;
    }

    else
    {
      v7 = v6 & 2;
    }

    if (v7)
    {
      v21 = 136446210;
      v22 = "[SSDevice getCellularNetworkingAllowedWithBlock:]";
      LODWORD(v19) = 12;
      v8 = _os_log_send_and_compose_impl();
      if (v8)
      {
        v9 = v8;
        v10 = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:{4, &v21, v19}];
        free(v9);
        SSFileLog(v4, @"%@", v11, v12, v13, v14, v15, v16, v10);
      }
    }
  }

  v17 = SSXPCCreateMessageDictionary(87);
  v18 = [[SSXPCConnection alloc] initWithServiceName:@"com.apple.itunesstored.xpc"];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __50__SSDevice_getCellularNetworkingAllowedWithBlock___block_invoke;
  v20[3] = &unk_1E84AC760;
  v20[4] = v18;
  v20[5] = a3;
  [(SSXPCConnection *)v18 sendMessage:v17 withReply:v20];
  xpc_release(v17);
}

void __50__SSDevice_getCellularNetworkingAllowedWithBlock___block_invoke(uint64_t a1, void *a2)
{
  if (MEMORY[0x1DA6E0380](a2) == MEMORY[0x1E69E9E80])
  {
    xpc_dictionary_get_BOOL(a2, "1");
  }

  (*(*(a1 + 40) + 16))();
  v4 = *(a1 + 32);
}

- (void)loadStoreFrontWithCompletionHandler:(id)a3
{
  if ([(NSString *)[(SSDevice *)self storeFrontIdentifier] length])
  {
    if (a3)
    {
      v5 = *(a3 + 2);

      v5(a3, 0);
    }
  }

  else
  {
    dispatchQueue = self->_dispatchQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __48__SSDevice_loadStoreFrontWithCompletionHandler___block_invoke;
    v7[3] = &unk_1E84AF318;
    v7[4] = self;
    v7[5] = a3;
    dispatch_async(dispatchQueue, v7);
  }
}

uint64_t __48__SSDevice_loadStoreFrontWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = dispatch_queue_create("com.apple.StoreServices.SSDevice.completion", 0);
  v3 = *(*(a1 + 32) + 128);
  if (!v3)
  {
    v4 = objc_alloc_init(SSURLBagContext);
    [(SSURLBagContext *)v4 setBagType:0];
    [(SSURLBagContext *)v4 setIgnoresCaches:1];
    *(*(a1 + 32) + 128) = [[SSURLBag alloc] initWithURLBagContext:v4];

    v3 = *(*(a1 + 32) + 128);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__SSDevice_loadStoreFrontWithCompletionHandler___block_invoke_2;
  v7[3] = &unk_1E84AF2F0;
  v5 = *(a1 + 40);
  v7[4] = v2;
  v7[5] = v5;
  return [v3 loadWithCompletionBlock:v7];
}

void __48__SSDevice_loadStoreFrontWithCompletionHandler___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__SSDevice_loadStoreFrontWithCompletionHandler___block_invoke_3;
  v6[3] = &unk_1E84AC738;
  v5 = *(a1 + 40);
  v6[4] = a3;
  v6[5] = v5;
  dispatch_async(v4, v6);
  dispatch_release(*(a1 + 32));
}

uint64_t __48__SSDevice_loadStoreFrontWithCompletionHandler___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)sdk_loadStorefrontCountryCode:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  if (MGGetBoolAnswer() && _os_feature_enabled_impl())
  {
    v4 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v4)
    {
      v4 = +[SSLogConfig sharedConfig];
    }

    v5 = [v4 shouldLog];
    if ([v4 shouldLogToDisk])
    {
      v6 = v5 | 2;
    }

    else
    {
      v6 = v5;
    }

    if (os_log_type_enabled([v4 OSLogObject], OS_LOG_TYPE_DEBUG))
    {
      v7 = v6;
    }

    else
    {
      v7 = v6 & 2;
    }

    if (v7)
    {
      v21 = 136446210;
      v22 = "[SSDevice sdk_loadStorefrontCountryCode:]";
      LODWORD(v19) = 12;
      v8 = _os_log_send_and_compose_impl();
      if (v8)
      {
        v9 = v8;
        v10 = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:{4, &v21, v19}];
        free(v9);
        SSFileLog(v4, @"%@", v11, v12, v13, v14, v15, v16, v10);
      }
    }
  }

  v17 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v17, "0", 173);
  v18 = [[SSXPCConnection alloc] initWithServiceName:@"com.apple.itunesstored.xpc"];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __42__SSDevice_sdk_loadStorefrontCountryCode___block_invoke;
  v20[3] = &unk_1E84AC760;
  v20[4] = v18;
  v20[5] = a3;
  [(SSXPCConnection *)v18 sendMessage:v17 withReply:v20];
  xpc_release(v17);
}

void __42__SSDevice_sdk_loadStorefrontCountryCode___block_invoke(uint64_t a1, void *a2)
{
  if (a2 == MEMORY[0x1E69E9E18])
  {
    v4 = 121;
    goto LABEL_6;
  }

  if (!a2 || MEMORY[0x1DA6E0380](a2) != MEMORY[0x1E69E9E80])
  {
    v4 = 111;
LABEL_6:
    v5 = SSError(@"SSErrorDomain", v4, 0, 0);
    v6 = 0;
    goto LABEL_7;
  }

  objc_opt_class();
  v6 = SSXPCDictionaryCopyCFObjectWithClass(a2, "1");
  v5 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithXPCEncoding:{xpc_dictionary_get_value(a2, "2")}];
LABEL_7:
  if (!(v5 | v6))
  {
    v5 = SSError(@"SSErrorDomain", 100, 0, 0);
  }

  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__SSDevice_sdk_loadStorefrontCountryCode___block_invoke_2;
  block[3] = &unk_1E84AD618;
  v8 = *(a1 + 40);
  block[5] = v5;
  block[6] = v8;
  block[4] = v6;
  dispatch_async(global_queue, block);
}

- (void)sdk_loadStoreFrontIdentifier:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v26 = 0;
  v27 = &v26;
  v28 = 0x3052000000;
  v29 = __Block_byref_object_copy__22;
  v30 = __Block_byref_object_dispose__22;
  v31 = 0;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__SSDevice_sdk_loadStoreFrontIdentifier___block_invoke;
  block[3] = &unk_1E84AC698;
  block[4] = self;
  block[5] = &v26;
  dispatch_sync(dispatchQueue, block);
  if ([v27[5] length])
  {
    if (a3)
    {
      (*(a3 + 2))(a3, v27[5], 0);
    }
  }

  else
  {
    if (MGGetBoolAnswer() && _os_feature_enabled_impl())
    {
      v6 = +[SSLogConfig sharedStoreServicesConfig];
      if (!v6)
      {
        v6 = +[SSLogConfig sharedConfig];
      }

      v7 = [v6 shouldLog];
      v8 = [v6 shouldLogToDisk];
      v9 = [v6 OSLogObject];
      if (v8)
      {
        v7 |= 2u;
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v10 = v7;
      }

      else
      {
        v10 = v7 & 2;
      }

      if (v10)
      {
        v32 = 136446210;
        v33 = "[SSDevice sdk_loadStoreFrontIdentifier:]";
        LODWORD(v23) = 12;
        v11 = _os_log_send_and_compose_impl();
        if (v11)
        {
          v12 = v11;
          v13 = [MEMORY[0x1E696AEC0] stringWithCString:v11 encoding:{4, &v32, v23}];
          free(v12);
          SSFileLog(v6, @"%@", v14, v15, v16, v17, v18, v19, v13);
        }
      }
    }

    v20 = objc_alloc_init(SSURLBagContext);
    [(SSURLBagContext *)v20 setBagType:0];
    [(SSURLBagContext *)v20 setIgnoresCaches:1];
    v21 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v21, "0", 174);
    SSXPCDictionarySetCFObject(v21, "1", v20);

    v22 = [[SSXPCConnection alloc] initWithServiceName:@"com.apple.itunesstored.xpc"];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __41__SSDevice_sdk_loadStoreFrontIdentifier___block_invoke_85;
    v24[3] = &unk_1E84AF340;
    v24[5] = v22;
    v24[6] = a3;
    v24[4] = self;
    [(SSXPCConnection *)v22 sendMessage:v21 withReply:v24];
    xpc_release(v21);
  }

  _Block_object_dispose(&v26, 8);
}

uint64_t __41__SSDevice_sdk_loadStoreFrontIdentifier___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 72) copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

void __41__SSDevice_sdk_loadStoreFrontIdentifier___block_invoke_85(uint64_t a1, void *a2)
{
  v2 = a2;
  if (a2)
  {
    if (MEMORY[0x1DA6E0380](a2) == MEMORY[0x1E69E9E80])
    {
      v4 = SSXPCDictionaryCopyCFObject(v2, "0");
      v2 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithXPCEncoding:{xpc_dictionary_get_value(v2, "1")}];
    }

    else
    {
      v4 = 0;
      v2 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a1 + 32);
  v6 = *(v5 + 48);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__SSDevice_sdk_loadStoreFrontIdentifier___block_invoke_2;
  block[3] = &unk_1E84AC458;
  block[4] = v5;
  block[5] = v4;
  dispatch_sync(v6, block);
  v7 = *(a1 + 48);
  if (v7)
  {
    global_queue = dispatch_get_global_queue(0, 0);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __41__SSDevice_sdk_loadStoreFrontIdentifier___block_invoke_3;
    v9[3] = &unk_1E84AD618;
    v9[5] = v2;
    v9[6] = v7;
    v9[4] = v4;
    dispatch_async(global_queue, v9);
  }
}

uint64_t __41__SSDevice_sdk_loadStoreFrontIdentifier___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 40) copy];
  *(*(a1 + 32) + 72) = result;
  return result;
}

- (NSString)mediaLibraryIdentifier
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__22;
  v10 = __Block_byref_object_dispose__22;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __34__SSDevice_mediaLibraryIdentifier__block_invoke;
  v5[3] = &unk_1E84AF0E0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __34__SSDevice_mediaLibraryIdentifier__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[10];
  if (!v3)
  {
    [v2 _cacheKeyValueStoreValues];
    v3 = *(*(a1 + 32) + 80);
  }

  result = [MEMORY[0x1E695DFB0] null];
  if (v3 != result)
  {
    result = *(*(a1 + 32) + 80);
    *(*(*(a1 + 40) + 8) + 40) = result;
  }

  return result;
}

- (void)setCellularNetworkingAllowed:(BOOL)a3
{
  v22 = *MEMORY[0x1E69E9840];
  if (MGGetBoolAnswer() && _os_feature_enabled_impl())
  {
    v4 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v4)
    {
      v4 = +[SSLogConfig sharedConfig];
    }

    v5 = [v4 shouldLog];
    if ([v4 shouldLogToDisk])
    {
      v6 = v5 | 2;
    }

    else
    {
      v6 = v5;
    }

    if (os_log_type_enabled([v4 OSLogObject], OS_LOG_TYPE_FAULT))
    {
      v7 = v6;
    }

    else
    {
      v7 = v6 & 2;
    }

    if (v7)
    {
      v20 = 136446210;
      v21 = "[SSDevice setCellularNetworkingAllowed:]";
      LODWORD(v19) = 12;
      v8 = _os_log_send_and_compose_impl();
      if (v8)
      {
        v9 = v8;
        v10 = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:{4, &v20, v19}];
        free(v9);
        SSFileLog(v4, @"%@", v11, v12, v13, v14, v15, v16, v10);
      }
    }
  }

  v17 = [[SSXPCConnection alloc] initWithServiceName:@"com.apple.itunesstored.xpc"];
  v18 = SSXPCCreateMessageDictionary(88);
  xpc_dictionary_set_BOOL(v18, "1", a3);
  [(SSXPCConnection *)v17 sendMessage:v18];
  xpc_release(v18);
}

- (void)setStoreFrontWithResponseHeaders:(id)a3
{
  v4 = [a3 objectForKey:@"X-Set-Apple-Store-Front"];
  if ([v4 length])
  {

    [(SSDevice *)self setStoreFrontIdentifier:v4];
  }
}

- (void)showPromptWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"promptIdentifier is nil"];
  }

  CFPreferencesAppSynchronize(@"com.apple.itunesstored");
  if ([objc_opt_class() promptNeedsDisplay:a3])
  {
    if (MGGetBoolAnswer() && _os_feature_enabled_impl())
    {
      v6 = +[SSLogConfig sharedStoreServicesConfig];
      if (!v6)
      {
        v6 = +[SSLogConfig sharedConfig];
      }

      v7 = [v6 shouldLog];
      if ([v6 shouldLogToDisk])
      {
        v8 = v7 | 2;
      }

      else
      {
        v8 = v7;
      }

      if (os_log_type_enabled([v6 OSLogObject], OS_LOG_TYPE_FAULT))
      {
        v9 = v8;
      }

      else
      {
        v9 = v8 & 2;
      }

      if (v9)
      {
        v24 = 136446210;
        v25 = "[SSDevice showPromptWithIdentifier:completionHandler:]";
        LODWORD(v22) = 12;
        v10 = _os_log_send_and_compose_impl();
        if (v10)
        {
          v11 = v10;
          v12 = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:{4, &v24, v22}];
          free(v11);
          SSFileLog(v6, @"%@", v13, v14, v15, v16, v17, v18, v12);
        }
      }
    }

    v19 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v19, "0", 69);
    SSXPCDictionarySetCFObject(v19, "1", a3);
    v20 = [[SSXPCConnection alloc] initWithServiceName:@"com.apple.itunesstored.xpc"];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __55__SSDevice_showPromptWithIdentifier_completionHandler___block_invoke;
    v23[3] = &unk_1E84AC760;
    v23[4] = v20;
    v23[5] = a4;
    [(SSXPCConnection *)v20 sendMessage:v19 withReply:v23];
    xpc_release(v19);
  }

  else if (a4)
  {
    v21 = *(a4 + 2);

    v21(a4, 0);
  }
}

void __55__SSDevice_showPromptWithIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 40))
  {
    if (a2 == MEMORY[0x1E69E9E18])
    {
      v4 = 121;
    }

    else
    {
      if (a2 && MEMORY[0x1DA6E0380](a2) == MEMORY[0x1E69E9E80])
      {
        v5 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithXPCEncoding:{xpc_dictionary_get_value(a2, "1")}];
        goto LABEL_8;
      }

      v4 = 111;
    }

    v5 = SSError(@"SSErrorDomain", v4, 0, 0);
LABEL_8:
    v6 = v5;
    global_queue = dispatch_get_global_queue(0, 0);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __55__SSDevice_showPromptWithIdentifier_completionHandler___block_invoke_2;
    v9[3] = &unk_1E84AC738;
    v8 = *(a1 + 40);
    v9[4] = v6;
    v9[5] = v8;
    dispatch_async(global_queue, v9);
  }
}

- (NSString)softwareLibraryIdentifier
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__22;
  v10 = __Block_byref_object_dispose__22;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __37__SSDevice_softwareLibraryIdentifier__block_invoke;
  v5[3] = &unk_1E84AF0E0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __37__SSDevice_softwareLibraryIdentifier__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[14];
  if (!v3)
  {
    [v2 _cacheKeyValueStoreValues];
    v3 = *(*(a1 + 32) + 112);
  }

  result = [MEMORY[0x1E695DFB0] null];
  if (v3 != result)
  {
    result = *(*(a1 + 32) + 112);
    *(*(*(a1 + 40) + 8) + 40) = result;
  }

  return result;
}

- (NSString)legacyUserAgent
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__22;
  v10 = __Block_byref_object_dispose__22;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __27__SSDevice_legacyUserAgent__block_invoke;
  v5[3] = &unk_1E84AF0E0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __27__SSDevice_legacyUserAgent__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 64);
  if (v2)
  {
    *(*(*(a1 + 40) + 8) + 40) = v2;
  }

  else
  {
    v3 = CFPreferencesCopyAppValue(@"UserAgent", @"com.apple.itunesstored");
    if (v3)
    {
      v6 = v3;
      *(*(a1 + 32) + 64) = v3;
      *(*(*(a1 + 40) + 8) + 40) = *(*(a1 + 32) + 64);
    }

    else
    {
      v7 = 1;
      v4 = [*(a1 + 32) _newLegacyUserAgent:&v7];
      v5 = v4;
      if (v7 == 1)
      {
        *(*(a1 + 32) + 64) = v4;
      }

      *(*(*(a1 + 40) + 8) + 40) = v5;
    }
  }
}

- (NSString)userAgent
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__22;
  v10 = __Block_byref_object_dispose__22;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __21__SSDevice_userAgent__block_invoke;
  v5[3] = &unk_1E84AF0E0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __21__SSDevice_userAgent__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 136);
  if (v2)
  {
    v3 = v2;
LABEL_3:
    *(*(*(a1 + 40) + 8) + 40) = v3;
    return;
  }

  v4 = CFPreferencesCopyAppValue(@"UserAgent", @"com.apple.itunesstored");
  if (!v4)
  {
    v8 = 1;
    v5 = [*(a1 + 32) userAgentWithBundleRef:CFBundleGetMainBundle() isCachable:&v8];
    v6 = v5;
    if (v8 == 1)
    {
      *(*(a1 + 32) + 136) = v5;
    }

    v3 = v6;
    goto LABEL_3;
  }

  v7 = v4;
  *(*(a1 + 32) + 136) = v4;
  *(*(*(a1 + 40) + 8) + 40) = *(*(a1 + 32) + 136);
}

- (id)userAgentWithBundleRef:(__CFBundle *)a3 isCachable:(BOOL *)a4
{
  InfoDictionary = CFBundleGetInfoDictionary(a3);
  v7 = [(SSDevice *)self _userAgentClientNameForInfoPlist:InfoDictionary];
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = @"itunesstored";
  }

  v9 = [(SSDevice *)self _userAgentClientVersionForInfoPlist:InfoDictionary clientName:v8];
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = @"1.0";
  }

  v11 = [(SSDevice *)self _newModernUserAgentWithClientName:v8 version:v10 isCachable:a4];

  return v11;
}

- (id)userAgentWithClientName:(id)a3 version:(id)a4
{
  v4 = [(SSDevice *)self _newModernUserAgentWithClientName:a3 version:a4 isCachable:0];

  return v4;
}

+ (id)copyCachedAvailableItemKinds
{
  v2 = CFPreferencesCopyAppValue(@"AvailableItemKinds", @"com.apple.itunesstored");
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (BOOL)promptNeedsDisplay:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = +[SSAccountStore defaultStore];
  v5 = [v4 activeAccount];
  if (!v5)
  {
    v5 = [objc_msgSend(v4 "localAccount")];
    if (!v5)
    {
      v10 = +[SSLogConfig sharedAccountsConfig];
      if (!v10)
      {
        v10 = +[SSLogConfig sharedConfig];
      }

      v11 = [v10 shouldLog];
      if ([v10 shouldLogToDisk])
      {
        v12 = v11 | 2;
      }

      else
      {
        v12 = v11;
      }

      if (!os_log_type_enabled([v10 OSLogObject], OS_LOG_TYPE_ERROR))
      {
        v12 &= 2u;
      }

      if (v12)
      {
        v23 = 138543618;
        v24 = objc_opt_class();
        v25 = 2114;
        v26 = a3;
        LODWORD(v22) = 22;
        v7 = _os_log_send_and_compose_impl();
        if (!v7)
        {
          return v7;
        }

        v13 = v7;
        v14 = [MEMORY[0x1E696AEC0] stringWithCString:v7 encoding:{4, &v23, v22}];
        free(v13);
        SSFileLog(v10, @"%@", v15, v16, v17, v18, v19, v20, v14);
      }

      goto LABEL_4;
    }
  }

  v6 = v5;
  if ([v5 displayedServerPromptWithIdentifier:a3])
  {
LABEL_4:
    LOBYTE(v7) = 0;
    return v7;
  }

  v8 = [v6 lastAttemptDateForServerPromptWithIdentifier:a3];
  if (v8)
  {
    [v8 timeIntervalSinceNow];
    LOBYTE(v7) = fabs(v9) >= 86400.0;
  }

  else
  {
    LOBYTE(v7) = 1;
  }

  return v7;
}

+ (BOOL)setCachedAvailableItemKinds:(id)a3
{
  v4 = SSIsDaemon();
  if (v4)
  {
    CFPreferencesSetAppValue(@"AvailableItemKinds", [a3 allObjects], @"com.apple.itunesstored");
  }

  return v4;
}

+ (void)setLastPromptAttemptDate:(id)a3 forPromptWithIdentifier:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = +[SSAccountStore defaultStore];
  v7 = [v6 activeAccount];
  if (v7 || (v7 = [objc_msgSend(v6 "localAccount")]) != 0)
  {
    v8 = v7;
    [v7 setLastAttemptDate:a3 forServerPromptWithIdentifier:a4];
    v26 = 0;
    if (([v6 saveAccount:v8 verifyCredentials:0 error:&v26] & 1) == 0)
    {
      v9 = +[SSLogConfig sharedAccountsConfig];
      if (!v9)
      {
        v9 = +[SSLogConfig sharedConfig];
      }

      v10 = [v9 shouldLog];
      v11 = [v9 shouldLogToDisk] ? v10 | 2 : v10;
      if (!os_log_type_enabled([v9 OSLogObject], OS_LOG_TYPE_ERROR))
      {
        v11 &= 2u;
      }

      if (v11)
      {
        v12 = objc_opt_class();
        v13 = [v8 hashedDescription];
        v27 = 138544130;
        v28 = v12;
        v29 = 2114;
        v30 = v13;
        v31 = 2114;
        v32 = a4;
        v33 = 2114;
        v34 = v26;
        LODWORD(v25) = 42;
        goto LABEL_22;
      }
    }
  }

  else
  {
    v9 = +[SSLogConfig sharedAccountsConfig];
    if (!v9)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    v14 = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      v15 = v14 | 2;
    }

    else
    {
      v15 = v14;
    }

    if (!os_log_type_enabled([v9 OSLogObject], OS_LOG_TYPE_ERROR))
    {
      v15 &= 2u;
    }

    if (v15)
    {
      v27 = 138543618;
      v28 = objc_opt_class();
      v29 = 2114;
      v30 = a4;
      LODWORD(v25) = 22;
LABEL_22:
      v16 = _os_log_send_and_compose_impl();
      if (v16)
      {
        v17 = v16;
        v18 = [MEMORY[0x1E696AEC0] stringWithCString:v16 encoding:{4, &v27, v25}];
        free(v17);
        SSFileLog(v9, @"%@", v19, v20, v21, v22, v23, v24, v18);
      }
    }
  }
}

+ (void)setPromptWithIdentifier:(id)a3 needsDisplay:(BOOL)a4
{
  v4 = a4;
  v45 = *MEMORY[0x1E69E9840];
  v6 = +[SSAccountStore defaultStore];
  v7 = [v6 activeAccount];
  if (v7 || (v7 = [objc_msgSend(v6 "localAccount")]) != 0)
  {
    v8 = v7;
    if (v4)
    {
      [v7 setDisplayedServerPrompt:0 withIdentifier:a3];
    }

    else
    {
      [v7 setDisplayedServerPrompt:1 withIdentifier:a3];
      [v8 setLastAttemptDate:0 forServerPromptWithIdentifier:a3];
    }

    v36 = 0;
    if (([v6 saveAccount:v8 verifyCredentials:0 error:&v36] & 1) == 0)
    {
      v9 = +[SSLogConfig sharedAccountsConfig];
      if (!v9)
      {
        v9 = +[SSLogConfig sharedConfig];
      }

      v10 = [v9 shouldLog];
      if ([v9 shouldLogToDisk])
      {
        v11 = v10 | 2;
      }

      else
      {
        v11 = v10;
      }

      if (!os_log_type_enabled([v9 OSLogObject], OS_LOG_TYPE_ERROR))
      {
        v11 &= 2u;
      }

      if (v11)
      {
        v12 = objc_opt_class();
        v13 = [v8 hashedDescription];
        v37 = 138544130;
        v38 = v12;
        v39 = 2114;
        v40 = v13;
        v41 = 2114;
        v42 = a3;
        v43 = 2114;
        v44 = v36;
        LODWORD(v35) = 42;
        v14 = _os_log_send_and_compose_impl();
        if (v14)
        {
          v15 = v14;
          v16 = [MEMORY[0x1E696AEC0] stringWithCString:v14 encoding:{4, &v37, v35}];
          free(v15);
          SSFileLog(v9, @"%@", v17, v18, v19, v20, v21, v22, v16);
        }
      }
    }
  }

  else
  {
    v23 = +[SSLogConfig sharedAccountsConfig];
    if (!v23)
    {
      v23 = +[SSLogConfig sharedConfig];
    }

    v24 = [v23 shouldLog];
    if ([v23 shouldLogToDisk])
    {
      v25 = v24 | 2;
    }

    else
    {
      v25 = v24;
    }

    if (!os_log_type_enabled([v23 OSLogObject], OS_LOG_TYPE_ERROR))
    {
      v25 &= 2u;
    }

    if (v25)
    {
      v37 = 138543618;
      v38 = objc_opt_class();
      v39 = 2114;
      v40 = a3;
      LODWORD(v35) = 22;
      v26 = _os_log_send_and_compose_impl();
      if (v26)
      {
        v27 = v26;
        v28 = [MEMORY[0x1E696AEC0] stringWithCString:v26 encoding:{4, &v37, v35}];
        free(v27);
        SSFileLog(v23, @"%@", v29, v30, v31, v32, v33, v34, v28);
      }
    }
  }
}

- (double)batteryLevel
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0xBFF0000000000000;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __24__SSDevice_batteryLevel__block_invoke;
  v5[3] = &unk_1E84AF0E0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

double __24__SSDevice_batteryLevel__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 184) >= 1)
  {
    result = *(v1 + 152);
    *(*(*(a1 + 40) + 8) + 24) = result;
  }

  return result;
}

- (id)carrierBundleStatusForService:(int64_t)a3
{
  if (a3 || (CFPreferencesAppSynchronize(@"com.apple.itunesstored"), (v5 = CFPreferencesCopyAppValue(@"FuseSubscriptionStatus", @"com.apple.itunesstored")) == 0))
  {
    v3 = 0;
  }

  else
  {
    v6 = v5;
    v7 = CFGetTypeID(v5);
    if (v7 == CFDictionaryGetTypeID())
    {
      v8 = [[SSVSubscriptionStatus alloc] initWithUserDefaultsRepresentation:v6];
      v3 = [(SSDevice *)self _copyCarrierBundleEligibilityWithStatus:v8];
    }

    else
    {
      v3 = 0;
    }

    CFRelease(v6);
  }

  return v3;
}

- (NSString)compatibleProductType
{
  v2 = MGCopyAnswer();
  if (v2)
  {
    v3 = v2;
    Value = CFDictionaryGetValue(v2, @"CompatibleDeviceFallback");
    Copy = Value;
    if (Value)
    {
      if (CFStringCompare(Value, @"0", 0))
      {
        Copy = CFStringCreateCopy(*MEMORY[0x1E695E480], Copy);
      }

      else
      {
        Copy = 0;
      }
    }

    CFRelease(v3);
  }

  else
  {
    Copy = 0;
  }

  return Copy;
}

- (int64_t)deviceType
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __22__SSDevice_deviceType__block_invoke;
  v5[3] = &unk_1E84AC698;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __22__SSDevice_deviceType__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _deviceType];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)getCarrierBundleStatusForService:(int64_t)a3 completionHandler:(id)a4
{
  v6 = objc_alloc_init(SSVSubscriptionStatusRequest);
  [(SSVSubscriptionStatusRequest *)v6 setCarrierBundleProvisioningStyle:2];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__SSDevice_getCarrierBundleStatusForService_completionHandler___block_invoke;
  v7[3] = &unk_1E84AF388;
  v7[4] = self;
  v7[5] = a4;
  [(SSVSubscriptionStatusRequest *)v6 startWithStatusResponseBlock:v7];
}

void __63__SSDevice_getCarrierBundleStatusForService_completionHandler___block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a1 + 40))
  {
    v4 = a3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v6 = [*(a1 + 32) _copyCarrierBundleEligibilityWithStatus:a2];
    (*(*(a1 + 40) + 16))();
  }
}

- (BOOL)getMachineIdentifier:(id *)a3 otp:(id *)a4 forAccountIdentifier:(id)a5
{
  v18 = 0;
  v17 = 0;
  v16 = 0;
  v15 = 0;
  if (a5)
  {
    v7 = [a5 unsignedLongLongValue];
  }

  else
  {
    v7 = -1;
  }

  qi864985u0(v7, &v16, &v15, &v18, &v17);
  v9 = v8;
  if (!v8)
  {
    if (a3 && v16)
    {
      v10 = SSVCreateDataWithADIBytes(v16, v15);
      *a3 = v10;
      v11 = v10;
    }

    if (a4 && v18)
    {
      v12 = SSVCreateDataWithADIBytes(v18, v17);
      *a4 = v12;
      v13 = v12;
    }
  }

  return v9 == 0;
}

- (BOOL)isPluggedIn
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __23__SSDevice_isPluggedIn__block_invoke;
  v5[3] = &unk_1E84AF0E0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __23__SSDevice_isPluggedIn__block_invoke(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (*(v2 + 184) >= 1)
  {
    *(*(*(result + 40) + 8) + 24) = *(v2 + 176);
  }

  if ((*(*(*(result + 40) + 8) + 24) & 1) == 0)
  {
    result = MGGetSInt32Answer();
    *(*(*(v1 + 40) + 8) + 24) = result == 4;
  }

  return result;
}

- (void)enableAllAutomaticDownloadKindsWithCompletionBlock:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v5)
  {
    v5 = +[SSLogConfig sharedConfig];
  }

  v6 = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    v7 = v6 | 2;
  }

  else
  {
    v7 = v6;
  }

  if (!os_log_type_enabled([v5 OSLogObject], OS_LOG_TYPE_INFO))
  {
    v7 &= 2u;
  }

  if (v7)
  {
    v19 = 138412290;
    v20 = objc_opt_class();
    LODWORD(v18) = 12;
    v17 = &v19;
    v8 = _os_log_send_and_compose_impl();
    if (v8)
    {
      v9 = v8;
      v10 = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:{4, &v19, v18}];
      free(v9);
      SSFileLog(v5, @"%@", v11, v12, v13, v14, v15, v16, v10);
    }
  }

  [(SSDevice *)self _updateAutomaticDownloadKinds:0 withValue:@"all" completionBlock:a3, v17];
}

- (void)minusAutomaticDownloadKinds:(id)a3 withCompletionBlock:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v7)
  {
    v7 = +[SSLogConfig sharedConfig];
  }

  v8 = [v7 shouldLog];
  if ([v7 shouldLogToDisk])
  {
    v9 = v8 | 2;
  }

  else
  {
    v9 = v8;
  }

  if (!os_log_type_enabled([v7 OSLogObject], OS_LOG_TYPE_INFO))
  {
    v9 &= 2u;
  }

  if (v9)
  {
    v21 = 138412546;
    v22 = objc_opt_class();
    v23 = 2112;
    v24 = a3;
    LODWORD(v20) = 22;
    v19 = &v21;
    v10 = _os_log_send_and_compose_impl();
    if (v10)
    {
      v11 = v10;
      v12 = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:{4, &v21, v20}];
      free(v11);
      SSFileLog(v7, @"%@", v13, v14, v15, v16, v17, v18, v12);
    }
  }

  [(SSDevice *)self _updateAutomaticDownloadKinds:a3 withValue:@"minus" completionBlock:a4, v19];
}

- (NSString)phoneNumber
{
  v2 = +[SSVTelephonyController sharedController];

  return [(SSVTelephonyController *)v2 phoneNumber];
}

- (NSString)productType
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__22;
  v10 = __Block_byref_object_dispose__22;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __23__SSDevice_productType__block_invoke;
  v5[3] = &unk_1E84AF0E0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __23__SSDevice_productType__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[12];
  if (!v3)
  {
    *(*(a1 + 32) + 96) = [v2 _copyProductType];
    *(*(a1 + 32) + 40) = [*(a1 + 32) _deviceTypeForProductType:*(*(a1 + 32) + 96)];
    v3 = *(*(a1 + 32) + 96);
  }

  result = v3;
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (NSString)serialNumber
{
  v2 = MGCopyAnswer();

  return v2;
}

- (void)setAutomaticDownloadKinds:(id)a3 withCompletionBlock:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v7)
  {
    v7 = +[SSLogConfig sharedConfig];
  }

  v8 = [v7 shouldLog];
  if ([v7 shouldLogToDisk])
  {
    v9 = v8 | 2;
  }

  else
  {
    v9 = v8;
  }

  if (!os_log_type_enabled([v7 OSLogObject], OS_LOG_TYPE_INFO))
  {
    v9 &= 2u;
  }

  if (v9)
  {
    v21 = 138412546;
    v22 = objc_opt_class();
    v23 = 2112;
    v24 = a3;
    LODWORD(v20) = 22;
    v19 = &v21;
    v10 = _os_log_send_and_compose_impl();
    if (v10)
    {
      v11 = v10;
      v12 = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:{4, &v21, v20}];
      free(v11);
      SSFileLog(v7, @"%@", v13, v14, v15, v16, v17, v18, v12);
    }
  }

  [(SSDevice *)self _updateAutomaticDownloadKinds:a3 withValue:@"set" completionBlock:a4, v19];
}

- (void)setCloudMediaLibraryIdentifier:(id)a3
{
  dispatchQueue = self->_dispatchQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__SSDevice_setCloudMediaLibraryIdentifier___block_invoke;
  v6[3] = &unk_1E84AC458;
  v6[4] = self;
  v6[5] = a3;
  dispatch_sync(dispatchQueue, v6);
  [(SSKeyValueStore *)self->_keyValueStore setValue:a3 forDomain:@"com.apple.itunesstored" key:@"CloudLibraryCUID" completionBlock:0];
}

void *__43__SSDevice_setCloudMediaLibraryIdentifier___block_invoke(void *result)
{
  v1 = *(result[4] + 32);
  if (v1 != result[5])
  {
    v2 = result;

    v3 = v2[5];
    if (v3)
    {
      result = [v3 copy];
    }

    else
    {
      result = [MEMORY[0x1E695DFB0] null];
    }

    *(v2[4] + 32) = result;
  }

  return result;
}

- (void)setMediaLibraryIdentifier:(id)a3
{
  dispatchQueue = self->_dispatchQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __38__SSDevice_setMediaLibraryIdentifier___block_invoke;
  v6[3] = &unk_1E84AC458;
  v6[4] = self;
  v6[5] = a3;
  dispatch_sync(dispatchQueue, v6);
  [(SSKeyValueStore *)self->_keyValueStore setValue:a3 forDomain:@"com.apple.itunesstored" key:@"LibraryCUID" completionBlock:0];
}

void *__38__SSDevice_setMediaLibraryIdentifier___block_invoke(void *result)
{
  v1 = *(result[4] + 80);
  if (v1 != result[5])
  {
    v2 = result;

    v3 = v2[5];
    if (v3)
    {
      result = [v3 copy];
    }

    else
    {
      result = [MEMORY[0x1E695DFB0] null];
    }

    *(v2[4] + 80) = result;
  }

  return result;
}

- (void)setSoftwareLibraryIdentifier:(id)a3
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__SSDevice_setSoftwareLibraryIdentifier___block_invoke;
  block[3] = &unk_1E84AC7B0;
  block[4] = self;
  block[5] = a3;
  block[6] = &v8;
  dispatch_sync(dispatchQueue, block);
  [(SSKeyValueStore *)self->_keyValueStore setValue:a3 forDomain:@"com.apple.itunesstored" key:@"SoftwareCUID" completionBlock:0];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.StoreServices.SoftwareCUIDChanged", 0, 0, 1u);
  if (*(v9 + 24) == 1)
  {
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  }

  _Block_object_dispose(&v8, 8);
}

void *__41__SSDevice_setSoftwareLibraryIdentifier___block_invoke(void *result)
{
  v1 = *(result[4] + 112);
  if (v1 != result[5])
  {
    v2 = result;

    v3 = v2[5];
    if (v3)
    {
      result = [v3 copy];
    }

    else
    {
      result = [MEMORY[0x1E695DFB0] null];
    }

    *(v2[4] + 112) = result;
    *(*(v2[6] + 8) + 24) = 1;
  }

  return result;
}

- (void)setStoreFrontIdentifier:(id)a3
{
  v4 = [+[SSAccountStore defaultStore](SSAccountStore "defaultStore")];
  [v4 addErrorBlock:&__block_literal_global_143];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36__SSDevice_setStoreFrontIdentifier___block_invoke_144;
  v5[3] = &unk_1E84AF3D0;
  v5[4] = a3;
  [v4 addSuccessBlock:v5];
}

void __36__SSDevice_setStoreFrontIdentifier___block_invoke(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = +[SSLogConfig sharedAccountsConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  v4 = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    v5 = v4 | 2;
  }

  else
  {
    v5 = v4;
  }

  if (os_log_type_enabled([v3 OSLogObject], OS_LOG_TYPE_ERROR))
  {
    v6 = v5;
  }

  else
  {
    v6 = v5 & 2;
  }

  if (v6)
  {
    v17 = 138412290;
    v18 = a2;
    LODWORD(v16) = 12;
    v7 = _os_log_send_and_compose_impl();
    if (v7)
    {
      v8 = v7;
      v9 = [MEMORY[0x1E696AEC0] stringWithCString:v7 encoding:{4, &v17, v16}];
      free(v8);
      SSFileLog(v3, @"%@", v10, v11, v12, v13, v14, v15, v9);
    }
  }
}

uint64_t __36__SSDevice_setStoreFrontIdentifier___block_invoke_144(uint64_t a1, void *a2)
{
  result = [objc_msgSend(a2 "storeFrontIdentifier")];
  if ((result & 1) == 0)
  {
    [a2 setStoreFrontIdentifier:*(a1 + 32)];
    v5 = +[SSAccountStore defaultStore];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __36__SSDevice_setStoreFrontIdentifier___block_invoke_2;
    v6[3] = &unk_1E84ADC20;
    v6[4] = *(a1 + 32);
    return [v5 saveAccount:a2 verifyCredentials:0 completion:v6];
  }

  return result;
}

void __36__SSDevice_setStoreFrontIdentifier___block_invoke_2(uint64_t a1, int a2, uint64_t a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = +[SSLogConfig sharedAccountsConfig];
  v7 = v6;
  if (a2)
  {
    if (!v6)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

    v8 = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      v9 = v8 | 2;
    }

    else
    {
      v9 = v8;
    }

    if (!os_log_type_enabled([v7 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v9 &= 2u;
    }

    if (v9)
    {
      v10 = SSHashIfNeeded(*(a1 + 32));
      LODWORD(v24) = 138543362;
      *(&v24 + 4) = v10;
      LODWORD(v23) = 12;
      goto LABEL_21;
    }
  }

  else
  {
    if (!v6)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

    v11 = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      v12 = v11 | 2;
    }

    else
    {
      v12 = v11;
    }

    if (os_log_type_enabled([v7 OSLogObject], OS_LOG_TYPE_ERROR))
    {
      v13 = v12;
    }

    else
    {
      v13 = v12 & 2;
    }

    if (v13)
    {
      LODWORD(v24) = 138412290;
      *(&v24 + 4) = a3;
      LODWORD(v23) = 12;
LABEL_21:
      v14 = _os_log_send_and_compose_impl();
      if (v14)
      {
        v15 = v14;
        v16 = [MEMORY[0x1E696AEC0] stringWithCString:v14 encoding:{4, &v24, v23, v24}];
        free(v15);
        SSFileLog(v7, @"%@", v17, v18, v19, v20, v21, v22, v16);
      }
    }
  }
}

- (void)startPowerMonitoring
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__SSDevice_startPowerMonitoring__block_invoke;
  block[3] = &unk_1E84AC408;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __32__SSDevice_startPowerMonitoring__block_invoke(uint64_t result)
{
  if (++*(*(result + 32) + 184) == 1)
  {
    v1 = result;
    v2 = *MEMORY[0x1E696CD68];
    *(*(result + 32) + 168) = IONotificationPortCreate(*MEMORY[0x1E696CD68]);
    IONotificationPortSetDispatchQueue(*(*(v1 + 32) + 168), *(*(v1 + 32) + 48));
    v3 = IOServiceMatching("IOPMPowerSource");
    MatchingService = IOServiceGetMatchingService(v2, v3);
    if (MatchingService)
    {
      v5 = MatchingService;
      if (!IOServiceAddInterestNotification(*(*(v1 + 32) + 168), MatchingService, "IOGeneralInterest", __BatteryLevelChanged, *(v1 + 32), (*(v1 + 32) + 160)))
      {
        [*(v1 + 32) _updateBatteryLevelFromService:v5];
      }

      IOObjectRelease(v5);
    }

    v6 = [SSWeakReference weakReferenceWithObject:*(v1 + 32)];
    v7 = *(v1 + 32);
    v8 = *(v7 + 48);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __32__SSDevice_startPowerMonitoring__block_invoke_2;
    handler[3] = &unk_1E84AF3F8;
    handler[4] = v6;
    result = notify_register_dispatch("com.apple.springboard.pluggedin", (v7 + 180), v8, handler);
    if (result)
    {
      *(*(v1 + 32) + 176) = 0;
    }

    else
    {
      v9 = 0;
      result = notify_get_state(*(*(v1 + 32) + 180), &v9);
      *(*(v1 + 32) + 176) = v9 != 0;
    }
  }

  return result;
}

void __32__SSDevice_startPowerMonitoring__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) object];
  [v1 _reloadPluggedInState];
  v2 = dispatch_queue_create("com.apple.StoreServices.SSDevice.notify", 0);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __32__SSDevice_startPowerMonitoring__block_invoke_3;
  v3[3] = &unk_1E84AC458;
  v3[4] = v1;
  v3[5] = v2;
  dispatch_async(v2, v3);
}

void __32__SSDevice_startPowerMonitoring__block_invoke_3(uint64_t a1)
{
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  v2 = *(a1 + 40);

  dispatch_release(v2);
}

- (void)stopPowerMonitoring
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__SSDevice_stopPowerMonitoring__block_invoke;
  block[3] = &unk_1E84AC408;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __31__SSDevice_stopPowerMonitoring__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(v1 + 184);
  v3 = v2 < 1;
  v4 = v2 - 1;
  if (!v3)
  {
    v5 = result;
    *(v1 + 184) = v4;
    v6 = *(result + 32);
    if (!*(v6 + 184))
    {
      v7 = *(v6 + 168);
      if (v7)
      {
        IONotificationPortDestroy(v7);
        *(*(v5 + 32) + 168) = 0;
        v6 = *(v5 + 32);
      }

      result = *(v6 + 160);
      if (result)
      {
        result = IOObjectRelease(result);
        *(*(v5 + 32) + 160) = 0;
      }
    }
  }

  return result;
}

- (BOOL)supportsDeviceCapability:(int64_t)a3
{
  switch(a3)
  {
    case 0:
      return MGGetBoolAnswer();
    case 2:
      return [(SSDevice *)self _is1080pCapable];
    case 1:
      return [(SSDevice *)self _is720pCapable];
  }

  return 1;
}

- (int64_t)deviceBiometricStyle
{
  if (!self->_biometricStyle)
  {
    v3 = MGCopyAnswer();
    v4 = *MEMORY[0x1E695E4D0];
    if (v3 == *MEMORY[0x1E695E4D0])
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

- (void)synchronizeAutomaticDownloadKinds
{
  v20 = *MEMORY[0x1E69E9840];
  if (MGGetBoolAnswer() && _os_feature_enabled_impl())
  {
    v2 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v2)
    {
      v2 = +[SSLogConfig sharedConfig];
    }

    v3 = [v2 shouldLog];
    if ([v2 shouldLogToDisk])
    {
      v4 = v3 | 2;
    }

    else
    {
      v4 = v3;
    }

    if (os_log_type_enabled([v2 OSLogObject], OS_LOG_TYPE_DEBUG))
    {
      v5 = v4;
    }

    else
    {
      v5 = v4 & 2;
    }

    if (v5)
    {
      v18 = 136446210;
      v19 = "[SSDevice synchronizeAutomaticDownloadKinds]";
      LODWORD(v17) = 12;
      v6 = _os_log_send_and_compose_impl();
      if (v6)
      {
        v7 = v6;
        v8 = [MEMORY[0x1E696AEC0] stringWithCString:v6 encoding:{4, &v18, v17}];
        free(v7);
        SSFileLog(v2, @"%@", v9, v10, v11, v12, v13, v14, v8);
      }
    }
  }

  v15 = [[SSXPCConnection alloc] initWithServiceName:@"com.apple.itunesstored.xpc"];
  v16 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v16, "0", 76);
  [(SSXPCConnection *)v15 sendSynchronousMessage:v16 withReply:&__block_literal_global_163];
  xpc_release(v16);
}

- (NSString)thinnedApplicationVariantIdentifier
{
  CFPreferencesAppSynchronize(@"com.apple.itunesstored");
  v3 = CFPreferencesCopyAppValue(@"ThinnedAppVariantID", @"com.apple.itunesstored");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFStringGetTypeID())
    {
      v6 = v4;
      CFRelease(v4);
      if (v6)
      {
        return v6;
      }
    }

    else
    {
      CFRelease(v4);
    }
  }

  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9 = [(SSDevice *)self productType];
  if (v9)
  {
    [v8 addObject:v9];
  }

  v10 = [(SSDevice *)self compatibleProductType];
  if (v10)
  {
    [v8 addObject:v10];
  }

  v11 = [v8 componentsJoinedByString:@" "];

  return v11;
}

- (void)unionAutomaticDownloadKinds:(id)a3 withCompletionBlock:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v7)
  {
    v7 = +[SSLogConfig sharedConfig];
  }

  v8 = [v7 shouldLog];
  if ([v7 shouldLogToDisk])
  {
    v9 = v8 | 2;
  }

  else
  {
    v9 = v8;
  }

  if (!os_log_type_enabled([v7 OSLogObject], OS_LOG_TYPE_INFO))
  {
    v9 &= 2u;
  }

  if (v9)
  {
    v21 = 138412546;
    v22 = objc_opt_class();
    v23 = 2112;
    v24 = a3;
    LODWORD(v20) = 22;
    v19 = &v21;
    v10 = _os_log_send_and_compose_impl();
    if (v10)
    {
      v11 = v10;
      v12 = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:{4, &v21, v20}];
      free(v11);
      SSFileLog(v7, @"%@", v13, v14, v15, v16, v17, v18, v12);
    }
  }

  [(SSDevice *)self _updateAutomaticDownloadKinds:a3 withValue:@"union" completionBlock:a4, v19];
}

- (NSString)uniqueDeviceIdentifier
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__22;
  v10 = __Block_byref_object_dispose__22;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __34__SSDevice_uniqueDeviceIdentifier__block_invoke;
  v5[3] = &unk_1E84AF0E0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __34__SSDevice_uniqueDeviceIdentifier__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 120);
  if (!v2)
  {
    *(*(a1 + 32) + 120) = [+[SSLockdown sharedInstance](SSLockdown copyDeviceGUID];
    v2 = *(*(a1 + 32) + 120);
  }

  result = v2;
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (id)userAgentWithBundleIdentifier:(id)a3 version:(id)a4
{
  v7 = [(SSDevice *)self _userAgentClientNameForBundleID:?];
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = a3;
  }

  return [(SSDevice *)self userAgentWithClientName:v8 version:a4];
}

- (void)setStoreFrontIdentifier:(id)a3 accountIdentifier:(id)a4
{
  v7 = +[SSAccountStore defaultStore];
  if (a4)
  {
    v8 = [v7 accountWithUniqueIdentifier:a4];
  }

  else
  {
    v8 = [v7 activeAccount];
  }

  [(SSDevice *)self setStoreFrontIdentifier:a3 account:v8];
}

- (void)setStoreFrontIdentifier:(id)a3 forRequest:(id)a4 response:(id)a5 account:(id)a6
{
  v56 = *MEMORY[0x1E69E9840];
  v11 = +[SSAccountStore defaultStore];
  if (!a6)
  {
    goto LABEL_40;
  }

  v12 = v11;
  if ([objc_msgSend(a6 "storeFrontIdentifier")] & 1) != 0 || (objc_msgSend(a6, "isLocalAccount"))
  {
    goto LABEL_38;
  }

  v13 = SSGenerateLogCorrelationString();
  v14 = [a6 copy];
  [v14 setStoreFrontIdentifier:a3 forRequest:a4 response:a5];
  v15 = [+[SSLogConfig sharedAccountsConfig](SSLogConfig "sharedAccountsConfig")];
  v16 = +[SSLogConfig sharedAccountsStorefrontConfig];
  v17 = v16;
  if (v15)
  {
    if (!v16)
    {
      v17 = +[SSLogConfig sharedConfig];
    }

    v18 = [v17 shouldLog];
    if ([v17 shouldLogToDisk])
    {
      v19 = v18 | 2;
    }

    else
    {
      v19 = v18;
    }

    if (os_log_type_enabled([v17 OSLogObject], OS_LOG_TYPE_DEBUG))
    {
      v20 = v19;
    }

    else
    {
      v20 = v19 & 2;
    }

    if (!v20)
    {
      goto LABEL_26;
    }

    v48 = 138544130;
    v49 = objc_opt_class();
    v50 = 2114;
    v51 = v13;
    v52 = 2114;
    v53 = [a6 hashedDescription];
    v54 = 2114;
    v55 = +[SSStackShot generateSymbolicatedStackShot];
    LODWORD(v46) = 42;
    v45 = &v48;
  }

  else
  {
    if (!v16)
    {
      v17 = +[SSLogConfig sharedConfig];
    }

    v21 = [v17 shouldLog];
    if ([v17 shouldLogToDisk])
    {
      v21 |= 2u;
    }

    if (os_log_type_enabled([v17 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v22 = v21;
    }

    else
    {
      v22 = v21 & 2;
    }

    if (!v22)
    {
      goto LABEL_26;
    }

    v48 = 138543874;
    v49 = objc_opt_class();
    v50 = 2114;
    v51 = v13;
    v52 = 2114;
    v53 = [a6 hashedDescription];
    LODWORD(v46) = 32;
    v45 = &v48;
  }

  v23 = _os_log_send_and_compose_impl();
  if (v23)
  {
    v24 = v23;
    v25 = [MEMORY[0x1E696AEC0] stringWithCString:v23 encoding:{4, &v48, v46}];
    free(v24);
    SSFileLog(v17, @"%@", v26, v27, v28, v29, v30, v31, v25);
  }

LABEL_26:
  v47 = 0;
  if (([v12 saveAccount:v14 verifyCredentials:0 error:{&v47, v45}] & 1) == 0)
  {
    v32 = +[SSLogConfig sharedAccountsStorefrontConfig];
    if (!v32)
    {
      v32 = +[SSLogConfig sharedConfig];
    }

    v33 = [v32 shouldLog];
    if ([v32 shouldLogToDisk])
    {
      v33 |= 2u;
    }

    if (os_log_type_enabled([v32 OSLogObject], OS_LOG_TYPE_ERROR))
    {
      v34 = v33;
    }

    else
    {
      v34 = v33 & 2;
    }

    if (v34)
    {
      v35 = objc_opt_class();
      v48 = 138543618;
      v49 = v35;
      v50 = 2114;
      v51 = v13;
      LODWORD(v46) = 22;
      v45 = &v48;
      v36 = _os_log_send_and_compose_impl();
      if (v36)
      {
        v37 = v36;
        v38 = [MEMORY[0x1E696AEC0] stringWithCString:v36 encoding:{4, &v48, v46}];
        free(v37);
        SSFileLog(v32, @"%@", v39, v40, v41, v42, v43, v44, v38);
      }
    }
  }

LABEL_38:
  if (![v12 activeAccount] || objc_msgSend(a6, "isActive"))
  {
LABEL_40:
    [(SSDevice *)self setStoreFrontIdentifier:a3];
  }
}

- (id)_appleTVProductVersion
{
  result = self->_appleTVProductVersion;
  if (!result)
  {
    if (MGGetSInt32Answer() == 4)
    {
      result = [(SSDevice *)self _productVersion];
      self->_appleTVProductVersion = result;
    }

    else
    {
      return self->_appleTVProductVersion;
    }
  }

  return result;
}

- (void)_cacheKeyValueStoreValues
{
  v34[3] = *MEMORY[0x1E69E9840];
  v27 = 0;
  v28 = &v27;
  v29 = 0x3052000000;
  v30 = __Block_byref_object_copy__22;
  v31 = __Block_byref_object_dispose__22;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3052000000;
  v24 = __Block_byref_object_copy__22;
  v25 = __Block_byref_object_dispose__22;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3052000000;
  v18 = __Block_byref_object_copy__22;
  v19 = __Block_byref_object_dispose__22;
  v20 = 0;
  v34[0] = @"CloudLibraryCUID";
  v34[1] = @"LibraryCUID";
  v34[2] = @"SoftwareCUID";
  v3 = dispatch_semaphore_create(0);
  keyValueStore = self->_keyValueStore;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __37__SSDevice__cacheKeyValueStoreValues__block_invoke;
  v14[3] = &unk_1E84AF420;
  v14[6] = &v21;
  v14[7] = &v15;
  v14[4] = v3;
  v14[5] = &v27;
  [(SSKeyValueStore *)keyValueStore getValuesForDomain:@"com.apple.itunesstored" keys:v34 count:3 usingBlock:v14];
  dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_release(v3);
  v33[0] = @"LibraryCUID";
  v33[1] = @"SoftwareCUID";
  v5 = dispatch_semaphore_create(0);
  v6 = self->_keyValueStore;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __37__SSDevice__cacheKeyValueStoreValues__block_invoke_2;
  v13[3] = &unk_1E84AF448;
  v13[5] = &v21;
  v13[6] = &v15;
  v13[4] = v5;
  [(SSKeyValueStore *)v6 getValuesForDomain:@"com.apple.mobile.iTunes.store" keys:v33 count:2 usingBlock:v13];
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_release(v5);

  v7 = v28[5];
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  self->_cloudMediaLibraryIdentifier = v8;

  v9 = v22[5];
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  self->_mediaLibraryIdentifier = v10;

  v11 = v16[5];
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  self->_softwareLibraryIdentifier = v12;

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);
}

intptr_t __37__SSDevice__cacheKeyValueStoreValues__block_invoke(void *a1, id *a2)
{
  *(*(a1[5] + 8) + 40) = *a2;
  *(*(a1[6] + 8) + 40) = a2[1];
  *(*(a1[7] + 8) + 40) = a2[2];
  v4 = a1[4];

  return dispatch_semaphore_signal(v4);
}

intptr_t __37__SSDevice__cacheKeyValueStoreValues__block_invoke_2(void *a1, id *a2)
{
  if (!*(*(a1[5] + 8) + 40))
  {
    *(*(a1[5] + 8) + 40) = *a2;
  }

  if (!*(*(a1[6] + 8) + 40))
  {
    *(*(a1[6] + 8) + 40) = a2[1];
  }

  v4 = a1[4];

  return dispatch_semaphore_signal(v4);
}

- (id)_copyCarrierBundleEligibilityWithStatus:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = [a3 carrierBundlingStatus];
  v4 = 1;
  if (v3 != 1 && v3 != 4)
  {
    if (v3 == 2)
    {
      v4 = 0;
      goto LABEL_6;
    }

    return 0;
  }

LABEL_6:
  v5 = objc_alloc(MEMORY[0x1E696AD98]);

  return [v5 initWithInteger:v4];
}

- (id)_copyKeyValueStoreValueForDomain:(id)a3 key:(id)a4
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3052000000;
  v15 = __Block_byref_object_copy__22;
  v16 = __Block_byref_object_dispose__22;
  v17 = 0;
  v7 = dispatch_semaphore_create(0);
  keyValueStore = self->_keyValueStore;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __49__SSDevice__copyKeyValueStoreValueForDomain_key___block_invoke;
  v11[3] = &unk_1E84AF470;
  v11[4] = v7;
  v11[5] = &v12;
  [(SSKeyValueStore *)keyValueStore getValueForDomain:a3 key:a4 usingBlock:v11];
  dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_release(v7);
  v9 = v13[5];
  _Block_object_dispose(&v12, 8);
  return v9;
}

intptr_t __49__SSDevice__copyKeyValueStoreValueForDomain_key___block_invoke(uint64_t a1, void *a2)
{
  *(*(*(a1 + 40) + 8) + 40) = a2;
  v3 = *(a1 + 32);

  return dispatch_semaphore_signal(v3);
}

- (int)_deviceClass
{
  v2 = MGCopyAnswer();
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 intValue];
  }

  else
  {
    v3 = -1;
  }

  return v3;
}

- (int64_t)_deviceTypeForProductType:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v5 = 0;
  v6 = &off_1E84AF498;
  v7 = 27;
  do
  {
    if ([*v6 isEqualToString:a3])
    {
      v5 = *(v6 - 1);
    }

    v6 += 3;
    --v7;
  }

  while (v7);
  if (v5)
  {
    return v5;
  }

  if ([a3 hasPrefix:@"iPad"])
  {

    return [(SSDevice *)self _deviceTypeForUnknownIPad:a3];
  }

  if ([a3 hasPrefix:@"iPhone"])
  {

    return [(SSDevice *)self _deviceTypeForUnknownIPhone:a3];
  }

  if ([a3 hasPrefix:@"iPod"])
  {

    return [(SSDevice *)self _deviceTypeForUnknownIPod:a3];
  }

  if (![a3 hasPrefix:@"AppleTV"])
  {
    if ([a3 hasPrefix:@"Watch"])
    {
      return 2007;
    }

    if ([a3 hasPrefix:@"iProd"])
    {
      return 4002;
    }

    return 0;
  }

  return [(SSDevice *)self _deviceTypeForUnknownAppleTV:a3];
}

- (int64_t)_deviceTypeForUnknownAppleTV:(id)a3
{
  v3 = [objc_msgSend(a3 substringFromIndex:{7), "componentsSeparatedByString:", @", "}];
  if ([v3 count] != 2)
  {
    return 4;
  }

  v4 = [objc_msgSend(v3 objectAtIndex:{0), "integerValue"}];
  v5 = [objc_msgSend(v3 objectAtIndex:{1), "integerValue"}];
  if (v4 > 3)
  {
    return 4002;
  }

  v6 = v5;
  result = 4;
  if (v4 == 3 && v6 >= 2)
  {
    return 4002;
  }

  return result;
}

- (int64_t)_deviceTypeForUnknownIPad:(id)a3
{
  v3 = [objc_msgSend(a3 substringFromIndex:{4), "componentsSeparatedByString:", @", "}];
  if ([v3 count] != 2)
  {
    return 1;
  }

  v4 = [objc_msgSend(v3 objectAtIndex:{0), "integerValue"}];
  v5 = [objc_msgSend(v3 objectAtIndex:{1), "integerValue"}];
  if (v4 > 2)
  {
    return 1008;
  }

  v6 = v5;
  result = 1;
  if (v4 == 2 && v6 >= 5)
  {
    return 1008;
  }

  return result;
}

- (int64_t)_deviceTypeForUnknownIPhone:(id)a3
{
  v3 = [objc_msgSend(a3 substringFromIndex:{6), "componentsSeparatedByString:", @", "}];
  if ([v3 count] != 2)
  {
    return 2;
  }

  if ([objc_msgSend(v3 objectAtIndex:{0), "integerValue"}] <= 4)
  {
    return 2;
  }

  return 2007;
}

- (int64_t)_deviceTypeForUnknownIPod:(id)a3
{
  v3 = [objc_msgSend(a3 substringFromIndex:{4), "componentsSeparatedByString:", @", "}];
  if ([v3 count] != 2)
  {
    return 3;
  }

  if ([objc_msgSend(v3 objectAtIndex:{0), "integerValue"}] <= 4)
  {
    return 3;
  }

  return 3006;
}

- (id)_diskCapacityString
{
  v2 = MGCopyAnswer();
  v3 = [v2 objectForKey:*MEMORY[0x1E69E5128]];
  if (v3)
  {
    [v3 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 1.79769313e308;
  }

  v6 = log2(v5);
  v7 = exp2(ceil(v6));
  v8 = &off_1E84AF770;
  v9 = 7;
  v10 = 1024.0;
  while (1)
  {
    if (v7 < v10)
    {
      return [MEMORY[0x1E696AEC0] stringWithFormat:@"%.0f%@", v7 / (v10 * 0.0009765625), *(v8 - 1)];
    }

    if (v7 == v10)
    {
      break;
    }

    v10 = v10 * 1024.0;
    ++v8;
    if (!--v9)
    {
      return 0;
    }
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"1%@", *v8, v12];
}

- (BOOL)_getDeviceType:(unsigned int *)a3 error:(id *)a4
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = MGCopyAnswer();
  v6 = MGCopyAnswer();
  v7 = [MEMORY[0x1E695E000] standardUserDefaults];
  v8 = [v7 objectForKey:@"SSDeviceType"];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (v9 = [v8 objectForKey:@"hardwareModel"], v10 = objc_msgSend(v8, "objectForKey:", @"buildVersion"), v11 = objc_msgSend(v8, "objectForKey:", @"deviceTypeNumber"), objc_opt_class(), (objc_opt_isKindOfClass()) && objc_msgSend(v9, "isEqualToString:", v5) && (objc_opt_class(), (objc_opt_isKindOfClass()) && objc_msgSend(v10, "isEqualToString:", v6) && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v12 = [v11 intValue];
    v13 = 0;
    v14 = 1;
  }

  else
  {
    v35 = 0;
    CjHbHx(&v35 + 4, &v35);
    v14 = v15 == 0;
    if (v15)
    {
      v16 = v15;
      v17 = +[SSLogConfig sharedStoreServicesConfig];
      if (!v17)
      {
        v17 = +[SSLogConfig sharedConfig];
      }

      v18 = [v17 shouldLog];
      if ([v17 shouldLogToDisk])
      {
        v18 |= 2u;
      }

      if (!os_log_type_enabled([v17 OSLogObject], OS_LOG_TYPE_ERROR))
      {
        v18 &= 2u;
      }

      if (v18)
      {
        v19 = objc_opt_class();
        v20 = v16;
        v38 = 138412546;
        v39 = v19;
        v40 = 2048;
        v41 = v16;
        LODWORD(v33) = 22;
        v32 = &v38;
        v21 = _os_log_send_and_compose_impl();
        if (v21)
        {
          v22 = v21;
          v23 = [MEMORY[0x1E696AEC0] stringWithCString:v21 encoding:{4, &v38, v33}];
          free(v22);
          SSFileLog(v17, @"%@", v24, v25, v26, v27, v28, v29, v23);
        }
      }

      else
      {
        v20 = v16;
      }

      v13 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:v20 userInfo:{0, v32}];
      [v7 removeObjectForKey:@"SSDeviceType"];
      [v7 synchronize];
      v12 = 0;
    }

    else
    {
      v36[0] = @"hardwareModel";
      v36[1] = @"buildVersion";
      v37[0] = v5;
      v37[1] = v6;
      v36[2] = @"deviceTypeNumber";
      v37[2] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:HIDWORD(v35)];
      [v7 setObject:objc_msgSend(MEMORY[0x1E695DF20] forKey:{"dictionaryWithObjects:forKeys:count:", v37, v36, 3), @"SSDeviceType"}];
      [v7 synchronize];
      v13 = 0;
      v12 = HIDWORD(v35);
    }
  }

  if (a3 && v14)
  {
    *a3 = v12;
  }

  if (a4)
  {
    v30 = v14;
  }

  else
  {
    v30 = 1;
  }

  if ((v30 & 1) == 0)
  {
    *a4 = v13;
  }

  return v14;
}

- (void)_invalidateAutomaticDownloadKinds
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__SSDevice__invalidateAutomaticDownloadKinds__block_invoke;
  block[3] = &unk_1E84AC408;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __45__SSDevice__invalidateAutomaticDownloadKinds__block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v2)
  {
    v2 = +[SSLogConfig sharedConfig];
  }

  v3 = [v2 shouldLog];
  if ([v2 shouldLogToDisk])
  {
    v4 = v3 | 2;
  }

  else
  {
    v4 = v3;
  }

  if (!os_log_type_enabled([v2 OSLogObject], OS_LOG_TYPE_DEFAULT))
  {
    v4 &= 2u;
  }

  if (v4)
  {
    v19 = 138412290;
    v20 = objc_opt_class();
    LODWORD(v17) = 12;
    v5 = _os_log_send_and_compose_impl();
    if (v5)
    {
      v6 = v5;
      v7 = [MEMORY[0x1E696AEC0] stringWithCString:v5 encoding:{4, &v19, v17}];
      free(v6);
      SSFileLog(v2, @"%@", v8, v9, v10, v11, v12, v13, v7);
    }
  }

  v14 = *(a1 + 32);
  v15 = *(v14 + 16);
  if (v15)
  {

    *(*(a1 + 32) + 16) = 0;
    v14 = *(a1 + 32);
  }

  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__SSDevice__invalidateAutomaticDownloadKinds__block_invoke_230;
  block[3] = &unk_1E84AC408;
  block[4] = v14;
  dispatch_async(global_queue, block);
}

uint64_t __45__SSDevice__invalidateAutomaticDownloadKinds__block_invoke_230(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  v3 = *(a1 + 32);

  return [v2 postNotificationName:@"SSDeviceAutomaticDownloadKindsChangedNotification" object:v3];
}

- (void)_invalidatePhoneNumber
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__SSDevice__invalidatePhoneNumber__block_invoke;
  block[3] = &unk_1E84AC408;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidateSoftwareCUID
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__SSDevice__invalidateSoftwareCUID__block_invoke;
  block[3] = &unk_1E84AC408;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __35__SSDevice__invalidateSoftwareCUID__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 112);
  if (v1)
  {

    *(*(a1 + 32) + 112) = 0;
    global_queue = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __35__SSDevice__invalidateSoftwareCUID__block_invoke_2;
    block[3] = &unk_1E84AC408;
    block[4] = *(a1 + 32);
    dispatch_async(global_queue, block);
  }
}

uint64_t __35__SSDevice__invalidateSoftwareCUID__block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  v3 = *(a1 + 32);

  return [v2 postNotificationName:@"SSDeviceSoftwareLibraryIdentifierChangedNotification" object:v3];
}

- (BOOL)_is720pCapable
{
  v2 = MGCopyAnswer();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = CFGetTypeID(v2);
  v5 = v4 == CFBooleanGetTypeID() && CFBooleanGetValue(v3) != 0;
  CFRelease(v3);
  return v5;
}

- (BOOL)_is1080pCapable
{
  v3 = [(SSDevice *)self _screenClass];
  if ([(SSDevice *)self _deviceClass]!= 3 && v3 != 9 && v3 != 15 && (v3 & 0xFFFFFFFE) != 0x12)
  {
    return 0;
  }

  GSMainScreenScaleFactor();
  if (v4 <= 1.0)
  {
    return 0;
  }

  v5 = MGCopyAnswer();
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = CFGetTypeID(v5);
  v8 = v7 == CFBooleanGetTypeID() && CFBooleanGetValue(v6) != 0;
  CFRelease(v6);
  return v8;
}

- (id)_newLegacyUserAgent:(BOOL *)a3
{
  v5 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"iTunes-"];
  v6 = MGGetSInt32Answer();
  switch(v6)
  {
    case 4:
      v7 = @"AppleTV";
      break;
    case 3:
      v8 = MGCopyAnswer();
      if (v8)
      {
        v9 = v8;
        v10 = CFGetTypeID(v8);
        if (v10 == CFBooleanGetTypeID() && CFBooleanGetValue(v9))
        {
          v11 = @"iPad-M";
        }

        else
        {
          v11 = @"iPad";
        }

        [v5 appendString:v11];
        CFRelease(v9);
        goto LABEL_15;
      }

      v7 = @"iPad";
      break;
    case 1:
      v7 = @"iPhone";
      break;
    default:
      v7 = @"iPod";
      break;
  }

  [v5 appendString:v7];
LABEL_15:
  v12 = [(SSDevice *)self _productVersion];
  if ([v12 length])
  {
    [v5 appendFormat:@"/%@", v12];
  }

  v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = [(SSDevice *)self _deviceType];
  v15 = &qword_1E84AF4A0;
  v16 = 27;
  while (*(v15 - 2) != v14)
  {
    v15 += 3;
    if (!--v16)
    {
      goto LABEL_23;
    }
  }

  if (*v15)
  {
    [v13 addObject:?];
  }

LABEL_23:
  v17 = [(SSDevice *)self _diskCapacityString];
  if (v17)
  {
    [v13 addObject:v17];
  }

  v18 = [(SSDevice *)self _fairPlayDeviceTypeString];
  if (v18)
  {
    [v13 addObject:v18];
  }

  if ([v13 count])
  {
    [v5 appendFormat:@" (%@)", objc_msgSend(v13, "componentsJoinedByString:", @"; "];
  }

  if (a3)
  {
    *a3 = v18 != 0;
  }

  return v5;
}

- (id)_newModernUserAgentWithClientName:(id)a3 version:(id)a4 isCachable:(BOOL *)a5
{
  v7 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@/%@", a3, a4];
  v8 = [(SSDevice *)self _productVersion];
  if ([v8 length])
  {
    if (MGGetSInt32Answer() == 6)
    {
      v9 = @" watchOS/%@";
    }

    else
    {
      v9 = @" iOS/%@";
    }

    [v7 appendFormat:v9, v8];
  }

  if (MGGetSInt32Answer() == 4)
  {
    v10 = [(SSDevice *)self _appleTVProductVersion];
    if ([v10 length])
    {
      [v7 appendFormat:@" AppleTV/%@", v10];
    }
  }

  v11 = MGCopyAnswer();
  v12 = CFPreferencesCopyAppValue(@"OverrideProductType", @"com.apple.itunesstored");
  if (v12)
  {
    v11 = v12;
  }

  if ([v11 length])
  {
    [v7 appendFormat:@" model/%@", v11];
  }

  v13 = MGCopyAnswer();
  if ([v13 length])
  {
    [v7 appendFormat:@" hwp/%@", v13];
  }

  v14 = MGCopyAnswer();
  if ([v14 length])
  {
    [v7 appendFormat:@" build/%@", v14];
  }

  v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v16 = [(SSDevice *)self _deviceType];
  v17 = &qword_1E84AF4A0;
  v18 = 27;
  while (*(v17 - 2) != v16)
  {
    v17 += 3;
    if (!--v18)
    {
      goto LABEL_23;
    }
  }

  if (*v17)
  {
    [v15 addObject:?];
  }

LABEL_23:
  v19 = [(SSDevice *)self _fairPlayDeviceTypeString];
  if (v19)
  {
    [v15 addObject:v19];
  }

  if ([v15 count])
  {
    [v7 appendFormat:@" (%@)", objc_msgSend(v15, "componentsJoinedByString:", @"; "];
  }

  if (a5)
  {
    *a5 = v19 != 0;
  }

  return v7;
}

- (void)_postStoreFrontDidChangeNotification
{
  if ([SSDevice setCachedAvailableItemKinds:0])
  {
    CFPreferencesAppSynchronize(@"com.apple.itunesstored");
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__SSDevice__postStoreFrontDidChangeNotification__block_invoke;
  block[3] = &unk_1E84AC408;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __48__SSDevice__postStoreFrontDidChangeNotification__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 72) = 0;
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"SSDeviceAvailableItemKindsChangedNotification" object:*(a1 + 32)];
  v3 = *(a1 + 32);

  return [v2 postNotificationName:@"SSDeviceStoreFrontChangedNotification" object:v3];
}

- (void)_reloadPluggedInState
{
  v22 = *MEMORY[0x1E69E9840];
  state64 = 0;
  notify_get_state(self->_pluggedInToken, &state64);
  v3 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  v4 = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    v5 = v4 | 2;
  }

  else
  {
    v5 = v4;
  }

  if (!os_log_type_enabled([v3 OSLogObject], OS_LOG_TYPE_INFO))
  {
    v5 &= 2u;
  }

  if (v5)
  {
    v6 = objc_opt_class();
    v18 = 138412546;
    v19 = v6;
    v20 = 2048;
    v21 = state64;
    LODWORD(v16) = 22;
    v7 = _os_log_send_and_compose_impl();
    if (v7)
    {
      v8 = v7;
      v9 = [MEMORY[0x1E696AEC0] stringWithCString:v7 encoding:{4, &v18, v16}];
      free(v8);
      SSFileLog(v3, @"%@", v10, v11, v12, v13, v14, v15, v9);
    }
  }

  self->_pluggedIn = state64 != 0;
}

- (int)_screenClass
{
  v2 = MGCopyAnswer();
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 intValue];
  }

  else
  {
    v3 = -1;
  }

  return v3;
}

- (void)_updateAutomaticDownloadKinds:(id)a3 withValue:(id)a4 completionBlock:(id)a5
{
  v28 = *MEMORY[0x1E69E9840];
  if (MGGetBoolAnswer() && _os_feature_enabled_impl())
  {
    v9 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v9)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    v10 = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      v11 = v10 | 2;
    }

    else
    {
      v11 = v10;
    }

    if (os_log_type_enabled([v9 OSLogObject], OS_LOG_TYPE_DEBUG))
    {
      v12 = v11;
    }

    else
    {
      v12 = v11 & 2;
    }

    if (v12)
    {
      v26 = 136446210;
      v27 = "[SSDevice _updateAutomaticDownloadKinds:withValue:completionBlock:]";
      LODWORD(v24) = 12;
      v13 = _os_log_send_and_compose_impl();
      if (v13)
      {
        v14 = v13;
        v15 = [MEMORY[0x1E696AEC0] stringWithCString:v13 encoding:{4, &v26, v24}];
        free(v14);
        SSFileLog(v9, @"%@", v16, v17, v18, v19, v20, v21, v15);
      }
    }
  }

  v22 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v22, "0", 75);
  SSXPCDictionarySetCFObject(v22, "1", [a3 allObjects]);
  SSXPCDictionarySetCFObject(v22, "2", a4);
  v23 = [[SSXPCConnection alloc] initWithServiceName:@"com.apple.itunesstored.xpc"];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __68__SSDevice__updateAutomaticDownloadKinds_withValue_completionBlock___block_invoke;
  v25[3] = &unk_1E84AF748;
  v25[5] = v23;
  v25[6] = a5;
  v25[4] = self;
  [(SSXPCConnection *)v23 sendMessage:v22 withReply:v25];
  xpc_release(v22);
}

void __68__SSDevice__updateAutomaticDownloadKinds_withValue_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 48))
  {
    if (a2 && MEMORY[0x1DA6E0380](a2) == MEMORY[0x1E69E9E80] && xpc_dictionary_get_BOOL(a2, "0"))
    {
      v4 = 1;
    }

    else
    {
      [*(a1 + 32) _invalidateAutomaticDownloadKinds];
      v4 = 0;
    }

    global_queue = dispatch_get_global_queue(0, 0);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __68__SSDevice__updateAutomaticDownloadKinds_withValue_completionBlock___block_invoke_2;
    v6[3] = &unk_1E84AF720;
    v6[4] = *(a1 + 48);
    v7 = v4;
    dispatch_async(global_queue, v6);
  }
}

- (void)_updateBatteryLevelFromService:(unsigned int)a3
{
  v5 = *MEMORY[0x1E695E480];
  CFProperty = IORegistryEntryCreateCFProperty(a3, @"MaxCapacity", *MEMORY[0x1E695E480], 0);
  v7 = IORegistryEntryCreateCFProperty(a3, @"CurrentCapacity", v5, 0);
  v8 = v7;
  if (CFProperty)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    if (!CFProperty)
    {
      if (!v7)
      {
        return;
      }

      goto LABEL_8;
    }
  }

  else
  {
    [v7 doubleValue];
    v11 = v10;
    [CFProperty doubleValue];
    self->_batteryLevel = v11 / v12;
    global_queue = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __43__SSDevice__updateBatteryLevelFromService___block_invoke;
    block[3] = &unk_1E84AC408;
    block[4] = self;
    dispatch_async(global_queue, block);
  }

  CFRelease(CFProperty);
  if (!v8)
  {
    return;
  }

LABEL_8:
  CFRelease(v8);
}

uint64_t __43__SSDevice__updateBatteryLevelFromService___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  v3 = *(a1 + 32);

  return [v2 postNotificationName:@"SSDeviceBatteryLevelChangedNotification" object:v3];
}

- (id)_userAgentClientNameForAppleTVBundleID:(id)a3
{
  if ([a3 hasPrefix:@"com.apple."])
  {
    v4 = [a3 substringFromIndex:{objc_msgSend(@"com.apple.", "length")}];
  }

  else
  {
    v4 = 0;
  }

  if ([v4 isEqualToString:@"lowtide"])
  {
    return @"AppleTV";
  }

  else
  {
    return v4;
  }
}

- (id)_userAgentClientNameForBundleID:(id)a3
{
  if ([a3 isEqualToString:@"com.apple.AppStore"] & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"com.apple.AppStore2") & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"com.apple.AppStore3"))
  {
    return @"AppStore";
  }

  if ([a3 isEqualToString:@"com.apple.MobileStore"])
  {
    return @"MobileStore";
  }

  if ([a3 isEqualToString:@"com.apple.itunesstored"])
  {
    return @"itunesstored";
  }

  if ([a3 isEqualToString:@"com.apple.Music"] & 1) != 0 || (objc_msgSend(a3, "hasPrefix:", @"com.apple.Music."))
  {
    return @"Music";
  }

  if ([a3 isEqualToString:@"com.apple.lowtide"])
  {
    return @"AppleTV";
  }

  if ([a3 isEqualToString:@"com.apple.ios.StoreKitUIService"])
  {
    return @"StoreKitUIService";
  }

  if ([a3 isEqualToString:@"com.apple.iBooks"])
  {
    return @"iBooks";
  }

  if ([a3 isEqualToString:@"com.apple.itunesu"])
  {
    return @"iTunesU";
  }

  if ([a3 isEqualToString:@"com.apple.podcasts"])
  {
    return @"Podcasts";
  }

  if ([a3 isEqualToString:@"com.apple.Maps"])
  {
    return @"Maps";
  }

  if ([a3 isEqualToString:@"com.apple.Bridge"] & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"com.apple.AppStore.BridgeStoreExtension") & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"com.apple.AppStore3.BridgeStoreExtension"))
  {
    return @"Watch";
  }

  if ([a3 isEqualToString:@"com.apple.Music.MediaSocialShareService"] & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"com.apple.Music.MediaPicker"))
  {
    return @"Music";
  }

  if ([a3 isEqualToString:@"com.apple.WelcomeKit"])
  {
    return @"matd";
  }

  if (([a3 isEqualToString:@"com.apple.MobileSMS"] & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"com.apple.AppStore.MessagesStoreExtension") & 1) != 0 || objc_msgSend(a3, "isEqualToString:", @"com.apple.AppStore3.MessagesStoreExtension"))
  {
    return @"Messages";
  }

  return 0;
}

- (id)_userAgentClientNameForInfoPlist:(id)a3
{
  v5 = [a3 objectForKey:*MEMORY[0x1E695E4F0]];
  if (MGGetSInt32Answer() == 4)
  {
    result = [(SSDevice *)self _userAgentClientNameForAppleTVBundleID:v5];
    if (result)
    {
      return result;
    }
  }

  else
  {
    result = [(SSDevice *)self _userAgentClientNameForBundleID:v5];
    if (result)
    {
      return result;
    }
  }

  result = v5;
  if (!v5)
  {
    v7 = *MEMORY[0x1E695E4E8];

    return [a3 objectForKey:v7];
  }

  return result;
}

- (id)_userAgentClientVersionForInfoPlist:(id)a3 clientName:(id)a4
{
  v6 = *MEMORY[0x1E695E148];
  v7 = [a3 objectForKey:*MEMORY[0x1E695E148]];
  if (!v7)
  {
    v7 = [a3 objectForKey:*MEMORY[0x1E695E500]];
  }

  if ([a4 isEqualToString:@"Music"])
  {
    v8 = CFPreferencesCopyAppValue(@"UseNewMusicApp2", @"com.apple.mobileipod");
    v9 = v8;
    if (v8 && ![v8 BOOLValue])
    {
      v7 = @"2.0";
    }
  }

  if ([a4 isEqualToString:@"TVMusic"] && CFPreferencesGetAppBooleanValue(@"UseNewMusicApp", @"com.apple.TVMusic", 0))
  {
    v7 = @"10.0";
  }

  if (![a4 isEqualToString:@"Messages"])
  {
    return v7;
  }

  v10 = [objc_msgSend(MEMORY[0x1E696AAE8] bundleWithPath:{@"/System/Library/Messages/iMessageBalloons/ASMessagesProvider.bundle", "infoDictionary"}];
  if (!v10)
  {
    return v7;
  }

  return [v10 objectForKey:v6];
}

@end