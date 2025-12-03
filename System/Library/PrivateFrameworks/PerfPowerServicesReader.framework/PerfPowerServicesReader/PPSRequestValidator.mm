@interface PPSRequestValidator
+ (BOOL)_isMetricDefinedForFilepath:(id)filepath subsystem:(id)subsystem category:(id)category name:(id)name;
+ (BOOL)_validateFilepath:(id)filepath error:(id *)error;
+ (BOOL)_validatePredicateRequiredKey:(id)key value:(id)value error:(id *)error;
+ (BOOL)_validatePredicateValue:(id)value metricDefinition:(id)definition error:(id *)error;
+ (BOOL)_validateRequestType:(int64_t)type error:(id *)error;
+ (id)sharedInstance;
- (BOOL)validateDataRequest:(id)request filepath:(id)filepath withError:(id *)error;
@end

@implementation PPSRequestValidator

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[PPSRequestValidator sharedInstance];
  }

  v3 = sharedInstance__sharedValidator;

  return v3;
}

void __37__PPSRequestValidator_sharedInstance__block_invoke()
{
  v6[11] = *MEMORY[0x277D85DE8];
  v0 = objc_alloc_init(PPSRequestValidator);
  v1 = sharedInstance__sharedValidator;
  sharedInstance__sharedValidator = v0;

  v5[0] = &unk_287017F88;
  v6[0] = objc_opt_class();
  v5[1] = &unk_287017FA0;
  v6[1] = objc_opt_class();
  v5[2] = &unk_287017FB8;
  v6[2] = objc_opt_class();
  v5[3] = &unk_287017FD0;
  v6[3] = objc_opt_class();
  v5[4] = &unk_287017FE8;
  v6[4] = objc_opt_class();
  v5[5] = &unk_287018000;
  v6[5] = objc_opt_class();
  v5[6] = &unk_287018018;
  v6[6] = objc_opt_class();
  v5[7] = &unk_287018030;
  v6[7] = objc_opt_class();
  v5[8] = &unk_287018048;
  v6[8] = objc_opt_class();
  v5[9] = &unk_287018060;
  v6[9] = objc_opt_class();
  v5[10] = &unk_287018078;
  v6[10] = objc_opt_class();
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:11];
  v3 = kMetricDataTypeToClass;
  kMetricDataTypeToClass = v2;

  v4 = *MEMORY[0x277D85DE8];
}

- (BOOL)validateDataRequest:(id)request filepath:(id)filepath withError:(id *)error
{
  v83[1] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  filepathCopy = filepath;
  subsystem = [requestCopy subsystem];
  category = [requestCopy category];
  valueFilter = [requestCopy valueFilter];
  v12 = [PPSPredicateUtilities keyPathsAndValuesForPredicate:valueFilter];
  if (![PPSEntitlementChecker checkForEntitlement:@"com.apple.PerfPowerServices.data-read"])
  {
    v27 = MEMORY[0x277CCA9B8];
    v82 = *MEMORY[0x277CCA450];
    v83[0] = @"Missing read entitlement";
    v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v83 forKeys:&v82 count:1];
    v14 = [v27 errorWithDomain:@"com.apple.PerfPowerServicesReader.request" code:257 userInfo:v28];

    if (!v14)
    {
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  errorCopy = error;
  if (!requestCopy)
  {
    objb = MEMORY[0x277CCA9B8];
    v29 = MEMORY[0x277CBEAC0];
    v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"Null request."];
    [v29 dictionaryWithObject:v30 forKey:*MEMORY[0x277CCA450]];
    v31 = v12;
    v32 = valueFilter;
    v33 = filepathCopy;
    v34 = subsystem;
    v36 = v35 = category;
    v14 = [objb errorWithDomain:@"com.apple.PerfPowerServicesReader.request" code:1 userInfo:v36];

    category = v35;
    subsystem = v34;
    filepathCopy = v33;
    valueFilter = v32;
    v12 = v31;
    requestCopy = 0;

    goto LABEL_15;
  }

  v79 = 0;
  v13 = [PPSRequestValidator _validateFilepath:filepathCopy error:&v79];
  v14 = v79;
  if (!v13)
  {
    goto LABEL_15;
  }

  v78 = v14;
  v15 = +[PPSRequestValidator _validateRequestType:error:](PPSRequestValidator, "_validateRequestType:error:", [requestCopy requestType], &v78);
  v16 = v78;

  if (!v15)
  {
    goto LABEL_14;
  }

  v77 = v16;
  v17 = [PPSRequestValidator _validatePredicateRequiredKey:@"subsystem" value:subsystem error:&v77];
  v14 = v77;

  if (!v17)
  {
    goto LABEL_15;
  }

  v76 = v14;
  v18 = [PPSRequestValidator _validatePredicateRequiredKey:@"category" value:category error:&v76];
  v16 = v76;

  if (!v18)
  {
LABEL_14:
    v14 = v16;
LABEL_15:
    error = errorCopy;
    if (!v14)
    {
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  v58 = v16;
  if ([requestCopy requestType] == 2)
  {
    metrics = [requestCopy metrics];
    v20 = category;
    v21 = [metrics count];

    v22 = v21 >= 2;
    category = v20;
    if (v22)
    {
      v23 = MEMORY[0x277CCA9B8];
      v24 = MEMORY[0x277CBEAC0];
      v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"Interval-set requests only support a single metric."];
      v26 = [v24 dictionaryWithObject:v25 forKey:*MEMORY[0x277CCA450]];
      category = v20;
      v14 = [v23 errorWithDomain:@"com.apple.PerfPowerServicesReader.request" code:5 userInfo:v26];

      goto LABEL_15;
    }
  }

  v57 = v12;
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  obj = [requestCopy metrics];
  v41 = [obj countByEnumeratingWithState:&v72 objects:v81 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v73;
    while (2)
    {
      for (i = 0; i != v42; ++i)
      {
        if (*v73 != v43)
        {
          objc_enumerationMutation(obj);
        }

        v45 = *(*(&v72 + 1) + 8 * i);
        if (![objc_opt_class() _isMetricDefinedForFilepath:filepathCopy subsystem:subsystem category:category name:v45])
        {
          v53 = MEMORY[0x277CCA9B8];
          v54 = MEMORY[0x277CBEAC0];
          v55 = [MEMORY[0x277CCACA8] stringWithFormat:@"Select metric '%@' is not defined for subsystem='%@', category='%@'", v45, subsystem, category];
          v56 = [v54 dictionaryWithObject:v55 forKey:*MEMORY[0x277CCA450]];
          v14 = [v53 errorWithDomain:@"com.apple.PerfPowerServicesReader.request" code:3 userInfo:v56];

          goto LABEL_45;
        }
      }

      v42 = [obj countByEnumeratingWithState:&v72 objects:v81 count:16];
      if (v42)
      {
        continue;
      }

      break;
    }
  }

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v62 = v57;
  v61 = [v62 countByEnumeratingWithState:&v68 objects:v80 count:16];
  if (v61)
  {
    v59 = category;
    v60 = *v69;
    v46 = v58;
    while (2)
    {
      v47 = 0;
      v48 = v46;
      do
      {
        if (*v69 != v60)
        {
          objc_enumerationMutation(v62);
        }

        v49 = *(*(&v68 + 1) + 8 * v47);
        obja = objc_autoreleasePoolPush();
        if (filepathCopy)
        {
          [PPSOffDeviceIngesterUtilities metricDefinitionForFilepath:filepathCopy subsystem:subsystem category:category metricName:v49];
        }

        else
        {
          [PPSOnDeviceIngesterUtilities metricDefinitionForSubsystem:subsystem category:category metricName:v49];
        }
        v50 = ;
        v51 = [v62 objectForKeyedSubscript:v49];
        v67 = v48;
        v52 = [PPSRequestValidator _validatePredicateValue:v51 metricDefinition:v50 error:&v67];
        v46 = v67;

        objc_autoreleasePoolPop(obja);
        if (!v52)
        {
          category = v59;
          goto LABEL_44;
        }

        ++v47;
        v48 = v46;
        category = v59;
      }

      while (v61 != v47);
      v61 = [v62 countByEnumeratingWithState:&v68 objects:v80 count:16];
      if (v61)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v46 = v58;
  }

LABEL_44:

  v14 = v46;
LABEL_45:
  error = errorCopy;
  v12 = v57;
  if (v14)
  {
LABEL_16:
    v37 = PPSReaderLog();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      [PPSRequestValidator validateDataRequest:v14 filepath:v37 withError:?];
    }

    if (error)
    {
      v38 = v14;
      *error = v14;
    }
  }

LABEL_20:

  v39 = *MEMORY[0x277D85DE8];
  return v14 == 0;
}

+ (BOOL)_isMetricDefinedForFilepath:(id)filepath subsystem:(id)subsystem category:(id)category name:(id)name
{
  filepathCopy = filepath;
  subsystemCopy = subsystem;
  categoryCopy = category;
  nameCopy = name;
  if ([nameCopy isEqualToString:@"BLD"] & 1) != 0 || (objc_msgSend(nameCopy, "isEqualToString:", @"timestamp"))
  {
    v13 = 1;
  }

  else
  {
    if (filepathCopy)
    {
      [PPSOffDeviceIngesterUtilities metricDefinitionForFilepath:filepathCopy subsystem:subsystemCopy category:categoryCopy metricName:nameCopy];
    }

    else
    {
      [PPSOnDeviceIngesterUtilities metricDefinitionForSubsystem:subsystemCopy category:categoryCopy metricName:nameCopy];
    }
    v14 = ;
    v13 = v14 != 0;
  }

  return v13;
}

+ (BOOL)_validateFilepath:(id)filepath error:(id *)error
{
  path = [filepath path];
  stringByExpandingTildeInPath = [path stringByExpandingTildeInPath];

  if (stringByExpandingTildeInPath)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v8 = [defaultManager fileExistsAtPath:stringByExpandingTildeInPath];

    if (error && (v8 & 1) == 0)
    {
      v9 = MEMORY[0x277CCA9B8];
      v10 = MEMORY[0x277CBEAC0];
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"File doesn't exist: '%@'", stringByExpandingTildeInPath];
      v12 = [v10 dictionaryWithObject:v11 forKey:*MEMORY[0x277CCA450]];
      *error = [v9 errorWithDomain:@"com.apple.PerfPowerServicesReader.request" code:5 userInfo:v12];

      v8 = 0;
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

+ (BOOL)_validatePredicateRequiredKey:(id)key value:(id)value error:(id *)error
{
  if (!value && error)
  {
    v7 = MEMORY[0x277CCA9B8];
    v8 = MEMORY[0x277CBEAC0];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Missing required field in predicate: '%@'.", key];
    v10 = [v8 dictionaryWithObject:v9 forKey:*MEMORY[0x277CCA450]];
    *error = [v7 errorWithDomain:@"com.apple.PerfPowerServicesReader.request" code:3 userInfo:v10];
  }

  return value != 0;
}

+ (BOOL)_validatePredicateValue:(id)value metricDefinition:(id)definition error:(id *)error
{
  v63 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  definitionCopy = definition;
  v9 = definitionCopy;
  v10 = 1;
  if (valueCopy && definitionCopy)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(definitionCopy, "datatype")}];
    v12 = [kMetricDataTypeToClass objectForKey:v11];
    v13 = 0x277CCA000uLL;
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && ([valueCopy isEqualToString:&stru_286FFF1D8])
    {
      goto LABEL_21;
    }

    if ([valueCopy conformsToProtocol:&unk_28702FB30])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        name4 = valueCopy;
        v15 = [name4 countByEnumeratingWithState:&v48 objects:v62 count:16];
        if (!v15)
        {
          v10 = 1;
LABEL_37:

          goto LABEL_38;
        }

        v16 = v15;
        errorCopy = error;
        v47 = v11;
        v17 = *v49;
LABEL_10:
        v18 = 0;
        while (1)
        {
          if (*v49 != v17)
          {
            objc_enumerationMutation(name4);
          }

          v19 = *(*(&v48 + 1) + 8 * v18);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if ([v19 expressionType])
            {
              name2 = PPSReaderLog();
              if (os_log_type_enabled(name2, OS_LOG_TYPE_DEBUG))
              {
                [PPSRequestValidator _validatePredicateValue:v9 metricDefinition:v19 error:name2];
              }

              v11 = v47;
              goto LABEL_35;
            }

            constantValue = [v19 constantValue];

            v19 = constantValue;
          }

          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            break;
          }

          if (v16 == ++v18)
          {
            v16 = [name4 countByEnumeratingWithState:&v48 objects:v62 count:16];
            v10 = 1;
            if (v16)
            {
              goto LABEL_10;
            }

            v11 = v47;
            goto LABEL_37;
          }
        }

        v26 = PPSReaderLog();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          subsystem = [v9 subsystem];
          category = [v9 category];
          name = [v9 name];
          v42 = objc_opt_class();
          v43 = NSStringFromClass(v42);
          v44 = NSStringFromClass(v12);
          *buf = 138413314;
          v53 = subsystem;
          v54 = 2112;
          v55 = category;
          v56 = 2112;
          v57 = name;
          v58 = 2114;
          v59 = v43;
          v60 = 2114;
          v61 = v44;
          _os_log_debug_impl(&dword_25E225000, v26, OS_LOG_TYPE_DEBUG, "Validation: Type mismatch for entry in provided array '%@::%@::%@' -- %{public}@ != %{public}@ (expected)", buf, 0x34u);
        }

        v11 = v47;
        if (errorCopy)
        {
          v45 = MEMORY[0x277CCA9B8];
          v27 = MEMORY[0x277CBEAC0];
          v28 = MEMORY[0x277CCACA8];
          name2 = [v9 name];
          v29 = [v28 stringWithFormat:@"Mismatch between value type of '%@' in predicate and its metric definition.", name2];
          v30 = [v27 dictionaryWithObject:v29 forKey:*MEMORY[0x277CCA450]];
          *errorCopy = [v45 errorWithDomain:@"com.apple.PerfPowerServicesReader.request" code:3 userInfo:v30];

          goto LABEL_35;
        }

LABEL_36:

        v10 = 0;
        goto LABEL_37;
      }
    }

    if (objc_opt_isKindOfClass())
    {
LABEL_21:
      v10 = 1;
    }

    else
    {
      v21 = PPSReaderLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        subsystem2 = [v9 subsystem];
        category2 = [v9 category];
        name3 = [v9 name];
        v36 = objc_opt_class();
        v37 = NSStringFromClass(v36);
        v38 = NSStringFromClass(v12);
        *buf = 138413314;
        v53 = subsystem2;
        v54 = 2112;
        v55 = category2;
        v56 = 2112;
        v57 = name3;
        v58 = 2114;
        v59 = v37;
        v60 = 2114;
        v61 = v38;
        _os_log_debug_impl(&dword_25E225000, v21, OS_LOG_TYPE_DEBUG, "Validation: Type mismatch for metric '%@::%@::%@' -- %{public}@ != %{public}@ (expected)", buf, 0x34u);

        v13 = 0x277CCA000;
      }

      if (error)
      {
        v22 = MEMORY[0x277CCA9B8];
        v23 = MEMORY[0x277CBEAC0];
        v24 = *(v13 + 3240);
        name4 = [v9 name];
        v19 = [v24 stringWithFormat:@"Mismatch between value type of '%@' in predicate and its metric definition.", name4];
        name2 = [v23 dictionaryWithObject:v19 forKey:*MEMORY[0x277CCA450]];
        *error = [v22 errorWithDomain:@"com.apple.PerfPowerServicesReader.request" code:3 userInfo:name2];
LABEL_35:

        goto LABEL_36;
      }

      v10 = 0;
    }

LABEL_38:
  }

  v31 = *MEMORY[0x277D85DE8];
  return v10;
}

+ (BOOL)_validateRequestType:(int64_t)type error:(id *)error
{
  if (type >= 3 && error)
  {
    v6 = MEMORY[0x277CCA9B8];
    v7 = MEMORY[0x277CBEAC0];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid request type."];
    v9 = [v7 dictionaryWithObject:v8 forKey:*MEMORY[0x277CCA450]];
    *error = [v6 errorWithDomain:@"com.apple.PerfPowerServicesReader.request" code:2 userInfo:v9];
  }

  return type < 3;
}

- (void)validateDataRequest:(uint64_t)a1 filepath:(NSObject *)a2 withError:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_25E225000, a2, OS_LOG_TYPE_DEBUG, "Request validation error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)_validatePredicateValue:(void *)a1 metricDefinition:(uint64_t)a2 error:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = [a1 subsystem];
  v7 = [a1 category];
  v8 = [a1 name];
  v10 = 138413058;
  v11 = v6;
  v12 = 2112;
  v13 = v7;
  v14 = 2112;
  v15 = v8;
  v16 = 2114;
  v17 = a2;
  _os_log_debug_impl(&dword_25E225000, a3, OS_LOG_TYPE_DEBUG, "Validation: Non-Constant value expression present in provided collection for '%@::%@::%@' -- %{public}@", &v10, 0x2Au);

  v9 = *MEMORY[0x277D85DE8];
}

@end