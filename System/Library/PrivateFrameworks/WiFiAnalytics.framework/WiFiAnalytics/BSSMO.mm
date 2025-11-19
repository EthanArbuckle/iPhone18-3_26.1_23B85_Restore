@interface BSSMO
+ (BOOL)coalesceBssidsIntoDeployment:(id)a3 moc:(id)a4;
+ (BOOL)setBssManagedObjectPropertyValueForKey:(id)a3 forKey:(id)a4 withValue:(id)a5;
+ (BOOL)verifyConstraints:(id)a3 withError:(id *)a4;
+ (id)allBssidsForSsid:(id)a3 moc:(id)a4;
+ (id)allSsidsForBssid:(id)a3 moc:(id)a4;
+ (id)bssManagedObjectPropertyValue:(id)a3 forKey:(id)a4;
+ (id)constraintsWithBSSID:(id)a3;
+ (id)copyBssidsForDeployment:(id)a3 deploymentUuid:(id)a4 moc:(id)a5;
+ (id)copyDeploymentUuidsForSsid:(id)a3 moc:(id)a4;
+ (id)defaultPropertiesToFetch;
+ (id)formattedMACAddressNotation:(id)a3 as:(unint64_t)a4;
+ (id)getDeploymentUuidForBssids:(id)a3 moc:(id)a4;
+ (unint64_t)numBssInBand:(id)a3 bandIs24:(BOOL)a4 moc:(id)a5;
@end

@implementation BSSMO

+ (id)defaultPropertiesToFetch
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__BSSMO_defaultPropertiesToFetch__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (qword_1EDE5CB48 != -1)
  {
    dispatch_once(&qword_1EDE5CB48, block);
  }

  v2 = _MergedGlobals_8;

  return v2;
}

void __33__BSSMO_defaultPropertiesToFetch__block_invoke(uint64_t a1)
{
  v5.receiver = *(a1 + 32);
  v5.super_class = &OBJC_METACLASS___BSSMO;
  v1 = objc_msgSendSuper2(&v5, sel_defaultPropertiesToFetch);
  v2 = _MergedGlobals_8;
  _MergedGlobals_8 = v1;

  v3 = _MergedGlobals_8;
  v4 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F483E8A8];
  [v3 minusSet:v4];
}

+ (BOOL)verifyConstraints:(id)a3 withError:(id *)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"bssid"];

  if (v6)
  {
    v7 = [v5 objectForKeyedSubscript:@"bssid"];
    v8 = [WAUtil isWildcardMacAddress:v7];

    if (!v8)
    {
      LOBYTE(a4) = 1;
      goto LABEL_4;
    }

    v17 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      v18 = [v5 objectForKeyedSubscript:@"bssid"];
      *buf = 136446722;
      v25 = "+[BSSMO verifyConstraints:withError:]";
      v26 = 1024;
      v27 = 42;
      v28 = 2112;
      v29 = v18;
      _os_log_impl(&dword_1C8460000, v17, OS_LOG_TYPE_FAULT, "%{public}s::%d:Invalid bssid: %@", buf, 0x1Cu);
    }

    if (a4)
    {
      v19 = MEMORY[0x1E696ABC0];
      v20 = *MEMORY[0x1E696A588];
      v21 = @"WAErrorCodeInvalidInput";
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
      v15 = v19;
      v16 = 9035;
      goto LABEL_13;
    }
  }

  else
  {
    v11 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      v12 = [v5 objectForKeyedSubscript:@"bssid"];
      *buf = 136446722;
      v25 = "+[BSSMO verifyConstraints:withError:]";
      v26 = 1024;
      v27 = 40;
      v28 = 2112;
      v29 = v12;
      _os_log_impl(&dword_1C8460000, v11, OS_LOG_TYPE_FAULT, "%{public}s::%d:Invalid input. bssid:%@", buf, 0x1Cu);
    }

    if (a4)
    {
      v13 = MEMORY[0x1E696ABC0];
      v22 = *MEMORY[0x1E696A588];
      v23 = @"WAErrorCodeLacksRequiredArgument";
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      v15 = v13;
      v16 = 9010;
LABEL_13:
      *a4 = [v15 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:v16 userInfo:v14];

      LOBYTE(a4) = 0;
    }
  }

LABEL_4:

  v9 = *MEMORY[0x1E69E9840];
  return a4;
}

+ (id)constraintsWithBSSID:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [BSSMO formattedMACAddressNotation:v3 as:6];
  v5 = v4;
  if (v4)
  {
    v10 = @"bssid";
    v11 = v4;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  }

  else
  {
    v9 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v13 = "+[BSSMO constraintsWithBSSID:]";
      v14 = 1024;
      v15 = 58;
      v16 = 2112;
      v17 = v3;
      _os_log_impl(&dword_1C8460000, v9, OS_LOG_TYPE_ERROR, "%{public}s::%d:Invalid input. bssid:%@", buf, 0x1Cu);
    }

    v6 = 0;
  }

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)allBssidsForSsid:(id)a3 moc:(id)a4
{
  v5 = MEMORY[0x1E695DF70];
  v6 = a4;
  v7 = a3;
  v8 = [v5 array];
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"network.ssid == %@", v7];

  v10 = +[BSSMO fetchRequest];
  v11 = [AnalyticsStoreProxy fetch:v10 withPredicate:v9 moc:v6];

  if (v11)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __30__BSSMO_allBssidsForSsid_moc___block_invoke;
    v15[3] = &unk_1E830F658;
    v12 = v8;
    v16 = v12;
    [v11 enumerateObjectsUsingBlock:v15];
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void __30__BSSMO_allBssidsForSsid_moc___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if (v6)
  {
    v3 = [v6 bssid];

    if (v3)
    {
      v4 = *(a1 + 32);
      v5 = [v6 bssid];
      [v4 addObject:v5];
    }
  }
}

+ (id)allSsidsForBssid:(id)a3 moc:(id)a4
{
  v5 = MEMORY[0x1E695DF70];
  v6 = a4;
  v7 = a3;
  v8 = [v5 array];
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"bssid == %@", v7];

  v10 = +[BSSMO fetchRequest];
  v11 = [AnalyticsStoreProxy fetch:v10 withPredicate:v9 moc:v6];

  if (v11)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __30__BSSMO_allSsidsForBssid_moc___block_invoke;
    v15[3] = &unk_1E830F658;
    v12 = v8;
    v16 = v12;
    [v11 enumerateObjectsUsingBlock:v15];
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void __30__BSSMO_allSsidsForBssid_moc___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  if (v10)
  {
    v3 = [v10 network];
    if (v3)
    {
      v4 = v3;
      v5 = [v10 network];
      v6 = [v5 ssid];

      if (v6)
      {
        v7 = *(a1 + 32);
        v8 = [v10 network];
        v9 = [v8 ssid];
        [v7 addObject:v9];
      }
    }
  }
}

+ (id)bssManagedObjectPropertyValue:(id)a3 forKey:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = v5;
  if (a3 && v5)
  {
    v7 = [a3 opaque];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 valueForKey:v6];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v10 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = 136446722;
      v14 = "+[BSSMO bssManagedObjectPropertyValue:forKey:]";
      v15 = 1024;
      v16 = 112;
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&dword_1C8460000, v10, OS_LOG_TYPE_ERROR, "%{public}s::%d:Nil bssMO or key %@", &v13, 0x1Cu);
    }

    v9 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (BOOL)setBssManagedObjectPropertyValueForKey:(id)a3 forKey:(id)a4 withValue:(id)a5
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (!v7)
  {
    v11 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v16 = 136446466;
      v17 = "+[BSSMO setBssManagedObjectPropertyValueForKey:forKey:withValue:]";
      v18 = 1024;
      v19 = 122;
      v15 = "%{public}s::%d:bssMO nil";
LABEL_12:
      _os_log_impl(&dword_1C8460000, v11, OS_LOG_TYPE_ERROR, v15, &v16, 0x12u);
    }

LABEL_13:
    v12 = 0;
    goto LABEL_7;
  }

  if (!v8)
  {
    v11 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v16 = 136446466;
      v17 = "+[BSSMO setBssManagedObjectPropertyValueForKey:forKey:withValue:]";
      v18 = 1024;
      v19 = 123;
      v15 = "%{public}s::%d:key nil";
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  v10 = [v7 opaque];
  if (v10)
  {
    v11 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v10];
    [v11 removeObjectForKey:v8];
  }

  else
  {
    v11 = [MEMORY[0x1E695DF90] dictionary];
  }

  [v11 setObject:v9 forKey:v8];
  [v7 setOpaque:v11];

  v12 = 1;
LABEL_7:

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

+ (BOOL)coalesceBssidsIntoDeployment:(id)a3 moc:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    v7 = [BSSMO getDeploymentUuidForBssids:v5 moc:v6];
    if (v7)
    {
      v8 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v7];
      v9 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v10 = [v8 UUIDString];
        *buf = 136446722;
        v22 = "+[BSSMO coalesceBssidsIntoDeployment:moc:]";
        v23 = 1024;
        v24 = 155;
        v25 = 2112;
        v26 = v10;
        v11 = "%{public}s::%d:Existing UUID %@";
LABEL_7:
        _os_log_impl(&dword_1C8460000, v9, OS_LOG_TYPE_DEBUG, v11, buf, 0x1Cu);
      }
    }

    else
    {
      v8 = [MEMORY[0x1E696AFB0] UUID];
      v9 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v10 = [v8 UUIDString];
        *buf = 136446722;
        v22 = "+[BSSMO coalesceBssidsIntoDeployment:moc:]";
        v23 = 1024;
        v24 = 152;
        v25 = 2112;
        v26 = v10;
        v11 = "%{public}s::%d:Created UUID %@";
        goto LABEL_7;
      }
    }

    v12 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = [v8 UUIDString];
      *buf = 136446978;
      v22 = "+[BSSMO coalesceBssidsIntoDeployment:moc:]";
      v23 = 1024;
      v24 = 158;
      v25 = 2112;
      v26 = v13;
      v27 = 2112;
      v28 = v5;
      _os_log_impl(&dword_1C8460000, v12, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Applying deployment UUID %@ bssidsArray %@", buf, 0x26u);
    }

    v14 = [MEMORY[0x1E695DF90] dictionary];
    [v14 setValue:v8 forKey:@"apid"];
    v15 = +[BSSMO entity];
    v16 = [v15 name];
    v17 = [MEMORY[0x1E696AE18] predicateWithFormat:@"bssid IN %@", v5];
    v18 = [AnalyticsStoreProxy batchUpdate:v16 withPredicate:v17 propertiesToUpdate:v14 moc:v6];

    goto LABEL_11;
  }

  v7 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v22 = "+[BSSMO coalesceBssidsIntoDeployment:moc:]";
    v23 = 1024;
    v24 = 147;
    _os_log_impl(&dword_1C8460000, v7, OS_LOG_TYPE_ERROR, "%{public}s::%d:bssidArray nil", buf, 0x12u);
  }

  v18 = 0;
LABEL_11:

  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

+ (id)getDeploymentUuidForBssids:(id)a3 moc:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    v7 = +[BSSMO entity];
    v8 = [v7 name];
    v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"bssid IN %@", v5];
    v10 = [AnalyticsStoreProxy fetchPropertiesForEntity:v8 properties:&unk_1F483E8C0 predicate:v9 moc:v6];

    if (v10 && [v10 count])
    {
      v11 = [v10 valueForKey:@"apid"];
      if (![v11 count])
      {
LABEL_11:
        v18 = 0;
        goto LABEL_12;
      }

      v12 = 0;
      while (1)
      {
        v13 = [v11 objectAtIndex:v12];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v15 = [v11 objectAtIndex:v12];
          v16 = v15;
          if (v15)
          {
            v17 = [v15 UUIDString];

            if (v17)
            {
              v18 = [v16 UUIDString];

              goto LABEL_12;
            }
          }
        }

        if (++v12 >= [v11 count])
        {
          goto LABEL_11;
        }
      }
    }

    v21 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v24 = "+[BSSMO getDeploymentUuidForBssids:moc:]";
      v25 = 1024;
      v26 = 177;
      _os_log_impl(&dword_1C8460000, v21, OS_LOG_TYPE_ERROR, "%{public}s::%d:bssidsArray nil", buf, 0x12u);
    }

    v18 = 0;
    v11 = 0;
  }

  else
  {
    v22 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v24 = "+[BSSMO getDeploymentUuidForBssids:moc:]";
      v25 = 1024;
      v26 = 174;
      _os_log_impl(&dword_1C8460000, v22, OS_LOG_TYPE_ERROR, "%{public}s::%d:bssidArray nil", buf, 0x12u);
    }

    v18 = 0;
    v11 = 0;
    v10 = 0;
  }

LABEL_12:

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

+ (unint64_t)numBssInBand:(id)a3 bandIs24:(BOOL)a4 moc:(id)a5
{
  v6 = a4;
  v31 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  if (v7)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = +[BSSMO entity];
    v11 = [v10 name];

    v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"network.ssid == %@", v7];
    v13 = [MEMORY[0x1E696AE18] predicateWithFormat:@"mostRecentChannel <= %d", 14];
    v14 = [MEMORY[0x1E696AE18] predicateWithFormat:@"mostRecentChannel > %d", 14];
    v15 = v14;
    v16 = MEMORY[0x1E696AB28];
    if (v6)
    {
      v26 = v12;
      v17 = &v26;
      v18 = v13;
    }

    else
    {
      v25 = v12;
      v17 = &v25;
      v18 = v14;
    }

    v17[1] = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:? count:?];
    v20 = [v16 andPredicateWithSubpredicates:v19];

    v21 = [AnalyticsStoreProxy entityCount:v11 withPredicate:v20 moc:v8];
    objc_autoreleasePoolPop(v9);
  }

  else
  {
    v24 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v28 = "+[BSSMO numBssInBand:bandIs24:moc:]";
      v29 = 1024;
      v30 = 197;
      _os_log_impl(&dword_1C8460000, v24, OS_LOG_TYPE_ERROR, "%{public}s::%d:ssid nil", buf, 0x12u);
    }

    v21 = 0;
  }

  v22 = *MEMORY[0x1E69E9840];
  return v21;
}

+ (id)copyBssidsForDeployment:(id)a3 deploymentUuid:(id)a4 moc:(id)a5
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (!v7)
  {
    v25 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v28 = "+[BSSMO copyBssidsForDeployment:deploymentUuid:moc:]";
      v29 = 1024;
      v30 = 226;
      _os_log_impl(&dword_1C8460000, v25, OS_LOG_TYPE_ERROR, "%{public}s::%d:ssid nil", buf, 0x12u);
    }

    v17 = 0;
    v19 = 0;
    v11 = 0;
    goto LABEL_15;
  }

  v10 = +[BSSMO entity];
  v11 = [v10 name];

  if (v8)
  {
    v12 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v8];
    v13 = MEMORY[0x1E696AB28];
    v14 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"apid", v12];
    v26[0] = v14;
    v15 = [MEMORY[0x1E696AE18] predicateWithFormat:@"network.ssid == %@", v7];
    v26[1] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
    v17 = [v13 andPredicateWithSubpredicates:v16];
  }

  else
  {
    v17 = [MEMORY[0x1E696AE18] predicateWithFormat:@"network.ssid == %@", v7];
  }

  v18 = [AnalyticsStoreProxy fetchPropertiesForEntity:v11 properties:&unk_1F483E8D8 predicate:v17 moc:v9];
  v19 = v18;
  if (!v18 || ![v18 count])
  {
    v24 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v28 = "+[BSSMO copyBssidsForDeployment:deploymentUuid:moc:]";
      v29 = 1024;
      v30 = 241;
      _os_log_impl(&dword_1C8460000, v24, OS_LOG_TYPE_ERROR, "%{public}s::%d:bssidsArray nil", buf, 0x12u);
    }

LABEL_15:
    v20 = 0;
    goto LABEL_8;
  }

  v20 = [v19 valueForKey:@"bssid"];
LABEL_8:
  v21 = [v20 copy];

  v22 = *MEMORY[0x1E69E9840];
  return v21;
}

+ (id)copyDeploymentUuidsForSsid:(id)a3 moc:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = a3;
  v7 = +[BSSMO entity];
  v8 = [v7 name];
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"network.ssid == %@", v6];

  v10 = [AnalyticsStoreProxy fetchPropertiesForEntity:v8 properties:&unk_1F483E8F0 predicate:v9 moc:v5];

  if (v10 && [v10 count])
  {
    v11 = [v10 valueForKey:@"apid"];
  }

  else
  {
    v15 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v17 = "+[BSSMO copyDeploymentUuidsForSsid:moc:]";
      v18 = 1024;
      v19 = 256;
      _os_log_impl(&dword_1C8460000, v15, OS_LOG_TYPE_ERROR, "%{public}s::%d:bssidsArray nil", buf, 0x12u);
    }

    v11 = 0;
  }

  v12 = [v11 copy];

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

+ (id)formattedMACAddressNotation:(id)a3 as:(unint64_t)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    if (a4 == 6)
    {
      v6 = @"xx:xx:xx:xx:xx:xx";
    }

    else
    {
      if (a4 != 3)
      {
        v17 = WALogCategoryDeviceStoreHandle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
        {
          *buf = 136446722;
          v24 = "+[BSSMO formattedMACAddressNotation:as:]";
          v25 = 1024;
          v26 = 286;
          v27 = 2048;
          v28 = a4;
          _os_log_impl(&dword_1C8460000, v17, OS_LOG_TYPE_FAULT, "%{public}s::%d:invalid type: %lu", buf, 0x1Cu);
        }

        goto LABEL_15;
      }

      v6 = @"xx:xx:xx";
    }

    v7 = [(__CFString *)v6 length];
    v8 = [v5 componentsSeparatedByString:@":"];
    v9 = v8;
    if (v7 && [v8 count] >= a4)
    {
      v10 = [MEMORY[0x1E695DF70] array];
      v11 = 0;
      while (1)
      {
        v22 = 0;
        v12 = MEMORY[0x1E696AE88];
        v13 = [v9 objectAtIndex:v11];
        v14 = [v12 scannerWithString:v13];

        [v14 scanHexInt:&v22];
        if (v22 == -1)
        {
          break;
        }

        v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%02x", v22];
        [v10 setObject:v15 atIndexedSubscript:v11];

        if (a4 == ++v11)
        {
          v16 = [v10 componentsJoinedByString:@":"];

          goto LABEL_16;
        }
      }

      v20 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        *buf = 136446978;
        v24 = "+[BSSMO formattedMACAddressNotation:as:]";
        v25 = 1024;
        v26 = 304;
        v27 = 2048;
        v28 = v11;
        v29 = 2112;
        v30 = v5;
        _os_log_impl(&dword_1C8460000, v20, OS_LOG_TYPE_FAULT, "%{public}s::%d:No int value for octet %lu for %@", buf, 0x26u);
      }
    }

    else
    {
      v21 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        *buf = 136446978;
        v24 = "+[BSSMO formattedMACAddressNotation:as:]";
        v25 = 1024;
        v26 = 298;
        v27 = 2112;
        v28 = v5;
        v29 = 2048;
        v30 = a4;
        _os_log_impl(&dword_1C8460000, v21, OS_LOG_TYPE_FAULT, "%{public}s::%d:Cannot format %@ into %lu octets", buf, 0x26u);
      }
    }
  }

LABEL_15:
  v16 = 0;
LABEL_16:

  v18 = *MEMORY[0x1E69E9840];

  return v16;
}

@end