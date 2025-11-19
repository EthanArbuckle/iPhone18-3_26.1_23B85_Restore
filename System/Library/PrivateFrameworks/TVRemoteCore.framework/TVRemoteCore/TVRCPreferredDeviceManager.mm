@interface TVRCPreferredDeviceManager
+ (id)sharedInstance;
- (TVRCPreferredDevice)preferredDevice;
- (double)preferredDeviceSearchTimeout;
- (id)preferredDeviceIdentifier;
- (void)preferredDevice;
- (void)setPreferredDevice:(id)a3;
@end

@implementation TVRCPreferredDeviceManager

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__TVRCPreferredDeviceManager_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken_2 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_2, block);
  }

  v2 = sharedInstance_sharedInstance_1;

  return v2;
}

uint64_t __44__TVRCPreferredDeviceManager_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_sharedInstance_1 = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (id)preferredDeviceIdentifier
{
  v2 = [(TVRCPreferredDeviceManager *)self preferredDevice];
  v3 = [v2 identifier];

  return v3;
}

- (TVRCPreferredDevice)preferredDevice
{
  v2 = CFPreferencesCopyAppValue(@"TVRCPreferredDevicerKey", @"com.apple.TVRemoteCore");
  if (v2)
  {
    v9 = 0;
    v3 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v2 error:&v9];
    v4 = v9;
    if (v4)
    {
      v5 = _TVRCPreferredDeviceLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [(TVRCPreferredDeviceManager *)v4 preferredDevice];
      }

      v6 = 0;
    }

    else
    {
      v6 = v3;
    }
  }

  else
  {
    v4 = _TVRCPreferredDeviceLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_26CF7F000, v4, OS_LOG_TYPE_DEFAULT, "Could not find a preferred device", v8, 2u);
    }

    v6 = 0;
  }

  return v6;
}

- (double)preferredDeviceSearchTimeout
{
  v2 = CFPreferencesCopyAppValue(@"TVRCDeviceTimeoutKey", @"com.apple.TVRemoteCore");
  v3 = v2;
  if (v2)
  {
    [v2 floatValue];
    v5 = v4;
  }

  else
  {
    v6 = _TVRCPreferredDeviceLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_26CF7F000, v6, OS_LOG_TYPE_DEFAULT, "Could not find a preferred device timeout. Returning default value for timeout.", v8, 2u);
    }

    v5 = 1.6;
  }

  return v5;
}

- (void)setPreferredDevice:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _TVRCPreferredDeviceLog();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "Removing preferred device identifier keys", buf, 2u);
    }

    CFPreferencesSetAppValue(@"TVRCDeviceIdentifierKey", 0, @"com.apple.TVRemoteCore");
    CFPreferencesSetAppValue(@"TVRCMostRecentlyConnectedIDKey", 0, @"com.apple.TVRemoteCore");
    v7 = [[TVRCPreferredDevice alloc] initFromTVRCDevice:v4];
    device = self->_device;
    self->_device = v7;

    v9 = _TVRCPreferredDeviceLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = self->_device;
      *buf = 138543362;
      v19 = v10;
      _os_log_impl(&dword_26CF7F000, v9, OS_LOG_TYPE_DEFAULT, "Setting preferred device %{public}@", buf, 0xCu);
    }

    v11 = [(TVRCPreferredDeviceManager *)self device];

    if (v11)
    {
      v12 = self->_device;
      v17 = 0;
      v13 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v12 requiringSecureCoding:1 error:&v17];
      v14 = v17;
      if (v14)
      {
        v15 = _TVRCPreferredDeviceLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          [(TVRCSiriRemoteFindingManager *)v14 _updatePairedRemoteInfo:v15];
        }
      }

      else
      {
        CFPreferencesSetAppValue(@"TVRCPreferredDevicerKey", v13, @"com.apple.TVRemoteCore");
        CFPreferencesSetAppValue(@"TVRCDeviceTimeoutKey", &unk_287E66D00, @"com.apple.TVRemoteCore");
      }
    }
  }

  else
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "Removing preferred device", buf, 2u);
    }

    CFPreferencesSetAppValue(@"TVRCPreferredDevicerKey", 0, @"com.apple.TVRemoteCore");
    CFPreferencesSetAppValue(@"TVRCDeviceIdentifierKey", 0, @"com.apple.TVRemoteCore");
    CFPreferencesSetAppValue(@"TVRCDeviceTimeoutKey", 0, @"com.apple.TVRemoteCore");
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)preferredDevice
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_26CF7F000, a2, OS_LOG_TYPE_ERROR, "Unarchiving error - %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end