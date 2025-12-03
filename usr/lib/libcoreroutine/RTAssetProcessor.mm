@interface RTAssetProcessor
- (BOOL)_deviceSeed:(id)seed belongsToGroupId:(id)id seedId:(id)seedId modValue:(id)value low:(id)low high:(id)high;
- (BOOL)processAssetsAtPath:(id)path intoPath:(id)intoPath outError:(id *)error;
- (RTAssetProcessor)initWithDefaultsManager:(id)manager;
- (id)_objectForKey:(id)key expectedClass:(Class)class inDictionary:(id)dictionary;
@end

@implementation RTAssetProcessor

- (RTAssetProcessor)initWithDefaultsManager:(id)manager
{
  v16 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  if (managerCopy)
  {
    v11.receiver = self;
    v11.super_class = RTAssetProcessor;
    v6 = [(RTAssetProcessor *)&v11 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_defaultsManager, manager);
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v13 = "[RTAssetProcessor initWithDefaultsManager:]";
      v14 = 1024;
      v15 = 39;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: defaultsManager (in %s:%d)", buf, 0x12u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)processAssetsAtPath:(id)path intoPath:(id)intoPath outError:(id *)error
{
  v86[1] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  intoPathCopy = intoPath;
  v9 = intoPathCopy;
  if (pathCopy)
  {
    if (intoPathCopy)
    {
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      if ([defaultManager fileExistsAtPath:pathCopy])
      {
        defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
        v12 = [defaultManager2 isReadableFileAtPath:pathCopy];

        if (v12)
        {
          defaultsManager = [(RTAssetProcessor *)self defaultsManager];
          v14 = [defaultsManager objectForKey:@"RTDefaultsABTestDeviceSeed"];

          v53 = v9;
          if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            selfCopy3 = self;
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              v27 = _rt_log_facility_get_os_log(RTLogFacilityAsset);
              if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_2304B3000, v27, OS_LOG_TYPE_INFO, "Generating new device seed.", buf, 2u);
              }
            }

            uUID = [MEMORY[0x277CCAD78] UUID];
            uUIDString = [uUID UUIDString];

            selfCopy3 = self;
            defaultsManager2 = [(RTAssetProcessor *)self defaultsManager];
            [defaultsManager2 setObject:uUIDString forKey:@"RTDefaultsABTestDeviceSeed"];

            v14 = uUIDString;
          }

          v55 = pathCopy;
          v31 = [MEMORY[0x277CBEB38] dictionaryWithContentsOfFile:{pathCopy, v53}];
          v32 = [(RTAssetProcessor *)selfCopy3 _objectForKey:@"ABTestOverrides" expectedClass:objc_opt_class() inDictionary:v31];
          v33 = objc_opt_new();
          v71 = 0u;
          v72 = 0u;
          v73 = 0u;
          v74 = 0u;
          obj = v32;
          v61 = [obj countByEnumeratingWithState:&v71 objects:v82 count:16];
          if (v61)
          {
            v60 = *v72;
            v56 = v33;
            v57 = v14;
            do
            {
              for (i = 0; i != v61; ++i)
              {
                if (*v72 != v60)
                {
                  objc_enumerationMutation(obj);
                }

                v35 = *(*(&v71 + 1) + 8 * i);
                v36 = [(RTAssetProcessor *)selfCopy3 _objectForKey:@"SeedId" expectedClass:objc_opt_class() inDictionary:v35];
                v66 = [(RTAssetProcessor *)selfCopy3 _objectForKey:@"GroupId" expectedClass:objc_opt_class() inDictionary:v35];
                v65 = [(RTAssetProcessor *)selfCopy3 _objectForKey:@"ModValue" expectedClass:objc_opt_class() inDictionary:v35];
                v64 = [(RTAssetProcessor *)selfCopy3 _objectForKey:@"Low" expectedClass:objc_opt_class() inDictionary:v35];
                v63 = [(RTAssetProcessor *)selfCopy3 _objectForKey:@"High" expectedClass:objc_opt_class() inDictionary:v35];
                v37 = [(RTAssetProcessor *)selfCopy3 _objectForKey:@"ExpirationDate" expectedClass:objc_opt_class() inDictionary:v35];
                v38 = [(RTAssetProcessor *)selfCopy3 _objectForKey:@"Overrides" expectedClass:objc_opt_class() inDictionary:v35];
                v39 = v38;
                v62 = v36;
                if (!v36 || !v66 || !v65 || !v64 || !v63 || !v37 || !v38)
                {
                  v52 = _rt_log_facility_get_os_log(RTLogFacilityAsset);
                  if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    v79 = v35;
                    _os_log_error_impl(&dword_2304B3000, v52, OS_LOG_TYPE_ERROR, "Invalid group definition, skipping group, %@", buf, 0xCu);
                  }

                  v43 = v62;
                  goto LABEL_58;
                }

                date = [MEMORY[0x277CBEAA8] date];
                v41 = [v37 compare:date];

                v42 = v41 == -1;
                v43 = v62;
                if (!v42 && [(RTAssetProcessor *)selfCopy3 _deviceSeed:v14 belongsToGroupId:v66 seedId:v62 modValue:v65 low:v64 high:v63])
                {
                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                  {
                    v44 = _rt_log_facility_get_os_log(RTLogFacilityAsset);
                    if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
                    {
                      *buf = 138412546;
                      v79 = v62;
                      v80 = 2112;
                      v81 = v66;
                      _os_log_impl(&dword_2304B3000, v44, OS_LOG_TYPE_INFO, "Device belongs to seedId, %@, groupId, %@", buf, 0x16u);
                    }
                  }

                  v69 = 0u;
                  v70 = 0u;
                  v67 = 0u;
                  v68 = 0u;
                  v45 = v39;
                  v46 = [v45 countByEnumeratingWithState:&v67 objects:v77 count:16];
                  if (v46)
                  {
                    v47 = v46;
                    v48 = *v68;
                    do
                    {
                      for (j = 0; j != v47; ++j)
                      {
                        if (*v68 != v48)
                        {
                          objc_enumerationMutation(v45);
                        }

                        v50 = *(*(&v67 + 1) + 8 * j);
                        v51 = [v45 objectForKeyedSubscript:v50];
                        [v31 setObject:v51 forKeyedSubscript:v50];
                      }

                      v47 = [v45 countByEnumeratingWithState:&v67 objects:v77 count:16];
                    }

                    while (v47);
                  }

                  v75[0] = @"RTDefaultsABTestSeedId";
                  v75[1] = @"RTDefaultsABTestGroupId";
                  v43 = v62;
                  v76[0] = v62;
                  v76[1] = v66;
                  v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v76 forKeys:v75 count:2];
                  v33 = v56;
                  [v56 addObject:v52];
                  v14 = v57;
                  selfCopy3 = self;
LABEL_58:
                }
              }

              v61 = [obj countByEnumeratingWithState:&v71 objects:v82 count:16];
            }

            while (v61);
          }

          [v31 setObject:0 forKeyedSubscript:@"ABTestOverrides"];
          if ([v33 count])
          {
            [v31 setObject:v33 forKeyedSubscript:@"RTDefaultsABTestActiveGroups"];
          }

          v9 = v54;
          v25 = [v31 writeToFile:v54 atomically:1];

          pathCopy = v55;
          goto LABEL_21;
        }
      }

      else
      {
      }

      if (error)
      {
        v23 = MEMORY[0x277CCA9B8];
        v24 = *MEMORY[0x277D01448];
        v83 = *MEMORY[0x277CCA450];
        v84 = @"unable to read input asset file.";
        v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v84 forKeys:&v83 count:1];
        v20 = v23;
        v21 = v24;
        v22 = 0;
        goto LABEL_20;
      }

LABEL_22:
      v25 = 0;
      goto LABEL_23;
    }

    goto LABEL_13;
  }

  v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v79 = "[RTAssetProcessor processAssetsAtPath:intoPath:outError:]";
    v80 = 1024;
    LODWORD(v81) = 55;
    _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: assetPath (in %s:%d)", buf, 0x12u);
  }

  if (!v9)
  {
LABEL_13:
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v79 = "[RTAssetProcessor processAssetsAtPath:intoPath:outError:]";
      v80 = 1024;
      LODWORD(v81) = 56;
      _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: defaultsPath (in %s:%d)", buf, 0x12u);
    }

    if (!error)
    {
      goto LABEL_22;
    }

    goto LABEL_16;
  }

  if (!error)
  {
    goto LABEL_22;
  }

LABEL_16:
  v18 = MEMORY[0x277CCA9B8];
  v19 = *MEMORY[0x277D01448];
  v85 = *MEMORY[0x277CCA450];
  v86[0] = @"requires assetPath and defaultsPath.";
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v86 forKeys:&v85 count:1];
  v20 = v18;
  v21 = v19;
  v22 = 7;
LABEL_20:
  [v20 errorWithDomain:v21 code:v22 userInfo:v14];
  *error = v25 = 0;
LABEL_21:

LABEL_23:
  return v25;
}

- (id)_objectForKey:(id)key expectedClass:(Class)class inDictionary:(id)dictionary
{
  v5 = [dictionary objectForKeyedSubscript:key];
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_deviceSeed:(id)seed belongsToGroupId:(id)id seedId:(id)seedId modValue:(id)value low:(id)low high:(id)high
{
  highCopy = high;
  v13 = MEMORY[0x277CCACA8];
  lowCopy = low;
  valueCopy = value;
  seedId = [v13 stringWithFormat:@"%@%@", seed, seedId];
  v17 = [seedId hash];

  unsignedIntegerValue = [valueCopy unsignedIntegerValue];
  v19 = v17 % unsignedIntegerValue;
  unsignedIntegerValue2 = [lowCopy unsignedIntegerValue];

  v21 = unsignedIntegerValue2 <= v19 && v19 < [highCopy unsignedIntegerValue];
  return v21;
}

@end