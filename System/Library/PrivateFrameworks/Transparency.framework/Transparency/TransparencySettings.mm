@interface TransparencySettings
+ (BOOL)enableSelfValidationXPCActivity;
+ (BOOL)getBool:(id)a3 defaultValue:(BOOL)a4;
+ (BOOL)isAccountsInQA;
+ (double)backgroundFollowupDelayPeriod;
+ (double)defaultQueryCacheTimeout;
+ (double)defaultSelfFollowupTicketLifetime;
+ (double)dismissFailureAfterSeenPeriod;
+ (double)failureIgnorePeriod;
+ (double)queryCacheHardTimeout;
+ (double)queryJustMadeTimeout;
+ (id)automatedDeviceGroup;
+ (id)cfPrefsJson;
+ (id)devicePlatform;
+ (id)deviceUserAgent;
+ (id)getIMEnvironmentName;
+ (id)getOverride:(id)a3;
+ (id)jsonArrayFromPlistArray:(id)a3;
+ (id)jsonDictFromPlistDict:(id)a3;
+ (unint64_t)backgroundFollowupFailureCount;
+ (unint64_t)getEnvironment;
- (double)atBackgroundFollowupDelayPeriod;
- (id)testingPeerValidationFailing;
- (id)testingSelfValidationFailing;
- (unint64_t)ktSignaturePolicy;
- (void)clearKTSignaturePolicy;
@end

@implementation TransparencySettings

+ (unint64_t)getEnvironment
{
  if ([TransparencySettings getBool:@"useQAConfig"])
  {
    return 2;
  }

  if ([TransparencySettings getBool:@"useQA1Config"])
  {
    return 1;
  }

  v3 = +[TransparencySettings getIMEnvironmentName];
  if (![v3 length] && +[TransparencySettings isAccountsInQA](TransparencySettings, "isAccountsInQA") || (objc_msgSend(v3, "isEqualToString:", @"ven1-external") & 1) != 0)
  {
    v2 = 1;
  }

  else if ([v3 isEqualToString:@"ven2-external"])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

+ (BOOL)isAccountsInQA
{
  if (isAccountsInQA_onceToken != -1)
  {
    +[TransparencySettings isAccountsInQA];
  }

  return isAccountsInQA_sIMIsAccountsInQA;
}

+ (id)getIMEnvironmentName
{
  v2 = CFPreferencesCopyAppValue(@"env", @"com.apple.ids");
  v3 = getIMEnvironmentName_name;
  getIMEnvironmentName_name = v2;

  v4 = getIMEnvironmentName_name;

  return v4;
}

void __38__TransparencySettings_isAccountsInQA__block_invoke()
{
  v0 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  v1 = [v0 lastObject];
  v3 = [v1 stringByAppendingPathComponent:@"Caches/com.apple.setmme"];

  v2 = [MEMORY[0x1E696AC08] defaultManager];
  isAccountsInQA_sIMIsAccountsInQA = [v2 fileExistsAtPath:v3];
}

+ (BOOL)getBool:(id)a3 defaultValue:(BOOL)a4
{
  keyExistsAndHasValidFormat = 0;
  v5 = CFPreferencesGetAppBooleanValue(a3, @"com.apple.transparencyd", &keyExistsAndHasValidFormat) != 0;
  if (keyExistsAndHasValidFormat)
  {
    return v5;
  }

  else
  {
    return a4;
  }
}

- (id)testingSelfValidationFailing
{
  v17 = *MEMORY[0x1E69E9840];
  if ([(TransparencySettings *)self allowsInternalSecurityPolicies])
  {
    v2 = CFPreferencesCopyAppValue(@"testingSelfValidationFailing", @"com.apple.transparencyd");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v3 = v2;
      v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v4)
      {
        v5 = v4;
        v6 = *v13;
        while (2)
        {
          for (i = 0; i != v5; ++i)
          {
            if (*v13 != v6)
            {
              objc_enumerationMutation(v3);
            }

            v8 = *(*(&v12 + 1) + 8 * i);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {

              goto LABEL_14;
            }
          }

          v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
          if (v5)
          {
            continue;
          }

          break;
        }
      }

      v9 = v3;
    }

    else
    {
LABEL_14:
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)testingPeerValidationFailing
{
  v17 = *MEMORY[0x1E69E9840];
  if ([(TransparencySettings *)self allowsInternalSecurityPolicies])
  {
    v2 = CFPreferencesCopyAppValue(@"testingPeerValidationFailing", @"com.apple.transparencyd");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v3 = v2;
      v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v4)
      {
        v5 = v4;
        v6 = *v13;
        while (2)
        {
          for (i = 0; i != v5; ++i)
          {
            if (*v13 != v6)
            {
              objc_enumerationMutation(v3);
            }

            v8 = *(*(&v12 + 1) + 8 * i);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {

              goto LABEL_14;
            }
          }

          v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
          if (v5)
          {
            continue;
          }

          break;
        }
      }

      v9 = v3;
    }

    else
    {
LABEL_14:
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (double)defaultQueryCacheTimeout
{
  v2 = [TransparencySettings getOverride:@"overrideDefaultQueryCacheTimeout"];
  v3 = 86400.0;
  if (v2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = [v2 unsignedIntegerValue];
    }
  }

  return v3;
}

+ (double)queryCacheHardTimeout
{
  v2 = [TransparencySettings getOverride:@"overrideQueryCacheHardTimeout"];
  v3 = 604800.0;
  if (v2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = [v2 unsignedIntegerValue];
    }
  }

  return v3;
}

+ (double)queryJustMadeTimeout
{
  v2 = [TransparencySettings getOverride:@"overrideQueryJustMadeTimeout"];
  v3 = 3.0;
  if (v2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = [v2 unsignedIntegerValue];
    }
  }

  return v3;
}

+ (double)dismissFailureAfterSeenPeriod
{
  v2 = [TransparencySettings getOverride:@"overrideFailureDismissAfterSeenSeconds"];
  v3 = 3600.0;
  if (v2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = [v2 unsignedIntegerValue];
    }
  }

  return v3;
}

+ (double)failureIgnorePeriod
{
  v2 = [TransparencySettings getOverride:@"overrideFailureIgnorePeriod"];
  v3 = 86400.0;
  if (v2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = [v2 unsignedIntegerValue];
    }
  }

  return v3;
}

+ (double)defaultSelfFollowupTicketLifetime
{
  v2 = [TransparencySettings getOverride:@"overrideSelfValidationTicketExpiry"];
  v3 = 86400.0;
  if (v2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = [v2 unsignedIntegerValue];
    }
  }

  return v3;
}

+ (double)backgroundFollowupDelayPeriod
{
  v2 = [TransparencySettings getOverride:@"overrideBackgroundFollowupDelayPeriod"];
  v3 = 172800.0;
  if (v2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = [v2 unsignedIntegerValue];
    }
  }

  return v3;
}

+ (unint64_t)backgroundFollowupFailureCount
{
  v2 = [TransparencySettings getOverride:@"overrideBackgroundFollowupFailureCount"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = [v2 unsignedIntegerValue];
  }

  else
  {
    v3 = 6;
  }

  return v3;
}

- (double)atBackgroundFollowupDelayPeriod
{
  v2 = [TransparencySettings getOverride:@"overrideATBackgroundFollowupDelayPeriod"];
  v3 = 604800.0;
  if (v2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = [v2 unsignedIntegerValue];
    }
  }

  return v3;
}

+ (BOOL)enableSelfValidationXPCActivity
{
  if (!os_variant_allows_internal_security_policies())
  {
    return 1;
  }

  v2 = [TransparencySettings getOverride:@"enableSelfValidationXPCActivity"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = [v2 BOOLValue];
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

+ (id)deviceUserAgent
{
  if (deviceUserAgent_onceToken != -1)
  {
    +[TransparencySettings deviceUserAgent];
  }

  v2 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"com.apple.Transparency"];
  [v2 appendFormat:@" [%@, %@]", deviceUserAgent_deviceClass, deviceUserAgent_buildVersion];

  return v2;
}

void __39__TransparencySettings_deviceUserAgent__block_invoke()
{
  v0 = _CFCopySystemVersionDictionary();
  if (v0)
  {
    v5 = v0;
    v1 = [v0 objectForKeyedSubscript:*MEMORY[0x1E695E1E8]];
    v2 = deviceUserAgent_buildVersion;
    deviceUserAgent_buildVersion = v1;

    v3 = [v5 objectForKeyedSubscript:*MEMORY[0x1E695E1F0]];
    v4 = deviceUserAgent_deviceClass;
    deviceUserAgent_deviceClass = v3;

    v0 = v5;
  }
}

+ (id)devicePlatform
{
  if (devicePlatform_onceToken != -1)
  {
    +[TransparencySettings devicePlatform];
  }

  v2 = [devicePlatform_deviceClass lowercaseString];
  v3 = [v2 stringByReplacingOccurrencesOfString:@" " withString:&stru_1F5BF95A8];

  return v3;
}

void __38__TransparencySettings_devicePlatform__block_invoke()
{
  v0 = _CFCopySystemVersionDictionary();
  if (v0)
  {
    v3 = v0;
    v1 = [v0 objectForKeyedSubscript:*MEMORY[0x1E695E1F0]];
    v2 = devicePlatform_deviceClass;
    devicePlatform_deviceClass = v1;

    v0 = v3;
  }
}

+ (id)automatedDeviceGroup
{
  if (automatedDeviceGroup_onceToken != -1)
  {
    +[TransparencySettings automatedDeviceGroup];
  }

  v3 = automatedDeviceGroup_automatedDeviceGroup;

  return v3;
}

uint64_t __44__TransparencySettings_automatedDeviceGroup__block_invoke()
{
  automatedDeviceGroup_automatedDeviceGroup = [MEMORY[0x1E69B7C10] automatedDeviceGroup];

  return MEMORY[0x1EEE66BB8]();
}

- (unint64_t)ktSignaturePolicy
{
  if (!os_variant_allows_internal_security_policies())
  {
    return 0;
  }

  v3 = [(TransparencySettings *)self getOverride:@"overrideSignaturePolicy"];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 intValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)clearKTSignaturePolicy
{
  if (os_variant_allows_internal_security_policies())
  {

    CFPreferencesSetAppValue(@"overrideSignaturePolicy", 0, @"com.apple.transparencyd");
  }
}

+ (id)getOverride:(id)a3
{
  v3 = CFPreferencesCopyAppValue(a3, @"com.apple.transparencyd");

  return v3;
}

+ (id)jsonArrayFromPlistArray:(id)a3
{
  v3 = MEMORY[0x1E695DF70];
  v4 = a3;
  v5 = [v3 array];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__TransparencySettings_jsonArrayFromPlistArray___block_invoke;
  v8[3] = &unk_1E8701C18;
  v6 = v5;
  v9 = v6;
  [v4 enumerateObjectsUsingBlock:v8];

  return v6;
}

void __48__TransparencySettings_jsonArrayFromPlistArray___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v4 = v3;
LABEL_4:
    v5 = v4;
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [TransparencySettings jsonArrayFromPlistArray:v3];
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [TransparencySettings jsonDictFromPlistDict:v3];
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 kt_hexString];
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 kt_toISO_8601_UTCString];
    goto LABEL_4;
  }

  v5 = [v3 description];
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_6 != -1)
  {
    __48__TransparencySettings_jsonArrayFromPlistArray___block_invoke_cold_1();
  }

  v7 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_6;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_6, OS_LOG_TYPE_ERROR))
  {
    v8 = v7;
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = 138412546;
    v12 = v10;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_1E10DB000, v8, OS_LOG_TYPE_ERROR, "jsonFromPlist: failed to convert obj (class: %@) %@, using description", &v11, 0x16u);
  }

LABEL_5:
  [*(a1 + 32) addObject:v5];

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t __48__TransparencySettings_jsonArrayFromPlistArray___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_6 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

+ (id)jsonDictFromPlistDict:(id)a3
{
  v3 = MEMORY[0x1E695DF90];
  v4 = a3;
  v5 = [v3 dictionary];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __46__TransparencySettings_jsonDictFromPlistDict___block_invoke;
  v8[3] = &unk_1E8701C40;
  v6 = v5;
  v9 = v6;
  [v4 enumerateKeysAndObjectsUsingBlock:v8];

  return v6;
}

void __46__TransparencySettings_jsonDictFromPlistDict___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v5;
LABEL_7:
    v8 = v7;
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v5 kt_hexString];
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v5 kt_toISO_8601_UTCString];
    goto LABEL_7;
  }

  v8 = [v5 description];
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_6 != -1)
  {
    __46__TransparencySettings_jsonDictFromPlistDict___block_invoke_cold_1();
  }

  v12 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_6;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_6, OS_LOG_TYPE_ERROR))
  {
    v13 = v12;
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v20 = 138412546;
    v21 = v15;
    v22 = 2112;
    v23 = v5;
    _os_log_impl(&dword_1E10DB000, v13, OS_LOG_TYPE_ERROR, "jsonFromPlist: failed to convert key (class: %@) %@, using description", &v20, 0x16u);
  }

LABEL_8:
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v9 = v6;
LABEL_11:
    v10 = v9;
    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [TransparencySettings jsonArrayFromPlistArray:v6];
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [TransparencySettings jsonDictFromPlistDict:v6];
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v6 kt_hexString];
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v6 kt_toISO_8601_UTCString];
    goto LABEL_11;
  }

  v10 = [v6 description];
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_6 != -1)
  {
    __46__TransparencySettings_jsonDictFromPlistDict___block_invoke_cold_2();
  }

  v16 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_6;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_6, OS_LOG_TYPE_ERROR))
  {
    v17 = v16;
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v20 = 138412546;
    v21 = v19;
    v22 = 2112;
    v23 = v6;
    _os_log_impl(&dword_1E10DB000, v17, OS_LOG_TYPE_ERROR, "jsonFromPlist: failed to convert obj (class: %@) %@, using description", &v20, 0x16u);
  }

LABEL_12:
  if (v8 && v10)
  {
    [*(a1 + 32) setObject:v10 forKeyedSubscript:v8];
  }

  v11 = *MEMORY[0x1E69E9840];
}

uint64_t __46__TransparencySettings_jsonDictFromPlistDict___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_6 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __46__TransparencySettings_jsonDictFromPlistDict___block_invoke_154()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_6 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

+ (id)cfPrefsJson
{
  v2 = CFPreferencesCopyMultiple(0, @"com.apple.transparencyd", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  v3 = [TransparencySettings jsonDictFromPlistDict:v2];

  return v3;
}

@end