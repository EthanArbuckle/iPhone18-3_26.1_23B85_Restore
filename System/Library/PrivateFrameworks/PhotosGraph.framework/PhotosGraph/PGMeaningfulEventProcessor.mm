@interface PGMeaningfulEventProcessor
+ (id)_legacyMeaningResultForResult:(id)result requiredCriteriaByIdentifier:(id)identifier;
+ (id)_postProcessBirthdaysWithResults:(id)results forMoment:(id)moment;
+ (id)_postProcessResults:(id)results forMoment:(id)moment;
+ (id)processRequiredCriteria:(id)criteria forMoment:(id)moment meaningfulEventProcessorCache:(id)cache serviceManager:(id)manager;
@end

@implementation PGMeaningfulEventProcessor

+ (id)_postProcessBirthdaysWithResults:(id)results forMoment:(id)moment
{
  v130 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  momentCopy = moment;
  v94 = [MEMORY[0x277CBEB58] set];
  v93 = [MEMORY[0x277CBEB58] set];
  v91 = [MEMORY[0x277CBEB58] set];
  v95 = [momentCopy hasEdgeWithLabel:@"CELEBRATING" domain:401];
  v121 = 0u;
  v122 = 0u;
  v123 = 0u;
  v124 = 0u;
  obj = resultsCopy;
  v6 = [obj countByEnumeratingWithState:&v121 objects:v129 count:16];
  if (v6)
  {
    v7 = *v122;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v122 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v121 + 1) + 8 * i);
        requiredCriteria = [v9 requiredCriteria];
        identifier = [requiredCriteria identifier];
        v12 = [identifier isEqualToString:@"Birthday"];
        if ((v12 & 1) == 0)
        {
          v13 = [identifier isEqualToString:@"WeakBirthday"];
          v14 = v91;
          if (!v13)
          {
            goto LABEL_13;
          }
        }

        if (!v95 || ([requiredCriteria additionalInfo], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "objectForKeyedSubscript:", @"birthday.isOnDate"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "BOOLValue"), v16, v15, v17))
        {
          if (v12)
          {
            v14 = v94;
          }

          else
          {
            v14 = v93;
          }

LABEL_13:
          [v14 addObject:v9];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v121 objects:v129 count:16];
    }

    while (v6);
  }

  v18 = [v94 count];
  v19 = [v93 count] + v18;
  if (v95)
  {
    v20 = [v91 count];
    if (v20 + v19 == [obj count])
    {
      v21 = obj;
LABEL_22:
      v22 = v21;
      goto LABEL_46;
    }
  }

  if (v19 == 1)
  {
    v22 = [v91 mutableCopy];
    [v22 unionSet:v94];
    [v22 unionSet:v93];
    goto LABEL_46;
  }

  if (!v19)
  {
    v21 = v91;
    goto LABEL_22;
  }

  v81 = v91;
  v23 = v94;
  if (!v18)
  {
    v23 = v93;
  }

  v24 = v23;
  graph = [momentCopy graph];
  meNode = [graph meNode];
  v119 = 0u;
  v120 = 0u;
  v117 = 0u;
  v118 = 0u;
  v88 = v24;
  v26 = [v88 countByEnumeratingWithState:&v117 objects:v128 count:16];
  if (v26)
  {
    nodes = 0;
    v96 = 0;
    v28 = *v118;
    v29 = 1;
    do
    {
      v30 = 0;
      v31 = nodes;
      do
      {
        if (*v118 != v28)
        {
          objc_enumerationMutation(v88);
        }

        v32 = *(*(&v117 + 1) + 8 * v30);
        requiredCriteria2 = [v32 requiredCriteria];
        peopleTrait = [requiredCriteria2 peopleTrait];
        nodes = [peopleTrait nodes];

        if (v31)
        {
          v29 &= [v31 isEqual:nodes];
        }

        if (meNode)
        {
          if ([nodes containsNode:meNode])
          {
            if (!v96 || ([v32 score], v36 = v35, objc_msgSend(v96, "score"), v36 > v37))
            {
              v38 = v32;

              v96 = v38;
            }
          }
        }

        ++v30;
        v31 = nodes;
      }

      while (v26 != v30);
      v26 = [v88 countByEnumeratingWithState:&v117 objects:v128 count:16];
    }

    while (v26);

    if ((v29 & 1) == 0)
    {
      requiredCriteria3 = [v96 requiredCriteria];
      additionalInfo = [requiredCriteria3 additionalInfo];
      v41 = [additionalInfo objectForKeyedSubscript:@"birthday.isOnDate"];
      bOOLValue = [v41 BOOLValue];

      if (((v96 != 0) & bOOLValue) == 1)
      {
        [v81 addObject:?];
      }

      else
      {
        v87 = [MEMORY[0x277CBEB58] set];
        v115 = 0u;
        v116 = 0u;
        v113 = 0u;
        v114 = 0u;
        v89 = v88;
        v45 = [v89 countByEnumeratingWithState:&v113 objects:v127 count:16];
        if (v45)
        {
          v46 = *v114;
          do
          {
            for (j = 0; j != v45; ++j)
            {
              if (*v114 != v46)
              {
                objc_enumerationMutation(v89);
              }

              v48 = *(*(&v113 + 1) + 8 * j);
              requiredCriteria4 = [v48 requiredCriteria];
              additionalInfo2 = [requiredCriteria4 additionalInfo];
              v51 = [additionalInfo2 objectForKeyedSubscript:@"birthday.isOnDate"];
              bOOLValue2 = [v51 BOOLValue];

              if (bOOLValue2)
              {
                [v87 addObject:v48];
              }
            }

            v45 = [v89 countByEnumeratingWithState:&v113 objects:v127 count:16];
          }

          while (v45);
        }

        if ([v87 count])
        {
          v53 = v87;

          v54 = v53;
        }

        else
        {
          v54 = v89;
        }

        v88 = v54;
        if ([v54 count] >= 2)
        {
          v55 = [(MAElementCollection *)[PGGraphPersonNodeCollection alloc] initWithGraph:graph];
          v111 = 0u;
          v112 = 0u;
          v109 = 0u;
          v110 = 0u;
          v90 = v88;
          v56 = [v90 countByEnumeratingWithState:&v109 objects:v126 count:16];
          if (v56)
          {
            v57 = *v110;
            do
            {
              for (k = 0; k != v56; ++k)
              {
                if (*v110 != v57)
                {
                  objc_enumerationMutation(v90);
                }

                requiredCriteria5 = [*(*(&v109 + 1) + 8 * k) requiredCriteria];
                peopleTrait2 = [requiredCriteria5 peopleTrait];
                nodes2 = [peopleTrait2 nodes];

                localIdentifiers = [nodes2 localIdentifiers];
                anyObject = [localIdentifiers anyObject];

                if ([anyObject length])
                {
                  v64 = [(MAElementCollection *)v55 collectionByFormingUnionWith:nodes2];

                  v55 = v64;
                }
              }

              v56 = [v90 countByEnumeratingWithState:&v109 objects:v126 count:16];
            }

            while (v56);
          }

          v65 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v90, "count")}];
          v105 = 0;
          v106 = &v105;
          v107 = 0x2020000000;
          v108 = 0;
          v101[0] = MEMORY[0x277D85DD0];
          v101[1] = 3221225472;
          v101[2] = __73__PGMeaningfulEventProcessor__postProcessBirthdaysWithResults_forMoment___block_invoke;
          v101[3] = &unk_27887EE30;
          v66 = v55;
          v102 = v66;
          v85 = v65;
          v103 = v85;
          v104 = &v105;
          [momentCopy enumeratePersonEdgesAndNodesUsingBlock:v101];
          v67 = [MEMORY[0x277CBEB58] set];
          v68 = v106[3];
          v97 = 0u;
          v98 = 0u;
          v99 = 0u;
          v100 = 0u;
          v84 = v90;
          v69 = [v84 countByEnumeratingWithState:&v97 objects:v125 count:16];
          v80 = v66;
          v88 = v67;
          if (v69)
          {
            v70 = v68 * 0.7;
            v86 = *v98;
            do
            {
              for (m = 0; m != v69; ++m)
              {
                if (*v98 != v86)
                {
                  objc_enumerationMutation(v84);
                }

                v72 = *(*(&v97 + 1) + 8 * m);
                requiredCriteria6 = [v72 requiredCriteria];
                peopleTrait3 = [requiredCriteria6 peopleTrait];
                nodes3 = [peopleTrait3 nodes];

                localIdentifiers2 = [nodes3 localIdentifiers];
                anyObject2 = [localIdentifiers2 anyObject];

                if ([anyObject2 length])
                {
                  v78 = [v85 objectForKeyedSubscript:anyObject2];
                  unsignedIntegerValue = [v78 unsignedIntegerValue];

                  if (v70 <= unsignedIntegerValue)
                  {
                    [v88 addObject:v72];
                  }
                }
              }

              v69 = [v84 countByEnumeratingWithState:&v97 objects:v125 count:16];
            }

            while (v69);
          }

          _Block_object_dispose(&v105, 8);
        }

        [v81 unionSet:{v88, v80}];
      }

      goto LABEL_45;
    }
  }

  else
  {

    v96 = 0;
    nodes = 0;
  }

  [v81 unionSet:v88];
LABEL_45:
  v22 = v81;

LABEL_46:
  v43 = *MEMORY[0x277D85DE8];

  return v22;
}

void __73__PGMeaningfulEventProcessor__postProcessBirthdaysWithResults_forMoment___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if ([*(a1 + 32) containsNode:v5])
  {
    v6 = [v5 localIdentifier];
    if ([v6 length])
    {
      v7 = [v10 numberOfAssets];
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7];
      [*(a1 + 40) setObject:v8 forKeyedSubscript:v6];

      v9 = *(*(a1 + 48) + 8);
      if (v7 > *(v9 + 24))
      {
        *(v9 + 24) = v7;
      }
    }
  }
}

+ (id)_legacyMeaningResultForResult:(id)result requiredCriteriaByIdentifier:(id)identifier
{
  resultCopy = result;
  identifierCopy = identifier;
  requiredCriteria = [resultCopy requiredCriteria];
  identifier = [requiredCriteria identifier];

  if ([identifier isEqualToString:@"AmusementPark"] & 1) != 0 || (objc_msgSend(identifier, "isEqualToString:", @"Festival"))
  {
    v9 = kPGGraphNodeMeaningEntertainment;
  }

  else if ([identifier isEqualToString:@"Concert"] & 1) != 0 || (objc_msgSend(identifier, "isEqualToString:", @"Dance") & 1) != 0 || (objc_msgSend(identifier, "isEqualToString:", @"Theater"))
  {
    v9 = kPGGraphNodeMeaningPerformance;
  }

  else
  {
    if (![identifier isEqualToString:@"Wedding"])
    {
      goto LABEL_12;
    }

    v9 = kPGGraphNodeMeaningGathering;
  }

  v10 = [identifierCopy objectForKeyedSubscript:*v9];
  firstObject = [v10 firstObject];

  if (firstObject)
  {
    v12 = [PGMeaningfulEventMatchingResult alloc];
    isMatching = [resultCopy isMatching];
    [resultCopy score];
    v15 = -[PGMeaningfulEventMatchingResult initWithIsMatching:score:isReliable:requiredCriteria:](v12, "initWithIsMatching:score:isReliable:requiredCriteria:", isMatching, [resultCopy isReliable], firstObject, v14);

    goto LABEL_13;
  }

LABEL_12:
  v15 = 0;
LABEL_13:

  return v15;
}

+ (id)_postProcessResults:(id)results forMoment:(id)moment
{
  resultsCopy = results;
  momentCopy = moment;
  if ([resultsCopy count] > 1)
  {
    v8 = [self _postProcessBirthdaysWithResults:resultsCopy forMoment:momentCopy];
  }

  else
  {
    v8 = resultsCopy;
  }

  v9 = v8;

  return v9;
}

+ (id)processRequiredCriteria:(id)criteria forMoment:(id)moment meaningfulEventProcessorCache:(id)cache serviceManager:(id)manager
{
  criteriaCopy = criteria;
  managerCopy = manager;
  cacheCopy = cache;
  momentCopy = moment;
  v14 = [[PGMeaningfulEventMatchingCriteria alloc] initWithMoment:momentCopy cache:cacheCopy serviceManager:managerCopy];

  v15 = [MEMORY[0x277CBEB58] set];
  v16 = [MEMORY[0x277CBEB58] set];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __109__PGMeaningfulEventProcessor_processRequiredCriteria_forMoment_meaningfulEventProcessorCache_serviceManager___block_invoke;
  v23[3] = &unk_27887F460;
  v24 = v16;
  v25 = v14;
  v27 = criteriaCopy;
  selfCopy = self;
  v26 = v15;
  v17 = criteriaCopy;
  v18 = v15;
  v19 = v14;
  v20 = v16;
  [v17 enumerateKeysAndObjectsUsingBlock:v23];
  v21 = [self _postProcessResults:v18 forMoment:momentCopy];

  return v21;
}

void __109__PGMeaningfulEventProcessor_processRequiredCriteria_forMoment_meaningfulEventProcessorCache_serviceManager___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (([*(a1 + 32) containsObject:v5] & 1) == 0)
  {
    v26 = v6;
    v27 = v5;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v32 objects:v40 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v33;
      v28 = *v33;
      while (2)
      {
        v11 = 0;
        v29 = v9;
        do
        {
          if (*v33 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v32 + 1) + 8 * v11);
          v13 = objc_autoreleasePoolPush();
          v14 = [*(a1 + 40) matchingResultWithCriteria:v12];
          if ([v14 isMatching])
          {
            v15 = [v12 identifier];
            v16 = [v14 isReliable];
            [*(a1 + 48) addObject:v14];
            v17 = [*(a1 + 64) _legacyMeaningResultForResult:v14 requiredCriteriaByIdentifier:*(a1 + 56)];
            if (v17)
            {
              v30 = v16;
              v31 = v15;
              [*(a1 + 48) addObject:v17];
              v18 = [v17 requiredCriteria];
              v19 = [v18 identifier];

              if ([v17 isReliable])
              {
                [*(a1 + 32) addObject:v19];
              }

              v20 = [PGLogging sharedLogging:v26];
              v21 = [v20 loggingConnection];

              if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
              {
                v22 = [v14 requiredCriteria];
                [v22 identifier];
                v24 = v23 = v7;
                *buf = 138543618;
                v37 = v19;
                v38 = 2114;
                v39 = v24;
                _os_log_impl(&dword_22F0FC000, v21, OS_LOG_TYPE_INFO, "[MeaningInference] Adding legacy meaning %{public}@ for meaning %{public}@", buf, 0x16u);

                v7 = v23;
                v10 = v28;
              }

              v9 = v29;
              v15 = v31;
              v16 = v30;
            }

            if (v16)
            {
              [*(a1 + 32) addObject:v15];

              objc_autoreleasePoolPop(v13);
              goto LABEL_20;
            }
          }

          objc_autoreleasePoolPop(v13);
          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v32 objects:v40 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_20:

    v6 = v26;
    v5 = v27;
  }

  v25 = *MEMORY[0x277D85DE8];
}

@end