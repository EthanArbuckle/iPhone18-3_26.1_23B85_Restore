@interface PGMemoryFeatureBlocking
+ (id)_bestAddressNodeAsCollectionInMomentNodeAsCollection:(id)collection;
+ (id)_momentNodesWithBlockedFeatureInGraph:(id)graph areaNamesWithNegativeFeedback:(id)feedback holidayNamesWithNegativeFeedback:(id)negativeFeedback datesWithNegativeFeedback:(id)withNegativeFeedback personUUIDsWithNegativeFeedback:(id)dsWithNegativeFeedback locationsWithNegativeFeedback:(id)locationsWithNegativeFeedback loggingConnection:(id)connection progressReporter:(id)self0;
+ (id)_prominentPersonNodeAsCollectionInMomentNodeAsCollection:(id)collection withPersonNodes:(id)nodes maximumNumberOfPersonsAllowed:(unint64_t)allowed minimumPresenceThreshold:(double)threshold maximumOthersPresenceThreshold:(double)presenceThreshold;
+ (id)blockableFeaturesForFeatureNodes:(id)nodes momentNodes:(id)momentNodes memoryCategory:(unint64_t)category;
+ (id)momentNodesWithBlockedFeatureInGraph:(id)graph userFeedbackCalculator:(id)calculator loggingConnection:(id)connection progressReporter:(id)reporter;
@end

@implementation PGMemoryFeatureBlocking

+ (id)_momentNodesWithBlockedFeatureInGraph:(id)graph areaNamesWithNegativeFeedback:(id)feedback holidayNamesWithNegativeFeedback:(id)negativeFeedback datesWithNegativeFeedback:(id)withNegativeFeedback personUUIDsWithNegativeFeedback:(id)dsWithNegativeFeedback locationsWithNegativeFeedback:(id)locationsWithNegativeFeedback loggingConnection:(id)connection progressReporter:(id)self0
{
  v117 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  feedbackCopy = feedback;
  negativeFeedbackCopy = negativeFeedback;
  withNegativeFeedbackCopy = withNegativeFeedback;
  dsWithNegativeFeedbackCopy = dsWithNegativeFeedback;
  locationsWithNegativeFeedbackCopy = locationsWithNegativeFeedback;
  connectionCopy = connection;
  reporterCopy = reporter;
  v18 = connectionCopy;
  v19 = os_signpost_id_generate(v18);
  v20 = v18;
  v21 = v20;
  v80 = v19 - 1;
  spid = v19;
  if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v21, OS_SIGNPOST_INTERVAL_BEGIN, v19, "MomentNodesWithBlockedFeature", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v79 = mach_absolute_time();
  *buf = 0;
  v104 = buf;
  v105 = 0x3032000000;
  v106 = __Block_byref_object_copy__49002;
  v107 = __Block_byref_object_dispose__49003;
  v108 = [(MAElementCollection *)[PGGraphMomentNodeCollection alloc] initWithGraph:graphCopy];
  v22 = reporterCopy;
  v83 = *(v104 + 5);
  v99 = 0;
  v100 = &v99;
  v101 = 0x2020000000;
  v102 = 0;
  if ([feedbackCopy count])
  {
    v23 = [PGGraphAreaNodeCollection areaNodesForNames:feedbackCopy inGraph:graphCopy];
    v24 = *(v104 + 5);
    addressNodes = [v23 addressNodes];
    momentNodes = [addressNodes momentNodes];
    v27 = [v24 collectionByFormingUnionWith:momentNodes];
    v28 = *(v104 + 5);
    *(v104 + 5) = v27;
  }

  if (v100[3])
  {
    *(v100 + 24) = 1;
LABEL_9:
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
LABEL_12:
      v31 = v83;
      v32 = v83;
      goto LABEL_13;
    }

    *v114 = 67109378;
    *&v114[4] = 254;
    *&v114[8] = 2080;
    *&v114[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/Conveniences/PGMemoryFeatureBlocking.m";
    v30 = MEMORY[0x277D86220];
LABEL_11:
    _os_log_impl(&dword_22F0FC000, v30, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v114, 0x12u);
    goto LABEL_12;
  }

  v29 = [v22 isCancelledWithProgress:0.2];
  *(v100 + 24) = v29;
  if (v29)
  {
    goto LABEL_9;
  }

  if ([negativeFeedbackCopy count])
  {
    allObjects = [negativeFeedbackCopy allObjects];
    v36 = [PGGraphHolidayNodeCollection holidayNodesWithNames:allObjects inGraph:graphCopy];

    v37 = *(v104 + 5);
    dateNodes = [v36 dateNodes];
    momentNodes2 = [dateNodes momentNodes];
    v40 = [v37 collectionByFormingUnionWith:momentNodes2];
    v41 = *(v104 + 5);
    *(v104 + 5) = v40;
  }

  if (v100[3])
  {
    *(v100 + 24) = 1;
LABEL_21:
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      goto LABEL_12;
    }

    *v114 = 67109378;
    *&v114[4] = 261;
    *&v114[8] = 2080;
    *&v114[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/Conveniences/PGMemoryFeatureBlocking.m";
    v30 = MEMORY[0x277D86220];
    goto LABEL_11;
  }

  v42 = [v22 isCancelledWithProgress:0.4];
  *(v100 + 24) = v42;
  if (v42)
  {
    goto LABEL_21;
  }

  if ([withNegativeFeedbackCopy count])
  {
    allObjects2 = [withNegativeFeedbackCopy allObjects];
    v44 = [PGGraphDateNodeCollection dateNodesForLocalDates:allObjects2 inGraph:graphCopy];

    v45 = *(v104 + 5);
    momentNodes3 = [v44 momentNodes];
    v47 = [v45 collectionByFormingUnionWith:momentNodes3];
    v48 = *(v104 + 5);
    *(v104 + 5) = v47;
  }

  if (v100[3])
  {
    *(v100 + 24) = 1;
LABEL_28:
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      goto LABEL_12;
    }

    *v114 = 67109378;
    *&v114[4] = 268;
    *&v114[8] = 2080;
    *&v114[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/Conveniences/PGMemoryFeatureBlocking.m";
    v30 = MEMORY[0x277D86220];
    goto LABEL_11;
  }

  v49 = [v22 isCancelledWithProgress:0.5];
  *(v100 + 24) = v49;
  if (v49)
  {
    goto LABEL_28;
  }

  if ([dsWithNegativeFeedbackCopy count])
  {
    v50 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    v51 = dsWithNegativeFeedbackCopy;
    v52 = [v51 countByEnumeratingWithState:&v95 objects:v116 count:16];
    if (v52)
    {
      v53 = *v96;
      do
      {
        for (i = 0; i != v52; ++i)
        {
          if (*v96 != v53)
          {
            objc_enumerationMutation(v51);
          }

          v55 = [MEMORY[0x277CD9938] localIdentifierWithUUID:*(*(&v95 + 1) + 8 * i)];
          [v50 addObject:v55];
        }

        v52 = [v51 countByEnumeratingWithState:&v95 objects:v116 count:16];
      }

      while (v52);
    }

    v56 = [PGGraphPersonNodeCollection personNodesForArrayOfLocalIdentifiers:v50 inGraph:graphCopy];
    v57 = [(PGGraphNodeCollection *)PGGraphMomentNodeCollection nodesInGraph:graphCopy];
    v58 = MEMORY[0x277D22BF8];
    v59 = +[PGGraphMomentNode personInMoment];
    v60 = [v58 adjacencyWithSources:v57 relation:v59 targetsClass:objc_opt_class()];

    if (v100[3])
    {
      *(v100 + 24) = 1;
LABEL_41:
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *v114 = 67109378;
        *&v114[4] = 281;
        *&v114[8] = 2080;
        *&v114[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/Conveniences/PGMemoryFeatureBlocking.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v114, 0x12u);
      }

      v62 = v83;
LABEL_44:

      v31 = v83;
      v32 = v83;
      goto LABEL_13;
    }

    v61 = [v22 isCancelledWithProgress:0.6];
    *(v100 + 24) = v61;
    if (v61)
    {
      goto LABEL_41;
    }

    sourcesCount = [v60 sourcesCount];
    if (sourcesCount)
    {
      *v114 = 0;
      *&v114[8] = v114;
      *&v114[16] = 0x2020000000;
      v115 = 0x3FE3333333333333;
      v64 = 0.2 / sourcesCount;
      v88[0] = MEMORY[0x277D85DD0];
      v88[1] = 3221225472;
      v88[2] = __251__PGMemoryFeatureBlocking__momentNodesWithBlockedFeatureInGraph_areaNamesWithNegativeFeedback_holidayNamesWithNegativeFeedback_datesWithNegativeFeedback_personUUIDsWithNegativeFeedback_locationsWithNegativeFeedback_loggingConnection_progressReporter___block_invoke;
      v88[3] = &unk_278885370;
      v89 = v56;
      v91 = buf;
      v92 = v114;
      v94 = v64;
      v93 = &v99;
      v90 = v22;
      [v60 enumerateTargetsBySourceWithBlock:v88];
      if (*(v100 + 24) == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *v110 = 67109378;
          v111 = 294;
          v112 = 2080;
          v113 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/Conveniences/PGMemoryFeatureBlocking.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v110, 0x12u);
        }

        v65 = v83;

        _Block_object_dispose(v114, 8);
        goto LABEL_44;
      }

      _Block_object_dispose(v114, 8);
    }
  }

  v66 = [PGGraphAddressNodeCollection addressNodesWithinDistance:locationsWithNegativeFeedbackCopy ofLocations:graphCopy inGraph:100.0];
  v67 = *(v104 + 5);
  momentNodes4 = [v66 momentNodes];
  v69 = [v67 collectionByFormingUnionWith:momentNodes4];
  v70 = *(v104 + 5);
  *(v104 + 5) = v69;

  if (v100[3])
  {
    *(v100 + 24) = 1;
  }

  else
  {
    v71 = [v22 isCancelledWithProgress:1.0];
    *(v100 + 24) = v71;
    if ((v71 & 1) == 0)
    {
      v74 = mach_absolute_time();
      numer = info.numer;
      denom = info.denom;
      v77 = v21;
      v78 = v77;
      if (v80 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v77))
      {
        *v114 = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v78, OS_SIGNPOST_INTERVAL_END, spid, "MomentNodesWithBlockedFeature", "", v114, 2u);
      }

      if (os_log_type_enabled(v78, OS_LOG_TYPE_INFO))
      {
        *v114 = 136315394;
        *&v114[4] = "MomentNodesWithBlockedFeature";
        *&v114[12] = 2048;
        *&v114[14] = ((((v74 - v79) * numer) / denom) / 1000000.0);
        _os_log_impl(&dword_22F0FC000, v78, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", v114, 0x16u);
      }

      v73 = *(v104 + 5);
      goto LABEL_63;
    }
  }

  v72 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
  v73 = v83;
  if (v72)
  {
    *v114 = 67109378;
    *&v114[4] = 301;
    *&v114[8] = 2080;
    *&v114[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/Conveniences/PGMemoryFeatureBlocking.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v114, 0x12u);
    v73 = v83;
  }

LABEL_63:
  v32 = v73;

  v31 = v83;
LABEL_13:
  _Block_object_dispose(&v99, 8);

  _Block_object_dispose(buf, 8);
  v33 = *MEMORY[0x277D85DE8];

  return v32;
}

void __251__PGMemoryFeatureBlocking__momentNodesWithBlockedFeatureInGraph_areaNamesWithNegativeFeedback_holidayNamesWithNegativeFeedback_datesWithNegativeFeedback_personUUIDsWithNegativeFeedback_locationsWithNegativeFeedback_loggingConnection_progressReporter___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v12 = a2;
  v6 = [PGMemoryFeatureBlocking _prominentPersonNodeAsCollectionInMomentNodeAsCollection:"_prominentPersonNodeAsCollectionInMomentNodeAsCollection:withPersonNodes:maximumNumberOfPersonsAllowed:minimumPresenceThreshold:maximumOthersPresenceThreshold:" withPersonNodes:0.45 maximumNumberOfPersonsAllowed:0.15 minimumPresenceThreshold:? maximumOthersPresenceThreshold:?];
  if (v6 && [*(a1 + 32) intersectsCollection:v6])
  {
    v7 = [*(*(*(a1 + 48) + 8) + 40) collectionByFormingUnionWith:v12];
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  *(*(*(a1 + 56) + 8) + 24) = *(a1 + 72) + *(*(*(a1 + 56) + 8) + 24);
  v10 = *(*(a1 + 64) + 8);
  if (*(v10 + 24))
  {
    v11 = 1;
  }

  else
  {
    v11 = [*(a1 + 40) isCancelledWithProgress:*(*(*(a1 + 56) + 8) + 24)];
    v10 = *(*(a1 + 64) + 8);
  }

  *(v10 + 24) = v11;
  if (*(*(*(a1 + 64) + 8) + 24) == 1)
  {
    *a4 = 1;
  }
}

+ (id)momentNodesWithBlockedFeatureInGraph:(id)graph userFeedbackCalculator:(id)calculator loggingConnection:(id)connection progressReporter:(id)reporter
{
  reporterCopy = reporter;
  connectionCopy = connection;
  calculatorCopy = calculator;
  graphCopy = graph;
  dataCache = [calculatorCopy dataCache];
  areaNamesWithNegativeFeedback = [dataCache areaNamesWithNegativeFeedback];
  holidayNamesWithNegativeFeedback = [dataCache holidayNamesWithNegativeFeedback];
  datesWithNegativeFeedback = [dataCache datesWithNegativeFeedback];
  personUUIDsWithNegativeFeedback = [calculatorCopy personUUIDsWithNegativeFeedback];

  locationsWithNegativeFeedback = [dataCache locationsWithNegativeFeedback];
  v20 = [self _momentNodesWithBlockedFeatureInGraph:graphCopy areaNamesWithNegativeFeedback:areaNamesWithNegativeFeedback holidayNamesWithNegativeFeedback:holidayNamesWithNegativeFeedback datesWithNegativeFeedback:datesWithNegativeFeedback personUUIDsWithNegativeFeedback:personUUIDsWithNegativeFeedback locationsWithNegativeFeedback:locationsWithNegativeFeedback loggingConnection:connectionCopy progressReporter:reporterCopy];

  return v20;
}

+ (id)_prominentPersonNodeAsCollectionInMomentNodeAsCollection:(id)collection withPersonNodes:(id)nodes maximumNumberOfPersonsAllowed:(unint64_t)allowed minimumPresenceThreshold:(double)threshold maximumOthersPresenceThreshold:(double)presenceThreshold
{
  collectionCopy = collection;
  nodesCopy = nodes;
  v13 = [nodesCopy count];
  if (v13)
  {
    v14 = 0;
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy__49002;
    v28 = __Block_byref_object_dispose__49003;
    v29 = 0;
    if (v13 <= allowed)
    {
      numberOfAssets = [collectionCopy numberOfAssets];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __186__PGMemoryFeatureBlocking__prominentPersonNodeAsCollectionInMomentNodeAsCollection_withPersonNodes_maximumNumberOfPersonsAllowed_minimumPresenceThreshold_maximumOthersPresenceThreshold___block_invoke;
      v18[3] = &unk_278885348;
      v19 = collectionCopy;
      v20 = &v24;
      v21 = numberOfAssets;
      thresholdCopy = threshold;
      presenceThresholdCopy = presenceThreshold;
      [nodesCopy enumerateIdentifiersAsCollectionsWithBlock:v18];

      v14 = v25[5];
    }

    v16 = v14;
    _Block_object_dispose(&v24, 8);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

void __186__PGMemoryFeatureBlocking__prominentPersonNodeAsCollectionInMomentNodeAsCollection_withPersonNodes_maximumNumberOfPersonsAllowed_minimumPresenceThreshold_maximumOthersPresenceThreshold___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v7 = a3;
  v8 = *(a1 + 32);
  v16 = v7;
  v9 = [PGGraphEdgeCollection edgesFromNodes:"edgesFromNodes:toNodes:" toNodes:?];
  v10 = [v9 anyEdge];

  v11 = [v10 numberOfAssets] / *(a1 + 48);
  v12 = *(*(a1 + 40) + 8);
  v15 = *(v12 + 40);
  v13 = (v12 + 40);
  v14 = v15;
  if (v15 || v11 < *(a1 + 56))
  {
    if (v11 > *(a1 + 64))
    {
      *v13 = 0;

      *a4 = 1;
    }
  }

  else
  {
    objc_storeStrong(v13, a3);
  }
}

+ (id)_bestAddressNodeAsCollectionInMomentNodeAsCollection:(id)collection
{
  collectionCopy = collection;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__49002;
  v17 = __Block_byref_object_dispose__49003;
  v18 = 0;
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2020000000;
  v12[3] = 0;
  preciseAddressNodes = [collectionCopy preciseAddressNodes];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __80__PGMemoryFeatureBlocking__bestAddressNodeAsCollectionInMomentNodeAsCollection___block_invoke;
  v8[3] = &unk_278885320;
  v5 = collectionCopy;
  v9 = v5;
  v10 = v12;
  v11 = &v13;
  [preciseAddressNodes enumerateIdentifiersAsCollectionsWithBlock:v8];
  v6 = v14[5];

  _Block_object_dispose(v12, 8);
  _Block_object_dispose(&v13, 8);

  return v6;
}

void __80__PGMemoryFeatureBlocking__bestAddressNodeAsCollectionInMomentNodeAsCollection___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v10 = a3;
  v5 = [(PGGraphEdgeCollection *)PGGraphAddressEdgeCollection edgesFromNodes:a1[4] toNodes:?];
  v6 = [v5 anyEdge];
  [v6 relevance];
  v8 = v7;

  if (v8 >= 0.8)
  {
    v9 = *(a1[5] + 8);
    if (v8 > *(v9 + 24))
    {
      *(v9 + 24) = v8;
      objc_storeStrong((*(a1[6] + 8) + 40), a3);
    }
  }
}

+ (id)blockableFeaturesForFeatureNodes:(id)nodes momentNodes:(id)momentNodes memoryCategory:(unint64_t)category
{
  nodesCopy = nodes;
  momentNodesCopy = momentNodes;
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v11 = [self _blockableHolidayFeatureForFeatureNodes:nodesCopy momentNodes:momentNodesCopy];
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = [self _blockableDateFeatureForFeatureNodes:nodesCopy momentNodes:momentNodesCopy];
  if (v12)
  {
    [v10 addObject:v12];
  }

  else
  {
    v13 = [self _blockableDateIntervalFeatureForFeatureNodes:nodesCopy momentNodes:momentNodesCopy memoryCategory:category];
    if (v13)
    {
      [v10 addObject:v13];
    }
  }

  v14 = [self _blockableLocationFeatureForFeatureNodes:nodesCopy momentNodes:momentNodesCopy];
  if (v14)
  {
    [v10 addObject:v14];
  }

  v15 = [self _blockablePersonFeatureForFeatureNodes:nodesCopy momentNodes:momentNodesCopy];
  if (v15)
  {
    [v10 addObject:v15];
  }

  return v10;
}

@end