@interface PGMeaningfulEventRequiredCriteriaFactory
+ (id)_amusementParkCriteriaArrayWithGraph:(id)a3 sceneTaxonomy:(id)a4;
+ (id)_anniversaryCriteriaWithGraph:(id)a3;
+ (id)_beachingCriteriaWithGraph:(id)a3 sceneTaxonomy:(id)a4;
+ (id)_beachingSceneNodesWithGraph:(id)a3;
+ (id)_celebrationCriteriaWithGraph:(id)a3;
+ (id)_climbingCriteriaWithGraph:(id)a3 sceneTaxonomy:(id)a4;
+ (id)_concertCriteriaArrayForInferenceType:(unint64_t)a3 graph:(id)a4;
+ (id)_concertCriteriaArrayForMeaningInferenceWithGraph:(id)a3;
+ (id)_concertCriteriaArrayForPublicEventInferenceWithGraph:(id)a3;
+ (id)_concertSceneNodesInGraph:(id)a3;
+ (id)_danceCriteriaWithGraph:(id)a3;
+ (id)_divingCriteriaWithGraph:(id)a3 sceneTaxonomy:(id)a4;
+ (id)_divingSceneNodesWithGraph:(id)a3;
+ (id)_entertainmentCriteriaWithGraph:(id)a3;
+ (id)_festivalCriteriaArrayWithGraph:(id)a3;
+ (id)_hikingCriteriaWithGraph:(id)a3 sceneTaxonomy:(id)a4;
+ (id)_hikingSceneNodesWithGraph:(id)a3;
+ (id)_museumCriteriaArrayForInferenceType:(unint64_t)a3 graph:(id)a4;
+ (id)_museumCriteriaArrayForMeaningInferenceWithGraph:(id)a3;
+ (id)_museumCriteriaArrayForPublicEventInferenceWithGraph:(id)a3;
+ (id)_museumSceneNodesInGraph:(id)a3;
+ (id)_museumSceneTraitInGraph:(id)a3 minimumNumberOfHighConfidenceAssets:(unint64_t)a4;
+ (id)_negativeHikingSceneNodesWithGraph:(id)a3;
+ (id)_negativeMuseumSceneNodesInGraph:(id)a3;
+ (id)_negativeSceneNodesForBeachingWithGraph:(id)a3;
+ (id)_nightOutCriteriaArrayWithGraph:(id)a3 sceneTaxonomy:(id)a4;
+ (id)_performanceCriteriaWithGraph:(id)a3;
+ (id)_publicEventCriteriaForCategoryWithName:(id)a3 inGraph:(id)a4;
+ (id)_requiredCriteriaForIdentifiers:(id)a3 inferenceType:(unint64_t)a4 graph:(id)a5 sceneTaxonomy:(id)a6;
+ (id)_restaurantCriteriaByCriteriaForIdentifiers:(id)a3 withGraph:(id)a4 sceneTaxonomy:(id)a5;
+ (id)_socialGroupGatheringCriteriaWithGraph:(id)a3;
+ (id)_specialAmusementParkCriteriaWithGraph:(id)a3;
+ (id)_sportEventCriteriaArrayForInferenceType:(unint64_t)a3 graph:(id)a4;
+ (id)_sportEventCriteriaArrayForMeaningInferenceWithGraph:(id)a3;
+ (id)_sportEventCriteriaArrayForPublicEventInferenceWithGraph:(id)a3;
+ (id)_sportEventScenesTraitWithGraph:(id)a3;
+ (id)_theaterCriteriaWithGraph:(id)a3;
+ (id)_weddingCriteriaWithGraph:(id)a3 sceneTaxonomy:(id)a4;
+ (id)_weddingSceneNodesWithGraph:(id)a3 includeWedding:(BOOL)a4 sceneTaxonomy:(id)a5;
+ (id)_winterSportCriteriaWithGraph:(id)a3 sceneTaxonomy:(id)a4;
+ (id)_winterSportSceneNodesWithGraph:(id)a3 sceneTaxonomy:(id)a4;
+ (id)availableMeaningLabels;
+ (id)availablePersonActivityMeaningLabels;
+ (id)locationsTraitNotMatchingFrequentLocationsForGraph:(id)a3;
+ (id)locationsTraitNotMatchingPeopleHomeWorkLocationsForGraph:(id)a3;
+ (id)locationsTraitNotMatchingPeopleWorkLocationsForGraph:(id)a3;
+ (id)requiredCriteriaForIdentifiers:(id)a3 inferenceType:(unint64_t)a4 graph:(id)a5 sceneTaxonomy:(id)a6;
+ (void)_birthdayCriteriaWithGraph:(id)a3 strongBirthdayCriteria:(id *)a4 weakBirthdayCriteria:(id *)a5 sceneTaxonomy:(id)a6;
@end

@implementation PGMeaningfulEventRequiredCriteriaFactory

+ (id)_publicEventCriteriaForCategoryWithName:(id)a3 inGraph:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v6 anyNodeForLabel:v5 domain:901];
  if (!v7)
  {
    v12 = 0;
    goto LABEL_19;
  }

  v8 = [MEMORY[0x277D27780] artsAndMuseums];
  v9 = [v5 isEqualToString:v8];

  v10 = 0.4;
  if (v9)
  {
    v11 = kPGGraphNodeMeaningMuseum;
  }

  else
  {
    v13 = [MEMORY[0x277D27780] dance];
    v14 = [v5 isEqualToString:v13];

    if (v14)
    {
      v11 = kPGGraphNodeMeaningDance;
    }

    else
    {
      v15 = [MEMORY[0x277D27780] festivalsAndFairs];
      v16 = [v5 isEqualToString:v15];

      if (v16)
      {
        v11 = kPGGraphNodeMeaningFestival;
      }

      else
      {
        v17 = [MEMORY[0x277D27780] musicConcerts];
        v18 = [v5 isEqualToString:v17];

        if (v18)
        {
          v11 = kPGGraphNodeMeaningConcert;
        }

        else
        {
          v19 = [MEMORY[0x277D27780] nightLife];
          v20 = [v5 isEqualToString:v19];

          if (v20)
          {
            v11 = kPGGraphNodeMeaningNightOut;
            v10 = 0.6;
          }

          else
          {
            v21 = [MEMORY[0x277D27780] sports];
            v22 = [v5 isEqualToString:v21];

            if (v22)
            {
              v11 = kPGGraphNodeMeaningSportEvent;
            }

            else
            {
              v23 = [MEMORY[0x277D27780] theater];
              v24 = [v5 isEqualToString:v23];

              if ((v24 & 1) == 0)
              {
                v31 = +[PGLogging sharedLogging];
                v25 = [v31 loggingConnection];

                if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
                {
                  v32 = 138412290;
                  v33 = v5;
                  _os_log_error_impl(&dword_22F0FC000, v25, OS_LOG_TYPE_ERROR, "Not handling category with name %@", &v32, 0xCu);
                }

                v12 = 0;
                goto LABEL_18;
              }

              v11 = kPGGraphNodeMeaningTheater;
            }
          }
        }
      }
    }
  }

  v25 = *v11;
  v12 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:v25 minimumScore:v6 graph:v10];
  v26 = [PGMeaningfulEventCollectionTrait alloc];
  v27 = [v7 collection];
  v28 = [(PGMeaningfulEventCollectionTrait *)v26 initWithNodes:v27];

  [(PGMeaningfulEventTrait *)v28 setMinimumScore:1.0];
  [(PGMeaningfulEventCriteria *)v12 setPublicEventCategoriesTrait:v28];

LABEL_18:
LABEL_19:

  v29 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)locationsTraitNotMatchingPeopleWorkLocationsForGraph:(id)a3
{
  v3 = [PGGraphHomeWorkNodeCollection workNodesInGraph:a3];
  v4 = [v3 addressNodes];

  v5 = [[PGMeaningfulEventLocationCollectionTrait alloc] initWithNodes:0 negativeNodes:v4];
  [(PGMeaningfulEventTrait *)v5 setMinimumScore:1.0];
  [(PGMeaningfulEventLocationCollectionTrait *)v5 setUseStrictNegativeNodesMatching:1];

  return v5;
}

+ (id)locationsTraitNotMatchingPeopleHomeWorkLocationsForGraph:(id)a3
{
  v3 = [(PGGraphNodeCollection *)PGGraphHomeWorkNodeCollection nodesInGraph:a3];
  v4 = [v3 addressNodes];

  v5 = [[PGMeaningfulEventLocationCollectionTrait alloc] initWithNodes:0 negativeNodes:v4];
  [(PGMeaningfulEventTrait *)v5 setMinimumScore:1.0];
  [(PGMeaningfulEventLocationCollectionTrait *)v5 setUseStrictNegativeNodesMatching:1];

  return v5;
}

+ (id)locationsTraitNotMatchingFrequentLocationsForGraph:(id)a3
{
  v3 = a3;
  v4 = [v3 largeFrequentLocationNodes];
  v5 = [(MAElementCollection *)[PGGraphFrequentLocationNodeCollection alloc] initWithSet:v4 graph:v3];

  v6 = [PGMeaningfulEventLocationCollectionTrait alloc];
  v7 = [(PGGraphFrequentLocationNodeCollection *)v5 addressNodes];
  v8 = [(PGMeaningfulEventLocationCollectionTrait *)v6 initWithNodes:0 negativeNodes:v7];

  [(PGMeaningfulEventTrait *)v8 setMinimumScore:1.0];
  [(PGMeaningfulEventLocationCollectionTrait *)v8 setUseStrictNegativeNodesMatching:1];

  return v8;
}

+ (id)_negativeMuseumSceneNodesInGraph:(id)a3
{
  v3 = MEMORY[0x277CBEB98];
  v4 = a3;
  v5 = [v3 setWithObjects:{@"food", 0}];
  v6 = [v4 sceneNodesForSceneNames:v5];

  return v6;
}

+ (id)_museumSceneNodesInGraph:(id)a3
{
  v3 = MEMORY[0x277CBEB98];
  v4 = a3;
  v5 = [v3 setWithObjects:{@"illustrations", @"painting", @"museum", 0}];
  v6 = [v4 sceneNodesForSceneNames:v5];

  return v6;
}

+ (id)_museumSceneTraitInGraph:(id)a3 minimumNumberOfHighConfidenceAssets:(unint64_t)a4
{
  v6 = a3;
  v7 = [a1 _museumSceneNodesInGraph:v6];
  v8 = [v7 count];
  if (v8)
  {
    v9 = v8;
    v10 = [a1 _negativeMuseumSceneNodesInGraph:v6];
    v11 = [[PGMeaningfulEventSceneCollectionTrait alloc] initWithNodes:v7 negativeNodes:v10];
    [(PGMeaningfulEventTrait *)v11 setMinimumScore:1.0 / v9];
    [(PGMeaningfulEventSceneCollectionTrait *)v11 setMinimumNumberOfHighConfidenceAssets:a4];
    v12 = vcvtas_u32_f32(vcvts_n_f32_u64(a4, 1uLL));
    if (v12 <= 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = v12;
    }

    [(PGMeaningfulEventSceneCollectionTrait *)v11 setMinimumNumberOfNegativeHighConfidenceAssets:v13];
    [(PGMeaningfulEventSceneCollectionTrait *)v11 setAccumulateHighConfidenceAssetCounts:1];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)_concertSceneNodesInGraph:(id)a3
{
  v3 = MEMORY[0x277CBEB98];
  v4 = a3;
  v5 = [v3 setWithObjects:{@"concert", @"singer", @"deejay", @"orchestra", @"musical_instrument", @"speakers_music", @"microphone", 0}];
  v6 = [v4 sceneNodesForSceneNames:v5];

  return v6;
}

+ (id)_weddingSceneNodesWithGraph:(id)a3 includeWedding:(BOOL)a4 sceneTaxonomy:(id)a5
{
  v5 = a4;
  v7 = a5;
  v8 = MEMORY[0x277CBEB58];
  v9 = a3;
  v10 = [v8 set];
  v11 = v10;
  if (v5)
  {
    [v10 addObject:@"wedding"];
  }

  v12 = [v7 nodeForName:@"wedding"];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __101__PGMeaningfulEventRequiredCriteriaFactory__weddingSceneNodesWithGraph_includeWedding_sceneTaxonomy___block_invoke;
  v16[3] = &unk_2788884F0;
  v17 = v11;
  v13 = v11;
  [v12 visitChildrenUsingNameBlock:v16];
  v14 = [v9 sceneNodesForSceneNames:v13];

  return v14;
}

+ (id)_negativeHikingSceneNodesWithGraph:(id)a3
{
  v3 = MEMORY[0x277CBEB98];
  v4 = a3;
  v5 = [v3 setWithObjects:{@"hiking", @"canyon", @"volcano", @"cliff", @"waterfall", 0}];
  v6 = [v4 sceneNodesForSceneNames:v5];

  return v6;
}

+ (id)_hikingSceneNodesWithGraph:(id)a3
{
  v3 = MEMORY[0x277CBEB98];
  v4 = a3;
  v5 = [v3 setWithObjects:{@"hiking", @"mountain", @"canyon", @"volcano", @"glacier", @"cliff", @"waterfall", @"forest", @"desert", @"hill", @"trail", 0}];
  v6 = [v4 sceneNodesForSceneNames:v5];

  return v6;
}

+ (id)_divingSceneNodesWithGraph:(id)a3
{
  v3 = MEMORY[0x277CBEB98];
  v4 = a3;
  v5 = [v3 setWithObjects:{@"diving", @"underwater", @"submarine_water", @"scuba", @"wetsuit", @"coral_reef", 0}];
  v6 = [v4 sceneNodesForSceneNames:v5];

  return v6;
}

+ (id)_negativeSceneNodesForBeachingWithGraph:(id)a3
{
  v3 = MEMORY[0x277CBEB98];
  v4 = a3;
  v5 = [v3 setWithObjects:{@"snow", @"blizzard", @"snowball", @"snowman", 0}];
  v6 = [v4 sceneNodesForSceneNames:v5];

  return v6;
}

+ (id)_beachingSceneNodesWithGraph:(id)a3
{
  v3 = MEMORY[0x277CBEB98];
  v4 = a3;
  v5 = [v3 setWithObjects:{@"beach", @"surfing", @"surfboard", @"mollusk", @"shore", @"folding_chair", @"jetski", @"windsurfing", @"barnacle", @"sand", @"skating", @"lighthouse", @"swimsuit", @"sandcastle", @"sunbathing", @"watersport", 0}];
  v6 = [v4 sceneNodesForSceneNames:v5];

  return v6;
}

+ (id)_winterSportSceneNodesWithGraph:(id)a3 sceneTaxonomy:(id)a4
{
  v5 = a3;
  v6 = [a4 nodeForName:@"winter_sport"];
  if (v6)
  {
    v7 = [MEMORY[0x277CBEB58] setWithObjects:{@"winter_sport", @"ski_boot", @"snowshoe", @"ski_equipment", @"snowboard", @"snowmobile", 0}];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __90__PGMeaningfulEventRequiredCriteriaFactory__winterSportSceneNodesWithGraph_sceneTaxonomy___block_invoke;
    v11[3] = &unk_2788884F0;
    v12 = v7;
    v8 = v7;
    [v6 traverseChildrenUsingNameBlock:v11];
    v9 = [v5 sceneNodesForSceneNames:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)_sportEventScenesTraitWithGraph:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEB98] setWithObjects:{@"sumo", @"badminton", @"softball", @"soccer", @"cricket_sport", @"rugby", @"scoreboard", @"tennis", @"cheerleading", @"polo", @"hockey", @"football", @"grand_prix", @"jockey_horse", @"wrestling", @"baseball", @"motorsport", @"basketball", @"rink", @"arena", @"motocross", @"stadium", @"ballgames", 0}];
  v5 = [v3 sceneNodesForSceneNames:v4];
  if ([v5 count])
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{@"amusement_park", @"graduation", 0}];
    v7 = [v3 sceneNodesForSceneNames:v6];

    v8 = [[PGMeaningfulEventSceneCollectionTrait alloc] initWithNodes:v5 negativeNodes:v7];
    -[PGMeaningfulEventTrait setMinimumScore:](v8, "setMinimumScore:", 1.0 / [v5 count]);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)_socialGroupGatheringCriteriaWithGraph:(id)a3
{
  v61 = *MEMORY[0x277D85DE8];
  v37 = a3;
  v3 = [v37 meNode];
  v33 = v3;
  if (v3)
  {
    v4 = [v3 localIdentifier];
    if ([v4 length])
    {
      v5 = 2;
    }

    else
    {
      v5 = 3;
    }
  }

  else
  {
    v5 = 3;
  }

  v6 = [MEMORY[0x277CBEB18] array];
  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = __83__PGMeaningfulEventRequiredCriteriaFactory__socialGroupGatheringCriteriaWithGraph___block_invoke;
  v55[3] = &unk_2788815F0;
  v57 = v5;
  v35 = v6;
  v56 = v35;
  [v37 enumerateNodesWithLabel:@"SocialGroup" domain:302 usingBlock:v55];
  v7 = [v35 count];
  if (v7 >= 2)
  {
    v51 = 0;
    v52 = &v51;
    v53 = 0x2020000000;
    v54 = 0;
    if (v7 > 3)
    {
      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = __83__PGMeaningfulEventRequiredCriteriaFactory__socialGroupGatheringCriteriaWithGraph___block_invoke_3;
      v46[3] = &unk_278881638;
      v46[4] = &v51;
      v15 = v35;
      [MEMORY[0x277D27688] calculateStandardDeviationForItems:v35 valueBlock:&__block_literal_global_564 result:v46];
    }

    else
    {
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v9 = v35;
      v10 = [v9 countByEnumeratingWithState:&v47 objects:v60 count:16];
      if (v10)
      {
        v11 = 0;
        v12 = *v48;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v48 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v11 += [*(*(&v47 + 1) + 8 * i) numberOfMomentNodes];
          }

          v10 = [v9 countByEnumeratingWithState:&v47 objects:v60 count:16];
        }

        while (v10);
        v14 = v11 * 0.65;
      }

      else
      {
        v14 = 0.0;
      }

      v52[3] = ceil(v14);
      v15 = v35;
    }

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v16 = [v15 copy];
    v17 = [v16 countByEnumeratingWithState:&v42 objects:v59 count:16];
    if (v17)
    {
      v18 = *v43;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v43 != v18)
          {
            objc_enumerationMutation(v16);
          }

          v20 = *(*(&v42 + 1) + 8 * j);
          v21 = [v20 numberOfMomentNodes];
          if (v52[3] <= v21)
          {
            [v35 removeObject:v20];
          }
        }

        v17 = [v16 countByEnumeratingWithState:&v42 objects:v59 count:16];
      }

      while (v17);
    }

    _Block_object_dispose(&v51, 8);
    v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v35, "count")}];
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = v35;
    v22 = [obj countByEnumeratingWithState:&v38 objects:v58 count:16];
    if (v22)
    {
      v23 = *v39;
      do
      {
        for (k = 0; k != v22; ++k)
        {
          if (*v39 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v25 = *(*(&v38 + 1) + 8 * k);
          v26 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:@"Gathering" minimumScore:v37 graph:0.01];
          v27 = [PGMeaningfulEventCollectionTrait alloc];
          v28 = [v25 collection];
          v29 = [(PGMeaningfulEventCollectionTrait *)v27 initWithNodes:v28];
          [(PGMeaningfulEventCriteria *)v26 setSocialGroupsTrait:v29];

          v30 = [(PGMeaningfulEventCriteria *)v26 socialGroupsTrait];
          [v30 setMinimumScore:1.0];

          [(PGMeaningfulEventRequiredCriteria *)v26 setMustBeInteresting:1];
          [v8 addObject:v26];
        }

        v22 = [obj countByEnumeratingWithState:&v38 objects:v58 count:16];
      }

      while (v22);
    }
  }

  else
  {
    v8 = MEMORY[0x277CBEBF8];
  }

  v31 = *MEMORY[0x277D85DE8];

  return v8;
}

void __83__PGMeaningfulEventRequiredCriteriaFactory__socialGroupGatheringCriteriaWithGraph___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 numberOfMemberNodes] >= *(a1 + 40))
  {
    [*(a1 + 32) addObject:v3];
  }
}

double __83__PGMeaningfulEventRequiredCriteriaFactory__socialGroupGatheringCriteriaWithGraph___block_invoke_3(uint64_t a1, double a2, double a3)
{
  result = a2 + a3;
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

+ (id)_specialAmusementParkCriteriaWithGraph:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12[0] = @"AmusementPark";
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v6 = [PGGraphPOINodeCollection poiNodesForLabels:v5 inGraph:v4];

  if ([v6 count])
  {
    v7 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:@"AmusementPark" minimumScore:v4 graph:0.4];
    v8 = [[PGMeaningfulEventCollectionTrait alloc] initWithNodes:v6];
    [(PGMeaningfulEventTrait *)v8 setMinimumScore:0.7];
    [(PGMeaningfulEventCollectionTrait *)v8 setAdditionalMatchingBlock:&__block_literal_global_557];
    [(PGMeaningfulEventCriteria *)v7 setPoisTrait:v8];
    v9 = [a1 locationsTraitNotMatchingPeopleHomeWorkLocationsForGraph:v4];
    [(PGMeaningfulEventCriteria *)v7 setLocationsTrait:v9];
  }

  else
  {
    v7 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v7;
}

BOOL __83__PGMeaningfulEventRequiredCriteriaFactory__specialAmusementParkCriteriaWithGraph___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 collection];
  v6 = +[PGGraphPOIEdge filterSpecial];
  v7 = [(MAEdgeCollection *)PGGraphPOIEdgeCollection edgesFromNodes:v5 toNodes:v4 matchingFilter:v6];

  v8 = [v7 count] != 0;
  return v8;
}

+ (id)_amusementParkCriteriaArrayWithGraph:(id)a3 sceneTaxonomy:(id)a4
{
  v28[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = MEMORY[0x277CBEB18];
  v8 = a4;
  v9 = [v7 array];
  v10 = [a1 _specialAmusementParkCriteriaWithGraph:v6];
  if (v10)
  {
    [v9 addObject:v10];
  }

  v11 = [MEMORY[0x277CBEB58] set];
  v12 = [v8 nodeForName:@"amusement_park"];

  if (v12)
  {
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __95__PGMeaningfulEventRequiredCriteriaFactory__amusementParkCriteriaArrayWithGraph_sceneTaxonomy___block_invoke;
    v26[3] = &unk_2788884F0;
    v27 = v11;
    [v12 traverseChildrenUsingNameBlock:v26];
  }

  v13 = [v6 sceneNodesForSceneNames:v11];
  v28[0] = @"AmusementPark";
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
  v15 = [PGGraphPOINodeCollection poiNodesForLabels:v14 inGraph:v6];

  if ([v13 count] && objc_msgSend(v15, "count"))
  {
    v16 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:@"AmusementPark" minimumScore:v6 graph:0.4];
    v17 = [[PGMeaningfulEventSceneCollectionTrait alloc] initWithNodes:v13];
    -[PGMeaningfulEventTrait setMinimumScore:](v17, "setMinimumScore:", 1.0 / [v13 count]);
    [(PGMeaningfulEventCriteria *)v16 setScenesTrait:v17];
    v25 = v12;
    v18 = [[PGMeaningfulEventCollectionTrait alloc] initWithNodes:v15];
    [(PGMeaningfulEventTrait *)v18 setMinimumScore:0.7];
    [(PGMeaningfulEventCriteria *)v16 setPoisTrait:v18];
    [a1 locationsTraitNotMatchingPeopleHomeWorkLocationsForGraph:v6];
    v19 = v11;
    v20 = v10;
    v22 = v21 = v9;
    [(PGMeaningfulEventCriteria *)v16 setLocationsTrait:v22];
    [v21 addObject:v16];

    v9 = v21;
    v10 = v20;
    v11 = v19;

    v12 = v25;
  }

  v23 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)_entertainmentCriteriaWithGraph:(id)a3
{
  v15[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [a1 entertainmentSceneTaxonomyNames];
  v6 = [v4 sceneNodesForSceneNames:v5];
  v15[0] = @"Entertainment";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v8 = [PGGraphPOINodeCollection poiNodesForLabels:v7 inGraph:v4];

  if ([v6 count] && objc_msgSend(v8, "count"))
  {
    v9 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:@"Entertainment" minimumScore:v4 graph:0.4];
    v10 = [[PGMeaningfulEventSceneCollectionTrait alloc] initWithNodes:v6];
    -[PGMeaningfulEventTrait setMinimumScore:](v10, "setMinimumScore:", 1.0 / [v6 count]);
    [(PGMeaningfulEventCriteria *)v9 setScenesTrait:v10];
    v11 = [[PGMeaningfulEventCollectionTrait alloc] initWithNodes:v8];
    [(PGMeaningfulEventTrait *)v11 setMinimumScore:0.7];
    [(PGMeaningfulEventCriteria *)v9 setPoisTrait:v11];
    v12 = [a1 locationsTraitNotMatchingPeopleHomeWorkLocationsForGraph:v4];
    [(PGMeaningfulEventCriteria *)v9 setLocationsTrait:v12];
  }

  else
  {
    v9 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)_beachingCriteriaWithGraph:(id)a3 sceneTaxonomy:(id)a4
{
  v22[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [a1 _beachingSceneNodesWithGraph:v6];
  v22[0] = @"Beach";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  v10 = [PGGraphROINodeCollection roiNodesForLabels:v9 inGraph:v6];

  if ([v8 count] && objc_msgSend(v10, "count"))
  {
    v11 = [a1 _winterSportSceneNodesWithGraph:v6 sceneTaxonomy:v7];
    v12 = [a1 _negativeHikingSceneNodesWithGraph:v6];
    v13 = [v11 collectionByFormingUnionWith:v12];

    v14 = [a1 _negativeSceneNodesForBeachingWithGraph:v6];
    v15 = [v13 collectionByFormingUnionWith:v14];

    v16 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:@"Beaching" minimumScore:v6 graph:0.4];
    v17 = [[PGMeaningfulEventSceneCollectionTrait alloc] initWithNodes:v8 negativeNodes:v15];
    -[PGMeaningfulEventTrait setMinimumScore:](v17, "setMinimumScore:", 1.0 / [v8 count]);
    [(PGMeaningfulEventSceneCollectionTrait *)v17 setMinimumNumberOfHighConfidenceAssets:2];
    [(PGMeaningfulEventSceneCollectionTrait *)v17 setMinimumNumberOfNegativeHighConfidenceAssets:4];
    [(PGMeaningfulEventCriteria *)v16 setScenesTrait:v17];
    v18 = [[PGMeaningfulEventCollectionTrait alloc] initWithNodes:v10];
    [(PGMeaningfulEventTrait *)v18 setMinimumScore:1.0];
    [(PGMeaningfulEventCriteria *)v16 setRoisTrait:v18];
    v19 = [a1 locationsTraitNotMatchingFrequentLocationsForGraph:v6];
    [(PGMeaningfulEventCriteria *)v16 setLocationsTrait:v19];
    [(PGMeaningfulEventRequiredCriteria *)v16 setMustBeInteresting:1];
  }

  else
  {
    v16 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (id)_climbingCriteriaWithGraph:(id)a3 sceneTaxonomy:(id)a4
{
  v22[4] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEB98] setWithObject:@"rock_climbing"];
  v9 = [v6 sceneNodesForSceneNames:v8];

  v22[0] = @"Mountain";
  v22[1] = @"Nature";
  v22[2] = @"Beach";
  v22[3] = @"Water";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:4];
  v11 = [PGGraphROINodeCollection roiNodesForLabels:v10 inGraph:v6];

  if ([v9 count] && objc_msgSend(v11, "count"))
  {
    v12 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:@"Climbing" minimumScore:v6 graph:0.4];
    v13 = [[PGMeaningfulEventCollectionTrait alloc] initWithNodes:v11];
    [(PGMeaningfulEventTrait *)v13 setMinimumScore:0.25];
    [(PGMeaningfulEventCriteria *)v12 setRoisTrait:v13];
    v21 = [a1 locationsTraitNotMatchingFrequentLocationsForGraph:v6];
    [(PGMeaningfulEventCriteria *)v12 setLocationsTrait:v21];
    v14 = [[PGMeaningfulEventNumberTrait alloc] initWithNumberValue:1.0];
    [(PGMeaningfulEventTrait *)v14 setMinimumScore:1.0];
    [(PGMeaningfulEventCriteria *)v12 setNumberOfPeopleTrait:v14];
    v15 = [a1 _winterSportSceneNodesWithGraph:v6 sceneTaxonomy:v7];
    v16 = [a1 _divingSceneNodesWithGraph:v6];
    v17 = [v15 collectionByFormingUnionWith:v16];

    v18 = [[PGMeaningfulEventSceneCollectionTrait alloc] initWithNodes:v9 negativeNodes:v17];
    [(PGMeaningfulEventSceneCollectionTrait *)v18 setMinimumNumberOfHighConfidenceAssets:4];
    [(PGMeaningfulEventTrait *)v18 setMinimumScore:1.0];
    [(PGMeaningfulEventSceneCollectionTrait *)v18 setMinimumRatioOfHighConfidenceAssets:0.5];
    [(PGMeaningfulEventCriteria *)v12 setScenesTrait:v18];
    [(PGMeaningfulEventRequiredCriteria *)v12 setMustBeInteresting:1];
  }

  else
  {
    v12 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)_hikingCriteriaWithGraph:(id)a3 sceneTaxonomy:(id)a4
{
  v36[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [a1 _hikingSceneNodesWithGraph:v6];
  v36[0] = @"Hiking";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:1];
  v10 = [PGGraphPOINodeCollection poiNodesForLabels:v9 inGraph:v6];

  v35[0] = @"Mountain";
  v35[1] = @"Nature";
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:2];
  v12 = [PGGraphROINodeCollection roiNodesForLabels:v11 inGraph:v6];

  if ([v8 count] && (objc_msgSend(v10, "count") || objc_msgSend(v12, "count")))
  {
    v30 = [MEMORY[0x277CBEB98] setWithObjects:{@"gown", @"suit", @"necktie", @"vineyard", @"cycling", @"bicycle", @"golf", @"skydiving", @"sport", 0}];
    v13 = [v6 sceneNodesForSceneNames:v30];
    v14 = [a1 _winterSportSceneNodesWithGraph:v6 sceneTaxonomy:v7];
    [v13 collectionByFormingUnionWith:v14];
    v15 = v33 = v10;

    v16 = [a1 _beachingSceneNodesWithGraph:v6];
    v17 = [v15 collectionByFormingUnionWith:v16];

    v18 = [a1 _divingSceneNodesWithGraph:v6];
    v29 = [v17 collectionByFormingUnionWith:v18];

    v32 = v7;
    v19 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:@"Hiking" minimumScore:v6 graph:0.4];
    v20 = [[PGMeaningfulEventSceneCollectionTrait alloc] initWithNodes:v8 negativeNodes:v29];
    -[PGMeaningfulEventTrait setMinimumScore:](v20, "setMinimumScore:", 1.0 / [v8 count]);
    [(PGMeaningfulEventCriteria *)v19 setScenesTrait:v20];
    v21 = [[PGMeaningfulEventCollectionTrait alloc] initWithNodes:v12];
    [(PGMeaningfulEventTrait *)v21 setMinimumScore:0.5];
    [(PGMeaningfulEventCriteria *)v19 setRoisTrait:v21];
    v22 = [[PGMeaningfulEventLocationMobilityTrait alloc] initWithMobility:1];
    [(PGMeaningfulEventTrait *)v22 setMinimumScore:0.9];
    [(PGMeaningfulEventCriteria *)v19 setLocationMobilityTrait:v22];
    v23 = [a1 locationsTraitNotMatchingFrequentLocationsForGraph:v6];
    [(PGMeaningfulEventCriteria *)v19 setLocationsTrait:v23];
    [(PGMeaningfulEventRequiredCriteria *)v19 setMustBeInteresting:1];
    v31 = v12;
    v24 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:@"Hiking" minimumScore:v6 graph:0.4];
    -[PGMeaningfulEventTrait setMinimumScore:](v20, "setMinimumScore:", 1.0 / [v8 count]);
    [(PGMeaningfulEventCriteria *)v24 setScenesTrait:v20];
    v25 = [[PGMeaningfulEventCollectionTrait alloc] initWithNodes:v33];
    [(PGMeaningfulEventTrait *)v25 setMinimumScore:0.5];
    [(PGMeaningfulEventCriteria *)v24 setPoisTrait:v25];
    [(PGMeaningfulEventTrait *)v22 setMinimumScore:0.9];
    [(PGMeaningfulEventCriteria *)v24 setLocationMobilityTrait:v22];
    [(PGMeaningfulEventCriteria *)v24 setLocationsTrait:v23];
    [(PGMeaningfulEventRequiredCriteria *)v24 setMustBeInteresting:1];
    v34[0] = v19;
    v34[1] = v24;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:2];

    v7 = v32;
    v12 = v31;

    v10 = v33;
  }

  else
  {
    v26 = 0;
  }

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

+ (id)_restaurantCriteriaByCriteriaForIdentifiers:(id)a3 withGraph:(id)a4 sceneTaxonomy:(id)a5
{
  v110[2] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [a5 nodeForName:@"tableware"];
  v10 = [MEMORY[0x277CBEB58] setWithObjects:{@"restaurant", @"food", 0}];
  v11 = [MEMORY[0x277CBEB58] setWithObjects:{@"wine_bottle", @"wine", 0}];
  v91[0] = MEMORY[0x277D85DD0];
  v91[1] = 3221225472;
  v91[2] = __112__PGMeaningfulEventRequiredCriteriaFactory__restaurantCriteriaByCriteriaForIdentifiers_withGraph_sceneTaxonomy___block_invoke;
  v91[3] = &unk_2788884F0;
  v12 = v11;
  v92 = v12;
  v67 = v9;
  [v9 traverseChildrenUsingNameBlock:v91];
  v66 = v10;
  v13 = [v8 sceneNodesForSceneNames:v10];
  v14 = [v8 sceneNodesForSceneNames:v12];
  v76 = v13;
  v15 = [v13 collectionByFormingUnionWith:v14];
  v65 = [MEMORY[0x277CBEB98] setWithObjects:{@"aquarium", @"underwater", 0}];
  v71 = [v8 sceneNodesForSceneNames:?];
  v110[0] = @"Nightlife";
  v110[1] = @"Restaurant";
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v110 count:2];
  v17 = [PGGraphPOINodeCollection poiNodesForLabels:v16 inGraph:v8];

  v109 = @"Museum";
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v109 count:1];
  v77 = v8;
  v68 = [PGGraphPOINodeCollection poiNodesForLabels:v18 inGraph:v8];

  v75 = v15;
  if ([v15 count] && objc_msgSend(v17, "count"))
  {
    v70 = v17;
    v63 = v14;
    v64 = v12;
    v69 = [a1 locationsTraitNotMatchingPeopleHomeWorkLocationsForGraph:v8];
    v106[0] = @"label";
    v106[1] = @"significantPartsOfDay";
    v107[0] = @"Lunch";
    v107[1] = &unk_284482FE8;
    v74 = v7;
    v106[2] = @"forbiddenPartOfDay";
    v106[3] = @"minimumNumberOfHighConfidenceScenes";
    v107[2] = &unk_284483000;
    v107[3] = &unk_284482FA0;
    v19 = MEMORY[0x277CBEC38];
    v106[4] = @"usePOIs";
    v106[5] = @"useNegativePOIs";
    v107[4] = MEMORY[0x277CBEC38];
    v107[5] = MEMORY[0x277CBEC38];
    v85 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v107 forKeys:v106 count:6];
    v108[0] = v85;
    v104[0] = @"label";
    v104[1] = @"significantPartsOfDay";
    v105[0] = @"Lunch";
    v105[1] = &unk_284482FE8;
    v104[2] = @"forbiddenPartOfDay";
    v104[3] = @"minimumNumberOfHighConfidenceScenes";
    v105[2] = &unk_284483000;
    v105[3] = &unk_284483018;
    v104[4] = @"usePOIs";
    v104[5] = @"useNegativePOIs";
    v20 = MEMORY[0x277CBEC28];
    v105[4] = v19;
    v105[5] = MEMORY[0x277CBEC28];
    v82 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v105 forKeys:v104 count:6];
    v108[1] = v82;
    v102[0] = @"label";
    v102[1] = @"significantPartsOfDay";
    v103[0] = @"Dinner";
    v103[1] = &unk_284483000;
    v102[2] = @"forbiddenPartOfDay";
    v102[3] = @"allPartsOfDay";
    v103[2] = &unk_284483030;
    v103[3] = &unk_284483048;
    v102[4] = @"minimumDuration";
    v102[5] = @"minimumNumberOfHighConfidenceScenes";
    v103[4] = &unk_284487128;
    v103[5] = &unk_284482FA0;
    v102[6] = @"usePOIs";
    v102[7] = @"useNegativePOIs";
    v103[6] = v19;
    v103[7] = v20;
    obja = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v103 forKeys:v102 count:8];
    v108[2] = obja;
    v100[0] = @"label";
    v100[1] = @"significantPartsOfDay";
    v101[0] = @"Dinner";
    v101[1] = &unk_284483000;
    v100[2] = @"forbiddenPartOfDay";
    v100[3] = @"allPartsOfDay";
    v101[2] = &unk_284483030;
    v101[3] = &unk_284483048;
    v100[4] = @"minimumDuration";
    v100[5] = @"minimumNumberOfHighConfidenceScenes";
    v101[4] = &unk_284487138;
    v101[5] = &unk_284483018;
    v100[6] = @"usePOIs";
    v100[7] = @"useNegativePOIs";
    v101[6] = v19;
    v101[7] = v20;
    v78 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v101 forKeys:v100 count:8];
    v108[3] = v78;
    v98[0] = @"label";
    v98[1] = @"significantPartsOfDay";
    v99[0] = @"Dinner";
    v99[1] = &unk_284483000;
    v98[2] = @"forbiddenPartOfDay";
    v98[3] = @"allPartsOfDay";
    v99[2] = &unk_284483030;
    v99[3] = &unk_284483048;
    v98[4] = @"minimumDuration";
    v98[5] = @"minimumNumberOfHighConfidenceScenes";
    v99[4] = &unk_284487148;
    v99[5] = &unk_284483018;
    v98[6] = @"usePOIs";
    v98[7] = @"useNegativePOIs";
    v99[6] = v20;
    v99[7] = v20;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v99 forKeys:v98 count:8];
    v108[4] = v21;
    v96[0] = @"label";
    v96[1] = @"forbiddenPartOfDay";
    v97[0] = @"Breakfast";
    v97[1] = &unk_284483060;
    v96[2] = @"significantPartsOfDay";
    v96[3] = @"minimumNumberOfHighConfidenceScenes";
    v97[2] = &unk_284483078;
    v97[3] = &unk_284482FA0;
    v96[4] = @"usePOIs";
    v96[5] = @"useNegativePOIs";
    v22 = MEMORY[0x277CBEC38];
    v97[4] = MEMORY[0x277CBEC38];
    v97[5] = MEMORY[0x277CBEC38];
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v97 forKeys:v96 count:6];
    v108[5] = v23;
    v94[0] = @"label";
    v94[1] = @"forbiddenPartOfDay";
    v95[0] = @"Breakfast";
    v95[1] = &unk_284483060;
    v94[2] = @"significantPartsOfDay";
    v94[3] = @"minimumNumberOfHighConfidenceScenes";
    v95[2] = &unk_284483078;
    v95[3] = &unk_284483018;
    v94[4] = @"usePOIs";
    v94[5] = @"useNegativePOIs";
    v95[4] = v22;
    v95[5] = MEMORY[0x277CBEC28];
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v95 forKeys:v94 count:6];
    v108[6] = v24;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v108 count:7];

    v7 = v74;
    v72 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v74, "count")}];
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    obj = v25;
    v26 = [obj countByEnumeratingWithState:&v87 objects:v93 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v88;
      v73 = *v88;
      do
      {
        v29 = 0;
        v79 = v27;
        do
        {
          if (*v88 != v28)
          {
            objc_enumerationMutation(obj);
          }

          v30 = *(*(&v87 + 1) + 8 * v29);
          v31 = [v30 objectForKeyedSubscript:@"label"];
          if ([v7 containsObject:v31])
          {
            v86 = [v30 objectForKeyedSubscript:@"significantPartsOfDay"];
            v83 = [v30 objectForKeyedSubscript:@"forbiddenPartOfDay"];
            v32 = [v30 objectForKeyedSubscript:@"allPartsOfDay"];
            v33 = [v30 objectForKeyedSubscript:@"minimumDuration"];
            v34 = [v30 objectForKeyedSubscript:@"minimumNumberOfHighConfidenceScenes"];
            v35 = [v34 unsignedIntegerValue];

            if (v35 <= 1)
            {
              v36 = 1;
            }

            else
            {
              v36 = v35;
            }

            v37 = [v30 objectForKeyedSubscript:@"usePOIs"];
            v38 = [v37 BOOLValue];

            v39 = [v30 objectForKeyedSubscript:@"useNegativePOIs"];
            v40 = [v39 BOOLValue];

            v41 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:v31 minimumScore:v77 graph:0.6];
            v42 = v76;
            if (!v38)
            {
              v42 = v75;
            }

            v43 = v42;
            v44 = [v43 count];
            if (v44)
            {
              v45 = v44;
              if (v38)
              {
                v46 = [PGMeaningfulEventCollectionTrait alloc];
                if (v40)
                {
                  v47 = [(PGMeaningfulEventCollectionTrait *)v46 initWithNodes:v70 negativeNodes:v68];
                }

                else
                {
                  v47 = [(PGMeaningfulEventCollectionTrait *)v46 initWithNodes:v70];
                }

                v50 = v47;
                v49 = off_27887B000;
                [(PGMeaningfulEventTrait *)v47 setMinimumScore:0.7];
                [(PGMeaningfulEventCriteria *)v41 setPoisTrait:v50];
                v48 = 1.0 / v45;
              }

              else
              {
                [(PGMeaningfulEventCriteria *)v41 setLocationsTrait:v69];
                v48 = 2.0 / v45;
                [(PGMeaningfulEventRequiredCriteria *)v41 setMustBeInteresting:1];
                v49 = off_27887B000;
              }

              v51 = [[PGMeaningfulEventSceneCollectionTrait alloc] initWithNodes:v43 negativeNodes:v71];
              [(PGMeaningfulEventTrait *)v51 setMinimumScore:v48];
              [(PGMeaningfulEventSceneCollectionTrait *)v51 setMinimumNumberOfHighConfidenceAssets:v36];
              [(PGMeaningfulEventSceneCollectionTrait *)v51 setAccumulateHighConfidenceAssetCounts:1];
              [(PGMeaningfulEventCriteria *)v41 setScenesTrait:v51];
              v52 = [v86 unsignedIntegerValue];
              if (v83)
              {
                v53 = [v83 unsignedIntegerValue];
              }

              else
              {
                v53 = 1;
              }

              v54 = [objc_alloc(v49[260]) initWithPartOfDay:v52 forbiddenPartOfDay:v53];
              [v54 setMinimumScore:0.75];
              [(PGMeaningfulEventCriteria *)v41 setSignificantPartsOfDayTrait:v54];
              if (v32)
              {
                v55 = [objc_alloc(v49[260]) initWithPartOfDay:objc_msgSend(v32 forbiddenPartOfDay:{"unsignedIntegerValue"), 1}];
                [v55 setMinimumScore:0.75];
                [(PGMeaningfulEventCriteria *)v41 setAllPartsOfDayTrait:v55];
              }

              if (v33)
              {
                v56 = [PGMeaningfulEventNumberTrait alloc];
                [v33 doubleValue];
                v57 = [(PGMeaningfulEventNumberTrait *)v56 initWithNumberValue:?];
                [(PGMeaningfulEventTrait *)v57 setMinimumScore:1.0];
                [(PGMeaningfulEventCriteria *)v41 setMinimumDurationTrait:v57];
              }

              v58 = [v72 objectForKeyedSubscript:v31];
              if (!v58)
              {
                v58 = [MEMORY[0x277CBEB18] array];
                [v72 setObject:v58 forKeyedSubscript:v31];
              }

              [v58 addObject:v41];
            }

            v28 = v73;
            v7 = v74;
            v27 = v79;
          }

          ++v29;
        }

        while (v27 != v29);
        v27 = [obj countByEnumeratingWithState:&v87 objects:v93 count:16];
      }

      while (v27);
    }

    v60 = v66;
    v59 = v67;
    v14 = v63;
    v12 = v64;
    v17 = v70;
  }

  else
  {
    v72 = MEMORY[0x277CBEC10];
    v60 = v66;
    v59 = v67;
  }

  v61 = *MEMORY[0x277D85DE8];

  return v72;
}

+ (id)_anniversaryCriteriaWithGraph:(id)a3
{
  v28[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [(PGGraphNodeCollection *)PGGraphMeNodeCollection nodesInGraph:v3];
  if ([v4 count])
  {
    v5 = [v4 anyNode];
    v6 = [v5 anniversaryDateComponents];
    if (v6)
    {
      v7 = [(PGGraphNodeCollection *)PGGraphSocialGroupNodeCollection nodesInGraph:v3];
      if ([v7 count])
      {
        v8 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:0 ascending:0 comparator:&__block_literal_global_19793];
        v28[0] = v8;
        v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
        v21 = [v7 sortedArrayUsingDescriptors:v9];

        v10 = [v21 firstObject];
        v11 = [v10 collection];
        v12 = [v11 personNodes];

        v13 = [MEMORY[0x277CBEB18] array];
        v14 = [v6 year];
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __74__PGMeaningfulEventRequiredCriteriaFactory__anniversaryCriteriaWithGraph___block_invoke_2;
        v22[3] = &unk_2788814E0;
        v27 = v14;
        v23 = v6;
        v24 = v3;
        v25 = v12;
        v15 = v13;
        v26 = v15;
        v16 = v12;
        [v24 enumerateNodesWithLabel:@"Year" domain:400 usingBlock:v22];
        v17 = v26;
        v18 = v15;
      }

      else
      {
        v18 = MEMORY[0x277CBEBF8];
      }
    }

    else
    {
      v18 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    v18 = MEMORY[0x277CBEBF8];
  }

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

void __74__PGMeaningfulEventRequiredCriteriaFactory__anniversaryCriteriaWithGraph___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 calendarUnitValue];
  if (*(a1 + 64) != v3)
  {
    [*(a1 + 32) setYear:v3];
    v13 = [MEMORY[0x277D27690] dateFromComponents:*(a1 + 32) inTimeZone:0];
    v4 = [*(a1 + 40) dateNodeForLocalDate:?];
    if (v4)
    {
      v5 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:@"Anniversary" minimumScore:*(a1 + 40) graph:0.5];
      v6 = [[PGMeaningfulEventCollectionTrait alloc] initWithNodes:*(a1 + 48)];
      [(PGMeaningfulEventCriteria *)v5 setPeopleTrait:v6];

      v7 = 1.0 / [*(a1 + 48) count];
      v8 = [(PGMeaningfulEventCriteria *)v5 peopleTrait];
      [v8 setMinimumScore:v7];

      v9 = [PGMeaningfulEventCollectionTrait alloc];
      v10 = [v4 collection];
      v11 = [(PGMeaningfulEventCollectionTrait *)v9 initWithNodes:v10];
      [(PGMeaningfulEventCriteria *)v5 setDatesTrait:v11];

      v12 = [(PGMeaningfulEventCriteria *)v5 datesTrait];
      [v12 setMinimumScore:1.0];

      [*(a1 + 56) addObject:v5];
    }
  }
}

uint64_t __74__PGMeaningfulEventRequiredCriteriaFactory__anniversaryCriteriaWithGraph___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 numberOfMomentNodes];
  v6 = [v4 numberOfMomentNodes];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v5];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v6];
  v9 = [v7 compare:v8];

  return v9;
}

+ (id)_nightOutCriteriaArrayWithGraph:(id)a3 sceneTaxonomy:(id)a4
{
  v74 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEB18] array];
  v9 = [[PGMeaningfulEventPartOfDayTrait alloc] initWithPartOfDay:32];
  [(PGMeaningfulEventTrait *)v9 setMinimumScore:0.6];
  v10 = [MEMORY[0x277D27780] nightLife];
  v49 = a1;
  v53 = v6;
  v11 = [a1 _publicEventCriteriaForCategoryWithName:v10 inGraph:v6];

  if (v11)
  {
    [v11 setSignificantPartsOfDayTrait:v9];
    [v8 addObject:v11];
  }

  v44 = v11;
  v45 = v9;
  v52 = v8;
  v51 = [[PGMeaningfulEventPartOfDayTrait alloc] initWithPartOfDay:48 forbiddenPartOfDay:12];
  [(PGMeaningfulEventTrait *)v51 setMinimumScore:0.3];
  v12 = [MEMORY[0x277CBEB58] setWithArray:&unk_284485910];
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v13 = [&unk_2844858F8 countByEnumeratingWithState:&v60 objects:v73 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v61;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v61 != v15)
        {
          objc_enumerationMutation(&unk_2844858F8);
        }

        v17 = [v7 nodeForName:*(*(&v60 + 1) + 8 * i)];
        v58[0] = MEMORY[0x277D85DD0];
        v58[1] = 3221225472;
        v58[2] = __90__PGMeaningfulEventRequiredCriteriaFactory__nightOutCriteriaArrayWithGraph_sceneTaxonomy___block_invoke;
        v58[3] = &unk_2788884F0;
        v59 = v12;
        [v17 traverseChildrenUsingNameBlock:v58];
      }

      v14 = [&unk_2844858F8 countByEnumeratingWithState:&v60 objects:v73 count:16];
    }

    while (v14);
  }

  v18 = [v53 sceneNodesForSceneNames:v12];
  v72[0] = @"Nightlife";
  v72[1] = @"Restaurant";
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v72 count:2];
  v20 = [PGGraphPOINodeCollection poiNodesForLabels:v19 inGraph:v53];

  if ([v18 count] && objc_msgSend(v20, "count"))
  {
    v46 = v20;
    v69[0] = @"minimumDuration";
    v69[1] = @"minimumNumberOfHighConfidenceScenes";
    v70[1] = &unk_284482FA0;
    v69[2] = @"usePOIs";
    v70[0] = &unk_284487108;
    v70[2] = MEMORY[0x277CBEC38];
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v70 forKeys:v69 count:3];
    v71[0] = v21;
    v67[0] = @"minimumDuration";
    v67[1] = @"minimumNumberOfHighConfidenceScenes";
    v68[0] = &unk_284487108;
    v68[1] = &unk_284482FB8;
    v67[2] = @"usePOIs";
    v68[2] = MEMORY[0x277CBEC28];
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v68 forKeys:v67 count:3];
    v71[1] = v22;
    v65[0] = @"minimumDuration";
    v65[1] = @"minimumNumberOfHighConfidenceScenes";
    v66[0] = &unk_284487118;
    v66[1] = &unk_284482FD0;
    v65[2] = @"usePOIs";
    v66[2] = MEMORY[0x277CBEC38];
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v66 forKeys:v65 count:3];
    v71[2] = v23;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v71 count:3];

    v50 = [v49 locationsTraitNotMatchingPeopleHomeWorkLocationsForGraph:v53];
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    obj = v24;
    v25 = [obj countByEnumeratingWithState:&v54 objects:v64 count:16];
    if (v25)
    {
      v26 = v25;
      v48 = *v55;
      do
      {
        for (j = 0; j != v26; ++j)
        {
          if (*v55 != v48)
          {
            objc_enumerationMutation(obj);
          }

          v28 = *(*(&v54 + 1) + 8 * j);
          v29 = [v28 objectForKeyedSubscript:@"minimumDuration"];
          [v29 doubleValue];
          v31 = v30;

          v32 = [v28 objectForKeyedSubscript:@"minimumNumberOfHighConfidenceScenes"];
          v33 = [v32 unsignedIntegerValue];

          if (v33 <= 1)
          {
            v34 = 1;
          }

          else
          {
            v34 = v33;
          }

          v35 = [v28 objectForKeyedSubscript:@"usePOIs"];
          v36 = [v35 BOOLValue];

          v37 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:@"NightOut" minimumScore:v53 graph:0.6];
          [(PGMeaningfulEventCriteria *)v37 setLocationsTrait:v50];
          v38 = [[PGMeaningfulEventNumberTrait alloc] initWithNumberValue:3.0];
          [(PGMeaningfulEventCriteria *)v37 setNumberOfPeopleTrait:v38];

          v39 = [[PGMeaningfulEventSceneCollectionTrait alloc] initWithNodes:v18];
          -[PGMeaningfulEventTrait setMinimumScore:](v39, "setMinimumScore:", 1.0 / [v18 count]);
          [(PGMeaningfulEventSceneCollectionTrait *)v39 setMinimumNumberOfHighConfidenceAssets:v34];
          [(PGMeaningfulEventCriteria *)v37 setScenesTrait:v39];
          if (v36)
          {
            v40 = [[PGMeaningfulEventCollectionTrait alloc] initWithNodes:v46];
            [(PGMeaningfulEventTrait *)v40 setMinimumScore:0.4];
            [(PGMeaningfulEventCriteria *)v37 setPoisTrait:v40];
          }

          [(PGMeaningfulEventRequiredCriteria *)v37 setMustBeInteresting:1];
          v41 = [[PGMeaningfulEventNumberTrait alloc] initWithNumberValue:v31];
          [(PGMeaningfulEventTrait *)v41 setMinimumScore:1.0];
          [(PGMeaningfulEventCriteria *)v37 setMinimumDurationTrait:v41];
          [(PGMeaningfulEventCriteria *)v37 setSignificantPartsOfDayTrait:v51];
          [v52 addObject:v37];
        }

        v26 = [obj countByEnumeratingWithState:&v54 objects:v64 count:16];
      }

      while (v26);
    }

    v20 = v46;
  }

  v42 = *MEMORY[0x277D85DE8];

  return v52;
}

+ (id)_museumCriteriaArrayForMeaningInferenceWithGraph:(id)a3
{
  v18[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = [MEMORY[0x277D27780] artsAndMuseums];
  v7 = [a1 _publicEventCriteriaForCategoryWithName:v6 inGraph:v4];

  if (v7)
  {
    [v5 addObject:v7];
  }

  v8 = [a1 _museumSceneTraitInGraph:v4 minimumNumberOfHighConfidenceAssets:12];
  v18[0] = @"Museum";
  v18[1] = @"Culture";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
  v10 = [PGGraphPOINodeCollection poiNodesForLabels:v9 inGraph:v4];

  if (v8 && [v10 count])
  {
    v11 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:@"Museum" minimumScore:v4 graph:0.4];
    v12 = [[PGMeaningfulEventCollectionTrait alloc] initWithNodes:v10];
    [(PGMeaningfulEventTrait *)v12 setMinimumScore:0.1];
    [(PGMeaningfulEventCriteria *)v11 setPoisTrait:v12];
    [(PGMeaningfulEventCriteria *)v11 setScenesTrait:v8];
    v13 = [[PGMeaningfulEventPartOfDayTrait alloc] initWithPartOfDay:14];
    [(PGMeaningfulEventTrait *)v13 setMinimumScore:0.2];
    [(PGMeaningfulEventCriteria *)v11 setSignificantPartsOfDayTrait:v13];
    v14 = [[PGMeaningfulEventNumberTrait alloc] initWithNumberValue:3600.0];
    [(PGMeaningfulEventTrait *)v14 setMinimumScore:1.0];
    [(PGMeaningfulEventCriteria *)v11 setMinimumDurationTrait:v14];
    v15 = [a1 locationsTraitNotMatchingPeopleHomeWorkLocationsForGraph:v4];
    [(PGMeaningfulEventCriteria *)v11 setLocationsTrait:v15];
    [v5 addObject:v11];
  }

  v16 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)_museumCriteriaArrayForPublicEventInferenceWithGraph:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [a1 _museumSceneTraitInGraph:v4 minimumNumberOfHighConfidenceAssets:8];
  if (v5)
  {
    v6 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:@"Museum" minimumScore:v4 graph:0.4];
    [(PGMeaningfulEventCriteria *)v6 setScenesTrait:v5];
    v7 = [[PGMeaningfulEventPartOfDayTrait alloc] initWithPartOfDay:14];
    [(PGMeaningfulEventTrait *)v7 setMinimumScore:0.2];
    [(PGMeaningfulEventCriteria *)v6 setSignificantPartsOfDayTrait:v7];
    v11[0] = v6;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  }

  else
  {
    v8 = MEMORY[0x277CBEBF8];
  }

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)_museumCriteriaArrayForInferenceType:(unint64_t)a3 graph:(id)a4
{
  v6 = a4;
  if (a3 == 1)
  {
    v7 = [a1 _museumCriteriaArrayForPublicEventInferenceWithGraph:v6];
    goto LABEL_5;
  }

  if (!a3)
  {
    v7 = [a1 _museumCriteriaArrayForMeaningInferenceWithGraph:v6];
LABEL_5:
    v8 = v7;
    goto LABEL_7;
  }

  v8 = 0;
LABEL_7:
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = MEMORY[0x277CBEBF8];
  }

  v10 = v9;

  return v9;
}

+ (id)_festivalCriteriaArrayWithGraph:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = [MEMORY[0x277D27780] festivalsAndFairs];
  v7 = [a1 _publicEventCriteriaForCategoryWithName:v6 inGraph:v4];

  if (v7)
  {
    [v5 addObject:v7];
  }

  v8 = [a1 _concertSceneNodesInGraph:v4];
  v9 = [v8 count];
  if (v9)
  {
    v10 = v9;
    v11 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:@"Festival" minimumScore:v4 graph:0.4];
    v12 = [[PGMeaningfulEventNumberTrait alloc] initWithNumberValue:5.0];
    [(PGMeaningfulEventCriteria *)v11 setNumberOfPeopleTrait:v12];

    v13 = [[PGMeaningfulEventSceneCollectionTrait alloc] initWithNodes:v8];
    [(PGMeaningfulEventTrait *)v13 setMinimumScore:1.0 / v10];
    [(PGMeaningfulEventSceneCollectionTrait *)v13 setMinimumNumberOfHighConfidenceAssets:10];
    [(PGMeaningfulEventCriteria *)v11 setScenesTrait:v13];
    v14 = [[PGMeaningfulEventNumberTrait alloc] initWithNumberValue:57600.0];
    [(PGMeaningfulEventTrait *)v14 setMinimumScore:1.0];
    [(PGMeaningfulEventCriteria *)v11 setMinimumDurationTrait:v14];
    v15 = [a1 locationsTraitNotMatchingPeopleHomeWorkLocationsForGraph:v4];
    [(PGMeaningfulEventCriteria *)v11 setLocationsTrait:v15];
    [v5 addObject:v11];
  }

  return v5;
}

+ (id)_concertCriteriaArrayForPublicEventInferenceWithGraph:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = [a1 _concertSceneNodesInGraph:v4];
  v7 = [MEMORY[0x277CBEB98] setWithObjects:{@"performance", @"nightclub", 0}];
  v8 = [v4 sceneNodesForSceneNames:v7];
  v9 = [v6 collectionByFormingUnionWith:v8];

  v10 = [v9 count];
  if (v10)
  {
    v11 = v10;
    v12 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:@"Concert" minimumScore:v4 graph:0.4];
    v13 = [[PGMeaningfulEventSceneCollectionTrait alloc] initWithNodes:v9];
    [(PGMeaningfulEventTrait *)v13 setMinimumScore:1.0 / v11];
    [(PGMeaningfulEventSceneCollectionTrait *)v13 setMinimumNumberOfHighConfidenceAssets:7];
    [(PGMeaningfulEventCriteria *)v12 setScenesTrait:v13];
    v14 = [[PGMeaningfulEventPartOfDayTrait alloc] initWithPartOfDay:48];
    [(PGMeaningfulEventTrait *)v14 setMinimumScore:0.4];
    [(PGMeaningfulEventCriteria *)v12 setSignificantPartsOfDayTrait:v14];
    [v5 addObject:v12];
  }

  return v5;
}

+ (id)_concertCriteriaArrayForMeaningInferenceWithGraph:(id)a3
{
  v21[5] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = [MEMORY[0x277D27780] musicConcerts];
  v7 = [a1 _publicEventCriteriaForCategoryWithName:v6 inGraph:v4];

  if (v7)
  {
    [v5 addObject:v7];
  }

  v8 = [a1 _concertSceneNodesInGraph:v4];
  v21[0] = @"Nightlife";
  v21[1] = @"Culture";
  v21[2] = @"Entertainment";
  v21[3] = @"Stadium";
  v21[4] = @"Performance";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:5];
  v10 = [PGGraphPOINodeCollection poiNodesForLabels:v9 inGraph:v4];

  v11 = [v8 count];
  if (v11)
  {
    v12 = v11;
    if ([v10 count])
    {
      v13 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:@"Concert" minimumScore:v4 graph:0.4];
      v14 = [[PGMeaningfulEventNumberTrait alloc] initWithNumberValue:2.0];
      [(PGMeaningfulEventCriteria *)v13 setNumberOfPeopleTrait:v14];

      v15 = [[PGMeaningfulEventCollectionTrait alloc] initWithNodes:v10];
      [(PGMeaningfulEventTrait *)v15 setMinimumScore:0.1];
      [(PGMeaningfulEventCriteria *)v13 setPoisTrait:v15];
      v16 = [[PGMeaningfulEventSceneCollectionTrait alloc] initWithNodes:v8];
      [(PGMeaningfulEventTrait *)v16 setMinimumScore:1.0 / v12];
      [(PGMeaningfulEventSceneCollectionTrait *)v16 setMinimumNumberOfHighConfidenceAssets:2];
      [(PGMeaningfulEventCriteria *)v13 setScenesTrait:v16];
      v17 = [[PGMeaningfulEventNumberTrait alloc] initWithNumberValue:300.0];
      [(PGMeaningfulEventTrait *)v17 setMinimumScore:1.0];
      [(PGMeaningfulEventCriteria *)v13 setMinimumDurationTrait:v17];
      v18 = [a1 locationsTraitNotMatchingPeopleHomeWorkLocationsForGraph:v4];
      [(PGMeaningfulEventCriteria *)v13 setLocationsTrait:v18];
      [v5 addObject:v13];
    }
  }

  v19 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)_concertCriteriaArrayForInferenceType:(unint64_t)a3 graph:(id)a4
{
  v6 = a4;
  if (a3 == 1)
  {
    v7 = [a1 _concertCriteriaArrayForPublicEventInferenceWithGraph:v6];
    goto LABEL_5;
  }

  if (!a3)
  {
    v7 = [a1 _concertCriteriaArrayForMeaningInferenceWithGraph:v6];
LABEL_5:
    v8 = v7;
    goto LABEL_7;
  }

  v8 = 0;
LABEL_7:
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = MEMORY[0x277CBEBF8];
  }

  v10 = v9;

  return v9;
}

+ (id)_performanceCriteriaWithGraph:(id)a3
{
  v18[4] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB98] setWithObjects:{@"performance", @"clown", @"ballet_dancer", @"acrobat", @"ballet", @"breakdancing", @"bellydance", @"magic", @"circus", @"orchestra", 0}];
  v6 = [v4 sceneNodesForSceneNames:v5];
  v18[0] = @"Nightlife";
  v18[1] = @"Culture";
  v18[2] = @"Entertainment";
  v18[3] = @"Performance";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:4];
  v8 = [PGGraphPOINodeCollection poiNodesForLabels:v7 inGraph:v4];

  if ([v6 count] && objc_msgSend(v8, "count"))
  {
    v9 = [MEMORY[0x277CBEB98] setWithObjects:{@"toy", 0}];
    v10 = [v4 sceneNodesForSceneNames:v9];

    v11 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:@"Performance" minimumScore:v4 graph:0.4];
    v12 = [[PGMeaningfulEventNumberTrait alloc] initWithNumberValue:2.0];
    [(PGMeaningfulEventCriteria *)v11 setNumberOfPeopleTrait:v12];

    v13 = [[PGMeaningfulEventCollectionTrait alloc] initWithNodes:v8];
    [(PGMeaningfulEventTrait *)v13 setMinimumScore:0.1];
    [(PGMeaningfulEventCriteria *)v11 setPoisTrait:v13];
    v14 = [[PGMeaningfulEventSceneCollectionTrait alloc] initWithNodes:v6 negativeNodes:v10];
    -[PGMeaningfulEventTrait setMinimumScore:](v14, "setMinimumScore:", 1.0 / [v6 count]);
    [(PGMeaningfulEventSceneCollectionTrait *)v14 setMinimumNumberOfHighConfidenceAssets:4];
    [(PGMeaningfulEventCriteria *)v11 setScenesTrait:v14];
    v15 = [a1 locationsTraitNotMatchingPeopleHomeWorkLocationsForGraph:v4];
    [(PGMeaningfulEventCriteria *)v11 setLocationsTrait:v15];
  }

  else
  {
    v11 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)_danceCriteriaWithGraph:(id)a3
{
  v4 = MEMORY[0x277D27780];
  v5 = a3;
  v6 = [v4 dance];
  v7 = [a1 _publicEventCriteriaForCategoryWithName:v6 inGraph:v5];

  return v7;
}

+ (id)_theaterCriteriaWithGraph:(id)a3
{
  v4 = MEMORY[0x277D27780];
  v5 = a3;
  v6 = [v4 theater];
  v7 = [a1 _publicEventCriteriaForCategoryWithName:v6 inGraph:v5];

  return v7;
}

+ (id)_winterSportCriteriaWithGraph:(id)a3 sceneTaxonomy:(id)a4
{
  v19[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [a1 _winterSportSceneNodesWithGraph:v6 sceneTaxonomy:a4];
  v19[0] = @"Mountain";
  v19[1] = @"Nature";
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
  v9 = [PGGraphROINodeCollection roiNodesForLabels:v8 inGraph:v6];

  if ([v7 count] && objc_msgSend(v9, "count"))
  {
    v10 = [a1 _beachingSceneNodesWithGraph:v6];
    v11 = [a1 _negativeHikingSceneNodesWithGraph:v6];
    v12 = [v10 collectionByFormingUnionWith:v11];

    v13 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:@"WinterSport" minimumScore:v6 graph:0.6];
    v14 = [[PGMeaningfulEventSceneCollectionTrait alloc] initWithNodes:v7 negativeNodes:v12];
    -[PGMeaningfulEventTrait setMinimumScore:](v14, "setMinimumScore:", 1.0 / [v7 count]);
    [(PGMeaningfulEventCriteria *)v13 setScenesTrait:v14];
    v15 = [[PGMeaningfulEventCollectionTrait alloc] initWithNodes:v9];
    [(PGMeaningfulEventTrait *)v15 setMinimumScore:0.25];
    [(PGMeaningfulEventCriteria *)v13 setRoisTrait:v15];
    [(PGMeaningfulEventRequiredCriteria *)v13 setMustBeInteresting:1];
    v16 = [a1 locationsTraitNotMatchingPeopleHomeWorkLocationsForGraph:v6];
    [(PGMeaningfulEventCriteria *)v13 setLocationsTrait:v16];
  }

  else
  {
    v13 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)_divingCriteriaWithGraph:(id)a3 sceneTaxonomy:(id)a4
{
  v23[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [a1 _divingSceneNodesWithGraph:v6];
  v23[0] = @"Water";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
  v10 = [PGGraphROINodeCollection roiNodesForLabels:v9 inGraph:v6];

  if ([v8 count] && objc_msgSend(v10, "count"))
  {
    v11 = [a1 _winterSportSceneNodesWithGraph:v6 sceneTaxonomy:v7];
    v12 = [a1 _negativeHikingSceneNodesWithGraph:v6];
    v13 = [v11 collectionByFormingUnionWith:v12];

    v14 = [MEMORY[0x277CBEB98] setWithObjects:{@"surfing", @"surfboard", @"watersport", @"jetski", @"kiteboarding", @"wakeboarding", 0}];
    v15 = [v6 sceneNodesForSceneNames:v14];
    v16 = [v13 collectionByFormingUnionWith:v15];

    v17 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:@"Diving" minimumScore:v6 graph:0.7];
    v18 = [[PGMeaningfulEventSceneCollectionTrait alloc] initWithNodes:v8 negativeNodes:v16];
    -[PGMeaningfulEventTrait setMinimumScore:](v18, "setMinimumScore:", 1.0 / [v8 count]);
    [(PGMeaningfulEventCriteria *)v17 setScenesTrait:v18];
    v19 = [[PGMeaningfulEventCollectionTrait alloc] initWithNodes:v10];
    [(PGMeaningfulEventTrait *)v19 setMinimumScore:0.25];
    [(PGMeaningfulEventCriteria *)v17 setRoisTrait:v19];
    [(PGMeaningfulEventRequiredCriteria *)v17 setMustBeInteresting:1];
    v20 = [a1 locationsTraitNotMatchingFrequentLocationsForGraph:v6];
    [(PGMeaningfulEventCriteria *)v17 setLocationsTrait:v20];
  }

  else
  {
    v17 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];

  return v17;
}

+ (id)_sportEventCriteriaArrayForPublicEventInferenceWithGraph:(id)a3
{
  v13[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [a1 _sportEventScenesTraitWithGraph:v4];
  v6 = v5;
  if (v5)
  {
    [v5 setMinimumNumberOfHighConfidenceAssets:2];
    v7 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:@"SportEvent" minimumScore:v4 graph:0.4];
    [(PGMeaningfulEventCriteria *)v7 setScenesTrait:v6];
    v8 = [a1 _sportEventScenesTraitWithGraph:v4];
    [v8 setMinimumNumberOfHighConfidenceAssets:7];
    v9 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:@"SportEvent" minimumScore:v4 graph:0.4];
    [(PGMeaningfulEventCriteria *)v9 setScenesTrait:v8];
    v13[0] = v7;
    v13[1] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  }

  else
  {
    v10 = MEMORY[0x277CBEBF8];
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)_sportEventCriteriaArrayForMeaningInferenceWithGraph:(id)a3
{
  v25[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = [MEMORY[0x277D27780] sports];
  v7 = [a1 _publicEventCriteriaForCategoryWithName:v6 inGraph:v4];

  if (v7)
  {
    [v5 addObject:v7];
  }

  v8 = [a1 _sportEventScenesTraitWithGraph:v4];
  v25[0] = @"Entertainment";
  v25[1] = @"Stadium";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
  v10 = [PGGraphPOINodeCollection poiNodesForLabels:v9 inGraph:v4];

  v11 = [v4 anyNodeForLabel:@"Park" domain:501 properties:0];
  if (v8 && [v10 count])
  {
    v12 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:@"SportEvent" minimumScore:v4 graph:0.4];
    [(PGMeaningfulEventCriteria *)v12 setScenesTrait:v8];
    v13 = [[PGMeaningfulEventNumberTrait alloc] initWithNumberValue:2.0];
    [(PGMeaningfulEventTrait *)v13 setMinimumScore:1.0];
    [(PGMeaningfulEventCriteria *)v12 setNumberOfPeopleTrait:v13];
    v14 = [[PGMeaningfulEventCollectionTrait alloc] initWithNodes:v10];
    [(PGMeaningfulEventTrait *)v14 setMinimumScore:0.25];
    [(PGMeaningfulEventCriteria *)v12 setPoisTrait:v14];
    v15 = [a1 locationsTraitNotMatchingPeopleHomeWorkLocationsForGraph:v4];
    [(PGMeaningfulEventCriteria *)v12 setLocationsTrait:v15];
    if (v11)
    {
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __97__PGMeaningfulEventRequiredCriteriaFactory__sportEventCriteriaArrayForMeaningInferenceWithGraph___block_invoke;
      v23[3] = &unk_2788815A8;
      v24 = v11;
      [(PGMeaningfulEventCriteria *)v12 poisTrait];
      v22 = v11;
      v16 = v7;
      v17 = v13;
      v19 = v18 = v5;
      [v19 setAdditionalMatchingBlock:v23];

      v5 = v18;
      v13 = v17;
      v7 = v16;
      v11 = v22;
    }

    [v5 addObject:v12];
  }

  v20 = *MEMORY[0x277D85DE8];

  return v5;
}

BOOL __97__PGMeaningfulEventRequiredCriteriaFactory__sportEventCriteriaArrayForMeaningInferenceWithGraph___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  if ([v5 containsNode:*(a1 + 32)])
  {
    v7 = [MEMORY[0x277CBEB58] set];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __97__PGMeaningfulEventRequiredCriteriaFactory__sportEventCriteriaArrayForMeaningInferenceWithGraph___block_invoke_2;
    v11[3] = &unk_278881580;
    v8 = v7;
    v12 = v8;
    v13 = &v14;
    [v6 enumeratePreciseAddressNodesUsingBlock:v11];
  }

  v9 = *(v15 + 24) == 0;
  _Block_object_dispose(&v14, 8);

  return v9;
}

void __97__PGMeaningfulEventRequiredCriteriaFactory__sportEventCriteriaArrayForMeaningInferenceWithGraph___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 collection];
  v6 = [v5 areaNodes];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __97__PGMeaningfulEventRequiredCriteriaFactory__sportEventCriteriaArrayForMeaningInferenceWithGraph___block_invoke_3;
  v9[3] = &unk_278881558;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v10 = v7;
  v11 = v8;
  v12 = a3;
  [v6 enumerateNodesUsingBlock:v9];
}

void __97__PGMeaningfulEventRequiredCriteriaFactory__sportEventCriteriaArrayForMeaningInferenceWithGraph___block_invoke_3(uint64_t a1, void *a2, _BYTE *a3)
{
  v7 = a2;
  if (([*(a1 + 32) containsObject:?] & 1) == 0)
  {
    [*(a1 + 32) containsObject:v7];
    v5 = [v7 diameterIsLargerThanDiameter:4000.0];
    v6 = *(a1 + 48);
    *(*(*(a1 + 40) + 8) + 24) = v5;
    *v6 = *(*(*(a1 + 40) + 8) + 24);
    *a3 = *(*(*(a1 + 40) + 8) + 24);
  }
}

+ (id)_sportEventCriteriaArrayForInferenceType:(unint64_t)a3 graph:(id)a4
{
  v6 = a4;
  if (a3 == 1)
  {
    v7 = [a1 _sportEventCriteriaArrayForPublicEventInferenceWithGraph:v6];
    goto LABEL_5;
  }

  if (!a3)
  {
    v7 = [a1 _sportEventCriteriaArrayForMeaningInferenceWithGraph:v6];
LABEL_5:
    v8 = v7;
    goto LABEL_7;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

+ (id)_celebrationCriteriaWithGraph:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEB98] setWithObjects:{@"graduation", @"disco_ball", @"ceremony", @"wedding", 0}];
  v5 = [v3 sceneNodesForSceneNames:v4];
  if ([v5 count])
  {
    v6 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:@"Celebration" minimumScore:v3 graph:0.4];
    v7 = [[PGMeaningfulEventNumberTrait alloc] initWithNumberValue:4.0];
    [(PGMeaningfulEventTrait *)v7 setMinimumScore:1.0];
    [(PGMeaningfulEventCriteria *)v6 setNumberOfPeopleTrait:v7];
    v8 = [[PGMeaningfulEventSceneCollectionTrait alloc] initWithNodes:v5];
    -[PGMeaningfulEventTrait setMinimumScore:](v8, "setMinimumScore:", 1.0 / [v5 count]);
    [(PGMeaningfulEventSceneCollectionTrait *)v8 setMinimumNumberOfHighConfidenceAssets:10];
    [(PGMeaningfulEventCriteria *)v6 setScenesTrait:v8];
    v9 = [[PGMeaningfulEventNumberTrait alloc] initWithNumberValue:10800.0];
    [(PGMeaningfulEventTrait *)v9 setMinimumScore:1.0];
    [(PGMeaningfulEventCriteria *)v6 setMinimumDurationTrait:v9];
    [(PGMeaningfulEventRequiredCriteria *)v6 setMustBeInteresting:1];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)_weddingCriteriaWithGraph:(id)a3 sceneTaxonomy:(id)a4
{
  v21[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [a1 _weddingSceneNodesWithGraph:v6 includeWedding:1 sceneTaxonomy:a4];
  if ([v7 count])
  {
    v8 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:@"Wedding" minimumScore:v6 graph:0.4];
    v9 = [a1 locationsTraitNotMatchingPeopleWorkLocationsForGraph:v6];
    [v9 setSkipNegativeRequirementForMissingLocation:1];
    [(PGMeaningfulEventCriteria *)v8 setLocationsTrait:v9];
    v10 = [[PGMeaningfulEventNumberTrait alloc] initWithNumberValue:10.0];
    [(PGMeaningfulEventTrait *)v10 setMinimumScore:1.0];
    [(PGMeaningfulEventCriteria *)v8 setNumberOfPeopleTrait:v10];
    v11 = [[PGMeaningfulEventSceneCollectionTrait alloc] initWithNodes:v7];
    -[PGMeaningfulEventTrait setMinimumScore:](v11, "setMinimumScore:", 2.0 / [v7 count]);
    [(PGMeaningfulEventSceneCollectionTrait *)v11 setMinimumNumberOfHighConfidenceAssets:5];
    [(PGMeaningfulEventCriteria *)v8 setScenesTrait:v11];
    v12 = [[PGMeaningfulEventNumberTrait alloc] initWithNumberValue:12600.0];
    [(PGMeaningfulEventTrait *)v12 setMinimumScore:1.0];
    [(PGMeaningfulEventCriteria *)v8 setMinimumDurationTrait:v12];
    v13 = [[PGMeaningfulEventPartOfDayTrait alloc] initWithPartOfDay:28];
    [(PGMeaningfulEventTrait *)v13 setMinimumScore:0.1];
    [(PGMeaningfulEventCriteria *)v8 setAllPartsOfDayTrait:v13];
    [(PGMeaningfulEventRequiredCriteria *)v8 setMustBeInteresting:1];
    v14 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:@"Wedding" minimumScore:v6 graph:0.4];
    v15 = [[PGMeaningfulEventNumberTrait alloc] initWithNumberValue:30.0];

    [(PGMeaningfulEventTrait *)v15 setMinimumScore:1.0];
    [(PGMeaningfulEventCriteria *)v14 setNumberOfPeopleTrait:v15];
    v16 = [[PGMeaningfulEventSceneCollectionTrait alloc] initWithNodes:v7];

    -[PGMeaningfulEventTrait setMinimumScore:](v16, "setMinimumScore:", 1.0 / [v7 count]);
    [(PGMeaningfulEventSceneCollectionTrait *)v16 setMinimumNumberOfHighConfidenceAssets:18];
    [(PGMeaningfulEventCriteria *)v14 setScenesTrait:v16];
    v17 = [[PGMeaningfulEventNumberTrait alloc] initWithNumberValue:3600.0];

    [(PGMeaningfulEventTrait *)v17 setMinimumScore:1.0];
    [(PGMeaningfulEventCriteria *)v14 setMinimumDurationTrait:v17];
    [(PGMeaningfulEventCriteria *)v14 setAllPartsOfDayTrait:v13];
    [(PGMeaningfulEventRequiredCriteria *)v14 setMustBeInteresting:1];
    [(PGMeaningfulEventCriteria *)v14 setLocationsTrait:v9];
    v21[0] = v8;
    v21[1] = v14;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
  }

  else
  {
    v18 = MEMORY[0x277CBEBF8];
  }

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

+ (void)_birthdayCriteriaWithGraph:(id)a3 strongBirthdayCriteria:(id *)a4 weakBirthdayCriteria:(id *)a5 sceneTaxonomy:(id)a6
{
  v9 = a3;
  v10 = MEMORY[0x277CBEB98];
  v11 = a6;
  v33 = [v10 setWithObjects:{@"celebration", @"birthday_cake", @"sparkling_wine", @"cake", @"pinata", 0}];
  v12 = [v9 sceneNodesForSceneNames:?];
  v13 = [MEMORY[0x277CBEB98] setWithObjects:{@"restaurant", @"bar", 0}];
  v14 = [v9 sceneNodesForSceneNames:v13];

  v15 = [v14 collectionByFormingUnionWith:v12];

  v16 = [a1 _weddingSceneNodesWithGraph:v9 includeWedding:1 sceneTaxonomy:v11];

  v17 = [MEMORY[0x277CBEB98] setWithObjects:{@"grave", 0}];
  v18 = [v9 sceneNodesForSceneNames:v17];
  v19 = [v18 collectionByFormingUnionWith:v16];

  v20 = [MEMORY[0x277CBEB18] array];
  v21 = [MEMORY[0x277CBEB18] array];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __129__PGMeaningfulEventRequiredCriteriaFactory__birthdayCriteriaWithGraph_strongBirthdayCriteria_weakBirthdayCriteria_sceneTaxonomy___block_invoke;
  aBlock[3] = &unk_278881530;
  v22 = v9;
  v37 = v22;
  v38 = v15;
  v39 = v19;
  v40 = v12;
  v23 = v20;
  v41 = v23;
  v24 = v21;
  v42 = v24;
  v25 = v12;
  v26 = v19;
  v27 = v15;
  v28 = _Block_copy(aBlock);
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __129__PGMeaningfulEventRequiredCriteriaFactory__birthdayCriteriaWithGraph_strongBirthdayCriteria_weakBirthdayCriteria_sceneTaxonomy___block_invoke_5;
  v34[3] = &unk_278885D38;
  v35 = v28;
  v29 = v28;
  [v22 enumeratePersonNodesIncludingMe:1 withBlock:v34];
  if (a4)
  {
    v30 = v23;
    *a4 = v23;
  }

  if (a5)
  {
    v31 = v24;
    *a5 = v24;
  }
}

void __129__PGMeaningfulEventRequiredCriteriaFactory__birthdayCriteriaWithGraph_strongBirthdayCriteria_weakBirthdayCriteria_sceneTaxonomy___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 birthdayDateComponents];
  v5 = [v3 potentialBirthdayDateComponents];
  v6 = v5;
  if (v4 | v5)
  {
    if (v4)
    {
      v7 = v4;
    }

    else
    {
      v7 = v5;
    }

    v8 = v7;
    v9 = [v8 year];
    v10 = [MEMORY[0x277CBEB58] set];
    v11 = [MEMORY[0x277CBEB58] set];
    v12 = a1[4];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __129__PGMeaningfulEventRequiredCriteriaFactory__birthdayCriteriaWithGraph_strongBirthdayCriteria_weakBirthdayCriteria_sceneTaxonomy___block_invoke_2;
    v26[3] = &unk_2788814E0;
    v31 = v9;
    v13 = v8;
    v27 = v13;
    v28 = a1[4];
    v14 = v10;
    v29 = v14;
    v15 = v11;
    v30 = v15;
    [v12 enumerateNodesWithLabel:@"Year" domain:400 usingBlock:v26];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __129__PGMeaningfulEventRequiredCriteriaFactory__birthdayCriteriaWithGraph_strongBirthdayCriteria_weakBirthdayCriteria_sceneTaxonomy___block_invoke_4;
    aBlock[3] = &unk_278881508;
    v21 = a1[4];
    v22 = v3;
    v23 = a1[5];
    v24 = a1[6];
    v25 = a1[7];
    v16 = _Block_copy(aBlock);
    if ([v14 count])
    {
      v17 = v16[2](v16, v4 != 0, v14, 0);
      if (v17)
      {
        [a1[8] addObject:v17];
      }

      v18 = v16[2](v16, v4 != 0, v14, 1);

      if (v18)
      {
        [a1[9] addObject:v18];
      }
    }

    if ([v15 count])
    {
      v19 = v16[2](v16, 0, v15, 0);
      if (v19)
      {
        [a1[8] addObject:v19];
      }
    }
  }
}

void __129__PGMeaningfulEventRequiredCriteriaFactory__birthdayCriteriaWithGraph_strongBirthdayCriteria_weakBirthdayCriteria_sceneTaxonomy___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [v3 calendarUnitValue];
  v6 = *(a1 + 64);
  if (v6 == 0x7FFFFFFFFFFFFFFFLL || v5 > v6)
  {
    [*(a1 + 32) setYear:v5];
    v8 = [MEMORY[0x277D27690] dateFromComponents:*(a1 + 32) inTimeZone:0];
    v9 = [*(a1 + 40) dateNodeForLocalDate:v8];
    if (v9)
    {
      [*(a1 + 48) addObject:v9];
    }

    if (([MEMORY[0x277D276A8] isWeekendDate:v8] & 1) == 0)
    {
      v24 = 0;
      v25 = 0.0;
      v10 = [MEMORY[0x277D276A8] nextWeekendLocalStartDate:&v24 interval:&v25 options:0 afterDate:v8];
      v11 = v24;
      v12 = v11;
      if (v10)
      {
        v13 = [v11 dateByAddingTimeInterval:v25];
        v18 = v12;
        v14 = v12;
        if ([v14 compare:v13] == 1)
        {
          v15 = v14;
        }

        else
        {
          do
          {
            v16 = [*(a1 + 40) dateNodeForLocalDate:{v14, v18}];
            v17 = v16;
            if (v16 && (!v9 || ([v16 isSameNodeAsNode:v9] & 1) == 0))
            {
              v20 = 0;
              v21 = &v20;
              v22 = 0x2020000000;
              v23 = 0;
              v19[0] = MEMORY[0x277D85DD0];
              v19[1] = 3221225472;
              v19[2] = __129__PGMeaningfulEventRequiredCriteriaFactory__birthdayCriteriaWithGraph_strongBirthdayCriteria_weakBirthdayCriteria_sceneTaxonomy___block_invoke_3;
              v19[3] = &unk_278885C70;
              v19[4] = &v20;
              [v17 enumerateHolidayNodesUsingBlock:v19];
              if ((v21[3] & 1) == 0)
              {
                [*(a1 + 56) addObject:v17];
              }

              _Block_object_dispose(&v20, 8);
            }

            v15 = [MEMORY[0x277D27690] dateByAddingDays:1 toDate:v14];

            v14 = v15;
          }

          while ([v15 compare:v13] != 1);
        }

        v12 = v18;
      }
    }
  }

  objc_autoreleasePoolPop(v4);
}

PGMeaningfulEventRequiredCriteria *__129__PGMeaningfulEventRequiredCriteriaFactory__birthdayCriteriaWithGraph_strongBirthdayCriteria_weakBirthdayCriteria_sceneTaxonomy___block_invoke_4(uint64_t a1, int a2, void *a3, int a4)
{
  v41 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = @"Birthday";
  if (a4)
  {
    v8 = @"WeakBirthday";
  }

  v9 = v8;
  v10 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:v9 minimumScore:*(a1 + 32) graph:0.4];
  v11 = [PGMeaningfulEventCollectionTrait alloc];
  v12 = [*(a1 + 40) collection];
  v13 = [(PGMeaningfulEventCollectionTrait *)v11 initWithNodes:v12];
  [(PGMeaningfulEventCriteria *)v10 setPeopleTrait:v13];

  v14 = [PGMeaningfulEventCollectionTrait alloc];
  v15 = [(MAElementCollection *)[PGGraphDateNodeCollection alloc] initWithSet:v7 graph:*(a1 + 32)];
  v16 = [(PGMeaningfulEventCollectionTrait *)v14 initWithNodes:v15];
  [(PGMeaningfulEventCriteria *)v10 setDatesTrait:v16];

  v17 = [(PGMeaningfulEventCriteria *)v10 peopleTrait];
  [v17 setMinimumScore:1.0];

  v18 = [(PGMeaningfulEventCriteria *)v10 datesTrait];
  [v18 setMinimumScore:1.0];

  if (a2)
  {
    v35 = v9;
    [(PGMeaningfulEventRequiredCriteria *)v10 setAdditionalInfoForKey:@"birthday.isOnDate" value:MEMORY[0x277CBEC38]];
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v19 = v7;
    v20 = [v19 countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v37;
LABEL_6:
      v23 = 0;
      while (1)
      {
        if (*v37 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = [*(*(&v36 + 1) + 8 * v23) localDate];
        v25 = [MEMORY[0x277D276A8] isWeekendDate:v24];

        if (v25)
        {
          break;
        }

        if (v21 == ++v23)
        {
          v21 = [v19 countByEnumeratingWithState:&v36 objects:v40 count:16];
          if (v21)
          {
            goto LABEL_6;
          }

          goto LABEL_12;
        }
      }

      v9 = v35;
      if (a4)
      {
        goto LABEL_20;
      }

      v29 = [*(a1 + 48) count];
      v30 = [[PGMeaningfulEventSceneCollectionTrait alloc] initWithNodes:*(a1 + 48) negativeNodes:*(a1 + 56)];
      -[PGMeaningfulEventTrait setMinimumScore:](v30, "setMinimumScore:", 1.0 / [*(a1 + 48) count]);
      [(PGMeaningfulEventCriteria *)v10 setScenesTrait:v30];

      if (v29)
      {
        goto LABEL_20;
      }

      goto LABEL_18;
    }

LABEL_12:

    if (a4)
    {
      v26 = 0;
      v9 = v35;
      goto LABEL_23;
    }

    v31 = [[PGMeaningfulEventPartOfDayTrait alloc] initWithPartOfDay:56];
    [(PGMeaningfulEventTrait *)v31 setMinimumScore:0.2];
    [(PGMeaningfulEventCriteria *)v10 setSignificantPartsOfDayTrait:v31];

    v9 = v35;
  }

  else
  {
    if (![*(a1 + 64) count])
    {
LABEL_18:
      v26 = 0;
      goto LABEL_23;
    }

    v27 = [[PGMeaningfulEventSceneCollectionTrait alloc] initWithNodes:*(a1 + 64) negativeNodes:*(a1 + 56)];
    -[PGMeaningfulEventTrait setMinimumScore:](v27, "setMinimumScore:", 1.0 / [*(a1 + 64) count]);
    [(PGMeaningfulEventSceneCollectionTrait *)v27 setMinimumNumberOfHighConfidenceAssets:2];
    [(PGMeaningfulEventCriteria *)v10 setScenesTrait:v27];
    v28 = [[PGMeaningfulEventNumberTrait alloc] initWithNumberValue:5.0];
    [(PGMeaningfulEventTrait *)v28 setMinimumScore:1.0];
    [(PGMeaningfulEventCriteria *)v10 setNumberOfPeopleTrait:v28];
  }

LABEL_20:
  v32 = [*(a1 + 40) localIdentifier];
  if ([v32 length])
  {
    [(PGMeaningfulEventRequiredCriteria *)v10 setAdditionalInfoForKey:@"personLocalIdentifier" value:v32];
  }

  v26 = v10;

LABEL_23:
  v33 = *MEMORY[0x277D85DE8];

  return v26;
}

unint64_t __129__PGMeaningfulEventRequiredCriteriaFactory__birthdayCriteriaWithGraph_strongBirthdayCriteria_weakBirthdayCriteria_sceneTaxonomy___block_invoke_3(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [a2 category];
  if (result <= 4 && ((1 << result) & 0x16) != 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

+ (id)availablePersonActivityMeaningLabels
{
  v5[6] = *MEMORY[0x277D85DE8];
  v5[0] = @"PersonBeachWater";
  v5[1] = @"PersonToys";
  v5[2] = @"PersonPlayground";
  v5[3] = @"PersonActionSwimming";
  v5[4] = @"PersonActionPlayingOnASwing";
  v5[5] = @"PersonActionPlayingOnASlide";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:6];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)availableMeaningLabels
{
  v5[25] = *MEMORY[0x277D85DE8];
  v5[0] = @"Wedding";
  v5[1] = @"Birthday";
  v5[2] = @"Anniversary";
  v5[3] = @"Celebration";
  v5[4] = @"Concert";
  v5[5] = @"Festival";
  v5[6] = @"Theater";
  v5[7] = @"Dance";
  v5[8] = @"Museum";
  v5[9] = @"AmusementPark";
  v5[10] = @"Performance";
  v5[11] = @"Hiking";
  v5[12] = @"Climbing";
  v5[13] = @"Beaching";
  v5[14] = @"SportEvent";
  v5[15] = @"WinterSport";
  v5[16] = @"Diving";
  v5[17] = @"Activity";
  v5[18] = @"Lunch";
  v5[19] = @"Dinner";
  v5[20] = @"Restaurant";
  v5[21] = @"NightOut";
  v5[22] = @"Entertainment";
  v5[23] = @"HolidayEvent";
  v5[24] = @"Gathering";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:25];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)_requiredCriteriaForIdentifiers:(id)a3 inferenceType:(unint64_t)a4 graph:(id)a5 sceneTaxonomy:(id)a6
{
  v56[3] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [MEMORY[0x277CBEB38] dictionary];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __110__PGMeaningfulEventRequiredCriteriaFactory__requiredCriteriaForIdentifiers_inferenceType_graph_sceneTaxonomy___block_invoke;
  aBlock[3] = &unk_2788814B8;
  v14 = v13;
  v55 = v14;
  v15 = _Block_copy(aBlock);
  if (v10)
  {
    if ([v10 containsObject:@"Wedding"])
    {
      v16 = [a1 _weddingCriteriaWithGraph:v11 sceneTaxonomy:v12];
      [v14 setObject:v16 forKeyedSubscript:@"Wedding"];
    }

    if (([v10 containsObject:@"Birthday"] & 1) == 0 && (objc_msgSend(v10, "containsObject:", @"WeakBirthday") & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v17 = [a1 _weddingCriteriaWithGraph:v11 sceneTaxonomy:v12];
    [v14 setObject:v17 forKeyedSubscript:@"Wedding"];
  }

  v52 = 0;
  v53 = 0;
  [a1 _birthdayCriteriaWithGraph:v11 strongBirthdayCriteria:&v53 weakBirthdayCriteria:&v52 sceneTaxonomy:v12];
  v18 = v53;
  v19 = v52;
  if (v10)
  {
    if ([v10 containsObject:@"Birthday"])
    {
      [v14 setObject:v18 forKeyedSubscript:@"Birthday"];
    }

    if (([v10 containsObject:@"WeakBirthday"] & 1) == 0)
    {

      goto LABEL_15;
    }
  }

  else
  {
    [v14 setObject:v18 forKeyedSubscript:@"Birthday"];
  }

  [v14 setObject:v19 forKeyedSubscript:@"WeakBirthday"];

  if (!v10)
  {
    v21 = [a1 _anniversaryCriteriaWithGraph:v11];
    [v14 setObject:v21 forKeyedSubscript:@"Anniversary"];

    goto LABEL_20;
  }

LABEL_15:
  if ([v10 containsObject:@"Anniversary"])
  {
    v20 = [a1 _anniversaryCriteriaWithGraph:v11];
    [v14 setObject:v20 forKeyedSubscript:@"Anniversary"];
  }

  if (([v10 containsObject:@"Celebration"] & 1) == 0)
  {
LABEL_21:
    if ([v10 containsObject:@"Performance"])
    {
      v23 = [a1 _performanceCriteriaWithGraph:v11];
      v15[2](v15, @"Performance", v23);
    }

    if (([v10 containsObject:@"Concert"] & 1) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_20:
  v22 = [a1 _celebrationCriteriaWithGraph:v11];
  v15[2](v15, @"Celebration", v22);

  if (v10)
  {
    goto LABEL_21;
  }

  v24 = [a1 _performanceCriteriaWithGraph:v11];
  v15[2](v15, @"Performance", v24);

LABEL_26:
  v25 = [a1 _concertCriteriaArrayForInferenceType:a4 graph:v11];
  [v14 setObject:v25 forKeyedSubscript:@"Concert"];

  if (!v10)
  {
    v27 = [a1 _festivalCriteriaArrayWithGraph:v11];
    [v14 setObject:v27 forKeyedSubscript:@"Festival"];

    goto LABEL_32;
  }

LABEL_27:
  if ([v10 containsObject:@"Festival"])
  {
    v26 = [a1 _festivalCriteriaArrayWithGraph:v11];
    [v14 setObject:v26 forKeyedSubscript:@"Festival"];
  }

  if (([v10 containsObject:@"Theater"] & 1) == 0)
  {
LABEL_33:
    if ([v10 containsObject:@"Dance"])
    {
      v29 = [a1 _danceCriteriaWithGraph:v11];
      v15[2](v15, @"Dance", v29);
    }

    if (([v10 containsObject:@"Hiking"] & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

LABEL_32:
  v28 = [a1 _theaterCriteriaWithGraph:v11];
  v15[2](v15, @"Theater", v28);

  if (v10)
  {
    goto LABEL_33;
  }

  v30 = [a1 _danceCriteriaWithGraph:v11];
  v15[2](v15, @"Dance", v30);

LABEL_38:
  v31 = [a1 _hikingCriteriaWithGraph:v11 sceneTaxonomy:v12];
  [v14 setObject:v31 forKeyedSubscript:@"Hiking"];

  if (!v10)
  {
    v33 = [a1 _climbingCriteriaWithGraph:v11 sceneTaxonomy:v12];
    v15[2](v15, @"Climbing", v33);

    goto LABEL_44;
  }

LABEL_39:
  if ([v10 containsObject:@"Climbing"])
  {
    v32 = [a1 _climbingCriteriaWithGraph:v11 sceneTaxonomy:v12];
    v15[2](v15, @"Climbing", v32);
  }

  if (([v10 containsObject:@"Beaching"] & 1) == 0)
  {
LABEL_45:
    if ([v10 containsObject:@"SportEvent"])
    {
      v35 = [a1 _sportEventCriteriaArrayForInferenceType:a4 graph:v11];
      [v14 setObject:v35 forKeyedSubscript:@"SportEvent"];
    }

    if (([v10 containsObject:@"WinterSport"] & 1) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

LABEL_44:
  v34 = [a1 _beachingCriteriaWithGraph:v11 sceneTaxonomy:v12];
  v15[2](v15, @"Beaching", v34);

  if (v10)
  {
    goto LABEL_45;
  }

  v36 = [a1 _sportEventCriteriaArrayForInferenceType:a4 graph:v11];
  [v14 setObject:v36 forKeyedSubscript:@"SportEvent"];

LABEL_50:
  v37 = [a1 _winterSportCriteriaWithGraph:v11 sceneTaxonomy:v12];
  v15[2](v15, @"WinterSport", v37);

  if (!v10)
  {
    v40 = [a1 _divingCriteriaWithGraph:v11 sceneTaxonomy:v12];
    v15[2](v15, @"Diving", v40);

    v56[0] = @"Lunch";
    v56[1] = @"Dinner";
    v56[2] = @"Breakfast";
    v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:3];
    goto LABEL_60;
  }

LABEL_51:
  if ([v10 containsObject:@"Diving"])
  {
    v38 = [a1 _divingCriteriaWithGraph:v11 sceneTaxonomy:v12];
    v15[2](v15, @"Diving", v38);
  }

  v39 = [MEMORY[0x277CBEB18] array];
  if ([v10 containsObject:@"Lunch"])
  {
    [v39 addObject:@"Lunch"];
  }

  if ([v10 containsObject:@"Dinner"])
  {
    [v39 addObject:@"Dinner"];
  }

  if ([v10 containsObject:@"Breakfast"])
  {
    [v39 addObject:@"Breakfast"];
  }

LABEL_60:
  if ([v39 count])
  {
    v41 = [a1 _restaurantCriteriaByCriteriaForIdentifiers:v39 withGraph:v11 sceneTaxonomy:v12];
    [v14 addEntriesFromDictionary:v41];
  }

  if (v10)
  {
    if ([v10 containsObject:@"NightOut"])
    {
      v42 = [a1 _nightOutCriteriaArrayWithGraph:v11 sceneTaxonomy:v12];
      [v14 setObject:v42 forKeyedSubscript:@"NightOut"];
    }

    if (([v10 containsObject:@"Entertainment"] & 1) == 0)
    {
LABEL_69:
      if ([v10 containsObject:@"AmusementPark"])
      {
        v45 = [a1 _amusementParkCriteriaArrayWithGraph:v11 sceneTaxonomy:v12];
        [v14 setObject:v45 forKeyedSubscript:@"AmusementPark"];
      }

      if (([v10 containsObject:@"Museum"] & 1) == 0)
      {
        goto LABEL_75;
      }

      goto LABEL_74;
    }
  }

  else
  {
    v43 = [a1 _nightOutCriteriaArrayWithGraph:v11 sceneTaxonomy:v12];
    [v14 setObject:v43 forKeyedSubscript:@"NightOut"];
  }

  v44 = [a1 _entertainmentCriteriaWithGraph:v11];
  v15[2](v15, @"Entertainment", v44);

  if (v10)
  {
    goto LABEL_69;
  }

  v46 = [a1 _amusementParkCriteriaArrayWithGraph:v11 sceneTaxonomy:v12];
  [v14 setObject:v46 forKeyedSubscript:@"AmusementPark"];

LABEL_74:
  v47 = [a1 _museumCriteriaArrayForInferenceType:a4 graph:v11];
  [v14 setObject:v47 forKeyedSubscript:@"Museum"];

  if (!v10)
  {
LABEL_76:
    v48 = [a1 _socialGroupGatheringCriteriaWithGraph:v11];
    [v14 setObject:v48 forKeyedSubscript:@"Gathering"];

    goto LABEL_77;
  }

LABEL_75:
  if ([v10 containsObject:@"Gathering"])
  {
    goto LABEL_76;
  }

LABEL_77:
  v49 = v14;

  v50 = *MEMORY[0x277D85DE8];
  return v14;
}

void __110__PGMeaningfulEventRequiredCriteriaFactory__requiredCriteriaForIdentifiers_inferenceType_graph_sceneTaxonomy___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v10 = a3;
    v5 = MEMORY[0x277CBEA60];
    v6 = a3;
    v7 = a2;
    v8 = [v5 arrayWithObjects:&v10 count:1];
    [*(a1 + 32) setObject:v8 forKeyedSubscript:{v7, v10, v11}];
  }

  v9 = *MEMORY[0x277D85DE8];
}

+ (id)requiredCriteriaForIdentifiers:(id)a3 inferenceType:(unint64_t)a4 graph:(id)a5 sceneTaxonomy:(id)a6
{
  v10 = MEMORY[0x277CBEB98];
  v11 = a6;
  v12 = a5;
  v13 = [v10 setWithArray:a3];
  v14 = [a1 _requiredCriteriaForIdentifiers:v13 inferenceType:a4 graph:v12 sceneTaxonomy:v11];

  return v14;
}

@end