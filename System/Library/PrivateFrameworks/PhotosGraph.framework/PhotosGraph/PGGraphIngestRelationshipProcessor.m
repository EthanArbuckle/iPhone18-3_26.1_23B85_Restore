@interface PGGraphIngestRelationshipProcessor
- (BOOL)shouldRunWithGraphUpdate:(id)a3;
- (PGGraphIngestRelationshipProcessor)initWithGraphBuilder:(id)a3;
- (id)_personNodesToAnalyzeInGraph:(id)a3;
- (id)personNodesToAnalyzeInGraph:(id)a3 forAppleInternal:(BOOL)a4;
- (id)tagRelationshipByPersonForPersonNodes:(id)a3;
- (unint64_t)relationshipForRelationshipTag:(unint64_t)a3;
- (void)insertRelationshipEdgesForRelationshipTags:(id)a3 meNode:(id)a4;
- (void)removeInferredRelationshipEdgesForPersonNodes:(id)a3 inGraph:(id)a4;
- (void)removeStorytellingRelationshipEdgesForPersonNodes:(id)a3 inGraph:(id)a4;
- (void)runWithGraphUpdate:(id)a3 progressBlock:(id)a4;
@end

@implementation PGGraphIngestRelationshipProcessor

- (id)personNodesToAnalyzeInGraph:(id)a3 forAppleInternal:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (![(PGGraphBuilder *)self->_graphBuilder isSharedLibraryEnabled])
  {
    goto LABEL_9;
  }

  v7 = [(PGGraphBuilder *)self->_graphBuilder momentNodesWhereMeIsPresent];
  if (![v7 count])
  {
    v11 = [(PGGraphBuilder *)self->_graphBuilder loggingConnection];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *v16 = 0;
      _os_log_impl(&dword_22F0FC000, v11, OS_LOG_TYPE_INFO, "No moments in library where Me is present. Not applying presence filtering", v16, 2u);
    }

LABEL_9:
    v9 = [PGGraphPersonNodeCollection personNodesExcludingMeInGraph:v6];
    if (v4)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v8 = [v7 presentPersonNodes];
  v9 = [v8 subsetExcludingMe];

  if (!v9)
  {
    goto LABEL_9;
  }

  if (v4)
  {
LABEL_5:
    v10 = v9;
    goto LABEL_11;
  }

LABEL_10:
  v12 = [v6 meNodeCollection];
  v13 = [v12 relatedPersonNodes];

  v14 = [v9 collectionBySubtracting:v13];

  v10 = v14;
LABEL_11:

  return v10;
}

- (id)_personNodesToAnalyzeInGraph:(id)a3
{
  v4 = a3;
  if (PGIsAppleInternal_onceToken != -1)
  {
    dispatch_once(&PGIsAppleInternal_onceToken, &__block_literal_global_8316);
  }

  v5 = [(PGGraphIngestRelationshipProcessor *)self personNodesToAnalyzeInGraph:v4 forAppleInternal:PGIsAppleInternal_isAppleInternal];

  return v5;
}

- (void)removeStorytellingRelationshipEdgesForPersonNodes:(id)a3 inGraph:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x277D22C50];
  v7 = a3;
  v8 = objc_alloc_init(v6);
  v9 = [v7 storytellingRelationshipEdges];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __96__PGGraphIngestRelationshipProcessor_removeStorytellingRelationshipEdgesForPersonNodes_inGraph___block_invoke;
  v11[3] = &unk_2788863A0;
  v10 = v8;
  v12 = v10;
  [v9 enumerateEdgesUsingBlock:v11];

  if ([v10 numberOfChanges])
  {
    [v5 executeGraphChangeRequest:v10];
  }
}

- (void)removeInferredRelationshipEdgesForPersonNodes:(id)a3 inGraph:(id)a4
{
  v5 = a4;
  v6 = [a3 relationshipEdges];
  v7 = +[PGGraphRelationshipEdge confirmedRelationshipFilter];
  v8 = [v6 edgesMatchingFilter:v7];
  v10 = [v6 collectionBySubtracting:v8];

  v9 = objc_alloc_init(MEMORY[0x277D22C50]);
  [v9 removeEdges:v10];
  [v5 executeGraphChangeRequest:v9];
}

- (unint64_t)relationshipForRelationshipTag:(unint64_t)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3 - 1;
  if (a3 - 1 < 0xD && ((0x1EFFu >> v4) & 1) != 0)
  {
    result = qword_22F78CAE8[v4];
  }

  else
  {
    v6 = +[PGLogging sharedLogging];
    v7 = [v6 loggingConnection];

    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [PGGraphPersonRelationshipTagNode labelForRelationshipTag:a3];
      v10 = 134218242;
      v11 = a3;
      v12 = 2112;
      v13 = v8;
      _os_log_impl(&dword_22F0FC000, v7, OS_LOG_TYPE_INFO, "[PGGraphIngestRelationshipProcessor] Encountered unmapped entity tag %lu (%@) during relationship ingest", &v10, 0x16u);
    }

    result = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)tagRelationshipByPersonForPersonNodes:(id)a3
{
  v4 = a3;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__54304;
  v12 = __Block_byref_object_dispose__54305;
  v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __76__PGGraphIngestRelationshipProcessor_tagRelationshipByPersonForPersonNodes___block_invoke;
  v7[3] = &unk_278889420;
  v7[4] = self;
  v7[5] = &v8;
  [v4 enumerateNodesUsingBlock:v7];
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __76__PGGraphIngestRelationshipProcessor_tagRelationshipByPersonForPersonNodes___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 collection];
  v5 = [v4 relationshipTagEdges];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __76__PGGraphIngestRelationshipProcessor_tagRelationshipByPersonForPersonNodes___block_invoke_2;
  v9[3] = &unk_278886378;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v10 = v3;
  v11 = v7;
  v9[4] = v6;
  v8 = v3;
  [v5 enumerateEdgesUsingBlock:v9];
}

void __76__PGGraphIngestRelationshipProcessor_tagRelationshipByPersonForPersonNodes___block_invoke_2(void *a1, void *a2)
{
  v10 = a2;
  [v10 confidence];
  v3 = v10;
  if (v4 >= 0.9)
  {
    v5 = a1[4];
    v6 = [v10 tagNode];
    v7 = [v5 relationshipForRelationshipTag:{objc_msgSend(v6, "tag")}];

    v3 = v10;
    if (v7)
    {
      v8 = [*(*(a1[6] + 8) + 40) objectForKeyedSubscript:a1[5]];
      if (!v8)
      {
        v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
      }

      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7];
      [v8 addObject:v9];

      [*(*(a1[6] + 8) + 40) setObject:v8 forKeyedSubscript:a1[5]];
      v3 = v10;
    }
  }
}

- (void)insertRelationshipEdgesForRelationshipTags:(id)a3 meNode:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __88__PGGraphIngestRelationshipProcessor_insertRelationshipEdgesForRelationshipTags_meNode___block_invoke;
  v8[3] = &unk_278886350;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [a3 enumerateKeysAndObjectsUsingBlock:v8];
}

void __88__PGGraphIngestRelationshipProcessor_insertRelationshipEdgesForRelationshipTags_meNode___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v14 + 1) + 8 * v10) unsignedIntegerValue];
        v12 = [PGGraphRelationshipEdge propertiesWithRelationshipSource:1];
        [*(*(a1 + 32) + 8) addRelationshipEdgesBetweenPersonNode:*(a1 + 40) andPersonNode:v5 forRelationship:v11 confidence:v12 properties:0.99];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)runWithGraphUpdate:(id)a3 progressBlock:(id)a4
{
  v70 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(PGGraphBuilder *)self->_graphBuilder graph];
  v9 = [(PGGraphBuilder *)self->_graphBuilder loggingConnection];
  v10 = os_signpost_id_generate(v9);
  v11 = v9;
  v12 = v11;
  v54 = v10 - 1;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "PGGraphIngestRelationshipProcessor", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v51 = mach_absolute_time();
  if ([v6 isResumingFullAnalysis])
  {
    v13 = [(PGGraphIngestRelationshipProcessor *)self _personNodesToAnalyzeInGraph:v8];
  }

  else
  {
    v14 = [PGGraphPersonNodeCollection alloc];
    v15 = [v6 insertedAndUpdatedPersonNodes];
    v13 = [(MAElementCollection *)v14 initWithSet:v15 graph:v8];
  }

  if ([(MAElementCollection *)v13 count])
  {
    spid = v10;
    v50 = v6;
    [(PGGraphIngestRelationshipProcessor *)self removeInferredRelationshipEdgesForPersonNodes:v13 inGraph:v8];
    v16 = [PGGraphRelationshipProcessor alloc];
    v17 = [(PGGraphBuilder *)self->_graphBuilder serviceManager];
    v18 = [(PGGraphRelationshipProcessor *)v16 initWithPersonNodes:v13 runOptions:8190 serviceManager:v17];
    v19 = v12;
    v20 = v18;

    v48 = v19;
    v49 = v7;
    [v20 runRelationshipAnalysisWithLoggingConnection:v19 progressBlock:v7];
    v21 = [v8 meNode];
    LOBYTE(v17) = +[PGUserDefaults isRelationshipSignalPropertiesIngestAllowed];
    v22 = +[PGUserDefaults isRelationshipFilteredOutInferencesIngestAllowed];
    v53 = v8;
    v47 = [(PGGraphNodeCollection *)PGGraphPersonNodeCollection nodesInGraph:v8];
    v23 = [v47 personNodeByLocalIdentifier];
    v24 = [(PGGraphIngestRelationshipProcessor *)self tagRelationshipByPersonForPersonNodes:v13];
    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = __71__PGGraphIngestRelationshipProcessor_runWithGraphUpdate_progressBlock___block_invoke;
    v58[3] = &unk_278886300;
    v25 = v23;
    v63 = v22;
    v64 = v17;
    v59 = v25;
    v60 = self;
    v26 = v21;
    v61 = v26;
    v27 = v24;
    v62 = v27;
    v52 = v20;
    [v20 enumerateInferredRelationshipsUsingBlock:v58];
    if ([v27 count])
    {
      [(PGGraphIngestRelationshipProcessor *)self insertRelationshipEdgesForRelationshipTags:v27 meNode:v26];
    }

    v28 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v29 = [v26 collection];
    v30 = [v29 relatedPersonNodes];
    v31 = [(MAElementCollection *)v13 collectionByIntersecting:v30];

    [(PGGraphBuilder *)self->_graphBuilder insertStorytellingRelationshipsWithRelationshipsForPersonNodes:v31 meNode:v26];
    v32 = [(MAElementCollection *)v13 collectionBySubtracting:v31];
    [(PGGraphIngestRelationshipProcessor *)self removeStorytellingRelationshipEdgesForPersonNodes:v32 inGraph:v53];
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __71__PGGraphIngestRelationshipProcessor_runWithGraphUpdate_progressBlock___block_invoke_2;
    v55[3] = &unk_278886328;
    v33 = v25;
    v56 = v33;
    v34 = v28;
    v57 = v34;
    [v20 enumerateHighRecallInferredRelationshipsExcludingPersonNodes:v31 usingBlock:v55];
    [(PGGraphBuilder *)self->_graphBuilder addStorytellingRelationshipsToMeNode:v26 relationshipByPerson:v34];
    v35 = mach_absolute_time();
    numer = info.numer;
    denom = info.denom;
    v12 = v48;
    v38 = v48;
    v39 = v38;
    if (v54 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v38))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v39, OS_SIGNPOST_INTERVAL_END, spid, "PGGraphIngestRelationshipProcessor", "", buf, 2u);
    }

    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v67 = "PGGraphIngestRelationshipProcessor";
      v68 = 2048;
      v69 = ((((v35 - v51) * numer) / denom) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, v39, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
    }

    v7 = v49;
    v6 = v50;
    v8 = v53;
  }

  else
  {
    v40 = mach_absolute_time();
    v42 = info.numer;
    v41 = info.denom;
    v43 = v12;
    v44 = v43;
    if (v54 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v43))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v44, OS_SIGNPOST_INTERVAL_END, v10, "PGGraphIngestRelationshipProcessor", "", buf, 2u);
    }

    if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v67 = "PGGraphIngestRelationshipProcessor";
      v68 = 2048;
      v69 = ((((v40 - v51) * v42) / v41) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, v44, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
    }
  }

  v45 = *MEMORY[0x277D85DE8];
}

void __71__PGGraphIngestRelationshipProcessor_runWithGraphUpdate_progressBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, double a5)
{
  v14 = a4;
  v9 = [*(a1 + 32) objectForKeyedSubscript:a2];
  if (a5 > 0.0 || *(a1 + 64) == 1)
  {
    v10 = 0.99;
    if (a5 < 1.0)
    {
      v10 = a5;
    }

    if (*(a1 + 65))
    {
      v11 = v14;
    }

    else
    {
      v11 = 0;
    }

    [*(*(a1 + 40) + 8) addRelationshipEdgesBetweenPersonNode:*(a1 + 48) andPersonNode:v9 forRelationship:a3 confidence:v11 properties:v10];
    v12 = [*(a1 + 56) objectForKeyedSubscript:v9];
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    [v12 removeObject:v13];
  }
}

void __71__PGGraphIngestRelationshipProcessor_runWithGraphUpdate_progressBlock___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [*(a1 + 32) objectForKeyedSubscript:a2];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [*(a1 + 40) setObject:v5 forKeyedSubscript:v6];
}

- (BOOL)shouldRunWithGraphUpdate:(id)a3
{
  v4 = a3;
  if ((([v4 isResumingFullAnalysis] & 1) != 0 || objc_msgSend(v4, "hasUpdatedPersonNodes")) && !+[PGUserDefaults isRelationshipInferenceDisabled](PGUserDefaults, "isRelationshipInferenceDisabled"))
  {
    v6 = [(PGGraphBuilder *)self->_graphBuilder graph];
    v7 = [v6 meNode];
    v5 = v7 != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (PGGraphIngestRelationshipProcessor)initWithGraphBuilder:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PGGraphIngestRelationshipProcessor;
  v6 = [(PGGraphIngestRelationshipProcessor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_graphBuilder, a3);
  }

  return v7;
}

@end