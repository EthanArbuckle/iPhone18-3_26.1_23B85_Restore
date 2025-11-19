@interface NSProcessInfo(SafariCoreExtras)
- (id)_safari_operatingSystemVersionStringFromOperatingSystemVersion:()SafariCoreExtras;
- (id)safari_deviceUDID;
- (id)safari_operatingSystemVersionString;
- (uint64_t)safari_isPasswordManagerTestMode;
@end

@implementation NSProcessInfo(SafariCoreExtras)

- (id)safari_operatingSystemVersionString
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__NSProcessInfo_SafariCoreExtras__safari_operatingSystemVersionString__block_invoke;
  block[3] = &unk_1E7CF16E0;
  block[4] = a1;
  if (safari_operatingSystemVersionString_onceToken != -1)
  {
    dispatch_once(&safari_operatingSystemVersionString_onceToken, block);
  }

  return safari_operatingSystemVersionString_osVersionString;
}

- (uint64_t)safari_isPasswordManagerTestMode
{
  if (safari_isPasswordManagerTestMode_onceToken != -1)
  {
    [NSProcessInfo(SafariCoreExtras) safari_isPasswordManagerTestMode];
  }

  return safari_isPasswordManagerTestMode_isTestMode;
}

- (id)_safari_operatingSystemVersionStringFromOperatingSystemVersion:()SafariCoreExtras
{
  v3 = a3[2];
  if (v3)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld.%ld.%ld", *a3, a3[1], v3];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld.%ld", *a3, a3[1], v6];
  }
  v4 = ;

  return v4;
}

- (id)safari_deviceUDID
{
  if (safari_deviceUDID_onceToken != -1)
  {
    [NSProcessInfo(SafariCoreExtras) safari_deviceUDID];
  }

  v1 = safari_deviceUDID_udid;

  return v1;
}

@end