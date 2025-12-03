@interface BluetoothDevice(SiriClientAdditions)
- (BOOL)ac_isEyesFree;
- (uint64_t)ac_isBluetoothVehicle;
@end

@implementation BluetoothDevice(SiriClientAdditions)

- (BOOL)ac_isEyesFree
{
  v12[2] = *MEMORY[0x1E69E9840];
  v2 = [self getServiceSetting:1 key:@"BT_KEY_SIRI_EYESFREE_MODE"];
  if ([v2 BOOLValue])
  {

LABEL_4:
    v4 = 1;
    goto LABEL_9;
  }

  v3 = AFPreferencesAlwaysEyesFreeEnabled();

  if (v3)
  {
    goto LABEL_4;
  }

  if (![self isServiceSupported:128] || (v11 = 0, v12[0] = 0, *(v12 + 7) = 0, objc_msgSend(self, "device"), BTDeviceGetAddressString()) || (v10 = 0, *bytes = 0, BTDeviceAddressFromString()) || (v7 = CFDataCreate(0, bytes, 6)) == 0)
  {
    v4 = 0;
  }

  else
  {
    v8 = v7;
    v4 = IAPBluetoothDeviceMode() == 2;
    CFRelease(v8);
  }

LABEL_9:
  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

- (uint64_t)ac_isBluetoothVehicle
{
  [self device];
  DeviceType = BTDeviceGetDeviceType();
  result = 0;
  if (!DeviceType)
  {
    return AFPreferencesAlwaysEyesFreeEnabled();
  }

  return result;
}

@end