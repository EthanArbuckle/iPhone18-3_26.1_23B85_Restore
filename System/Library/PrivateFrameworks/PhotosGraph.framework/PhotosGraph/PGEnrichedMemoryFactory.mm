@interface PGEnrichedMemoryFactory
+ (double)notificationScoreForNotificationLevel:(int64_t)a3 electionScore:(double)a4;
+ (int64_t)notificationLevelForTriggeredMemory:(id)a3 withLocalDate:(id)a4 graph:(id)a5;
+ (void)requestFlexMusicCurationForEnrichedMemories:(id)a3 context:(id)a4 photoLibrary:(id)a5 graph:(id)a6 progressReporter:(id)a7 resultHandler:(id)a8;
+ (void)requestMusicCurationForEnrichedMemories:(id)a3 context:(id)a4 graph:(id)a5 progressReporter:(id)a6 resultHandler:(id)a7;
- (PGEnrichedMemoryFactory)initWithMemoryCurationSession:(id)a3 graph:(id)a4 serviceManager:(id)a5;
- (id)_curatedAssetsWithFeeder:(id)a3 options:(id)a4 progressBlock:(id)a5;
- (id)_extendedCuratedAssetsWithFeeder:(id)a3 options:(id)a4 progressBlock:(id)a5;
- (id)_keyAssetWithFeeder:(id)a3 options:(id)a4 progressBlock:(id)a5;
- (id)_memoryEnricherFromTriggeredMemory:(id)a3;
- (id)debugEnrichedMemoryWithTriggeredMemory:(id)a3 withConfiguration:(id)a4 progressReporter:(id)a5;
- (id)enrichedMemoryWithTriggeredMemory:(id)a3 withConfiguration:(id)a4 progressReporter:(id)a5 debug:(BOOL)a6;
- (unint64_t)_numberOfGuestAssetInAssets:(id)a3;
@end

@implementation PGEnrichedMemoryFactory

+ (double)notificationScoreForNotificationLevel:(int64_t)a3 electionScore:(double)a4
{
  if ((a3 - 2) > 2)
  {
    v4 = MEMORY[0x277CD9C38];
  }

  else
  {
    v4 = qword_278884EF0[a3 - 2];
  }

  v5 = fmax(a4, 0.0);
  if (v5 > 1.0)
  {
    v5 = 1.0;
  }

  return v5 * *MEMORY[0x277CD9C48] + *v4;
}

+ (int64_t)notificationLevelForTriggeredMemory:(id)a3 withLocalDate:(id)a4 graph:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 1;
  v10 = [v7 memoryFeatureNodes];
  v11 = [v7 memoryMomentNodes];
  v12 = [(PGGraphNodeCollection *)PGGraphMeaningNodeCollection subsetInCollection:v10];
  v13 = [v12 labels];

  v14 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v15 = +[PGGraph stellarMeanings];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __97__PGEnrichedMemoryFactory_Notification__notificationLevelForTriggeredMemory_withLocalDate_graph___block_invoke;
  v37[3] = &unk_27888A200;
  v16 = v14;
  v38 = v16;
  [v15 enumerateIndexesUsingBlock:v37];

  v17 = [v7 triggerTypes];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __97__PGEnrichedMemoryFactory_Notification__notificationLevelForTriggeredMemory_withLocalDate_graph___block_invoke_2;
  v31[3] = &unk_278884ED0;
  v36 = &v39;
  v18 = v7;
  v32 = v18;
  v19 = v13;
  v33 = v19;
  v20 = v16;
  v34 = v20;
  v21 = v11;
  v35 = v21;
  [v17 enumerateIndexesUsingBlock:v31];

  if (v40[3] != 4)
  {
    switch([v18 memoryCategory])
    {
      case 0:
      case 7:
      case 12:
      case 13:
      case 14:
      case 15:
      case 20:
      case 24:
        v22 = v40;
        v23 = v40[3];
        if (v23 <= 1)
        {
          v23 = 1;
        }

        goto LABEL_14;
      case 2:
      case 3:
      case 4:
        goto LABEL_7;
      case 5:
      case 6:
        v25 = [v18 memoryFeatureNodes];
        v26 = [(PGGraphNodeCollection *)PGGraphSocialGroupNodeCollection subsetInCollection:v25];
        v24 = [v26 anyNode];

        if ([v24 rankInGraph:v9] > 1)
        {
          goto LABEL_9;
        }

        goto LABEL_8;
      case 9:
      case 27:
        v22 = v40;
        v23 = v40[3];
        if (v23 <= 2)
        {
          v23 = 2;
        }

        goto LABEL_14;
      case 10:
      case 11:
      case 17:
      case 18:
      case 19:
      case 25:
      case 26:
      case 28:
      case 29:
      case 30:
        goto LABEL_3;
      case 16:
        if ([v19 containsObject:@"Birthday"])
        {
LABEL_7:
          v24 = [(PGGraphNodeCollection *)PGGraphPersonNodeCollection subsetInCollection:v10];
          if ([PGPeopleInferencesConveniences anyPersonNodes:v24 belongToBestSocialGroupsInGraph:v9])
          {
LABEL_8:
            v40[3] = 3;
          }

LABEL_9:
        }

        else
        {
          v29 = [(PGGraphNodeCollection *)PGGraphHolidayNodeCollection subsetInCollection:v10];
          v30 = [v29 count];

          if (v30)
          {
LABEL_3:
            v22 = v40;
            v23 = 3;
LABEL_14:
            v22[3] = v23;
          }
        }

        break;
      default:
        break;
    }
  }

  v27 = v40[3];

  _Block_object_dispose(&v39, 8);
  return v27;
}

void __97__PGEnrichedMemoryFactory_Notification__notificationLevelForTriggeredMemory_withLocalDate_graph___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = PGMeaningLabelForMeaning(a2);
  [v2 addObject:v3];
}

void __97__PGEnrichedMemoryFactory_Notification__notificationLevelForTriggeredMemory_withLocalDate_graph___block_invoke_2(uint64_t a1, uint64_t a2, BOOL *a3)
{
  switch(a2)
  {
    case 0:
    case 7:
    case 16:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
      v5 = *(*(a1 + 64) + 8);
      v6 = *(v5 + 24);
      if (v6 <= 1)
      {
        v6 = 1;
      }

      goto LABEL_13;
    case 1:
    case 3:
    case 12:
    case 17:
      goto LABEL_7;
    case 2:
    case 15:
      goto LABEL_9;
    case 4:
      if ([*(a1 + 40) containsObject:@"Anniversary"])
      {
        goto LABEL_9;
      }

      if ([*(a1 + 40) intersectsSet:*(a1 + 48)])
      {
LABEL_7:
        v5 = *(*(a1 + 64) + 8);
        v6 = 3;
      }

      else
      {
        v7 = [*(a1 + 56) personNodes];
        v8 = [v7 count];

        if (!v8)
        {
          goto LABEL_14;
        }

LABEL_11:
        v5 = *(*(a1 + 64) + 8);
        v6 = *(v5 + 24);
        if (v6 <= 2)
        {
          v6 = 2;
        }
      }

LABEL_13:
      *(v5 + 24) = v6;
LABEL_14:
      *a3 = *(*(*(a1 + 64) + 8) + 24) == 4;
      return;
    case 5:
      if ([*(a1 + 32) memoryCategory] != 8)
      {
        goto LABEL_14;
      }

LABEL_9:
      v5 = *(*(a1 + 64) + 8);
      v6 = 4;
      goto LABEL_13;
    case 6:
    case 8:
    case 9:
    case 10:
    case 11:
    case 13:
    case 14:
    case 18:
    case 19:
    case 27:
      goto LABEL_11;
    default:
      goto LABEL_14;
  }
}

+ (void)requestMusicCurationForEnrichedMemories:(id)a3 context:(id)a4 graph:(id)a5 progressReporter:(id)a6 resultHandler:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = v13;
  v44 = v15;
  v37 = [MEMORY[0x277CBEAA8] date];
  v40 = v11;
  v39 = [v11 count];
  if (v39)
  {
    v17 = 0;
    v18 = v39;
    v38 = v14;
    v19 = &unk_2810A4000;
    v36 = v13;
    while (1)
    {
      v20 = objc_autoreleasePoolPush();
      if ([v14 isCancelled])
      {
        break;
      }

      v21 = (v17 + 0.5) / v18;
      v22 = [v40 objectAtIndexedSubscript:v17];
      v23 = [v14 childProgressReporterFromStart:v17 / v18 toEnd:v21];
      v24 = [objc_opt_class() appleMusicFeatureExtractionContextWithCuratorContext:v12];
      v46 = 0;
      v25 = [v19 + 3160 extractMusicCurationFeaturesForEnrichedMemory:v22 graph:v16 context:v24 progressReporter:v23 error:&v46];
      v26 = v46;
      if (v25)
      {
        v41 = v26;
        v42 = v23;
        context = v20;
        v27 = [v14 childProgressReporterFromStart:v21 toEnd:++v17 / v18];
        v28 = v19;
        v29 = v27;
        v45 = 0;
        v30 = [v28 + 3160 curateMusicForFeatures:v25 context:v12 progressReporter:v27 error:&v45];
        v31 = v45;
        if (v30)
        {
          v32 = [v12 recentlyUsedSongs];
          [v32 addMusicCuration:v30 date:v37];

          v16 = v36;
        }

        v44[2]();

        objc_autoreleasePoolPop(context);
        v14 = v38;
        v19 = &unk_2810A4000;
      }

      else
      {
        v33 = v26;
        (v44[2])(v44, v22, 0, v26);

        objc_autoreleasePoolPop(v20);
        ++v17;
      }

      if (v17 == v39)
      {
        goto LABEL_14;
      }
    }

    v34 = +[PGLogging sharedLogging];
    v35 = [v34 loggingConnection];

    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22F0FC000, v35, OS_LOG_TYPE_ERROR, "[PGEnrichedMemoryFactory] (MemoriesMusic) Cancelling Apple Music curation for enriched memories.", buf, 2u);
    }

    objc_autoreleasePoolPop(v20);
    v16 = v36;
  }

LABEL_14:
}

+ (void)requestFlexMusicCurationForEnrichedMemories:(id)a3 context:(id)a4 photoLibrary:(id)a5 graph:(id)a6 progressReporter:(id)a7 resultHandler:(id)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v50 = a6;
  v16 = a7;
  v54 = a8;
  v52 = v13;
  v17 = [v13 count];
  v45 = v16;
  v53 = [v16 progressReportersForParallelOperationsWithCount:v17];
  v46 = v15;
  v18 = [PGMusicCurationRecentlyUsedSongs recentlyUsedFlexMusicSongsFromPhotoLibrary:v15];
  v47 = [MEMORY[0x277CBEAA8] date];
  v51 = v17;
  if (!v17)
  {
    goto LABEL_21;
  }

  v19 = 0;
  v20 = v17;
  v48 = v18;
  v49 = v14;
  while (1)
  {
    v21 = objc_autoreleasePoolPush();
    v22 = [v53 objectAtIndexedSubscript:v19];
    if ([v22 isCancelled])
    {
      break;
    }

    v23 = [v52 objectAtIndexedSubscript:v19];
    v24 = v19 / v20;
    v25 = v19++ + 0.5;
    v26 = v25 / v20;
    v27 = [v22 childProgressReporterFromStart:v24 toEnd:v25 / v20];
    v28 = v27;
    if (!v14)
    {
      if ([v27 isCancelledWithProgress:1.0])
      {
        v43 = +[PGLogging sharedLogging];
        v44 = [v43 loggingConnection];

        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_22F0FC000, v44, OS_LOG_TYPE_ERROR, "[PGEnrichedMemoryFactory] (MemoriesMusic) Cancelling Flex Music curation for enriched memories.", buf, 2u);
        }

        goto LABEL_20;
      }

      v55 = v28;
      v57 = v21;
      v29 = 0;
      goto LABEL_9;
    }

    v29 = [objc_opt_class() flexMusicFeatureExtractionContextWithCuratorContext:v14];
    v59 = 0;
    v30 = [PGMusicCurator extractMusicCurationFeaturesForEnrichedMemory:v23 graph:v50 context:v29 progressReporter:v28 error:&v59];
    v31 = v59;
    v32 = v31;
    if (v30)
    {
      v55 = v28;
      v57 = v21;

      v29 = v30;
LABEL_9:
      v56 = v22;
      v32 = [v22 childProgressReporterFromStart:v26 toEnd:v19 / v20];
      v33 = [PGFlexMusicCurationParameters alloc];
      v34 = [v23 suggestedMood];
      [v23 legacyMoodKeywords];
      v36 = v35 = v23;
      v37 = [v35 uniqueMemoryIdentifier];
      v38 = [(PGFlexMusicCurationParameters *)v33 initWithMood:v34 moodKeywords:v36 recentlyUsedSongs:v48 entityUUID:v37 useMoodKeywords:0 features:v29 musicCuratorContext:v14];

      v58 = 0;
      v39 = [PGFlexMusicCurator curateFlexMusicWithCurationParameters:v38 progressReporter:v32 error:&v58];
      v40 = v58;
      if (v39)
      {
        [v48 addFlexMusicCuration:v39 date:v47];
      }

      v54[2]();
      v18 = v48;
      v23 = v35;

      v14 = v49;
      v22 = v56;
      v21 = v57;
      v28 = v55;
      goto LABEL_13;
    }

    (v54[2])(v54, v23, 0, v31);
LABEL_13:

    objc_autoreleasePoolPop(v21);
    if (v51 == v19)
    {
      goto LABEL_21;
    }
  }

  v41 = +[PGLogging sharedLogging];
  v42 = [v41 loggingConnection];

  v23 = v42;
  if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_22F0FC000, v42, OS_LOG_TYPE_ERROR, "[PGEnrichedMemoryFactory] (MemoriesMusic) Cancelling Flex Music curation for enriched memories.", buf, 2u);
  }

LABEL_20:

  objc_autoreleasePoolPop(v21);
LABEL_21:
}

- (id)_extendedCuratedAssetsWithFeeder:(id)a3 options:(id)a4 progressBlock:(id)a5
{
  v62 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _Block_copy(v10);
  v54 = 0;
  v55 = &v54;
  v56 = 0x2020000000;
  v57 = 0;
  v50 = 0;
  v51 = &v50;
  v52 = 0x2020000000;
  v53 = 0;
  v38 = v8;
  if (!v11 || (v12 = CFAbsoluteTimeGetCurrent(), v12 - v51[3] < 0.01) || (v51[3] = v12, v49 = 0, (*(v11 + 2))(v11, &v49, 0.0), v13 = *(v55 + 24) | v49, *(v55 + 24) = v13, (v13 & 1) == 0))
  {
    v15 = [v8 allItems];
    if (![v15 count])
    {
      v14 = v15;
LABEL_27:

      goto LABEL_28;
    }

    v37 = [(PGMemoryCurationSession *)self->_memoryCurationSession photoLibrary];
    v16 = [[PGDejunkerDeduper_PHAsset alloc] initWithSimilarityModelClass:objc_opt_class()];
    [(PGDejunkerDeduper *)v16 setLoggingConnection:self->_loggingConnection];
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __82__PGEnrichedMemoryFactory__extendedCuratedAssetsWithFeeder_options_progressBlock___block_invoke;
    v44[3] = &unk_27888A188;
    v17 = v11;
    v45 = v17;
    v46 = &v50;
    v47 = &v54;
    v48 = 0x3F847AE147AE147BLL;
    v18 = [(PGDejunkerDeduper_PHAsset *)v16 dejunkedDedupedAssetsInAssets:v15 options:v9 debugInfo:0 progressBlock:v44];
    if (*(v55 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v59 = 592;
        v60 = 2080;
        v61 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/PGEnrichedMemoryFactory.m";
        v19 = MEMORY[0x277D86220];
LABEL_11:
        _os_log_impl(&dword_22F0FC000, v19, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }
    }

    else
    {
      v20 = [PGCurationManager maximumNumberOfItemsForDuration:10 withTotalNumberOfItems:-1];
      if ([v18 count] > v20)
      {
        v36 = -[PGCurationOptions initWithDuration:]([PGCurationOptions alloc], "initWithDuration:", [v9 duration]);
        [(PGCurationOptions *)v36 setLastPassMovieAdditionEnabled:0];
        v21 = [v9 identifiersOfRequiredItems];
        [(PGCurationOptions *)v36 setUuidsOfRequiredAssets:v21];

        v34 = v9;
        v22 = objc_alloc(MEMORY[0x277CD98D0]);
        v23 = MEMORY[0x277CBEB98];
        v24 = +[PGCurationManager assetPropertySetsForCuration];
        v25 = [v23 setWithArray:v24];
        v35 = [v22 initWithObjects:v18 photoLibrary:v37 fetchType:0 fetchPropertySets:v25 identifier:0 registerIfNeeded:0];

        v26 = objc_alloc(MEMORY[0x277D27710]);
        v27 = [(PGMemoryCurationSession *)self->_memoryCurationSession curationContext];
        v28 = [v26 initWithAssetFetchResult:v35 curationContext:v27];

        v39[0] = MEMORY[0x277D85DD0];
        v39[1] = 3221225472;
        v39[2] = __82__PGEnrichedMemoryFactory__extendedCuratedAssetsWithFeeder_options_progressBlock___block_invoke_294;
        v39[3] = &unk_27888A188;
        v40 = v17;
        v41 = &v50;
        v42 = &v54;
        v43 = 0x3F847AE147AE147BLL;
        v29 = [(PGEnrichedMemoryFactory *)self _curatedAssetsWithFeeder:v28 options:v36 progressBlock:v39];

        v9 = v34;
        if (*(v55 + 24) == 1)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v59 = 606;
            v60 = 2080;
            v61 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/PGEnrichedMemoryFactory.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          v14 = MEMORY[0x277CBEBF8];
          v18 = v29;
          goto LABEL_26;
        }

        v18 = v29;
      }

      if (!v11 || (Current = CFAbsoluteTimeGetCurrent(), Current - v51[3] < 0.01) || (v51[3] = Current, v49 = 0, (*(v17 + 2))(v17, &v49, 1.0), v31 = *(v55 + 24) | v49, *(v55 + 24) = v31, (v31 & 1) == 0))
      {
        v18 = v18;
        v14 = v18;
        goto LABEL_26;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v59 = 609;
        v60 = 2080;
        v61 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/PGEnrichedMemoryFactory.m";
        v19 = MEMORY[0x277D86220];
        goto LABEL_11;
      }
    }

    v14 = MEMORY[0x277CBEBF8];
LABEL_26:

    goto LABEL_27;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v59 = 578;
    v60 = 2080;
    v61 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/PGEnrichedMemoryFactory.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v14 = MEMORY[0x277CBEBF8];
LABEL_28:
  _Block_object_dispose(&v50, 8);
  _Block_object_dispose(&v54, 8);

  v32 = *MEMORY[0x277D85DE8];

  return v14;
}

void __82__PGEnrichedMemoryFactory__extendedCuratedAssetsWithFeeder_options_progressBlock___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.0 + 0.5);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __82__PGEnrichedMemoryFactory__extendedCuratedAssetsWithFeeder_options_progressBlock___block_invoke_294(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.0 + 0.5);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

- (id)_curatedAssetsWithFeeder:(id)a3 options:(id)a4 progressBlock:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(PGCurator_PHAsset);
  [(PGCurator *)v11 setLoggingConnection:self->_loggingConnection];
  v12 = [(PGCurator_PHAsset *)v11 bestAssetsForFeeder:v10 options:v9 debugInfo:0 progressBlock:v8];

  return v12;
}

- (id)_keyAssetWithFeeder:(id)a3 options:(id)a4 progressBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(PGMemoryCurationSession *)self->_memoryCurationSession curationManager];
  v12 = [v9 referencePersonLocalIdentifiers];
  v13 = [v12 count];

  if (v13)
  {
    v14 = [v8 allItems];
    v15 = [v9 referencePersonLocalIdentifiers];
    v16 = [v9 minimumNumberOfReferencePersons];
    v17 = [v9 allowGuestAsset];
    LOBYTE(v22) = [v9 wantsGoodSquareCropScore];
    [v11 bestAssetInAssets:v14 forReferencePersonLocalIdentifiers:v15 requiredMinimumNumberOfReferencePersons:v16 forMemories:1 forSocialGroup:0 allowGuestAsset:v17 wantsGoodSquareCropScore:v22];
  }

  else
  {
    v18 = [PGKeyCurator_PHAsset alloc];
    v19 = [v11 curationCriteriaFactory];
    v14 = [(PGKeyCurator *)v18 initWithCurationCriteriaFactory:v19];

    v15 = [v9 curationCriteria];
    [(PGKeyCurator_PHAsset *)v14 keyAssetWithFeeder:v8 options:v9 criteria:v15 debugInfo:0 progressBlock:v10];
  }
  v20 = ;

  return v20;
}

- (unint64_t)_numberOfGuestAssetInAssets:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v11 + 1) + 8 * i) sourceType] == 32)
        {
          ++v6;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t __155__PGEnrichedMemoryFactory_curatedAssetUUIDsWithTriggeredMemory_keyAsset_extendedCuratedAssetUUIDs_targetCurationDuration_allowGuestAsset_progressReporter___block_invoke_284(uint64_t a1, _BYTE *a2, double a3)
{
  v5 = *(*(a1 + 40) + 8);
  if (*(v5 + 24))
  {
    result = 1;
  }

  else
  {
    result = [*(a1 + 32) isCancelledWithProgress:a3 * 0.05 + 0.25];
    v5 = *(*(a1 + 40) + 8);
  }

  *(v5 + 24) = result;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a2 = 1;
  }

  return result;
}

- (id)enrichedMemoryWithTriggeredMemory:(id)a3 withConfiguration:(id)a4 progressReporter:(id)a5 debug:(BOOL)a6
{
  v264 = a6;
  v302 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v269 = a5;
  v11 = self->_loggingConnection;
  v12 = os_signpost_id_generate(v11);
  v13 = v11;
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "MemoryElectionEnrichment", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v262 = mach_absolute_time();
  v15 = [[PGEnrichedMemory alloc] initWithTriggeredMemory:v9];
  if ([v10 skipEnrichment])
  {
    v16 = v15;
    goto LABEL_72;
  }

  v259 = [v10 allowGuestAsset];
  v268 = [(PGEnrichedMemoryFactory *)self _memoryEnricherFromTriggeredMemory:v9];
  v17 = objc_opt_class();
  v263 = NSStringFromClass(v17);
  v18 = v269;
  *buf = 0;
  v295 = buf;
  v296 = 0x2020000000;
  v297 = 0;
  v267 = v18;
  v19 = [v18 isCancelledWithProgress:0.0];
  v295[24] = v19;
  if (v19)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *v299 = 67109378;
      *v300 = 239;
      *&v300[4] = 2080;
      *&v300[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/PGEnrichedMemoryFactory.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v299, 0x12u);
    }

    v16 = 0;
    goto LABEL_71;
  }

  v20 = self->_loggingConnection;
  v21 = os_signpost_id_generate(v20);
  v22 = v20;
  v23 = v22;
  if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
  {
    *v299 = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v23, OS_SIGNPOST_INTERVAL_BEGIN, v21, "Feeder", "", v299, 2u);
  }

  v258 = v23;

  v293 = 0;
  mach_timebase_info(&v293);
  v24 = mach_absolute_time();
  v25 = [v268 relevantFeederForTriggeredMemory:v9 inGraph:self->_graph allowGuestAsset:v259 progressReporter:v267];
  v261 = v25;
  if (v25)
  {
    -[PGEnrichedMemory setNumberOfRelevantAssets:](v15, "setNumberOfRelevantAssets:", [v25 numberOfItems]);
    if (v295[24])
    {
      v295[24] = 1;
      goto LABEL_19;
    }

    v26 = [v267 isCancelledWithProgress:0.05];
    v295[24] = v26;
    if (v26)
    {
LABEL_19:
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *v299 = 67109378;
        *v300 = 256;
        *&v300[4] = 2080;
        *&v300[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/PGEnrichedMemoryFactory.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v299, 0x12u);
      }

      goto LABEL_21;
    }

    v257 = [v268 relevantCurationFeederForTriggeredMemory:v9 relevantFeeder:v261 inGraph:self->_graph allowGuestAsset:v259 progressReporter:v267];
    if (!v257)
    {
      v257 = v261;
    }

    if (v295[24])
    {
      v295[24] = 1;
LABEL_35:
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *v299 = 67109378;
        *v300 = 264;
        *&v300[4] = 2080;
        *&v300[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/PGEnrichedMemoryFactory.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v299, 0x12u);
      }

      v16 = 0;
      goto LABEL_68;
    }

    v32 = [v267 isCancelledWithProgress:0.1];
    v295[24] = v32;
    if (v32)
    {
      goto LABEL_35;
    }

    v256 = [v268 relevantKeyCurationFeederForTriggeredMemory:v9 inGraph:self->_graph allowGuestAsset:v259 progressReporter:v267];
    if (!v256)
    {
      v256 = v257;
    }

    if (v295[24])
    {
      v295[24] = 1;
LABEL_43:
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *v299 = 67109378;
        *v300 = 272;
        *&v300[4] = 2080;
        *&v300[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/PGEnrichedMemoryFactory.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v299, 0x12u);
      }

      v16 = 0;
      goto LABEL_67;
    }

    v33 = [v267 isCancelledWithProgress:0.15];
    v295[24] = v33;
    if (v33)
    {
      goto LABEL_43;
    }

    v254 = mach_absolute_time();
    numer = v293.numer;
    denom = v293.denom;
    v36 = v258;
    v37 = v36;
    v38 = v36;
    if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v39 = os_signpost_enabled(v36);
      v37 = v38;
      if (v39)
      {
        *v299 = 138412290;
        *v300 = v263;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v38, OS_SIGNPOST_INTERVAL_END, v21, "Feeder", "%@", v299, 0xCu);
        v37 = v38;
      }
    }

    v40 = v38;
    if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v263];
      v42 = v41 = (((v254 - v24) * numer) / denom) / 1000000.0;
      *v299 = 136315650;
      *v300 = "Feeder";
      *&v300[8] = 2112;
      *&v300[10] = v42;
      *&v300[18] = 2048;
      v301 = v41;
      _os_log_impl(&dword_22F0FC000, v40, OS_LOG_TYPE_INFO, "[Performance] %s - %@: %f ms", v299, 0x20u);
    }

    v43 = self->_loggingConnection;
    v44 = os_signpost_id_generate(v43);
    v45 = v43;
    v46 = v45;
    if (v44 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v45))
    {
      *v299 = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v46, OS_SIGNPOST_INTERVAL_BEGIN, v44, "KeyAsset", "", v299, 2u);
    }

    v253 = v46;

    v292 = 0;
    mach_timebase_info(&v292);
    v248 = mach_absolute_time();
    v47 = [v268 keyAssetCurationOptionsWithTriggeredMemory:v9 inGraph:self->_graph];
    [v47 setAllowGuestAsset:v259];
    v289[0] = MEMORY[0x277D85DD0];
    v289[1] = 3221225472;
    v289[2] = __102__PGEnrichedMemoryFactory_enrichedMemoryWithTriggeredMemory_withConfiguration_progressReporter_debug___block_invoke;
    v289[3] = &unk_278889448;
    v291 = buf;
    v250 = v267;
    v252 = v47;
    v290 = v250;
    v255 = [(PGEnrichedMemoryFactory *)self _keyAssetWithFeeder:v256 options:v47 progressBlock:v289];
    if (v295[24] == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *v299 = 67109378;
        *v300 = 285;
        *&v300[4] = 2080;
        *&v300[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/PGEnrichedMemoryFactory.m";
        v48 = MEMORY[0x277D86220];
LABEL_64:
        _os_log_impl(&dword_22F0FC000, v48, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v299, 0x12u);
        goto LABEL_65;
      }

      goto LABEL_65;
    }

    if (!v255)
    {
      goto LABEL_61;
    }

    if ([v255 clsAvoidIfPossibleAsKeyItemForMemories:1 allowGuestAsset:v259])
    {
      if (v295[24])
      {
        v295[24] = 1;
LABEL_62:
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *v299 = 67109378;
          *v300 = 287;
          *&v300[4] = 2080;
          *&v300[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/PGEnrichedMemoryFactory.m";
          v48 = MEMORY[0x277D86220];
          goto LABEL_64;
        }

LABEL_65:
        v16 = 0;
LABEL_66:

LABEL_67:
LABEL_68:

        goto LABEL_69;
      }

LABEL_61:
      v49 = [v250 isCancelledWithProgress:1.0];
      v295[24] = v49;
      if ((v49 & 1) == 0)
      {
        loggingConnection = self->_loggingConnection;
        if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
        {
          *v299 = 138412290;
          *v300 = v9;
          _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "[PGEnrichedMemoryFactory] No viable key asset found, returning nil enrichedMemory for %@", v299, 0xCu);
        }

        if (v264)
        {
          [(PGEnrichedMemory *)v15 setFailureReason:3];
          v16 = v15;
          goto LABEL_66;
        }

        goto LABEL_65;
      }

      goto LABEL_62;
    }

    v52 = [v255 uuid];
    [(PGEnrichedMemory *)v15 setKeyAssetUUID:v52];

    v246 = mach_absolute_time();
    v54 = v292.numer;
    v53 = v292.denom;
    v55 = v253;
    v56 = v55;
    if (v44 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v55))
    {
      *v299 = 138412290;
      *v300 = v263;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v56, OS_SIGNPOST_INTERVAL_END, v44, "KeyAsset", "%@", v299, 0xCu);
    }

    v57 = v56;
    if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
    {
      v58 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v263];
      *v299 = 136315650;
      *v300 = "KeyAsset";
      *&v300[8] = 2112;
      *&v300[10] = v58;
      *&v300[18] = 2048;
      v301 = ((((v246 - v248) * v54) / v53) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, v57, OS_LOG_TYPE_INFO, "[Performance] %s - %@: %f ms", v299, 0x20u);
    }

    v249 = [v268 uuidsOfRequiredAssetsWithKeyAsset:v255 triggeredMemory:v9 inGraph:self->_graph progressReporter:v250];
    v59 = self->_loggingConnection;
    v60 = os_signpost_id_generate(v59);
    v61 = v59;
    v62 = v61;
    v238 = v60 - 1;
    if (v60 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v61))
    {
      *v299 = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v62, OS_SIGNPOST_INTERVAL_BEGIN, v60, "ExtendedCuratedAsset", "", v299, 2u);
    }

    spid = v60;
    v247 = v62;

    v288 = 0;
    mach_timebase_info(&v288);
    v235 = mach_absolute_time();
    context = objc_autoreleasePoolPush();
    v63 = [v268 extendedCurationOptionsWithRequiredAssetUUIDs:v249 triggeredMemory:v9];
    v285[0] = MEMORY[0x277D85DD0];
    v285[1] = 3221225472;
    v285[2] = __102__PGEnrichedMemoryFactory_enrichedMemoryWithTriggeredMemory_withConfiguration_progressReporter_debug___block_invoke_262;
    v285[3] = &unk_278889448;
    v287 = buf;
    log = v250;
    v286 = log;
    v64 = [(PGEnrichedMemoryFactory *)self _extendedCuratedAssetsWithFeeder:v257 options:v63 progressBlock:v285];
    v242 = v63;
    v65 = v295[24];
    if (v65 == 1)
    {
      v66 = MEMORY[0x277D86220];
      v67 = MEMORY[0x277D86220];
      if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
      {
        *v299 = 67109378;
        *v300 = 316;
        *&v300[4] = 2080;
        *&v300[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/PGEnrichedMemoryFactory.m";
        _os_log_impl(&dword_22F0FC000, v66, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v299, 0x12u);
      }

      v251 = 0;
    }

    else
    {
      v66 = [PGMemoryGenerationHelper assetUUIDsFromAssets:v64];
      v251 = [v268 extendedCurationOptionsWithRequiredAssetUUIDs:v66 triggeredMemory:v9];
    }

    objc_autoreleasePoolPop(context);
    if (v65)
    {
      goto LABEL_98;
    }

    if (v295[24])
    {
      v295[24] = 1;
      goto LABEL_96;
    }

    v69 = [log isCancelledWithProgress:0.3];
    v295[24] = v69;
    if (v69)
    {
LABEL_96:
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *v299 = 67109378;
        *v300 = 323;
        *&v300[4] = 2080;
        *&v300[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/PGEnrichedMemoryFactory.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v299, 0x12u);
      }

LABEL_98:
      v16 = 0;
LABEL_99:

      goto LABEL_66;
    }

    v70 = objc_autoreleasePoolPush();
    v282[0] = MEMORY[0x277D85DD0];
    v282[1] = 3221225472;
    v282[2] = __102__PGEnrichedMemoryFactory_enrichedMemoryWithTriggeredMemory_withConfiguration_progressReporter_debug___block_invoke_264;
    v282[3] = &unk_278889448;
    v284 = buf;
    v229 = log;
    v283 = v229;
    contexta = [(PGEnrichedMemoryFactory *)self _extendedCuratedAssetsWithFeeder:v261 options:v251 progressBlock:v282];
    v71 = v295[24];
    if (v71 == 1)
    {
      v72 = MEMORY[0x277D86220];
      v73 = MEMORY[0x277D86220];
      if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
      {
        *v299 = 67109378;
        *v300 = 331;
        *&v300[4] = 2080;
        *&v300[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/PGEnrichedMemoryFactory.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v299, 0x12u);
      }
    }

    objc_autoreleasePoolPop(v70);
    if (v71)
    {
      v16 = 0;
LABEL_128:

      goto LABEL_99;
    }

    v243 = [PGMemoryGenerationHelper assetUUIDsFromAssets:contexta];
    v74 = [v243 allObjects];
    [(PGEnrichedMemory *)v15 setExtendedCuratedAssetUUIDs:v74];

    v75 = mach_absolute_time();
    v76 = v288.numer;
    v77 = v288.denom;
    v78 = v247;
    v79 = v78;
    if (v238 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v78))
    {
      *v299 = 138412290;
      *v300 = v263;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v79, OS_SIGNPOST_INTERVAL_END, spid, "ExtendedCuratedAsset", "%@", v299, 0xCu);
    }

    v80 = v79;
    if (os_log_type_enabled(v80, OS_LOG_TYPE_INFO))
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v263];
      v82 = v81 = (((v75 - v235) * v76) / v77) / 1000000.0;
      *v299 = 136315650;
      *v300 = "ExtendedCuratedAsset";
      *&v300[8] = 2112;
      *&v300[10] = v82;
      *&v300[18] = 2048;
      v301 = v81;
      _os_log_impl(&dword_22F0FC000, v80, OS_LOG_TYPE_INFO, "[Performance] %s - %@: %f ms", v299, 0x20u);
    }

    v83 = self->_loggingConnection;
    v84 = os_signpost_id_generate(v83);
    loga = v83;
    v236 = v84;
    v85 = v84 - 1;
    if (v84 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(loga))
    {
      *v299 = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, loga, OS_SIGNPOST_INTERVAL_BEGIN, v84, "CuratedAsset", "", v299, 2u);
    }

    v281 = 0;
    mach_timebase_info(&v281);
    spida = mach_absolute_time();
    v239 = [v268 curationOptionsWithRequiredAssetUUIDs:v249 eligibleAssetUUIDs:v243 triggeredMemory:v9];
    if (v295[24])
    {
      v295[24] = 1;
LABEL_117:
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *v299 = 67109378;
        *v300 = 344;
        *&v300[4] = 2080;
        *&v300[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/PGEnrichedMemoryFactory.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v299, 0x12u);
      }

      v16 = 0;
      goto LABEL_127;
    }

    v86 = [v229 isCancelledWithProgress:0.3];
    v295[24] = v86;
    if (v86)
    {
      goto LABEL_117;
    }

    v226 = objc_autoreleasePoolPush();
    v278[0] = MEMORY[0x277D85DD0];
    v278[1] = 3221225472;
    v278[2] = __102__PGEnrichedMemoryFactory_enrichedMemoryWithTriggeredMemory_withConfiguration_progressReporter_debug___block_invoke_266;
    v278[3] = &unk_278889448;
    v280 = buf;
    v224 = v229;
    v279 = v224;
    v230 = [(PGEnrichedMemoryFactory *)self _curatedAssetsWithFeeder:v257 options:v239 progressBlock:v278];
    v87 = v295[24];
    if (v87 == 1)
    {
      v88 = MEMORY[0x277D86220];
      v89 = MEMORY[0x277D86220];
      if (os_log_type_enabled(v88, OS_LOG_TYPE_INFO))
      {
        *v299 = 67109378;
        *v300 = 353;
        *&v300[4] = 2080;
        *&v300[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/PGEnrichedMemoryFactory.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v299, 0x12u);
      }
    }

    objc_autoreleasePoolPop(v226);
    if (v87)
    {
      goto LABEL_125;
    }

    v90 = [PGMemoryGenerationHelper assetUUIDsFromAssets:v230];
    v91 = [v90 allObjects];
    [(PGEnrichedMemory *)v15 setCuratedAssetUUIDs:v91];

    v92 = mach_absolute_time();
    v93 = v281.numer;
    v94 = v281.denom;
    v95 = loga;
    v96 = v95;
    if (v85 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v95))
    {
      *v299 = 138412290;
      *v300 = v263;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v96, OS_SIGNPOST_INTERVAL_END, v236, "CuratedAsset", "%@", v299, 0xCu);
    }

    v97 = v96;
    if (os_log_type_enabled(v97, OS_LOG_TYPE_INFO))
    {
      v98 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v263];
      *v299 = 136315650;
      *v300 = "CuratedAsset";
      *&v300[8] = 2112;
      *&v300[10] = v98;
      *&v300[18] = 2048;
      v301 = ((((v92 - spida) * v93) / v94) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, v97, OS_LOG_TYPE_INFO, "[Performance] %s - %@: %f ms", v299, 0x20u);
    }

    v99 = [v230 count];
    v100 = [v10 minimumNumberOfCuratedAssets];
    v101 = v100;
    if (v99 < v100)
    {
      if (v295[24])
      {
        v295[24] = 1;
LABEL_141:
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
LABEL_125:
          v16 = 0;
LABEL_126:

LABEL_127:
          goto LABEL_128;
        }

        *v299 = 67109378;
        *v300 = 363;
        *&v300[4] = 2080;
        *&v300[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/PGEnrichedMemoryFactory.m";
        v106 = MEMORY[0x277D86220];
LABEL_143:
        _os_log_impl(&dword_22F0FC000, v106, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v299, 0x12u);
        goto LABEL_125;
      }

      v105 = [v224 isCancelledWithProgress:1.0];
      v295[24] = v105;
      if (v105)
      {
        goto LABEL_141;
      }

      v133 = self->_loggingConnection;
      if (os_log_type_enabled(v133, OS_LOG_TYPE_DEFAULT))
      {
        *v299 = 67109634;
        *v300 = v99;
        *&v300[4] = 1024;
        *&v300[6] = v101;
        *&v300[10] = 2112;
        *&v300[12] = v9;
        _os_log_impl(&dword_22F0FC000, v133, OS_LOG_TYPE_DEFAULT, "[PGEnrichedMemoryFactory] Not enough curated assets, found %d but require at least %d, returning nil enrichedMemory for %@", v299, 0x18u);
      }

      if (!v264)
      {
        goto LABEL_125;
      }

      [(PGEnrichedMemory *)v15 setFailureReason:4];
LABEL_174:
      v16 = v15;
      goto LABEL_126;
    }

    if (v259)
    {
      v102 = [(PGEnrichedMemoryFactory *)self _numberOfGuestAssetInAssets:v230];
      [v10 maximumRatioOfGuestAssets];
      v103 = v102 / v99;
      if (v103 > v104)
      {
        if (v295[24])
        {
          v295[24] = 1;
        }

        else
        {
          v134 = [v224 isCancelledWithProgress:1.0];
          v295[24] = v134;
          if ((v134 & 1) == 0)
          {
            v138 = self->_loggingConnection;
            if (os_log_type_enabled(v138, OS_LOG_TYPE_DEFAULT))
            {
              *v299 = 138412802;
              *v300 = v9;
              *&v300[8] = 2048;
              *&v300[10] = v102;
              *&v300[18] = 2048;
              *&v301 = (v103 * v99);
              _os_log_impl(&dword_22F0FC000, v138, OS_LOG_TYPE_DEFAULT, "[PGEnrichedMemoryFactory] Too many guest assets featured for %@: %lu > %lu", v299, 0x20u);
            }

            if (!v264)
            {
              goto LABEL_125;
            }

            [(PGEnrichedMemory *)v15 setFailureReason:5];
            goto LABEL_174;
          }
        }

        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          goto LABEL_125;
        }

        *v299 = 67109378;
        *v300 = 378;
        *&v300[4] = 2080;
        *&v300[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/PGEnrichedMemoryFactory.m";
        v106 = MEMORY[0x277D86220];
        goto LABEL_143;
      }

      [(PGEnrichedMemory *)v15 setFeaturesGuestAssets:v102 != 0];
    }

    else
    {
      [(PGEnrichedMemory *)v15 setFeaturesGuestAssets:0];
    }

    v107 = self->_loggingConnection;
    v108 = os_signpost_id_generate(v107);
    v260 = v107;
    spidb = v108;
    v109 = v108 - 1;
    if (v109 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v260))
    {
      *v299 = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v260, OS_SIGNPOST_INTERVAL_BEGIN, spidb, "RepresentativeAssets", "", v299, 2u);
    }

    v277 = 0;
    mach_timebase_info(&v277);
    v227 = mach_absolute_time();
    v110 = [v261 allItems];
    v274[0] = MEMORY[0x277D85DD0];
    v274[1] = 3221225472;
    v274[2] = __102__PGEnrichedMemoryFactory_enrichedMemoryWithTriggeredMemory_withConfiguration_progressReporter_debug___block_invoke_269;
    v274[3] = &unk_278889448;
    v276 = buf;
    v225 = v224;
    v275 = v225;
    v237 = [PGCurationManager representativeAssetsForAssets:v110 extendedCuratedAssets:contexta progressBlock:v274];

    if (v295[24] == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *v299 = 67109378;
        *v300 = 399;
        *&v300[4] = 2080;
        *&v300[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/PGEnrichedMemoryFactory.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v299, 0x12u);
      }

      v16 = 0;
      goto LABEL_216;
    }

    v111 = [PGMemoryGenerationHelper assetUUIDsFromAssets:v237];
    v112 = [v111 allObjects];
    [(PGEnrichedMemory *)v15 setRepresentativeAssetUUIDs:v112];

    v113 = mach_absolute_time();
    v114 = v277.numer;
    v115 = v277.denom;
    v116 = v260;
    v117 = v116;
    if (v109 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v116))
    {
      *v299 = 138412290;
      *v300 = v263;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v117, OS_SIGNPOST_INTERVAL_END, spidb, "RepresentativeAssets", "%@", v299, 0xCu);
    }

    v118 = v117;
    if (os_log_type_enabled(v118, OS_LOG_TYPE_INFO))
    {
      v119 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v263];
      *v299 = 136315650;
      *v300 = "RepresentativeAssets";
      *&v300[8] = 2112;
      *&v300[10] = v119;
      *&v300[18] = 2048;
      v301 = ((((v113 - v227) * v114) / v115) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, v118, OS_LOG_TYPE_INFO, "[Performance] %s - %@: %f ms", v299, 0x20u);
    }

    v120 = self->_loggingConnection;
    v121 = os_signpost_id_generate(v120);
    v228 = v120;
    v219 = v121;
    v122 = v121 - 1;
    if (v121 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v228))
    {
      *v299 = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v228, OS_SIGNPOST_INTERVAL_BEGIN, v121, "TitleGeneration", "", v299, 2u);
    }

    v273 = 0;
    mach_timebase_info(&v273);
    v214 = mach_absolute_time();
    spidc = [v268 titleGeneratorForTriggeredMemory:v9 withKeyAsset:v255 curatedAssets:v230 extendedCuratedAssets:contexta titleGenerationContext:self->_titleGenerationContext inGraph:self->_graph];
    if (spidc)
    {
      v222 = [spidc title];
      v123 = [v222 stringValue];
      v223 = [v123 stringByReplacingOccurrencesOfString:@"\\n" withString:@"\n"];

      if ([v223 length])
      {
        [(PGEnrichedMemory *)v15 setTitle:v223];
        v218 = [spidc subtitle];
        v124 = [v218 stringValue];
        [(PGEnrichedMemory *)v15 setSubtitle:v124];

        v125 = [(PGEnrichedMemory *)v15 subtitle];
        v126 = [v125 length] == 0;

        if (v126)
        {
          if (v295[24])
          {
            v295[24] = 1;
          }

          else
          {
            v146 = [v225 isCancelledWithProgress:1.0];
            v295[24] = v146;
            if ((v146 & 1) == 0)
            {
              v162 = self->_loggingConnection;
              if (os_log_type_enabled(v162, OS_LOG_TYPE_ERROR))
              {
                *v299 = 138412290;
                *v300 = v9;
                _os_log_error_impl(&dword_22F0FC000, v162, OS_LOG_TYPE_ERROR, "[PGEnrichedMemoryFactory] No subtitle generated, returning nil enrichedMemory for %@", v299, 0xCu);
              }

              if (v264)
              {
                [(PGEnrichedMemory *)v15 setFailureReason:8];
                v16 = v15;
                goto LABEL_213;
              }

LABEL_212:
              v16 = 0;
LABEL_213:

              goto LABEL_214;
            }
          }

          v147 = MEMORY[0x277D86220];
          v148 = MEMORY[0x277D86220];
          if (os_log_type_enabled(v147, OS_LOG_TYPE_INFO))
          {
            *v299 = 67109378;
            *v300 = 437;
            *&v300[4] = 2080;
            *&v300[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/PGEnrichedMemoryFactory.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v299, 0x12u);
          }

LABEL_211:

          goto LABEL_212;
        }

        -[PGEnrichedMemory setTitleCategory:](v15, "setTitleCategory:", [v222 category]);
        v265 = mach_absolute_time();
        v127 = v273.numer;
        v128 = v273.denom;
        v129 = v228;
        v130 = v129;
        if (v122 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v129))
        {
          *v299 = 138412290;
          *v300 = v263;
          _os_signpost_emit_with_name_impl(&dword_22F0FC000, v130, OS_SIGNPOST_INTERVAL_END, v219, "TitleGeneration", "%@", v299, 0xCu);
        }

        v131 = v130;
        if (os_log_type_enabled(v131, OS_LOG_TYPE_INFO))
        {
          v132 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v263];
          *v299 = 136315650;
          *v300 = "TitleGeneration";
          *&v300[8] = 2112;
          *&v300[10] = v132;
          *&v300[18] = 2048;
          v301 = ((((v265 - v214) * v127) / v128) / 1000000.0);
          _os_log_impl(&dword_22F0FC000, v131, OS_LOG_TYPE_INFO, "[Performance] %s - %@: %f ms", v299, 0x20u);
        }

        if (v295[24])
        {
          v295[24] = 1;
          goto LABEL_196;
        }

        v139 = [v225 isCancelledWithProgress:0.5];
        v295[24] = v139;
        if (v139)
        {
LABEL_196:
          v140 = MEMORY[0x277D86220];
          v141 = MEMORY[0x277D86220];
          if (os_log_type_enabled(v140, OS_LOG_TYPE_INFO))
          {
            *v299 = 67109378;
            *v300 = 448;
            *&v300[4] = 2080;
            *&v300[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/PGEnrichedMemoryFactory.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v299, 0x12u);
          }

          goto LABEL_211;
        }

        v149 = self->_loggingConnection;
        v150 = os_signpost_id_generate(v149);
        v151 = v149;
        v152 = v151;
        v220 = v150;
        v153 = v150 - 1;
        if (v153 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v151))
        {
          *v299 = 0;
          _os_signpost_emit_with_name_impl(&dword_22F0FC000, v152, OS_SIGNPOST_INTERVAL_BEGIN, v220, "ChapterTitleGeneration", "", v299, 2u);
        }

        v272 = 0;
        mach_timebase_info(&v272);
        v215 = mach_absolute_time();
        v266 = [v268 chapterTitleGeneratorForTriggeredMemory:v9 curatedAssets:v230 extendedCuratedAssets:contexta titleGenerationContext:self->_titleGenerationContext inGraph:self->_graph];
        if (v266)
        {
          v154 = [v266 generateChapterTitles];
          [(PGEnrichedMemory *)v15 setChapterTitles:v154];
        }

        v155 = mach_absolute_time();
        v156 = v272.numer;
        v157 = v272.denom;
        v158 = v152;
        v159 = v158;
        if (v153 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v158))
        {
          *v299 = 138412290;
          *v300 = v263;
          _os_signpost_emit_with_name_impl(&dword_22F0FC000, v159, OS_SIGNPOST_INTERVAL_END, v220, "ChapterTitleGeneration", "%@", v299, 0xCu);
        }

        v221 = v159;
        if (os_log_type_enabled(v221, OS_LOG_TYPE_INFO))
        {
          v160 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v263];
          *v299 = 136315650;
          *v300 = "ChapterTitleGeneration";
          *&v300[8] = 2112;
          *&v300[10] = v160;
          *&v300[18] = 2048;
          v301 = ((((v155 - v215) * v156) / v157) / 1000000.0);
          _os_log_impl(&dword_22F0FC000, v221, OS_LOG_TYPE_INFO, "[Performance] %s - %@: %f ms", v299, 0x20u);
        }

        if (v295[24])
        {
          v295[24] = 1;
LABEL_238:
          v164 = MEMORY[0x277D86220];
          v165 = MEMORY[0x277D86220];
          if (!os_log_type_enabled(v164, OS_LOG_TYPE_INFO))
          {
LABEL_241:
            v16 = 0;
LABEL_242:

            goto LABEL_213;
          }

          *v299 = 67109378;
          *v300 = 457;
          *&v300[4] = 2080;
          *&v300[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/PGEnrichedMemoryFactory.m";
LABEL_240:
          _os_log_impl(&dword_22F0FC000, v164, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v299, 0x12u);
          goto LABEL_241;
        }

        v163 = [v225 isCancelledWithProgress:0.55];
        v295[24] = v163;
        if (v163)
        {
          goto LABEL_238;
        }

        v166 = objc_opt_class();
        v167 = [v10 localDate];
        -[PGEnrichedMemory setNotificationLevel:](v15, "setNotificationLevel:", [v166 notificationLevelForTriggeredMemory:v9 withLocalDate:v167 graph:self->_graph]);

        v168 = objc_opt_class();
        v169 = [(PGEnrichedMemory *)v15 notificationLevel];
        [(PGEnrichedMemory *)v15 electionScore];
        [v168 notificationScoreForNotificationLevel:v169 electionScore:?];
        [(PGEnrichedMemory *)v15 setScore:?];
        if (v295[24])
        {
          v295[24] = 1;
LABEL_246:
          v164 = MEMORY[0x277D86220];
          v171 = MEMORY[0x277D86220];
          if (!os_log_type_enabled(v164, OS_LOG_TYPE_INFO))
          {
            goto LABEL_241;
          }

          *v299 = 67109378;
          *v300 = 463;
          *&v300[4] = 2080;
          *&v300[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/PGEnrichedMemoryFactory.m";
          goto LABEL_240;
        }

        v170 = [v225 isCancelledWithProgress:0.6];
        v295[24] = v170;
        if (v170)
        {
          goto LABEL_246;
        }

        v172 = self->_loggingConnection;
        v173 = os_signpost_id_generate(v172);
        v174 = v172;
        v175 = v174;
        if (v173 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v174))
        {
          *v299 = 0;
          _os_signpost_emit_with_name_impl(&dword_22F0FC000, v175, OS_SIGNPOST_INTERVAL_BEGIN, v173, "MoodGenerator", "", v299, 2u);
        }

        v271 = 0;
        mach_timebase_info(&v271);
        v216 = mach_absolute_time();
        [v268 generateMoodForEnrichedMemory:v15 extendedCuratedAssets:contexta configuration:v10 inGraph:self->_graph];
        v212 = mach_absolute_time();
        v176 = v271;
        v177 = v175;
        v178 = v177;
        if (v173 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v177))
        {
          *v299 = 138412290;
          *v300 = v263;
          _os_signpost_emit_with_name_impl(&dword_22F0FC000, v178, OS_SIGNPOST_INTERVAL_END, v173, "MoodGenerator", "%@", v299, 0xCu);
        }

        v164 = v178;
        if (os_log_type_enabled(v164, OS_LOG_TYPE_INFO))
        {
          v179 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v263];
          *v299 = 136315650;
          *v300 = "MoodGenerator";
          *&v300[8] = 2112;
          *&v300[10] = v179;
          *&v300[18] = 2048;
          v301 = ((((v212 - v216) * v176.numer) / v176.denom) / 1000000.0);
          _os_log_impl(&dword_22F0FC000, v164, OS_LOG_TYPE_INFO, "[Performance] %s - %@: %f ms", v299, 0x20u);
        }

        if (v295[24])
        {
          v295[24] = 1;
          goto LABEL_259;
        }

        v180 = [v225 isCancelledWithProgress:0.7];
        v295[24] = v180;
        if (v180)
        {
LABEL_259:
          v181 = MEMORY[0x277D86220];
          v182 = MEMORY[0x277D86220];
          if (os_log_type_enabled(v181, OS_LOG_TYPE_INFO))
          {
            *v299 = 67109378;
            *v300 = 470;
            *&v300[4] = 2080;
            *&v300[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/PGEnrichedMemoryFactory.m";
            _os_log_impl(&dword_22F0FC000, v181, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v299, 0x12u);
          }

          goto LABEL_275;
        }

        v183 = self->_loggingConnection;
        v184 = os_signpost_id_generate(v183);
        v217 = v183;
        v209 = v184;
        v210 = v184 - 1;
        if (v184 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v217))
        {
          *v299 = 0;
          _os_signpost_emit_with_name_impl(&dword_22F0FC000, v217, OS_SIGNPOST_INTERVAL_BEGIN, v184, "MoodKeywordComputer", "", v299, 2u);
        }

        v270 = 0;
        mach_timebase_info(&v270);
        v208 = mach_absolute_time();
        moodKeywordComputer = self->_moodKeywordComputer;
        v211 = [(PGEnrichedMemory *)v15 suggestedMood];
        graph = self->_graph;
        v186 = [(PGMemoryCurationSession *)self->_memoryCurationSession locationHelper];
        v187 = [(PGMoodKeywordComputer *)moodKeywordComputer moodKeywordsForTriggeredMemory:v9 suggestedMood:v211 inGraph:graph locationHelper:v186];
        [(PGEnrichedMemory *)v15 setLegacyMoodKeywords:v187];

        v188 = mach_absolute_time();
        v189 = v270;
        v190 = v217;
        v191 = v190;
        if (v210 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v190))
        {
          *v299 = 138412290;
          *v300 = v263;
          _os_signpost_emit_with_name_impl(&dword_22F0FC000, v191, OS_SIGNPOST_INTERVAL_END, v209, "MoodKeywordComputer", "%@", v299, 0xCu);
        }

        v181 = v191;
        if (os_log_type_enabled(v181, OS_LOG_TYPE_INFO))
        {
          [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v263];
          v193 = v192 = (((v188 - v208) * v189.numer) / v189.denom) / 1000000.0;
          *v299 = 136315650;
          *v300 = "MoodKeywordComputer";
          *&v300[8] = 2112;
          *&v300[10] = v193;
          *&v300[18] = 2048;
          v301 = v192;
          _os_log_impl(&dword_22F0FC000, v181, OS_LOG_TYPE_INFO, "[Performance] %s - %@: %f ms", v299, 0x20u);
        }

        if (v295[24])
        {
          v295[24] = 1;
        }

        else
        {
          v194 = [v225 isCancelledWithProgress:0.8];
          v295[24] = v194;
          if ((v194 & 1) == 0)
          {
            v197 = mach_absolute_time();
            v199 = info.numer;
            v198 = info.denom;
            v200 = v14;
            v201 = v200;
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v200))
            {
              *v299 = 138412290;
              *v300 = v263;
              _os_signpost_emit_with_name_impl(&dword_22F0FC000, v201, OS_SIGNPOST_INTERVAL_END, v12, "MemoryElectionEnrichment", "%@", v299, 0xCu);
            }

            v202 = v201;
            if (os_log_type_enabled(v202, OS_LOG_TYPE_INFO))
            {
              [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v263];
              v204 = v203 = (((v197 - v262) * v199) / v198) / 1000000.0;
              *v299 = 136315650;
              *v300 = "MemoryElectionEnrichment";
              *&v300[8] = 2112;
              *&v300[10] = v204;
              *&v300[18] = 2048;
              v301 = v203;
              _os_log_impl(&dword_22F0FC000, v202, OS_LOG_TYPE_INFO, "[Performance] %s - %@: %f ms", v299, 0x20u);
            }

            if (v295[24])
            {
              v295[24] = 1;
            }

            else
            {
              v205 = [v225 isCancelledWithProgress:1.0];
              v295[24] = v205;
              if ((v205 & 1) == 0)
              {
                v16 = v15;
                goto LABEL_276;
              }
            }

            v206 = MEMORY[0x277D86220];
            v207 = MEMORY[0x277D86220];
            if (os_log_type_enabled(v206, OS_LOG_TYPE_INFO))
            {
              *v299 = 67109378;
              *v300 = 480;
              *&v300[4] = 2080;
              *&v300[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/PGEnrichedMemoryFactory.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v299, 0x12u);
            }

            goto LABEL_274;
          }
        }

        v195 = MEMORY[0x277D86220];
        v196 = MEMORY[0x277D86220];
        if (os_log_type_enabled(v195, OS_LOG_TYPE_INFO))
        {
          *v299 = 67109378;
          *v300 = 477;
          *&v300[4] = 2080;
          *&v300[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/PGEnrichedMemoryFactory.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v299, 0x12u);
        }

LABEL_274:

LABEL_275:
        v16 = 0;
LABEL_276:

        goto LABEL_242;
      }

      if (v295[24])
      {
        v295[24] = 1;
      }

      else
      {
        v142 = [v225 isCancelledWithProgress:1.0];
        v295[24] = v142;
        if ((v142 & 1) == 0)
        {
          v161 = self->_loggingConnection;
          if (os_log_type_enabled(v161, OS_LOG_TYPE_ERROR))
          {
            *v299 = 138412290;
            *v300 = v9;
            _os_log_error_impl(&dword_22F0FC000, v161, OS_LOG_TYPE_ERROR, "[PGEnrichedMemoryFactory] No title generated, returning nil enrichedMemory for %@", v299, 0xCu);
          }

          if (v264)
          {
            [(PGEnrichedMemory *)v15 setFailureReason:7];
            v16 = v15;
            goto LABEL_214;
          }

          goto LABEL_203;
        }
      }

      v143 = MEMORY[0x277D86220];
      v144 = MEMORY[0x277D86220];
      if (os_log_type_enabled(v143, OS_LOG_TYPE_INFO))
      {
        *v299 = 67109378;
        *v300 = 423;
        *&v300[4] = 2080;
        *&v300[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/PGEnrichedMemoryFactory.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v299, 0x12u);
      }

LABEL_203:
      v16 = 0;
LABEL_214:

      goto LABEL_215;
    }

    if (v295[24])
    {
      v295[24] = 1;
    }

    else
    {
      v135 = [v225 isCancelledWithProgress:1.0];
      v295[24] = v135;
      if ((v135 & 1) == 0)
      {
        v145 = self->_loggingConnection;
        if (os_log_type_enabled(v145, OS_LOG_TYPE_DEFAULT))
        {
          *v299 = 138412290;
          *v300 = v9;
          _os_log_impl(&dword_22F0FC000, v145, OS_LOG_TYPE_DEFAULT, "[PGEnrichedMemoryFactory] Nil titleGenerator, returning nil enrichedMemory for %@", v299, 0xCu);
        }

        if (v264)
        {
          [(PGEnrichedMemory *)v15 setFailureReason:6];
          v16 = v15;
          goto LABEL_215;
        }

LABEL_188:
        v16 = 0;
LABEL_215:

LABEL_216:
        goto LABEL_126;
      }
    }

    v136 = MEMORY[0x277D86220];
    v137 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v136, OS_LOG_TYPE_INFO))
    {
      *v299 = 67109378;
      *v300 = 409;
      *&v300[4] = 2080;
      *&v300[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/PGEnrichedMemoryFactory.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v299, 0x12u);
    }

    goto LABEL_188;
  }

  if (v295[24])
  {
    v295[24] = 1;
LABEL_23:
    v28 = 0;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *v299 = 67109378;
      *v300 = 245;
      *&v300[4] = 2080;
      *&v300[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/PGEnrichedMemoryFactory.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v299, 0x12u);
    }

    v16 = 0;
    goto LABEL_70;
  }

  v27 = [v267 isCancelledWithProgress:1.0];
  v295[24] = v27;
  if (v27)
  {
    goto LABEL_23;
  }

  v29 = self->_loggingConnection;
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v30 = objc_opt_class();
    v31 = NSStringFromClass(v30);
    *v299 = 138412290;
    *v300 = v31;
    _os_log_impl(&dword_22F0FC000, v29, OS_LOG_TYPE_DEFAULT, "[PGEnrichedMemoryFactory] nil feeder for triggered memory from enricher %@", v299, 0xCu);
  }

  if (v264)
  {
    [(PGEnrichedMemory *)v15 setFailureReason:2];
    v16 = v15;
    goto LABEL_69;
  }

LABEL_21:
  v16 = 0;
LABEL_69:
  v28 = v261;
LABEL_70:

LABEL_71:
  _Block_object_dispose(buf, 8);

LABEL_72:
  v50 = *MEMORY[0x277D85DE8];

  return v16;
}

uint64_t __102__PGEnrichedMemoryFactory_enrichedMemoryWithTriggeredMemory_withConfiguration_progressReporter_debug___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  v5 = *(*(a1 + 40) + 8);
  if (*(v5 + 24))
  {
    result = 1;
  }

  else
  {
    result = [*(a1 + 32) isCancelledWithProgress:a3 * 0.05 + 0.15];
    v5 = *(*(a1 + 40) + 8);
  }

  *(v5 + 24) = result;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a2 = 1;
  }

  return result;
}

uint64_t __102__PGEnrichedMemoryFactory_enrichedMemoryWithTriggeredMemory_withConfiguration_progressReporter_debug___block_invoke_262(uint64_t a1, _BYTE *a2, double a3)
{
  v5 = *(*(a1 + 40) + 8);
  if (*(v5 + 24))
  {
    result = 1;
  }

  else
  {
    result = [*(a1 + 32) isCancelledWithProgress:a3 * 0.05 + 0.2];
    v5 = *(*(a1 + 40) + 8);
  }

  *(v5 + 24) = result;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a2 = 1;
  }

  return result;
}

uint64_t __102__PGEnrichedMemoryFactory_enrichedMemoryWithTriggeredMemory_withConfiguration_progressReporter_debug___block_invoke_264(uint64_t a1, _BYTE *a2, double a3)
{
  v5 = *(*(a1 + 40) + 8);
  if (*(v5 + 24))
  {
    result = 1;
  }

  else
  {
    result = [*(a1 + 32) isCancelledWithProgress:a3 * 0.05 + 0.25];
    v5 = *(*(a1 + 40) + 8);
  }

  *(v5 + 24) = result;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a2 = 1;
  }

  return result;
}

uint64_t __102__PGEnrichedMemoryFactory_enrichedMemoryWithTriggeredMemory_withConfiguration_progressReporter_debug___block_invoke_266(uint64_t a1, _BYTE *a2, double a3)
{
  v5 = *(*(a1 + 40) + 8);
  if (*(v5 + 24))
  {
    result = 1;
  }

  else
  {
    result = [*(a1 + 32) isCancelledWithProgress:a3 * 0.05 + 0.3];
    v5 = *(*(a1 + 40) + 8);
  }

  *(v5 + 24) = result;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a2 = 1;
  }

  return result;
}

uint64_t __102__PGEnrichedMemoryFactory_enrichedMemoryWithTriggeredMemory_withConfiguration_progressReporter_debug___block_invoke_269(uint64_t a1, _BYTE *a2, double a3)
{
  v5 = *(*(a1 + 40) + 8);
  if (*(v5 + 24))
  {
    result = 1;
  }

  else
  {
    result = [*(a1 + 32) isCancelledWithProgress:a3 * 0.1 + 0.4];
    v5 = *(*(a1 + 40) + 8);
  }

  *(v5 + 24) = result;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a2 = 1;
  }

  return result;
}

- (id)debugEnrichedMemoryWithTriggeredMemory:(id)a3 withConfiguration:(id)a4 progressReporter:(id)a5
{
  v8 = a3;
  v9 = [(PGEnrichedMemoryFactory *)self enrichedMemoryWithTriggeredMemory:v8 withConfiguration:a4 progressReporter:a5 debug:1];
  if (!v9)
  {
    loggingConnection = self->_loggingConnection;
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "[PGEnrichedMemoryFactory] A non nil enrichedMemory with a failure reason should be specified when enriching triggered memory if debug = YES", v12, 2u);
    }

    v9 = [[PGEnrichedMemory alloc] initWithTriggeredMemory:v8];
    [(PGEnrichedMemory *)v9 setFailureReason:1];
  }

  return v9;
}

- (id)_memoryEnricherFromTriggeredMemory:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [[PGMemoryGenerator alloc] initWithMemoryCurationSession:self->_memoryCurationSession loggingConnection:self->_loggingConnection];
  v6 = [v4 memoryCategory];
  if (v6 > 200)
  {
    if ((v6 - 201) < 0x15 || (v6 - 301) < 2 || v6 == 401)
    {
LABEL_5:
      loggingConnection = self->_loggingConnection;
      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
      {
        v9 = loggingConnection;
        v13 = 134217984;
        v14 = [v4 memoryCategory];
        _os_log_error_impl(&dword_22F0FC000, v9, OS_LOG_TYPE_ERROR, "+[PGEnrichedMemoryFactory memoryGeneratorClassFromTriggeredMemory:] is not compatible with legacy category: %lu", &v13, 0xCu);
      }

      v5 = 0;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        v7 = PGSingleMomentMemoryGenerator;
        goto LABEL_38;
      case 2:
      case 5:
      case 11:
        goto LABEL_5;
      case 3:
        v7 = PGPersonMemoryGenerator;
        goto LABEL_38;
      case 4:
        v7 = PGEarlyMomentsWithPeopleMemoryGenerator;
        goto LABEL_38;
      case 6:
        v7 = PGSocialGroupMemoryGenerator;
        goto LABEL_38;
      case 7:
        v7 = PGLastMonthAtHomeMemoryGenerator;
        goto LABEL_38;
      case 8:
        v7 = PGYearInReviewMemoryGenerator;
        goto LABEL_38;
      case 9:
        v7 = PGFoodieMemoryGenerator;
        goto LABEL_38;
      case 10:
        v7 = PGMyPetMemoryGenerator;
        goto LABEL_38;
      case 12:
        v7 = PGPlaceLocationMemoryGenerator;
        goto LABEL_38;
      case 13:
        v7 = PGPlaceRegionMemoryGenerator;
        goto LABEL_38;
      case 14:
        v7 = PGPlaceAreaMemoryGenerator;
        goto LABEL_38;
      case 15:
      case 22:
        break;
      case 16:
        v7 = PGMeaningfulEventMemoryGenerator;
        goto LABEL_38;
      case 17:
        v7 = PGMeaningAggregationMemoryGenerator;
        goto LABEL_38;
      case 18:
        v7 = PGRecurrentTripMemoryGenerator;
        goto LABEL_38;
      case 19:
        v7 = PGTripMemoryGenerator;
        goto LABEL_38;
      case 20:
        v7 = PGPastSupersetMemoryGenerator;
        goto LABEL_38;
      case 21:
        v7 = PGSeasonMemoryGenerator;
        goto LABEL_38;
      case 23:
        v7 = PGDayInHistoryAggregationMemoryGenerator;
        goto LABEL_38;
      case 24:
        v7 = PGRecentHighlightsMemoryGenerator;
        goto LABEL_38;
      case 25:
        v7 = PGChildActivityMemoryGenerator;
        goto LABEL_38;
      case 26:
        v7 = PGExcitingMomentsMemoryGenerator;
        goto LABEL_38;
      case 27:
        v7 = PGTrendsMemoryGenerator;
        goto LABEL_38;
      case 28:
        v7 = PGMyPetOutdoorMemoryGenerator;
        goto LABEL_38;
      case 29:
        v7 = PGChildAndPersonMemoryGenerator;
        goto LABEL_38;
      case 30:
        v7 = PGChildOutdoorMemoryGenerator;
        goto LABEL_38;
      case 31:
        v7 = PGOngoingTripMemoryGenerator;
LABEL_38:
        v10 = [[v7 alloc] initWithMemoryCurationSession:self->_memoryCurationSession loggingConnection:self->_loggingConnection];

        v5 = v10;
        break;
      default:
        if ((v6 - 101) < 2)
        {
          goto LABEL_5;
        }

        break;
    }
  }

  v11 = *MEMORY[0x277D85DE8];

  return v5;
}

- (PGEnrichedMemoryFactory)initWithMemoryCurationSession:(id)a3 graph:(id)a4 serviceManager:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v20.receiver = self;
  v20.super_class = PGEnrichedMemoryFactory;
  v12 = [(PGEnrichedMemoryFactory *)&v20 init];
  if (v12)
  {
    v13 = os_log_create("com.apple.PhotosGraph", "EnrichedMemoryFactory");
    loggingConnection = v12->_loggingConnection;
    v12->_loggingConnection = v13;

    objc_storeStrong(&v12->_memoryCurationSession, a3);
    v15 = objc_alloc_init(PGMoodKeywordComputer);
    moodKeywordComputer = v12->_moodKeywordComputer;
    v12->_moodKeywordComputer = v15;

    v17 = [[PGTitleGenerationContext alloc] initWithGraph:v10 serviceManager:v11];
    titleGenerationContext = v12->_titleGenerationContext;
    v12->_titleGenerationContext = v17;

    objc_storeStrong(&v12->_graph, a4);
  }

  return v12;
}

@end