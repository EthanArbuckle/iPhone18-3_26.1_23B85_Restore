@interface SHRemoteConfiguration
+ (id)sharedInstance;
- (SHRemoteConfiguration)initWithBag:(id)a3;
- (id)musicalFeaturesBagConfigurationWithPromise;
- (id)recorderConfigurationWithPromise;
- (void)cacheValuesWithCompletion:(id)a3;
- (void)campaignTokenWithCompletion:(id)a3;
- (void)defaultValuesWithCompletion:(id)a3;
- (void)endpointsWithCompletion:(id)a3;
- (void)featureFlagsWithCompletion:(id)a3;
- (void)hapticsWithCompletion:(id)a3;
- (void)hostForClientType:(int64_t)a3 completion:(id)a4;
- (void)musicalFeaturesBagConfigurationWithCompletion:(id)a3;
- (void)offerValuesWithCompletion:(id)a3;
- (void)populateRemoteConfiguration;
- (void)recorderConfigurationWithCompletion:(id)a3;
- (void)shazamAMPConfigurationAPIHostWithCompletion:(id)a3;
- (void)shazamOfferAPIURLPathWithCompletion:(id)a3;
- (void)streamingProviderValuesWithCompletion:(id)a3;
@end

@implementation SHRemoteConfiguration

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[SHRemoteConfiguration sharedInstance];
  }

  v3 = sharedInstance_configuration;

  return v3;
}

void __39__SHRemoteConfiguration_sharedInstance__block_invoke()
{
  [MEMORY[0x277CEE4D0] setSuppressEngagement:1];
  v2 = [MEMORY[0x277CEE3F8] bagForProfile:@"Shazam" profileVersion:@"1"];
  v0 = [[SHRemoteConfiguration alloc] initWithBag:v2];
  v1 = sharedInstance_configuration;
  sharedInstance_configuration = v0;
}

- (SHRemoteConfiguration)initWithBag:(id)a3
{
  v5 = a3;
  v50.receiver = self;
  v50.super_class = SHRemoteConfiguration;
  v6 = [(SHRemoteConfiguration *)&v50 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_amsBag, a3);
    v8 = [(SHRemoteConfiguration *)v7 amsBag];
    v9 = [v8 dictionaryForKey:@"shazam-haptics"];
    hapticsEndpointsBagValue = v7->_hapticsEndpointsBagValue;
    v7->_hapticsEndpointsBagValue = v9;

    v11 = [(SHRemoteConfiguration *)v7 amsBag];
    v12 = [v11 dictionaryForKey:@"shazam-endpoints"];
    endpointsBagValue = v7->_endpointsBagValue;
    v7->_endpointsBagValue = v12;

    v14 = [(SHRemoteConfiguration *)v7 amsBag];
    v15 = [v14 stringForKey:@"shazam-media-api-host"];
    internalHostBagValue = v7->_internalHostBagValue;
    v7->_internalHostBagValue = v15;

    v17 = [(SHRemoteConfiguration *)v7 amsBag];
    v18 = [v17 stringForKey:@"shazamkit-media-api-host"];
    externalHostBagValue = v7->_externalHostBagValue;
    v7->_externalHostBagValue = v18;

    v20 = [(SHRemoteConfiguration *)v7 amsBag];
    v21 = [v20 dictionaryForKey:@"shazam-campaign-tokens"];
    campaignTokenBagValue = v7->_campaignTokenBagValue;
    v7->_campaignTokenBagValue = v21;

    v23 = [(SHRemoteConfiguration *)v7 amsBag];
    v24 = [v23 dictionaryForKey:@"shazam-default-values"];
    defaultValuesBagValue = v7->_defaultValuesBagValue;
    v7->_defaultValuesBagValue = v24;

    v26 = [(SHRemoteConfiguration *)v7 amsBag];
    v27 = [v26 stringForKey:@"language-tag"];
    languageTagBagValue = v7->_languageTagBagValue;
    v7->_languageTagBagValue = v27;

    v29 = [(SHRemoteConfiguration *)v7 amsBag];
    v30 = [v29 dictionaryForKey:@"shazam-feature-flags"];
    featureFlagsBagValue = v7->_featureFlagsBagValue;
    v7->_featureFlagsBagValue = v30;

    v32 = [(SHRemoteConfiguration *)v7 amsBag];
    v33 = [v32 stringForKey:@"shazam-amp-api-host"];
    shazamOfferAPIHostsBagValue = v7->_shazamOfferAPIHostsBagValue;
    v7->_shazamOfferAPIHostsBagValue = v33;

    v35 = [(SHRemoteConfiguration *)v7 amsBag];
    v36 = [v35 dictionaryForKey:@"shazam-amp-api-endpoints"];
    shazamAMPConfigurationAPIEndpointsBagValue = v7->_shazamAMPConfigurationAPIEndpointsBagValue;
    v7->_shazamAMPConfigurationAPIEndpointsBagValue = v36;

    v38 = [(SHRemoteConfiguration *)v7 amsBag];
    v39 = [v38 dictionaryForKey:@"shazam-cache-values"];
    cacheValuesBagValue = v7->_cacheValuesBagValue;
    v7->_cacheValuesBagValue = v39;

    v41 = [(SHRemoteConfiguration *)v7 amsBag];
    v42 = [v41 dictionaryForKey:@"shazam-recorder-configuration"];
    recorderConfigurationBagValue = v7->_recorderConfigurationBagValue;
    v7->_recorderConfigurationBagValue = v42;

    v44 = [(SHRemoteConfiguration *)v7 amsBag];
    v45 = [v44 dictionaryForKey:@"shazam-musical-features-configuration"];
    musicalFeaturesBagConfigurationValue = v7->_musicalFeaturesBagConfigurationValue;
    v7->_musicalFeaturesBagConfigurationValue = v45;

    v47 = objc_alloc_init(SHAMPConfigurationRequester);
    configurationRequester = v7->_configurationRequester;
    v7->_configurationRequester = v47;
  }

  return v7;
}

- (void)populateRemoteConfiguration
{
  v3 = shcore_log_object();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v15 = 0;
    _os_log_impl(&dword_231025000, v3, OS_LOG_TYPE_DEBUG, "Populating remote configuration...", v15, 2u);
  }

  v4 = [(SHRemoteConfiguration *)self endpointsBagValue];
  [v4 valueWithCompletion:&__block_literal_global_52];

  v5 = [(SHRemoteConfiguration *)self internalHostBagValue];
  [v5 valueWithCompletion:&__block_literal_global_54];

  v6 = [(SHRemoteConfiguration *)self externalHostBagValue];
  [v6 valueWithCompletion:&__block_literal_global_56];

  v7 = [(SHRemoteConfiguration *)self languageTagBagValue];
  [v7 valueWithCompletion:&__block_literal_global_58];

  v8 = [(SHRemoteConfiguration *)self campaignTokenBagValue];
  [v8 valueWithCompletion:&__block_literal_global_60];

  v9 = [(SHRemoteConfiguration *)self defaultValuesBagValue];
  [v9 valueWithCompletion:&__block_literal_global_62];

  v10 = [(SHRemoteConfiguration *)self featureFlagsBagValue];
  [v10 valueWithCompletion:&__block_literal_global_64];

  v11 = [(SHRemoteConfiguration *)self shazamAMPConfigurationAPIEndpointsBagValue];
  [v11 valueWithCompletion:&__block_literal_global_66];

  v12 = [(SHRemoteConfiguration *)self cacheValuesBagValue];
  [v12 valueWithCompletion:&__block_literal_global_68];

  v13 = [(SHRemoteConfiguration *)self recorderConfigurationBagValue];
  [v13 valueWithCompletion:&__block_literal_global_70];

  v14 = [(SHRemoteConfiguration *)self musicalFeaturesBagConfigurationValue];
  [v14 valueWithCompletion:&__block_literal_global_72];
}

- (void)shazamAMPConfigurationAPIHostWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(SHRemoteConfiguration *)self shazamOfferAPIHostsBagValue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69__SHRemoteConfiguration_shazamAMPConfigurationAPIHostWithCompletion___block_invoke;
  v7[3] = &unk_2788FB218;
  v8 = v4;
  v6 = v4;
  [v5 valueWithCompletion:v7];
}

void __69__SHRemoteConfiguration_shazamAMPConfigurationAPIHostWithCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = a2;
  if (v8)
  {
    v6 = [[SHHost alloc] initWithName:v8];
    v7 = 0;
  }

  else
  {
    v7 = [SHCoreError errorWithCode:401 underlyingError:a4];
    v6 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

- (void)shazamOfferAPIURLPathWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(SHRemoteConfiguration *)self languageTagBagValue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__SHRemoteConfiguration_shazamOfferAPIURLPathWithCompletion___block_invoke;
  v7[3] = &unk_2788FB268;
  objc_copyWeak(&v9, &location);
  v6 = v4;
  v8 = v6;
  [v5 valueWithCompletion:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __61__SHRemoteConfiguration_shazamOfferAPIURLPathWithCompletion___block_invoke(uint64_t a1, __CFString *a2)
{
  v4 = @"en-US";
  if (a2)
  {
    v4 = a2;
  }

  v5 = v4;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = [WeakRetained shazamAMPConfigurationAPIEndpointsBagValue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__SHRemoteConfiguration_shazamOfferAPIURLPathWithCompletion___block_invoke_2;
  v10[3] = &unk_2788FB240;
  v11 = v5;
  v12 = *(a1 + 32);
  v9 = v5;
  [v8 valueWithCompletion:v10];
}

void __61__SHRemoteConfiguration_shazamOfferAPIURLPathWithCompletion___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v10 = a4;
  v6 = *(a1 + 32);
  v7 = [a2 objectForKeyedSubscript:@"configuration"];
  v8 = [SHTokenizedURL replaceToken:2 withValue:v6 urlString:v7];

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = [SHCoreError errorWithCode:401 underlyingError:v10];
  }

  (*(*(a1 + 40) + 16))();
}

- (void)hapticsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = shcore_log_object();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_231025000, v5, OS_LOG_TYPE_DEBUG, "Haptics endpoints...", buf, 2u);
  }

  v6 = [(SHRemoteConfiguration *)self hapticsEndpointsBagValue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__SHRemoteConfiguration_hapticsWithCompletion___block_invoke;
  v8[3] = &unk_2788FB218;
  v9 = v4;
  v7 = v4;
  [v6 valueWithCompletion:v8];
}

void __47__SHRemoteConfiguration_hapticsWithCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  v8 = shcore_log_object();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v12 = 138412546;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_231025000, v8, OS_LOG_TYPE_DEBUG, "HapticsEndpoints fetch complete with value %@ error %@", &v12, 0x16u);
  }

  v9 = *(a1 + 32);
  v10 = [[SHHapticsConfiguration alloc] initWithConfiguration:v6];
  (*(v9 + 16))(v9, v10, v7);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)endpointsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = shcore_log_object();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_231025000, v5, OS_LOG_TYPE_DEBUG, "Fetching endpoints...", buf, 2u);
  }

  objc_initWeak(buf, self);
  v6 = [(SHRemoteConfiguration *)self languageTagBagValue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__SHRemoteConfiguration_endpointsWithCompletion___block_invoke;
  v8[3] = &unk_2788FB268;
  objc_copyWeak(&v10, buf);
  v7 = v4;
  v9 = v7;
  [v6 valueWithCompletion:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
}

void __49__SHRemoteConfiguration_endpointsWithCompletion___block_invoke(uint64_t a1, __CFString *a2)
{
  v4 = @"en-US";
  if (a2)
  {
    v4 = a2;
  }

  v5 = v4;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = [WeakRetained endpointsBagValue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __49__SHRemoteConfiguration_endpointsWithCompletion___block_invoke_2;
  v11[3] = &unk_2788FB290;
  v9 = *(a1 + 32);
  v12 = v5;
  v13 = v9;
  v10 = v5;
  [v8 valueWithCompletion:v11];
}

void __49__SHRemoteConfiguration_endpointsWithCompletion___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  v8 = shcore_log_object();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v12 = 138412546;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_231025000, v8, OS_LOG_TYPE_DEBUG, "Endpoint fetch complete with value %@ error %@", &v12, 0x16u);
  }

  v9 = *(a1 + 40);
  if (v6)
  {
    v10 = [[SHEndpoints alloc] initWithConfiguration:v6 suggestedLanguage:*(a1 + 32)];
    (*(v9 + 16))(v9, v10, v7);
  }

  else
  {
    (*(v9 + 16))(*(a1 + 40), 0, v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)hostForClientType:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = shcore_log_object();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_231025000, v7, OS_LOG_TYPE_DEBUG, "Fetching hosts...", buf, 2u);
  }

  if (a3 == 2)
  {
    v8 = [(SHRemoteConfiguration *)self externalHostBagValue];
  }

  else
  {
    if (a3 != 1)
    {
      v9 = 0;
      goto LABEL_9;
    }

    v8 = [(SHRemoteConfiguration *)self internalHostBagValue];
  }

  v9 = v8;
LABEL_9:
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __54__SHRemoteConfiguration_hostForClientType_completion___block_invoke;
  v11[3] = &unk_2788FB218;
  v12 = v6;
  v10 = v6;
  [v9 valueWithCompletion:v11];
}

void __54__SHRemoteConfiguration_hostForClientType_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  v8 = shcore_log_object();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v12 = 138412546;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_231025000, v8, OS_LOG_TYPE_DEBUG, "Host fetch complete with value %@ error %@", &v12, 0x16u);
  }

  v9 = *(a1 + 32);
  if (v6)
  {
    v10 = [[SHHost alloc] initWithName:v6];
    (*(v9 + 16))(v9, v10, v7);
  }

  else
  {
    (*(v9 + 16))(v9, 0, v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)campaignTokenWithCompletion:(id)a3
{
  v4 = a3;
  v5 = shcore_log_object();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_231025000, v5, OS_LOG_TYPE_DEBUG, "Fetching campaign tokens...", buf, 2u);
  }

  v6 = [(SHRemoteConfiguration *)self campaignTokenBagValue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__SHRemoteConfiguration_campaignTokenWithCompletion___block_invoke;
  v8[3] = &unk_2788FB218;
  v9 = v4;
  v7 = v4;
  [v6 valueWithCompletion:v8];
}

void __53__SHRemoteConfiguration_campaignTokenWithCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  v8 = shcore_log_object();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v12 = 138412546;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_231025000, v8, OS_LOG_TYPE_DEBUG, "Campaign tokens fetch complete with value %@ error %@", &v12, 0x16u);
  }

  v9 = *(a1 + 32);
  if (v6)
  {
    v10 = [[SHCampaignTokens alloc] initWithConfiguration:v6];
    (*(v9 + 16))(v9, v10, v7);
  }

  else
  {
    (*(v9 + 16))(v9, 0, v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)defaultValuesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = shcore_log_object();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_231025000, v5, OS_LOG_TYPE_DEBUG, "Fetching default values...", buf, 2u);
  }

  v6 = [(SHRemoteConfiguration *)self defaultValuesBagValue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__SHRemoteConfiguration_defaultValuesWithCompletion___block_invoke;
  v8[3] = &unk_2788FB218;
  v9 = v4;
  v7 = v4;
  [v6 valueWithCompletion:v8];
}

void __53__SHRemoteConfiguration_defaultValuesWithCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  v8 = shcore_log_object();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v12 = 138412546;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_231025000, v8, OS_LOG_TYPE_DEBUG, "Default values fetch complete with value %@ error %@", &v12, 0x16u);
  }

  v9 = *(a1 + 32);
  if (v6)
  {
    v10 = [[SHDefaultConfigurationValues alloc] initWithConfiguration:v6];
    (*(v9 + 16))(v9, v10, v7);
  }

  else
  {
    (*(v9 + 16))(v9, 0, v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)featureFlagsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = shcore_log_object();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_231025000, v5, OS_LOG_TYPE_DEBUG, "Fetching feature flags...", buf, 2u);
  }

  v6 = [(SHRemoteConfiguration *)self featureFlagsBagValue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52__SHRemoteConfiguration_featureFlagsWithCompletion___block_invoke;
  v8[3] = &unk_2788FB218;
  v9 = v4;
  v7 = v4;
  [v6 valueWithCompletion:v8];
}

void __52__SHRemoteConfiguration_featureFlagsWithCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  v8 = shcore_log_object();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v12 = 138412546;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_231025000, v8, OS_LOG_TYPE_DEBUG, "Feature flags fetch complete with value %@ error %@", &v12, 0x16u);
  }

  v9 = *(a1 + 32);
  if (v6)
  {
    v10 = [[SHFeatureFlags alloc] initWithConfiguration:v6];
    (*(v9 + 16))(v9, v10, v7);
  }

  else
  {
    (*(v9 + 16))(v9, 0, v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)cacheValuesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = shcore_log_object();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_231025000, v5, OS_LOG_TYPE_DEBUG, "Fetching cache values...", buf, 2u);
  }

  v6 = [(SHRemoteConfiguration *)self cacheValuesBagValue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__SHRemoteConfiguration_cacheValuesWithCompletion___block_invoke;
  v8[3] = &unk_2788FB218;
  v9 = v4;
  v7 = v4;
  [v6 valueWithCompletion:v8];
}

void __51__SHRemoteConfiguration_cacheValuesWithCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  v8 = shcore_log_object();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v12 = 138412546;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_231025000, v8, OS_LOG_TYPE_DEBUG, "Cache values fetch complete with value %@ error %@", &v12, 0x16u);
  }

  v9 = *(a1 + 32);
  if (v6)
  {
    v10 = [[SHCacheValues alloc] initWithValues:v6];
    (*(v9 + 16))(v9, v10, v7);
  }

  else
  {
    (*(v9 + 16))(v9, 0, v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)offerValuesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(SHRemoteConfiguration *)self configurationRequester];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__SHRemoteConfiguration_offerValuesWithCompletion___block_invoke;
  v7[3] = &unk_2788FB2B8;
  v8 = v4;
  v6 = v4;
  [v5 offersWithCompletion:v7];
}

void __51__SHRemoteConfiguration_offerValuesWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = shcore_log_object();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412546;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_231025000, v7, OS_LOG_TYPE_DEBUG, "Shazam campaign offers fetch complete with value %@ error %@", &v9, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
  v8 = *MEMORY[0x277D85DE8];
}

- (void)streamingProviderValuesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(SHRemoteConfiguration *)self configurationRequester];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__SHRemoteConfiguration_streamingProviderValuesWithCompletion___block_invoke;
  v7[3] = &unk_2788FB2E0;
  v8 = v4;
  v6 = v4;
  [v5 streamingProvidersWithCompletion:v7];
}

void __63__SHRemoteConfiguration_streamingProviderValuesWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = shcore_log_object();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412546;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_231025000, v7, OS_LOG_TYPE_DEBUG, "Third party streaming providers fetch complete with value %@ error %@", &v9, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
  v8 = *MEMORY[0x277D85DE8];
}

- (void)recorderConfigurationWithCompletion:(id)a3
{
  v4 = a3;
  v5 = shcore_log_object();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_231025000, v5, OS_LOG_TYPE_DEBUG, "Fetching recorder configuration values...", buf, 2u);
  }

  v6 = [(SHRemoteConfiguration *)self recorderConfigurationBagValue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61__SHRemoteConfiguration_recorderConfigurationWithCompletion___block_invoke;
  v8[3] = &unk_2788FB218;
  v9 = v4;
  v7 = v4;
  [v6 valueWithCompletion:v8];
}

void __61__SHRemoteConfiguration_recorderConfigurationWithCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  v8 = shcore_log_object();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v12 = 138412546;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_231025000, v8, OS_LOG_TYPE_DEBUG, "Recorder configuration with value %@ error %@", &v12, 0x16u);
  }

  v9 = *(a1 + 32);
  if (v6)
  {
    v10 = [[SHRecorderConfiguration alloc] initWithValues:v6];
    (*(v9 + 16))(v9, v10, v7);
  }

  else
  {
    (*(v9 + 16))(v9, 0, v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)musicalFeaturesBagConfigurationWithCompletion:(id)a3
{
  v4 = a3;
  v5 = shcore_log_object();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_231025000, v5, OS_LOG_TYPE_DEBUG, "Fetching musical features models configuration values...", buf, 2u);
  }

  v6 = [(SHRemoteConfiguration *)self musicalFeaturesBagConfigurationValue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __71__SHRemoteConfiguration_musicalFeaturesBagConfigurationWithCompletion___block_invoke;
  v8[3] = &unk_2788FB218;
  v9 = v4;
  v7 = v4;
  [v6 valueWithCompletion:v8];
}

void __71__SHRemoteConfiguration_musicalFeaturesBagConfigurationWithCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  v8 = shcore_log_object();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v12 = 138412546;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_231025000, v8, OS_LOG_TYPE_DEBUG, "Musical features models configuration values fetch complete with value %@ error %@", &v12, 0x16u);
  }

  v9 = *(a1 + 32);
  if (v6)
  {
    v10 = [[SHMusicalFeaturesBagConfiguration alloc] initWithConfiguration:v6];
    (*(v9 + 16))(v9, v10, v7);
  }

  else
  {
    (*(v9 + 16))(v9, 0, v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)musicalFeaturesBagConfigurationWithPromise
{
  v2 = [(SHRemoteConfiguration *)self musicalFeaturesBagConfigurationValue];
  v3 = [v2 valuePromise];

  v4 = [[SHMusicalFeaturesBagConfiguration alloc] initWithPromise:v3];

  return v4;
}

- (id)recorderConfigurationWithPromise
{
  v2 = [(SHRemoteConfiguration *)self recorderConfigurationBagValue];
  v3 = [v2 valuePromise];

  v4 = [[SHRecorderConfiguration alloc] initWithPromise:v3];

  return v4;
}

@end