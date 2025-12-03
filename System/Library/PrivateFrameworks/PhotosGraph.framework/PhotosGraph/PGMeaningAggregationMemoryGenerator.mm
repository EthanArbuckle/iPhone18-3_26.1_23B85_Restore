@interface PGMeaningAggregationMemoryGenerator
+ (id)allMeaningAggregationMemoryGeneratorClasses;
+ (id)featureRelationWithMeaningLabel:(id)label;
+ (id)mostSpecificLabelForMeaning:(unint64_t)meaning;
+ (id)supportedMeaningLabels;
+ (unint64_t)_extendedMeaningForActivityEvent:(id)event;
+ (unint64_t)_extendedMeaningForActivityMeaningLabel:(id)label;
+ (unint64_t)_extendedMeaningForMeaning:(unint64_t)meaning meaningfulEvent:(id)event;
+ (unint64_t)_extendedMeaningForRestaurantEvent:(id)event;
+ (unint64_t)_extendedMeaningForRestaurantMeaningLabel:(id)label;
- (PGMeaningAggregationMemoryGenerator)initWithMemoryGenerationContext:(id)context;
- (id)curationOptionsWithRequiredAssetUUIDs:(id)ds eligibleAssetUUIDs:(id)iDs triggeredMemory:(id)memory;
- (id)keyAssetCurationOptionsWithTriggeredMemory:(id)memory inGraph:(id)graph;
- (id)titleGeneratorForTriggeredMemory:(id)memory withKeyAsset:(id)asset curatedAssets:(id)assets extendedCuratedAssets:(id)curatedAssets titleGenerationContext:(id)context inGraph:(id)graph;
- (unint64_t)memoryCategorySubcategoryForOverTimeType:(unint64_t)type;
- (void)enumerateMomentNodesAndFeatureNodesInGraph:(id)graph usingBlock:(id)block;
@end

@implementation PGMeaningAggregationMemoryGenerator

- (id)titleGeneratorForTriggeredMemory:(id)memory withKeyAsset:(id)asset curatedAssets:(id)assets extendedCuratedAssets:(id)curatedAssets titleGenerationContext:(id)context inGraph:(id)graph
{
  memoryCopy = memory;
  contextCopy = context;
  memoryFeatureNodes = [memoryCopy memoryFeatureNodes];
  v13 = [(PGGraphNodeCollection *)PGGraphMeaningNodeCollection subsetInCollection:memoryFeatureNodes];
  meaningLabels = [v13 meaningLabels];
  anyObject = [meaningLabels anyObject];

  v16 = [PGGraph meaningForMeaningLabel:anyObject];
  v17 = v16;
  if (v16 > 12)
  {
    if (v16 == 13)
    {
      v26 = [PGCelebrationOverTimeMemoryTitleGenerator alloc];
      memoryMomentNodes = [memoryCopy memoryMomentNodes];
      v22 = [memoryMomentNodes set];
      v23 = [(PGCelebrationOverTimeMemoryTitleGenerator *)v26 initWithMomentNodes:v22 titleGenerationContext:contextCopy];
LABEL_19:

      goto LABEL_20;
    }

    if (v16 == 15)
    {
      v19 = [PGMeaningAggregationMemoryGenerator _extendedMeaningForRestaurantMeaningLabel:anyObject];
      if (v19)
      {
        v17 = v19;
      }

      else
      {
        v17 = 15;
      }
    }

LABEL_12:
    memoryMomentNodes = [memoryFeatureNodes allFeatures];
    memoryMomentNodes2 = [memoryCopy memoryMomentNodes];
    v22 = [memoryMomentNodes2 set];

    v23 = [[PGMeaningfulEventAggregationMemoryTitleGenerator alloc] initWithMeaning:v17 features:memoryMomentNodes meaningfulEvents:v22 titleGenerationContext:contextCopy];
    [(PGMeaningfulEventAggregationMemoryTitleGenerator *)v23 setUnreliableMeaningRatioThresholdForSpecificTitle:0.8];
    v24 = [(PGGraphNodeCollection *)PGGraphYearNodeCollection subsetInCollection:memoryFeatureNodes];
    if ([v24 count] == 1)
    {
      [(PGTitleGenerator *)v23 setFeaturedYearNodes:v24];
    }

    goto LABEL_19;
  }

  if (v16)
  {
    if (v16 == 1)
    {
      v18 = [PGMeaningAggregationMemoryGenerator _extendedMeaningForActivityMeaningLabel:anyObject];
      if (v18 <= 1)
      {
        v17 = 1;
      }

      else
      {
        v17 = v18;
      }
    }

    goto LABEL_12;
  }

  loggingConnection = [(PGMemoryGenerator *)self loggingConnection];
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
  {
    *v28 = 0;
    _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "[PGMeaningAggregationMemoryGenerator] memory should have a meaning", v28, 2u);
  }

  v23 = 0;
LABEL_20:

  return v23;
}

- (id)keyAssetCurationOptionsWithTriggeredMemory:(id)memory inGraph:(id)graph
{
  graphCopy = graph;
  memoryCopy = memory;
  memoryFeatureNodes = [memoryCopy memoryFeatureNodes];
  v9 = [(PGGraphNodeCollection *)PGGraphMeaningNodeCollection subsetInCollection:memoryFeatureNodes];
  meaningLabels = [v9 meaningLabels];
  anyObject = [meaningLabels anyObject];

  memoryCurationSession = [(PGMemoryGenerator *)self memoryCurationSession];
  curationManager = [memoryCurationSession curationManager];
  curationCriteriaFactory = [curationManager curationCriteriaFactory];
  v15 = [curationCriteriaFactory curationCriteriaWithMeaningLabel:anyObject featureNodes:memoryFeatureNodes inGraph:graphCopy client:1];

  v18.receiver = self;
  v18.super_class = PGMeaningAggregationMemoryGenerator;
  v16 = [(PGMemoryGenerator *)&v18 keyAssetCurationOptionsWithTriggeredMemory:memoryCopy inGraph:graphCopy];

  [v16 setCurationCriteria:v15];

  return v16;
}

- (id)curationOptionsWithRequiredAssetUUIDs:(id)ds eligibleAssetUUIDs:(id)iDs triggeredMemory:(id)memory
{
  v7.receiver = self;
  v7.super_class = PGMeaningAggregationMemoryGenerator;
  v5 = [(PGMemoryGenerator *)&v7 curationOptionsWithRequiredAssetUUIDs:ds eligibleAssetUUIDs:iDs triggeredMemory:memory];
  [v5 setMinimumNumberOfItems:15];
  [v5 setFailIfMinimumDurationNotReached:1];

  return v5;
}

- (void)enumerateMomentNodesAndFeatureNodesInGraph:(id)graph usingBlock:(id)block
{
  v27[2] = *MEMORY[0x277D85DE8];
  blockCopy = block;
  graphCopy = graph;
  supportedMeaningLabels = [objc_opt_class() supportedMeaningLabels];
  v9 = [PGGraphMeaningNodeCollection meaningNodesWithMeaningLabels:supportedMeaningLabels inGraph:graphCopy];

  v27[0] = @"Lunch";
  v27[1] = @"Dinner";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
  v11 = [PGGraphMeaningNodeCollection meaningNodesWithMeaningLabels:v10 inGraph:graphCopy];
  v12 = [PGGraphBusinessNodeCollection restaurantBusinessNodesInGraph:graphCopy];

  v13 = +[PGGraphBusinessNode momentOfBusiness];
  v14 = [(MANodeCollection *)PGGraphMomentNodeCollection nodesRelatedToNodes:v12 withRelation:v13];

  v15 = MEMORY[0x277D22BF8];
  v16 = +[PGGraphMeaningNode momentOfReliableMeaning];
  v17 = [v15 adjacencyWithSources:v9 relation:v16 targetsClass:objc_opt_class()];

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __93__PGMeaningAggregationMemoryGenerator_enumerateMomentNodesAndFeatureNodesInGraph_usingBlock___block_invoke;
  v22[3] = &unk_27887FDF8;
  v23 = v11;
  v24 = v14;
  selfCopy = self;
  v26 = blockCopy;
  v18 = blockCopy;
  v19 = v14;
  v20 = v11;
  [v17 enumerateTargetsBySourceWithBlock:v22];

  v21 = *MEMORY[0x277D85DE8];
}

void __93__PGMeaningAggregationMemoryGenerator_enumerateMomentNodesAndFeatureNodesInGraph_usingBlock___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  if (![v7 intersectsCollection:*(a1 + 32)] || (objc_msgSend(v8, "collectionByIntersecting:", *(a1 + 40)), v9 = objc_claimAutoreleasedReturnValue(), v8, v8 = v9, objc_msgSend(v9, "count")))
  {
    v10 = *(a1 + 48);
    v11 = [objc_opt_class() requiredFeatureRelation];
    if (v11)
    {
      v12 = [MEMORY[0x277D22BF8] adjacencyWithSources:v8 relation:v11 targetsClass:objc_opt_class()];
      v13 = [v12 transposed];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __93__PGMeaningAggregationMemoryGenerator_enumerateMomentNodesAndFeatureNodesInGraph_usingBlock___block_invoke_2;
      v15[3] = &unk_27887FDD0;
      v16 = v7;
      v17 = *(a1 + 56);
      v18 = a4;
      [v13 enumerateTargetsBySourceWithBlock:v15];
    }

    else
    {
      v14 = *(a1 + 56);
      v12 = [v7 featureNodeCollection];
      (*(v14 + 16))(v14, v8, v12, a4);
    }
  }
}

void __93__PGMeaningAggregationMemoryGenerator_enumerateMomentNodesAndFeatureNodesInGraph_usingBlock___block_invoke_2(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a1[4];
  v8 = a3;
  v10 = [a2 collectionByFormingUnionWith:v7];
  v9 = a1[6];
  (*(a1[5] + 16))();

  *a4 = *a1[6];
}

- (unint64_t)memoryCategorySubcategoryForOverTimeType:(unint64_t)type
{
  v13 = *MEMORY[0x277D85DE8];
  if (type == 1)
  {
    result = 11002;
  }

  else
  {
    typeCopy = type;
    if (type == 3)
    {
      result = 11003;
    }

    else
    {
      loggingConnection = [(PGMemoryGenerator *)self loggingConnection];
      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
      {
        v7 = objc_opt_class();
        v8 = NSStringFromClass(v7);
        v9 = 138412546;
        v10 = v8;
        v11 = 1024;
        v12 = typeCopy;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "[%@] Returning PHMemoryCategorySubcategoryNone for PGOverTimeMemoryType %d, this should never happen", &v9, 0x12u);
      }

      result = 0;
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (PGMeaningAggregationMemoryGenerator)initWithMemoryGenerationContext:(id)context
{
  v12.receiver = self;
  v12.super_class = PGMeaningAggregationMemoryGenerator;
  v3 = [(PGMemoryGenerator *)&v12 initWithMemoryGenerationContext:context];
  v4 = v3;
  if (v3)
  {
    v3->_requireSceneProcessingMeetsThresholdOverTime = 1;
    v3->_requireFaceProcessingMeetsThresholdOverTime = 0;
    v5 = objc_alloc_init(PGMemoryMomentRequirements);
    momentRequirements = v4->_momentRequirements;
    v4->_momentRequirements = v5;

    [(PGMemoryMomentRequirements *)v4->_momentRequirements setFilterMomentsWithNotEnoughScenesProcessed:1];
    v7 = +[PGOverTheYearsMemoryConfiguration defaultOverTheYearsMemoryConfiguration];
    overTheYearsConfiguration = v4->_overTheYearsConfiguration;
    v4->_overTheYearsConfiguration = v7;

    [(PGOverTimeMemoryConfiguration *)v4->_overTheYearsConfiguration setMinimumNumberOfAssetsInExtendedCuration:13];
    [(PGOverTimeMemoryConfiguration *)v4->_overTheYearsConfiguration setAboveMomentAverageContentScoreThreshold:0.5];
    v9 = +[PGFeaturedTimePeriodMemoryConfiguration defaultFeaturedYearMemoryConfiguration];
    featuredYearConfiguration = v4->_featuredYearConfiguration;
    v4->_featuredYearConfiguration = v9;

    [(PGOverTimeMemoryConfiguration *)v4->_featuredYearConfiguration setMinimumMomentSpreadicityTimeInterval:604800.0];
    [(PGOverTimeMemoryConfiguration *)v4->_featuredYearConfiguration setMinimumNumberOfAssetsInExtendedCuration:13];
    [(PGOverTimeMemoryConfiguration *)v4->_featuredYearConfiguration setAboveMomentAverageContentScoreThreshold:0.5];
  }

  return v4;
}

+ (id)mostSpecificLabelForMeaning:(unint64_t)meaning
{
  v4 = @"Unknown";
  if (meaning > 999)
  {
    if (meaning > 2000)
    {
      if (meaning > 2002)
      {
        if (meaning == 2003)
        {
          v5 = kPGGraphNodeMeaningWinterSport;
        }

        else
        {
          if (meaning != 2004)
          {
            goto LABEL_36;
          }

          v5 = kPGGraphNodeMeaningClimbing;
        }
      }

      else if (meaning == 2001)
      {
        v5 = kPGGraphNodeMeaningBeaching;
      }

      else
      {
        v5 = kPGGraphNodeMeaningDiving;
      }
    }

    else if (meaning > 1001)
    {
      if (meaning == 1002)
      {
        v5 = kPGGraphNodeMeaningDinner;
      }

      else
      {
        if (meaning != 2000)
        {
          goto LABEL_36;
        }

        v5 = kPGGraphNodeMeaningHiking;
      }
    }

    else if (meaning == 1000)
    {
      v5 = &kPGGraphNodeMeaningBreakfast;
    }

    else
    {
      v5 = kPGGraphNodeMeaningLunch;
    }

LABEL_35:
    v4 = *v5;
  }

  else
  {
    v5 = kPGGraphNodeMeaningActivity;
    switch(meaning)
    {
      case 1uLL:
        goto LABEL_35;
      case 2uLL:
        v5 = kPGGraphNodeMeaningEntertainment;
        goto LABEL_35;
      case 3uLL:
        v5 = kPGGraphNodeMeaningSportEvent;
        goto LABEL_35;
      case 4uLL:
        v5 = kPGGraphNodeMeaningAmusementPark;
        goto LABEL_35;
      case 5uLL:
        v5 = kPGGraphNodeMeaningPerformance;
        goto LABEL_35;
      case 6uLL:
        v5 = kPGGraphNodeMeaningConcert;
        goto LABEL_35;
      case 7uLL:
        v5 = kPGGraphNodeMeaningFestival;
        goto LABEL_35;
      case 8uLL:
        v5 = kPGGraphNodeMeaningNightOut;
        goto LABEL_35;
      case 9uLL:
        v5 = kPGGraphNodeMeaningMuseum;
        goto LABEL_35;
      case 0xAuLL:
        v5 = kPGGraphNodeMeaningCelebration;
        goto LABEL_35;
      case 0xBuLL:
        v5 = kPGGraphNodeMeaningAnniversary;
        goto LABEL_35;
      case 0xCuLL:
        v5 = kPGGraphNodeMeaningBirthday;
        goto LABEL_35;
      case 0xDuLL:
        v5 = kPGGraphNodeMeaningHolidayEvent;
        goto LABEL_35;
      case 0xEuLL:
        v5 = kPGGraphNodeMeaningWedding;
        goto LABEL_35;
      case 0xFuLL:
        v5 = kPGGraphNodeMeaningRestaurant;
        goto LABEL_35;
      case 0x10uLL:
        v5 = kPGGraphNodeMeaningGathering;
        goto LABEL_35;
      default:
        break;
    }
  }

LABEL_36:

  return v4;
}

+ (unint64_t)_extendedMeaningForActivityMeaningLabel:(id)label
{
  labelCopy = label;
  if ([labelCopy isEqualToString:@"Hiking"])
  {
    v4 = 2000;
  }

  else if ([labelCopy isEqualToString:@"Beaching"])
  {
    v4 = 2001;
  }

  else if ([labelCopy isEqualToString:@"Diving"])
  {
    v4 = 2002;
  }

  else if ([labelCopy isEqualToString:@"WinterSport"])
  {
    v4 = 2003;
  }

  else if ([labelCopy isEqualToString:@"Climbing"])
  {
    v4 = 2004;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (unint64_t)_extendedMeaningForActivityEvent:(id)event
{
  eventCopy = event;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__PGMeaningAggregationMemoryGenerator__extendedMeaningForActivityEvent___block_invoke;
  v7[3] = &unk_27887FE20;
  v7[4] = &v8;
  v7[5] = self;
  [eventCopy enumerateMeaningNodesUsingBlock:v7];
  v5 = v9[3];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __72__PGMeaningAggregationMemoryGenerator__extendedMeaningForActivityEvent___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v7 = [a2 label];
  v5 = [*(a1 + 40) _extendedMeaningForActivityMeaningLabel:?];
  if (v5)
  {
    v6 = *(*(a1 + 32) + 8);
    if (*(v6 + 24))
    {
      *(v6 + 24) = 0;
      *a3 = 1;
    }

    else
    {
      *(v6 + 24) = v5;
    }
  }
}

+ (unint64_t)_extendedMeaningForRestaurantMeaningLabel:(id)label
{
  labelCopy = label;
  if ([labelCopy isEqualToString:@"Breakfast"])
  {
    v4 = 1000;
  }

  else if ([labelCopy isEqualToString:@"Lunch"])
  {
    v4 = 1001;
  }

  else if ([labelCopy isEqualToString:@"Dinner"])
  {
    v4 = 1002;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (unint64_t)_extendedMeaningForRestaurantEvent:(id)event
{
  eventCopy = event;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __74__PGMeaningAggregationMemoryGenerator__extendedMeaningForRestaurantEvent___block_invoke;
  v7[3] = &unk_27887FE20;
  v7[4] = &v8;
  v7[5] = self;
  [eventCopy enumerateMeaningNodesUsingBlock:v7];
  v5 = v9[3];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __74__PGMeaningAggregationMemoryGenerator__extendedMeaningForRestaurantEvent___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v7 = [a2 label];
  v5 = [*(a1 + 40) _extendedMeaningForRestaurantMeaningLabel:?];
  if (v5)
  {
    v6 = *(*(a1 + 32) + 8);
    if (*(v6 + 24))
    {
      *(v6 + 24) = 0;
      *a3 = 1;
    }

    else
    {
      *(v6 + 24) = v5;
    }
  }
}

+ (unint64_t)_extendedMeaningForMeaning:(unint64_t)meaning meaningfulEvent:(id)event
{
  eventCopy = event;
  if (meaning == 1)
  {
    v7 = [self _extendedMeaningForActivityEvent:eventCopy];
  }

  else
  {
    if (meaning != 15)
    {
      v8 = 0;
      goto LABEL_7;
    }

    v7 = [self _extendedMeaningForRestaurantEvent:eventCopy];
  }

  v8 = v7;
LABEL_7:

  return v8;
}

+ (id)featureRelationWithMeaningLabel:(id)label
{
  v24 = *MEMORY[0x277D85DE8];
  labelCopy = label;
  allMeaningAggregationMemoryGeneratorClasses = [self allMeaningAggregationMemoryGeneratorClasses];
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = allMeaningAggregationMemoryGeneratorClasses;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        supportedMeaningLabels = [v12 supportedMeaningLabels];
        v14 = [supportedMeaningLabels containsObject:labelCopy];

        if (v14)
        {
          requiredFeatureRelation = [v12 requiredFeatureRelation];
          if (requiredFeatureRelation)
          {
            [v6 addObject:requiredFeatureRelation];
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  if ([v6 count])
  {
    v16 = [MEMORY[0x277D22C90] union:v6];
  }

  else
  {
    v16 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (id)allMeaningAggregationMemoryGeneratorClasses
{
  v5[6] = *MEMORY[0x277D85DE8];
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v5[2] = objc_opt_class();
  v5[3] = objc_opt_class();
  v5[4] = objc_opt_class();
  v5[5] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:6];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)supportedMeaningLabels
{
  v5[5] = *MEMORY[0x277D85DE8];
  v5[0] = @"Hiking";
  v5[1] = @"Climbing";
  v5[2] = @"Beaching";
  v5[3] = @"Diving";
  v5[4] = @"WinterSport";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:5];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end