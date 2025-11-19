@interface ICDelegationServiceSecuritySettings
+ (void)getDeviceReceiverSettingsWithCompletion:(id)a3;
+ (void)getDeviceSenderSettingsForReceiverName:(id)a3 securityMode:(int64_t)a4 completion:(id)a5;
- (id)_init;
- (id)description;
@end

@implementation ICDelegationServiceSecuritySettings

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = v5;
  if (self->_password)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v8 = [v3 stringWithFormat:@"<%@ %p securityMode: %li hasPassword: %@>", v5, self, self->_securityMode, v7];

  return v8;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = ICDelegationServiceSecuritySettings;
  return [(ICDelegationServiceSecuritySettings *)&v3 init];
}

+ (void)getDeviceSenderSettingsForReceiverName:(id)a3 securityMode:(int64_t)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a5;
  if (a4 == 4)
  {
    if (getDeviceSenderSettingsForReceiverName_securityMode_completion__sOnceToken != -1)
    {
      dispatch_once(&getDeviceSenderSettingsForReceiverName_securityMode_completion__sOnceToken, &__block_literal_global_17);
    }

    v10 = v8;
    MRMediaRemoteGetSavedAVRoutePassword();
  }

  else
  {
    v9 = [[ICDelegationServiceSecuritySettings alloc] _init];
    v9[1] = a4;
    (*(v8 + 2))(v8, v9, 0);
  }
}

void __102__ICDelegationServiceSecuritySettings_getDeviceSenderSettingsForReceiverName_securityMode_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = [[ICDelegationServiceSecuritySettings alloc] _init];
  *(v4 + 1) = *(a1 + 40);
  objc_storeStrong(v4 + 2, a2);
  (*(*(a1 + 32) + 16))();
}

uint64_t __102__ICDelegationServiceSecuritySettings_getDeviceSenderSettingsForReceiverName_securityMode_completion___block_invoke()
{
  v0 = dispatch_queue_create("com.apple.iTunesCloud.ICDelegationServiceSecuritySettings.senderSerialQueue", 0);
  v1 = getDeviceSenderSettingsForReceiverName_securityMode_completion__sSerialQueue;
  getDeviceSenderSettingsForReceiverName_securityMode_completion__sSerialQueue = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (void)getDeviceReceiverSettingsWithCompletion:(id)a3
{
  v3 = a3;
  if (getDeviceReceiverSettingsWithCompletion__sOnceToken != -1)
  {
    dispatch_once(&getDeviceReceiverSettingsWithCompletion__sOnceToken, &__block_literal_global_31933);
  }

  v5 = v3;
  v4 = v3;
  MRMediaRemoteGetReceiverAirPlaySecuritySettings();
}

void __79__ICDelegationServiceSecuritySettings_getDeviceReceiverSettingsWithCompletion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    SecurityMode = MRAVAirPlaySecuritySettingsGetSecurityMode();
    if (SecurityMode > 2)
    {
      if (SecurityMode == 3)
      {
        v7 = 0;
        v6 = 3;
      }

      else if (SecurityMode == 4)
      {
        v7 = MEMORY[0x1B8C77670](a2);
        v6 = 4;
      }

      else
      {
        v6 = 0;
        v7 = 0;
      }
    }

    else
    {
      v5 = 2;
      if (SecurityMode != 2)
      {
        v5 = 0;
      }

      if (SecurityMode == 1)
      {
        v6 = 1;
      }

      else
      {
        v6 = v5;
      }

      v7 = 0;
    }

    v15 = +[ICDeviceInfo currentDeviceInfo];
    if ((([v15 isAppleTV] & 1) != 0 || objc_msgSend(v15, "isAudioAccessory")) && AirPlaySupportLibraryCore() && getAPSSettingsGetInt64SymbolLoc())
    {
      Int64SymbolLoc = getAPSSettingsGetInt64SymbolLoc();
      if (!Int64SymbolLoc)
      {
        v13 = [MEMORY[0x1E696AAA8] currentHandler];
        v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"int64_t soft_APSSettingsGetInt64(CFStringRef, OSStatus *)"}];
        [v13 handleFailureInFunction:v14 file:@"ICDelegationServiceSecuritySettings.m" lineNumber:21 description:{@"%s", dlerror()}];

        __break(1u);
        return;
      }

      if (Int64SymbolLoc(@"accessControlLevel", 0) >= 1)
      {

        v7 = 0;
        v6 = 1;
      }
    }

    v10 = [[ICDelegationServiceSecuritySettings alloc] _init];
    v11 = v10[2];
    v10[1] = v6;
    v10[2] = v7;
    v12 = v7;

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v8 = *(a1 + 32);
    v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:0 userInfo:0];
    (*(v8 + 16))(v8, 0, v15);
  }
}

uint64_t __79__ICDelegationServiceSecuritySettings_getDeviceReceiverSettingsWithCompletion___block_invoke()
{
  v0 = dispatch_queue_create("com.apple.iTunesCloud.ICDelegationServiceSecuritySettings.receiverSerialQueue", 0);
  v1 = getDeviceReceiverSettingsWithCompletion__sSerialQueue;
  getDeviceReceiverSettingsWithCompletion__sSerialQueue = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end