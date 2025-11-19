@interface PGMeaningAggregationMemoryGenerator
+ (id)allMeaningAggregationMemoryGeneratorClasses;
+ (id)featureRelationWithMeaningLabel:(id)a3;
+ (id)mostSpecificLabelForMeaning:(unint64_t)a3;
+ (id)supportedMeaningLabels;
+ (unint64_t)_extendedMeaningForActivityEvent:(id)a3;
+ (unint64_t)_extendedMeaningForActivityMeaningLabel:(id)a3;
+ (unint64_t)_extendedMeaningForMeaning:(unint64_t)a3 meaningfulEvent:(id)a4;
+ (unint64_t)_extendedMeaningForRestaurantEvent:(id)a3;
+ (unint64_t)_extendedMeaningForRestaurantMeaningLabel:(id)a3;
- (PGMeaningAggregationMemoryGenerator)initWithMemoryGenerationContext:(id)a3;
- (id)curationOptionsWithRequiredAssetUUIDs:(id)a3 eligibleAssetUUIDs:(id)a4 triggeredMemory:(id)a5;
- (id)keyAssetCurationOptionsWithTriggeredMemory:(id)a3 inGraph:(id)a4;
- (id)titleGeneratorForTriggeredMemory:(id)a3 withKeyAsset:(id)a4 curatedAssets:(id)a5 extendedCuratedAssets:(id)a6 titleGenerationContext:(id)a7 inGraph:(id)a8;
- (unint64_t)memoryCategorySubcategoryForOverTimeType:(unint64_t)a3;
- (void)enumerateMomentNodesAndFeatureNodesInGraph:(id)a3 usingBlock:(id)a4;
@end

@implementation PGMeaningAggregationMemoryGenerator

- (id)titleGeneratorForTriggeredMemory:(id)a3 withKeyAsset:(id)a4 curatedAssets:(id)a5 extendedCuratedAssets:(id)a6 titleGenerationContext:(id)a7 inGraph:(id)a8
{
  v10 = a3;
  v11 = a7;
  v12 = [v10 memoryFeatureNodes];
  v13 = [(PGGraphNodeCollection *)PGGraphMeaningNodeCollection subsetInCollection:v12];
  v14 = [v13 meaningLabels];
  v15 = [v14 anyObject];

  v16 = [PGGraph meaningForMeaningLabel:v15];
  v17 = v16;
  if (v16 > 12)
  {
    if (v16 == 13)
    {
      v26 = [PGCelebrationOverTimeMemoryTitleGenerator alloc];
      v20 = [v10 memoryMomentNodes];
      v22 = [v20 set];
      v23 = [(PGCelebrationOverTimeMemoryTitleGenerator *)v26 initWithMomentNodes:v22 titleGenerationContext:v11];
LABEL_19:

      goto LABEL_20;
    }

    if (v16 == 15)
    {
      v19 = [PGMeaningAggregationMemoryGenerator _extendedMeaningForRestaurantMeaningLabel:v15];
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
    v20 = [v12 allFeatures];
    v21 = [v10 memoryMomentNodes];
    v22 = [v21 set];

    v23 = [[PGMeaningfulEventAggregationMemoryTitleGenerator alloc] initWithMeaning:v17 features:v20 meaningfulEvents:v22 titleGenerationContext:v11];
    [(PGMeaningfulEventAggregationMemoryTitleGenerator *)v23 setUnreliableMeaningRatioThresholdForSpecificTitle:0.8];
    v24 = [(PGGraphNodeCollection *)PGGraphYearNodeCollection subsetInCollection:v12];
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
      v18 = [PGMeaningAggregationMemoryGenerator _extendedMeaningForActivityMeaningLabel:v15];
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

  v25 = [(PGMemoryGenerator *)self loggingConnection];
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    *v28 = 0;
    _os_log_error_impl(&dword_22F0FC000, v25, OS_LOG_TYPE_ERROR, "[PGMeaningAggregationMemoryGenerator] memory should have a meaning", v28, 2u);
  }

  v23 = 0;
LABEL_20:

  return v23;
}

- (id)keyAssetCurationOptionsWithTriggeredMemory:(id)a3 inGraph:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 memoryFeatureNodes];
  v9 = [(PGGraphNodeCollection *)PGGraphMeaningNodeCollection subsetInCollection:v8];
  v10 = [v9 meaningLabels];
  v11 = [v10 anyObject];

  v12 = [(PGMemoryGenerator *)self memoryCurationSession];
  v13 = [v12 curationManager];
  v14 = [v13 curationCriteriaFactory];
  v15 = [v14 curationCriteriaWithMeaningLabel:v11 featureNodes:v8 inGraph:v6 client:1];

  v18.receiver = self;
  v18.super_class = PGMeaningAggregationMemoryGenerator;
  v16 = [(PGMemoryGenerator *)&v18 keyAssetCurationOptionsWithTriggeredMemory:v7 inGraph:v6];

  [v16 setCurationCriteria:v15];

  return v16;
}

- (id)curationOptionsWithRequiredAssetUUIDs:(id)a3 eligibleAssetUUIDs:(id)a4 triggeredMemory:(id)a5
{
  v7.receiver = self;
  v7.super_class = PGMeaningAggregationMemoryGenerator;
  v5 = [(PGMemoryGenerator *)&v7 curationOptionsWithRequiredAssetUUIDs:a3 eligibleAssetUUIDs:a4 triggeredMemory:a5];
  [v5 setMinimumNumberOfItems:15];
  [v5 setFailIfMinimumDurationNotReached:1];

  return v5;
}

- (void)enumerateMomentNodesAndFeatureNodesInGraph:(id)a3 usingBlock:(id)a4
{
  v27[2] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [objc_opt_class() supportedMeaningLabels];
  v9 = [PGGraphMeaningNodeCollection meaningNodesWithMeaningLabels:v8 inGraph:v7];

  v27[0] = @"Lunch";
  v27[1] = @"Dinner";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
  v11 = [PGGraphMeaningNodeCollection meaningNodesWithMeaningLabels:v10 inGraph:v7];
  v12 = [PGGraphBusinessNodeCollection restaurantBusinessNodesInGraph:v7];

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
  v25 = self;
  v26 = v6;
  v18 = v6;
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

- (unint64_t)memoryCategorySubcategoryForOverTimeType:(unint64_t)a3
{
  v13 = *MEMORY[0x277D85DE8];
  if (a3 == 1)
  {
    result = 11002;
  }

  else
  {
    v3 = a3;
    if (a3 == 3)
    {
      result = 11003;
    }

    else
    {
      v5 = [(PGMemoryGenerator *)self loggingConnection];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v7 = objc_opt_class();
        v8 = NSStringFromClass(v7);
        v9 = 138412546;
        v10 = v8;
        v11 = 1024;
        v12 = v3;
        _os_log_error_impl(&dword_22F0FC000, v5, OS_LOG_TYPE_ERROR, "[%@] Returning PHMemoryCategorySubcategoryNone for PGOverTimeMemoryType %d, this should never happen", &v9, 0x12u);
      }

      result = 0;
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (PGMeaningAggregationMemoryGenerator)initWithMemoryGenerationContext:(id)a3
{
  v12.receiver = self;
  v12.super_class = PGMeaningAggregationMemoryGenerator;
  v3 = [(PGMemoryGenerator *)&v12 initWithMemoryGenerationContext:a3];
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

+ (id)mostSpecificLabelForMeaning:(unint64_t)a3
{
  v4 = @"Unknown";
  if (a3 > 999)
  {
    if (a3 > 2000)
    {
      if (a3 > 2002)
      {
        if (a3 == 2003)
        {
          v5 = kPGGraphNodeMeaningWinterSport;
        }

        else
        {
          if (a3 != 2004)
          {
            goto LABEL_36;
          }

          v5 = kPGGraphNodeMeaningClimbing;
        }
      }

      else if (a3 == 2001)
      {
        v5 = kPGGraphNodeMeaningBeaching;
      }

      else
      {
        v5 = kPGGraphNodeMeaningDiving;
      }
    }

    else if (a3 > 1001)
    {
      if (a3 == 1002)
      {
        v5 = kPGGraphNodeMeaningDinner;
      }

      else
      {
        if (a3 != 2000)
        {
          goto LABEL_36;
        }

        v5 = kPGGraphNodeMeaningHiking;
      }
    }

    else if (a3 == 1000)
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
    switch(a3)
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

+ (unint64_t)_extendedMeaningForActivityMeaningLabel:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Hiking"])
  {
    v4 = 2000;
  }

  else if ([v3 isEqualToString:@"Beaching"])
  {
    v4 = 2001;
  }

  else if ([v3 isEqualToString:@"Diving"])
  {
    v4 = 2002;
  }

  else if ([v3 isEqualToString:@"WinterSport"])
  {
    v4 = 2003;
  }

  else if ([v3 isEqualToString:@"Climbing"])
  {
    v4 = 2004;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (unint64_t)_extendedMeaningForActivityEvent:(id)a3
{
  v4 = a3;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__PGMeaningAggregationMemoryGenerator__extendedMeaningForActivityEvent___block_invoke;
  v7[3] = &unk_27887FE20;
  v7[4] = &v8;
  v7[5] = a1;
  [v4 enumerateMeaningNodesUsingBlock:v7];
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

+ (unint64_t)_extendedMeaningForRestaurantMeaningLabel:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Breakfast"])
  {
    v4 = 1000;
  }

  else if ([v3 isEqualToString:@"Lunch"])
  {
    v4 = 1001;
  }

  else if ([v3 isEqualToString:@"Dinner"])
  {
    v4 = 1002;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (unint64_t)_extendedMeaningForRestaurantEvent:(id)a3
{
  v4 = a3;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __74__PGMeaningAggregationMemoryGenerator__extendedMeaningForRestaurantEvent___block_invoke;
  v7[3] = &unk_27887FE20;
  v7[4] = &v8;
  v7[5] = a1;
  [v4 enumerateMeaningNodesUsingBlock:v7];
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

+ (unint64_t)_extendedMeaningForMeaning:(unint64_t)a3 meaningfulEvent:(id)a4
{
  v6 = a4;
  if (a3 == 1)
  {
    v7 = [a1 _extendedMeaningForActivityEvent:v6];
  }

  else
  {
    if (a3 != 15)
    {
      v8 = 0;
      goto LABEL_7;
    }

    v7 = [a1 _extendedMeaningForRestaurantEvent:v6];
  }

  v8 = v7;
LABEL_7:

  return v8;
}

+ (id)featureRelationWithMeaningLabel:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [a1 allMeaningAggregationMemoryGeneratorClasses];
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = v5;
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
        v13 = [v12 supportedMeaningLabels];
        v14 = [v13 containsObject:v4];

        if (v14)
        {
          v15 = [v12 requiredFeatureRelation];
          if (v15)
          {
            [v6 addObject:v15];
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