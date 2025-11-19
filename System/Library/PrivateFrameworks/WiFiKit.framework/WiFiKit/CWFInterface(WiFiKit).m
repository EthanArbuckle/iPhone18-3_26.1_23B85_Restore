@interface CWFInterface(WiFiKit)
+ (uint64_t)nearbyCaptiveAssistRecommendationUIFeatureEnabled;
- (uint64_t)updateKnownNetworkProfile:()WiFiKit OSSpecificAttributes:error:;
- (unint64_t)deviceSupports6E;
- (void)supported20MHzChannels;
@end

@implementation CWFInterface(WiFiKit)

- (void)supported20MHzChannels
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [a1 hardwareSupportedChannels];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        if ([v8 width] == 20)
        {
          [v2 addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  if ([v2 count])
  {
    v9 = v2;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v11 = *MEMORY[0x277D85DE8];
  return v9;
}

- (uint64_t)updateKnownNetworkProfile:()WiFiKit OSSpecificAttributes:error:
{
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = [v8 OSSpecificAttributes];
    v11 = [v10 mutableCopy];

    if (!v11)
    {
      v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    }

    [v11 addEntriesFromDictionary:v9];
    [v8 setOSSpecificAttributes:v11];
  }

  v12 = [a1 updateKnownNetworkProfile:v8 properties:0 error:a5];

  return v12;
}

- (unint64_t)deviceSupports6E
{
  v2 = [a1 capabilities];
  if ([v2 indexOfObject:&unk_288304BB8] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v3 = ([a1 countryBandSupport] >> 2) & 1;
  }

  return v3;
}

+ (uint64_t)nearbyCaptiveAssistRecommendationUIFeatureEnabled
{
  if (!_os_feature_enabled_impl() || !_os_feature_enabled_impl())
  {
    return 0;
  }

  return _os_feature_enabled_impl();
}

@end