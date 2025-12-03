@interface PGGraphIngestSocialGroupsProcessor
- (BOOL)shouldRunWithGraphUpdate:(id)update;
- (PGGraphIngestSocialGroupsProcessor)initWithGraphBuilder:(id)builder;
- (void)insertAggregateSocialGroupsIntoGraph:(id)graph progressBlock:(id)block;
- (void)insertOwnerPetToRelevantSocialGroups:(id)groups progressBlock:(id)block;
- (void)processSocialGroups:(BOOL)groups graph:(id)graph progressBlock:(id)block;
- (void)runWithGraphUpdate:(id)update progressBlock:(id)block;
@end

@implementation PGGraphIngestSocialGroupsProcessor

- (void)insertAggregateSocialGroupsIntoGraph:(id)graph progressBlock:(id)block
{
  v83[2] = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  aBlock = block;
  loggingConnection = [(PGGraphBuilder *)self->_graphBuilder loggingConnection];
  v7 = os_signpost_id_generate(loggingConnection);
  v8 = loggingConnection;
  v9 = v8;
  spid = v7;
  v50 = v7 - 1;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "SocialGroupAggregation", "", buf, 2u);
  }

  v54 = v9;

  info = 0;
  mach_timebase_info(&info);
  v47 = mach_absolute_time();
  v10 = _Block_copy(aBlock);
  *buf = 0;
  v77 = buf;
  v78 = 0x2020000000;
  v79 = 0;
  v72 = 0;
  v73 = &v72;
  v74 = 0x2020000000;
  v75 = 0;
  if (!v10 || (v11 = CFAbsoluteTimeGetCurrent(), v11 - v73[3] < 0.01) || (v73[3] = v11, v71 = 0, v10[2](v10, &v71, 0.0), v12 = v77[24] | v71, v77[24] = v12, (v12 & 1) == 0))
  {
    v56 = [(PGGraphNodeCollection *)PGGraphFrequentLocationNodeCollection nodesInGraph:graphCopy, v47];
    v53 = [(PGGraphNodeCollection *)PGGraphSocialGroupNodeCollection nodesInGraph:graphCopy];
    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v69[0] = MEMORY[0x277D85DD0];
    v69[1] = 3221225472;
    v69[2] = __89__PGGraphIngestSocialGroupsProcessor_insertAggregateSocialGroupsIntoGraph_progressBlock___block_invoke;
    v69[3] = &unk_278887280;
    v14 = v13;
    v70 = v14;
    [v53 enumerateSocialGroupIdentifiersUsingBlock:v69];
    v15 = objc_alloc(MEMORY[0x277D22C00]);
    v16 = +[PGGraphFrequentLocationNode momentOfFrequentLocation];
    v83[0] = v16;
    v17 = +[PGGraphMomentNode socialGroupInMoment];
    v83[1] = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v83 count:2];
    v52 = [v15 initWithSteps:v18];

    v19 = [MEMORY[0x277D22BF8] adjacencyWithSources:v56 relation:v52 targetsClass:objc_opt_class()];
    v20 = MEMORY[0x277D22BF8];
    v21 = +[PGGraphFrequentLocationNode momentOfFrequentLocation];
    v51 = [v20 adjacencyWithSources:v56 relation:v21 targetsClass:objc_opt_class()];

    v22 = MEMORY[0x277D22BF8];
    targets = [v19 targets];
    v24 = +[PGGraphSocialGroupNode momentOfSocialGroup];
    v25 = [v22 adjacencyWithSources:targets relation:v24 targetsClass:objc_opt_class()];

    v26 = MEMORY[0x277D22BF8];
    targets2 = [v19 targets];
    v28 = +[PGGraphSocialGroupNode memberOfSocialGroup];
    v29 = [v26 adjacencyWithSources:targets2 relation:v28 targetsClass:objc_opt_class()];

    if (v10)
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (Current - v73[3] >= 0.01)
      {
        v73[3] = Current;
        v71 = 0;
        v10[2](v10, &v71, 0.2);
        v31 = v77[24] | v71;
        v77[24] = v31;
        if (v31)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *v81 = 67109378;
            *v82 = 371;
            *&v82[4] = 2080;
            *&v82[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestSocialGroupsProcessor.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v81, 0x12u);
          }

          goto LABEL_26;
        }
      }
    }

    v32 = objc_alloc_init(MEMORY[0x277D22C50]);
    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = __89__PGGraphIngestSocialGroupsProcessor_insertAggregateSocialGroupsIntoGraph_progressBlock___block_invoke_263;
    v58[3] = &unk_2788829D0;
    v33 = v10;
    v65 = v33;
    v66 = &v72;
    v67 = buf;
    v68 = 0x3F847AE147AE147BLL;
    v59 = v51;
    v60 = v25;
    v61 = v29;
    v34 = graphCopy;
    v62 = v34;
    v63 = v14;
    v35 = v32;
    v64 = v35;
    [v19 enumerateTargetsBySourceWithBlock:v58];
    [v34 executeGraphChangeRequest:v35];
    if (v10 && (v36 = CFAbsoluteTimeGetCurrent(), v36 - v73[3] >= 0.01) && (v73[3] = v36, v71 = 0, v33[2](v33, &v71, 1.0), v37 = v77[24] | v71, v77[24] = v37, (v37 & 1) != 0))
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
LABEL_25:

LABEL_26:
        goto LABEL_27;
      }

      *v81 = 67109378;
      *v82 = 442;
      *&v82[4] = 2080;
      *&v82[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestSocialGroupsProcessor.m";
      v38 = MEMORY[0x277D86220];
      v39 = "Cancelled at line %d in file %s";
      v40 = 18;
    }

    else
    {
      v41 = mach_absolute_time();
      numer = info.numer;
      denom = info.denom;
      v44 = v54;
      v45 = v44;
      if (v50 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v44))
      {
        *v81 = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v45, OS_SIGNPOST_INTERVAL_END, spid, "SocialGroupAggregation", "", v81, 2u);
      }

      if (!os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
      {
        goto LABEL_25;
      }

      *v81 = 136315394;
      *v82 = "SocialGroupAggregation";
      *&v82[8] = 2048;
      *&v82[10] = ((((v41 - v48) * numer) / denom) / 1000000.0);
      v39 = "[Performance] %s: %f ms";
      v38 = v45;
      v40 = 22;
    }

    _os_log_impl(&dword_22F0FC000, v38, OS_LOG_TYPE_INFO, v39, v81, v40);
    goto LABEL_25;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *v81 = 67109378;
    *v82 = 353;
    *&v82[4] = 2080;
    *&v82[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestSocialGroupsProcessor.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v81, 0x12u);
  }

LABEL_27:
  _Block_object_dispose(&v72, 8);
  _Block_object_dispose(buf, 8);

  v46 = *MEMORY[0x277D85DE8];
}

void __89__PGGraphIngestSocialGroupsProcessor_insertAggregateSocialGroupsIntoGraph_progressBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  [v1 addObject:v2];
}

void __89__PGGraphIngestSocialGroupsProcessor_insertAggregateSocialGroupsIntoGraph_progressBlock___block_invoke_263(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v72 = *MEMORY[0x277D85DE8];
  v39 = a2;
  v38 = a3;
  v41 = a1;
  if (*(a1 + 80) && (Current = CFAbsoluteTimeGetCurrent(), v8 = *(*(a1 + 88) + 8), Current - *(v8 + 24) >= *(a1 + 104)) && (*(v8 + 24) = Current, LOBYTE(v67) = 0, (*(*(a1 + 80) + 16))(0.5), *(*(*(a1 + 96) + 8) + 24) = *(*(*(a1 + 96) + 8) + 24), *(*(*(a1 + 96) + 8) + 24) == 1))
  {
    *a4 = 1;
  }

  else
  {
    v37 = [*(a1 + 32) targetsForSources:v39];
    v9 = [*(a1 + 40) intersectingTargetsWith:v37];
    v10 = objc_alloc_init(MEMORY[0x277D22BD0]);
    v11 = objc_alloc_init(MEMORY[0x277D22BD0]);
    v12 = objc_alloc_init(MEMORY[0x277D22BD0]);
    v67 = 0;
    v68 = &v67;
    v69 = 0x2020000000;
    v70 = 0;
    v63 = 0;
    v64 = &v63;
    v65 = 0x2020000000;
    v66 = 0;
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __89__PGGraphIngestSocialGroupsProcessor_insertAggregateSocialGroupsIntoGraph_progressBlock___block_invoke_2;
    v54[3] = &unk_278882980;
    v33 = v9;
    v55 = v33;
    v56 = *(v41 + 40);
    v57 = *(v41 + 48);
    v13 = v10;
    v58 = v13;
    v34 = v11;
    v59 = v34;
    v35 = v12;
    v60 = v35;
    v61 = &v67;
    v62 = &v63;
    [v38 enumerateImportancesUsingBlock:v54];
    v36 = v13;
    if ([v13 count] >= 3)
    {
      v31 = [(MAElementCollection *)[PGGraphPersonNodeCollection alloc] initWithGraph:*(v41 + 56) elementIdentifiers:v13];
      v32 = [(MAElementCollection *)v31 array];
      v14 = [PGGraphSocialGroupNode identifierForMemberNodes:?];
      v15 = *(v41 + 64);
      v16 = [MEMORY[0x277CCABB0] numberWithInteger:v14];
      LOBYTE(v15) = [v15 containsObject:v16];

      if ((v15 & 1) == 0)
      {
        v17 = *(v41 + 64);
        v18 = [MEMORY[0x277CCABB0] numberWithInteger:v14];
        [v17 addObject:v18];

        v19 = [[PGGraphSocialGroupNode alloc] initWithSocialGroupIdentifier:v14 importance:v68[3] / v64[6]];
        [*(v41 + 72) addNode:v19];
        v20 = [(MAElementCollection *)[PGGraphSocialGroupNodeCollection alloc] initWithGraph:*(v41 + 56) elementIdentifiers:v35];
        v52 = 0u;
        v53 = 0u;
        v51 = 0u;
        v50 = 0u;
        obj = v32;
        v21 = [obj countByEnumeratingWithState:&v50 objects:v71 count:16];
        if (v21)
        {
          v22 = *v51;
          do
          {
            for (i = 0; i != v21; ++i)
            {
              if (*v51 != v22)
              {
                objc_enumerationMutation(obj);
              }

              v24 = *(*(&v50 + 1) + 8 * i);
              v25 = [v24 collection];
              v26 = [(PGGraphEdgeCollection *)PGGraphBelongsToEdgeCollection edgesFromNodes:v25 toNodes:v20];

              v46 = 0;
              v47 = &v46;
              v48 = 0x2020000000;
              v49 = 0;
              v45[0] = MEMORY[0x277D85DD0];
              v45[1] = 3221225472;
              v45[2] = __89__PGGraphIngestSocialGroupsProcessor_insertAggregateSocialGroupsIntoGraph_progressBlock___block_invoke_3;
              v45[3] = &unk_2788829A8;
              v45[4] = &v46;
              [v26 enumerateEdgesUsingBlock:v45];
              v27 = -[PGGraphBelongsToEdge initFromMemberNode:toSocialGroupNode:importance:]([PGGraphBelongsToEdge alloc], "initFromMemberNode:toSocialGroupNode:importance:", v24, v19, v47[3] / [v26 count]);
              [*(v41 + 72) addEdge:v27];

              _Block_object_dispose(&v46, 8);
            }

            v21 = [obj countByEnumeratingWithState:&v50 objects:v71 count:16];
          }

          while (v21);
        }

        v28 = [(MAElementCollection *)[PGGraphMomentNodeCollection alloc] initWithGraph:*(v41 + 56) elementIdentifiers:v34];
        v42[0] = MEMORY[0x277D85DD0];
        v42[1] = 3221225472;
        v42[2] = __89__PGGraphIngestSocialGroupsProcessor_insertAggregateSocialGroupsIntoGraph_progressBlock___block_invoke_4;
        v42[3] = &unk_278888B78;
        v29 = v19;
        v43 = v29;
        v44 = *(v41 + 72);
        [(MANodeCollection *)v28 enumerateNodesUsingBlock:v42];
      }
    }

    _Block_object_dispose(&v63, 8);
    _Block_object_dispose(&v67, 8);
  }

  v30 = *MEMORY[0x277D85DE8];
}

void __89__PGGraphIngestSocialGroupsProcessor_insertAggregateSocialGroupsIntoGraph_progressBlock___block_invoke_2(uint64_t a1, uint64_t a2, double a3)
{
  v16 = [*(a1 + 32) targetsForSourceIdentifier:a2];
  v6 = [*(a1 + 40) targetsForSourceIdentifier:a2];
  v7 = [v16 count];
  if (v7 / [v6 count] >= 0.3)
  {
    v8 = [*(a1 + 48) targetsForSourceIdentifier:a2];
    v9 = [v8 personNodes];
    if (![*(a1 + 56) count] || (v10 = *(a1 + 56), objc_msgSend(v9, "elementIdentifiers"), v11 = objc_claimAutoreleasedReturnValue(), LODWORD(v10) = objc_msgSend(v10, "intersectsIdentifierSet:", v11), v11, v10))
    {
      v12 = *(a1 + 56);
      v13 = [v9 elementIdentifiers];
      [v12 unionWithIdentifierSet:v13];

      v14 = *(a1 + 64);
      v15 = [v16 elementIdentifiers];
      [v14 unionWithIdentifierSet:v15];

      [*(a1 + 72) addIdentifier:a2];
      *(*(*(a1 + 80) + 8) + 24) = *(*(*(a1 + 80) + 8) + 24) + a3;
      ++*(*(*(a1 + 88) + 8) + 24);
    }
  }
}

double __89__PGGraphIngestSocialGroupsProcessor_insertAggregateSocialGroupsIntoGraph_progressBlock___block_invoke_3(uint64_t a1, void *a2)
{
  [a2 importance];
  v3 = *(*(a1 + 32) + 8);
  result = v4 + *(v3 + 24);
  *(v3 + 24) = result;
  return result;
}

void __89__PGGraphIngestSocialGroupsProcessor_insertAggregateSocialGroupsIntoGraph_progressBlock___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[PGGraphSocialGroupEdge alloc] initFromMomentNode:v3 toSocialGroupNode:*(a1 + 32)];

  [*(a1 + 40) addEdge:v4];
}

- (void)insertOwnerPetToRelevantSocialGroups:(id)groups progressBlock:(id)block
{
  v67 = *MEMORY[0x277D85DE8];
  groupsCopy = groups;
  graphBuilder = self->_graphBuilder;
  blockCopy = block;
  loggingConnection = [(PGGraphBuilder *)graphBuilder loggingConnection];
  v10 = os_signpost_id_generate(loggingConnection);
  v11 = loggingConnection;
  v12 = v11;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "SocialGroupPets", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v13 = mach_absolute_time();
  v14 = _Block_copy(blockCopy);

  v15 = 0.0;
  if (!v14 || (Current = CFAbsoluteTimeGetCurrent(), Current < 0.01))
  {
    v17 = 0;
LABEL_7:
    meNode = [groupsCopy meNode];
    v19 = meNode;
    if (meNode)
    {
      spid = v10;
      collection = [meNode collection];
      ownedPetNodes = [collection ownedPetNodes];

      if ([ownedPetNodes count])
      {
        v49 = v10 - 1;
        v46 = v17;
        v47 = v13;
        v22 = objc_alloc_init(MEMORY[0x277D22C50]);
        if ([ownedPetNodes count])
        {
          array = [ownedPetNodes array];
          v24 = [PGGraphSocialGroupNode identifierForMemberNodes:array];
          v25 = [PGGraphSocialGroupNodeCollection socialGroupNodeForSocialGroupIdentifier:v24 inGraph:groupsCopy];
          v26 = [[PGGraphSocialGroupNode alloc] initWithSocialGroupIdentifier:v24 importance:1.0];
          if ([v25 count])
          {
            anyNode = [v25 anyNode];
          }

          else
          {
            [v22 addNode:v26];
            v60[0] = MEMORY[0x277D85DD0];
            v60[1] = 3221225472;
            v60[2] = __89__PGGraphIngestSocialGroupsProcessor_insertOwnerPetToRelevantSocialGroups_progressBlock___block_invoke;
            v60[3] = &unk_278882908;
            anyNode = v26;
            v61 = anyNode;
            v62 = v22;
            [array enumerateObjectsUsingBlock:v60];

            v26 = v61;
          }

          momentNodes = [ownedPetNodes momentNodes];
          v57[0] = MEMORY[0x277D85DD0];
          v57[1] = 3221225472;
          v57[2] = __89__PGGraphIngestSocialGroupsProcessor_insertOwnerPetToRelevantSocialGroups_progressBlock___block_invoke_2;
          v57[3] = &unk_278888B78;
          v58 = anyNode;
          v59 = v22;
          v30 = anyNode;
          [momentNodes enumerateNodesUsingBlock:v57];
        }

        v31 = [(PGGraphNodeCollection *)PGGraphSocialGroupNodeCollection nodesInGraph:groupsCopy];
        v50 = [PGGraphSocialGroupNodeCollection userVerifiedSocialGroupNodesInGraph:groupsCopy];
        [v31 collectionBySubtracting:?];
        v33 = v32 = v22;
        v34 = MEMORY[0x277D22BF8];
        v35 = +[PGGraphSocialGroupNode momentOfSocialGroup];
        v51 = v31;
        v36 = [v34 adjacencyWithSources:v31 relation:v35 targetsClass:objc_opt_class()];

        v52[0] = MEMORY[0x277D85DD0];
        v52[1] = 3221225472;
        v52[2] = __89__PGGraphIngestSocialGroupsProcessor_insertOwnerPetToRelevantSocialGroups_progressBlock___block_invoke_3;
        v52[3] = &unk_278882958;
        v53 = v36;
        ownedPetNodes = ownedPetNodes;
        v54 = ownedPetNodes;
        v37 = groupsCopy;
        v55 = v37;
        v38 = v32;
        v56 = v38;
        v39 = v36;
        [v33 enumerateImportancesUsingBlock:v52];
        [v37 executeGraphChangeRequest:v38];
        if (v14 && CFAbsoluteTimeGetCurrent() - v15 >= 0.01 && (v63 = 0, v14[2](v14, &v63, 1.0), v46 | v63))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v66 = 346;
            *&v66[4] = 2080;
            *&v66[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestSocialGroupsProcessor.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }
        }

        else
        {
          v40 = mach_absolute_time();
          numer = info.numer;
          denom = info.denom;
          v43 = v12;
          v44 = v43;
          if (v49 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v43))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_22F0FC000, v44, OS_SIGNPOST_INTERVAL_END, spid, "SocialGroupPets", "", buf, 2u);
          }

          if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            *v66 = "SocialGroupPets";
            *&v66[8] = 2048;
            *&v66[10] = ((((v40 - v47) * numer) / denom) / 1000000.0);
            _os_log_impl(&dword_22F0FC000, v44, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
          }
        }
      }
    }

    else
    {
      v28 = +[PGLogging sharedLogging];
      ownedPetNodes = [v28 loggingConnection];

      if (os_log_type_enabled(ownedPetNodes, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_22F0FC000, ownedPetNodes, OS_LOG_TYPE_ERROR, "[PGGraphIngestSocialGroupsProcessor] Error found a nil Me Node", buf, 2u);
      }
    }

    goto LABEL_33;
  }

  v63 = 0;
  v14[2](v14, &v63, 0.0);
  v17 = v63;
  if (v63 != 1)
  {
    v15 = Current;
    goto LABEL_7;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *v66 = 254;
    *&v66[4] = 2080;
    *&v66[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestSocialGroupsProcessor.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

LABEL_33:

  v45 = *MEMORY[0x277D85DE8];
}

void __89__PGGraphIngestSocialGroupsProcessor_insertOwnerPetToRelevantSocialGroups_progressBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[PGGraphBelongsToEdge alloc] initFromMemberNode:v3 toSocialGroupNode:*(a1 + 32) importance:1.0];

  [*(a1 + 40) addEdge:v4];
}

void __89__PGGraphIngestSocialGroupsProcessor_insertOwnerPetToRelevantSocialGroups_progressBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[PGGraphSocialGroupEdge alloc] initFromMomentNode:v3 toSocialGroupNode:*(a1 + 32)];

  [*(a1 + 40) addEdge:v4];
}

void __89__PGGraphIngestSocialGroupsProcessor_insertOwnerPetToRelevantSocialGroups_progressBlock___block_invoke_3(uint64_t a1, uint64_t a2, double a3)
{
  v6 = [*(a1 + 32) targetsForSourceIdentifier:a2];
  v7 = [v6 petNodes];
  v8 = [v7 collectionByIntersecting:*(a1 + 40)];

  if ([v8 count])
  {
    v9 = [v8 momentNodes];
    v10 = [v9 collectionByIntersecting:v6];

    v11 = [PGGraphSocialGroupNodeCollection alloc];
    v12 = *(a1 + 48);
    v13 = [objc_alloc(MEMORY[0x277D22BB0]) initWithElementIdentifier:a2];
    v14 = [(MAElementCollection *)v11 initWithGraph:v12 elementIdentifiers:v13];

    v15 = [v10 count];
    if ([v6 count] * 0.3 <= v15)
    {
      v16 = [(PGGraphSocialGroupNodeCollection *)v14 memberNodes];
      v17 = [v16 collectionByFormingUnionWith:v8];

      v18 = [v17 array];
      v19 = [PGGraphSocialGroupNode identifierForMemberNodes:v18];

      v20 = [[PGGraphSocialGroupNode alloc] initWithSocialGroupIdentifier:v19 importance:a3];
      [*(a1 + 56) addNode:v20];
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __89__PGGraphIngestSocialGroupsProcessor_insertOwnerPetToRelevantSocialGroups_progressBlock___block_invoke_4;
      v27[3] = &unk_278882930;
      v28 = v6;
      v21 = v10;
      v29 = v21;
      v30 = v14;
      v22 = v20;
      v31 = v22;
      v32 = *(a1 + 56);
      [v17 enumerateNodesUsingBlock:v27];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __89__PGGraphIngestSocialGroupsProcessor_insertOwnerPetToRelevantSocialGroups_progressBlock___block_invoke_6;
      v24[3] = &unk_278888B78;
      v25 = v22;
      v26 = *(a1 + 56);
      v23 = v22;
      [v21 enumerateNodesUsingBlock:v24];
    }
  }
}

void __89__PGGraphIngestSocialGroupsProcessor_insertOwnerPetToRelevantSocialGroups_progressBlock___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 label];

  if (v4 == @"Pet")
  {
    if ([*(a1 + 32) count])
    {
      v9 = [*(a1 + 40) count];
      v8 = (v9 / [*(a1 + 32) count]);
    }

    else
    {
      v8 = 0.0;
    }
  }

  else
  {
    v5 = [(MANodeCollection *)[PGGraphSocialGroupMemberNodeCollection alloc] initWithNode:v3];
    v6 = [(PGGraphEdgeCollection *)PGGraphBelongsToEdgeCollection edgesFromNodes:v5 toNodes:*(a1 + 48)];
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    if ([v6 count])
    {
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __89__PGGraphIngestSocialGroupsProcessor_insertOwnerPetToRelevantSocialGroups_progressBlock___block_invoke_5;
      v11[3] = &unk_2788897F8;
      v11[4] = &v12;
      [v6 enumerateImportancesUsingBlock:v11];
      v7 = v13[3];
      v8 = v7 / [v6 count];
    }

    else
    {
      v8 = 0.0;
    }

    _Block_object_dispose(&v12, 8);
  }

  v10 = [[PGGraphBelongsToEdge alloc] initFromMemberNode:v3 toSocialGroupNode:*(a1 + 56) importance:v8];
  [*(a1 + 64) addEdge:v10];
}

void __89__PGGraphIngestSocialGroupsProcessor_insertOwnerPetToRelevantSocialGroups_progressBlock___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[PGGraphSocialGroupEdge alloc] initFromMomentNode:v3 toSocialGroupNode:*(a1 + 32)];

  [*(a1 + 40) addEdge:v4];
}

double __89__PGGraphIngestSocialGroupsProcessor_insertOwnerPetToRelevantSocialGroups_progressBlock___block_invoke_5(uint64_t a1, double a2)
{
  v2 = *(*(a1 + 32) + 8);
  result = *(v2 + 24) + a2;
  *(v2 + 24) = result;
  return result;
}

- (void)processSocialGroups:(BOOL)groups graph:(id)graph progressBlock:(id)block
{
  groupsCopy = groups;
  v79 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  blockCopy = block;
  v68 = 0;
  v69 = &v68;
  v70 = 0x2020000000;
  v71 = 0;
  v64 = 0;
  v65 = &v64;
  v66 = 0x2020000000;
  v67 = 0;
  v39 = _Block_copy(blockCopy);
  if (v39)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (Current - v65[3] >= 0.01)
    {
      v65[3] = Current;
      LOBYTE(v72) = 0;
      v39[2](v39, &v72, 0.0);
      v8 = *(v69 + 24) | v72;
      *(v69 + 24) = v8;
      if (v8)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          buf = 0x8C04000202;
          LOWORD(v77) = 2080;
          *(&v77 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestSocialGroupsProcessor.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
        }

        goto LABEL_31;
      }
    }
  }

  v37 = [(PGGraphNodeCollection *)PGGraphSocialGroupNodeCollection nodesInGraph:graphCopy];
  v9 = [PGGraphSocialGroupNodeCollection userVerifiedSocialGroupNodesInGraph:graphCopy];
  v36 = [v37 collectionBySubtracting:v9];
  v38 = v9;
  if (groupsCopy)
  {
    v10 = objc_alloc_init(MEMORY[0x277D22C50]);
    [v10 removeNodes:v36];
    [graphCopy executeGraphChangeRequest:v10];
    v11 = 0;
    v12 = 0;
LABEL_10:

    goto LABEL_11;
  }

  v12 = objc_alloc_init(MEMORY[0x277D22BD0]);
  v11 = objc_alloc_init(MEMORY[0x277D22BD0]);
  if ([v9 count])
  {
    elementIdentifiers = [v9 elementIdentifiers];
    [v12 unionWithIdentifierSet:elementIdentifiers];

    v10 = [(PGGraphEdgeCollection *)PGGraphSocialGroupEdgeCollection edgesToNodes:v38];
    elementIdentifiers2 = [v10 elementIdentifiers];
    [v11 unionWithIdentifierSet:elementIdentifiers2];

    goto LABEL_10;
  }

LABEL_11:
  v15 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v16 = objc_alloc_init(MEMORY[0x277D22C50]);
  buf = 0;
  *&v77 = &buf;
  *(&v77 + 1) = 0x2020000000;
  v78 = 0;
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __78__PGGraphIngestSocialGroupsProcessor_processSocialGroups_graph_progressBlock___block_invoke;
  v52[3] = &unk_2788828E0;
  v17 = v39;
  v58 = v17;
  v59 = &v64;
  p_buf = &buf;
  v62 = 0x3F847AE147AE147BLL;
  v60 = &v68;
  v63 = groupsCopy;
  v18 = graphCopy;
  v53 = v18;
  v19 = v12;
  v54 = v19;
  v20 = v11;
  v55 = v20;
  v33 = v15;
  v56 = v33;
  v21 = v16;
  v57 = v21;
  [v18 enumerateSocialGroupsWithBlock:v52 includeInvalidGroups:1];
  if (*(v69 + 24) == 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v72 = 67109378;
      v73 = 214;
      v74 = 2080;
      v75 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestSocialGroupsProcessor.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &v72, 0x12u);
    }
  }

  else
  {
    if (!groupsCopy)
    {
      v22 = v36;
      if ([v19 count])
      {
        v23 = [(MAElementCollection *)[PGGraphSocialGroupNodeCollection alloc] initWithGraph:v18 elementIdentifiers:v19];
        v24 = [v22 collectionBySubtracting:v23];

        v22 = v24;
      }

      if ([v22 count])
      {
        [v21 removeNodes:v22];
      }

      v25 = [(PGGraphEdgeCollection *)PGGraphSocialGroupEdgeCollection edgesInGraph:v18];
      if ([v20 count])
      {
        v26 = [(MAElementCollection *)[PGGraphSocialGroupEdgeCollection alloc] initWithGraph:v18 elementIdentifiers:v20];
        v27 = [v25 collectionBySubtracting:v26];

        v25 = v27;
      }

      if ([v25 count])
      {
        [v21 removeEdges:v25];
      }
    }

    [v18 executeGraphChangeRequest:{v21, v33}];
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __78__PGGraphIngestSocialGroupsProcessor_processSocialGroups_graph_progressBlock___block_invoke_247;
    v47[3] = &unk_27888A188;
    v28 = v17;
    v48 = v28;
    v49 = &v64;
    v50 = &v68;
    v51 = 0x3F847AE147AE147BLL;
    [(PGGraphIngestSocialGroupsProcessor *)self insertOwnerPetToRelevantSocialGroups:v18 progressBlock:v47];
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __78__PGGraphIngestSocialGroupsProcessor_processSocialGroups_graph_progressBlock___block_invoke_2_248;
    v42[3] = &unk_27888A188;
    v29 = v28;
    v43 = v29;
    v44 = &v64;
    v45 = &v68;
    v46 = 0x3F847AE147AE147BLL;
    [(PGGraphIngestSocialGroupsProcessor *)self insertAggregateSocialGroupsIntoGraph:v18 progressBlock:v42];
    if (v39)
    {
      v30 = CFAbsoluteTimeGetCurrent();
      if (v30 - v65[3] >= 0.01)
      {
        v65[3] = v30;
        v41 = 0;
        v29[2](v29, &v41, 1.0);
        v31 = *(v69 + 24) | v41;
        *(v69 + 24) = v31;
        if ((v31 & 1) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v72 = 67109378;
          v73 = 248;
          v74 = 2080;
          v75 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestSocialGroupsProcessor.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &v72, 0x12u);
        }
      }
    }
  }

  _Block_object_dispose(&buf, 8);
LABEL_31:
  _Block_object_dispose(&v64, 8);
  _Block_object_dispose(&v68, 8);

  v32 = *MEMORY[0x277D85DE8];
}

void __78__PGGraphIngestSocialGroupsProcessor_processSocialGroups_graph_progressBlock___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, float a5)
{
  v57 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v40 = a3;
  v10 = a4;
  if (*(a1 + 72))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v12 = *(*(a1 + 80) + 8);
    if (Current - *(v12 + 24) >= *(a1 + 104))
    {
      *(v12 + 24) = Current;
      v55 = 0;
      (*(*(a1 + 72) + 16))(0.5);
      *(*(*(a1 + 88) + 8) + 24) = *(*(*(a1 + 88) + 8) + 24);
      if (*(*(*(a1 + 88) + 8) + 24) == 1)
      {
        *(*(*(a1 + 96) + 8) + 24) = 1;
        goto LABEL_22;
      }
    }
  }

  v13 = [PGGraphSocialGroupNode identifierForMemberNodes:v9];
  if (*(a1 + 112))
  {
    v14 = 0;
  }

  else
  {
    v14 = [PGGraphSocialGroupNodeCollection socialGroupNodeForSocialGroupIdentifier:v13 inGraph:*(a1 + 32)];
  }

  if ([v14 count])
  {
    v15 = [v14 anyNode];
    [*(a1 + 40) addIdentifier:{-[MANode identifier](v15, "identifier")}];
    v16 = [(MAElementCollection *)[PGGraphMomentNodeCollection alloc] initWithArray:v10 graph:*(a1 + 32)];
    [(PGGraphEdgeCollection *)PGGraphSocialGroupEdgeCollection edgesFromNodes:v16 toNodes:v14];
    v18 = v17 = v9;
    v19 = *(a1 + 48);
    v20 = [v18 elementIdentifiers];
    [v19 unionWithIdentifierSet:v20];

    v21 = [(MANodeCollection *)PGGraphMomentNodeCollection sourceNodesOfEdges:v18];
    v22 = MEMORY[0x277CCAC30];
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __78__PGGraphIngestSocialGroupsProcessor_processSocialGroups_graph_progressBlock___block_invoke_2;
    v53[3] = &unk_278882868;
    v54 = v21;
    v39 = v21;
    v23 = [v22 predicateWithBlock:v53];
    v24 = [v10 filteredArrayUsingPredicate:v23];

    v25 = [(MAElementCollection *)[PGGraphSocialGroupMemberNodeCollection alloc] initWithArray:v17 graph:*(a1 + 32)];
    v26 = [(PGGraphEdgeCollection *)PGGraphBelongsToEdgeCollection edgesFromNodes:v25 toNodes:v14];
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __78__PGGraphIngestSocialGroupsProcessor_processSocialGroups_graph_progressBlock___block_invoke_3;
    v49[3] = &unk_278882890;
    v50 = v17;
    v51 = v40;
    v52 = *(a1 + 32);
    [v26 enumerateEdgesUsingBlock:v49];

    v9 = v17;
LABEL_13:

    goto LABEL_14;
  }

  v27 = *(a1 + 56);
  v28 = [MEMORY[0x277CCABB0] numberWithInteger:v13];
  LOBYTE(v27) = [v27 containsObject:v28];

  if ((v27 & 1) == 0)
  {
    v29 = [[PGGraphSocialGroupNode alloc] initWithSocialGroupIdentifier:v13 importance:a5];
    [*(a1 + 64) addNode:v29];
    v30 = *(a1 + 56);
    v31 = [MEMORY[0x277CCABB0] numberWithInteger:v13];
    [v30 addObject:v31];

    v24 = v10;
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __78__PGGraphIngestSocialGroupsProcessor_processSocialGroups_graph_progressBlock___block_invoke_4;
    v45[3] = &unk_2788828B8;
    v46 = v40;
    v15 = v29;
    v47 = v15;
    v48 = *(a1 + 64);
    [v9 enumerateObjectsUsingBlock:v45];

    v16 = v46;
    goto LABEL_13;
  }

  v24 = 0;
  v15 = 0;
LABEL_14:
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v32 = v24;
  v33 = [v32 countByEnumeratingWithState:&v41 objects:v56 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v42;
    do
    {
      for (i = 0; i != v34; ++i)
      {
        if (*v42 != v35)
        {
          objc_enumerationMutation(v32);
        }

        v37 = [[PGGraphSocialGroupEdge alloc] initFromMomentNode:*(*(&v41 + 1) + 8 * i) toSocialGroupNode:v15];
        [*(a1 + 64) addEdge:v37];
      }

      v34 = [v32 countByEnumeratingWithState:&v41 objects:v56 count:16];
    }

    while (v34);
  }

LABEL_22:
  v38 = *MEMORY[0x277D85DE8];
}

void __78__PGGraphIngestSocialGroupsProcessor_processSocialGroups_graph_progressBlock___block_invoke_247(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.33 + 0.33);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __78__PGGraphIngestSocialGroupsProcessor_processSocialGroups_graph_progressBlock___block_invoke_2_248(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.33 + 0.66);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __78__PGGraphIngestSocialGroupsProcessor_processSocialGroups_graph_progressBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v10 = v3;
  v5 = [v3 memberNode];
  v6 = [v4 indexOfObject:v5];

  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [*(a1 + 40) objectAtIndexedSubscript:v6];
    [v7 doubleValue];
    v9 = v8;

    +[PGGraphBelongsToEdge setImportance:onBelongsToEdgeForIdentifier:inGraph:](PGGraphBelongsToEdge, "setImportance:onBelongsToEdgeForIdentifier:inGraph:", [v10 identifier], *(a1 + 48), v9);
  }
}

void __78__PGGraphIngestSocialGroupsProcessor_processSocialGroups_graph_progressBlock___block_invoke_4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 objectAtIndexedSubscript:a3];
  [v7 doubleValue];
  v9 = v8;

  v10 = [[PGGraphBelongsToEdge alloc] initFromMemberNode:v6 toSocialGroupNode:*(a1 + 40) importance:v9];
  [*(a1 + 48) addEdge:v10];
}

- (void)runWithGraphUpdate:(id)update progressBlock:(id)block
{
  v72 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  graphBuilder = self->_graphBuilder;
  updateCopy = update;
  loggingConnection = [(PGGraphBuilder *)graphBuilder loggingConnection];
  v10 = os_signpost_id_generate(loggingConnection);
  v11 = loggingConnection;
  v12 = v11;
  v13 = v10 - 1;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "PGGraphIngestSocialGroupsProcessor", "", buf, 2u);
  }

  spid = v10;

  info = 0;
  mach_timebase_info(&info);
  v14 = mach_absolute_time();
  graph = [(PGGraphBuilder *)self->_graphBuilder graph];
  isResumingFullAnalysis = [updateCopy isResumingFullAnalysis];

  photoLibrary = [(PGGraphBuilder *)self->_graphBuilder photoLibrary];
  if (photoLibrary)
  {
    v53 = v14;
    v54 = v13;
    v18 = MEMORY[0x277D22C80];
    v63[0] = MEMORY[0x277D85DD0];
    v63[1] = 3221225472;
    v63[2] = __71__PGGraphIngestSocialGroupsProcessor_runWithGraphUpdate_progressBlock___block_invoke;
    v63[3] = &unk_27888A280;
    v55 = blockCopy;
    v19 = blockCopy;
    v64 = v19;
    [v18 progressReporterWithProgressBlock:v63];
    v62 = 0;
    v52 = v51 = photoLibrary;
    v20 = [PGSocialGroupsPromoter ingestUserVerifiedSocialGroupsFromPhotoLibrary:"ingestUserVerifiedSocialGroupsFromPhotoLibrary:intoGraph:progressReporter:error:" intoGraph:photoLibrary progressReporter:graph error:?];
    v21 = 0;
    v22 = +[PGLogging sharedLogging];
    loggingConnection2 = [v22 loggingConnection];

    v56 = v20;
    if (v20)
    {
      if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v67 = v20;
        _os_log_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_INFO, "[PGGraphIngestSocialGroupsProcessor] Ingested user-verified social groups from database into graph with UUIDs %@", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_ERROR))
    {
      localizedDescription = [v21 localizedDescription];
      *buf = 138412290;
      v67 = localizedDescription;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_ERROR, "[PGGraphIngestSocialGroupsProcessor] Error ingesting user-verified social groups from database into graph: %@", buf, 0xCu);
    }

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __71__PGGraphIngestSocialGroupsProcessor_runWithGraphUpdate_progressBlock___block_invoke_226;
    aBlock[3] = &unk_27888A280;
    v26 = v19;
    v61 = v26;
    v50 = _Block_copy(aBlock);
    [(PGGraphIngestSocialGroupsProcessor *)self processSocialGroups:isResumingFullAnalysis graph:graph progressBlock:?];
    v27 = MEMORY[0x277D22C80];
    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = __71__PGGraphIngestSocialGroupsProcessor_runWithGraphUpdate_progressBlock___block_invoke_2;
    v58[3] = &unk_27888A280;
    v59 = v26;
    v28 = [v27 progressReporterWithProgressBlock:v58];
    photoLibrary2 = [(PGGraphBuilder *)self->_graphBuilder photoLibrary];
    v57 = v21;
    v49 = v28;
    v30 = +[PGSocialGroupsPromoter promoteSocialGroupsInGraph:photoLibrary:maxNumberOfElectedSocialGroups:progressReporter:persistGroups:error:](PGSocialGroupsPromoter, "promoteSocialGroupsInGraph:photoLibrary:maxNumberOfElectedSocialGroups:progressReporter:persistGroups:error:", graph, photoLibrary2, +[PGSocialGroupsElector defaultNumberOfElectedSocialGroups], v28, 1, &v57);
    loggingConnection5 = v57;

    persistenceActions = self->_persistenceActions;
    self->_persistenceActions = v30;

    newAutomaticSocialGroupsToCreateCount = [(PGSocialGroupPersistenceActions *)self->_persistenceActions newAutomaticSocialGroupsToCreateCount];
    v33 = COERCE_DOUBLE([(PGSocialGroupPersistenceActions *)self->_persistenceActions currentAutomaticSocialGroupsToModifyCount]);
    v34 = self->_persistenceActions;
    v35 = +[PGLogging sharedLogging];
    loggingConnection3 = [v35 loggingConnection];

    photoLibrary = v51;
    if (v34)
    {
      if (!os_log_type_enabled(loggingConnection3, OS_LOG_TYPE_INFO))
      {
LABEL_17:

        v38 = +[PGLogging sharedLogging];
        loggingConnection4 = [v38 loggingConnection];

        if (os_log_type_enabled(loggingConnection4, OS_LOG_TYPE_INFO))
        {
          socialGroupsSkippedBecauseNoCommonAssetsCount = [(PGSocialGroupPersistenceActions *)self->_persistenceActions socialGroupsSkippedBecauseNoCommonAssetsCount];
          *buf = 134217984;
          v67 = socialGroupsSkippedBecauseNoCommonAssetsCount;
          _os_log_impl(&dword_22F0FC000, loggingConnection4, OS_LOG_TYPE_INFO, "[PGGraphIngestSocialGroupsProcessor] Skipped persisting %ld social groups in graph to database because they have no assets of all members", buf, 0xCu);
        }

        v41 = mach_absolute_time();
        numer = info.numer;
        denom = info.denom;
        v44 = v12;
        v45 = v44;
        if (v54 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v44))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_22F0FC000, v45, OS_SIGNPOST_INTERVAL_END, spid, "PGGraphIngestSocialGroupsProcessor", "", buf, 2u);
        }

        if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v67 = "PGGraphIngestSocialGroupsProcessor";
          v68 = 2048;
          v69 = ((((v41 - v53) * numer) / denom) / 1000000.0);
          _os_log_impl(&dword_22F0FC000, v45, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
        }

        blockCopy = v55;
        goto LABEL_25;
      }

      localizedDescription2 = [loggingConnection5 localizedDescription];
      *buf = 134218498;
      v67 = newAutomaticSocialGroupsToCreateCount;
      v68 = 2048;
      v69 = v33;
      v70 = 2112;
      v71 = localizedDescription2;
      _os_log_impl(&dword_22F0FC000, loggingConnection3, OS_LOG_TYPE_INFO, "[PGGraphIngestSocialGroupsProcessor] Successfully promoted %ld new automatic social groups in graph to database and modified order of %ld automatic social groups: %@", buf, 0x20u);
    }

    else
    {
      if (!os_log_type_enabled(loggingConnection3, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_17;
      }

      localizedDescription2 = [loggingConnection5 localizedDescription];
      *buf = 134218498;
      v67 = newAutomaticSocialGroupsToCreateCount;
      v68 = 2048;
      v69 = v33;
      v70 = 2112;
      v71 = localizedDescription2;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection3, OS_LOG_TYPE_ERROR, "[PGGraphIngestSocialGroupsProcessor] Error promoting %ld new automatic social groups in graph to database and modifying order of %ld automatic social groups: %@", buf, 0x20u);
    }

    goto LABEL_17;
  }

  v24 = +[PGLogging sharedLogging];
  loggingConnection5 = [v24 loggingConnection];

  if (os_log_type_enabled(loggingConnection5, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_22F0FC000, loggingConnection5, OS_LOG_TYPE_ERROR, "[PGGraphIngestSocialGroupsProcessor] Skipping social group ingest and generation due to nil photoLibrary! Returning...", buf, 2u);
  }

LABEL_25:

  v46 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldRunWithGraphUpdate:(id)update
{
  v27 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  if ([updateCopy isResumingFullAnalysis] & 1) != 0 || (objc_msgSend(updateCopy, "hasDeletedMomentNodes") & 1) != 0 || (objc_msgSend(updateCopy, "hasDeletedPersonNodes") & 1) != 0 || (v5 = objc_msgSend(updateCopy, "momentUpdateTypes"), (objc_msgSend(objc_opt_class(), "requiredMomentUpdateTypes") & v5) != 0) || (objc_msgSend(updateCopy, "hasSocialGroupsToInsert") & 1) != 0 || (objc_msgSend(updateCopy, "hasSocialGroupsToUpdate"))
  {
    v6 = 1;
  }

  else
  {
    if ([(PGGraphBuilder *)self->_graphBuilder isSharedLibraryEnabled])
    {
      graph = [(PGGraphBuilder *)self->_graphBuilder graph];
      meNode = [graph meNode];
      v11 = meNode != 0;
    }

    else
    {
      v11 = 0;
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    obj = [updateCopy insertedMomentNodes];
    v12 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v23;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(obj);
          }

          collection = [*(*(&v22 + 1) + 8 * i) collection];
          if (v11)
          {
            momentNodesWhereMeIsPresent = [(PGGraphBuilder *)self->_graphBuilder momentNodesWhereMeIsPresent];
            v18 = [momentNodesWhereMeIsPresent intersectsCollection:collection];
          }

          else
          {
            v18 = 1;
          }

          personNodes = [collection personNodes];
          v20 = [personNodes count];

          if (v20 && (v18 & 1) != 0)
          {
            v6 = 1;
            goto LABEL_26;
          }
        }

        v13 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    v6 = 0;
LABEL_26:
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

- (PGGraphIngestSocialGroupsProcessor)initWithGraphBuilder:(id)builder
{
  builderCopy = builder;
  v9.receiver = self;
  v9.super_class = PGGraphIngestSocialGroupsProcessor;
  v6 = [(PGGraphIngestSocialGroupsProcessor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_graphBuilder, builder);
  }

  return v7;
}

@end