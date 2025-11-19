@interface STYDeviceInfo
+ (BOOL)isMemoryConstrained;
+ (NSString)hardwareModel;
+ (NSString)osBuild;
+ (id)_determineHardwareModel;
+ (unint64_t)bootVolumeType;
@end

@implementation STYDeviceInfo

+ (unint64_t)bootVolumeType
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__STYDeviceInfo_bootVolumeType__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (bootVolumeType_onceToken != -1)
  {
    dispatch_once(&bootVolumeType_onceToken, block);
  }

  return bootVolumeType_bootVolumeType;
}

uint64_t __31__STYDeviceInfo_bootVolumeType__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _determineBootVolumeType];
  bootVolumeType_bootVolumeType = result;
  return result;
}

+ (NSString)hardwareModel
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__STYDeviceInfo_hardwareModel__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (hardwareModel_onceToken != -1)
  {
    dispatch_once(&hardwareModel_onceToken, block);
  }

  v2 = hardwareModel_model;

  return v2;
}

uint64_t __30__STYDeviceInfo_hardwareModel__block_invoke(uint64_t a1)
{
  hardwareModel_model = [*(a1 + 32) _determineHardwareModel];

  return MEMORY[0x2821F96F8]();
}

+ (NSString)osBuild
{
  if (osBuild_onceToken != -1)
  {
    +[STYDeviceInfo osBuild];
  }

  v3 = osBuild_osBuild;

  return v3;
}

void __24__STYDeviceInfo_osBuild__block_invoke()
{
  v2 = _CFCopySupplementalVersionDictionary();
  v0 = [v2 objectForKeyedSubscript:*MEMORY[0x277CBEC70]];
  v1 = osBuild_osBuild;
  osBuild_osBuild = v0;
}

+ (id)_determineHardwareModel
{
  size = 0;
  sysctlbyname("hw.model", 0, &size, 0, 0);
  if (size)
  {
    v2 = malloc_type_malloc(size, 0x100004077774924uLL);
    sysctlbyname("hw.model", v2, &size, 0, 0);
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:v2];
    free(v2);
  }

  else
  {
    v3 = @"model_name_unavailable";
  }

  return v3;
}

+ (BOOL)isMemoryConstrained
{
  if (isMemoryConstrained_onceToken != -1)
  {
    +[STYDeviceInfo isMemoryConstrained];
  }

  return isMemoryConstrained_isMemoryConstrained;
}

void __36__STYDeviceInfo_isMemoryConstrained__block_invoke()
{
  v15 = *MEMORY[0x277D85DE8];
  v11 = 8;
  v12 = 0;
  v0 = sysctlbyname("hw.memsize", &v12, &v11, 0, 0);
  if (v0)
  {
    v1 = v0;
    v2 = *__error();
    v3 = +[STYFrameworkHelper sharedHelper];
    v4 = [v3 logHandle];

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __36__STYDeviceInfo_isMemoryConstrained__block_invoke_cold_1(v2, v1, v4);
    }

    v5 = +[STYFrameworkHelper sharedHelper];
    v6 = [v5 logHandle];

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2656CE000, v6, OS_LOG_TYPE_DEFAULT, "Going ahead with default threshold", buf, 2u);
    }

LABEL_10:
    isMemoryConstrained_isMemoryConstrained = 1;
    goto LABEL_11;
  }

  v7 = v12;
  v8 = +[STYFrameworkHelper sharedHelper];
  v9 = [v8 logHandle];

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v14 = v7 >> 20;
    _os_log_impl(&dword_2656CE000, v9, OS_LOG_TYPE_DEFAULT, "physicalSizeinMB is %lld ", buf, 0xCu);
  }

  if (v7 >> 22 <= 0x1DA)
  {
    goto LABEL_10;
  }

LABEL_11:
  v10 = *MEMORY[0x277D85DE8];
}

void __36__STYDeviceInfo_isMemoryConstrained__block_invoke_cold_1(int a1, int a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5[0] = 67109634;
  v5[1] = a2;
  v6 = 1024;
  v7 = a1;
  v8 = 2080;
  v9 = strerror(a1);
  _os_log_error_impl(&dword_2656CE000, a3, OS_LOG_TYPE_ERROR, "Failed to retrieve memory size. return code : %d errNum : %d errStr: %s", v5, 0x18u);
  v4 = *MEMORY[0x277D85DE8];
}

@end