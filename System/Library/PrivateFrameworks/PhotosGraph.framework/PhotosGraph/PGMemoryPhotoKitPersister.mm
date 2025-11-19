@interface PGMemoryPhotoKitPersister
+ (void)setStoryColorGradeKindFromPhotosGraphProperties:(id)a3 onMemoryChangeRequest:(id)a4;
- (BOOL)_shouldPrefetchAudioForMemoriesInPhotoLibrary:(id)a3 withConfiguration:(id)a4;
- (BOOL)_shouldPrefetchMetadataForMemoriesInPhotoLibrary:(id)a3 withConfiguration:(id)a4;
- (BOOL)persistLocalMemoriesFromEnrichedMemories:(id)a3 localMemoriesToDelete:(id)a4 progressReporter:(id)a5 error:(id *)a6;
- (BOOL)updateExistingMemories:(id)a3 localMemoryByUniqueIdentifier:(id)a4 progressReporter:(id)a5;
- (PGMemoryPhotoKitPersister)initWithPhotoLibrary:(id)a3;
- (id)_encodedFeaturesFromFeatureNodes:(id)a3;
- (id)_memoryCreationRequestForEnrichedMemory:(id)a3 pendingState:(unsigned __int16)a4 creationDate:(id)a5 photosGraphDataDictionary:(id)a6;
- (id)_photosGraphDataDictionaryByEnrichedMemoryIdentifierForEnrichedMemories:(id)a3;
- (id)_photosGraphDataDictionaryForEnrichedMemory:(id)a3;
- (void)cacheMusicAudioAndArtworkForEnrichedMemories:(id)a3 inflationContext:(id)a4 photoLibrary:(id)a5;
@end

@implementation PGMemoryPhotoKitPersister

- (BOOL)_shouldPrefetchAudioForMemoriesInPhotoLibrary:(id)a3 withConfiguration:(id)a4
{
  v5 = a3;
  if (a4)
  {
    v6 = [a4 audioFilePrefetchThresholdInDays];
  }

  else
  {
    v6 = 15;
  }

  v7 = [MEMORY[0x277CBEAA8] date];
  v8 = [v7 dateByAddingTimeInterval:-v6 * 86400.0];

  v9 = [v5 librarySpecificFetchOptions];
  v10 = [MEMORY[0x277CCAC30] predicateWithFormat:@"lastViewedDate >= %@", v8];
  [v9 setInternalPredicate:v10];

  [v9 setFetchLimit:1];
  v11 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:4 subtype:0x7FFFFFFFFFFFFFFFLL options:v9];
  v12 = [v11 count] != 0;

  return v12;
}

- (BOOL)_shouldPrefetchMetadataForMemoriesInPhotoLibrary:(id)a3 withConfiguration:(id)a4
{
  v5 = a3;
  if (a4)
  {
    v6 = [a4 metadataPrefetchThresholdInDays];
  }

  else
  {
    v6 = 60;
  }

  v7 = [MEMORY[0x277CBEAA8] date];
  v8 = [v7 dateByAddingTimeInterval:-v6 * 86400.0];

  v9 = [v5 librarySpecificFetchOptions];
  v10 = [MEMORY[0x277CCAC30] predicateWithFormat:@"lastViewedDate >= %@", v8];
  [v9 setInternalPredicate:v10];

  [v9 setFetchLimit:1];
  v11 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:4 subtype:0x7FFFFFFFFFFFFFFFLL options:v9];
  v12 = [v11 count] != 0;

  return v12;
}

- (void)cacheMusicAudioAndArtworkForEnrichedMemories:(id)a3 inflationContext:(id)a4 photoLibrary:(id)a5
{
  v51 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v37 = a4;
  v35 = a5;
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v38 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = v8;
  v10 = [obj countByEnumeratingWithState:&v44 objects:v50 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v45;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v45 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v44 + 1) + 8 * i);
        v15 = [v14 flexMusicCuration];
        v16 = [v15 bestSongSuggestions];
        v17 = [v16 firstObject];
        v18 = [v17 uid];

        if (v18)
        {
          [v9 addObject:v18];
        }

        if (self->_isAppleMusicSubscriber)
        {
          v19 = [v14 musicCuration];
          v20 = [v19 keySongAdamID];

          if (v20)
          {
            [v38 addObject:v20];
          }
        }
      }

      v11 = [obj countByEnumeratingWithState:&v44 objects:v50 count:16];
    }

    while (v11);
  }

  if ([v9 count])
  {
    [PGFlexMusicCacher cacheSongAudioAndArtworkForUIDs:v9];
  }

  if ([v38 count])
  {
    v21 = +[PGMusicCuratorConfigurationWrapper defaultConfiguration];
    v22 = dispatch_group_create();
    v23 = [(PGMemoryPhotoKitPersister *)self _shouldPrefetchMetadataForMemoriesInPhotoLibrary:v36 withConfiguration:v21];
    loggingConnection = self->_loggingConnection;
    v25 = os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO);
    if (v23)
    {
      if (v25)
      {
        *buf = 138412290;
        v49 = v38;
        _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "[MemoriesMusic] prefetching song display metadata for adam IDs: %@", buf, 0xCu);
      }

      dispatch_group_enter(v22);
      v26 = [v38 allObjects];
      v27 = [MEMORY[0x277D22C80] ignoreProgress];
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __104__PGMemoryPhotoKitPersister_cacheMusicAudioAndArtworkForEnrichedMemories_inflationContext_photoLibrary___block_invoke;
      v42[3] = &unk_278882840;
      v43 = v22;
      [PGMusicCurator fetchSongDisplayMetadataJSONForAdamIDs:v26 inflationContext:v37 progressReporter:v27 completionHandler:v42];
    }

    else if (v25)
    {
      *buf = 138412290;
      v49 = v38;
      _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "[MemoriesMusic] usage is such that no song display metadata prefetching will be done for adam IDs: %@", buf, 0xCu);
    }

    v28 = [(PGMemoryPhotoKitPersister *)self _shouldPrefetchAudioForMemoriesInPhotoLibrary:v36 withConfiguration:v21];
    v29 = self->_loggingConnection;
    v30 = os_log_type_enabled(v29, OS_LOG_TYPE_INFO);
    if (v28)
    {
      if (v30)
      {
        *buf = 138412290;
        v49 = v38;
        _os_log_impl(&dword_22F0FC000, v29, OS_LOG_TYPE_INFO, "[MemoriesMusic] caching song audio for adam IDs: %@", buf, 0xCu);
      }

      dispatch_group_enter(v22);
      v31 = [v38 allObjects];
      v32 = [MEMORY[0x277D22C80] ignoreProgress];
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __104__PGMemoryPhotoKitPersister_cacheMusicAudioAndArtworkForEnrichedMemories_inflationContext_photoLibrary___block_invoke_258;
      v40[3] = &unk_278884D38;
      v41 = v22;
      [PGMusicAudioCacher cacheSongAudioForAdamIDs:v31 progressReporter:v32 completionHandler:v40];
    }

    else if (v30)
    {
      *buf = 138412290;
      v49 = v38;
      _os_log_impl(&dword_22F0FC000, v29, OS_LOG_TYPE_INFO, "[MemoriesMusic] usage is such that no song audio caching will be done for adam IDs: %@", buf, 0xCu);
    }

    v33 = dispatch_time(0, 20000000000);
    dispatch_group_wait(v22, v33);
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (BOOL)updateExistingMemories:(id)a3 localMemoryByUniqueIdentifier:(id)a4 progressReporter:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 count])
  {
    v11 = self->_loggingConnection;
    photoLibrary = self->_photoLibrary;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __99__PGMemoryPhotoKitPersister_updateExistingMemories_localMemoryByUniqueIdentifier_progressReporter___block_invoke;
    v20[3] = &unk_2788827F0;
    v20[4] = self;
    v21 = v10;
    v13 = v8;
    v22 = v13;
    v23 = v9;
    v14 = v11;
    v24 = v14;
    v19 = 0;
    v15 = [(PHPhotoLibrary *)photoLibrary performChangesAndWait:v20 error:&v19];
    v16 = v19;
    if ((v15 & 1) == 0 && os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138478083;
      v26 = v13;
      v27 = 2112;
      v28 = v16;
      _os_log_error_impl(&dword_22F0FC000, v14, OS_LOG_TYPE_ERROR, "Failed to update the enriched memories %{private}@. Error: %@", buf, 0x16u);
    }
  }

  else
  {
    v15 = 1;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v15;
}

void __99__PGMemoryPhotoKitPersister_updateExistingMemories_localMemoryByUniqueIdentifier_progressReporter___block_invoke(uint64_t a1)
{
  v98[1] = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 8) librarySpecificFetchOptions];
  [v2 setIncludeGuestAssets:1];
  v98[0] = *MEMORY[0x277CD9AA8];
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v98 count:1];
  [v2 setFetchPropertySets:v3];

  v73 = *(a1 + 40);
  v4 = [*(a1 + 48) count];
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v79 = a1;
  obj = *(a1 + 48);
  v72 = [obj countByEnumeratingWithState:&v85 objects:v97 count:16];
  if (v72)
  {
    v6 = 1.0 / v4;
    v7 = 0x277CD9000uLL;
    v70 = *v86;
    v8 = 0.0;
    *&v5 = 138478083;
    v68 = v5;
    v71 = v2;
    do
    {
      for (i = 0; i != v72; ++i)
      {
        if (*v86 != v70)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v85 + 1) + 8 * i);
        context = objc_autoreleasePoolPush();
        v11 = *(v79 + 56);
        v12 = [v10 uniqueMemoryIdentifier];
        v13 = [v11 objectForKeyedSubscript:v12];

        v14 = [v13 title];
        if ([v14 length])
        {

LABEL_9:
          v17 = [v13 title];
          v18 = [v10 title];
          v83 = [v17 isEqualToString:v18] ^ 1;

          goto LABEL_10;
        }

        v15 = [v10 title];
        v16 = [v15 length];

        if (v16)
        {
          goto LABEL_9;
        }

        v83 = 0;
LABEL_10:
        v19 = [v13 subtitle];
        if ([v19 length])
        {

LABEL_13:
          v22 = [v13 subtitle];
          v23 = [v10 subtitle];
          v82 = [v22 isEqualToString:v23] ^ 1;

          goto LABEL_14;
        }

        v20 = [v10 subtitle];
        v21 = [v20 length];

        if (v21)
        {
          goto LABEL_13;
        }

        v82 = 0;
LABEL_14:
        v24 = [*(v7 + 1960) fetchKeyCuratedAssetInAssetCollection:v13 referenceAsset:0 options:v2];
        v25 = [v24 firstObject];

        v26 = [v10 keyAssetUUID];
        v27 = [v25 uuid];
        v77 = v25;
        v81 = v26;
        if (v27 == v26)
        {
          v29 = 0;
        }

        else
        {
          v28 = [v25 uuid];
          v29 = [v28 isEqualToString:v26] ^ 1;
        }

        v30 = [*(v7 + 1960) fetchCuratedAssetsInAssetCollection:v13 options:v2];
        v31 = [v30 fetchedObjects];

        v76 = v31;
        v32 = [PGMemoryGenerationHelper assetUUIDsFromAssets:v31];
        v33 = [v10 curatedAssetUUIDs];
        if ([v32 count] || objc_msgSend(v33, "count"))
        {
          v34 = v33;
          v35 = [MEMORY[0x277CBEB98] setWithArray:v33];
          v36 = [v32 isEqualToSet:v35] ^ 1;
        }

        else
        {
          v34 = v33;
          v36 = 0;
        }

        v75 = v32;
        v37 = [*(v7 + 1960) fetchExtendedCuratedAssetsInAssetCollection:v13 options:v2];
        v38 = [v37 fetchedObjects];

        v74 = v38;
        v39 = [PGMemoryGenerationHelper assetUUIDsFromAssets:v38];
        v40 = [v10 extendedCuratedAssetUUIDs];
        v80 = v40;
        if ([v39 count] || objc_msgSend(v40, "count"))
        {
          v41 = [MEMORY[0x277CBEB98] setWithArray:v40];
          v42 = [v39 isEqualToSet:v41] ^ 1;
        }

        else
        {
          v42 = 0;
        }

        v43 = [MEMORY[0x277CD98E8] changeRequestForMemory:v13];
        v44 = [MEMORY[0x277CBEAA8] date];
        [v43 setLastEnrichmentDate:v44];

        v45 = [v13 photosGraphVersion];
        if (v45 != [v10 photosGraphVersion])
        {
          [v43 setPhotosGraphVersion:{objc_msgSend(v10, "photosGraphVersion")}];
        }

        v46 = [v13 isRejected];
        if (v46 != [v10 failedEnrichment])
        {
          [v43 setRejected:{objc_msgSend(v10, "failedEnrichment")}];
        }

        if ((v83 | v82 | v29 | v36 | v42))
        {
          v47 = *(v79 + 64);
          if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
          {
            *buf = 138413570;
            *v90 = v13;
            *&v90[8] = 1024;
            *&v90[10] = v83;
            *&v90[14] = 1024;
            *&v90[16] = v82;
            v91 = 1024;
            v92 = v29;
            v93 = 1024;
            v94 = v36;
            v95 = 1024;
            v96 = v42;
            _os_log_impl(&dword_22F0FC000, v47, OS_LOG_TYPE_INFO, "Updating Memory: %@, title %d, subtitle %d, keyAsset %d, curation %d, extendedCuration %d", buf, 0x2Au);
          }

          if (v83)
          {
            v48 = [v10 title];
            [v43 setTitle:v48];
          }

          if (v82)
          {
            v49 = [v10 subtitle];
            [v43 setSubtitle:v49];
          }

          if ((v29 | v36 | v42))
          {
            v50 = [v10 representativeAssetUUIDs];
            [v43 setRepresentativeAssetUUIDs:v50 curatedAssetUUIDs:v34 extendedCuratedAssetUUIDs:v80 keyAssetUUID:v81];
          }

          [v13 score];
          v52 = v51;
          [v10 score];
          if (v52 != v53)
          {
            [v10 score];
            [v43 setScore:?];
          }

          v54 = [*(v79 + 32) _photosGraphDataDictionaryForEnrichedMemory:v10];
          v55 = [v54 objectForKeyedSubscript:@"storyColorGradeKind"];
          v56 = [v55 integerValue];

          if (!v56)
          {
            v57 = [v54 objectForKeyedSubscript:@"storyColorGradeCategory"];
            v56 = PFStoryColorGradeKindDefaultForColorGradeCategory();
          }

          if ([v13 storyColorGradeKind] != v56)
          {
            [v43 setStoryColorGradeKind:v56];
          }

          v58 = [v13 photosGraphProperties];
          if ([v58 count])
          {

LABEL_45:
            v60 = [v13 photosGraphProperties];
            v61 = [v60 isEqualToDictionary:v54];

            if ((v61 & 1) == 0)
            {
              v84 = 0;
              v62 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v54 requiringSecureCoding:1 error:&v84];
              v63 = v84;
              if (v62)
              {
                [v43 setPhotosGraphData:v62];
              }

              else
              {
                v64 = *(v79 + 64);
                if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
                {
                  *buf = v68;
                  *v90 = v54;
                  *&v90[8] = 2112;
                  *&v90[10] = v63;
                  _os_log_error_impl(&dword_22F0FC000, v64, OS_LOG_TYPE_ERROR, "Failed to archived feature dictionary for photos graph data %{private}@. Error: %@", buf, 0x16u);
                }
              }
            }
          }

          else
          {
            v59 = [v54 count];

            if (v59)
            {
              goto LABEL_45;
            }
          }
        }

        v8 = v6 + v8;
        v65 = [v73 isCancelledWithProgress:v8];
        v66 = v65;
        if (v65 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v90 = 357;
          *&v90[4] = 2080;
          *&v90[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/PGMemoryPhotoKitPersister.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        objc_autoreleasePoolPop(context);
        v2 = v71;
        v7 = 0x277CD9000;
        if (v66)
        {
          goto LABEL_62;
        }
      }

      v72 = [obj countByEnumeratingWithState:&v85 objects:v97 count:16];
    }

    while (v72);
  }

LABEL_62:

  v67 = *MEMORY[0x277D85DE8];
}

- (id)_encodedFeaturesFromFeatureNodes:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v3 allFeatures];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) encodedFeature];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)_memoryCreationRequestForEnrichedMemory:(id)a3 pendingState:(unsigned __int16)a4 creationDate:(id)a5 photosGraphDataDictionary:(id)a6
{
  v26 = a4;
  v34 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v28 = a6;
  v27 = self->_loggingConnection;
  v10 = MEMORY[0x277CD98E8];
  v11 = a5;
  v12 = [v9 title];
  v13 = [v9 subtitle];
  v14 = [v9 memoryCategory];
  v15 = [v9 representativeAssetUUIDs];
  v16 = [v9 curatedAssetUUIDs];
  v17 = [v9 extendedCuratedAssetUUIDs];
  v18 = [v9 keyAssetUUID];
  v19 = [v10 creationRequestForMemoryWithTitle:v12 subtitle:v13 creationDate:v11 category:v14 subcategory:0 representativeAssetUUIDs:v15 curatedAssetUUIDs:v16 extendedCuratedAssetUUIDs:v17 keyAssetUUID:v18];

  [v19 setPhotosGraphVersion:{objc_msgSend(v9, "photosGraphVersion")}];
  [v19 setPendingState:v26];
  v20 = [v9 uniqueMemoryIdentifier];
  [v19 setGraphMemoryIdentifier:v20];

  if (v26 == 2)
  {
    v21 = [MEMORY[0x277CBEAA8] date];
    [v19 setLastEnrichmentDate:v21];
  }

  else
  {
    [v19 setLastEnrichmentDate:0];
  }

  if ([v9 failedEnrichment])
  {
    [v19 setRejected:1];
  }

  else
  {
    [v19 setRejected:0];
    if (v26 != 2)
    {
      [v19 setFeaturedState:1];
    }

    [objc_opt_class() setStoryColorGradeKindFromPhotosGraphProperties:v28 onMemoryChangeRequest:v19];
    v29 = 0;
    v22 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v28 requiringSecureCoding:1 error:&v29];
    v23 = v29;
    if (v22)
    {
      [v19 setPhotosGraphData:v22];
    }

    else if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 138478083;
      v31 = v28;
      v32 = 2112;
      v33 = v23;
      _os_log_error_impl(&dword_22F0FC000, v27, OS_LOG_TYPE_ERROR, "Failed to archived feature dictionary for photos graph data %{private}@. Error: %@", buf, 0x16u);
    }

    [v9 score];
    [v19 setScore:?];
  }

  v24 = *MEMORY[0x277D85DE8];

  return v19;
}

void __128__PGMemoryPhotoKitPersister_memoryLocalIdentifiersFromPersistingEnrichedMemories_withPendingState_graph_progressReporter_error___block_invoke(uint64_t a1)
{
  v78 = *MEMORY[0x277D85DE8];
  v54 = *(a1 + 32);
  v2 = [*(a1 + 40) count];
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v3 = *(a1 + 40);
  v55 = [v3 countByEnumeratingWithState:&v68 objects:v77 count:16];
  if (v55)
  {
    v4 = 1.0 / v2;
    v53 = *v69;
    v5 = 0.0;
    while (2)
    {
      for (i = 0; i != v55; ++i)
      {
        if (*v69 != v53)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v68 + 1) + 8 * i);
        v8 = objc_autoreleasePoolPush();
        v9 = [v7 creationDate];
        if (*(a1 + 98) == 1)
        {
          v10 = [v7 creationDate];
          v11 = [v10 dateByAddingTimeInterval:*(*(*(a1 + 88) + 8) + 24)];

          --*(*(*(a1 + 88) + 8) + 24);
          v9 = v11;
        }

        v12 = *(a1 + 48);
        v13 = [v7 uniqueMemoryIdentifier];
        v14 = [v12 objectForKeyedSubscript:v13];

        v15 = [*(a1 + 56) _memoryCreationRequestForEnrichedMemory:v7 pendingState:*(a1 + 96) creationDate:v9 photosGraphDataDictionary:v14];
        v16 = *(a1 + 64);
        v17 = [v15 placeholderForCreatedMemory];
        v18 = [v17 localIdentifier];
        [v16 addObject:v18];

        v5 = v4 + v5;
        if ([v54 isCancelledWithProgress:v5])
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v76 = 163;
            *&v76[4] = 2080;
            *&v76[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/PGMemoryPhotoKitPersister.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          objc_autoreleasePoolPop(v8);
          goto LABEL_47;
        }

        objc_autoreleasePoolPop(v8);
      }

      v55 = [v3 countByEnumeratingWithState:&v68 objects:v77 count:16];
      if (v55)
      {
        continue;
      }

      break;
    }
  }

  v19 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v3 = v19;
  if (*(a1 + 99) == 1)
  {
    v53 = v19;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v20 = *(a1 + 72);
    v21 = [v20 countByEnumeratingWithState:&v64 objects:v74 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v65;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v65 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v64 + 1) + 8 * j);
          v26 = [MEMORY[0x277CD98E8] changeRequestForMemory:{v25, v53}];
          [v26 setPendingState:0];
          v27 = *(*(a1 + 56) + 16);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
          {
            v28 = v27;
            v29 = [v25 uuid];
            *buf = 138412290;
            *v76 = v29;
            _os_log_impl(&dword_22F0FC000, v28, OS_LOG_TYPE_INFO, "[PGMemoryPhotoKitPersister] Unpending memory with uuid %@", buf, 0xCu);
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v64 objects:v74 count:16];
      }

      while (v22);
    }

    v3 = v53;
  }

  else if (*(a1 + 100) == 1)
  {
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v30 = *(a1 + 72);
    v31 = [v30 countByEnumeratingWithState:&v60 objects:v73 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v61;
      do
      {
        for (k = 0; k != v32; ++k)
        {
          if (*v61 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v35 = [*(*(&v60 + 1) + 8 * k) uuid];
          [v3 addObject:v35];
        }

        v32 = [v30 countByEnumeratingWithState:&v60 objects:v73 count:16];
      }

      while (v32);
    }

    [MEMORY[0x277CD98E8] deleteMemories:*(a1 + 72)];
    v36 = *(*(a1 + 56) + 16);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      v37 = *(a1 + 72);
      v38 = v36;
      v39 = [v37 count];
      *buf = 67109120;
      *v76 = v39;
      _os_log_impl(&dword_22F0FC000, v38, OS_LOG_TYPE_INFO, "[PGMemoryPhotoKitPersister] Deleting %d previously existing pending memories", buf, 8u);
    }
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v40 = *(a1 + 80);
  v41 = [v40 countByEnumeratingWithState:&v56 objects:v72 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v57;
    do
    {
      for (m = 0; m != v42; ++m)
      {
        if (*v57 != v43)
        {
          objc_enumerationMutation(v40);
        }

        v45 = *(*(&v56 + 1) + 8 * m);
        v46 = [v45 uuid];
        v47 = [v3 containsObject:v46];

        if ((v47 & 1) == 0)
        {
          v48 = [MEMORY[0x277CD98E8] changeRequestForMemory:v45];
          [v48 setFeaturedState:0];
          v49 = *(*(a1 + 56) + 16);
          if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
          {
            v50 = v49;
            v51 = [v45 uuid];
            *buf = 138412290;
            *v76 = v51;
            _os_log_impl(&dword_22F0FC000, v50, OS_LOG_TYPE_INFO, "[PGMemoryPhotoKitPersister] Clearing currently featured state for memory with uuid %@", buf, 0xCu);
          }
        }
      }

      v42 = [v40 countByEnumeratingWithState:&v56 objects:v72 count:16];
    }

    while (v42);
  }

LABEL_47:
  v52 = *MEMORY[0x277D85DE8];
}

- (BOOL)persistLocalMemoriesFromEnrichedMemories:(id)a3 localMemoriesToDelete:(id)a4 progressReporter:(id)a5 error:(id *)a6
{
  v43 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (a6)
  {
    *a6 = 0;
  }

  if (![v10 count] && !objc_msgSend(v11, "count"))
  {
    LOBYTE(v18) = 1;
    goto LABEL_12;
  }

  v13 = [(PGMemoryPhotoKitPersister *)self _photosGraphDataDictionaryByEnrichedMemoryIdentifierForEnrichedMemories:v10];
  photoLibrary = self->_photoLibrary;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __115__PGMemoryPhotoKitPersister_persistLocalMemoriesFromEnrichedMemories_localMemoriesToDelete_progressReporter_error___block_invoke;
  v31[3] = &unk_2788827F0;
  v32 = v12;
  v15 = v11;
  v33 = v15;
  v16 = v10;
  v34 = v16;
  v17 = v13;
  v35 = v17;
  v36 = self;
  v30 = 0;
  v18 = [(PHPhotoLibrary *)photoLibrary performChangesAndWait:v31 error:&v30];
  v19 = v30;
  loggingConnection = self->_loggingConnection;
  if (v18)
  {
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
    {
      v21 = loggingConnection;
      v22 = [v16 count];
      v23 = [v15 count];
      *buf = 134218240;
      v38 = v22;
      v39 = 2048;
      v40 = v23;
      _os_log_impl(&dword_22F0FC000, v21, OS_LOG_TYPE_INFO, "[PGMemoryPhotoKitPersister] Successfully persisted %lu and deleted %lu enriched local memories", buf, 0x16u);
    }

    goto LABEL_11;
  }

  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
  {
    v27 = loggingConnection;
    v28 = [v16 count];
    v29 = [v15 count];
    *buf = 134218498;
    v38 = v28;
    v39 = 2048;
    v40 = v29;
    v41 = 2112;
    v42 = v19;
    _os_log_error_impl(&dword_22F0FC000, v27, OS_LOG_TYPE_ERROR, "[PGMemoryPhotoKitPersister] Failed to persist %lu and delete %lu enriched local memories. Error: %@", buf, 0x20u);

    if (!a6)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (a6)
  {
LABEL_10:
    v24 = v19;
    *a6 = v19;
  }

LABEL_11:

LABEL_12:
  v25 = *MEMORY[0x277D85DE8];
  return v18;
}

void __115__PGMemoryPhotoKitPersister_persistLocalMemoriesFromEnrichedMemories_localMemoriesToDelete_progressReporter_error___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if ([*(a1 + 40) count])
  {
    [MEMORY[0x277CD98E8] deleteMemories:*(a1 + 40)];
  }

  v3 = 0.1;
  if ([v2 isCancelledWithProgress:0.1])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v26 = 91;
      v27 = 2080;
      v28 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/PGMemoryPhotoKitPersister.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }
  }

  else
  {
    v4 = [*(a1 + 48) count];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    obj = *(a1 + 48);
    v5 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0.9 / v4;
      v8 = *v21;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v21 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v20 + 1) + 8 * i);
          v11 = objc_autoreleasePoolPush();
          v12 = *(a1 + 56);
          v13 = [v10 uniqueMemoryIdentifier];
          v14 = [v12 objectForKeyedSubscript:v13];

          v15 = *(a1 + 64);
          v16 = [v10 creationDate];
          v17 = [v15 _memoryCreationRequestForEnrichedMemory:v10 pendingState:2 creationDate:v16 photosGraphDataDictionary:v14];

          v3 = v7 + v3;
          if ([v2 isCancelledWithProgress:v3])
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              v26 = 98;
              v27 = 2080;
              v28 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/PGMemoryPhotoKitPersister.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }

            objc_autoreleasePoolPop(v11);
            goto LABEL_18;
          }

          objc_autoreleasePoolPop(v11);
        }

        v6 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_18:
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (id)_photosGraphDataDictionaryForEnrichedMemory:(id)a3
{
  v4 = a3;
  if ([v4 failedEnrichment])
  {
    v5 = MEMORY[0x277CBEC10];
  }

  else
  {
    v6 = [[PGMemoryPhotosGraphProperties alloc] initWithEnrichedMemory:v4 neighborScoreComputer:self->_neighborScoreComputer isAppleMusicSubscriber:self->_isAppleMusicSubscriber photoLibrary:self->_photoLibrary loggingConnection:self->_loggingConnection];
    v5 = [(PGMemoryPhotosGraphProperties *)v6 dictionary];
  }

  return v5;
}

- (id)_photosGraphDataDictionaryByEnrichedMemoryIdentifierForEnrichedMemories:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = objc_autoreleasePoolPush();
        v13 = [(PGMemoryPhotoKitPersister *)self _photosGraphDataDictionaryForEnrichedMemory:v11, v17];
        v14 = [v11 uniqueMemoryIdentifier];
        [v5 setObject:v13 forKeyedSubscript:v14];

        objc_autoreleasePoolPop(v12);
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v5;
}

- (PGMemoryPhotoKitPersister)initWithPhotoLibrary:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = PGMemoryPhotoKitPersister;
  v6 = [(PGMemoryPhotoKitPersister *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_photoLibrary, a3);
    v8 = os_log_create("com.apple.PhotosGraph", "MemoryPhotoKitPersister");
    loggingConnection = v7->_loggingConnection;
    v7->_loggingConnection = v8;

    v10 = objc_alloc_init(PGNeighborScoreComputer);
    neighborScoreComputer = v7->_neighborScoreComputer;
    v7->_neighborScoreComputer = v10;

    v12 = [MEMORY[0x277D22C80] ignoreProgress];
    v7->_isAppleMusicSubscriber = [PGMusicCatalogMonitor checkMusicCatalogEligibilityWithProgressReporter:v12];
  }

  return v7;
}

+ (void)setStoryColorGradeKindFromPhotosGraphProperties:(id)a3 onMemoryChangeRequest:(id)a4
{
  v9 = a3;
  v5 = a4;
  v6 = [v9 objectForKeyedSubscript:@"storyColorGradeKind"];
  v7 = [v6 integerValue];

  if (!v7)
  {
    v8 = [v9 objectForKeyedSubscript:@"storyColorGradeCategory"];
    v7 = PFStoryColorGradeKindDefaultForColorGradeCategory();
  }

  [v5 setStoryColorGradeKind:v7];
}

@end