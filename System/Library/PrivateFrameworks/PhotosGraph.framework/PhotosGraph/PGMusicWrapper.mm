@interface PGMusicWrapper
+ (BOOL)cacheRemoveAllForPhotoLibrary:(id)a3 error:(id *)a4;
+ (id)_expandTopicKeywordsDictionary:(id)a3;
+ (id)_musicCurationFeaturesWithFeatureExtractionContext:(id)a3 assetFetchResult:(id)a4 graphManager:(id)a5 progressReporter:(id)a6 error:(id *)a7;
+ (id)_musicCurationFeaturesWithFeatureExtractionContext:(id)a3 memory:(id)a4 graphManager:(id)a5 progressReporter:(id)a6 error:(id *)a7;
+ (id)appleMusicCurationWithOptions:(id)a3 graphManager:(id)a4 progressReporter:(id)a5 error:(id *)a6;
+ (id)cacheStatusWithPhotoLibrary:(id)a3 error:(id *)a4;
+ (id)flexMusicCurationWithOptions:(id)a3 graphManager:(id)a4 progressReporter:(id)a5 error:(id *)a6;
+ (id)generateFlexMusicCurationDebugInformationForAssetCollection:(id)a3 graphManager:(id)a4 progressReporter:(id)a5 error:(id *)a6;
+ (id)generateMusicCurationDebugInformationForAssetCollection:(id)a3 graphManager:(id)a4 progressReporter:(id)a5 error:(id *)a6;
+ (id)generateMusicCurationDebugInformationForSongWithAdamID:(id)a3 graphManager:(id)a4 progressReporter:(id)a5 error:(id *)a6;
+ (void)fetchSongDisplayMetadataJSONForAdamIDs:(id)a3 inflationContext:(id)a4 progressReporter:(id)a5 completionHandler:(id)a6;
+ (void)fetchSongMetadataJSONForAdamIDs:(id)a3 options:(id)a4 inflationContext:(id)a5 progressReporter:(id)a6 completionHandler:(id)a7;
+ (void)requestFlexMusicCurationForAssetCollection:(id)a3 curationOptions:(id)a4 graphManager:(id)a5 reply:(id)a6;
+ (void)requestFlexMusicCurationForAssetFetchResult:(id)a3 curationOptions:(id)a4 graphManager:(id)a5 reply:(id)a6;
+ (void)requestFlexMusicCurationWithCurationOptions:(id)a3 graphManager:(id)a4 reply:(id)a5;
+ (void)requestMaestroSongsWithOptions:(id)a3 graphManager:(id)a4 reply:(id)a5;
+ (void)requestMusicCurationForAssetCollection:(id)a3 curationOptions:(id)a4 graphManager:(id)a5 reply:(id)a6;
+ (void)requestMusicCurationForAssetFetchResult:(id)a3 curationOptions:(id)a4 graphManager:(id)a5 reply:(id)a6;
+ (void)requestMusicCurationWithCurationOptions:(id)a3 graphManager:(id)a4 reply:(id)a5;
+ (void)requestRecentlyUsedSongsWithOptions:(id)a3 graphManager:(id)a4 reply:(id)a5;
@end

@implementation PGMusicWrapper

+ (id)flexMusicCurationWithOptions:(id)a3 graphManager:(id)a4 progressReporter:(id)a5 error:(id *)a6
{
  v105 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v10 topicKeywordsAndWeights];
  v14 = v13;
  if (v13 && [v13 count])
  {
    v97 = 0;
    v15 = [v11 musicCuratorContextWithCurationOptions:v10 error:&v97];
    v16 = v97;
    if (!v15)
    {
      v41 = +[PGLogging sharedLogging];
      v42 = [v41 loggingConnection];

      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v100 = v16;
        _os_log_error_impl(&dword_22F0FC000, v42, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Flex Music curation with options failed when creating curator context, error: %@", buf, 0xCu);
      }

      if (a6)
      {
        v43 = v16;
        v40 = 0;
        *a6 = v16;
      }

      else
      {
        v40 = 0;
      }

      goto LABEL_61;
    }

    v17 = [a1 _expandTopicKeywordsDictionary:v14];
    v18 = [objc_opt_class() flexMusicFeatureExtractionContextWithCuratorContext:v15];
    v91 = v17;
    v19 = [[PGKeywordBasedFeatureExtractor alloc] initWithWeightByKeyword:v17];
    v20 = [v12 childProgressReporterFromStart:0.0 toEnd:0.2];
    v96 = 0;
    v89 = v19;
    v90 = v18;
    v21 = [(PGKeywordBasedFeatureExtractor *)v19 musicCurationFeaturesWithContext:v18 progressReporter:v20 error:&v96];
    v93 = v96;

    if (!v21)
    {
      v44 = +[PGLogging sharedLogging];
      v45 = [v44 loggingConnection];

      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v100 = v93;
        _os_log_error_impl(&dword_22F0FC000, v45, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Flex Music option-based curation failed to extract features with error: %@", buf, 0xCu);
      }

      v40 = 0;
      if (a6)
      {
        *a6 = v93;
      }

      goto LABEL_60;
    }

    v80 = v21;
    v22 = [v11 photoLibrary];
    v23 = [PGMusicCurationRecentlyUsedSongs recentlyUsedFlexMusicSongsFromPhotoLibrary:v22];

    v24 = [v10 recentlyUsedBundledSongIDs];
    v25 = [MEMORY[0x277CBEAA8] date];
    v83 = v23;
    [v23 addSongIDs:v24 date:v25];

    v85 = [v10 suggestedMood];
    v94 = &stru_2843F5C58;
    v84 = v15;
    v82 = v16;
    if ([v10 shouldUseSpecificationOptionsForCuration])
    {
      v26 = +[PGLogging sharedLogging];
      v27 = [v26 loggingConnection];

      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22F0FC000, v27, OS_LOG_TYPE_INFO, "[MemoriesMusic] Using specification options for flex", buf, 2u);
      }

      v28 = [v10 musicCurationSpecificationOptions];
      v29 = [v28 genres];
      v30 = [v29 firstObject];
      v31 = v30;
      v32 = &stru_2843F5C58;
      if (v30)
      {
        v32 = v30;
      }

      v94 = v32;

      v33 = [v28 phMoods];
      v34 = v33;
      v21 = v80;
      if (v33 && [v33 count])
      {
        v35 = [v34 firstObject];
        v85 = [PGMusicCurationSpecificationOptions PHMemoryMoodFromNumber:v35];
      }

      v36 = [v28 moodsText];
      v37 = [v36 count];

      if (v37)
      {
        v92 = [v28 moodsText];
      }

      else
      {
        v92 = MEMORY[0x277CBEBF8];
      }

      v46 = [v28 weightByLanguage];
      v47 = [v46 count];

      if (v47)
      {
        v88 = [v28 weightByLanguage];
      }

      else
      {
        v88 = MEMORY[0x277CBEC10];
      }

      v48 = [v28 weightByRegion];
      v49 = [v48 count];

      if (v49)
      {
        v87 = [v28 weightByRegion];
      }

      else
      {
        v87 = MEMORY[0x277CBEC10];
      }

      v15 = v84;
    }

    else
    {
      v92 = MEMORY[0x277CBEBF8];
      v87 = MEMORY[0x277CBEC10];
      v88 = MEMORY[0x277CBEC10];
      v21 = v80;
    }

    v50 = +[PGLogging sharedLogging];
    v51 = [v50 loggingConnection];

    if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
    {
      *buf = 134218498;
      v100 = v85;
      v101 = 2112;
      v102 = v94;
      v103 = 2112;
      v104 = v92;
      _os_log_impl(&dword_22F0FC000, v51, OS_LOG_TYPE_INFO, "[MemoriesMusic] Final mood: %llu, genre: %@, moodsKeywordsFromStory: %@", buf, 0x20u);
    }

    v52 = [PGFlexMusicCurationParameters alloc];
    v53 = [MEMORY[0x277CCAD78] UUID];
    v54 = [v53 UUIDString];
    v55 = v52;
    v56 = v83;
    v57 = [(PGFlexMusicCurationParameters *)v55 initWithMood:v85 moodKeywords:v92 recentlyUsedSongs:v83 entityUUID:v54 useMoodKeywords:0 features:v21 musicCuratorContext:v15 genre:v94 weightByLanguage:v88 weightByRegion:v87];

    v58 = +[PGLogging sharedLogging];
    v59 = [v58 loggingConnection];

    if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22F0FC000, v59, OS_LOG_TYPE_INFO, "[MemoriesMusic] Curating Flex Music using options", buf, 2u);
    }

    v60 = [v12 childProgressReporterFromStart:0.2 toEnd:1.0];
    v95 = 0;
    v86 = v57;
    v40 = [PGFlexMusicCurator curateFlexMusicWithCurationParameters:v57 progressReporter:v60 error:&v95];
    v61 = v95;

    if (!v40)
    {
      v71 = +[PGLogging sharedLogging];
      v72 = [v71 loggingConnection];

      if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v100 = v61;
        _os_log_error_impl(&dword_22F0FC000, v72, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Flex Music curation using options failed with Error: %@", buf, 0xCu);
      }

      v56 = v83;
      if (a6)
      {
        v73 = v61;
        *a6 = v61;
      }

      goto LABEL_59;
    }

    v62 = [v10 musicCurationSpecificationOptions];
    if (v62)
    {
      v63 = v62;
      v64 = [v10 musicCurationSpecificationOptions];
      if (![v64 shouldDownloadKeyFlexSong])
      {
        goto LABEL_53;
      }

      v65 = [v40 bestSongSuggestions];
      if (!v65)
      {
        goto LABEL_53;
      }

      v81 = v65;
      v79 = [v40 bestSongSuggestions];
      v66 = [v79 firstObject];
      if (!v66)
      {
LABEL_52:

LABEL_53:
        goto LABEL_54;
      }

      v77 = v66;
      v76 = [v40 bestSongSuggestions];
      v67 = [v76 firstObject];
      v78 = [v67 uid];

      v56 = v83;
      if (v78)
      {
        v68 = +[PGLogging sharedLogging];
        v69 = [v68 loggingConnection];

        if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22F0FC000, v69, OS_LOG_TYPE_INFO, "[MemoriesMusic] Cache the key flex song, which triggers the song assets download", buf, 2u);
        }

        v63 = [v40 bestSongSuggestions];
        v64 = [v63 firstObject];
        v81 = [v64 uid];
        v98 = v81;
        v79 = [MEMORY[0x277CBEA60] arrayWithObjects:&v98 count:1];
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
  v39 = [v38 loggingConnection];

  if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_22F0FC000, v39, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Flex Music curation with options failed with empty keywords and weights dictionary", buf, 2u);
  }

  if (a6)
  {
    [PGError errorWithCode:-8 description:@"Flex Music curation: No topic keywords and weights provided in options"];
    *a6 = v40 = 0;
  }

  else
  {
    v40 = 0;
  }

LABEL_62:

  v74 = *MEMORY[0x277D85DE8];

  return v40;
}

+ (id)_expandTopicKeywordsDictionary:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v5 = v3;
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

                [v4 setObject:v12 forKeyedSubscript:*(*(&v24 + 1) + 8 * j)];
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
          [v4 setObject:v12 forKeyedSubscript:v11];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v7);
  }

  v21 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)appleMusicCurationWithOptions:(id)a3 graphManager:(id)a4 progressReporter:(id)a5 error:(id *)a6
{
  v51 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v10 topicKeywordsAndWeights];
  v14 = v13;
  if (v13 && [v13 count])
  {
    v48 = 0;
    v15 = [v11 musicCuratorContextWithCurationOptions:v10 error:&v48];
    v16 = v48;
    if (!v15)
    {
      v30 = +[PGLogging sharedLogging];
      v31 = [v30 loggingConnection];

      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v50 = v16;
        _os_log_error_impl(&dword_22F0FC000, v31, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Apple Music option-based curation failed when creating curator context, error: %@", buf, 0xCu);
      }

      if (a6)
      {
        v32 = v16;
        v25 = 0;
        *a6 = v16;
      }

      else
      {
        v25 = 0;
      }

      goto LABEL_29;
    }

    v17 = [a1 _expandTopicKeywordsDictionary:v14];
    v18 = [objc_opt_class() appleMusicFeatureExtractionContextWithCuratorContext:v15];
    v44 = v17;
    v19 = [[PGKeywordBasedFeatureExtractor alloc] initWithWeightByKeyword:v17];
    v20 = [v12 childProgressReporterFromStart:0.0 toEnd:0.2];
    v47 = 0;
    v42 = v19;
    v43 = v18;
    v21 = [(PGKeywordBasedFeatureExtractor *)v19 musicCurationFeaturesWithContext:v18 progressReporter:v20 error:&v47];
    v45 = v47;

    v22 = +[PGLogging sharedLogging];
    v23 = [v22 loggingConnection];

    if (v21)
    {
      v41 = v16;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22F0FC000, v23, OS_LOG_TYPE_INFO, "[MemoriesMusic] Curating Apple Music using options", buf, 2u);
      }

      v24 = [v12 childProgressReporterFromStart:0.2 toEnd:1.0];
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
        v36 = [v35 loggingConnection];

        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v50 = v26;
          _os_log_error_impl(&dword_22F0FC000, v36, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Apple Music option-based curation error with error: %@", buf, 0xCu);
        }

        v21 = v40;
        v16 = v41;
        if (a6)
        {
          v37 = v26;
          *a6 = v26;
        }
      }
    }

    else
    {
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v50 = v45;
        _os_log_error_impl(&dword_22F0FC000, v23, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Apple Music option-based curation failed to extract features with error: %@", buf, 0xCu);
      }

      if (a6)
      {
        v33 = v45;
        v34 = v45;
        v25 = 0;
        *a6 = v45;
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
  v29 = [v28 loggingConnection];

  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_22F0FC000, v29, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Apple Music option-based curation failed with empty keywords and weights dictionary", buf, 2u);
  }

  if (a6)
  {
    [PGError errorWithCode:-8 description:@"No topic keywords and weights provided in options"];
    *a6 = v25 = 0;
  }

  else
  {
    v25 = 0;
  }

LABEL_30:

  v38 = *MEMORY[0x277D85DE8];

  return v25;
}

+ (id)_musicCurationFeaturesWithFeatureExtractionContext:(id)a3 assetFetchResult:(id)a4 graphManager:(id)a5 progressReporter:(id)a6 error:(id *)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
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
  v15 = v12;
  v23 = v15;
  v16 = v11;
  v24 = v16;
  v17 = v14;
  v25 = v17;
  v27 = &v28;
  [v13 performSynchronousConcurrentGraphReadUsingBlock:v22];
  v18 = v35[5];
  if (v18)
  {
    v19 = v18;
  }

  else if (a7)
  {
    v20 = v29[5];
    if (v20)
    {
      *a7 = v20;
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

+ (id)_musicCurationFeaturesWithFeatureExtractionContext:(id)a3 memory:(id)a4 graphManager:(id)a5 progressReporter:(id)a6 error:(id *)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
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
  v15 = v12;
  v23 = v15;
  v16 = v11;
  v24 = v16;
  v17 = v14;
  v25 = v17;
  v27 = &v28;
  [v13 performSynchronousConcurrentGraphReadUsingBlock:v22];
  v18 = v35[5];
  if (v18)
  {
    v19 = v18;
  }

  else if (a7)
  {
    v20 = v29[5];
    if (v20)
    {
      *a7 = v20;
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

+ (void)requestMaestroSongsWithOptions:(id)a3 graphManager:(id)a4 reply:(id)a5
{
  v41 = *MEMORY[0x277D85DE8];
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = +[PGLogging memoriesMusicLogging];
  v11 = [v10 loggingConnection];

  v12 = os_signpost_id_generate(v11);
  v13 = v11;
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "RequestMaestroSongsWithOptions", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v33 = mach_absolute_time();
  v15 = [[PGMusicCurationOptions alloc] initWithOptionsDictionary:v9];

  v35 = 0;
  v16 = [v8 musicCuratorContextWithCurationOptions:v15 error:&v35];

  v17 = v35;
  if (v17)
  {
    v18 = +[PGLogging sharedLogging];
    v19 = [v18 loggingConnection];

    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v38 = v17;
      _os_log_error_impl(&dword_22F0FC000, v19, OS_LOG_TYPE_ERROR, "[MemoriesMusic] requestAllMaestroSongs Unable to get the musicCuratorContext: %@", buf, 0xCu);
    }

    v20 = [PGError xpcSafeErrorWithError:v17];
    v7[2](v7, 0, v20);
  }

  v34 = v17;
  v21 = [v16 extractSongIdKeywordMappings:&v34];
  v22 = v34;

  if (v22)
  {
    v23 = +[PGLogging sharedLogging];
    v24 = [v23 loggingConnection];

    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v38 = v22;
      _os_log_error_impl(&dword_22F0FC000, v24, OS_LOG_TYPE_ERROR, "[MemoriesMusic] requestAllMaestroSongs Unable to extractSongIdKeywordMappings: %@", buf, 0xCu);
    }

    v25 = [PGError xpcSafeErrorWithError:v22];
    v7[2](v7, 0, v25);
  }

  v26 = [PGError xpcSafeErrorWithError:0];
  (v7)[2](v7, v21, v26);

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

+ (void)requestRecentlyUsedSongsWithOptions:(id)a3 graphManager:(id)a4 reply:(id)a5
{
  v47 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = +[PGLogging memoriesMusicLogging];
  v11 = [v10 loggingConnection];

  v12 = os_signpost_id_generate(v11);
  v13 = v11;
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
  if (v7 && (v16 = *MEMORY[0x277D3AE90], [v7 objectForKeyedSubscript:*MEMORY[0x277D3AE90]], v17 = objc_claimAutoreleasedReturnValue(), v17, v17))
  {
    v18 = [v7 objectForKeyedSubscript:v16];
    v19 = v18;
    if (v18)
    {
      if ([v18 isEqualToString:*MEMORY[0x277D3AE80]])
      {
        v20 = v8;
        v21 = [v8 photoLibrary];
        v22 = [PGMusicCurationRecentlyUsedSongs recentlyUsedAppleMusicSongsFromPhotoLibrary:v21];

        v23 = [v22 allEntries];
        v24 = +[PGLogging sharedLogging];
        v25 = [v24 loggingConnection];

        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v44 = v23;
          v26 = "[MemoriesMusic] recentlyUsedAppleMusicSongs: %@";
LABEL_14:
          _os_log_impl(&dword_22F0FC000, v25, OS_LOG_TYPE_INFO, v26, buf, 0xCu);
          goto LABEL_15;
        }

        goto LABEL_15;
      }

      if ([v19 isEqualToString:*MEMORY[0x277D3AE88]])
      {
        v20 = v8;
        v27 = [v8 photoLibrary];
        v22 = [PGMusicCurationRecentlyUsedSongs recentlyUsedFlexMusicSongsFromPhotoLibrary:v27];

        v23 = [v22 allEntries];
        v28 = +[PGLogging sharedLogging];
        v25 = [v28 loggingConnection];

        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v44 = v23;
          v26 = "[MemoriesMusic] recentlyUsedFlexMusicSongs: %@";
          goto LABEL_14;
        }

LABEL_15:

        v29 = 0;
        v30 = v23;
        goto LABEL_20;
      }
    }

    v20 = v8;
  }

  else
  {
    v20 = v8;
    v19 = 0;
  }

  v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"requestRecentlyUsedSongsWithOptions is missing a required options key or value"];
  v31 = +[PGLogging sharedLogging];
  v32 = [v31 loggingConnection];

  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v44 = v22;
    _os_log_error_impl(&dword_22F0FC000, v32, OS_LOG_TYPE_ERROR, "[MemoriesMusic] %@", buf, 0xCu);
  }

  v29 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:2 localizedDescription:v22];
  v23 = 0;
  v30 = v29;
LABEL_20:
  v33 = [PGError xpcSafeErrorWithError:v29];
  v9[2](v9, v23, v33);

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

+ (void)requestFlexMusicCurationWithCurationOptions:(id)a3 graphManager:(id)a4 reply:(id)a5
{
  v56 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = +[PGLogging memoriesMusicLogging];
  v12 = [v11 loggingConnection];

  v13 = os_signpost_id_generate(v12);
  v14 = v12;
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
  v18 = [v17 loggingConnection];

  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22F0FC000, v18, OS_LOG_TYPE_INFO, "[MemoriesMusic] Building Flex Music curation using curation options", buf, 2u);
  }

  v19 = [MEMORY[0x277D22C80] progressReporterWithProgressBlock:&__block_literal_global_370];
  v50 = 0;
  v20 = [a1 flexMusicCurationWithOptions:v10 graphManager:v9 progressReporter:v19 error:&v50];

  v21 = v50;
  if (v20)
  {
    v22 = [v20 expandedJsonRepresentation];
    if (v22)
    {
      v23 = [PGError xpcSafeErrorWithError:0];
      v8[2](v8, v22, v23);

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
      v39 = [v38 loggingConnection];

      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v53 = v37;
        _os_log_error_impl(&dword_22F0FC000, v39, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Flex Music curation using options failed with serialization error: %@", buf, 0xCu);
      }

      v48 = v37;
      v40 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:1 localizedDescription:v37];
      v8[2](v8, 0, v40);
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
    v30 = [v29 loggingConnection];

    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v53 = v21;
      _os_log_error_impl(&dword_22F0FC000, v30, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Flex Music curation using options failed with Error: %@", buf, 0xCu);
    }

    v31 = [PGError xpcSafeErrorWithError:v21];
    v8[2](v8, 0, v31);

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

+ (void)requestMusicCurationWithCurationOptions:(id)a3 graphManager:(id)a4 reply:(id)a5
{
  v107 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v88 = a5;
  v10 = +[PGLogging memoriesMusicLogging];
  v11 = [v10 loggingConnection];

  v12 = v11;
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
  v17 = [v8 shouldUseSpecificationOptionsForCuration];
  v18 = +[PGLogging sharedLogging];
  v19 = [v18 loggingConnection];

  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_INFO);
  if (!v17)
  {
    if (v20)
    {
      *buf = 0;
      _os_log_impl(&dword_22F0FC000, v19, OS_LOG_TYPE_INFO, "[MemoriesMusic] Building Apple Music curation using curation options", buf, 2u);
    }

    v21 = [MEMORY[0x277D22C80] progressReporterWithProgressBlock:&__block_literal_global_364];
    v100 = 0;
    v32 = [a1 appleMusicCurationWithOptions:v8 graphManager:v9 progressReporter:v21 error:&v100];
    v24 = v100;
    if (!v32)
    {
      v54 = +[PGLogging sharedLogging];
      v55 = [v54 loggingConnection];

      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v104 = v24;
        _os_log_error_impl(&dword_22F0FC000, v55, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Apple Music option-based curation failed error: %@", buf, 0xCu);
      }

      v56 = [PGError xpcSafeErrorWithError:v24];
      v26 = v88;
      (*(v88 + 2))(v88, 0, v56);

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

    v33 = v21;
    v21 = v32;
LABEL_21:

    v37 = [v21 keySongAdamID];

    if (v37)
    {
      v38 = MEMORY[0x277CBEA60];
      v39 = [v21 keySongAdamID];
      v40 = [v38 arrayWithObjects:{v39, 0}];

      v41 = +[PGLogging sharedLogging];
      v42 = [v41 loggingConnection];

      if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
      {
        v43 = [v40 objectAtIndexedSubscript:0];
        *buf = 138412290;
        v104 = v43;
        _os_log_impl(&dword_22F0FC000, v42, OS_LOG_TYPE_INFO, "[MemoriesMusic] Start Caching the key Apple Music song %@ for MC. It should trigger the song assets download.", buf, 0xCu);
      }

      v44 = [MEMORY[0x277D22C80] ignoreProgress];
      v98[0] = MEMORY[0x277D85DD0];
      v98[1] = 3221225472;
      v98[2] = __77__PGMusicWrapper_requestMusicCurationWithCurationOptions_graphManager_reply___block_invoke_365;
      v98[3] = &unk_278884D38;
      v99 = v40;
      v45 = v40;
      [PGMusicAudioCacher cacheSongAudioForAdamIDs:v45 progressReporter:v44 completionHandler:v98];
    }

    v85 = v8;
    v46 = +[PGLogging sharedLogging];
    v47 = [v46 loggingConnection];

    if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22F0FC000, v47, OS_LOG_TYPE_INFO, "[MemoriesMusic] Inflating Apple Music option-based curation", buf, 2u);
    }

    v48 = [[PGMusicCurationInflationOptions alloc] initWithInflationActionSource:1];
    v97 = 0;
    [v9 musicCurationInflationContextWithInflationOptions:v48 error:&v97];
    v50 = v49 = v9;
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
        v92 = v88;
        v93 = v87;
        v95 = info;
        v90 = v15;
        v94 = spid;
        v91 = v21;
        [PGMusicCurator inflateDisplayMetadataForMusicCuration:v91 inflationContext:v50 curatorContext:v51 progressReporter:v53 completionHandler:v89];
      }

      else
      {
        v66 = +[PGLogging sharedLogging];
        v67 = [v66 loggingConnection];

        if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v104 = v52;
          _os_log_error_impl(&dword_22F0FC000, v67, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Apple Music option-based curation musicCuratorContext error: %{public}@", buf, 0xCu);
        }

        v68 = [PGError xpcSafeErrorWithError:v52];
        (*(v88 + 2))(v88, 0, v68);

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

      v26 = v88;
    }

    else
    {
      v58 = +[PGLogging sharedLogging];
      v59 = [v58 loggingConnection];

      if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v104 = v24;
        _os_log_error_impl(&dword_22F0FC000, v59, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Apple Music option-based curation inflation error: %{public}@", buf, 0xCu);
      }

      v60 = [PGError xpcSafeErrorWithError:v24];
      v26 = v88;
      (*(v88 + 2))(v88, 0, v60);

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

    v9 = v84;
    v8 = v85;
    goto LABEL_53;
  }

  if (v20)
  {
    *buf = 0;
    _os_log_impl(&dword_22F0FC000, v19, OS_LOG_TYPE_INFO, "[MemoriesMusic] Building Apple Music curation using specification options", buf, 2u);
  }

  v21 = [v8 musicCurationSpecificationOptions];
  if (![v21 isQUEmpty])
  {
    v24 = [[PGSpecificationBasedMusicCurator alloc] initWithOptions:v21];
    v101 = 0;
    v34 = [(PGSpecificationBasedMusicCurator *)v24 musicCurationAndReturnError:&v101];
    v35 = v101;
    v36 = v35;
    if (!v34)
    {
      v75 = +[PGLogging sharedLogging];
      v76 = [v75 loggingConnection];

      if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
      {
        v83 = [v36 localizedDescription];
        *buf = 138412290;
        v104 = v83;
        _os_log_error_impl(&dword_22F0FC000, v76, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Apple Music specification-based curation failed with error: %@", buf, 0xCu);
      }

      v77 = [PGError xpcSafeErrorWithError:v36];
      v26 = v88;
      (*(v88 + 2))(v88, 0, v77);

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

    v33 = v21;
    v21 = v34;
    goto LABEL_21;
  }

  v22 = +[PGLogging sharedLogging];
  v23 = [v22 loggingConnection];

  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v104 = @"Apple Music curation failed since specificationOptions is empty";
    _os_log_error_impl(&dword_22F0FC000, v23, OS_LOG_TYPE_ERROR, "[MemoriesMusic] %@", buf, 0xCu);
  }

  v24 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:1 localizedDescription:@"Apple Music curation failed since specificationOptions is empty"];
  v25 = [PGError xpcSafeErrorWithError:v24];
  v26 = v88;
  (*(v88 + 2))(v88, 0, v25);

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

+ (BOOL)cacheRemoveAllForPhotoLibrary:(id)a3 error:(id *)a4
{
  v5 = [PGMusicCache cacheWithPhotoLibrary:a3 error:?];
  v6 = [MEMORY[0x277D22C80] ignoreProgress];
  LOBYTE(a4) = [v5 removeAllWithProgressReporter:v6 error:a4];

  return a4;
}

+ (id)cacheStatusWithPhotoLibrary:(id)a3 error:(id *)a4
{
  v5 = [PGMusicCache cacheWithPhotoLibrary:a3 error:?];
  v6 = [v5 statusAndReturnError:a4];

  return v6;
}

+ (id)generateMusicCurationDebugInformationForAssetCollection:(id)a3 graphManager:(id)a4 progressReporter:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v10 musicCuratorContextWithRecentlyUsedSongAdamIDs:0 error:a6];
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
    v16 = v9;
    v17 = v12;
    v18 = v11;
    v20 = a6;
    [v10 performSynchronousConcurrentGraphReadUsingBlock:v15];
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

+ (id)generateMusicCurationDebugInformationForSongWithAdamID:(id)a3 graphManager:(id)a4 progressReporter:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a5;
  v11 = [a4 musicCuratorContextWithRecentlyUsedSongAdamIDs:0 error:a6];
  if (v11)
  {
    v12 = [PGMusicCurator generateDebugInformationForSongWithAdamID:v9 context:v11 progressReporter:v10 error:a6];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)generateFlexMusicCurationDebugInformationForAssetCollection:(id)a3 graphManager:(id)a4 progressReporter:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
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
  v12 = v9;
  v17 = v12;
  v13 = v11;
  v18 = v13;
  v20 = a6;
  [v10 performSynchronousConcurrentGraphReadUsingBlock:v16];
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

+ (void)fetchSongMetadataJSONForAdamIDs:(id)a3 options:(id)a4 inflationContext:(id)a5 progressReporter:(id)a6 completionHandler:(id)a7
{
  v11 = a7;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __110__PGMusicWrapper_fetchSongMetadataJSONForAdamIDs_options_inflationContext_progressReporter_completionHandler___block_invoke;
  v13[3] = &unk_278881748;
  v14 = v11;
  v12 = v11;
  [PGMusicCurator fetchSongMetadataJSONForAdamIDs:a3 options:a4 inflationContext:a5 progressReporter:a6 completionHandler:v13];
}

+ (void)fetchSongDisplayMetadataJSONForAdamIDs:(id)a3 inflationContext:(id)a4 progressReporter:(id)a5 completionHandler:(id)a6
{
  v9 = a6;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __109__PGMusicWrapper_fetchSongDisplayMetadataJSONForAdamIDs_inflationContext_progressReporter_completionHandler___block_invoke;
  v11[3] = &unk_278881748;
  v12 = v9;
  v10 = v9;
  [PGMusicCurator fetchSongDisplayMetadataJSONForAdamIDs:a3 inflationContext:a4 progressReporter:a5 completionHandler:v11];
}

+ (void)requestFlexMusicCurationForAssetFetchResult:(id)a3 curationOptions:(id)a4 graphManager:(id)a5 reply:(id)a6
{
  v73 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = +[PGLogging sharedLogging];
  v15 = [v14 loggingConnection];

  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22F0FC000, v15, OS_LOG_TYPE_INFO, "[MemoriesMusic] Building flex music curation context for asset fetch result.", buf, 2u);
  }

  if ([v10 count])
  {
    v70 = 0;
    v16 = [v12 musicCuratorContextWithCurationOptions:v11 error:&v70];
    v17 = v70;
    if (v16)
    {
      v18 = [MEMORY[0x277D22C80] progressReporterWithProgressBlock:&__block_literal_global_352_21639];
      v66 = v16;
      v67 = [objc_opt_class() flexMusicFeatureExtractionContextWithCuratorContext:v16];
      v19 = +[PGLogging sharedLogging];
      v20 = [v19 loggingConnection];

      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22F0FC000, v20, OS_LOG_TYPE_INFO, "[MemoriesMusic] Extracting music curation features from asset fetch result for Flex Music curation", buf, 2u);
      }

      v21 = [v18 childProgressReporterFromStart:0.0 toEnd:0.2];
      v69 = 0;
      v22 = [a1 _musicCurationFeaturesWithFeatureExtractionContext:v67 assetFetchResult:v10 graphManager:v12 progressReporter:v21 error:&v69];
      v64 = v69;

      v65 = v22;
      if (v22)
      {
        v63 = v18;
        v23 = [v12 photoLibrary];
        v24 = [PGMusicCurationRecentlyUsedSongs recentlyUsedFlexMusicSongsFromPhotoLibrary:v23];

        v60 = v11;
        v25 = [v11 recentlyUsedBundledSongIDs];
        v26 = [MEMORY[0x277CBEAA8] date];
        v62 = v24;
        [v24 addSongIDs:v25 date:v26];

        v27 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v10, "count")}];
        if ([v10 count])
        {
          v28 = 0;
          do
          {
            v29 = objc_autoreleasePoolPush();
            v30 = [v10 objectAtIndexedSubscript:v28];
            v31 = [v30 localIdentifier];
            [v27 addObject:v31];

            objc_autoreleasePoolPop(v29);
            ++v28;
          }

          while (v28 < [v10 count]);
        }

        v32 = [v27 sortedArrayUsingSelector:sel_compare_];
        v33 = [PGFlexMusicCurationParameters alloc];
        v59 = v32;
        v34 = [v32 firstObject];
        v35 = [(PGFlexMusicCurationParameters *)v33 initWithMood:16 moodKeywords:MEMORY[0x277CBEBF8] recentlyUsedSongs:v62 entityUUID:v34 useMoodKeywords:0 features:v65 musicCuratorContext:v66];

        v68 = 0;
        v58 = v35;
        v36 = [PGFlexMusicCurator curateFlexMusicWithCurationParameters:v35 progressReporter:v63 error:&v68];
        v37 = v68;
        v38 = v37;
        if (v36)
        {
          v61 = v37;
          v39 = [v36 jsonRepresentation];
          if (v39)
          {
            v40 = +[PGLogging sharedLogging];
            v41 = [v40 loggingConnection];

            if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v72 = v39;
              _os_log_impl(&dword_22F0FC000, v41, OS_LOG_TYPE_INFO, "[MemoriesMusic] Successfully produced Flex Music curation for asset local identifiers: %@", buf, 0xCu);
            }

            v42 = [PGError xpcSafeErrorWithError:v61];
            v13[2](v13, v39, v42);
          }

          else
          {
            v42 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to serialize flex music curation object to JSON: %@", v36];
            v54 = +[PGLogging sharedLogging];
            v55 = [v54 loggingConnection];

            if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v72 = v42;
              _os_log_error_impl(&dword_22F0FC000, v55, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Flex Music serialization error: %@", buf, 0xCu);
            }

            v56 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:1 localizedDescription:v42];

            v13[2](v13, 0, v56);
            v61 = v56;
          }

          v18 = v63;
          v49 = v64;

          v53 = v61;
        }

        else
        {
          v51 = +[PGLogging sharedLogging];
          v52 = [v51 loggingConnection];

          if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v72 = v38;
            _os_log_error_impl(&dword_22F0FC000, v52, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Flex Music Curation Error: %@", buf, 0xCu);
          }

          [PGError xpcSafeErrorWithError:v38];
          v39 = v53 = v38;
          v13[2](v13, 0, v39);
          v18 = v63;
          v49 = v64;
        }

        v11 = v60;
        v16 = v66;
        v50 = v62;
      }

      else
      {
        v47 = +[PGLogging sharedLogging];
        v48 = [v47 loggingConnection];

        v49 = v64;
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v72 = v64;
          _os_log_error_impl(&dword_22F0FC000, v48, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Flex Music feature extraction error for assert fetch result: %@", buf, 0xCu);
        }

        v50 = [PGError xpcSafeErrorWithError:v64];
        v13[2](v13, 0, v50);
        v16 = v66;
      }
    }

    else
    {
      v45 = +[PGLogging sharedLogging];
      v46 = [v45 loggingConnection];

      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v72 = v17;
        _os_log_error_impl(&dword_22F0FC000, v46, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Flex Music curator context error for asset fetch result: %@", buf, 0xCu);
      }

      v18 = [PGError xpcSafeErrorWithError:v17];
      v13[2](v13, 0, v18);
    }
  }

  else
  {
    v43 = +[PGLogging sharedLogging];
    v44 = [v43 loggingConnection];

    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v72 = @"Cannot curate music for an empty asset fetch result.";
      _os_log_error_impl(&dword_22F0FC000, v44, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Flex Music Curation Error: %@", buf, 0xCu);
    }

    v17 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:1 localizedDescription:@"Cannot curate music for an empty asset fetch result."];
    v13[2](v13, 0, v17);
  }

  v57 = *MEMORY[0x277D85DE8];
}

+ (void)requestFlexMusicCurationForAssetCollection:(id)a3 curationOptions:(id)a4 graphManager:(id)a5 reply:(id)a6
{
  v133 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = +[PGLogging sharedLogging];
  v15 = [v14 loggingConnection];

  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22F0FC000, v15, OS_LOG_TYPE_INFO, "[MemoriesMusic] Building Flex Music curation context for asset collection.", buf, 2u);
  }

  v120 = [MEMORY[0x277D22C80] progressReporterWithProgressBlock:&__block_literal_global_341];
  v16 = [v10 uuid];
  v125 = 0;
  v17 = [v12 musicCuratorContextWithCurationOptions:v11 error:&v125];
  v119 = v125;
  if (v17)
  {
    v118 = v16;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v19 = v10;
    v20 = MEMORY[0x277CBEBF8];
    v116 = v11;
    if ((isKindOfClass & 1) == 0)
    {
      v117 = MEMORY[0x277CBEBF8];
      v23 = 0;
      v113 = 16;
      v10 = v19;
LABEL_16:
      v115 = v12;
      v38 = [v12 photoLibrary];
      v39 = [PGMusicCurationRecentlyUsedSongs recentlyUsedFlexMusicSongsFromPhotoLibrary:v38];

      v40 = [v11 recentlyUsedBundledSongIDs];
      v41 = [MEMORY[0x277CBEAA8] date];
      [v39 addSongIDs:v40 date:v41];

      if ((isKindOfClass & 1) == 0)
      {
        v42 = [v115 photoLibrary];
        v123 = 0;
        v43 = [PGMusicCurationRecentlyUsedSongs recentlyUsedFlexMusicSongsForCollectionsFromPhotoLibrary:v42 error:&v123];
        v44 = v123;

        v45 = +[PGLogging sharedLogging];
        v46 = [v45 loggingConnection];

        if (!v43 || v44)
        {
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v128 = v44;
            _os_log_error_impl(&dword_22F0FC000, v46, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Error getting the recently used Flex songs for collections. error=%@", buf, 0xCu);
          }
        }

        else
        {
          if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v128 = v43;
            _os_log_impl(&dword_22F0FC000, v46, OS_LOG_TYPE_INFO, "[MemoriesMusic] recentlyUsedSongsForCollections = %@", buf, 0xCu);
          }

          [v39 appendWithOtherRecentlyUsed:v43];
        }

        v11 = v116;
      }

      v112 = v39;
      v47 = [[PGFlexMusicCurationParameters alloc] initWithMood:v113 moodKeywords:v117 recentlyUsedSongs:v39 entityUUID:v118 useMoodKeywords:0 features:v23 musicCuratorContext:v17];
      v48 = [v120 childProgressReporterFromStart:0.2 toEnd:1.0];
      v122 = 0;
      v111 = v47;
      v49 = [PGFlexMusicCurator curateFlexMusicWithCurationParameters:v47 progressReporter:v48 error:&v122];
      v114 = v122;

      if (!v49)
      {
        v61 = +[PGLogging sharedLogging];
        v62 = [v61 loggingConnection];

        v63 = v114;
        if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
        {
          v104 = [v10 uuid];
          *buf = 138412546;
          v128 = v104;
          v129 = 2112;
          v130 = v114;
          _os_log_error_impl(&dword_22F0FC000, v62, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Flex Music curation failed for asset collection (%@) with Error: %@", buf, 0x16u);
        }

        v55 = [PGError xpcSafeErrorWithError:v114];
        v13[2](v13, 0, v55);
        v12 = v115;
        goto LABEL_68;
      }

      if (isKindOfClass)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v50 = v10;
          v51 = v50;
          if (v50 && [(PGFlexMusicCurationManager *)v50 creationType]== 1)
          {
            v52 = +[PGLogging sharedLogging];
            v53 = [v52 loggingConnection];

            if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_22F0FC000, v53, OS_LOG_TYPE_INFO, "[MemoriesMusic] Generative PHMemory so extract the curated music", buf, 2u);
            }

            v54 = [(PGFlexMusicCurationManager *)v51 extractGenerativeMemoryMusicCuration];
            if (v54)
            {
              v55 = v54;
              v107 = v23;
              v56 = [v54 objectForKeyedSubscript:@"flexMusicSongIds"];
              v57 = v56;
              if (v56 && [v56 count])
              {
                v58 = +[PGLogging sharedLogging];
                v59 = [v58 loggingConnection];

                if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&dword_22F0FC000, v59, OS_LOG_TYPE_INFO, "[MemoriesMusic] Replacing replaceBestSongSuggestionsWithFlexSongIds", buf, 2u);
                }

                v60 = [v49 replaceBestSongSuggestionsWithFlexSongIds:v57];

                v49 = v60;
              }

LABEL_52:

              v70 = v55;
              v55 = v49;
              v23 = v107;
LABEL_53:

              v108 = [v55 jsonRepresentation];
              if (!v108)
              {
                v95 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to serialize flex music curation object to JSON: %@", v55];
                v97 = +[PGLogging sharedLogging];
                v98 = [v97 loggingConnection];

                if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
                {
                  v106 = [v10 uuid];
                  *buf = 138412546;
                  v128 = v106;
                  v129 = 2112;
                  v130 = v95;
                  _os_log_error_impl(&dword_22F0FC000, v98, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Flex Music curation failed for asset collection (%@) with serialization error: %@", buf, 0x16u);
                }

                v99 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:1 localizedDescription:v95];

                v13[2](v13, 0, v99);
                v63 = v99;
                v12 = v115;
                v96 = 0;
                goto LABEL_67;
              }

              v110 = v13;
              v74 = +[PGLogging sharedLogging];
              v75 = [v74 loggingConnection];

              v63 = v114;
              if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
              {
                v76 = [v10 title];
                v77 = [v10 uuid];
                *buf = 138412802;
                v128 = v76;
                v129 = 2112;
                v130 = v77;
                v131 = 2112;
                v132 = v108;
                _os_log_impl(&dword_22F0FC000, v75, OS_LOG_TYPE_INFO, "[MemoriesMusic] Successfully produced Flex Music curation for asset collection (%@) with uuid '%@': %@", buf, 0x20u);
              }

              v78 = [v55 bestSongSuggestions];
              v12 = v115;
              if (v78)
              {
                v79 = v78;
                v80 = [v55 bestSongSuggestions];
                v81 = [v80 firstObject];
                if (!v81)
                {
LABEL_62:

                  goto LABEL_63;
                }

                v82 = v81;
                v83 = [v55 bestSongSuggestions];
                v84 = [v83 firstObject];
                v85 = [v84 uid];

                v63 = v114;
                v12 = v115;

                if (v85)
                {
                  v86 = +[PGLogging sharedLogging];
                  v87 = [v86 loggingConnection];

                  if (os_log_type_enabled(v87, OS_LOG_TYPE_INFO))
                  {
                    v88 = [v55 bestSongSuggestions];
                    v89 = [v88 firstObject];
                    v90 = [v89 uid];
                    v91 = [v10 title];
                    v92 = [v10 uuid];
                    *buf = 138412802;
                    v128 = v90;
                    v129 = 2112;
                    v130 = v91;
                    v131 = 2112;
                    v132 = v92;
                    _os_log_impl(&dword_22F0FC000, v87, OS_LOG_TYPE_INFO, "[MemoriesMusic] Cache the key flex song (%@) for collection with title '%@' and with uuid '%@'. This triggers the song assets download.", buf, 0x20u);

                    v63 = v114;
                  }

                  v79 = [v55 bestSongSuggestions];
                  v80 = [v79 firstObject];
                  v93 = [v80 uid];
                  v126 = v93;
                  v94 = [MEMORY[0x277CBEA60] arrayWithObjects:&v126 count:1];
                  [PGFlexMusicCacher cacheSongAudioAndArtworkForUIDs:v94];

                  v12 = v115;
                  goto LABEL_62;
                }
              }

LABEL_63:
              v95 = [PGError xpcSafeErrorWithError:v63];
              v96 = v108;
              v13 = v110;
              v110[2](v110, v108, v95);
              v11 = v116;
LABEL_67:

LABEL_68:
              v37 = v117;
              v16 = v118;
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

      v64 = [v11 backingCollectionLocalIdentifier];
      v65 = v64;
      v107 = v23;
      if (v64)
      {
        v66 = v64;
      }

      else
      {
        v66 = [v11 assetCollectionLocalIdentifier];
      }

      v55 = v66;

      v51 = objc_alloc_init(PGFlexMusicCurationManager);
      v71 = [v17 cache];
      v72 = [MEMORY[0x277D22C80] ignoreProgress];
      v121 = 0;
      v73 = [(PGFlexMusicCurationManager *)v51 adjustCurationForCollectionWithLocalIdentifier:v55 initialCuration:v49 cache:v71 progressReporter:v72 error:&v121];
      v57 = v121;

      if (!v73)
      {
        v101 = +[PGLogging sharedLogging];
        v102 = [v101 loggingConnection];

        v16 = v118;
        if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v128 = v118;
          v129 = 2112;
          v130 = v57;
          _os_log_error_impl(&dword_22F0FC000, v102, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Adjusting curation for collection (%@) failed with error: %@", buf, 0x16u);
        }

        v103 = [PGError xpcSafeErrorWithError:v114];
        v13[2](v13, 0, v103);

        v63 = v114;
        v12 = v115;
        v11 = v116;
        v37 = v117;
        v23 = v107;
        goto LABEL_69;
      }

      v49 = v73;
      v11 = v116;
      goto LABEL_52;
    }

    v109 = v13;
    v21 = v12;
    v22 = v19;
    v23 = v19;
    v113 = [v23 suggestedMood];
    v24 = [v23 moodKeywords];
    v25 = v24;
    if (v24)
    {
      v26 = v24;
    }

    else
    {
      v26 = v20;
    }

    v117 = v26;

    v27 = [objc_opt_class() flexMusicFeatureExtractionContextWithCuratorContext:v17];
    v28 = +[PGLogging sharedLogging];
    v29 = [v28 loggingConnection];

    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      v30 = [v23 uuid];
      *buf = 138412290;
      v128 = v30;
      _os_log_impl(&dword_22F0FC000, v29, OS_LOG_TYPE_INFO, "[MemoriesMusic] Extracting music curation features for memory: %@ for Flex Music curation", buf, 0xCu);
    }

    v31 = [v120 childProgressReporterFromStart:0.0 toEnd:0.2];
    v124 = 0;
    v32 = [a1 _musicCurationFeaturesWithFeatureExtractionContext:v27 memory:v23 graphManager:v21 progressReporter:v31 error:&v124];
    v33 = v124;

    if (v32)
    {

      v23 = v32;
      v11 = v116;
      v12 = v21;
      v13 = v109;
      v10 = v22;
      goto LABEL_16;
    }

    v67 = +[PGLogging sharedLogging];
    v68 = [v67 loggingConnection];

    v10 = v22;
    if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
    {
      v105 = [v23 uuid];
      *buf = 138412546;
      v128 = v105;
      v129 = 2112;
      v130 = v33;
      _os_log_error_impl(&dword_22F0FC000, v68, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Flex Music feature extraction error for PHMemory (%@): %@", buf, 0x16u);
    }

    v69 = [PGError xpcSafeErrorWithError:v33];
    v109[2](v109, 0, v69);

    v11 = v116;
    v37 = v117;
    v12 = v21;
    v13 = v109;
    v16 = v118;
    v36 = v119;
  }

  else
  {
    v34 = +[PGLogging sharedLogging];
    v35 = [v34 loggingConnection];

    v36 = v119;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v128 = v119;
      _os_log_error_impl(&dword_22F0FC000, v35, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Flex Music curator context error for asset fetch result: %@", buf, 0xCu);
    }

    v23 = [PGError xpcSafeErrorWithError:v119];
    v13[2](v13, 0, v23);
    v37 = MEMORY[0x277CBEBF8];
  }

LABEL_70:

  v100 = *MEMORY[0x277D85DE8];
}

+ (void)requestMusicCurationForAssetFetchResult:(id)a3 curationOptions:(id)a4 graphManager:(id)a5 reply:(id)a6
{
  v121 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = +[PGLogging sharedLogging];
  v15 = [v14 loggingConnection];

  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = [v11 assetCollectionLocalIdentifier];
    *buf = 138412290;
    v118 = v16;
    _os_log_impl(&dword_22F0FC000, v15, OS_LOG_TYPE_INFO, "[MemoriesMusic] Building Apple Music curation context for asset fetch result. assetCollectionLocalIdentifier = %@", buf, 0xCu);
  }

  if ([v10 count])
  {
    v17 = +[PGLogging memoriesMusicLogging];
    v18 = [v17 loggingConnection];

    v19 = v18;
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
    v23 = [v12 musicCuratorContextWithCurationOptions:v11 error:&v115];
    v24 = v115;
    if (!v23)
    {
      v37 = +[PGLogging sharedLogging];
      v38 = [v37 loggingConnection];

      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v118 = v24;
        _os_log_error_impl(&dword_22F0FC000, v38, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Apple Music curator context error for asset fetch result: %@", buf, 0xCu);
      }

      v39 = [PGError xpcSafeErrorWithError:v24];
      v13[2](v13, 0, v39);
      goto LABEL_59;
    }

    v90 = v20;
    v25 = [v11 assetCollectionLocalIdentifier];

    v95 = v24;
    if (v25)
    {
      v99 = v13;
      v26 = v11;
      v27 = v12;
      v28 = v10;
      v29 = v27;
      v30 = [v27 photoLibrary];
      v114 = 0;
      v31 = [PGMusicCurationRecentlyUsedSongs recentlyUsedAppleMusicSongsForCollectionsFromPhotoLibrary:v30 error:&v114];
      v32 = v114;

      v33 = +[PGLogging sharedLogging];
      v34 = [v33 loggingConnection];

      v96 = v32;
      if (!v31 || v32)
      {
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v118 = v32;
          _os_log_error_impl(&dword_22F0FC000, v34, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Error getting the recently used Apple Music songs for collections. error=%@", buf, 0xCu);
        }
      }

      else
      {
        if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v118 = v31;
          _os_log_impl(&dword_22F0FC000, v34, OS_LOG_TYPE_INFO, "[MemoriesMusic] recentlyUsedSongsForCollections = %@", buf, 0xCu);
        }

        v34 = [v23 recentlyUsedSongs];
        [v34 appendWithOtherRecentlyUsed:v31];
      }

      v10 = v28;

      v12 = v29;
      v11 = v26;
      v13 = v99;
    }

    else
    {
      v96 = 0;
    }

    v97 = [MEMORY[0x277D22C80] progressReporterWithProgressBlock:&__block_literal_global_331];
    v100 = [objc_opt_class() appleMusicFeatureExtractionContextWithCuratorContext:v23];
    v40 = +[PGLogging sharedLogging];
    v41 = [v40 loggingConnection];

    if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22F0FC000, v41, OS_LOG_TYPE_INFO, "[MemoriesMusic] Extracting music curation features from asset fetch result for Apple Music curation", buf, 2u);
    }

    v42 = v97;
    v43 = [v97 childProgressReporterFromStart:0.0 toEnd:0.2];
    v113 = 0;
    v44 = [a1 _musicCurationFeaturesWithFeatureExtractionContext:v100 assetFetchResult:v10 graphManager:v12 progressReporter:v43 error:&v113];
    v94 = v113;

    v45 = +[PGLogging sharedLogging];
    v46 = [v45 loggingConnection];

    v98 = v44;
    v93 = v11;
    if (!v44)
    {
      v58 = v23;
      v59 = v94;
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v118 = v94;
        _os_log_error_impl(&dword_22F0FC000, v46, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Apple Music curation error for asset fetch result: %@", buf, 0xCu);
      }

      v60 = [PGError xpcSafeErrorWithError:v94];
      v13[2](v13, 0, v60);
      v24 = v95;
      v39 = v96;
      goto LABEL_58;
    }

    if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22F0FC000, v46, OS_LOG_TYPE_INFO, "[MemoriesMusic] Curating Apple Music for asset fetch result.", buf, 2u);
    }

    v47 = [v97 childProgressReporterFromStart:0.2 toEnd:1.0];
    v112 = 0;
    v48 = [PGMusicCurator curateMusicForFeatures:v44 context:v23 progressReporter:v47 error:&v112];
    v91 = v112;

    v24 = v95;
    if (!v48)
    {
      v61 = +[PGLogging sharedLogging];
      v62 = [v61 loggingConnection];

      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v118 = v91;
        _os_log_error_impl(&dword_22F0FC000, v62, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Apple Music curation error: %@", buf, 0xCu);
      }

      v58 = v23;

      v63 = [PGError xpcSafeErrorWithError:v91];
      v13[2](v13, 0, v63);
      v39 = v96;
      v59 = v94;
      goto LABEL_57;
    }

    v49 = [v11 backingCollectionLocalIdentifier];
    v87 = v10;
    if (v49 || ([v11 assetCollectionLocalIdentifier], (v49 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v50 = v49;
      v84 = v12;
      v85 = v22;
      v51 = objc_alloc_init(PGMusicCurationManager);
      v52 = [v23 cache];
      v53 = [MEMORY[0x277D22C80] ignoreProgress];
      v111 = 0;
      v86 = v50;
      v54 = [(PGMusicCurationManager *)v51 adjustCurationForCollection:v50 initialCuration:v48 cache:v52 progressReporter:v53 error:&v111];
      v55 = v111;

      if (!v54)
      {
        v88 = v55;
        v89 = v51;
        v64 = +[PGLogging sharedLogging];
        v65 = [v64 loggingConnection];

        if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
        {
          v83 = [v11 assetCollectionLocalIdentifier];
          *buf = 138412546;
          v118 = v83;
          v119 = 2112;
          v120 = v55;
          _os_log_error_impl(&dword_22F0FC000, v65, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Adjusting curation for collection (%@) failed with error: %@", buf, 0x16u);
        }

        v39 = v96;
        v66 = [PGError xpcSafeErrorWithError:v96];
        v13[2](v13, 0, v66);
        v10 = v87;
        v12 = v84;
        v22 = v85;
        goto LABEL_56;
      }

      v56 = v54;
      v57 = off_27887B000;
      v12 = v84;
      v22 = v85;
    }

    else
    {
      v86 = 0;
      v56 = v48;
      v57 = off_27887B000;
    }

    v89 = v56;
    v67 = [(PGMusicCurationManager *)v56 keySongAdamID];

    if (v67)
    {
      v68 = MEMORY[0x277CBEA60];
      v69 = [(PGMusicCurationManager *)v89 keySongAdamID];
      v70 = [v68 arrayWithObjects:{v69, 0}];

      v71 = [(__objc2_class *)v57[222] sharedLogging];
      v72 = [v71 loggingConnection];

      if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
      {
        v73 = [v70 objectAtIndexedSubscript:0];
        *buf = 138412290;
        v118 = v73;
        _os_log_impl(&dword_22F0FC000, v72, OS_LOG_TYPE_INFO, "[MemoriesMusic] Start Caching the key Apple Music song %@ for the collection. It should trigger the song assets download.", buf, 0xCu);
      }

      v74 = [MEMORY[0x277D22C80] ignoreProgress];
      v109[0] = MEMORY[0x277D85DD0];
      v109[1] = 3221225472;
      v109[2] = __93__PGMusicWrapper_requestMusicCurationForAssetFetchResult_curationOptions_graphManager_reply___block_invoke_334;
      v109[3] = &unk_278884D38;
      v110 = v70;
      v75 = v70;
      [PGMusicAudioCacher cacheSongAudioForAdamIDs:v75 progressReporter:v74 completionHandler:v109];

      v57 = off_27887B000;
    }

    v76 = [(__objc2_class *)v57[222] sharedLogging];
    v77 = [v76 loggingConnection];

    if (os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22F0FC000, v77, OS_LOG_TYPE_INFO, "[MemoriesMusic] Inflating Apple Music curation for asset fetch result.", buf, 2u);
    }

    v66 = [[PGMusicCurationInflationOptions alloc] initWithInflationActionSource:1];
    v108 = 0;
    v78 = [v12 musicCurationInflationContextWithInflationOptions:v66 error:&v108];
    v88 = v108;
    if (v78)
    {
      v79 = [MEMORY[0x277D22C80] progressReporterWithProgressBlock:&__block_literal_global_338];
      v101[0] = MEMORY[0x277D85DD0];
      v101[1] = 3221225472;
      v101[2] = __93__PGMusicWrapper_requestMusicCurationForAssetFetchResult_curationOptions_graphManager_reply___block_invoke_2;
      v101[3] = &unk_278881720;
      v104 = v13;
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
      v81 = [v80 loggingConnection];

      if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v118 = v88;
        _os_log_error_impl(&dword_22F0FC000, v81, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Apple Music curation inflation error for assets: %{public}@", buf, 0xCu);
      }

      v79 = [PGError xpcSafeErrorWithError:v88];
      v13[2](v13, 0, v79);
    }

    v10 = v87;

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
    v11 = v93;
LABEL_59:

    goto LABEL_60;
  }

  v35 = +[PGLogging sharedLogging];
  v36 = [v35 loggingConnection];

  if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v118 = @"Cannot curate music for an empty asset fetch result.";
    _os_log_error_impl(&dword_22F0FC000, v36, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Apple Music curation error: %@", buf, 0xCu);
  }

  v22 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:1 localizedDescription:@"Cannot curate music for an empty asset fetch result."];
  v13[2](v13, 0, v22);
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

+ (void)requestMusicCurationForAssetCollection:(id)a3 curationOptions:(id)a4 graphManager:(id)a5 reply:(id)a6
{
  v123[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v10 photoLibrary];
  if ([v10 assetCollectionType] == 4)
  {
    v15 = +[PGLogging memoriesMusicLogging];
    v16 = [v15 loggingConnection];

    v17 = v16;
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
    v104 = v10;
    v21 = +[PGLogging sharedLogging];
    v22 = [v21 loggingConnection];

    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = [v104 uuid];
      *buf = 138412290;
      v120 = v23;
      _os_log_impl(&dword_22F0FC000, v22, OS_LOG_TYPE_INFO, "[MemoriesMusic] Building Apple Music curation context for asset collection: %@.", buf, 0xCu);
    }

    v117 = 0;
    v24 = [v12 musicCuratorContextWithCurationOptions:v11 error:&v117];
    v25 = v117;
    v101 = v12;
    if (v24)
    {
      v95 = v25;
      v26 = v104;
      v99 = v14;
      if ([v104 creationType] != 1)
      {
        goto LABEL_18;
      }

      v27 = +[PGLogging sharedLogging];
      v28 = [v27 loggingConnection];

      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22F0FC000, v28, OS_LOG_TYPE_INFO, "[MemoriesMusic] Generative PHMemory so extract the curated music", buf, 2u);
      }

      v29 = [v104 extractGenerativeMemoryMusicCuration];
      if (v29)
      {
        v96 = v29;
        v30 = +[PGLogging sharedLogging];
        v31 = [v30 loggingConnection];

        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          v32 = [v104 uuid];
          *buf = 138412290;
          v120 = v32;
          _os_log_impl(&dword_22F0FC000, v31, OS_LOG_TYPE_INFO, "[MemoriesMusic] bypassMusicForTopicElection=YES for generative memory: %@", buf, 0xCu);
        }

        [v24 setBypassMusicForTopicElection:1];
      }

      else
      {
LABEL_18:
        v96 = 0;
      }

      v40 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v41 = [v40 BOOLForKey:@"overrideMusicCuration"];

      if (v41)
      {
        v42 = v11;
        v43 = a1;
        v102 = v10;
        v44 = v20;
        v45 = v42;
        v46 = v13;
        v47 = v12;
        v48 = v24;
        v49 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:@"/var/mobile/Media/PhotoData/Caches/GraphService/musicCurationOverride.plist"];
        v50 = [v49 objectForKeyedSubscript:@"memoryUUID"];
        v51 = [v104 uuid];
        v52 = [v51 isEqualToString:v50];

        if (v52)
        {
          [v48 setMusicCurationOverrideDictionary:v49];
        }

        v24 = v48;
        v12 = v47;
        v13 = v46;
        v53 = v45;
        v20 = v44;
        v10 = v102;
        v26 = v104;
        a1 = v43;
        v11 = v53;
      }

      v103 = [MEMORY[0x277D22C80] progressReporterWithProgressBlock:&__block_literal_global_21707];
      v98 = v24;
      v100 = [objc_opt_class() appleMusicFeatureExtractionContextWithCuratorContext:v24];
      v54 = +[PGLogging sharedLogging];
      v55 = [v54 loggingConnection];

      v14 = v99;
      if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
      {
        v56 = [v26 uuid];
        *buf = 138412290;
        v120 = v56;
        _os_log_impl(&dword_22F0FC000, v55, OS_LOG_TYPE_INFO, "[MemoriesMusic] Extracting music curation features for memory: %@ for Apple Music curation", buf, 0xCu);
      }

      v57 = [v103 childProgressReporterFromStart:0.0 toEnd:0.2];
      v116 = 0;
      v58 = [a1 _musicCurationFeaturesWithFeatureExtractionContext:v100 memory:v26 graphManager:v12 progressReporter:v57 error:&v116];
      v94 = v116;

      v59 = +[PGLogging sharedLogging];
      v60 = [v59 loggingConnection];

      v97 = v58;
      if (v58)
      {
        if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
        {
          v61 = [v26 uuid];
          *buf = 138412290;
          v120 = v61;
          _os_log_impl(&dword_22F0FC000, v60, OS_LOG_TYPE_INFO, "[MemoriesMusic] Curating Apple Music for PHMemory: %@.", buf, 0xCu);
        }

        v62 = [v103 childProgressReporterFromStart:0.2 toEnd:1.0];
        v115 = 0;
        v63 = [PGMusicCurator curateMusicForFeatures:v58 context:v98 progressReporter:v62 error:&v115];
        v90 = v115;

        v64 = +[PGLogging sharedLogging];
        v65 = [v64 loggingConnection];

        if (v63)
        {
          if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
          {
            v66 = [v104 uuid];
            *buf = 138412290;
            v120 = v66;
            _os_log_impl(&dword_22F0FC000, v65, OS_LOG_TYPE_INFO, "[MemoriesMusic] Inflating Apple Music curation for PHMemory: %@.", buf, 0xCu);
          }

          if (v96)
          {
            v67 = [v96 objectForKeyedSubscript:@"appleMusicSongIds"];
            v68 = v67;
            if (v67 && [v67 count])
            {
              v69 = +[PGLogging sharedLogging];
              v70 = [v69 loggingConnection];

              if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_22F0FC000, v70, OS_LOG_TYPE_INFO, "[MemoriesMusic] Replacing replaceBestMusicSuggestionsWithAdamIds", buf, 2u);
              }

              v71 = [v63 replaceBestMusicSuggestionsWithAdamIds:v68];

              v63 = v71;
              v72 = v12;
            }

            else
            {
              v72 = v12;
            }

            v12 = v72;
          }

          v114 = 0;
          v91 = [[PGMusicCurationInflationOptions alloc] initWithInflationActionSource:1];
          v79 = [v12 musicCurationInflationContextWithInflationOptions:? error:?];
          v89 = 0;
          if (v79)
          {
            v80 = [MEMORY[0x277D22C80] progressReporterWithProgressBlock:&__block_literal_global_318];
            v105[0] = MEMORY[0x277D85DD0];
            v105[1] = 3221225472;
            v105[2] = __92__PGMusicWrapper_requestMusicCurationForAssetCollection_curationOptions_graphManager_reply___block_invoke_2;
            v105[3] = &unk_2788816F8;
            v106 = v104;
            v110 = v13;
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
            v83 = [v82 loggingConnection];

            v81 = v89;
            if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
            {
              v88 = [v104 uuid];
              *buf = 138412546;
              v120 = v88;
              v121 = 2114;
              v122 = v89;
              _os_log_error_impl(&dword_22F0FC000, v83, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Apple Music curation inflation error for PHMemory (%@): %{public}@", buf, 0x16u);
            }

            v80 = [PGError xpcSafeErrorWithError:v89];
            (*(v13 + 2))(v13, 0, v80);
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
          if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
          {
            v87 = [v104 uuid];
            *buf = 138412546;
            v120 = v87;
            v121 = 2112;
            v122 = v90;
            _os_log_error_impl(&dword_22F0FC000, v65, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Apple Music curation error for PHMemory (%@): %@", buf, 0x16u);
          }

          v78 = v90;
          v63 = [PGError xpcSafeErrorWithError:v90];
          (*(v13 + 2))(v13, 0, v63);
          v24 = v98;
          v77 = v94;
          v73 = v95;
        }

        v14 = v99;
      }

      else
      {
        v77 = v94;
        if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
        {
          v86 = [v26 uuid];
          *buf = 138412546;
          v120 = v86;
          v121 = 2112;
          v122 = v94;
          _os_log_error_impl(&dword_22F0FC000, v60, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Apple Music curation error for PHMemory (%@): %@", buf, 0x16u);
        }

        v78 = [PGError xpcSafeErrorWithError:v94];
        (*(v13 + 2))(v13, 0, v78);
        v24 = v98;
        v73 = v95;
      }

      v76 = v96;
    }

    else
    {
      v73 = v25;
      v74 = +[PGLogging sharedLogging];
      v75 = [v74 loggingConnection];

      v26 = v104;
      if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
      {
        v85 = [v104 uuid];
        *buf = 138412546;
        v120 = v85;
        v121 = 2112;
        v122 = v73;
        _os_log_error_impl(&dword_22F0FC000, v75, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Apple Music curation error for PHMemory (%@): %@", buf, 0x16u);
      }

      v76 = [PGError xpcSafeErrorWithError:v73];
      (*(v13 + 2))(v13, 0, v76);
    }

    v36 = v20;
    v12 = v101;
  }

  else
  {
    v33 = +[PGLogging sharedLogging];
    v34 = [v33 loggingConnection];

    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      v35 = [v10 localIdentifier];
      *buf = 138412290;
      v120 = v35;
      _os_log_impl(&dword_22F0FC000, v34, OS_LOG_TYPE_INFO, "[MemoriesMusic] requestMusicCurationForAssetCollection delegating to requestMusicCurationForAssetFetchResult for assetCollection.localIdentifier: %@", buf, 0xCu);
    }

    v36 = [v14 librarySpecificFetchOptions];
    [v36 setWantsIncrementalChangeDetails:0];
    v123[0] = *MEMORY[0x277CD9AA8];
    v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v123 count:1];
    [v36 setFetchPropertySets:v37];

    v20 = [MEMORY[0x277CD97A8] fetchAssetsInAssetCollection:v10 options:v36];
    v38 = [v10 localIdentifier];
    v39 = [v11 copyWithAssetCollectionLocalIdentifier:v38];

    [a1 requestMusicCurationForAssetFetchResult:v20 curationOptions:v39 graphManager:v12 reply:v13];
    v11 = v39;
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