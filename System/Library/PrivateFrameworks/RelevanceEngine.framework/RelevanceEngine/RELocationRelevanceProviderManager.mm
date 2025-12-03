@interface RELocationRelevanceProviderManager
+ (id)_dependencyClasses;
+ (id)_features;
- (id)_locationOfProvider:(id)provider;
- (id)_valueForProvider:(id)provider context:(id)context feature:(id)feature;
- (int)_queryRevokableStatusForProvider:(id)provider;
- (void)pause;
- (void)predictorDidUpdate:(id)update;
- (void)resume;
@end

@implementation RELocationRelevanceProviderManager

- (id)_locationOfProvider:(id)provider
{
  providerCopy = provider;
  if ([providerCopy type])
  {
    type = [providerCopy type];

    if (type >= 5)
    {
      v6 = 0;
    }

    else
    {
      v6 = type - 1;
    }

    environment = [(RERelevanceProviderManager *)self environment];
    providerCopy = [environment relevanceEngine];

    v8 = +[(RESingleton *)RELocationPredictor];
    location = [v8 locationForEngine:providerCopy userLocation:v6];
  }

  else
  {
    location = [providerCopy location];
  }

  return location;
}

+ (id)_features
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = +[REFeature locationFeature];
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

- (id)_valueForProvider:(id)provider context:(id)context feature:(id)feature
{
  v41 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  currentLocation = [context attributeForKey:@"RETrainingContextLocationKey"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (currentLocation)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  currentLocation = [(RESharedLocationRelevanceProviderManager *)self currentLocation];
LABEL_6:
  v9 = RELogForDomain(5);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v37 = 138412290;
    v38 = *&currentLocation;
    _os_log_impl(&dword_22859F000, v9, OS_LOG_TYPE_DEFAULT, "in _valueForProvider, deviceLocation is %@", &v37, 0xCu);
  }

  if (!currentLocation)
  {
    v22 = RELogForDomain(5);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v37) = 0;
      _os_log_impl(&dword_22859F000, v22, OS_LOG_TYPE_DEFAULT, "Device location is unknown", &v37, 2u);
    }

    goto LABEL_29;
  }

  bundleIdentifier = [providerCopy bundleIdentifier];

  if (bundleIdentifier)
  {
    v11 = [(RELocationRelevanceProviderManager *)self _queryRevokableStatusForProvider:providerCopy];
    type = [providerCopy type];
    v13 = (v11 - 3) < 2;
    if (type)
    {
      v13 = v11 == 3;
    }

    if (!v13)
    {
      v22 = RELogForDomain(5);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        bundleIdentifier2 = [providerCopy bundleIdentifier];
        uTF8String = [bundleIdentifier2 UTF8String];
        v37 = 136315138;
        v38 = *&uTF8String;
        _os_log_impl(&dword_22859F000, v22, OS_LOG_TYPE_INFO, "Bundle identifier (%s) lacks location permission. Skipping relevance.", &v37, 0xCu);
      }

LABEL_29:

      v25 = [REFeatureValue featureValueWithDouble:0.0];
      goto LABEL_35;
    }
  }

  v14 = [(RELocationRelevanceProviderManager *)self _locationOfProvider:providerCopy];
  v15 = RELogForDomain(5);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v37 = 138412290;
    v38 = *&v14;
    _os_log_impl(&dword_22859F000, v15, OS_LOG_TYPE_DEFAULT, "location is %@", &v37, 0xCu);
  }

  if (v14)
  {
    [v14 distanceFromLocation:currentLocation];
    v17 = v16;
    v18 = RELogForDomain(5);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v37 = 134218242;
      v38 = v17;
      v39 = 2112;
      v40 = providerCopy;
      _os_log_impl(&dword_22859F000, v18, OS_LOG_TYPE_DEFAULT, "%f distance to %@", &v37, 0x16u);
    }

    [v14 coordinate];
    if (CLLocationCoordinate2DIsValid(v43) && ([currentLocation coordinate], CLLocationCoordinate2DIsValid(v44)))
    {
      if (v17 >= 0.0)
      {
        [providerCopy accuracy];
        if (v17 >= v30)
        {
          [providerCopy accuracy];
          v33 = v17 - v32;
          [providerCopy radius];
          v35 = v34;
          [providerCopy accuracy];
          v20 = 1.0 - REPercentThroughRange(v33, 0.0, v35 - v36);
          v19 = RELogForDomain(5);
          if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_34;
          }

          v37 = 134217984;
          v38 = v20;
          v21 = "location was not nil, returning the feature value: %f";
          v26 = v19;
          v27 = 12;
        }

        else
        {
          v19 = RELogForDomain(5);
          v20 = 1.0;
          if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_34;
          }

          [providerCopy accuracy];
          v37 = 134218240;
          v38 = v17;
          v39 = 2048;
          v40 = v31;
          v21 = "within the buffer since the distance is %f, returning 1.0 for feature value. provider accuracy is: %f.";
          v26 = v19;
          v27 = 22;
        }

        goto LABEL_33;
      }

      v19 = RELogForDomain(5);
      v20 = 0.0;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v37) = 0;
        v21 = "Distance is negative, returning 0.0. for feature value.";
LABEL_32:
        v26 = v19;
        v27 = 2;
LABEL_33:
        _os_log_impl(&dword_22859F000, v26, OS_LOG_TYPE_DEFAULT, v21, &v37, v27);
      }
    }

    else
    {
      v19 = RELogForDomain(5);
      v20 = 0.0;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v37) = 0;
        v21 = "Invalid location coordinate.";
        goto LABEL_32;
      }
    }
  }

  else
  {
    v19 = RELogForDomain(5);
    v20 = 0.0;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v37) = 0;
      v21 = "location was nil, returning 0.0 for feature value";
      goto LABEL_32;
    }
  }

LABEL_34:

  v25 = [REFeatureValue featureValueWithDouble:v20];

LABEL_35:
  v28 = *MEMORY[0x277D85DE8];

  return v25;
}

- (int)_queryRevokableStatusForProvider:(id)provider
{
  providerCopy = provider;
  objc_initWeak(&location, self);
  bundleIdentifier = [providerCopy bundleIdentifier];
  v6 = REWatchKitExtensionForApplicationIdentifier(bundleIdentifier);
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = bundleIdentifier;
  }

  v9 = v8;

  v10 = +[(RESingleton *)RELocationAuthorizationStatusCache];
  _manager_queue = [(RERelevanceProviderManager *)self _manager_queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __71__RELocationRelevanceProviderManager__queryRevokableStatusForProvider___block_invoke;
  v15[3] = &unk_2785FAEC0;
  objc_copyWeak(&v17, &location);
  v12 = providerCopy;
  v16 = v12;
  v13 = [v10 cachedAuthorizationStatusForBundleIdentifier:v9 invalidationUpdateQueue:_manager_queue withCallback:v15];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);

  return v13;
}

void __71__RELocationRelevanceProviderManager__queryRevokableStatusForProvider___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [RERelevanceProviderManagerUpdate immediateUpdateForProvider:*(a1 + 32)];
  [WeakRetained _scheduleUpdate:v2];
}

- (void)resume
{
  v4.receiver = self;
  v4.super_class = RELocationRelevanceProviderManager;
  [(RESharedLocationRelevanceProviderManager *)&v4 resume];
  v3 = +[(RESingleton *)RELocationPredictor];
  [v3 addObserver:self];
}

- (void)pause
{
  v4.receiver = self;
  v4.super_class = RELocationRelevanceProviderManager;
  [(RESharedLocationRelevanceProviderManager *)&v4 pause];
  v3 = +[(RESingleton *)RELocationPredictor];
  [v3 removeObserver:self];
}

- (void)predictorDidUpdate:(id)update
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __57__RELocationRelevanceProviderManager_predictorDidUpdate___block_invoke;
  v3[3] = &unk_2785F9C30;
  v3[4] = self;
  [(RERelevanceProviderManager *)self _enumerateProviders:v3];
}

void __57__RELocationRelevanceProviderManager_predictorDidUpdate___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([v5 type])
  {
    v3 = *(a1 + 32);
    v4 = [RERelevanceProviderManagerUpdate immediateUpdateForProvider:v5];
    [v3 _scheduleUpdate:v4];
  }
}

@end