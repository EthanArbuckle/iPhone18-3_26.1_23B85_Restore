@interface PKOpenPodcastsUtil
+ (void)openPodcastsWithOriginBundleId:(id)a3;
@end

@implementation PKOpenPodcastsUtil

+ (void)openPodcastsWithOriginBundleId:(id)a3
{
  v14[1] = *MEMORY[0x277D85DE8];
  v13 = *MEMORY[0x277D76690];
  v14[0] = a3;
  v3 = MEMORY[0x277CBEAC0];
  v4 = a3;
  v5 = [v3 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v6 = *MEMORY[0x277D0AC38];
  v11[0] = *MEMORY[0x277D0ABF0];
  v11[1] = v6;
  v12[0] = MEMORY[0x277CBEC38];
  v12[1] = v5;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v8 = [MEMORY[0x277D0AD78] serviceWithDefaultShellEndpoint];
  v9 = [MEMORY[0x277D0AD60] optionsWithDictionary:v7];

  [v8 openApplication:@"com.apple.podcasts" withOptions:v9 completion:&__block_literal_global_7];
  v10 = *MEMORY[0x277D85DE8];
}

void __53__PKOpenPodcastsUtil_openPodcastsWithOriginBundleId___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    v4 = _MTLogCategoryLifecycle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&dword_25E9F0000, v4, OS_LOG_TYPE_ERROR, "Error opening podcasts: %@", &v6, 0xCu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

@end