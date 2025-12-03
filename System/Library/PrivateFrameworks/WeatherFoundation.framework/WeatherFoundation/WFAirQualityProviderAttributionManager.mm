@interface WFAirQualityProviderAttributionManager
+ (WFAirQualityProviderAttributionManager)sharedManager;
- (WFAirQualityProviderAttributionManager)init;
- (id)cachedAttributionForProvider:(id)provider;
- (id)p_archivedDataForProviderAttribution:(id)attribution;
- (void)loadAttributionForProvider:(id)provider completion:(id)completion;
- (void)p_updateCacheWithProviderAttribution:(id)attribution;
- (void)registerProviderAttribution:(id)attribution;
@end

@implementation WFAirQualityProviderAttributionManager

+ (WFAirQualityProviderAttributionManager)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    +[WFAirQualityProviderAttributionManager sharedManager];
  }

  v3 = sharedManager_attributionManager;

  return v3;
}

uint64_t __55__WFAirQualityProviderAttributionManager_sharedManager__block_invoke()
{
  sharedManager_attributionManager = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (WFAirQualityProviderAttributionManager)init
{
  v9.receiver = self;
  v9.super_class = WFAirQualityProviderAttributionManager;
  v2 = [(WFAirQualityProviderAttributionManager *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_dataSynchronizationLock._os_unfair_lock_opaque = 0;
    v4 = WeatherFoundationInternalUserDefaults();
    v5 = [v4 objectForKey:@"providerAttributionPrimitives"];

    if (v5)
    {
      [MEMORY[0x277CBEB38] dictionaryWithDictionary:v5];
    }

    else
    {
      [MEMORY[0x277CBEB38] dictionary];
    }
    v6 = ;
    attributionCache = v3->_attributionCache;
    v3->_attributionCache = v6;
  }

  return v3;
}

- (void)registerProviderAttribution:(id)attribution
{
  attributionCopy = attribution;
  name = [attributionCopy name];

  if (name)
  {
    v6 = [(WFAirQualityProviderAttributionManager *)self p_archivedDataForProviderAttribution:attributionCopy];
    if (v6)
    {
      os_unfair_lock_lock_with_options();
      attributionCache = [(WFAirQualityProviderAttributionManager *)self attributionCache];
      name2 = [attributionCopy name];
      [attributionCache setObject:v6 forKeyedSubscript:name2];

      os_unfair_lock_unlock(&self->_dataSynchronizationLock);
    }

    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __70__WFAirQualityProviderAttributionManager_registerProviderAttribution___block_invoke;
    v9[3] = &unk_279E6E6C0;
    v9[4] = self;
    v10 = attributionCopy;
    [v10 loadLogoImageWithCompletion:v9];
  }
}

- (id)cachedAttributionForProvider:(id)provider
{
  providerCopy = provider;
  if (providerCopy)
  {
    os_unfair_lock_lock_with_options();
    attributionCache = [(WFAirQualityProviderAttributionManager *)self attributionCache];
    v6 = [attributionCache objectForKeyedSubscript:providerCopy];

    if (v6)
    {
      v11 = 0;
      v7 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:&v11];
      v8 = v11;
      if (v8)
      {
        v9 = WFLogForCategory(5uLL);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          [WFAirQualityProviderAttributionManager cachedAttributionForProvider:];
        }
      }
    }

    else
    {
      v7 = 0;
    }

    os_unfair_lock_unlock(&self->_dataSynchronizationLock);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)loadAttributionForProvider:(id)provider completion:(id)completion
{
  completionCopy = completion;
  v7 = [(WFAirQualityProviderAttributionManager *)self cachedAttributionForProvider:provider];
  v8 = v7;
  if (v7)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __80__WFAirQualityProviderAttributionManager_loadAttributionForProvider_completion___block_invoke;
    v10[3] = &unk_279E6E6E8;
    v11 = v7;
    selfCopy = self;
    v13 = completionCopy;
    [v11 loadLogoImageWithCompletion:v10];
  }

  else
  {
    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.weather.foundation.airQuality.provider.attribution.manager.errorDomain" code:6667 userInfo:0];
    (*(completionCopy + 2))(completionCopy, 0, 0, v9);
  }
}

void __80__WFAirQualityProviderAttributionManager_loadAttributionForProvider_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) cachedLogoImage];

  if (v7 && !v6)
  {
    [*(a1 + 32) setCachedLogoImage:v7];
    [*(a1 + 40) p_updateCacheWithProviderAttribution:*(a1 + 32)];
  }

  (*(*(a1 + 48) + 16))();
}

- (id)p_archivedDataForProviderAttribution:(id)attribution
{
  attributionCopy = attribution;
  v8 = 0;
  v4 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:attributionCopy requiringSecureCoding:1 error:&v8];
  v5 = v8;
  if (v5)
  {
    v6 = WFLogForCategory(5uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(WFAirQualityProviderAttributionManager *)attributionCopy p_archivedDataForProviderAttribution:v5, v6];
    }
  }

  return v4;
}

- (void)p_updateCacheWithProviderAttribution:(id)attribution
{
  attributionCopy = attribution;
  v4 = [(WFAirQualityProviderAttributionManager *)self p_archivedDataForProviderAttribution:?];
  if (v4)
  {
    os_unfair_lock_lock_with_options();
    attributionCache = [(WFAirQualityProviderAttributionManager *)self attributionCache];
    name = [attributionCopy name];
    [attributionCache setObject:v4 forKeyedSubscript:name];

    attributionCache2 = [(WFAirQualityProviderAttributionManager *)self attributionCache];
    v8 = [attributionCache2 copy];

    os_unfair_lock_unlock(&self->_dataSynchronizationLock);
    v9 = WeatherFoundationInternalUserDefaults();
    [v9 setObject:v8 forKey:@"providerAttributionPrimitives"];
  }
}

- (void)cachedAttributionForProvider:.cold.1()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  v3 = v0;
  _os_log_error_impl(&dword_272B94000, v1, OS_LOG_TYPE_ERROR, "Error retrieving provider from cache %{public}@: %{public}@", v2, 0x16u);
}

- (void)p_archivedDataForProviderAttribution:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v5 = [a1 name];
  OUTLINED_FUNCTION_0_1();
  v7 = a2;
  _os_log_error_impl(&dword_272B94000, a3, OS_LOG_TYPE_ERROR, "Error generating archived data from attribution %{public}@: %{public}@", v6, 0x16u);
}

@end