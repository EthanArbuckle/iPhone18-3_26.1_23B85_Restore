@interface SBWorkspaceLogUsageForAppleCare
@end

@implementation SBWorkspaceLogUsageForAppleCare

void ___SBWorkspaceLogUsageForAppleCare_block_invoke(uint64_t a1)
{
  v2 = NSHomeDirectory();
  v3 = [v2 stringByAppendingPathComponent:@"/Library/Logs/AppleSupport/general.log"];

  v4 = [MEMORY[0x277CCA9F8] fileHandleForWritingAtPath:v3];
  if (v4)
  {
    valuePtr = -1;
    v15 = -1;
    v5 = IOServiceMatching("IOPMPowerSource");
    if (v5)
    {
      MatchingService = IOServiceGetMatchingService(*MEMORY[0x277CD2898], v5);
      if (MatchingService)
      {
        v7 = MatchingService;
        v8 = *MEMORY[0x277CBECE8];
        CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"AppleRawBatteryVoltage", *MEMORY[0x277CBECE8], 0);
        v10 = IORegistryEntryCreateCFProperty(v7, @"Amperage", v8, 0);
        if (CFProperty)
        {
          CFNumberGetValue(CFProperty, kCFNumberIntType, &valuePtr);
          CFRelease(CFProperty);
        }

        if (v10)
        {
          CFNumberGetValue(v10, kCFNumberIntType, &v15);
          CFRelease(v10);
        }

        IOObjectRelease(v7);
      }
    }

    v11 = MEMORY[0x277CCACA8];
    v12 = [MEMORY[0x277CBEAA8] date];
    v13 = [v11 stringWithFormat:@"%@, %d, %f, %f, %d, %d, %d\n", v12, *(a1 + 48), *(a1 + 32), *(a1 + 40), *(a1 + 52), valuePtr, v15];

    v14 = [v13 dataUsingEncoding:4 allowLossyConversion:0];
    if (v14)
    {
      [v4 seekToEndOfFile];
      [v4 writeData:v14];
    }

    [v4 closeFile];
  }

  else
  {
    v13 = SBLogCommon();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      ___SBWorkspaceLogUsageForAppleCare_block_invoke_cold_2();
    }
  }
}

@end