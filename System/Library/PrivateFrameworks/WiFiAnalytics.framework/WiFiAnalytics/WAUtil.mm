@interface WAUtil
+ (BOOL)canDeleteStore;
+ (BOOL)isAnalyticsStoreAllowed;
+ (BOOL)isAnyWiFiAppInstalled;
+ (BOOL)isKeyBagUnlocked;
+ (BOOL)isMacAddress:(id)address;
+ (BOOL)isPreinstalledWiFiAppVisible;
+ (BOOL)isWiFiAppInstalled;
+ (BOOL)isWiFiFragmentSamplingEnabled;
+ (BOOL)isWildcardMacAddress:(id)address;
+ (BOOL)setFutureApfsPurgeableDeadline:(unint64_t)deadline forURL:(id)l;
+ (BOOL)shouldProcessAnalyticsImmediately;
+ (BOOL)storeToken:(id)token withIdentifier:(id)identifier;
+ (NSURL)wifianalyticsTmpDirectory;
+ (id)_generateInvocationForMethod:(void *)method;
+ (id)_getBaseTokenStorageKeychainQueryWithIdentifer:(id)identifer;
+ (id)customMigrationOnProcess;
+ (id)customProcessInChargeOfDataProcessingForPolicies;
+ (id)customXPCStoreOnProcess;
+ (id)deviceName;
+ (id)filterArray:(id)array usingPredicate:(id)predicate;
+ (id)filterSet:(id)set usingPredicate:(id)predicate;
+ (id)getCopyOfMessage:(id)message withNumericalValuesSubstractedByValuesInMessage:(id)inMessage;
+ (id)getMessageInstanceForKey:(id)key andGroupType:(int64_t)type;
+ (id)getNumberPreference:(id)preference domain:(id)domain;
+ (id)getTokenForIdentifier:(id)identifier;
+ (id)getValueForEntitlementForCurrentProcess:(id)process;
+ (id)groupTypeToString:(int64_t)string;
+ (id)rotateUUIDsForMessage:(id)message;
+ (id)trimTokenForLogging:(id)logging;
+ (int64_t)countTotalKeysIn:(id)in;
+ (int64_t)countTotalKeysInNSObject:(id)object;
+ (unint64_t)getAWDTimestamp;
+ (void)addDeltaNSNumberForTelemetryKey:(id)key dictKey:(id)dictKey dictModule:(id)module telDict:(id)dict recentDict:(id)recentDict oldDict:(id)oldDict;
+ (void)addFieldsForAuthFlagsLikeKey:(id)key inDict:(id)dict;
+ (void)addFieldsForChannelFlagLikeKey:(id)key inDict:(id)dict;
+ (void)getLazyNSNumberPreference:(id)preference domain:(id)domain exists:(id)exists;
+ (void)getLazyNSStringPreference:(id)preference domain:(id)domain exists:(id)exists;
+ (void)incrementValueForKey:(id)key inMutableDict:(id)dict onQueue:(id)queue;
+ (void)initialize;
+ (void)logNestedDictionary:(id)dictionary indent:(int)indent prefix:(id)prefix;
+ (void)setPreference:(id)preference domain:(id)domain value:(id)value;
+ (void)sumNSNumberForKey:(id)key dstDict:(id)dict otherDict:(id)otherDict;
@end

@implementation WAUtil

+ (BOOL)isKeyBagUnlocked
{
  v18[1] = *MEMORY[0x1E69E9840];
  if (MEMORY[0x1EEE8C578])
  {
    v17 = @"ExtendedDeviceLockState";
    v18[0] = MEMORY[0x1E695E118];
    v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v3 = MKBGetDeviceLockState();
    v4 = (v3 < 8) & (0x89u >> v3);
    v5 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "NO";
      v9 = 136446978;
      v10 = "+[WAUtil isKeyBagUnlocked]";
      v12 = 80;
      v11 = 1024;
      if (v4)
      {
        v6 = "YES";
      }

      v13 = 1024;
      v14 = v3;
      v15 = 2080;
      v16 = v6;
      _os_log_impl(&dword_1C8460000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:KeyBag ret:%d Unlocked: %s", &v9, 0x22u);
    }
  }

  else
  {
    v2 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136446466;
      v10 = "+[WAUtil isKeyBagUnlocked]";
      v11 = 1024;
      v12 = 82;
      _os_log_impl(&dword_1C8460000, v2, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:MKBGetDeviceLockState not available. Assume unlocked.", &v9, 0x12u);
    }

    LOBYTE(v4) = 1;
  }

  v7 = *MEMORY[0x1E69E9840];
  return v4;
}

+ (BOOL)isAnalyticsStoreAllowed
{
  v15 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = _os_feature_enabled_impl();
  if ((v8[3] & 1) == 0)
  {
    v2 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v12 = "+[WAUtil isAnalyticsStoreAllowed]";
      v13 = 1024;
      v14 = 765;
      _os_log_impl(&dword_1C8460000, v2, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Use of the WiFi Analytics Store is disabled on this platform", buf, 0x12u);
    }
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __33__WAUtil_isAnalyticsStoreAllowed__block_invoke;
  v6[3] = &unk_1E830D818;
  v6[4] = &v7;
  [WAUtil getLazyNSNumberPreference:@"WAStore_isAnalyticsStoreAllowed" domain:@"com.apple.wifi.analytics" exists:v6];
  v3 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  v4 = *MEMORY[0x1E69E9840];
  return v3;
}

+ (void)initialize
{
  v2 = objc_autoreleasePoolPush();
  _MergedGlobals_4 = MGGetBoolAnswer();
  v3 = MGGetStringAnswer();
  [v3 isEqualToString:@"Beta"];

  v4 = qword_1EDE5CB00;
  qword_1EDE5CB00 = 0;

  objc_autoreleasePoolPop(v2);
}

+ (NSURL)wifianalyticsTmpDirectory
{
  v12 = *MEMORY[0x1E69E9840];
  if (qword_1EDE5CB08 != -1)
  {
    dispatch_once(&qword_1EDE5CB08, &__block_literal_global_3);
  }

  v2 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136446722;
    v7 = "+[WAUtil wifianalyticsTmpDirectory]";
    v8 = 1024;
    v9 = 704;
    v10 = 2112;
    v11 = qword_1EDE5CB00;
    _os_log_impl(&dword_1C8460000, v2, OS_LOG_TYPE_DEBUG, "%{public}s::%d:wifianalyticsDirectory: %@", &v6, 0x1Cu);
  }

  v3 = qword_1EDE5CB00;
  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

void __35__WAUtil_wifianalyticsTmpDirectory__block_invoke()
{
  v20 = *MEMORY[0x1E69E9840];
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"/var/log/com.apple.wifi.analytics" isDirectory:1];
  if (v1)
  {
    v2 = [MEMORY[0x1E696AC08] defaultManager];
    v3 = [v1 path];
    v4 = [v2 fileExistsAtPath:v3 isDirectory:0];

    if ((v4 & 1) == 0 && ([MEMORY[0x1E696AC08] defaultManager], v5 = objc_claimAutoreleasedReturnValue(), v11 = 0, objc_msgSend(v5, "createDirectoryAtURL:withIntermediateDirectories:attributes:error:", v1, 1, 0, &v11), v6 = v11, v5, v6))
    {
      v9 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = [v1 path];
        *buf = 136446978;
        v13 = "+[WAUtil wifianalyticsTmpDirectory]_block_invoke";
        v14 = 1024;
        v15 = 696;
        v16 = 2112;
        v17 = v10;
        v18 = 2112;
        v19 = v6;
        _os_log_impl(&dword_1C8460000, v9, OS_LOG_TYPE_ERROR, "%{public}s::%d:failed to create wifianalytics tmp directory (%@) with error %@", buf, 0x26u);
      }
    }

    else
    {
      v7 = v1;
      v6 = qword_1EDE5CB00;
      qword_1EDE5CB00 = v7;
    }
  }

  else
  {
    v6 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v13 = "+[WAUtil wifianalyticsTmpDirectory]_block_invoke";
      v14 = 1024;
      v15 = 688;
      _os_log_impl(&dword_1C8460000, v6, OS_LOG_TYPE_ERROR, "%{public}s::%d:Unable to get NSURL for /var/log/com.apple.wifi.analytics", buf, 0x12u);
    }
  }

  objc_autoreleasePoolPop(v0);
  v8 = *MEMORY[0x1E69E9840];
}

+ (id)customMigrationOnProcess
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__5;
  v9 = __Block_byref_object_dispose__5;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __34__WAUtil_customMigrationOnProcess__block_invoke;
  v4[3] = &unk_1E830EB40;
  v4[4] = &v5;
  [WAUtil getLazyNSStringPreference:@"WAStore_EnableMigrateStoreOnProcess" domain:@"com.apple.wifi.analytics" exists:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

+ (id)customXPCStoreOnProcess
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__5;
  v9 = __Block_byref_object_dispose__5;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __33__WAUtil_customXPCStoreOnProcess__block_invoke;
  v4[3] = &unk_1E830EB40;
  v4[4] = &v5;
  [WAUtil getLazyNSStringPreference:@"WAStore_EnableXPCStoreOnProcess" domain:@"com.apple.wifi.analytics" exists:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

+ (id)deviceName
{
  currentHost = [MEMORY[0x1E696AC78] currentHost];
  name = [currentHost name];

  return name;
}

+ (BOOL)storeToken:(id)token withIdentifier:(id)identifier
{
  v25 = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  v6 = [WAUtil _getBaseTokenStorageKeychainQueryWithIdentifer:identifier];
  v7 = v6;
  v8 = v6 == 0;
  if (!v6)
  {
    v13 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v19 = 136446466;
      v20 = "+[WAUtil storeToken:withIdentifier:]";
      v21 = 1024;
      v22 = 106;
      v14 = "%{public}s::%d:Failed to get base keychain query for write op";
      v15 = v13;
      v16 = OS_LOG_TYPE_ERROR;
      v17 = 18;
LABEL_9:
      _os_log_impl(&dword_1C8460000, v15, v16, v14, &v19, v17);
    }

LABEL_10:

    goto LABEL_4;
  }

  SecItemDelete(v6);
  v9 = [tokenCopy dataUsingEncoding:4];
  [(__CFDictionary *)v7 setObject:v9 forKeyedSubscript:*MEMORY[0x1E697B3C0]];

  [(__CFDictionary *)v7 setObject:*MEMORY[0x1E697ABF0] forKeyedSubscript:*MEMORY[0x1E697ABD8]];
  v10 = SecItemAdd(v7, 0);
  if (v10)
  {
    v18 = v10;
    v13 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v19 = 136446722;
      v20 = "+[WAUtil storeToken:withIdentifier:]";
      v21 = 1024;
      v22 = 114;
      v23 = 1024;
      v24 = v18;
      v14 = "%{public}s::%d:Error back from SecItemUpdate()/SecItemAdd(): %d";
      v15 = v13;
      v16 = OS_LOG_TYPE_DEBUG;
      v17 = 24;
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  v8 = 1;
LABEL_4:

  v11 = *MEMORY[0x1E69E9840];
  return v8;
}

+ (id)getTokenForIdentifier:(id)identifier
{
  v22 = *MEMORY[0x1E69E9840];
  result = 0;
  v3 = [WAUtil _getBaseTokenStorageKeychainQueryWithIdentifer:identifier];
  [v3 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E697B318]];
  if (v3)
  {
    v4 = SecItemCopyMatching(v3, &result);
    if (v4)
    {
      v13 = v4;
      v6 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446722;
        v17 = "+[WAUtil getTokenForIdentifier:]";
        v18 = 1024;
        v19 = 131;
        v20 = 1024;
        v21 = v13;
        v10 = "%{public}s::%d:Error back from SecItemCopyMatching(): %d";
        v11 = v6;
        v12 = OS_LOG_TYPE_DEBUG;
        v14 = 24;
LABEL_15:
        _os_log_impl(&dword_1C8460000, v11, v12, v10, buf, v14);
      }
    }

    else
    {
      if (result)
      {
        v5 = objc_alloc(MEMORY[0x1E696AEC0]);
        v6 = result;
        v7 = [v5 initWithData:result encoding:4];
        goto LABEL_5;
      }

      v6 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446466;
        v17 = "+[WAUtil getTokenForIdentifier:]";
        v18 = 1024;
        v19 = 132;
        v10 = "%{public}s::%d:Keychain didn't return any key data";
        v11 = v6;
        v12 = OS_LOG_TYPE_DEBUG;
        goto LABEL_14;
      }
    }
  }

  else
  {
    v6 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v17 = "+[WAUtil getTokenForIdentifier:]";
      v18 = 1024;
      v19 = 128;
      v10 = "%{public}s::%d:Failed to get base keychain query for read op";
      v11 = v6;
      v12 = OS_LOG_TYPE_ERROR;
LABEL_14:
      v14 = 18;
      goto LABEL_15;
    }
  }

  v7 = 0;
LABEL_5:

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)_getBaseTokenStorageKeychainQueryWithIdentifer:(id)identifer
{
  v12[4] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.wifi.analytics.tokenStore.%@", identifer, *MEMORY[0x1E697AC30]];
  v4 = *MEMORY[0x1E697AE88];
  v12[0] = v3;
  v12[1] = @"WiFiAnalytics";
  v5 = *MEMORY[0x1E697ABD0];
  v11[1] = v4;
  v11[2] = v5;
  v11[3] = *MEMORY[0x1E697AFF8];
  v6 = *MEMORY[0x1E697B008];
  v12[2] = @"wifianalyticsd";
  v12[3] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:4];
  v8 = [v7 mutableCopy];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)getMessageInstanceForKey:(id)key andGroupType:(int64_t)type
{
  v50 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  resourcePath = [self resourcePath];
  type = [MEMORY[0x1E696AEC0] stringWithFormat:@"/%ld/", type];
  v9 = [resourcePath stringByAppendingPathComponent:type];

  if (!v9)
  {
    v31 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v43 = "+[WAUtil getMessageInstanceForKey:andGroupType:]";
      v44 = 1024;
      v45 = 153;
      v32 = "%{public}s::%d:Couldn't determine path for group";
      v33 = v31;
      v34 = 18;
LABEL_14:
      _os_log_impl(&dword_1C8460000, v33, OS_LOG_TYPE_ERROR, v32, buf, v34);
    }

LABEL_15:
    v23 = 0;
    v26 = 0;
LABEL_16:

    v25 = 0;
    goto LABEL_9;
  }

  v10 = objc_alloc(MEMORY[0x1E695DEF0]);
  keyCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@.wam", v9, keyCopy];
  v12 = [v10 initWithContentsOfFile:keyCopy options:8 error:0];

  if (!v12)
  {
    v31 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v43 = "+[WAUtil getMessageInstanceForKey:andGroupType:]";
      v44 = 1024;
      v45 = 155;
      v46 = 2112;
      v47 = keyCopy;
      v32 = "%{public}s::%d:Couldn't find obscured data for key: %@";
      v33 = v31;
      v34 = 28;
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  v40 = v9;
  v37 = v12;
  v13 = objc_autoreleasePoolPush();
  v38 = MEMORY[0x1E696ACD0];
  context = v13;
  v14 = MEMORY[0x1E695DFD8];
  v15 = objc_opt_class();
  v16 = keyCopy;
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v19 = objc_opt_class();
  v20 = objc_opt_class();
  v21 = objc_opt_class();
  v22 = objc_opt_class();
  v36 = objc_opt_class();
  v23 = v37;
  v35 = v17;
  keyCopy = v16;
  v24 = [v14 setWithObjects:{v15, v35, v18, v19, v20, v21, v22, v36, objc_opt_class(), 0}];
  v41 = 0;
  v25 = [v38 unarchivedObjectOfClasses:v24 fromData:v37 error:&v41];
  v26 = v41;

  if (v26)
  {
    v27 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v43 = "+[WAUtil getMessageInstanceForKey:andGroupType:]";
      v44 = 1024;
      v45 = 161;
      v46 = 2112;
      v47 = keyCopy;
      v48 = 2112;
      v49 = v26;
      _os_log_impl(&dword_1C8460000, v27, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to unarchive a WAMessageAWD instance with key of %@. Error: %@", buf, 0x26u);
    }
  }

  objc_autoreleasePoolPop(context);
  if (!v25)
  {
    v31 = WALogCategoryDefaultHandle();
    v9 = v40;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v43 = "+[WAUtil getMessageInstanceForKey:andGroupType:]";
      v44 = 1024;
      v45 = 163;
      _os_log_impl(&dword_1C8460000, v31, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to unarchive model data.", buf, 0x12u);
    }

    goto LABEL_16;
  }

  v9 = v40;
LABEL_9:
  v28 = v25;

  v29 = *MEMORY[0x1E69E9840];
  return v25;
}

+ (id)rotateUUIDsForMessage:(id)message
{
  messageCopy = message;
  mutableFields = [messageCopy mutableFields];
  allValues = [mutableFields allValues];
  v7 = [allValues count];

  if (v7)
  {
    v8 = 0;
    do
    {
      mutableFields2 = [messageCopy mutableFields];
      allValues2 = [mutableFields2 allValues];
      v11 = [allValues2 objectAtIndexedSubscript:v8];

      if ([v11 type] == 10)
      {
        if ([v11 isRepeatable])
        {
          repeatableValues = [v11 repeatableValues];
          v13 = [repeatableValues count];

          if (v13)
          {
            v14 = 0;
            do
            {
              repeatableValues2 = [v11 repeatableValues];
              v16 = [repeatableValues2 objectAtIndexedSubscript:v14];

              v17 = [self rotateUUIDsForMessage:v16];
              ++v14;
              repeatableValues3 = [v11 repeatableValues];
              v19 = [repeatableValues3 count];
            }

            while (v14 < v19);
          }
        }

        else
        {
          subMessageValue = [v11 subMessageValue];
          v21 = [self rotateUUIDsForMessage:subMessageValue];
        }
      }

      ++v8;
      mutableFields3 = [messageCopy mutableFields];
      allValues3 = [mutableFields3 allValues];
      v24 = [allValues3 count];
    }

    while (v8 < v24);
  }

  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  [messageCopy setUuid:uUIDString];

  return messageCopy;
}

+ (int64_t)countTotalKeysIn:(id)in
{
  inCopy = in;
  mutableFields = [inCopy mutableFields];
  allValues = [mutableFields allValues];
  v7 = [allValues count];

  v8 = 0;
  if (v7)
  {
    v9 = 0;
    do
    {
      mutableFields2 = [inCopy mutableFields];
      allValues2 = [mutableFields2 allValues];
      v12 = [allValues2 objectAtIndexedSubscript:v9];

      if ([v12 type] == 10)
      {
        if ([v12 isRepeatable])
        {
          repeatableValues = [v12 repeatableValues];
          v14 = [repeatableValues count];

          if (v14)
          {
            v15 = 0;
            do
            {
              v16 = objc_autoreleasePoolPush();
              repeatableValues2 = [v12 repeatableValues];
              v18 = [repeatableValues2 objectAtIndexedSubscript:v15];

              v8 += [self countTotalKeysIn:v18];
              objc_autoreleasePoolPop(v16);
              ++v15;
              repeatableValues3 = [v12 repeatableValues];
              v20 = [repeatableValues3 count];
            }

            while (v15 < v20);
          }
        }

        else
        {
          v21 = objc_autoreleasePoolPush();
          subMessageValue = [v12 subMessageValue];
          v8 += [self countTotalKeysIn:subMessageValue];

          objc_autoreleasePoolPop(v21);
        }
      }

      else
      {
        ++v8;
      }

      ++v9;
      mutableFields3 = [inCopy mutableFields];
      allValues3 = [mutableFields3 allValues];
      v25 = [allValues3 count];
    }

    while (v9 < v25);
  }

  return v8;
}

+ (int64_t)countTotalKeysInNSObject:(id)object
{
  v33 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = objectCopy;
      v5 = [v4 count];
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v6 = v4;
      v7 = [v6 countByEnumeratingWithState:&v27 objects:v32 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v28;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v28 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v27 + 1) + 8 * i);
            v12 = objc_autoreleasePoolPush();
            v13 = [v6 objectForKeyedSubscript:v11];
            v5 += [WAUtil countTotalKeysInNSObject:v13];

            objc_autoreleasePoolPop(v12);
          }

          v8 = [v6 countByEnumeratingWithState:&v27 objects:v32 count:16];
        }

        while (v8);
      }

LABEL_26:

      goto LABEL_27;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v6 = objectCopy;
      v14 = [v6 countByEnumeratingWithState:&v23 objects:v31 count:16];
      if (v14)
      {
        v15 = v14;
        v5 = 0;
        v16 = *v24;
        do
        {
          for (j = 0; j != v15; ++j)
          {
            if (*v24 != v16)
            {
              objc_enumerationMutation(v6);
            }

            v18 = *(*(&v23 + 1) + 8 * j);
            v19 = objc_autoreleasePoolPush();
            v5 += [WAUtil countTotalKeysInNSObject:v18, v23];
            objc_autoreleasePoolPop(v19);
          }

          v15 = [v6 countByEnumeratingWithState:&v23 objects:v31 count:16];
        }

        while (v15);
      }

      else
      {
        v5 = 0;
      }

      goto LABEL_26;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = objectCopy;
      v20 = objc_autoreleasePoolPush();
      v5 = [WAUtil countTotalKeysIn:v6];
      objc_autoreleasePoolPop(v20);
LABEL_27:

      goto LABEL_28;
    }
  }

  v5 = 0;
LABEL_28:

  v21 = *MEMORY[0x1E69E9840];
  return v5;
}

+ (id)groupTypeToString:(int64_t)string
{
  v13 = *MEMORY[0x1E69E9840];
  if ((string - 3) >= 3)
  {
    v5 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 136446722;
      v8 = "+[WAUtil groupTypeToString:]";
      v9 = 1024;
      v10 = 274;
      v11 = 2048;
      stringCopy = string;
      _os_log_impl(&dword_1C8460000, v5, OS_LOG_TYPE_ERROR, "%{public}s::%d:Unhandled group type: %lu", &v7, 0x1Cu);
    }

    result = 0;
  }

  else
  {
    result = off_1E830EB60[string - 3];
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

+ (id)getCopyOfMessage:(id)message withNumericalValuesSubstractedByValuesInMessage:(id)inMessage
{
  v162 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  inMessageCopy = inMessage;
  v7 = [messageCopy key];
  v8 = [inMessageCopy key];
  v9 = [v7 isEqualToString:v8];

  v142 = messageCopy;
  if (v9)
  {
    v10 = [messageCopy copy];
    v11 = messageCopy;
    v12 = v10;
    v149 = 0u;
    v150 = 0u;
    v151 = 0u;
    v152 = 0u;
    mutableFields = [v11 mutableFields];
    allValues = [mutableFields allValues];

    v15 = [allValues countByEnumeratingWithState:&v149 objects:v153 count:16];
    if (!v15)
    {
      goto LABEL_84;
    }

    v16 = v15;
    v17 = *v150;
    v18 = 0x1E830D000uLL;
    v143 = inMessageCopy;
    v145 = *v150;
    v146 = allValues;
    while (1)
    {
      v19 = 0;
      v144 = v16;
      do
      {
        if (*v150 != v17)
        {
          objc_enumerationMutation(allValues);
        }

        v20 = *(*(&v149 + 1) + 8 * v19);
        if (([v20 isNumerical] & 1) != 0 || objc_msgSend(v20, "type") == 10)
        {
          v21 = [v20 key];
          v22 = [inMessageCopy fieldForKey:v21];

          type = [v20 type];
          if (type <= 3)
          {
            switch(type)
            {
              case 1:
                if ([v20 isRepeatable])
                {
                  repeatableValues = [v20 repeatableValues];
                  v63 = [repeatableValues count];

                  if (v63)
                  {
                    v64 = v19;
                    v65 = 0;
                    do
                    {
                      repeatableValues2 = [v20 repeatableValues];
                      v67 = [repeatableValues2 objectAtIndex:v65];

                      repeatableValues3 = [v22 repeatableValues];
                      v69 = [repeatableValues3 objectAtIndex:v65];

                      v70 = [v20 key];
                      v71 = [v12 fieldForKey:v70];
                      bOOLValue = [v69 BOOLValue];
                      [v67 doubleValue];
                      v74 = v73;
                      if (bOOLValue)
                      {
                        [v69 doubleValue];
                        v74 = v74 - v75;
                      }

                      [v71 addRepeatableDoubleValue:v74];

                      ++v65;
                      repeatableValues4 = [v20 repeatableValues];
                      v77 = [repeatableValues4 count];
                    }

                    while (v65 < v77);
                    goto LABEL_63;
                  }

                  goto LABEL_64;
                }

                v148 = v19;
                v118 = [v20 key];
                v119 = [v12 fieldForKey:v118];
                [v20 doubleValue];
                v121 = v120;
                [v22 doubleValue];
                [v119 setDoubleValue:v121 - v122];
                break;
              case 2:
                if ([v20 isRepeatable])
                {
                  repeatableValues5 = [v20 repeatableValues];
                  v105 = [repeatableValues5 count];

                  if (v105)
                  {
                    v64 = v19;
                    v106 = 0;
                    do
                    {
                      repeatableValues6 = [v20 repeatableValues];
                      v108 = [repeatableValues6 objectAtIndex:v106];

                      repeatableValues7 = [v22 repeatableValues];
                      v110 = [repeatableValues7 objectAtIndex:v106];

                      v111 = [v20 key];
                      v112 = [v12 fieldForKey:v111];
                      bOOLValue2 = [v110 BOOLValue];
                      [v108 floatValue];
                      v115 = *&v114;
                      if (bOOLValue2)
                      {
                        [v110 floatValue];
                        v115 = v115 - *&v114;
                      }

                      *&v114 = v115;
                      [v112 addRepeatableFloatValue:v114];

                      ++v106;
                      repeatableValues8 = [v20 repeatableValues];
                      v117 = [repeatableValues8 count];
                    }

                    while (v106 < v117);
LABEL_63:
                    v17 = v145;
                    allValues = v146;
                    v18 = 0x1E830D000;
                    v19 = v64;
                    inMessageCopy = v143;
                    v16 = v144;
                    goto LABEL_80;
                  }

                  goto LABEL_64;
                }

                v148 = v19;
                v118 = [v20 key];
                v119 = [v12 fieldForKey:v118];
                [v20 floatValue];
                v132 = v131;
                [v22 floatValue];
                *&v134 = v132 - v133;
                [v119 setFloatValue:v134];
                break;
              case 3:
                if ([v20 isRepeatable])
                {
                  repeatableValues9 = [v20 repeatableValues];
                  v38 = [repeatableValues9 count];

                  if (v38)
                  {
                    v147 = v19;
                    v39 = 0;
                    do
                    {
                      repeatableValues10 = [v20 repeatableValues];
                      v41 = [repeatableValues10 objectAtIndex:v39];

                      repeatableValues11 = [v22 repeatableValues];
                      v43 = [repeatableValues11 objectAtIndex:v39];

                      v44 = [v20 key];
                      v45 = [v12 fieldForKey:v44];
                      bOOLValue3 = [v43 BOOLValue];
                      intValue = [v41 intValue];
                      if (bOOLValue3)
                      {
                        intValue = intValue - [v43 intValue];
                      }

                      [v45 addRepeatableInt32Value:intValue];

                      ++v39;
                      repeatableValues12 = [v20 repeatableValues];
                      v49 = [repeatableValues12 count];
                    }

                    while (v39 < v49);
                    goto LABEL_56;
                  }

LABEL_64:
                  v18 = 0x1E830D000;
                  goto LABEL_80;
                }

                v148 = v19;
                v118 = [v20 key];
                v119 = [v12 fieldForKey:v118];
                [v119 setInt32Value:{objc_msgSend(v20, "int32Value") - objc_msgSend(v22, "int32Value")}];
                break;
              default:
                goto LABEL_80;
            }
          }

          else
          {
            if (type <= 5)
            {
              if (type == 4)
              {
                if ([v20 isRepeatable])
                {
                  repeatableValues13 = [v20 repeatableValues];
                  v79 = [repeatableValues13 count];

                  if (v79)
                  {
                    v147 = v19;
                    v80 = 0;
                    do
                    {
                      repeatableValues14 = [v20 repeatableValues];
                      v82 = [repeatableValues14 objectAtIndex:v80];

                      repeatableValues15 = [v22 repeatableValues];
                      v84 = [repeatableValues15 objectAtIndex:v80];

                      v85 = [v20 key];
                      v86 = [v12 fieldForKey:v85];
                      bOOLValue4 = [v84 BOOLValue];
                      longLongValue = [v82 longLongValue];
                      if (bOOLValue4)
                      {
                        longLongValue -= [v84 longLongValue];
                      }

                      [v86 addRepeatableInt64Value:longLongValue];

                      ++v80;
                      repeatableValues16 = [v20 repeatableValues];
                      v90 = [repeatableValues16 count];
                    }

                    while (v80 < v90);
                    goto LABEL_56;
                  }

                  goto LABEL_64;
                }

                v148 = v19;
                v118 = [v20 key];
                v119 = [v12 fieldForKey:v118];
                [v119 setInt64Value:{objc_msgSend(v20, "int64Value") - objc_msgSend(v22, "int64Value")}];
              }

              else
              {
                if ([v20 isRepeatable])
                {
                  repeatableValues17 = [v20 repeatableValues];
                  v25 = [repeatableValues17 count];

                  if (v25)
                  {
                    v147 = v19;
                    v26 = 0;
                    do
                    {
                      repeatableValues18 = [v20 repeatableValues];
                      v28 = [repeatableValues18 objectAtIndex:v26];

                      repeatableValues19 = [v22 repeatableValues];
                      v30 = [repeatableValues19 objectAtIndex:v26];

                      v31 = [v20 key];
                      v32 = [v12 fieldForKey:v31];
                      bOOLValue5 = [v30 BOOLValue];
                      unsignedIntValue = [v28 unsignedIntValue];
                      if (bOOLValue5)
                      {
                        unsignedIntValue = unsignedIntValue - [v30 unsignedIntValue];
                      }

                      [v32 addRepeatableUInt32Value:unsignedIntValue];

                      ++v26;
                      repeatableValues20 = [v20 repeatableValues];
                      v36 = [repeatableValues20 count];
                    }

                    while (v26 < v36);
LABEL_56:
                    inMessageCopy = v143;
                    v16 = v144;
                    v17 = v145;
                    allValues = v146;
                    v18 = 0x1E830D000;
                    v19 = v147;
                    goto LABEL_80;
                  }

                  goto LABEL_64;
                }

                v148 = v19;
                v118 = [v20 key];
                v119 = [v12 fieldForKey:v118];
                uint32Value = [v22 uint32Value];
                if (uint32Value <= [v20 uint32Value])
                {
                  uint32Value2 = [v20 uint32Value];
                  v126 = uint32Value2 - [v22 uint32Value];
                }

                else
                {
                  v126 = 0;
                }

                [v119 setUint32Value:v126];
              }

              goto LABEL_78;
            }

            if (type != 6)
            {
              if (type != 10)
              {
                goto LABEL_80;
              }

              if (![v20 isRepeatable])
              {
                v148 = v19;
                v118 = [v20 key];
                v119 = [v12 fieldForKey:v118];
                v127 = *(v18 + 664);
                subMessageValue = [v20 subMessageValue];
                subMessageValue2 = [v22 subMessageValue];
                v130 = [v127 getCopyOfMessage:subMessageValue withNumericalValuesSubstractedByValuesInMessage:subMessageValue2];
                [v119 setSubMessageValue:v130];

                v17 = v145;
                v18 = 0x1E830D000;
                goto LABEL_78;
              }

              repeatableValues21 = [v20 repeatableValues];
              v51 = [repeatableValues21 count];

              if (!v51)
              {
                goto LABEL_64;
              }

              v148 = v19;
              v52 = 0;
              do
              {
                repeatableValues22 = [v20 repeatableValues];
                v54 = [repeatableValues22 objectAtIndex:v52];

                repeatableValues23 = [v22 repeatableValues];
                v56 = [repeatableValues23 objectAtIndex:v52];

                v57 = [v20 key];
                v58 = [v12 fieldForKey:v57];
                v59 = [WAUtil getCopyOfMessage:v54 withNumericalValuesSubstractedByValuesInMessage:v56];
                [v58 addRepeatableSubMessageValue:v59];

                ++v52;
                repeatableValues24 = [v20 repeatableValues];
                v61 = [repeatableValues24 count];
              }

              while (v52 < v61);
              v17 = v145;
              v18 = 0x1E830D000uLL;
              inMessageCopy = v143;
              v16 = v144;
LABEL_79:
              allValues = v146;
              v19 = v148;
              goto LABEL_80;
            }

            if ([v20 isRepeatable])
            {
              repeatableValues25 = [v20 repeatableValues];
              v92 = [repeatableValues25 count];

              if (v92)
              {
                v147 = v19;
                v93 = 0;
                do
                {
                  repeatableValues26 = [v20 repeatableValues];
                  v95 = [repeatableValues26 objectAtIndex:v93];

                  repeatableValues27 = [v22 repeatableValues];
                  v97 = [repeatableValues27 objectAtIndex:v93];

                  v98 = [v20 key];
                  v99 = [v12 fieldForKey:v98];
                  bOOLValue6 = [v97 BOOLValue];
                  unsignedLongLongValue = [v95 unsignedLongLongValue];
                  if (bOOLValue6)
                  {
                    unsignedLongLongValue -= [v97 unsignedLongLongValue];
                  }

                  [v99 addRepeatableUInt64Value:unsignedLongLongValue];

                  ++v93;
                  repeatableValues28 = [v20 repeatableValues];
                  v103 = [repeatableValues28 count];
                }

                while (v93 < v103);
                goto LABEL_56;
              }

              goto LABEL_64;
            }

            v148 = v19;
            v118 = [v20 key];
            v119 = [v12 fieldForKey:v118];
            uint64Value = [v22 uint64Value];
            if (uint64Value <= [v20 uint64Value])
            {
              uint64Value2 = [v20 uint64Value];
              v124 = uint64Value2 - [v22 uint64Value];
            }

            else
            {
              v124 = 0;
            }

            [v119 setUint64Value:v124];
          }

LABEL_78:

          goto LABEL_79;
        }

        v22 = 0;
LABEL_80:

        ++v19;
      }

      while (v19 != v16);
      v137 = [allValues countByEnumeratingWithState:&v149 objects:v153 count:16];
      v16 = v137;
      if (!v137)
      {
        goto LABEL_84;
      }
    }
  }

  allValues = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(allValues, OS_LOG_TYPE_ERROR))
  {
    v140 = [messageCopy key];
    v141 = [inMessageCopy key];
    *buf = 136446978;
    v155 = "+[WAUtil getCopyOfMessage:withNumericalValuesSubstractedByValuesInMessage:]";
    v156 = 1024;
    v157 = 283;
    v158 = 2112;
    v159 = v140;
    v160 = 2112;
    v161 = v141;
    _os_log_impl(&dword_1C8460000, allValues, OS_LOG_TYPE_ERROR, "%{public}s::%d:[WAUtil getCopyOfMessage:withNumericalValuesSubstractedByValuesInMessage: given two different messages(message 1 key: %@ vs message 2 key: %@), won't attempt to delta. Returning nil!", buf, 0x26u);
  }

  v12 = 0;
LABEL_84:

  v138 = *MEMORY[0x1E69E9840];

  return v12;
}

+ (id)trimTokenForLogging:(id)logging
{
  loggingCopy = logging;
  v4 = [loggingCopy length];
  v5 = [loggingCopy length];
  if (v4 > 9)
  {
    v6 = v5 - 5;
    goto LABEL_5;
  }

  if (v5)
  {
    v6 = 1;
LABEL_5:
    v7 = [loggingCopy substringFromIndex:v6];
    goto LABEL_6;
  }

  v7 = @"Nil or empty token";
LABEL_6:

  return v7;
}

+ (id)getValueForEntitlementForCurrentProcess:(id)process
{
  v23 = *MEMORY[0x1E69E9840];
  processCopy = process;
  if (getpid() < 0)
  {
    array = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(array, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v20 = "+[WAUtil getValueForEntitlementForCurrentProcess:]";
      v21 = 1024;
      v22 = 404;
      v17 = "%{public}s::%d:Failed to get PID";
LABEL_24:
      _os_log_impl(&dword_1C8460000, array, OS_LOG_TYPE_ERROR, v17, buf, 0x12u);
    }

LABEL_25:
    v5 = 0;
LABEL_26:
    v8 = 0;
    goto LABEL_16;
  }

  getpid();
  xpc_generate_audit_token();
  [processCopy UTF8String];
  v4 = xpc_copy_entitlement_for_token();
  if (!v4)
  {
    array = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(array, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v20 = "+[WAUtil getValueForEntitlementForCurrentProcess:]";
      v21 = 1024;
      v22 = 412;
      v17 = "%{public}s::%d:Failed to copy entitlement object(does this entitlement exist for the current process?)";
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  v5 = v4;
  v6 = MEMORY[0x1CCA78500]();
  if (!v6)
  {
    array = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(array, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v20 = "+[WAUtil getValueForEntitlementForCurrentProcess:]";
      v21 = 1024;
      v22 = 415;
      _os_log_impl(&dword_1C8460000, array, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to determine type of XPC entitlement object", buf, 0x12u);
    }

    goto LABEL_26;
  }

  v7 = v6;
  if (v6 == MEMORY[0x1E69E9E58])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:xpc_BOOL_get_value(v5)];
  }

  else
  {
    v8 = 0;
  }

  if (v7 != MEMORY[0x1E69E9E50])
  {
    goto LABEL_17;
  }

  array = [MEMORY[0x1E695DF70] array];
  v10 = xpc_array_get_value(v5, 0);
  if (MEMORY[0x1CCA78500]() == MEMORY[0x1E69E9F10])
  {
    if (xpc_array_get_count(v5))
    {
      v11 = 0;
      do
      {
        v12 = xpc_array_get_value(v5, v11);
        v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:xpc_string_get_string_ptr(v12)];
        [array addObject:v13];

        ++v11;
      }

      while (v11 < xpc_array_get_count(v5));
    }
  }

  else
  {
    v18 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v20 = "+[WAUtil getValueForEntitlementForCurrentProcess:]";
      v21 = 1024;
      v22 = 423;
      _os_log_impl(&dword_1C8460000, v18, OS_LOG_TYPE_ERROR, "%{public}s::%d:XPC Array object contains non-string values", buf, 0x12u);
    }
  }

  if ([array count])
  {
    v14 = [MEMORY[0x1E695DEC8] arrayWithArray:array];
  }

  else
  {
    v14 = 0;
  }

  v8 = v14;
LABEL_16:

LABEL_17:
  v15 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)_generateInvocationForMethod:(void *)method
{
  v23 = *MEMORY[0x1E69E9840];
  if (!method)
  {
    v14 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v20 = "+[WAUtil _generateInvocationForMethod:]";
      v21 = 1024;
      v22 = 444;
      v15 = "%{public}s::%d:Didn't get infoForInvocation (InvokeMakerInfo instance)";
LABEL_14:
      _os_log_impl(&dword_1C8460000, v14, OS_LOG_TYPE_ERROR, v15, buf, 0x12u);
    }

LABEL_15:

    v8 = 0;
    v6 = 0;
    goto LABEL_7;
  }

  methodCopy = method;
  target = [methodCopy target];
  v6 = [target methodSignatureForSelector:{objc_msgSend(methodCopy, "selector")}];

  if (!v6)
  {
    v14 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v20 = "+[WAUtil _generateInvocationForMethod:]";
      v21 = 1024;
      v22 = 447;
      v15 = "%{public}s::%d:Couldn't create NSMethodSignature from -InvokeMakerInfo.selector";
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  v7 = [MEMORY[0x1E695DF50] invocationWithMethodSignature:v6];
  if (v7)
  {
    v8 = v7;
    target2 = [methodCopy target];
    [v8 setTarget:target2];

    [v8 setSelector:{objc_msgSend(methodCopy, "selector")}];
    v18 = &v26;
    v17 = v25;
    v10 = 2;
    do
    {
      [v8 setArgument:&v17 atIndex:v10++];
      v11 = v18++;
      v17 = *v11;
    }

    while (v17);
    [v8 retainArguments];
  }

  else
  {
    v16 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v20 = "+[WAUtil _generateInvocationForMethod:]";
      v21 = 1024;
      v22 = 449;
      _os_log_impl(&dword_1C8460000, v16, OS_LOG_TYPE_ERROR, "%{public}s::%d:Couldn't create NSInvocation from NSMethodSignature", buf, 0x12u);
    }

    v8 = 0;
  }

LABEL_7:

  v12 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (unint64_t)getAWDTimestamp
{
  v3.tv_sec = 0;
  *&v3.tv_usec = 0;
  gettimeofday(&v3, 0);
  return 1000 * v3.tv_sec + v3.tv_usec / 1000;
}

+ (void)incrementValueForKey:(id)key inMutableDict:(id)dict onQueue:(id)queue
{
  v25 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  dictCopy = dict;
  queueCopy = queue;
  v10 = queueCopy;
  if (queueCopy)
  {
    dispatch_assert_queue_V2(queueCopy);
  }

  if (!dictCopy)
  {
    v14 = WALogCategoryDefaultHandle();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v19 = 136446722;
    v20 = "+[WAUtil incrementValueForKey:inMutableDict:onQueue:]";
    v21 = 1024;
    v22 = 494;
    v23 = 2112;
    v24 = keyCopy;
    v15 = "%{public}s::%d:Attempting to adjust nil dictionary with key %@";
    v16 = v14;
    v17 = 28;
LABEL_11:
    _os_log_impl(&dword_1C8460000, v16, OS_LOG_TYPE_ERROR, v15, &v19, v17);
    goto LABEL_12;
  }

  if (!keyCopy)
  {
    v14 = WALogCategoryDefaultHandle();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v19 = 136446466;
    v20 = "+[WAUtil incrementValueForKey:inMutableDict:onQueue:]";
    v21 = 1024;
    v22 = 499;
    v15 = "%{public}s::%d:Attempting to adjust nil key in dictionary";
    v16 = v14;
    v17 = 18;
    goto LABEL_11;
  }

  v11 = [dictCopy objectForKeyedSubscript:keyCopy];

  if (!v11)
  {
    [dictCopy setObject:&unk_1F483E188 forKey:keyCopy];
    goto LABEL_13;
  }

  v12 = MEMORY[0x1E696AD98];
  v13 = [dictCopy objectForKeyedSubscript:keyCopy];
  v14 = [v12 numberWithUnsignedLong:{objc_msgSend(v13, "unsignedIntegerValue") + 1}];

  [dictCopy removeObjectForKey:keyCopy];
  [dictCopy setObject:v14 forKey:keyCopy];
LABEL_12:

LABEL_13:
  v18 = *MEMORY[0x1E69E9840];
}

+ (void)sumNSNumberForKey:(id)key dstDict:(id)dict otherDict:(id)otherDict
{
  v25 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  dictCopy = dict;
  otherDictCopy = otherDict;
  v10 = otherDictCopy;
  if (!dictCopy)
  {
    v17 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v19 = 136446722;
      v20 = "+[WAUtil sumNSNumberForKey:dstDict:otherDict:]";
      v21 = 1024;
      v22 = 515;
      v23 = 2112;
      v24 = keyCopy;
      _os_log_impl(&dword_1C8460000, v17, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempting to adjust nil dictionary with key %@", &v19, 0x1Cu);
    }

    goto LABEL_9;
  }

  v11 = [otherDictCopy objectForKeyedSubscript:keyCopy];

  if (v11)
  {
    v12 = [dictCopy objectForKeyedSubscript:keyCopy];

    if (v12)
    {
      v13 = MEMORY[0x1E696AD98];
      v14 = [dictCopy objectForKeyedSubscript:keyCopy];
      unsignedIntegerValue = [v14 unsignedIntegerValue];
      v16 = [v10 objectForKeyedSubscript:keyCopy];
      v17 = [v13 numberWithUnsignedLong:{objc_msgSend(v16, "unsignedIntegerValue") + unsignedIntegerValue}];

      [dictCopy removeObjectForKey:keyCopy];
    }

    else
    {
      v17 = [v10 objectForKeyedSubscript:keyCopy];
    }

    [dictCopy setObject:v17 forKey:keyCopy];
LABEL_9:
  }

  v18 = *MEMORY[0x1E69E9840];
}

+ (void)addDeltaNSNumberForTelemetryKey:(id)key dictKey:(id)dictKey dictModule:(id)module telDict:(id)dict recentDict:(id)recentDict oldDict:(id)oldDict
{
  v45 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  dictKeyCopy = dictKey;
  moduleCopy = module;
  dictCopy = dict;
  recentDictCopy = recentDict;
  oldDictCopy = oldDict;
  if (!dictCopy)
  {
    v32 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v40 = "+[WAUtil addDeltaNSNumberForTelemetryKey:dictKey:dictModule:telDict:recentDict:oldDict:]";
      v41 = 1024;
      v42 = 535;
      v43 = 2112;
      v44 = dictKeyCopy;
      _os_log_impl(&dword_1C8460000, v32, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempting to adjust nil telDict with key %@", buf, 0x1Cu);
    }

    goto LABEL_12;
  }

  v19 = [recentDictCopy objectForKeyedSubscript:moduleCopy];
  if (!v19)
  {
    goto LABEL_7;
  }

  v20 = v19;
  v21 = [recentDictCopy objectForKeyedSubscript:moduleCopy];
  v22 = [v21 objectForKeyedSubscript:dictKeyCopy];

  if (!v22)
  {
LABEL_7:
    v32 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:0];
LABEL_11:
    [dictCopy removeObjectForKey:keyCopy];
    [dictCopy setObject:v32 forKey:keyCopy];
LABEL_12:

    goto LABEL_13;
  }

  v23 = [oldDictCopy objectForKeyedSubscript:moduleCopy];
  if (!v23)
  {
    goto LABEL_10;
  }

  v24 = v23;
  v25 = [oldDictCopy objectForKeyedSubscript:moduleCopy];
  v26 = [v25 objectForKeyedSubscript:dictKeyCopy];

  if (!v26)
  {
LABEL_10:
    v33 = MEMORY[0x1E696AD98];
    v34 = [recentDictCopy objectForKeyedSubscript:moduleCopy];
    v35 = [v34 objectForKeyedSubscript:dictKeyCopy];
    v32 = [v33 numberWithUnsignedLong:{objc_msgSend(v35, "unsignedLongValue")}];

    goto LABEL_11;
  }

  v37 = MEMORY[0x1E696AD98];
  v38 = [recentDictCopy objectForKeyedSubscript:moduleCopy];
  v27 = [v38 objectForKeyedSubscript:dictKeyCopy];
  unsignedLongValue = [v27 unsignedLongValue];
  v29 = [oldDictCopy objectForKeyedSubscript:moduleCopy];
  v30 = [v29 objectForKeyedSubscript:dictKeyCopy];
  v31 = [v37 numberWithUnsignedLong:{unsignedLongValue - objc_msgSend(v30, "unsignedLongValue")}];

  [dictCopy removeObjectForKey:keyCopy];
  [dictCopy setObject:v31 forKey:keyCopy];

LABEL_13:
  v36 = *MEMORY[0x1E69E9840];
}

+ (void)logNestedDictionary:(id)dictionary indent:(int)indent prefix:(id)prefix
{
  v50[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  prefixCopy = prefix;
  v9 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:0 ascending:1];
  allKeys = [dictionaryCopy allKeys];
  v32 = v9;
  v50[0] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:1];
  v12 = [allKeys sortedArrayUsingDescriptors:v11];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v12;
  v13 = [obj countByEnumeratingWithState:&v35 objects:v49 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v36;
    do
    {
      v16 = 0;
      do
      {
        if (*v36 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v35 + 1) + 8 * v16);
        v18 = [dictionaryCopy objectForKeyedSubscript:v17];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {

LABEL_9:
          v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", prefixCopy, v17];
          v22 = [dictionaryCopy objectForKeyedSubscript:v17];
          [self logNestedDictionary:v22 indent:(indent + 4) prefix:v21];

          goto LABEL_10;
        }

        v19 = [dictionaryCopy objectForKeyedSubscript:v17];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          goto LABEL_9;
        }

        v23 = [dictionaryCopy objectForKeyedSubscript:v17];
        objc_opt_class();
        v24 = objc_opt_isKindOfClass();

        v25 = [dictionaryCopy objectForKeyedSubscript:v17];
        v26 = v25;
        if (v24)
        {
          unsignedIntegerValue = [v25 unsignedIntegerValue];

          if (unsignedIntegerValue)
          {
            v21 = WALogCategoryDefaultHandle();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
LABEL_19:
              v29 = [dictionaryCopy objectForKeyedSubscript:v17];
              *buf = 67110146;
              indentCopy = indent;
              v41 = 2080;
              v42 = "";
              v43 = 2112;
              v44 = prefixCopy;
              v45 = 2112;
              v46 = v17;
              v47 = 2112;
              v48 = v29;
              _os_log_impl(&dword_1C8460000, v21, OS_LOG_TYPE_DEFAULT, "%*s%@ %@ : %@", buf, 0x30u);
            }

LABEL_10:
          }
        }

        else
        {
          objc_opt_class();
          v28 = objc_opt_isKindOfClass();

          if (v28)
          {
            v21 = WALogCategoryDefaultHandle();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_19;
            }

            goto LABEL_10;
          }
        }

        ++v16;
      }

      while (v14 != v16);
      v30 = [obj countByEnumeratingWithState:&v35 objects:v49 count:16];
      v14 = v30;
    }

    while (v30);
  }

  v31 = *MEMORY[0x1E69E9840];
}

+ (BOOL)isMacAddress:(id)address
{
  addressCopy = address;
  v4 = addressCopy;
  v5 = addressCopy && [addressCopy UTF8String] && ether_aton(objc_msgSend(v4, "UTF8String")) != 0;

  return v5;
}

+ (BOOL)isWildcardMacAddress:(id)address
{
  addressCopy = address;
  if ([self isMacAddress:addressCopy])
  {
    if ([addressCopy isEqualToString:@"00:00:00:00:00:00"])
    {
      v5 = 1;
    }

    else
    {
      v5 = [addressCopy isEqualToString:@"0:0:0:0:0:0"];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (void)addFieldsForChannelFlagLikeKey:(id)key inDict:(id)dict
{
  dictCopy = dict;
  keyCopy = key;
  v6 = [dictCopy objectForKeyedSubscript:keyCopy];
  v7 = [keyCopy stringByReplacingOccurrencesOfString:@"Flags" withString:&stru_1F481C4A0];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_18;
  }

  unsignedIntValue = [v6 unsignedIntValue];
  v9 = unsignedIntValue;
  if ((unsignedIntValue & 8) != 0)
  {
    v10 = @"2";
    goto LABEL_8;
  }

  if ((unsignedIntValue & 0x10) != 0)
  {
    v10 = @"5";
    goto LABEL_8;
  }

  if ((unsignedIntValue & 0x2000) != 0)
  {
    v10 = @"6";
LABEL_8:
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v7, @"Band"];
    [dictCopy setValue:v10 forKey:v11];
  }

  if ((v9 & 0x800) != 0)
  {
    v12 = @"160";
  }

  else if ((v9 & 0x400) != 0)
  {
    v12 = @"80";
  }

  else if ((v9 & 4) != 0)
  {
    v12 = @"40";
  }

  else
  {
    if ((v9 & 2) == 0)
    {
      goto LABEL_18;
    }

    v12 = @"20";
  }

  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v7, @"BW"];
  [dictCopy setValue:v12 forKey:v13];

LABEL_18:
}

+ (void)addFieldsForAuthFlagsLikeKey:(id)key inDict:(id)dict
{
  v31 = *MEMORY[0x1E69E9840];
  dictCopy = dict;
  keyCopy = key;
  v7 = [dictCopy objectForKeyedSubscript:keyCopy];
  v8 = [keyCopy stringByReplacingOccurrencesOfString:@"Flags" withString:&stru_1F481C4A0];

  v9 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446722;
    v26 = "+[WAUtil addFieldsForAuthFlagsLikeKey:inDict:]";
    v27 = 1024;
    v28 = 631;
    v29 = 2112;
    v30 = v8;
    _os_log_impl(&dword_1C8460000, v9, OS_LOG_TYPE_DEBUG, "%{public}s::%d:fieldNameBase:%@", buf, 0x1Cu);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v26 = "+[WAUtil addFieldsForAuthFlagsLikeKey:inDict:]";
      v27 = 1024;
      v28 = 635;
      _os_log_impl(&dword_1C8460000, v10, OS_LOG_TYPE_DEBUG, "%{public}s::%d:value is a NSNumber", buf, 0x12u);
    }

    shortValue = [v7 shortValue];
    v12 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446722;
      v26 = "+[WAUtil addFieldsForAuthFlagsLikeKey:inDict:]";
      v27 = 1024;
      v28 = 637;
      v29 = 1024;
      LODWORD(v30) = shortValue;
      _os_log_impl(&dword_1C8460000, v12, OS_LOG_TYPE_DEBUG, "%{public}s::%d:authFlags:%u", buf, 0x18u);
    }

    else
    {
      shortValue = shortValue;
    }

    v13 = [MEMORY[0x1E696AD98] numberWithBool:shortValue & 1];
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v8, @"_isWEP"];
    [dictCopy setValue:v13 forKey:v14];

    v15 = [MEMORY[0x1E696AD98] numberWithBool:(shortValue >> 1) & 1];
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v8, @"_isWPA"];
    [dictCopy setValue:v15 forKey:v16];

    v17 = [MEMORY[0x1E696AD98] numberWithBool:(shortValue >> 2) & 1];
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v8, @"_isSAE"];
    [dictCopy setValue:v17 forKey:v18];

    v19 = [MEMORY[0x1E696AD98] numberWithBool:(shortValue >> 3) & 1];
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v8, @"_isEAP"];
    [dictCopy setValue:v19 forKey:v20];

    v21 = [MEMORY[0x1E696AD98] numberWithBool:(shortValue >> 4) & 1];
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v8, @"_isSAEPK"];
    [dictCopy setValue:v21 forKey:v22];
  }

  v23 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446722;
    v26 = "+[WAUtil addFieldsForAuthFlagsLikeKey:inDict:]";
    v27 = 1024;
    v28 = 646;
    v29 = 2112;
    v30 = dictCopy;
    _os_log_impl(&dword_1C8460000, v23, OS_LOG_TYPE_DEBUG, "%{public}s::%d:done. dict:%@", buf, 0x1Cu);
  }

  v24 = *MEMORY[0x1E69E9840];
}

+ (BOOL)isAnyWiFiAppInstalled
{
  if (+[WAUtil isPreinstalledWiFiAppVisible])
  {
    return 1;
  }

  return +[WAUtil isWiFiAppInstalled];
}

+ (BOOL)isPreinstalledWiFiAppVisible
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = CFPreferencesCopyValue(@"SBIconVisibility", @"com.apple.wifi.app", @"mobile", *MEMORY[0x1E695E8B0]);
  bOOLValue = [v2 BOOLValue];

  v4 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446722;
    v8 = "+[WAUtil isPreinstalledWiFiAppVisible]";
    v9 = 1024;
    v10 = 722;
    v11 = 1024;
    v12 = bOOLValue;
    _os_log_impl(&dword_1C8460000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:SBIconVisibility for com.apple.wifi.app=%d", &v7, 0x18u);
  }

  v5 = *MEMORY[0x1E69E9840];
  return bOOLValue;
}

+ (BOOL)isWiFiAppInstalled
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = objc_opt_class();
  if (v2)
  {
    defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
    v4 = [defaultWorkspace applicationIsInstalled:@"com.apple.wifi.app-shack"];

    if (v4)
    {
      v5 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136446722;
        v9 = "+[WAUtil isWiFiAppInstalled]";
        v10 = 1024;
        v11 = 732;
        v12 = 2080;
        v13 = "+[WAUtil isWiFiAppInstalled]";
        _os_log_impl(&dword_1C8460000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%s: com.apple.wifi.app-shack is installed", &v8, 0x1Cu);
      }

      LOBYTE(v2) = 1;
    }

    else
    {
      LOBYTE(v2) = 0;
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return v2;
}

+ (BOOL)isWiFiFragmentSamplingEnabled
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  if ((MGGetBoolAnswer() & 1) != 0 || (v2 = MGGetStringAnswer(), v3 = [v2 isEqualToString:@"Beta"], v2, v3))
  {
    if (MGGetProductType() != 3348380076)
    {
      *(v8 + 24) = 1;
    }
  }

  if (MGGetBoolAnswer())
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __39__WAUtil_isWiFiFragmentSamplingEnabled__block_invoke;
    v6[3] = &unk_1E830D818;
    v6[4] = &v7;
    [WAUtil getLazyNSNumberPreference:@"WiFiFragmentSampling" domain:@"com.apple.wifi.analytics" exists:v6];
  }

  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __39__WAUtil_isWiFiFragmentSamplingEnabled__block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(*(a1 + 32) + 8) + 24);
    v7 = 136447234;
    v8 = "+[WAUtil isWiFiFragmentSamplingEnabled]_block_invoke";
    v9 = 1024;
    v10 = 753;
    v11 = 2080;
    v12 = "+[WAUtil isWiFiFragmentSamplingEnabled]_block_invoke";
    v13 = 1024;
    v14 = v5;
    v15 = 1024;
    v16 = [v3 unsignedIntValue];
    _os_log_impl(&dword_1C8460000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%s: OVERRIDING kWAPreferenceWiFiFragmentSampling from %u to %u", &v7, 0x28u);
  }

  *(*(*(a1 + 32) + 8) + 24) = [v3 BOOLValue];
  v6 = *MEMORY[0x1E69E9840];
}

void __33__WAUtil_isAnalyticsStoreAllowed__block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(*(a1 + 32) + 8) + 24);
    v7 = 136447490;
    v8 = "+[WAUtil isAnalyticsStoreAllowed]_block_invoke";
    v9 = 1024;
    v10 = 771;
    v11 = 2080;
    v12 = "+[WAUtil isAnalyticsStoreAllowed]_block_invoke";
    v13 = 2112;
    v14 = @"WAStore_isAnalyticsStoreAllowed";
    v15 = 1024;
    v16 = v5;
    v17 = 1024;
    v18 = [v3 BOOLValue];
    _os_log_impl(&dword_1C8460000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%s: OVERRIDING %@ from %u to %u", &v7, 0x32u);
  }

  *(*(*(a1 + 32) + 8) + 24) = [v3 BOOLValue];
  v6 = *MEMORY[0x1E69E9840];
}

+ (BOOL)shouldProcessAnalyticsImmediately
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = +[WAUtil isAnyWiFiAppInstalled](WAUtil, "isAnyWiFiAppInstalled") || +[WAUtil isWiFiFragmentSamplingEnabled];
  v9 = v2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __43__WAUtil_shouldProcessAnalyticsImmediately__block_invoke;
  v5[3] = &unk_1E830D818;
  v5[4] = &v6;
  [WAUtil getLazyNSNumberPreference:@"WAStore_ProcessAnalyticsImmediately" domain:@"com.apple.wifi.analytics" exists:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __43__WAUtil_shouldProcessAnalyticsImmediately__block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(*(a1 + 32) + 8) + 24);
    v7 = 136447490;
    v8 = "+[WAUtil shouldProcessAnalyticsImmediately]_block_invoke";
    v9 = 1024;
    v10 = 784;
    v11 = 2080;
    v12 = "+[WAUtil shouldProcessAnalyticsImmediately]_block_invoke";
    v13 = 2112;
    v14 = @"WAStore_ProcessAnalyticsImmediately";
    v15 = 1024;
    v16 = v5;
    v17 = 1024;
    v18 = [v3 BOOLValue];
    _os_log_impl(&dword_1C8460000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%s: OVERRIDING %@ from %u to %u", &v7, 0x32u);
  }

  *(*(*(a1 + 32) + 8) + 24) = [v3 BOOLValue];
  v6 = *MEMORY[0x1E69E9840];
}

void __33__WAUtil_customXPCStoreOnProcess__block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136447234;
    v9 = "+[WAUtil customXPCStoreOnProcess]_block_invoke";
    v10 = 1024;
    v11 = 797;
    v12 = 2080;
    v13 = "+[WAUtil customXPCStoreOnProcess]_block_invoke";
    v14 = 2112;
    v15 = @"WAStore_EnableXPCStoreOnProcess";
    v16 = 2112;
    v17 = v3;
    _os_log_impl(&dword_1C8460000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%s: OVERRIDING %@ to %@", &v8, 0x30u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *MEMORY[0x1E69E9840];
}

void __34__WAUtil_customMigrationOnProcess__block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136447234;
    v9 = "+[WAUtil customMigrationOnProcess]_block_invoke";
    v10 = 1024;
    v11 = 812;
    v12 = 2080;
    v13 = "+[WAUtil customMigrationOnProcess]_block_invoke";
    v14 = 2112;
    v15 = @"WAStore_EnableMigrateStoreOnProcess";
    v16 = 2112;
    v17 = v3;
    _os_log_impl(&dword_1C8460000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%s: OVERRIDING %@ to %@", &v8, 0x30u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *MEMORY[0x1E69E9840];
}

+ (id)customProcessInChargeOfDataProcessingForPolicies
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__5;
  v9 = __Block_byref_object_dispose__5;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __58__WAUtil_customProcessInChargeOfDataProcessingForPolicies__block_invoke;
  v4[3] = &unk_1E830EB40;
  v4[4] = &v5;
  [WAUtil getLazyNSStringPreference:@"WAStore_EnablePolicyProcessingOnProcess" domain:@"com.apple.wifi.analytics" exists:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __58__WAUtil_customProcessInChargeOfDataProcessingForPolicies__block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136447234;
    v9 = "+[WAUtil customProcessInChargeOfDataProcessingForPolicies]_block_invoke";
    v10 = 1024;
    v11 = 826;
    v12 = 2080;
    v13 = "+[WAUtil customProcessInChargeOfDataProcessingForPolicies]_block_invoke";
    v14 = 2112;
    v15 = @"WAStore_EnablePolicyProcessingOnProcess";
    v16 = 2112;
    v17 = v3;
    _os_log_impl(&dword_1C8460000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%s: OVERRIDING %@ to %@", &v8, 0x30u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *MEMORY[0x1E69E9840];
}

+ (BOOL)setFutureApfsPurgeableDeadline:(unint64_t)deadline forURL:(id)l
{
  v45 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v6 = clock_gettime_nsec_np(_CLOCK_REALTIME) + 1000000000 * deadline;
  v25 = xmmword_1C85A1250;
  v26 = xmmword_1C85A1260;
  v27 = v6;
  v28 = 0;
  path = [lCopy path];
  v8 = fsctl([path cStringUsingEncoding:4], 0xC0304A6FuLL, &v25, 0);

  v9 = WALogCategoryDeviceStoreHandle();
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      path2 = [lCopy path];
      v12 = [path2 cStringUsingEncoding:4];
      v13 = v25;
      v14 = v26;
      v15 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:(v6 / 0x3B9ACA00)];
      v16 = __error();
      v17 = strerror(*v16);
      *buf = 136448002;
      v30 = "+[WAUtil setFutureApfsPurgeableDeadline:forURL:]";
      v31 = 1024;
      v32 = 854;
      v33 = 2080;
      v34 = v12;
      v35 = 2048;
      v36 = v13;
      v37 = 2048;
      v38 = v14;
      v39 = 2112;
      v40 = v15;
      v41 = 1024;
      v42 = v8;
      v43 = 2080;
      v44 = v17;
      _os_log_impl(&dword_1C8460000, v10, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to mark %s as purgeable with flags 0x%llx, supplemental 0x%llx, notBeforeDate:%@: (%d) %s\n", buf, 0x4Au);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    path3 = [lCopy path];
    v19 = [path3 cStringUsingEncoding:4];
    v20 = v25;
    v21 = v26;
    v22 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:(v6 / 0x3B9ACA00)];
    *buf = 136447490;
    v30 = "+[WAUtil setFutureApfsPurgeableDeadline:forURL:]";
    v31 = 1024;
    v32 = 850;
    v33 = 2080;
    v34 = v19;
    v35 = 2048;
    v36 = v20;
    v37 = 2048;
    v38 = v21;
    v39 = 2112;
    v40 = v22;
    _os_log_impl(&dword_1C8460000, v10, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Marked %s purgeable with flags 0x%llx (supplemental 0x%llx notBeforeDate:%@)\n", buf, 0x3Au);
  }

  v23 = *MEMORY[0x1E69E9840];
  return v8 == 0;
}

+ (void)getLazyNSNumberPreference:(id)preference domain:(id)domain exists:(id)exists
{
  preferenceCopy = preference;
  domainCopy = domain;
  existsCopy = exists;
  if ((_MergedGlobals_4 & 1) != 0 || [preferenceCopy isEqualToString:@"WiFiFragmentSampling"])
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v10 = [standardUserDefaults persistentDomainForName:domainCopy];

    v11 = [v10 objectForKey:preferenceCopy];
    if (v11)
    {
      existsCopy[2](existsCopy, v11);
    }
  }
}

+ (void)getLazyNSStringPreference:(id)preference domain:(id)domain exists:(id)exists
{
  existsCopy = exists;
  if (_MergedGlobals_4 == 1)
  {
    v14 = existsCopy;
    v8 = MEMORY[0x1E695E000];
    domainCopy = domain;
    preferenceCopy = preference;
    standardUserDefaults = [v8 standardUserDefaults];
    v12 = [standardUserDefaults persistentDomainForName:domainCopy];

    v13 = [v12 objectForKey:preferenceCopy];

    if (v13)
    {
      v14[2](v14, v13);
    }

    existsCopy = v14;
  }
}

+ (void)setPreference:(id)preference domain:(id)domain value:(id)value
{
  preferenceCopy = preference;
  valueCopy = value;
  if (_MergedGlobals_4 == 1)
  {
    v8 = MEMORY[0x1E695E000];
    domainCopy = domain;
    v10 = [[v8 alloc] initWithSuiteName:domainCopy];

    if (valueCopy)
    {
      [v10 setValue:valueCopy forKey:preferenceCopy];
    }

    else
    {
      [v10 removeObjectForKey:preferenceCopy];
    }
  }
}

+ (id)getNumberPreference:(id)preference domain:(id)domain
{
  v25 = *MEMORY[0x1E69E9840];
  preferenceCopy = preference;
  domainCopy = domain;
  if (_MergedGlobals_4 != 1)
  {
    goto LABEL_10;
  }

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v8 = [standardUserDefaults persistentDomainForName:domainCopy];

  v9 = [v8 objectForKey:preferenceCopy];
  if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

LABEL_10:
    v9 = 0;
    goto LABEL_11;
  }

  v10 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    bOOLValue = [v9 BOOLValue];
    v15 = 136447234;
    v16 = "+[WAUtil getNumberPreference:domain:]";
    v12 = @"NO";
    v17 = 1024;
    v18 = 907;
    v19 = 2112;
    if (bOOLValue)
    {
      v12 = @"YES";
    }

    v20 = domainCopy;
    v21 = 2112;
    v22 = preferenceCopy;
    v23 = 2112;
    v24 = v12;
    _os_log_impl(&dword_1C8460000, v10, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Using %@.%@ as: %@", &v15, 0x30u);
  }

LABEL_11:
  v13 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (BOOL)canDeleteStore
{
  v2 = [objc_opt_class() getNumberPreference:@"WAStore_isDeletingStoreAllowed" domain:@"com.apple.wifi.analytics"];
  v3 = v2;
  if (v2)
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

+ (id)filterArray:(id)array usingPredicate:(id)predicate
{
  v10 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  predicateCopy = predicate;
  v7 = [arrayCopy filteredArrayUsingPredicate:predicateCopy];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)filterSet:(id)set usingPredicate:(id)predicate
{
  v10 = *MEMORY[0x1E69E9840];
  setCopy = set;
  predicateCopy = predicate;
  v7 = [setCopy filteredSetUsingPredicate:predicateCopy];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

@end