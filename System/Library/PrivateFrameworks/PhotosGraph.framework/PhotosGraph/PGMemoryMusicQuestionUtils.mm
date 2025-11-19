@interface PGMemoryMusicQuestionUtils
+ (id)extractKeySongInfoForMemory:(id)a3 isAppleMusicSubscriber:(BOOL)a4;
+ (id)extractStoryRecipeForMemory:(id)a3;
+ (void)enumerateMemoryMusicSuggestionsInPhotoLibrary:(id)a3 block:(id)a4;
@end

@implementation PGMemoryMusicQuestionUtils

+ (id)extractKeySongInfoForMemory:(id)a3 isAppleMusicSubscriber:(BOOL)a4
{
  v4 = a4;
  v43[4] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [a1 extractStoryRecipeForMemory:v6];
  v8 = v7;
  if (!v7)
  {
    v11 = PLStoryGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [v6 uuid];
      v32 = 138412290;
      v33 = v12;
      v13 = "[MusicQualityQuestion] Unable to extractStoryRecipeForMemory for PHMemory %@";
      v14 = v11;
      v15 = OS_LOG_TYPE_ERROR;
      goto LABEL_7;
    }

LABEL_8:
    v16 = MEMORY[0x277CBEC10];
    goto LABEL_21;
  }

  v9 = [v7 currentStyle];
  v10 = [v9 isCustomized];

  if (v10)
  {
    v11 = PLStoryGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = [v6 uuid];
      v32 = 138412290;
      v33 = v12;
      v13 = "[MusicQualityQuestion] PHMemory %@ has a customized recipie so don't use for PhotosChallenge.";
      v14 = v11;
      v15 = OS_LOG_TYPE_DEBUG;
LABEL_7:
      _os_log_impl(&dword_22F0FC000, v14, v15, v13, &v32, 0xCu);

      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v17 = *MEMORY[0x277D3B5D0];
  v11 = [v8 seedSongAssetForCatalog:*MEMORY[0x277D3B5D0]];
  v18 = *MEMORY[0x277D3B5D8];
  v19 = [v8 seedSongAssetForCatalog:*MEMORY[0x277D3B5D8]];
  v20 = v19;
  if (v4 && v11)
  {
    v42[0] = *MEMORY[0x277D3C970];
    v21 = [v11 identifier];
    v43[0] = v21;
    v42[1] = *MEMORY[0x277D3C978];
    v22 = [v11 title];
    v43[1] = v22;
    v42[2] = *MEMORY[0x277D3C960];
    v23 = [v11 subtitle];
    v42[3] = *MEMORY[0x277D3C968];
    v43[2] = v23;
    v43[3] = v17;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:4];

    v24 = PLStoryGetLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      v32 = 138412290;
      v33 = v16;
      v25 = "[MusicQualityQuestion] Using Apple Music key song %@";
LABEL_16:
      _os_log_impl(&dword_22F0FC000, v24, OS_LOG_TYPE_DEBUG, v25, &v32, 0xCu);
    }
  }

  else
  {
    if (!v19)
    {
      v24 = PLStoryGetLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v29 = [v6 uuid];
        v32 = 138413058;
        v33 = v29;
        v34 = 2112;
        v35 = 0;
        v36 = 2112;
        v37 = 0;
        v38 = 1024;
        v39 = v4;
        _os_log_impl(&dword_22F0FC000, v24, OS_LOG_TYPE_ERROR, "[MusicQualityQuestion] PHMemory %@: Unable to get songInfo. \n keySongFlexMusic=%@ keySongFlexMusic=%@ _isAppleMusicSubscriber=%d", &v32, 0x26u);
      }

      v16 = MEMORY[0x277CBEC10];
      goto LABEL_20;
    }

    v40[0] = *MEMORY[0x277D3C970];
    v26 = [v19 identifier];
    v41[0] = v26;
    v40[1] = *MEMORY[0x277D3C978];
    v27 = [v20 title];
    v41[1] = v27;
    v40[2] = *MEMORY[0x277D3C960];
    v28 = [v20 subtitle];
    v40[3] = *MEMORY[0x277D3C968];
    v41[2] = v28;
    v41[3] = v18;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:4];

    v24 = PLStoryGetLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      v32 = 138412290;
      v33 = v16;
      v25 = "[MusicQualityQuestion] Using BCE key song %@";
      goto LABEL_16;
    }
  }

LABEL_20:

LABEL_21:
  v30 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (id)extractStoryRecipeForMemory:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 photosGraphProperties];
  v5 = [v4 objectForKeyedSubscript:@"storyRecipeData"];

  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277D3B500]);
    v14 = 0;
    v7 = [v6 unarchivedRecipeWithData:v5 error:&v14];
    v8 = v14;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v11 = PLStoryGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v16 = v3;
        v17 = 2112;
        v18 = v8;
        _os_log_impl(&dword_22F0FC000, v11, OS_LOG_TYPE_ERROR, "[MusicQualityQuestion] Failed to unarchive recipe for %@: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v6 = PLStoryGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v10 = [v3 uuid];
      *buf = 138412290;
      v16 = v10;
      _os_log_impl(&dword_22F0FC000, v6, OS_LOG_TYPE_ERROR, "[MusicQualityQuestion] Unable to extract the StoryRecipeData for memory uuid=%@", buf, 0xCu);
    }

    v7 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (void)enumerateMemoryMusicSuggestionsInPhotoLibrary:(id)a3 block:(id)a4
{
  v27[3] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [a3 librarySpecificFetchOptions];
  v7 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"score" ascending:1];
  v27[0] = v7;
  v8 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:0];
  v27[1] = v8;
  v9 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"objectID" ascending:0];
  v27[2] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:3];
  [v6 setSortDescriptors:v10];

  v11 = [MEMORY[0x277CBEAA8] date];
  v12 = [v11 dateByAddingTimeInterval:-31557600.0];

  v13 = [MEMORY[0x277CCAC30] predicateWithFormat:@"creationDate >= %@", v12];
  [v6 setPredicate:v13];

  v14 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:4 subtype:0x7FFFFFFFFFFFFFFFLL options:v6];
  if ([v14 count])
  {
    v25 = 0;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v15 = v14;
    v16 = [v15 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v22;
LABEL_4:
      v19 = 0;
      while (1)
      {
        if (*v22 != v18)
        {
          objc_enumerationMutation(v15);
        }

        if (v25)
        {
          break;
        }

        (*(v5 + 2))(v5, *(*(&v21 + 1) + 8 * v19++), 0, &v25);
        if (v17 == v19)
        {
          v17 = [v15 countByEnumeratingWithState:&v21 objects:v26 count:16];
          if (v17)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

@end