@interface PGMemoryMusicQuestionUtils
+ (id)extractKeySongInfoForMemory:(id)memory isAppleMusicSubscriber:(BOOL)subscriber;
+ (id)extractStoryRecipeForMemory:(id)memory;
+ (void)enumerateMemoryMusicSuggestionsInPhotoLibrary:(id)library block:(id)block;
@end

@implementation PGMemoryMusicQuestionUtils

+ (id)extractKeySongInfoForMemory:(id)memory isAppleMusicSubscriber:(BOOL)subscriber
{
  subscriberCopy = subscriber;
  v43[4] = *MEMORY[0x277D85DE8];
  memoryCopy = memory;
  v7 = [self extractStoryRecipeForMemory:memoryCopy];
  v8 = v7;
  if (!v7)
  {
    v11 = PLStoryGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      uuid = [memoryCopy uuid];
      v32 = 138412290;
      v33 = uuid;
      v13 = "[MusicQualityQuestion] Unable to extractStoryRecipeForMemory for PHMemory %@";
      v14 = v11;
      v15 = OS_LOG_TYPE_ERROR;
      goto LABEL_7;
    }

LABEL_8:
    v16 = MEMORY[0x277CBEC10];
    goto LABEL_21;
  }

  currentStyle = [v7 currentStyle];
  isCustomized = [currentStyle isCustomized];

  if (isCustomized)
  {
    v11 = PLStoryGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      uuid = [memoryCopy uuid];
      v32 = 138412290;
      v33 = uuid;
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
  if (subscriberCopy && v11)
  {
    v42[0] = *MEMORY[0x277D3C970];
    identifier = [v11 identifier];
    v43[0] = identifier;
    v42[1] = *MEMORY[0x277D3C978];
    title = [v11 title];
    v43[1] = title;
    v42[2] = *MEMORY[0x277D3C960];
    subtitle = [v11 subtitle];
    v42[3] = *MEMORY[0x277D3C968];
    v43[2] = subtitle;
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
        uuid2 = [memoryCopy uuid];
        v32 = 138413058;
        v33 = uuid2;
        v34 = 2112;
        v35 = 0;
        v36 = 2112;
        v37 = 0;
        v38 = 1024;
        v39 = subscriberCopy;
        _os_log_impl(&dword_22F0FC000, v24, OS_LOG_TYPE_ERROR, "[MusicQualityQuestion] PHMemory %@: Unable to get songInfo. \n keySongFlexMusic=%@ keySongFlexMusic=%@ _isAppleMusicSubscriber=%d", &v32, 0x26u);
      }

      v16 = MEMORY[0x277CBEC10];
      goto LABEL_20;
    }

    v40[0] = *MEMORY[0x277D3C970];
    identifier2 = [v19 identifier];
    v41[0] = identifier2;
    v40[1] = *MEMORY[0x277D3C978];
    title2 = [v20 title];
    v41[1] = title2;
    v40[2] = *MEMORY[0x277D3C960];
    subtitle2 = [v20 subtitle];
    v40[3] = *MEMORY[0x277D3C968];
    v41[2] = subtitle2;
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

+ (id)extractStoryRecipeForMemory:(id)memory
{
  v19 = *MEMORY[0x277D85DE8];
  memoryCopy = memory;
  photosGraphProperties = [memoryCopy photosGraphProperties];
  v5 = [photosGraphProperties objectForKeyedSubscript:@"storyRecipeData"];

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
        v16 = memoryCopy;
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
      uuid = [memoryCopy uuid];
      *buf = 138412290;
      v16 = uuid;
      _os_log_impl(&dword_22F0FC000, v6, OS_LOG_TYPE_ERROR, "[MusicQualityQuestion] Unable to extract the StoryRecipeData for memory uuid=%@", buf, 0xCu);
    }

    v7 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (void)enumerateMemoryMusicSuggestionsInPhotoLibrary:(id)library block:(id)block
{
  v27[3] = *MEMORY[0x277D85DE8];
  blockCopy = block;
  librarySpecificFetchOptions = [library librarySpecificFetchOptions];
  v7 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"score" ascending:1];
  v27[0] = v7;
  v8 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:0];
  v27[1] = v8;
  v9 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"objectID" ascending:0];
  v27[2] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:3];
  [librarySpecificFetchOptions setSortDescriptors:v10];

  date = [MEMORY[0x277CBEAA8] date];
  v12 = [date dateByAddingTimeInterval:-31557600.0];

  v13 = [MEMORY[0x277CCAC30] predicateWithFormat:@"creationDate >= %@", v12];
  [librarySpecificFetchOptions setPredicate:v13];

  v14 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:4 subtype:0x7FFFFFFFFFFFFFFFLL options:librarySpecificFetchOptions];
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

        (*(blockCopy + 2))(blockCopy, *(*(&v21 + 1) + 8 * v19++), 0, &v25);
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