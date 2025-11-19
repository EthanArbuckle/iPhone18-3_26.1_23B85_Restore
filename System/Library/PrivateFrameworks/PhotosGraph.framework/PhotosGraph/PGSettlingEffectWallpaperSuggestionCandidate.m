@interface PGSettlingEffectWallpaperSuggestionCandidate
+ (id)sortDescriptorsForProcessing;
- (PGSettlingEffectWallpaperSuggestionCandidate)initWithAsset:(id)a3 suggestion:(id)a4;
@end

@implementation PGSettlingEffectWallpaperSuggestionCandidate

- (PGSettlingEffectWallpaperSuggestionCandidate)initWithAsset:(id)a3 suggestion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = PGSettlingEffectWallpaperSuggestionCandidate;
  v9 = [(PGSettlingEffectWallpaperSuggestionCandidate *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_asset, a3);
    v11 = [objc_alloc(MEMORY[0x277D3C828]) initWithAsset:v7 classification:5];
    cropResult = v10->_cropResult;
    v10->_cropResult = v11;

    objc_storeStrong(&v10->_suggestion, a4);
  }

  return v10;
}

+ (id)sortDescriptorsForProcessing
{
  v12[7] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"asset.mediaAnalysisProperties.activityScore" ascending:0];
  v3 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"asset.mediaAnalysisProperties.settlingEffectScore" ascending:{0, v2}];
  v12[1] = v3;
  v4 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"asset.mediaAnalysisProperties.autoplaySuggestionScore" ascending:0];
  v12[2] = v4;
  v5 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"asset.mediaAnalysisProperties.wallpaperScore" ascending:0];
  v12[3] = v5;
  v6 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"asset.favorite" ascending:0];
  v12[4] = v6;
  v7 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"asset.creationDate" ascending:0];
  v12[5] = v7;
  v8 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"asset.uuid" ascending:1];
  v12[6] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:7];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

@end