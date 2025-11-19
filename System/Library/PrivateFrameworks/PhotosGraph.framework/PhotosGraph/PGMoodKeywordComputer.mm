@interface PGMoodKeywordComputer
- (BOOL)_isCrowdedForMomentNodes:(id)a3;
- (NSArray)keywordsRegions;
- (NSOrderedSet)orderedKeywords;
- (id)_bestSocialGroupNodesInGraph:(id)a3;
- (id)_celebratedHolidayKeywordsForMomentNodes:(id)a3 inGraph:(id)a4;
- (id)_familyOrPartnerPersonNodesInGraph:(id)a3;
- (id)_gatheringAndFamilyKeywordsForTriggeredMemory:(id)a3 isMeaningfulEventHoliday:(BOOL)a4 inGraph:(id)a5;
- (id)_keywordsSortedByPriority:(id)a3;
- (id)_locationTripKeywordsForMomentNodes:(id)a3 locationHelper:(id)a4;
- (id)_lunarNewYearHolidayNodesInGraph:(id)a3;
- (id)_natureMomentNodesInGraph:(id)a3;
- (id)_shortTripTypeNodeCollectionInGraph:(id)a3;
- (id)moodKeywordsForTriggeredMemory:(id)a3 suggestedMood:(unint64_t)a4 inGraph:(id)a5 locationHelper:(id)a6;
@end

@implementation PGMoodKeywordComputer

- (id)_natureMomentNodesInGraph:(id)a3
{
  natureMomentNodes = self->_natureMomentNodes;
  if (!natureMomentNodes)
  {
    v5 = [PGGraphROINodeCollection roiNodesOfType:4 inGraph:a3];
    v6 = [v5 momentNodes];
    v7 = self->_natureMomentNodes;
    self->_natureMomentNodes = v6;

    natureMomentNodes = self->_natureMomentNodes;
  }

  return natureMomentNodes;
}

- (id)_familyOrPartnerPersonNodesInGraph:(id)a3
{
  familyOrPartnerPersonNodes = self->_familyOrPartnerPersonNodes;
  if (!familyOrPartnerPersonNodes)
  {
    v5 = [(PGGraphNodeCollection *)PGGraphMeNodeCollection nodesInGraph:a3];
    v6 = [v5 partnerPersonNodes];
    v7 = [v5 familyPersonNodes];
    v8 = [v6 collectionByFormingUnionWith:v7];
    v9 = self->_familyOrPartnerPersonNodes;
    self->_familyOrPartnerPersonNodes = v8;

    familyOrPartnerPersonNodes = self->_familyOrPartnerPersonNodes;
  }

  return familyOrPartnerPersonNodes;
}

- (id)_gatheringAndFamilyKeywordsForTriggeredMemory:(id)a3 isMeaningfulEventHoliday:(BOOL)a4 inGraph:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = [v8 triggerTypes];
  v11 = [v10 containsIndex:3];

  if (v11 && [v8 memoryCategory] != 6 && objc_msgSend(v8, "memoryCategory") != 5)
  {
    v20 = [v8 memoryMomentNodes];
    v13 = [v20 personNodes];

    v15 = [v13 count];
    if (v15)
    {
      goto LABEL_10;
    }

LABEL_12:
    v21 = MEMORY[0x277CBEB98];
    goto LABEL_13;
  }

  v12 = [v8 memoryFeatureNodes];
  v13 = [(PGGraphNodeCollection *)PGGraphPersonNodeCollection subsetInCollection:v12];

  v14 = [v13 count];
  if (!v14)
  {
    goto LABEL_12;
  }

  v15 = v14;
  if ((v11 & 1) == 0)
  {
    v16 = [(PGMoodKeywordComputer *)self _bestSocialGroupNodesInGraph:v9];
    v17 = [v13 socialGroupNodes];
    v18 = [v16 intersectsCollection:v17];

    if (!v18)
    {
      v19 = objc_alloc_init(MEMORY[0x277CBEB98]);

      goto LABEL_15;
    }
  }

LABEL_10:
  if (v15 <= 2 && v6)
  {
    goto LABEL_12;
  }

  v24 = [(PGMoodKeywordComputer *)self _familyOrPartnerPersonNodesInGraph:v9];
  v25 = [v24 collectionByIntersecting:v13];
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

- (id)_celebratedHolidayKeywordsForMomentNodes:(id)a3 inGraph:(id)a4
{
  v6 = a3;
  v7 = [(PGMoodKeywordComputer *)self _lunarNewYearHolidayNodesInGraph:a4];
  v8 = [v6 celebratedHolidayNodes];

  if ([v8 count])
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v10 = [v7 intersectsCollection:v8];
    v11 = [v8 collectionBySubtracting:v7];
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

- (id)_lunarNewYearHolidayNodesInGraph:(id)a3
{
  lunarNewYearHolidayNodes = self->_lunarNewYearHolidayNodes;
  if (!lunarNewYearHolidayNodes)
  {
    v5 = [PGGraphHolidayNodeCollection holidayNodesWithNames:&unk_284485688 inGraph:a3];
    v6 = self->_lunarNewYearHolidayNodes;
    self->_lunarNewYearHolidayNodes = v5;

    lunarNewYearHolidayNodes = self->_lunarNewYearHolidayNodes;
  }

  return lunarNewYearHolidayNodes;
}

- (id)_locationTripKeywordsForMomentNodes:(id)a3 locationHelper:(id)a4
{
  v51 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v32 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v35 = objc_alloc_init(MEMORY[0x277CCA940]);
  v33 = v6;
  v8 = [v6 temporaryArray];
  v31 = v7;
  v9 = [v7 relevantAddressNodesForMomentNodes:v8 applyDensestCloseLocationNode:0];

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
        v15 = [(PGMoodKeywordComputer *)self keywordsRegions];
        v16 = [v15 countByEnumeratingWithState:&v40 objects:v49 count:16];
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
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v40 + 1) + 8 * j);
              [v14 coordinate];
              if ([v20 containsCoordinate:?])
              {
                v21 = [v20 identifier];
                [v35 addObject:v21];

                goto LABEL_16;
              }
            }

            v17 = [v15 countByEnumeratingWithState:&v40 objects:v49 count:16];
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

- (id)_shortTripTypeNodeCollectionInGraph:(id)a3
{
  shortTripTypeNodeCollection = self->_shortTripTypeNodeCollection;
  if (!shortTripTypeNodeCollection)
  {
    v5 = [PGGraphHighlightTypeNodeCollection shortTripTypeNodesInGraph:a3];
    v6 = self->_shortTripTypeNodeCollection;
    self->_shortTripTypeNodeCollection = v5;

    shortTripTypeNodeCollection = self->_shortTripTypeNodeCollection;
  }

  return shortTripTypeNodeCollection;
}

- (id)_bestSocialGroupNodesInGraph:(id)a3
{
  bestSocialGroupNodes = self->_bestSocialGroupNodes;
  if (!bestSocialGroupNodes)
  {
    v5 = a3;
    v6 = [PGGraphSocialGroupNodeCollection alloc];
    v7 = [v5 bestSocialGroupNodes];
    v8 = [(MAElementCollection *)v6 initWithArray:v7 graph:v5];

    v9 = self->_bestSocialGroupNodes;
    self->_bestSocialGroupNodes = v8;

    bestSocialGroupNodes = self->_bestSocialGroupNodes;
  }

  return bestSocialGroupNodes;
}

- (BOOL)_isCrowdedForMomentNodes:(id)a3
{
  v3 = [a3 subsetWithTotalNumberOfPersonsGreaterThanOrEqualTo:11];
  v4 = [v3 count] != 0;

  return v4;
}

- (id)_keywordsSortedByPriority:(id)a3
{
  v15[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PGMoodKeywordComputer *)self orderedKeywords];
  v6 = MEMORY[0x277CCAC98];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __51__PGMoodKeywordComputer__keywordsSortedByPriority___block_invoke;
  v13[3] = &unk_278889330;
  v14 = v5;
  v7 = v5;
  v8 = [v6 sortDescriptorWithKey:0 ascending:1 comparator:v13];
  v15[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v10 = [v4 sortedArrayUsingDescriptors:v9];

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

- (id)moodKeywordsForTriggeredMemory:(id)a3 suggestedMood:(unint64_t)a4 inGraph:(id)a5 locationHelper:(id)a6
{
  v8 = a4;
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if ((v8 & 0x3EF) == 0)
  {
    v19 = MEMORY[0x277CBEBF8];
    goto LABEL_79;
  }

  v13 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v14 = [v10 memoryMomentNodes];
  v50 = [v10 memoryFeatureNodes];
  v15 = [v10 memoryCategory];
  v51 = PGMemorySourceTypeFromCategory(v15) - 1;
  v16 = [v14 frequentLocationNodes];
  v17 = [(PGMoodKeywordComputer *)v16 count];

  v49 = v11;
  if (v15 == 10 || v15 == 28)
  {
    [v13 addObject:@"Pets"];
  }

  else if (v15 == 11)
  {
    [v13 addObject:@"Babies"];
    v48 = 0;
    v18 = 0;
    goto LABEL_34;
  }

  v18 = v15 == 16;
  if ((v15 & 0xFFFFFFFFFFFFFFFELL) == 0x10)
  {
    v45 = [(PGGraphNodeCollection *)PGGraphMeaningNodeCollection subsetInCollection:v50];
    v16 = [v45 meaningLabels];
    if ([(PGMoodKeywordComputer *)v16 containsObject:@"SportEvent"])
    {
      [v13 addObject:@"Sports"];
    }

    if ([(PGMoodKeywordComputer *)v16 containsObject:@"Anniversary"])
    {
      [v13 addObject:@"Anniversary"];
    }

    if ([(PGMoodKeywordComputer *)v16 containsObject:@"Wedding"])
    {
      [v13 addObject:@"Wedding"];
    }

    if (([(PGMoodKeywordComputer *)v16 containsObject:@"NightOut"]& 1) != 0 || [(PGMoodKeywordComputer *)v16 containsObject:@"Performance"])
    {
      [v13 addObject:@"Party"];
    }

    if ([(PGMoodKeywordComputer *)v16 containsObject:@"Birthday"])
    {
      [v13 addObject:@"Birthday"];
    }

    if (!v17)
    {
      if ([(PGMoodKeywordComputer *)v16 containsObject:@"Beaching"])
      {
        [v13 addObject:@"Beach"];
      }

      if ([(PGMoodKeywordComputer *)v16 containsObject:@"Hiking"]&& ![(PGMoodKeywordComputer *)self _isCrowdedForMomentNodes:v14])
      {
        [v13 addObject:@"Nature"];
      }
    }

    v46 = v17;
    v20 = [(PGGraphNodeCollection *)PGGraphHolidayNodeCollection subsetInCollection:v50];
    v21 = [v20 count];
    v48 = v21 != 0;

    if (v21)
    {
      v44 = self;
      v22 = [v14 dateNodes];
      v23 = [v22 seasonNodes];
      v24 = [v23 names];
      v25 = [v24 containsObject:@"Winter"];

      if (v25)
      {
        [v13 addObject:@"Winter Holiday"];
      }

      self = v44;
      v26 = [(PGMoodKeywordComputer *)v44 _celebratedHolidayKeywordsForMomentNodes:v14 inGraph:v49];
      [v13 unionSet:v26];
    }

    v18 = v15 == 16;
    v17 = v46;
  }

  else
  {
    if (v15 == 19)
    {
      [(PGMoodKeywordComputer *)self _shortTripTypeNodeCollectionInGraph:v49];
      v27 = v47 = v17;
      v28 = [(PGGraphNodeCollection *)PGGraphHighlightGroupNodeCollection subsetInCollection:v50];
      [v28 typeNodes];
      v29 = v16 = self;
      v18 = [v29 intersectsCollection:v27];

      self = v16;
      v17 = v47;
    }

    v48 = 0;
  }

LABEL_34:
  v30 = [v14 count];
  v33 = (v15 == 14 || v51 < 2) && v17 == 0;
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
      v16 = [(MAElementCollection *)[PGGraphPOINodeCollection alloc] initWithGraph:v49];
      v18 = 0;
      goto LABEL_50;
    }

LABEL_48:
    v16 = [v14 poiNodes];
    v18 = 1;
LABEL_50:
    if (![(PGMoodKeywordComputer *)v16 count])
    {
      v34 = v12;
      v35 = [(PGMoodKeywordComputer *)self _natureMomentNodesInGraph:v49];
      if ([v35 intersectsCollection:v14])
      {
        v36 = [(PGMoodKeywordComputer *)self _isCrowdedForMomentNodes:v14];

        v12 = v34;
        if (!v36)
        {
          [v13 addObject:@"Nature"];
        }
      }

      else
      {

        v12 = v34;
      }
    }
  }

LABEL_56:
  if (v15 == 15 || v51 <= 1)
  {
    v37 = [PGSpecialPOIResolver alloc];
    v38 = [v14 temporaryArray];
    v16 = [(PGSpecialPOIResolver *)v37 initWithMomentNodes:v38];

    if (v18)
    {
      v39 = 0.6;
    }

    else
    {
      v39 = 0.9;
    }

    if ([(PGMoodKeywordComputer *)v16 momentsContainSpecialPOI:1 withMomentRatio:v39])
    {
      [v13 addObject:@"Disney"];
    }

    if ([(PGMoodKeywordComputer *)v16 momentsContainSpecialPOI:2 withMomentRatio:v39])
    {
      [v13 addObject:@"Universal"];
    }
  }

  v40 = 1;
  if ((v15 - 5) >= 2)
  {
    v11 = v49;
    if (v15 != 219)
    {
      v16 = [v10 triggerTypes];
      v40 = [(PGMoodKeywordComputer *)v16 containsIndex:3]| v48;
    }
  }

  else
  {
    v11 = v49;
  }

  if ((v15 - 5) >= 2 && v15 != 219)
  {
  }

  if (v40)
  {
    v41 = [(PGMoodKeywordComputer *)self _gatheringAndFamilyKeywordsForTriggeredMemory:v10 isMeaningfulEventHoliday:v48 inGraph:v11];
    [v13 unionSet:v41];
  }

  if ((v15 - 12) < 3 || v51 <= 1)
  {
    v42 = [(PGMoodKeywordComputer *)self _locationTripKeywordsForMomentNodes:v14 locationHelper:v12];
    [v13 unionSet:v42];
  }

  v19 = [(PGMoodKeywordComputer *)self _keywordsSortedByPriority:v13];

LABEL_79:

  return v19;
}

@end