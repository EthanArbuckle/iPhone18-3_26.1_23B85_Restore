@interface PGPublicEventDisambiguator
- (PGPublicEventDisambiguator)initWithSceneTaxonomy:(id)a3 loggingConnection:(id)a4;
- (id)_categoriesForCriteriaMatchingForPublicEvent:(id)a3;
- (id)_frequentLocationNodesForMomentNode:(id)a3 largeFrequentLocationNodes:(id)a4;
- (id)disambiguateEvents:(id)a3 forTimeLocationTuple:(id)a4 momentNode:(id)a5 graph:(id)a6 meaningfulEventProcessorCache:(id)a7 serviceManager:(id)a8;
- (id)publicEventCriteriaByCategoryInGraph:(id)a3;
- (void)collectConsolidatedAddressesForMomentNodes:(id)a3 largeFrequentLocationNodes:(id)a4 consolidatedAddresses:(id *)a5 consolidatedAddressesByMomentIdentifier:(id *)a6 momentNodesForConsolidatedAddresses:(id *)a7 progressBlock:(id)a8;
@end

@implementation PGPublicEventDisambiguator

- (id)_categoriesForCriteriaMatchingForPublicEvent:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 categories];
  v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:v5];
  if (_os_feature_enabled_impl())
  {
    if ([v5 count] == 1)
    {
      v7 = [v5 objectAtIndexedSubscript:0];
      v8 = [v7 category];
      v9 = [MEMORY[0x277D27780] festivalsAndFairs];
      v10 = [v8 isEqualToString:v9];

      if (v10)
      {
        loggingConnection = self->_loggingConnection;
        if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
        {
          v12 = loggingConnection;
          v13 = [v4 name];
          v19 = 138412290;
          v20 = v13;
          _os_log_impl(&dword_22F0FC000, v12, OS_LOG_TYPE_DEFAULT, "Additionally evaluating against musicConcert category for event %@", &v19, 0xCu);
        }

        v14 = objc_alloc(MEMORY[0x277D27780]);
        v15 = [MEMORY[0x277D27780] musicConcerts];
        v16 = [v14 initWithCategory:v15];

        [v6 addObject:v16];
      }
    }
  }

  v17 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)publicEventCriteriaByCategoryInGraph:(id)a3
{
  publicEventCriteriaByCategory = self->_publicEventCriteriaByCategory;
  if (!publicEventCriteriaByCategory)
  {
    v5 = [PGPublicEventCriteriaFactory publicEventCriteriaByCategoryForGraph:a3 sceneTaxonomy:self->_sceneTaxonomy loggingConnection:self->_loggingConnection];
    v6 = self->_publicEventCriteriaByCategory;
    self->_publicEventCriteriaByCategory = v5;

    publicEventCriteriaByCategory = self->_publicEventCriteriaByCategory;
  }

  return publicEventCriteriaByCategory;
}

- (id)_frequentLocationNodesForMomentNode:(id)a3 largeFrequentLocationNodes:(id)a4
{
  v5 = a4;
  v6 = [a3 frequentLocationNodes];
  if ([v6 count] && objc_msgSend(v6, "intersectsSet:", v5))
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)collectConsolidatedAddressesForMomentNodes:(id)a3 largeFrequentLocationNodes:(id)a4 consolidatedAddresses:(id *)a5 consolidatedAddressesByMomentIdentifier:(id *)a6 momentNodesForConsolidatedAddresses:(id *)a7 progressBlock:(id)a8
{
  v61 = *MEMORY[0x277D85DE8];
  v37 = a3;
  v36 = a4;
  v14 = a8;
  v15 = _Block_copy(v14);
  v53 = 0;
  v54 = &v53;
  v55 = 0x2020000000;
  v56 = 0;
  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v52 = 0;
  v35 = v14;
  if (!v15 || (v16 = CFAbsoluteTimeGetCurrent(), v16 - v50[3] < 0.01) || (v50[3] = v16, v48 = 0, (*(v15 + 2))(v15, &v48, 0.0), v17 = *(v54 + 24) | v48, *(v54 + 24) = v17, (v17 & 1) == 0))
  {
    v18 = a5;
    v19 = self->_loggingConnection;
    v20 = [MEMORY[0x277CBEB58] set];
    v21 = [MEMORY[0x277CBEB58] set];
    v22 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v37, "count")}];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __212__PGPublicEventDisambiguator_collectConsolidatedAddressesForMomentNodes_largeFrequentLocationNodes_consolidatedAddresses_consolidatedAddressesByMomentIdentifier_momentNodesForConsolidatedAddresses_progressBlock___block_invoke;
    v38[3] = &unk_2788870B8;
    v23 = v15;
    v47 = 0x3F847AE147AE147BLL;
    v45 = &v49;
    v46 = &v53;
    v44 = v23;
    v38[4] = self;
    v39 = v36;
    v24 = v19;
    v40 = v24;
    v25 = v20;
    v41 = v25;
    v26 = v22;
    v42 = v26;
    v27 = v21;
    v43 = v27;
    [v37 enumerateNodesUsingBlock:v38];
    if (*(v54 + 24) == 1)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
LABEL_15:

        goto LABEL_16;
      }

      *buf = 67109378;
      v58 = 254;
      v59 = 2080;
      v60 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGPublicEventDisambiguator.m";
      v28 = MEMORY[0x277D86220];
    }

    else
    {
      v29 = v25;
      *a7 = v25;
      v30 = v27;
      *v18 = v27;
      v31 = v26;
      *a6 = v26;
      if (!v15)
      {
        goto LABEL_15;
      }

      Current = CFAbsoluteTimeGetCurrent();
      if (Current - v50[3] < 0.01)
      {
        goto LABEL_15;
      }

      v50[3] = Current;
      v48 = 0;
      (*(v23 + 2))(v23, &v48, 1.0);
      v33 = *(v54 + 24) | v48;
      *(v54 + 24) = v33;
      if ((v33 & 1) == 0 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_15;
      }

      *buf = 67109378;
      v58 = 260;
      v59 = 2080;
      v60 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGPublicEventDisambiguator.m";
      v28 = MEMORY[0x277D86220];
    }

    _os_log_impl(&dword_22F0FC000, v28, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    goto LABEL_15;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v58 = 199;
    v59 = 2080;
    v60 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGPublicEventDisambiguator.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

LABEL_16:
  _Block_object_dispose(&v49, 8);
  _Block_object_dispose(&v53, 8);

  v34 = *MEMORY[0x277D85DE8];
}

void __212__PGPublicEventDisambiguator_collectConsolidatedAddressesForMomentNodes_largeFrequentLocationNodes_consolidatedAddresses_consolidatedAddressesByMomentIdentifier_momentNodesForConsolidatedAddresses_progressBlock___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = objc_autoreleasePoolPush();
  if (*(a1 + 80) && (Current = CFAbsoluteTimeGetCurrent(), v8 = *(*(a1 + 88) + 8), Current - *(v8 + 24) >= *(a1 + 104)) && (*(v8 + 24) = Current, v23 = 0, (*(*(a1 + 80) + 16))(0.5), *(*(*(a1 + 96) + 8) + 24) = *(*(*(a1 + 96) + 8) + 24), *(*(*(a1 + 96) + 8) + 24) == 1))
  {
    *a3 = 1;
  }

  else
  {
    v9 = [MEMORY[0x277CBEB58] set];
    v10 = [*(a1 + 32) _frequentLocationNodesForMomentNode:v5 largeFrequentLocationNodes:*(a1 + 40)];
    v11 = [v10 count] != 0;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __212__PGPublicEventDisambiguator_collectConsolidatedAddressesForMomentNodes_largeFrequentLocationNodes_consolidatedAddresses_consolidatedAddressesByMomentIdentifier_momentNodesForConsolidatedAddresses_progressBlock___block_invoke_2;
    v17[3] = &unk_278887090;
    v18 = *(a1 + 48);
    v12 = v5;
    v19 = v12;
    v22 = v11;
    v13 = v10;
    v20 = v13;
    v14 = v9;
    v21 = v14;
    [v12 enumerateConsolidatedAddressesUsingBlock:v17];
    if ([v14 count])
    {
      [*(a1 + 56) addObject:v12];
      v15 = *(a1 + 64);
      v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v12, "identifier")}];
      [v15 setObject:v14 forKeyedSubscript:v16];

      [*(a1 + 72) unionSet:v14];
    }
  }

  objc_autoreleasePoolPop(v6);
}

void __212__PGPublicEventDisambiguator_collectConsolidatedAddressesForMomentNodes_largeFrequentLocationNodes_consolidatedAddresses_consolidatedAddressesByMomentIdentifier_momentNodesForConsolidatedAddresses_progressBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 addressNode];
  if (![v4 isPersonHomeOrWorkAddress])
  {
    if (*(a1 + 64) == 1)
    {
      [v3 coordinates];
      v34 = v11;
      v35 = v12;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v6 = *(a1 + 48);
      v13 = [v6 countByEnumeratingWithState:&v30 objects:v36 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v31;
LABEL_7:
        v16 = 0;
        while (1)
        {
          if (*v31 != v15)
          {
            objc_enumerationMutation(v6);
          }

          v17 = [*(*(&v30 + 1) + 8 * v16) addressNode];
          [v17 coordinate];
          v28 = v18;
          v29 = v19;

          CLLocationCoordinate2DGetDistanceFrom();
          if (v20 <= 200.0)
          {
            break;
          }

          if (v14 == ++v16)
          {
            v14 = [v6 countByEnumeratingWithState:&v30 objects:v36 count:16];
            if (v14)
            {
              goto LABEL_7;
            }

            goto LABEL_13;
          }
        }

        v21 = *(a1 + 32);
        if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_18;
        }

        v22 = v34;
        v23 = v35;
        v24 = MEMORY[0x277CCACA8];
        v9 = v21;
        v25 = [v24 stringWithFormat:@"{%.8f, %.8f}", v22, v23, v28, v29, v30];
        v26 = [*(a1 + 40) name];
        *buf = 138412547;
        v38 = v25;
        v39 = 2113;
        v40 = v26;
        _os_log_debug_impl(&dword_22F0FC000, v9, OS_LOG_TYPE_DEBUG, "[PublicEvents] Not considering address (%@) close to frequent location for Moment %{private}@", buf, 0x16u);

        goto LABEL_17;
      }

LABEL_13:
    }

    [*(a1 + 56) addObject:v3];
    goto LABEL_19;
  }

  v5 = *(a1 + 32);
  if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    goto LABEL_19;
  }

  v6 = v5;
  [v4 coordinate];
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"{%.8f, %.8f}", v7, v8];
  v10 = [*(a1 + 40) name];
  *buf = 138478083;
  v38 = v9;
  v39 = 2113;
  v40 = v10;
  _os_log_debug_impl(&dword_22F0FC000, v6, OS_LOG_TYPE_DEBUG, "[PublicEvents] Not considering address %{private}@ at home/work for Moment %{private}@", buf, 0x16u);

LABEL_17:
LABEL_18:

LABEL_19:
  v27 = *MEMORY[0x277D85DE8];
}

- (id)disambiguateEvents:(id)a3 forTimeLocationTuple:(id)a4 momentNode:(id)a5 graph:(id)a6 meaningfulEventProcessorCache:(id)a7 serviceManager:(id)a8
{
  v154 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v107 = [MEMORY[0x277CBEB58] set];
  v108 = [MEMORY[0x277CBEB38] dictionary];
  v98 = v17;
  v20 = [(PGPublicEventDisambiguator *)self publicEventCriteriaByCategoryInGraph:v17];
  v99 = v16;
  v100 = v15;
  v96 = v19;
  v97 = v18;
  v21 = [[PGPublicEventMatchingOptions alloc] initWithTimeLocationTuple:v15 momentNode:v16 meaningfulEventProcessorCache:v18 serviceManager:v19];
  v131 = 0u;
  v132 = 0u;
  v133 = 0u;
  v134 = 0u;
  obj = v14;
  v109 = v20;
  v104 = [obj countByEnumeratingWithState:&v131 objects:v144 count:16];
  if (v104)
  {
    v103 = *v132;
    v102 = self;
    do
    {
      v22 = 0;
      do
      {
        if (*v132 != v103)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v131 + 1) + 8 * v22);
        v24 = [v23 name];
        v25 = [(PGPublicEventDisambiguator *)self _categoriesForCriteriaMatchingForPublicEvent:v23];
        v127 = 0u;
        v128 = 0u;
        v129 = 0u;
        v130 = 0u;
        v112 = v25;
        v26 = [v25 countByEnumeratingWithState:&v127 objects:v143 count:16];
        v106 = v24;
        if (!v26)
        {
LABEL_39:
          if (PGIsAppleInternal_onceToken != -1)
          {
            dispatch_once(&PGIsAppleInternal_onceToken, &__block_literal_global_8316);
          }

          if (PGIsAppleInternal_isAppleInternal == 1)
          {
            v51 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v112, "count")}];
            v119 = 0u;
            v120 = 0u;
            v121 = 0u;
            v122 = 0u;
            v52 = v112;
            v53 = [v52 countByEnumeratingWithState:&v119 objects:v141 count:16];
            if (v53)
            {
              v54 = v53;
              v55 = *v120;
              do
              {
                for (i = 0; i != v54; ++i)
                {
                  if (*v120 != v55)
                  {
                    objc_enumerationMutation(v52);
                  }

                  v57 = [*(*(&v119 + 1) + 8 * i) category];
                  [v51 addObject:v57];
                }

                v54 = [v52 countByEnumeratingWithState:&v119 objects:v141 count:16];
              }

              while (v54);
            }

            loggingConnection = self->_loggingConnection;
            v24 = v106;
            if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138478083;
              *&buf[4] = v106;
              v152 = 2113;
              v153 = v51;
              _os_log_debug_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEBUG, "[PublicEvents] Disambiguating event %{private}@: not matching allowed categories. event categories: %{private}@", buf, 0x16u);
            }
          }

          goto LABEL_52;
        }

        v105 = v22;
        v27 = 0;
        v28 = *v128;
        v29 = v26;
        v110 = *v128;
        do
        {
          v30 = 0;
          v111 = v29;
          do
          {
            if (*v128 != v28)
            {
              objc_enumerationMutation(v112);
            }

            v31 = [*(*(&v127 + 1) + 8 * v30) category];
            v32 = [v20 objectForKeyedSubscript:v31];
            v33 = [v32 count];
            v34 = v33 != 0;
            if (!v33)
            {
              goto LABEL_36;
            }

            v125 = 0u;
            v126 = 0u;
            v123 = 0u;
            v124 = 0u;
            v116 = v32;
            v35 = v32;
            v36 = [v35 countByEnumeratingWithState:&v123 objects:v142 count:16];
            if (v36)
            {
              v37 = v36;
              v113 = v31;
              v38 = 0;
              v39 = 0;
              v40 = *v124;
              v41 = 1.79769313e308;
              while (1)
              {
                v42 = 0;
                do
                {
                  if (*v124 != v40)
                  {
                    objc_enumerationMutation(v35);
                  }

                  v43 = *(*(&v123 + 1) + 8 * v42);
                  *buf = 0;
                  LOBYTE(v135) = 0;
                  if ([v43 isMatchingEvent:v23 matchingOptions:v21 withHighConfidence:&v135 matchingDistance:buf])
                  {
                    v44 = v135;
                    if ((v39 & 1) == 0)
                    {
                      goto LABEL_25;
                    }

                    if (v38)
                    {
                      v44 = 1;
                      if (v135)
                      {
                        v38 = 1;
                        v39 = 1;
                        if (*buf < v41)
                        {
                          goto LABEL_25;
                        }
                      }

                      else
                      {
                        v38 = 1;
                        v39 = 1;
                      }
                    }

                    else
                    {
                      v39 = 1;
                      if (v135)
                      {
                        v44 = 1;
LABEL_25:
                        v39 = 1;
                        v41 = *buf;
                        v38 = v44;
                        goto LABEL_26;
                      }

                      v38 = 0;
                    }
                  }

LABEL_26:
                  ++v42;
                }

                while (v37 != v42);
                v45 = [v35 countByEnumeratingWithState:&v123 objects:v142 count:16];
                v37 = v45;
                if (!v45)
                {

                  v46 = v39 & v38;
                  v20 = v109;
                  v28 = v110;
                  v29 = v111;
                  v31 = v113;
                  v32 = v116;
                  v34 = 1;
                  if (v46)
                  {
                    v47 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v23, "muid")}];
                    v48 = [v108 objectForKeyedSubscript:v47];

                    v34 = 1;
                    v32 = v116;
                    if (!v48)
                    {
                      v49 = [MEMORY[0x277CCABB0] numberWithDouble:v41];
                      v31 = v113;
                      v50 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v23, "muid")}];
                      [v108 setObject:v49 forKeyedSubscript:v50];

                      v32 = v116;
                      [v107 addObject:v23];
                      goto LABEL_35;
                    }
                  }

                  goto LABEL_36;
                }
              }
            }

            v32 = v116;
LABEL_35:
            v34 = 1;
LABEL_36:
            v27 |= v34;

            ++v30;
          }

          while (v30 != v29);
          v29 = [v112 countByEnumeratingWithState:&v127 objects:v143 count:16];
        }

        while (v29);
        self = v102;
        v22 = v105;
        v24 = v106;
        if ((v27 & 1) == 0)
        {
          goto LABEL_39;
        }

LABEL_52:

        ++v22;
      }

      while (v22 != v104);
      v104 = [obj countByEnumeratingWithState:&v131 objects:v144 count:16];
    }

    while (v104);
  }

  v59 = self->_loggingConnection;
  v60 = v107;
  v61 = v108;
  v62 = v59;
  v63 = [v60 count];
  if (v63 == 1)
  {
    v81 = v62;
    if (os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG))
    {
      v94 = [v60 anyObject];
      v95 = [v94 name];
      *buf = 138477827;
      *&buf[4] = v95;
      _os_log_debug_impl(&dword_22F0FC000, v81, OS_LOG_TYPE_DEBUG, "[PublicEvents] Disambiguating event: electing single matched event %{private}@", buf, 0xCu);
    }

    goto LABEL_66;
  }

  if (!v63)
  {
LABEL_66:
    v64 = v60;
    goto LABEL_69;
  }

  v117 = v62;
  v64 = [MEMORY[0x277CBEB58] set];
  v65 = [v60 allObjects];
  v139[0] = MEMORY[0x277D85DD0];
  v139[1] = 3221225472;
  v139[2] = ___PGFilterMatchingPublicEvents_block_invoke;
  v139[3] = &unk_2788870E0;
  v115 = v61;
  v66 = v61;
  v140 = v66;
  v67 = [v65 sortedArrayUsingComparator:v139];

  v68 = [v67 objectAtIndexedSubscript:0];
  v69 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v68, "muid")}];
  v70 = [v66 objectForKeyedSubscript:v69];
  [v70 floatValue];
  v72 = v71;

  v114 = v68;
  [v64 addObject:v68];
  if ([v67 count] >= 2)
  {
    v73 = v72;
    v74 = 1;
    while (1)
    {
      v75 = [v67 objectAtIndexedSubscript:v74];
      v76 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v75, "muid")}];
      v77 = [v66 objectForKeyedSubscript:v76];
      [v77 doubleValue];
      v79 = v78;

      v80 = v79 - v73 <= 35.0;
      if (v72 > 100.0)
      {
        v80 = v79 <= v72 * 1.35;
      }

      if (!v80)
      {
        break;
      }

      [v64 addObject:{v75, v79 - v73}];

      if (++v74 >= [v67 count])
      {
        goto LABEL_68;
      }
    }
  }

LABEL_68:

  v20 = v109;
  v61 = v115;
  v62 = v117;
LABEL_69:
  if (PGIsAppleInternal_onceToken != -1)
  {
    dispatch_once(&PGIsAppleInternal_onceToken, &__block_literal_global_8316);
  }

  if (PGIsAppleInternal_isAppleInternal == 1)
  {
    v118 = v62;
    v82 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v135 = 0u;
    v136 = 0u;
    v137 = 0u;
    v138 = 0u;
    v83 = v64;
    v84 = [v83 countByEnumeratingWithState:&v135 objects:buf count:16];
    if (v84)
    {
      v85 = v84;
      v86 = *v136;
      do
      {
        for (j = 0; j != v85; ++j)
        {
          if (*v136 != v86)
          {
            objc_enumerationMutation(v83);
          }

          v88 = [*(*(&v135 + 1) + 8 * j) name];
          [v82 addObject:v88];
        }

        v85 = [v83 countByEnumeratingWithState:&v135 objects:buf count:16];
      }

      while (v85);
    }

    v62 = v118;
    v89 = v118;
    if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
    {
      v90 = [v82 count];
      v91 = [v82 componentsJoinedByString:{@", "}];
      *v145 = 134218499;
      v146 = v90;
      v147 = 2112;
      v148 = @"high";
      v149 = 2113;
      v150 = v91;
      _os_log_impl(&dword_22F0FC000, v89, OS_LOG_TYPE_DEFAULT, "[PublicEvents] Disambiguating event: found %lu %@ confidence events. %{private}@", v145, 0x20u);
    }

    v20 = v109;
  }

  v92 = *MEMORY[0x277D85DE8];

  return v64;
}

- (PGPublicEventDisambiguator)initWithSceneTaxonomy:(id)a3 loggingConnection:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PGPublicEventDisambiguator;
  v9 = [(PGPublicEventDisambiguator *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sceneTaxonomy, a3);
    objc_storeStrong(&v10->_loggingConnection, a4);
  }

  return v10;
}

@end