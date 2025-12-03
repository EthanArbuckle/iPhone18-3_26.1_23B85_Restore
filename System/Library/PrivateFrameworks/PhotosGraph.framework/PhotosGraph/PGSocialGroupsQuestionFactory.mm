@interface PGSocialGroupsQuestionFactory
+ (void)enumeratePeopleClustersWithGraph:(id)graph withLinkage:(unint64_t)linkage withBlock:(id)block;
+ (void)enumerateSocialGroupsWithGraph:(id)graph withLinkage:(unint64_t)linkage validGroupsBlock:(id)block invalidGroupsBlock:(id)groupsBlock averageWeight:(float *)weight;
- (id)_createSocialGroupWithPersonLocalIdentifiers:(id)identifiers;
- (id)_identifierForPersonNodesAsString:(id)string;
- (id)_socialGroupsForSurvey:(id)survey withLimit:(unint64_t)limit;
- (id)_socialGroupsForSurveyFromCurrentAlgorithm:(id)algorithm;
- (id)_socialGroupsForSurveyFromCustomAlgorithm:(id)algorithm;
- (id)_socialGroupsForSurveyFromNewAlgorithm:(id)algorithm withLinkage:(unint64_t)linkage;
- (id)generateQuestionsWithLimit:(unint64_t)limit progressBlock:(id)block;
@end

@implementation PGSocialGroupsQuestionFactory

+ (void)enumeratePeopleClustersWithGraph:(id)graph withLinkage:(unint64_t)linkage withBlock:(id)block
{
  v148[2] = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  blockCopy = block;
  [graphCopy _checkCanRead];
  meNode = [graphCopy meNode];
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  relevantMomentNodesForSocialGroupProcessing = [graphCopy relevantMomentNodesForSocialGroupProcessing];
  v140[0] = 0;
  v140[1] = v140;
  v140[2] = 0x2020000000;
  v140[3] = 0;
  v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v137[0] = MEMORY[0x277D85DD0];
  v137[1] = 3221225472;
  v137[2] = __88__PGSocialGroupsQuestionFactory_enumeratePeopleClustersWithGraph_withLinkage_withBlock___block_invoke;
  v137[3] = &unk_278888660;
  v11 = v10;
  v138 = v11;
  v139 = v140;
  [relevantMomentNodesForSocialGroupProcessing enumerateObjectsUsingBlock:v137];
  v134[0] = MEMORY[0x277D85DD0];
  v134[1] = 3221225472;
  v134[2] = __88__PGSocialGroupsQuestionFactory_enumeratePeopleClustersWithGraph_withLinkage_withBlock___block_invoke_3;
  v134[3] = &unk_278889EA0;
  v12 = v11;
  v135 = v12;
  v77 = meNode;
  v136 = v77;
  [graphCopy enumerateNodesInDomain:300 usingBlock:v134];
  v130 = 0;
  v131 = &v130;
  v132 = 0x2020000000;
  v133 = 0;
  v126[0] = MEMORY[0x277D85DD0];
  v126[1] = 3221225472;
  v126[2] = __88__PGSocialGroupsQuestionFactory_enumeratePeopleClustersWithGraph_withLinkage_withBlock___block_invoke_4;
  v126[3] = &unk_278888770;
  v127 = v12;
  v129 = &v130;
  v85 = v9;
  v128 = v85;
  v78 = v127;
  [v127 enumerateKeysAndObjectsUsingBlock:v126];
  v83 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"personNodes" ascending:1 comparator:&__block_literal_global_398];
  v82 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"superGroupMomentNodes" ascending:0 comparator:&__block_literal_global_402];
  v148[0] = v83;
  v148[1] = v82;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v148 count:2];
  [v85 sortUsingDescriptors:v13];

  v14 = objc_alloc(MEMORY[0x277D3AC88]);
  v124[0] = MEMORY[0x277D85DD0];
  v124[1] = 3221225472;
  v124[2] = __88__PGSocialGroupsQuestionFactory_enumeratePeopleClustersWithGraph_withLinkage_withBlock___block_invoke_6;
  v124[3] = &unk_2788887D8;
  v86 = graphCopy;
  v125 = v86;
  v15 = [v14 initWithDistanceBlock:v124];
  [v15 setK:1];
  [v15 setLinkage:linkage];
  if ([v15 linkage] == 5)
  {
    [v15 setClusterKeyElementBlock:&__block_literal_global_407];
  }

  if ([v15 linkage] == 4)
  {
    [v15 setClusterConsolidationBlock:&__block_literal_global_410];
  }

  [v15 setThreshold:0.0];
  v76 = v15;
  v16 = [v15 performWithDataset:v85 progressBlock:0];
  v17 = [v16 sortedArrayUsingComparator:&__block_literal_global_413];

  v122 = 0u;
  v123 = 0u;
  v120 = 0u;
  v121 = 0u;
  obj = v17;
  v18 = [obj countByEnumeratingWithState:&v120 objects:v147 count:16];
  if (v18)
  {
    v19 = *v121;
    v73 = *v121;
    do
    {
      v79 = 0;
      v74 = v18;
      do
      {
        if (*v121 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v120 + 1) + 8 * v79);
        context = objc_autoreleasePoolPush();
        objects = [v20 objects];
        v91 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v118 = 0u;
        v119 = 0u;
        v116 = 0u;
        v117 = 0u;
        v92 = objects;
        v22 = [objects valueForKey:@"momentNodes"];
        v23 = [v22 countByEnumeratingWithState:&v116 objects:v146 count:16];
        if (v23)
        {
          v24 = *v117;
          do
          {
            for (i = 0; i != v23; ++i)
            {
              if (*v117 != v24)
              {
                objc_enumerationMutation(v22);
              }

              [v91 addObjectsFromArray:*(*(&v116 + 1) + 8 * i)];
            }

            v23 = [v22 countByEnumeratingWithState:&v116 objects:v146 count:16];
          }

          while (v23);
        }

        v26 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v114 = 0u;
        v115 = 0u;
        v112 = 0u;
        v113 = 0u;
        v27 = [v92 valueForKey:@"superGroupMomentNodes"];
        v28 = [v27 countByEnumeratingWithState:&v112 objects:v145 count:16];
        if (v28)
        {
          v29 = *v113;
          do
          {
            for (j = 0; j != v28; ++j)
            {
              if (*v113 != v29)
              {
                objc_enumerationMutation(v27);
              }

              v31 = *(*(&v112 + 1) + 8 * j);
              v108 = 0u;
              v109 = 0u;
              v110 = 0u;
              v111 = 0u;
              v32 = v31;
              v33 = [v32 countByEnumeratingWithState:&v108 objects:v144 count:16];
              if (v33)
              {
                v34 = *v109;
                do
                {
                  for (k = 0; k != v33; ++k)
                  {
                    if (*v109 != v34)
                    {
                      objc_enumerationMutation(v32);
                    }

                    if (([v26 containsObject:*(*(&v108 + 1) + 8 * k)] & 1) == 0)
                    {
                      [v26 addObjectsFromArray:v32];
                    }
                  }

                  v33 = [v32 countByEnumeratingWithState:&v108 objects:v144 count:16];
                }

                while (v33);
              }
            }

            v28 = [v27 countByEnumeratingWithState:&v112 objects:v145 count:16];
          }

          while (v28);
        }

        v94 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v106 = 0u;
        v107 = 0u;
        v104 = 0u;
        v105 = 0u;
        v87 = v92;
        v36 = [v87 countByEnumeratingWithState:&v104 objects:v143 count:16];
        if (v36)
        {
          v88 = *v105;
          do
          {
            v37 = 0;
            v89 = v36;
            do
            {
              if (*v105 != v88)
              {
                objc_enumerationMutation(v87);
              }

              v90 = v37;
              v38 = *(*(&v104 + 1) + 8 * v37);
              v100 = 0u;
              v101 = 0u;
              v102 = 0u;
              v103 = 0u;
              v39 = [v38 objectForKeyedSubscript:@"personNodes"];
              v40 = [v39 countByEnumeratingWithState:&v100 objects:v142 count:16];
              if (v40)
              {
                v41 = *v101;
                v93 = v39;
                do
                {
                  for (m = 0; m != v40; ++m)
                  {
                    if (*v101 != v41)
                    {
                      objc_enumerationMutation(v93);
                    }

                    v43 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(*(&v100 + 1) + 8 * m), "identifier")}];
                    v44 = [v94 objectForKeyedSubscript:v43];
                    unsignedIntegerValue = [v44 unsignedIntegerValue];

                    v46 = MEMORY[0x277CCABB0];
                    v47 = [v38 objectForKeyedSubscript:@"momentNodes"];
                    v48 = [v46 numberWithUnsignedInteger:{objc_msgSend(v47, "count") + unsignedIntegerValue}];
                    [v94 setObject:v48 forKeyedSubscript:v43];
                  }

                  v39 = v93;
                  v40 = [v93 countByEnumeratingWithState:&v100 objects:v142 count:16];
                }

                while (v40);
              }

              v37 = v90 + 1;
            }

            while (v90 + 1 != v89);
            v36 = [v87 countByEnumeratingWithState:&v104 objects:v143 count:16];
          }

          while (v36);
        }

        v49 = [v94 keysSortedByValueUsingComparator:&__block_literal_global_418];
        v50 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v51 = objc_alloc_init(MEMORY[0x277CBEB18]);
        firstObject = [v49 firstObject];
        v53 = [v94 objectForKeyedSubscript:firstObject];
        [v53 floatValue];
        v55 = v54;

        v98 = 0u;
        v99 = 0u;
        v96 = 0u;
        v97 = 0u;
        v56 = v49;
        v57 = [v56 countByEnumeratingWithState:&v96 objects:v141 count:16];
        if (v57)
        {
          v58 = *v97;
LABEL_49:
          v59 = 0;
          while (1)
          {
            if (*v97 != v58)
            {
              objc_enumerationMutation(v56);
            }

            v60 = *(*(&v96 + 1) + 8 * v59);
            v61 = 0.0;
            if (v55 <= 0.0 || ([v94 objectForKeyedSubscript:*(*(&v96 + 1) + 8 * v59)], v62 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v62, "doubleValue"), v64 = v63, v62, v61 = v64 / v55, v61 < 0.35))
            {
              if ([v94 count] != 1)
              {
                break;
              }
            }

            v65 = [v86 nodeForIdentifier:{objc_msgSend(v60, "unsignedIntegerValue")}];
            [v50 addObject:v65];

            v66 = [MEMORY[0x277CCABB0] numberWithDouble:v61];
            [v51 addObject:v66];

            if (v57 == ++v59)
            {
              v57 = [v56 countByEnumeratingWithState:&v96 objects:v141 count:16];
              if (v57)
              {
                goto LABEL_49;
              }

              break;
            }
          }
        }

        if ([v50 count] == 1)
        {
          v67 = [v50 objectAtIndexedSubscript:0];
          v68 = [v67 numberOfMomentNodes] > 1;

          if (v68)
          {
            goto LABEL_61;
          }
        }

        else if ([v26 count] >= 2)
        {
LABEL_61:
          v70 = [v26 count];
          v71 = v70 / v131[3];
          v95 = 0;
          blockCopy[2](blockCopy, v50, v51, v91, v26, &v95, v71);
          v69 = v95;
          goto LABEL_62;
        }

        v69 = 3;
LABEL_62:

        objc_autoreleasePoolPop(context);
        v19 = v73;
        if (v69 != 3 && v69)
        {
          goto LABEL_66;
        }

        ++v79;
      }

      while (v79 != v74);
      v18 = [obj countByEnumeratingWithState:&v120 objects:v147 count:16];
    }

    while (v18);
  }

LABEL_66:

  _Block_object_dispose(&v130, 8);
  _Block_object_dispose(v140, 8);

  v72 = *MEMORY[0x277D85DE8];
}

void __88__PGSocialGroupsQuestionFactory_enumeratePeopleClustersWithGraph_withLinkage_withBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3, BOOL *a4)
{
  v6 = a2;
  v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __88__PGSocialGroupsQuestionFactory_enumeratePeopleClustersWithGraph_withLinkage_withBlock___block_invoke_2;
  v12[3] = &unk_278889240;
  v8 = v7;
  v13 = v8;
  [v6 enumeratePersonNodesUsingBlock:v12];
  if ([v8 count])
  {
    v9 = [*(a1 + 32) objectForKeyedSubscript:v8];

    if (v9)
    {
      v10 = [*(a1 + 32) objectForKeyedSubscript:v8];
      [v10 addObject:v6];
    }

    else
    {
      v11 = [MEMORY[0x277CBEB18] arrayWithObject:v6];
      [*(a1 + 32) setObject:v11 forKeyedSubscript:v8];

      ++*(*(*(a1 + 40) + 8) + 24);
    }

    *a4 = *(*(*(a1 + 40) + 8) + 24) > 0x3E8uLL;
  }
}

void __88__PGSocialGroupsQuestionFactory_enumeratePeopleClustersWithGraph_withLinkage_withBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  [v4 addObject:v9];
  v5 = [*(a1 + 32) objectForKey:v4];
  if (v5)
  {
  }

  else
  {
    v6 = [v9 localIdentifier];
    v7 = [*(a1 + 40) localIdentifier];
    v8 = [v6 isEqualToString:v7];

    if ((v8 & 1) == 0)
    {
      [*(a1 + 32) setObject:v3 forKeyedSubscript:v4];
    }
  }
}

void __88__PGSocialGroupsQuestionFactory_enumeratePeopleClustersWithGraph_withLinkage_withBlock___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v156 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v83 = a3;
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v82 = a1;
  v7 = *(a1 + 32);
  v140[0] = MEMORY[0x277D85DD0];
  v140[1] = 3221225472;
  v140[2] = __88__PGSocialGroupsQuestionFactory_enumeratePeopleClustersWithGraph_withLinkage_withBlock___block_invoke_5;
  v140[3] = &unk_278888688;
  v8 = v5;
  v141 = v8;
  obj = v6;
  v142 = obj;
  [v7 enumerateKeysAndObjectsUsingBlock:v140];
  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v136 = 0u;
  v137 = 0u;
  v138 = 0u;
  v139 = 0u;
  v10 = v8;
  v87 = v10;
  v97 = [v10 countByEnumeratingWithState:&v136 objects:v155 count:16];
  if (v97)
  {
    v95 = *v137;
    do
    {
      for (i = 0; i != v97; ++i)
      {
        if (*v137 != v95)
        {
          objc_enumerationMutation(v10);
        }

        v12 = [*(*(&v136 + 1) + 8 * i) collection];
        v13 = [v12 relationshipEdges];
        v14 = [v13 labels];

        v134 = 0u;
        v135 = 0u;
        v132 = 0u;
        v133 = 0u;
        v15 = v14;
        v16 = [v15 countByEnumeratingWithState:&v132 objects:v154 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v133;
          do
          {
            for (j = 0; j != v17; ++j)
            {
              if (*v133 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v132 + 1) + 8 * j);
              v21 = [v9 objectForKey:v20];

              if (v21)
              {
                v22 = MEMORY[0x277CCABB0];
                v23 = [v9 objectForKeyedSubscript:v20];
                [v23 doubleValue];
                v25 = [v22 numberWithDouble:v24 + 1.0];
                [v9 setObject:v25 forKeyedSubscript:v20];
              }

              else
              {
                [v9 setObject:&unk_2844846E0 forKeyedSubscript:v20];
              }
            }

            v17 = [v15 countByEnumeratingWithState:&v132 objects:v154 count:16];
          }

          while (v17);
        }

        v10 = v87;
      }

      v97 = [v87 countByEnumeratingWithState:&v136 objects:v155 count:16];
    }

    while (v97);
  }

  v130 = 0u;
  v131 = 0u;
  v128 = 0u;
  v129 = 0u;
  v26 = [v9 allKeys];
  v27 = [v26 countByEnumeratingWithState:&v128 objects:v153 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v129;
    do
    {
      for (k = 0; k != v28; ++k)
      {
        if (*v129 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v128 + 1) + 8 * k);
        v32 = MEMORY[0x277CCABB0];
        v33 = [v9 objectForKeyedSubscript:v31];
        [v33 doubleValue];
        v35 = [v32 numberWithDouble:{v34 / objc_msgSend(v10, "count")}];
        [v9 setObject:v35 forKeyedSubscript:v31];
      }

      v28 = [v26 countByEnumeratingWithState:&v128 objects:v153 count:16];
    }

    while (v28);
  }

  v36 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v96 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v94 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v152[0] = @"Hiking";
  v152[1] = @"Climbing";
  v152[2] = @"Beaching";
  v152[3] = @"Diving";
  v152[4] = @"WinterSport";
  v152[5] = @"Entertainment";
  v152[6] = @"Performance";
  v152[7] = @"Concert";
  v152[8] = @"Festival";
  v152[9] = @"Dance";
  v152[10] = @"SportEvent";
  v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v152 count:11];
  v151[0] = @"Beach";
  v151[1] = @"Urban";
  v151[2] = @"Mountain";
  v151[3] = @"Nature";
  v86 = [MEMORY[0x277CBEA60] arrayWithObjects:v151 count:4];
  v150[0] = @"Restaurant";
  v150[1] = @"AmusementPark";
  v150[2] = @"Park";
  v150[3] = @"Culture";
  v150[4] = @"Nightlife";
  v150[5] = @"Travel";
  v150[6] = @"Entertainment";
  v85 = [MEMORY[0x277CBEA60] arrayWithObjects:v150 count:7];
  v124 = 0u;
  v125 = 0u;
  v126 = 0u;
  v127 = 0u;
  v38 = obj;
  v98 = v38;
  v88 = [v38 countByEnumeratingWithState:&v124 objects:v149 count:16];
  if (v88)
  {
    v84 = *v125;
    do
    {
      v39 = 0;
      do
      {
        if (*v125 != v84)
        {
          objc_enumerationMutation(v38);
        }

        v89 = *(*(&v124 + 1) + 8 * v39);
        obja = v39;
        v40 = [v89 meaningLabelsIncludingParents];
        v120 = 0u;
        v121 = 0u;
        v122 = 0u;
        v123 = 0u;
        v41 = [v40 countByEnumeratingWithState:&v120 objects:v148 count:16];
        if (v41)
        {
          v42 = v41;
          v43 = *v121;
          do
          {
            for (m = 0; m != v42; ++m)
            {
              if (*v121 != v43)
              {
                objc_enumerationMutation(v40);
              }

              v45 = *(*(&v120 + 1) + 8 * m);
              if ([v37 containsObject:v45])
              {
                v46 = [v36 objectForKey:v45];

                if (v46)
                {
                  v47 = MEMORY[0x277CCABB0];
                  v48 = [v36 objectForKeyedSubscript:v45];
                  [v48 doubleValue];
                  v50 = [v47 numberWithDouble:v49 + 1.0];
                  [v36 setObject:v50 forKeyedSubscript:v45];
                }

                else
                {
                  [v36 setObject:&unk_2844846E0 forKeyedSubscript:v45];
                }
              }
            }

            v42 = [v40 countByEnumeratingWithState:&v120 objects:v148 count:16];
          }

          while (v42);
        }

        v117[0] = MEMORY[0x277D85DD0];
        v117[1] = 3221225472;
        v117[2] = __88__PGSocialGroupsQuestionFactory_enumeratePeopleClustersWithGraph_withLinkage_withBlock___block_invoke_389;
        v117[3] = &unk_2788886F8;
        v118 = &unk_2844866D8;
        v119 = v36;
        [v89 enumerateSceneEdgesAndNodesUsingBlock:v117];
        v114[0] = MEMORY[0x277D85DD0];
        v114[1] = 3221225472;
        v114[2] = __88__PGSocialGroupsQuestionFactory_enumeratePeopleClustersWithGraph_withLinkage_withBlock___block_invoke_2_391;
        v114[3] = &unk_278888720;
        v115 = v86;
        v116 = v96;
        [v89 enumerateROINodesUsingBlock:v114];
        v111[0] = MEMORY[0x277D85DD0];
        v111[1] = 3221225472;
        v111[2] = __88__PGSocialGroupsQuestionFactory_enumeratePeopleClustersWithGraph_withLinkage_withBlock___block_invoke_3_393;
        v111[3] = &unk_278888748;
        v112 = v85;
        v113 = v94;
        [v89 enumeratePOINodesUsingBlock:v111];

        v39 = obja + 1;
        v38 = v98;
      }

      while (obja + 1 != v88);
      v88 = [v98 countByEnumeratingWithState:&v124 objects:v149 count:16];
    }

    while (v88);
  }

  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  v51 = [v36 allKeys];
  v52 = [v51 countByEnumeratingWithState:&v107 objects:v147 count:16];
  if (v52)
  {
    v53 = v52;
    v54 = *v108;
    do
    {
      for (n = 0; n != v53; ++n)
      {
        if (*v108 != v54)
        {
          objc_enumerationMutation(v51);
        }

        v56 = *(*(&v107 + 1) + 8 * n);
        v57 = MEMORY[0x277CCABB0];
        v58 = [v36 objectForKeyedSubscript:v56];
        [v58 doubleValue];
        v60 = [v57 numberWithDouble:{v59 / objc_msgSend(v98, "count")}];
        [v36 setObject:v60 forKeyedSubscript:v56];
      }

      v53 = [v51 countByEnumeratingWithState:&v107 objects:v147 count:16];
    }

    while (v53);
  }

  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  objb = [v96 allKeys];
  v61 = [objb countByEnumeratingWithState:&v103 objects:v146 count:16];
  if (v61)
  {
    v62 = v61;
    v63 = *v104;
    do
    {
      for (ii = 0; ii != v62; ++ii)
      {
        if (*v104 != v63)
        {
          objc_enumerationMutation(objb);
        }

        v65 = *(*(&v103 + 1) + 8 * ii);
        v66 = MEMORY[0x277CCABB0];
        v67 = [v96 objectForKeyedSubscript:v65];
        [v67 doubleValue];
        v69 = [v66 numberWithDouble:{v68 / objc_msgSend(v98, "count")}];
        [v96 setObject:v69 forKeyedSubscript:v65];
      }

      v62 = [objb countByEnumeratingWithState:&v103 objects:v146 count:16];
    }

    while (v62);
  }

  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  objc = [v94 allKeys];
  v70 = [objc countByEnumeratingWithState:&v99 objects:v145 count:16];
  if (v70)
  {
    v71 = v70;
    v72 = *v100;
    do
    {
      for (jj = 0; jj != v71; ++jj)
      {
        if (*v100 != v72)
        {
          objc_enumerationMutation(objc);
        }

        v74 = *(*(&v99 + 1) + 8 * jj);
        v75 = MEMORY[0x277CCABB0];
        v76 = [v94 objectForKeyedSubscript:v74];
        [v76 doubleValue];
        v78 = [v75 numberWithDouble:{v77 / objc_msgSend(v98, "count")}];
        [v94 setObject:v78 forKeyedSubscript:v74];
      }

      v71 = [objc countByEnumeratingWithState:&v99 objects:v145 count:16];
    }

    while (v71);
  }

  if ([v98 count] >= 2 && objc_msgSend(v87, "count"))
  {
    *(*(*(v82 + 48) + 8) + 24) += [v83 count];
    v79 = *(v82 + 40);
    v143[0] = @"momentNodes";
    v143[1] = @"superGroupMomentNodes";
    v144[0] = v83;
    v144[1] = v98;
    v143[2] = @"personNodes";
    v143[3] = @"relationshipsDistribution";
    v144[2] = v87;
    v144[3] = v9;
    v143[4] = @"activitiesDistribution";
    v143[5] = @"roisDistribution";
    v144[4] = v36;
    v144[5] = v96;
    v143[6] = @"poisDistribution";
    v144[6] = v94;
    v80 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v144 forKeys:v143 count:7];
    [v79 addObject:v80];
  }

  v81 = *MEMORY[0x277D85DE8];
}

double __88__PGSocialGroupsQuestionFactory_enumeratePeopleClustersWithGraph_withLinkage_withBlock___block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"personNodes"];
  v8 = [v5 objectForKeyedSubscript:@"personNodes"];
  if (([v7 isSubsetOfSet:v8] & 1) != 0 || (v9 = 3.0, objc_msgSend(v8, "isSubsetOfSet:", v7)))
  {
    [*(a1 + 32) peopleDistance:v5 withSecondBaseGroup:v6 threshold:0.28 factor:0.33];
    v11 = v10 + 0.0;
    [*(a1 + 32) momentsCountDistance:v5 withSecondBaseGroup:v6 withSubsetBias:@"momentNodes" withDistanceThreshold:0.0 withIntersectionBias:0.66 withKey:0.2];
    v9 = v11 + v12;
  }

  return v9;
}

uint64_t __88__PGSocialGroupsQuestionFactory_enumeratePeopleClustersWithGraph_withLinkage_withBlock___block_invoke_9(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 objects];
  v6 = [v5 valueForKeyPath:@"@sum.momentNodes.@count"];

  v7 = [v4 objects];

  v8 = [v7 valueForKeyPath:@"@sum.momentNodes.@count"];

  v9 = [v8 compare:v6];
  return v9;
}

id __88__PGSocialGroupsQuestionFactory_enumeratePeopleClustersWithGraph_withLinkage_withBlock___block_invoke_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v40 = *MEMORY[0x277D85DE8];
  v29 = a5;
  v25 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
  if (a4)
  {
    v8 = a4;
    for (i = 0; i != v8; ++i)
    {
      v10 = [v29 objectAtIndexedSubscript:*(*(a2 + 8 * a3) + 8 * i)];
      v11 = [v10 objectForKeyedSubscript:@"momentNodes"];
      [v28 addObjectsFromArray:v11];

      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v12 = [v10 objectForKeyedSubscript:@"superGroupMomentNodes"];
      v13 = [v12 countByEnumeratingWithState:&v34 objects:v39 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v35;
        do
        {
          for (j = 0; j != v14; ++j)
          {
            if (*v35 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v34 + 1) + 8 * j);
            if (([v6 containsObject:v17] & 1) == 0)
            {
              [v6 addObject:v17];
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v34 objects:v39 count:16];
        }

        while (v14);
      }

      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v18 = [v10 objectForKeyedSubscript:@"personNodes"];
      v19 = [v18 countByEnumeratingWithState:&v30 objects:v38 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v31;
        do
        {
          for (k = 0; k != v20; ++k)
          {
            if (*v31 != v21)
            {
              objc_enumerationMutation(v18);
            }

            [v7 addObject:*(*(&v30 + 1) + 8 * k)];
          }

          v20 = [v18 countByEnumeratingWithState:&v30 objects:v38 count:16];
        }

        while (v20);
      }
    }
  }

  [v25 setObject:v7 forKeyedSubscript:@"personNodes"];
  [v25 setObject:v28 forKeyedSubscript:@"momentNodes"];
  [v25 setObject:v6 forKeyedSubscript:@"superGroupMomentNodes"];

  v23 = *MEMORY[0x277D85DE8];

  return v25;
}

uint64_t __88__PGSocialGroupsQuestionFactory_enumeratePeopleClustersWithGraph_withLinkage_withBlock___block_invoke_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a4)
  {
    v9 = 0;
    v10 = 0;
    for (i = 0; i != a4; ++i)
    {
      v12 = [a5 objectAtIndexedSubscript:*(*(a2 + 8 * a3) + 8 * i)];
      v13 = [v12 objectForKeyedSubscript:@"personNodes"];
      if ([v13 count] > v9)
      {
        v9 = [v13 count];
        v10 = i;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return *(*(a2 + 8 * a3) + 8 * v10);
}

uint64_t __88__PGSocialGroupsQuestionFactory_enumeratePeopleClustersWithGraph_withLinkage_withBlock___block_invoke_5_399(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 count];
  if (v6 >= [v5 count])
  {
    v8 = [v4 count];
    v7 = v8 > [v5 count];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

uint64_t __88__PGSocialGroupsQuestionFactory_enumeratePeopleClustersWithGraph_withLinkage_withBlock___block_invoke_4_395(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 count];
  if (v6 >= [v5 count])
  {
    v8 = [v4 count];
    v7 = v8 > [v5 count];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

void __88__PGSocialGroupsQuestionFactory_enumeratePeopleClustersWithGraph_withLinkage_withBlock___block_invoke_5(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if ([*(a1 + 32) isSubsetOfSet:a2])
  {
    [*(a1 + 40) addObjectsFromArray:v5];
  }
}

void __88__PGSocialGroupsQuestionFactory_enumeratePeopleClustersWithGraph_withLinkage_withBlock___block_invoke_389(uint64_t a1, void *a2, void *a3)
{
  v13 = a3;
  v5 = [a2 isReliable];
  v6 = v13;
  if (v5)
  {
    v7 = [v13 sceneName];
    if ([*(a1 + 32) containsObject:v7])
    {
      v8 = [*(a1 + 40) objectForKey:v7];

      if (v8)
      {
        v9 = MEMORY[0x277CCABB0];
        v10 = [*(a1 + 40) objectForKeyedSubscript:v7];
        [v10 doubleValue];
        v12 = [v9 numberWithDouble:v11 + 1.0];
        [*(a1 + 40) setObject:v12 forKeyedSubscript:v7];
      }

      else
      {
        [*(a1 + 40) setObject:&unk_2844846E0 forKeyedSubscript:v7];
      }
    }

    v6 = v13;
  }
}

void __88__PGSocialGroupsQuestionFactory_enumeratePeopleClustersWithGraph_withLinkage_withBlock___block_invoke_2_391(uint64_t a1, void *a2)
{
  v8 = [a2 label];
  if ([*(a1 + 32) containsObject:?])
  {
    v3 = [*(a1 + 40) objectForKey:v8];

    if (v3)
    {
      v4 = MEMORY[0x277CCABB0];
      v5 = [*(a1 + 40) objectForKeyedSubscript:v8];
      [v5 doubleValue];
      v7 = [v4 numberWithDouble:v6 + 1.0];
      [*(a1 + 40) setObject:v7 forKeyedSubscript:v8];
    }

    else
    {
      [*(a1 + 40) setObject:&unk_2844846E0 forKeyedSubscript:v8];
    }
  }
}

void __88__PGSocialGroupsQuestionFactory_enumeratePeopleClustersWithGraph_withLinkage_withBlock___block_invoke_3_393(uint64_t a1, void *a2)
{
  v8 = [a2 label];
  if ([*(a1 + 32) containsObject:?])
  {
    v3 = [*(a1 + 40) objectForKey:v8];

    if (v3)
    {
      v4 = MEMORY[0x277CCABB0];
      v5 = [*(a1 + 40) objectForKeyedSubscript:v8];
      [v5 doubleValue];
      v7 = [v4 numberWithDouble:v6 + 1.0];
      [*(a1 + 40) setObject:v7 forKeyedSubscript:v8];
    }

    else
    {
      [*(a1 + 40) setObject:&unk_2844846E0 forKeyedSubscript:v8];
    }
  }
}

void __88__PGSocialGroupsQuestionFactory_enumeratePeopleClustersWithGraph_withLinkage_withBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 isMeNode] & 1) == 0)
  {
    [*(a1 + 32) addObject:v3];
  }
}

+ (void)enumerateSocialGroupsWithGraph:(id)graph withLinkage:(unint64_t)linkage validGroupsBlock:(id)block invalidGroupsBlock:(id)groupsBlock averageWeight:(float *)weight
{
  v252 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  blockCopy = block;
  groupsBlockCopy = groupsBlock;
  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v242 = 0;
  v243 = &v242;
  v244 = 0x2020000000;
  v245 = 0;
  v238 = 0;
  v239 = &v238;
  v240 = 0x2020000000;
  v241 = 0;
  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v234 = 0;
  v235 = &v234;
  v236 = 0x2020000000;
  v237 = 0;
  v14 = objc_opt_class();
  v226[0] = MEMORY[0x277D85DD0];
  v226[1] = 3221225472;
  v226[2] = __126__PGSocialGroupsQuestionFactory_enumerateSocialGroupsWithGraph_withLinkage_validGroupsBlock_invalidGroupsBlock_averageWeight___block_invoke;
  v226[3] = &unk_278888618;
  v231 = &v234;
  v232 = &v242;
  v233 = &v238;
  v177 = v12;
  v227 = v177;
  v176 = v13;
  v228 = v176;
  v180 = groupsBlockCopy;
  v230 = v180;
  v175 = v11;
  v229 = v175;
  [v14 enumeratePeopleClustersWithGraph:graphCopy withLinkage:linkage withBlock:v226];
  v15 = v235[3];
  if (!v15)
  {
    goto LABEL_72;
  }

  v243[6] = v243[6] / v15;
  v16 = [v177 sortedArrayUsingComparator:&__block_literal_global_63919];
  v17 = [objc_alloc(MEMORY[0x277D22C40]) initWithArray:v16];
  [v17 mean];
  v19 = v18;
  v173 = v17;
  [v17 standardDeviation];
  v21 = v20;
  v193 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v224 = 0u;
  v225 = 0u;
  v222 = 0u;
  v223 = 0u;
  obj = v16;
  v22 = [obj countByEnumeratingWithState:&v222 objects:v251 count:16];
  if (v22)
  {
    v23 = *v223;
    v24 = v19 - v21;
    v25 = v19 + v21;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v223 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v27 = *(*(&v222 + 1) + 8 * i);
        [v27 floatValue];
        if (v28 >= v24)
        {
          [v27 floatValue];
          if (v29 <= v25)
          {
            [v193 addObject:v27];
          }
        }
      }

      v22 = [obj countByEnumeratingWithState:&v222 objects:v251 count:16];
    }

    while (v22);
  }

  v172 = [objc_alloc(MEMORY[0x277D22C40]) initWithArray:v193];
  [v172 mean];
  v188 = v30;
  v31 = [v176 sortedArrayUsingComparator:&__block_literal_global_336];
  v32 = [objc_alloc(MEMORY[0x277D22C40]) initWithArray:v31];
  [v32 mean];
  v34 = v33;
  v171 = v32;
  [v32 standardDeviation];
  v36 = v35;
  v192 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v220 = 0u;
  v221 = 0u;
  v218 = 0u;
  v219 = 0u;
  v182 = v31;
  v37 = [v182 countByEnumeratingWithState:&v218 objects:v250 count:16];
  if (v37)
  {
    v38 = *v219;
    v39 = v34 - v36;
    v40 = v34 + v36;
    do
    {
      for (j = 0; j != v37; ++j)
      {
        if (*v219 != v38)
        {
          objc_enumerationMutation(v182);
        }

        v42 = *(*(&v218 + 1) + 8 * j);
        [v42 floatValue];
        if (v43 >= v39)
        {
          [v42 floatValue];
          if (v44 <= v40)
          {
            [v192 addObject:v42];
          }
        }
      }

      v37 = [v182 countByEnumeratingWithState:&v218 objects:v250 count:16];
    }

    while (v37);
  }

  v170 = [objc_alloc(MEMORY[0x277D22C40]) initWithArray:v192];
  [v170 mean];
  v186 = v45;
  v46 = v235[3];
  if (v46 > 0xC7)
  {
    v47 = -0.1;
  }

  else
  {
    v47 = ((v46 / 200.0) * 0.5) + -0.1;
  }

  v178 = v47;
  v191 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v216 = 0u;
  v217 = 0u;
  v214 = 0u;
  v215 = 0u;
  v181 = v175;
  v190 = [v181 countByEnumeratingWithState:&v214 objects:v249 count:16];
  if (v190)
  {
    v184 = *v215;
    do
    {
      for (k = 0; k != v190; ++k)
      {
        if (*v215 != v184)
        {
          objc_enumerationMutation(v181);
        }

        v48 = *(*(&v214 + 1) + 8 * k);
        v49 = [v48 objectForKeyedSubscript:@"personNodes"];
        v50 = [v48 objectForKeyedSubscript:@"peopleWeights"];
        v51 = [v48 objectForKeyedSubscript:@"momentNodes"];
        v52 = [v48 objectForKeyedSubscript:@"frequency"];
        [v52 floatValue];
        v54 = v53;

        v212 = [v48 objectForKeyedSubscript:@"superGroupMomentNodes"];
        *&v55 = [v51 count];
        LODWORD(v56) = v188;
        LODWORD(v57) = 1060320051;
        [graphCopy normalizeFeatureValue:v193 average:v55 featureValues:v56 factor:v57];
        v59 = v58;
        *&v60 = [v212 count];
        LODWORD(v61) = v186;
        LODWORD(v62) = 1060320051;
        [graphCopy normalizeFeatureValue:v192 average:v60 featureValues:v61 factor:v62];
        v64 = v63;
        [graphCopy averageTopMomentTimes:v212 numberOfMoments:3];
        v66 = v65;
        date = [MEMORY[0x277CBEAA8] date];
        [date timeIntervalSince1970];
        v69 = v68;

        date2 = [MEMORY[0x277CBEAA8] date];
        v207 = [date2 dateByAddingTimeInterval:-157680000.0];

        [v207 timeIntervalSince1970];
        v72 = v71;
        v73 = [v48 objectForKeyedSubscript:@"distribution"];
        v74 = [v73 objectForKeyedSubscript:@"relationshipsDistribution"];
        v194 = v73;
        v75 = [v74 objectForKey:@"FAMILY"];
        v197 = v74;
        LOBYTE(v73) = v75 == 0;

        if (v73)
        {
          v78 = 0.0;
        }

        else
        {
          v76 = [v74 objectForKeyedSubscript:@"FAMILY"];
          [v76 floatValue];
          v78 = v77;
        }

        v79 = (v66 - v72) / (v69 - v72);
        v80 = tanh((v78 * 3.0));
        v81 = -(v80 - (v78 * 2.0));
        if (v81 < 0.0)
        {
          v81 = 0.0;
        }

        if (v81 <= 1.0)
        {
          v82 = v81;
        }

        else
        {
          v82 = 1.0;
        }

        v83 = v49;
        v84 = v50;
        v85 = v51;
        v86 = 0;
        v87 = 0.0;
        while (v86 < [v83 count])
        {
          v88 = [v83 objectAtIndexedSubscript:v86];
          v89 = [v84 objectAtIndexedSubscript:v86];
          [v89 doubleValue];
          v91 = v90;

          numberOfMomentNodes = [v88 numberOfMomentNodes];
          if (numberOfMomentNodes)
          {
            v93 = [v85 count];
            v94 = -(v93 * v91 - numberOfMomentNodes);
            if (-(numberOfMomentNodes - v93 * v91) >= 0.0)
            {
              v94 = -(numberOfMomentNodes - v93 * v91);
            }

            v95 = v94 / numberOfMomentNodes;
          }

          else
          {
            v95 = 0.0;
          }

          v87 = v87 + v95;
          ++v86;
        }

        v96 = [v83 count];

        v97 = 1.0 - v87 / v96;
        v98 = v97;
        v99 = (((((v64 * 0.3) + (v59 * 0.7)) + (v79 * 0.0)) + (v82 * 0.0)) + 0.0) + (v98 * 0.0);
        v100 = v54 / v239[6];
        v247[0] = @"personNodes";
        v247[1] = @"peopleWeights";
        if (v99 >= 1.0)
        {
          v101 = ((1.0 - v100) * -0.01) + 1.0;
        }

        else
        {
          v101 = v99 + 0.0;
        }

        v248[0] = v83;
        v248[1] = v84;
        v247[2] = @"momentNodes";
        v247[3] = @"superGroupMomentNodes";
        v248[2] = v85;
        v248[3] = v212;
        v247[4] = @"socialGroupWeight";
        v205 = [MEMORY[0x277CCABB0] numberWithFloat:?];
        v248[4] = v205;
        v247[5] = @"groupCohesionScore";
        v203 = [MEMORY[0x277CCABB0] numberWithDouble:v97];
        v248[5] = v203;
        v247[6] = @"frequency";
        *&v102 = v54;
        v200 = [MEMORY[0x277CCABB0] numberWithFloat:v102];
        v248[6] = v200;
        v247[7] = @"avgFrequency";
        *&v103 = v243[6];
        v198 = [MEMORY[0x277CCABB0] numberWithFloat:v103];
        v248[7] = v198;
        v247[8] = @"exclusiveMomentCountFeature";
        *&v104 = v59;
        v105 = [MEMORY[0x277CCABB0] numberWithFloat:v104];
        v248[8] = v105;
        v247[9] = @"superGroupMomentCountFeature";
        *&v106 = v64;
        v107 = [MEMORY[0x277CCABB0] numberWithFloat:v106];
        v248[9] = v107;
        v247[10] = @"familyDistributionFeature";
        *&v108 = v82;
        v109 = [MEMORY[0x277CCABB0] numberWithFloat:v108];
        v248[10] = v109;
        v247[11] = @"semanticCohesionFeature";
        v110 = [MEMORY[0x277CCABB0] numberWithFloat:0.0];
        v248[11] = v110;
        v247[12] = @"recencyFeature";
        *&v111 = v79;
        v112 = [MEMORY[0x277CCABB0] numberWithFloat:v111];
        v248[12] = v112;
        v247[13] = @"ranking";
        *&v113 = v101;
        v114 = [MEMORY[0x277CCABB0] numberWithFloat:v113];
        v248[13] = v114;
        v115 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v248 forKeys:v247 count:14];
        [v191 addObject:v115];
      }

      v190 = [v181 countByEnumeratingWithState:&v214 objects:v249 count:16];
    }

    while (v190);
  }

  v116 = v235[3];
  if (v116 <= 0xC7)
  {
    v117 = (tanh(((v116 / 200.0) * 3.0)) * 15.0);
  }

  else
  {
    v117 = 15;
  }

  v189 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"ranking" ascending:0];
  v187 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"socialGroupWeight" ascending:0];
  v185 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"superGroupMomentCountFeature" ascending:0];
  v246[0] = v189;
  v246[1] = v187;
  v246[2] = v185;
  v118 = [MEMORY[0x277CBEA60] arrayWithObjects:v246 count:3];
  [v191 sortUsingDescriptors:v118];

  v119 = 0;
  if (v117 <= 5)
  {
    v120 = 5;
  }

  else
  {
    v120 = v117;
  }

  v195 = v120;
  v199 = 2 * v120;
  while (v119 < [v191 count])
  {
    v121 = [v191 objectAtIndexedSubscript:v119];
    v122 = v121;
    if (blockCopy)
    {
      v123 = [v121 objectForKeyedSubscript:@"ranking"];
      [v123 floatValue];
      if (v124 >= v178)
      {

        if (v119 < v195)
        {
          v209 = [v122 objectForKeyedSubscript:@"personNodes"];
          v208 = [v122 objectForKeyedSubscript:@"peopleWeights"];
          v206 = [v122 objectForKeyedSubscript:@"momentNodes"];
          v204 = [v122 objectForKeyedSubscript:@"superGroupMomentNodes"];
          v213 = [v122 objectForKeyedSubscript:@"socialGroupWeight"];
          [v213 floatValue];
          v201 = v125;
          v211 = [v122 objectForKeyedSubscript:@"groupCohesionScore"];
          [v211 floatValue];
          v127 = v126;
          v128 = [v122 objectForKeyedSubscript:@"frequency"];
          [v128 floatValue];
          v130 = v129;
          v131 = [v122 objectForKeyedSubscript:@"avgFrequency"];
          [v131 floatValue];
          v133 = v132;
          v134 = [v122 objectForKeyedSubscript:@"exclusiveMomentCountFeature"];
          [v134 floatValue];
          v136 = v135;
          v137 = [v122 objectForKeyedSubscript:@"superGroupMomentCountFeature"];
          [v137 floatValue];
          v139 = v138;
          v140 = [v122 objectForKeyedSubscript:@"familyDistributionFeature"];
          [v140 floatValue];
          v142 = v141;
          v143 = [v122 objectForKeyedSubscript:@"semanticCohesionFeature"];
          [v143 floatValue];
          v145 = v144;
          v146 = [v122 objectForKeyedSubscript:@"recencyFeature"];
          [v146 floatValue];
          v148 = v147;
          v149 = [v122 objectForKeyedSubscript:@"ranking"];
          [v149 floatValue];
          blockCopy[2](blockCopy, v209, v208, v206, v204, v201, v127, v130, v133, v136, v139, v142, v145, COERCE_DOUBLE(__PAIR64__(v150, v148)));
LABEL_67:

          goto LABEL_68;
        }
      }

      else
      {
      }
    }

    if (v180 && v119 < v199)
    {
      v209 = [v122 objectForKeyedSubscript:@"personNodes"];
      v208 = [v122 objectForKeyedSubscript:@"peopleWeights"];
      v206 = [v122 objectForKeyedSubscript:@"momentNodes"];
      v204 = [v122 objectForKeyedSubscript:@"superGroupMomentNodes"];
      v213 = [v122 objectForKeyedSubscript:@"socialGroupWeight"];
      [v213 floatValue];
      v202 = v151;
      v211 = [v122 objectForKeyedSubscript:@"groupCohesionScore"];
      [v211 floatValue];
      v153 = v152;
      v128 = [v122 objectForKeyedSubscript:@"frequency"];
      [v128 floatValue];
      v155 = v154;
      v131 = [v122 objectForKeyedSubscript:@"avgFrequency"];
      [v131 floatValue];
      v157 = v156;
      v134 = [v122 objectForKeyedSubscript:@"exclusiveMomentCountFeature"];
      [v134 floatValue];
      v159 = v158;
      v137 = [v122 objectForKeyedSubscript:@"superGroupMomentCountFeature"];
      [v137 floatValue];
      v161 = v160;
      v140 = [v122 objectForKeyedSubscript:@"familyDistributionFeature"];
      [v140 floatValue];
      v163 = v162;
      v143 = [v122 objectForKeyedSubscript:@"semanticCohesionFeature"];
      [v143 floatValue];
      v165 = v164;
      v146 = [v122 objectForKeyedSubscript:@"recencyFeature"];
      [v146 floatValue];
      v167 = v166;
      v149 = [v122 objectForKeyedSubscript:@"ranking"];
      [v149 floatValue];
      (*(v180 + 2))(v180, v209, v208, v206, v204, v202, v153, v155, v157, v159, v161, v163, v165, COERCE_DOUBLE(__PAIR64__(v168, v167)));
      goto LABEL_67;
    }

LABEL_68:

    ++v119;
  }

  if (weight)
  {
    *weight = v243[6] / v239[6];
  }

LABEL_72:
  _Block_object_dispose(&v234, 8);

  _Block_object_dispose(&v238, 8);
  _Block_object_dispose(&v242, 8);

  v169 = *MEMORY[0x277D85DE8];
}

void __126__PGSocialGroupsQuestionFactory_enumerateSocialGroupsWithGraph_withLinkage_validGroupsBlock_invalidGroupsBlock_averageWeight___block_invoke(void *a1, void *a2, void *a3, void *a4, void *a5, float a6)
{
  v30[5] = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  ++*(*(a1[8] + 8) + 24);
  *(*(a1[9] + 8) + 24) = *(*(a1[9] + 8) + 24) + a6;
  v15 = *(a1[10] + 8);
  if (*(v15 + 24) == 0.0)
  {
    *(v15 + 24) = a6;
  }

  v16 = a1[4];
  v17 = MEMORY[0x277CCABB0];
  *&v18 = [v13 count];
  v19 = [v17 numberWithFloat:v18];
  [v16 addObject:v19];

  v20 = a1[5];
  v21 = MEMORY[0x277CCABB0];
  *&v22 = [v14 count];
  v23 = [v21 numberWithFloat:v22];
  [v20 addObject:v23];

  if ([v11 count] && a1[7])
  {
    v25 = a1[6];
    v29[0] = @"personNodes";
    v29[1] = @"peopleWeights";
    v30[0] = v11;
    v30[1] = v12;
    v29[2] = @"momentNodes";
    v29[3] = @"superGroupMomentNodes";
    v30[2] = v13;
    v30[3] = v14;
    v29[4] = @"frequency";
    *&v24 = a6;
    v26 = [MEMORY[0x277CCABB0] numberWithFloat:v24];
    v30[4] = v26;
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:5];
    [v25 addObject:v27];
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (id)_identifierForPersonNodesAsString:(id)string
{
  v3 = [PGGraphSocialGroupNode identifierForMemberNodes:string];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:v3];
  stringValue = [v4 stringValue];

  return stringValue;
}

- (id)_createSocialGroupWithPersonLocalIdentifiers:(id)identifiers
{
  v30 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  v4 = +[PGGraphPersonNode personSortDescriptors];
  v5 = [identifiersCopy sortedArrayUsingDescriptors:v4];

  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        localIdentifier = [v13 localIdentifier];
        [array addObject:localIdentifier];

        name = [v13 name];
        v16 = [name length];

        if (v16)
        {
          name2 = [v13 name];
          [array2 addObject:name2];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v10);
  }

  v18 = [(PGSocialGroupsQuestionFactory *)self _identifierForPersonNodesAsString:v8];
  v27[0] = @"socialGroupID";
  v27[1] = @"personLocalIdentifiers";
  v28[0] = v18;
  v28[1] = array;
  v27[2] = @"personNames";
  v28[2] = array2;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:3];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)_socialGroupsForSurveyFromCustomAlgorithm:(id)algorithm
{
  v64[1] = *MEMORY[0x277D85DE8];
  algorithmCopy = algorithm;
  [algorithmCopy _checkCanRead];
  array = [MEMORY[0x277CBEB18] array];
  relevantMomentNodesForSocialGroupProcessing = [algorithmCopy relevantMomentNodesForSocialGroupProcessing];
  v60[0] = 0;
  v60[1] = v60;
  v60[2] = 0x2020000000;
  v60[3] = 0;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = __75__PGSocialGroupsQuestionFactory__socialGroupsForSurveyFromCustomAlgorithm___block_invoke;
  v57[3] = &unk_278888660;
  v5 = dictionary;
  v58 = v5;
  v59 = v60;
  [relevantMomentNodesForSocialGroupProcessing enumerateObjectsUsingBlock:v57];
  v56[0] = 0;
  v56[1] = v56;
  v56[2] = 0x2020000000;
  v56[3] = 0;
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __75__PGSocialGroupsQuestionFactory__socialGroupsForSurveyFromCustomAlgorithm___block_invoke_3;
  v53[3] = &unk_278888860;
  v55 = v56;
  v6 = array;
  v54 = v6;
  [v5 enumerateKeysAndObjectsUsingBlock:v53];
  orderedSet = [MEMORY[0x277CBEB40] orderedSet];
  v42 = v5;
  v8 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"personNodes" ascending:0 comparator:&__block_literal_global_420];
  v64[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v64 count:1];
  [v6 sortUsingDescriptors:v9];
  v43 = v8;

  for (i = 0; i != 10; ++i)
  {
    if (i >= [v6 count])
    {
      break;
    }

    v11 = [v6 objectAtIndexedSubscript:i];
    if (([orderedSet containsObject:v11] & 1) == 0)
    {
      [orderedSet addObject:v11];
    }
  }

  v12 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"momentNodes" ascending:1 comparator:&__block_literal_global_422_63944];
  v63 = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v63 count:1];
  [v6 sortUsingDescriptors:v13];
  v41 = v12;

  v14 = 0;
  v15 = 1;
  while (v14 < [v6 count] && v15 < 7)
  {
    v16 = [v6 objectAtIndexedSubscript:v14];
    v17 = [v16 objectForKeyedSubscript:@"momentNodes"];
    v18 = [v17 count];
    if (v18 > v15)
    {
      if (([orderedSet containsObject:v16] & 1) == 0)
      {
        [orderedSet addObject:v16];
      }

      v15 = v18;
    }

    ++v14;
  }

  v19 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"momentNodes" ascending:0 comparator:&__block_literal_global_424];
  v62 = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v62 count:1];
  [v6 sortUsingDescriptors:v20];
  v40 = v19;

  v21 = 0;
  v46 = 1;
  for (j = 0; j < [v6 count]; ++j)
  {
    v22 = [v6 objectAtIndexedSubscript:?];
    if (([orderedSet containsObject:v22] & 1) == 0)
    {
      [orderedSet addObject:v22];
      if (++v21 > 0x45)
      {

        break;
      }

      v23 = 0;
      for (k = v46; k < [v6 count] && v23 < 4; ++k)
      {
        v25 = [v6 objectAtIndexedSubscript:k];
        v26 = [v22 objectForKeyedSubscript:@"personNodes"];
        v27 = [v25 objectForKeyedSubscript:@"personNodes"];
        if ((([v26 isSubsetOfSet:v27] & 1) != 0 || objc_msgSend(v27, "isSubsetOfSet:", v26)) && (objc_msgSend(orderedSet, "containsObject:", v25) & 1) == 0)
        {
          [orderedSet addObject:v25];
          if (++v21 >= 0x46)
          {

            break;
          }

          ++v23;
        }
      }
    }

    ++v46;
  }

  orderedSet2 = [MEMORY[0x277CBEB40] orderedSet];
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v29 = orderedSet;
  v30 = [v29 countByEnumeratingWithState:&v49 objects:v61 count:16];
  if (v30)
  {
    v31 = *v50;
    do
    {
      for (m = 0; m != v30; ++m)
      {
        if (*v50 != v31)
        {
          objc_enumerationMutation(v29);
        }

        v33 = [*(*(&v49 + 1) + 8 * m) objectForKeyedSubscript:@"personNodes"];
        if ([v33 count])
        {
          v34 = MEMORY[0x277CBEA60];
          allObjects = [v33 allObjects];
          v36 = [v34 arrayWithArray:allObjects];

          v37 = [(PGSocialGroupsQuestionFactory *)self _createSocialGroupWithPersonLocalIdentifiers:v36];
          [orderedSet2 addObject:v37];
        }
      }

      v30 = [v29 countByEnumeratingWithState:&v49 objects:v61 count:16];
    }

    while (v30);
  }

  _Block_object_dispose(v56, 8);
  _Block_object_dispose(v60, 8);

  v38 = *MEMORY[0x277D85DE8];

  return orderedSet2;
}

void __75__PGSocialGroupsQuestionFactory__socialGroupsForSurveyFromCustomAlgorithm___block_invoke(uint64_t a1, void *a2, uint64_t a3, BOOL *a4)
{
  v6 = a2;
  v7 = [MEMORY[0x277CBEB58] set];
  v8 = [v6 collection];
  v9 = [v8 personNodes];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __75__PGSocialGroupsQuestionFactory__socialGroupsForSurveyFromCustomAlgorithm___block_invoke_2;
  v14[3] = &unk_278889240;
  v10 = v7;
  v15 = v10;
  [v9 enumerateNodesUsingBlock:v14];
  if ([v10 count])
  {
    v11 = [*(a1 + 32) objectForKeyedSubscript:v10];

    if (v11)
    {
      v12 = [*(a1 + 32) objectForKeyedSubscript:v10];
      [v12 addObject:v6];
    }

    else
    {
      v13 = [MEMORY[0x277CBEB18] arrayWithObject:v6];
      [*(a1 + 32) setObject:v13 forKeyedSubscript:v10];

      ++*(*(*(a1 + 40) + 8) + 24);
    }

    *a4 = *(*(*(a1 + 40) + 8) + 24) > 0x3E8uLL;
  }
}

void __75__PGSocialGroupsQuestionFactory__socialGroupsForSurveyFromCustomAlgorithm___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  *(*(*(a1 + 40) + 8) + 24) += [v6 count];
  if ([v5 count])
  {
    v7 = *(a1 + 32);
    v10[0] = @"momentNodes";
    v10[1] = @"personNodes";
    v11[0] = v6;
    v11[1] = v5;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
    [v7 addObject:v8];
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __75__PGSocialGroupsQuestionFactory__socialGroupsForSurveyFromCustomAlgorithm___block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 count];
  if (v6 >= [v5 count])
  {
    v8 = [v4 count];
    v7 = v8 > [v5 count];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

uint64_t __75__PGSocialGroupsQuestionFactory__socialGroupsForSurveyFromCustomAlgorithm___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 count];
  if (v6 >= [v5 count])
  {
    v8 = [v4 count];
    v7 = v8 > [v5 count];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

uint64_t __75__PGSocialGroupsQuestionFactory__socialGroupsForSurveyFromCustomAlgorithm___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 count];
  if (v6 >= [v5 count])
  {
    v8 = [v4 count];
    v7 = v8 > [v5 count];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

void __75__PGSocialGroupsQuestionFactory__socialGroupsForSurveyFromCustomAlgorithm___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  if (([v4 isMeNode] & 1) == 0)
  {
    v3 = [v4 localIdentifier];

    if (v3)
    {
      [*(a1 + 32) addObject:v4];
    }
  }
}

- (id)_socialGroupsForSurveyFromNewAlgorithm:(id)algorithm withLinkage:(unint64_t)linkage
{
  v6 = MEMORY[0x277CBEB38];
  algorithmCopy = algorithm;
  v8 = objc_alloc_init(v6);
  orderedSet = [MEMORY[0x277CBEB40] orderedSet];
  orderedSet2 = [MEMORY[0x277CBEB40] orderedSet];
  v19 = 0;
  v11 = objc_opt_class();
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __84__PGSocialGroupsQuestionFactory__socialGroupsForSurveyFromNewAlgorithm_withLinkage___block_invoke;
  v17[3] = &unk_2788885F0;
  v17[4] = self;
  v18 = orderedSet;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __84__PGSocialGroupsQuestionFactory__socialGroupsForSurveyFromNewAlgorithm_withLinkage___block_invoke_2;
  v15[3] = &unk_2788885F0;
  v15[4] = self;
  v16 = orderedSet2;
  v12 = orderedSet2;
  v13 = orderedSet;
  [v11 enumerateSocialGroupsWithGraph:algorithmCopy withLinkage:linkage validGroupsBlock:v17 invalidGroupsBlock:v15 averageWeight:&v19];

  [v8 setValue:v13 forKey:@"validSocialGroupsPeopleLocalIdentifiers"];
  [v8 setValue:v12 forKey:@"remainingSocialGroupsPeopleLocalIdentifiers"];

  return v8;
}

void __84__PGSocialGroupsQuestionFactory__socialGroupsForSurveyFromNewAlgorithm_withLinkage___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _createSocialGroupWithPersonLocalIdentifiers:a2];
  [*(a1 + 40) addObject:v3];
}

void __84__PGSocialGroupsQuestionFactory__socialGroupsForSurveyFromNewAlgorithm_withLinkage___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _createSocialGroupWithPersonLocalIdentifiers:a2];
  [*(a1 + 40) addObject:v3];
}

- (id)_socialGroupsForSurveyFromCurrentAlgorithm:(id)algorithm
{
  v4 = MEMORY[0x277CBEB38];
  algorithmCopy = algorithm;
  v6 = objc_alloc_init(v4);
  orderedSet = [MEMORY[0x277CBEB40] orderedSet];
  orderedSet2 = [MEMORY[0x277CBEB40] orderedSet];
  v16 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __76__PGSocialGroupsQuestionFactory__socialGroupsForSurveyFromCurrentAlgorithm___block_invoke;
  v14[3] = &unk_2788885C8;
  v14[4] = self;
  v15 = orderedSet;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __76__PGSocialGroupsQuestionFactory__socialGroupsForSurveyFromCurrentAlgorithm___block_invoke_2;
  v12[3] = &unk_2788885C8;
  v12[4] = self;
  v13 = orderedSet2;
  v9 = orderedSet2;
  v10 = orderedSet;
  [algorithmCopy enumerateSocialGroupsIncludingMeNode:0 socialGroupsVersion:1 simulateMeNodeNotSet:0 validGroupsBlock:v14 invalidGroupsBlock:v12 averageWeight:&v16];

  [v6 setValue:v10 forKey:@"validSocialGroupsPeopleLocalIdentifiers"];
  [v6 setValue:v9 forKey:@"remainingSocialGroupsPeopleLocalIdentifiers"];

  return v6;
}

void __76__PGSocialGroupsQuestionFactory__socialGroupsForSurveyFromCurrentAlgorithm___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 count])
  {
    v3 = [*(a1 + 32) _createSocialGroupWithPersonLocalIdentifiers:v4];
    [*(a1 + 40) addObject:v3];
  }
}

void __76__PGSocialGroupsQuestionFactory__socialGroupsForSurveyFromCurrentAlgorithm___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 count])
  {
    v3 = [*(a1 + 32) _createSocialGroupWithPersonLocalIdentifiers:v4];
    [*(a1 + 40) addObject:v3];
  }
}

- (id)_socialGroupsForSurvey:(id)survey withLimit:(unint64_t)limit
{
  surveyCopy = survey;
  v7 = [(PGSocialGroupsQuestionFactory *)self _socialGroupsForSurveyFromCurrentAlgorithm:surveyCopy];
  v8 = [v7 objectForKeyedSubscript:@"validSocialGroupsPeopleLocalIdentifiers"];
  if ([v8 count] >= limit)
  {
    v20 = v8;
  }

  else
  {
    v9 = [(PGSocialGroupsQuestionFactory *)self _socialGroupsForSurveyFromNewAlgorithm:surveyCopy withLinkage:5];
    v10 = [v9 objectForKeyedSubscript:@"validSocialGroupsPeopleLocalIdentifiers"];
    [v8 unionOrderedSet:v10];

    if ([v8 count] >= limit)
    {
      v21 = v8;
    }

    else
    {
      v11 = [(PGSocialGroupsQuestionFactory *)self _socialGroupsForSurveyFromNewAlgorithm:surveyCopy withLinkage:0];
      v12 = [v11 objectForKeyedSubscript:@"validSocialGroupsPeopleLocalIdentifiers"];
      [v8 unionOrderedSet:v12];

      if ([v8 count] >= limit)
      {
        v22 = v8;
      }

      else
      {
        v13 = [(PGSocialGroupsQuestionFactory *)self _socialGroupsForSurveyFromNewAlgorithm:surveyCopy withLinkage:3];
        v14 = [v13 objectForKeyedSubscript:@"validSocialGroupsPeopleLocalIdentifiers"];
        [v8 unionOrderedSet:v14];

        if ([v8 count] >= limit)
        {
          v23 = v8;
        }

        else
        {
          v15 = [(PGSocialGroupsQuestionFactory *)self _socialGroupsForSurveyFromNewAlgorithm:surveyCopy withLinkage:2];
          v16 = [v15 objectForKeyedSubscript:@"validSocialGroupsPeopleLocalIdentifiers"];
          [v8 unionOrderedSet:v16];

          if ([v8 count] >= limit)
          {
            v24 = v8;
          }

          else
          {
            v17 = [(PGSocialGroupsQuestionFactory *)self _socialGroupsForSurveyFromCustomAlgorithm:surveyCopy];
            [v8 unionOrderedSet:v17];
            if ([v8 count] >= limit)
            {
              v25 = v8;
            }

            else
            {
              v18 = [v7 objectForKeyedSubscript:@"remainingSocialGroupsPeopleLocalIdentifiers"];
              [v8 unionOrderedSet:v18];
              v19 = v8;
            }
          }
        }
      }
    }
  }

  return v8;
}

- (id)generateQuestionsWithLimit:(unint64_t)limit progressBlock:(id)block
{
  blockCopy = block;
  v7 = [MEMORY[0x277CBEB58] set];
  workingContext = [(PGSurveyQuestionFactory *)self workingContext];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __74__PGSocialGroupsQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke;
  v16 = &unk_27888A2F8;
  v19 = blockCopy;
  limitCopy = limit;
  selfCopy = self;
  v18 = v7;
  v9 = v7;
  v10 = blockCopy;
  [workingContext performSynchronousConcurrentGraphReadUsingBlock:&v13];

  allObjects = [v9 allObjects];

  return allObjects;
}

void __74__PGSocialGroupsQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v31 = _Block_copy(*(a1 + 48));
  if (v31)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v5 = 0.0;
    if (Current >= 0.01)
    {
      v6 = Current;
      v32 = 0;
      v31[2](v31, &v32, 0.0);
      if (v32 == 1)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          goto LABEL_40;
        }

        *buf = 67109378;
        v34 = 132;
        v35 = 2080;
        v36 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Social Groups/PGSocialGroupsQuestionFactory.m";
        v7 = MEMORY[0x277D86220];
        goto LABEL_27;
      }

      v5 = v6;
    }

    if (!*(a1 + 56))
    {
      if (CFAbsoluteTimeGetCurrent() - v5 < 0.01)
      {
        goto LABEL_40;
      }

      v32 = 0;
      v31[2](v31, &v32, 1.0);
      if (!v32 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_40;
      }

      *buf = 67109378;
      v34 = 135;
      v35 = 2080;
      v36 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Social Groups/PGSocialGroupsQuestionFactory.m";
      v7 = MEMORY[0x277D86220];
LABEL_27:
      _os_log_impl(&dword_22F0FC000, v7, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      goto LABEL_40;
    }
  }

  else
  {
    v5 = 0.0;
    if (!*(a1 + 56))
    {
      goto LABEL_40;
    }
  }

  v8 = [v3 graph];
  v9 = [v8 meNode];
  v10 = [v9 localIdentifier];
  v30 = [*(a1 + 32) _socialGroupsForSurvey:v8 withLimit:*(a1 + 56)];
  v11 = [v30 count];
  if (!v11)
  {
    v25 = 0;
    goto LABEL_33;
  }

  v12 = v11;
  v27 = v9;
  v28 = v8;
  v13 = 0;
  v14 = 1.0 / (v11 + 1);
  v29 = v3;
  while (1)
  {
    v15 = [v30 objectAtIndexedSubscript:v13];
    v16 = [v15 objectForKeyedSubscript:@"personLocalIdentifiers"];
    if ([v10 length])
    {
      [v16 addObject:v10];
    }

    v17 = [PGSocialGroupsQuestion alloc];
    v18 = [v15 objectForKeyedSubscript:@"socialGroupID"];
    v19 = [v15 objectForKeyedSubscript:@"personNames"];
    v20 = [(PGSocialGroupsQuestion *)v17 initWithSocialGroupID:v18 personLocalIdentifiers:v16 personNames:v19 localFactoryScore:v14 * v12];

    if (![*(a1 + 32) shouldAddQuestion:v20 toAlreadyGeneratedQuestions:*(a1 + 40)])
    {
      goto LABEL_20;
    }

    [*(a1 + 40) addObject:v20];
    v21 = [*(a1 + 40) count];
    if (v31)
    {
      v22 = v21;
      v23 = *(a1 + 56);
      v24 = CFAbsoluteTimeGetCurrent();
      if (v24 - v5 >= 0.01)
      {
        break;
      }
    }

LABEL_19:
    if ([*(a1 + 40) count] >= *(a1 + 56))
    {
      v25 = 0;
      goto LABEL_32;
    }

LABEL_20:

    ++v13;
    if (!--v12)
    {
      v25 = 0;
      v8 = v28;
      v3 = v29;
      v9 = v27;
      goto LABEL_33;
    }
  }

  v32 = 0;
  v31[2](v31, &v32, v22 / v23);
  if (!v32)
  {
    v5 = v24;
    goto LABEL_19;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v34 = 166;
    v35 = 2080;
    v36 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Social Groups/PGSocialGroupsQuestionFactory.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v25 = 1;
  v5 = v24;
LABEL_32:
  v9 = v27;

  v8 = v28;
  v3 = v29;
LABEL_33:
  if (v31)
  {
    if ((v25 & 1) == 0 && CFAbsoluteTimeGetCurrent() - v5 >= 0.01)
    {
      v32 = 0;
      v31[2](v31, &v32, 1.0);
      if (v32)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v34 = 173;
          v35 = 2080;
          v36 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Social Groups/PGSocialGroupsQuestionFactory.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }
      }
    }
  }

LABEL_40:
  v26 = *MEMORY[0x277D85DE8];
}

@end