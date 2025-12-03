@interface PGRelationshipTripAnalyzer
- (PGRelationshipTripAnalyzer)initWithRelationshipProcessor:(id)processor;
- (void)runAnalysisWithProgressBlock:(id)block;
@end

@implementation PGRelationshipTripAnalyzer

- (void)runAnalysisWithProgressBlock:(id)block
{
  v132 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v5 = _Block_copy(blockCopy);
  v6 = 0.0;
  if (!v5 || (v7 = CFAbsoluteTimeGetCurrent(), v7 < 0.01))
  {
LABEL_7:
    WeakRetained = objc_loadWeakRetained(&self->_processor);
    graph = [WeakRetained graph];
    trips = [graph trips];
    weekends = [graph weekends];
    v12 = 0x277CBE000uLL;
    v13 = MEMORY[0x277CBEB58];
    v14 = [trips arrayByAddingObjectsFromArray:weekends];
    v15 = [v13 setWithArray:v14];

    v74 = v15;
    if (![v15 count])
    {
LABEL_67:

      goto LABEL_68;
    }

    v69 = weekends;
    v72 = WeakRetained;
    v73 = v5;
    v71 = blockCopy;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v89 = [MEMORY[0x277CBEB58] set];
    meNode = [graph meNode];
    v118 = 0u;
    v119 = 0u;
    v120 = 0u;
    v121 = 0u;
    v70 = trips;
    obj = trips;
    v80 = [obj countByEnumeratingWithState:&v118 objects:v127 count:16];
    v82 = graph;
    if (v80)
    {
      v78 = *v119;
      do
      {
        v16 = 0;
        do
        {
          if (*v119 != v78)
          {
            objc_enumerationMutation(obj);
          }

          v90 = v16;
          v17 = *(*(&v118 + 1) + 8 * v16);
          context = objc_autoreleasePoolPush();
          v92 = [*(v12 + 2904) set];
          v18 = [*(v12 + 2904) set];
          v114 = 0u;
          v115 = 0u;
          v116 = 0u;
          v117 = 0u;
          v19 = v17;
          v20 = [v19 countByEnumeratingWithState:&v114 objects:v126 count:16];
          if (v20)
          {
            v21 = v20;
            v22 = 0;
            v23 = *v115;
            do
            {
              for (i = 0; i != v21; ++i)
              {
                if (*v115 != v23)
                {
                  objc_enumerationMutation(v19);
                }

                v25 = *(*(&v114 + 1) + 8 * i);
                v26 = objc_autoreleasePoolPush();
                personNodes = [v25 personNodes];
                v28 = [personNodes count];
                v29 = [personNodes containsObject:meNode];
                if (!((v28 != 1) | v29 & 1) || ((v28 == 2) & v29) != 0)
                {
                  allObjects = [personNodes allObjects];
                  [v92 addObjectsFromArray:allObjects];

                  [v18 addObject:v25];
                  v30 = 1;
                }

                else
                {
                  v30 = v28 > 1;
                }

                v22 += v30;

                objc_autoreleasePoolPop(v26);
              }

              v21 = [v19 countByEnumeratingWithState:&v114 objects:v126 count:16];
            }

            while (v21);
            v32 = v22;
          }

          else
          {
            v32 = 0.0;
          }

          v33 = [(MAElementCollection *)[PGGraphMomentNodeCollection alloc] initWithSet:v18 graph:v82];
          v83 = [(MAElementCollection *)[PGGraphPersonNodeCollection alloc] initWithSet:v92 graph:v82];
          v84 = v33;
          v34 = [PGPeopleInferencesConveniences countedPersonNodesFromMomentNodes:v33 amongPersonNodes:?];
          v110 = 0u;
          v111 = 0u;
          v112 = 0u;
          v113 = 0u;
          v35 = [v34 countByEnumeratingWithState:&v110 objects:v125 count:16];
          if (v35)
          {
            v36 = v35;
            v37 = *v111;
            do
            {
              for (j = 0; j != v36; ++j)
              {
                if (*v111 != v37)
                {
                  objc_enumerationMutation(v34);
                }

                v39 = *(*(&v110 + 1) + 8 * j);
                if (([v39 isMeNode] & 1) == 0 && objc_msgSend(v34, "countForObject:", v39) / v32 >= 0.75)
                {
                  localIdentifier = [v39 localIdentifier];
                  v41 = [dictionary objectForKeyedSubscript:localIdentifier];
                  v42 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v41, "unsignedIntegerValue") + 1}];

                  [dictionary setObject:v42 forKeyedSubscript:localIdentifier];
                  [v89 addObject:v19];
                }
              }

              v36 = [v34 countByEnumeratingWithState:&v110 objects:v125 count:16];
            }

            while (v36);
          }

          objc_autoreleasePoolPop(context);
          v16 = v90 + 1;
          v12 = 0x277CBE000;
        }

        while (v90 + 1 != v80);
        v80 = [obj countByEnumeratingWithState:&v118 objects:v127 count:16];
      }

      while (v80);
    }

    [v74 minusSet:v89];
    v43 = [v89 count];
    v5 = v73;
    if (v73)
    {
      Current = CFAbsoluteTimeGetCurrent();
      WeakRetained = v72;
      if (Current - v6 >= 0.01)
      {
        v122 = 0;
        v73[2](v73, &v122, 0.5);
        if (v122)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v129 = 105;
            v130 = 2080;
            v131 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/People Inferences/Relationship/Relationship Analyzers/PGRelationshipTripAnalyzer.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          trips = v70;
          blockCopy = v71;
          weekends = v69;
          graph = v82;
LABEL_66:

          goto LABEL_67;
        }

        v6 = Current;
      }
    }

    else
    {
      WeakRetained = v72;
    }

    v107[0] = MEMORY[0x277D85DD0];
    v107[1] = 3221225472;
    v107[2] = __59__PGRelationshipTripAnalyzer_runAnalysisWithProgressBlock___block_invoke;
    v107[3] = &unk_278881E88;
    v79 = WeakRetained;
    v108 = v79;
    v109 = v43;
    [dictionary enumerateKeysAndObjectsUsingBlock:v107];
    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    dictionary3 = [MEMORY[0x277CBEB38] dictionary];
    v68 = [v74 count];
    v103 = 0u;
    v104 = 0u;
    v105 = 0u;
    v106 = 0u;
    v75 = v74;
    graph = v82;
    v81 = [v75 countByEnumeratingWithState:&v103 objects:v124 count:16];
    if (v81)
    {
      obja = *v104;
      do
      {
        v45 = 0;
        do
        {
          if (*v104 != obja)
          {
            objc_enumerationMutation(v75);
          }

          contexta = v45;
          v46 = *(*(&v103 + 1) + 8 * v45);
          v85 = objc_autoreleasePoolPush();
          v47 = [v46 count];
          v48 = [(MAElementCollection *)[PGGraphMomentNodeCollection alloc] initWithArray:v46 graph:graph];
          personNodes2 = [v79 personNodes];
          v50 = [PGPeopleInferencesConveniences countedPersonNodesFromMomentNodes:v48 amongPersonNodes:personNodes2];

          v101 = 0u;
          v102 = 0u;
          v99 = 0u;
          v100 = 0u;
          v51 = v50;
          v52 = [v51 countByEnumeratingWithState:&v99 objects:v123 count:16];
          if (v52)
          {
            v53 = v52;
            v54 = *v100;
            v55 = v47;
            do
            {
              for (k = 0; k != v53; ++k)
              {
                if (*v100 != v54)
                {
                  objc_enumerationMutation(v51);
                }

                v57 = *(*(&v99 + 1) + 8 * k);
                v58 = [v51 countForObject:v57];
                localIdentifier2 = [v57 localIdentifier];
                v60 = [dictionary3 objectForKeyedSubscript:localIdentifier2];
                v61 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v60, "unsignedIntegerValue") + 1}];
                [dictionary3 setObject:v61 forKeyedSubscript:localIdentifier2];

                v62 = [dictionary2 objectForKeyedSubscript:localIdentifier2];
                v63 = MEMORY[0x277CCABB0];
                [v62 doubleValue];
                v65 = [v63 numberWithDouble:v58 / v55 + v64];
                [dictionary2 setObject:v65 forKeyedSubscript:localIdentifier2];
              }

              v53 = [v51 countByEnumeratingWithState:&v99 objects:v123 count:16];
            }

            while (v53);
          }

          objc_autoreleasePoolPop(v85);
          v45 = contexta + 1;
          graph = v82;
        }

        while (contexta + 1 != v81);
        v81 = [v75 countByEnumeratingWithState:&v103 objects:v124 count:16];
      }

      while (v81);
    }

    v95[0] = MEMORY[0x277D85DD0];
    v95[1] = 3221225472;
    v95[2] = __59__PGRelationshipTripAnalyzer_runAnalysisWithProgressBlock___block_invoke_2;
    v95[3] = &unk_278881EB0;
    v96 = v79;
    v97 = dictionary3;
    v98 = v68;
    v66 = dictionary3;
    [dictionary2 enumerateKeysAndObjectsUsingBlock:v95];
    blockCopy = v71;
    WeakRetained = v72;
    v5 = v73;
    weekends = v69;
    trips = v70;
    if (v73)
    {
      if (CFAbsoluteTimeGetCurrent() - v6 >= 0.01)
      {
        v122 = 0;
        v73[2](v73, &v122, 1.0);
        if (v122)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v129 = 148;
            v130 = 2080;
            v131 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/People Inferences/Relationship/Relationship Analyzers/PGRelationshipTripAnalyzer.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }
        }
      }
    }

    goto LABEL_66;
  }

  v122 = 0;
  v5[2](v5, &v122, 0.0);
  if (v122 != 1)
  {
    v6 = v7;
    goto LABEL_7;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v129 = 34;
    v130 = 2080;
    v131 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/People Inferences/Relationship/Relationship Analyzers/PGRelationshipTripAnalyzer.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

LABEL_68:

  v67 = *MEMORY[0x277D85DE8];
}

void __59__PGRelationshipTripAnalyzer_runAnalysisWithProgressBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v5 = [*(a1 + 32) relationshipAnalyzerPropertiesForPersonLocalIdentifier:a2];
  if (v5)
  {
    [v5 registerOneOnOneTripAppearance:objc_msgSend(v6 amongOneOnOneTrips:{"unsignedIntegerValue"), *(a1 + 40)}];
  }
}

void __59__PGRelationshipTripAnalyzer_runAnalysisWithProgressBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) relationshipAnalyzerPropertiesForPersonLocalIdentifier:v9];
  if (v6)
  {
    v7 = [*(a1 + 40) objectForKeyedSubscript:v9];
    v8 = [v7 unsignedIntegerValue];
    [v5 doubleValue];
    [v6 registerNumberOfTrips:v8 withTripsScore:*(a1 + 48) amongTrips:?];
  }
}

- (PGRelationshipTripAnalyzer)initWithRelationshipProcessor:(id)processor
{
  processorCopy = processor;
  v8.receiver = self;
  v8.super_class = PGRelationshipTripAnalyzer;
  v5 = [(PGRelationshipTripAnalyzer *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_processor, processorCopy);
  }

  return v6;
}

@end