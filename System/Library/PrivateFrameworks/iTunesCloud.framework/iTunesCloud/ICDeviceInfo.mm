@interface ICDeviceInfo
+ (ICDeviceInfo)currentDeviceInfo;
- (BOOL)has1080pCapability;
- (BOOL)has720pCapability;
- (BOOL)hasCellularDataCapability;
- (BOOL)hasTelephonyCapability;
- (BOOL)hasWAPICapability;
- (BOOL)hasWiFiCapability;
- (BOOL)isInternalBuild;
- (BOOL)isPhoneNumberAccessRestricted;
- (BOOL)supportsMultipleITunesAccounts;
- (BOOL)supportsMusicStreaming;
- (CGSize)mainScreenSize;
- (NSData)deviceFairPlayGUIDData;
- (NSData)macAddressData;
- (NSString)buildVersion;
- (NSString)currentLocale;
- (NSString)deviceClassName;
- (NSString)deviceGUID;
- (NSString)deviceModel;
- (NSString)deviceName;
- (NSString)hardwarePlatform;
- (NSString)macAddress;
- (NSString)name;
- (NSString)productPlatform;
- (NSString)productVersion;
- (NSString)rawDeviceModel;
- (NSString)serialNumber;
- (NSString)systemReleaseType;
- (id)_init;
- (int)_gestaltDeviceClass;
- (int)deviceClass;
- (int)screenClass;
- (unsigned)fairPlayDeviceType;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation ICDeviceInfo

uint64_t __33__ICDeviceInfo_currentDeviceInfo__block_invoke()
{
  currentDeviceInfo___deviceInfo = [[ICDeviceInfo alloc] _init];

  return MEMORY[0x1EEE66BB8]();
}

- (int)_gestaltDeviceClass
{
  result = self->_deviceClass;
  if (result == -1)
  {
    result = MGGetSInt32Answer();
    self->_deviceClass = result;
    if (result == -1)
    {
      v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *v5 = 0;
        _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "Failed to obtain device class from MobileGestalt", v5, 2u);
      }

      return self->_deviceClass;
    }
  }

  return result;
}

+ (ICDeviceInfo)currentDeviceInfo
{
  if (currentDeviceInfo_onceToken != -1)
  {
    dispatch_once(&currentDeviceInfo_onceToken, &__block_literal_global_13818);
  }

  v3 = currentDeviceInfo___deviceInfo;

  return v3;
}

- (id)_init
{
  v8.receiver = self;
  v8.super_class = ICDeviceInfo;
  v2 = [(ICDeviceInfo *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v2->_deviceClass = -1;
    v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v5 = dispatch_queue_create("com.apple.iTunesCloud.ICDeviceInfo.deviceNameUpdateQueue", v4);
    deviceNameUpdateQueue = v3->_deviceNameUpdateQueue;
    v3->_deviceNameUpdateQueue = v5;
  }

  return v3;
}

- (BOOL)hasCellularDataCapability
{
  hasCellularDataCapabilityNumber = self->_hasCellularDataCapabilityNumber;
  if (!hasCellularDataCapabilityNumber)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:MGGetBoolAnswer()];
    v5 = self->_hasCellularDataCapabilityNumber;
    self->_hasCellularDataCapabilityNumber = v4;

    hasCellularDataCapabilityNumber = self->_hasCellularDataCapabilityNumber;
  }

  return [(NSNumber *)hasCellularDataCapabilityNumber BOOLValue];
}

- (BOOL)isInternalBuild
{
  isInternalBuildNumber = self->_isInternalBuildNumber;
  if (!isInternalBuildNumber)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:MGGetBoolAnswer()];
    v5 = self->_isInternalBuildNumber;
    self->_isInternalBuildNumber = v4;

    isInternalBuildNumber = self->_isInternalBuildNumber;
  }

  return [(NSNumber *)isInternalBuildNumber BOOLValue];
}

- (BOOL)supportsMultipleITunesAccounts
{
  if ([(ICDeviceInfo *)self isAppleTV])
  {
    return 1;
  }

  return [(ICDeviceInfo *)self isAudioAccessory];
}

- (BOOL)hasWiFiCapability
{
  hasWiFiCapabilityValue = self->_hasWiFiCapabilityValue;
  if (!hasWiFiCapabilityValue)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:MGGetBoolAnswer()];
    v5 = self->_hasWiFiCapabilityValue;
    self->_hasWiFiCapabilityValue = v4;

    hasWiFiCapabilityValue = self->_hasWiFiCapabilityValue;
  }

  return [(NSNumber *)hasWiFiCapabilityValue BOOLValue];
}

- (BOOL)isPhoneNumberAccessRestricted
{
  isPhoneNumberAccessRestrictedValue = self->_isPhoneNumberAccessRestrictedValue;
  if (!isPhoneNumberAccessRestrictedValue)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:MGGetBoolAnswer()];
    v5 = self->_isPhoneNumberAccessRestrictedValue;
    self->_isPhoneNumberAccessRestrictedValue = v4;

    isPhoneNumberAccessRestrictedValue = self->_isPhoneNumberAccessRestrictedValue;
  }

  return [(NSNumber *)isPhoneNumberAccessRestrictedValue BOOLValue];
}

- (BOOL)hasTelephonyCapability
{
  hasTelephonyCapabilityNumber = self->_hasTelephonyCapabilityNumber;
  if (!hasTelephonyCapabilityNumber)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:MGGetBoolAnswer()];
    v5 = self->_hasTelephonyCapabilityNumber;
    self->_hasTelephonyCapabilityNumber = v4;

    hasTelephonyCapabilityNumber = self->_hasTelephonyCapabilityNumber;
  }

  return [(NSNumber *)hasTelephonyCapabilityNumber BOOLValue];
}

- (NSString)buildVersion
{
  buildVersion = self->_buildVersion;
  if (!buildVersion)
  {
    v4 = MGCopyAnswer();
    v5 = self->_buildVersion;
    self->_buildVersion = v4;

    buildVersion = self->_buildVersion;
  }

  return buildVersion;
}

- (NSString)currentLocale
{
  currentLocale = self->_currentLocale;
  if (!currentLocale)
  {
    v4 = CFPreferencesCopyValue(@"AppleLocale", *MEMORY[0x1E695E890], *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
    v5 = self->_currentLocale;
    self->_currentLocale = v4;

    currentLocale = self->_currentLocale;
  }

  return currentLocale;
}

- (NSString)productPlatform
{
  v3 = +[ICDefaults standardDefaults];
  productPlatformOverride = [v3 productPlatformOverride];

  if (!productPlatformOverride)
  {
    if ([(ICDeviceInfo *)self isWatch])
    {
      productPlatformOverride = @"watchOS";
    }

    else if ([(ICDeviceInfo *)self isMac])
    {
      productPlatformOverride = @"macOS";
    }

    else if ([(ICDeviceInfo *)self isAppleTV])
    {
      productPlatformOverride = @"tvOS";
    }

    else
    {
      productPlatformOverride = @"iOS";
    }
  }

  return productPlatformOverride;
}

- (NSString)deviceModel
{
  v3 = +[ICDefaults standardDefaults];
  deviceModelOverride = [v3 deviceModelOverride];

  deviceModel = deviceModelOverride;
  if (!deviceModelOverride)
  {
    deviceModel = self->_deviceModel;
    if (!deviceModel)
    {
      v6 = MGCopyAnswer();
      v7 = self->_deviceModel;
      self->_deviceModel = v6;

      deviceModel = self->_deviceModel;
    }
  }

  v8 = deviceModel;

  return v8;
}

- (int)deviceClass
{
  v3 = +[ICDefaults standardDefaults];
  deviceClassOverride = [v3 deviceClassOverride];

  if (deviceClassOverride)
  {
    intValue = [deviceClassOverride intValue];
  }

  else
  {
    intValue = [(ICDeviceInfo *)self _gestaltDeviceClass];
  }

  v6 = intValue;

  return v6;
}

- (unsigned)fairPlayDeviceType
{
  v3 = +[ICDefaults standardDefaults];
  fairPlayDeviceTypeOverride = [v3 fairPlayDeviceTypeOverride];

  if (fairPlayDeviceTypeOverride)
  {
    unsignedIntValue = [fairPlayDeviceTypeOverride unsignedIntValue];
  }

  else
  {
    fairPlayDeviceType = self->_fairPlayDeviceType;
    p_fairPlayDeviceType = &self->_fairPlayDeviceType;
    unsignedIntValue = fairPlayDeviceType;
    if (!fairPlayDeviceType)
    {
      v9 = 0;
      CjHbHx(p_fairPlayDeviceType, &v9);
      unsignedIntValue = *p_fairPlayDeviceType;
    }
  }

  return unsignedIntValue;
}

- (NSString)deviceGUID
{
  os_unfair_lock_lock(&self->_lock);
  deviceGUID = self->_deviceGUID;
  if (!deviceGUID)
  {
    v4 = MGCopyAnswer();
    v5 = self->_deviceGUID;
    self->_deviceGUID = v4;

    deviceGUID = self->_deviceGUID;
  }

  v6 = deviceGUID;
  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (NSString)productVersion
{
  v3 = +[ICDefaults standardDefaults];
  productVersionOverride = [v3 productVersionOverride];

  productVersion = productVersionOverride;
  if (!productVersionOverride)
  {
    productVersion = self->_productVersion;
    if (!productVersion)
    {
      v6 = _CFCopySystemVersionDictionary();
      v7 = [v6 objectForKey:*MEMORY[0x1E695E208]];
      v8 = self->_productVersion;
      self->_productVersion = v7;

      productVersion = self->_productVersion;
    }
  }

  v9 = productVersion;

  return v9;
}

- (NSString)hardwarePlatform
{
  v3 = +[ICDefaults standardDefaults];
  hardwarePlatformOverride = [v3 hardwarePlatformOverride];

  hardwarePlatform = hardwarePlatformOverride;
  if (!hardwarePlatformOverride)
  {
    hardwarePlatform = self->_hardwarePlatform;
    if (!hardwarePlatform)
    {
      v6 = MGCopyAnswer();
      v7 = self->_hardwarePlatform;
      self->_hardwarePlatform = v6;

      hardwarePlatform = self->_hardwarePlatform;
    }
  }

  v8 = hardwarePlatform;

  return v8;
}

- (NSString)rawDeviceModel
{
  rawDeviceModel = self->_rawDeviceModel;
  if (!rawDeviceModel)
  {
    v4 = MGCopyAnswer();
    v5 = self->_rawDeviceModel;
    self->_rawDeviceModel = v4;

    rawDeviceModel = self->_rawDeviceModel;
  }

  return rawDeviceModel;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v19 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  if ([path isEqualToString:@"iTunesStoreDemoMode"])
  {
    v9 = [changeCopy objectForKey:*MEMORY[0x1E696A4F0]];
    v10 = [changeCopy objectForKey:*MEMORY[0x1E696A500]];
    v11 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = 138543874;
      selfCopy = self;
      v15 = 2114;
      v16 = v10;
      v17 = 2114;
      v18 = v9;
      _os_log_impl(&dword_1B4491000, v11, OS_LOG_TYPE_ERROR, "%{public}@ iTunes store demo mode has changed from %{public}@ --> %{public}@ - posting notification", &v13, 0x20u);
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"ICDeviceInfoStoreDemoModeDidChangeNotification" object:self];
  }
}

- (BOOL)supportsMusicStreaming
{
  supportsMusicStreamingValue = self->_supportsMusicStreamingValue;
  if (!supportsMusicStreamingValue)
  {
    if ([(ICDeviceInfo *)self isWatch])
    {
      v4 = [MEMORY[0x1E696AD98] numberWithBool:MGGetBoolAnswer()];
    }

    else
    {
      v4 = MEMORY[0x1E695E118];
    }

    v5 = self->_supportsMusicStreamingValue;
    self->_supportsMusicStreamingValue = v4;

    supportsMusicStreamingValue = self->_supportsMusicStreamingValue;
  }

  return [(NSNumber *)supportsMusicStreamingValue BOOLValue];
}

- (NSString)deviceClassName
{
  deviceClassName = self->_deviceClassName;
  if (!deviceClassName)
  {
    v5 = MGCopyAnswer();
    v6 = self->_deviceClassName;
    self->_deviceClassName = v5;

    deviceClassName = self->_deviceClassName;
    v2 = vars8;
  }

  if (deviceClassName)
  {
    v7 = deviceClassName;
  }

  else
  {
    v7 = @"unknown";
  }

  return v7;
}

- (int)screenClass
{
  screenClassValue = self->_screenClassValue;
  if (!screenClassValue)
  {
    v4 = MGCopyAnswer();
    v5 = self->_screenClassValue;
    self->_screenClassValue = v4;

    v6 = objc_opt_respondsToSelector();
    screenClassValue = self->_screenClassValue;
    if ((v6 & 1) == 0)
    {
      self->_screenClassValue = &unk_1F2C92170;

      screenClassValue = self->_screenClassValue;
    }
  }

  return [(NSNumber *)screenClassValue intValue];
}

- (BOOL)has1080pCapability
{
  has1080pCapabilityValue = self->_has1080pCapabilityValue;
  if (!has1080pCapabilityValue)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:MGGetBoolAnswer()];
    v5 = self->_has1080pCapabilityValue;
    self->_has1080pCapabilityValue = v4;

    has1080pCapabilityValue = self->_has1080pCapabilityValue;
  }

  return [(NSNumber *)has1080pCapabilityValue BOOLValue];
}

- (BOOL)has720pCapability
{
  has720pCapabilityValue = self->_has720pCapabilityValue;
  if (!has720pCapabilityValue)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:MGGetBoolAnswer()];
    v5 = self->_has720pCapabilityValue;
    self->_has720pCapabilityValue = v4;

    has720pCapabilityValue = self->_has720pCapabilityValue;
  }

  return [(NSNumber *)has720pCapabilityValue BOOLValue];
}

- (BOOL)hasWAPICapability
{
  hasWAPICapabilityValue = self->_hasWAPICapabilityValue;
  if (!hasWAPICapabilityValue)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:MGGetBoolAnswer()];
    v5 = self->_hasWAPICapabilityValue;
    self->_hasWAPICapabilityValue = v4;

    hasWAPICapabilityValue = self->_hasWAPICapabilityValue;
  }

  return [(NSNumber *)hasWAPICapabilityValue BOOLValue];
}

- (CGSize)mainScreenSize
{
  height = self->_mainScreenSize.height;
  if (height == 0.0 || (width = self->_mainScreenSize.width, width == 0.0))
  {
    v5 = MGCopyAnswer();
    v6 = MGCopyAnswer();
    [v5 floatValue];
    self->_mainScreenSize.width = v7;
    [v6 floatValue];
    self->_mainScreenSize.height = v8;

    width = self->_mainScreenSize.width;
    height = self->_mainScreenSize.height;
  }

  result.height = height;
  result.width = width;
  return result;
}

- (NSData)macAddressData
{
  if (!self->_macAddressData)
  {
    if (![(ICDeviceInfo *)self isMac])
    {
      macAddressData = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(&macAddressData->super, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v4 = "Getting MAC address is not supported on this platform";
LABEL_17:
        _os_log_impl(&dword_1B4491000, &macAddressData->super, OS_LOG_TYPE_DEFAULT, v4, buf, 2u);
      }

LABEL_20:

      goto LABEL_21;
    }

    v15 = 0;
    v14 = 0;
    *buf = 0;
    if (FindEthernetInterfacesMatchingBSDName(&v15, "en0"))
    {
      IOObjectRelease(v15);
      v15 = 0;
    }

    else
    {
      FirstEthernetAddress = GetFirstEthernetAddress(v15, 1, buf);
      IOObjectRelease(v15);
      v15 = 0;
      if (!FirstEthernetAddress)
      {
        goto LABEL_18;
      }
    }

    if (FindEthernetInterfacesMatchingBSDName(&v15, "en1"))
    {
      IOObjectRelease(v15);
      v15 = 0;
    }

    else
    {
      v6 = GetFirstEthernetAddress(v15, 0, buf);
      IOObjectRelease(v15);
      v15 = 0;
      if (!v6)
      {
        goto LABEL_18;
      }
    }

    if (FindEthernetInterfacesMatchingBSDName(&v15, "en0"))
    {
      IOObjectRelease(v15);
      goto LABEL_14;
    }

    v7 = GetFirstEthernetAddress(v15, 0, buf);
    IOObjectRelease(v15);
    if (v7)
    {
LABEL_14:
      v11 = GetFirstInterfaceMACAddress_sMACAddress;
      v12 = word_1EB89F015;
      if (GetFirstInterfaceMACAddress_sAddressIsValid != 1)
      {
        macAddressData = os_log_create("com.apple.amp.iTunesCloud", "Default");
        if (os_log_type_enabled(&macAddressData->super, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v4 = "Failed to obtain device MAC address";
          goto LABEL_17;
        }

        goto LABEL_20;
      }

LABEL_19:
      v8 = [MEMORY[0x1E695DEF0] dataWithBytes:&v11 length:6];
      macAddressData = self->_macAddressData;
      self->_macAddressData = v8;
      goto LABEL_20;
    }

LABEL_18:
    GetFirstInterfaceMACAddress_sAddressIsValid = 1;
    GetFirstInterfaceMACAddress_sMACAddress = *buf;
    word_1EB89F015 = v14;
    v11 = *buf;
    v12 = v14;
    goto LABEL_19;
  }

LABEL_21:
  v9 = self->_macAddressData;

  return v9;
}

- (NSString)macAddress
{
  macAddressData = [(ICDeviceInfo *)self macAddressData];
  if (macAddressData)
  {
    string = [MEMORY[0x1E696AD60] string];
    bytes = [macAddressData bytes];
    if ([macAddressData length])
    {
      v5 = 0;
      do
      {
        [string appendFormat:@"%02X", *(bytes + v5++)];
      }

      while ([macAddressData length] > v5);
    }

    v6 = [string copy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)serialNumber
{
  serialNumber = self->_serialNumber;
  if (!serialNumber)
  {
    v4 = MGCopyAnswer();
    v5 = self->_serialNumber;
    self->_serialNumber = v4;

    serialNumber = self->_serialNumber;
  }

  return serialNumber;
}

- (NSString)deviceName
{
  if (deviceName_onceToken != -1)
  {
    dispatch_once(&deviceName_onceToken, &__block_literal_global_56_13774);
  }

  v3 = deviceName_deviceName;

  return v3;
}

void __26__ICDeviceInfo_deviceName__block_invoke()
{
  v0 = MGCopyAnswer();
  v1 = deviceName_deviceName;
  deviceName_deviceName = v0;

  if (!deviceName_deviceName)
  {
    deviceName_deviceName = @"Unknown";
  }
}

- (NSString)name
{
  if ([MEMORY[0x1E69B1418] hasBoolEntitlement:@"com.apple.developer.device-information.user-assigned-device-name"])
  {
    *buf = 0;
    v9 = buf;
    v10 = 0x3032000000;
    v11 = __Block_byref_object_copy__13785;
    v12 = __Block_byref_object_dispose__13786;
    v13 = 0;
    deviceNameUpdateQueue = self->_deviceNameUpdateQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __20__ICDeviceInfo_name__block_invoke;
    v7[3] = &unk_1E7BFA430;
    v7[4] = self;
    v7[5] = buf;
    dispatch_sync(deviceNameUpdateQueue, v7);
    deviceName = *(v9 + 5);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v5 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_ERROR, "User assigned name requested without entitlement. Returning generic device name.", buf, 2u);
    }

    deviceName = [(ICDeviceInfo *)self deviceName];
  }

  return deviceName;
}

void __20__ICDeviceInfo_name__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2[14])
  {
    v3 = MGCopyAnswer();
    v4 = *(a1 + 32);
    v5 = *(v4 + 112);
    *(v4 + 112) = v3;

    v6 = atomic_exchange((*(a1 + 32) + 8), 1u);
    v2 = *(a1 + 32);
    if ((v6 & 1) == 0)
    {
      objc_initWeak(&location, v2);
      v7 = *(a1 + 32);
      v8 = *(v7 + 240);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __20__ICDeviceInfo_name__block_invoke_2;
      block[3] = &unk_1E7BF80F8;
      block[4] = v7;
      objc_copyWeak(&v11, &location);
      dispatch_async(v8, block);
      objc_destroyWeak(&v11);
      objc_destroyWeak(&location);
      v2 = *(a1 + 32);
    }
  }

  if (v2[14])
  {
    v9 = v2[14];
  }

  else
  {
    v9 = @"Unknown";
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v9);
}

void __20__ICDeviceInfo_name__block_invoke_2(uint64_t a1)
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = @"UserAssignedDeviceName";
  [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];
  objc_copyWeak(&v2, (a1 + 40));
  *(*(a1 + 32) + 16) = MGRegisterForUpdates();
  objc_destroyWeak(&v2);
}

void __20__ICDeviceInfo_name__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[14];
    WeakRetained[14] = 0;
    v3 = WeakRetained;

    WeakRetained = v3;
  }
}

- (NSData)deviceFairPlayGUIDData
{
  v10[3] = *MEMORY[0x1E69E9840];
  deviceGUIDData = self->_deviceGUIDData;
  if (!deviceGUIDData)
  {
    deviceGUID = [(ICDeviceInfo *)self deviceGUID];
    v5 = deviceGUID;
    if (deviceGUID)
    {
      memset(v10, 0, 24);
      ICFairPlayGetHardwareInfoFromDeviceUDID(deviceGUID, v10);
      if (!v6)
      {
        v7 = [MEMORY[0x1E695DEF0] dataWithBytes:v10 + 4 length:LODWORD(v10[0])];
        v8 = self->_deviceGUIDData;
        self->_deviceGUIDData = v7;
      }
    }

    deviceGUIDData = self->_deviceGUIDData;
  }

  return deviceGUIDData;
}

- (NSString)systemReleaseType
{
  systemReleaseType = self->_systemReleaseType;
  if (!systemReleaseType)
  {
    v4 = MGCopyAnswer();
    v5 = self->_systemReleaseType;
    self->_systemReleaseType = v4;

    systemReleaseType = self->_systemReleaseType;
  }

  return systemReleaseType;
}

- (void)dealloc
{
  if ((atomic_exchange(&self->_hasRegisteredForNameNotifications._Value, 1u) & 1) != 0 && self->_nameNotificationToken)
  {
    MGCancelNotifications();
  }

  v3.receiver = self;
  v3.super_class = ICDeviceInfo;
  [(ICDeviceInfo *)&v3 dealloc];
}

@end