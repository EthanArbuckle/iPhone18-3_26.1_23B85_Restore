@interface MABAACertManager
+ (BOOL)_checkIsSupported;
+ (BOOL)isSupported;
+ (id)certificateParameters;
+ (id)certificateSubject;
+ (id)keyParameters;
- (BOOL)shouldInvalidateExistingCertificateIfAny;
- (MABAACertManager)initWithCertType:(int)a3;
- (id)_copyCachedCerts:(__SecKey *)a3;
- (id)copyBase64EncodedCertificateChain:(BOOL)a3 referenceKey:(__SecKey *)a4;
- (id)copyCurrentBootManifestHash;
- (id)copyDeviceIdentityOptionsForCertAndRequestType:(int)a3 skipNetworkRequest:(BOOL)a4 invalidateExistingCert:(BOOL)a5;
- (id)issueAndCopyCerts:(__SecKey *)a3;
- (id)issueAndCopySelfSignedCert:(__SecKey *)a3;
- (id)issueSelfSignedCertInternal:(__SecKey *)a3;
- (void)dealloc;
- (void)invalidateExistingCertsAndWait;
- (void)issueAndWaitForCerts:(unint64_t)a3;
@end

@implementation MABAACertManager

- (MABAACertManager)initWithCertType:(int)a3
{
  v14.receiver = self;
  v14.super_class = MABAACertManager;
  v4 = [(MABAACertManager *)&v14 init];
  if (v4)
  {
    v5 = [@"com.apple.MobileAsset.daemon.baacertmanagerQueue" UTF8String];
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create(v5, v6);
    certManagerQueue = v4->_certManagerQueue;
    v4->_certManagerQueue = v7;

    v9 = [@"com.apple.MobileAsset.daemon.deviceIdentityQueue" UTF8String];
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create(v9, v10);
    deviceIdentityQueue = v4->_deviceIdentityQueue;
    v4->_deviceIdentityQueue = v11;

    v4->_certType = a3;
  }

  return v4;
}

- (void)dealloc
{
  cachedKey = self->_cachedKey;
  if (cachedKey)
  {
    CFRelease(cachedKey);
    self->_cachedKey = 0;
  }

  v4.receiver = self;
  v4.super_class = MABAACertManager;
  [(MABAACertManager *)&v4 dealloc];
}

+ (BOOL)isSupported
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __31__MABAACertManager_isSupported__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (isSupported_once != -1)
  {
    dispatch_once(&isSupported_once, block);
  }

  return isSupported_supported;
}

id __31__MABAACertManager_isSupported__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _checkIsSupported];
  isSupported_supported = result;
  return result;
}

+ (BOOL)_checkIsSupported
{
  if (!__isPlatformVersionAtLeast(2, 17, 4, 0))
  {
    goto LABEL_8;
  }

  IsSupported = 0;
  if (&_DeviceIdentityIsSupported && &_DeviceIdentityIssueClientCertificateWithCompletion)
  {
    if (kMAOptionsBAAAccessControls && kMAOptionsBAAValidity && kMAOptionsBAAOIDSToInclude)
    {
      IsSupported = DeviceIdentityIsSupported();
      goto LABEL_9;
    }

LABEL_8:
    IsSupported = 0;
  }

LABEL_9:
  if (&_os_variant_is_recovery && os_variant_is_recovery())
  {
    v3 = _MAClientLog(@"KeyManager");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "MABAACertManager not supported in NeRD", buf, 2u);
    }

    IsSupported = 0;
  }

  v11 = 0;
  v10 = 4;
  if (!sysctlbyname("kern.hv_vmm_present", &v11, &v10, 0, 0) && v11)
  {
    v4 = _MAClientLog(@"KeyManager");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "MABAACertManager not supported on virtual machines", buf, 2u);
    }

    IsSupported = 0;
  }

  v5 = MGCopyAnswer();
  v6 = MGGetSInt32Answer();
  if (([v5 hasSuffix:@"DEV"] & 1) != 0 || (objc_msgSend(v5, "hasSuffix:", @"FPGA") & 1) != 0 || v6 == 5)
  {
    v7 = _MAClientLog(@"KeyManager");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v13 = v5;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "MABAACertManager not supported on %{public}@", buf, 0xCu);
    }

    IsSupported = 0;
  }

  if (MGGetBoolAnswer())
  {
    v8 = _MAClientLog(@"KeyManager");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "MABAACertManager not supported with hactivation", buf, 2u);
    }

    IsSupported = 0;
  }

  return IsSupported;
}

- (id)issueAndCopyCerts:(__SecKey *)a3
{
  v5 = clock_gettime_nsec_np(_CLOCK_MONOTONIC);
  v6 = v5;
  v7 = atomic_load(&self->_cachedTime);
  if (!v7 || (v8 = v5 >= v7, v9 = v5 - v7, v8) && v9 >= 0x34630B8A001)
  {
    v10 = [(MABAACertManager *)self certManagerQueue];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = __38__MABAACertManager_issueAndCopyCerts___block_invoke;
    v13[3] = &unk_4B36C0;
    v13[4] = self;
    v13[5] = v6;
    dispatch_sync(v10, v13);
  }

  v11 = [(MABAACertManager *)self _copyCachedCerts:a3];

  return v11;
}

- (id)_copyCachedCerts:(__SecKey *)a3
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__18;
  v18 = __Block_byref_object_dispose__18;
  v19 = 0;
  v5 = [(MABAACertManager *)self deviceIdentityQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __37__MABAACertManager__copyCachedCerts___block_invoke;
  block[3] = &unk_4B6468;
  block[4] = self;
  block[5] = &v14;
  block[6] = a3;
  dispatch_sync(v5, block);

  if (v15[5])
  {
    v6 = _MAClientLog(@"KeyManager");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      v7 = "Found previously generated BAA certificate";
      v8 = v6;
      v9 = OS_LOG_TYPE_DEFAULT;
LABEL_6:
      _os_log_impl(&dword_0, v8, v9, v7, v12, 2u);
    }
  }

  else
  {
    v6 = _MAClientLog(@"KeyManager");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      v7 = "Failed to obtain BAA certificate";
      v8 = v6;
      v9 = OS_LOG_TYPE_ERROR;
      goto LABEL_6;
    }
  }

  v10 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v10;
}

void __37__MABAACertManager__copyCachedCerts___block_invoke(void *a1)
{
  objc_storeStrong((*(a1[5] + 8) + 40), *(a1[4] + 32));
  v2 = a1[6];
  if (v2)
  {
    *v2 = *(a1[4] + 24);
  }
}

- (id)issueAndCopySelfSignedCert:(__SecKey *)a3
{
  v5 = _MAClientLog(@"KeyManager");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Attempting to generate self signed cert", buf, 2u);
  }

  v6 = [(MABAACertManager *)self issueSelfSignedCertInternal:a3];
  if (!v6)
  {
    v7 = _MAClientLog(@"KeyManager");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "Failed to generate self signed cert", v9, 2u);
    }
  }

  return v6;
}

- (id)copyBase64EncodedCertificateChain:(BOOL)a3 referenceKey:(__SecKey *)a4
{
  v4 = a3;
  v5 = [(MABAACertManager *)self issueAndCopyCerts:a4];
  v6 = v5;
  if (v5)
  {
    v7 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v5 count]);
    context = objc_autoreleasePoolPush();
    v21 = v6;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v23;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = SecCertificateCopyData(*(*(&v22 + 1) + 8 * i));
          v14 = [(__CFData *)v13 base64EncodedStringWithOptions:0, context];
          v15 = v14;
          if (v4)
          {
            v16 = [v14 stringByReplacingOccurrencesOfString:@"/" withString:@"_"];
            v17 = [v16 stringByReplacingOccurrencesOfString:@"+" withString:@"-"];

            v18 = [NSCharacterSet characterSetWithCharactersInString:@"="];
            v15 = [v17 stringByTrimmingCharactersInSet:v18];
          }

          [v7 addObject:v15];
        }

        v10 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v10);
    }

    objc_autoreleasePoolPop(context);
    v6 = v21;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)copyCurrentBootManifestHash
{
  if (copyCurrentBootManifestHash_readBootManifestHashDispatchOnce != -1)
  {
    [MABAACertManager copyCurrentBootManifestHash];
  }

  v3 = copyCurrentBootManifestHash_currentBootManifestHash;

  return v3;
}

void __47__MABAACertManager_copyCurrentBootManifestHash__block_invoke(id a1)
{
  v1 = IORegistryEntryFromPath(kIOMasterPortDefault, "IODeviceTree:/chosen");
  if (v1)
  {
    v2 = v1;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v3 = [&off_4F7070 countByEnumeratingWithState:&v12 objects:v18 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v13;
      while (2)
      {
        for (i = 0; i != v4; i = i + 1)
        {
          if (*v13 != v5)
          {
            objc_enumerationMutation(&off_4F7070);
          }

          v7 = *(*(&v12 + 1) + 8 * i);
          CFProperty = IORegistryEntryCreateCFProperty(v2, v7, kCFAllocatorDefault, 0);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_storeStrong(&copyCurrentBootManifestHash_currentBootManifestHash, CFProperty);
            v10 = _MAClientLog(@"KeyManager");
            if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v17 = v7;
              _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Successfully read current %{public}@", buf, 0xCu);
            }

            goto LABEL_16;
          }

          v9 = _MAClientLog(@"KeyManager");
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v17 = v7;
            _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Could not obtain %{public}@", buf, 0xCu);
          }
        }

        v4 = [&off_4F7070 countByEnumeratingWithState:&v12 objects:v18 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

LABEL_16:
    IOObjectRelease(v2);
  }

  else
  {
    v11 = _MAClientLog(@"KeyManager");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Unable to get entry for chosen device tree node. Could not obtain boot-manifest-hash", buf, 2u);
    }
  }
}

- (BOOL)shouldInvalidateExistingCertificateIfAny
{
  v2 = [(MABAACertManager *)self copyCurrentBootManifestHash];
  v3 = _MAPreferencesCopyNSDataValue(@"BootManifestHashForLastCert");
  v4 = v3;
  v5 = v2 && ![v3 isEqual:v2];
  v6 = _MAClientLog(@"KeyManager");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"does not need";
    if (v5)
    {
      v7 = @"needs";
    }

    v8 = @"Exists";
    if (v2)
    {
      v9 = @"Exists";
    }

    else
    {
      v9 = @"Does not exist";
    }

    v11 = 138412802;
    v12 = v7;
    v13 = 2112;
    v14 = v9;
    if (!v4)
    {
      v8 = @"Does not exist";
    }

    v15 = 2112;
    v16 = v8;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Existing cert(if any) %@ to be invalidated: Current manifesthash: %@ previousManifestHash: %@", &v11, 0x20u);
  }

  return v5;
}

- (id)copyDeviceIdentityOptionsForCertAndRequestType:(int)a3 skipNetworkRequest:(BOOL)a4 invalidateExistingCert:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = objc_alloc_init(NSMutableDictionary);
  v9 = kMAOptionsBAAOIDHardwareProperties;
  v10 = kMAOptionsBAAOIDDeviceOSInformation;
  v29[0] = kMAOptionsBAAOIDHardwareProperties;
  v29[1] = kMAOptionsBAAOIDDeviceOSInformation;
  v11 = kMAOptionsBAAOIDProductType;
  v29[2] = kMAOptionsBAAOIDProductType;
  v12 = [NSArray arrayWithObjects:v29 count:3];
  v28[0] = v9;
  v28[1] = v10;
  v28[2] = v11;
  v13 = [NSArray arrayWithObjects:v28 count:3];
  error = 0;
  v14 = SecAccessControlCreateWithFlags(0, kSecAttrAccessibleAlwaysThisDeviceOnlyPrivate, 0x40000000uLL, &error);
  v15 = v14;
  if (error || !v14)
  {
    v18 = _MAClientLog(@"KeyManager");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v27 = error;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "Failed to create accessControl struct. Bailing : %@", buf, 0xCu);
    }

    if (v15)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if (!v8)
    {
      v16 = _MAClientLog(@"KeyManager");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v17 = "Failed to allocate options dict";
        goto LABEL_13;
      }

LABEL_14:

LABEL_15:
      CFRelease(v15);
      v15 = 0;
      goto LABEL_16;
    }

    if (a3 >= 2)
    {
      v16 = _MAClientLog(@"KeyManager");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v17 = "Invalid cert type passed to copyOptions. Bailing";
LABEL_13:
        _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, v17, buf, 2u);
        goto LABEL_14;
      }

      goto LABEL_14;
    }

    [v8 setObject:@"com.apple.mobileassetd" forKeyedSubscript:kMAOptionsBAAKeychainAccessGroup];
    if (a3)
    {
      v20 = @"com.apple.mobileassetd.downloadcert";
    }

    else
    {
      v20 = @"com.apple.mobileassetd.scancert";
    }

    if (a3)
    {
      v21 = v13;
    }

    else
    {
      v21 = v12;
    }

    [v8 setObject:v20 forKeyedSubscript:kMAOptionsBAAKeychainLabel];
    [v8 setObject:v21 forKeyedSubscript:kMAOptionsBAAOIDSToInclude];
    [v8 setObject:&off_4F82B8 forKeyedSubscript:kMAOptionsBAAValidity];
    [v8 setObject:&__kCFBooleanTrue forKeyedSubscript:kMAOptionsBAASCRTAttestation];
    [v8 setObject:&off_4F82D0 forKeyedSubscript:kMAOptionsBAANetworkTimeoutInterval];
    v22 = [NSNumber numberWithBool:v6];
    [v8 setObject:v22 forKeyedSubscript:kMAOptionsBAASkipNetworkRequest];

    v23 = [NSNumber numberWithBool:v5];
    [v8 setObject:v23 forKeyedSubscript:kMAOptionsBAADeleteExistingKeysAndCerts];

    [v8 setObject:v15 forKeyedSubscript:kMAOptionsBAAAccessControls];
    CFRelease(v15);
    v24 = _MAClientLog(@"KeyManager");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v27 = v8;
      _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, "Options for DeviceIdentity call are: %@", buf, 0xCu);
    }

    v15 = v8;
  }

LABEL_16:

  return v15;
}

- (void)invalidateExistingCertsAndWait
{
  v3 = [(MABAACertManager *)self certManagerQueue];
  dispatch_assert_queue_V2(v3);

  v4 = +[MABAACertManager isSupported];
  v5 = _MAClientLog(@"KeyManager");
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Attempting to invalidate existing BAA certificate", buf, 2u);
    }

    v7 = dispatch_semaphore_create(0);
    v8 = [(MABAACertManager *)self copyDeviceIdentityOptionsForCertAndRequestType:self->_certType skipNetworkRequest:1 invalidateExistingCert:1];
    v9 = [(MABAACertManager *)self deviceIdentityQueue];
    v6 = v7;
    DeviceIdentityIssueClientCertificateWithCompletion();

    dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
    v10 = _MAClientLog(@"KeyManager");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Existing BAA certificate invalidated", buf, 2u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "MABAACertManager is not supported here", buf, 2u);
  }
}

intptr_t __50__MABAACertManager_invalidateExistingCertsAndWait__block_invoke(uint64_t a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  v3 = *(a1 + 32);

  return dispatch_semaphore_signal(v3);
}

- (void)issueAndWaitForCerts:(unint64_t)a3
{
  v5 = [(MABAACertManager *)self certManagerQueue];
  dispatch_assert_queue_V2(v5);

  if (!+[MABAACertManager isSupported])
  {
    v12 = _MAClientLog(@"KeyManager");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "MABAACertManager is not supported here", buf, 2u);
    }

    goto LABEL_20;
  }

  requestTime = self->_requestTime;
  atomic_load(&self->_cachedTime);
  if (requestTime <= a3 && requestTime <= self->_responseTime)
  {
    if (!requestTime && [(MABAACertManager *)self shouldInvalidateExistingCertificateIfAny])
    {
      [(MABAACertManager *)self invalidateExistingCertsAndWait];
    }

    v8 = _MAClientLog(@"KeyManager");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Attempting to generate BAA certificate via network", buf, 2u);
    }

    v9 = dispatch_semaphore_create(0);
    self->_requestTime = clock_gettime_nsec_np(_CLOCK_MONOTONIC);
    v10 = [(MABAACertManager *)self copyDeviceIdentityOptionsForCertAndRequestType:self->_certType skipNetworkRequest:0 invalidateExistingCert:0];
    v11 = [(MABAACertManager *)self deviceIdentityQueue];
    v12 = v9;
    DeviceIdentityIssueClientCertificateWithCompletion();

    v13 = _MAClientLog(@"KeyManager");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "Waiting for cert generation to complete", buf, 2u);
    }

    v14 = dispatch_time(0, 75000000000);
    if (dispatch_semaphore_wait(v12, v14))
    {
      v15 = _MAClientLog(@"KeyManager");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "Timed out waiting for cert generation over network to complete", buf, 2u);
      }
    }

LABEL_20:
  }
}

void __41__MABAACertManager_issueAndWaitForCerts___block_invoke(uint64_t a1, const void *a2, void *a3, void *a4)
{
  v8 = a3;
  v9 = a4;
  v10 = clock_gettime_nsec_np(_CLOCK_MONOTONIC);
  *(*(a1 + 32) + 16) = v10;
  if (a2)
  {
    v11 = v10;
    if ([v8 count])
    {
      v12 = _MAClientLog(@"KeyManager");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v8 objectAtIndexedSubscript:0];
        v18 = 138543362;
        v19 = v13;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "Successfully generated certificate over network: %{public}@", &v18, 0xCu);
      }

      v14 = *(*(a1 + 32) + 24);
      if (v14)
      {
        CFRelease(v14);
        *(*(a1 + 32) + 24) = 0;
      }

      *(*(a1 + 32) + 24) = CFRetain(a2);
      objc_storeStrong((*(a1 + 32) + 32), a3);
      atomic_store(v11, (*(a1 + 32) + 40));
      if (!*(a1 + 48))
      {
        v15 = [*(a1 + 32) copyCurrentBootManifestHash];
        v16 = _MAClientLog(@"KeyManager");
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v18 = 138412290;
          v19 = v15;
          _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "Storing BootManifestHash(%@) present during cert generation", &v18, 0xCu);
        }

        _MAPreferencesSetDataValue(@"BootManifestHashForLastCert", v15, @"MABAACertManager", @"BAA Certificate regenerated");
      }

LABEL_14:
      CFRelease(a2);
      goto LABEL_15;
    }
  }

  v17 = _MAClientLog(@"KeyManager");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v18 = 138543362;
    v19 = v9;
    _os_log_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "Failed to generate certificate over network: %{public}@", &v18, 0xCu);
  }

  if (a2)
  {
    goto LABEL_14;
  }

LABEL_15:
  dispatch_semaphore_signal(*(a1 + 40));
}

+ (id)keyParameters
{
  v4[0] = kSecAttrKeyType;
  v4[1] = kSecAttrKeySizeInBits;
  v5[0] = kSecAttrKeyTypeECSECPrimeRandom;
  v5[1] = &off_4F82E8;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:2];

  return v2;
}

+ (id)certificateSubject
{
  v14[0] = kSecOidCommonName;
  v14[1] = @"com.apple.mobileassetd.InternalKeyWrappingCertificate";
  v2 = [NSArray arrayWithObjects:v14 count:2];
  v15 = v2;
  v3 = [NSArray arrayWithObjects:&v15 count:1];
  v16[0] = v3;
  v12[0] = kSecOidCountryName;
  v12[1] = @"US";
  v4 = [NSArray arrayWithObjects:v12 count:2];
  v13 = v4;
  v5 = [NSArray arrayWithObjects:&v13 count:1];
  v16[1] = v5;
  v10[0] = kSecOidOrganization;
  v10[1] = @"Apple Inc";
  v6 = [NSArray arrayWithObjects:v10 count:2];
  v11 = v6;
  v7 = [NSArray arrayWithObjects:&v11 count:1];
  v16[2] = v7;
  v8 = [NSArray arrayWithObjects:v16 count:3];

  return v8;
}

+ (id)certificateParameters
{
  v4 = kSecCertificateLifetime;
  v5 = &off_4F8300;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

- (id)issueSelfSignedCertInternal:(__SecKey *)a3
{
  v14 = 0;
  v4 = [objc_opt_class() keyParameters];
  v5 = SecKeyCreateRandomKey(v4, &v14);

  if (v5)
  {
    v6 = SecKeyCopyPublicKey(v5);
    v7 = [objc_opt_class() certificateSubject];
    v8 = [objc_opt_class() certificateParameters];
    SelfSignedCertificate = SecGenerateSelfSignedCertificate();

    if (SelfSignedCertificate)
    {
      v15 = SelfSignedCertificate;
      v10 = [NSArray arrayWithObjects:&v15 count:1];
      if (a3)
      {
        *a3 = CFRetain(v5);
      }

      CFRelease(SelfSignedCertificate);
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v13 = _MAClientLog(@"KeyManager");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "[issueSelfSignedCert]: Failed to obtain self signed certificate", buf, 2u);
      }

      v10 = 0;
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    CFRelease(v6);
LABEL_7:
    CFRelease(v5);
    goto LABEL_11;
  }

  v11 = _MAClientLog(@"KeyManager");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = v14;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "[issueSelfSignedCert]: Failed to create wrapping key for self signed cert: %@", buf, 0xCu);
  }

  v10 = 0;
LABEL_11:

  return v10;
}

@end