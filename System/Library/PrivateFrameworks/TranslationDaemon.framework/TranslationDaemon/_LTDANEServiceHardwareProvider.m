@interface _LTDANEServiceHardwareProvider
+ (BOOL)isAvailable;
+ (id)subType;
+ (void)logCapabilities;
@end

@implementation _LTDANEServiceHardwareProvider

+ (void)logCapabilities
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = _LTOSLogAssets();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v4[0] = 67109376;
    v4[1] = 1;
    v5 = 1024;
    v6 = 1;
    _os_log_impl(&dword_232E53000, v2, OS_LOG_TYPE_INFO, "ANE hardware provider capabilities MG:%{BOOL}i ANE:%{BOOL}i", v4, 0xEu);
  }

  v3 = *MEMORY[0x277D85DE8];
}

+ (BOOL)isAvailable
{
  if (isAvailable_once != -1)
  {
    +[_LTDANEServiceHardwareProvider isAvailable];
  }

  return isAvailable_result;
}

+ (id)subType
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41___LTDANEServiceHardwareProvider_subType__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (subType_once != -1)
  {
    dispatch_once(&subType_once, block);
  }

  v2 = subType_result;

  return v2;
}

@end