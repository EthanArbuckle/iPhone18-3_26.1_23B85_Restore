@interface WBSDevice
+ (WBSDevice)currentDevice;
- (BOOL)hasPasscode;
- (NSString)chipName;
- (NSString)deviceTypeIdentifier;
- (NSString)modelName;
- (NSString)serialNumber;
- (NSString)userAssignedName;
- (NSString)userUniqueDeviceIdentifier;
- (WBSDevice)init;
- (void)dealloc;
- (void)registerForNotifications;
- (void)test_setUserAssignedName:(id)a3;
- (void)unregisterForNotifications;
@end

@implementation WBSDevice

+ (WBSDevice)currentDevice
{
  if (currentDevice_onceToken != -1)
  {
    +[WBSDevice currentDevice];
  }

  v3 = currentDevice_currentDevice;

  return v3;
}

uint64_t __26__WBSDevice_currentDevice__block_invoke()
{
  v0 = objc_alloc_init(WBSDevice);
  v1 = currentDevice_currentDevice;
  currentDevice_currentDevice = v0;

  v2 = currentDevice_currentDevice;

  return [v2 registerForNotifications];
}

- (void)registerForNotifications
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (!self->_notificationToken)
  {
    objc_initWeak(&location, self);
    v7[0] = @"UserAssignedDeviceName";
    [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
    v3 = MEMORY[0x1E69E96A0];
    objc_copyWeak(&v5, &location);
    self->_notificationToken = MGRegisterForUpdates();

    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (WBSDevice)init
{
  v5.receiver = self;
  v5.super_class = WBSDevice;
  v2 = [(WBSDevice *)&v5 init];
  if (v2)
  {
    v2->_deviceClass = MGGetSInt32Answer();
    v3 = v2;
  }

  return v2;
}

- (NSString)userAssignedName
{
  userAssignedName = self->_userAssignedName;
  if (!userAssignedName)
  {
    v4 = MGCopyAnswer();
    v5 = self->_userAssignedName;
    self->_userAssignedName = v4;

    userAssignedName = self->_userAssignedName;
    if (!userAssignedName)
    {
      deviceClass = self->_deviceClass;
      if (deviceClass > 3)
      {
        if (deviceClass == 4)
        {
          v7 = @"Apple TV";
          goto LABEL_12;
        }

        if (deviceClass == 6)
        {
          v7 = @"Apple Watch";
          goto LABEL_12;
        }
      }

      else
      {
        if (deviceClass == 1)
        {
          v7 = @"iPhone";
          goto LABEL_12;
        }

        if (deviceClass == 3)
        {
          v7 = @"iPad";
LABEL_12:
          v8 = _WBSLocalizedString(v7, &_WBSLocalizableStringsBundleOnceToken, &_WBSLocalizableStringsBundle);
          v9 = self->_userAssignedName;
          self->_userAssignedName = v8;
        }
      }

      userAssignedName = self->_userAssignedName;
    }
  }

  v10 = userAssignedName;

  return v10;
}

- (void)dealloc
{
  if (self->_notificationToken)
  {
    MGCancelNotifications();
  }

  v3.receiver = self;
  v3.super_class = WBSDevice;
  [(WBSDevice *)&v3 dealloc];
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

- (NSString)modelName
{
  modelName = self->_modelName;
  if (!modelName)
  {
    v4 = MGCopyAnswer();
    v5 = self->_modelName;
    self->_modelName = v4;

    modelName = self->_modelName;
  }

  return modelName;
}

- (NSString)chipName
{
  chipName = self->_chipName;
  if (!chipName)
  {
    v4 = MGCopyAnswer();
    v5 = self->_chipName;
    self->_chipName = v4;

    chipName = self->_chipName;
  }

  return chipName;
}

- (NSString)userUniqueDeviceIdentifier
{
  userUniqueDeviceIdentifier = self->_userUniqueDeviceIdentifier;
  if (!userUniqueDeviceIdentifier)
  {
    v4 = MGGetStringAnswer();
    v5 = self->_userUniqueDeviceIdentifier;
    self->_userUniqueDeviceIdentifier = v4;

    userUniqueDeviceIdentifier = self->_userUniqueDeviceIdentifier;
    if (!userUniqueDeviceIdentifier)
    {
      v6 = [MEMORY[0x1E696AFB0] UUID];
      v7 = [v6 UUIDString];
      v8 = self->_userUniqueDeviceIdentifier;
      self->_userUniqueDeviceIdentifier = v7;

      userUniqueDeviceIdentifier = self->_userUniqueDeviceIdentifier;
    }
  }

  v9 = userUniqueDeviceIdentifier;

  return v9;
}

- (BOOL)hasPasscode
{
  v2 = objc_alloc_init(MEMORY[0x1E696EE50]);
  v8 = 0;
  v3 = [v2 canEvaluatePolicy:2 error:&v8];
  v4 = v8;
  v5 = v4;
  v6 = (v3 & 1) != 0 || [v4 code] != -5;

  return v6;
}

void __37__WBSDevice_registerForNotifications__block_invoke(uint64_t a1, void *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v4 = [a2 isEqualToString:@"UserAssignedDeviceName"];
    WeakRetained = v6;
    if (v4)
    {
      v5 = MGCopyAnswer();
      [v6 _setUserAssignedName:v5];

      WeakRetained = v6;
    }
  }
}

- (void)unregisterForNotifications
{
  if (self->_notificationToken)
  {
    MGCancelNotifications();
  }
}

- (NSString)deviceTypeIdentifier
{
  deviceTypeIdentifier = self->_deviceTypeIdentifier;
  if (!deviceTypeIdentifier)
  {
    v4 = [MEMORY[0x1E6982C40] _typeOfCurrentDevice];
    v5 = [v4 identifier];
    v6 = self->_deviceTypeIdentifier;
    self->_deviceTypeIdentifier = v5;

    deviceTypeIdentifier = self->_deviceTypeIdentifier;
  }

  return deviceTypeIdentifier;
}

- (void)test_setUserAssignedName:(id)a3
{
  v4 = a3;
  if (+[WBSFeatureAvailability isInternalInstall])
  {
    [(WBSDevice *)self _setUserAssignedName:v4];
  }
}

@end