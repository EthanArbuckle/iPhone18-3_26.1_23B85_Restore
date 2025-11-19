@interface NetworkMO
+ (BOOL)coalesceSsidsIntoColocatedScope:(id)a3 moc:(id)a4;
+ (BOOL)invalidateColocatedScopeForSsidArray:(id)a3 moc:(id)a4;
+ (BOOL)removeNetwork:(id)a3 moc:(id)a4;
+ (BOOL)setNetworkManagedObjectPropertyValueForKey:(id)a3 forKey:(id)a4 withValue:(id)a5;
+ (BOOL)verifyConstraints:(id)a3 withError:(id *)a4;
+ (id)allStoredSsids:(id)a3;
+ (id)copyAllSsids:(id)a3;
+ (id)copyAllSsidsWithColocatedScopeId:(id)a3 moc:(id)a4;
+ (id)copyAllSsidsWithColocatedScopeIdStr:(id)a3 moc:(id)a4;
+ (id)defaultPropertiesToFetch;
+ (id)getFirstColocatedScopeUuidForSsids:(id)a3 moc:(id)a4;
+ (id)networkManagedObjectPropertyValue:(id)a3 forKey:(id)a4;
+ (id)predicateForNetworkContainingBSSID:(id)a3;
+ (id)predicateForNetworkWithTrait:(unint64_t)a3;
+ (id)propertiesForTraits:(id)a3;
- (BOOL)classifyTraitsWithDistanceFilter:(double)a3 container:(id)a4;
@end

@implementation NetworkMO

+ (BOOL)verifyConstraints:(id)a3 withError:(id *)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"ssid"];

  if (!v6)
  {
    v9 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v10 = [v5 objectForKeyedSubscript:@"ssid"];
      *buf = 136446722;
      v16 = "+[NetworkMO verifyConstraints:withError:]";
      v17 = 1024;
      v18 = 31;
      v19 = 2112;
      v20 = v10;
      _os_log_impl(&dword_1C8460000, v9, OS_LOG_TYPE_FAULT, "%{public}s::%d:Invalid input. ssid:%@", buf, 0x1Cu);
    }

    if (a4)
    {
      v11 = MEMORY[0x1E696ABC0];
      v13 = *MEMORY[0x1E696A588];
      v14 = @"WAErrorCodeLacksRequiredArgument";
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
      *a4 = [v11 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9010 userInfo:v12];
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return v6 != 0;
}

+ (id)predicateForNetworkContainingBSSID:(id)a3
{
  v3 = MEMORY[0x1E696AE18];
  v4 = [BSSMO formattedMACAddressNotation:a3 as:6];
  v5 = [v3 predicateWithFormat:@"SUBQUERY(bss, $b, $b.bssid == %@).@count > 0", v4];

  return v5;
}

+ (id)defaultPropertiesToFetch
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__NetworkMO_defaultPropertiesToFetch__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (qword_1EDE5CB38 != -1)
  {
    dispatch_once(&qword_1EDE5CB38, block);
  }

  v2 = _MergedGlobals_7;

  return v2;
}

void __37__NetworkMO_defaultPropertiesToFetch__block_invoke(uint64_t a1)
{
  v5.receiver = *(a1 + 32);
  v5.super_class = &OBJC_METACLASS___NetworkMO;
  v1 = objc_msgSendSuper2(&v5, sel_defaultPropertiesToFetch);
  v2 = _MergedGlobals_7;
  _MergedGlobals_7 = v1;

  v3 = _MergedGlobals_7;
  v4 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F483E620];
  [v3 minusSet:v4];
}

+ (BOOL)removeNetwork:(id)a3 moc:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc(MEMORY[0x1E695D538]);
  v8 = +[NetworkMO fetchRequest];
  v9 = [v7 initWithFetchRequest:v8];

  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__8;
  v26 = __Block_byref_object_dispose__8;
  v27 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __31__NetworkMO_removeNetwork_moc___block_invoke;
  v18[3] = &unk_1E830DAF8;
  v10 = v6;
  v19 = v10;
  v11 = v9;
  v20 = v11;
  v21 = &v22;
  [v10 performBlockAndWait:v18];
  v12 = v23[5];
  if (v12)
  {
    v15 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [v23[5] localizedDescription];
      v17 = [v23[5] userInfo];
      *buf = 136447234;
      v29 = "+[NetworkMO removeNetwork:moc:]";
      v30 = 1024;
      v31 = 77;
      v32 = 2112;
      v33 = v5;
      v34 = 2112;
      v35 = v16;
      v36 = 2112;
      v37 = v17;
      _os_log_impl(&dword_1C8460000, v15, OS_LOG_TYPE_ERROR, "%{public}s::%d:Error executing batch delete for network[%@]. %@ %@", buf, 0x30u);
    }
  }

  _Block_object_dispose(&v22, 8);
  v13 = *MEMORY[0x1E69E9840];
  return v12 == 0;
}

void __31__NetworkMO_removeNetwork_moc___block_invoke(void *a1)
{
  v2 = a1[4];
  v1 = a1[5];
  v3 = *(a1[6] + 8);
  obj = *(v3 + 40);
  v4 = [v2 executeRequest:v1 error:&obj];
  objc_storeStrong((v3 + 40), obj);
}

+ (id)networkManagedObjectPropertyValue:(id)a3 forKey:(id)a4
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
      v14 = "+[NetworkMO networkManagedObjectPropertyValue:forKey:]";
      v15 = 1024;
      v16 = 93;
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&dword_1C8460000, v10, OS_LOG_TYPE_ERROR, "%{public}s::%d:Nil networkMO or key %@", &v13, 0x1Cu);
    }

    v9 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (BOOL)setNetworkManagedObjectPropertyValueForKey:(id)a3 forKey:(id)a4 withValue:(id)a5
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
      v17 = "+[NetworkMO setNetworkManagedObjectPropertyValueForKey:forKey:withValue:]";
      v18 = 1024;
      v19 = 103;
      v15 = "%{public}s::%d:networkMO nil";
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
      v17 = "+[NetworkMO setNetworkManagedObjectPropertyValueForKey:forKey:withValue:]";
      v18 = 1024;
      v19 = 104;
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

+ (id)allStoredSsids:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] array];
  v5 = [MEMORY[0x1E695DEC8] arrayWithObject:@"network.ssid"];
  v6 = +[NetworkMO entity];
  v7 = [v6 name];
  v8 = [AnalyticsStoreProxy fetchRequestForEntityWithBatchSize:v7 batchSize:100 prefetch:v5];
  v9 = [AnalyticsStoreProxy fetch:v8 withPredicate:0 moc:v3];

  v10 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446722;
    v28 = "+[NetworkMO allStoredSsids:]";
    v29 = 1024;
    v30 = 132;
    v31 = 2048;
    v32 = [v9 count];
    _os_log_impl(&dword_1C8460000, v10, OS_LOG_TYPE_DEBUG, "%{public}s::%d:ResultCount:%lu", buf, 0x1Cu);
  }

  if (v9)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v23;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v22 + 1) + 8 * i);
          v17 = v16;
          if (v16)
          {
            v18 = [v16 ssid];

            if (v18)
            {
              v19 = [v17 ssid];
              [v4 addObject:v19];
            }
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v13);
    }
  }

  if (![v4 count])
  {

    v4 = 0;
  }

  v20 = *MEMORY[0x1E69E9840];

  return v4;
}

- (BOOL)classifyTraitsWithDistanceFilter:(double)a3 container:(id)a4
{
  v67 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  v8 = [(NetworkMO *)self ssid];
  v9 = [GeoTagMO geoTagsForNetwork:v8 container:v6];

  v55 = v9;
  v51 = v7;
  v52 = v6;
  v50 = self;
  if (v9 && [v9 count])
  {
    LOBYTE(v10) = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 1;
    while (1)
    {
      v54 = v13;
      v15 = [v9 objectAtIndex:v13];
      v53 = v14;
      if (v15)
      {
        break;
      }

LABEL_17:

      v13 = v54 + 1;
      v14 = v53 + 1;
      if (v54 + 1 >= [v9 count])
      {
        goto LABEL_20;
      }
    }

    while (1)
    {
      if (v14 >= [v9 count])
      {
        goto LABEL_17;
      }

      context = objc_autoreleasePoolPush();
      v16 = [v9 objectAtIndex:v14];
      v17 = objc_alloc(MEMORY[0x1E6985C38]);
      [v15 latitude];
      v19 = v18;
      [v15 longitude];
      v21 = [v17 initWithLatitude:v19 longitude:v20];
      v22 = objc_alloc(MEMORY[0x1E6985C38]);
      [v16 latitude];
      v24 = v23;
      [v16 longitude];
      v26 = [v22 initWithLatitude:v24 longitude:v25];
      [v21 distanceFromLocation:v26];
      if (v27 < a3)
      {
        goto LABEL_15;
      }

      v57 = v12 + 1;
      v28 = (v12 + 1) > 1;
      if (v10)
      {
        v10 = 1;
      }

      else
      {
        [v15 bss];
        v29 = v56 = v11;
        v30 = [v29 bssid];

        v31 = [v16 bss];
        v32 = [v31 bssid];

        v33 = [v15 date];
        v34 = [v16 date];
        [v33 timeIntervalSinceDate:v34];
        v36 = v35;

        v11 = v56;
        v37 = [v30 isEqualToString:v32];
        v38 = v36 > 0.0;
        if (v36 > 604800.0)
        {
          v38 = 0;
        }

        v10 = v37 & v38;

        v9 = v55;
      }

      v11 |= v28;
      if ((v11 & v10 & 1) == 0)
      {
        break;
      }

      v39 = 0;
      v11 = 1;
      LOBYTE(v10) = 1;
      v12 = v57;
LABEL_16:

      objc_autoreleasePoolPop(context);
      ++v14;
      if ((v39 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    v12 = v57;
LABEL_15:
    v39 = 1;
    goto LABEL_16;
  }

  LOBYTE(v11) = 0;
  LOBYTE(v10) = 0;
LABEL_20:
  [(NetworkMO *)v50 setIsOmnipresent:v11 & 1];
  v40 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
  {
    v41 = [(NetworkMO *)v50 ssid];
    v42 = v41;
    v43 = "NOT Omnipresent";
    *buf = 136446978;
    v60 = "[NetworkMO classifyTraitsWithDistanceFilter:container:]";
    v61 = 1024;
    if (v11)
    {
      v43 = "Omnipresent";
    }

    v62 = 200;
    v63 = 2112;
    v64 = v41;
    v65 = 2080;
    v66 = v43;
    _os_log_impl(&dword_1C8460000, v40, OS_LOG_TYPE_INFO, "%{public}s::%d:Marking network %@ as %s.", buf, 0x26u);
  }

  [(NetworkMO *)v50 setIsMoving:v10 & 1];
  v44 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
  {
    v45 = [(NetworkMO *)v50 ssid];
    v46 = v45;
    v47 = "NOT Moving";
    *buf = 136446978;
    v60 = "[NetworkMO classifyTraitsWithDistanceFilter:container:]";
    v61 = 1024;
    if (v10)
    {
      v47 = "Moving";
    }

    v62 = 203;
    v63 = 2112;
    v64 = v45;
    v65 = 2080;
    v66 = v47;
    _os_log_impl(&dword_1C8460000, v44, OS_LOG_TYPE_INFO, "%{public}s::%d:Marking network %@ as %s.", buf, 0x26u);
  }

  objc_autoreleasePoolPop(v51);
  v48 = *MEMORY[0x1E69E9840];
  return 1;
}

+ (id)predicateForNetworkWithTrait:(unint64_t)a3
{
  v17 = *MEMORY[0x1E69E9840];
  if (a3 <= 2)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        goto LABEL_17;
      }

      v4 = MEMORY[0x1E696AE18];
      v5 = @"isOmnipresent == YES";
    }

    else
    {
      v4 = MEMORY[0x1E696AE18];
      v5 = @"isMoving == YES";
    }

LABEL_12:
    [v4 predicateWithFormat:v5, v10];
    goto LABEL_13;
  }

  switch(a3)
  {
    case 3uLL:
      v4 = MEMORY[0x1E696AE18];
      v5 = @"isHome == YES";
      goto LABEL_12;
    case 4uLL:
      [MEMORY[0x1E696AE18] predicateWithFormat:@"coverageDetermination == %lu", 2];
      goto LABEL_13;
    case 5uLL:
      [MEMORY[0x1E696AE18] predicateWithFormat:@"congestionDetermination == %lu", 2];
      v6 = LABEL_13:;
      goto LABEL_14;
  }

LABEL_17:
  v9 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446722;
    v12 = "+[NetworkMO predicateForNetworkWithTrait:]";
    v13 = 1024;
    v14 = 218;
    v15 = 2048;
    v16 = a3;
    _os_log_impl(&dword_1C8460000, v9, OS_LOG_TYPE_ERROR, "%{public}s::%d:unknown trait %lu", buf, 0x1Cu);
  }

  v6 = 0;
LABEL_14:
  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)propertiesForTraits:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v30 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v21;
    *&v7 = 136446722;
    v19 = v7;
    do
    {
      v10 = 0;
      do
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = [*(*(&v20 + 1) + 8 * v10) unsignedIntegerValue];
        v12 = v11;
        if (v11 <= 2)
        {
          if (!v11)
          {
            v13 = v4;
            v14 = @"isMoving";
            goto LABEL_17;
          }

          if (v11 == 1)
          {
            v13 = v4;
            v14 = @"isOmnipresent";
            goto LABEL_17;
          }
        }

        else
        {
          switch(v11)
          {
            case 3:
              v13 = v4;
              v14 = @"isHome";
              goto LABEL_17;
            case 4:
              v13 = v4;
              v14 = @"coverageDetermination";
              goto LABEL_17;
            case 5:
              v13 = v4;
              v14 = @"congestionDetermination";
LABEL_17:
              [v13 addObject:v14];
              goto LABEL_18;
          }
        }

        v15 = WALogCategoryDeviceStoreHandle();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = v19;
          v25 = "+[NetworkMO propertiesForTraits:]";
          v26 = 1024;
          v27 = 244;
          v28 = 2048;
          v29 = v12;
          _os_log_impl(&dword_1C8460000, v15, OS_LOG_TYPE_ERROR, "%{public}s::%d:unknown trait %lu", buf, 0x1Cu);
        }

LABEL_18:
        ++v10;
      }

      while (v8 != v10);
      v16 = [v5 countByEnumeratingWithState:&v20 objects:v30 count:16];
      v8 = v16;
    }

    while (v16);
  }

  v17 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)copyAllSsids:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = +[NetworkMO entity];
  v5 = [v4 name];
  v6 = [AnalyticsStoreProxy fetchPropertiesForEntity:v5 properties:&unk_1F483E638 predicate:0 moc:v3];

  if (v6 && [v6 count])
  {
    v7 = [v6 valueForKey:@"ssid"];
  }

  else
  {
    v11 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = 136446466;
      v13 = "+[NetworkMO copyAllSsids:]";
      v14 = 1024;
      v15 = 256;
      _os_log_impl(&dword_1C8460000, v11, OS_LOG_TYPE_ERROR, "%{public}s::%d:resultsArrOfDicts nil", &v12, 0x12u);
    }

    v7 = 0;
  }

  v8 = [v7 copy];

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

+ (id)copyAllSsidsWithColocatedScopeId:(id)a3 moc:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    v7 = +[NetworkMO entity];
    v8 = [v7 name];
    v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"colocatedScopeId", v5];
    v10 = [AnalyticsStoreProxy fetchPropertiesForEntity:v8 properties:&unk_1F483E650 predicate:v9 moc:v6];

    if (v10 && [v10 count])
    {
      v11 = [v10 valueForKey:@"ssid"];
    }

    else
    {
      v15 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v18 = "+[NetworkMO copyAllSsidsWithColocatedScopeId:moc:]";
        v19 = 1024;
        v20 = 271;
        _os_log_impl(&dword_1C8460000, v15, OS_LOG_TYPE_ERROR, "%{public}s::%d:resultsArrOfDicts nil", buf, 0x12u);
      }

      v11 = 0;
    }
  }

  else
  {
    v16 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v18 = "+[NetworkMO copyAllSsidsWithColocatedScopeId:moc:]";
      v19 = 1024;
      v20 = 268;
      _os_log_impl(&dword_1C8460000, v16, OS_LOG_TYPE_ERROR, "%{public}s::%d:colocatedScopeId nil", buf, 0x12u);
    }

    v11 = 0;
    v10 = 0;
  }

  v12 = [v11 copy];

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

+ (id)copyAllSsidsWithColocatedScopeIdStr:(id)a3 moc:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AFB0];
  v6 = a4;
  v7 = a3;
  v8 = [[v5 alloc] initWithUUIDString:v7];

  v9 = +[NetworkMO entity];
  v10 = [v9 name];
  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"colocatedScopeId", v8];
  v12 = [AnalyticsStoreProxy fetchPropertiesForEntity:v10 properties:&unk_1F483E668 predicate:v11 moc:v6];

  if (v12 && [v12 count])
  {
    v13 = [v12 valueForKey:@"ssid"];
  }

  else
  {
    v17 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v19 = "+[NetworkMO copyAllSsidsWithColocatedScopeIdStr:moc:]";
      v20 = 1024;
      v21 = 287;
      _os_log_impl(&dword_1C8460000, v17, OS_LOG_TYPE_ERROR, "%{public}s::%d:resultsArrOfDicts nil", buf, 0x12u);
    }

    v13 = 0;
  }

  v14 = [v13 copy];

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

+ (id)getFirstColocatedScopeUuidForSsids:(id)a3 moc:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    v7 = +[NetworkMO entity];
    v8 = [v7 name];
    v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"ssid IN %@", v5];
    v10 = [AnalyticsStoreProxy fetchPropertiesForEntity:v8 properties:&unk_1F483E680 predicate:v9 moc:v6];

    if (v10 && [v10 count])
    {
      v11 = [v10 valueForKey:@"colocatedScopeId"];
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
      v24 = "+[NetworkMO getFirstColocatedScopeUuidForSsids:moc:]";
      v25 = 1024;
      v26 = 302;
      _os_log_impl(&dword_1C8460000, v21, OS_LOG_TYPE_ERROR, "%{public}s::%d:ssidArray nil", buf, 0x12u);
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
      v24 = "+[NetworkMO getFirstColocatedScopeUuidForSsids:moc:]";
      v25 = 1024;
      v26 = 299;
      _os_log_impl(&dword_1C8460000, v22, OS_LOG_TYPE_ERROR, "%{public}s::%d:ssidArray nil", buf, 0x12u);
    }

    v18 = 0;
    v11 = 0;
    v10 = 0;
  }

LABEL_12:

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

+ (BOOL)invalidateColocatedScopeForSsidArray:(id)a3 moc:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    v7 = [MEMORY[0x1E695DF90] dictionary];
    v8 = [MEMORY[0x1E696ABC8] expressionForConstantValue:0];
    [v7 setValue:v8 forKey:@"colocatedScopeId"];

    v9 = +[NetworkMO entity];
    v10 = [v9 name];
    v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"ssid IN %@", v5];
    v12 = [AnalyticsStoreProxy batchUpdate:v10 withPredicate:v11 propertiesToUpdate:v7 moc:v6];
  }

  else
  {
    v7 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v16 = "+[NetworkMO invalidateColocatedScopeForSsidArray:moc:]";
      v17 = 1024;
      v18 = 324;
      _os_log_impl(&dword_1C8460000, v7, OS_LOG_TYPE_ERROR, "%{public}s::%d:ssidArray nil", buf, 0x12u);
    }

    v12 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

+ (BOOL)coalesceSsidsIntoColocatedScope:(id)a3 moc:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    v7 = [NetworkMO getFirstColocatedScopeUuidForSsids:v5 moc:v6];
    if (v7)
    {
      v8 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v7];
      v9 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v10 = [v8 UUIDString];
        *buf = 136446722;
        v22 = "+[NetworkMO coalesceSsidsIntoColocatedScope:moc:]";
        v23 = 1024;
        v24 = 347;
        v25 = 2112;
        v26 = v10;
        v11 = "%{public}s::%d:Existing ColocatedScope UUID %@";
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
        v22 = "+[NetworkMO coalesceSsidsIntoColocatedScope:moc:]";
        v23 = 1024;
        v24 = 344;
        v25 = 2112;
        v26 = v10;
        v11 = "%{public}s::%d:Created ColocatedScope UUID %@";
        goto LABEL_7;
      }
    }

    v12 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = [v8 UUIDString];
      *buf = 136446978;
      v22 = "+[NetworkMO coalesceSsidsIntoColocatedScope:moc:]";
      v23 = 1024;
      v24 = 349;
      v25 = 2112;
      v26 = v13;
      v27 = 2112;
      v28 = v5;
      _os_log_impl(&dword_1C8460000, v12, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Applying ColocatedScope UUID %@ to ssidArray %@", buf, 0x26u);
    }

    v14 = [MEMORY[0x1E695DF90] dictionary];
    [v14 setValue:v8 forKey:@"colocatedScopeId"];
    v15 = +[NetworkMO entity];
    v16 = [v15 name];
    v17 = [MEMORY[0x1E696AE18] predicateWithFormat:@"ssid IN %@", v5];
    v18 = [AnalyticsStoreProxy batchUpdate:v16 withPredicate:v17 propertiesToUpdate:v14 moc:v6];

    goto LABEL_11;
  }

  v7 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v22 = "+[NetworkMO coalesceSsidsIntoColocatedScope:moc:]";
    v23 = 1024;
    v24 = 339;
    _os_log_impl(&dword_1C8460000, v7, OS_LOG_TYPE_ERROR, "%{public}s::%d:ssidsArray nil", buf, 0x12u);
  }

  v18 = 0;
LABEL_11:

  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

@end