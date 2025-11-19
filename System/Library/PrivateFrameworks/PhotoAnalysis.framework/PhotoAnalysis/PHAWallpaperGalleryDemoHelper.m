@interface PHAWallpaperGalleryDemoHelper
+ (id)_sampleDemoConifg;
+ (id)_shuffleConfig;
+ (id)_suggestedPhotoConfig;
- (PHAWallpaperGalleryDemoHelper)initWithPhotoLibrary:(id)a3 loggingConnection:(id)a4;
- (id)_demoShuffleDescriptors;
- (id)_demoSuggestedPhotoDescriptors;
- (id)_descriptorConfigsFromDictionaries:(id)a3;
- (id)_fetchWallpaperSuggestionWithKeyAssetUUID:(id)a3;
- (id)demoDescriptors;
@end

@implementation PHAWallpaperGalleryDemoHelper

- (id)_fetchWallpaperSuggestionWithKeyAssetUUID:(id)a3
{
  v18[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277CD97A8];
  v18[0] = v4;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  v7 = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  v8 = [v5 fetchAssetsWithUUIDs:v6 options:v7];
  v9 = [v8 firstObject];

  if (v9)
  {
    v10 = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
    v11 = [MEMORY[0x277CD99E0] predicateForAllTopWallpaperSuggestions];
    [v10 setPredicate:v11];

    v12 = [MEMORY[0x277CD99E0] fetchAssetCollectionsContainingAsset:v9 withType:8 options:v10];
    v13 = [v12 firstObject];
  }

  else
  {
    loggingConnection = self->_loggingConnection;
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEBUG))
    {
      v16 = 138412290;
      v17 = v4;
      _os_log_debug_impl(&dword_22FA28000, loggingConnection, OS_LOG_TYPE_DEBUG, "[PHAWallpaperGalleryDemoHelper] cannot find asset: %@", &v16, 0xCu);
    }

    v13 = 0;
  }

  return v13;
}

- (id)_descriptorConfigsFromDictionaries:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [[PHAWallpaperDemoDescriptorConfig alloc] initWithDictionary:v11];
        if (v12)
        {
          [v5 addObject:v12];
        }

        else
        {
          loggingConnection = self->_loggingConnection;
          if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v20 = v11;
            _os_log_debug_impl(&dword_22FA28000, loggingConnection, OS_LOG_TYPE_DEBUG, "[PHAWallpaperGalleryDemoHelper] failed to create descriptor config from: %@", buf, 0xCu);
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)_demoShuffleDescriptors
{
  v23[1] = *MEMORY[0x277D85DE8];
  v3 = [(NSDictionary *)self->_config objectForKeyedSubscript:@"Shuffle"];
  if ([v3 count])
  {
    v21 = [[PHAWallpaperShuffleDescriptorGenerator alloc] initWithPhotoLibrary:self->_photoLibrary loggingConnection:self->_loggingConnection];
    v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v20 = v3;
    v4 = [(PHAWallpaperGalleryDemoHelper *)self _descriptorConfigsFromDictionaries:v3];
    if ([v4 count])
    {
      v5 = 0;
      do
      {
        v6 = [v4 objectAtIndexedSubscript:v5];
        v7 = [v6 assetUUID];
        v8 = [(PHAWallpaperGalleryDemoHelper *)self _fetchWallpaperSuggestionWithKeyAssetUUID:v7];

        if (v8)
        {
          v9 = objc_alloc(MEMORY[0x277CBEB18]);
          v23[0] = v8;
          v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
          v11 = [v9 initWithArray:v10];

          v12 = [(PHAWallpaperShuffleDescriptorGenerator *)v21 descriptorForSuggestion:v11];
          v13 = MEMORY[0x277CCACA8];
          v14 = [MEMORY[0x277D3B498] descriptorTypeStringWithType:2];
          v15 = [v8 uuid];
          v16 = [v13 stringWithFormat:@"%@|%d|%@", v14, v5, v15];
          [v12 setIdentifier:v16];

          v17 = [v6 titleKey];

          if (v17)
          {
            v18 = [v6 titleKey];
            [v12 setDisplayNameLocalizationKey:v18];
          }

          [v22 addObject:v12];
        }

        ++v5;
      }

      while ([v4 count] > v5);
    }

    v3 = v20;
  }

  else
  {
    v22 = MEMORY[0x277CBEBF8];
  }

  return v22;
}

- (id)_demoSuggestedPhotoDescriptors
{
  v2 = self;
  v30[1] = *MEMORY[0x277D85DE8];
  v3 = [(NSDictionary *)self->_config objectForKeyedSubscript:@"SuggestedPhoto"];
  if ([v3 count])
  {
    v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v25 = v3;
    v4 = [(PHAWallpaperGalleryDemoHelper *)v2 _descriptorConfigsFromDictionaries:v3];
    if ([v4 count])
    {
      v5 = 0;
      v26 = v4;
      v27 = v2;
      do
      {
        v6 = [v4 objectAtIndexedSubscript:v5];
        v7 = [v6 assetUUID];
        v8 = [(PHAWallpaperGalleryDemoHelper *)v2 _fetchWallpaperSuggestionWithKeyAssetUUID:v7];
        if (v8)
        {
          v9 = objc_alloc(MEMORY[0x277D3B4A8]);
          v10 = [v8 uuid];
          v11 = [v9 initWithAssetUUID:v7 suggestionUUID:v10 suggestionSubtype:{objc_msgSend(v8, "subtype")}];

          if ([v8 availableFeatures])
          {
            v12 = 3;
          }

          else
          {
            v12 = 1;
          }

          if (([v8 availableFeatures] & 8) != 0)
          {
            v13 = 5;
          }

          else
          {
            v13 = v12;
          }

          v14 = objc_alloc(MEMORY[0x277D3B498]);
          v30[0] = v11;
          v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];
          v16 = [v14 initWithDescriptorType:v13 media:v15];

          v17 = MEMORY[0x277D3B498];
          v18 = [v8 uuid];
          v29 = v18;
          v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
          v20 = [v17 descriptorIdentifierForDescriptorType:v13 uuids:v19];

          v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d-%@", v5, v20];
          [v16 setIdentifier:v21];

          v22 = [v6 styleCategory];

          if (v22)
          {
            v23 = [v6 styleCategory];
            [v16 setStyleCategory:v23];
          }

          [v28 addObject:v16];

          v4 = v26;
          v2 = v27;
        }

        ++v5;
      }

      while ([v4 count] > v5);
    }

    v3 = v25;
  }

  else
  {
    v28 = MEMORY[0x277CBEBF8];
  }

  return v28;
}

- (id)demoDescriptors
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [(PHAWallpaperGalleryDemoHelper *)self _demoSuggestedPhotoDescriptors];
  [v3 addObjectsFromArray:v4];

  v5 = [(PHAWallpaperGalleryDemoHelper *)self _demoShuffleDescriptors];
  [v3 addObjectsFromArray:v5];

  return v3;
}

- (PHAWallpaperGalleryDemoHelper)initWithPhotoLibrary:(id)a3 loggingConnection:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = PHAWallpaperGalleryDemoHelper;
  v9 = [(PHAWallpaperGalleryDemoHelper *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_photoLibrary, a3);
    objc_storeStrong(&v10->_loggingConnection, a4);
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:@"/var/mobile/Media/PhotoData/Configuration/WallpaperDemo/DemoConfig.plist"];
    config = v10->_config;
    v10->_config = v11;
  }

  return v10;
}

+ (id)_shuffleConfig
{
  v16[4] = *MEMORY[0x277D85DE8];
  v14[0] = @"AssetUUID";
  v14[1] = @"TitleKey";
  v15[0] = @"929100F2-8AA2-413B-AB24-423FAB866205";
  v15[1] = @"PHOTOS_WALLPAPER_DESCRIPTOR_TITLE_SMART_ALBUM";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
  v16[0] = v2;
  v12[0] = @"AssetUUID";
  v12[1] = @"TitleKey";
  v13[0] = @"1F4DE92C-1EF8-48C3-A95B-C4ED8B948E45";
  v13[1] = @"PHOTOS_WALLPAPER_DESCRIPTOR_TITLE_SMART_ALBUM_LANDSCAPE";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v16[1] = v3;
  v10[0] = @"AssetUUID";
  v10[1] = @"TitleKey";
  v11[0] = @"E738E8EA-BE67-4778-AF34-1ECAE5DCBD9F";
  v11[1] = @"PHOTOS_WALLPAPER_DESCRIPTOR_TITLE_SMART_ALBUM_PETS";
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v16[2] = v4;
  v8[0] = @"AssetUUID";
  v8[1] = @"TitleKey";
  v9[0] = @"0BA9BF90-A38D-47C0-AE23-BBAD20105270";
  v9[1] = @"PHOTOS_WALLPAPER_DESCRIPTOR_TITLE_SMART_ALBUM_PEOPLE";
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];
  v16[3] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:4];

  return v6;
}

+ (id)_suggestedPhotoConfig
{
  v19[5] = *MEMORY[0x277D85DE8];
  v17[0] = @"AssetUUID";
  v17[1] = @"StyleCategory";
  v18[0] = @"D85F0B18-CCF8-4D5D-AF4C-67572C1A21C5";
  v18[1] = @"BlackWhite";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
  v19[0] = v2;
  v15[0] = @"AssetUUID";
  v15[1] = @"StyleCategory";
  v16[0] = @"A8E7E0F1-9836-403B-A66B-47825D57055A";
  v16[1] = @"TrueColors";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
  v19[1] = v3;
  v13[0] = @"AssetUUID";
  v13[1] = @"StyleCategory";
  v14[0] = @"ABB4B8CB-5385-4527-B975-6B2332F16D4E";
  v14[1] = @"BlackWhite";
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v19[2] = v4;
  v11[0] = @"AssetUUID";
  v11[1] = @"StyleCategory";
  v12[0] = @"A198882A-8571-4A6E-818D-FC692555C6EF";
  v12[1] = @"TrueColors";
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v19[3] = v5;
  v9[0] = @"AssetUUID";
  v9[1] = @"StyleCategory";
  v10[0] = @"FF09A649-221A-45AD-9BB0-D9976CF0C0BC";
  v10[1] = @"TrueColors";
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];
  v19[4] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:5];

  return v7;
}

+ (id)_sampleDemoConifg
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"SuggestedPhoto";
  v3 = [a1 _suggestedPhotoConfig];
  v7[1] = @"Shuffle";
  v8[0] = v3;
  v4 = [a1 _shuffleConfig];
  v8[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

@end