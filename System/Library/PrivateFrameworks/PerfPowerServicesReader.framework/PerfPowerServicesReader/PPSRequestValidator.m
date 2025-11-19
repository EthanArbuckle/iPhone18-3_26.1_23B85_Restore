@interface PPSRequestValidator
+ (BOOL)_isMetricDefinedForFilepath:(id)a3 subsystem:(id)a4 category:(id)a5 name:(id)a6;
+ (BOOL)_validateFilepath:(id)a3 error:(id *)a4;
+ (BOOL)_validatePredicateRequiredKey:(id)a3 value:(id)a4 error:(id *)a5;
+ (BOOL)_validatePredicateValue:(id)a3 metricDefinition:(id)a4 error:(id *)a5;
+ (BOOL)_validateRequestType:(int64_t)a3 error:(id *)a4;
+ (id)sharedInstance;
- (BOOL)validateDataRequest:(id)a3 filepath:(id)a4 withError:(id *)a5;
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

- (BOOL)validateDataRequest:(id)a3 filepath:(id)a4 withError:(id *)a5
{
  v83[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [v7 subsystem];
  v10 = [v7 category];
  v11 = [v7 valueFilter];
  v12 = [PPSPredicateUtilities keyPathsAndValuesForPredicate:v11];
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

  v66 = a5;
  if (!v7)
  {
    objb = MEMORY[0x277CCA9B8];
    v29 = MEMORY[0x277CBEAC0];
    v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"Null request."];
    [v29 dictionaryWithObject:v30 forKey:*MEMORY[0x277CCA450]];
    v31 = v12;
    v32 = v11;
    v33 = v8;
    v34 = v9;
    v36 = v35 = v10;
    v14 = [objb errorWithDomain:@"com.apple.PerfPowerServicesReader.request" code:1 userInfo:v36];

    v10 = v35;
    v9 = v34;
    v8 = v33;
    v11 = v32;
    v12 = v31;
    v7 = 0;

    goto LABEL_15;
  }

  v79 = 0;
  v13 = [PPSRequestValidator _validateFilepath:v8 error:&v79];
  v14 = v79;
  if (!v13)
  {
    goto LABEL_15;
  }

  v78 = v14;
  v15 = +[PPSRequestValidator _validateRequestType:error:](PPSRequestValidator, "_validateRequestType:error:", [v7 requestType], &v78);
  v16 = v78;

  if (!v15)
  {
    goto LABEL_14;
  }

  v77 = v16;
  v17 = [PPSRequestValidator _validatePredicateRequiredKey:@"subsystem" value:v9 error:&v77];
  v14 = v77;

  if (!v17)
  {
    goto LABEL_15;
  }

  v76 = v14;
  v18 = [PPSRequestValidator _validatePredicateRequiredKey:@"category" value:v10 error:&v76];
  v16 = v76;

  if (!v18)
  {
LABEL_14:
    v14 = v16;
LABEL_15:
    a5 = v66;
    if (!v14)
    {
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  v58 = v16;
  if ([v7 requestType] == 2)
  {
    v19 = [v7 metrics];
    v20 = v10;
    v21 = [v19 count];

    v22 = v21 >= 2;
    v10 = v20;
    if (v22)
    {
      v23 = MEMORY[0x277CCA9B8];
      v24 = MEMORY[0x277CBEAC0];
      v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"Interval-set requests only support a single metric."];
      v26 = [v24 dictionaryWithObject:v25 forKey:*MEMORY[0x277CCA450]];
      v10 = v20;
      v14 = [v23 errorWithDomain:@"com.apple.PerfPowerServicesReader.request" code:5 userInfo:v26];

      goto LABEL_15;
    }
  }

  v57 = v12;
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  obj = [v7 metrics];
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
        if (![objc_opt_class() _isMetricDefinedForFilepath:v8 subsystem:v9 category:v10 name:v45])
        {
          v53 = MEMORY[0x277CCA9B8];
          v54 = MEMORY[0x277CBEAC0];
          v55 = [MEMORY[0x277CCACA8] stringWithFormat:@"Select metric '%@' is not defined for subsystem='%@', category='%@'", v45, v9, v10];
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
    v59 = v10;
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
        if (v8)
        {
          [PPSOffDeviceIngesterUtilities metricDefinitionForFilepath:v8 subsystem:v9 category:v10 metricName:v49];
        }

        else
        {
          [PPSOnDeviceIngesterUtilities metricDefinitionForSubsystem:v9 category:v10 metricName:v49];
        }
        v50 = ;
        v51 = [v62 objectForKeyedSubscript:v49];
        v67 = v48;
        v52 = [PPSRequestValidator _validatePredicateValue:v51 metricDefinition:v50 error:&v67];
        v46 = v67;

        objc_autoreleasePoolPop(obja);
        if (!v52)
        {
          v10 = v59;
          goto LABEL_44;
        }

        ++v47;
        v48 = v46;
        v10 = v59;
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
  a5 = v66;
  v12 = v57;
  if (v14)
  {
LABEL_16:
    v37 = PPSReaderLog();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      [PPSRequestValidator validateDataRequest:v14 filepath:v37 withError:?];
    }

    if (a5)
    {
      v38 = v14;
      *a5 = v14;
    }
  }

LABEL_20:

  v39 = *MEMORY[0x277D85DE8];
  return v14 == 0;
}

+ (BOOL)_isMetricDefinedForFilepath:(id)a3 subsystem:(id)a4 category:(id)a5 name:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if ([v12 isEqualToString:@"BLD"] & 1) != 0 || (objc_msgSend(v12, "isEqualToString:", @"timestamp"))
  {
    v13 = 1;
  }

  else
  {
    if (v9)
    {
      [PPSOffDeviceIngesterUtilities metricDefinitionForFilepath:v9 subsystem:v10 category:v11 metricName:v12];
    }

    else
    {
      [PPSOnDeviceIngesterUtilities metricDefinitionForSubsystem:v10 category:v11 metricName:v12];
    }
    v14 = ;
    v13 = v14 != 0;
  }

  return v13;
}

+ (BOOL)_validateFilepath:(id)a3 error:(id *)a4
{
  v5 = [a3 path];
  v6 = [v5 stringByExpandingTildeInPath];

  if (v6)
  {
    v7 = [MEMORY[0x277CCAA00] defaultManager];
    v8 = [v7 fileExistsAtPath:v6];

    if (a4 && (v8 & 1) == 0)
    {
      v9 = MEMORY[0x277CCA9B8];
      v10 = MEMORY[0x277CBEAC0];
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"File doesn't exist: '%@'", v6];
      v12 = [v10 dictionaryWithObject:v11 forKey:*MEMORY[0x277CCA450]];
      *a4 = [v9 errorWithDomain:@"com.apple.PerfPowerServicesReader.request" code:5 userInfo:v12];

      v8 = 0;
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

+ (BOOL)_validatePredicateRequiredKey:(id)a3 value:(id)a4 error:(id *)a5
{
  if (!a4 && a5)
  {
    v7 = MEMORY[0x277CCA9B8];
    v8 = MEMORY[0x277CBEAC0];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Missing required field in predicate: '%@'.", a3];
    v10 = [v8 dictionaryWithObject:v9 forKey:*MEMORY[0x277CCA450]];
    *a5 = [v7 errorWithDomain:@"com.apple.PerfPowerServicesReader.request" code:3 userInfo:v10];
  }

  return a4 != 0;
}

+ (BOOL)_validatePredicateValue:(id)a3 metricDefinition:(id)a4 error:(id *)a5
{
  v63 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  v10 = 1;
  if (v7 && v8)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v8, "datatype")}];
    v12 = [kMetricDataTypeToClass objectForKey:v11];
    v13 = 0x277CCA000uLL;
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && ([v7 isEqualToString:&stru_286FFF1D8])
    {
      goto LABEL_21;
    }

    if ([v7 conformsToProtocol:&unk_28702FB30])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v14 = v7;
        v15 = [v14 countByEnumeratingWithState:&v48 objects:v62 count:16];
        if (!v15)
        {
          v10 = 1;
LABEL_37:

          goto LABEL_38;
        }

        v16 = v15;
        v46 = a5;
        v47 = v11;
        v17 = *v49;
LABEL_10:
        v18 = 0;
        while (1)
        {
          if (*v49 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v48 + 1) + 8 * v18);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if ([v19 expressionType])
            {
              v25 = PPSReaderLog();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
              {
                [PPSRequestValidator _validatePredicateValue:v9 metricDefinition:v19 error:v25];
              }

              v11 = v47;
              goto LABEL_35;
            }

            v20 = [v19 constantValue];

            v19 = v20;
          }

          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            break;
          }

          if (v16 == ++v18)
          {
            v16 = [v14 countByEnumeratingWithState:&v48 objects:v62 count:16];
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
          v39 = [v9 subsystem];
          v40 = [v9 category];
          v41 = [v9 name];
          v42 = objc_opt_class();
          v43 = NSStringFromClass(v42);
          v44 = NSStringFromClass(v12);
          *buf = 138413314;
          v53 = v39;
          v54 = 2112;
          v55 = v40;
          v56 = 2112;
          v57 = v41;
          v58 = 2114;
          v59 = v43;
          v60 = 2114;
          v61 = v44;
          _os_log_debug_impl(&dword_25E225000, v26, OS_LOG_TYPE_DEBUG, "Validation: Type mismatch for entry in provided array '%@::%@::%@' -- %{public}@ != %{public}@ (expected)", buf, 0x34u);
        }

        v11 = v47;
        if (v46)
        {
          v45 = MEMORY[0x277CCA9B8];
          v27 = MEMORY[0x277CBEAC0];
          v28 = MEMORY[0x277CCACA8];
          v25 = [v9 name];
          v29 = [v28 stringWithFormat:@"Mismatch between value type of '%@' in predicate and its metric definition.", v25];
          v30 = [v27 dictionaryWithObject:v29 forKey:*MEMORY[0x277CCA450]];
          *v46 = [v45 errorWithDomain:@"com.apple.PerfPowerServicesReader.request" code:3 userInfo:v30];

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
        v33 = [v9 subsystem];
        v34 = [v9 category];
        v35 = [v9 name];
        v36 = objc_opt_class();
        v37 = NSStringFromClass(v36);
        v38 = NSStringFromClass(v12);
        *buf = 138413314;
        v53 = v33;
        v54 = 2112;
        v55 = v34;
        v56 = 2112;
        v57 = v35;
        v58 = 2114;
        v59 = v37;
        v60 = 2114;
        v61 = v38;
        _os_log_debug_impl(&dword_25E225000, v21, OS_LOG_TYPE_DEBUG, "Validation: Type mismatch for metric '%@::%@::%@' -- %{public}@ != %{public}@ (expected)", buf, 0x34u);

        v13 = 0x277CCA000;
      }

      if (a5)
      {
        v22 = MEMORY[0x277CCA9B8];
        v23 = MEMORY[0x277CBEAC0];
        v24 = *(v13 + 3240);
        v14 = [v9 name];
        v19 = [v24 stringWithFormat:@"Mismatch between value type of '%@' in predicate and its metric definition.", v14];
        v25 = [v23 dictionaryWithObject:v19 forKey:*MEMORY[0x277CCA450]];
        *a5 = [v22 errorWithDomain:@"com.apple.PerfPowerServicesReader.request" code:3 userInfo:v25];
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

+ (BOOL)_validateRequestType:(int64_t)a3 error:(id *)a4
{
  if (a3 >= 3 && a4)
  {
    v6 = MEMORY[0x277CCA9B8];
    v7 = MEMORY[0x277CBEAC0];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid request type."];
    v9 = [v7 dictionaryWithObject:v8 forKey:*MEMORY[0x277CCA450]];
    *a4 = [v6 errorWithDomain:@"com.apple.PerfPowerServicesReader.request" code:2 userInfo:v9];
  }

  return a3 < 3;
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