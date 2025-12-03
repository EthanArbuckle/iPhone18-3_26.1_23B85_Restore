@interface PGStoryRecipeBuilder
+ (id)_appleSongAssetFromAppleMusicCuration:(id)curation;
+ (id)_keyFlexSongAssetFromFlexMusicCuration:(id)curation;
+ (id)_storyRecipeWithKeyAppleMusicSongAsset:(id)asset keyFlexSongAsset:(id)songAsset isAppleMusicSubscriber:(BOOL)subscriber shouldAvoidColorGrading:(BOOL)grading;
@end

@implementation PGStoryRecipeBuilder

+ (id)_appleSongAssetFromAppleMusicCuration:(id)curation
{
  v18 = *MEMORY[0x277D85DE8];
  curationCopy = curation;
  keySongAdamID = [curationCopy keySongAdamID];
  if ([keySongAdamID length])
  {
    keySongArousal = [curationCopy keySongArousal];
    keySongValence = [curationCopy keySongValence];
    v7 = keySongValence;
    if (keySongArousal && keySongValence)
    {
      [keySongValence doubleValue];
      [keySongArousal doubleValue];
      v8 = PFStoryColorGradeCategoryFromValenceArousal();
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v17 = keySongAdamID;
        _os_log_error_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "[PGMemoryPhotosGraphProperties] Failed to assign color grade category for key apple music song (%@) because arousal and valence information was not available.", buf, 0xCu);
      }

      v8 = 0;
    }

    v10 = MEMORY[0x277D3B4F0];
    v11 = *MEMORY[0x277D3B5D0];
    keySongTitle = [curationCopy keySongTitle];
    keySongArtist = [curationCopy keySongArtist];
    v9 = [v10 createAssetWithCategory:1 subcategory:1 catalog:v11 songID:keySongAdamID title:keySongTitle subtitle:keySongArtist colorGradeCategory:v8];
  }

  else
  {
    v9 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)_keyFlexSongAssetFromFlexMusicCuration:(id)curation
{
  v39 = *MEMORY[0x277D85DE8];
  bestSongSuggestions = [curation bestSongSuggestions];
  firstObject = [bestSongSuggestions firstObject];

  v5 = [firstObject uid];
  if ([v5 length])
  {
    v31 = v5;
    v32 = firstObject;
    v6 = firstObject;
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    tagIDs = [v6 tagIDs];
    v9 = [tagIDs countByEnumeratingWithState:&v33 objects:buf count:16];
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
            objc_enumerationMutation(tagIDs);
          }

          v13 = [*(*(&v33 + 1) + 8 * i) componentsSeparatedByString:@"_"];
          if ([v13 count] == 2)
          {
            v14 = [v13 objectAtIndexedSubscript:0];
            v15 = [v13 objectAtIndexedSubscript:1];
            [v7 setObject:v15 forKeyedSubscript:v14];
          }
        }

        v10 = [tagIDs countByEnumeratingWithState:&v33 objects:buf count:16];
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
      firstObject = v32;
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

      firstObject = v32;
      v19 = PFStoryColorGradeCategoryNamed();
    }

    arousal = [v6 arousal];
    valence = [v6 valence];
    v24 = valence;
    if ((!arousal || !valence) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v38 = v5;
      _os_log_error_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "[PGMemoryPhotosGraphProperties] Failed to assign proper color grade category for key flex song (%@) because arousal OR valence information was not available.", buf, 0xCu);
    }

    v25 = MEMORY[0x277D3B4F0];
    v26 = *MEMORY[0x277D3B5D8];
    songName = [v6 songName];
    artistName = [v6 artistName];
    v20 = [v25 createAssetWithCategory:1 subcategory:1 catalog:v26 songID:v5 title:songName subtitle:artistName colorGradeCategory:v19];
  }

  else
  {
    v20 = 0;
  }

  v29 = *MEMORY[0x277D85DE8];

  return v20;
}

+ (id)_storyRecipeWithKeyAppleMusicSongAsset:(id)asset keyFlexSongAsset:(id)songAsset isAppleMusicSubscriber:(BOOL)subscriber shouldAvoidColorGrading:(BOOL)grading
{
  gradingCopy = grading;
  subscriberCopy = subscriber;
  assetCopy = asset;
  songAssetCopy = songAsset;
  v11 = *MEMORY[0x277D3B5D8];
  v12 = MEMORY[0x277D3B5D0];
  v13 = v11;
  if (subscriberCopy)
  {
    v13 = *MEMORY[0x277D3B5D0];
  }

  createRecipe = [MEMORY[0x277D3B4E8] createRecipe];
  v15 = [createRecipe mutableCopyWithZone:0];

  v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (assetCopy && ([v15 addAsset:assetCopy], objc_msgSend(assetCopy, "identifier"), v17 = objc_claimAutoreleasedReturnValue(), v18 = *v12, objc_msgSend(v16, "setObject:forKeyedSubscript:", v17, v18), v17, v13 == v18))
  {
    colorGradeCategory = [assetCopy colorGradeCategory];
    if (!songAssetCopy)
    {
      goto LABEL_14;
    }
  }

  else
  {
    colorGradeCategory = 0;
    if (!songAssetCopy)
    {
      goto LABEL_14;
    }
  }

  [v15 addAsset:songAssetCopy];
  identifier = [songAssetCopy identifier];
  [v16 setObject:identifier forKeyedSubscript:v11];

  if (v13 == v11 || colorGradeCategory == 0)
  {
    colorGradeCategory2 = [songAssetCopy colorGradeCategory];

    colorGradeCategory = colorGradeCategory2;
  }

LABEL_14:
  v23 = [v16 copy];
  [v15 setSeedSongIdentifiersByCatalog:v23];

  v24 = [MEMORY[0x277D3B4F8] createStyleWithOriginalColorGradeCategory:colorGradeCategory customColorGradeKind:gradingCopy songAssetIdentifier:0 isCustomized:0];
  [v15 setCurrentStyle:v24];

  return v15;
}

@end