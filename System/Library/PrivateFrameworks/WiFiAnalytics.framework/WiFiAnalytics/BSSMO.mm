@interface BSSMO
+ (BOOL)coalesceBssidsIntoDeployment:(id)deployment moc:(id)moc;
+ (BOOL)setBssManagedObjectPropertyValueForKey:(id)key forKey:(id)forKey withValue:(id)value;
+ (BOOL)verifyConstraints:(id)constraints withError:(id *)error;
+ (id)allBssidsForSsid:(id)ssid moc:(id)moc;
+ (id)allSsidsForBssid:(id)bssid moc:(id)moc;
+ (id)bssManagedObjectPropertyValue:(id)value forKey:(id)key;
+ (id)constraintsWithBSSID:(id)d;
+ (id)copyBssidsForDeployment:(id)deployment deploymentUuid:(id)uuid moc:(id)moc;
+ (id)copyDeploymentUuidsForSsid:(id)ssid moc:(id)moc;
+ (id)defaultPropertiesToFetch;
+ (id)formattedMACAddressNotation:(id)notation as:(unint64_t)as;
+ (id)getDeploymentUuidForBssids:(id)bssids moc:(id)moc;
+ (unint64_t)numBssInBand:(id)band bandIs24:(BOOL)is24 moc:(id)moc;
@end

@implementation BSSMO

+ (id)defaultPropertiesToFetch
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__BSSMO_defaultPropertiesToFetch__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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

+ (BOOL)verifyConstraints:(id)constraints withError:(id *)error
{
  v30 = *MEMORY[0x1E69E9840];
  constraintsCopy = constraints;
  v6 = [constraintsCopy objectForKeyedSubscript:@"bssid"];

  if (v6)
  {
    v7 = [constraintsCopy objectForKeyedSubscript:@"bssid"];
    v8 = [WAUtil isWildcardMacAddress:v7];

    if (!v8)
    {
      LOBYTE(error) = 1;
      goto LABEL_4;
    }

    v17 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      v18 = [constraintsCopy objectForKeyedSubscript:@"bssid"];
      *buf = 136446722;
      v25 = "+[BSSMO verifyConstraints:withError:]";
      v26 = 1024;
      v27 = 42;
      v28 = 2112;
      v29 = v18;
      _os_log_impl(&dword_1C8460000, v17, OS_LOG_TYPE_FAULT, "%{public}s::%d:Invalid bssid: %@", buf, 0x1Cu);
    }

    if (error)
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
      v12 = [constraintsCopy objectForKeyedSubscript:@"bssid"];
      *buf = 136446722;
      v25 = "+[BSSMO verifyConstraints:withError:]";
      v26 = 1024;
      v27 = 40;
      v28 = 2112;
      v29 = v12;
      _os_log_impl(&dword_1C8460000, v11, OS_LOG_TYPE_FAULT, "%{public}s::%d:Invalid input. bssid:%@", buf, 0x1Cu);
    }

    if (error)
    {
      v13 = MEMORY[0x1E696ABC0];
      v22 = *MEMORY[0x1E696A588];
      v23 = @"WAErrorCodeLacksRequiredArgument";
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      v15 = v13;
      v16 = 9010;
LABEL_13:
      *error = [v15 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:v16 userInfo:v14];

      LOBYTE(error) = 0;
    }
  }

LABEL_4:

  v9 = *MEMORY[0x1E69E9840];
  return error;
}

+ (id)constraintsWithBSSID:(id)d
{
  v18 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v4 = [BSSMO formattedMACAddressNotation:dCopy as:6];
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
      v17 = dCopy;
      _os_log_impl(&dword_1C8460000, v9, OS_LOG_TYPE_ERROR, "%{public}s::%d:Invalid input. bssid:%@", buf, 0x1Cu);
    }

    v6 = 0;
  }

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)allBssidsForSsid:(id)ssid moc:(id)moc
{
  v5 = MEMORY[0x1E695DF70];
  mocCopy = moc;
  ssidCopy = ssid;
  array = [v5 array];
  ssidCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"network.ssid == %@", ssidCopy];

  v10 = +[BSSMO fetchRequest];
  v11 = [AnalyticsStoreProxy fetch:v10 withPredicate:ssidCopy moc:mocCopy];

  if (v11)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __30__BSSMO_allBssidsForSsid_moc___block_invoke;
    v15[3] = &unk_1E830F658;
    v12 = array;
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

+ (id)allSsidsForBssid:(id)bssid moc:(id)moc
{
  v5 = MEMORY[0x1E695DF70];
  mocCopy = moc;
  bssidCopy = bssid;
  array = [v5 array];
  bssidCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"bssid == %@", bssidCopy];

  v10 = +[BSSMO fetchRequest];
  v11 = [AnalyticsStoreProxy fetch:v10 withPredicate:bssidCopy moc:mocCopy];

  if (v11)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __30__BSSMO_allSsidsForBssid_moc___block_invoke;
    v15[3] = &unk_1E830F658;
    v12 = array;
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

+ (id)bssManagedObjectPropertyValue:(id)value forKey:(id)key
{
  v19 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v6 = keyCopy;
  if (value && keyCopy)
  {
    opaque = [value opaque];
    v8 = opaque;
    if (opaque)
    {
      v9 = [opaque valueForKey:v6];
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

+ (BOOL)setBssManagedObjectPropertyValueForKey:(id)key forKey:(id)forKey withValue:(id)value
{
  v20 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  forKeyCopy = forKey;
  valueCopy = value;
  if (!keyCopy)
  {
    dictionary = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(dictionary, OS_LOG_TYPE_ERROR))
    {
      v16 = 136446466;
      v17 = "+[BSSMO setBssManagedObjectPropertyValueForKey:forKey:withValue:]";
      v18 = 1024;
      v19 = 122;
      v15 = "%{public}s::%d:bssMO nil";
LABEL_12:
      _os_log_impl(&dword_1C8460000, dictionary, OS_LOG_TYPE_ERROR, v15, &v16, 0x12u);
    }

LABEL_13:
    v12 = 0;
    goto LABEL_7;
  }

  if (!forKeyCopy)
  {
    dictionary = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(dictionary, OS_LOG_TYPE_ERROR))
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

  opaque = [keyCopy opaque];
  if (opaque)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionaryWithDictionary:opaque];
    [dictionary removeObjectForKey:forKeyCopy];
  }

  else
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
  }

  [dictionary setObject:valueCopy forKey:forKeyCopy];
  [keyCopy setOpaque:dictionary];

  v12 = 1;
LABEL_7:

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

+ (BOOL)coalesceBssidsIntoDeployment:(id)deployment moc:(id)moc
{
  v29 = *MEMORY[0x1E69E9840];
  deploymentCopy = deployment;
  mocCopy = moc;
  if (deploymentCopy)
  {
    v7 = [BSSMO getDeploymentUuidForBssids:deploymentCopy moc:mocCopy];
    if (v7)
    {
      uUID = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v7];
      v9 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        uUIDString = [uUID UUIDString];
        *buf = 136446722;
        v22 = "+[BSSMO coalesceBssidsIntoDeployment:moc:]";
        v23 = 1024;
        v24 = 155;
        v25 = 2112;
        v26 = uUIDString;
        v11 = "%{public}s::%d:Existing UUID %@";
LABEL_7:
        _os_log_impl(&dword_1C8460000, v9, OS_LOG_TYPE_DEBUG, v11, buf, 0x1Cu);
      }
    }

    else
    {
      uUID = [MEMORY[0x1E696AFB0] UUID];
      v9 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        uUIDString = [uUID UUIDString];
        *buf = 136446722;
        v22 = "+[BSSMO coalesceBssidsIntoDeployment:moc:]";
        v23 = 1024;
        v24 = 152;
        v25 = 2112;
        v26 = uUIDString;
        v11 = "%{public}s::%d:Created UUID %@";
        goto LABEL_7;
      }
    }

    v12 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      uUIDString2 = [uUID UUIDString];
      *buf = 136446978;
      v22 = "+[BSSMO coalesceBssidsIntoDeployment:moc:]";
      v23 = 1024;
      v24 = 158;
      v25 = 2112;
      v26 = uUIDString2;
      v27 = 2112;
      v28 = deploymentCopy;
      _os_log_impl(&dword_1C8460000, v12, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Applying deployment UUID %@ bssidsArray %@", buf, 0x26u);
    }

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [dictionary setValue:uUID forKey:@"apid"];
    v15 = +[BSSMO entity];
    name = [v15 name];
    deploymentCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"bssid IN %@", deploymentCopy];
    v18 = [AnalyticsStoreProxy batchUpdate:name withPredicate:deploymentCopy propertiesToUpdate:dictionary moc:mocCopy];

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

+ (id)getDeploymentUuidForBssids:(id)bssids moc:(id)moc
{
  v27 = *MEMORY[0x1E69E9840];
  bssidsCopy = bssids;
  mocCopy = moc;
  if (bssidsCopy)
  {
    v7 = +[BSSMO entity];
    name = [v7 name];
    bssidsCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"bssid IN %@", bssidsCopy];
    v10 = [AnalyticsStoreProxy fetchPropertiesForEntity:name properties:&unk_1F483E8C0 predicate:bssidsCopy moc:mocCopy];

    if (v10 && [v10 count])
    {
      v11 = [v10 valueForKey:@"apid"];
      if (![v11 count])
      {
LABEL_11:
        uUIDString2 = 0;
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
            uUIDString = [v15 UUIDString];

            if (uUIDString)
            {
              uUIDString2 = [v16 UUIDString];

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

    uUIDString2 = 0;
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

    uUIDString2 = 0;
    v11 = 0;
    v10 = 0;
  }

LABEL_12:

  v19 = *MEMORY[0x1E69E9840];

  return uUIDString2;
}

+ (unint64_t)numBssInBand:(id)band bandIs24:(BOOL)is24 moc:(id)moc
{
  is24Copy = is24;
  v31 = *MEMORY[0x1E69E9840];
  bandCopy = band;
  mocCopy = moc;
  if (bandCopy)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = +[BSSMO entity];
    name = [v10 name];

    bandCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"network.ssid == %@", bandCopy];
    v13 = [MEMORY[0x1E696AE18] predicateWithFormat:@"mostRecentChannel <= %d", 14];
    v14 = [MEMORY[0x1E696AE18] predicateWithFormat:@"mostRecentChannel > %d", 14];
    v15 = v14;
    v16 = MEMORY[0x1E696AB28];
    if (is24Copy)
    {
      v26 = bandCopy;
      v17 = &v26;
      v18 = v13;
    }

    else
    {
      v25 = bandCopy;
      v17 = &v25;
      v18 = v14;
    }

    v17[1] = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:? count:?];
    v20 = [v16 andPredicateWithSubpredicates:v19];

    v21 = [AnalyticsStoreProxy entityCount:name withPredicate:v20 moc:mocCopy];
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

+ (id)copyBssidsForDeployment:(id)deployment deploymentUuid:(id)uuid moc:(id)moc
{
  v31 = *MEMORY[0x1E69E9840];
  deploymentCopy = deployment;
  uuidCopy = uuid;
  mocCopy = moc;
  if (!deploymentCopy)
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

    deploymentCopy2 = 0;
    v19 = 0;
    name = 0;
    goto LABEL_15;
  }

  v10 = +[BSSMO entity];
  name = [v10 name];

  if (uuidCopy)
  {
    v12 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:uuidCopy];
    v13 = MEMORY[0x1E696AB28];
    v14 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"apid", v12];
    v26[0] = v14;
    deploymentCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"network.ssid == %@", deploymentCopy];
    v26[1] = deploymentCopy;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
    deploymentCopy2 = [v13 andPredicateWithSubpredicates:v16];
  }

  else
  {
    deploymentCopy2 = [MEMORY[0x1E696AE18] predicateWithFormat:@"network.ssid == %@", deploymentCopy];
  }

  v18 = [AnalyticsStoreProxy fetchPropertiesForEntity:name properties:&unk_1F483E8D8 predicate:deploymentCopy2 moc:mocCopy];
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

+ (id)copyDeploymentUuidsForSsid:(id)ssid moc:(id)moc
{
  v20 = *MEMORY[0x1E69E9840];
  mocCopy = moc;
  ssidCopy = ssid;
  v7 = +[BSSMO entity];
  name = [v7 name];
  ssidCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"network.ssid == %@", ssidCopy];

  v10 = [AnalyticsStoreProxy fetchPropertiesForEntity:name properties:&unk_1F483E8F0 predicate:ssidCopy moc:mocCopy];

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

+ (id)formattedMACAddressNotation:(id)notation as:(unint64_t)as
{
  v31 = *MEMORY[0x1E69E9840];
  notationCopy = notation;
  if (notationCopy)
  {
    if (as == 6)
    {
      v6 = @"xx:xx:xx:xx:xx:xx";
    }

    else
    {
      if (as != 3)
      {
        v17 = WALogCategoryDeviceStoreHandle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
        {
          *buf = 136446722;
          v24 = "+[BSSMO formattedMACAddressNotation:as:]";
          v25 = 1024;
          v26 = 286;
          v27 = 2048;
          asCopy = as;
          _os_log_impl(&dword_1C8460000, v17, OS_LOG_TYPE_FAULT, "%{public}s::%d:invalid type: %lu", buf, 0x1Cu);
        }

        goto LABEL_15;
      }

      v6 = @"xx:xx:xx";
    }

    v7 = [(__CFString *)v6 length];
    v8 = [notationCopy componentsSeparatedByString:@":"];
    v9 = v8;
    if (v7 && [v8 count] >= as)
    {
      array = [MEMORY[0x1E695DF70] array];
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
        [array setObject:v15 atIndexedSubscript:v11];

        if (as == ++v11)
        {
          v16 = [array componentsJoinedByString:@":"];

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
        asCopy = v11;
        v29 = 2112;
        asCopy2 = notationCopy;
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
        asCopy = notationCopy;
        v29 = 2048;
        asCopy2 = as;
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