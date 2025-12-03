@interface AXPhoenixMitigatorConfiguration
- (AXPhoenixMitigatorConfiguration)init;
- (AXPhoenixMitigatorConfiguration)initWithDictionary:(id)dictionary missingKeys:(id)keys;
- (id)toDictionary;
- (void)_parseFromDictionary:(id)dictionary missingKeys:(id)keys;
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

- (AXPhoenixMitigatorConfiguration)initWithDictionary:(id)dictionary missingKeys:(id)keys
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, dictionary);
  v9 = 0;
  objc_storeStrong(&v9, keys);
  v4 = selfCopy;
  selfCopy = 0;
  v8.receiver = v4;
  v8.super_class = AXPhoenixMitigatorConfiguration;
  selfCopy = [(AXPhoenixMitigatorConfiguration *)&v8 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    [(AXPhoenixMitigatorConfiguration *)selfCopy _initializeKeys];
    [(AXPhoenixMitigatorConfiguration *)selfCopy _parseFromDictionary:location[0] missingKeys:v9];
  }

  v6 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v6;
}

- (void)_parseFromDictionary:(id)dictionary missingKeys:(id)keys
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, dictionary);
  v23 = 0;
  objc_storeStrong(&v23, keys);
  v20 = location[0];
  disableWhenDisplayOffConfigurationKey = [(AXPhoenixMitigatorConfiguration *)selfCopy disableWhenDisplayOffConfigurationKey];
  v22 = [v20 objectForKey:?];
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](disableWhenDisplayOffConfigurationKey);
  if (v22)
  {
    v16 = selfCopy;
    v15 = location[0];
    disableWhenDisplayOffConfigurationKey2 = [(AXPhoenixMitigatorConfiguration *)selfCopy disableWhenDisplayOffConfigurationKey];
    v17 = [v15 objectForKey:?];
    -[AXPhoenixMitigatorConfiguration setDisableWhenDisplayOff:](v16, "setDisableWhenDisplayOff:", [v17 BOOLValue]);
    MEMORY[0x277D82BD8](v17);
    MEMORY[0x277D82BD8](disableWhenDisplayOffConfigurationKey2);
  }

  else
  {
    v13 = v23;
    disableWhenDisplayOffConfigurationKey3 = [(AXPhoenixMitigatorConfiguration *)selfCopy disableWhenDisplayOffConfigurationKey];
    [v13 addObject:?];
    MEMORY[0x277D82BD8](disableWhenDisplayOffConfigurationKey3);
  }

  v10 = location[0];
  disableWhenDeviceLockedConfigurationKey = [(AXPhoenixMitigatorConfiguration *)selfCopy disableWhenDeviceLockedConfigurationKey];
  v12 = [v10 objectForKey:?];
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](disableWhenDeviceLockedConfigurationKey);
  if (v12)
  {
    v7 = selfCopy;
    v6 = location[0];
    disableWhenDeviceLockedConfigurationKey2 = [(AXPhoenixMitigatorConfiguration *)selfCopy disableWhenDeviceLockedConfigurationKey];
    v8 = [v6 objectForKey:?];
    -[AXPhoenixMitigatorConfiguration setDisableWhenDeviceLocked:](v7, "setDisableWhenDeviceLocked:", [v8 BOOLValue]);
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](disableWhenDeviceLockedConfigurationKey2);
  }

  else
  {
    v4 = v23;
    disableWhenDeviceLockedConfigurationKey3 = [(AXPhoenixMitigatorConfiguration *)selfCopy disableWhenDeviceLockedConfigurationKey];
    [v4 addObject:?];
    MEMORY[0x277D82BD8](disableWhenDeviceLockedConfigurationKey3);
  }

  objc_storeStrong(&v23, 0);
  objc_storeStrong(location, 0);
}

- (id)toDictionary
{
  v10[2] = *MEMORY[0x277D85DE8];
  disableWhenDisplayOffConfigurationKey = [(AXPhoenixMitigatorConfiguration *)self disableWhenDisplayOffConfigurationKey];
  v9[0] = disableWhenDisplayOffConfigurationKey;
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[AXPhoenixMitigatorConfiguration disableWhenDisplayOff](self, "disableWhenDisplayOff")}];
  v10[0] = v6;
  disableWhenDeviceLockedConfigurationKey = [(AXPhoenixMitigatorConfiguration *)self disableWhenDeviceLockedConfigurationKey];
  v9[1] = disableWhenDeviceLockedConfigurationKey;
  v3 = [MEMORY[0x277CCABB0] numberWithBool:{-[AXPhoenixMitigatorConfiguration disableWhenDeviceLocked](self, "disableWhenDeviceLocked")}];
  v10[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](disableWhenDeviceLockedConfigurationKey);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](disableWhenDisplayOffConfigurationKey);
  *MEMORY[0x277D85DE8];

  return v4;
}

@end