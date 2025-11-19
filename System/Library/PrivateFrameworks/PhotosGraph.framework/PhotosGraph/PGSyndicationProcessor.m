@interface PGSyndicationProcessor
- (BOOL)processSavedSyndicatedAssetsWithError:(id *)a3 progressReporter:(id)a4;
- (BOOL)processSyndicatedAssetCurationWithError:(id *)a3 progressReporter:(id)a4;
- (BOOL)processSyndicatedAssetGuestInferenceWithError:(id *)a3 progressReporter:(id)a4 shareBackSuggester:(id)a5;
- (BOOL)processSyndicatedAssetRevGeoCodingWithError:(id *)a3 progressReporter:(id)a4;
- (PGSyndicationProcessor)initWithWorkingContext:(id)a3;
- (PGSyndicationProcessor)initWithWorkingContext:(id)a3 syndicationLibrary:(id)a4;
- (id)_bestAssetUUIDInAssetCluster:(id)a3;
- (id)duplicateAssetUUIDsForSuggesterResult:(id)a3 assetsInferredAsGuestAsset:(id)a4 syndicationLibrary:(id)a5 error:(id *)a6 progressBlock:(id)a7;
- (id)guestAssetSenderIdentifiersByMomentUUIDForMomentUUIDs:(id)a3 inPhotoLibrary:(id)a4;
- (id)similarStacker;
- (id)syndicationPhotoLibraryWithError:(id *)a3;
- (void)_persistCurationScores:(id)a3 inPhotoLibrary:(id)a4;
@end

@implementation PGSyndicationProcessor

- (BOOL)processSyndicatedAssetRevGeoCodingWithError:(id *)a3 progressReporter:(id)a4
{
  v44 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v7 = [v6 isCancelledWithProgress:0.0];
  *(v32 + 24) = v7;
  if (!v7)
  {
    v9 = [(PGSyndicationProcessor *)self syndicationPhotoLibraryWithError:a3];
    if (v9)
    {
      *buf = 0;
      *&v40 = buf;
      *(&v40 + 1) = 0x3032000000;
      v41 = __Block_byref_object_copy__16426;
      v42 = __Block_byref_object_dispose__16427;
      v43 = objc_alloc_init(MEMORY[0x277CBEA60]);
      workingContext = self->_workingContext;
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __87__PGSyndicationProcessor_processSyndicatedAssetRevGeoCodingWithError_progressReporter___block_invoke;
      v30[3] = &unk_27888A5C0;
      v30[4] = buf;
      [(PGManagerWorkingContext *)workingContext performSynchronousConcurrentGraphReadUsingBlock:v30];
      v11 = [(PGManagerWorkingContext *)self->_workingContext loggingConnection];
      v12 = [PGRevGeocodeProcessor alloc];
      v13 = *(v40 + 40);
      v14 = [(PGManagerWorkingContext *)self->_workingContext locationCache];
      v15 = [(PGRevGeocodeProcessor *)v12 initWithPhotoLibrary:v9 homeLocations:v13 loggingConnection:v11 locationCache:v14];

      v16 = [PGRevGeocodeProcessor momentsRequiringRevGeocodingWithUUIDs:0 inPhotoLibrary:v9 defaultToAllAssets:1 loggingConnection:v11];
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __87__PGSyndicationProcessor_processSyndicatedAssetRevGeoCodingWithError_progressReporter___block_invoke_2;
      v27[3] = &unk_278889448;
      v29 = &v31;
      v17 = v6;
      v28 = v17;
      v18 = [(PGRevGeocodeProcessor *)v15 revGeocodeMoments:v16 progressBlock:v27];
      if (*(v32 + 24) == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *v35 = 67109378;
          v36 = 764;
          v37 = 2080;
          v38 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Syndication/PGSyndicationProcessor.m";
          v19 = MEMORY[0x277D86220];
LABEL_22:
          _os_log_impl(&dword_22F0FC000, v19, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v35, 0x12u);
        }
      }

      else
      {
        v8 = v18;
        v20 = [v17 throughputReportBlock];
        v21 = v20 == 0;

        if (!v21)
        {
          v22 = [v17 throughputReportBlock];
          (v22)[2](v22, [v16 count], @"revGeo");
        }

        if (v32[3])
        {
          *(v32 + 24) = 1;
        }

        else
        {
          v24 = [v17 isCancelledWithProgress:1.0];
          *(v32 + 24) = v24;
          if ((v24 & 1) == 0)
          {
LABEL_24:

            _Block_object_dispose(buf, 8);
            goto LABEL_25;
          }
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *v35 = 67109378;
          v36 = 770;
          v37 = 2080;
          v38 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Syndication/PGSyndicationProcessor.m";
          v19 = MEMORY[0x277D86220];
          goto LABEL_22;
        }
      }

      v8 = 0;
      goto LABEL_24;
    }

    if (v32[3])
    {
      *(v32 + 24) = 1;
    }

    else
    {
      v23 = [v6 isCancelledWithProgress:1.0];
      *(v32 + 24) = v23;
      if ((v23 & 1) == 0)
      {
LABEL_18:
        v8 = 0;
LABEL_25:

        goto LABEL_26;
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *&buf[4] = 748;
      LOWORD(v40) = 2080;
      *(&v40 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Syndication/PGSyndicationProcessor.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    goto LABEL_18;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *&buf[4] = 744;
    LOWORD(v40) = 2080;
    *(&v40 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Syndication/PGSyndicationProcessor.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v8 = 0;
LABEL_26:
  _Block_object_dispose(&v31, 8);

  v25 = *MEMORY[0x277D85DE8];
  return v8;
}

void __87__PGSyndicationProcessor_processSyndicatedAssetRevGeoCodingWithError_progressReporter___block_invoke(uint64_t a1, void *a2)
{
  v9 = [a2 graph];
  v3 = [v9 meNodeCollection];
  v4 = [v3 homeNodes];
  v5 = [v4 addressNodes];
  v6 = [v5 locations];
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

uint64_t __87__PGSyndicationProcessor_processSyndicatedAssetRevGeoCodingWithError_progressReporter___block_invoke_2(uint64_t a1, _BYTE *a2)
{
  v4 = *(*(a1 + 40) + 8);
  if (*(v4 + 24))
  {
    result = 1;
  }

  else
  {
    result = [*(a1 + 32) isCancelledWithProgress:?];
    v4 = *(*(a1 + 40) + 8);
  }

  *(v4 + 24) = result;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a2 = 1;
  }

  return result;
}

- (id)similarStacker
{
  similarStacker = self->_similarStacker;
  if (!similarStacker)
  {
    v4 = [objc_alloc(MEMORY[0x277D277B8]) initWithSimilarityModelClass:objc_opt_class()];
    v5 = self->_similarStacker;
    self->_similarStacker = v4;

    similarStacker = self->_similarStacker;
  }

  return similarStacker;
}

- (id)_bestAssetUUIDInAssetCluster:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v23;
    v8 = -1.79769313e308;
    v9 = -1.79769313e308;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        [v11 curationScore];
        if (v12 >= v9)
        {
          v13 = v12;
          [v11 overallAestheticScore];
          v15 = v14;
          if (v8 <= v14)
          {
            v16 = [v11 uuid];
            v17 = v16;
            if (!v6 || (v13 == v9 ? (v18 = v8 == v15) : (v18 = 0), !v18 || [v16 compare:v6] == -1))
            {
              v19 = v17;

              v6 = v19;
              v9 = v13;
              v8 = v15;
            }
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)duplicateAssetUUIDsForSuggesterResult:(id)a3 assetsInferredAsGuestAsset:(id)a4 syndicationLibrary:(id)a5 error:(id *)a6 progressBlock:(id)a7
{
  v159 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v112 = a4;
  v111 = a5;
  v118 = a7;
  v121 = self;
  oslog = [(PGManagerWorkingContext *)self->_workingContext loggingConnection];
  v122 = [MEMORY[0x277CBEB58] set];
  v12 = [MEMORY[0x277CBEAA8] distantFuture];
  v13 = [MEMORY[0x277CBEAA8] distantPast];
  v14 = [MEMORY[0x277CBEB58] set];
  v142 = 0u;
  v143 = 0u;
  v144 = 0u;
  v145 = 0u;
  v114 = v11;
  v15 = [v11 suggesterInputs];
  v16 = [v15 countByEnumeratingWithState:&v142 objects:v158 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v143;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v143 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v142 + 1) + 8 * i);
        v21 = [v20 asset];
        if (v21)
        {
          [v14 addObject:v21];
          v22 = [v20 creationDate];
          v23 = [v12 earlierDate:v22];

          v24 = [v13 laterDate:v22];

          v13 = v24;
          v12 = v23;
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v142 objects:v158 count:16];
    }

    while (v17);
  }

  if ([v14 count])
  {
    v25 = [v12 dateByAddingTimeInterval:-1.0];

    v26 = [v13 dateByAddingTimeInterval:1.0];

    v27 = [MEMORY[0x277CCAC30] predicateWithFormat:@"creationDate >= %@ && creationDate <= %@", v25, v26];
    v108 = v26;
    v109 = v25;
    v110 = [MEMORY[0x277CCAC30] predicateWithFormat:@"dateCreated >= %@ && dateCreated <= %@", v25, v26];
    v28 = [(PGManagerWorkingContext *)v121->_workingContext photoLibrary];
    v29 = [v28 librarySpecificFetchOptions];

    [v29 setIncludeGuestAssets:0];
    v31 = *MEMORY[0x277CD9B10];
    v156[0] = *MEMORY[0x277CD9B18];
    v30 = v156[0];
    v156[1] = v31;
    v157 = *MEMORY[0x277CD9AD0];
    v32 = v157;
    v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v156 count:3];
    [v29 setFetchPropertySets:v33];

    [v29 setPredicate:v27];
    v106 = v29;
    v34 = [MEMORY[0x277CD97A8] fetchAssetsWithOptions:v29];
    v107 = v27;
    v35 = [v112 filteredSetUsingPredicate:v27];
    v36 = [MEMORY[0x277D3B248] predicateForIncludeMask:objc_msgSend(MEMORY[0x277D3B248] useIndex:{"maskForGuestAsset"), 1}];
    v37 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %lu OR %K == %lu", @"mediaAnalysisAttributes.syndicationProcessingVersion", *MEMORY[0x277CD9B40], @"mediaAnalysisAttributes.syndicationProcessingVersion", *MEMORY[0x277CD9B48]];
    v38 = [v111 librarySpecificFetchOptions];
    [v38 setIncludeGuestAssets:1];
    v155[0] = v30;
    v155[1] = v31;
    v155[2] = v32;
    v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v155 count:3];
    [v38 setFetchPropertySets:v39];

    v40 = MEMORY[0x277CCA920];
    v154[0] = v110;
    v102 = v37;
    v103 = v36;
    v154[1] = v36;
    v154[2] = v37;
    v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v154 count:3];
    v42 = [v40 andPredicateWithSubpredicates:v41];
    [v38 setInternalPredicate:v42];

    v101 = v38;
    v43 = [MEMORY[0x277CD97A8] fetchAssetsWithOptions:v38];
    v44 = MEMORY[0x277CBEB18];
    v45 = [v14 allObjects];
    v46 = [v44 arrayWithArray:v45];

    v105 = v34;
    v47 = [v34 fetchedObjects];
    [v46 addObjectsFromArray:v47];

    v104 = v35;
    v48 = [v35 allObjects];
    [v46 addObjectsFromArray:v48];

    v100 = v43;
    v49 = [v43 fetchedObjects];
    [v46 addObjectsFromArray:v49];

    [(CLSCurationSession *)v121->_curationSession prepareAssets:v46];
    v50 = [objc_alloc(MEMORY[0x277D3AC30]) initWithDistanceBlock:&__block_literal_global_368];
    [v50 setMaximumDistance:1.0];
    [v50 setMinimumNumberOfObjects:2];
    v98 = v50;
    v99 = v46;
    v51 = [v50 performWithDataset:v46 progressBlock:v118];
    v97 = v51;
    if ([v51 count])
    {
      v117 = [(PGSyndicationProcessor *)v121 similarStacker];
      v138 = 0u;
      v139 = 0u;
      v140 = 0u;
      v141 = 0u;
      obj = v51;
      v116 = [obj countByEnumeratingWithState:&v138 objects:v153 count:16];
      if (v116)
      {
        v115 = *v139;
        while (2)
        {
          v52 = 0;
          do
          {
            if (*v139 != v115)
            {
              objc_enumerationMutation(obj);
            }

            v119 = v52;
            v53 = *(*(&v138 + 1) + 8 * v52);
            context = objc_autoreleasePoolPush();
            v134 = 0u;
            v135 = 0u;
            v136 = 0u;
            v137 = 0u;
            v54 = [v53 objects];
            v55 = [v54 countByEnumeratingWithState:&v134 objects:v152 count:16];
            if (v55)
            {
              v56 = v55;
              v57 = *v135;
LABEL_19:
              v58 = 0;
              while (1)
              {
                if (*v135 != v57)
                {
                  objc_enumerationMutation(v54);
                }

                v59 = *(*(&v134 + 1) + 8 * v58);
                v60 = [v59 sceneAnalysisProperties];
                v61 = [v60 sceneAnalysisVersion];

                v62 = [MEMORY[0x277D3ACE8] currentSceneVersion];
                v63 = [v62 intValue];

                if (v63 > v61)
                {
                  break;
                }

                if (v56 == ++v58)
                {
                  v56 = [v54 countByEnumeratingWithState:&v134 objects:v152 count:16];
                  if (v56)
                  {
                    goto LABEL_19;
                  }

                  goto LABEL_25;
                }
              }

              v64 = MEMORY[0x277CCA9B8];
              v65 = MEMORY[0x277CCACA8];
              v66 = [v59 uuid];
              v67 = [v65 stringWithFormat:@"Asset %@ has no scenes processed: could not dedupe guest asset for %@.", v66, v114];
              v68 = [v64 errorWithDescription:v67];

              if (!v68)
              {
                goto LABEL_27;
              }

              objc_autoreleasePoolPop(context);

              v92 = v108;
              if (a6)
              {
                v93 = v68;
                *a6 = v68;
              }

              v91 = 0;
              v89 = v122;
              v12 = v109;
              goto LABEL_64;
            }

LABEL_25:

LABEL_27:
            v69 = [v53 objects];
            v70 = [v117 stackSimilarItems:v69 withSimilarity:2 timestampSupport:0 progressBlock:v118];

            v132 = 0u;
            v133 = 0u;
            v130 = 0u;
            v131 = 0u;
            v124 = v70;
            v71 = [v124 countByEnumeratingWithState:&v130 objects:v151 count:16];
            if (v71)
            {
              v72 = v71;
              v73 = *v131;
              do
              {
                v74 = 0;
                v123 = v72;
                do
                {
                  if (*v131 != v73)
                  {
                    objc_enumerationMutation(v124);
                  }

                  v75 = *(*(&v130 + 1) + 8 * v74);
                  v76 = [v75 count];
                  if (v76 >= 2)
                  {
                    v77 = v76;
                    v78 = [MEMORY[0x277CBEB18] array];
                    v126 = 0u;
                    v127 = 0u;
                    v128 = 0u;
                    v129 = 0u;
                    v79 = v75;
                    v80 = [v79 countByEnumeratingWithState:&v126 objects:v150 count:16];
                    if (v80)
                    {
                      v81 = v80;
                      v82 = *v127;
                      do
                      {
                        for (j = 0; j != v81; ++j)
                        {
                          if (*v127 != v82)
                          {
                            objc_enumerationMutation(v79);
                          }

                          v84 = *(*(&v126 + 1) + 8 * j);
                          if ([v14 containsObject:v84])
                          {
                            v85 = [v84 uuid];
                            [v78 addObject:v85];
                          }
                        }

                        v81 = [v79 countByEnumeratingWithState:&v126 objects:v150 count:16];
                      }

                      while (v81);
                    }

                    v86 = [v78 count];
                    if (v86 == v77)
                    {
                      v87 = [(PGSyndicationProcessor *)v121 _bestAssetUUIDInAssetCluster:v79];
                      [v78 removeObject:v87];
                      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
                      {
                        *buf = 138412546;
                        v147 = v78;
                        v148 = 2112;
                        v149 = v87;
                        _os_log_debug_impl(&dword_22F0FC000, oslog, OS_LOG_TYPE_DEBUG, "PGSyndicationProcessor: Cluster only contains input items %@, selected best item: %@", buf, 0x16u);
                      }
                    }

                    v72 = v123;
                    if (v86)
                    {
                      [v122 addObjectsFromArray:v78];
                      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
                      {
                        *buf = 138412290;
                        v147 = v78;
                        _os_log_debug_impl(&dword_22F0FC000, oslog, OS_LOG_TYPE_DEBUG, "PGSyndicationProcessor: Found cluster of duplicates %@", buf, 0xCu);
                      }
                    }
                  }

                  ++v74;
                }

                while (v74 != v72);
                v72 = [v124 countByEnumeratingWithState:&v130 objects:v151 count:16];
              }

              while (v72);
            }

            objc_autoreleasePoolPop(context);
            v52 = v119 + 1;
          }

          while (v119 + 1 != v116);
          v116 = [obj countByEnumeratingWithState:&v138 objects:v153 count:16];
          if (v116)
          {
            continue;
          }

          break;
        }
      }
    }

    v88 = oslog;
    v89 = v122;
    if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
    {
      v90 = [v122 count];
      *buf = 134218242;
      v147 = v90;
      v148 = 2112;
      v149 = v114;
      _os_log_impl(&dword_22F0FC000, v88, OS_LOG_TYPE_DEFAULT, "PGSyndicationProcessor: Found %lu duplicate(s) for : %@", buf, 0x16u);
    }

    v91 = v122;
    v92 = v108;
    v12 = v109;
LABEL_64:

    v13 = v92;
  }

  else
  {
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v147 = v114;
      _os_log_impl(&dword_22F0FC000, oslog, OS_LOG_TYPE_DEFAULT, "PGSyndicationProcessor: No duplicates to find since there are no assets for: %@", buf, 0xCu);
    }

    v89 = v122;
    v91 = v122;
  }

  v94 = *MEMORY[0x277D85DE8];

  return v91;
}

void __130__PGSyndicationProcessor_duplicateAssetUUIDsForSuggesterResult_assetsInferredAsGuestAsset_syndicationLibrary_error_progressBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 creationDate];
  v6 = [v4 creationDate];

  [v5 timeIntervalSinceDate:v6];
}

- (id)guestAssetSenderIdentifiersByMomentUUIDForMomentUUIDs:(id)a3 inPhotoLibrary:(id)a4
{
  v54[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  oslog = [(PGManagerWorkingContext *)self->_workingContext loggingConnection];
  v8 = [v7 librarySpecificFetchOptions];
  v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"moment.uuid", v6];
  v10 = [MEMORY[0x277D3B248] predicateForIncludeMask:objc_msgSend(MEMORY[0x277D3B248] useIndex:{"maskForGuestAsset"), 1}];
  v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %lu OR %K == %lu", @"mediaAnalysisAttributes.syndicationProcessingVersion", *MEMORY[0x277CD9B40], @"mediaAnalysisAttributes.syndicationProcessingVersion", *MEMORY[0x277CD9B48]];
  [v8 setIncludeGuestAssets:1];
  v12 = *MEMORY[0x277CD9AD0];
  v54[0] = *MEMORY[0x277CD9A80];
  v54[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:2];
  [v8 setFetchPropertySets:v13];

  v14 = MEMORY[0x277CCA920];
  v53[0] = v9;
  v53[1] = v10;
  v53[2] = v11;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:3];
  v16 = [v14 andPredicateWithSubpredicates:v15];
  [v8 setInternalPredicate:v16];

  v17 = [MEMORY[0x277CD97A8] fetchAssetsWithOptions:v8];
  if ([v17 count])
  {
    v36 = v11;
    v37 = v10;
    v38 = v9;
    v39 = v8;
    v40 = v7;
    v41 = v6;
    v45 = [MEMORY[0x277CD97A8] senderIdentifierByAssetUUIDForAssets:v17];
    v44 = [MEMORY[0x277CD98F8] fetchMomentUUIDByAssetUUIDForAssets:v17 options:0];
    v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v35 = v17;
    obj = v17;
    v19 = [obj countByEnumeratingWithState:&v46 objects:v52 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v47;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v47 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v46 + 1) + 8 * i);
          v24 = objc_autoreleasePoolPush();
          v25 = [v23 mediaAnalysisProperties];
          v26 = [v25 syndicationProcessingValue] & 0x6EF0;

          if (v26)
          {
            v27 = [v23 uuid];
            v28 = [v44 objectForKeyedSubscript:v27];
            v29 = [v45 objectForKeyedSubscript:v27];
            if (!v29)
            {
              v29 = &stru_2843F5C58;
              if (os_log_type_enabled(oslog, OS_LOG_TYPE_FAULT))
              {
                *buf = 138412290;
                v51 = v27;
                _os_log_fault_impl(&dword_22F0FC000, oslog, OS_LOG_TYPE_FAULT, "No sender identifier for %@, see: rdar://74551611 ([Hubble] Some syndicated assets have the same syndication identifier but different uuids)", buf, 0xCu);
              }
            }

            v30 = [v18 objectForKeyedSubscript:v28];
            v31 = v30;
            if (v30)
            {
              [v30 addObject:v29];
            }

            else
            {
              v32 = [MEMORY[0x277CBEB58] setWithObject:v29];
              [v18 setObject:v32 forKeyedSubscript:v28];
            }
          }

          objc_autoreleasePoolPop(v24);
        }

        v20 = [obj countByEnumeratingWithState:&v46 objects:v52 count:16];
      }

      while (v20);
    }

    v7 = v40;
    v6 = v41;
    v9 = v38;
    v8 = v39;
    v11 = v36;
    v10 = v37;
    v17 = v35;
  }

  else
  {
    v18 = MEMORY[0x277CBEC10];
  }

  v33 = *MEMORY[0x277D85DE8];

  return v18;
}

- (BOOL)processSyndicatedAssetGuestInferenceWithError:(id *)a3 progressReporter:(id)a4 shareBackSuggester:(id)a5
{
  v123[7] = *MEMORY[0x277D85DE8];
  v8 = a4;
  v79 = a5;
  v114 = 0;
  v115 = &v114;
  v116 = 0x2020000000;
  v117 = 0;
  v81 = v8;
  v9 = [v81 isCancelledWithProgress:0.0];
  *(v115 + 24) = v9;
  if (!v9)
  {
    oslog = [(PGManagerWorkingContext *)self->_workingContext loggingConnection];
    v11 = [(PGSyndicationProcessor *)self syndicationPhotoLibraryWithError:a3];
    v76 = v11;
    if (v11)
    {
      v73 = a3;
      v74 = self;
      v78 = [v11 librarySpecificFetchOptions];
      v12 = *MEMORY[0x277CD9A70];
      v123[0] = *MEMORY[0x277CD9A78];
      v123[1] = v12;
      v13 = *MEMORY[0x277CD9A80];
      v123[2] = *MEMORY[0x277CD9AD0];
      v123[3] = v13;
      v14 = *MEMORY[0x277CD9B10];
      v123[4] = *MEMORY[0x277CD9B18];
      v123[5] = v14;
      v123[6] = *MEMORY[0x277CD9AC0];
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v123 count:7];
      [v78 setFetchPropertySets:v15];

      v16 = [MEMORY[0x277D3C7C0] internalPredicateToFilterSyndicatedAssetsEligibleForGuestInferenceProcessing];
      [v78 setInternalPredicate:v16];

      [v78 setIncludeGuestAssets:1];
      v75 = [MEMORY[0x277CD97A8] fetchAssetsWithOptions:v78];
      v17 = [v75 count];
      v18 = os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT);
      if (!v17)
      {
        if (v18)
        {
          *buf = 0;
          _os_log_impl(&dword_22F0FC000, oslog, OS_LOG_TYPE_DEFAULT, "PGSyndicationProcessor: No asset eligible for guest processing", buf, 2u);
        }

        if (v115[3])
        {
          *(v115 + 24) = 1;
        }

        else
        {
          v66 = [v81 isCancelledWithProgress:1.0];
          *(v115 + 24) = v66;
          if ((v66 & 1) == 0)
          {
            v10 = 1;
LABEL_71:

            goto LABEL_72;
          }
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *&buf[4] = 315;
          *&buf[8] = 2080;
          *&buf[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Syndication/PGSyndicationProcessor.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        v10 = 0;
        goto LABEL_71;
      }

      if (v18)
      {
        *buf = 134217984;
        *&buf[4] = v17;
        _os_log_impl(&dword_22F0FC000, oslog, OS_LOG_TYPE_DEFAULT, "PGSyndicationProcessor: %tu asset(s) eligible for guest processing", buf, 0xCu);
      }

      v19 = oslog;
      v20 = os_signpost_id_generate(v19);
      v21 = v19;
      v22 = v21;
      spid = v20;
      v72 = v20 - 1;
      log = v21;
      if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v23 = os_signpost_enabled(v21);
        v22 = log;
        if (v23)
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_22F0FC000, log, OS_SIGNPOST_INTERVAL_BEGIN, v20, "PGSyndicationProcessorAssetGuestInference", "", buf, 2u);
          v22 = log;
        }
      }

      info = 0;
      mach_timebase_info(&info);
      v70 = mach_absolute_time();
      v85 = [MEMORY[0x277CD97A8] senderIdentifierByAssetUUIDForAssets:v75];
      v86 = [MEMORY[0x277CD98F8] fetchMomentUUIDByAssetUUIDForAssets:v75 options:0];
      v24 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v111 = 0u;
      v112 = 0u;
      v109 = 0u;
      v110 = 0u;
      obj = v75;
      v25 = [obj countByEnumeratingWithState:&v109 objects:v122 count:16];
      if (v25)
      {
        v26 = *v110;
        do
        {
          for (i = 0; i != v25; ++i)
          {
            if (*v110 != v26)
            {
              objc_enumerationMutation(obj);
            }

            v28 = *(*(&v109 + 1) + 8 * i);
            v29 = [v28 uuid];
            v30 = [v86 objectForKeyedSubscript:v29];
            v31 = [v85 objectForKeyedSubscript:v29];
            if (!v31)
            {
              v31 = &stru_2843F5C58;
              if (os_log_type_enabled(log, OS_LOG_TYPE_FAULT))
              {
                *buf = 138412290;
                *&buf[4] = v29;
                _os_log_fault_impl(&dword_22F0FC000, log, OS_LOG_TYPE_FAULT, "No sender identifier for %@, see: rdar://74551611 ([Hubble] Some syndicated assets have the same syndication identifier but different uuids)", buf, 0xCu);
              }
            }

            v32 = [v24 objectForKeyedSubscript:v30];
            if (!v32)
            {
              v32 = objc_alloc_init(MEMORY[0x277CBEB38]);
              [v24 setObject:v32 forKeyedSubscript:v30];
            }

            v33 = [v32 objectForKeyedSubscript:v31];
            v34 = v33;
            if (v33)
            {
              [v33 addObject:v28];
            }

            else
            {
              v35 = [MEMORY[0x277CBEB18] arrayWithObject:v28];
              [v32 setObject:v35 forKeyedSubscript:v31];
            }
          }

          v25 = [obj countByEnumeratingWithState:&v109 objects:v122 count:16];
        }

        while (v25);
      }

      v36 = [MEMORY[0x277CBEB58] set];
      v37 = [MEMORY[0x277CBEB38] dictionary];
      v38 = [v86 allValues];
      v39 = [(PGSyndicationProcessor *)v74 guestAssetSenderIdentifiersByMomentUUIDForMomentUUIDs:v38 inPhotoLibrary:v76];

      v40 = [(PGManagerWorkingContext *)v74->_workingContext serviceManager];
      workingContext = v74->_workingContext;
      v97[0] = MEMORY[0x277D85DD0];
      v97[1] = 3221225472;
      v97[2] = __108__PGSyndicationProcessor_processSyndicatedAssetGuestInferenceWithError_progressReporter_shareBackSuggester___block_invoke;
      v97[3] = &unk_278880AC8;
      v98 = v79;
      v42 = log;
      v99 = v42;
      v43 = v76;
      v100 = v43;
      v101 = v74;
      loga = v40;
      v102 = loga;
      v44 = v24;
      v103 = v44;
      v45 = v37;
      v104 = v45;
      v46 = v39;
      v105 = v46;
      v47 = v36;
      v106 = v47;
      v108 = &v114;
      v48 = v81;
      v107 = v48;
      [(PGManagerWorkingContext *)workingContext performSynchronousConcurrentGraphReadUsingBlock:v97];
      v80 = v46;
      if (*(v115 + 24) == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *&buf[4] = 446;
          *&buf[8] = 2080;
          *&buf[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Syndication/PGSyndicationProcessor.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        v10 = 0;
        goto LABEL_70;
      }

      v49 = v42;
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        v50 = [v47 count];
        *buf = 134217984;
        *&buf[4] = v50;
        _os_log_impl(&dword_22F0FC000, v49, OS_LOG_TYPE_DEFAULT, "PGSyndicationProcessor: Promoting %tu asset(s) as guest", buf, 0xCu);
      }

      v51 = [obj count];
      v52 = v51;
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v121 = 0;
      if (v51)
      {
        v88[0] = MEMORY[0x277D85DD0];
        v88[1] = 3221225472;
        v88[2] = __108__PGSyndicationProcessor_processSyndicatedAssetGuestInferenceWithError_progressReporter_shareBackSuggester___block_invoke_341;
        v88[3] = &unk_278880AF0;
        v95 = v51;
        v89 = obj;
        v53 = v45;
        v90 = v45;
        v91 = v47;
        v96 = 1.0 / v52;
        v93 = buf;
        v94 = &v114;
        v92 = v48;
        v87 = 0;
        v54 = [v43 performChangesAndWait:v88 error:&v87];
        v55 = v87;
        if ((v54 & 1) == 0)
        {
          if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
          {
            *v118 = 138412290;
            *v119 = v55;
            _os_log_error_impl(&dword_22F0FC000, v49, OS_LOG_TYPE_ERROR, "PGSyndicationProcessor: Error saving guest asset inference to database: %@", v118, 0xCu);
          }

          if (v73)
          {
            v56 = v55;
            *v73 = v55;
          }
        }

        v45 = v53;
      }

      v57 = [v48 throughputReportBlock];
      v58 = v57 == 0;

      if (!v58)
      {
        v59 = [v48 throughputReportBlock];
        (v59)[2](v59, v52, @"guestInference");
      }

      v60 = mach_absolute_time();
      numer = info.numer;
      denom = info.denom;
      v63 = v49;
      v64 = v63;
      if (v72 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v63))
      {
        *v118 = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v64, OS_SIGNPOST_INTERVAL_END, spid, "PGSyndicationProcessorAssetGuestInference", "", v118, 2u);
      }

      if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
      {
        *v118 = 136315394;
        *v119 = "PGSyndicationProcessorAssetGuestInference";
        *&v119[8] = 2048;
        *&v119[10] = ((((v60 - v70) * numer) / denom) / 1000000.0);
        _os_log_impl(&dword_22F0FC000, v64, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", v118, 0x16u);
      }

      if (*(v115 + 24) == 1)
      {
        *(v115 + 24) = 1;
      }

      else
      {
        v67 = [v48 isCancelledWithProgress:1.0];
        *(v115 + 24) = v67;
        if (!v67)
        {
          v10 = 1;
LABEL_69:
          _Block_object_dispose(buf, 8);
LABEL_70:

          goto LABEL_71;
        }
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *v118 = 67109378;
        *v119 = 509;
        *&v119[4] = 2080;
        *&v119[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Syndication/PGSyndicationProcessor.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v118, 0x12u);
      }

      v10 = 0;
      goto LABEL_69;
    }

    if (v115[3])
    {
      *(v115 + 24) = 1;
    }

    else
    {
      v65 = [v81 isCancelledWithProgress:1.0];
      *(v115 + 24) = v65;
      if ((v65 & 1) == 0)
      {
LABEL_58:
        v10 = 0;
LABEL_72:

        goto LABEL_73;
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *&buf[4] = 302;
      *&buf[8] = 2080;
      *&buf[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Syndication/PGSyndicationProcessor.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    goto LABEL_58;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *&buf[4] = 296;
    *&buf[8] = 2080;
    *&buf[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Syndication/PGSyndicationProcessor.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v10 = 0;
LABEL_73:
  _Block_object_dispose(&v114, 8);

  v68 = *MEMORY[0x277D85DE8];
  return v10;
}

void __108__PGSyndicationProcessor_processSyndicatedAssetGuestInferenceWithError_progressReporter_shareBackSuggester___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 graph];
  v5 = *(a1 + 32);
  if (!v5)
  {
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = [*(*(a1 + 56) + 8) photoLibrary];
    v5 = [PGShareBackSuggester shareBackSuggesterForSyndicationWithLoggingConnection:v6 syndicationPhotoLibrary:v7 systemPhotoLibrary:v8 graph:v4 serviceManager:*(a1 + 64)];
  }

  v9 = 1.0 / [*(a1 + 72) count];
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x2020000000;
  v30[3] = 0;
  v10 = *(a1 + 72);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __108__PGSyndicationProcessor_processSyndicatedAssetGuestInferenceWithError_progressReporter_shareBackSuggester___block_invoke_2;
  v17[3] = &unk_278880AA0;
  v18 = *(a1 + 40);
  v19 = *(a1 + 80);
  v20 = *(a1 + 88);
  v11 = v4;
  v21 = v11;
  v12 = v5;
  v22 = v12;
  v13 = v3;
  v14 = *(a1 + 56);
  v23 = v13;
  v24 = v14;
  v25 = *(a1 + 96);
  v26 = *(a1 + 48);
  v16 = *(a1 + 104);
  v15 = v16;
  v27 = v16;
  v28 = v30;
  v29 = v9;
  [v10 enumerateKeysAndObjectsUsingBlock:v17];

  _Block_object_dispose(v30, 8);
}

void __108__PGSyndicationProcessor_processSyndicatedAssetGuestInferenceWithError_progressReporter_shareBackSuggester___block_invoke_341(uint64_t a1)
{
  if (*(a1 + 80))
  {
    v2 = 0;
    v3 = *MEMORY[0x277CD9B48];
    while (1)
    {
      v4 = objc_autoreleasePoolPush();
      v5 = [*(a1 + 32) objectAtIndexedSubscript:v2];
      v6 = [MEMORY[0x277CD97B0] changeRequestForAsset:v5];
      v7 = *(a1 + 40);
      v8 = [v5 uuid];
      v9 = [v7 objectForKeyedSubscript:v8];

      if (v9)
      {
        [v6 setSyndicationProcessingValue:{objc_msgSend(v9, "unsignedShortValue")}];
        v10 = PHAssetSyndicationProcessingCurrentVersionForAsset();
        v11 = [*(a1 + 48) containsObject:v5];
        v12 = [v5 isGuestAsset];
        if (v11)
        {
          v10 = v3;
          if ((v12 & 1) == 0)
          {
            [v6 promoteToGuestAsset];
            v10 = v3;
          }
        }

        else if (v12)
        {
          [v6 resetGuestAssetPromotion];
        }

        [v6 setSyndicationProcessingVersion:v10];
        *(*(*(a1 + 64) + 8) + 24) = *(a1 + 88) + *(*(*(a1 + 64) + 8) + 24);
        v13 = *(*(a1 + 72) + 8);
        if (*(v13 + 24))
        {
          v14 = 1;
        }

        else
        {
          v14 = [*(a1 + 56) isCancelledWithProgress:*(*(*(a1 + 64) + 8) + 24) * 0.25 + 0.75];
          v13 = *(*(a1 + 72) + 8);
        }

        *(v13 + 24) = v14;
        if (*(*(*(a1 + 72) + 8) + 24) == 1)
        {
          break;
        }
      }

      objc_autoreleasePoolPop(v4);
      if (++v2 >= *(a1 + 80))
      {
        return;
      }
    }

    objc_autoreleasePoolPop(v4);
  }
}

void __108__PGSyndicationProcessor_processSyndicatedAssetGuestInferenceWithError_progressReporter_shareBackSuggester___block_invoke_2(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __108__PGSyndicationProcessor_processSyndicatedAssetGuestInferenceWithError_progressReporter_shareBackSuggester___block_invoke_3;
  v17[3] = &unk_278880A78;
  v18 = *(a1 + 32);
  v19 = *(a1 + 40);
  v20 = *(a1 + 48);
  v8 = v7;
  v21 = v8;
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  *&v11 = *(a1 + 72);
  *(&v11 + 1) = *(a1 + 80);
  *&v12 = v9;
  *(&v12 + 1) = v10;
  v22 = v12;
  v23 = v11;
  v24 = *(a1 + 88);
  v25 = *(a1 + 96);
  v16 = *(a1 + 104);
  v13 = v16;
  v26 = v16;
  v27 = *(a1 + 120);
  [a3 enumerateKeysAndObjectsUsingBlock:v17];
  *(*(*(a1 + 120) + 8) + 24) = *(a1 + 128) + *(*(*(a1 + 120) + 8) + 24);
  v14 = *(*(a1 + 112) + 8);
  if (*(v14 + 24))
  {
    v15 = 1;
  }

  else
  {
    v15 = [*(a1 + 104) isCancelledWithProgress:*(*(*(a1 + 120) + 8) + 24) * 0.5 + 0.25];
    v14 = *(*(a1 + 112) + 8);
  }

  *(v14 + 24) = v15;
  if (*(*(*(a1 + 112) + 8) + 24) == 1)
  {
    *a4 = 1;
  }
}

void __108__PGSyndicationProcessor_processSyndicatedAssetGuestInferenceWithError_progressReporter_shareBackSuggester___block_invoke_3(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v98 = *MEMORY[0x277D85DE8];
  v67 = a2;
  v6 = a3;
  v7 = [MEMORY[0x277CBEB18] array];
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v88 objects:v97 count:16];
  v10 = v7;
  if (v9)
  {
    v11 = v9;
    v12 = *v89;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v89 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v88 + 1) + 8 * i);
        if ([v14 creationDateSource] == 3)
        {
          v15 = *(a1 + 32);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_22F0FC000, v15, OS_LOG_TYPE_ERROR, "PGSyndicationProcessor: Skipping syndicated asset due to invalid creationDateSource", buf, 2u);
          }

          v16 = *(a1 + 40);
          v17 = [v14 uuid];
          [v16 setObject:&unk_284482D30 forKeyedSubscript:v17];

          v7 = v10;
          [v10 addObject:v14];
        }
      }

      v11 = [v8 countByEnumeratingWithState:&v88 objects:v97 count:16];
    }

    while (v11);
  }

  if ([v7 count])
  {
    v18 = [v8 arrayByExcludingObjectsInArray:v7];

    v8 = v18;
  }

  v68 = v8;
  v19 = [*(a1 + 48) objectForKeyedSubscript:*(a1 + 56)];
  v20 = v67;
  if ([v19 containsObject:v67])
  {
    v21 = [PGGraphMomentNodeCollection momentNodeForUUID:*(a1 + 56) inGraph:*(a1 + 64)];
    v22 = [PGShareBackSuggesterResult alloc];
    v23 = [v21 temporarySet];
    v24 = 128;
    v25 = [(PGShareBackSuggesterResult *)v22 initWithInputs:v68 processingValue:128 momentNodes:v23];

    v71 = v25;
    if (v25)
    {
      v26 = 0;
LABEL_29:
      v37 = *(a1 + 88);
      v38 = *(a1 + 96);
      v39 = *(a1 + 104);
      v82 = 0;
      v80[0] = MEMORY[0x277D85DD0];
      v80[1] = 3221225472;
      v80[2] = __108__PGSyndicationProcessor_processSyndicatedAssetGuestInferenceWithError_progressReporter_shareBackSuggester___block_invoke_334;
      v80[3] = &unk_278889448;
      *obja = *(a1 + 112);
      v40 = obja[0];
      v81 = *obja;
      v41 = [v37 duplicateAssetUUIDsForSuggesterResult:v71 assetsInferredAsGuestAsset:v38 syndicationLibrary:v39 error:&v82 progressBlock:v80];
      obj = v82;
      if (v41)
      {
        v62 = v26;
        v65 = v19;
        v78 = 0u;
        v79 = 0u;
        v76 = 0u;
        v77 = 0u;
        v42 = v68;
        v43 = [v42 countByEnumeratingWithState:&v76 objects:v93 count:16];
        if (v43)
        {
          v44 = v43;
          v45 = *v77;
          do
          {
            for (j = 0; j != v44; ++j)
            {
              if (*v77 != v45)
              {
                objc_enumerationMutation(v42);
              }

              v47 = *(*(&v76 + 1) + 8 * j);
              v48 = [v47 uuid];
              if ([v41 containsObject:v48])
              {
                [*(a1 + 40) setObject:&unk_284482D48 forKeyedSubscript:v48];
              }

              else
              {
                [*(a1 + 96) addObject:v47];
                v49 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(v71, "processingValue")}];
                [*(a1 + 40) setObject:v49 forKeyedSubscript:v48];
              }
            }

            v44 = [v42 countByEnumeratingWithState:&v76 objects:v93 count:16];
          }

          while (v44);
        }

        v19 = v65;
        v20 = v67;
        v26 = v62;
      }

      else
      {
        v58 = *(a1 + 32);
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v95 = obj;
          _os_log_impl(&dword_22F0FC000, v58, OS_LOG_TYPE_DEFAULT, "Issue while running deduping, skipping processing for this batch: %@", buf, 0xCu);
        }
      }

      goto LABEL_54;
    }
  }

  else
  {
    v24 = 0;
  }

  v27 = *(a1 + 72);
  v28 = [*(a1 + 80) graph];
  v87 = 0;
  v29 = [v27 suggesterResultsForInputs:v68 inGraph:v28 error:&v87];
  v26 = v87;

  if (v29)
  {
    v64 = v19;
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v30 = v29;
    v31 = [v30 countByEnumeratingWithState:&v83 objects:v96 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v84;
LABEL_21:
      v34 = 0;
      while (1)
      {
        if (*v84 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = *(*(&v83 + 1) + 8 * v34);
        v24 = [v35 processingValue];
        if ((v24 & 0x7EF0) != 0)
        {
          break;
        }

        if (v32 == ++v34)
        {
          v32 = [v30 countByEnumeratingWithState:&v83 objects:v96 count:16];
          if (v32)
          {
            goto LABEL_21;
          }

          goto LABEL_27;
        }
      }

      v36 = v35;

      v19 = v64;
      v71 = v36;
      if (!v36)
      {
        goto LABEL_41;
      }

      goto LABEL_29;
    }

LABEL_27:

    v19 = v64;
  }

LABEL_41:
  if (v26)
  {
    v71 = 0;
    goto LABEL_55;
  }

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  obj = v68;
  v50 = [obj countByEnumeratingWithState:&v72 objects:v92 count:16];
  if (v50)
  {
    v51 = v50;
    v66 = v19;
    v52 = *v73;
    do
    {
      for (k = 0; k != v51; ++k)
      {
        if (*v73 != v52)
        {
          objc_enumerationMutation(obj);
        }

        v54 = *(*(&v72 + 1) + 8 * k);
        v55 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v24];
        v56 = *(a1 + 40);
        v57 = [v54 uuid];
        [v56 setObject:v55 forKeyedSubscript:v57];
      }

      v51 = [obj countByEnumeratingWithState:&v72 objects:v92 count:16];
    }

    while (v51);
    v71 = 0;
    v26 = 0;
    v19 = v66;
    v20 = v67;
  }

  else
  {
    v71 = 0;
    v26 = 0;
  }

LABEL_54:

LABEL_55:
  v59 = *(*(a1 + 120) + 8);
  if (*(v59 + 24))
  {
    v60 = 1;
  }

  else
  {
    v60 = [*(a1 + 112) isCancelledWithProgress:*(*(*(a1 + 128) + 8) + 24) * 0.5 + 0.25];
    v59 = *(*(a1 + 120) + 8);
  }

  *(v59 + 24) = v60;
  if (*(*(*(a1 + 120) + 8) + 24) == 1)
  {
    *a4 = 1;
  }

  v61 = *MEMORY[0x277D85DE8];
}

uint64_t __108__PGSyndicationProcessor_processSyndicatedAssetGuestInferenceWithError_progressReporter_shareBackSuggester___block_invoke_334(uint64_t a1, _BYTE *a2)
{
  v4 = *(*(a1 + 40) + 8);
  if (*(v4 + 24))
  {
    result = 1;
  }

  else
  {
    result = [*(a1 + 32) isCancelledWithProgress:0.25];
    v4 = *(*(a1 + 40) + 8);
  }

  *(v4 + 24) = result;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a2 = 1;
  }

  return result;
}

- (BOOL)processSavedSyndicatedAssetsWithError:(id *)a3 progressReporter:(id)a4
{
  v98[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v87 = 0;
  v88 = &v87;
  v89 = 0x2020000000;
  v90 = 0;
  v7 = [v6 isCancelledWithProgress:0.0];
  *(v88 + 24) = v7;
  if (!v7)
  {
    v71 = [(PGManagerWorkingContext *)self->_workingContext loggingConnection];
    v70 = [(PGSyndicationProcessor *)self syndicationPhotoLibraryWithError:a3];
    if (v70)
    {
      v9 = v71;
      v10 = os_signpost_id_generate(v9);
      v11 = v9;
      v12 = v11;
      spid = v10;
      v65 = v10 - 1;
      if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "PGSyndicationSavedSyndicatedAssets", "", buf, 2u);
      }

      oslog = v12;

      info = 0;
      mach_timebase_info(&info);
      v63 = mach_absolute_time();
      v69 = [MEMORY[0x277CCAC30] predicateWithFormat:@"additionalAttributes.syndicationIdentifier != nil"];
      v13 = [(PGManagerWorkingContext *)self->_workingContext photoLibrary];
      v73 = [v13 librarySpecificFetchOptions];

      [v73 setInternalPredicate:v69];
      v14 = *MEMORY[0x277CD9A80];
      v98[0] = *MEMORY[0x277CD9A80];
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v98 count:1];
      [v73 setFetchPropertySets:v15];

      [v73 setIncludeGuestAssets:0];
      v16 = [MEMORY[0x277CD97A8] fetchAssetsWithOptions:v73];
      v17 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v85 = 0u;
      v83 = 0u;
      v84 = 0u;
      v82 = 0u;
      v18 = v16;
      v19 = [v18 countByEnumeratingWithState:&v82 objects:v97 count:16];
      if (v19)
      {
        v20 = *v83;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v83 != v20)
            {
              objc_enumerationMutation(v18);
            }

            v22 = [*(*(&v82 + 1) + 8 * i) curationProperties];
            v23 = [v22 syndicationIdentifier];

            if ([v23 length])
            {
              [v17 addObject:v23];
            }
          }

          v19 = [v18 countByEnumeratingWithState:&v82 objects:v97 count:16];
        }

        while (v19);
      }

      if (![v17 count])
      {
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_22F0FC000, oslog, OS_LOG_TYPE_DEFAULT, "PGSyndicationProcessor: No saved asset with syndication identifiers", buf, 2u);
        }

        if (v88[3])
        {
          *(v88 + 24) = 1;
        }

        else
        {
          v49 = [v6 isCancelledWithProgress:1.0];
          *(v88 + 24) = v49;
          if ((v49 & 1) == 0)
          {
            v53 = mach_absolute_time();
            numer = info.numer;
            denom = info.denom;
            v56 = oslog;
            v57 = v56;
            if (v65 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v56))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_22F0FC000, v57, OS_SIGNPOST_INTERVAL_END, spid, "PGSyndicationSavedSyndicatedAssets", "", buf, 2u);
            }

            v8 = 1;
            if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
            {
              *buf = 136315394;
              *&buf[4] = "PGSyndicationSavedSyndicatedAssets";
              *&buf[12] = 2048;
              *&buf[14] = ((((v53 - v63) * numer) / denom) / 1000000.0);
              _os_log_impl(&dword_22F0FC000, v57, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
            }

            goto LABEL_66;
          }
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *&buf[4] = 222;
          *&buf[8] = 2080;
          *&buf[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Syndication/PGSyndicationProcessor.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        v8 = 0;
LABEL_66:

        goto LABEL_67;
      }

      v68 = [MEMORY[0x277CCAC30] predicateWithFormat:@"additionalAttributes.syndicationIdentifier IN %@", v17];
      v24 = [MEMORY[0x277D3B248] predicateForExcludeMask:objc_msgSend(MEMORY[0x277D3B248] useIndex:{"maskForGuestAsset"), 1}];
      v67 = [MEMORY[0x277CD97A8] filterPredicateToIncludeOnlyReceivedSyndicatedAssets];
      v66 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K >= %d", @"thumbnailIndex", *MEMORY[0x277D3ADD8]];
      v25 = [v70 librarySpecificFetchOptions];
      v96 = v14;
      v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v96 count:1];
      [v25 setFetchPropertySets:v26];

      v27 = MEMORY[0x277CCA920];
      v95[0] = v68;
      v95[1] = v24;
      v95[2] = v67;
      v95[3] = v66;
      v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v95 count:4];
      v29 = [v27 andPredicateWithSubpredicates:v28];
      [v25 setInternalPredicate:v29];

      [v25 setIncludeGuestAssets:0];
      v30 = [MEMORY[0x277CD97A8] fetchAssetsWithOptions:v25];
      v31 = [v30 count];
      v32 = os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT);
      if (!v31)
      {
        if (v32)
        {
          *buf = 0;
          _os_log_impl(&dword_22F0FC000, oslog, OS_LOG_TYPE_DEFAULT, "PGSyndicationProcessor: No saved syndicated asset eligible for guest promoting", buf, 2u);
        }

        if (v88[3])
        {
          *(v88 + 24) = 1;
        }

        else
        {
          v50 = [v6 isCancelledWithProgress:1.0];
          *(v88 + 24) = v50;
          if ((v50 & 1) == 0)
          {
            v58 = mach_absolute_time();
            v59 = info.numer;
            v60 = info.denom;
            v61 = oslog;
            v62 = v61;
            if (v65 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v61))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_22F0FC000, v62, OS_SIGNPOST_INTERVAL_END, spid, "PGSyndicationSavedSyndicatedAssets", "", buf, 2u);
            }

            v8 = 1;
            if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
            {
              *buf = 136315394;
              *&buf[4] = "PGSyndicationSavedSyndicatedAssets";
              *&buf[12] = 2048;
              *&buf[14] = ((((v58 - v63) * v59) / v60) / 1000000.0);
              _os_log_impl(&dword_22F0FC000, v62, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
            }

            goto LABEL_65;
          }
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *&buf[4] = 243;
          *&buf[8] = 2080;
          *&buf[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Syndication/PGSyndicationProcessor.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        v8 = 0;
LABEL_65:

        goto LABEL_66;
      }

      if (v32)
      {
        *buf = 134217984;
        *&buf[4] = v31;
        _os_log_impl(&dword_22F0FC000, oslog, OS_LOG_TYPE_DEFAULT, "PGSyndicationProcessor: Promoting %tu saved syndicated asset(s) as guest", buf, 0xCu);
      }

      v33 = [v30 count];
      v34 = v33;
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v94 = 0;
      if (!v33)
      {
LABEL_28:
        v39 = [v6 throughputReportBlock];
        v40 = v39 == 0;

        if (!v40)
        {
          v41 = [v6 throughputReportBlock];
          (v41)[2](v41, v34, @"savedAssets");
        }

        v42 = mach_absolute_time();
        v43 = info.numer;
        v44 = info.denom;
        v45 = oslog;
        v46 = v45;
        if (v65 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v45))
        {
          *v91 = 0;
          _os_signpost_emit_with_name_impl(&dword_22F0FC000, v46, OS_SIGNPOST_INTERVAL_END, spid, "PGSyndicationSavedSyndicatedAssets", "", v91, 2u);
        }

        if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
        {
          *v91 = 136315394;
          *v92 = "PGSyndicationSavedSyndicatedAssets";
          *&v92[8] = 2048;
          *&v92[10] = ((((v42 - v63) * v43) / v44) / 1000000.0);
          _os_log_impl(&dword_22F0FC000, v46, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", v91, 0x16u);
        }

        if (*(v88 + 24) == 1)
        {
          *(v88 + 24) = 1;
        }

        else
        {
          v48 = [v6 isCancelledWithProgress:1.0];
          *(v88 + 24) = v48;
          if (!v48)
          {
            v8 = 1;
LABEL_64:
            _Block_object_dispose(buf, 8);
            goto LABEL_65;
          }
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *v91 = 67109378;
          *v92 = 286;
          *&v92[4] = 2080;
          *&v92[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Syndication/PGSyndicationProcessor.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v91, 0x12u);
        }

        v8 = 0;
        goto LABEL_64;
      }

      v35 = v24;
      v75[0] = MEMORY[0x277D85DD0];
      v75[1] = 3221225472;
      v75[2] = __81__PGSyndicationProcessor_processSavedSyndicatedAssetsWithError_progressReporter___block_invoke;
      v75[3] = &unk_278880A50;
      v80 = v33;
      v76 = v30;
      v81 = 1.0 / v34;
      v78 = buf;
      v79 = &v87;
      v77 = v6;
      v74 = 0;
      v36 = [v70 performChangesAndWait:v75 error:&v74];
      v37 = v74;
      if ((v36 & 1) == 0)
      {
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
        {
          *v91 = 138412290;
          *v92 = v37;
          _os_log_error_impl(&dword_22F0FC000, oslog, OS_LOG_TYPE_ERROR, "PGSyndicationProcessor: Error saving guest asset to database: %@", v91, 0xCu);
          if (!a3)
          {
            goto LABEL_27;
          }

          goto LABEL_26;
        }

        if (a3)
        {
LABEL_26:
          v38 = v37;
          *a3 = v37;
        }
      }

LABEL_27:

      v24 = v35;
      goto LABEL_28;
    }

    if (v88[3])
    {
      *(v88 + 24) = 1;
    }

    else
    {
      v47 = [v6 isCancelledWithProgress:1.0];
      *(v88 + 24) = v47;
      if ((v47 & 1) == 0)
      {
LABEL_46:
        v8 = 0;
LABEL_67:

        goto LABEL_68;
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *&buf[4] = 195;
      *&buf[8] = 2080;
      *&buf[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Syndication/PGSyndicationProcessor.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    goto LABEL_46;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *&buf[4] = 189;
    *&buf[8] = 2080;
    *&buf[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Syndication/PGSyndicationProcessor.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v8 = 0;
LABEL_68:
  _Block_object_dispose(&v87, 8);

  v51 = *MEMORY[0x277D85DE8];
  return v8;
}

void __81__PGSyndicationProcessor_processSavedSyndicatedAssetsWithError_progressReporter___block_invoke(uint64_t a1)
{
  if (*(a1 + 64))
  {
    v2 = 0;
    v3 = *MEMORY[0x277CD9B48];
    do
    {
      v4 = objc_autoreleasePoolPush();
      v5 = [*(a1 + 32) objectAtIndexedSubscript:v2];
      v6 = [MEMORY[0x277CD97B0] changeRequestForAsset:v5];
      [v6 setSyndicationProcessingValue:4096];
      [v6 setSyndicationProcessingVersion:v3];
      [v6 promoteToGuestAsset];
      *(*(*(a1 + 48) + 8) + 24) = *(a1 + 72) + *(*(*(a1 + 48) + 8) + 24);
      v7 = *(*(a1 + 56) + 8);
      if (*(v7 + 24))
      {
        v8 = 1;
      }

      else
      {
        v8 = [*(a1 + 40) isCancelledWithProgress:*(*(*(a1 + 48) + 8) + 24)];
        v7 = *(*(a1 + 56) + 8);
      }

      *(v7 + 24) = v8;
      v9 = *(*(*(a1 + 56) + 8) + 24);

      objc_autoreleasePoolPop(v4);
      if (v9 == 1)
      {
        break;
      }

      ++v2;
    }

    while (v2 < *(a1 + 64));
  }
}

- (void)_persistCurationScores:(id)a3 inPhotoLibrary:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = [(PGManagerWorkingContext *)self->_workingContext loggingConnection];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __64__PGSyndicationProcessor__persistCurationScores_inPhotoLibrary___block_invoke;
    v13[3] = &unk_27888A660;
    v14 = v6;
    v12 = 0;
    v9 = [v7 performChangesAndWait:v13 error:&v12];
    v10 = v12;
    if ((v9 & 1) == 0 && os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = v10;
      _os_log_error_impl(&dword_22F0FC000, v8, OS_LOG_TYPE_ERROR, "PGSyndicationProcessor: Error saving curation scores to database: %@", buf, 0xCu);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __64__PGSyndicationProcessor__persistCurationScores_inPhotoLibrary___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CD97B0];
  v5 = a3;
  v6 = a2;
  v9 = [v4 changeRequestForAsset:v6];
  [v5 doubleValue];
  v8 = v7;

  [v9 setCurationScore:v8];
  LODWORD(v4) = [v6 isGuestAsset];

  if (v4 && v8 <= *MEMORY[0x277D3C778])
  {
    [v9 resetGuestAssetPromotion];
  }
}

- (BOOL)processSyndicatedAssetCurationWithError:(id *)a3 progressReporter:(id)a4
{
  v62 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if ([v6 isCancelledWithProgress:0.0])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *v61 = 87;
      *&v61[4] = 2080;
      *&v61[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Syndication/PGSyndicationProcessor.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v7 = 0;
  }

  else
  {
    v8 = [(PGManagerWorkingContext *)self->_workingContext loggingConnection];
    v9 = [(PGSyndicationProcessor *)self syndicationPhotoLibraryWithError:a3];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 librarySpecificFetchOptions];
      v12 = [MEMORY[0x277D3C7C0] internalPredicateToFilterSyndicatedAssetsEligibleForCurationProcessing];
      [v11 setInternalPredicate:v12];

      v13 = +[PGCurationManager assetPropertySetsForCuration];
      [v11 setFetchPropertySets:v13];

      [v11 setIncludeGuestAssets:1];
      v14 = [MEMORY[0x277CD97A8] fetchAssetsWithOptions:v11];
      v15 = [v14 count];
      v16 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
      if (v15)
      {
        if (v16)
        {
          *buf = 134217984;
          *v61 = v15;
          _os_log_impl(&dword_22F0FC000, v8, OS_LOG_TYPE_DEFAULT, "PGSyndicationProcessor: %tu asset(s) eligible for curation processing", buf, 0xCu);
        }

        v52 = v11;
        v49 = v8;
        v17 = v8;
        v18 = os_signpost_id_generate(v17);
        v19 = v17;
        v20 = v19;
        v48 = v18 - 1;
        if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_22F0FC000, v20, OS_SIGNPOST_INTERVAL_BEGIN, v18, "PGSyndicationProcessorAssetCuration", "", buf, 2u);
        }

        spid = v18;
        v50 = v20;

        info = 0;
        mach_timebase_info(&info);
        v47 = mach_absolute_time();
        v56 = [objc_alloc(MEMORY[0x277D3C790]) initWithPhotoLibrary:v10];
        v21 = 1.0 / v15;
        v51 = v14;
        v57 = [v14 fetchedObjects];
        v22 = 0;
        v23 = *MEMORY[0x277D3C778];
        v24 = 0.0;
        v54 = self;
        v55 = v10;
        v53 = v15;
        while (1)
        {
          context = objc_autoreleasePoolPush();
          v25 = v22 + 200;
          v26 = v22 + 200 <= v15 ? 200 : v15 - v22;
          v27 = [v57 subarrayWithRange:{v22, v26, spid}];
          v28 = [MEMORY[0x277CBEB38] dictionary];
          [MEMORY[0x277CD97A8] prefetchOnAssets:v27 options:13 curationContext:v56];
          if ([v27 count])
          {
            break;
          }

LABEL_22:
          v10 = v55;
          [(PGSyndicationProcessor *)v54 _persistCurationScores:v28 inPhotoLibrary:v55];

          objc_autoreleasePoolPop(context);
          v22 = v25;
          v15 = v53;
          if (v25 >= v53)
          {
            v36 = [v6 throughputReportBlock];

            if (v36)
            {
              v37 = [v6 throughputReportBlock];
              (v37)[2](v37, [v57 count], @"curationScore");
            }

            v38 = mach_absolute_time();
            numer = info.numer;
            denom = info.denom;
            v41 = v50;
            v42 = v50;
            v43 = v42;
            v14 = v51;
            if (v48 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v42))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_22F0FC000, v43, OS_SIGNPOST_INTERVAL_END, spid, "PGSyndicationProcessorAssetCuration", "", buf, 2u);
            }

            v11 = v52;
            if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
            {
              *buf = 136315394;
              *v61 = "PGSyndicationProcessorAssetCuration";
              *&v61[8] = 2048;
              *&v61[10] = ((((v38 - v47) * numer) / denom) / 1000000.0);
              _os_log_impl(&dword_22F0FC000, v43, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
            }

            if ([v6 isCancelledWithProgress:1.0])
            {
              v8 = v49;
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                *buf = 67109378;
                *v61 = 158;
                *&v61[4] = 2080;
                *&v61[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Syndication/PGSyndicationProcessor.m";
                _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
              }

              v7 = 0;
            }

            else
            {
              v7 = 1;
              v8 = v49;
            }

            goto LABEL_41;
          }
        }

        v29 = 0;
        while (1)
        {
          v30 = objc_autoreleasePoolPush();
          v31 = [v27 objectAtIndexedSubscript:v29];
          v32 = [v31 curationModel];
          v33 = [v32 isUtilityForSyndicationWithAsset:v31];
          v34 = v23;
          if ((v33 & 1) == 0)
          {
            [v31 scoreInContext:{0, v23}];
          }

          v35 = [MEMORY[0x277CCABB0] numberWithDouble:v34];
          [v28 setObject:v35 forKeyedSubscript:v31];

          v24 = v21 + v24;
          if ([v6 isCancelledWithProgress:v24])
          {
            break;
          }

          objc_autoreleasePoolPop(v30);
          if (++v29 >= [v27 count])
          {
            goto LABEL_22;
          }
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v61 = 147;
          *&v61[4] = 2080;
          *&v61[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Syndication/PGSyndicationProcessor.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        objc_autoreleasePoolPop(v30);
        objc_autoreleasePoolPop(context);
        v7 = 0;
        v8 = v49;
        v41 = v50;
        v10 = v55;
        v14 = v51;
        v11 = v52;
LABEL_41:
      }

      else
      {
        if (v16)
        {
          *buf = 0;
          _os_log_impl(&dword_22F0FC000, v8, OS_LOG_TYPE_DEFAULT, "PGSyndicationProcessor: No asset eligible for curation processing", buf, 2u);
        }

        if ([v6 isCancelledWithProgress:1.0])
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v61 = 106;
            *&v61[4] = 2080;
            *&v61[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Syndication/PGSyndicationProcessor.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          v7 = 0;
        }

        else
        {
          v7 = 1;
        }
      }
    }

    else
    {
      if ([v6 isCancelledWithProgress:1.0] && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v61 = 93;
        *&v61[4] = 2080;
        *&v61[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Syndication/PGSyndicationProcessor.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v7 = 0;
    }
  }

  v44 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)syndicationPhotoLibraryWithError:(id *)a3
{
  v19 = *MEMORY[0x277D85DE8];
  syndicationLibrary = self->_syndicationLibrary;
  if (syndicationLibrary)
  {
    goto LABEL_12;
  }

  v16 = 0;
  v6 = [MEMORY[0x277CD9948] openPhotoLibraryWithWellKnownIdentifier:3 error:&v16];
  v7 = v16;
  if (v6)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    v13 = self->_syndicationLibrary;
    self->_syndicationLibrary = v6;

    syndicationLibrary = self->_syndicationLibrary;
LABEL_12:
    v12 = syndicationLibrary;
    goto LABEL_13;
  }

  v9 = v7;
  v10 = [(PGManagerWorkingContext *)self->_workingContext loggingConnection];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v18 = v9;
    _os_log_error_impl(&dword_22F0FC000, v10, OS_LOG_TYPE_ERROR, "PGSyndicationProcessor: Failed to open syndicated library: %@", buf, 0xCu);
  }

  if (a3)
  {
    v11 = v9;
    *a3 = v9;
  }

  v12 = 0;
LABEL_13:
  v14 = *MEMORY[0x277D85DE8];

  return v12;
}

- (PGSyndicationProcessor)initWithWorkingContext:(id)a3 syndicationLibrary:(id)a4
{
  v7 = a4;
  v8 = [(PGSyndicationProcessor *)self initWithWorkingContext:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_syndicationLibrary, a4);
  }

  return v9;
}

- (PGSyndicationProcessor)initWithWorkingContext:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = PGSyndicationProcessor;
  v6 = [(PGSyndicationProcessor *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_workingContext, a3);
    v8 = objc_alloc_init(MEMORY[0x277D3C7A0]);
    curationSession = v7->_curationSession;
    v7->_curationSession = v8;
  }

  return v7;
}

@end