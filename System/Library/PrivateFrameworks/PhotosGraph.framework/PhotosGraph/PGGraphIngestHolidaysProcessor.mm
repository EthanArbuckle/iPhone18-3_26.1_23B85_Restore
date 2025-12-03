@interface PGGraphIngestHolidaysProcessor
- (BOOL)shouldRunWithGraphUpdate:(id)update;
- (PGGraphIngestHolidaysProcessor)initWithGraphBuilder:(id)builder;
- (void)deleteHolidayEdgesWithMomentNodes:(id)nodes inGraph:(id)graph;
- (void)insertHolidaysBetweenLocalDate:(id)date andLocalDate:(id)localDate graph:(id)graph locale:(id)locale loggingConnection:(id)connection progressBlock:(id)block;
- (void)insertHolidaysWithMomentNodes:(id)nodes graph:(id)graph locale:(id)locale loggingConnection:(id)connection progressBlock:(id)block;
- (void)runWithGraphUpdate:(id)update progressBlock:(id)block;
@end

@implementation PGGraphIngestHolidaysProcessor

- (void)insertHolidaysBetweenLocalDate:(id)date andLocalDate:(id)localDate graph:(id)graph locale:(id)locale loggingConnection:(id)connection progressBlock:(id)block
{
  v57 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  localDateCopy = localDate;
  graphCopy = graph;
  localeCopy = locale;
  connectionCopy = connection;
  blockCopy = block;
  v17 = _Block_copy(blockCopy);
  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v52 = 0;
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0;
  if (!v17 || (v18 = CFAbsoluteTimeGetCurrent(), v18 - v46[3] < 0.01) || (v46[3] = v18, v44 = 0, (*(v17 + 2))(v17, &v44, 0.0), v19 = *(v50 + 24) | v44, *(v50 + 24) = v19, (v19 & 1) == 0))
  {
    infoNode = [graphCopy infoNode];
    v21 = infoNode;
    if (!localeCopy)
    {
      localeCopy = [infoNode locale];
    }

    countryCode = [localeCopy countryCode];
    v23 = [objc_alloc(MEMORY[0x277D276D8]) initWithLocale:localeCopy];
    v24 = [PGGraphIngestHolidayProcessorHelper keyboardLanguageCodesForInfoNode:v21 holidayService:v23];
    [(PGGraphIngestHolidayProcessorHelper *)self->_helper prepareIfNeededWithGraph:graphCopy];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __123__PGGraphIngestHolidaysProcessor_insertHolidaysBetweenLocalDate_andLocalDate_graph_locale_loggingConnection_progressBlock___block_invoke;
    v35[3] = &unk_278884E50;
    v25 = v17;
    v43 = 0x3F847AE147AE147BLL;
    v41 = &v45;
    v42 = &v49;
    v40 = v25;
    v35[4] = self;
    v26 = countryCode;
    v36 = v26;
    v27 = v24;
    v37 = v27;
    v38 = graphCopy;
    v39 = connectionCopy;
    [v23 enumerateEventRulesForAllCountriesBetweenLocalDate:dateCopy andLocalDate:localDateCopy usingBlock:v35];
    if (*(v50 + 24) == 1)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
LABEL_17:

        goto LABEL_18;
      }

      *buf = 67109378;
      v54 = 160;
      v55 = 2080;
      v56 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestHolidaysProcessor.m";
      v28 = MEMORY[0x277D86220];
    }

    else
    {
      if (!v17)
      {
        goto LABEL_17;
      }

      Current = CFAbsoluteTimeGetCurrent();
      if (Current - v46[3] < 0.01)
      {
        goto LABEL_17;
      }

      v46[3] = Current;
      v44 = 0;
      (*(v25 + 2))(v25, &v44, 1.0);
      v30 = *(v50 + 24) | v44;
      *(v50 + 24) = v30;
      if ((v30 & 1) == 0 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_17;
      }

      *buf = 67109378;
      v54 = 161;
      v55 = 2080;
      v56 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestHolidaysProcessor.m";
      v28 = MEMORY[0x277D86220];
    }

    _os_log_impl(&dword_22F0FC000, v28, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    goto LABEL_17;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v54 = 107;
    v55 = 2080;
    v56 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestHolidaysProcessor.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

LABEL_18:
  _Block_object_dispose(&v45, 8);
  _Block_object_dispose(&v49, 8);

  v31 = *MEMORY[0x277D85DE8];
}

void __123__PGGraphIngestHolidaysProcessor_insertHolidaysBetweenLocalDate_andLocalDate_graph_locale_loggingConnection_progressBlock___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v57[2] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = objc_autoreleasePoolPush();
  if (*(a1 + 72) && (Current = CFAbsoluteTimeGetCurrent(), v11 = *(*(a1 + 80) + 8), Current - *(v11 + 24) >= *(a1 + 96)) && (*(v11 + 24) = Current, buf[0] = 0, (*(*(a1 + 72) + 16))(0.5), *(*(*(a1 + 88) + 8) + 24) = *(*(*(a1 + 88) + 8) + 24), *(*(*(a1 + 88) + 8) + 24) == 1))
  {
    *a4 = 1;
  }

  else
  {
    v12 = [*(*(a1 + 32) + 16) momentsCelebratingRule:v7 localDates:v8 userCountryCode:*(a1 + 40) keyboardLanguageCodes:*(a1 + 48) graph:*(a1 + 56) loggingConnection:*(a1 + 64)];
    v13 = v12;
    if (v12)
    {
      v14 = [v12 holidayDateNodes];
      v15 = [v14 count];

      if (v15)
      {
        v56[0] = @"name";
        v16 = [v7 name];
        v56[1] = @"holc";
        v57[0] = v16;
        v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v7, "category")}];
        v57[1] = v17;
        v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:v56 count:2];

        v19 = [*(a1 + 56) addUniqueNodeWithLabel:@"Holiday" domain:401 properties:v18 didCreate:0];
        if (v19)
        {
          v40 = v18;
          v42 = v8;
          v43 = v7;
          v50 = 0u;
          v51 = 0u;
          v48 = 0u;
          v49 = 0u;
          v20 = [v13 holidayDateNodes];
          v21 = [v20 countByEnumeratingWithState:&v48 objects:v53 count:16];
          if (v21)
          {
            v22 = v21;
            v23 = *v49;
            do
            {
              for (i = 0; i != v22; ++i)
              {
                if (*v49 != v23)
                {
                  objc_enumerationMutation(v20);
                }

                v25 = [*(a1 + 56) addUniqueEdgeWithLabel:@"HOLIDAY" sourceNode:*(*(&v48 + 1) + 8 * i) targetNode:v19 domain:401 properties:0];
              }

              v22 = [v20 countByEnumeratingWithState:&v48 objects:v53 count:16];
            }

            while (v22);
          }

          v41 = v9;

          v26 = [v13 positivelyClassifiedMomentNodes];
          v27 = [v26 mutableCopy];

          v28 = [v13 positivelyClassifiedMomentNodes];
          v29 = [v28 count];

          if (v29 >= 3)
          {
            v30 = [v13 negativelyClassifiedMomentNodes];
            [v27 addObjectsFromArray:v30];
          }

          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          v31 = v27;
          v32 = [v31 countByEnumeratingWithState:&v44 objects:v52 count:16];
          if (v32)
          {
            v33 = v32;
            v34 = *v45;
            do
            {
              for (j = 0; j != v33; ++j)
              {
                if (*v45 != v34)
                {
                  objc_enumerationMutation(v31);
                }

                v36 = *(*(&v44 + 1) + 8 * j);
                v37 = [*(a1 + 56) addUniqueEdgeWithLabel:@"CELEBRATING" sourceNode:v36 targetNode:v19 domain:401 properties:0];
                [*(*(a1 + 32) + 8) addMeaningToMeaningfulEventNode:v36 meaningLabel:@"HolidayEvent" meaningIsReliable:1];
              }

              v33 = [v31 countByEnumeratingWithState:&v44 objects:v52 count:16];
            }

            while (v33);
          }

          v8 = v42;
          v7 = v43;
          v18 = v40;
          v9 = v41;
        }

        else
        {
          v38 = *(a1 + 64);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v55 = v18;
            _os_log_error_impl(&dword_22F0FC000, v38, OS_LOG_TYPE_ERROR, "Could not create holiday with properties %@", buf, 0xCu);
          }
        }
      }
    }
  }

  objc_autoreleasePoolPop(v9);

  v39 = *MEMORY[0x277D85DE8];
}

- (void)insertHolidaysWithMomentNodes:(id)nodes graph:(id)graph locale:(id)locale loggingConnection:(id)connection progressBlock:(id)block
{
  graphCopy = graph;
  localeCopy = locale;
  connectionCopy = connection;
  blockCopy = block;
  v15 = [PGGraphMomentNode firstAndLastMomentNodesInMomentNodes:nodes];
  firstObject = [v15 firstObject];
  lastObject = [v15 lastObject];
  v18 = lastObject;
  if (firstObject)
  {
    v19 = lastObject == 0;
  }

  else
  {
    v19 = 1;
  }

  if (!v19)
  {
    v20 = [graphCopy localDatesForMomentNode:firstObject];
    allObjects = [v20 allObjects];

    v21 = [graphCopy localDatesForMomentNode:v18];
    allObjects2 = [v21 allObjects];

    [allObjects sortedArrayUsingSelector:sel_compare_];
    v32 = blockCopy;
    v23 = connectionCopy;
    selfCopy = self;
    v26 = v25 = localeCopy;
    firstObject2 = [v26 firstObject];

    v28 = [allObjects2 sortedArrayUsingSelector:sel_compare_];
    lastObject2 = [v28 lastObject];

    localeCopy = v25;
    v30 = selfCopy;
    connectionCopy = v23;
    blockCopy = v32;
    [(PGGraphIngestHolidaysProcessor *)v30 insertHolidaysBetweenLocalDate:firstObject2 andLocalDate:lastObject2 graph:graphCopy locale:v25 loggingConnection:connectionCopy progressBlock:v32];
  }
}

- (void)deleteHolidayEdgesWithMomentNodes:(id)nodes inGraph:(id)graph
{
  v5 = MEMORY[0x277D22C50];
  graphCopy = graph;
  nodesCopy = nodes;
  v10 = objc_alloc_init(v5);
  celebratedHolidayNodes = [nodesCopy celebratedHolidayNodes];
  v9 = [(PGGraphEdgeCollection *)PGGraphCelebratingEdgeCollection edgesFromNodes:nodesCopy toNodes:celebratedHolidayNodes];

  [v10 removeEdges:v9];
  [graphCopy executeGraphChangeRequest:v10];
}

- (void)runWithGraphUpdate:(id)update progressBlock:(id)block
{
  v28 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  graphBuilder = self->_graphBuilder;
  updateCopy = update;
  graph = [(PGGraphBuilder *)graphBuilder graph];
  loggingConnection = [(PGGraphBuilder *)self->_graphBuilder loggingConnection];
  v11 = os_signpost_id_generate(loggingConnection);
  v12 = loggingConnection;
  v13 = v12;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "PGGraphIngestHolidaysProcessor", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v14 = mach_absolute_time();
  v15 = [updateCopy momentNodesToProcessInGraph:graph forMomentUpdateTypes:objc_msgSend(objc_opt_class() includeInsertedNodes:{"requiredMomentUpdateTypes"), 1}];

  if ([v15 count])
  {
    [(PGGraphIngestHolidaysProcessor *)self deleteHolidayEdgesWithMomentNodes:v15 inGraph:graph];
    v16 = [v15 set];
    [(PGGraphIngestHolidaysProcessor *)self insertHolidaysWithMomentNodes:v16 graph:graph locale:0 loggingConnection:v13 progressBlock:blockCopy];
  }

  v17 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v20 = v13;
  v21 = v20;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v21, OS_SIGNPOST_INTERVAL_END, v11, "PGGraphIngestHolidaysProcessor", "", buf, 2u);
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v25 = "PGGraphIngestHolidaysProcessor";
    v26 = 2048;
    v27 = ((((v17 - v14) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_22F0FC000, v21, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldRunWithGraphUpdate:(id)update
{
  updateCopy = update;
  if ([updateCopy isResumingFullAnalysis] & 1) != 0 || (objc_msgSend(updateCopy, "hasMomentsToInsert"))
  {
    v4 = 1;
  }

  else
  {
    momentUpdateTypes = [updateCopy momentUpdateTypes];
    v4 = ([objc_opt_class() requiredMomentUpdateTypes] & momentUpdateTypes) != 0;
  }

  return v4;
}

- (PGGraphIngestHolidaysProcessor)initWithGraphBuilder:(id)builder
{
  builderCopy = builder;
  v11.receiver = self;
  v11.super_class = PGGraphIngestHolidaysProcessor;
  v6 = [(PGGraphIngestHolidaysProcessor *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_graphBuilder, builder);
    v8 = objc_alloc_init(PGGraphIngestHolidayProcessorHelper);
    helper = v7->_helper;
    v7->_helper = v8;
  }

  return v7;
}

@end