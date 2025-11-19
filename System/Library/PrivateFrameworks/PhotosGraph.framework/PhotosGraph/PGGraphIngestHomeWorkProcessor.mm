@interface PGGraphIngestHomeWorkProcessor
- (BOOL)shouldRunWithGraphUpdate:(id)a3;
- (PGGraphIngestHomeWorkProcessor)initWithGraphBuilder:(id)a3;
- (void)_deleteEdgelessHomeWorkNodesInGraph:(id)a3;
- (void)_deleteLocationEdgesOfPersonNodes:(id)a3 inGraph:(id)a4;
- (void)inferHomeWorkAddressesOfPersonNodes:(id)a3 andCLSPersonByContactIdentifier:(id)a4 inGraph:(id)a5;
- (void)runWithGraphUpdate:(id)a3 progressBlock:(id)a4;
@end

@implementation PGGraphIngestHomeWorkProcessor

- (void)_deleteLocationEdgesOfPersonNodes:(id)a3 inGraph:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [a3 homeOrWorkNodes];
  v8 = [MEMORY[0x277D22C20] any];
  v9 = [(MAEdgeCollection *)PGGraphEdgeCollection edgesOfType:3 onNodes:v7 matchingFilter:v8];

  v10 = [(PGGraphBuilder *)self->_graphBuilder loggingConnection];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = [v9 count];
    v12 = [v7 description];
    v15 = 134218242;
    v16 = v11;
    v17 = 2112;
    v18 = v12;
    _os_log_impl(&dword_22F0FC000, v10, OS_LOG_TYPE_INFO, "[PGGraphIngestHomeWorkProcessor] Deleted %lu edges that are connected to HomeWork nodes [%@]", &v15, 0x16u);
  }

  if ([v9 count])
  {
    v13 = objc_alloc_init(MEMORY[0x277D22C50]);
    [v13 removeEdges:v9];
    [v6 executeGraphChangeRequest:v13];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_deleteEdgelessHomeWorkNodesInGraph:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[PGGraphHomeWorkNode filter];
  [v5 setWhereNoInAndOutEdges:1];
  v6 = [v4 nodeIdentifiersMatchingFilter:v5];
  v7 = [(PGGraphBuilder *)self->_graphBuilder loggingConnection];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v10 = 134217984;
    v11 = [v6 count];
    _os_log_impl(&dword_22F0FC000, v7, OS_LOG_TYPE_INFO, "[PGGraphIngestHomeWorkProcessor] Deleted %lu homeWork nodes from the graph", &v10, 0xCu);
  }

  if ([v6 count])
  {
    v8 = objc_alloc_init(MEMORY[0x277D22C50]);
    [v8 removeNodesForIdentifiers:v6];
    [v4 executeGraphChangeRequest:v8];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)inferHomeWorkAddressesOfPersonNodes:(id)a3 andCLSPersonByContactIdentifier:(id)a4 inGraph:(id)a5
{
  v8 = a4;
  v9 = a5;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __110__PGGraphIngestHomeWorkProcessor_inferHomeWorkAddressesOfPersonNodes_andCLSPersonByContactIdentifier_inGraph___block_invoke;
  v12[3] = &unk_278888960;
  v13 = v8;
  v14 = v9;
  v15 = self;
  v10 = v9;
  v11 = v8;
  [a3 enumerateNodesUsingBlock:v12];
}

void __110__PGGraphIngestHomeWorkProcessor_inferHomeWorkAddressesOfPersonNodes_andCLSPersonByContactIdentifier_inGraph___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [v3 contactIdentifier];
  if ([v5 length])
  {
    v6 = [*(a1 + 32) objectForKeyedSubscript:v5];
    v7 = v6;
    if (v6 && [v6 hasAddresses])
    {
      v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v9 = [v7 locationsByAddressTypes];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __110__PGGraphIngestHomeWorkProcessor_inferHomeWorkAddressesOfPersonNodes_andCLSPersonByContactIdentifier_inGraph___block_invoke_2;
      v15[3] = &unk_278885788;
      v10 = v8;
      v16 = v10;
      [v9 enumerateKeysAndObjectsUsingBlock:v15];

      if ([v10 count])
      {
        v11 = [PGGraphAddressNodeCollection addressNodesWithinDistance:v10 ofLocations:*(a1 + 40) inGraph:150.0];
        v12 = *(*(a1 + 48) + 8);
        v13 = [v11 temporarySet];
        v14 = [v12 insertHomeWorkNodeForPerson:v7 personNode:v3 fromAddressNodes:v13];
      }
    }
  }

  objc_autoreleasePoolPop(v4);
}

- (void)runWithGraphUpdate:(id)a3 progressBlock:(id)a4
{
  v43 = *MEMORY[0x277D85DE8];
  v28 = a3;
  aBlock = a4;
  v6 = [(PGGraphBuilder *)self->_graphBuilder graph];
  v27 = _Block_copy(aBlock);
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x2020000000;
  v36[3] = 0;
  v7 = [(PGGraphBuilder *)self->_graphBuilder loggingConnection];
  v8 = os_signpost_id_generate(v7);
  v9 = v7;
  v10 = v9;
  spid = v8;
  v11 = v8 - 1;
  if (v11 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v10, OS_SIGNPOST_INTERVAL_BEGIN, spid, "PGGraphIngestHomeWorkProcessor", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v25 = mach_absolute_time();
  v12 = [v28 updatedPersonNodesUnrelatedToMomentChange];
  if (![v12 count])
  {
    goto LABEL_10;
  }

  v13 = [(MAElementCollection *)[PGGraphPersonNodeCollection alloc] initWithSet:v12 graph:v6];
  [(PGGraphIngestHomeWorkProcessor *)self _deleteLocationEdgesOfPersonNodes:v13 inGraph:v6];
  v14 = [(PGGraphBuilder *)self->_graphBuilder serviceManager];
  v15 = [(PGGraphPersonNodeCollection *)v13 contactIdentifiers];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __67__PGGraphIngestHomeWorkProcessor_runWithGraphUpdate_progressBlock___block_invoke;
  v30[3] = &unk_27888A188;
  v31 = v27;
  v32 = v36;
  v33 = &v37;
  v34 = 0x3F847AE147AE147BLL;
  v16 = [v14 personsInContactStoreForContactIdentifiers:v15 needsRefetching:0 progressBlock:v30];

  v17 = *(v38 + 24);
  if (v17 == 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *v42 = 66;
      *&v42[4] = 2080;
      *&v42[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestHomeWorkProcessor.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }
  }

  else
  {
    [(PGGraphIngestHomeWorkProcessor *)self inferHomeWorkAddressesOfPersonNodes:v13 andCLSPersonByContactIdentifier:v16 inGraph:v6];
    v18 = [v16 allKeys];
    [v14 invalidateCacheForPersonInContactStoreWithContactIdentifiers:v18];
  }

  if ((v17 & 1) == 0)
  {
LABEL_10:
    [(PGGraphIngestHomeWorkProcessor *)self _deleteEdgelessHomeWorkNodesInGraph:v6];
    v19 = mach_absolute_time();
    numer = info.numer;
    denom = info.denom;
    v22 = v10;
    v23 = v22;
    if (v11 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v23, OS_SIGNPOST_INTERVAL_END, spid, "PGGraphIngestHomeWorkProcessor", "", buf, 2u);
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *v42 = "PGGraphIngestHomeWorkProcessor";
      *&v42[8] = 2048;
      *&v42[10] = ((((v19 - v25) * numer) / denom) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, v23, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
    }
  }

  _Block_object_dispose(v36, 8);
  _Block_object_dispose(&v37, 8);

  v24 = *MEMORY[0x277D85DE8];
}

void __67__PGGraphIngestHomeWorkProcessor_runWithGraphUpdate_progressBlock___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

- (BOOL)shouldRunWithGraphUpdate:(id)a3
{
  v3 = a3;
  if ([v3 isResumingFullAnalysis])
  {
    v4 = 0;
  }

  else if ([v3 hasUpdatedPersonNodesUnrelatedToMomentChange])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 hasDeletedPersonNodes];
  }

  return v4;
}

- (PGGraphIngestHomeWorkProcessor)initWithGraphBuilder:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PGGraphIngestHomeWorkProcessor;
  v6 = [(PGGraphIngestHomeWorkProcessor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_graphBuilder, a3);
  }

  return v7;
}

@end