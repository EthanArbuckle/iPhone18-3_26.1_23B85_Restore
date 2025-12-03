@interface PGMoodKeywordComputer
- (BOOL)_isCrowdedForMomentNodes:(id)nodes;
- (NSArray)keywordsRegions;
- (NSOrderedSet)orderedKeywords;
- (id)_bestSocialGroupNodesInGraph:(id)graph;
- (id)_celebratedHolidayKeywordsForMomentNodes:(id)nodes inGraph:(id)graph;
- (id)_familyOrPartnerPersonNodesInGraph:(id)graph;
- (id)_gatheringAndFamilyKeywordsForTriggeredMemory:(id)memory isMeaningfulEventHoliday:(BOOL)holiday inGraph:(id)graph;
- (id)_keywordsSortedByPriority:(id)priority;
- (id)_locationTripKeywordsForMomentNodes:(id)nodes locationHelper:(id)helper;
- (id)_lunarNewYearHolidayNodesInGraph:(id)graph;
- (id)_natureMomentNodesInGraph:(id)graph;
- (id)_shortTripTypeNodeCollectionInGraph:(id)graph;
- (id)moodKeywordsForTriggeredMemory:(id)memory suggestedMood:(unint64_t)mood inGraph:(id)graph locationHelper:(id)helper;
@end

@implementation PGMoodKeywordComputer

- (id)_natureMomentNodesInGraph:(id)graph
{
  natureMomentNodes = self->_natureMomentNodes;
  if (!natureMomentNodes)
  {
    v5 = [PGGraphROINodeCollection roiNodesOfType:4 inGraph:graph];
    momentNodes = [v5 momentNodes];
    v7 = self->_natureMomentNodes;
    self->_natureMomentNodes = momentNodes;

    natureMomentNodes = self->_natureMomentNodes;
  }

  return natureMomentNodes;
}

- (id)_familyOrPartnerPersonNodesInGraph:(id)graph
{
  familyOrPartnerPersonNodes = self->_familyOrPartnerPersonNodes;
  if (!familyOrPartnerPersonNodes)
  {
    v5 = [(PGGraphNodeCollection *)PGGraphMeNodeCollection nodesInGraph:graph];
    partnerPersonNodes = [v5 partnerPersonNodes];
    familyPersonNodes = [v5 familyPersonNodes];
    v8 = [partnerPersonNodes collectionByFormingUnionWith:familyPersonNodes];
    v9 = self->_familyOrPartnerPersonNodes;
    self->_familyOrPartnerPersonNodes = v8;

    familyOrPartnerPersonNodes = self->_familyOrPartnerPersonNodes;
  }

  return familyOrPartnerPersonNodes;
}

- (id)_gatheringAndFamilyKeywordsForTriggeredMemory:(id)memory isMeaningfulEventHoliday:(BOOL)holiday inGraph:(id)graph
{
  holidayCopy = holiday;
  memoryCopy = memory;
  graphCopy = graph;
  triggerTypes = [memoryCopy triggerTypes];
  v11 = [triggerTypes containsIndex:3];

  if (v11 && [memoryCopy memoryCategory] != 6 && objc_msgSend(memoryCopy, "memoryCategory") != 5)
  {
    memoryMomentNodes = [memoryCopy memoryMomentNodes];
    personNodes = [memoryMomentNodes personNodes];

    v15 = [personNodes count];
    if (v15)
    {
      goto LABEL_10;
    }

LABEL_12:
    v21 = MEMORY[0x277CBEB98];
    goto LABEL_13;
  }

  memoryFeatureNodes = [memoryCopy memoryFeatureNodes];
  personNodes = [(PGGraphNodeCollection *)PGGraphPersonNodeCollection subsetInCollection:memoryFeatureNodes];

  v14 = [personNodes count];
  if (!v14)
  {
    goto LABEL_12;
  }

  v15 = v14;
  if ((v11 & 1) == 0)
  {
    v16 = [(PGMoodKeywordComputer *)self _bestSocialGroupNodesInGraph:graphCopy];
    socialGroupNodes = [personNodes socialGroupNodes];
    v18 = [v16 intersectsCollection:socialGroupNodes];

    if (!v18)
    {
      v19 = objc_alloc_init(MEMORY[0x277CBEB98]);

      goto LABEL_15;
    }
  }

LABEL_10:
  if (v15 <= 2 && holidayCopy)
  {
    goto LABEL_12;
  }

  v24 = [(PGMoodKeywordComputer *)self _familyOrPartnerPersonNodesInGraph:graphCopy];
  v25 = [v24 collectionByIntersecting:personNodes];
  v26 = [v25 count];

  v21 = MEMORY[0x277CBEB98];
  if (vcvtd_n_f64_u64(v15, 1uLL) <= v26)
  {
    v22 = [MEMORY[0x277CBEB98] setWithObject:@"Family"];
    goto LABEL_14;
  }

LABEL_13:
  v22 = objc_alloc_init(v21);
LABEL_14:
  v19 = v22;
LABEL_15:

  return v19;
}

- (id)_celebratedHolidayKeywordsForMomentNodes:(id)nodes inGraph:(id)graph
{
  nodesCopy = nodes;
  v7 = [(PGMoodKeywordComputer *)self _lunarNewYearHolidayNodesInGraph:graph];
  celebratedHolidayNodes = [nodesCopy celebratedHolidayNodes];

  if ([celebratedHolidayNodes count])
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v10 = [v7 intersectsCollection:celebratedHolidayNodes];
    v11 = [celebratedHolidayNodes collectionBySubtracting:v7];
    v12 = [v11 count];

    if (v10 && !v12)
    {
      [v9 addObject:@"ChineseLunarNewYear"];
    }
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB98]);
  }

  return v9;
}

- (id)_lunarNewYearHolidayNodesInGraph:(id)graph
{
  lunarNewYearHolidayNodes = self->_lunarNewYearHolidayNodes;
  if (!lunarNewYearHolidayNodes)
  {
    v5 = [PGGraphHolidayNodeCollection holidayNodesWithNames:&unk_284485688 inGraph:graph];
    v6 = self->_lunarNewYearHolidayNodes;
    self->_lunarNewYearHolidayNodes = v5;

    lunarNewYearHolidayNodes = self->_lunarNewYearHolidayNodes;
  }

  return lunarNewYearHolidayNodes;
}

- (id)_locationTripKeywordsForMomentNodes:(id)nodes locationHelper:(id)helper
{
  v51 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  helperCopy = helper;
  v32 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v35 = objc_alloc_init(MEMORY[0x277CCA940]);
  v33 = nodesCopy;
  temporaryArray = [nodesCopy temporaryArray];
  v31 = helperCopy;
  v9 = [helperCopy relevantAddressNodesForMomentNodes:temporaryArray applyDensestCloseLocationNode:0];

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v9;
  v10 = [obj countByEnumeratingWithState:&v44 objects:v50 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v45;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v45 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v44 + 1) + 8 * i);
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        keywordsRegions = [(PGMoodKeywordComputer *)self keywordsRegions];
        v16 = [keywordsRegions countByEnumeratingWithState:&v40 objects:v49 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v41;
          while (2)
          {
            for (j = 0; j != v17; ++j)
            {
              if (*v41 != v18)
              {
                objc_enumerationMutation(keywordsRegions);
              }

              v20 = *(*(&v40 + 1) + 8 * j);
              [v14 coordinate];
              if ([v20 containsCoordinate:?])
              {
                identifier = [v20 identifier];
                [v35 addObject:identifier];

                goto LABEL_16;
              }
            }

            v17 = [keywordsRegions countByEnumeratingWithState:&v40 objects:v49 count:16];
            if (v17)
            {
              continue;
            }

            break;
          }
        }

LABEL_16:
      }

      v11 = [obj countByEnumeratingWithState:&v44 objects:v50 count:16];
    }

    while (v11);
  }

  v22 = [obj count];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v23 = v35;
  v24 = [v23 countByEnumeratingWithState:&v36 objects:v48 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v37;
    do
    {
      for (k = 0; k != v25; ++k)
      {
        if (*v37 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v36 + 1) + 8 * k);
        if ([v23 countForObject:v28] == v22)
        {
          [v32 addObject:v28];
        }
      }

      v25 = [v23 countByEnumeratingWithState:&v36 objects:v48 count:16];
    }

    while (v25);
  }

  v29 = *MEMORY[0x277D85DE8];

  return v32;
}

- (NSArray)keywordsRegions
{
  v20[4] = *MEMORY[0x277D85DE8];
  keywordsRegions = self->_keywordsRegions;
  if (!keywordsRegions)
  {
    v4 = objc_alloc(MEMORY[0x277CBFBC8]);
    v5 = CLLocationCoordinate2DMake(40.7004225, -73.9530945);
    v6 = [v4 initWithCenter:@"New York City" radius:v5.latitude identifier:{v5.longitude, 26000.0}];
    v20[0] = v6;
    v7 = objc_alloc(MEMORY[0x277CBFBC8]);
    v8 = CLLocationCoordinate2DMake(51.5001944, -0.118103027);
    v9 = [v7 initWithCenter:@"London" radius:v8.latitude identifier:{v8.longitude, 15000.0}];
    v20[1] = v9;
    v10 = objc_alloc(MEMORY[0x277CBFBC8]);
    v11 = CLLocationCoordinate2DMake(48.8583905, 2.34352112);
    v12 = [v10 initWithCenter:@"Paris" radius:v11.latitude identifier:{v11.longitude, 10000.0}];
    v20[2] = v12;
    v13 = objc_alloc(MEMORY[0x277CBFBC8]);
    v14 = CLLocationCoordinate2DMake(26.7259868, -157.631836);
    v15 = [v13 initWithCenter:@"Hawaii" radius:v14.latitude identifier:{v14.longitude, 1460000.0}];
    v20[3] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:4];
    v17 = self->_keywordsRegions;
    self->_keywordsRegions = v16;

    keywordsRegions = self->_keywordsRegions;
  }

  v18 = *MEMORY[0x277D85DE8];

  return keywordsRegions;
}

- (id)_shortTripTypeNodeCollectionInGraph:(id)graph
{
  shortTripTypeNodeCollection = self->_shortTripTypeNodeCollection;
  if (!shortTripTypeNodeCollection)
  {
    v5 = [PGGraphHighlightTypeNodeCollection shortTripTypeNodesInGraph:graph];
    v6 = self->_shortTripTypeNodeCollection;
    self->_shortTripTypeNodeCollection = v5;

    shortTripTypeNodeCollection = self->_shortTripTypeNodeCollection;
  }

  return shortTripTypeNodeCollection;
}

- (id)_bestSocialGroupNodesInGraph:(id)graph
{
  bestSocialGroupNodes = self->_bestSocialGroupNodes;
  if (!bestSocialGroupNodes)
  {
    graphCopy = graph;
    v6 = [PGGraphSocialGroupNodeCollection alloc];
    bestSocialGroupNodes = [graphCopy bestSocialGroupNodes];
    v8 = [(MAElementCollection *)v6 initWithArray:bestSocialGroupNodes graph:graphCopy];

    v9 = self->_bestSocialGroupNodes;
    self->_bestSocialGroupNodes = v8;

    bestSocialGroupNodes = self->_bestSocialGroupNodes;
  }

  return bestSocialGroupNodes;
}

- (BOOL)_isCrowdedForMomentNodes:(id)nodes
{
  v3 = [nodes subsetWithTotalNumberOfPersonsGreaterThanOrEqualTo:11];
  v4 = [v3 count] != 0;

  return v4;
}

- (id)_keywordsSortedByPriority:(id)priority
{
  v15[1] = *MEMORY[0x277D85DE8];
  priorityCopy = priority;
  orderedKeywords = [(PGMoodKeywordComputer *)self orderedKeywords];
  v6 = MEMORY[0x277CCAC98];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __51__PGMoodKeywordComputer__keywordsSortedByPriority___block_invoke;
  v13[3] = &unk_278889330;
  v14 = orderedKeywords;
  v7 = orderedKeywords;
  v8 = [v6 sortDescriptorWithKey:0 ascending:1 comparator:v13];
  v15[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v10 = [priorityCopy sortedArrayUsingDescriptors:v9];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

uint64_t __51__PGMoodKeywordComputer__keywordsSortedByPriority___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 indexOfObject:a2];
  v8 = [*(a1 + 32) indexOfObject:v6];

  if (v7 < v8)
  {
    return -1;
  }

  else
  {
    return v7 > v8;
  }
}

- (NSOrderedSet)orderedKeywords
{
  v10[19] = *MEMORY[0x277D85DE8];
  orderedKeywords = self->_orderedKeywords;
  if (!orderedKeywords)
  {
    v4 = MEMORY[0x277CBEB70];
    v10[0] = @"Wedding";
    v10[1] = @"Disney";
    v10[2] = @"Universal";
    v10[3] = @"Paris";
    v10[4] = @"New York City";
    v10[5] = @"London";
    v10[6] = @"Hawaii";
    v10[7] = @"ChineseLunarNewYear";
    v10[8] = @"Babies";
    v10[9] = @"Pets";
    v10[10] = @"Birthday";
    v10[11] = @"Anniversary";
    v10[12] = @"Winter Holiday";
    v10[13] = @"Beach";
    v10[14] = @"Family";
    v10[15] = @"Nature";
    v10[16] = @"Sports";
    v10[17] = @"Party";
    v10[18] = @"Gathering";
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:19];
    v6 = [v4 orderedSetWithArray:v5];
    v7 = self->_orderedKeywords;
    self->_orderedKeywords = v6;

    orderedKeywords = self->_orderedKeywords;
  }

  v8 = *MEMORY[0x277D85DE8];

  return orderedKeywords;
}

- (id)moodKeywordsForTriggeredMemory:(id)memory suggestedMood:(unint64_t)mood inGraph:(id)graph locationHelper:(id)helper
{
  moodCopy = mood;
  memoryCopy = memory;
  graphCopy = graph;
  helperCopy = helper;
  if ((moodCopy & 0x3EF) == 0)
  {
    v19 = MEMORY[0x277CBEBF8];
    goto LABEL_79;
  }

  v13 = objc_alloc_init(MEMORY[0x277CBEB58]);
  memoryMomentNodes = [memoryCopy memoryMomentNodes];
  memoryFeatureNodes = [memoryCopy memoryFeatureNodes];
  memoryCategory = [memoryCopy memoryCategory];
  v51 = PGMemorySourceTypeFromCategory(memoryCategory) - 1;
  frequentLocationNodes = [memoryMomentNodes frequentLocationNodes];
  v17 = [(PGMoodKeywordComputer *)frequentLocationNodes count];

  v49 = graphCopy;
  if (memoryCategory == 10 || memoryCategory == 28)
  {
    [v13 addObject:@"Pets"];
  }

  else if (memoryCategory == 11)
  {
    [v13 addObject:@"Babies"];
    v48 = 0;
    v18 = 0;
    goto LABEL_34;
  }

  v18 = memoryCategory == 16;
  if ((memoryCategory & 0xFFFFFFFFFFFFFFFELL) == 0x10)
  {
    v45 = [(PGGraphNodeCollection *)PGGraphMeaningNodeCollection subsetInCollection:memoryFeatureNodes];
    frequentLocationNodes = [v45 meaningLabels];
    if ([(PGMoodKeywordComputer *)frequentLocationNodes containsObject:@"SportEvent"])
    {
      [v13 addObject:@"Sports"];
    }

    if ([(PGMoodKeywordComputer *)frequentLocationNodes containsObject:@"Anniversary"])
    {
      [v13 addObject:@"Anniversary"];
    }

    if ([(PGMoodKeywordComputer *)frequentLocationNodes containsObject:@"Wedding"])
    {
      [v13 addObject:@"Wedding"];
    }

    if (([(PGMoodKeywordComputer *)frequentLocationNodes containsObject:@"NightOut"]& 1) != 0 || [(PGMoodKeywordComputer *)frequentLocationNodes containsObject:@"Performance"])
    {
      [v13 addObject:@"Party"];
    }

    if ([(PGMoodKeywordComputer *)frequentLocationNodes containsObject:@"Birthday"])
    {
      [v13 addObject:@"Birthday"];
    }

    if (!v17)
    {
      if ([(PGMoodKeywordComputer *)frequentLocationNodes containsObject:@"Beaching"])
      {
        [v13 addObject:@"Beach"];
      }

      if ([(PGMoodKeywordComputer *)frequentLocationNodes containsObject:@"Hiking"]&& ![(PGMoodKeywordComputer *)self _isCrowdedForMomentNodes:memoryMomentNodes])
      {
        [v13 addObject:@"Nature"];
      }
    }

    v46 = v17;
    v20 = [(PGGraphNodeCollection *)PGGraphHolidayNodeCollection subsetInCollection:memoryFeatureNodes];
    v21 = [v20 count];
    v48 = v21 != 0;

    if (v21)
    {
      selfCopy = self;
      dateNodes = [memoryMomentNodes dateNodes];
      seasonNodes = [dateNodes seasonNodes];
      names = [seasonNodes names];
      v25 = [names containsObject:@"Winter"];

      if (v25)
      {
        [v13 addObject:@"Winter Holiday"];
      }

      self = selfCopy;
      v26 = [(PGMoodKeywordComputer *)selfCopy _celebratedHolidayKeywordsForMomentNodes:memoryMomentNodes inGraph:v49];
      [v13 unionSet:v26];
    }

    v18 = memoryCategory == 16;
    v17 = v46;
  }

  else
  {
    if (memoryCategory == 19)
    {
      [(PGMoodKeywordComputer *)self _shortTripTypeNodeCollectionInGraph:v49];
      v27 = v47 = v17;
      v28 = [(PGGraphNodeCollection *)PGGraphHighlightGroupNodeCollection subsetInCollection:memoryFeatureNodes];
      [v28 typeNodes];
      v29 = frequentLocationNodes = self;
      v18 = [v29 intersectsCollection:v27];

      self = frequentLocationNodes;
      v17 = v47;
    }

    v48 = 0;
  }

LABEL_34:
  v30 = [memoryMomentNodes count];
  v33 = (memoryCategory == 14 || v51 < 2) && v17 == 0;
  if (v30 == 1)
  {
    if (!v33)
    {
      v18 = 1;
      goto LABEL_56;
    }

    goto LABEL_48;
  }

  if (v33)
  {
    if ((v18 & 1) == 0)
    {
      frequentLocationNodes = [(MAElementCollection *)[PGGraphPOINodeCollection alloc] initWithGraph:v49];
      v18 = 0;
      goto LABEL_50;
    }

LABEL_48:
    frequentLocationNodes = [memoryMomentNodes poiNodes];
    v18 = 1;
LABEL_50:
    if (![(PGMoodKeywordComputer *)frequentLocationNodes count])
    {
      v34 = helperCopy;
      v35 = [(PGMoodKeywordComputer *)self _natureMomentNodesInGraph:v49];
      if ([v35 intersectsCollection:memoryMomentNodes])
      {
        v36 = [(PGMoodKeywordComputer *)self _isCrowdedForMomentNodes:memoryMomentNodes];

        helperCopy = v34;
        if (!v36)
        {
          [v13 addObject:@"Nature"];
        }
      }

      else
      {

        helperCopy = v34;
      }
    }
  }

LABEL_56:
  if (memoryCategory == 15 || v51 <= 1)
  {
    v37 = [PGSpecialPOIResolver alloc];
    temporaryArray = [memoryMomentNodes temporaryArray];
    frequentLocationNodes = [(PGSpecialPOIResolver *)v37 initWithMomentNodes:temporaryArray];

    if (v18)
    {
      v39 = 0.6;
    }

    else
    {
      v39 = 0.9;
    }

    if ([(PGMoodKeywordComputer *)frequentLocationNodes momentsContainSpecialPOI:1 withMomentRatio:v39])
    {
      [v13 addObject:@"Disney"];
    }

    if ([(PGMoodKeywordComputer *)frequentLocationNodes momentsContainSpecialPOI:2 withMomentRatio:v39])
    {
      [v13 addObject:@"Universal"];
    }
  }

  v40 = 1;
  if ((memoryCategory - 5) >= 2)
  {
    graphCopy = v49;
    if (memoryCategory != 219)
    {
      frequentLocationNodes = [memoryCopy triggerTypes];
      v40 = [(PGMoodKeywordComputer *)frequentLocationNodes containsIndex:3]| v48;
    }
  }

  else
  {
    graphCopy = v49;
  }

  if ((memoryCategory - 5) >= 2 && memoryCategory != 219)
  {
  }

  if (v40)
  {
    v41 = [(PGMoodKeywordComputer *)self _gatheringAndFamilyKeywordsForTriggeredMemory:memoryCopy isMeaningfulEventHoliday:v48 inGraph:graphCopy];
    [v13 unionSet:v41];
  }

  if ((memoryCategory - 12) < 3 || v51 <= 1)
  {
    v42 = [(PGMoodKeywordComputer *)self _locationTripKeywordsForMomentNodes:memoryMomentNodes locationHelper:helperCopy];
    [v13 unionSet:v42];
  }

  v19 = [(PGMoodKeywordComputer *)self _keywordsSortedByPriority:v13];

LABEL_79:

  return v19;
}

@end