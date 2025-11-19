@interface SHInsightsConfiguration
+ (id)bagContract;
+ (void)fetchSharedInstanceWithCompletion:(id)a3;
- (SHInsightsConfiguration)init;
- (SHInsightsConfiguration)initWithBagContract:(id)a3;
- (id)fillInTokenizedURL:(id)a3 date:(id)a4 geoHash:(id)a5;
- (void)artistsCachedDataMaxAgeWithCompletionHandler:(id)a3;
- (void)artistsClusterEndpointWithCompletionHandler:(id)a3;
- (void)artistsEnabledWithCompletionHandler:(id)a3;
- (void)geoChartsEndpointForDate:(id)a3 geoHash:(id)a4 completionHandler:(id)a5;
- (void)geoHashLengthsWithCompletionHandler:(id)a3;
- (void)tokenizedURLForBagPathKey:(id)a3 completionHandler:(id)a4;
- (void)tracksCachedDataMaxAgeWithCompletionHandler:(id)a3;
- (void)tracksClusterEndpointForStorefront:(id)a3 completionHandler:(id)a4;
- (void)tracksEnabledWithCompletionHandler:(id)a3;
@end

@implementation SHInsightsConfiguration

+ (void)fetchSharedInstanceWithCompletion:(id)a3
{
  v3 = a3;
  if (fetchSharedInstanceWithCompletion__onceToken != -1)
  {
    +[SHInsightsConfiguration fetchSharedInstanceWithCompletion:];
  }

  v4 = shcore_log_object();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_265F78000, v4, OS_LOG_TYPE_DEBUG, "Fetching insights configuration...", buf, 2u);
  }

  v5 = [fetchSharedInstanceWithCompletion__insights bagContract];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__SHInsightsConfiguration_fetchSharedInstanceWithCompletion___block_invoke_38;
  v7[3] = &unk_279BBEF58;
  v8 = v3;
  v6 = v3;
  [v5 loadBaseDictionary:v7];
}

uint64_t __61__SHInsightsConfiguration_fetchSharedInstanceWithCompletion___block_invoke()
{
  fetchSharedInstanceWithCompletion__insights = objc_alloc_init(SHInsightsConfiguration);

  return MEMORY[0x2821F96F8]();
}

void __61__SHInsightsConfiguration_fetchSharedInstanceWithCompletion___block_invoke_38(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = shcore_log_object();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&dword_265F78000, v4, OS_LOG_TYPE_DEBUG, "Failed to load insights configuration %@, using defaults", &v6, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();

  v5 = *MEMORY[0x277D85DE8];
}

+ (id)bagContract
{
  if (bagContract_onceToken != -1)
  {
    +[SHInsightsConfiguration bagContract];
  }

  v3 = bagContract_bagContract;

  return v3;
}

uint64_t __38__SHInsightsConfiguration_bagContract__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277D54E00]) initWithBaseDictionaryKey:@"shazam-insights" profile:@"Shazam" profileVersion:@"1"];
  v1 = bagContract_bagContract;
  bagContract_bagContract = v0;

  [bagContract_bagContract addBagKey:@"geocharts/minGeohashLength" defaultValue:&unk_2877A8848];
  [bagContract_bagContract addBagKey:@"geocharts/maxGeohashLength" defaultValue:&unk_2877A8860];
  [bagContract_bagContract addBagKey:@"targeting/updateInterval" defaultValue:&unk_2877A8878];
  v2 = MEMORY[0x277CBEC28];
  [bagContract_bagContract addBagKey:@"targeting/enabled" defaultValue:MEMORY[0x277CBEC28]];
  [bagContract_bagContract addBagKey:@"artists/maxAgeInSeconds" defaultValue:&unk_2877A8878];
  v3 = bagContract_bagContract;

  return [v3 addBagKey:@"artists/enabled" defaultValue:v2];
}

- (SHInsightsConfiguration)init
{
  v6.receiver = self;
  v6.super_class = SHInsightsConfiguration;
  v2 = [(SHInsightsConfiguration *)&v6 init];
  if (v2)
  {
    v3 = [objc_opt_class() bagContract];
    bagContract = v2->_bagContract;
    v2->_bagContract = v3;
  }

  return v2;
}

- (SHInsightsConfiguration)initWithBagContract:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SHInsightsConfiguration;
  v6 = [(SHInsightsConfiguration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bagContract, a3);
  }

  return v7;
}

- (void)tracksCachedDataMaxAgeWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(SHInsightsConfiguration *)self bagContract];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__SHInsightsConfiguration_tracksCachedDataMaxAgeWithCompletionHandler___block_invoke;
  v7[3] = &unk_279BBEF80;
  v8 = v4;
  v6 = v4;
  [v5 doubleBackedByStringForKey:@"targeting/updateInterval" completionHandler:v7];
}

- (void)tracksEnabledWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(SHInsightsConfiguration *)self bagContract];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__SHInsightsConfiguration_tracksEnabledWithCompletionHandler___block_invoke;
  v7[3] = &unk_279BBEFA8;
  v8 = v4;
  v6 = v4;
  [v5 BOOLeanBackedByStringForKey:@"targeting/enabled" completionHandler:v7];
}

- (void)tracksClusterEndpointForStorefront:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __80__SHInsightsConfiguration_tracksClusterEndpointForStorefront_completionHandler___block_invoke;
  v10[3] = &unk_279BBEFD0;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(SHInsightsConfiguration *)self tokenizedURLForBagPathKey:@"targeting/path" completionHandler:v10];
}

void __80__SHInsightsConfiguration_tracksClusterEndpointForStorefront_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (v3)
  {
    [v3 updateToken:3 withValue:*(a1 + 32)];
    v4 = *(a1 + 40);
    v5 = [v6 URLRepresentation];
    (*(v4 + 16))(v4, v5, 0);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)artistsCachedDataMaxAgeWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(SHInsightsConfiguration *)self bagContract];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__SHInsightsConfiguration_artistsCachedDataMaxAgeWithCompletionHandler___block_invoke;
  v7[3] = &unk_279BBEF80;
  v8 = v4;
  v6 = v4;
  [v5 doubleBackedByStringForKey:@"artists/maxAgeInSeconds" completionHandler:v7];
}

- (void)artistsEnabledWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(SHInsightsConfiguration *)self bagContract];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__SHInsightsConfiguration_artistsEnabledWithCompletionHandler___block_invoke;
  v7[3] = &unk_279BBEFA8;
  v8 = v4;
  v6 = v4;
  [v5 BOOLeanBackedByStringForKey:@"artists/enabled" completionHandler:v7];
}

- (void)artistsClusterEndpointWithCompletionHandler:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __71__SHInsightsConfiguration_artistsClusterEndpointWithCompletionHandler___block_invoke;
  v6[3] = &unk_279BBEFF8;
  v7 = v4;
  v5 = v4;
  [(SHInsightsConfiguration *)self tokenizedURLForBagPathKey:@"artists/path" completionHandler:v6];
}

void __71__SHInsightsConfiguration_artistsClusterEndpointWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 URLRepresentation];
  (*(v4 + 16))(v4, v6, v5);
}

- (void)geoChartsEndpointForDate:(id)a3 geoHash:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __78__SHInsightsConfiguration_geoChartsEndpointForDate_geoHash_completionHandler___block_invoke;
  v14[3] = &unk_279BBF020;
  v14[4] = self;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v11 = v9;
  v12 = v8;
  v13 = v10;
  [(SHInsightsConfiguration *)self tokenizedURLForBagPathKey:@"geocharts/path" completionHandler:v14];
}

void __78__SHInsightsConfiguration_geoChartsEndpointForDate_geoHash_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 56);
  if (a2)
  {
    v5 = [*(a1 + 32) fillInTokenizedURL:a2 date:*(a1 + 40) geoHash:*(a1 + 48)];
    (*(v2 + 16))(v2, v5, 0);
  }

  else
  {
    v3 = *(v2 + 16);
    v4 = *(a1 + 56);

    v3(v4);
  }
}

- (id)fillInTokenizedURL:(id)a3 date:(id)a4 geoHash:(id)a5
{
  v7 = MEMORY[0x277CBEA80];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v7 alloc];
  v12 = [v11 initWithCalendarIdentifier:*MEMORY[0x277CBE5D0]];
  v13 = [v12 components:8196 fromDate:v9];

  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", objc_msgSend(v13, "year")];
  [v10 updateToken:6 withValue:v14];

  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", objc_msgSend(v13, "weekOfYear")];
  [v10 updateToken:7 withValue:v15];

  [v10 updateToken:8 withValue:v8];
  v16 = [v10 URLRepresentation];

  return v16;
}

- (void)geoHashLengthsWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(SHInsightsConfiguration *)self bagContract];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__SHInsightsConfiguration_geoHashLengthsWithCompletionHandler___block_invoke;
  v7[3] = &unk_279BBF070;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 integerBackedByStringForKey:@"geocharts/minGeohashLength" completionHandler:v7];
}

void __63__SHInsightsConfiguration_geoHashLengthsWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) bagContract];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63__SHInsightsConfiguration_geoHashLengthsWithCompletionHandler___block_invoke_2;
  v8[3] = &unk_279BBF048;
  v10 = *(a1 + 40);
  v11 = a2;
  v9 = v5;
  v7 = v5;
  [v6 integerBackedByStringForKey:@"geocharts/maxGeohashLength" completionHandler:v8];
}

uint64_t __63__SHInsightsConfiguration_geoHashLengthsWithCompletionHandler___block_invoke_2(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1[4])
  {
    a3 = a1[4];
  }

  return (*(a1[5] + 16))(a1[5], a1[6], a2, a3);
}

- (void)tokenizedURLForBagPathKey:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SHInsightsConfiguration *)self bagContract];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __71__SHInsightsConfiguration_tokenizedURLForBagPathKey_completionHandler___block_invoke;
  v11[3] = &unk_279BBF0C0;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [v8 stringForKey:@"baseURL" withCompletionHandler:v11];
}

void __71__SHInsightsConfiguration_tokenizedURLForBagPathKey_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) bagContract];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__SHInsightsConfiguration_tokenizedURLForBagPathKey_completionHandler___block_invoke_2;
  v7[3] = &unk_279BBF098;
  v8 = v3;
  v5 = *(a1 + 40);
  v9 = *(a1 + 48);
  v6 = v3;
  [v4 stringForKey:v5 withCompletionHandler:v7];
}

void __71__SHInsightsConfiguration_tokenizedURLForBagPathKey_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v8 = v3;
  if (v3 && *(a1 + 32))
  {
    v5 = objc_alloc(MEMORY[0x277D54E30]);
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", *(a1 + 32), v8];
    v7 = [v5 initWithString:v6];
    (*(v4 + 16))(v4, v7, 0);
  }

  else
  {
    v6 = [SHInsightsError errorWithCode:200 underlyingError:0];
    (*(v4 + 16))(v4, 0, v6);
  }
}

@end