@interface PGGraphIngestMemoryProcessor
+ (id)memoryCategoriesWithGraphUpdate:(id)update;
+ (void)regenerateMemoriesOfCategory:(unint64_t)category withGraphBuilder:(id)builder progressReporter:(id)reporter;
- (BOOL)shouldRunWithGraphUpdate:(id)update;
- (PGGraphIngestMemoryProcessor)initWithGraphBuilder:(id)builder;
- (id)existingMemoryNodeByUniqueMemoryIdentifierWithGraph:(id)graph;
- (id)insertMemoriesForCategories:(id)categories processingWindow:(id)window loggingConnection:(id)connection progressBlock:(id)block;
- (id)memoryGeneratorsForMemoryCategory:(unint64_t)category memoryGenerationContext:(id)context controller:(id)controller;
- (id)momentNodesByMemoryNodeAdjancyWithGraph:(id)graph;
- (void)deleteWithMemoryCategories:(id)categories;
- (void)insertProcessorDependentMomentFeaturesForMomentNodes:(id)nodes featureProvider:(id)provider progressBlock:(id)block;
- (void)resetMemoryNodesWithMemoryUniqueIdentifiers:(id)identifiers loggingConnection:(id)connection;
- (void)runWithGraphUpdate:(id)update progressBlock:(id)block;
@end

@implementation PGGraphIngestMemoryProcessor

- (id)memoryGeneratorsForMemoryCategory:(unint64_t)category memoryGenerationContext:(id)context controller:(id)controller
{
  v64 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v9 = 1;
  switch(category)
  {
    case 0uLL:
      v10 = [[PGYearInReviewMemoryGenerator alloc] initWithMemoryGenerationContext:contextCopy];
      [v8 addObject:v10];

      v9 = 0;
      goto LABEL_3;
    case 1uLL:
      v51 = PGSingleMomentMemoryGenerator;
      goto LABEL_38;
    case 3uLL:
      v52 = [[PGPersonMemoryGenerator alloc] initWithMemoryGenerationContext:contextCopy];
      [v8 addObject:v52];
      v53 = PGMePersonMemoryGenerator;
      goto LABEL_29;
    case 4uLL:
      v52 = [(PGMemoryGenerator *)[PGEarlyMomentsWithPeopleMemoryGenerator alloc] initWithMemoryGenerationContext:contextCopy];
      [(PGPersonMemoryGenerator *)v52 setShouldGenerateAllMemories:1];
      goto LABEL_39;
    case 6uLL:
      v51 = PGSocialGroupMemoryGenerator;
      goto LABEL_38;
    case 8uLL:
      v51 = PGYearInReviewMemoryGenerator;
      goto LABEL_38;
    case 9uLL:
LABEL_3:
      v11 = [[PGFoodieMemoryGenerator alloc] initWithMemoryGenerationContext:contextCopy];
      [v8 addObject:v11];

      v12 = [[PGPersonFoodieMemoryGenerator alloc] initWithMemoryGenerationContext:contextCopy];
      [v8 addObject:v12];

      v13 = [(PGFoodieMemoryGenerator *)[PGRestaurantFoodieMemoryGenerator alloc] initWithMemoryGenerationContext:contextCopy];
      [v8 addObject:v13];

      v14 = [(PGFoodieMemoryGenerator *)[PGHomeFoodieMemoryGenerator alloc] initWithMemoryGenerationContext:contextCopy];
      [v8 addObject:v14];

      v15 = [(PGFoodieMemoryGenerator *)[PGCityFoodieMemoryGenerator alloc] initWithMemoryGenerationContext:contextCopy];
      [v8 addObject:v15];

      v16 = [(PGMemoryGenerator *)[PGTripFoodieMemoryGenerator alloc] initWithMemoryGenerationContext:contextCopy];
      [v8 addObject:v16];

      if (v9)
      {
        goto LABEL_41;
      }

      v17 = [[PGMyPetMemoryGenerator alloc] initWithMemoryGenerationContext:contextCopy];
      [v8 addObject:v17];
      v18 = [[PGMyPetAndPersonMemoryGenerator alloc] initWithMemoryGenerationContext:contextCopy];
      [v8 addObject:v18];

      v19 = [[PGMyPetOutdoorMemoryGenerator alloc] initWithMemoryGenerationContext:contextCopy];
      [v8 addObject:v19];

      v20 = [[PGPersonMemoryGenerator alloc] initWithMemoryGenerationContext:contextCopy];
      [v8 addObject:v20];
      v21 = [[PGMePersonMemoryGenerator alloc] initWithMemoryGenerationContext:contextCopy];
      [v8 addObject:v21];

      v22 = [(PGMemoryGenerator *)[PGEarlyMomentsWithPeopleMemoryGenerator alloc] initWithMemoryGenerationContext:contextCopy];
      [(PGEarlyMomentsWithPeopleMemoryGenerator *)v22 setShouldGenerateAllMemories:1];
      [v8 addObject:v22];

      v23 = [[PGPlaceLocationMemoryGenerator alloc] initWithMemoryGenerationContext:contextCopy];
      [v8 addObject:v23];

      v24 = [[PGPlaceRegionMemoryGenerator alloc] initWithMemoryGenerationContext:contextCopy];
      [v8 addObject:v24];

      v25 = [(PGMemoryGenerator *)[PGMeaningfulEventMemoryGenerator alloc] initWithMemoryGenerationContext:contextCopy];
      [v8 addObject:v25];

      v9 = 0;
      goto LABEL_5;
    case 0xAuLL:
      v52 = [[PGMyPetMemoryGenerator alloc] initWithMemoryGenerationContext:contextCopy];
      [v8 addObject:v52];
      v53 = PGMyPetAndPersonMemoryGenerator;
LABEL_29:
      v54 = [[v53 alloc] initWithMemoryGenerationContext:contextCopy];
      [v8 addObject:v54];

      goto LABEL_40;
    case 0xCuLL:
      v51 = PGPlaceLocationMemoryGenerator;
      goto LABEL_38;
    case 0xDuLL:
      v51 = PGPlaceRegionMemoryGenerator;
      goto LABEL_38;
    case 0xEuLL:
      v51 = PGPlaceAreaMemoryGenerator;
      goto LABEL_38;
    case 0x10uLL:
      v51 = PGMeaningfulEventMemoryGenerator;
      goto LABEL_38;
    case 0x11uLL:
LABEL_5:
      v26 = +[PGMeaningAggregationMemoryGenerator allMeaningAggregationMemoryGeneratorClasses];
      v59 = 0u;
      v60 = 0u;
      v61 = 0u;
      v62 = 0u;
      v27 = [v26 countByEnumeratingWithState:&v59 objects:v63 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v60;
        do
        {
          for (i = 0; i != v28; ++i)
          {
            if (*v60 != v29)
            {
              objc_enumerationMutation(v26);
            }

            v31 = [objc_alloc(*(*(&v59 + 1) + 8 * i)) initWithMemoryGenerationContext:contextCopy];
            [v8 addObject:v31];
          }

          v28 = [v26 countByEnumeratingWithState:&v59 objects:v63 count:16];
        }

        while (v28);
      }

      if (v9)
      {
        goto LABEL_41;
      }

      v32 = [[PGSocialGroupMemoryGenerator alloc] initWithMemoryGenerationContext:contextCopy];
      [v8 addObject:v32];

      v33 = [(PGMemoryGenerator *)[PGRecurrentTripMemoryGenerator alloc] initWithMemoryGenerationContext:contextCopy];
      [v8 addObject:v33];

      v34 = [(PGMemoryGenerator *)[PGTripMemoryGenerator alloc] initWithMemoryGenerationContext:contextCopy];
      [v8 addObject:v34];

      v35 = [(PGMemoryGenerator *)[PGOngoingTripMemoryGenerator alloc] initWithMemoryGenerationContext:contextCopy];
      [v8 addObject:v35];

      v36 = [(PGMemoryGenerator *)[PGPastSupersetMemoryGenerator alloc] initWithMemoryGenerationContext:contextCopy];
      [(PGPastSupersetMemoryGenerator *)v36 setLocalDate:self->_localDate];
      [v8 addObject:v36];

      v37 = [(PGMemoryGenerator *)[PGSingleMomentMemoryGenerator alloc] initWithMemoryGenerationContext:contextCopy];
      [v8 addObject:v37];

      v38 = [[PGSeasonMemoryGenerator alloc] initWithMemoryGenerationContext:contextCopy];
      [v8 addObject:v38];

      v39 = [[PGPlaceAreaMemoryGenerator alloc] initWithMemoryGenerationContext:contextCopy];
      [v8 addObject:v39];

      v40 = [[PGChildActivityMemoryGenerator alloc] initWithMemoryGenerationContext:contextCopy];
      [v8 addObject:v40];

      v41 = [[PGExcitingMomentsMemoryGenerator alloc] initWithMemoryGenerationContext:contextCopy];
      [v8 addObject:v41];

      v9 = 0;
LABEL_14:
      v42 = +[PGTrendsMemoryGenerator trendsConfigurations];
      v58 = [[PGTrendsMemoryGenerator alloc] initWithMemoryGenerationContext:contextCopy configurations:v42];
      v43 = [[PGPersonTrendsMemoryGenerator alloc] initWithMemoryGenerationContext:contextCopy configurations:v42];
      v44 = [[PGLocationTrendsMemoryGenerator alloc] initWithMemoryGenerationContext:contextCopy configurations:v42];
      [v8 addObject:v58];
      [v8 addObject:v43];
      [v8 addObject:v44];
      v45 = +[PGCLIPTrendsMemoryGenerator CLIPTrendsConfigurations];
      v46 = [[PGCLIPTrendsMemoryGenerator alloc] initWithMemoryGenerationContext:contextCopy configurations:v45];
      v47 = [[PGPersonCLIPTrendsMemoryGenerator alloc] initWithMemoryGenerationContext:contextCopy configurations:v45];
      v48 = [[PGLocationCLIPTrendsMemoryGenerator alloc] initWithMemoryGenerationContext:contextCopy configurations:v45];
      [v8 addObject:v46];
      [v8 addObject:v47];
      [v8 addObject:v48];

      if ((v9 & 1) == 0)
      {
        v49 = [[PGChildAndPersonMemoryGenerator alloc] initWithMemoryGenerationContext:contextCopy];
        [v8 addObject:v49];

        v50 = [[PGChildOutdoorMemoryGenerator alloc] initWithMemoryGenerationContext:contextCopy];
        [v8 addObject:v50];

LABEL_16:
        v51 = PGDayInHistoryAggregationMemoryGenerator;
LABEL_38:
        v52 = [[v51 alloc] initWithMemoryGenerationContext:contextCopy];
LABEL_39:
        [v8 addObject:v52];
LABEL_40:
      }

LABEL_41:

      v56 = *MEMORY[0x277D85DE8];

      return v8;
    case 0x12uLL:
      v51 = PGRecurrentTripMemoryGenerator;
      goto LABEL_38;
    case 0x13uLL:
      v51 = PGTripMemoryGenerator;
      goto LABEL_38;
    case 0x14uLL:
      v55 = [(PGMemoryGenerator *)[PGPastSupersetMemoryGenerator alloc] initWithMemoryGenerationContext:contextCopy];
      [(PGPastSupersetMemoryGenerator *)v55 setLocalDate:self->_localDate];
      [v8 addObject:v55];

      goto LABEL_41;
    case 0x15uLL:
      v51 = PGSeasonMemoryGenerator;
      goto LABEL_38;
    case 0x17uLL:
      goto LABEL_16;
    case 0x19uLL:
      v51 = PGChildActivityMemoryGenerator;
      goto LABEL_38;
    case 0x1AuLL:
      v51 = PGExcitingMomentsMemoryGenerator;
      goto LABEL_38;
    case 0x1BuLL:
      goto LABEL_14;
    case 0x1CuLL:
      v51 = PGMyPetOutdoorMemoryGenerator;
      goto LABEL_38;
    case 0x1DuLL:
      v51 = PGChildAndPersonMemoryGenerator;
      goto LABEL_38;
    case 0x1EuLL:
      v51 = PGChildOutdoorMemoryGenerator;
      goto LABEL_38;
    case 0x1FuLL:
      v51 = PGOngoingTripMemoryGenerator;
      goto LABEL_38;
    default:
      goto LABEL_41;
  }
}

- (id)momentNodesByMemoryNodeAdjancyWithGraph:(id)graph
{
  momentNodesByMemoryNodeAdjancy = self->_momentNodesByMemoryNodeAdjancy;
  if (!momentNodesByMemoryNodeAdjancy)
  {
    v5 = [(PGGraphNodeCollection *)PGGraphMemoryNodeCollection nodesInGraph:graph];
    v6 = MEMORY[0x277D22BF8];
    v7 = +[PGGraphMemoryNode momentOfMemory];
    v8 = objc_opt_self();
    v9 = [v6 adjacencyWithSources:v5 relation:v7 targetsClass:v8];
    v10 = self->_momentNodesByMemoryNodeAdjancy;
    self->_momentNodesByMemoryNodeAdjancy = v9;

    momentNodesByMemoryNodeAdjancy = self->_momentNodesByMemoryNodeAdjancy;
  }

  return momentNodesByMemoryNodeAdjancy;
}

- (id)existingMemoryNodeByUniqueMemoryIdentifierWithGraph:(id)graph
{
  existingMemoryNodeByUniqueMemoryIdentifier = self->_existingMemoryNodeByUniqueMemoryIdentifier;
  if (!existingMemoryNodeByUniqueMemoryIdentifier)
  {
    v5 = MEMORY[0x277CBEB38];
    graphCopy = graph;
    dictionary = [v5 dictionary];
    v8 = self->_existingMemoryNodeByUniqueMemoryIdentifier;
    self->_existingMemoryNodeByUniqueMemoryIdentifier = dictionary;

    v9 = [(PGGraphNodeCollection *)PGGraphMemoryNodeCollection nodesInGraph:graphCopy];

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __84__PGGraphIngestMemoryProcessor_existingMemoryNodeByUniqueMemoryIdentifierWithGraph___block_invoke;
    v11[3] = &unk_2788822E0;
    v11[4] = self;
    [v9 enumerateNodesUsingBlock:v11];

    existingMemoryNodeByUniqueMemoryIdentifier = self->_existingMemoryNodeByUniqueMemoryIdentifier;
  }

  return existingMemoryNodeByUniqueMemoryIdentifier;
}

void __84__PGGraphIngestMemoryProcessor_existingMemoryNodeByUniqueMemoryIdentifierWithGraph___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 uniqueMemoryIdentifier];
  v5 = [*(*(a1 + 32) + 24) objectForKeyedSubscript:v4];
  v6 = *(a1 + 32);
  if (v5)
  {
    v7 = [*(v6 + 8) loggingConnection];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412802;
      v10 = v4;
      v11 = 2112;
      v12 = v5;
      v13 = 2112;
      v14 = v3;
      _os_log_error_impl(&dword_22F0FC000, v7, OS_LOG_TYPE_ERROR, "Two memory nodes have the same unique identifier %@: %@, %@\n", &v9, 0x20u);
    }
  }

  else
  {
    [*(v6 + 24) setObject:v3 forKeyedSubscript:v4];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)insertMemoriesForCategories:(id)categories processingWindow:(id)window loggingConnection:(id)connection progressBlock:(id)block
{
  v196 = *MEMORY[0x277D85DE8];
  categoriesCopy = categories;
  windowCopy = window;
  connectionCopy = connection;
  aBlock = block;
  v10 = connectionCopy;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = [categoriesCopy count];
    _os_log_impl(&dword_22F0FC000, v10, OS_LOG_TYPE_DEFAULT, "[PGGraphIngestMemoryProcessor] Starting to insert memories for %d categories", buf, 8u);
  }

  v110 = v10;

  graph = [(PGGraphBuilder *)self->_graphBuilder graph];
  if (!windowCopy)
  {
    [(PGGraphIngestMemoryProcessor *)self deleteWithMemoryCategories:categoriesCopy];
  }

  v115 = self->_memoryController;
  v11 = [PGMemoryGenerationContext alloc];
  photoLibrary = [(PGMemoryController *)v115 photoLibrary];
  curationContext = [(PGGraphBuilder *)self->_graphBuilder curationContext];
  userFeedbackCalculator = [curationContext userFeedbackCalculator];
  serviceManager = [(PGGraphBuilder *)self->_graphBuilder serviceManager];
  v114 = [(PGMemoryGenerationContext *)v11 initWithPhotoLibrary:photoLibrary userFeedbackCalculator:userFeedbackCalculator graph:graph serviceManager:serviceManager loggingConnection:v110];

  [(PGMemoryController *)v115 setMemoryGenerationContext:v114];
  v111 = _Block_copy(aBlock);
  v119 = [MEMORY[0x277CBEB98] set];
  *buf = 0;
  v193 = buf;
  v194 = 0x2020000000;
  v195 = 0;
  v180 = 0;
  v181 = &v180;
  v182 = 0x2020000000;
  v183 = 0;
  if (v111 && (v16 = CFAbsoluteTimeGetCurrent(), v16 - v181[3] >= 0.01) && (v181[3] = v16, LOBYTE(info.numer) = 0, (*(v111 + 2))(v111, &info, 0.0), v17 = v193[24] | LOBYTE(info.numer), v193[24] = v17, (v17 & 1) != 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *v186 = 67109378;
      *v187 = 300;
      *&v187[4] = 2080;
      *&v187[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestMemoryProcessor.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v186, 0x12u);
    }

    v18 = v119;
  }

  else
  {
    v19 = v110;
    v20 = os_signpost_id_generate(v19);
    v21 = v19;
    v22 = v21;
    v104 = v20 - 1;
    spid = v20;
    if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
    {
      *v186 = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v22, OS_SIGNPOST_INTERVAL_BEGIN, v20, "InsertMemories", "", v186, 2u);
    }

    oslog = v22;

    info = 0;
    mach_timebase_info(&info);
    v103 = mach_absolute_time();
    v23 = MEMORY[0x277D22C80];
    v174[0] = MEMORY[0x277D85DD0];
    v174[1] = 3221225472;
    v174[2] = __109__PGGraphIngestMemoryProcessor_insertMemoriesForCategories_processingWindow_loggingConnection_progressBlock___block_invoke;
    v174[3] = &unk_27888A188;
    v122 = v111;
    v175 = v122;
    v176 = &v180;
    v178 = 0x3F847AE147AE147BLL;
    v177 = buf;
    v106 = [v23 progressReporterWithProgressBlock:v174];
    momentNodesWithBlockedFeatureCache = [(PGMemoryGenerationContext *)v114 momentNodesWithBlockedFeatureCache];
    [momentNodesWithBlockedFeatureCache prefetchMomentNodesWithBlockedFeatureIfNeededInGraph:graph progressReporter:v106];

    if (v193[24] == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *v186 = 67109378;
        *v187 = 308;
        *&v187[4] = 2080;
        *&v187[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestMemoryProcessor.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v186, 0x12u);
      }

      v18 = v119;
    }

    else
    {
      v25 = [MEMORY[0x277CBEB58] set];
      v172 = 0u;
      v173 = 0u;
      v170 = 0u;
      v171 = 0u;
      obj = categoriesCopy;
      v26 = [obj countByEnumeratingWithState:&v170 objects:v191 count:16];
      v143 = v25;
      if (v26)
      {
        v113 = *v171;
        while (2)
        {
          v118 = 0;
          v112 = v26;
          do
          {
            if (*v171 != v113)
            {
              objc_enumerationMutation(obj);
            }

            v27 = *(*(&v170 + 1) + 8 * v118);
            context = objc_autoreleasePoolPush();
            unsignedIntValue = [v27 unsignedIntValue];
            v121 = [MEMORY[0x277CD98D8] stringForCategory:unsignedIntValue];
            if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
            {
              *v186 = 138412290;
              *v187 = v121;
              _os_log_impl(&dword_22F0FC000, oslog, OS_LOG_TYPE_DEFAULT, "[PGGraphIngestMemoryProcessor] Starting to insert memories for category %@", v186, 0xCu);
            }

            v117 = [(PGGraphIngestMemoryProcessor *)self memoryGeneratorsForMemoryCategory:unsignedIntValue memoryGenerationContext:v114 controller:v115];
            v29 = [v117 count];
            if (v29)
            {
              v168 = 0u;
              v169 = 0u;
              v166 = 0u;
              v167 = 0u;
              v120 = v117;
              v30 = oslog;
              v124 = [v120 countByEnumeratingWithState:&v166 objects:v190 count:16];
              if (v124)
              {
                v31 = 0.9 / v29;
                v123 = *v167;
                v32 = 0.1;
                while (2)
                {
                  for (i = 0; i != v124; ++i)
                  {
                    if (*v167 != v123)
                    {
                      objc_enumerationMutation(v120);
                    }

                    v130 = *(*(&v166 + 1) + 8 * i);
                    v33 = v30;
                    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
                    {
                      v34 = objc_opt_class();
                      v35 = NSStringFromClass(v34);
                      *v186 = 138412546;
                      *v187 = v35;
                      *&v187[8] = 2112;
                      *&v187[10] = v121;
                      _os_log_impl(&dword_22F0FC000, v33, OS_LOG_TYPE_INFO, "[PGGraphIngestMemoryProcessor] Starting to generate memories with %@ for category %@", v186, 0x16u);
                    }

                    v36 = v33;
                    v37 = os_signpost_id_generate(v36);
                    v38 = v36;
                    v39 = v38;
                    if (v37 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v38))
                    {
                      *v186 = 0;
                      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v39, OS_SIGNPOST_INTERVAL_BEGIN, v37, "MemoryGeneration", "", v186, 2u);
                    }

                    v165 = 0;
                    mach_timebase_info(&v165);
                    v40 = mach_absolute_time();
                    v158[0] = MEMORY[0x277D85DD0];
                    v158[1] = 3221225472;
                    v158[2] = __109__PGGraphIngestMemoryProcessor_insertMemoriesForCategories_processingWindow_loggingConnection_progressBlock___block_invoke_295;
                    v158[3] = &unk_278886858;
                    v162 = v32;
                    v163 = v31;
                    v159 = v122;
                    v160 = &v180;
                    v164 = 0x3F847AE147AE147BLL;
                    v161 = buf;
                    v129 = [v130 generatePotentialMemoriesForProcessingWindow:windowCopy graph:graph progressBlock:v158];
                    v41 = mach_absolute_time();
                    v42 = v165;
                    v43 = v39;
                    v44 = v43;
                    if (v37 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v43))
                    {
                      v45 = objc_opt_class();
                      v46 = NSStringFromClass(v45);
                      *v186 = 138412290;
                      *v187 = v46;
                      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v44, OS_SIGNPOST_INTERVAL_END, v37, "MemoryGeneration", "Memory Generator: %@", v186, 0xCu);
                    }

                    log = v44;
                    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
                    {
                      v47 = MEMORY[0x277CCACA8];
                      v48 = objc_opt_class();
                      v49 = NSStringFromClass(v48);
                      v50 = [v47 stringWithFormat:@"Memory Generator: %@", v49];
                      *v186 = 136315650;
                      *v187 = "MemoryGeneration";
                      *&v187[8] = 2112;
                      *&v187[10] = v50;
                      v188 = 2048;
                      v189 = ((((v41 - v40) * v42.numer) / v42.denom) / 1000000.0);
                      _os_log_impl(&dword_22F0FC000, log, OS_LOG_TYPE_INFO, "[Performance] %s - %@: %f ms", v186, 0x20u);
                    }

                    v126 = v193[24];
                    if (v126 == 1)
                    {
                      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                      {
                        *v186 = 67109378;
                        *v187 = 334;
                        *&v187[4] = 2080;
                        *&v187[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestMemoryProcessor.m";
                        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v186, 0x12u);
                      }

                      v51 = v119;
                    }

                    else
                    {
                      v135 = log;
                      if (os_log_type_enabled(v135, OS_LOG_TYPE_DEFAULT))
                      {
                        v52 = objc_opt_class();
                        v53 = NSStringFromClass(v52);
                        v54 = [v129 count];
                        *v186 = 138412546;
                        *v187 = v53;
                        *&v187[8] = 1024;
                        *&v187[10] = v54;
                        _os_log_impl(&dword_22F0FC000, v135, OS_LOG_TYPE_DEFAULT, "[PGGraphIngestMemoryProcessor] %@ generated %d potential Memories", v186, 0x12u);
                      }

                      v142 = objc_alloc_init(MEMORY[0x277D22C50]);
                      v139 = objc_alloc_init(MEMORY[0x277CBEB58]);
                      v133 = objc_alloc_init(MEMORY[0x277CBEB18]);
                      v132 = objc_alloc_init(MEMORY[0x277CBEB18]);
                      if (windowCopy)
                      {
                        v137 = [(PGGraphIngestMemoryProcessor *)self existingMemoryNodeByUniqueMemoryIdentifierWithGraph:graph];
                        v134 = [(PGGraphIngestMemoryProcessor *)self momentNodesByMemoryNodeAdjancyWithGraph:graph];
                        v156 = 0u;
                        v157 = 0u;
                        v154 = 0u;
                        v155 = 0u;
                        v136 = v129;
                        v55 = [v136 countByEnumeratingWithState:&v154 objects:v185 count:16];
                        if (v55)
                        {
                          v138 = *v155;
                          do
                          {
                            for (j = 0; j != v55; ++j)
                            {
                              if (*v155 != v138)
                              {
                                objc_enumerationMutation(v136);
                              }

                              v57 = *(*(&v154 + 1) + 8 * j);
                              memoryCategory = [v57 memoryCategory];
                              v59 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:memoryCategory];
                              [v139 addObject:v59];

                              v60 = [v57 memoryFeatureNodesInGraph:graph];
                              if ([v60 count])
                              {
                                v61 = [PGGraphBuilder memoryLabelForCategory:memoryCategory];
                                v62 = [PGGraphMemoryNode uniqueMemoryIdentifierWithMemoryLabel:v61 featureNodes:v60];
                                v63 = [v137 objectForKeyedSubscript:v62];
                                v64 = v63;
                                if (v63)
                                {
                                  collection = [v63 collection];
                                  v66 = [v134 targetsForSources:collection];

                                  LODWORD(collection) = [v57 generatedWithFallbackRequirements];
                                  if (collection == [v64 generatedWithFallbackRequirements] && (objc_msgSend(v57, "memoryMomentNodes"), v67 = objc_claimAutoreleasedReturnValue(), v68 = objc_msgSend(v67, "isEqual:", v66), v67, v68))
                                  {
                                    [v132 addObject:v57];
                                    [v143 addObject:v62];
                                  }

                                  else
                                  {
                                    [v133 addObject:v64];
                                  }
                                }
                              }

                              else if (os_log_type_enabled(v135, OS_LOG_TYPE_ERROR))
                              {
                                *v186 = 0;
                                _os_log_error_impl(&dword_22F0FC000, v135, OS_LOG_TYPE_ERROR, "[PGGraphIngestMemoryProcessor] Attempting to insert memory with no feature nodes", v186, 2u);
                              }
                            }

                            v55 = [v136 countByEnumeratingWithState:&v154 objects:v185 count:16];
                          }

                          while (v55);
                        }

                        v69 = v135;
                        if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
                        {
                          v70 = objc_opt_class();
                          v71 = NSStringFromClass(v70);
                          v72 = [v132 count];
                          *&v73 = COERCE_DOUBLE([v133 count]);
                          *v186 = 138412802;
                          *v187 = v71;
                          *&v187[8] = 2048;
                          *&v187[10] = v72;
                          v188 = 2048;
                          v189 = *&v73;
                          _os_log_impl(&dword_22F0FC000, v69, OS_LOG_TYPE_DEFAULT, "[PGGraphIngestMemoryProcessor] %@: %tu potential Memories to skip ingest, %tu memory nodes to remove", v186, 0x20u);
                        }
                      }

                      v74 = [v129 arrayByExcludingObjectsInArray:v132];
                      v152 = 0u;
                      v153 = 0u;
                      v150 = 0u;
                      v151 = 0u;
                      v75 = v74;
                      v76 = [v75 countByEnumeratingWithState:&v150 objects:v184 count:16];
                      if (v76)
                      {
                        v77 = *v151;
                        do
                        {
                          for (k = 0; k != v76; ++k)
                          {
                            if (*v151 != v77)
                            {
                              objc_enumerationMutation(v75);
                            }

                            v79 = [(PGGraphBuilder *)self->_graphBuilder insertMemoryNodeFromMemory:*(*(&v150 + 1) + 8 * k) changeRequest:v142];
                            uniqueMemoryIdentifier = [v79 uniqueMemoryIdentifier];
                            [v143 addObject:uniqueMemoryIdentifier];
                          }

                          v76 = [v75 countByEnumeratingWithState:&v150 objects:v184 count:16];
                        }

                        while (v76);
                      }

                      if (windowCopy)
                      {
                        v81 = [(PGGraphIngestMemoryProcessor *)self existingMemoryNodeByUniqueMemoryIdentifierWithGraph:graph];
                        v82 = objc_alloc_init(MEMORY[0x277CBEB18]);
                        v83 = [(PGGraphIngestMemoryProcessor *)self momentNodesByMemoryNodeAdjancyWithGraph:graph];
                        v144[0] = MEMORY[0x277D85DD0];
                        v144[1] = 3221225472;
                        v144[2] = __109__PGGraphIngestMemoryProcessor_insertMemoriesForCategories_processingWindow_loggingConnection_progressBlock___block_invoke_305;
                        v144[3] = &unk_2788822B8;
                        v145 = v143;
                        v146 = v139;
                        v84 = v83;
                        v147 = v84;
                        v148 = windowCopy;
                        v85 = v82;
                        v149 = v85;
                        [v81 enumerateKeysAndObjectsUsingBlock:v144];
                        [v133 addObjectsFromArray:v85];
                        v86 = v135;
                        if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
                        {
                          v87 = objc_opt_class();
                          v88 = NSStringFromClass(v87);
                          v89 = [v85 count];
                          *v186 = 138412546;
                          *v187 = v88;
                          *&v187[8] = 2048;
                          *&v187[10] = v89;
                          _os_log_impl(&dword_22F0FC000, v86, OS_LOG_TYPE_DEFAULT, "[PGGraphIngestMemoryProcessor] %@: %tu memory nodes to remove (not existing anymore)", v186, 0x16u);
                        }

                        if ([v133 count])
                        {
                          v90 = [objc_alloc(MEMORY[0x277D22C70]) initWithArray:v133 graph:graph];
                          [v142 removeNodes:v90];
                        }
                      }

                      [graph executeGraphChangeRequest:v142];

                      v32 = v31 + v32;
                    }

                    if (v126)
                    {
                      v91 = 1;
                      goto LABEL_90;
                    }

                    v30 = oslog;
                  }

                  v124 = [v120 countByEnumeratingWithState:&v166 objects:v190 count:16];
                  if (v124)
                  {
                    continue;
                  }

                  break;
                }
              }

              v91 = 0;
LABEL_90:
            }

            else
            {
              if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
              {
                *v186 = 134217984;
                *v187 = unsignedIntValue;
                _os_log_error_impl(&dword_22F0FC000, oslog, OS_LOG_TYPE_ERROR, "[PGGraphIngestMemoryProcessor] No memory generators found for memory category %lu", v186, 0xCu);
              }

              v91 = 3;
            }

            objc_autoreleasePoolPop(context);
            if (v91 != 3 && v91)
            {

              v18 = v119;
              v97 = v143;
              goto LABEL_109;
            }

            ++v118;
          }

          while (v118 != v112);
          v26 = [obj countByEnumeratingWithState:&v170 objects:v191 count:16];
          if (v26)
          {
            continue;
          }

          break;
        }
      }

      v92 = mach_absolute_time();
      numer = info.numer;
      denom = info.denom;
      v95 = oslog;
      v96 = v95;
      if (v104 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v95))
      {
        *v186 = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v96, OS_SIGNPOST_INTERVAL_END, spid, "InsertMemories", "", v186, 2u);
      }

      if (os_log_type_enabled(v96, OS_LOG_TYPE_INFO))
      {
        *v186 = 136315394;
        *v187 = "InsertMemories";
        *&v187[8] = 2048;
        *&v187[10] = ((((v92 - v103) * numer) / denom) / 1000000.0);
        _os_log_impl(&dword_22F0FC000, v96, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", v186, 0x16u);
      }

      v97 = v143;
      if (v111 && (Current = CFAbsoluteTimeGetCurrent(), Current - v181[3] >= 0.01) && (v181[3] = Current, LOBYTE(v165.numer) = 0, (*(v122 + 2))(v122, &v165, 1.0), v99 = v193[24] | LOBYTE(v165.numer), v193[24] = v99, (v99 & 1) != 0))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *v186 = 67109378;
          *v187 = 423;
          *&v187[4] = 2080;
          *&v187[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestMemoryProcessor.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v186, 0x12u);
        }

        v100 = v119;
      }

      else
      {
        v100 = v143;
      }

      v18 = v100;
LABEL_109:
    }
  }

  _Block_object_dispose(&v180, 8);
  _Block_object_dispose(buf, 8);

  v101 = *MEMORY[0x277D85DE8];

  return v18;
}

void __109__PGGraphIngestMemoryProcessor_insertMemoriesForCategories_processingWindow_loggingConnection_progressBlock___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.1);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __109__PGGraphIngestMemoryProcessor_insertMemoriesForCategories_processingWindow_loggingConnection_progressBlock___block_invoke_295(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    v6 = *(a1 + 56);
    v7 = *(a1 + 64);
    Current = CFAbsoluteTimeGetCurrent();
    v9 = *(*(a1 + 40) + 8);
    if (Current - *(v9 + 24) >= *(a1 + 72))
    {
      *(v9 + 24) = Current;
      (*(*(a1 + 32) + 16))(v6 + a3 * v7);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __109__PGGraphIngestMemoryProcessor_insertMemoriesForCategories_processingWindow_loggingConnection_progressBlock___block_invoke_305(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = a3;
  if (([*(a1 + 32) containsObject:a2] & 1) == 0)
  {
    v5 = *(a1 + 40);
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v12, "memoryCategory")}];
    LODWORD(v5) = [v5 containsObject:v6];

    if (v5)
    {
      v7 = *(a1 + 48);
      v8 = [v12 collection];
      v9 = [v7 targetsForSources:v8];

      v10 = [v9 universalDateInterval];
      v11 = [v10 intersectsDateInterval:*(a1 + 56)];

      if (v11)
      {
        [*(a1 + 64) addObject:v12];
      }
    }
  }
}

- (void)resetMemoryNodesWithMemoryUniqueIdentifiers:(id)identifiers loggingConnection:(id)connection
{
  identifiersCopy = identifiers;
  if ([identifiersCopy count])
  {
    photoLibrary = [(PGGraphBuilder *)self->_graphBuilder photoLibrary];
    allObjects = [identifiersCopy allObjects];
    v7 = [PGGraphMemoryProcessorHelper localMemoryByUniqueIdentifierWithGraphMemoryIdentifiers:allObjects inPhotoLibrary:photoLibrary];

    if ([v7 count])
    {
      allValues = [v7 allValues];
      [PGGraphMemoryProcessorHelper resetLocalMemoryLastEnrichmentDateOfMemoriesWithLocalMemories:allValues inPhotoLibrary:photoLibrary];
    }
  }
}

- (void)deleteWithMemoryCategories:(id)categories
{
  v17 = *MEMORY[0x277D85DE8];
  categoriesCopy = categories;
  if ([categoriesCopy containsObject:&unk_284483300])
  {
    [(PGGraphBuilder *)self->_graphBuilder deleteAllMemoryNodesAndEdges];
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x277CCAB58]);
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = categoriesCopy;
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [v5 addIndex:{objc_msgSend(*(*(&v12 + 1) + 8 * v10++), "unsignedIntValue", v12)}];
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }

    [(PGGraphBuilder *)self->_graphBuilder deleteAllMemoryNodesAndEdgesForMemoryCategories:v5];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)insertProcessorDependentMomentFeaturesForMomentNodes:(id)nodes featureProvider:(id)provider progressBlock:(id)block
{
  v47 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  providerCopy = provider;
  blockCopy = block;
  loggingConnection = [(PGGraphBuilder *)self->_graphBuilder loggingConnection];
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v43 = [nodesCopy count];
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "[PGGraphIngestMemoryProcessor] Starting to insert processor-dependent features for %d moments", buf, 8u);
  }

  v11 = 0.0;
  v36 = _Block_copy(blockCopy);
  if (v36)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (Current >= 0.01)
    {
      v41 = 0;
      v36[2](v36, &v41, 0.0);
      if (v41 == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v43 = 158;
          v44 = 2080;
          v45[0] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestMemoryProcessor.m";
          v13 = MEMORY[0x277D86220];
LABEL_29:
          _os_log_impl(&dword_22F0FC000, v13, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          goto LABEL_33;
        }

        goto LABEL_33;
      }

      v11 = Current;
    }
  }

  oslog = loggingConnection;
  v14 = [nodesCopy count];
  v15 = CFAbsoluteTimeGetCurrent();
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v32 = nodesCopy;
  obj = nodesCopy;
  v16 = [obj countByEnumeratingWithState:&v37 objects:v46 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = 0;
    v19 = 1.0 / v14;
    v20 = *v38;
    v21 = 0.0;
    while (2)
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v38 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v37 + 1) + 8 * i);
        v24 = objc_autoreleasePoolPush();
        if (v36)
        {
          v25 = CFAbsoluteTimeGetCurrent();
          if (v25 - v11 >= 0.01)
          {
            v41 = 0;
            v36[2](v36, &v41, v21);
            if (v41)
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                *buf = 67109378;
                v43 = 166;
                v44 = 2080;
                v45[0] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestMemoryProcessor.m";
                _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
              }

              objc_autoreleasePoolPop(v24);

              blockCopy = v31;
              nodesCopy = v32;
              loggingConnection = oslog;
              goto LABEL_33;
            }

            v11 = v25;
          }
        }

        if (25 * (v18 / 0x19) == v18)
        {
          v26 = CFAbsoluteTimeGetCurrent();
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
          {
            *buf = 67109632;
            v43 = v18;
            v44 = 1024;
            LODWORD(v45[0]) = 25;
            WORD2(v45[0]) = 2048;
            *(v45 + 6) = v26 - v15;
            _os_log_debug_impl(&dword_22F0FC000, oslog, OS_LOG_TYPE_DEBUG, "[PGGraphIngestMemoryProcessor] Processed %d moments, batch of %d took %.2f seconds", buf, 0x18u);
          }

          v15 = v26;
        }

        v21 = v19 + v21;
        ++v18;
        graphBuilder = self->_graphBuilder;
        photoLibrary = [(PGGraphBuilder *)graphBuilder photoLibrary];
        curationContext = [(PGGraphBuilder *)self->_graphBuilder curationContext];
        [(PGGraphBuilder *)graphBuilder insertMomentFeaturesForMomentNode:v23 momentEnvelope:0 photoLibrary:photoLibrary featureProvider:providerCopy atMomentIngest:0 curationContext:curationContext];

        objc_autoreleasePoolPop(v24);
      }

      v17 = [obj countByEnumeratingWithState:&v37 objects:v46 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  blockCopy = v31;
  nodesCopy = v32;
  loggingConnection = oslog;
  if (v36)
  {
    if (CFAbsoluteTimeGetCurrent() - v11 >= 0.01)
    {
      v41 = 0;
      v36[2](v36, &v41, 1.0);
      if (v41)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v43 = 179;
          v44 = 2080;
          v45[0] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestMemoryProcessor.m";
          v13 = MEMORY[0x277D86220];
          goto LABEL_29;
        }
      }
    }
  }

LABEL_33:

  v30 = *MEMORY[0x277D85DE8];
}

- (void)runWithGraphUpdate:(id)update progressBlock:(id)block
{
  *(&v66[2] + 4) = *MEMORY[0x277D85DE8];
  updateCopy = update;
  blockCopy = block;
  v61 = 0;
  v62 = &v61;
  v63 = 0x2020000000;
  v64 = 0;
  v57 = 0;
  v58 = &v57;
  v59 = 0x2020000000;
  v60 = 0;
  v38 = _Block_copy(blockCopy);
  if (!v38 || (v7 = CFAbsoluteTimeGetCurrent(), v7 - v58[3] < 0.01) || (v58[3] = v7, LOBYTE(info.numer) = 0, (*(v38 + 2))(v38, &info, 0.0), v8 = *(v62 + 24) | LOBYTE(info.numer), *(v62 + 24) = v8, (v8 & 1) == 0))
  {
    graph = [(PGGraphBuilder *)self->_graphBuilder graph];
    v35 = [objc_opt_class() memoryCategoriesWithGraphUpdate:updateCopy];
    if (updateCopy && ([updateCopy isResumingFullAnalysis] & 1) == 0)
    {
      momentChangesDateInterval = [updateCopy momentChangesDateInterval];
      v9 = 0;
    }

    else
    {
      momentChangesDateInterval = 0;
      v9 = 1;
    }

    [(PGGraphIngestMemoryProcessor *)self insertSingletonFeatureNodes];
    loggingConnection = [(PGGraphBuilder *)self->_graphBuilder loggingConnection];
    v11 = os_signpost_id_generate(loggingConnection);
    v12 = loggingConnection;
    v13 = v12;
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      LOWORD(buf) = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "PGGraphIngestMemoryProcessor", "", &buf, 2u);
    }

    info = 0;
    mach_timebase_info(&info);
    v32 = mach_absolute_time();
    graphBuilder = self->_graphBuilder;
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __65__PGGraphIngestMemoryProcessor_runWithGraphUpdate_progressBlock___block_invoke;
    v51[3] = &unk_27888A188;
    v15 = v38;
    v52 = v15;
    v53 = &v57;
    v54 = &v61;
    v55 = 0x3F847AE147AE147BLL;
    v37 = [(PGGraphBuilder *)graphBuilder featureProviderWithProgressBlock:v51];
    if (*(v62 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        buf = 67109378;
        LODWORD(v66[0]) = 120;
        WORD2(v66[0]) = 2080;
        *(v66 + 6) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestMemoryProcessor.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
      }

      goto LABEL_39;
    }

    insertedMomentNodes = [updateCopy insertedMomentNodes];
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __65__PGGraphIngestMemoryProcessor_runWithGraphUpdate_progressBlock___block_invoke_226;
    v46[3] = &unk_27888A188;
    v17 = v15;
    v47 = v17;
    v48 = &v57;
    v50 = 0x3F847AE147AE147BLL;
    v49 = &v61;
    [(PGGraphIngestMemoryProcessor *)self insertProcessorDependentMomentFeaturesForMomentNodes:insertedMomentNodes featureProvider:v37 progressBlock:v46];

    if (*(v62 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        buf = 67109378;
        LODWORD(v66[0]) = 126;
        WORD2(v66[0]) = 2080;
        *(v66 + 6) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestMemoryProcessor.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
      }

      goto LABEL_38;
    }

    v18 = [v35 count];
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __65__PGGraphIngestMemoryProcessor_runWithGraphUpdate_progressBlock___block_invoke_227;
    v40[3] = &unk_27888A1B0;
    v44 = 0.6 / v18;
    v31 = v17;
    v41 = v31;
    v42 = &v57;
    v45 = 0x3F847AE147AE147BLL;
    v43 = &v61;
    v19 = [(PGGraphIngestMemoryProcessor *)self insertMemoriesForCategories:v35 processingWindow:momentChangesDateInterval loggingConnection:v13 progressBlock:v40];
    if (*(v62 + 24) == 1)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
LABEL_37:

LABEL_38:
LABEL_39:

        goto LABEL_40;
      }

      buf = 67109378;
      LODWORD(v66[0]) = 133;
      WORD2(v66[0]) = 2080;
      *(v66 + 6) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestMemoryProcessor.m";
      v20 = MEMORY[0x277D86220];
    }

    else
    {
      if ((v9 & 1) == 0)
      {
        v21 = [MEMORY[0x277CBEB58] setWithSet:v19];
        if ([updateCopy hasDeletedMomentNodes])
        {
          identifiersForMemoriesRelatedToDeletedMoments = [updateCopy identifiersForMemoriesRelatedToDeletedMoments];
          [v21 unionSet:identifiersForMemoriesRelatedToDeletedMoments];
        }

        [(PGGraphIngestMemoryProcessor *)self resetMemoryNodesWithMemoryUniqueIdentifiers:v21 loggingConnection:v13];
      }

      v23 = mach_absolute_time();
      numer = info.numer;
      denom = info.denom;
      v26 = v13;
      v27 = v26;
      if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
      {
        LOWORD(buf) = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v27, OS_SIGNPOST_INTERVAL_END, v11, "PGGraphIngestMemoryProcessor", "", &buf, 2u);
      }

      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        buf = 136315394;
        v66[0] = "PGGraphIngestMemoryProcessor";
        LOWORD(v66[1]) = 2048;
        *(&v66[1] + 2) = ((((v23 - v32) * numer) / denom) / 1000000.0);
        _os_log_impl(&dword_22F0FC000, v27, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", &buf, 0x16u);
      }

      if (!v38)
      {
        goto LABEL_37;
      }

      Current = CFAbsoluteTimeGetCurrent();
      if (Current - v58[3] < 0.01)
      {
        goto LABEL_37;
      }

      v58[3] = Current;
      v39 = 0;
      (*(v31 + 2))(v31, &v39, 1.0);
      v29 = *(v62 + 24) | v39;
      *(v62 + 24) = v29;
      if ((v29 & 1) == 0 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_37;
      }

      buf = 67109378;
      LODWORD(v66[0]) = 146;
      WORD2(v66[0]) = 2080;
      *(v66 + 6) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestMemoryProcessor.m";
      v20 = MEMORY[0x277D86220];
    }

    _os_log_impl(&dword_22F0FC000, v20, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
    goto LABEL_37;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    buf = 67109378;
    LODWORD(v66[0]) = 97;
    WORD2(v66[0]) = 2080;
    *(v66 + 6) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestMemoryProcessor.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
  }

LABEL_40:
  _Block_object_dispose(&v57, 8);
  _Block_object_dispose(&v61, 8);

  v30 = *MEMORY[0x277D85DE8];
}

void __65__PGGraphIngestMemoryProcessor_runWithGraphUpdate_progressBlock___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.1);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __65__PGGraphIngestMemoryProcessor_runWithGraphUpdate_progressBlock___block_invoke_226(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.3 + 0.1);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __65__PGGraphIngestMemoryProcessor_runWithGraphUpdate_progressBlock___block_invoke_227(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    v6 = *(a1 + 56);
    Current = CFAbsoluteTimeGetCurrent();
    v8 = *(*(a1 + 40) + 8);
    if (Current - *(v8 + 24) >= *(a1 + 64))
    {
      *(v8 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * v6 + 0.1);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

- (BOOL)shouldRunWithGraphUpdate:(id)update
{
  updateCopy = update;
  if ([updateCopy isResumingFullAnalysis])
  {
    hasAnythingToDo = 1;
  }

  else
  {
    hasAnythingToDo = [updateCopy hasAnythingToDo];
  }

  return hasAnythingToDo;
}

- (PGGraphIngestMemoryProcessor)initWithGraphBuilder:(id)builder
{
  builderCopy = builder;
  v17.receiver = self;
  v17.super_class = PGGraphIngestMemoryProcessor;
  v6 = [(PGGraphIngestMemoryProcessor *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_graphBuilder, builder);
    v8 = [PGMemoryController alloc];
    graph = [builderCopy graph];
    photoLibrary = [builderCopy photoLibrary];
    loggingConnection = [builderCopy loggingConnection];
    v12 = [(PGMemoryController *)v8 initWithGraph:graph photoLibrary:photoLibrary loggingConnection:loggingConnection];
    memoryController = v7->_memoryController;
    v7->_memoryController = v12;

    currentLocalDate = [MEMORY[0x277D27690] currentLocalDate];
    localDate = v7->_localDate;
    v7->_localDate = currentLocalDate;
  }

  return v7;
}

+ (void)regenerateMemoriesOfCategory:(unint64_t)category withGraphBuilder:(id)builder progressReporter:(id)reporter
{
  v21[1] = *MEMORY[0x277D85DE8];
  builderCopy = builder;
  reporterCopy = reporter;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2020000000;
  v20 = 0;
  v9 = [[PGGraphIngestMemoryProcessor alloc] initWithGraphBuilder:builderCopy];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:category];
  v21[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
  loggingConnection = [builderCopy loggingConnection];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __95__PGGraphIngestMemoryProcessor_regenerateMemoriesOfCategory_withGraphBuilder_progressReporter___block_invoke;
  v16[3] = &unk_278889448;
  v18 = v19;
  v13 = reporterCopy;
  v17 = v13;
  v14 = [(PGGraphIngestMemoryProcessor *)v9 insertMemoriesForCategories:v11 processingWindow:0 loggingConnection:loggingConnection progressBlock:v16];

  _Block_object_dispose(v19, 8);
  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __95__PGGraphIngestMemoryProcessor_regenerateMemoriesOfCategory_withGraphBuilder_progressReporter___block_invoke(uint64_t a1, _BYTE *a2)
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

+ (id)memoryCategoriesWithGraphUpdate:(id)update
{
  updateCopy = update;
  if ([updateCopy isResumingFullAnalysis])
  {
    array = &unk_2844859E8;
  }

  else if ([updateCopy hasInsertedMomentNodes] & 1) != 0 || (objc_msgSend(updateCopy, "hasDeletedMomentNodes"))
  {
    array = &unk_284485A00;
  }

  else if (([updateCopy momentUpdateTypes] & 0x13) != 0)
  {
    array = &unk_284485A18;
  }

  else
  {
    array = [MEMORY[0x277CBEB18] array];
    if (([updateCopy momentUpdateTypes] & 4) != 0)
    {
      [array addObjectsFromArray:&unk_284485A30];
    }

    if (([updateCopy hasUpdatedPersonNodes] & 1) != 0 || (objc_msgSend(updateCopy, "hasDeletedPersonNodes") & 1) != 0 || (objc_msgSend(updateCopy, "momentUpdateTypes") & 8) != 0)
    {
      [array addObjectsFromArray:&unk_284485A48];
    }

    if (([updateCopy hasInsertedHighlightNodes] & 1) != 0 || (objc_msgSend(updateCopy, "hasUpdatedHighlightNodes") & 1) != 0 || objc_msgSend(updateCopy, "hasDeletedHighlightNodes"))
    {
      [array addObjectsFromArray:&unk_284485A60];
    }
  }

  return array;
}

@end