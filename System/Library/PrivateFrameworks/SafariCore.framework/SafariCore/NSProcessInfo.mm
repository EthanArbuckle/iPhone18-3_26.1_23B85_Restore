@interface NSProcessInfo
@end

@implementation NSProcessInfo

void __70__NSProcessInfo_SafariCoreExtras__safari_operatingSystemVersionString__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    [*(a1 + 32) operatingSystemVersion];
  }

  else
  {
    memset(v4, 0, sizeof(v4));
  }

  v2 = [v1 _safari_operatingSystemVersionStringFromOperatingSystemVersion:v4];
  v3 = safari_operatingSystemVersionString_osVersionString;
  safari_operatingSystemVersionString_osVersionString = v2;
}

void __67__NSProcessInfo_SafariCoreExtras__safari_isPasswordManagerTestMode__block_invoke()
{
  v0 = [MEMORY[0x1E696AE30] processInfo];
  v1 = [v0 environment];
  v2 = [v1 objectForKeyedSubscript:@"PASSWORD_MANAGER_TESTING"];

  if ([v2 BOOLValue])
  {
    safari_isPasswordManagerTestMode_isTestMode = +[WBSFeatureAvailability isInternalInstall];
  }
}

void __52__NSProcessInfo_SafariCoreExtras__safari_deviceUDID__block_invoke()
{
  v7 = *MEMORY[0x1E69E9840];
  v5.tv_sec = 0;
  v5.tv_nsec = 0;
  memset(v6, 0, sizeof(v6));
  if (gethostuuid(v6, &v5))
  {
    v0 = objc_alloc_init(MEMORY[0x1E696AFB0]);
  }

  else
  {
    v0 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v6];
  }

  v1 = v0;
  v2 = [v0 UUIDString];
  v3 = safari_deviceUDID_udid;
  safari_deviceUDID_udid = v2;

  v4 = *MEMORY[0x1E69E9840];
}

@end