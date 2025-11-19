@interface AXPhoenixMitigatorConfiguration
- (AXPhoenixMitigatorConfiguration)init;
- (AXPhoenixMitigatorConfiguration)initWithDictionary:(id)a3 missingKeys:(id)a4;
- (id)toDictionary;
- (void)_parseFromDictionary:(id)a3 missingKeys:(id)a4;
@end

@implementation AXPhoenixMitigatorConfiguration

- (AXPhoenixMitigatorConfiguration)init
{
  v5 = a2;
  v6 = 0;
  v4.receiver = self;
  v4.super_class = AXPhoenixMitigatorConfiguration;
  v6 = [(AXPhoenixMitigatorConfiguration *)&v4 init];
  objc_storeStrong(&v6, v6);
  if (v6)
  {
    [(AXPhoenixMitigatorConfiguration *)v6 _initializeKeys];
    [(AXPhoenixMitigatorConfiguration *)v6 _setDefaultConfiguration];
  }

  v3 = MEMORY[0x277D82BE0](v6);
  objc_storeStrong(&v6, 0);
  return v3;
}

- (AXPhoenixMitigatorConfiguration)initWithDictionary:(id)a3 missingKeys:(id)a4
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  v4 = v11;
  v11 = 0;
  v8.receiver = v4;
  v8.super_class = AXPhoenixMitigatorConfiguration;
  v11 = [(AXPhoenixMitigatorConfiguration *)&v8 init];
  objc_storeStrong(&v11, v11);
  if (v11)
  {
    [(AXPhoenixMitigatorConfiguration *)v11 _initializeKeys];
    [(AXPhoenixMitigatorConfiguration *)v11 _parseFromDictionary:location[0] missingKeys:v9];
  }

  v6 = MEMORY[0x277D82BE0](v11);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v11, 0);
  return v6;
}

- (void)_parseFromDictionary:(id)a3 missingKeys:(id)a4
{
  v25 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v23 = 0;
  objc_storeStrong(&v23, a4);
  v20 = location[0];
  v21 = [(AXPhoenixMitigatorConfiguration *)v25 disableWhenDisplayOffConfigurationKey];
  v22 = [v20 objectForKey:?];
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](v21);
  if (v22)
  {
    v16 = v25;
    v15 = location[0];
    v18 = [(AXPhoenixMitigatorConfiguration *)v25 disableWhenDisplayOffConfigurationKey];
    v17 = [v15 objectForKey:?];
    -[AXPhoenixMitigatorConfiguration setDisableWhenDisplayOff:](v16, "setDisableWhenDisplayOff:", [v17 BOOLValue]);
    MEMORY[0x277D82BD8](v17);
    MEMORY[0x277D82BD8](v18);
  }

  else
  {
    v13 = v23;
    v14 = [(AXPhoenixMitigatorConfiguration *)v25 disableWhenDisplayOffConfigurationKey];
    [v13 addObject:?];
    MEMORY[0x277D82BD8](v14);
  }

  v10 = location[0];
  v11 = [(AXPhoenixMitigatorConfiguration *)v25 disableWhenDeviceLockedConfigurationKey];
  v12 = [v10 objectForKey:?];
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v11);
  if (v12)
  {
    v7 = v25;
    v6 = location[0];
    v9 = [(AXPhoenixMitigatorConfiguration *)v25 disableWhenDeviceLockedConfigurationKey];
    v8 = [v6 objectForKey:?];
    -[AXPhoenixMitigatorConfiguration setDisableWhenDeviceLocked:](v7, "setDisableWhenDeviceLocked:", [v8 BOOLValue]);
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v9);
  }

  else
  {
    v4 = v23;
    v5 = [(AXPhoenixMitigatorConfiguration *)v25 disableWhenDeviceLockedConfigurationKey];
    [v4 addObject:?];
    MEMORY[0x277D82BD8](v5);
  }

  objc_storeStrong(&v23, 0);
  objc_storeStrong(location, 0);
}

- (id)toDictionary
{
  v10[2] = *MEMORY[0x277D85DE8];
  v7 = [(AXPhoenixMitigatorConfiguration *)self disableWhenDisplayOffConfigurationKey];
  v9[0] = v7;
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[AXPhoenixMitigatorConfiguration disableWhenDisplayOff](self, "disableWhenDisplayOff")}];
  v10[0] = v6;
  v5 = [(AXPhoenixMitigatorConfiguration *)self disableWhenDeviceLockedConfigurationKey];
  v9[1] = v5;
  v3 = [MEMORY[0x277CCABB0] numberWithBool:{-[AXPhoenixMitigatorConfiguration disableWhenDeviceLocked](self, "disableWhenDeviceLocked")}];
  v10[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  *MEMORY[0x277D85DE8];

  return v4;
}

@end