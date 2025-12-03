@interface SUCorePolicyFamily
+ (int)getFamilyUsingDeviceClass:(id)class;
@end

@implementation SUCorePolicyFamily

+ (int)getFamilyUsingDeviceClass:(id)class
{
  v17 = *MEMORY[0x277D85DE8];
  classCopy = class;
  if (([classCopy isEqualToString:@"iPhone"] & 1) != 0 || (objc_msgSend(classCopy, "isEqualToString:", @"iPod") & 1) != 0 || (objc_msgSend(classCopy, "isEqualToString:", @"iPad") & 1) != 0 || (objc_msgSend(classCopy, "isEqualToString:", @"AudioAccessory") & 1) != 0 || objc_msgSend(classCopy, "isEqualToString:", @"RealityDevice"))
  {
    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "SUCorePolicyFamily:getFamilyUsingDeviceClass defaulting to iOS family", buf, 2u);
    }

    v6 = 1;
  }

  else if ([classCopy isEqualToString:@"AppleTV"])
  {
    mEMORY[0x277D64460]2 = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460]2 oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v6 = 2;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "SUCorePolicyFamily:getFamilyUsingDeviceClass defaulting to tvOS family", buf, 2u);
    }

    else
    {
      v6 = 2;
    }
  }

  else if ([classCopy isEqualToString:@"Watch"])
  {
    mEMORY[0x277D64460]3 = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460]3 oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "SUCorePolicyFamily:getFamilyUsingDeviceClass defaulting to watchOS family", buf, 2u);
    }

    v6 = 3;
  }

  else
  {
    v11 = [classCopy isEqualToString:@"Mac"];
    mEMORY[0x277D64460]4 = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460]4 oslog];

    v13 = os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT);
    if (v11)
    {
      if (v13)
      {
        *buf = 0;
        _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "SUCorePolicyFamily:getFamilyUsingDeviceClass defaulting to macOS family", buf, 2u);
      }

      v6 = 7;
    }

    else
    {
      if (v13)
      {
        *buf = 138543362;
        v16 = classCopy;
        _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "SUCorePolicyFamily:getFamilyUsingDeviceClass unknown device class %{public}@, returning default instead", buf, 0xCu);
      }

      oslog = [MEMORY[0x277D64428] sharedDiag];
      classCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"unknown device class (%@), returning default instead", classCopy];
      [oslog trackAnomaly:@"[POLICY] ASSET FAMILY" forReason:classCopy withResult:8116 withError:0];

      v6 = 0;
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

@end