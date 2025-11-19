@interface AXPhoenixConfiguration
- (AXPhoenixConfiguration)init;
- (AXPhoenixConfiguration)initWithContentsOfFileAtPath:(id)a3;
- (id)_updateConfigWithContentsOfDictionary:(id)a3;
- (id)toStringifiedJSON;
- (void)_initializeKeys;
- (void)_setDefaultConfiguration;
@end

@implementation AXPhoenixConfiguration

- (AXPhoenixConfiguration)init
{
  v5 = a2;
  v6 = 0;
  v4.receiver = self;
  v4.super_class = AXPhoenixConfiguration;
  v6 = [(AXPhoenixConfiguration *)&v4 init];
  objc_storeStrong(&v6, v6);
  if (v6)
  {
    [(AXPhoenixConfiguration *)v6 _initializeKeys];
    [(AXPhoenixConfiguration *)v6 _setDefaultConfiguration];
  }

  v3 = MEMORY[0x277D82BE0](v6);
  objc_storeStrong(&v6, 0);
  return v3;
}

- (AXPhoenixConfiguration)initWithContentsOfFileAtPath:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v21 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v21;
  v21 = 0;
  v19.receiver = v3;
  v19.super_class = AXPhoenixConfiguration;
  v21 = [(AXPhoenixConfiguration *)&v19 init];
  objc_storeStrong(&v21, v21);
  if (!v21)
  {
    goto LABEL_18;
  }

  [v21 _initializeKeys];
  v18 = 0;
  v16 = 0;
  v6 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:location[0] options:0 error:&v16];
  objc_storeStrong(&v18, v16);
  v17 = v6;
  if (v6)
  {
    obj = v18;
    v5 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v17 options:1 error:&obj];
    objc_storeStrong(&v18, obj);
    v12 = v5;
    if (v18)
    {
      oslog = AXLogBackTap();
      v9 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_3_8_32_8_64_8_64(v24, "[AXPhoenixConfiguration initWithContentsOfFileAtPath:]", location[0], v18);
        _os_log_error_impl(&dword_25E4AC000, oslog, v9, "[PHOENIX] %s Could not create dictionary from %@. Error:%@", v24, 0x20u);
      }

      objc_storeStrong(&oslog, 0);
      v22 = 0;
      v13 = 1;
    }

    else
    {
      v8 = [v21 _updateConfigWithContentsOfDictionary:v12];
      if ([v8 count])
      {
        v7 = AXLogBackTap();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_2_8_32_8_64(v23, "[AXPhoenixConfiguration initWithContentsOfFileAtPath:]", v8);
          _os_log_error_impl(&dword_25E4AC000, v7, OS_LOG_TYPE_ERROR, "[PHOENIX] %s Missing keys detected in configuration file: %@", v23, 0x16u);
        }

        objc_storeStrong(&v7, 0);
        v22 = 0;
        v13 = 1;
      }

      else
      {
        v13 = 0;
      }

      objc_storeStrong(&v8, 0);
    }

    objc_storeStrong(&v12, 0);
  }

  else
  {
    v15 = AXLogBackTap();
    v14 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_3_8_32_8_64_8_64(v25, "[AXPhoenixConfiguration initWithContentsOfFileAtPath:]", location[0], v18);
      _os_log_error_impl(&dword_25E4AC000, v15, v14, "[PHOENIX] %s Could not read configuration from %@. Error:%@", v25, 0x20u);
    }

    objc_storeStrong(&v15, 0);
    v22 = 0;
    v13 = 1;
  }

  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  if (!v13)
  {
LABEL_18:
    v22 = MEMORY[0x277D82BE0](v21);
    v13 = 1;
  }

  objc_storeStrong(location, 0);
  objc_storeStrong(&v21, 0);
  *MEMORY[0x277D85DE8];
  return v22;
}

- (void)_initializeKeys
{
  [(AXPhoenixConfiguration *)self setMajorVersionKey:@"majorVersion"];
  [(AXPhoenixConfiguration *)self setMinorVersionKey:@"minorVersion"];
  [(AXPhoenixConfiguration *)self setClassifierConfigurationKey:@"classifier"];
  [(AXPhoenixConfiguration *)self setMitigatorConfigurationKey:@"mitigator"];
}

- (void)_setDefaultConfiguration
{
  [(AXPhoenixConfiguration *)self setConfigurationAssetVersion:0];
  [(AXPhoenixConfiguration *)self setMajorVersion:?];
  [(AXPhoenixConfiguration *)self setMinorVersion:@"0.0"];
  v2 = objc_alloc_init(AXPhoenixClassifierConfiguration);
  [(AXPhoenixConfiguration *)self setClassifierConfiguration:?];
  MEMORY[0x277D82BD8](v2);
  v3 = objc_alloc_init(AXPhoenixMitigatorConfiguration);
  [(AXPhoenixConfiguration *)self setMitigatorConfiguration:?];
  MEMORY[0x277D82BD8](v3);
}

- (id)_updateConfigWithContentsOfDictionary:(id)a3
{
  v35 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v33 = [MEMORY[0x277CBEB18] array];
  v28 = location[0];
  v29 = [(AXPhoenixConfiguration *)v35 majorVersionKey];
  v30 = [v28 objectForKey:?];
  MEMORY[0x277D82BD8](v30);
  MEMORY[0x277D82BD8](v29);
  if (v30)
  {
    v25 = v35;
    v24 = location[0];
    v27 = [(AXPhoenixConfiguration *)v35 majorVersionKey];
    v26 = [v24 objectForKey:?];
    [(AXPhoenixConfiguration *)v25 setMajorVersion:?];
    MEMORY[0x277D82BD8](v26);
    MEMORY[0x277D82BD8](v27);
  }

  else
  {
    v23 = [(AXPhoenixConfiguration *)v35 majorVersionKey];
    [v33 addObject:?];
    MEMORY[0x277D82BD8](v23);
  }

  v20 = location[0];
  v21 = [(AXPhoenixConfiguration *)v35 minorVersionKey];
  v22 = [v20 objectForKey:?];
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](v21);
  if (v22)
  {
    v17 = v35;
    v16 = location[0];
    v19 = [(AXPhoenixConfiguration *)v35 minorVersionKey];
    v18 = [v16 objectForKey:?];
    [(AXPhoenixConfiguration *)v17 setMinorVersion:?];
    MEMORY[0x277D82BD8](v18);
    MEMORY[0x277D82BD8](v19);
  }

  else
  {
    v15 = [(AXPhoenixConfiguration *)v35 minorVersionKey];
    [v33 addObject:?];
    MEMORY[0x277D82BD8](v15);
  }

  v13 = location[0];
  v14 = [(AXPhoenixConfiguration *)v35 classifierConfigurationKey];
  v32 = [v13 objectForKey:?];
  MEMORY[0x277D82BD8](v14);
  if (v32)
  {
    v11 = v35;
    v12 = [[AXPhoenixClassifierConfiguration alloc] initWithDictionary:v32 missingKeys:v33];
    [(AXPhoenixConfiguration *)v11 setClassifierConfiguration:?];
    MEMORY[0x277D82BD8](v12);
  }

  else
  {
    v10 = [(AXPhoenixConfiguration *)v35 classifierConfigurationKey];
    [v33 addObject:?];
    MEMORY[0x277D82BD8](v10);
  }

  v8 = location[0];
  v9 = [(AXPhoenixConfiguration *)v35 mitigatorConfigurationKey];
  v31 = [v8 objectForKey:?];
  MEMORY[0x277D82BD8](v9);
  if (v31)
  {
    v6 = v35;
    v7 = [[AXPhoenixMitigatorConfiguration alloc] initWithDictionary:v31 missingKeys:v33];
    [(AXPhoenixConfiguration *)v6 setMitigatorConfiguration:?];
    MEMORY[0x277D82BD8](v7);
  }

  else
  {
    v5 = [(AXPhoenixConfiguration *)v35 mitigatorConfigurationKey];
    [v33 addObject:?];
    MEMORY[0x277D82BD8](v5);
  }

  v4 = MEMORY[0x277D82BE0](v33);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(location, 0);

  return v4;
}

- (id)toStringifiedJSON
{
  v34[4] = *MEMORY[0x277D85DE8];
  v29 = self;
  v28[1] = a2;
  v18 = [(AXPhoenixConfiguration *)self majorVersionKey];
  v33[0] = v18;
  v17 = [(AXPhoenixConfiguration *)v29 majorVersion];
  v34[0] = v17;
  v16 = [(AXPhoenixConfiguration *)v29 minorVersionKey];
  v33[1] = v16;
  v15 = [(AXPhoenixConfiguration *)v29 minorVersion];
  v34[1] = v15;
  v14 = [(AXPhoenixConfiguration *)v29 classifierConfigurationKey];
  v33[2] = v14;
  v13 = [(AXPhoenixConfiguration *)v29 classifierConfiguration];
  v12 = [(AXPhoenixClassifierConfiguration *)v13 toDictionary];
  v34[2] = v12;
  v11 = [(AXPhoenixConfiguration *)v29 mitigatorConfigurationKey];
  v33[3] = v11;
  v10 = [(AXPhoenixConfiguration *)v29 mitigatorConfiguration];
  v9 = [(AXPhoenixMitigatorConfiguration *)v10 toDictionary];
  v34[3] = v9;
  v28[0] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:4];
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](v18);
  if ([MEMORY[0x277CCAAA0] isValidJSONObject:v28[0]])
  {
    v24 = 0;
    v22 = 0;
    v8 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v28[0] options:1 error:&v22];
    objc_storeStrong(&v24, v22);
    v23 = v8;
    if (v8)
    {
      v3 = objc_alloc(MEMORY[0x277CCACA8]);
      v30 = [v3 initWithData:v23 encoding:4];
      v25 = 1;
    }

    else
    {
      oslog = AXLogBackTap();
      v20 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        v6 = oslog;
        v7 = v20;
        v2 = objc_opt_class();
        v19 = MEMORY[0x277D82BE0](v2);
        __os_log_helper_16_2_3_8_32_8_64_8_64(v31, "[AXPhoenixConfiguration toStringifiedJSON]", v19, v24);
        _os_log_error_impl(&dword_25E4AC000, v6, v7, "[PHOENIX] %s Error serializing %@: Got error: %@", v31, 0x20u);
        objc_storeStrong(&v19, 0);
      }

      objc_storeStrong(&oslog, 0);
      v30 = 0;
      v25 = 1;
    }

    objc_storeStrong(&v23, 0);
    objc_storeStrong(&v24, 0);
  }

  else
  {
    location = AXLogBackTap();
    v26 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(location, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_32(v32, "[AXPhoenixConfiguration toStringifiedJSON]");
      _os_log_error_impl(&dword_25E4AC000, location, v26, "[PHOENIX] %s Invalid JSON object!", v32, 0xCu);
    }

    objc_storeStrong(&location, 0);
    v30 = 0;
    v25 = 1;
  }

  objc_storeStrong(v28, 0);
  *MEMORY[0x277D85DE8];
  v4 = v30;

  return v4;
}

@end