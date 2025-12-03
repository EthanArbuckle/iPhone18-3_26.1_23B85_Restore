@interface PGMusicWrapper
+ (BOOL)cacheRemoveAllForPhotoLibrary:(id)library error:(id *)error;
+ (id)_expandTopicKeywordsDictionary:(id)dictionary;
+ (id)_musicCurationFeaturesWithFeatureExtractionContext:(id)context assetFetchResult:(id)result graphManager:(id)manager progressReporter:(id)reporter error:(id *)error;
+ (id)_musicCurationFeaturesWithFeatureExtractionContext:(id)context memory:(id)memory graphManager:(id)manager progressReporter:(id)reporter error:(id *)error;
+ (id)appleMusicCurationWithOptions:(id)options graphManager:(id)manager progressReporter:(id)reporter error:(id *)error;
+ (id)cacheStatusWithPhotoLibrary:(id)library error:(id *)error;
+ (id)flexMusicCurationWithOptions:(id)options graphManager:(id)manager progressReporter:(id)reporter error:(id *)error;
+ (id)generateFlexMusicCurationDebugInformationForAssetCollection:(id)collection graphManager:(id)manager progressReporter:(id)reporter error:(id *)error;
+ (id)generateMusicCurationDebugInformationForAssetCollection:(id)collection graphManager:(id)manager progressReporter:(id)reporter error:(id *)error;
+ (id)generateMusicCurationDebugInformationForSongWithAdamID:(id)d graphManager:(id)manager progressReporter:(id)reporter error:(id *)error;
+ (void)fetchSongDisplayMetadataJSONForAdamIDs:(id)ds inflationContext:(id)context progressReporter:(id)reporter completionHandler:(id)handler;
+ (void)fetchSongMetadataJSONForAdamIDs:(id)ds options:(id)options inflationContext:(id)context progressReporter:(id)reporter completionHandler:(id)handler;
+ (void)requestFlexMusicCurationForAssetCollection:(id)collection curationOptions:(id)options graphManager:(id)manager reply:(id)reply;
+ (void)requestFlexMusicCurationForAssetFetchResult:(id)result curationOptions:(id)options graphManager:(id)manager reply:(id)reply;
+ (void)requestFlexMusicCurationWithCurationOptions:(id)options graphManager:(id)manager reply:(id)reply;
+ (void)requestMaestroSongsWithOptions:(id)options graphManager:(id)manager reply:(id)reply;
+ (void)requestMusicCurationForAssetCollection:(id)collection curationOptions:(id)options graphManager:(id)manager reply:(id)reply;
+ (void)requestMusicCurationForAssetFetchResult:(id)result curationOptions:(id)options graphManager:(id)manager reply:(id)reply;
+ (void)requestMusicCurationWithCurationOptions:(id)options graphManager:(id)manager reply:(id)reply;
+ (void)requestRecentlyUsedSongsWithOptions:(id)options graphManager:(id)manager reply:(id)reply;
@end

@implementation PGMusicWrapper

+ (id)flexMusicCurationWithOptions:(id)options graphManager:(id)manager progressReporter:(id)reporter error:(id *)error
{
  v105 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  managerCopy = manager;
  reporterCopy = reporter;
  topicKeywordsAndWeights = [optionsCopy topicKeywordsAndWeights];
  v14 = topicKeywordsAndWeights;
  if (topicKeywordsAndWeights && [topicKeywordsAndWeights count])
  {
    v97 = 0;
    v15 = [managerCopy musicCuratorContextWithCurationOptions:optionsCopy error:&v97];
    v16 = v97;
    if (!v15)
    {
      v41 = +[PGLogging sharedLogging];
      loggingConnection = [v41 loggingConnection];

      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v100 = v16;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Flex Music curation with options failed when creating curator context, error: %@", buf, 0xCu);
      }

      if (error)
      {
        v43 = v16;
        v40 = 0;
        *error = v16;
      }

      else
      {
        v40 = 0;
      }

      goto LABEL_61;
    }

    v17 = [self _expandTopicKeywordsDictionary:v14];
    v18 = [objc_opt_class() flexMusicFeatureExtractionContextWithCuratorContext:v15];
    v91 = v17;
    v19 = [[PGKeywordBasedFeatureExtractor alloc] initWithWeightByKeyword:v17];
    v20 = [reporterCopy childProgressReporterFromStart:0.0 toEnd:0.2];
    v96 = 0;
    v89 = v19;
    v90 = v18;
    v21 = [(PGKeywordBasedFeatureExtractor *)v19 musicCurationFeaturesWithContext:v18 progressReporter:v20 error:&v96];
    v93 = v96;

    if (!v21)
    {
      v44 = +[PGLogging sharedLogging];
      loggingConnection2 = [v44 loggingConnection];

      if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v100 = v93;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Flex Music option-based curation failed to extract features with error: %@", buf, 0xCu);
      }

      v40 = 0;
      if (error)
      {
        *error = v93;
      }

      goto LABEL_60;
    }

    v80 = v21;
    photoLibrary = [managerCopy photoLibrary];
    v23 = [PGMusicCurationRecentlyUsedSongs recentlyUsedFlexMusicSongsFromPhotoLibrary:photoLibrary];

    recentlyUsedBundledSongIDs = [optionsCopy recentlyUsedBundledSongIDs];
    date = [MEMORY[0x277CBEAA8] date];
    v83 = v23;
    [v23 addSongIDs:recentlyUsedBundledSongIDs date:date];

    suggestedMood = [optionsCopy suggestedMood];
    v94 = &stru_2843F5C58;
    v84 = v15;
    v82 = v16;
    if ([optionsCopy shouldUseSpecificationOptionsForCuration])
    {
      v26 = +[PGLogging sharedLogging];
      loggingConnection3 = [v26 loggingConnection];

      if (os_log_type_enabled(loggingConnection3, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22F0FC000, loggingConnection3, OS_LOG_TYPE_INFO, "[MemoriesMusic] Using specification options for flex", buf, 2u);
      }

      musicCurationSpecificationOptions = [optionsCopy musicCurationSpecificationOptions];
      genres = [musicCurationSpecificationOptions genres];
      firstObject = [genres firstObject];
      v31 = firstObject;
      v32 = &stru_2843F5C58;
      if (firstObject)
      {
        v32 = firstObject;
      }

      v94 = v32;

      phMoods = [musicCurationSpecificationOptions phMoods];
      v34 = phMoods;
      v21 = v80;
      if (phMoods && [phMoods count])
      {
        firstObject2 = [v34 firstObject];
        suggestedMood = [PGMusicCurationSpecificationOptions PHMemoryMoodFromNumber:firstObject2];
      }

      moodsText = [musicCurationSpecificationOptions moodsText];
      v37 = [moodsText count];

      if (v37)
      {
        moodsText2 = [musicCurationSpecificationOptions moodsText];
      }

      else
      {
        moodsText2 = MEMORY[0x277CBEBF8];
      }

      weightByLanguage = [musicCurationSpecificationOptions weightByLanguage];
      v47 = [weightByLanguage count];

      if (v47)
      {
        weightByLanguage2 = [musicCurationSpecificationOptions weightByLanguage];
      }

      else
      {
        weightByLanguage2 = MEMORY[0x277CBEC10];
      }

      weightByRegion = [musicCurationSpecificationOptions weightByRegion];
      v49 = [weightByRegion count];

      if (v49)
      {
        weightByRegion2 = [musicCurationSpecificationOptions weightByRegion];
      }

      else
      {
        weightByRegion2 = MEMORY[0x277CBEC10];
      }

      v15 = v84;
    }

    else
    {
      moodsText2 = MEMORY[0x277CBEBF8];
      weightByRegion2 = MEMORY[0x277CBEC10];
      weightByLanguage2 = MEMORY[0x277CBEC10];
      v21 = v80;
    }

    v50 = +[PGLogging sharedLogging];
    loggingConnection4 = [v50 loggingConnection];

    if (os_log_type_enabled(loggingConnection4, OS_LOG_TYPE_INFO))
    {
      *buf = 134218498;
      v100 = suggestedMood;
      v101 = 2112;
      v102 = v94;
      v103 = 2112;
      v104 = moodsText2;
      _os_log_impl(&dword_22F0FC000, loggingConnection4, OS_LOG_TYPE_INFO, "[MemoriesMusic] Final mood: %llu, genre: %@, moodsKeywordsFromStory: %@", buf, 0x20u);
    }

    v52 = [PGFlexMusicCurationParameters alloc];
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    v55 = v52;
    v56 = v83;
    v57 = [(PGFlexMusicCurationParameters *)v55 initWithMood:suggestedMood moodKeywords:moodsText2 recentlyUsedSongs:v83 entityUUID:uUIDString useMoodKeywords:0 features:v21 musicCuratorContext:v15 genre:v94 weightByLanguage:weightByLanguage2 weightByRegion:weightByRegion2];

    v58 = +[PGLogging sharedLogging];
    loggingConnection5 = [v58 loggingConnection];

    if (os_log_type_enabled(loggingConnection5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22F0FC000, loggingConnection5, OS_LOG_TYPE_INFO, "[MemoriesMusic] Curating Flex Music using options", buf, 2u);
    }

    v60 = [reporterCopy childProgressReporterFromStart:0.2 toEnd:1.0];
    v95 = 0;
    v86 = v57;
    v40 = [PGFlexMusicCurator curateFlexMusicWithCurationParameters:v57 progressReporter:v60 error:&v95];
    v61 = v95;

    if (!v40)
    {
      v71 = +[PGLogging sharedLogging];
      loggingConnection6 = [v71 loggingConnection];

      if (os_log_type_enabled(loggingConnection6, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v100 = v61;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection6, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Flex Music curation using options failed with Error: %@", buf, 0xCu);
      }

      v56 = v83;
      if (error)
      {
        v73 = v61;
        *error = v61;
      }

      goto LABEL_59;
    }

    musicCurationSpecificationOptions2 = [optionsCopy musicCurationSpecificationOptions];
    if (musicCurationSpecificationOptions2)
    {
      bestSongSuggestions4 = musicCurationSpecificationOptions2;
      musicCurationSpecificationOptions3 = [optionsCopy musicCurationSpecificationOptions];
      if (![musicCurationSpecificationOptions3 shouldDownloadKeyFlexSong])
      {
        goto LABEL_53;
      }

      bestSongSuggestions = [v40 bestSongSuggestions];
      if (!bestSongSuggestions)
      {
        goto LABEL_53;
      }

      v81 = bestSongSuggestions;
      bestSongSuggestions2 = [v40 bestSongSuggestions];
      firstObject3 = [bestSongSuggestions2 firstObject];
      if (!firstObject3)
      {
LABEL_52:

LABEL_53:
        goto LABEL_54;
      }

      v77 = firstObject3;
      bestSongSuggestions3 = [v40 bestSongSuggestions];
      firstObject4 = [bestSongSuggestions3 firstObject];
      v78 = [firstObject4 uid];

      v56 = v83;
      if (v78)
      {
        v68 = +[PGLogging sharedLogging];
        loggingConnection7 = [v68 loggingConnection];

        if (os_log_type_enabled(loggingConnection7, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22F0FC000, loggingConnection7, OS_LOG_TYPE_INFO, "[MemoriesMusic] Cache the key flex song, which triggers the song assets download", buf, 2u);
        }

        bestSongSuggestions4 = [v40 bestSongSuggestions];
        musicCurationSpecificationOptions3 = [bestSongSuggestions4 firstObject];
        v81 = [musicCurationSpecificationOptions3 uid];
        v98 = v81;
        bestSongSuggestions2 = [MEMORY[0x277CBEA60] arrayWithObjects:&v98 count:1];
        [PGFlexMusicCacher cacheSongAudioAndArtworkForUIDs:?];
        v56 = v83;
        goto LABEL_52;
      }
    }

LABEL_54:
    v70 = v40;
LABEL_59:

    v15 = v84;
    v16 = v82;
LABEL_60:

LABEL_61:
    goto LABEL_62;
  }

  v38 = +[PGLogging sharedLogging];
  loggingConnection8 = [v38 loggingConnection];

  if (os_log_type_enabled(loggingConnection8, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_22F0FC000, loggingConnection8, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Flex Music curation with options failed with empty keywords and weights dictionary", buf, 2u);
  }

  if (error)
  {
    [PGError errorWithCode:-8 description:@"Flex Music curation: No topic keywords and weights provided in options"];
    *error = v40 = 0;
  }

  else
  {
    v40 = 0;
  }

LABEL_62:

  v74 = *MEMORY[0x277D85DE8];

  return v40;
}

+ (id)_expandTopicKeywordsDictionary:(id)dictionary
{
  v34 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v5 = dictionaryCopy;
  v6 = [v5 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v29;
    v9 = @"|";
    v23 = v5;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v28 + 1) + 8 * i);
        v12 = [v5 objectForKeyedSubscript:v11];
        if ([v11 containsString:v9])
        {
          v13 = v7;
          v14 = v8;
          v15 = v9;
          v16 = [v11 componentsSeparatedByString:v9];
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          v17 = [v16 countByEnumeratingWithState:&v24 objects:v32 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v25;
            do
            {
              for (j = 0; j != v18; ++j)
              {
                if (*v25 != v19)
                {
                  objc_enumerationMutation(v16);
                }

                [dictionary setObject:v12 forKeyedSubscript:*(*(&v24 + 1) + 8 * j)];
              }

              v18 = [v16 countByEnumeratingWithState:&v24 objects:v32 count:16];
            }

            while (v18);
          }

          v9 = v15;
          v8 = v14;
          v7 = v13;
          v5 = v23;
        }

        else
        {
          [dictionary setObject:v12 forKeyedSubscript:v11];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v7);
  }

  v21 = *MEMORY[0x277D85DE8];

  return dictionary;
}

+ (id)appleMusicCurationWithOptions:(id)options graphManager:(id)manager progressReporter:(id)reporter error:(id *)error
{
  v51 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  managerCopy = manager;
  reporterCopy = reporter;
  topicKeywordsAndWeights = [optionsCopy topicKeywordsAndWeights];
  v14 = topicKeywordsAndWeights;
  if (topicKeywordsAndWeights && [topicKeywordsAndWeights count])
  {
    v48 = 0;
    v15 = [managerCopy musicCuratorContextWithCurationOptions:optionsCopy error:&v48];
    v16 = v48;
    if (!v15)
    {
      v30 = +[PGLogging sharedLogging];
      loggingConnection = [v30 loggingConnection];

      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v50 = v16;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Apple Music option-based curation failed when creating curator context, error: %@", buf, 0xCu);
      }

      if (error)
      {
        v32 = v16;
        v25 = 0;
        *error = v16;
      }

      else
      {
        v25 = 0;
      }

      goto LABEL_29;
    }

    v17 = [self _expandTopicKeywordsDictionary:v14];
    v18 = [objc_opt_class() appleMusicFeatureExtractionContextWithCuratorContext:v15];
    v44 = v17;
    v19 = [[PGKeywordBasedFeatureExtractor alloc] initWithWeightByKeyword:v17];
    v20 = [reporterCopy childProgressReporterFromStart:0.0 toEnd:0.2];
    v47 = 0;
    v42 = v19;
    v43 = v18;
    v21 = [(PGKeywordBasedFeatureExtractor *)v19 musicCurationFeaturesWithContext:v18 progressReporter:v20 error:&v47];
    v45 = v47;

    v22 = +[PGLogging sharedLogging];
    loggingConnection2 = [v22 loggingConnection];

    if (v21)
    {
      v41 = v16;
      if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_INFO, "[MemoriesMusic] Curating Apple Music using options", buf, 2u);
      }

      v24 = [reporterCopy childProgressReporterFromStart:0.2 toEnd:1.0];
      v46 = 0;
      v25 = [PGMusicCurator curateMusicForFeatures:v21 context:v15 progressReporter:v24 error:&v46];
      v26 = v46;

      if (v25)
      {
        v27 = v25;
        v16 = v41;
      }

      else
      {
        v40 = v21;
        v35 = +[PGLogging sharedLogging];
        loggingConnection3 = [v35 loggingConnection];

        if (os_log_type_enabled(loggingConnection3, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v50 = v26;
          _os_log_error_impl(&dword_22F0FC000, loggingConnection3, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Apple Music option-based curation error with error: %@", buf, 0xCu);
        }

        v21 = v40;
        v16 = v41;
        if (error)
        {
          v37 = v26;
          *error = v26;
        }
      }
    }

    else
    {
      if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v50 = v45;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Apple Music option-based curation failed to extract features with error: %@", buf, 0xCu);
      }

      if (error)
      {
        v33 = v45;
        v34 = v45;
        v25 = 0;
        *error = v45;
LABEL_28:

LABEL_29:
        goto LABEL_30;
      }

      v25 = 0;
    }

    v33 = v45;
    goto LABEL_28;
  }

  v28 = +[PGLogging sharedLogging];
  loggingConnection4 = [v28 loggingConnection];

  if (os_log_type_enabled(loggingConnection4, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_22F0FC000, loggingConnection4, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Apple Music option-based curation failed with empty keywords and weights dictionary", buf, 2u);
  }

  if (error)
  {
    [PGError errorWithCode:-8 description:@"No topic keywords and weights provided in options"];
    *error = v25 = 0;
  }

  else
  {
    v25 = 0;
  }

LABEL_30:

  v38 = *MEMORY[0x277D85DE8];

  return v25;
}

+ (id)_musicCurationFeaturesWithFeatureExtractionContext:(id)context assetFetchResult:(id)result graphManager:(id)manager progressReporter:(id)reporter error:(id *)error
{
  contextCopy = context;
  resultCopy = result;
  managerCopy = manager;
  reporterCopy = reporter;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__21547;
  v38 = __Block_byref_object_dispose__21548;
  v39 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__21547;
  v32 = __Block_byref_object_dispose__21548;
  v33 = 0;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __122__PGMusicWrapper__musicCurationFeaturesWithFeatureExtractionContext_assetFetchResult_graphManager_progressReporter_error___block_invoke;
  v22[3] = &unk_2788826E0;
  v26 = &v34;
  v15 = resultCopy;
  v23 = v15;
  v16 = contextCopy;
  v24 = v16;
  v17 = reporterCopy;
  v25 = v17;
  v27 = &v28;
  [managerCopy performSynchronousConcurrentGraphReadUsingBlock:v22];
  v18 = v35[5];
  if (v18)
  {
    v19 = v18;
  }

  else if (error)
  {
    v20 = v29[5];
    if (v20)
    {
      *error = v20;
    }
  }

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v34, 8);

  return v18;
}

void __122__PGMusicWrapper__musicCurationFeaturesWithFeatureExtractionContext_assetFetchResult_graphManager_progressReporter_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 graph];
  v4 = [*(a1 + 32) fetchedObjects];
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(*(a1 + 64) + 8);
  obj = *(v7 + 40);
  v8 = [PGMusicCurator extractMusicCurationFeaturesForAssets:v4 graph:v3 context:v5 progressReporter:v6 error:&obj];
  objc_storeStrong((v7 + 40), obj);
  v9 = *(*(a1 + 56) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

+ (id)_musicCurationFeaturesWithFeatureExtractionContext:(id)context memory:(id)memory graphManager:(id)manager progressReporter:(id)reporter error:(id *)error
{
  contextCopy = context;
  memoryCopy = memory;
  managerCopy = manager;
  reporterCopy = reporter;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__21547;
  v38 = __Block_byref_object_dispose__21548;
  v39 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__21547;
  v32 = __Block_byref_object_dispose__21548;
  v33 = 0;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __112__PGMusicWrapper__musicCurationFeaturesWithFeatureExtractionContext_memory_graphManager_progressReporter_error___block_invoke;
  v22[3] = &unk_2788826E0;
  v26 = &v34;
  v15 = memoryCopy;
  v23 = v15;
  v16 = contextCopy;
  v24 = v16;
  v17 = reporterCopy;
  v25 = v17;
  v27 = &v28;
  [managerCopy performSynchronousConcurrentGraphReadUsingBlock:v22];
  v18 = v35[5];
  if (v18)
  {
    v19 = v18;
  }

  else if (error)
  {
    v20 = v29[5];
    if (v20)
    {
      *error = v20;
    }
  }

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v34, 8);

  return v18;
}

void __112__PGMusicWrapper__musicCurationFeaturesWithFeatureExtractionContext_memory_graphManager_progressReporter_error___block_invoke(void *a1, void *a2)
{
  v3 = [a2 graph];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = *(a1[8] + 8);
  obj = *(v7 + 40);
  v8 = [PGMusicCurator extractMusicCurationFeaturesForMemory:v4 graph:v3 context:v5 progressReporter:v6 error:&obj];
  objc_storeStrong((v7 + 40), obj);
  v9 = *(a1[7] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

+ (void)requestMaestroSongsWithOptions:(id)options graphManager:(id)manager reply:(id)reply
{
  v41 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  managerCopy = manager;
  optionsCopy = options;
  v10 = +[PGLogging memoriesMusicLogging];
  loggingConnection = [v10 loggingConnection];

  v12 = os_signpost_id_generate(loggingConnection);
  v13 = loggingConnection;
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "RequestMaestroSongsWithOptions", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v33 = mach_absolute_time();
  v15 = [[PGMusicCurationOptions alloc] initWithOptionsDictionary:optionsCopy];

  v35 = 0;
  v16 = [managerCopy musicCuratorContextWithCurationOptions:v15 error:&v35];

  v17 = v35;
  if (v17)
  {
    v18 = +[PGLogging sharedLogging];
    loggingConnection2 = [v18 loggingConnection];

    if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v38 = v17;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_ERROR, "[MemoriesMusic] requestAllMaestroSongs Unable to get the musicCuratorContext: %@", buf, 0xCu);
    }

    v20 = [PGError xpcSafeErrorWithError:v17];
    replyCopy[2](replyCopy, 0, v20);
  }

  v34 = v17;
  v21 = [v16 extractSongIdKeywordMappings:&v34];
  v22 = v34;

  if (v22)
  {
    v23 = +[PGLogging sharedLogging];
    loggingConnection3 = [v23 loggingConnection];

    if (os_log_type_enabled(loggingConnection3, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v38 = v22;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection3, OS_LOG_TYPE_ERROR, "[MemoriesMusic] requestAllMaestroSongs Unable to extractSongIdKeywordMappings: %@", buf, 0xCu);
    }

    v25 = [PGError xpcSafeErrorWithError:v22];
    replyCopy[2](replyCopy, 0, v25);
  }

  v26 = [PGError xpcSafeErrorWithError:0];
  (replyCopy)[2](replyCopy, v21, v26);

  v27 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v30 = v14;
  v31 = v30;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v30))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v31, OS_SIGNPOST_INTERVAL_END, v12, "RequestMaestroSongsWithOptions", "", buf, 2u);
  }

  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v38 = "RequestMaestroSongsWithOptions";
    v39 = 2048;
    v40 = ((((v27 - v33) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_22F0FC000, v31, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  v32 = *MEMORY[0x277D85DE8];
}

+ (void)requestRecentlyUsedSongsWithOptions:(id)options graphManager:(id)manager reply:(id)reply
{
  v47 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  managerCopy = manager;
  replyCopy = reply;
  v10 = +[PGLogging memoriesMusicLogging];
  loggingConnection = [v10 loggingConnection];

  v12 = os_signpost_id_generate(loggingConnection);
  v13 = loggingConnection;
  v14 = v13;
  v15 = v12 - 1;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "RequestRecentlyUsedSongsWithOptions", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  spid = v12;
  v41 = mach_absolute_time();
  if (optionsCopy && (v16 = *MEMORY[0x277D3AE90], [optionsCopy objectForKeyedSubscript:*MEMORY[0x277D3AE90]], v17 = objc_claimAutoreleasedReturnValue(), v17, v17))
  {
    v18 = [optionsCopy objectForKeyedSubscript:v16];
    v19 = v18;
    if (v18)
    {
      if ([v18 isEqualToString:*MEMORY[0x277D3AE80]])
      {
        v20 = managerCopy;
        photoLibrary = [managerCopy photoLibrary];
        v22 = [PGMusicCurationRecentlyUsedSongs recentlyUsedAppleMusicSongsFromPhotoLibrary:photoLibrary];

        allEntries = [v22 allEntries];
        v24 = +[PGLogging sharedLogging];
        loggingConnection2 = [v24 loggingConnection];

        if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v44 = allEntries;
          v26 = "[MemoriesMusic] recentlyUsedAppleMusicSongs: %@";
LABEL_14:
          _os_log_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_INFO, v26, buf, 0xCu);
          goto LABEL_15;
        }

        goto LABEL_15;
      }

      if ([v19 isEqualToString:*MEMORY[0x277D3AE88]])
      {
        v20 = managerCopy;
        photoLibrary2 = [managerCopy photoLibrary];
        v22 = [PGMusicCurationRecentlyUsedSongs recentlyUsedFlexMusicSongsFromPhotoLibrary:photoLibrary2];

        allEntries = [v22 allEntries];
        v28 = +[PGLogging sharedLogging];
        loggingConnection2 = [v28 loggingConnection];

        if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v44 = allEntries;
          v26 = "[MemoriesMusic] recentlyUsedFlexMusicSongs: %@";
          goto LABEL_14;
        }

LABEL_15:

        v29 = 0;
        v30 = allEntries;
        goto LABEL_20;
      }
    }

    v20 = managerCopy;
  }

  else
  {
    v20 = managerCopy;
    v19 = 0;
  }

  v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"requestRecentlyUsedSongsWithOptions is missing a required options key or value"];
  v31 = +[PGLogging sharedLogging];
  loggingConnection3 = [v31 loggingConnection];

  if (os_log_type_enabled(loggingConnection3, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v44 = v22;
    _os_log_error_impl(&dword_22F0FC000, loggingConnection3, OS_LOG_TYPE_ERROR, "[MemoriesMusic] %@", buf, 0xCu);
  }

  v29 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:2 localizedDescription:v22];
  allEntries = 0;
  v30 = v29;
LABEL_20:
  v33 = [PGError xpcSafeErrorWithError:v29];
  replyCopy[2](replyCopy, allEntries, v33);

  v34 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v37 = v14;
  v38 = v37;
  if (v15 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v37))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v38, OS_SIGNPOST_INTERVAL_END, spid, "RequestRecentlyUsedSongsWithOptions", "", buf, 2u);
  }

  if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v44 = "RequestRecentlyUsedSongsWithOptions";
    v45 = 2048;
    v46 = ((((v34 - v41) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_22F0FC000, v38, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  v39 = *MEMORY[0x277D85DE8];
}

+ (void)requestFlexMusicCurationWithCurationOptions:(id)options graphManager:(id)manager reply:(id)reply
{
  v56 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  managerCopy = manager;
  optionsCopy = options;
  v11 = +[PGLogging memoriesMusicLogging];
  loggingConnection = [v11 loggingConnection];

  v13 = os_signpost_id_generate(loggingConnection);
  v14 = loggingConnection;
  v15 = v14;
  v16 = v13 - 1;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "FlexMusicCurationUsingOptions", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v49 = mach_absolute_time();
  v17 = +[PGLogging sharedLogging];
  loggingConnection2 = [v17 loggingConnection];

  if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_INFO, "[MemoriesMusic] Building Flex Music curation using curation options", buf, 2u);
  }

  v19 = [MEMORY[0x277D22C80] progressReporterWithProgressBlock:&__block_literal_global_370];
  v50 = 0;
  v20 = [self flexMusicCurationWithOptions:optionsCopy graphManager:managerCopy progressReporter:v19 error:&v50];

  v21 = v50;
  if (v20)
  {
    expandedJsonRepresentation = [v20 expandedJsonRepresentation];
    if (expandedJsonRepresentation)
    {
      v23 = [PGError xpcSafeErrorWithError:0];
      replyCopy[2](replyCopy, expandedJsonRepresentation, v23);

      v24 = mach_absolute_time();
      numer = info.numer;
      denom = info.denom;
      v27 = v15;
      v28 = v27;
      if (v16 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v28, OS_SIGNPOST_INTERVAL_END, v13, "FlexMusicCurationUsingOptions", "", buf, 2u);
      }

      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v53 = "FlexMusicCurationUsingOptions";
        v54 = 2048;
        v55 = ((((v24 - v49) * numer) / denom) / 1000000.0);
        _os_log_impl(&dword_22F0FC000, v28, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
      }
    }

    else
    {
      spid = v13;
      v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to serialize flex music curation object to JSON: %@", v20];
      v38 = +[PGLogging sharedLogging];
      loggingConnection3 = [v38 loggingConnection];

      if (os_log_type_enabled(loggingConnection3, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v53 = v37;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection3, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Flex Music curation using options failed with serialization error: %@", buf, 0xCu);
      }

      v48 = v37;
      v40 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:1 localizedDescription:v37];
      replyCopy[2](replyCopy, 0, v40);
      v41 = mach_absolute_time();
      v43 = info.numer;
      v42 = info.denom;
      v44 = v15;
      v45 = v44;
      if (v16 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v44))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v45, OS_SIGNPOST_INTERVAL_END, spid, "FlexMusicCurationUsingOptions", "", buf, 2u);
      }

      if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v53 = "FlexMusicCurationUsingOptions";
        v54 = 2048;
        v55 = ((((v41 - v49) * v43) / v42) / 1000000.0);
        _os_log_impl(&dword_22F0FC000, v45, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
      }
    }
  }

  else
  {
    v29 = +[PGLogging sharedLogging];
    loggingConnection4 = [v29 loggingConnection];

    if (os_log_type_enabled(loggingConnection4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v53 = v21;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection4, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Flex Music curation using options failed with Error: %@", buf, 0xCu);
    }

    v31 = [PGError xpcSafeErrorWithError:v21];
    replyCopy[2](replyCopy, 0, v31);

    v32 = mach_absolute_time();
    v34 = info.numer;
    v33 = info.denom;
    v35 = v15;
    v36 = v35;
    if (v16 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v35))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v36, OS_SIGNPOST_INTERVAL_END, v13, "FlexMusicCurationUsingOptions", "", buf, 2u);
    }

    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v53 = "FlexMusicCurationUsingOptions";
      v54 = 2048;
      v55 = ((((v32 - v49) * v34) / v33) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, v36, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
    }
  }

  v46 = *MEMORY[0x277D85DE8];
}

+ (void)requestMusicCurationWithCurationOptions:(id)options graphManager:(id)manager reply:(id)reply
{
  v107 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  managerCopy = manager;
  replyCopy = reply;
  v10 = +[PGLogging memoriesMusicLogging];
  loggingConnection = [v10 loggingConnection];

  v12 = loggingConnection;
  v13 = os_signpost_id_generate(v12);
  v14 = v12;
  v15 = v14;
  v16 = v13 - 1;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "MusicCurationUsingOptions", "", buf, 2u);
  }

  spid = v13;

  info = 0;
  mach_timebase_info(&info);
  v87 = mach_absolute_time();
  shouldUseSpecificationOptionsForCuration = [optionsCopy shouldUseSpecificationOptionsForCuration];
  v18 = +[PGLogging sharedLogging];
  loggingConnection2 = [v18 loggingConnection];

  v20 = os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_INFO);
  if (!shouldUseSpecificationOptionsForCuration)
  {
    if (v20)
    {
      *buf = 0;
      _os_log_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_INFO, "[MemoriesMusic] Building Apple Music curation using curation options", buf, 2u);
    }

    musicCurationSpecificationOptions = [MEMORY[0x277D22C80] progressReporterWithProgressBlock:&__block_literal_global_364];
    v100 = 0;
    v32 = [self appleMusicCurationWithOptions:optionsCopy graphManager:managerCopy progressReporter:musicCurationSpecificationOptions error:&v100];
    v24 = v100;
    if (!v32)
    {
      v54 = +[PGLogging sharedLogging];
      loggingConnection3 = [v54 loggingConnection];

      if (os_log_type_enabled(loggingConnection3, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v104 = v24;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection3, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Apple Music option-based curation failed error: %@", buf, 0xCu);
      }

      v56 = [PGError xpcSafeErrorWithError:v24];
      v26 = replyCopy;
      (*(replyCopy + 2))(replyCopy, 0, v56);

      v27 = mach_absolute_time();
      numer = info.numer;
      denom = info.denom;
      v57 = v15;
      v31 = v57;
      if (v16 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v57))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v31, OS_SIGNPOST_INTERVAL_END, spid, "MusicCurationUsingOptions", "", buf, 2u);
      }

      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        goto LABEL_36;
      }

      goto LABEL_53;
    }

    v33 = musicCurationSpecificationOptions;
    musicCurationSpecificationOptions = v32;
LABEL_21:

    keySongAdamID = [musicCurationSpecificationOptions keySongAdamID];

    if (keySongAdamID)
    {
      v38 = MEMORY[0x277CBEA60];
      keySongAdamID2 = [musicCurationSpecificationOptions keySongAdamID];
      v40 = [v38 arrayWithObjects:{keySongAdamID2, 0}];

      v41 = +[PGLogging sharedLogging];
      loggingConnection4 = [v41 loggingConnection];

      if (os_log_type_enabled(loggingConnection4, OS_LOG_TYPE_INFO))
      {
        v43 = [v40 objectAtIndexedSubscript:0];
        *buf = 138412290;
        v104 = v43;
        _os_log_impl(&dword_22F0FC000, loggingConnection4, OS_LOG_TYPE_INFO, "[MemoriesMusic] Start Caching the key Apple Music song %@ for MC. It should trigger the song assets download.", buf, 0xCu);
      }

      ignoreProgress = [MEMORY[0x277D22C80] ignoreProgress];
      v98[0] = MEMORY[0x277D85DD0];
      v98[1] = 3221225472;
      v98[2] = __77__PGMusicWrapper_requestMusicCurationWithCurationOptions_graphManager_reply___block_invoke_365;
      v98[3] = &unk_278884D38;
      v99 = v40;
      v45 = v40;
      [PGMusicAudioCacher cacheSongAudioForAdamIDs:v45 progressReporter:ignoreProgress completionHandler:v98];
    }

    v85 = optionsCopy;
    v46 = +[PGLogging sharedLogging];
    loggingConnection5 = [v46 loggingConnection];

    if (os_log_type_enabled(loggingConnection5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22F0FC000, loggingConnection5, OS_LOG_TYPE_INFO, "[MemoriesMusic] Inflating Apple Music option-based curation", buf, 2u);
    }

    v48 = [[PGMusicCurationInflationOptions alloc] initWithInflationActionSource:1];
    v97 = 0;
    [managerCopy musicCurationInflationContextWithInflationOptions:v48 error:&v97];
    v50 = v49 = managerCopy;
    v24 = v97;
    v84 = v49;
    if (v50)
    {
      v96 = 0;
      v51 = [v49 musicCuratorContextWithCurationOptions:v85 error:&v96];
      v52 = v96;
      if (v51)
      {
        v53 = [MEMORY[0x277D22C80] progressReporterWithProgressBlock:&__block_literal_global_368_21611];
        v89[0] = MEMORY[0x277D85DD0];
        v89[1] = 3221225472;
        v89[2] = __77__PGMusicWrapper_requestMusicCurationWithCurationOptions_graphManager_reply___block_invoke_2;
        v89[3] = &unk_278881720;
        v92 = replyCopy;
        v93 = v87;
        v95 = info;
        v90 = v15;
        v94 = spid;
        v91 = musicCurationSpecificationOptions;
        [PGMusicCurator inflateDisplayMetadataForMusicCuration:v91 inflationContext:v50 curatorContext:v51 progressReporter:v53 completionHandler:v89];
      }

      else
      {
        v66 = +[PGLogging sharedLogging];
        loggingConnection6 = [v66 loggingConnection];

        if (os_log_type_enabled(loggingConnection6, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v104 = v52;
          _os_log_error_impl(&dword_22F0FC000, loggingConnection6, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Apple Music option-based curation musicCuratorContext error: %{public}@", buf, 0xCu);
        }

        v68 = [PGError xpcSafeErrorWithError:v52];
        (*(replyCopy + 2))(replyCopy, 0, v68);

        v69 = mach_absolute_time();
        v71 = info.numer;
        v70 = info.denom;
        v72 = v15;
        v73 = v72;
        if (v16 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v72))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_22F0FC000, v73, OS_SIGNPOST_INTERVAL_END, spid, "MusicCurationUsingOptions", "", buf, 2u);
        }

        if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v104 = "MusicCurationUsingOptions";
          v105 = 2048;
          v106 = ((((v69 - v87) * v71) / v70) / 1000000.0);
          _os_log_impl(&dword_22F0FC000, v73, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
        }
      }

      v26 = replyCopy;
    }

    else
    {
      v58 = +[PGLogging sharedLogging];
      loggingConnection7 = [v58 loggingConnection];

      if (os_log_type_enabled(loggingConnection7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v104 = v24;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection7, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Apple Music option-based curation inflation error: %{public}@", buf, 0xCu);
      }

      v60 = [PGError xpcSafeErrorWithError:v24];
      v26 = replyCopy;
      (*(replyCopy + 2))(replyCopy, 0, v60);

      v61 = mach_absolute_time();
      v63 = info.numer;
      v62 = info.denom;
      v64 = v15;
      v65 = v64;
      if (v16 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v64))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v65, OS_SIGNPOST_INTERVAL_END, spid, "MusicCurationUsingOptions", "", buf, 2u);
      }

      if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v104 = "MusicCurationUsingOptions";
        v105 = 2048;
        v106 = ((((v61 - v87) * v63) / v62) / 1000000.0);
        _os_log_impl(&dword_22F0FC000, v65, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
      }
    }

    managerCopy = v84;
    optionsCopy = v85;
    goto LABEL_53;
  }

  if (v20)
  {
    *buf = 0;
    _os_log_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_INFO, "[MemoriesMusic] Building Apple Music curation using specification options", buf, 2u);
  }

  musicCurationSpecificationOptions = [optionsCopy musicCurationSpecificationOptions];
  if (![musicCurationSpecificationOptions isQUEmpty])
  {
    v24 = [[PGSpecificationBasedMusicCurator alloc] initWithOptions:musicCurationSpecificationOptions];
    v101 = 0;
    v34 = [(PGSpecificationBasedMusicCurator *)v24 musicCurationAndReturnError:&v101];
    v35 = v101;
    v36 = v35;
    if (!v34)
    {
      v75 = +[PGLogging sharedLogging];
      loggingConnection8 = [v75 loggingConnection];

      if (os_log_type_enabled(loggingConnection8, OS_LOG_TYPE_ERROR))
      {
        localizedDescription = [v36 localizedDescription];
        *buf = 138412290;
        v104 = localizedDescription;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection8, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Apple Music specification-based curation failed with error: %@", buf, 0xCu);
      }

      v77 = [PGError xpcSafeErrorWithError:v36];
      v26 = replyCopy;
      (*(replyCopy + 2))(replyCopy, 0, v77);

      v78 = mach_absolute_time();
      v80 = info.numer;
      v79 = info.denom;
      v81 = v15;
      v82 = v81;
      if (v16 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v81))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v82, OS_SIGNPOST_INTERVAL_END, spid, "MusicCurationUsingOptions", "", buf, 2u);
      }

      if (os_log_type_enabled(v82, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v104 = "MusicCurationUsingOptions";
        v105 = 2048;
        v106 = ((((v78 - v87) * v80) / v79) / 1000000.0);
        _os_log_impl(&dword_22F0FC000, v82, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
      }

      goto LABEL_53;
    }

    v33 = musicCurationSpecificationOptions;
    musicCurationSpecificationOptions = v34;
    goto LABEL_21;
  }

  v22 = +[PGLogging sharedLogging];
  loggingConnection9 = [v22 loggingConnection];

  if (os_log_type_enabled(loggingConnection9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v104 = @"Apple Music curation failed since specificationOptions is empty";
    _os_log_error_impl(&dword_22F0FC000, loggingConnection9, OS_LOG_TYPE_ERROR, "[MemoriesMusic] %@", buf, 0xCu);
  }

  v24 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:1 localizedDescription:@"Apple Music curation failed since specificationOptions is empty"];
  v25 = [PGError xpcSafeErrorWithError:v24];
  v26 = replyCopy;
  (*(replyCopy + 2))(replyCopy, 0, v25);

  v27 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v30 = v15;
  v31 = v30;
  if (v16 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v30))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v31, OS_SIGNPOST_INTERVAL_END, spid, "MusicCurationUsingOptions", "", buf, 2u);
  }

  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
  {
LABEL_36:
    *buf = 136315394;
    v104 = "MusicCurationUsingOptions";
    v105 = 2048;
    v106 = ((((v27 - v87) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_22F0FC000, v31, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

LABEL_53:

  v74 = *MEMORY[0x277D85DE8];
}

void __77__PGMusicWrapper_requestMusicCurationWithCurationOptions_graphManager_reply___block_invoke_365(uint64_t a1, int a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = +[PGLogging sharedLogging];
  v7 = [v6 loggingConnection];

  if (a2)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [*(a1 + 32) objectAtIndexedSubscript:0];
      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&dword_22F0FC000, v7, OS_LOG_TYPE_INFO, "[MemoriesMusic] Cached Key Apple Music Song: %@", &v10, 0xCu);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v10 = 138543362;
    v11 = v5;
    _os_log_error_impl(&dword_22F0FC000, v7, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Attempt to cache key AM song failed with error: %{public}@", &v10, 0xCu);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __77__PGMusicWrapper_requestMusicCurationWithCurationOptions_graphManager_reply___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v46 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    v6 = [a2 jsonRepresentation];
    if (v6)
    {
      v7 = +[PGLogging sharedLogging];
      v8 = [v7 loggingConnection];

      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v43 = v6;
        _os_log_impl(&dword_22F0FC000, v8, OS_LOG_TYPE_INFO, "[MemoriesMusic] Successfully produced Apple Music curation using provided options: %@", buf, 0xCu);
      }

      v9 = [PGError xpcSafeErrorWithError:0];
      (*(*(a1 + 48) + 16))();

      v10 = mach_absolute_time();
      v11 = *(a1 + 56);
      v13 = *(a1 + 72);
      v12 = *(a1 + 76);
      v14 = *(a1 + 32);
      v15 = v14;
      v16 = *(a1 + 64);
      if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v15, OS_SIGNPOST_INTERVAL_END, v16, "MusicCurationUsingOptions", "", buf, 2u);
      }

      v17 = *(a1 + 32);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v43 = "MusicCurationUsingOptions";
        v44 = 2048;
        v45 = ((((v10 - v11) * v13) / v12) / 1000000.0);
        _os_log_impl(&dword_22F0FC000, v17, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
      }
    }

    else
    {
      v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to serialize inflated music curation object to JSON: %@", *(a1 + 40)];
      v30 = +[PGLogging sharedLogging];
      v31 = [v30 loggingConnection];

      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v43 = v29;
        _os_log_error_impl(&dword_22F0FC000, v31, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Apple Music option-based curation error: %@", buf, 0xCu);
      }

      v32 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:1 localizedDescription:v29];
      (*(*(a1 + 48) + 16))();
      v33 = mach_absolute_time();
      v34 = *(a1 + 56);
      v36 = *(a1 + 72);
      v35 = *(a1 + 76);
      v37 = *(a1 + 32);
      v38 = v37;
      v39 = *(a1 + 64);
      if (v39 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v37))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v38, OS_SIGNPOST_INTERVAL_END, v39, "MusicCurationUsingOptions", "", buf, 2u);
      }

      v40 = *(a1 + 32);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v43 = "MusicCurationUsingOptions";
        v44 = 2048;
        v45 = ((((v33 - v34) * v36) / v35) / 1000000.0);
        _os_log_impl(&dword_22F0FC000, v40, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
      }
    }
  }

  else
  {
    v18 = +[PGLogging sharedLogging];
    v19 = [v18 loggingConnection];

    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v43 = v5;
      _os_log_error_impl(&dword_22F0FC000, v19, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Apple Music option-based curation inflation failed with error: %@", buf, 0xCu);
    }

    v20 = [PGError xpcSafeErrorWithError:v5];
    (*(*(a1 + 48) + 16))();

    v21 = mach_absolute_time();
    v22 = *(a1 + 56);
    v24 = *(a1 + 72);
    v23 = *(a1 + 76);
    v25 = *(a1 + 32);
    v26 = v25;
    v27 = *(a1 + 64);
    if (v27 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v26, OS_SIGNPOST_INTERVAL_END, v27, "MusicCurationUsingOptions", "", buf, 2u);
    }

    v28 = *(a1 + 32);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v43 = "MusicCurationUsingOptions";
      v44 = 2048;
      v45 = ((((v21 - v22) * v24) / v23) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, v28, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
    }
  }

  v41 = *MEMORY[0x277D85DE8];
}

+ (BOOL)cacheRemoveAllForPhotoLibrary:(id)library error:(id *)error
{
  v5 = [PGMusicCache cacheWithPhotoLibrary:library error:?];
  ignoreProgress = [MEMORY[0x277D22C80] ignoreProgress];
  LOBYTE(error) = [v5 removeAllWithProgressReporter:ignoreProgress error:error];

  return error;
}

+ (id)cacheStatusWithPhotoLibrary:(id)library error:(id *)error
{
  v5 = [PGMusicCache cacheWithPhotoLibrary:library error:?];
  v6 = [v5 statusAndReturnError:error];

  return v6;
}

+ (id)generateMusicCurationDebugInformationForAssetCollection:(id)collection graphManager:(id)manager progressReporter:(id)reporter error:(id *)error
{
  collectionCopy = collection;
  managerCopy = manager;
  reporterCopy = reporter;
  v12 = [managerCopy musicCuratorContextWithRecentlyUsedSongAdamIDs:0 error:error];
  if (v12)
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__21547;
    v25 = __Block_byref_object_dispose__21548;
    v26 = 0;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __110__PGMusicWrapper_generateMusicCurationDebugInformationForAssetCollection_graphManager_progressReporter_error___block_invoke;
    v15[3] = &unk_278882EA0;
    v19 = &v21;
    v16 = collectionCopy;
    v17 = v12;
    v18 = reporterCopy;
    errorCopy = error;
    [managerCopy performSynchronousConcurrentGraphReadUsingBlock:v15];
    v13 = v22[5];

    _Block_object_dispose(&v21, 8);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void __110__PGMusicWrapper_generateMusicCurationDebugInformationForAssetCollection_graphManager_progressReporter_error___block_invoke(void *a1, void *a2)
{
  v6 = [a2 graph];
  v3 = [PGMusicCurator generateDebugInformationForAssetCollection:a1[4] graph:v6 context:a1[5] progressReporter:a1[6] error:a1[8]];
  v4 = *(a1[7] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

+ (id)generateMusicCurationDebugInformationForSongWithAdamID:(id)d graphManager:(id)manager progressReporter:(id)reporter error:(id *)error
{
  dCopy = d;
  reporterCopy = reporter;
  v11 = [manager musicCuratorContextWithRecentlyUsedSongAdamIDs:0 error:error];
  if (v11)
  {
    v12 = [PGMusicCurator generateDebugInformationForSongWithAdamID:dCopy context:v11 progressReporter:reporterCopy error:error];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)generateFlexMusicCurationDebugInformationForAssetCollection:(id)collection graphManager:(id)manager progressReporter:(id)reporter error:(id *)error
{
  collectionCopy = collection;
  managerCopy = manager;
  reporterCopy = reporter;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__21547;
  v25 = __Block_byref_object_dispose__21548;
  v26 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __114__PGMusicWrapper_generateFlexMusicCurationDebugInformationForAssetCollection_graphManager_progressReporter_error___block_invoke;
  v16[3] = &unk_27888A7B8;
  v19 = &v21;
  v12 = collectionCopy;
  v17 = v12;
  v13 = reporterCopy;
  v18 = v13;
  errorCopy = error;
  [managerCopy performSynchronousConcurrentGraphReadUsingBlock:v16];
  v14 = v22[5];

  _Block_object_dispose(&v21, 8);

  return v14;
}

void __114__PGMusicWrapper_generateFlexMusicCurationDebugInformationForAssetCollection_graphManager_progressReporter_error___block_invoke(void *a1, void *a2)
{
  v6 = [a2 graph];
  v3 = [PGFlexMusicCurator generateDebugInformationForAssetCollection:a1[4] graph:v6 progressReporter:a1[5] error:a1[7]];
  v4 = *(a1[6] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

+ (void)fetchSongMetadataJSONForAdamIDs:(id)ds options:(id)options inflationContext:(id)context progressReporter:(id)reporter completionHandler:(id)handler
{
  handlerCopy = handler;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __110__PGMusicWrapper_fetchSongMetadataJSONForAdamIDs_options_inflationContext_progressReporter_completionHandler___block_invoke;
  v13[3] = &unk_278881748;
  v14 = handlerCopy;
  v12 = handlerCopy;
  [PGMusicCurator fetchSongMetadataJSONForAdamIDs:ds options:options inflationContext:context progressReporter:reporter completionHandler:v13];
}

+ (void)fetchSongDisplayMetadataJSONForAdamIDs:(id)ds inflationContext:(id)context progressReporter:(id)reporter completionHandler:(id)handler
{
  handlerCopy = handler;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __109__PGMusicWrapper_fetchSongDisplayMetadataJSONForAdamIDs_inflationContext_progressReporter_completionHandler___block_invoke;
  v11[3] = &unk_278881748;
  v12 = handlerCopy;
  v10 = handlerCopy;
  [PGMusicCurator fetchSongDisplayMetadataJSONForAdamIDs:ds inflationContext:context progressReporter:reporter completionHandler:v11];
}

+ (void)requestFlexMusicCurationForAssetFetchResult:(id)result curationOptions:(id)options graphManager:(id)manager reply:(id)reply
{
  v73 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  optionsCopy = options;
  managerCopy = manager;
  replyCopy = reply;
  v14 = +[PGLogging sharedLogging];
  loggingConnection = [v14 loggingConnection];

  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "[MemoriesMusic] Building flex music curation context for asset fetch result.", buf, 2u);
  }

  if ([resultCopy count])
  {
    v70 = 0;
    v16 = [managerCopy musicCuratorContextWithCurationOptions:optionsCopy error:&v70];
    v17 = v70;
    if (v16)
    {
      v18 = [MEMORY[0x277D22C80] progressReporterWithProgressBlock:&__block_literal_global_352_21639];
      v66 = v16;
      v67 = [objc_opt_class() flexMusicFeatureExtractionContextWithCuratorContext:v16];
      v19 = +[PGLogging sharedLogging];
      loggingConnection2 = [v19 loggingConnection];

      if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_INFO, "[MemoriesMusic] Extracting music curation features from asset fetch result for Flex Music curation", buf, 2u);
      }

      v21 = [v18 childProgressReporterFromStart:0.0 toEnd:0.2];
      v69 = 0;
      v22 = [self _musicCurationFeaturesWithFeatureExtractionContext:v67 assetFetchResult:resultCopy graphManager:managerCopy progressReporter:v21 error:&v69];
      v64 = v69;

      v65 = v22;
      if (v22)
      {
        v63 = v18;
        photoLibrary = [managerCopy photoLibrary];
        v24 = [PGMusicCurationRecentlyUsedSongs recentlyUsedFlexMusicSongsFromPhotoLibrary:photoLibrary];

        v60 = optionsCopy;
        recentlyUsedBundledSongIDs = [optionsCopy recentlyUsedBundledSongIDs];
        date = [MEMORY[0x277CBEAA8] date];
        v62 = v24;
        [v24 addSongIDs:recentlyUsedBundledSongIDs date:date];

        v27 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(resultCopy, "count")}];
        if ([resultCopy count])
        {
          v28 = 0;
          do
          {
            v29 = objc_autoreleasePoolPush();
            v30 = [resultCopy objectAtIndexedSubscript:v28];
            localIdentifier = [v30 localIdentifier];
            [v27 addObject:localIdentifier];

            objc_autoreleasePoolPop(v29);
            ++v28;
          }

          while (v28 < [resultCopy count]);
        }

        v32 = [v27 sortedArrayUsingSelector:sel_compare_];
        v33 = [PGFlexMusicCurationParameters alloc];
        v59 = v32;
        firstObject = [v32 firstObject];
        v35 = [(PGFlexMusicCurationParameters *)v33 initWithMood:16 moodKeywords:MEMORY[0x277CBEBF8] recentlyUsedSongs:v62 entityUUID:firstObject useMoodKeywords:0 features:v65 musicCuratorContext:v66];

        v68 = 0;
        v58 = v35;
        v36 = [PGFlexMusicCurator curateFlexMusicWithCurationParameters:v35 progressReporter:v63 error:&v68];
        v37 = v68;
        v38 = v37;
        if (v36)
        {
          v61 = v37;
          jsonRepresentation = [v36 jsonRepresentation];
          if (jsonRepresentation)
          {
            v40 = +[PGLogging sharedLogging];
            loggingConnection3 = [v40 loggingConnection];

            if (os_log_type_enabled(loggingConnection3, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v72 = jsonRepresentation;
              _os_log_impl(&dword_22F0FC000, loggingConnection3, OS_LOG_TYPE_INFO, "[MemoriesMusic] Successfully produced Flex Music curation for asset local identifiers: %@", buf, 0xCu);
            }

            v42 = [PGError xpcSafeErrorWithError:v61];
            replyCopy[2](replyCopy, jsonRepresentation, v42);
          }

          else
          {
            v42 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to serialize flex music curation object to JSON: %@", v36];
            v54 = +[PGLogging sharedLogging];
            loggingConnection4 = [v54 loggingConnection];

            if (os_log_type_enabled(loggingConnection4, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v72 = v42;
              _os_log_error_impl(&dword_22F0FC000, loggingConnection4, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Flex Music serialization error: %@", buf, 0xCu);
            }

            v56 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:1 localizedDescription:v42];

            replyCopy[2](replyCopy, 0, v56);
            v61 = v56;
          }

          v18 = v63;
          v49 = v64;

          v53 = v61;
        }

        else
        {
          v51 = +[PGLogging sharedLogging];
          loggingConnection5 = [v51 loggingConnection];

          if (os_log_type_enabled(loggingConnection5, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v72 = v38;
            _os_log_error_impl(&dword_22F0FC000, loggingConnection5, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Flex Music Curation Error: %@", buf, 0xCu);
          }

          [PGError xpcSafeErrorWithError:v38];
          jsonRepresentation = v53 = v38;
          replyCopy[2](replyCopy, 0, jsonRepresentation);
          v18 = v63;
          v49 = v64;
        }

        optionsCopy = v60;
        v16 = v66;
        v50 = v62;
      }

      else
      {
        v47 = +[PGLogging sharedLogging];
        loggingConnection6 = [v47 loggingConnection];

        v49 = v64;
        if (os_log_type_enabled(loggingConnection6, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v72 = v64;
          _os_log_error_impl(&dword_22F0FC000, loggingConnection6, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Flex Music feature extraction error for assert fetch result: %@", buf, 0xCu);
        }

        v50 = [PGError xpcSafeErrorWithError:v64];
        replyCopy[2](replyCopy, 0, v50);
        v16 = v66;
      }
    }

    else
    {
      v45 = +[PGLogging sharedLogging];
      loggingConnection7 = [v45 loggingConnection];

      if (os_log_type_enabled(loggingConnection7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v72 = v17;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection7, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Flex Music curator context error for asset fetch result: %@", buf, 0xCu);
      }

      v18 = [PGError xpcSafeErrorWithError:v17];
      replyCopy[2](replyCopy, 0, v18);
    }
  }

  else
  {
    v43 = +[PGLogging sharedLogging];
    loggingConnection8 = [v43 loggingConnection];

    if (os_log_type_enabled(loggingConnection8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v72 = @"Cannot curate music for an empty asset fetch result.";
      _os_log_error_impl(&dword_22F0FC000, loggingConnection8, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Flex Music Curation Error: %@", buf, 0xCu);
    }

    v17 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:1 localizedDescription:@"Cannot curate music for an empty asset fetch result."];
    replyCopy[2](replyCopy, 0, v17);
  }

  v57 = *MEMORY[0x277D85DE8];
}

+ (void)requestFlexMusicCurationForAssetCollection:(id)collection curationOptions:(id)options graphManager:(id)manager reply:(id)reply
{
  v133 = *MEMORY[0x277D85DE8];
  collectionCopy = collection;
  optionsCopy = options;
  managerCopy = manager;
  replyCopy = reply;
  v14 = +[PGLogging sharedLogging];
  loggingConnection = [v14 loggingConnection];

  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "[MemoriesMusic] Building Flex Music curation context for asset collection.", buf, 2u);
  }

  v120 = [MEMORY[0x277D22C80] progressReporterWithProgressBlock:&__block_literal_global_341];
  uuid = [collectionCopy uuid];
  v125 = 0;
  v17 = [managerCopy musicCuratorContextWithCurationOptions:optionsCopy error:&v125];
  v119 = v125;
  if (v17)
  {
    v118 = uuid;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v19 = collectionCopy;
    v20 = MEMORY[0x277CBEBF8];
    v116 = optionsCopy;
    if ((isKindOfClass & 1) == 0)
    {
      v117 = MEMORY[0x277CBEBF8];
      v23 = 0;
      suggestedMood = 16;
      collectionCopy = v19;
LABEL_16:
      v115 = managerCopy;
      photoLibrary = [managerCopy photoLibrary];
      v39 = [PGMusicCurationRecentlyUsedSongs recentlyUsedFlexMusicSongsFromPhotoLibrary:photoLibrary];

      recentlyUsedBundledSongIDs = [optionsCopy recentlyUsedBundledSongIDs];
      date = [MEMORY[0x277CBEAA8] date];
      [v39 addSongIDs:recentlyUsedBundledSongIDs date:date];

      if ((isKindOfClass & 1) == 0)
      {
        photoLibrary2 = [v115 photoLibrary];
        v123 = 0;
        v43 = [PGMusicCurationRecentlyUsedSongs recentlyUsedFlexMusicSongsForCollectionsFromPhotoLibrary:photoLibrary2 error:&v123];
        v44 = v123;

        v45 = +[PGLogging sharedLogging];
        loggingConnection2 = [v45 loggingConnection];

        if (!v43 || v44)
        {
          if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v128 = v44;
            _os_log_error_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Error getting the recently used Flex songs for collections. error=%@", buf, 0xCu);
          }
        }

        else
        {
          if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v128 = v43;
            _os_log_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_INFO, "[MemoriesMusic] recentlyUsedSongsForCollections = %@", buf, 0xCu);
          }

          [v39 appendWithOtherRecentlyUsed:v43];
        }

        optionsCopy = v116;
      }

      v112 = v39;
      v47 = [[PGFlexMusicCurationParameters alloc] initWithMood:suggestedMood moodKeywords:v117 recentlyUsedSongs:v39 entityUUID:v118 useMoodKeywords:0 features:v23 musicCuratorContext:v17];
      v48 = [v120 childProgressReporterFromStart:0.2 toEnd:1.0];
      v122 = 0;
      v111 = v47;
      v49 = [PGFlexMusicCurator curateFlexMusicWithCurationParameters:v47 progressReporter:v48 error:&v122];
      v114 = v122;

      if (!v49)
      {
        v61 = +[PGLogging sharedLogging];
        loggingConnection3 = [v61 loggingConnection];

        v63 = v114;
        if (os_log_type_enabled(loggingConnection3, OS_LOG_TYPE_ERROR))
        {
          uuid2 = [collectionCopy uuid];
          *buf = 138412546;
          v128 = uuid2;
          v129 = 2112;
          v130 = v114;
          _os_log_error_impl(&dword_22F0FC000, loggingConnection3, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Flex Music curation failed for asset collection (%@) with Error: %@", buf, 0x16u);
        }

        v55 = [PGError xpcSafeErrorWithError:v114];
        replyCopy[2](replyCopy, 0, v55);
        managerCopy = v115;
        goto LABEL_68;
      }

      if (isKindOfClass)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v50 = collectionCopy;
          v51 = v50;
          if (v50 && [(PGFlexMusicCurationManager *)v50 creationType]== 1)
          {
            v52 = +[PGLogging sharedLogging];
            loggingConnection4 = [v52 loggingConnection];

            if (os_log_type_enabled(loggingConnection4, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_22F0FC000, loggingConnection4, OS_LOG_TYPE_INFO, "[MemoriesMusic] Generative PHMemory so extract the curated music", buf, 2u);
            }

            extractGenerativeMemoryMusicCuration = [(PGFlexMusicCurationManager *)v51 extractGenerativeMemoryMusicCuration];
            if (extractGenerativeMemoryMusicCuration)
            {
              v55 = extractGenerativeMemoryMusicCuration;
              v107 = v23;
              v56 = [extractGenerativeMemoryMusicCuration objectForKeyedSubscript:@"flexMusicSongIds"];
              v57 = v56;
              if (v56 && [v56 count])
              {
                v58 = +[PGLogging sharedLogging];
                loggingConnection5 = [v58 loggingConnection];

                if (os_log_type_enabled(loggingConnection5, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&dword_22F0FC000, loggingConnection5, OS_LOG_TYPE_INFO, "[MemoriesMusic] Replacing replaceBestSongSuggestionsWithFlexSongIds", buf, 2u);
                }

                v60 = [v49 replaceBestSongSuggestionsWithFlexSongIds:v57];

                v49 = v60;
              }

LABEL_52:

              v70 = v55;
              v55 = v49;
              v23 = v107;
LABEL_53:

              jsonRepresentation = [v55 jsonRepresentation];
              if (!jsonRepresentation)
              {
                v95 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to serialize flex music curation object to JSON: %@", v55];
                v97 = +[PGLogging sharedLogging];
                loggingConnection6 = [v97 loggingConnection];

                if (os_log_type_enabled(loggingConnection6, OS_LOG_TYPE_ERROR))
                {
                  uuid3 = [collectionCopy uuid];
                  *buf = 138412546;
                  v128 = uuid3;
                  v129 = 2112;
                  v130 = v95;
                  _os_log_error_impl(&dword_22F0FC000, loggingConnection6, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Flex Music curation failed for asset collection (%@) with serialization error: %@", buf, 0x16u);
                }

                v99 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:1 localizedDescription:v95];

                replyCopy[2](replyCopy, 0, v99);
                v63 = v99;
                managerCopy = v115;
                v96 = 0;
                goto LABEL_67;
              }

              v110 = replyCopy;
              v74 = +[PGLogging sharedLogging];
              loggingConnection7 = [v74 loggingConnection];

              v63 = v114;
              if (os_log_type_enabled(loggingConnection7, OS_LOG_TYPE_INFO))
              {
                title = [collectionCopy title];
                uuid4 = [collectionCopy uuid];
                *buf = 138412802;
                v128 = title;
                v129 = 2112;
                v130 = uuid4;
                v131 = 2112;
                v132 = jsonRepresentation;
                _os_log_impl(&dword_22F0FC000, loggingConnection7, OS_LOG_TYPE_INFO, "[MemoriesMusic] Successfully produced Flex Music curation for asset collection (%@) with uuid '%@': %@", buf, 0x20u);
              }

              bestSongSuggestions = [v55 bestSongSuggestions];
              managerCopy = v115;
              if (bestSongSuggestions)
              {
                bestSongSuggestions5 = bestSongSuggestions;
                bestSongSuggestions2 = [v55 bestSongSuggestions];
                firstObject = [bestSongSuggestions2 firstObject];
                if (!firstObject)
                {
LABEL_62:

                  goto LABEL_63;
                }

                v82 = firstObject;
                bestSongSuggestions3 = [v55 bestSongSuggestions];
                firstObject2 = [bestSongSuggestions3 firstObject];
                v85 = [firstObject2 uid];

                v63 = v114;
                managerCopy = v115;

                if (v85)
                {
                  v86 = +[PGLogging sharedLogging];
                  loggingConnection8 = [v86 loggingConnection];

                  if (os_log_type_enabled(loggingConnection8, OS_LOG_TYPE_INFO))
                  {
                    bestSongSuggestions4 = [v55 bestSongSuggestions];
                    firstObject3 = [bestSongSuggestions4 firstObject];
                    v90 = [firstObject3 uid];
                    title2 = [collectionCopy title];
                    uuid5 = [collectionCopy uuid];
                    *buf = 138412802;
                    v128 = v90;
                    v129 = 2112;
                    v130 = title2;
                    v131 = 2112;
                    v132 = uuid5;
                    _os_log_impl(&dword_22F0FC000, loggingConnection8, OS_LOG_TYPE_INFO, "[MemoriesMusic] Cache the key flex song (%@) for collection with title '%@' and with uuid '%@'. This triggers the song assets download.", buf, 0x20u);

                    v63 = v114;
                  }

                  bestSongSuggestions5 = [v55 bestSongSuggestions];
                  bestSongSuggestions2 = [bestSongSuggestions5 firstObject];
                  v93 = [bestSongSuggestions2 uid];
                  v126 = v93;
                  v94 = [MEMORY[0x277CBEA60] arrayWithObjects:&v126 count:1];
                  [PGFlexMusicCacher cacheSongAudioAndArtworkForUIDs:v94];

                  managerCopy = v115;
                  goto LABEL_62;
                }
              }

LABEL_63:
              v95 = [PGError xpcSafeErrorWithError:v63];
              v96 = jsonRepresentation;
              replyCopy = v110;
              v110[2](v110, jsonRepresentation, v95);
              optionsCopy = v116;
LABEL_67:

LABEL_68:
              v37 = v117;
              uuid = v118;
LABEL_69:

              v36 = v119;
              goto LABEL_70;
            }
          }
        }

        else
        {
          v51 = 0;
        }

        v70 = 0;
        v55 = v49;
        goto LABEL_53;
      }

      backingCollectionLocalIdentifier = [optionsCopy backingCollectionLocalIdentifier];
      v65 = backingCollectionLocalIdentifier;
      v107 = v23;
      if (backingCollectionLocalIdentifier)
      {
        assetCollectionLocalIdentifier = backingCollectionLocalIdentifier;
      }

      else
      {
        assetCollectionLocalIdentifier = [optionsCopy assetCollectionLocalIdentifier];
      }

      v55 = assetCollectionLocalIdentifier;

      v51 = objc_alloc_init(PGFlexMusicCurationManager);
      cache = [v17 cache];
      ignoreProgress = [MEMORY[0x277D22C80] ignoreProgress];
      v121 = 0;
      v73 = [(PGFlexMusicCurationManager *)v51 adjustCurationForCollectionWithLocalIdentifier:v55 initialCuration:v49 cache:cache progressReporter:ignoreProgress error:&v121];
      v57 = v121;

      if (!v73)
      {
        v101 = +[PGLogging sharedLogging];
        loggingConnection9 = [v101 loggingConnection];

        uuid = v118;
        if (os_log_type_enabled(loggingConnection9, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v128 = v118;
          v129 = 2112;
          v130 = v57;
          _os_log_error_impl(&dword_22F0FC000, loggingConnection9, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Adjusting curation for collection (%@) failed with error: %@", buf, 0x16u);
        }

        v103 = [PGError xpcSafeErrorWithError:v114];
        replyCopy[2](replyCopy, 0, v103);

        v63 = v114;
        managerCopy = v115;
        optionsCopy = v116;
        v37 = v117;
        v23 = v107;
        goto LABEL_69;
      }

      v49 = v73;
      optionsCopy = v116;
      goto LABEL_52;
    }

    v109 = replyCopy;
    v21 = managerCopy;
    v22 = v19;
    v23 = v19;
    suggestedMood = [v23 suggestedMood];
    moodKeywords = [v23 moodKeywords];
    v25 = moodKeywords;
    if (moodKeywords)
    {
      v26 = moodKeywords;
    }

    else
    {
      v26 = v20;
    }

    v117 = v26;

    v27 = [objc_opt_class() flexMusicFeatureExtractionContextWithCuratorContext:v17];
    v28 = +[PGLogging sharedLogging];
    loggingConnection10 = [v28 loggingConnection];

    if (os_log_type_enabled(loggingConnection10, OS_LOG_TYPE_INFO))
    {
      uuid6 = [v23 uuid];
      *buf = 138412290;
      v128 = uuid6;
      _os_log_impl(&dword_22F0FC000, loggingConnection10, OS_LOG_TYPE_INFO, "[MemoriesMusic] Extracting music curation features for memory: %@ for Flex Music curation", buf, 0xCu);
    }

    v31 = [v120 childProgressReporterFromStart:0.0 toEnd:0.2];
    v124 = 0;
    v32 = [self _musicCurationFeaturesWithFeatureExtractionContext:v27 memory:v23 graphManager:v21 progressReporter:v31 error:&v124];
    v33 = v124;

    if (v32)
    {

      v23 = v32;
      optionsCopy = v116;
      managerCopy = v21;
      replyCopy = v109;
      collectionCopy = v22;
      goto LABEL_16;
    }

    v67 = +[PGLogging sharedLogging];
    loggingConnection11 = [v67 loggingConnection];

    collectionCopy = v22;
    if (os_log_type_enabled(loggingConnection11, OS_LOG_TYPE_ERROR))
    {
      uuid7 = [v23 uuid];
      *buf = 138412546;
      v128 = uuid7;
      v129 = 2112;
      v130 = v33;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection11, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Flex Music feature extraction error for PHMemory (%@): %@", buf, 0x16u);
    }

    v69 = [PGError xpcSafeErrorWithError:v33];
    v109[2](v109, 0, v69);

    optionsCopy = v116;
    v37 = v117;
    managerCopy = v21;
    replyCopy = v109;
    uuid = v118;
    v36 = v119;
  }

  else
  {
    v34 = +[PGLogging sharedLogging];
    loggingConnection12 = [v34 loggingConnection];

    v36 = v119;
    if (os_log_type_enabled(loggingConnection12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v128 = v119;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection12, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Flex Music curator context error for asset fetch result: %@", buf, 0xCu);
    }

    v23 = [PGError xpcSafeErrorWithError:v119];
    replyCopy[2](replyCopy, 0, v23);
    v37 = MEMORY[0x277CBEBF8];
  }

LABEL_70:

  v100 = *MEMORY[0x277D85DE8];
}

+ (void)requestMusicCurationForAssetFetchResult:(id)result curationOptions:(id)options graphManager:(id)manager reply:(id)reply
{
  v121 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  optionsCopy = options;
  managerCopy = manager;
  replyCopy = reply;
  v14 = +[PGLogging sharedLogging];
  loggingConnection = [v14 loggingConnection];

  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
  {
    assetCollectionLocalIdentifier = [optionsCopy assetCollectionLocalIdentifier];
    *buf = 138412290;
    v118 = assetCollectionLocalIdentifier;
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "[MemoriesMusic] Building Apple Music curation context for asset fetch result. assetCollectionLocalIdentifier = %@", buf, 0xCu);
  }

  if ([resultCopy count])
  {
    v17 = +[PGLogging memoriesMusicLogging];
    loggingConnection2 = [v17 loggingConnection];

    v19 = loggingConnection2;
    v20 = os_signpost_id_generate(v19);
    v21 = v19;
    v22 = v21;
    if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v22, OS_SIGNPOST_INTERVAL_BEGIN, v20, "MusicCurationForAssetFetchResult", "", buf, 2u);
    }

    info = 0;
    mach_timebase_info(&info);
    v92 = mach_absolute_time();
    v115 = 0;
    v23 = [managerCopy musicCuratorContextWithCurationOptions:optionsCopy error:&v115];
    v24 = v115;
    if (!v23)
    {
      v37 = +[PGLogging sharedLogging];
      loggingConnection3 = [v37 loggingConnection];

      if (os_log_type_enabled(loggingConnection3, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v118 = v24;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection3, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Apple Music curator context error for asset fetch result: %@", buf, 0xCu);
      }

      v39 = [PGError xpcSafeErrorWithError:v24];
      replyCopy[2](replyCopy, 0, v39);
      goto LABEL_59;
    }

    v90 = v20;
    assetCollectionLocalIdentifier2 = [optionsCopy assetCollectionLocalIdentifier];

    v95 = v24;
    if (assetCollectionLocalIdentifier2)
    {
      v99 = replyCopy;
      v26 = optionsCopy;
      v27 = managerCopy;
      v28 = resultCopy;
      v29 = v27;
      photoLibrary = [v27 photoLibrary];
      v114 = 0;
      v31 = [PGMusicCurationRecentlyUsedSongs recentlyUsedAppleMusicSongsForCollectionsFromPhotoLibrary:photoLibrary error:&v114];
      v32 = v114;

      v33 = +[PGLogging sharedLogging];
      loggingConnection4 = [v33 loggingConnection];

      v96 = v32;
      if (!v31 || v32)
      {
        if (os_log_type_enabled(loggingConnection4, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v118 = v32;
          _os_log_error_impl(&dword_22F0FC000, loggingConnection4, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Error getting the recently used Apple Music songs for collections. error=%@", buf, 0xCu);
        }
      }

      else
      {
        if (os_log_type_enabled(loggingConnection4, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v118 = v31;
          _os_log_impl(&dword_22F0FC000, loggingConnection4, OS_LOG_TYPE_INFO, "[MemoriesMusic] recentlyUsedSongsForCollections = %@", buf, 0xCu);
        }

        loggingConnection4 = [v23 recentlyUsedSongs];
        [loggingConnection4 appendWithOtherRecentlyUsed:v31];
      }

      resultCopy = v28;

      managerCopy = v29;
      optionsCopy = v26;
      replyCopy = v99;
    }

    else
    {
      v96 = 0;
    }

    v97 = [MEMORY[0x277D22C80] progressReporterWithProgressBlock:&__block_literal_global_331];
    v100 = [objc_opt_class() appleMusicFeatureExtractionContextWithCuratorContext:v23];
    v40 = +[PGLogging sharedLogging];
    loggingConnection5 = [v40 loggingConnection];

    if (os_log_type_enabled(loggingConnection5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22F0FC000, loggingConnection5, OS_LOG_TYPE_INFO, "[MemoriesMusic] Extracting music curation features from asset fetch result for Apple Music curation", buf, 2u);
    }

    v42 = v97;
    v43 = [v97 childProgressReporterFromStart:0.0 toEnd:0.2];
    v113 = 0;
    v44 = [self _musicCurationFeaturesWithFeatureExtractionContext:v100 assetFetchResult:resultCopy graphManager:managerCopy progressReporter:v43 error:&v113];
    v94 = v113;

    v45 = +[PGLogging sharedLogging];
    loggingConnection6 = [v45 loggingConnection];

    v98 = v44;
    v93 = optionsCopy;
    if (!v44)
    {
      v58 = v23;
      v59 = v94;
      if (os_log_type_enabled(loggingConnection6, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v118 = v94;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection6, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Apple Music curation error for asset fetch result: %@", buf, 0xCu);
      }

      v60 = [PGError xpcSafeErrorWithError:v94];
      replyCopy[2](replyCopy, 0, v60);
      v24 = v95;
      v39 = v96;
      goto LABEL_58;
    }

    if (os_log_type_enabled(loggingConnection6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22F0FC000, loggingConnection6, OS_LOG_TYPE_INFO, "[MemoriesMusic] Curating Apple Music for asset fetch result.", buf, 2u);
    }

    v47 = [v97 childProgressReporterFromStart:0.2 toEnd:1.0];
    v112 = 0;
    v48 = [PGMusicCurator curateMusicForFeatures:v44 context:v23 progressReporter:v47 error:&v112];
    v91 = v112;

    v24 = v95;
    if (!v48)
    {
      v61 = +[PGLogging sharedLogging];
      loggingConnection7 = [v61 loggingConnection];

      if (os_log_type_enabled(loggingConnection7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v118 = v91;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection7, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Apple Music curation error: %@", buf, 0xCu);
      }

      v58 = v23;

      v63 = [PGError xpcSafeErrorWithError:v91];
      replyCopy[2](replyCopy, 0, v63);
      v39 = v96;
      v59 = v94;
      goto LABEL_57;
    }

    backingCollectionLocalIdentifier = [optionsCopy backingCollectionLocalIdentifier];
    v87 = resultCopy;
    if (backingCollectionLocalIdentifier || ([optionsCopy assetCollectionLocalIdentifier], (backingCollectionLocalIdentifier = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v50 = backingCollectionLocalIdentifier;
      v84 = managerCopy;
      v85 = v22;
      v51 = objc_alloc_init(PGMusicCurationManager);
      cache = [v23 cache];
      ignoreProgress = [MEMORY[0x277D22C80] ignoreProgress];
      v111 = 0;
      v86 = v50;
      v54 = [(PGMusicCurationManager *)v51 adjustCurationForCollection:v50 initialCuration:v48 cache:cache progressReporter:ignoreProgress error:&v111];
      v55 = v111;

      if (!v54)
      {
        v88 = v55;
        v89 = v51;
        v64 = +[PGLogging sharedLogging];
        loggingConnection8 = [v64 loggingConnection];

        if (os_log_type_enabled(loggingConnection8, OS_LOG_TYPE_ERROR))
        {
          assetCollectionLocalIdentifier3 = [optionsCopy assetCollectionLocalIdentifier];
          *buf = 138412546;
          v118 = assetCollectionLocalIdentifier3;
          v119 = 2112;
          v120 = v55;
          _os_log_error_impl(&dword_22F0FC000, loggingConnection8, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Adjusting curation for collection (%@) failed with error: %@", buf, 0x16u);
        }

        v39 = v96;
        v66 = [PGError xpcSafeErrorWithError:v96];
        replyCopy[2](replyCopy, 0, v66);
        resultCopy = v87;
        managerCopy = v84;
        v22 = v85;
        goto LABEL_56;
      }

      v56 = v54;
      v57 = off_27887B000;
      managerCopy = v84;
      v22 = v85;
    }

    else
    {
      v86 = 0;
      v56 = v48;
      v57 = off_27887B000;
    }

    v89 = v56;
    keySongAdamID = [(PGMusicCurationManager *)v56 keySongAdamID];

    if (keySongAdamID)
    {
      v68 = MEMORY[0x277CBEA60];
      keySongAdamID2 = [(PGMusicCurationManager *)v89 keySongAdamID];
      v70 = [v68 arrayWithObjects:{keySongAdamID2, 0}];

      sharedLogging = [(__objc2_class *)v57[222] sharedLogging];
      loggingConnection9 = [sharedLogging loggingConnection];

      if (os_log_type_enabled(loggingConnection9, OS_LOG_TYPE_INFO))
      {
        v73 = [v70 objectAtIndexedSubscript:0];
        *buf = 138412290;
        v118 = v73;
        _os_log_impl(&dword_22F0FC000, loggingConnection9, OS_LOG_TYPE_INFO, "[MemoriesMusic] Start Caching the key Apple Music song %@ for the collection. It should trigger the song assets download.", buf, 0xCu);
      }

      ignoreProgress2 = [MEMORY[0x277D22C80] ignoreProgress];
      v109[0] = MEMORY[0x277D85DD0];
      v109[1] = 3221225472;
      v109[2] = __93__PGMusicWrapper_requestMusicCurationForAssetFetchResult_curationOptions_graphManager_reply___block_invoke_334;
      v109[3] = &unk_278884D38;
      v110 = v70;
      v75 = v70;
      [PGMusicAudioCacher cacheSongAudioForAdamIDs:v75 progressReporter:ignoreProgress2 completionHandler:v109];

      v57 = off_27887B000;
    }

    sharedLogging2 = [(__objc2_class *)v57[222] sharedLogging];
    loggingConnection10 = [sharedLogging2 loggingConnection];

    if (os_log_type_enabled(loggingConnection10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22F0FC000, loggingConnection10, OS_LOG_TYPE_INFO, "[MemoriesMusic] Inflating Apple Music curation for asset fetch result.", buf, 2u);
    }

    v66 = [[PGMusicCurationInflationOptions alloc] initWithInflationActionSource:1];
    v108 = 0;
    v78 = [managerCopy musicCurationInflationContextWithInflationOptions:v66 error:&v108];
    v88 = v108;
    if (v78)
    {
      v79 = [MEMORY[0x277D22C80] progressReporterWithProgressBlock:&__block_literal_global_338];
      v101[0] = MEMORY[0x277D85DD0];
      v101[1] = 3221225472;
      v101[2] = __93__PGMusicWrapper_requestMusicCurationForAssetFetchResult_curationOptions_graphManager_reply___block_invoke_2;
      v101[3] = &unk_278881720;
      v104 = replyCopy;
      v102 = v89;
      v105 = v92;
      v107 = info;
      v103 = v22;
      v106 = v90;
      [PGMusicCurator inflateDisplayMetadataForMusicCuration:v102 inflationContext:v78 curatorContext:0 progressReporter:v79 completionHandler:v101];
    }

    else
    {
      v80 = +[PGLogging sharedLogging];
      loggingConnection11 = [v80 loggingConnection];

      if (os_log_type_enabled(loggingConnection11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v118 = v88;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection11, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Apple Music curation inflation error for assets: %{public}@", buf, 0xCu);
      }

      v79 = [PGError xpcSafeErrorWithError:v88];
      replyCopy[2](replyCopy, 0, v79);
    }

    resultCopy = v87;

    v39 = v96;
LABEL_56:
    v58 = v23;

    v42 = v97;
    v59 = v94;
    v63 = v86;
LABEL_57:

    v60 = v91;
LABEL_58:

    v23 = v58;
    optionsCopy = v93;
LABEL_59:

    goto LABEL_60;
  }

  v35 = +[PGLogging sharedLogging];
  loggingConnection12 = [v35 loggingConnection];

  if (os_log_type_enabled(loggingConnection12, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v118 = @"Cannot curate music for an empty asset fetch result.";
    _os_log_error_impl(&dword_22F0FC000, loggingConnection12, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Apple Music curation error: %@", buf, 0xCu);
  }

  v22 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:1 localizedDescription:@"Cannot curate music for an empty asset fetch result."];
  replyCopy[2](replyCopy, 0, v22);
LABEL_60:

  v82 = *MEMORY[0x277D85DE8];
}

void __93__PGMusicWrapper_requestMusicCurationForAssetFetchResult_curationOptions_graphManager_reply___block_invoke_334(uint64_t a1, int a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = +[PGLogging sharedLogging];
  v7 = [v6 loggingConnection];

  if (a2)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [*(a1 + 32) objectAtIndexedSubscript:0];
      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&dword_22F0FC000, v7, OS_LOG_TYPE_INFO, "[MemoriesMusic] Cached Key Apple Music Song: %@", &v10, 0xCu);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v10 = 138543362;
    v11 = v5;
    _os_log_error_impl(&dword_22F0FC000, v7, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Attempt to cache key AM song failed with error: %{public}@", &v10, 0xCu);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __93__PGMusicWrapper_requestMusicCurationForAssetFetchResult_curationOptions_graphManager_reply___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!a2)
  {
    v19 = +[PGLogging sharedLogging];
    v20 = [v19 loggingConnection];

    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v27 = v5;
      _os_log_error_impl(&dword_22F0FC000, v20, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Apple Music curation inflation error for asset fetch result: %@", buf, 0xCu);
    }

    v7 = [PGError xpcSafeErrorWithError:v5];
    v18 = *(*(a1 + 48) + 16);
    goto LABEL_14;
  }

  v6 = [a2 jsonRepresentation];
  if (v6)
  {
    v7 = v6;
    v8 = +[PGLogging sharedLogging];
    v9 = [v8 loggingConnection];

    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v27 = v7;
      _os_log_impl(&dword_22F0FC000, v9, OS_LOG_TYPE_INFO, "[MemoriesMusic] Successfully produced Apple Music curation for asset fetch result: %@", buf, 0xCu);
    }

    v10 = mach_absolute_time();
    v11 = *(a1 + 56);
    v13 = *(a1 + 72);
    v12 = *(a1 + 76);
    v14 = *(a1 + 40);
    v15 = v14;
    v16 = *(a1 + 64);
    if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v15, OS_SIGNPOST_INTERVAL_END, v16, "MusicCurationForAssetFetchResult", "", buf, 2u);
    }

    v17 = *(a1 + 40);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v27 = "MusicCurationForAssetFetchResult";
      v28 = 2048;
      v29 = ((((v10 - v11) * v13) / v12) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, v17, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
    }

    v18 = *(*(a1 + 48) + 16);
LABEL_14:
    v18();
    goto LABEL_18;
  }

  v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to serialize inflated music curation object to JSON: %@", *(a1 + 32)];
  v22 = +[PGLogging sharedLogging];
  v23 = [v22 loggingConnection];

  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v27 = v21;
    _os_log_error_impl(&dword_22F0FC000, v23, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Apple Music curation error for asset fetch result: %@", buf, 0xCu);
  }

  v24 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:1 localizedDescription:v21];
  (*(*(a1 + 48) + 16))();

  v7 = 0;
LABEL_18:

  v25 = *MEMORY[0x277D85DE8];
}

+ (void)requestMusicCurationForAssetCollection:(id)collection curationOptions:(id)options graphManager:(id)manager reply:(id)reply
{
  v123[1] = *MEMORY[0x277D85DE8];
  collectionCopy = collection;
  optionsCopy = options;
  managerCopy = manager;
  replyCopy = reply;
  photoLibrary = [collectionCopy photoLibrary];
  if ([collectionCopy assetCollectionType] == 4)
  {
    v15 = +[PGLogging memoriesMusicLogging];
    loggingConnection = [v15 loggingConnection];

    v17 = loggingConnection;
    v18 = os_signpost_id_generate(v17);
    v19 = v17;
    v20 = v19;
    if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v20, OS_SIGNPOST_INTERVAL_BEGIN, v18, "MusicCurationForMemory", "", buf, 2u);
    }

    v93 = v18;

    info = 0;
    mach_timebase_info(&info);
    v92 = mach_absolute_time();
    v104 = collectionCopy;
    v21 = +[PGLogging sharedLogging];
    loggingConnection2 = [v21 loggingConnection];

    if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_INFO))
    {
      uuid = [v104 uuid];
      *buf = 138412290;
      v120 = uuid;
      _os_log_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_INFO, "[MemoriesMusic] Building Apple Music curation context for asset collection: %@.", buf, 0xCu);
    }

    v117 = 0;
    v24 = [managerCopy musicCuratorContextWithCurationOptions:optionsCopy error:&v117];
    v25 = v117;
    v101 = managerCopy;
    if (v24)
    {
      v95 = v25;
      v26 = v104;
      v99 = photoLibrary;
      if ([v104 creationType] != 1)
      {
        goto LABEL_18;
      }

      v27 = +[PGLogging sharedLogging];
      loggingConnection3 = [v27 loggingConnection];

      if (os_log_type_enabled(loggingConnection3, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22F0FC000, loggingConnection3, OS_LOG_TYPE_INFO, "[MemoriesMusic] Generative PHMemory so extract the curated music", buf, 2u);
      }

      extractGenerativeMemoryMusicCuration = [v104 extractGenerativeMemoryMusicCuration];
      if (extractGenerativeMemoryMusicCuration)
      {
        v96 = extractGenerativeMemoryMusicCuration;
        v30 = +[PGLogging sharedLogging];
        loggingConnection4 = [v30 loggingConnection];

        if (os_log_type_enabled(loggingConnection4, OS_LOG_TYPE_INFO))
        {
          uuid2 = [v104 uuid];
          *buf = 138412290;
          v120 = uuid2;
          _os_log_impl(&dword_22F0FC000, loggingConnection4, OS_LOG_TYPE_INFO, "[MemoriesMusic] bypassMusicForTopicElection=YES for generative memory: %@", buf, 0xCu);
        }

        [v24 setBypassMusicForTopicElection:1];
      }

      else
      {
LABEL_18:
        v96 = 0;
      }

      standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v41 = [standardUserDefaults BOOLForKey:@"overrideMusicCuration"];

      if (v41)
      {
        v42 = optionsCopy;
        selfCopy = self;
        v102 = collectionCopy;
        v44 = v20;
        v45 = v42;
        v46 = replyCopy;
        v47 = managerCopy;
        v48 = v24;
        v49 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:@"/var/mobile/Media/PhotoData/Caches/GraphService/musicCurationOverride.plist"];
        v50 = [v49 objectForKeyedSubscript:@"memoryUUID"];
        uuid3 = [v104 uuid];
        v52 = [uuid3 isEqualToString:v50];

        if (v52)
        {
          [v48 setMusicCurationOverrideDictionary:v49];
        }

        v24 = v48;
        managerCopy = v47;
        replyCopy = v46;
        v53 = v45;
        v20 = v44;
        collectionCopy = v102;
        v26 = v104;
        self = selfCopy;
        optionsCopy = v53;
      }

      v103 = [MEMORY[0x277D22C80] progressReporterWithProgressBlock:&__block_literal_global_21707];
      v98 = v24;
      v100 = [objc_opt_class() appleMusicFeatureExtractionContextWithCuratorContext:v24];
      v54 = +[PGLogging sharedLogging];
      loggingConnection5 = [v54 loggingConnection];

      photoLibrary = v99;
      if (os_log_type_enabled(loggingConnection5, OS_LOG_TYPE_INFO))
      {
        uuid4 = [v26 uuid];
        *buf = 138412290;
        v120 = uuid4;
        _os_log_impl(&dword_22F0FC000, loggingConnection5, OS_LOG_TYPE_INFO, "[MemoriesMusic] Extracting music curation features for memory: %@ for Apple Music curation", buf, 0xCu);
      }

      v57 = [v103 childProgressReporterFromStart:0.0 toEnd:0.2];
      v116 = 0;
      v58 = [self _musicCurationFeaturesWithFeatureExtractionContext:v100 memory:v26 graphManager:managerCopy progressReporter:v57 error:&v116];
      v94 = v116;

      v59 = +[PGLogging sharedLogging];
      loggingConnection6 = [v59 loggingConnection];

      v97 = v58;
      if (v58)
      {
        if (os_log_type_enabled(loggingConnection6, OS_LOG_TYPE_INFO))
        {
          uuid5 = [v26 uuid];
          *buf = 138412290;
          v120 = uuid5;
          _os_log_impl(&dword_22F0FC000, loggingConnection6, OS_LOG_TYPE_INFO, "[MemoriesMusic] Curating Apple Music for PHMemory: %@.", buf, 0xCu);
        }

        v62 = [v103 childProgressReporterFromStart:0.2 toEnd:1.0];
        v115 = 0;
        v63 = [PGMusicCurator curateMusicForFeatures:v58 context:v98 progressReporter:v62 error:&v115];
        v90 = v115;

        v64 = +[PGLogging sharedLogging];
        loggingConnection7 = [v64 loggingConnection];

        if (v63)
        {
          if (os_log_type_enabled(loggingConnection7, OS_LOG_TYPE_INFO))
          {
            uuid6 = [v104 uuid];
            *buf = 138412290;
            v120 = uuid6;
            _os_log_impl(&dword_22F0FC000, loggingConnection7, OS_LOG_TYPE_INFO, "[MemoriesMusic] Inflating Apple Music curation for PHMemory: %@.", buf, 0xCu);
          }

          if (v96)
          {
            v67 = [v96 objectForKeyedSubscript:@"appleMusicSongIds"];
            v68 = v67;
            if (v67 && [v67 count])
            {
              v69 = +[PGLogging sharedLogging];
              loggingConnection8 = [v69 loggingConnection];

              if (os_log_type_enabled(loggingConnection8, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_22F0FC000, loggingConnection8, OS_LOG_TYPE_INFO, "[MemoriesMusic] Replacing replaceBestMusicSuggestionsWithAdamIds", buf, 2u);
              }

              v71 = [v63 replaceBestMusicSuggestionsWithAdamIds:v68];

              v63 = v71;
              v72 = managerCopy;
            }

            else
            {
              v72 = managerCopy;
            }

            managerCopy = v72;
          }

          v114 = 0;
          v91 = [[PGMusicCurationInflationOptions alloc] initWithInflationActionSource:1];
          v79 = [managerCopy musicCurationInflationContextWithInflationOptions:? error:?];
          v89 = 0;
          if (v79)
          {
            v80 = [MEMORY[0x277D22C80] progressReporterWithProgressBlock:&__block_literal_global_318];
            v105[0] = MEMORY[0x277D85DD0];
            v105[1] = 3221225472;
            v105[2] = __92__PGMusicWrapper_requestMusicCurationForAssetCollection_curationOptions_graphManager_reply___block_invoke_2;
            v105[3] = &unk_2788816F8;
            v106 = v104;
            v110 = replyCopy;
            v107 = v63;
            v108 = v106;
            v111 = v92;
            v113 = info;
            v109 = v20;
            v112 = v93;
            [PGMusicCurator inflateDisplayMetadataForMusicCuration:v107 inflationContext:v79 curatorContext:0 progressReporter:v80 completionHandler:v105];

            v81 = v89;
          }

          else
          {
            v82 = +[PGLogging sharedLogging];
            loggingConnection9 = [v82 loggingConnection];

            v81 = v89;
            if (os_log_type_enabled(loggingConnection9, OS_LOG_TYPE_ERROR))
            {
              uuid7 = [v104 uuid];
              *buf = 138412546;
              v120 = uuid7;
              v121 = 2114;
              v122 = v89;
              _os_log_error_impl(&dword_22F0FC000, loggingConnection9, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Apple Music curation inflation error for PHMemory (%@): %{public}@", buf, 0x16u);
            }

            v80 = [PGError xpcSafeErrorWithError:v89];
            (*(replyCopy + 2))(replyCopy, 0, v80);
          }

          v26 = v104;
          v24 = v98;
          v77 = v94;
          v73 = v95;
          v78 = v90;
        }

        else
        {
          v26 = v104;
          if (os_log_type_enabled(loggingConnection7, OS_LOG_TYPE_ERROR))
          {
            uuid8 = [v104 uuid];
            *buf = 138412546;
            v120 = uuid8;
            v121 = 2112;
            v122 = v90;
            _os_log_error_impl(&dword_22F0FC000, loggingConnection7, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Apple Music curation error for PHMemory (%@): %@", buf, 0x16u);
          }

          v78 = v90;
          v63 = [PGError xpcSafeErrorWithError:v90];
          (*(replyCopy + 2))(replyCopy, 0, v63);
          v24 = v98;
          v77 = v94;
          v73 = v95;
        }

        photoLibrary = v99;
      }

      else
      {
        v77 = v94;
        if (os_log_type_enabled(loggingConnection6, OS_LOG_TYPE_ERROR))
        {
          uuid9 = [v26 uuid];
          *buf = 138412546;
          v120 = uuid9;
          v121 = 2112;
          v122 = v94;
          _os_log_error_impl(&dword_22F0FC000, loggingConnection6, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Apple Music curation error for PHMemory (%@): %@", buf, 0x16u);
        }

        v78 = [PGError xpcSafeErrorWithError:v94];
        (*(replyCopy + 2))(replyCopy, 0, v78);
        v24 = v98;
        v73 = v95;
      }

      v76 = v96;
    }

    else
    {
      v73 = v25;
      v74 = +[PGLogging sharedLogging];
      loggingConnection10 = [v74 loggingConnection];

      v26 = v104;
      if (os_log_type_enabled(loggingConnection10, OS_LOG_TYPE_ERROR))
      {
        uuid10 = [v104 uuid];
        *buf = 138412546;
        v120 = uuid10;
        v121 = 2112;
        v122 = v73;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection10, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Apple Music curation error for PHMemory (%@): %@", buf, 0x16u);
      }

      v76 = [PGError xpcSafeErrorWithError:v73];
      (*(replyCopy + 2))(replyCopy, 0, v76);
    }

    librarySpecificFetchOptions = v20;
    managerCopy = v101;
  }

  else
  {
    v33 = +[PGLogging sharedLogging];
    loggingConnection11 = [v33 loggingConnection];

    if (os_log_type_enabled(loggingConnection11, OS_LOG_TYPE_INFO))
    {
      localIdentifier = [collectionCopy localIdentifier];
      *buf = 138412290;
      v120 = localIdentifier;
      _os_log_impl(&dword_22F0FC000, loggingConnection11, OS_LOG_TYPE_INFO, "[MemoriesMusic] requestMusicCurationForAssetCollection delegating to requestMusicCurationForAssetFetchResult for assetCollection.localIdentifier: %@", buf, 0xCu);
    }

    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
    [librarySpecificFetchOptions setWantsIncrementalChangeDetails:0];
    v123[0] = *MEMORY[0x277CD9AA8];
    v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v123 count:1];
    [librarySpecificFetchOptions setFetchPropertySets:v37];

    v20 = [MEMORY[0x277CD97A8] fetchAssetsInAssetCollection:collectionCopy options:librarySpecificFetchOptions];
    localIdentifier2 = [collectionCopy localIdentifier];
    v39 = [optionsCopy copyWithAssetCollectionLocalIdentifier:localIdentifier2];

    [self requestMusicCurationForAssetFetchResult:v20 curationOptions:v39 graphManager:managerCopy reply:replyCopy];
    optionsCopy = v39;
  }

  v84 = *MEMORY[0x277D85DE8];
}

void __92__PGMusicWrapper_requestMusicCurationForAssetCollection_curationOptions_graphManager_reply___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!a2)
  {
    v21 = +[PGLogging sharedLogging];
    v22 = [v21 loggingConnection];

    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v28 = [*(a1 + 32) uuid];
      *buf = 138412546;
      v31 = v28;
      v32 = 2112;
      v33 = *&v5;
      _os_log_error_impl(&dword_22F0FC000, v22, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Apple Music curation inflation error for PHMemory (%@): %@", buf, 0x16u);
    }

    v7 = [PGError xpcSafeErrorWithError:v5];
    v20 = *(*(a1 + 64) + 16);
    goto LABEL_14;
  }

  v6 = [a2 jsonRepresentation];
  if (v6)
  {
    v7 = v6;
    v8 = +[PGLogging sharedLogging];
    v9 = [v8 loggingConnection];

    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [*(a1 + 48) title];
      v11 = [*(a1 + 48) uuid];
      *buf = 138412802;
      v31 = v10;
      v32 = 2112;
      v33 = *&v11;
      v34 = 2112;
      v35 = v7;
      _os_log_impl(&dword_22F0FC000, v9, OS_LOG_TYPE_INFO, "[MemoriesMusic] Successfully produced Apple Music curation for asset collection (%@) with uuid '%@': %@", buf, 0x20u);
    }

    v12 = mach_absolute_time();
    v13 = *(a1 + 72);
    v15 = *(a1 + 88);
    v14 = *(a1 + 92);
    v16 = *(a1 + 56);
    v17 = v16;
    v18 = *(a1 + 80);
    if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v17, OS_SIGNPOST_INTERVAL_END, v18, "MusicCurationForMemory", "", buf, 2u);
    }

    v19 = *(a1 + 56);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v31 = "MusicCurationForMemory";
      v32 = 2048;
      v33 = ((((v12 - v13) * v15) / v14) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, v19, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
    }

    v20 = *(*(a1 + 64) + 16);
LABEL_14:
    v20();
    goto LABEL_18;
  }

  v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to serialize inflated music curation object to JSON: %@", *(a1 + 40)];
  v24 = +[PGLogging sharedLogging];
  v25 = [v24 loggingConnection];

  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    v29 = [*(a1 + 32) uuid];
    *buf = 138412546;
    v31 = v29;
    v32 = 2112;
    v33 = *&v23;
    _os_log_error_impl(&dword_22F0FC000, v25, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Apple Music curation error for PHMemory (%@): %@", buf, 0x16u);
  }

  v26 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:1 localizedDescription:v23];
  (*(*(a1 + 64) + 16))();

  v7 = 0;
LABEL_18:

  v27 = *MEMORY[0x277D85DE8];
}

@end