@interface PGStoryRecipeBuilder
+ (id)_appleSongAssetFromAppleMusicCuration:(id)a3;
+ (id)_keyFlexSongAssetFromFlexMusicCuration:(id)a3;
+ (id)_storyRecipeWithKeyAppleMusicSongAsset:(id)a3 keyFlexSongAsset:(id)a4 isAppleMusicSubscriber:(BOOL)a5 shouldAvoidColorGrading:(BOOL)a6;
@end

@implementation PGStoryRecipeBuilder

+ (id)_appleSongAssetFromAppleMusicCuration:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 keySongAdamID];
  if ([v4 length])
  {
    v5 = [v3 keySongArousal];
    v6 = [v3 keySongValence];
    v7 = v6;
    if (v5 && v6)
    {
      [v6 doubleValue];
      [v5 doubleValue];
      v8 = PFStoryColorGradeCategoryFromValenceArousal();
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v17 = v4;
        _os_log_error_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "[PGMemoryPhotosGraphProperties] Failed to assign color grade category for key apple music song (%@) because arousal and valence information was not available.", buf, 0xCu);
      }

      v8 = 0;
    }

    v10 = MEMORY[0x277D3B4F0];
    v11 = *MEMORY[0x277D3B5D0];
    v12 = [v3 keySongTitle];
    v13 = [v3 keySongArtist];
    v9 = [v10 createAssetWithCategory:1 subcategory:1 catalog:v11 songID:v4 title:v12 subtitle:v13 colorGradeCategory:v8];
  }

  else
  {
    v9 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)_keyFlexSongAssetFromFlexMusicCuration:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = [a3 bestSongSuggestions];
  v4 = [v3 firstObject];

  v5 = [v4 uid];
  if ([v5 length])
  {
    v31 = v5;
    v32 = v4;
    v6 = v4;
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v8 = [v6 tagIDs];
    v9 = [v8 countByEnumeratingWithState:&v33 objects:buf count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v34;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v34 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v33 + 1) + 8 * i) componentsSeparatedByString:@"_"];
          if ([v13 count] == 2)
          {
            v14 = [v13 objectAtIndexedSubscript:0];
            v15 = [v13 objectAtIndexedSubscript:1];
            [v7 setObject:v15 forKeyedSubscript:v14];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v33 objects:buf count:16];
      }

      while (v10);
    }

    v16 = [v7 objectForKeyedSubscript:@"Arousal"];
    v17 = [v7 objectForKeyedSubscript:@"Valence"];
    v18 = v17;
    if (v16 && v17)
    {
      [v17 doubleValue];
      [v16 doubleValue];
      v19 = PFStoryColorGradeCategoryFromValenceArousal();
      v5 = v31;
      v4 = v32;
    }

    else
    {
      v21 = [v7 objectForKeyedSubscript:@"Mood"];
      v5 = v31;
      if (!PHMemoryMoodForString() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v38 = v21;
        _os_log_error_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "[PGMemoryPhotosGraphProperties] unsupported Flex Mood tag '%@'", buf, 0xCu);
      }

      v4 = v32;
      v19 = PFStoryColorGradeCategoryNamed();
    }

    v22 = [v6 arousal];
    v23 = [v6 valence];
    v24 = v23;
    if ((!v22 || !v23) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v38 = v5;
      _os_log_error_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "[PGMemoryPhotosGraphProperties] Failed to assign proper color grade category for key flex song (%@) because arousal OR valence information was not available.", buf, 0xCu);
    }

    v25 = MEMORY[0x277D3B4F0];
    v26 = *MEMORY[0x277D3B5D8];
    v27 = [v6 songName];
    v28 = [v6 artistName];
    v20 = [v25 createAssetWithCategory:1 subcategory:1 catalog:v26 songID:v5 title:v27 subtitle:v28 colorGradeCategory:v19];
  }

  else
  {
    v20 = 0;
  }

  v29 = *MEMORY[0x277D85DE8];

  return v20;
}

+ (id)_storyRecipeWithKeyAppleMusicSongAsset:(id)a3 keyFlexSongAsset:(id)a4 isAppleMusicSubscriber:(BOOL)a5 shouldAvoidColorGrading:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v9 = a3;
  v10 = a4;
  v11 = *MEMORY[0x277D3B5D8];
  v12 = MEMORY[0x277D3B5D0];
  v13 = v11;
  if (v7)
  {
    v13 = *MEMORY[0x277D3B5D0];
  }

  v14 = [MEMORY[0x277D3B4E8] createRecipe];
  v15 = [v14 mutableCopyWithZone:0];

  v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (v9 && ([v15 addAsset:v9], objc_msgSend(v9, "identifier"), v17 = objc_claimAutoreleasedReturnValue(), v18 = *v12, objc_msgSend(v16, "setObject:forKeyedSubscript:", v17, v18), v17, v13 == v18))
  {
    v19 = [v9 colorGradeCategory];
    if (!v10)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v19 = 0;
    if (!v10)
    {
      goto LABEL_14;
    }
  }

  [v15 addAsset:v10];
  v20 = [v10 identifier];
  [v16 setObject:v20 forKeyedSubscript:v11];

  if (v13 == v11 || v19 == 0)
  {
    v22 = [v10 colorGradeCategory];

    v19 = v22;
  }

LABEL_14:
  v23 = [v16 copy];
  [v15 setSeedSongIdentifiersByCatalog:v23];

  v24 = [MEMORY[0x277D3B4F8] createStyleWithOriginalColorGradeCategory:v19 customColorGradeKind:v6 songAssetIdentifier:0 isCustomized:0];
  [v15 setCurrentStyle:v24];

  return v15;
}

@end