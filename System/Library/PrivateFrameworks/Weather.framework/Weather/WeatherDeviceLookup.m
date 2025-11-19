@interface WeatherDeviceLookup
- (WeatherDeviceLookup)init;
- (void)checkAllDevicesRunningMinimumiOSVersion:(id)a3 macOSVersion:(id)a4 orInactiveForTimeInterval:(double)a5 completionHandler:(id)a6;
@end

@implementation WeatherDeviceLookup

- (WeatherDeviceLookup)init
{
  v6.receiver = self;
  v6.super_class = WeatherDeviceLookup;
  v2 = [(WeatherDeviceLookup *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CB8F48]);
    accountStore = v2->_accountStore;
    v2->_accountStore = v3;
  }

  return v2;
}

- (void)checkAllDevicesRunningMinimumiOSVersion:(id)a3 macOSVersion:(id)a4 orInactiveForTimeInterval:(double)a5 completionHandler:(id)a6
{
  var1 = a4.var1;
  var0 = a4.var0;
  v8 = a3.var1;
  v9 = a3.var0;
  v33[1] = *MEMORY[0x277D85DE8];
  v11 = a6;
  v12 = [(WeatherDeviceLookup *)self accountStore];
  v33[0] = *MEMORY[0x277CB8BA0];
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];
  v31 = 0;
  v14 = [v12 accountsWithAccountTypeIdentifiers:v13 error:&v31];
  v15 = v31;
  v16 = [v14 firstObject];

  if (v16)
  {
    v17 = objc_alloc_init(MEMORY[0x277CF0220]);
    v18 = [v16 aa_altDSID];
    [v17 setAltDSID:v18];

    [v17 setIncludeUntrustedDevices:1];
    v32 = *MEMORY[0x277CF00C0];
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v32 count:1];
    [v17 setServices:v19];

    [v17 setOperatingSystems:&unk_288235628];
    v20 = objc_alloc_init(MEMORY[0x277CF0178]);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __120__WeatherDeviceLookup_checkAllDevicesRunningMinimumiOSVersion_macOSVersion_orInactiveForTimeInterval_completionHandler___block_invoke;
    v23[3] = &unk_279E693B0;
    v24 = v15;
    v25 = v11;
    v26 = a5;
    v27 = v9;
    v28 = v8;
    v29 = var0;
    v30 = var1;
    [v20 fetchDeviceListWithContext:v17 completion:v23];
  }

  else
  {
    (*(v11 + 2))(v11, 0, v15);
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __120__WeatherDeviceLookup_checkAllDevicesRunningMinimumiOSVersion_macOSVersion_orInactiveForTimeInterval_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (*(a1 + 32))
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v18 = a1;
    v4 = [MEMORY[0x277CBEB38] dictionary];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v19 = v3;
    obj = v3;
    v5 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v25;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v25 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v24 + 1) + 8 * i);
          v10 = [v9 serialNumber];
          if (v10)
          {
            v11 = [v4 objectForKeyedSubscript:v10];
            if (!v11 || ([v9 lastUpdatedDate], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "lastUpdatedDate"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v12, "compare:", v13), v13, v12, v14 == 1))
            {
              [v4 setObject:v9 forKeyedSubscript:v10];
            }
          }
        }

        v6 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v6);
    }

    v15 = [v4 allValues];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __120__WeatherDeviceLookup_checkAllDevicesRunningMinimumiOSVersion_macOSVersion_orInactiveForTimeInterval_completionHandler___block_invoke_2;
    v21[3] = &__block_descriptor_72_e24_B16__0__AKRemoteDevice_8l;
    v21[4] = *(v18 + 48);
    v16 = *(v18 + 72);
    v22 = *(v18 + 56);
    v23 = v16;
    [v15 wa_allObjectsPassTest:v21];

    (*(*(v18 + 40) + 16))();
    v3 = v19;
  }

  v17 = *MEMORY[0x277D85DE8];
}

BOOL __120__WeatherDeviceLookup_checkAllDevicesRunningMinimumiOSVersion_macOSVersion_orInactiveForTimeInterval_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 operatingSystemVersion];
  v5 = [v4 componentsSeparatedByString:@"."];

  v6 = [v5 firstObject];
  v7 = [v6 integerValue];

  if ([v5 count] < 2)
  {
    v9 = 0;
  }

  else
  {
    v8 = [v5 objectAtIndexedSubscript:1];
    v9 = [v8 integerValue];
  }

  v10 = [v3 lastUpdatedDate];
  [v10 wa_timeIntervalUntilNow];
  v12 = v11;
  v13 = *(a1 + 32);

  if (v12 <= v13)
  {
    v15 = [v3 operatingSystemName];
    v16 = [v15 isEqualToString:@"iOS"];

    if (v16)
    {
      if (v7 >= *(a1 + 40))
      {
        v17 = 48;
LABEL_13:
        v14 = v9 >= *(a1 + v17);
        goto LABEL_14;
      }
    }

    else
    {
      v18 = [v3 operatingSystemName];
      v19 = [v18 isEqualToString:@"macOS"];

      if (v19 && v7 >= *(a1 + 56))
      {
        v17 = 64;
        goto LABEL_13;
      }
    }

    v14 = 0;
    goto LABEL_14;
  }

  v14 = 1;
LABEL_14:

  return v14;
}

@end