@interface PGUpNextMemoriesGenerationRequest
+ (id)_baseMemoryFetchOptionsWithPhotoLibrary:(id)a3;
+ (id)_memoryNodesWithSignificantOverlapWithMomentNodes:(id)a3;
+ (id)_requestErrorWithCode:(int64_t)a3 description:(id)a4;
+ (id)requestWithDictionaryRepresentation:(id)a3 error:(id *)a4;
- (PGUpNextMemoriesGenerationRequest)initWithRootMemoryLocalIdentifier:(id)a3 momentUUIDs:(id)a4 memoryLocalIdentifiersToAvoid:(id)a5 targetUpNextMemoryCount:(unint64_t)a6 customVectors:(id)a7 wantsVerboseDebugInfo:(BOOL)a8 sharingFilter:(unsigned __int16)a9;
- (id)_fetchRootMemoryWithPhotoLibrary:(id)a3;
- (id)_momentUUIDsForMemory:(id)a3;
- (id)fetchMemoryLocalIdentifiersWithWorkingContext:(id)a3 musicCurationOptions:(id)a4 error:(id *)a5;
- (id)localMemoriesByUniqueMemoryIdentifiersWithWorkingContext:(id)a3;
- (id)upNextMemoryLocalIdentifiersWithWorkingContext:(id)a3 rootMemory:(id)a4 localMemoriesByUniqueMemoryIdentifiers:(id)a5 uniqueMemoryIdentifiersOfMemoriesToAvoid:(id)a6 aggregator:(id)a7 debugInfo:(id *)a8 error:(id *)a9;
- (void)_enumerateMemoriesToAvoidWithWorkingContext:(id)a3 usingBlock:(id)a4;
@end

@implementation PGUpNextMemoriesGenerationRequest

- (id)_momentUUIDsForMemory:(id)a3
{
  v3 = a3;
  v4 = [v3 photoLibrary];
  v5 = MEMORY[0x277CD97B8];
  v6 = [v4 librarySpecificFetchOptions];
  v7 = [v5 fetchMomentsBackingMemory:v3 options:v6];

  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([v7 count])
  {
    v9 = 0;
    do
    {
      v10 = [v7 objectAtIndexedSubscript:v9];
      v11 = [v10 uuid];
      [v8 addObject:v11];

      ++v9;
    }

    while (v9 < [v7 count]);
  }

  return v8;
}

- (id)_fetchRootMemoryWithPhotoLibrary:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [objc_opt_class() _baseMemoryFetchOptionsWithPhotoLibrary:v4];

  v6 = MEMORY[0x277CD97B8];
  v12[0] = self->_rootMemoryLocalIdentifier;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v8 = [v6 fetchAssetCollectionsWithLocalIdentifiers:v7 options:v5];

  v9 = [v8 firstObject];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)_enumerateMemoriesToAvoidWithWorkingContext:(id)a3 usingBlock:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_class();
  v9 = [v6 photoLibrary];
  v10 = [v8 _baseMemoryFetchOptionsWithPhotoLibrary:v9];

  v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"localIdentifier IN %@", self->_memoryLocalIdentifiersToAvoid];
  [v10 setPredicate:v11];

  v12 = [MEMORY[0x277CD98D8] fetchAssetCollectionsWithType:4 subtype:0x7FFFFFFFFFFFFFFFLL options:v10];
  v13 = [v6 loggingConnection];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v18 = [v12 count];
    _os_log_impl(&dword_22F0FC000, v13, OS_LOG_TYPE_DEFAULT, "[UpNext] Found %lu memories to avoid", buf, 0xCu);
  }

  if ([v12 count])
  {
    v14 = 0;
    do
    {
      v15 = [v12 objectAtIndexedSubscript:v14];
      v7[2](v7, v15);

      ++v14;
    }

    while (v14 < [v12 count]);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)localMemoriesByUniqueMemoryIdentifiersWithWorkingContext:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_class();
  v30 = v4;
  v6 = [v4 photoLibrary];
  v7 = [v5 _baseMemoryFetchOptionsWithPhotoLibrary:v6];

  [v7 setSharingFilter:{-[PGUpNextMemoriesGenerationRequest sharingFilter](self, "sharingFilter")}];
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v29 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %d", @"pendingState", 2];
  [v8 addObject:?];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v9 = [MEMORY[0x277CBEB98] setWithArray:&unk_284485C58];
  v10 = [v9 countByEnumeratingWithState:&v35 objects:v42 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v36;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v36 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K != %d", @"category", objc_msgSend(*(*(&v35 + 1) + 8 * i), "unsignedIntegerValue")];
        [v8 addObject:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v35 objects:v42 count:16];
    }

    while (v11);
  }

  v15 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v8];
  [v7 setPredicate:v15];

  v16 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:4 subtype:0x7FFFFFFFFFFFFFFFLL options:v7];
  v17 = [v30 loggingConnection];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [v16 count];
    *buf = 134217984;
    v41 = v18;
    _os_log_impl(&dword_22F0FC000, v17, OS_LOG_TYPE_DEFAULT, "[UpNext] Found %lu eligible local memories", buf, 0xCu);
  }

  v19 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v16, "count")}];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v20 = v16;
  v21 = [v20 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v32;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v32 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v31 + 1) + 8 * j);
        v26 = [v25 graphMemoryIdentifier];
        if (v26)
        {
          [v19 setObject:v25 forKeyedSubscript:v26];
        }
      }

      v22 = [v20 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v22);
  }

  v27 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)upNextMemoryLocalIdentifiersWithWorkingContext:(id)a3 rootMemory:(id)a4 localMemoriesByUniqueMemoryIdentifiers:(id)a5 uniqueMemoryIdentifiersOfMemoriesToAvoid:(id)a6 aggregator:(id)a7 debugInfo:(id *)a8 error:(id *)a9
{
  v84 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v42 = a5;
  v44 = a6;
  v16 = a7;
  v17 = v14;
  v46 = v16;
  v18 = [v14 photoLibrary];
  oslog = [v14 loggingConnection];
  v53 = [v15 title];
  if (v15)
  {
    v19 = MEMORY[0x277CD97A8];
    v20 = [v18 librarySpecificFetchOptions];
    v21 = [v19 fetchKeyCuratedAssetInAssetCollection:v15 referenceAsset:0 options:v20];
    v22 = [v21 firstObject];
    v52 = [v22 localIdentifier];
  }

  else
  {
    v52 = 0;
  }

  v54 = [v15 graphMemoryIdentifier];
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v54;
    _os_log_impl(&dword_22F0FC000, oslog, OS_LOG_TYPE_DEFAULT, "[UpNext] Up Next RootMemory MemoryNodeUniqueIdentifier:(%@)", &buf, 0xCu);
  }

  v23 = self->_momentUUIDs;
  v24 = v23;
  if (v15 && !v23)
  {
    v24 = [(PGUpNextMemoriesGenerationRequest *)self _momentUUIDsForMemory:v15];
  }

  if (a9 && !v24)
  {
    *a9 = [objc_opt_class() _requestErrorWithCode:0 description:@"[UpNext] Neither rootMemory nor starting moments were provided for UpNext generation"];
  }

  v41 = [objc_alloc(MEMORY[0x277CD99F8]) initWithPhotoLibrary:v18];
  v25 = [(PGUpNextMemoriesGenerationRequest *)self customVectors];
  v26 = objc_alloc_init(_TtC11PhotosGraph24PGUpNextDebugInfoBuilder);
  [(PGUpNextDebugInfoBuilder *)v26 setWantsVerboseDebugInfo:self->_wantsVerboseDebugInfo];
  [(PGUpNextDebugInfoBuilder *)v26 setRootMemoryNodeUniqueIdentifier:v54];
  [(PGUpNextDebugInfoBuilder *)v26 setMomentUUIDs:v24];
  [(PGUpNextDebugInfoBuilder *)v26 setFeatureWeightVectors:v25];
  -[PGUpNextDebugInfoBuilder setRootMemoryIsAggregation:](v26, "setRootMemoryIsAggregation:", (PGMemorySourceTypeFromCategory([v15 category]) - 3) < 2);
  v27 = [v15 uuid];
  v51 = [v27 substringToIndex:8];

  v50 = [v53 stringByReplacingOccurrencesOfString:@"\n" withString:&stru_2843F5C58];
  v28 = [v15 subtitle];
  v49 = [v28 stringByReplacingOccurrencesOfString:@"\n" withString:&stru_2843F5C58];

  v48 = [v52 substringToIndex:8];
  v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"Root memory: %@\n\t%@ - %@\n\tkeyAsset: %@", v51, v50, v49, v48];
  [(PGUpNextDebugInfoBuilder *)v26 addSuggestionFilteringLog:v29];

  *&buf = 0;
  *(&buf + 1) = &buf;
  v80 = 0x3032000000;
  v81 = __Block_byref_object_copy__39253;
  v82 = __Block_byref_object_dispose__39254;
  v83 = 0;
  v73 = 0;
  v74 = &v73;
  v75 = 0x3032000000;
  v76 = __Block_byref_object_copy__39253;
  v77 = __Block_byref_object_dispose__39254;
  v78 = 0;
  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = __202__PGUpNextMemoriesGenerationRequest_upNextMemoryLocalIdentifiersWithWorkingContext_rootMemory_localMemoriesByUniqueMemoryIdentifiers_uniqueMemoryIdentifiersOfMemoriesToAvoid_aggregator_debugInfo_error___block_invoke;
  v58[3] = &unk_278884058;
  v40 = oslog;
  v59 = v40;
  v43 = v42;
  v60 = v43;
  v45 = v44;
  v61 = v45;
  osloga = v54;
  v62 = osloga;
  v39 = v15;
  v63 = v39;
  v30 = v24;
  v64 = v30;
  v31 = v26;
  v65 = v31;
  v66 = self;
  v32 = v25;
  v67 = v32;
  v55 = v18;
  v68 = v55;
  v33 = v41;
  v69 = v33;
  v34 = v46;
  v70 = v34;
  p_buf = &buf;
  v72 = &v73;
  [v17 performSynchronousConcurrentGraphReadUsingBlock:v58];
  if (a8)
  {
    *a8 = [(PGUpNextDebugInfoBuilder *)v31 debugInfo];
  }

  v35 = *(&buf + 1);
  if (a9 && !*(*(&buf + 1) + 40))
  {
    *a9 = v74[5];
    v35 = *(&buf + 1);
  }

  v36 = *(v35 + 40);

  _Block_object_dispose(&v73, 8);
  _Block_object_dispose(&buf, 8);

  v37 = *MEMORY[0x277D85DE8];

  return v36;
}

void __202__PGUpNextMemoriesGenerationRequest_upNextMemoryLocalIdentifiersWithWorkingContext_rootMemory_localMemoriesByUniqueMemoryIdentifiers_uniqueMemoryIdentifiersOfMemoriesToAvoid_aggregator_debugInfo_error___block_invoke(uint64_t a1, void *a2)
{
  v98 = *MEMORY[0x277D85DE8];
  v70 = a2;
  v3 = *(a1 + 32);
  v4 = os_signpost_id_generate(v3);
  v5 = v3;
  v6 = v5;
  spid = v4;
  v7 = v4 - 1;
  if (v7 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v6, OS_SIGNPOST_INTERVAL_BEGIN, spid, "PGUpNextMemoriesEligibleMemories", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v64 = mach_absolute_time();
  v75 = [v70 graph];
  v8 = [*(a1 + 40) allKeys];
  v9 = [PGGraphMemoryNodeCollection memoryNodesWithUniqueIdentifierArray:v8 inGraph:v75];

  v69 = [PGGraphMemoryNodeCollection memoryNodesWithUniqueIdentifiers:*(a1 + 48) inGraph:v75];
  v10 = [v9 collectionBySubtracting:v69];

  v11 = [PGGraphHighlightTypeNodeCollection tripTypeNodesInGraph:v75];
  v12 = [v11 highlightNodes];
  v13 = [v12 momentNodes];
  v14 = [v13 memoryNodes];

  v15 = [v14 subsetWithMemoryCategory:1];
  v16 = [v10 collectionBySubtracting:v15];

  v17 = [PGMemoryTriggerHandler personMemoryNodesFeaturingMeNodeInGraph:v75];
  v18 = [v16 collectionBySubtracting:v17];

  v19 = *(a1 + 56);
  if (!v19)
  {
    goto LABEL_11;
  }

  v20 = [PGGraphMemoryNodeCollection memoryNodeAsCollectionWithUniqueIdentifier:v19 inGraph:v75];
  if ([v20 count] != 1)
  {

LABEL_11:
    v23 = [PGGraphMomentNodeCollection momentNodesForArrayOfUUIDs:*(a1 + 72) inGraph:v75];
    v74 = [[PGUpNextMomentCollectionBasedMatchingInfo alloc] initWithMomentNodes:v23];

    goto LABEL_12;
  }

  v21 = [*(a1 + 64) category];
  v22 = off_27887C268;
  if (v21 != 27)
  {
    v22 = off_27887C260;
  }

  v74 = [objc_alloc(*v22) initWithMemoryNodeAsCollection:v20];

  if (!v74)
  {
    goto LABEL_11;
  }

LABEL_12:
  v24 = [(PGUpNextMomentCollectionBasedMatchingInfo *)v74 debugInfo];
  [*(a1 + 80) setInputDebugInfo:v24];

  v71 = [(PGUpNextMomentCollectionBasedMatchingInfo *)v74 momentNodes];
  if (v71)
  {
    v25 = *(a1 + 88);
    v26 = [objc_opt_class() _memoryNodesWithSignificantOverlapWithMomentNodes:v71];
    v27 = [v18 collectionBySubtracting:v26];

    v18 = v27;
  }

  v72 = [v18 subsetWithMemoryCategory:27];
  v68 = [v18 collectionBySubtracting:v72];

  v28 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v31 = v6;
  v32 = v31;
  log = v31;
  if (v7 < 0xFFFFFFFFFFFFFFFELL)
  {
    v33 = os_signpost_enabled(v31);
    v32 = log;
    if (v33)
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, log, OS_SIGNPOST_INTERVAL_END, spid, "PGUpNextMemoriesEligibleMemories", "", buf, 2u);
      v32 = log;
    }
  }

  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "PGUpNextMemoriesEligibleMemories";
    *&buf[12] = 2048;
    *&buf[14] = ((((v28 - v64) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_22F0FC000, log, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  v34 = *(a1 + 32);
  v35 = os_signpost_id_generate(v34);
  v36 = v34;
  v37 = v36;
  if (v35 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v36))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v37, OS_SIGNPOST_INTERVAL_BEGIN, v35, "PGUpNextMemoriesTargets", "", buf, 2u);
  }

  v90 = 0;
  mach_timebase_info(&v90);
  v38 = mach_absolute_time();
  spida = [PGUpNextMemoryFeatureBasedMatchingInfo matchingInfosWithMemoryNodes:v72];
  v65 = [PGUpNextMemoryBasedMatchingInfo matchingInfosWithMemoryNodes:v68];
  v63 = [spida arrayByAddingObjectsFromArray:v65];
  v62 = [[_TtC11PhotosGraph16PGUpNextComputer alloc] initWithTargets:v63];
  v39 = mach_absolute_time();
  v40 = v90;
  v41 = v37;
  v42 = v41;
  if (v35 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v41))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v42, OS_SIGNPOST_INTERVAL_END, v35, "PGUpNextMemoriesTargets", "", buf, 2u);
  }

  if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "PGUpNextMemoriesTargets";
    *&buf[12] = 2048;
    *&buf[14] = ((((v39 - v38) * v40.numer) / v40.denom) / 1000000.0);
    _os_log_impl(&dword_22F0FC000, v42, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  v43 = *(a1 + 32);
  v44 = os_signpost_id_generate(v43);
  v45 = v43;
  v46 = v45;
  if (v44 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v45))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v46, OS_SIGNPOST_INTERVAL_BEGIN, v44, "PGUpNextMemoriesGenerationEnumeration", "", buf, 2u);
  }

  v89 = 0;
  mach_timebase_info(&v89);
  v61 = mach_absolute_time();
  v47 = objc_alloc_init(MEMORY[0x277CBEB18]);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v97 = [*(a1 + 88) targetUpNextMemoryCount];
  v48 = objc_alloc_init(MEMORY[0x277D22BD0]);
  v49 = *(a1 + 96);
  v88 = 0;
  v77[0] = MEMORY[0x277D85DD0];
  v77[1] = 3221225472;
  v77[2] = __202__PGUpNextMemoriesGenerationRequest_upNextMemoryLocalIdentifiersWithWorkingContext_rootMemory_localMemoriesByUniqueMemoryIdentifiers_uniqueMemoryIdentifiersOfMemoriesToAvoid_aggregator_debugInfo_error___block_invoke_300;
  v77[3] = &unk_278884030;
  v50 = v48;
  v78 = v50;
  v76 = v75;
  v79 = v76;
  v80 = *(a1 + 80);
  v81 = *(a1 + 32);
  v82 = *(a1 + 40);
  v83 = *(a1 + 104);
  v84 = *(a1 + 112);
  v85 = *(a1 + 120);
  v51 = v47;
  v86 = v51;
  v87 = buf;
  v52 = [(PGUpNextComputer *)v62 enumerateSuggestionsWith:v74 featureWeightVectors:v49 error:&v88 block:v77];
  v53 = v88;
  v54 = mach_absolute_time();
  v55 = v89;
  v56 = v46;
  v57 = v56;
  if (v44 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v56))
  {
    *v92 = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v57, OS_SIGNPOST_INTERVAL_END, v44, "PGUpNextMemoriesGenerationEnumeration", "", v92, 2u);
  }

  if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
  {
    *v92 = 136315394;
    v93 = "PGUpNextMemoriesGenerationEnumeration";
    v94 = 2048;
    v95 = ((((v54 - v61) * v55.numer) / v55.denom) / 1000000.0);
    _os_log_impl(&dword_22F0FC000, v57, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", v92, 0x16u);
  }

  v58 = 136;
  if (v52)
  {
    v58 = 128;
    v59 = v51;
  }

  else
  {
    v59 = v53;
  }

  objc_storeStrong((*(*(a1 + v58) + 8) + 40), v59);

  _Block_object_dispose(buf, 8);
  v60 = *MEMORY[0x277D85DE8];
}

uint64_t __202__PGUpNextMemoriesGenerationRequest_upNextMemoryLocalIdentifiersWithWorkingContext_rootMemory_localMemoriesByUniqueMemoryIdentifiers_uniqueMemoryIdentifiersOfMemoriesToAvoid_aggregator_debugInfo_error___block_invoke_300(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v36 = *MEMORY[0x277D85DE8];
  v7 = a3;
  if ([*(a1 + 32) containsIdentifier:a2])
  {
    v8 = 0;
  }

  else
  {
    v9 = [objc_alloc(MEMORY[0x277D22BB0]) initWithElementIdentifier:a2];
    v10 = [(MAElementCollection *)[PGGraphMemoryNodeCollection alloc] initWithGraph:*(a1 + 40) elementIdentifiers:v9];
    v11 = [(PGGraphMemoryNodeCollection *)v10 uniqueMemoryIdentifiers];
    v12 = [v11 anyObject];

    if (v12)
    {
      v13 = [*(a1 + 64) objectForKeyedSubscript:v12];
      if (v13)
      {
        v14 = [[PGPotentialUpNextMemory alloc] initWithMemory:v13 photoLibrary:*(a1 + 72) userFeedbackCalculator:*(a1 + 80)];
        v15 = *(a1 + 88);
        v33 = @"No debug info assigned by aggregator";
        v8 = [v15 addUpNextMemory:v14 debugInfo:&v33];
        v16 = v33;
        [*(a1 + 48) addSuggestionFilteringLog:v16];
        if (v8)
        {
          v30 = a4;
          v31 = v16;
          v32 = v9;
          v17 = *(a1 + 56);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v35 = v7;
            _os_log_impl(&dword_22F0FC000, v17, OS_LOG_TYPE_INFO, "[UpNext] Accepted memory debug info: %@", buf, 0xCu);
          }

          [*(a1 + 48) addSuggestionFilteringLog:v7];
          v18 = *(a1 + 96);
          v19 = [(PGPotentialUpNextMemory *)v13 localIdentifier];
          [v18 addObject:v19];

          v20 = [(PGGraphMemoryNodeCollection *)v10 momentNodes];
          v21 = [PGUpNextMemoriesGenerationRequest _memoryNodesWithSignificantOverlapWithMomentNodes:v20];

          v22 = *(a1 + 32);
          v23 = [v21 elementIdentifiers];
          [v22 unionWithIdentifierSet:v23];

          if (--*(*(*(a1 + 104) + 8) + 24) <= 0)
          {
            *v30 = 1;
          }

          v16 = v31;
          v9 = v32;
        }
      }

      else
      {
        v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"No local memory found for unique identifier (%@)", v12];
        [*(a1 + 48) addSuggestionFilteringLog:v14];
        v27 = *(a1 + 56);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v35 = v14;
          _os_log_impl(&dword_22F0FC000, v27, OS_LOG_TYPE_INFO, "[UpNext] %@", buf, 0xCu);
        }

        v8 = 0;
      }
    }

    else
    {
      v24 = objc_alloc(MEMORY[0x277CCACA8]);
      v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
      v13 = [v24 initWithFormat:@"No unique identifier found for memoryNodeIdentifier (%@)", v25];

      [*(a1 + 48) addSuggestionFilteringLog:v13];
      v26 = *(a1 + 56);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v35 = v13;
        _os_log_impl(&dword_22F0FC000, v26, OS_LOG_TYPE_INFO, "[UpNext] %@", buf, 0xCu);
      }

      v8 = 0;
    }
  }

  v28 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)fetchMemoryLocalIdentifiersWithWorkingContext:(id)a3 musicCurationOptions:(id)a4 error:(id *)a5
{
  v90 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v75 = a4;
  v8 = self->_rootMemoryLocalIdentifier;
  v9 = self->_memoryLocalIdentifiersToAvoid;
  v10 = [v7 loggingConnection];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v85 = [(PGUpNextMemoriesGenerationRequest *)self targetUpNextMemoryCount];
    v86 = 2112;
    v87 = *&v8;
    v88 = 2112;
    v89 = v9;
    _os_log_impl(&dword_22F0FC000, v10, OS_LOG_TYPE_DEFAULT, "[UpNext] Requesting %lu Up Next memories for memory:(%@), memories to avoid:%@", buf, 0x20u);
  }

  v71 = v9;
  v11 = [v7 loggingConnection];
  v12 = os_signpost_id_generate(v11);
  v13 = v11;
  v14 = v13;
  v66 = v12 - 1;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "PGUpNextMemoriesGenerationRequest", "", buf, 2u);
  }

  spid = v12;
  v73 = v14;

  info = 0;
  mach_timebase_info(&info);
  v65 = mach_absolute_time();
  v15 = [v7 loggingConnection];
  v16 = os_signpost_id_generate(v15);
  v17 = v15;
  v18 = v17;
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v18, OS_SIGNPOST_INTERVAL_BEGIN, v16, "PGUpNextMemoriesGenerationSetup", "", buf, 2u);
  }

  v82 = 0;
  mach_timebase_info(&v82);
  v19 = mach_absolute_time();
  v20 = [v7 photoLibrary];
  if (!v8)
  {
    v70 = 0;
    goto LABEL_14;
  }

  v70 = [(PGUpNextMemoriesGenerationRequest *)self _fetchRootMemoryWithPhotoLibrary:v20];
  if (v70)
  {
LABEL_14:
    v72 = [(PGUpNextMemoriesGenerationRequest *)self localMemoriesByUniqueMemoryIdentifiersWithWorkingContext:v7];
    if ([v72 count])
    {
      v63 = v8;
      v25 = v20;
      v26 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v27 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v78[0] = MEMORY[0x277D85DD0];
      v78[1] = 3221225472;
      v78[2] = __110__PGUpNextMemoriesGenerationRequest_fetchMemoryLocalIdentifiersWithWorkingContext_musicCurationOptions_error___block_invoke;
      v78[3] = &unk_278884008;
      v69 = v26;
      v79 = v69;
      v67 = v25;
      v60 = v25;
      v80 = v60;
      v28 = v27;
      v81 = v28;
      [(PGUpNextMemoriesGenerationRequest *)self _enumerateMemoriesToAvoidWithWorkingContext:v7 usingBlock:v78];
      v29 = [PGUpNextMemoriesAggregator alloc];
      v30 = objc_alloc_init(MEMORY[0x277CBEB98]);
      v62 = v28;
      v68 = [(PGUpNextMemoriesAggregator *)v29 initWithLowercaseTitles:v30 keyAssetLocalIdentifiers:v28 gateOnUserFeedback:1 loggingConnection:v10];

      v31 = mach_absolute_time();
      numer = v82.numer;
      denom = v82.denom;
      v34 = v18;
      v35 = v34;
      if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v34))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v35, OS_SIGNPOST_INTERVAL_END, v16, "PGUpNextMemoriesGenerationSetup", "", buf, 2u);
      }

      v24 = v73;
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v85 = "PGUpNextMemoriesGenerationSetup";
        v86 = 2048;
        v87 = ((((v31 - v19) * numer) / denom) / 1000000.0);
        _os_log_impl(&dword_22F0FC000, v35, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
      }

      v77 = 0;
      v21 = v70;
      v36 = [(PGUpNextMemoriesGenerationRequest *)self upNextMemoryLocalIdentifiersWithWorkingContext:v7 rootMemory:v70 localMemoriesByUniqueMemoryIdentifiers:v72 uniqueMemoryIdentifiersOfMemoriesToAvoid:v69 aggregator:v68 debugInfo:&v77 error:a5];
      v61 = v77;
      v8 = v63;
      if (v36)
      {
        v20 = v67;
        if ([v36 count])
        {
          if ([v75 shouldCurateUpNextMemories])
          {
            v37 = [v7 loggingConnection];
            v38 = os_signpost_id_generate(v37);
            v39 = v37;
            v40 = v39;
            if (v38 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v39))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_22F0FC000, v40, OS_SIGNPOST_INTERVAL_BEGIN, v38, "PGUpNextMemoriesGenerationMusicCuration", "", buf, 2u);
            }

            v76 = 0;
            mach_timebase_info(&v76);
            v59 = mach_absolute_time();
            v41 = [[PGUpNextMusicCurator alloc] initWithLoggingConnection:v10];
            if (![(PGUpNextMusicCurator *)v41 curateMusicForUpNextMemoriesWithLocalIdentifiers:v36 musicCurationOptions:v75 photoLibrary:v60 managerContext:v7 error:a5])
            {
              if (a5)
              {
                v42 = [*a5 description];
              }

              else
              {
                v42 = @"no error";
              }

              if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v85 = v42;
                v86 = 2112;
                v87 = *&v36;
                _os_log_error_impl(&dword_22F0FC000, v10, OS_LOG_TYPE_ERROR, "[UpNext] Music curation failed (%@) for Up Next memories: %@", buf, 0x16u);
              }
            }

            v47 = mach_absolute_time();
            v49 = v76.numer;
            v48 = v76.denom;
            v50 = v40;
            v51 = v50;
            if (v38 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v50))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_22F0FC000, v51, OS_SIGNPOST_INTERVAL_END, v38, "PGUpNextMemoriesGenerationMusicCuration", "", buf, 2u);
            }

            v24 = v73;
            if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
            {
              *buf = 136315394;
              v85 = "PGUpNextMemoriesGenerationMusicCuration";
              v86 = 2048;
              v87 = ((((v47 - v59) * v49) / v48) / 1000000.0);
              _os_log_impl(&dword_22F0FC000, v51, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
            }

            v21 = v70;
          }

          v52 = mach_absolute_time();
          v54 = info.numer;
          v53 = info.denom;
          v55 = v24;
          v56 = v55;
          if (v66 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v55))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_22F0FC000, v56, OS_SIGNPOST_INTERVAL_END, spid, "PGUpNextMemoriesGenerationRequest", "", buf, 2u);
          }

          if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            v85 = "PGUpNextMemoriesGenerationRequest";
            v86 = 2048;
            v87 = ((((v52 - v65) * v54) / v53) / 1000000.0);
            _os_log_impl(&dword_22F0FC000, v56, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
          }

          v43 = v18;
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v85 = v36;
            _os_log_impl(&dword_22F0FC000, v10, OS_LOG_TYPE_DEFAULT, "[UpNext] Result Up Next memories: %@", buf, 0xCu);
          }

          v44 = v10;
          v45 = v61;
          v22 = [[PGUpNextMemoriesGenerationResult alloc] initWithMemoryLocalIdentifiers:v36 debugInfo:v61];
          v20 = v67;
        }

        else
        {
          v43 = v18;
          v44 = v10;
          if (a5)
          {
            v45 = v61;
            v46 = [MEMORY[0x277CCACA8] stringWithFormat:@"[UpNext] Could not find up next memories for memory with local identifier (%@), debug info (%@)", v63, v61];
            *a5 = [objc_opt_class() _requestErrorWithCode:2 description:v46];

            v20 = v67;
            v22 = 0;
          }

          else
          {
            v22 = 0;
            v45 = v61;
          }
        }
      }

      else
      {
        v43 = v18;
        v44 = v10;
        v22 = 0;
        v20 = v67;
        v45 = v61;
      }

      v23 = v71;
      v10 = v44;
      v18 = v43;
    }

    else
    {
      if (a5)
      {
        [objc_opt_class() _requestErrorWithCode:1 description:@"[UpNext] Could not find any local memories"];
        *a5 = v22 = 0;
      }

      else
      {
        v22 = 0;
      }

      v21 = v70;
      v23 = v71;
      v24 = v73;
    }

    goto LABEL_58;
  }

  if (!a5)
  {
    v22 = 0;
    v23 = v71;
    v24 = v73;
    goto LABEL_59;
  }

  v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"[UpNext] Could not find root memory with local identifier (%@)", v8];
  [objc_opt_class() _requestErrorWithCode:1 description:v21];
  *a5 = v22 = 0;
  v23 = v71;
  v24 = v73;
LABEL_58:

LABEL_59:
  v57 = *MEMORY[0x277D85DE8];

  return v22;
}

void __110__PGUpNextMemoriesGenerationRequest_fetchMemoryLocalIdentifiersWithWorkingContext_musicCurationOptions_error___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v9 = [v3 graphMemoryIdentifier];
  if (v9)
  {
    [a1[4] addObject:v9];
  }

  v4 = MEMORY[0x277CD97A8];
  v5 = [a1[5] librarySpecificFetchOptions];
  v6 = [v4 fetchKeyCuratedAssetInAssetCollection:v3 referenceAsset:0 options:v5];

  v7 = [v6 firstObject];
  v8 = [v7 localIdentifier];

  if (v8)
  {
    [a1[6] addObject:v8];
  }
}

- (PGUpNextMemoriesGenerationRequest)initWithRootMemoryLocalIdentifier:(id)a3 momentUUIDs:(id)a4 memoryLocalIdentifiersToAvoid:(id)a5 targetUpNextMemoryCount:(unint64_t)a6 customVectors:(id)a7 wantsVerboseDebugInfo:(BOOL)a8 sharingFilter:(unsigned __int16)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a7;
  v29.receiver = self;
  v29.super_class = PGUpNextMemoriesGenerationRequest;
  v19 = [(PGUpNextMemoriesGenerationRequest *)&v29 init];
  if (v19)
  {
    v20 = [v15 copy];
    rootMemoryLocalIdentifier = v19->_rootMemoryLocalIdentifier;
    v19->_rootMemoryLocalIdentifier = v20;

    v22 = [v16 copy];
    momentUUIDs = v19->_momentUUIDs;
    v19->_momentUUIDs = v22;

    v24 = [v17 copy];
    memoryLocalIdentifiersToAvoid = v19->_memoryLocalIdentifiersToAvoid;
    v19->_memoryLocalIdentifiersToAvoid = v24;

    v19->_targetUpNextMemoryCount = a6;
    v26 = [v18 copy];
    customVectors = v19->_customVectors;
    v19->_customVectors = v26;

    v19->_wantsVerboseDebugInfo = a8;
    v19->_sharingFilter = a9;
  }

  return v19;
}

+ (id)_baseMemoryFetchOptionsWithPhotoLibrary:(id)a3
{
  v3 = [a3 librarySpecificFetchOptions];
  [v3 setWantsIncrementalChangeDetails:0];
  [v3 setIncludeLocalMemories:1];
  [v3 setIncludePendingMemories:1];

  return v3;
}

+ (id)_memoryNodesWithSignificantOverlapWithMomentNodes:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x277D22BF8];
  v5 = [v3 memoryNodes];
  v6 = +[PGGraphMemoryNode momentOfMemory];
  v7 = [v4 adjacencyWithSources:v5 relation:v6 targetsClass:objc_opt_class()];

  v8 = objc_alloc_init(MEMORY[0x277D22BD0]);
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __87__PGUpNextMemoriesGenerationRequest__memoryNodesWithSignificantOverlapWithMomentNodes___block_invoke;
  v18 = &unk_278884080;
  v19 = v3;
  v20 = v8;
  v9 = v8;
  v10 = v3;
  [v7 enumerateTargetsBySourceWithBlock:&v15];
  v11 = [PGGraphMemoryNodeCollection alloc];
  v12 = [v10 graph];
  v13 = [(MAElementCollection *)v11 initWithGraph:v12 elementIdentifiers:v9];

  return v13;
}

void __87__PGUpNextMemoriesGenerationRequest__memoryNodesWithSignificantOverlapWithMomentNodes___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  v6 = [v5 count];
  if ((v6 - 1) / 3uLL >= 2)
  {
    v7 = 2;
  }

  else
  {
    v7 = (v6 - 1) / 3uLL;
  }

  v8 = [v5 collectionByIntersecting:*(a1 + 32)];

  v9 = [v8 count];
  if (v9 > v7)
  {
    v10 = *(a1 + 40);
    v11 = [v12 elementIdentifiers];
    [v10 addIdentifier:{objc_msgSend(v11, "firstElement")}];
  }
}

+ (id)_requestErrorWithCode:(int64_t)a3 description:(id)a4
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCA9B8];
  v12 = *MEMORY[0x277CCA450];
  v13[0] = a4;
  v6 = MEMORY[0x277CBEAC0];
  v7 = a4;
  v8 = [v6 dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [v5 errorWithDomain:@"com.apple.PhotosGraph.PGUpNextErrorDomain" code:a3 userInfo:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)requestWithDictionaryRepresentation:(id)a3 error:(id *)a4
{
  v48 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = *MEMORY[0x277D3B120];
  v8 = [v6 objectForKeyedSubscript:*MEMORY[0x277D3B120]];
  if (v8)
  {
    v9 = *MEMORY[0x277D3B110];
    v10 = [v6 objectForKeyedSubscript:*MEMORY[0x277D3B110]];
    if (!v10)
    {
      if (a4)
      {
        v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ is nil", v9];
        *a4 = [objc_opt_class() _requestErrorWithCode:0 description:v25];
      }

      v24 = 0;
      goto LABEL_38;
    }

    v11 = [v6 objectForKeyedSubscript:*MEMORY[0x277D3B128]];
    if (!v11)
    {
      if (a4)
      {
        v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"[UpNext] %@ is nil", v9];
        *a4 = [objc_opt_class() _requestErrorWithCode:0 description:v26];
      }

      v24 = 0;
      goto LABEL_37;
    }

    v12 = [v6 objectForKeyedSubscript:*MEMORY[0x277D3B108]];
    if (v12)
    {
      v39 = v8;
      v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v12, "count")}];
      v14 = [v12 count];
      if (v14 != *MEMORY[0x277D3B100])
      {
        if (a4)
        {
          v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"[UpNext] Custom vector count mismatch. (Expecting:%lu Received:%lu)", *MEMORY[0x277D3B100], objc_msgSend(v12, "count")];
          *a4 = [objc_opt_class() _requestErrorWithCode:3 description:v30];
        }

        v24 = 0;
LABEL_36:

LABEL_37:
LABEL_38:

        goto LABEL_39;
      }

      v37 = v10;
      v41 = v11;
      v42 = v12;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v15 = v12;
      v16 = [v15 countByEnumeratingWithState:&v43 objects:v47 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v44;
        v19 = *MEMORY[0x277D3B0F8];
        while (2)
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v44 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v21 = *(*(&v43 + 1) + 8 * i);
            if ([v21 count] != v19)
            {
              if (a4)
              {
                v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"[UpNext] Vector feature count mismatch. (Expecting:%lu Received:%lu)", v19, objc_msgSend(v21, "count")];
                *a4 = [objc_opt_class() _requestErrorWithCode:3 description:v31];
              }

              v24 = 0;
              v10 = v37;
              v8 = v39;
              v11 = v41;
              goto LABEL_35;
            }

            v22 = [objc_alloc(MEMORY[0x277D22C40]) initWithArray:v21];
            [v13 addObject:v22];
          }

          v17 = [v15 countByEnumeratingWithState:&v43 objects:v47 count:16];
          if (v17)
          {
            continue;
          }

          break;
        }
      }

      v10 = v37;
      v8 = v39;
      v12 = v42;
    }

    else
    {
      v41 = v11;
      v13 = 0;
    }

    v40 = [v6 objectForKeyedSubscript:*MEMORY[0x277D3B130]];
    v27 = *MEMORY[0x277D3B118];
    v28 = [v6 objectForKey:*MEMORY[0x277D3B118]];

    v42 = v12;
    if (v28)
    {
      v29 = [v6 objectForKeyedSubscript:v27];
    }

    else
    {
      v29 = &unk_284483D68;
    }

    v38 = [v29 unsignedShortValue];
    v32 = [a1 alloc];
    v33 = [MEMORY[0x277CBEB98] setWithArray:v10];
    v11 = v41;
    LOWORD(v36) = v38;
    v24 = [v32 initWithRootMemoryLocalIdentifier:v8 momentUUIDs:0 memoryLocalIdentifiersToAvoid:v33 targetUpNextMemoryCount:objc_msgSend(v41 customVectors:"unsignedIntegerValue") wantsVerboseDebugInfo:v13 sharingFilter:{objc_msgSend(v40, "BOOLValue"), v36}];

LABEL_35:
    v12 = v42;
    goto LABEL_36;
  }

  if (a4)
  {
    v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ is nil", v7];
    *a4 = [objc_opt_class() _requestErrorWithCode:0 description:v23];
  }

  v24 = 0;
LABEL_39:

  v34 = *MEMORY[0x277D85DE8];

  return v24;
}

@end