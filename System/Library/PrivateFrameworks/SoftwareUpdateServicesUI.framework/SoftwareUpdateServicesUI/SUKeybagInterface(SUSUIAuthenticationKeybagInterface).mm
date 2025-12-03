@interface SUKeybagInterface(SUSUIAuthenticationKeybagInterface)
- (BOOL)authenticate:()SUSUIAuthenticationKeybagInterface;
- (double)backOffTime;
- (uint64_t)lockDevice;
@end

@implementation SUKeybagInterface(SUSUIAuthenticationKeybagInterface)

- (uint64_t)lockDevice
{
  location[2] = self;
  location[1] = a2;
  location[0] = SUSUILogKeybagInterface();
  v6 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    type = v6;
    __os_log_helper_16_0_0(v5);
    _os_log_impl(&dword_26AC54000, log, type, "attemptAuthentication: blocked", v5, 2u);
  }

  objc_storeStrong(location, 0);
  return MKBLockDeviceNow();
}

- (BOOL)authenticate:()SUSUIAuthenticationKeybagInterface
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  [location[0] dataUsingEncoding:4];
  v5 = MKBUnlockDevice();
  v4 = v5 == 0;
  objc_storeStrong(location, 0);
  return v4;
}

- (double)backOffTime
{
  v10[2] = self;
  v10[1] = a2;
  v10[0] = 0;
  v11 = MKBGetDeviceLockStateInfo();
  v7 = v11;
  v2 = v11;
  v9 = v7;
  v3 = [v9 objectForKeyedSubscript:*MEMORY[0x277D28AE8]];
  v4 = v10[0];
  v10[0] = v3;
  MEMORY[0x277D82BD8](v4);
  [v10[0] doubleValue];
  v8 = v5;
  objc_storeStrong(&v9, 0);
  objc_storeStrong(v10, 0);
  return v8;
}

@end