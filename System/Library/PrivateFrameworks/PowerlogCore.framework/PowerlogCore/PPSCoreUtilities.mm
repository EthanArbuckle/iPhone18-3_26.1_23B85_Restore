@interface PPSCoreUtilities
+ (BOOL)hasCapability:(int)capability;
+ (BOOL)isAllowedMetric:(id)metric;
+ (BOOL)isAllowedPopulation:(int)population;
+ (BOOL)isAllowedSubsystem:(id)subsystem;
+ (BOOL)isAllowedSubsystem:(id)subsystem category:(id)category;
+ (BOOL)isSetupAllowedForMetric:(id)metric;
+ (BOOL)isValidModeForMetric:(id)metric;
+ (BOOL)shouldLogMetric:(id)metric;
+ (BOOL)shouldOverrideAllowlist:(id)allowlist;
+ (BOOL)shouldSetupMetric:(id)metric;
+ (id)deviceCapabilityMapping;
+ (id)getAllowlist;
+ (id)getTestAllowlist;
+ (id)md5Hash:(id)hash;
+ (id)mergeNestedDictionary:(id)dictionary withDict:(id)dict;
+ (void)getTestAllowlist;
@end

@implementation PPSCoreUtilities

+ (id)getAllowlist
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__PPSCoreUtilities_getAllowlist__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (getAllowlist_once_token != -1)
  {
    dispatch_once(&getAllowlist_once_token, block);
  }

  v2 = getAllowlist_allowlist;

  return v2;
}

void __32__PPSCoreUtilities_getAllowlist__block_invoke(uint64_t a1)
{
  v2 = +[PLPlatform internalBuild];
  v3 = [*(a1 + 32) getPrivacyAllowlist];
  v4 = getAllowlist_allowlist;
  getAllowlist_allowlist = v3;

  if (v2)
  {
    v5 = getAllowlist_allowlist;
    v8 = [*(a1 + 32) getTestAllowlist];
    v6 = [PPSCoreUtilities mergeNestedDictionary:v5 withDict:v8];
    v7 = getAllowlist_allowlist;
    getAllowlist_allowlist = v6;
  }
}

+ (id)getTestAllowlist
{
  v2 = MEMORY[0x1E695DFF8];
  v3 = +[PPSFileUtilities containerPath];
  v4 = [v3 stringByAppendingString:@"/Library/PerfPowerTelemetry/"];
  v5 = [v4 stringByAppendingString:@"Test/"];
  v6 = [v5 stringByAppendingString:@"testAllowlist.plist"];
  v7 = [v2 fileURLWithPath:v6 isDirectory:0];

  v12 = 0;
  v8 = [objc_alloc(MEMORY[0x1E695DF20]) initWithContentsOfURL:v7 error:&v12];
  v9 = v12;
  if (v9)
  {
    v10 = PPSLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      +[(PPSCoreUtilities *)v10];
    }
  }

  return v8;
}

+ (BOOL)isValidModeForMetric:(id)metric
{
  metricCopy = metric;
  mode = [metricCopy mode];
  if (mode <= 3)
  {
    if (mode <= 1)
    {
      if (!mode)
      {
        v7 = PPSLogCommon();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          [PPSCoreUtilities isValidModeForMetric:metricCopy];
        }

        goto LABEL_26;
      }

      if (mode == 1)
      {
        if (+[PLDefaults liteMode])
        {
          goto LABEL_16;
        }

LABEL_15:
        if (+[PLDefaults taskMode])
        {
          goto LABEL_16;
        }

        goto LABEL_22;
      }

LABEL_24:
      v7 = PPSLogCommon();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [PPSCoreUtilities isValidModeForMetric:metricCopy];
      }

LABEL_26:

      v6 = 0;
      goto LABEL_27;
    }

    if (mode == 2)
    {
      v5 = +[PLDefaults liteMode];
      goto LABEL_23;
    }

LABEL_12:
    v5 = +[PLDefaults taskMode];
LABEL_23:
    v6 = v5;
    goto LABEL_27;
  }

  if (mode > 5)
  {
    if (mode != 6)
    {
      if (mode == 7)
      {
        goto LABEL_15;
      }

      goto LABEL_24;
    }

    if (+[PLDefaults liteMode])
    {
      goto LABEL_16;
    }

LABEL_22:
    v5 = +[PLDefaults fullMode];
    goto LABEL_23;
  }

  if (mode == 4)
  {
    goto LABEL_22;
  }

  if (!+[PLDefaults liteMode])
  {
    goto LABEL_12;
  }

LABEL_16:
  v6 = 1;
LABEL_27:

  return v6;
}

+ (BOOL)isSetupAllowedForMetric:(id)metric
{
  metricCopy = metric;
  v5 = [self isValidModeForMetric:metricCopy];
  mode = [metricCopy mode];
  v7 = mode > 7 || ((1 << mode) & 0xA8) == 0;
  if (!v7 && +[PLDefaults taskMode])
  {
    v8 = +[PPSSubmissionUtilities taskingTables];

    v9 = +[PPSSubmissionUtilities taskingTables];
    subsystem = [metricCopy subsystem];
    v11 = [v9 objectForKeyedSubscript:subsystem];

    v12 = +[PPSSubmissionUtilities taskingTables];
    subsystem2 = [metricCopy subsystem];
    v14 = [v12 objectForKeyedSubscript:subsystem2];
    category = [metricCopy category];
    v16 = [v14 containsObject:category];

    if (v11)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    if (!v8)
    {
      v17 = 0;
    }

    v5 &= v17;
  }

  return v5;
}

+ (id)deviceCapabilityMapping
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__PPSCoreUtilities_deviceCapabilityMapping__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (deviceCapabilityMapping_onceToken != -1)
  {
    dispatch_once(&deviceCapabilityMapping_onceToken, block);
  }

  v2 = deviceCapabilityMapping_deviceCapabilityMap;

  return v2;
}

void __43__PPSCoreUtilities_deviceCapabilityMapping__block_invoke(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = deviceCapabilityMapping_deviceCapabilityMap;
  deviceCapabilityMapping_deviceCapabilityMap = v2;

  for (i = 0; i != 24; ++i)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(a1 + 32), "hasCapability:", i)}];
    [deviceCapabilityMapping_deviceCapabilityMap setObject:v5 atIndexedSubscript:i];
  }
}

+ (BOOL)hasCapability:(int)capability
{
  result = 0;
  switch(capability)
  {
    case 1:
    case 16:
      goto LABEL_6;
    case 2:

      result = +[PLPlatform hasANE];
      break;
    case 3:

      result = +[PLGestaltUtilities hasAOP];
      break;
    case 4:

      result = +[PLPlatform hasAOT];
      break;
    case 5:

      result = +[PLPlatform hasBaseband];
      break;
    case 6:

      result = +[PLUtilities hasBattery];
      break;
    case 8:
      result = ![PLPlatform isDisplayClass:0xFFFFFFFFLL];
      break;
    case 9:

      result = +[PLPlatform hasDCP];
      break;
    case 10:

      result = +[PLPlatform hasLPEM];
      break;
    case 12:

      result = +[PLPlatform hasNFC];
      break;
    case 18:

      result = +[PLPlatform isBasebandIce];
      break;
    case 19:

      result = +[PLPlatform isBasebandMav];
      break;
    case 20:
      if (+[PLPlatform isBasebandProto])
      {
LABEL_6:
        result = 1;
      }

      else
      {

        result = +[PLPlatform isBasebandDale];
      }

      break;
    case 21:

      result = +[PLPlatform hasGenerativeModelSystems];
      break;
    case 22:

      result = +[PLUtilities isHealthDataSubmissionAllowed];
      break;
    case 23:

      result = +[PLGestaltUtilities hasAOP2];
      break;
    default:
      return result;
  }

  return result;
}

+ (BOOL)shouldSetupMetric:(id)metric
{
  metricCopy = metric;
  if (!metricCopy)
  {
    v6 = PPSLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [PPSCoreUtilities shouldSetupMetric:v6];
    }

    goto LABEL_14;
  }

  if (([self isSetupAllowedForMetric:metricCopy] & 1) == 0)
  {
    v6 = PPSLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [PPSCoreUtilities shouldSetupMetric:metricCopy];
    }

    goto LABEL_14;
  }

  if (([self isAllowedPopulation:{objc_msgSend(metricCopy, "enabledPopulation")}] & 1) == 0)
  {
    v6 = PPSLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [PPSCoreUtilities shouldSetupMetric:metricCopy];
    }

    goto LABEL_14;
  }

  if (([self hasCapability:{objc_msgSend(metricCopy, "deviceCapability")}] & 1) == 0)
  {
    v6 = PPSLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [PPSCoreUtilities shouldSetupMetric:metricCopy];
    }

LABEL_14:

    v5 = 0;
    goto LABEL_15;
  }

  v5 = 1;
LABEL_15:

  return v5;
}

+ (BOOL)isAllowedPopulation:(int)population
{
  result = 1;
  if (population <= 1)
  {
    if (population)
    {
      if (population != 1)
      {
        return result;
      }

      goto LABEL_11;
    }

    return 0;
  }

  if (population != 2)
  {
    if (population != 4)
    {
      return result;
    }

    return 0;
  }

  if (+[PLPlatform seedBuild])
  {
    return 1;
  }

LABEL_11:

  return +[PLPlatform internalBuild];
}

+ (BOOL)shouldOverrideAllowlist:(id)allowlist
{
  v14 = *MEMORY[0x1E69E9840];
  allowlistCopy = allowlist;
  if (+[PLPlatform internalBuild])
  {
    v4 = [PLDefaults BOOLForKey:@"overrideAllowlist" ifNotSet:1];
  }

  else
  {
    v5 = PPSLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      subsystem = [allowlistCopy subsystem];
      category = [allowlistCopy category];
      v10 = 138412546;
      v11 = subsystem;
      v12 = 2112;
      v13 = category;
      _os_log_impl(&dword_1D8611000, v5, OS_LOG_TYPE_INFO, "Cannot override allowlist for %@ /%@ on customer OS", &v10, 0x16u);
    }

    v4 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v4;
}

+ (BOOL)shouldLogMetric:(id)metric
{
  v16 = *MEMORY[0x1E69E9840];
  metricCopy = metric;
  if (([self isValidModeForMetric:metricCopy] & 1) == 0)
  {
    v6 = PPSLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [PPSCoreUtilities shouldLogMetric:metricCopy];
    }

    goto LABEL_6;
  }

  if (([self isAllowedMetric:metricCopy] & 1) == 0)
  {
    if ([self shouldOverrideAllowlist:metricCopy])
    {
      subsystem = [metricCopy subsystem];
      v10 = [self isAllowedSubsystem:subsystem];

      if (v10)
      {
        if (![self isPrivacySensitive:metricCopy])
        {
          v6 = PLLogCommon();
          if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
          {
            [PPSCoreUtilities shouldLogMetric:metricCopy];
          }

          v5 = 1;
          goto LABEL_7;
        }

        v6 = PPSLogCommon();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          name = [metricCopy name];
          v12 = 138412546;
          v13 = name;
          v14 = 1024;
          privacyClassification = [metricCopy privacyClassification];
          _os_log_impl(&dword_1D8611000, v6, OS_LOG_TYPE_INFO, "Metric %@ is not a metric in allowlist and its privacy classification is %d", &v12, 0x12u);
        }
      }

      else
      {
        v6 = PPSLogCommon();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          [PPSCoreUtilities shouldLogMetric:metricCopy];
        }
      }
    }

    else
    {
      v6 = PPSLogCommon();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        [PPSCoreUtilities shouldLogMetric:metricCopy];
      }
    }

LABEL_6:
    v5 = 0;
LABEL_7:

    goto LABEL_8;
  }

  v5 = 1;
LABEL_8:

  v7 = *MEMORY[0x1E69E9840];
  return v5;
}

+ (BOOL)isAllowedMetric:(id)metric
{
  metricCopy = metric;
  if (+[PLDefaults fullMode])
  {
    if (![self isPrivacySensitive:metricCopy])
    {
      v6 = 1;
      goto LABEL_13;
    }

    v5 = PPSLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [PPSCoreUtilities isAllowedMetric:metricCopy];
    }

    v6 = 1;
  }

  else
  {
    v5 = +[PPSCoreUtilities getAllowlist];
    subsystem = [metricCopy subsystem];
    v8 = [v5 objectForKeyedSubscript:subsystem];
    category = [metricCopy category];
    v10 = [v8 objectForKeyedSubscript:category];
    name = [metricCopy name];
    v12 = [v10 objectForKeyedSubscript:name];

    [v12 doubleValue];
    v14 = v13;
    [metricCopy version];
    v16 = vabdd_f64(v14, v15);
    v6 = v16 < 0.001;
    if (v16 >= 0.001)
    {
      v17 = PPSLogCommon();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        [PPSCoreUtilities isAllowedMetric:metricCopy];
      }
    }
  }

LABEL_13:
  return v6;
}

+ (BOOL)isAllowedSubsystem:(id)subsystem
{
  subsystemCopy = subsystem;
  if (subsystemCopy)
  {
    v4 = +[PPSCoreUtilities getAllowlist];
    v5 = [v4 objectForKeyedSubscript:subsystemCopy];

    v6 = v5 != 0;
    if (!v5)
    {
      v7 = PPSLogCommon();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        +[PPSCoreUtilities isAllowedSubsystem:];
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)isAllowedSubsystem:(id)subsystem category:(id)category
{
  subsystemCopy = subsystem;
  categoryCopy = category;
  v7 = categoryCopy;
  v8 = 0;
  if (subsystemCopy && categoryCopy)
  {
    if (+[PLDefaults fullMode])
    {
      v8 = 1;
    }

    else
    {
      v9 = +[PPSCoreUtilities getAllowlist];
      v10 = [v9 objectForKeyedSubscript:subsystemCopy];
      v11 = [v10 objectForKeyedSubscript:v7];

      v8 = v11 != 0;
      if (!v11)
      {
        v12 = PPSLogCommon();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          +[PPSCoreUtilities isAllowedSubsystem:category:];
        }
      }
    }
  }

  return v8;
}

+ (id)md5Hash:(id)hash
{
  v10 = *MEMORY[0x1E69E9840];
  uTF8String = [hash UTF8String];
  *md = 0;
  v9 = 0;
  v4 = strlen(uTF8String);
  CC_MD5(uTF8String, v4, md);
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X", md[0], md[1], md[2], md[3], md[4], md[5], md[6], md[7], v9, BYTE1(v9), BYTE2(v9), BYTE3(v9), BYTE4(v9), BYTE5(v9), BYTE6(v9), HIBYTE(v9)];
  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)mergeNestedDictionary:(id)dictionary withDict:(id)dict
{
  dictionaryCopy = dictionary;
  v6 = MEMORY[0x1E695DF90];
  dictCopy = dict;
  v8 = [v6 dictionaryWithDictionary:dictionaryCopy];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __51__PPSCoreUtilities_mergeNestedDictionary_withDict___block_invoke;
  v14[3] = &unk_1E8519948;
  v15 = dictionaryCopy;
  v9 = v8;
  v16 = v9;
  v10 = dictionaryCopy;
  [dictCopy enumerateKeysAndObjectsUsingBlock:v14];

  v11 = v16;
  v12 = v9;

  return v9;
}

void __51__PPSCoreUtilities_mergeNestedDictionary_withDict___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKey:v9];

  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = [*(a1 + 32) objectForKey:v9];
    v8 = [PPSCoreUtilities mergeNestedDictionary:v7 withDict:v5];

    [*(a1 + 40) setObject:v8 forKey:v9];
  }

  else
  {
    [*(a1 + 40) setObject:v5 forKey:v9];
  }
}

+ (void)getTestAllowlist
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = +[PPSFileUtilities containerPath];
  v3 = [v2 stringByAppendingString:@"/Library/PerfPowerTelemetry/"];
  v4 = [v3 stringByAppendingString:@"Test/"];
  v5 = [v4 stringByAppendingString:@"testAllowlist.plist"];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_1D8611000, self, OS_LOG_TYPE_DEBUG, "Could not read test allowlist at path: %@", v7, 0xCu);

  v6 = *MEMORY[0x1E69E9840];
}

+ (void)isValidModeForMetric:(void *)a1 .cold.1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [a1 name];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_2(&dword_1D8611000, v2, v3, "Unknown mode for metric: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

+ (void)isValidModeForMetric:(void *)a1 .cold.2(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [a1 name];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_2(&dword_1D8611000, v2, v3, "Invalid mode for metric: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

+ (void)shouldSetupMetric:(void *)a1 .cold.1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [a1 name];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_2(&dword_1D8611000, v2, v3, "Metric %@ could not be setup - does not meet setup criteria", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

+ (void)shouldSetupMetric:(void *)a1 .cold.2(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [a1 name];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_2(&dword_1D8611000, v2, v3, "Metric %@ could not be setup - does not meet population criteria", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

+ (void)shouldSetupMetric:(void *)a1 .cold.3(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [a1 name];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_2(&dword_1D8611000, v2, v3, "Metric %@ could not be setup - does not meet device capability", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

+ (void)shouldLogMetric:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 name];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

+ (void)shouldLogMetric:(void *)a1 .cold.2(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 name];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

+ (void)shouldLogMetric:(void *)a1 .cold.3(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 subsystem];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

+ (void)shouldLogMetric:(void *)a1 .cold.4(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [a1 subsystem];
  v9 = [a1 category];
  OUTLINED_FUNCTION_1_4();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

+ (void)isAllowedMetric:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 name];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

+ (void)isAllowedMetric:(void *)a1 .cold.2(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [a1 name];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_2(&dword_1D8611000, v2, v3, "Device is in full mode. Flagging privacy sensitive metric %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

+ (void)isAllowedSubsystem:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_1D8611000, v0, OS_LOG_TYPE_DEBUG, "Subsystem %@ not in allowlist", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

+ (void)isAllowedSubsystem:category:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  v4 = 2112;
  v5 = v0;
  _os_log_debug_impl(&dword_1D8611000, v1, OS_LOG_TYPE_DEBUG, "EntryKey setup not allowed for %@/%@", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

@end