@interface AnalyticsReader
+ (id)networksFromResults:(id)a3;
- (AnalyticsReader)initWithPersistentContainer:(id)a3;
- (BOOL)isNetworkWithinRangeOfLocation:(id)a3 range:(double)a4 location:(id)a5 count:(unint64_t *)a6;
- (BOOL)parsedBeaconInfoIsStored:(id)a3 ssid:(id)a4;
- (id)adaptiveRoamingParamsForBSS:(id)a3;
- (id)apProfileForBssid:(id)a3;
- (id)bandsInNetwork:(id)a3 withError:(id *)a4;
- (id)bssForBSSID:(id)a3 withError:(id *)a4;
- (id)bssidCountByBandInLAN:(id)a3 withError:(id *)a4;
- (id)bssidCountByBandInUniqueMO:(id)a3 withError:(id *)a4;
- (id)copyAllStoredNetworkSsids;
- (id)copyGeoTagsForNetwork:(id)a3 location:(id)a4;
- (id)copyLocationsForNetwork:(id)a3;
- (id)edgeParametersForBSS:(id)a3;
- (id)lanFor:(id)a3 withError:(id *)a4;
- (id)lanForBssid:(id)a3 withError:(id *)a4;
- (id)lansForSsid:(id)a3 withError:(id *)a4;
- (id)moc;
- (id)networkForSSID:(id)a3 withError:(id *)a4;
- (id)networkSsidsByTraits:(id)a3 withError:(id *)a4;
- (id)networksAvailableAtLocation:(id)a3 withinDistance:(double)a4 inBand:(unsigned int)a5;
- (id)networksInLan:(id)a3 withError:(id *)a4;
- (id)networksInSameLanAsBssid:(id)a3 withError:(id *)a4;
- (id)networksInSameLansAsSsid:(id)a3 withError:(id *)a4;
- (id)networksWithPredicate:(id)a3 withError:(id *)a4;
- (id)usageForLAN:(id)a3 withError:(id *)a4;
- (id)usageForNetwork:(id)a3 withError:(id *)a4;
- (id)usageOf:(id)a3 during:(unint64_t)a4 timeSpan:(unint64_t)a5 withError:(id *)a6;
- (id)usageOf:(id)a3 timeSpan:(unint64_t)a4 around:(id)a5 withError:(id *)a6;
- (signed)deploymentCongestionForSSID:(id)a3 withError:(id *)a4;
- (signed)deploymentCoverageForSSID:(id)a3 withError:(id *)a4;
- (unint64_t)countNetworksHavingBand:(signed __int16)a3 inLan:(id)a4 withError:(id *)a5;
- (unint64_t)countNetworksInSameLanAsBssid:(id)a3 withError:(id *)a4;
- (unint64_t)networkCountForLAN:(id)a3 withError:(id *)a4;
@end

@implementation AnalyticsReader

- (id)moc
{
  v2 = [(AnalyticsReader *)self persistentContainer];
  v3 = [v2 viewContext];

  return v3;
}

- (AnalyticsReader)initWithPersistentContainer:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v11.receiver = self;
  v11.super_class = AnalyticsReader;
  v6 = [(AnalyticsReader *)&v11 init];
  v7 = v6;
  if (v6)
  {
    if (v5)
    {
      objc_storeStrong(&v6->_persistentContainer, a3);
    }

    else
    {
      v10 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v13 = "[AnalyticsReader initWithPersistentContainer:]";
        v14 = 1024;
        v15 = 47;
        _os_log_impl(&dword_1C8460000, v10, OS_LOG_TYPE_ERROR, "%{public}s::%d:nil PersistentContainer", buf, 0x12u);
      }

      v7 = 0;
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (id)bssForBSSID:(id)a3 withError:(id *)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (v6)
  {
    v7 = [(AnalyticsReader *)self persistentContainer];
    v8 = +[BSSMO defaultPropertiesToFetch];
    v9 = [v8 allObjects];
    a4 = [v7 bssForBssid:v6 prefetchProperties:v9 withError:a4];
  }

  else
  {
    v12 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v18 = "[AnalyticsReader bssForBSSID:withError:]";
      v19 = 1024;
      v20 = 65;
      _os_log_impl(&dword_1C8460000, v12, OS_LOG_TYPE_ERROR, "%{public}s::%d:bssid nil", buf, 0x12u);
    }

    if (a4)
    {
      v13 = MEMORY[0x1E696ABC0];
      v15 = *MEMORY[0x1E696A588];
      v16 = @"WAErrorCodeInvalidInput";
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
      *a4 = [v13 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v14];

      a4 = 0;
    }
  }

  v10 = *MEMORY[0x1E69E9840];

  return a4;
}

- (id)adaptiveRoamingParamsForBSS:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__10;
  v16 = __Block_byref_object_dispose__10;
  v17 = 0;
  v5 = [(AnalyticsReader *)self moc];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __47__AnalyticsReader_adaptiveRoamingParamsForBSS___block_invoke;
  v9[3] = &unk_1E830DAF8;
  v9[4] = self;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  [v5 performBlockAndWait:v9];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __47__AnalyticsReader_adaptiveRoamingParamsForBSS___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) persistentContainer];
  v4 = *(a1 + 40);
  v18 = 0;
  v5 = [v3 bssForBssid:v4 prefetchProperties:&unk_1F483E7B8 withError:&v18];
  v6 = v18;

  if (v6)
  {
    v10 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_6;
    }

    *buf = 136446722;
    v20 = "[AnalyticsReader adaptiveRoamingParamsForBSS:]_block_invoke";
    v21 = 1024;
    v22 = 82;
    v23 = 2112;
    v24 = v6;
    v12 = "%{public}s::%d:BSS fetch failed: %@";
    goto LABEL_11;
  }

  if (!v5)
  {
    v10 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_6;
    }

    v17 = *(a1 + 40);
    *buf = 136446722;
    v20 = "[AnalyticsReader adaptiveRoamingParamsForBSS:]_block_invoke";
    v21 = 1024;
    v22 = 83;
    v23 = 2112;
    v24 = v17;
    v12 = "%{public}s::%d:BSS not found for %@";
LABEL_11:
    v13 = v10;
    v14 = OS_LOG_TYPE_ERROR;
    goto LABEL_5;
  }

  v7 = [[WADeviceAnalytics_AdaptiveRoamingBSSParams alloc] initWithBSS:v5];
  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(*(*(a1 + 48) + 8) + 40);
    *buf = 136446722;
    v20 = "[AnalyticsReader adaptiveRoamingParamsForBSS:]_block_invoke";
    v21 = 1024;
    v22 = 87;
    v23 = 2112;
    v24 = v11;
    v12 = "%{public}s::%d:returning %@";
    v13 = v10;
    v14 = OS_LOG_TYPE_DEFAULT;
LABEL_5:
    _os_log_impl(&dword_1C8460000, v13, v14, v12, buf, 0x1Cu);
  }

LABEL_6:

  v15 = [*(a1 + 32) persistentContainer];
  [v15 managedObjectContextSave:0 reset:1 release:1 withError:0];

  objc_autoreleasePoolPop(v2);
  v16 = *MEMORY[0x1E69E9840];
}

- (id)edgeParametersForBSS:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__10;
  v21 = __Block_byref_object_dispose__10;
  v22 = 0;
  v5 = [(AnalyticsReader *)self moc];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __40__AnalyticsReader_edgeParametersForBSS___block_invoke;
  v14[3] = &unk_1E830DAF8;
  v14[4] = self;
  v6 = v4;
  v15 = v6;
  v16 = &v17;
  [v5 performBlockAndWait:v14];

  v7 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = [v18[5] isEdge];
    v9 = [v18[5] autoLeaveRssi];
    v24 = "[AnalyticsReader edgeParametersForBSS:]";
    v26 = 108;
    v10 = "is NOT";
    v27 = 2112;
    *buf = 136447234;
    v25 = 1024;
    if (v8)
    {
      v10 = "is";
    }

    v28 = v6;
    v29 = 2080;
    v30 = v10;
    v31 = 1024;
    v32 = v9;
    _os_log_impl(&dword_1C8460000, v7, OS_LOG_TYPE_DEBUG, "%{public}s::%d:bssid[%@] : %s an edgeBSS autoLeaveRssi:%hd", buf, 0x2Cu);
  }

  v11 = v18[5];
  _Block_object_dispose(&v17, 8);

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

void __40__AnalyticsReader_edgeParametersForBSS___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = [*(*(a1 + 32) + 8) bssForBssid:*(a1 + 40) prefetchProperties:&unk_1F483E7D0 withError:0];
  if (v3)
  {
    v4 = [[WADeviceAnalytics_EdgeBSSParameters alloc] initWithBSS:v3];
    v5 = *(*(a1 + 48) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  else
  {
    v9 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 40);
      v11 = 136446722;
      v12 = "[AnalyticsReader edgeParametersForBSS:]_block_invoke";
      v13 = 1024;
      v14 = 101;
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&dword_1C8460000, v9, OS_LOG_TYPE_ERROR, "%{public}s::%d:BSS not found for %@", &v11, 0x1Cu);
    }
  }

  v7 = [*(a1 + 32) persistentContainer];
  [v7 managedObjectContextSave:0 reset:1 release:1 withError:0];

  objc_autoreleasePoolPop(v2);
  v8 = *MEMORY[0x1E69E9840];
}

- (BOOL)parsedBeaconInfoIsStored:(id)a3 ssid:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 1;
  v8 = [(AnalyticsReader *)self moc];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __49__AnalyticsReader_parsedBeaconInfoIsStored_ssid___block_invoke;
  v16[3] = &unk_1E830F050;
  v9 = v6;
  v17 = v9;
  v10 = v7;
  v18 = v10;
  v19 = self;
  v20 = &v21;
  [v8 performBlockAndWait:v16];

  v11 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v22 + 24))
    {
      v12 = @"YES";
    }

    else
    {
      v12 = @"NO";
    }

    *buf = 136446722;
    v26 = "[AnalyticsReader parsedBeaconInfoIsStored:ssid:]";
    v27 = 1024;
    v28 = 139;
    v29 = 2112;
    v30 = v12;
    _os_log_impl(&dword_1C8460000, v11, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Returning %@", buf, 0x1Cu);
  }

  v13 = *(v22 + 24);
  _Block_object_dispose(&v21, 8);

  v14 = *MEMORY[0x1E69E9840];
  return v13 & 1;
}

void __49__AnalyticsReader_parsedBeaconInfoIsStored_ssid___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  if (!*(a1 + 32))
  {
    v11 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    *v21 = 136446466;
    *&v21[4] = "[AnalyticsReader parsedBeaconInfoIsStored:ssid:]_block_invoke";
    *&v21[12] = 1024;
    *&v21[14] = 121;
    v12 = "%{public}s::%d:bssid nil";
LABEL_12:
    v13 = v11;
    v14 = 18;
LABEL_15:
    _os_log_impl(&dword_1C8460000, v13, OS_LOG_TYPE_ERROR, v12, v21, v14);
    goto LABEL_16;
  }

  if (!*(a1 + 40))
  {
    v11 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    *v21 = 136446466;
    *&v21[4] = "[AnalyticsReader parsedBeaconInfoIsStored:ssid:]_block_invoke";
    *&v21[12] = 1024;
    *&v21[14] = 122;
    v12 = "%{public}s::%d:ssid nil";
    goto LABEL_12;
  }

  v3 = [*(a1 + 48) persistentContainer];
  v4 = [v3 bssForBssid:*(a1 + 32) prefetchProperties:&unk_1F483E7E8 withError:0];

  if (!v4)
  {
    v11 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v15 = *(a1 + 32);
      *v21 = 136446722;
      *&v21[4] = "[AnalyticsReader parsedBeaconInfoIsStored:ssid:]_block_invoke";
      *&v21[12] = 1024;
      *&v21[14] = 125;
      *&v21[18] = 2112;
      *&v21[20] = v15;
      v12 = "%{public}s::%d:BSS not found for %@";
      v13 = v11;
      v14 = 28;
      goto LABEL_15;
    }

LABEL_16:

    v4 = 0;
    v8 = 0;
    *(*(*(a1 + 56) + 8) + 24) = 1;
    goto LABEL_7;
  }

  v5 = [v4 network];
  v6 = [v5 ssid];
  v7 = [v6 isEqualToString:*(a1 + 40)];

  if (v7)
  {
    v8 = [v4 parsedBeacon];
    if (!v8)
    {
      *(*(*(a1 + 56) + 8) + 24) = 0;
    }
  }

  else
  {
    v16 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v18 = *(a1 + 32);
      v17 = *(a1 + 40);
      v19 = [v4 network];
      v20 = [v19 ssid];
      *v21 = 136447234;
      *&v21[4] = "[AnalyticsReader parsedBeaconInfoIsStored:ssid:]_block_invoke";
      *&v21[12] = 1024;
      *&v21[14] = 126;
      *&v21[18] = 2112;
      *&v21[20] = v17;
      *&v21[28] = 2112;
      *&v21[30] = v18;
      v22 = 2112;
      v23 = v20;
      _os_log_impl(&dword_1C8460000, v16, OS_LOG_TYPE_ERROR, "%{public}s::%d:Mismatched Network (%@): bss %@ is known to belong to %@, ", v21, 0x30u);
    }

    v8 = 0;
  }

LABEL_7:
  v9 = [*(a1 + 48) persistentContainer];
  [v9 managedObjectContextSave:0 reset:1 release:1 withError:0];

  objc_autoreleasePoolPop(v2);
  v10 = *MEMORY[0x1E69E9840];
}

- (id)apProfileForBssid:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__10;
  v20 = __Block_byref_object_dispose__10;
  v21 = 0;
  v5 = [(AnalyticsReader *)self moc];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __37__AnalyticsReader_apProfileForBssid___block_invoke;
  v12[3] = &unk_1E830DAF8;
  v6 = v4;
  v13 = v6;
  v14 = self;
  v15 = &v16;
  [v5 performBlockAndWait:v12];

  v7 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = v17[5];
    *buf = 136446722;
    v23 = "[AnalyticsReader apProfileForBssid:]";
    v24 = 1024;
    v25 = 161;
    v26 = 2112;
    v27 = v8;
    _os_log_impl(&dword_1C8460000, v7, OS_LOG_TYPE_ERROR, "%{public}s::%d:returning %@", buf, 0x1Cu);
  }

  v9 = v17[5];
  _Block_object_dispose(&v16, 8);

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

void __37__AnalyticsReader_apProfileForBssid___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  if (!*(a1 + 32))
  {
    v4 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_5;
    }

    v17 = 136446466;
    v18 = "[AnalyticsReader apProfileForBssid:]_block_invoke";
    v19 = 1024;
    v20 = 150;
    v11 = "%{public}s::%d:bssid is nil. bailing";
    v12 = v4;
    v13 = 18;
LABEL_10:
    _os_log_impl(&dword_1C8460000, v12, OS_LOG_TYPE_ERROR, v11, &v17, v13);
    goto LABEL_5;
  }

  v3 = [*(a1 + 40) persistentContainer];
  v4 = [v3 bssForBssid:*(a1 + 32) prefetchProperties:&unk_1F483E800 withError:0];

  if (!v4)
  {
    v4 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_5;
    }

    v14 = *(a1 + 32);
    v17 = 136446722;
    v18 = "[AnalyticsReader apProfileForBssid:]_block_invoke";
    v19 = 1024;
    v20 = 153;
    v21 = 2112;
    v22 = v14;
    v11 = "%{public}s::%d:BSS not found for %@";
    v12 = v4;
    v13 = 28;
    goto LABEL_10;
  }

  v5 = [v4 apProfileID];

  if (v5)
  {
    v6 = [v4 apProfileID];
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  else
  {
    v15 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 32);
      v17 = 136446722;
      v18 = "[AnalyticsReader apProfileForBssid:]_block_invoke";
      v19 = 1024;
      v20 = 154;
      v21 = 2112;
      v22 = v16;
      _os_log_impl(&dword_1C8460000, v15, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:apProfileID nil for bssid:%@", &v17, 0x1Cu);
    }
  }

LABEL_5:

  v9 = [*(a1 + 40) persistentContainer];
  [v9 managedObjectContextSave:0 reset:1 release:1 withError:0];

  objc_autoreleasePoolPop(v2);
  v10 = *MEMORY[0x1E69E9840];
}

- (id)networkForSSID:(id)a3 withError:(id *)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (v6)
  {
    v7 = [(AnalyticsReader *)self persistentContainer];
    v8 = +[NetworkMO defaultPropertiesToFetch];
    v9 = [v8 allObjects];
    a4 = [v7 networkForSSID:v6 prefetchProperties:v9 withError:a4];
  }

  else
  {
    v12 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v18 = "[AnalyticsReader networkForSSID:withError:]";
      v19 = 1024;
      v20 = 172;
      _os_log_impl(&dword_1C8460000, v12, OS_LOG_TYPE_ERROR, "%{public}s::%d:ssid nil", buf, 0x12u);
    }

    if (a4)
    {
      v13 = MEMORY[0x1E696ABC0];
      v15 = *MEMORY[0x1E696A588];
      v16 = @"WAErrorCodeInvalidInput";
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
      *a4 = [v13 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v14];

      a4 = 0;
    }
  }

  v10 = *MEMORY[0x1E69E9840];

  return a4;
}

- (id)usageForNetwork:(id)a3 withError:(id *)a4
{
  v39[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__10;
  v30 = __Block_byref_object_dispose__10;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__10;
  v24 = __Block_byref_object_dispose__10;
  v25 = 0;
  if (v6)
  {
    v7 = [(AnalyticsReader *)self moc];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __45__AnalyticsReader_usageForNetwork_withError___block_invoke;
    v16[3] = &unk_1E830DB20;
    v18 = &v26;
    v16[4] = self;
    v17 = v6;
    v19 = &v20;
    [v7 performBlockAndWait:v16];

    if (a4)
    {
      *a4 = v21[5];
    }
  }

  else
  {
    v13 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v33 = "[AnalyticsReader usageForNetwork:withError:]";
      v34 = 1024;
      v35 = 185;
      _os_log_impl(&dword_1C8460000, v13, OS_LOG_TYPE_ERROR, "%{public}s::%d:ssid nil", buf, 0x12u);
    }

    if (a4)
    {
      v14 = MEMORY[0x1E696ABC0];
      v38 = *MEMORY[0x1E696A588];
      v39[0] = @"WAErrorCodeInvalidInput";
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:&v38 count:1];
      *a4 = [v14 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v15];
    }
  }

  v8 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v27[5];
    *buf = 136446722;
    v33 = "[AnalyticsReader usageForNetwork:withError:]";
    v34 = 1024;
    v35 = 197;
    v36 = 2112;
    v37 = v9;
    _os_log_impl(&dword_1C8460000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Returning %@", buf, 0x1Cu);
  }

  v10 = v27[5];
  _Block_object_dispose(&v20, 8);

  _Block_object_dispose(&v26, 8);
  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

void __45__AnalyticsReader_usageForNetwork_withError___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [WADeviceAnalytics_UsageStats alloc];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(*(a1 + 56) + 8);
  obj = *(v6 + 40);
  v7 = [v4 networkForSSID:v5 withError:&obj];
  objc_storeStrong((v6 + 40), obj);
  v8 = [(WADeviceAnalytics_UsageStats *)v3 initWithUniqueMO:v7];
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = [*(a1 + 32) persistentContainer];
  [v11 managedObjectContextSave:0 reset:1 release:1 withError:0];

  objc_autoreleasePoolPop(v2);
}

- (id)bandsInNetwork:(id)a3 withError:(id *)a4
{
  v39[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__10;
  v30 = __Block_byref_object_dispose__10;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__10;
  v24 = __Block_byref_object_dispose__10;
  v25 = 0;
  if (v6)
  {
    v7 = [(AnalyticsReader *)self moc];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __44__AnalyticsReader_bandsInNetwork_withError___block_invoke;
    v16[3] = &unk_1E830DB20;
    v18 = &v26;
    v16[4] = self;
    v17 = v6;
    v19 = &v20;
    [v7 performBlockAndWait:v16];

    if (a4)
    {
      *a4 = v21[5];
    }
  }

  else
  {
    v13 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v33 = "[AnalyticsReader bandsInNetwork:withError:]";
      v34 = 1024;
      v35 = 204;
      _os_log_impl(&dword_1C8460000, v13, OS_LOG_TYPE_ERROR, "%{public}s::%d:ssid nil", buf, 0x12u);
    }

    if (a4)
    {
      v14 = MEMORY[0x1E696ABC0];
      v38 = *MEMORY[0x1E696A588];
      v39[0] = @"WAErrorCodeInvalidInput";
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:&v38 count:1];
      *a4 = [v14 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v15];
    }
  }

  v8 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v27[5];
    *buf = 136446722;
    v33 = "[AnalyticsReader bandsInNetwork:withError:]";
    v34 = 1024;
    v35 = 216;
    v36 = 2112;
    v37 = v9;
    _os_log_impl(&dword_1C8460000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Returning %@", buf, 0x1Cu);
  }

  v10 = v27[5];
  _Block_object_dispose(&v20, 8);

  _Block_object_dispose(&v26, 8);
  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

void __44__AnalyticsReader_bandsInNetwork_withError___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [WADeviceAnalytics_BandsInNetwork alloc];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(*(a1 + 56) + 8);
  obj = *(v6 + 40);
  v7 = [v4 networkForSSID:v5 withError:&obj];
  objc_storeStrong((v6 + 40), obj);
  v8 = [(WADeviceAnalytics_BandsInNetwork *)v3 initWithNetwork:v7];
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = [*(a1 + 32) persistentContainer];
  [v11 managedObjectContextSave:0 reset:1 release:1 withError:0];

  objc_autoreleasePoolPop(v2);
}

- (id)copyAllStoredNetworkSsids
{
  v22 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__10;
  v14 = __Block_byref_object_dispose__10;
  v15 = 0;
  v3 = [(AnalyticsReader *)self moc];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __44__AnalyticsReader_copyAllStoredNetworkSsids__block_invoke;
  v9[3] = &unk_1E830EE78;
  v9[4] = self;
  v9[5] = &v10;
  [v3 performBlockAndWait:v9];

  v4 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = [v11[5] count];
    *buf = 136446722;
    v17 = "[AnalyticsReader copyAllStoredNetworkSsids]";
    v18 = 1024;
    v19 = 234;
    v20 = 2048;
    v21 = v5;
    _os_log_impl(&dword_1C8460000, v4, OS_LOG_TYPE_ERROR, "%{public}s::%d:returning %lu SSIDs", buf, 0x1Cu);
  }

  v6 = v11[5];
  _Block_object_dispose(&v10, 8);

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

void __44__AnalyticsReader_copyAllStoredNetworkSsids__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) moc];
  v4 = [NetworkMO allStoredSsids:v3];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *(*(*(a1 + 40) + 8) + 40);
  if (!v7 || ![v7 count])
  {
    v8 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = 136446466;
      v12 = "[AnalyticsReader copyAllStoredNetworkSsids]_block_invoke";
      v13 = 1024;
      v14 = 229;
      _os_log_impl(&dword_1C8460000, v8, OS_LOG_TYPE_ERROR, "%{public}s::%d:No known network SSIDs", &v11, 0x12u);
    }
  }

  v9 = [*(a1 + 32) persistentContainer];
  [v9 managedObjectContextSave:0 reset:1 release:1 withError:0];

  objc_autoreleasePoolPop(v2);
  v10 = *MEMORY[0x1E69E9840];
}

- (id)networkSsidsByTraits:(id)a3 withError:(id *)a4
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__10;
  v32 = __Block_byref_object_dispose__10;
  v33 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__10;
  v26 = __Block_byref_object_dispose__10;
  v27 = 0;
  v7 = [(AnalyticsReader *)self moc];
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __50__AnalyticsReader_networkSsidsByTraits_withError___block_invoke;
  v17 = &unk_1E830F078;
  v8 = v6;
  v18 = v8;
  v19 = self;
  v20 = &v28;
  v21 = &v22;
  [v7 performBlockAndWait:&v14];

  if (a4)
  {
    *a4 = v29[5];
  }

  v9 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v23[5] count];
    *buf = 136446722;
    v35 = "[AnalyticsReader networkSsidsByTraits:withError:]";
    v36 = 1024;
    v37 = 266;
    v38 = 2048;
    v39 = v10;
    _os_log_impl(&dword_1C8460000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Returning %lu traits", buf, 0x1Cu);
  }

  v11 = v23[5];
  _Block_object_dispose(&v22, 8);

  _Block_object_dispose(&v28, 8);
  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

void __50__AnalyticsReader_networkSsidsByTraits_withError___block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  v2 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 32);
    *buf = 136446722;
    v31 = "[AnalyticsReader networkSsidsByTraits:withError:]_block_invoke";
    v32 = 1024;
    v33 = 243;
    v34 = 2112;
    v35 = v3;
    _os_log_impl(&dword_1C8460000, v2, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Fetching networks with traits:%@", buf, 0x1Cu);
  }

  v24 = objc_opt_new();
  v4 = [NetworkMO propertiesForTraits:*(a1 + 32)];
  [v4 addObject:@"ssid"];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = *(a1 + 32);
  v5 = [obj countByEnumeratingWithState:&v26 objects:v38 count:16];
  if (v5)
  {
    v6 = *v27;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v27 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v26 + 1) + 8 * i);
        v9 = WALogCategoryDeviceStoreHandle();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446722;
          v31 = "[AnalyticsReader networkSsidsByTraits:withError:]_block_invoke";
          v32 = 1024;
          v33 = 249;
          v34 = 2112;
          v35 = v8;
          _os_log_impl(&dword_1C8460000, v9, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Fetching networks with trait:%@", buf, 0x1Cu);
        }

        v10 = [v8 unsignedIntegerValue];
        v11 = [*(a1 + 40) persistentContainer];
        v12 = *(*(a1 + 48) + 8);
        v25 = *(v12 + 40);
        v13 = [v11 networksWithTrait:v10 prefetchedProperties:v4 withError:&v25];
        objc_storeStrong((v12 + 40), v25);

        v14 = [v13 valueForKey:@"ssid"];
        [v24 setObject:v14 forKeyedSubscript:v8];

        v15 = WALogCategoryDeviceStoreHandle();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = [v13 count];
          *buf = 136446978;
          v31 = "[AnalyticsReader networkSsidsByTraits:withError:]_block_invoke";
          v32 = 1024;
          v33 = 260;
          v34 = 2048;
          v35 = v16;
          v36 = 2112;
          v37 = v8;
          _os_log_impl(&dword_1C8460000, v15, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Found %ld networks with trait %@", buf, 0x26u);
        }
      }

      v5 = [obj countByEnumeratingWithState:&v26 objects:v38 count:16];
    }

    while (v5);
  }

  v17 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v24];
  v18 = *(*(a1 + 56) + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = v17;

  v20 = [*(a1 + 40) persistentContainer];
  [v20 managedObjectContextSave:0 reset:1 release:1 withError:0];

  objc_autoreleasePoolPop(context);
  v21 = *MEMORY[0x1E69E9840];
}

+ (id)networksFromResults:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [WADeviceAnalyticsNetwork networkWith:*(*(&v13 + 1) + 8 * i), v13];
        if (v10)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)networksWithPredicate:(id)a3 withError:(id *)a4
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__10;
  v32 = __Block_byref_object_dispose__10;
  v33 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__10;
  v26 = __Block_byref_object_dispose__10;
  v27 = 0;
  v7 = [(AnalyticsReader *)self moc];
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __51__AnalyticsReader_networksWithPredicate_withError___block_invoke;
  v17 = &unk_1E830F078;
  v18 = self;
  v8 = v6;
  v19 = v8;
  v20 = &v22;
  v21 = &v28;
  [v7 performBlockAndWait:&v14];

  if (a4)
  {
    *a4 = v23[5];
  }

  v9 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v29[5] count];
    *buf = 136446722;
    v35 = "[AnalyticsReader networksWithPredicate:withError:]";
    v36 = 1024;
    v37 = 300;
    v38 = 2048;
    v39 = v10;
    _os_log_impl(&dword_1C8460000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Returning %lu networks", buf, 0x1Cu);
  }

  v11 = v29[5];
  _Block_object_dispose(&v22, 8);

  _Block_object_dispose(&v28, 8);
  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

void __51__AnalyticsReader_networksWithPredicate_withError___block_invoke(uint64_t a1)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) persistentContainer];
  v4 = +[NetworkMO entity];
  v5 = *(a1 + 40);
  v6 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"ssid" ascending:1];
  v16[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  v8 = *(*(a1 + 48) + 8);
  obj = *(v8 + 40);
  v9 = [v3 fetchObjects:v4 withPredicate:v5 withSorting:v7 withPrefetchedProperties:&unk_1F483E818 withLimit:0 withError:&obj];
  objc_storeStrong((v8 + 40), obj);

  v10 = [AnalyticsReader networksFromResults:v9];
  v11 = *(*(a1 + 56) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  v13 = [*(a1 + 32) persistentContainer];
  [v13 managedObjectContextSave:0 reset:1 release:1 withError:0];

  objc_autoreleasePoolPop(v2);
  v14 = *MEMORY[0x1E69E9840];
}

- (id)networksInSameLansAsSsid:(id)a3 withError:(id *)a4
{
  v42 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__10;
  v30 = __Block_byref_object_dispose__10;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__10;
  v24 = __Block_byref_object_dispose__10;
  v25 = 0;
  v7 = [(AnalyticsReader *)self moc];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __54__AnalyticsReader_networksInSameLansAsSsid_withError___block_invoke;
  v16[3] = &unk_1E830F078;
  v16[4] = self;
  v8 = v6;
  v17 = v8;
  v18 = &v20;
  v19 = &v26;
  [v7 performBlockAndWait:v16];

  if (a4)
  {
    *a4 = v21[5];
  }

  v9 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v27[5] count];
    v11 = v21[5];
    if (v11)
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(with error: %@)", v21[5]];
    }

    else
    {
      v12 = &stru_1F481C4A0;
    }

    *buf = 136447234;
    v33 = "[AnalyticsReader networksInSameLansAsSsid:withError:]";
    v34 = 1024;
    v35 = 318;
    v36 = 2048;
    v37 = v10;
    v38 = 2112;
    v39 = v8;
    v40 = 2112;
    v41 = v12;
    _os_log_impl(&dword_1C8460000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Returning %lu networks in same lan as:%@ %@", buf, 0x30u);
    if (v11)
    {
    }
  }

  v13 = v27[5];
  _Block_object_dispose(&v20, 8);

  _Block_object_dispose(&v26, 8);
  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

void __54__AnalyticsReader_networksInSameLansAsSsid_withError___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(*(a1 + 48) + 8);
  obj = *(v5 + 40);
  v6 = [v4 networksInSameLANsAsNetwork:v3 withError:&obj];
  objc_storeStrong((v5 + 40), obj);
  v7 = [v6 allObjects];
  v8 = [AnalyticsReader networksFromResults:v7];
  v9 = *(*(a1 + 56) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = [*(a1 + 32) persistentContainer];
  [v11 managedObjectContextSave:0 reset:1 release:1 withError:0];

  objc_autoreleasePoolPop(v2);
}

- (id)networksInSameLanAsBssid:(id)a3 withError:(id *)a4
{
  v42 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__10;
  v30 = __Block_byref_object_dispose__10;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__10;
  v24 = __Block_byref_object_dispose__10;
  v25 = 0;
  v7 = [(AnalyticsReader *)self moc];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __54__AnalyticsReader_networksInSameLanAsBssid_withError___block_invoke;
  v16[3] = &unk_1E830F078;
  v16[4] = self;
  v8 = v6;
  v17 = v8;
  v18 = &v20;
  v19 = &v26;
  [v7 performBlockAndWait:v16];

  if (a4)
  {
    *a4 = v21[5];
  }

  v9 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v27[5] count];
    v11 = v21[5];
    if (v11)
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(with error: %@)", v21[5]];
    }

    else
    {
      v12 = &stru_1F481C4A0;
    }

    *buf = 136447234;
    v33 = "[AnalyticsReader networksInSameLanAsBssid:withError:]";
    v34 = 1024;
    v35 = 337;
    v36 = 2048;
    v37 = v10;
    v38 = 2112;
    v39 = v8;
    v40 = 2112;
    v41 = v12;
    _os_log_impl(&dword_1C8460000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Returning %lu networks in same lan as:%@ %@", buf, 0x30u);
    if (v11)
    {
    }
  }

  v13 = v27[5];
  _Block_object_dispose(&v20, 8);

  _Block_object_dispose(&v26, 8);
  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

void __54__AnalyticsReader_networksInSameLanAsBssid_withError___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(*(a1 + 48) + 8);
  obj = *(v5 + 40);
  v6 = [v4 networksInSameLANsAsBSS:v3 withError:&obj];
  objc_storeStrong((v5 + 40), obj);
  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v7 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 40);
      v14 = *(*(*(a1 + 48) + 8) + 40);
      *buf = 136446978;
      v17 = "[AnalyticsReader networksInSameLanAsBssid:withError:]_block_invoke";
      v18 = 1024;
      v19 = 329;
      v20 = 2112;
      v21 = v13;
      v22 = 2112;
      v23 = v14;
      _os_log_impl(&dword_1C8460000, v7, OS_LOG_TYPE_ERROR, "%{public}s::%d:Fetching networksInSameLANsAsBSS:%@ failed with %@", buf, 0x26u);
    }
  }

  else
  {
    v7 = [v6 allObjects];
    v8 = [AnalyticsReader networksFromResults:v7];
    v9 = *(*(a1 + 56) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  v11 = [*(a1 + 32) persistentContainer];
  [v11 managedObjectContextSave:0 reset:1 release:1 withError:0];

  objc_autoreleasePoolPop(v2);
  v12 = *MEMORY[0x1E69E9840];
}

- (id)lansForSsid:(id)a3 withError:(id *)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__10;
  v29 = __Block_byref_object_dispose__10;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__10;
  v23 = __Block_byref_object_dispose__10;
  v24 = 0;
  v7 = [(AnalyticsReader *)self moc];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __41__AnalyticsReader_lansForSsid_withError___block_invoke;
  v14[3] = &unk_1E830F5A8;
  v8 = v6;
  v17 = &v19;
  v18 = &v25;
  v15 = v8;
  v16 = self;
  [v7 performBlockAndWait:v14];

  if (a4)
  {
    *a4 = v20[5];
  }

  v9 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v26[5];
    *buf = 136446978;
    v32 = "[AnalyticsReader lansForSsid:withError:]";
    v33 = 1024;
    v34 = 357;
    v35 = 2112;
    v36 = v10;
    v37 = 2112;
    v38 = v8;
    _os_log_impl(&dword_1C8460000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Returning LANs for %@: %@", buf, 0x26u);
  }

  v11 = v26[5];
  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(&v25, 8);
  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

void __41__AnalyticsReader_lansForSsid_withError___block_invoke(void *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = a1[4];
  v4 = *(a1[6] + 8);
  obj = *(v4 + 40);
  v5 = [LANMO predicateForLANsInNetwork:v3 withError:&obj];
  objc_storeStrong((v4 + 40), obj);
  if (*(*(a1[6] + 8) + 40))
  {
    v7 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v13 = a1[4];
      v14 = *(*(a1[6] + 8) + 40);
      *buf = 136446978;
      v18 = "[AnalyticsReader lansForSsid:withError:]_block_invoke";
      v19 = 1024;
      v20 = 348;
      v21 = 2112;
      v22 = v13;
      v23 = 2112;
      v24 = v14;
      _os_log_impl(&dword_1C8460000, v7, OS_LOG_TYPE_ERROR, "%{public}s::%d:predicateForLanInNetwork:%@ failed %@", buf, 0x26u);
    }
  }

  else
  {
    v6 = *(a1[5] + 8);
    v7 = +[LANMO entity];
    v8 = *(a1[6] + 8);
    v15 = *(v8 + 40);
    v9 = [v6 fetchDistinctPropertiesIn:v7 withPredicate:v5 withSorting:0 withPrefetchedProperties:0 withLimit:0 withError:&v15];
    objc_storeStrong((v8 + 40), v15);
    v10 = *(a1[7] + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  objc_autoreleasePoolPop(v2);
  v12 = *MEMORY[0x1E69E9840];
}

- (signed)deploymentCoverageForSSID:(id)a3 withError:(id *)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__10;
  v23 = __Block_byref_object_dispose__10;
  v24 = 0;
  v7 = [(AnalyticsReader *)self moc];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __55__AnalyticsReader_deploymentCoverageForSSID_withError___block_invoke;
  v15[3] = &unk_1E830F078;
  v15[4] = self;
  v8 = v6;
  v16 = v8;
  v17 = &v19;
  v18 = &v25;
  [v7 performBlockAndWait:v15];

  if (a4)
  {
    *a4 = v20[5];
  }

  v9 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = WADeploymentCoverageToString(*(v26 + 12));
    v11 = *(v26 + 12);
    *buf = 136447234;
    v30 = "[AnalyticsReader deploymentCoverageForSSID:withError:]";
    v31 = 1024;
    v32 = 375;
    v33 = 2112;
    v34 = v8;
    v35 = 2112;
    v36 = v10;
    v37 = 2048;
    v38 = v11;
    _os_log_impl(&dword_1C8460000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Deployment coverage for %@ is %@ (%lu)", buf, 0x30u);
  }

  v12 = *(v26 + 12);
  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(&v25, 8);
  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

void __55__AnalyticsReader_deploymentCoverageForSSID_withError___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) persistentContainer];
  v4 = *(a1 + 40);
  v5 = *(*(a1 + 48) + 8);
  obj = *(v5 + 40);
  v6 = [v3 networkForSSID:v4 prefetchProperties:&unk_1F483E830 withError:&obj];
  objc_storeStrong((v5 + 40), obj);

  if (v6)
  {
    *(*(*(a1 + 56) + 8) + 24) = [v6 coverageDetermination];
  }

  v7 = [*(a1 + 32) persistentContainer];
  [v7 managedObjectContextSave:0 reset:1 release:1 withError:0];

  objc_autoreleasePoolPop(v2);
}

- (signed)deploymentCongestionForSSID:(id)a3 withError:(id *)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__10;
  v23 = __Block_byref_object_dispose__10;
  v24 = 0;
  v7 = [(AnalyticsReader *)self moc];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __57__AnalyticsReader_deploymentCongestionForSSID_withError___block_invoke;
  v15[3] = &unk_1E830F078;
  v15[4] = self;
  v8 = v6;
  v16 = v8;
  v17 = &v19;
  v18 = &v25;
  [v7 performBlockAndWait:v15];

  if (a4)
  {
    *a4 = v20[5];
  }

  v9 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = WADeploymentCongestionToString(*(v26 + 12));
    v11 = *(v26 + 12);
    *buf = 136447234;
    v30 = "[AnalyticsReader deploymentCongestionForSSID:withError:]";
    v31 = 1024;
    v32 = 393;
    v33 = 2112;
    v34 = v8;
    v35 = 2112;
    v36 = v10;
    v37 = 2048;
    v38 = v11;
    _os_log_impl(&dword_1C8460000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Deployment coverage for %@ is %@ (%lu)", buf, 0x30u);
  }

  v12 = *(v26 + 12);
  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(&v25, 8);
  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

void __57__AnalyticsReader_deploymentCongestionForSSID_withError___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) persistentContainer];
  v4 = *(a1 + 40);
  v5 = *(*(a1 + 48) + 8);
  obj = *(v5 + 40);
  v6 = [v3 networkForSSID:v4 prefetchProperties:&unk_1F483E848 withError:&obj];
  objc_storeStrong((v5 + 40), obj);

  if (v6)
  {
    *(*(*(a1 + 56) + 8) + 24) = [v6 congestionDetermination];
  }

  v7 = [*(a1 + 32) persistentContainer];
  [v7 managedObjectContextSave:0 reset:1 release:1 withError:0];

  objc_autoreleasePoolPop(v2);
}

- (unint64_t)countNetworksInSameLanAsBssid:(id)a3 withError:(id *)a4
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0x7FFFFFFFFFFFFFFFLL;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__10;
  v24 = __Block_byref_object_dispose__10;
  v25 = 0;
  v7 = [(AnalyticsReader *)self moc];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __59__AnalyticsReader_countNetworksInSameLanAsBssid_withError___block_invoke;
  v16[3] = &unk_1E830F078;
  v16[4] = self;
  v8 = v6;
  v17 = v8;
  v18 = &v20;
  v19 = &v26;
  [v7 performBlockAndWait:v16];

  if (a4)
  {
    *a4 = v21[5];
  }

  v9 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v27[3];
    v11 = v21[5];
    if (v11)
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(with error: %@)", v21[5]];
    }

    else
    {
      v12 = &stru_1F481C4A0;
    }

    *buf = 136447234;
    v31 = "[AnalyticsReader countNetworksInSameLanAsBssid:withError:]";
    v32 = 1024;
    v33 = 410;
    v34 = 2048;
    v35 = v10;
    v36 = 2112;
    v37 = v8;
    v38 = 2112;
    v39 = v12;
    _os_log_impl(&dword_1C8460000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Returning %lu networks in same LAN as %@ %@", buf, 0x30u);
    if (v11)
    {
    }
  }

  v13 = v27[3];
  _Block_object_dispose(&v20, 8);

  _Block_object_dispose(&v26, 8);
  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

void __59__AnalyticsReader_countNetworksInSameLanAsBssid_withError___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(*(a1 + 48) + 8);
  obj = *(v5 + 40);
  v6 = [v4 networksInSameLANsAsBSS:v3 withError:&obj];
  objc_storeStrong((v5 + 40), obj);
  *(*(*(a1 + 56) + 8) + 24) = [v6 count];
  v7 = [*(a1 + 32) persistentContainer];
  [v7 managedObjectContextSave:0 reset:1 release:1 withError:0];

  objc_autoreleasePoolPop(v2);
}

- (unint64_t)networkCountForLAN:(id)a3 withError:(id *)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__10;
  v28 = __Block_byref_object_dispose__10;
  v29 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0x7FFFFFFFFFFFFFFFLL;
  v7 = [(AnalyticsReader *)self moc];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __48__AnalyticsReader_networkCountForLAN_withError___block_invoke;
  v16[3] = &unk_1E830F078;
  v16[4] = self;
  v8 = v6;
  v17 = v8;
  v18 = &v24;
  v19 = &v20;
  [v7 performBlockAndWait:v16];

  if (a4)
  {
    *a4 = v25[5];
  }

  v9 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v21[3];
    v11 = v25[5];
    if (v11)
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"with error: %@", v25[5]];
    }

    else
    {
      v12 = &stru_1F481C4A0;
    }

    *buf = 136446978;
    v31 = "[AnalyticsReader networkCountForLAN:withError:]";
    v32 = 1024;
    v33 = 517;
    v34 = 2048;
    v35 = v10;
    v36 = 2112;
    v37 = v12;
    _os_log_impl(&dword_1C8460000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Returning %lu networks %@", buf, 0x26u);
    if (v11)
    {
    }
  }

  v13 = v21[3];
  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

void __48__AnalyticsReader_networkCountForLAN_withError___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(*(a1 + 48) + 8);
  obj = *(v5 + 40);
  v6 = [v4 lanFor:v3 prefetchProperties:&unk_1F483E860 withError:&obj];
  objc_storeStrong((v5 + 40), obj);
  v7 = *(*(a1 + 32) + 8);
  v8 = *(*(a1 + 48) + 8);
  v11 = *(v8 + 40);
  v9 = [v7 networkCountForLAN:v6 withError:&v11];
  objc_storeStrong((v8 + 40), v11);
  *(*(*(a1 + 56) + 8) + 24) = v9;
  v10 = [*(a1 + 32) persistentContainer];
  [v10 managedObjectContextSave:0 reset:1 release:1 withError:0];

  objc_autoreleasePoolPop(v2);
}

- (id)networksInLan:(id)a3 withError:(id *)a4
{
  v43 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__10;
  v31 = __Block_byref_object_dispose__10;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__10;
  v25 = __Block_byref_object_dispose__10;
  v26 = 0;
  v7 = [(AnalyticsReader *)self moc];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __43__AnalyticsReader_networksInLan_withError___block_invoke;
  v17[3] = &unk_1E830F078;
  v17[4] = self;
  v8 = v6;
  v18 = v8;
  v19 = &v21;
  v20 = &v27;
  [v7 performBlockAndWait:v17];

  if (a4)
  {
    *a4 = v22[5];
  }

  v9 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v28[5] count];
    v11 = v22[5];
    if (v11)
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"with error: %@", v22[5]];
    }

    else
    {
      v12 = &stru_1F481C4A0;
    }

    v13 = v28[5];
    *buf = 136447234;
    v34 = "[AnalyticsReader networksInLan:withError:]";
    v35 = 1024;
    v36 = 538;
    v37 = 2048;
    v38 = v10;
    v39 = 2112;
    v40 = v12;
    v41 = 2112;
    v42 = v13;
    _os_log_impl(&dword_1C8460000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Returning %lu networks %@ : %@", buf, 0x30u);
    if (v11)
    {
    }
  }

  v14 = v28[5];
  _Block_object_dispose(&v21, 8);

  _Block_object_dispose(&v27, 8);
  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

void __43__AnalyticsReader_networksInLan_withError___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(*(a1 + 48) + 8);
  obj = *(v5 + 40);
  v6 = [v4 networksInLAN:v3 withError:&obj];
  objc_storeStrong((v5 + 40), obj);
  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v7 = [v6 allObjects];
    v8 = [AnalyticsReader networksFromResults:v7];
    v9 = *(*(a1 + 56) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  v11 = [*(a1 + 32) persistentContainer];
  [v11 managedObjectContextSave:0 reset:1 release:1 withError:0];

  objc_autoreleasePoolPop(v2);
}

- (id)lanForBssid:(id)a3 withError:(id *)a4
{
  v42 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__10;
  v30 = __Block_byref_object_dispose__10;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__10;
  v24 = __Block_byref_object_dispose__10;
  v25 = 0;
  v7 = [(AnalyticsReader *)self moc];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __41__AnalyticsReader_lanForBssid_withError___block_invoke;
  v16[3] = &unk_1E830F078;
  v16[4] = self;
  v8 = v6;
  v17 = v8;
  v18 = &v20;
  v19 = &v26;
  [v7 performBlockAndWait:v16];

  if (a4)
  {
    *a4 = v21[5];
  }

  v9 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v27[5];
    v11 = v21[5];
    if (v11)
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"with error: %@", v21[5]];
    }

    else
    {
      v12 = &stru_1F481C4A0;
    }

    *buf = 136447234;
    v33 = "[AnalyticsReader lanForBssid:withError:]";
    v34 = 1024;
    v35 = 558;
    v36 = 2112;
    v37 = v10;
    v38 = 2112;
    v39 = v8;
    v40 = 2112;
    v41 = v12;
    _os_log_impl(&dword_1C8460000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Returning LAN for %@: %@ %@", buf, 0x30u);
    if (v11)
    {
    }
  }

  v13 = v27[5];
  _Block_object_dispose(&v20, 8);

  _Block_object_dispose(&v26, 8);
  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

void __41__AnalyticsReader_lanForBssid_withError___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(*(a1 + 48) + 8);
  obj = *(v5 + 40);
  v6 = [v4 lanContainingBSS:v3 prefetchProperties:0 withError:&obj];
  objc_storeStrong((v5 + 40), obj);
  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v7 = [WAPersistentContainer getConstraintsValues:v6];
    v8 = *(*(a1 + 56) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  v10 = [*(a1 + 32) persistentContainer];
  [v10 managedObjectContextSave:0 reset:1 release:1 withError:0];

  objc_autoreleasePoolPop(v2);
}

- (id)bssidCountByBandInUniqueMO:(id)a3 withError:(id *)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__10;
  v28 = __Block_byref_object_dispose__10;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__10;
  v22 = __Block_byref_object_dispose__10;
  v23 = 0;
  v7 = [(AnalyticsReader *)self moc];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __56__AnalyticsReader_bssidCountByBandInUniqueMO_withError___block_invoke;
  v14[3] = &unk_1E830DB20;
  v16 = &v24;
  v14[4] = self;
  v8 = v6;
  v15 = v8;
  v17 = &v18;
  [v7 performBlockAndWait:v14];

  if (a4)
  {
    *a4 = v19[5];
  }

  v9 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v25[5];
    *buf = 136446978;
    v31 = "[AnalyticsReader bssidCountByBandInUniqueMO:withError:]";
    v32 = 1024;
    v33 = 574;
    v34 = 2112;
    v35 = v8;
    v36 = 2112;
    v37 = v10;
    _os_log_impl(&dword_1C8460000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:bssid Count by Band for %@ returning %@", buf, 0x26u);
  }

  v11 = v25[5];
  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(&v24, 8);
  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

void __56__AnalyticsReader_bssidCountByBandInUniqueMO_withError___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(*(a1 + 56) + 8);
  obj = *(v5 + 40);
  v6 = [v4 bssidCountBy:&unk_1F483E878 inUniqueMO:v3 withError:&obj];
  objc_storeStrong((v5 + 40), obj);
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = [*(a1 + 32) persistentContainer];
  [v9 managedObjectContextSave:0 reset:1 release:1 withError:0];

  objc_autoreleasePoolPop(v2);
}

- (id)bssidCountByBandInLAN:(id)a3 withError:(id *)a4
{
  v17 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v5 = [(AnalyticsReader *)self bssidCountByBandInUniqueMO:a3 withError:a4];
  }

  else
  {
    v8 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v14 = "[AnalyticsReader bssidCountByBandInLAN:withError:]";
      v15 = 1024;
      v16 = 580;
      _os_log_impl(&dword_1C8460000, v8, OS_LOG_TYPE_ERROR, "%{public}s::%d:dhcpServerInfo nil", buf, 0x12u);
    }

    if (a4)
    {
      v9 = MEMORY[0x1E696ABC0];
      v11 = *MEMORY[0x1E696A588];
      v12 = @"WAErrorCodeInvalidInput";
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
      *a4 = [v9 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v10];
    }

    v5 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (unint64_t)countNetworksHavingBand:(signed __int16)a3 inLan:(id)a4 withError:(id *)a5
{
  v37 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__10;
  v25 = __Block_byref_object_dispose__10;
  v26 = 0;
  v9 = [(AnalyticsReader *)self moc];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __59__AnalyticsReader_countNetworksHavingBand_inLan_withError___block_invoke;
  v16[3] = &unk_1E830F0C8;
  v18 = &v27;
  v16[4] = self;
  v20 = a3;
  v10 = v8;
  v17 = v10;
  v19 = &v21;
  [v9 performBlockAndWait:v16];

  if (a5)
  {
    *a5 = v22[5];
  }

  v11 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v28[3];
    *buf = 136446722;
    v32 = "[AnalyticsReader countNetworksHavingBand:inLan:withError:]";
    v33 = 1024;
    v34 = 599;
    v35 = 2048;
    v36 = v12;
    _os_log_impl(&dword_1C8460000, v11, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Returning %lu networks", buf, 0x1Cu);
  }

  v13 = v28[3];
  _Block_object_dispose(&v21, 8);

  _Block_object_dispose(&v27, 8);
  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

void __59__AnalyticsReader_countNetworksHavingBand_inLan_withError___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(a1 + 64);
  v6 = *(*(a1 + 56) + 8);
  obj = *(v6 + 40);
  v7 = [v4 countNetworksHavingBand:v5 inLan:v3 withError:&obj];
  objc_storeStrong((v6 + 40), obj);
  *(*(*(a1 + 48) + 8) + 24) = v7;
  v8 = [*(a1 + 32) persistentContainer];
  [v8 managedObjectContextSave:0 reset:1 release:1 withError:0];

  objc_autoreleasePoolPop(v2);
}

- (id)lanFor:(id)a3 withError:(id *)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (v6)
  {
    v7 = [(AnalyticsReader *)self persistentContainer];
    v8 = +[(UniqueMO *)LANMO];
    v9 = [v8 allObjects];
    a4 = [v7 lanFor:v6 prefetchProperties:v9 withError:a4];
  }

  else
  {
    v12 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v18 = "[AnalyticsReader lanFor:withError:]";
      v19 = 1024;
      v20 = 606;
      _os_log_impl(&dword_1C8460000, v12, OS_LOG_TYPE_ERROR, "%{public}s::%d:dhcpServerInfo nil", buf, 0x12u);
    }

    if (a4)
    {
      v13 = MEMORY[0x1E696ABC0];
      v15 = *MEMORY[0x1E696A588];
      v16 = @"WAErrorCodeInvalidInput";
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
      *a4 = [v13 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v14];

      a4 = 0;
    }
  }

  v10 = *MEMORY[0x1E69E9840];

  return a4;
}

- (id)usageForLAN:(id)a3 withError:(id *)a4
{
  v41[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__10;
  v30 = __Block_byref_object_dispose__10;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__10;
  v24 = __Block_byref_object_dispose__10;
  v25 = 0;
  if (v6)
  {
    v7 = [(AnalyticsReader *)self moc];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __41__AnalyticsReader_usageForLAN_withError___block_invoke;
    v16[3] = &unk_1E830DB20;
    v18 = &v26;
    v16[4] = self;
    v17 = v6;
    v19 = &v20;
    [v7 performBlockAndWait:v16];

    if (a4)
    {
      *a4 = v21[5];
    }
  }

  else
  {
    v13 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v33 = "[AnalyticsReader usageForLAN:withError:]";
      v34 = 1024;
      v35 = 618;
      _os_log_impl(&dword_1C8460000, v13, OS_LOG_TYPE_ERROR, "%{public}s::%d:dhcpServerInfo nil", buf, 0x12u);
    }

    if (a4)
    {
      v14 = MEMORY[0x1E696ABC0];
      v40 = *MEMORY[0x1E696A588];
      v41[0] = @"WAErrorCodeInvalidInput";
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:&v40 count:1];
      *a4 = [v14 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v15];
    }
  }

  v8 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v27[5];
    *buf = 136446978;
    v33 = "[AnalyticsReader usageForLAN:withError:]";
    v34 = 1024;
    v35 = 630;
    v36 = 2112;
    v37 = v6;
    v38 = 2112;
    v39 = v9;
    _os_log_impl(&dword_1C8460000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:usageForLAN:%@ : %@", buf, 0x26u);
  }

  v10 = v27[5];
  _Block_object_dispose(&v20, 8);

  _Block_object_dispose(&v26, 8);
  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

void __41__AnalyticsReader_usageForLAN_withError___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [WADeviceAnalytics_UsageStats alloc];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(*(a1 + 56) + 8);
  obj = *(v6 + 40);
  v7 = [v4 lanFor:v5 withError:&obj];
  objc_storeStrong((v6 + 40), obj);
  v8 = [(WADeviceAnalytics_UsageStats *)v3 initWithUniqueMO:v7];
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = [*(a1 + 32) persistentContainer];
  [v11 managedObjectContextSave:0 reset:1 release:1 withError:0];

  objc_autoreleasePoolPop(v2);
}

- (BOOL)isNetworkWithinRangeOfLocation:(id)a3 range:(double)a4 location:(id)a5 count:(unint64_t *)a6
{
  v42 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v12 = [(AnalyticsReader *)self moc];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __71__AnalyticsReader_isNetworkWithinRangeOfLocation_range_location_count___block_invoke;
  v21[3] = &unk_1E830F5D0;
  v13 = v10;
  v22 = v13;
  v14 = v11;
  v27 = a4;
  v23 = v14;
  v24 = self;
  v25 = &v32;
  v26 = &v28;
  [v12 performBlockAndWait:v21];

  if (a6)
  {
    *a6 = v29[3];
  }

  v15 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v16 = *(v33 + 24) == 0;
    *buf = 136446722;
    v37 = "[AnalyticsReader isNetworkWithinRangeOfLocation:range:location:count:]";
    if (v16)
    {
      v17 = @"NO";
    }

    else
    {
      v17 = @"YES";
    }

    v38 = 1024;
    v39 = 654;
    v40 = 2112;
    v41 = v17;
    _os_log_impl(&dword_1C8460000, v15, OS_LOG_TYPE_ERROR, "%{public}s::%d:returning %@", buf, 0x1Cu);
  }

  v18 = *(v33 + 24);
  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v32, 8);

  v19 = *MEMORY[0x1E69E9840];
  return v18 & 1;
}

void __71__AnalyticsReader_isNetworkWithinRangeOfLocation_range_location_count___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  if (*(a1 + 32))
  {
    if (*(a1 + 40))
    {
      v3 = *(*(a1 + 48) + 8);
      v4 = *(*(a1 + 64) + 8);
      *(*(*(a1 + 56) + 8) + 24) = [GeoTagMO isNetworkWithinRangeOfLocation:"isNetworkWithinRangeOfLocation:range:location:container:count:" range:*(a1 + 72) location:? container:? count:?];
      goto LABEL_4;
    }

    v11 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = 136446466;
      v14 = "[AnalyticsReader isNetworkWithinRangeOfLocation:range:location:count:]_block_invoke";
      v15 = 1024;
      v16 = 642;
      v12 = "%{public}s::%d:location nil";
      goto LABEL_14;
    }
  }

  else
  {
    v11 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = 136446466;
      v14 = "[AnalyticsReader isNetworkWithinRangeOfLocation:range:location:count:]_block_invoke";
      v15 = 1024;
      v16 = 641;
      v12 = "%{public}s::%d:ssid nil";
LABEL_14:
      _os_log_impl(&dword_1C8460000, v11, OS_LOG_TYPE_ERROR, v12, &v13, 0x12u);
    }
  }

LABEL_4:
  v5 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(a1 + 32);
    if (*(*(*(a1 + 56) + 8) + 24))
    {
      v7 = "IS";
    }

    else
    {
      v7 = "NOT";
    }

    v8 = *(a1 + 72);
    v13 = 136447234;
    v14 = "[AnalyticsReader isNetworkWithinRangeOfLocation:range:location:count:]_block_invoke";
    v15 = 1024;
    v16 = 647;
    v17 = 2112;
    v18 = v6;
    v19 = 2080;
    v20 = v7;
    v21 = 2048;
    v22 = v8;
    _os_log_impl(&dword_1C8460000, v5, OS_LOG_TYPE_DEBUG, "%{public}s::%d:%@ %s within %f of given location", &v13, 0x30u);
  }

  v9 = [*(a1 + 48) persistentContainer];
  [v9 managedObjectContextSave:0 reset:1 release:1 withError:0];

  objc_autoreleasePoolPop(v2);
  v10 = *MEMORY[0x1E69E9840];
}

- (id)copyGeoTagsForNetwork:(id)a3 location:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__10;
  v28 = __Block_byref_object_dispose__10;
  v29 = [MEMORY[0x1E695DF70] array];
  v8 = [(AnalyticsReader *)self moc];
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __50__AnalyticsReader_copyGeoTagsForNetwork_location___block_invoke;
  v19 = &unk_1E830F050;
  v9 = v6;
  v20 = v9;
  v10 = v7;
  v21 = v10;
  v22 = self;
  v23 = &v24;
  [v8 performBlockAndWait:&v16];

  v11 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = [v25[5] count];
    *buf = 136446722;
    v31 = "[AnalyticsReader copyGeoTagsForNetwork:location:]";
    v32 = 1024;
    v33 = 705;
    v34 = 2048;
    v35 = v12;
    _os_log_impl(&dword_1C8460000, v11, OS_LOG_TYPE_ERROR, "%{public}s::%d:returning %lu tags", buf, 0x1Cu);
  }

  v13 = v25[5];
  _Block_object_dispose(&v24, 8);

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

void __50__AnalyticsReader_copyGeoTagsForNetwork_location___block_invoke(uint64_t a1)
{
  v69 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  if (!*(a1 + 32))
  {
    v4 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    *buf = 136446466;
    v59 = "[AnalyticsReader copyGeoTagsForNetwork:location:]_block_invoke";
    v60 = 1024;
    v61 = 664;
    v43 = "%{public}s::%d:ssid nil";
    goto LABEL_35;
  }

  if (*(a1 + 40))
  {
    v3 = *(*(a1 + 48) + 8);
    v4 = [GeoTagMO geoTagsForNetwork:"geoTagsForNetwork:container:" container:?];
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v52 objects:v68 count:16];
    if (!v5)
    {
      goto LABEL_28;
    }

    v6 = v5;
    v46 = a1;
    v44 = v2;
    v7 = *v53;
    v47 = v4;
    while (1)
    {
      v8 = 0;
      do
      {
        if (*v53 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v52 + 1) + 8 * v8);
        if (v9)
        {
          [*(*(&v52 + 1) + 8 * v8) latitude];
          if (v10 == 0.0 || ([v9 longitude], v11 == 0.0) || (objc_msgSend(v9, "date"), v14 = objc_claimAutoreleasedReturnValue(), v14, !v14))
          {
            v12 = WALogCategoryDeviceStoreHandle();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              v13 = [v9 date];
              *buf = 136446722;
              v59 = "[AnalyticsReader copyGeoTagsForNetwork:location:]_block_invoke";
              v60 = 1024;
              v61 = 676;
              v62 = 2112;
              v63 = v13;
              _os_log_impl(&dword_1C8460000, v12, OS_LOG_TYPE_ERROR, "%{public}s::%d:Nil - invalid geoTag coordinates or geoTag.date %@", buf, 0x1Cu);
            }
          }

          else
          {
            v15 = [v9 bss];
            if (v15)
            {
              v16 = v15;
              v17 = [v9 bss];
              if ([v17 mostRecentChannel])
              {
                v18 = [v9 bss];
                v19 = [v18 bssid];

                if (v19)
                {
                  v20 = objc_alloc(MEMORY[0x1E6985C38]);
                  [v9 latitude];
                  v22 = v21;
                  [v9 longitude];
                  v12 = [v20 initWithLatitude:v22 longitude:v23];
                  [v12 distanceFromLocation:*(v46 + 40)];
                  v25 = v24;
                  v56[0] = @"bssid";
                  v50 = [v9 bss];
                  v48 = [v50 bssid];
                  v57[0] = v48;
                  v56[1] = @"is5Ghz";
                  v26 = MEMORY[0x1E696AD98];
                  v45 = [v9 bss];
                  v27 = [v26 numberWithInt:{objc_msgSend(v45, "mostRecentBand") == 1}];
                  v57[1] = v27;
                  v56[2] = @"date";
                  v28 = [v9 date];
                  v57[2] = v28;
                  v56[3] = @"latitude";
                  v29 = MEMORY[0x1E696AD98];
                  [v9 latitude];
                  v30 = [v29 numberWithDouble:?];
                  v57[3] = v30;
                  v56[4] = @"longitude";
                  v31 = MEMORY[0x1E696AD98];
                  [v9 longitude];
                  v32 = [v31 numberWithDouble:?];
                  v57[4] = v32;
                  v56[5] = @"distance";
                  v33 = [MEMORY[0x1E696AD98] numberWithInt:v25];
                  v57[5] = v33;
                  v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:v56 count:6];

                  v4 = v47;
                  [*(*(*(v46 + 56) + 8) + 40) addObject:v34];

                  goto LABEL_15;
                }
              }

              else
              {
              }
            }

            v12 = WALogCategoryDeviceStoreHandle();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              v49 = [v9 bss];
              v51 = [v9 bss];
              v35 = [v51 mostRecentChannel];
              v36 = [v9 bss];
              v37 = [v36 bssid];
              *buf = 136447234;
              v59 = "[AnalyticsReader copyGeoTagsForNetwork:location:]_block_invoke";
              v60 = 1024;
              v61 = 681;
              v62 = 2112;
              v63 = v49;
              v64 = 1024;
              v65 = v35;
              v66 = 2112;
              v67 = v37;
              _os_log_impl(&dword_1C8460000, v12, OS_LOG_TYPE_ERROR, "%{public}s::%d:Nil - geoTag.bss  %@ geoTag.bss.mostRecentChannel %d geoTag.bss.bssid %@", buf, 0x2Cu);

              v4 = v47;
            }
          }
        }

        else
        {
          v12 = WALogCategoryDeviceStoreHandle();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            v59 = "[AnalyticsReader copyGeoTagsForNetwork:location:]_block_invoke";
            v60 = 1024;
            v61 = 671;
            _os_log_impl(&dword_1C8460000, v12, OS_LOG_TYPE_ERROR, "%{public}s::%d:geoTag nil", buf, 0x12u);
          }
        }

LABEL_15:

        ++v8;
      }

      while (v6 != v8);
      v38 = [v4 countByEnumeratingWithState:&v52 objects:v68 count:16];
      v6 = v38;
      if (!v38)
      {
        v2 = v44;
        a1 = v46;
        goto LABEL_28;
      }
    }
  }

  v4 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v59 = "[AnalyticsReader copyGeoTagsForNetwork:location:]_block_invoke";
    v60 = 1024;
    v61 = 665;
    v43 = "%{public}s::%d:location nil";
LABEL_35:
    _os_log_impl(&dword_1C8460000, v4, OS_LOG_TYPE_ERROR, v43, buf, 0x12u);
  }

LABEL_28:

  if (![*(*(*(a1 + 56) + 8) + 40) count])
  {
    v39 = *(*(a1 + 56) + 8);
    v40 = *(v39 + 40);
    *(v39 + 40) = 0;
  }

  v41 = [*(a1 + 48) persistentContainer];
  [v41 managedObjectContextSave:0 reset:1 release:1 withError:0];

  objc_autoreleasePoolPop(v2);
  v42 = *MEMORY[0x1E69E9840];
}

- (id)networksAvailableAtLocation:(id)a3 withinDistance:(double)a4 inBand:(unsigned int)a5
{
  v8 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__10;
  v23 = __Block_byref_object_dispose__10;
  v24 = 0;
  v9 = [(AnalyticsReader *)self moc];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __69__AnalyticsReader_networksAvailableAtLocation_withinDistance_inBand___block_invoke;
  v13[3] = &unk_1E830F5F8;
  v10 = v8;
  v17 = a4;
  v18 = a5;
  v14 = v10;
  v15 = self;
  v16 = &v19;
  [v9 performBlockAndWait:v13];

  v11 = v20[5];
  _Block_object_dispose(&v19, 8);

  return v11;
}

void __69__AnalyticsReader_networksAvailableAtLocation_withinDistance_inBand___block_invoke(uint64_t a1)
{
  v60 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (!v3)
  {
    v4 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v50 = "[AnalyticsReader networksAvailableAtLocation:withinDistance:inBand:]_block_invoke";
      v51 = 1024;
      v52 = 716;
      _os_log_impl(&dword_1C8460000, v4, OS_LOG_TYPE_ERROR, "%{public}s::%d:location nil", buf, 0x12u);
    }

    goto LABEL_24;
  }

  v4 = [GeoTagMO geoTagsAtLocation:v3 withinDistance:*(a1 + 64) inBand:*(*(a1 + 40) + 8) container:*(a1 + 56)];
  if (!v4)
  {
    goto LABEL_21;
  }

  v40 = v2;
  v5 = [MEMORY[0x1E695DF70] array];
  v41 = a1;
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v39 = v4;
  obj = v4;
  v8 = [obj countByEnumeratingWithState:&v43 objects:v59 count:16];
  if (!v8)
  {
    goto LABEL_20;
  }

  v9 = v8;
  v10 = *v44;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v44 != v10)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v43 + 1) + 8 * i);
      if (v12)
      {
        v13 = [*(*(&v43 + 1) + 8 * i) bss];
        if (v13)
        {
          v14 = v13;
          v15 = [v12 bss];
          v16 = [v15 network];
          if (v16)
          {
            v17 = v16;
            v18 = [v12 bss];
            v19 = [v18 network];
            v20 = [v19 ssid];

            if (v20)
            {
              v47[0] = @"ssid";
              v21 = [v12 bss];
              v22 = [v21 network];
              v23 = [v22 ssid];
              v47[1] = @"authFlags";
              v48[0] = v23;
              v24 = MEMORY[0x1E696AD98];
              v25 = [v12 bss];
              v26 = [v25 network];
              v27 = [v24 numberWithInt:{objc_msgSend(v26, "authFlags")}];
              v48[1] = v27;
              v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:v47 count:2];

              [*(*(*(v41 + 48) + 8) + 40) addObject:v28];
              goto LABEL_18;
            }
          }

          else
          {
          }
        }

        v28 = WALogCategoryDeviceStoreHandle();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          v29 = [v12 bss];
          v30 = [v12 bss];
          v31 = [v30 network];
          v32 = [v12 bss];
          v33 = [v32 network];
          v34 = [v33 ssid];
          *buf = 136447234;
          v50 = "[AnalyticsReader networksAvailableAtLocation:withinDistance:inBand:]_block_invoke";
          v51 = 1024;
          v52 = 729;
          v53 = 2112;
          v54 = v29;
          v55 = 2112;
          v56 = v31;
          v57 = 2112;
          v58 = v34;
          _os_log_impl(&dword_1C8460000, v28, OS_LOG_TYPE_ERROR, "%{public}s::%d:Nil - geoTag.bss  %@ geoTag.bss.network %@ geoTag.bss.network.ssid %@", buf, 0x30u);
        }
      }

      else
      {
        v28 = WALogCategoryDeviceStoreHandle();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v50 = "[AnalyticsReader networksAvailableAtLocation:withinDistance:inBand:]_block_invoke";
          v51 = 1024;
          v52 = 724;
          _os_log_impl(&dword_1C8460000, v28, OS_LOG_TYPE_ERROR, "%{public}s::%d:geoTag nil", buf, 0x12u);
        }
      }

LABEL_18:
    }

    v9 = [obj countByEnumeratingWithState:&v43 objects:v59 count:16];
  }

  while (v9);
LABEL_20:

  v4 = v39;
  v2 = v40;
  a1 = v41;
LABEL_21:
  v35 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    v36 = [*(*(*(a1 + 48) + 8) + 40) count];
    *buf = 136446722;
    v50 = "[AnalyticsReader networksAvailableAtLocation:withinDistance:inBand:]_block_invoke";
    v51 = 1024;
    v52 = 739;
    v53 = 2048;
    v54 = v36;
    _os_log_impl(&dword_1C8460000, v35, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Returning %ld networks", buf, 0x1Cu);
  }

LABEL_24:
  v37 = [*(a1 + 40) persistentContainer];
  [v37 managedObjectContextSave:0 reset:1 release:1 withError:0];

  objc_autoreleasePoolPop(v2);
  v38 = *MEMORY[0x1E69E9840];
}

- (id)copyLocationsForNetwork:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__10;
  v20 = __Block_byref_object_dispose__10;
  v21 = [MEMORY[0x1E695DF70] array];
  v5 = [(AnalyticsReader *)self moc];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __43__AnalyticsReader_copyLocationsForNetwork___block_invoke;
  v12[3] = &unk_1E830DAF8;
  v6 = v4;
  v13 = v6;
  v14 = self;
  v15 = &v16;
  [v5 performBlockAndWait:v12];

  v7 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = [v17[5] count];
    *buf = 136446722;
    v23 = "[AnalyticsReader copyLocationsForNetwork:]";
    v24 = 1024;
    v25 = 776;
    v26 = 2048;
    v27 = v8;
    _os_log_impl(&dword_1C8460000, v7, OS_LOG_TYPE_ERROR, "%{public}s::%d:returning %lu loc", buf, 0x1Cu);
  }

  v9 = v17[5];
  _Block_object_dispose(&v16, 8);

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

void __43__AnalyticsReader_copyLocationsForNetwork___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v24 = v2;
    v5 = [*(a1 + 40) persistentContainer];
    v6 = [GeoTagMO geoTagsForNetwork:v4 container:v5];

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v26;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v26 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v25 + 1) + 8 * i);
          if (v12)
          {
            v13 = objc_alloc(MEMORY[0x1E6985C38]);
            [v12 latitude];
            v15 = v14;
            [v12 longitude];
            v17 = [v13 initWithLatitude:v15 longitude:v16];
            if (v17)
            {
              v18 = v17;
              [*(*(*(a1 + 48) + 8) + 40) addObject:v17];
            }

            else
            {
              v19 = WALogCategoryDeviceStoreHandle();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
              {
                *buf = 136446466;
                v31 = "[AnalyticsReader copyLocationsForNetwork:]_block_invoke";
                v32 = 1024;
                v33 = 764;
                _os_log_impl(&dword_1C8460000, v19, OS_LOG_TYPE_ERROR, "%{public}s::%d:location nil", buf, 0x12u);
              }

              v18 = 0;
            }
          }

          else
          {
            v18 = WALogCategoryDeviceStoreHandle();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446466;
              v31 = "[AnalyticsReader copyLocationsForNetwork:]_block_invoke";
              v32 = 1024;
              v33 = 758;
              _os_log_impl(&dword_1C8460000, v18, OS_LOG_TYPE_ERROR, "%{public}s::%d:geoTag nil", buf, 0x12u);
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v9);
    }

    v3 = v24;
  }

  else
  {
    v7 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v31 = "[AnalyticsReader copyLocationsForNetwork:]_block_invoke";
      v32 = 1024;
      v33 = 752;
      _os_log_impl(&dword_1C8460000, v7, OS_LOG_TYPE_ERROR, "%{public}s::%d:ssid nil", buf, 0x12u);
    }
  }

  if (![*(*(*(a1 + 48) + 8) + 40) count])
  {
    v20 = *(*(a1 + 48) + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = 0;
  }

  v22 = [*(a1 + 40) persistentContainer];
  [v22 managedObjectContextSave:0 reset:1 release:1 withError:0];

  objc_autoreleasePoolPop(v3);
  v23 = *MEMORY[0x1E69E9840];
}

- (id)usageOf:(id)a3 timeSpan:(unint64_t)a4 around:(id)a5 withError:(id *)a6
{
  v45 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__10;
  v37 = __Block_byref_object_dispose__10;
  v38 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__10;
  v31 = __Block_byref_object_dispose__10;
  v32 = 0;
  v12 = [(AnalyticsReader *)self moc];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __53__AnalyticsReader_usageOf_timeSpan_around_withError___block_invoke;
  v20[3] = &unk_1E830F118;
  v24 = &v33;
  v13 = v10;
  v21 = v13;
  v26 = a4;
  v14 = v11;
  v22 = v14;
  v23 = self;
  v25 = &v27;
  [v12 performBlockAndWait:v20];

  if (a6)
  {
    *a6 = v28[5];
  }

  v15 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = v34[5];
    *buf = 136446722;
    v40 = "[AnalyticsReader usageOf:timeSpan:around:withError:]";
    v41 = 1024;
    v42 = 792;
    v43 = 2112;
    v44 = v16;
    _os_log_impl(&dword_1C8460000, v15, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Returning %@", buf, 0x1Cu);
  }

  v17 = v34[5];
  _Block_object_dispose(&v27, 8);

  _Block_object_dispose(&v33, 8);
  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

void __53__AnalyticsReader_usageOf_timeSpan_around_withError___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 72);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = [*(a1 + 48) persistentContainer];
  v7 = *(*(a1 + 64) + 8);
  obj = *(v7 + 40);
  v8 = [UsageMO usageOf:v4 timeSpan:v3 around:v5 onContainer:v6 withError:&obj];
  objc_storeStrong((v7 + 40), obj);
  v9 = *(*(a1 + 56) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = *(*(*(a1 + 56) + 8) + 40);
    *buf = 136446722;
    v17 = "[AnalyticsReader usageOf:timeSpan:around:withError:]_block_invoke";
    v18 = 1024;
    v19 = 788;
    v20 = 2112;
    v21 = v12;
    _os_log_impl(&dword_1C8460000, v11, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Returning: %@", buf, 0x1Cu);
  }

  v13 = [*(a1 + 48) persistentContainer];
  [v13 managedObjectContextSave:0 reset:1 release:1 withError:0];

  objc_autoreleasePoolPop(v2);
  v14 = *MEMORY[0x1E69E9840];
}

- (id)usageOf:(id)a3 during:(unint64_t)a4 timeSpan:(unint64_t)a5 withError:(id *)a6
{
  v10 = a3;
  v11 = [UsageMO referenceDateFor:a4 timeSpan:a5 withError:a6];
  v12 = [(AnalyticsReader *)self usageOf:v10 timeSpan:a5 around:v11 withError:a6];

  return v12;
}

@end