@interface SUCorePolicyFamily
+ (int)getFamilyUsingDeviceClass:(id)a3;
@end

@implementation SUCorePolicyFamily

+ (int)getFamilyUsingDeviceClass:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (([v3 isEqualToString:@"iPhone"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"iPod") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"iPad") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"AudioAccessory") & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"RealityDevice"))
  {
    v4 = [MEMORY[0x277D64460] sharedLogger];
    v5 = [v4 oslog];

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23193C000, v5, OS_LOG_TYPE_DEFAULT, "SUCorePolicyFamily:getFamilyUsingDeviceClass defaulting to iOS family", buf, 2u);
    }

    v6 = 1;
  }

  else if ([v3 isEqualToString:@"AppleTV"])
  {
    v9 = [MEMORY[0x277D64460] sharedLogger];
    v5 = [v9 oslog];

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v6 = 2;
      _os_log_impl(&dword_23193C000, v5, OS_LOG_TYPE_DEFAULT, "SUCorePolicyFamily:getFamilyUsingDeviceClass defaulting to tvOS family", buf, 2u);
    }

    else
    {
      v6 = 2;
    }
  }

  else if ([v3 isEqualToString:@"Watch"])
  {
    v10 = [MEMORY[0x277D64460] sharedLogger];
    v5 = [v10 oslog];

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23193C000, v5, OS_LOG_TYPE_DEFAULT, "SUCorePolicyFamily:getFamilyUsingDeviceClass defaulting to watchOS family", buf, 2u);
    }

    v6 = 3;
  }

  else
  {
    v11 = [v3 isEqualToString:@"Mac"];
    v12 = [MEMORY[0x277D64460] sharedLogger];
    v5 = [v12 oslog];

    v13 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v11)
    {
      if (v13)
      {
        *buf = 0;
        _os_log_impl(&dword_23193C000, v5, OS_LOG_TYPE_DEFAULT, "SUCorePolicyFamily:getFamilyUsingDeviceClass defaulting to macOS family", buf, 2u);
      }

      v6 = 7;
    }

    else
    {
      if (v13)
      {
        *buf = 138543362;
        v16 = v3;
        _os_log_impl(&dword_23193C000, v5, OS_LOG_TYPE_DEFAULT, "SUCorePolicyFamily:getFamilyUsingDeviceClass unknown device class %{public}@, returning default instead", buf, 0xCu);
      }

      v5 = [MEMORY[0x277D64428] sharedDiag];
      v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"unknown device class (%@), returning default instead", v3];
      [v5 trackAnomaly:@"[POLICY] ASSET FAMILY" forReason:v14 withResult:8116 withError:0];

      v6 = 0;
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

@end