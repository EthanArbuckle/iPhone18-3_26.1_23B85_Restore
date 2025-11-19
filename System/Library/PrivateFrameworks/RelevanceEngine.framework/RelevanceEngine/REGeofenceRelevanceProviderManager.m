@interface REGeofenceRelevanceProviderManager
+ (id)_dependencyClasses;
+ (id)_features;
- (id)_valueForProvider:(id)a3 context:(id)a4 feature:(id)a5;
- (int)_queryRevokableStatusForProvider:(id)a3;
@end

@implementation REGeofenceRelevanceProviderManager

+ (id)_features
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = +[REFeature geofenceFeature];
  v6[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)_dependencyClasses
{
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();

  return [v2 setWithObject:v3];
}

- (int)_queryRevokableStatusForProvider:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = +[(RESingleton *)RELocationAuthorizationStatusCache];
  v6 = [v4 bundleIdentifier];
  v7 = [(RERelevanceProviderManager *)self _manager_queue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __71__REGeofenceRelevanceProviderManager__queryRevokableStatusForProvider___block_invoke;
  v11[3] = &unk_2785FAEC0;
  objc_copyWeak(&v13, &location);
  v8 = v4;
  v12 = v8;
  v9 = [v5 cachedAuthorizationStatusForBundleIdentifier:v6 invalidationUpdateQueue:v7 withCallback:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);

  return v9;
}

void __71__REGeofenceRelevanceProviderManager__queryRevokableStatusForProvider___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [RERelevanceProviderManagerUpdate immediateUpdateForProvider:*(a1 + 32)];
  [WeakRetained _scheduleUpdate:v2];
}

- (id)_valueForProvider:(id)a3 context:(id)a4 feature:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = [a4 attributeForKey:@"RETrainingContextLocationKey"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

LABEL_5:
    v8 = [(RESharedLocationRelevanceProviderManager *)self currentLocation];
    goto LABEL_6;
  }

  if (!v8)
  {
    goto LABEL_5;
  }

LABEL_6:
  v9 = [v7 bundleIdentifier];

  if (!v9 || [(REGeofenceRelevanceProviderManager *)self _queryRevokableStatusForProvider:v7]- 3 < 2)
  {
    v10 = [v7 region];
    [v10 radius];
    v12 = v11;
    v13 = objc_alloc(MEMORY[0x277CE41F8]);
    [v10 center];
    v15 = v14;
    [v10 center];
    v16 = [v13 initWithLatitude:v15 longitude:?];
    [v8 distanceFromLocation:v16];
    v18 = v17;
    if (v17 < v12 + v12)
    {
      if ([v10 notifyOnEntry])
      {
        if (v18 > v12)
        {
LABEL_11:
          v19 = 0.300000012;
LABEL_22:
          v22 = [REFeatureValue featureValueWithDouble:v19];

          goto LABEL_23;
        }

LABEL_17:
        v19 = 1.0;
        goto LABEL_22;
      }

      if ([v10 notifyOnExit])
      {
        if (v18 < v12)
        {
          goto LABEL_11;
        }

        goto LABEL_17;
      }

      v23 = RELogForDomain(5);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v26) = 0;
        _os_log_impl(&dword_22859F000, v23, OS_LOG_TYPE_DEFAULT, "Invalid region in REGeofenceRelevanceProvider. Region must be either notifyOnExit or notifyOnEntry.", &v26, 2u);
      }
    }

    v19 = 0.0;
    goto LABEL_22;
  }

  v20 = RELogForDomain(5);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = [v7 bundleIdentifier];
    v26 = 136315138;
    v27 = [v21 UTF8String];
    _os_log_impl(&dword_22859F000, v20, OS_LOG_TYPE_INFO, "Bundle identifier (%s) lacks geofence permission. Skipping relevance.", &v26, 0xCu);
  }

  v22 = [REFeatureValue featureValueWithDouble:0.0];
LABEL_23:

  v24 = *MEMORY[0x277D85DE8];

  return v22;
}

@end