@interface PGCLIPTrendsMemoryGenerator
+ (id)CLIPTrendsConfigurations;
+ (id)_CLIPTrends;
- (PGCLIPTrendsMemoryGenerator)initWithMemoryGenerationContext:(id)context configurations:(id)configurations;
@end

@implementation PGCLIPTrendsMemoryGenerator

- (PGCLIPTrendsMemoryGenerator)initWithMemoryGenerationContext:(id)context configurations:(id)configurations
{
  v6.receiver = self;
  v6.super_class = PGCLIPTrendsMemoryGenerator;
  v4 = [(PGTrendsMemoryGenerator *)&v6 initWithMemoryGenerationContext:context configurations:configurations];
  if (v4)
  {
    v4->_minimumSceneAnalysisVersion = [MEMORY[0x277D3CAB0] latestVersion];
  }

  return v4;
}

+ (id)CLIPTrendsConfigurations
{
  _CLIPTrends = [self _CLIPTrends];
  if ([_CLIPTrends count])
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __55__PGCLIPTrendsMemoryGenerator_CLIPTrendsConfigurations__block_invoke;
    v6[3] = &unk_27887FB38;
    v8 = 0x3FF0000000000000;
    v4 = v3;
    v7 = v4;
    [_CLIPTrends enumerateKeysAndObjectsUsingBlock:v6];
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  return v4;
}

void __55__PGCLIPTrendsMemoryGenerator_CLIPTrendsConfigurations__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [[PGDictionaryConfigurationSource alloc] initWithDictionary:v4];

  v6 = [PGCLIPTrendsConfiguration alloc];
  v10[0] = v5;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v8 = [(PGConfiguration *)v6 initWithSources:v7 version:*(a1 + 40)];

  if (v8)
  {
    [*(a1 + 32) addObject:v8];
  }

  v9 = *MEMORY[0x277D85DE8];
}

+ (id)_CLIPTrends
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(PGRemoteConfiguration);
  v3 = [(PGRemoteConfiguration *)v2 dictionaryValueForKey:@"com.apple.photos.memories.trendsmemory.CLIPTrendsQueries" withFallbackValue:MEMORY[0x277CBEC10]];
  if ([v3 count])
  {
    v4 = v3;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = @"com.apple.photos.memories.trendsmemory.CLIPTrendsQueries";
      _os_log_error_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Couldn't load remotely configured CLIP Trends dictionary from Trial factor %@", &v7, 0xCu);
    }

    v4 = 0;
  }

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

@end