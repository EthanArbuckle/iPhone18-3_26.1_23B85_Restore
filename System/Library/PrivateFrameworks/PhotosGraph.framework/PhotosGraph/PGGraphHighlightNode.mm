@interface PGGraphHighlightNode
+ ($74357DB5E33013E4F0FB9D3992AAC0CD)_promotionScoreDescriptorWithMomentNodes:(SEL)nodes neighborScoreComputer:(id)computer;
+ (MARelation)highlightGroupOfHighlight;
+ (MARelation)highlightWithPrivateAndSharedAssetsOfHighlight;
+ (MARelation)highlightWithPrivateAssetsOfHighlight;
+ (MARelation)highlightWithSharedAssetsOfHighlight;
+ (MARelation)momentInDayHighlight;
+ (MARelation)momentInHighlight;
+ (double)aboveAveragePromotionScoreWithPromotionScoreDescriptor:(id *)descriptor;
+ (double)averagePromotionScoreWithPromotionScoreDescriptor:(id *)descriptor;
+ (double)belowAveragePromotionScoreWithPromotionScoreDescriptor:(id *)descriptor;
+ (double)nonMeaningfulPromotionScoreWithPromotionScoreDescriptor:(id *)descriptor isAggregation:(BOOL)aggregation enrichmentState:(unsigned __int16)state;
+ (id)allHighlightsFilter;
+ (id)dayHighlightsFilter;
+ (id)filter;
+ (id)filterWithUUID:(id)d;
+ (id)filterWithUUIDs:(id)ds;
+ (id)inclusivePathFromTargetNodeDomain:(unsigned __int16)domain withName:(id)name;
+ (id)inclusivePathToTargetNodeDomain:(unsigned __int16)domain withName:(id)name;
+ (id)otherVeryMeaningfulMeanings;
+ (id)pathFromTargetNodeDomain:(unsigned __int16)domain;
+ (id)pathToTargetNodeDomain:(unsigned __int16)domain;
+ (id)promotionScoreSortDescriptors;
+ (id)propertiesWithHighlight:(id)highlight;
- (BOOL)happensPartiallyAtHomeOfPersonNodes:(id)nodes;
- (BOOL)happensPartiallyAtHomeOrWorkOfPersonNodes:(id)nodes;
- (BOOL)happensPartiallyAtWorkOfPersonNodes:(id)nodes;
- (BOOL)hasLocation;
- (BOOL)hasPeopleCountingMe:(BOOL)me;
- (BOOL)hasProperties:(id)properties;
- (BOOL)isInteresting;
- (BOOL)isInterestingWithAlternateJunking;
- (BOOL)isPartOfAggregation;
- (BOOL)isPartOfLongTrip;
- (BOOL)isPartOfShortTrip;
- (BOOL)isPartOfTrip;
- (BOOL)isSmartInteresting;
- (BOOL)petIsPresent;
- (NSString)featureIdentifier;
- (PGGraphHighlightGroupNode)highlightGroupNode;
- (PGGraphHighlightNode)initWithLabel:(id)label domain:(unsigned __int16)domain properties:(id)properties;
- (PGGraphHighlightNodeCollection)collection;
- (double)contentScore;
- (double)weightForMoment:(id)moment;
- (id)addressNodes;
- (id)anniversaryPersonNodes;
- (id)birthdayPersonNodes;
- (id)businessNodes;
- (id)celebratedHolidayNodes;
- (id)connectedEventsWithTargetDomain:(unsigned __int16)domain;
- (id)consolidatedPersonNodes;
- (id)consolidatedPersonNodesPresentInAssets;
- (id)dateNodes;
- (id)debugDictionaryWithServiceManager:(id)manager;
- (id)eventEnrichmentMomentNodes;
- (id)eventEnrichmentSortedMomentNodes;
- (id)eventSortedMomentNodes;
- (id)fetchAssetCollectionInPhotoLibrary:(id)library;
- (id)holidayNodes;
- (id)initFromHighlight:(id)highlight;
- (id)keywordsForRelatedType:(unint64_t)type focusOnNodes:(id)nodes;
- (id)meaningLabels;
- (id)naturalLanguageFeatures;
- (id)personNodes;
- (id)personNodesInProximity;
- (id)petNodes;
- (id)poiNodes;
- (id)propertyDictionary;
- (id)propertyForKey:(id)key;
- (id)publicEventNodes;
- (id)reliableMeaningLabels;
- (id)roiNodes;
- (id)seasonNodes;
- (id)socialGroupNodes;
- (void)enumerateBusinessesUsingBlock:(id)block;
- (void)setLocalProperties:(id)properties;
@end

@implementation PGGraphHighlightNode

- (id)naturalLanguageFeatures
{
  v3 = [PGTextFeatureGenerator alloc];
  collection = [(PGGraphHighlightNode *)self collection];
  momentNodes = [collection momentNodes];
  temporarySet = [momentNodes temporarySet];
  graph = [(MANode *)self graph];
  v8 = [(PGTextFeatureGenerator *)v3 initWithMomentNodes:temporarySet graph:graph];

  naturalLanguageFeatures = [(PGTextFeatureGenerator *)v8 naturalLanguageFeatures];

  return naturalLanguageFeatures;
}

- (NSString)featureIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  localIdentifier = [(PGGraphHighlightNode *)self localIdentifier];
  v7 = [v3 stringWithFormat:@"%@|%@", v5, localIdentifier];

  return v7;
}

- (id)keywordsForRelatedType:(unint64_t)type focusOnNodes:(id)nodes
{
  v127 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  selfCopy = self;
  collection = [(PGGraphHighlightNode *)self collection];
  momentNodes = [collection momentNodes];
  temporarySet = [momentNodes temporarySet];

  if ([temporarySet count] == 1)
  {
    anyObject = [temporarySet anyObject];
    v11 = [anyObject keywordsForRelatedType:type focusOnNodes:nodesCopy];

    goto LABEL_62;
  }

  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  array3 = [MEMORY[0x277CBEB18] array];
  array4 = [MEMORY[0x277CBEB18] array];
  array5 = [MEMORY[0x277CBEB18] array];
  array6 = [MEMORY[0x277CBEB18] array];
  if ((type & 2) != 0)
  {
    v12 = MEMORY[0x277CCACA8];
    localStartDate = [(PGGraphHighlightNode *)selfCopy localStartDate];
    v14 = [v12 stringWithFormat:@"[EventStart] %@", localStartDate];

    v15 = MEMORY[0x277CCACA8];
    [(PGGraphHighlightNode *)selfCopy localEndDate];
    v17 = v16 = type;
    v18 = [v15 stringWithFormat:@"[EventEnd] %@", v17];

    type = v16;
    [array3 addObject:v14];
    [array3 addObject:v18];
  }

  typeCopy = type;
  v77 = temporarySet;
  if (type)
  {
    graph = [(MANode *)selfCopy graph];
    meNode = [graph meNode];

    v118 = 0u;
    v119 = 0u;
    v116 = 0u;
    v117 = 0u;
    obj = [(PGGraphHighlightNode *)selfCopy personNodes];
    v79 = [obj countByEnumeratingWithState:&v116 objects:v126 count:16];
    if (!v79)
    {
      goto LABEL_44;
    }

    v78 = *v117;
    v75 = nodesCopy;
    while (1)
    {
      for (i = 0; i != v79; ++i)
      {
        if (*v117 != v78)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v116 + 1) + 8 * i);
        if (nodesCopy && ![nodesCopy containsObject:*(*(&v116 + 1) + 8 * i)])
        {
          continue;
        }

        v81 = i;
        v22 = MEMORY[0x277CCAB68];
        keywordDescription = [v21 keywordDescription];
        v82 = [v22 stringWithString:keywordDescription];

        if (!meNode || ([v21 isEqualToNode:meNode] & 1) != 0)
        {
          goto LABEL_32;
        }

        v24 = [v21 edgesForLabel:0 domain:300];
        if (![v24 count])
        {
          goto LABEL_31;
        }

        array7 = [MEMORY[0x277CBEB18] array];
        v112 = 0u;
        v113 = 0u;
        v114 = 0u;
        v115 = 0u;
        v73 = v24;
        v26 = v24;
        v27 = [v26 countByEnumeratingWithState:&v112 objects:v125 count:16];
        if (!v27)
        {
          goto LABEL_28;
        }

        v28 = v27;
        v29 = *v113;
        do
        {
          v30 = 0;
          v89 = v28;
          do
          {
            if (*v113 != v29)
            {
              objc_enumerationMutation(v26);
            }

            v31 = *(*(&v112 + 1) + 8 * v30);
            v32 = [v31 oppositeNode:v21];
            if ([v32 domain] == 300)
            {
              label = [v32 label];
              if ([label isEqualToString:@"People"])
              {
              }

              else
              {
                [v32 label];
                v34 = v29;
                v35 = v26;
                v36 = array7;
                v38 = v37 = v21;
                v39 = [v38 isEqualToString:@"Me"];

                v21 = v37;
                array7 = v36;
                v26 = v35;
                v29 = v34;
                v28 = v89;

                if (!v39)
                {
                  goto LABEL_26;
                }
              }

              label2 = [v31 label];
              [array7 addObject:label2];
            }

LABEL_26:

            ++v30;
          }

          while (v28 != v30);
          v28 = [v26 countByEnumeratingWithState:&v112 objects:v125 count:16];
        }

        while (v28);
LABEL_28:

        if ([array7 count])
        {
          v41 = [array7 componentsJoinedByString:@"/"];
          [v82 appendFormat:@" - %@ -", v41];
        }

        v24 = v73;
LABEL_31:

LABEL_32:
        collection2 = [v21 collection];
        v108 = 0u;
        v109 = 0u;
        v110 = 0u;
        v111 = 0u;
        v43 = v77;
        v44 = [v43 countByEnumeratingWithState:&v108 objects:v124 count:16];
        if (v44)
        {
          v45 = v44;
          v46 = *v109;
          v47 = 0.0;
          do
          {
            for (j = 0; j != v45; ++j)
            {
              if (*v109 != v46)
              {
                objc_enumerationMutation(v43);
              }

              v49 = *(*(&v108 + 1) + 8 * j);
              collection3 = [v49 collection];
              v51 = [(PGGraphEdgeCollection *)PGGraphPersonPresentEdgeCollection edgesFromNodes:collection2 toNodes:collection3];
              anyEdge = [v51 anyEdge];
              [anyEdge importance];
              v54 = v53;

              [(PGGraphHighlightNode *)selfCopy weightForMoment:v49];
              v47 = v47 + v55 * v54;
            }

            v45 = [v43 countByEnumeratingWithState:&v108 objects:v124 count:16];
          }

          while (v45);
        }

        else
        {
          v47 = 0.0;
        }

        [v82 appendFormat:@" (%0.2f)", *&v47];
        [array addObject:v82];

        nodesCopy = v75;
        i = v81;
      }

      v79 = [obj countByEnumeratingWithState:&v116 objects:v126 count:16];
      if (!v79)
      {
LABEL_44:

        v106 = 0u;
        v107 = 0u;
        v104 = 0u;
        v105 = 0u;
        temporarySet = v77;
        v56 = v77;
        v57 = [v56 countByEnumeratingWithState:&v104 objects:v123 count:16];
        if (v57)
        {
          v58 = v57;
          v59 = 0;
          v60 = *v105;
          do
          {
            for (k = 0; k != v58; ++k)
            {
              if (*v105 != v60)
              {
                objc_enumerationMutation(v56);
              }

              v59 += [*(*(&v104 + 1) + 8 * k) totalNumberOfPersons];
            }

            v58 = [v56 countByEnumeratingWithState:&v104 objects:v123 count:16];
          }

          while (v58);
        }

        else
        {
          v59 = 0;
        }

        v62 = [MEMORY[0x277CCACA8] stringWithFormat:@"[All Persons] %lu", v59];
        [array addObject:v62];

        break;
      }
    }
  }

  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  v63 = temporarySet;
  v64 = [v63 countByEnumeratingWithState:&v100 objects:v122 count:16];
  if (v64)
  {
    v65 = v64;
    v66 = *v101;
    do
    {
      for (m = 0; m != v65; ++m)
      {
        if (*v101 != v66)
        {
          objc_enumerationMutation(v63);
        }

        v68 = *(*(&v100 + 1) + 8 * m);
        [(PGGraphHighlightNode *)selfCopy weightForMoment:v68];
        v70 = v69;
        v91[0] = MEMORY[0x277D85DD0];
        v91[1] = 3221225472;
        v91[2] = __60__PGGraphHighlightNode_keywordsForRelatedType_focusOnNodes___block_invoke;
        v91[3] = &unk_27887F650;
        v92 = nodesCopy;
        v98 = typeCopy;
        v99 = v70;
        v93 = array2;
        v94 = array3;
        v95 = array4;
        v96 = array5;
        v97 = array6;
        [v68 enumerateNeighborEdgesAndNodesThroughOutEdgesUsingBlock:v91];
      }

      v65 = [v63 countByEnumeratingWithState:&v100 objects:v122 count:16];
    }

    while (v65);
  }

  v120[0] = &unk_284482310;
  v120[1] = &unk_284482328;
  v121[0] = array;
  v121[1] = array2;
  v120[2] = &unk_284482340;
  v120[3] = &unk_284482358;
  v121[2] = array3;
  v121[3] = array4;
  v120[4] = &unk_284482370;
  v120[5] = &unk_284482388;
  v121[4] = array5;
  v121[5] = array6;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v121 forKeys:v120 count:6];

  temporarySet = v77;
LABEL_62:

  v71 = *MEMORY[0x277D85DE8];

  return v11;
}

void __60__PGGraphHighlightNode_keywordsForRelatedType_focusOnNodes___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __60__PGGraphHighlightNode_keywordsForRelatedType_focusOnNodes___block_invoke_2;
  aBlock[3] = &unk_2788876E8;
  v7 = v6;
  v53 = v7;
  v8 = _Block_copy(aBlock);
  v9 = *(a1 + 32);
  if (!v9 || [v9 containsObject:v7])
  {
    if ([v5 domain] == 200 && (*(a1 + 80) & 4) != 0)
    {
      [v5 relevance];
      v13 = *(a1 + 88);
      v15 = v14 * v13;
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = __60__PGGraphHighlightNode_keywordsForRelatedType_focusOnNodes___block_invoke_3;
      v50[3] = &unk_27887F600;
      *&v51[1] = v14 * v13;
      *&v51[2] = v13;
      v12 = v51;
      v51[0] = *(a1 + 40);
      v16 = v7;
      [v16 enumerateOutEdgesUsingBlock:v50];
      v17 = [v16 collection];
      v18 = [v17 homeWorkNodes];
      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 3221225472;
      v47[2] = __60__PGGraphHighlightNode_keywordsForRelatedType_focusOnNodes___block_invoke_4;
      v47[3] = &unk_278887760;
      v49 = v15;
      v48 = *(a1 + 40);
      [v18 enumerateNodesUsingBlock:v47];

      goto LABEL_10;
    }

    if ([v5 domain] == 400 && (*(a1 + 80) & 2) != 0)
    {
      v10 = *(a1 + 48);
      v11 = [v7 keywordDescription];
      [v10 addObject:v11];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v45[0] = MEMORY[0x277D85DD0];
        v45[1] = 3221225472;
        v45[2] = __60__PGGraphHighlightNode_keywordsForRelatedType_focusOnNodes___block_invoke_6;
        v45[3] = &unk_27887F628;
        v46[1] = *(a1 + 88);
        v12 = v46;
        v46[0] = *(a1 + 48);
        [v7 enumerateHolidayEdgesAndNodesUsingBlock:v45];
LABEL_10:
      }
    }
  }

  if ([v5 domain] == 301 && (*(a1 + 80) & 8) != 0)
  {
    v23 = [v5 label];
    if (([v23 isEqualToString:@"BIRTHDAY"] & 1) != 0 || objc_msgSend(v23, "isEqualToString:", @"BIRTHDAY"))
    {
      v29 = *(a1 + 56);
      [v5 confidence];
      v30 = v8[2](v8);
      [v29 addObject:v30];
    }

    goto LABEL_35;
  }

  if ([v5 domain] == 401 && (*(a1 + 80) & 8) != 0)
  {
    v28 = *(a1 + 56);
    goto LABEL_30;
  }

  v19 = [v5 domain];
  v20 = *(a1 + 80);
  if (v19 == 700 && (v20 & 8) != 0)
  {
    v21 = *(a1 + 56);
    v22 = MEMORY[0x277CCACA8];
    v23 = [v5 label];
    v24 = [v23 capitalizedString];
    v25 = [v7 label];
    v26 = [v22 stringWithFormat:@"[%@] %@", v24, v25];
    [v21 addObject:v26];

LABEL_35:
    goto LABEL_36;
  }

  v27 = [v5 domain];
  if ((v20 & 0x10) != 0)
  {
    if (v27 != 501 && [v5 domain] != 502)
    {
      goto LABEL_36;
    }

LABEL_33:
    v28 = *(a1 + 64);
    [v5 confidence];
    v31 = v8[2](v8);
    goto LABEL_34;
  }

  if (v27 == 600 && (*(a1 + 80) & 0x20) != 0)
  {
    v32 = v5;
    v33 = v7;
    v44 = v33;
    v34 = [v32 isReliable];
    v35 = @"NO";
    if (v34)
    {
      v35 = @"YES";
    }

    v36 = v35;
    v43 = [v32 numberOfAssets];
    v37 = [v32 numberOfHighConfidenceAssets];
    v38 = [v32 numberOfSearchConfidenceAssets];
    v39 = MEMORY[0x277CCACA8];
    v40 = [v33 keywordDescription];
    [v32 confidence];
    v42 = v41;

    v23 = [v39 stringWithFormat:@"%@ #all:%lu #highConf:%lu #searchConf:%lu reliable:%@ - (%0.2f)", v40, v43, v37, v38, v36, v42];

    [*(a1 + 72) addObject:v23];
    goto LABEL_35;
  }

  if ([v5 domain] == 503 && (*(a1 + 80) & 0x10) != 0)
  {
    goto LABEL_33;
  }

  if ([v5 domain] == 900 && (*(a1 + 80) & 0x10) != 0)
  {
    v28 = *(a1 + 64);
LABEL_30:
    v31 = [v7 keywordDescription];
LABEL_34:
    v23 = v31;
    [v28 addObject:v31];
    goto LABEL_35;
  }

LABEL_36:
}

id __60__PGGraphHighlightNode_keywordsForRelatedType_focusOnNodes___block_invoke_2(uint64_t a1, double a2)
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [*(a1 + 32) keywordDescription];
  v5 = [v3 stringWithFormat:@"%@ (%0.2f)", v4, *&a2];

  return v5;
}

void __60__PGGraphHighlightNode_keywordsForRelatedType_focusOnNodes___block_invoke_3(uint64_t a1, void *a2)
{
  v9 = a2;
  if ([v9 domain] == 200)
  {
    v3 = *(a1 + 40);
  }

  else
  {
    if ([v9 domain] != 201)
    {
      goto LABEL_6;
    }

    [v9 relevance];
    v3 = v4 * *(a1 + 48);
  }

  v5 = [v9 targetNode];
  v6 = MEMORY[0x277CCACA8];
  v7 = [v5 keywordDescription];
  v8 = [v6 stringWithFormat:@"%@ (%0.2f)", v7, *&v3];

  [*(a1 + 32) addObject:v8];
LABEL_6:
}

void __60__PGGraphHighlightNode_keywordsForRelatedType_focusOnNodes___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 collection];
  v5 = [v4 ownerNodes];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__PGGraphHighlightNode_keywordsForRelatedType_focusOnNodes___block_invoke_5;
  v7[3] = &unk_278887738;
  v8 = v3;
  v10 = *(a1 + 40);
  v9 = *(a1 + 32);
  v6 = v3;
  [v5 enumerateNodesUsingBlock:v7];
}

void __60__PGGraphHighlightNode_keywordsForRelatedType_focusOnNodes___block_invoke_6(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x277CCACA8];
  v5 = [a3 keywordDescription];
  v6 = [v4 stringWithFormat:@"%@ (%0.2f)", v5, *(a1 + 40)];

  [*(a1 + 32) addObject:v6];
}

void __60__PGGraphHighlightNode_keywordsForRelatedType_focusOnNodes___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCACA8];
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 label];
  v7 = [v5 name];

  v8 = [v3 stringWithFormat:@"[%@] - %@ (%0.2f)", v6, v7, *(a1 + 48)];

  [*(a1 + 40) addObject:v8];
}

- (id)connectedEventsWithTargetDomain:(unsigned __int16)domain
{
  domainCopy = domain;
  v13 = *MEMORY[0x277D85DE8];
  if ([(PGGraphHighlightNode *)self domain]== domain)
  {
    temporarySet = [MEMORY[0x277CBEB98] setWithObject:self];
  }

  else if (domainCopy == 100)
  {
    eventCollection = [(PGGraphHighlightNode *)self eventCollection];
    eventMomentNodes = [eventCollection eventMomentNodes];
    temporarySet = [eventMomentNodes temporarySet];
  }

  else
  {
    v8 = +[PGLogging sharedLogging];
    loggingConnection = [v8 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      v12[0] = 67109120;
      v12[1] = domainCopy;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Unsupported target domain: %u", v12, 8u);
    }

    temporarySet = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return temporarySet;
}

- (double)weightForMoment:(id)moment
{
  v3 = [(MANode *)self anyEdgeTowardNode:moment];
  [v3 weight];
  v5 = v4;

  return v5;
}

- (id)debugDictionaryWithServiceManager:(id)manager
{
  v35[6] = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  v5 = [PGTitleGenerationContext alloc];
  graph = [(MANode *)self graph];
  v7 = [(PGTitleGenerationContext *)v5 initWithGraph:graph serviceManager:managerCopy];

  v33 = v7;
  v8 = [[PGHighlightTitleGenerator alloc] initWithCollection:self curatedAssetCollection:0 keyAsset:0 createVerboseTitle:0 titleGenerationContext:v7];
  titleTuple = [(PGHighlightTitleGenerator *)v8 titleTuple];
  title = [titleTuple title];
  stringValue = [title stringValue];
  v12 = stringValue;
  if (stringValue)
  {
    v13 = stringValue;
  }

  else
  {
    v13 = &stru_2843F5C58;
  }

  v32 = v13;

  subtitle = [titleTuple subtitle];
  stringValue2 = [subtitle stringValue];
  v16 = stringValue2;
  if (stringValue2)
  {
    v17 = stringValue2;
  }

  else
  {
    v17 = &stru_2843F5C58;
  }

  v18 = v17;

  category = [title category];
  v20 = [[PGHighlightTitleGenerator alloc] initWithCollection:self curatedAssetCollection:0 keyAsset:0 createVerboseTitle:1 titleGenerationContext:v7];

  titleTuple2 = [(PGHighlightTitleGenerator *)v20 titleTuple];
  subtitle2 = [titleTuple2 subtitle];
  stringValue3 = [subtitle2 stringValue];

  v34[0] = @"weightedAverageContentScore";
  v24 = MEMORY[0x277CCABB0];
  [(PGGraphHighlightNode *)self contentScore];
  v25 = [v24 numberWithDouble:?];
  v35[0] = v25;
  v35[1] = v32;
  v34[1] = @"title";
  v34[2] = @"subtitle";
  v35[2] = v18;
  v35[3] = stringValue3;
  v34[3] = @"verboseSmartDescription";
  v34[4] = @"titleCategory";
  v26 = [MEMORY[0x277CCABB0] numberWithInteger:category];
  v35[4] = v26;
  v34[5] = @"meaningLabels";
  meaningLabels = [(PGGraphHighlightNode *)self meaningLabels];
  allObjects = [meaningLabels allObjects];
  v35[5] = allObjects;
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:6];

  v30 = *MEMORY[0x277D85DE8];

  return v29;
}

- (void)enumerateBusinessesUsingBlock:(id)block
{
  blockCopy = block;
  collection = [(PGGraphHighlightNode *)self collection];
  momentNodes = [collection momentNodes];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54__PGGraphHighlightNode_enumerateBusinessesUsingBlock___block_invoke;
  v8[3] = &unk_278883DC0;
  v9 = blockCopy;
  v7 = blockCopy;
  [momentNodes enumerateNodesUsingBlock:v8];
}

- (id)seasonNodes
{
  v3 = [MEMORY[0x277CBEB58] set];
  collection = [(PGGraphHighlightNode *)self collection];
  momentNodes = [collection momentNodes];
  dateNodes = [momentNodes dateNodes];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __35__PGGraphHighlightNode_seasonNodes__block_invoke;
  v9[3] = &unk_2788875A8;
  v7 = v3;
  v10 = v7;
  [dateNodes enumerateNodesUsingBlock:v9];

  return v7;
}

void __35__PGGraphHighlightNode_seasonNodes__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 seasonNode];
  if (v3)
  {
    v4 = v3;
    [*(a1 + 32) addObject:v3];
    v3 = v4;
  }
}

- (id)publicEventNodes
{
  v3 = [MEMORY[0x277CBEB58] set];
  collection = [(PGGraphHighlightNode *)self collection];
  momentNodes = [collection momentNodes];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __40__PGGraphHighlightNode_publicEventNodes__block_invoke;
  v8[3] = &unk_278889290;
  v6 = v3;
  v9 = v6;
  [momentNodes enumerateNodesUsingBlock:v8];

  return v6;
}

void __40__PGGraphHighlightNode_publicEventNodes__block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __40__PGGraphHighlightNode_publicEventNodes__block_invoke_2;
  v3[3] = &unk_278887648;
  v4 = *(a1 + 32);
  [a2 enumeratePublicEventNodesUsingBlock:v3];
}

- (id)businessNodes
{
  v3 = [MEMORY[0x277CBEB58] set];
  collection = [(PGGraphHighlightNode *)self collection];
  momentNodes = [collection momentNodes];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __37__PGGraphHighlightNode_businessNodes__block_invoke;
  v8[3] = &unk_278889290;
  v6 = v3;
  v9 = v6;
  [momentNodes enumerateNodesUsingBlock:v8];

  return v6;
}

void __37__PGGraphHighlightNode_businessNodes__block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __37__PGGraphHighlightNode_businessNodes__block_invoke_2;
  v3[3] = &unk_278887620;
  v4 = *(a1 + 32);
  [a2 enumerateBusinessNodesUsingBlock:v3];
}

- (id)addressNodes
{
  collection = [(PGGraphHighlightNode *)self collection];
  momentNodes = [collection momentNodes];
  addressNodes = [momentNodes addressNodes];
  v5 = [addressNodes set];

  return v5;
}

- (BOOL)hasLocation
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  collection = [(PGGraphHighlightNode *)self collection];
  momentNodes = [collection momentNodes];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __35__PGGraphHighlightNode_hasLocation__block_invoke;
  v5[3] = &unk_278885948;
  v5[4] = &v6;
  [momentNodes enumerateNodesUsingBlock:v5];

  LOBYTE(collection) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return collection;
}

uint64_t __35__PGGraphHighlightNode_hasLocation__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [a2 hasLocation];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

- (id)roiNodes
{
  v3 = [MEMORY[0x277CBEB58] set];
  collection = [(PGGraphHighlightNode *)self collection];
  momentNodes = [collection momentNodes];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __32__PGGraphHighlightNode_roiNodes__block_invoke;
  v8[3] = &unk_278889290;
  v6 = v3;
  v9 = v6;
  [momentNodes enumerateNodesUsingBlock:v8];

  return v6;
}

void __32__PGGraphHighlightNode_roiNodes__block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __32__PGGraphHighlightNode_roiNodes__block_invoke_2;
  v3[3] = &unk_2788875F8;
  v4 = *(a1 + 32);
  [a2 enumerateROINodesUsingBlock:v3];
}

- (id)poiNodes
{
  v3 = [MEMORY[0x277CBEB58] set];
  collection = [(PGGraphHighlightNode *)self collection];
  momentNodes = [collection momentNodes];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __32__PGGraphHighlightNode_poiNodes__block_invoke;
  v8[3] = &unk_278889290;
  v6 = v3;
  v9 = v6;
  [momentNodes enumerateNodesUsingBlock:v8];

  return v6;
}

void __32__PGGraphHighlightNode_poiNodes__block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __32__PGGraphHighlightNode_poiNodes__block_invoke_2;
  v3[3] = &unk_2788875D0;
  v4 = *(a1 + 32);
  [a2 enumeratePOINodesUsingBlock:v3];
}

- (id)celebratedHolidayNodes
{
  v3 = [MEMORY[0x277CBEB58] set];
  collection = [(PGGraphHighlightNode *)self collection];
  momentNodes = [collection momentNodes];
  dateNodes = [momentNodes dateNodes];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __46__PGGraphHighlightNode_celebratedHolidayNodes__block_invoke;
  v9[3] = &unk_2788875A8;
  v7 = v3;
  v10 = v7;
  [dateNodes enumerateNodesUsingBlock:v9];

  return v7;
}

void __46__PGGraphHighlightNode_celebratedHolidayNodes__block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __46__PGGraphHighlightNode_celebratedHolidayNodes__block_invoke_2;
  v3[3] = &unk_278888D00;
  v4 = *(a1 + 32);
  [a2 enumerateHolidayNodesUsingBlock:v3];
}

void __46__PGGraphHighlightNode_celebratedHolidayNodes__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 hasEdgeWithLabel:@"CELEBRATING" domain:401])
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (id)holidayNodes
{
  v3 = [MEMORY[0x277CBEB58] set];
  collection = [(PGGraphHighlightNode *)self collection];
  momentNodes = [collection momentNodes];
  dateNodes = [momentNodes dateNodes];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __36__PGGraphHighlightNode_holidayNodes__block_invoke;
  v9[3] = &unk_2788875A8;
  v7 = v3;
  v10 = v7;
  [dateNodes enumerateNodesUsingBlock:v9];

  return v7;
}

void __36__PGGraphHighlightNode_holidayNodes__block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __36__PGGraphHighlightNode_holidayNodes__block_invoke_2;
  v3[3] = &unk_278888D00;
  v4 = *(a1 + 32);
  [a2 enumerateHolidayNodesUsingBlock:v3];
}

- (id)dateNodes
{
  v3 = [MEMORY[0x277CBEB58] set];
  collection = [(PGGraphHighlightNode *)self collection];
  momentNodes = [collection momentNodes];
  dateNodes = [momentNodes dateNodes];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __33__PGGraphHighlightNode_dateNodes__block_invoke;
  v9[3] = &unk_2788875A8;
  v7 = v3;
  v10 = v7;
  [dateNodes enumerateNodesUsingBlock:v9];

  return v7;
}

- (id)consolidatedPersonNodesPresentInAssets
{
  collection = [(PGGraphHighlightNode *)self collection];
  momentNodes = [collection momentNodes];
  consolidatedPersonNodesPresentInAssets = [momentNodes consolidatedPersonNodesPresentInAssets];
  v5 = [consolidatedPersonNodesPresentInAssets set];

  return v5;
}

- (id)consolidatedPersonNodes
{
  collection = [(PGGraphHighlightNode *)self collection];
  momentNodes = [collection momentNodes];
  consolidatedPersonNodes = [momentNodes consolidatedPersonNodes];
  v5 = [consolidatedPersonNodes set];

  return v5;
}

- (id)personNodesInProximity
{
  collection = [(PGGraphHighlightNode *)self collection];
  momentNodes = [collection momentNodes];
  personNodesInProximity = [momentNodes personNodesInProximity];
  v5 = [personNodesInProximity set];

  return v5;
}

- (id)socialGroupNodes
{
  collection = [(PGGraphHighlightNode *)self collection];
  momentNodes = [collection momentNodes];
  socialGroupNodes = [momentNodes socialGroupNodes];
  v5 = [socialGroupNodes set];

  return v5;
}

- (id)petNodes
{
  collection = [(PGGraphHighlightNode *)self collection];
  momentNodes = [collection momentNodes];
  petNodes = [momentNodes petNodes];
  v5 = [petNodes set];

  return v5;
}

- (id)personNodes
{
  collection = [(PGGraphHighlightNode *)self collection];
  momentNodes = [collection momentNodes];
  personNodes = [momentNodes personNodes];
  v5 = [personNodes set];

  return v5;
}

- (BOOL)hasPeopleCountingMe:(BOOL)me
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  collection = [(PGGraphHighlightNode *)self collection];
  momentNodes = [collection momentNodes];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__PGGraphHighlightNode_hasPeopleCountingMe___block_invoke;
  v7[3] = &unk_27887F5D8;
  meCopy = me;
  v7[4] = &v9;
  [momentNodes enumerateNodesUsingBlock:v7];

  LOBYTE(collection) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return collection;
}

uint64_t __44__PGGraphHighlightNode_hasPeopleCountingMe___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [a2 hasPeopleCountingMe:*(a1 + 40)];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

- (id)fetchAssetCollectionInPhotoLibrary:(id)library
{
  libraryCopy = library;
  graph = [(MANode *)self graph];
  v6 = [graph highlightForHighlightNode:self inPhotoLibrary:libraryCopy];

  return v6;
}

- (id)anniversaryPersonNodes
{
  collection = [(PGGraphHighlightNode *)self collection];
  momentNodes = [collection momentNodes];
  anniversaryPersonNodes = [momentNodes anniversaryPersonNodes];

  return anniversaryPersonNodes;
}

- (id)birthdayPersonNodes
{
  collection = [(PGGraphHighlightNode *)self collection];
  momentNodes = [collection momentNodes];
  birthdayPersonNodes = [momentNodes birthdayPersonNodes];

  return birthdayPersonNodes;
}

- (id)reliableMeaningLabels
{
  collection = [(PGGraphHighlightNode *)self collection];
  momentNodes = [collection momentNodes];
  reliableMeaningNodes = [momentNodes reliableMeaningNodes];
  meaningLabels = [reliableMeaningNodes meaningLabels];

  return meaningLabels;
}

- (id)meaningLabels
{
  collection = [(PGGraphHighlightNode *)self collection];
  momentNodes = [collection momentNodes];
  meaningNodes = [momentNodes meaningNodes];
  meaningLabels = [meaningNodes meaningLabels];

  return meaningLabels;
}

- (id)eventEnrichmentSortedMomentNodes
{
  v11[3] = *MEMORY[0x277D85DE8];
  collection = [(PGGraphHighlightNode *)self collection];
  momentNodes = [collection momentNodes];
  v4 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"universalStartDate" ascending:1];
  v5 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"universalEndDate" ascending:{1, v4}];
  v11[1] = v5;
  v6 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"UUID" ascending:1];
  v11[2] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:3];

  v8 = [momentNodes sortedArrayUsingDescriptors:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)eventEnrichmentMomentNodes
{
  collection = [(PGGraphHighlightNode *)self collection];
  momentNodes = [collection momentNodes];

  return momentNodes;
}

- (id)eventSortedMomentNodes
{
  v11[3] = *MEMORY[0x277D85DE8];
  collection = [(PGGraphHighlightNode *)self collection];
  momentNodes = [collection momentNodes];
  v4 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"universalStartDate" ascending:1];
  v5 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"universalEndDate" ascending:{1, v4}];
  v11[1] = v5;
  v6 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"UUID" ascending:1];
  v11[2] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:3];

  v8 = [momentNodes sortedArrayUsingDescriptors:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (double)contentScore
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  collection = [(PGGraphHighlightNode *)self collection];
  momentNodes = [collection momentNodes];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__PGGraphHighlightNode_contentScore__block_invoke;
  v7[3] = &unk_2788879A0;
  v7[4] = &v12;
  v7[5] = &v8;
  [momentNodes enumerateNodesUsingBlock:v7];

  v4 = v9[3];
  if (v4)
  {
    v5 = v13[3] / v4;
    v13[3] = v5;
  }

  else
  {
    v5 = v13[3];
  }

  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v12, 8);
  return v5;
}

double __36__PGGraphHighlightNode_contentScore__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 numberOfAssets];
  [v3 contentScore];
  v6 = v5;

  v7 = *(*(a1 + 32) + 8);
  result = *(v7 + 24) + v6 * v4;
  *(v7 + 24) = result;
  *(*(*(a1 + 40) + 8) + 24) += v4;
  return result;
}

- (BOOL)happensPartiallyAtHomeOrWorkOfPersonNodes:(id)nodes
{
  nodesCopy = nodes;
  if ([nodesCopy count])
  {
    collection = [(PGGraphHighlightNode *)self collection];
    momentNodes = [collection momentNodes];
    preciseAddressNodes = [momentNodes preciseAddressNodes];
    homeOrWorkNodes = [nodesCopy homeOrWorkNodes];
    addressNodes = [homeOrWorkNodes addressNodes];
    v10 = [preciseAddressNodes intersectsCollection:addressNodes];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)happensPartiallyAtWorkOfPersonNodes:(id)nodes
{
  nodesCopy = nodes;
  if ([nodesCopy count])
  {
    collection = [(PGGraphHighlightNode *)self collection];
    momentNodes = [collection momentNodes];
    preciseAddressNodes = [momentNodes preciseAddressNodes];
    workNodes = [nodesCopy workNodes];
    addressNodes = [workNodes addressNodes];
    v10 = [preciseAddressNodes intersectsCollection:addressNodes];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)happensPartiallyAtHomeOfPersonNodes:(id)nodes
{
  nodesCopy = nodes;
  if ([nodesCopy count])
  {
    collection = [(PGGraphHighlightNode *)self collection];
    momentNodes = [collection momentNodes];
    preciseAddressNodes = [momentNodes preciseAddressNodes];
    homeNodes = [nodesCopy homeNodes];
    addressNodes = [homeNodes addressNodes];
    v10 = [preciseAddressNodes intersectsCollection:addressNodes];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)isSmartInteresting
{
  collection = [(PGGraphHighlightNode *)self collection];
  momentNodes = [collection momentNodes];
  smartInterestingSubset = [momentNodes smartInterestingSubset];
  v5 = [smartInterestingSubset count] != 0;

  return v5;
}

- (BOOL)isInterestingWithAlternateJunking
{
  collection = [(PGGraphHighlightNode *)self collection];
  momentNodes = [collection momentNodes];
  interestingWithAlternateJunkingSubset = [momentNodes interestingWithAlternateJunkingSubset];
  v5 = [interestingWithAlternateJunkingSubset count] != 0;

  return v5;
}

- (BOOL)isInteresting
{
  collection = [(PGGraphHighlightNode *)self collection];
  momentNodes = [collection momentNodes];
  interestingSubset = [momentNodes interestingSubset];
  v5 = [interestingSubset count] != 0;

  return v5;
}

- (BOOL)petIsPresent
{
  collection = [(PGGraphHighlightNode *)self collection];
  momentNodes = [collection momentNodes];
  petNodes = [momentNodes petNodes];
  v5 = [petNodes count] != 0;

  return v5;
}

- (BOOL)isPartOfAggregation
{
  highlightGroupNode = [(PGGraphHighlightNode *)self highlightGroupNode];
  isAggregation = [highlightGroupNode isAggregation];

  return isAggregation;
}

- (BOOL)isPartOfShortTrip
{
  highlightGroupNode = [(PGGraphHighlightNode *)self highlightGroupNode];
  isShortTrip = [highlightGroupNode isShortTrip];

  return isShortTrip;
}

- (BOOL)isPartOfLongTrip
{
  highlightGroupNode = [(PGGraphHighlightNode *)self highlightGroupNode];
  isLongTrip = [highlightGroupNode isLongTrip];

  return isLongTrip;
}

- (BOOL)isPartOfTrip
{
  highlightGroupNode = [(PGGraphHighlightNode *)self highlightGroupNode];
  isTrip = [highlightGroupNode isTrip];

  return isTrip;
}

- (PGGraphHighlightGroupNode)highlightGroupNode
{
  collection = [(PGGraphHighlightNode *)self collection];
  highlightGroupNodes = [collection highlightGroupNodes];
  anyNode = [highlightGroupNodes anyNode];

  return anyNode;
}

- (PGGraphHighlightNodeCollection)collection
{
  v2 = [(MANodeCollection *)[PGGraphHighlightNodeCollection alloc] initWithNode:self];

  return v2;
}

- (id)propertyForKey:(id)key
{
  v19 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  if ([keyCopy isEqualToString:@"name"])
  {
    v5 = 56;
LABEL_3:
    v6 = *(&self->super.super.super.super.isa + v5);
    if (!v6)
    {
      v6 = &stru_2843F5C58;
    }

    v7 = v6;
    goto LABEL_15;
  }

  if ([keyCopy isEqualToString:@"utcs"])
  {
    v8 = MEMORY[0x277CCABB0];
    v9 = 72;
LABEL_14:
    v7 = [v8 numberWithDouble:*(&self->super.super.super.super.isa + v9)];
LABEL_15:
    v10 = v7;
    goto LABEL_16;
  }

  if ([keyCopy isEqualToString:@"utce"])
  {
    v8 = MEMORY[0x277CCABB0];
    v9 = 80;
    goto LABEL_14;
  }

  if ([keyCopy isEqualToString:@"tzs"])
  {
    v8 = MEMORY[0x277CCABB0];
    v9 = 32;
    goto LABEL_14;
  }

  if ([keyCopy isEqualToString:@"tze"])
  {
    v8 = MEMORY[0x277CCABB0];
    v9 = 40;
    goto LABEL_14;
  }

  if ([keyCopy isEqualToString:@"id"])
  {
    v5 = 64;
    goto LABEL_3;
  }

  if ([keyCopy isEqualToString:@"sharingComposition"])
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:self->_sharingComposition];
    goto LABEL_15;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v15 = 138412546;
    v16 = keyCopy;
    v17 = 2112;
    v18 = v14;
    _os_log_fault_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "Unsupported property '%@' accessed on %@.", &v15, 0x16u);
  }

  v10 = 0;
LABEL_16:

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)propertyDictionary
{
  v15[7] = *MEMORY[0x277D85DE8];
  name = self->_name;
  if (!name)
  {
    name = &stru_2843F5C58;
  }

  v15[0] = name;
  v14[0] = @"name";
  v14[1] = @"utcs";
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:self->_universalStartTimestamp];
  v15[1] = v4;
  v14[2] = @"utce";
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_universalEndTimestamp];
  v15[2] = v5;
  v14[3] = @"tzs";
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_localStartTimestamp];
  v15[3] = v6;
  v14[4] = @"tze";
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->_localEndTimestamp];
  v8 = v7;
  uuid = self->_uuid;
  if (!uuid)
  {
    uuid = &stru_2843F5C58;
  }

  v15[4] = v7;
  v15[5] = uuid;
  v14[5] = @"id";
  v14[6] = @"sharingComposition";
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:self->_sharingComposition];
  v15[6] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:7];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (BOOL)hasProperties:(id)properties
{
  propertiesCopy = properties;
  v5 = propertiesCopy;
  if (propertiesCopy && [propertiesCopy count])
  {
    v6 = [v5 objectForKeyedSubscript:@"id"];
    v7 = v6;
    if (v6 && ![v6 isEqual:self->_uuid])
    {
      goto LABEL_11;
    }

    v8 = [v5 objectForKeyedSubscript:@"name"];
    v7 = v8;
    if (v8)
    {
      if (![v8 isEqual:self->_name])
      {
        goto LABEL_11;
      }
    }

    v9 = [v5 objectForKeyedSubscript:@"sharingComposition"];
    v7 = v9;
    if (v9 && [v9 unsignedShortValue] != self->_sharingComposition)
    {
LABEL_11:
      v10 = 0;
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (void)setLocalProperties:(id)properties
{
  propertiesCopy = properties;
  v5 = [propertiesCopy objectForKeyedSubscript:@"name"];
  name = self->_name;
  self->_name = v5;

  v7 = [propertiesCopy objectForKeyedSubscript:@"utcs"];
  [v7 doubleValue];
  self->_universalStartTimestamp = v8;

  v9 = [propertiesCopy objectForKeyedSubscript:@"utce"];
  [v9 doubleValue];
  self->_universalEndTimestamp = v10;

  v11 = [propertiesCopy objectForKeyedSubscript:@"tzs"];
  [v11 doubleValue];
  self->_localStartTimestamp = v12;

  v13 = [propertiesCopy objectForKeyedSubscript:@"tze"];
  [v13 doubleValue];
  self->_localEndTimestamp = v14;

  v15 = [propertiesCopy objectForKeyedSubscript:@"id"];
  uuid = self->_uuid;
  self->_uuid = v15;

  v17 = [propertiesCopy objectForKeyedSubscript:@"sharingComposition"];

  self->_sharingComposition = [v17 unsignedShortValue];
}

- (PGGraphHighlightNode)initWithLabel:(id)label domain:(unsigned __int16)domain properties:(id)properties
{
  propertiesCopy = properties;
  v7 = [(PGGraphNode *)self init];
  v8 = v7;
  if (v7)
  {
    [(PGGraphHighlightNode *)v7 setLocalProperties:propertiesCopy];
  }

  return v8;
}

- (id)initFromHighlight:(id)highlight
{
  highlightCopy = highlight;
  v8.receiver = self;
  v8.super_class = PGGraphHighlightNode;
  v5 = [(PGGraphNode *)&v8 init];
  if (v5)
  {
    v6 = [objc_opt_class() propertiesWithHighlight:highlightCopy];
    [(PGGraphHighlightNode *)v5 setLocalProperties:v6];
  }

  return v5;
}

+ (MARelation)highlightWithPrivateAndSharedAssetsOfHighlight
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = +[PGGraphHighlightNode filter];
  v8 = @"sharingComposition";
  v9[0] = &unk_2844822F8;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v4 = [v2 filterBySettingProperties:v3];

  relation = [v4 relation];

  v6 = *MEMORY[0x277D85DE8];

  return relation;
}

+ (MARelation)highlightWithSharedAssetsOfHighlight
{
  v10[1] = *MEMORY[0x277D85DE8];
  v2 = +[PGGraphHighlightNode filter];
  v9 = @"sharingComposition";
  v3 = [objc_alloc(MEMORY[0x277D22B98]) initWithComparator:2 value:&unk_2844822E0];
  v10[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v5 = [v2 filterBySettingProperties:v4];

  relation = [v5 relation];

  v7 = *MEMORY[0x277D85DE8];

  return relation;
}

+ (MARelation)highlightWithPrivateAssetsOfHighlight
{
  v10[1] = *MEMORY[0x277D85DE8];
  v2 = +[PGGraphHighlightNode filter];
  v9 = @"sharingComposition";
  v3 = [objc_alloc(MEMORY[0x277D22B98]) initWithComparator:2 value:&unk_2844822C8];
  v10[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v5 = [v2 filterBySettingProperties:v4];

  relation = [v5 relation];

  v7 = *MEMORY[0x277D85DE8];

  return relation;
}

+ (MARelation)momentInHighlight
{
  v11[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D22C90];
  v4 = +[PGGraphHighlightGroupNode highlightOfHighlightGroup];
  optionalStep = [v4 optionalStep];
  v11[0] = optionalStep;
  momentInDayHighlight = [self momentInDayHighlight];
  v11[1] = momentInDayHighlight;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
  v8 = [v3 chain:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (MARelation)highlightGroupOfHighlight
{
  v2 = +[PGGraphGroupContainsEdge filter];
  inRelation = [v2 inRelation];

  return inRelation;
}

+ (MARelation)momentInDayHighlight
{
  v2 = +[PGGraphContainsEdge filter];
  outRelation = [v2 outRelation];

  return outRelation;
}

+ (id)inclusivePathToTargetNodeDomain:(unsigned __int16)domain withName:(id)name
{
  domainCopy = domain;
  v15 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  if (domainCopy == 102)
  {
    v7 = &stru_2843F5C58;
    if (nameCopy)
    {
      v7 = nameCopy;
    }

    [MEMORY[0x277CCACA8] stringWithFormat:@"(%@:Highlight)", v7];
    goto LABEL_9;
  }

  if (domainCopy == 100)
  {
    v6 = &stru_2843F5C58;
    if (nameCopy)
    {
      v6 = nameCopy;
    }

    [MEMORY[0x277CCACA8] stringWithFormat:@"(:Highlight)-[:CONTAINS]->(%@:Moment)", v6];
    v8 = LABEL_9:;
    goto LABEL_13;
  }

  v9 = +[PGLogging sharedLogging];
  loggingConnection = [v9 loggingConnection];

  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    v14 = domainCopy;
    _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Unsupported target event domain: %u", buf, 8u);
  }

  v8 = 0;
LABEL_13:

  v11 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)inclusivePathFromTargetNodeDomain:(unsigned __int16)domain withName:(id)name
{
  domainCopy = domain;
  v15 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  if (domainCopy == 102)
  {
    v7 = &stru_2843F5C58;
    if (nameCopy)
    {
      v7 = nameCopy;
    }

    [MEMORY[0x277CCACA8] stringWithFormat:@"(%@:Highlight)", v7];
    goto LABEL_9;
  }

  if (domainCopy == 100)
  {
    v6 = &stru_2843F5C58;
    if (nameCopy)
    {
      v6 = nameCopy;
    }

    [MEMORY[0x277CCACA8] stringWithFormat:@"(%@:Moment)<-[:CONTAINS]-(:Highlight)", v6];
    v8 = LABEL_9:;
    goto LABEL_13;
  }

  v9 = +[PGLogging sharedLogging];
  loggingConnection = [v9 loggingConnection];

  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    v14 = domainCopy;
    _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Unsupported target event domain: %u", buf, 8u);
  }

  v8 = 0;
LABEL_13:

  v11 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)pathToTargetNodeDomain:(unsigned __int16)domain
{
  v10 = *MEMORY[0x277D85DE8];
  if (domain == 102)
  {
    pathToMoment = &stru_2843F5C58;
  }

  else
  {
    domainCopy = domain;
    if (domain == 100)
    {
      pathToMoment = [objc_opt_class() pathToMoment];
    }

    else
    {
      v5 = +[PGLogging sharedLogging];
      loggingConnection = [v5 loggingConnection];

      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
      {
        v9[0] = 67109120;
        v9[1] = domainCopy;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Unsupported target event domain: %u", v9, 8u);
      }

      pathToMoment = 0;
    }
  }

  v7 = *MEMORY[0x277D85DE8];

  return pathToMoment;
}

+ (id)pathFromTargetNodeDomain:(unsigned __int16)domain
{
  v10 = *MEMORY[0x277D85DE8];
  if (domain == 102)
  {
    pathFromMoment = &stru_2843F5C58;
  }

  else
  {
    domainCopy = domain;
    if (domain == 100)
    {
      pathFromMoment = [objc_opt_class() pathFromMoment];
    }

    else
    {
      v5 = +[PGLogging sharedLogging];
      loggingConnection = [v5 loggingConnection];

      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
      {
        v9[0] = 67109120;
        v9[1] = domainCopy;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Unsupported target event domain: %u", v9, 8u);
      }

      pathFromMoment = 0;
    }
  }

  v7 = *MEMORY[0x277D85DE8];

  return pathFromMoment;
}

+ (id)promotionScoreSortDescriptors
{
  if (promotionScoreSortDescriptors_onceToken != -1)
  {
    dispatch_once(&promotionScoreSortDescriptors_onceToken, &__block_literal_global_4324);
  }

  v3 = promotionScoreSortDescriptors_sortDescriptors;

  return v3;
}

void __53__PGGraphHighlightNode_promotionScoreSortDescriptors__block_invoke()
{
  v6[3] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"promotionScore" ascending:0];
  v1 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"localStartDate" ascending:{1, v0}];
  v6[1] = v1;
  v2 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"uuid" ascending:1];
  v6[2] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:3];
  v4 = promotionScoreSortDescriptors_sortDescriptors;
  promotionScoreSortDescriptors_sortDescriptors = v3;

  v5 = *MEMORY[0x277D85DE8];
}

+ (id)propertiesWithHighlight:(id)highlight
{
  v3 = MEMORY[0x277CBEB38];
  highlightCopy = highlight;
  dictionary = [v3 dictionary];
  uuid = [highlightCopy uuid];
  [dictionary setObject:uuid forKeyedSubscript:@"id"];
  v7 = MEMORY[0x277CCABB0];
  localStartDate = [highlightCopy localStartDate];
  [localStartDate timeIntervalSince1970];
  v9 = [v7 numberWithDouble:?];
  [dictionary setObject:v9 forKeyedSubscript:@"tzs"];

  v10 = MEMORY[0x277CCABB0];
  startDate = [highlightCopy startDate];
  [startDate timeIntervalSince1970];
  v12 = [v10 numberWithDouble:?];
  [dictionary setObject:v12 forKeyedSubscript:@"utcs"];

  v13 = MEMORY[0x277CCABB0];
  localEndDate = [highlightCopy localEndDate];
  [localEndDate timeIntervalSince1970];
  v15 = [v13 numberWithDouble:?];
  [dictionary setObject:v15 forKeyedSubscript:@"tze"];

  v16 = MEMORY[0x277CCABB0];
  endDate = [highlightCopy endDate];
  [endDate timeIntervalSince1970];
  v18 = [v16 numberWithDouble:?];
  [dictionary setObject:v18 forKeyedSubscript:@"utce"];

  v19 = MEMORY[0x277CCABB0];
  sharingComposition = [highlightCopy sharingComposition];

  v21 = [v19 numberWithUnsignedShort:sharingComposition];
  [dictionary setObject:v21 forKeyedSubscript:@"sharingComposition"];

  return dictionary;
}

+ (id)filterWithUUID:(id)d
{
  v11[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  allHighlightsFilter = [self allHighlightsFilter];
  v10 = @"id";
  v11[0] = dCopy;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];

  v7 = [allHighlightsFilter filterBySettingProperties:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)filterWithUUIDs:(id)ds
{
  v11[1] = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  allHighlightsFilter = [self allHighlightsFilter];
  v10 = @"id";
  v11[0] = dsCopy;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];

  v7 = [allHighlightsFilter filterBySettingProperties:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)allHighlightsFilter
{
  v2 = [objc_alloc(MEMORY[0x277D22C78]) initWithLabel:0 domain:102];

  return v2;
}

+ (id)dayHighlightsFilter
{
  v2 = [objc_alloc(MEMORY[0x277D22C78]) initWithLabel:@"Highlight" domain:102];

  return v2;
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C78]) initWithLabel:@"Highlight" domain:102];

  return v2;
}

+ (double)belowAveragePromotionScoreWithPromotionScoreDescriptor:(id *)descriptor
{
  if (descriptor->var11)
  {
    return 0.35;
  }

  result = 0.25;
  if (descriptor->var14 > 0.5)
  {
    return 0.33;
  }

  return result;
}

+ (double)averagePromotionScoreWithPromotionScoreDescriptor:(id *)descriptor
{
  result = 0.25;
  if (!descriptor->var5 && (descriptor->var1 || descriptor->var12 >= 0x11 && descriptor->var14 > 0.3))
  {
    return 0.4;
  }

  return result;
}

+ (double)aboveAveragePromotionScoreWithPromotionScoreDescriptor:(id *)descriptor
{
  if (descriptor->var0)
  {
    return 0.6;
  }

  if (descriptor->var7)
  {
    if (descriptor->var1)
    {
      return 0.55;
    }

    else
    {
      result = 0.45;
      if (!descriptor->var2 && !descriptor->var3)
      {
        v4 = descriptor->var14 > 0.3 && descriptor->var12 > 0x10;
        result = 0.43;
        if (!v4)
        {
          return 0.25;
        }
      }
    }
  }

  else
  {
    result = 0.25;
    if (!descriptor->var5 && (descriptor->var2 || descriptor->var3))
    {
      return 0.41;
    }
  }

  return result;
}

+ (double)nonMeaningfulPromotionScoreWithPromotionScoreDescriptor:(id *)descriptor isAggregation:(BOOL)aggregation enrichmentState:(unsigned __int16)state
{
  aggregationCopy = aggregation;
  if (descriptor->var6 && !descriptor->var8)
  {
    return 0.25;
  }

  if (state < 3u)
  {
    if (descriptor->var9)
    {
      goto LABEL_17;
    }

    v8 = 0.25;
    if (descriptor->var14 >= 0.4)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (descriptor->var5)
    {
      if (descriptor->var10)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v9 = state == 3 || descriptor->var4;
      if (descriptor->var9 || descriptor->var10 && v9)
      {
        goto LABEL_17;
      }
    }

    v8 = 0.25;
    if (descriptor->var13 > 4)
    {
LABEL_17:
      v11 = *&descriptor->var12;
      v15 = *&descriptor->var0;
      v16 = v11;
      var14 = descriptor->var14;
      [self aboveAveragePromotionScoreWithPromotionScoreDescriptor:&v15];
      if (v12 == 0.25)
      {
        v13 = *&descriptor->var12;
        v15 = *&descriptor->var0;
        v16 = v13;
        var14 = descriptor->var14;
        [self averagePromotionScoreWithPromotionScoreDescriptor:&v15];
      }

      if (v12 == 0.25)
      {
        v14 = *&descriptor->var12;
        v15 = *&descriptor->var0;
        v16 = v14;
        var14 = descriptor->var14;
        [self belowAveragePromotionScoreWithPromotionScoreDescriptor:&v15];
      }

      v8 = 0.31;
      if (v12 != 0.25)
      {
        v8 = v12;
        if (aggregationCopy)
        {
          v8 = fmin(v12, 0.39);
        }
      }
    }
  }

  result = fmin(v8, 0.31);
  if (!descriptor->var6)
  {
    return v8;
  }

  return result;
}

+ ($74357DB5E33013E4F0FB9D3992AAC0CD)_promotionScoreDescriptorWithMomentNodes:(SEL)nodes neighborScoreComputer:(id)computer
{
  v64 = *MEMORY[0x277D85DE8];
  computerCopy = computer;
  v48 = a5;
  *&retstr->var0 = 0u;
  *&retstr->var12 = 0u;
  anyObject = [computerCopy anyObject];
  graph = [anyObject graph];

  meNodeCollection = [graph meNodeCollection];
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  obj = computerCopy;
  v49 = [obj countByEnumeratingWithState:&v59 objects:v63 count:16];
  if (v49)
  {
    v43 = graph;
    v44 = retstr;
    v10 = 0;
    v57 = 0;
    v58 = 0;
    v50 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v46 = *v60;
    v18 = 0.0;
    do
    {
      for (i = 0; i != v49; ++i)
      {
        if (*v60 != v46)
        {
          objc_enumerationMutation(obj);
        }

        v54 = v12;
        v20 = *(*(&v59 + 1) + 8 * i);
        [v48 neighborScoreWithMomentNode:v20];
        v52 = v21 >= 0.43;
        v53 = v21 >= 0.6;
        v22 = v11;
        if (v15)
        {
          isInteresting = 1;
        }

        else
        {
          isInteresting = [v20 isInteresting];
        }

        v24 = v17;
        v25 = isInteresting;
        if (v14)
        {
          isSmartInteresting = 1;
        }

        else
        {
          isSmartInteresting = [v20 isSmartInteresting];
        }

        v27 = v16;
        v56 = isSmartInteresting;
        v55 = v10;
        v28 = v13 || [v20 numberOfAssetsWithPersons] != 0;
        numberOfAssets = [v20 numberOfAssets];
        v30 = [v20 happensPartiallyAtWorkOfPersonNodes:meNodeCollection];
        if (v30)
        {
          v31 = numberOfAssets;
        }

        else
        {
          v31 = 0;
        }

        v51 = v31;
        if (v30 | [v20 happensPartiallyAtHomeOfPersonNodes:meNodeCollection])
        {
          v32 = numberOfAssets;
        }

        else
        {
          v32 = 0;
        }

        LODWORD(v57) = v57 || ([v20 inhabitationScore], v33 >= 0.1);
        v34 = !v50 & v30;
        v13 = v28;
        v35 = v27;
        v15 = v25;
        if (v34 == 1)
        {
          [v20 inhabitationScore];
          v50 = v36 >= 0.5;
        }

        if (BYTE4(v57))
        {
          BYTE4(v57) = 1;
        }

        else
        {
          BYTE4(v57) = [v20 hasHigherThanImprovedAssets];
        }

        if (v58)
        {
          LOBYTE(v58) = 1;
        }

        else
        {
          LOBYTE(v58) = [v20 hasAssetsWithInterestingScenes];
        }

        if (BYTE4(v58))
        {
          BYTE4(v58) = 1;
        }

        else
        {
          BYTE4(v58) = [v20 containsBetterScoringAsset];
        }

        v17 = v24 | v53;
        v16 = v35 | v52;
        v11 = v51 + v22;
        v12 = v32 + v54;
        v10 = v55 + numberOfAssets;
        [v20 contentScore];
        v18 = v37 + v18;
        v14 = v56;
      }

      v49 = [obj countByEnumeratingWithState:&v59 objects:v63 count:16];
    }

    while (v49);
    retstr = v44;
    v44->var7 = v57;
    v44->var8 = v50;
    v44->var9 = BYTE4(v57);
    v44->var10 = v58;
    v44->var11 = BYTE4(v58);
    v44->var12 = v10;
    v38 = v12;
    v39 = v11;
    v40 = v10;
    graph = v43;
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    LOBYTE(v16) = 0;
    LOBYTE(v17) = 0;
    v40 = 0.0;
    v18 = 0.0;
    v39 = 0.0;
    v38 = 0.0;
  }

  retstr->var14 = v18 / [obj count];
  retstr->var0 = v17 & 1;
  retstr->var1 = v16 & 1;
  retstr->var2 = v15;
  retstr->var3 = v14;
  retstr->var4 = v13;
  retstr->var5 = v38 / v40 >= 0.5;
  retstr->var6 = v39 / v40 >= 0.5;

  v42 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)otherVeryMeaningfulMeanings
{
  if (otherVeryMeaningfulMeanings_onceToken != -1)
  {
    dispatch_once(&otherVeryMeaningfulMeanings_onceToken, &__block_literal_global_23625);
  }

  v3 = otherVeryMeaningfulMeanings_meanings;

  return v3;
}

uint64_t __67__PGGraphHighlightNode_PromotionScore__otherVeryMeaningfulMeanings__block_invoke()
{
  v0 = [MEMORY[0x277CCAB58] indexSet];
  v1 = otherVeryMeaningfulMeanings_meanings;
  otherVeryMeaningfulMeanings_meanings = v0;

  [otherVeryMeaningfulMeanings_meanings addIndex:13];
  v2 = otherVeryMeaningfulMeanings_meanings;

  return [v2 addIndex:6];
}

void __133__PGGraphHighlightNode_PromotionScore__promotionScoreWithHighlightNode_enrichmentState_numberOfExtendedAssets_neighborScoreComputer___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (*(*(*(a1 + 56) + 8) + 24) & 1) == 0 && [v5 containsNonJunkAssets] && ((*(*(*(a1 + 56) + 8) + 24) = 1, (*(a1 + 104)) || *(*(*(a1 + 64) + 8) + 24) == 1))
  {
    *a3 = 1;
  }

  else
  {
    v20 = v6;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = [v6 meaningLabels];
    v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v22;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [PGGraph meaningForMeaningLabel:*(*(&v21 + 1) + 8 * i)];
          if (v12 != 16)
          {
            v13 = v12;
            *(*(*(a1 + 72) + 8) + 24) = 1;
            if ([*(a1 + 32) containsIndex:v12])
            {
              *(*(*(a1 + 64) + 8) + 24) = 1;
              *v19 = *(*(*(a1 + 56) + 8) + 24);
              goto LABEL_20;
            }

            v14 = [*(a1 + 40) containsIndex:v13];
            v15 = a1 + 80;
            if (v14 & 1) != 0 || (v16 = [*(a1 + 48) containsIndex:v13], v15 = a1 + 88, (v16))
            {
              *(*(*v15 + 8) + 24) = 1;
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_20:

    v6 = v20;
    v17 = [v20 publicEventNodes];
    *(*(*(a1 + 96) + 8) + 24) |= [v17 count] != 0;
  }

  v18 = *MEMORY[0x277D85DE8];
}

@end