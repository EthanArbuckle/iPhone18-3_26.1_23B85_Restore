@interface PGMeaningfulEventLooseRequiredCriteriaFactory
+ (id)_amusementParkCriteriaArrayWithGraph:(id)a3 sceneTaxonomy:(id)a4;
+ (id)_anniversaryCriteriaWithGraph:(id)a3;
+ (id)_beachingCriteriaWithGraph:(id)a3 sceneTaxonomy:(id)a4;
+ (id)_beachingSceneNodesWithGraph:(id)a3;
+ (id)_celebrationCriteriaWithGraph:(id)a3;
+ (id)_climbingCriteriaWithGraph:(id)a3 sceneTaxonomy:(id)a4;
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
+ (id)_requiredCriteriaForIdentifiers:(id)a3 graph:(id)a4 sceneTaxonomy:(id)a5;
+ (id)_restaurantCriteriaByCriteriaForIdentifiers:(id)a3 withGraph:(id)a4 sceneTaxonomy:(id)a5;
+ (id)_socialGroupGatheringCriteriaWithGraph:(id)a3;
+ (id)_specialAmusementParkCriteriaWithGraph:(id)a3;
+ (id)_sportEventCriteriaArrayForMeaningInferenceWithGraph:(id)a3;
+ (id)_sportEventCriteriaArrayForPublicEventInferenceWithGraph:(id)a3;
+ (id)_sportEventScenesTraitWithGraph:(id)a3;
+ (id)_theaterCriteriaWithGraph:(id)a3;
+ (id)_weddingCriteriaWithGraph:(id)a3 sceneTaxonomy:(id)a4;
+ (id)_weddingSceneNodesWithGraph:(id)a3 includeWedding:(BOOL)a4 sceneTaxonomy:(id)a5;
+ (id)_winterSportCriteriaWithGraph:(id)a3 sceneTaxonomy:(id)a4;
+ (id)_winterSportSceneNodesWithGraph:(id)a3 sceneTaxonomy:(id)a4;
+ (id)requiredCriteriaForIdentifiers:(id)a3 graph:(id)a4 sceneTaxonomy:(id)a5;
+ (void)_birthdayCriteriaWithGraph:(id)a3 strongBirthdayCriteria:(id *)a4 weakBirthdayCriteria:(id *)a5 sceneTaxonomy:(id)a6;
@end

@implementation PGMeaningfulEventLooseRequiredCriteriaFactory

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
  v5 = [a1 _museumSceneNodesInGraph:a3];
  v6 = [v5 count];
  if (v6)
  {
    v7 = v6;
    v8 = [[PGMeaningfulEventSceneCollectionTrait alloc] initWithNodes:v5];
    [(PGMeaningfulEventTrait *)v8 setMinimumScore:1.0 / v7];
    [(PGMeaningfulEventSceneCollectionTrait *)v8 setMinimumNumberOfHighConfidenceAssets:a4];
    v9 = vcvtas_u32_f32(vcvts_n_f32_u64(a4, 1uLL));
    if (v9 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }

    [(PGMeaningfulEventSceneCollectionTrait *)v8 setMinimumNumberOfNegativeHighConfidenceAssets:v10];
    [(PGMeaningfulEventSceneCollectionTrait *)v8 setAccumulateHighConfidenceAssetCounts:1];
  }

  else
  {
    v8 = 0;
  }

  return v8;
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
  v16[2] = __106__PGMeaningfulEventLooseRequiredCriteriaFactory__weddingSceneNodesWithGraph_includeWedding_sceneTaxonomy___block_invoke;
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
    v11[2] = __95__PGMeaningfulEventLooseRequiredCriteriaFactory__winterSportSceneNodesWithGraph_sceneTaxonomy___block_invoke;
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
  v3 = MEMORY[0x277CBEB98];
  v4 = a3;
  v5 = [v3 setWithObjects:{@"sumo", @"badminton", @"softball", @"soccer", @"cricket_sport", @"rugby", @"scoreboard", @"tennis", @"cheerleading", @"polo", @"hockey", @"football", @"grand_prix", @"jockey_horse", @"wrestling", @"baseball", @"motorsport", @"basketball", @"rink", @"arena", @"motocross", @"stadium", @"ballgames", 0}];
  v6 = [v4 sceneNodesForSceneNames:v5];

  if ([v6 count])
  {
    v7 = [[PGMeaningfulEventSceneCollectionTrait alloc] initWithNodes:v6];
    -[PGMeaningfulEventTrait setMinimumScore:](v7, "setMinimumScore:", 1.0 / [v6 count]);
  }

  else
  {
    v7 = 0;
  }

  return v7;
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
  v55[2] = __88__PGMeaningfulEventLooseRequiredCriteriaFactory__socialGroupGatheringCriteriaWithGraph___block_invoke;
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
      v46[2] = __88__PGMeaningfulEventLooseRequiredCriteriaFactory__socialGroupGatheringCriteriaWithGraph___block_invoke_3;
      v46[3] = &unk_278881638;
      v46[4] = &v51;
      v15 = v35;
      [MEMORY[0x277D27688] calculateStandardDeviationForItems:v35 valueBlock:&__block_literal_global_526 result:v46];
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

void __88__PGMeaningfulEventLooseRequiredCriteriaFactory__socialGroupGatheringCriteriaWithGraph___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 numberOfMemberNodes] >= *(a1 + 40))
  {
    [*(a1 + 32) addObject:v3];
  }
}

double __88__PGMeaningfulEventLooseRequiredCriteriaFactory__socialGroupGatheringCriteriaWithGraph___block_invoke_3(uint64_t a1, double a2, double a3)
{
  result = a2 + a3;
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

+ (id)_specialAmusementParkCriteriaWithGraph:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v11[0] = @"AmusementPark";
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v5 = [PGGraphPOINodeCollection poiNodesForLabels:v4 inGraph:v3];

  if ([v5 count])
  {
    v6 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:@"AmusementPark" minimumScore:v3 graph:0.4];
    v7 = [[PGMeaningfulEventCollectionTrait alloc] initWithNodes:v5];
    [(PGMeaningfulEventTrait *)v7 setMinimumScore:0.7];
    [(PGMeaningfulEventCollectionTrait *)v7 setAdditionalMatchingBlock:&__block_literal_global_17892];
    [(PGMeaningfulEventCriteria *)v6 setPoisTrait:v7];
    v8 = [PGMeaningfulEventRequiredCriteriaFactory locationsTraitNotMatchingPeopleHomeWorkLocationsForGraph:v3];
    [(PGMeaningfulEventCriteria *)v6 setLocationsTrait:v8];
  }

  else
  {
    v6 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v6;
}

BOOL __88__PGMeaningfulEventLooseRequiredCriteriaFactory__specialAmusementParkCriteriaWithGraph___block_invoke(uint64_t a1, void *a2, void *a3)
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
    v26[2] = __100__PGMeaningfulEventLooseRequiredCriteriaFactory__amusementParkCriteriaArrayWithGraph_sceneTaxonomy___block_invoke;
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
    v25 = [[PGMeaningfulEventSceneCollectionTrait alloc] initWithNodes:v13];
    -[PGMeaningfulEventTrait setMinimumScore:](v25, "setMinimumScore:", 1.0 / [v13 count]);
    [(PGMeaningfulEventCriteria *)v16 setScenesTrait:v25];
    v17 = [[PGMeaningfulEventCollectionTrait alloc] initWithNodes:v15];
    [(PGMeaningfulEventTrait *)v17 setMinimumScore:0.7];
    [(PGMeaningfulEventCriteria *)v16 setPoisTrait:v17];
    [PGMeaningfulEventRequiredCriteriaFactory locationsTraitNotMatchingPeopleHomeWorkLocationsForGraph:v6];
    v18 = v12;
    v19 = v11;
    v20 = v10;
    v22 = v21 = v9;
    [(PGMeaningfulEventCriteria *)v16 setLocationsTrait:v22];
    [v21 addObject:v16];

    v9 = v21;
    v10 = v20;
    v11 = v19;
    v12 = v18;
  }

  v23 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)_entertainmentCriteriaWithGraph:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = +[PGMeaningfulEventRequiredCriteriaFactory entertainmentSceneTaxonomyNames];
  v5 = [v3 sceneNodesForSceneNames:v4];
  v13[0] = @"Entertainment";
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v7 = [PGGraphPOINodeCollection poiNodesForLabels:v6 inGraph:v3];

  if ([v7 count])
  {
    v8 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:@"Entertainment" minimumScore:v3 graph:0.4];
    if ([v5 count])
    {
      v9 = [[PGMeaningfulEventSceneCollectionTrait alloc] initWithNodes:v5];
      -[PGMeaningfulEventTrait setMinimumScore:](v9, "setMinimumScore:", 1.0 / [v5 count]);
      [(PGMeaningfulEventCriteria *)v8 setScenesTrait:v9];
    }

    v10 = [[PGMeaningfulEventCollectionTrait alloc] initWithNodes:v7];
    [(PGMeaningfulEventTrait *)v10 setMinimumScore:0.7];
    [(PGMeaningfulEventCriteria *)v8 setPoisTrait:v10];
  }

  else
  {
    v8 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)_beachingCriteriaWithGraph:(id)a3 sceneTaxonomy:(id)a4
{
  v21[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [a1 _beachingSceneNodesWithGraph:v6];
  if ([v8 count])
  {
    v21[0] = @"Beach";
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
    v10 = [PGGraphROINodeCollection roiNodesForLabels:v9 inGraph:v6];

    v11 = [a1 _winterSportSceneNodesWithGraph:v6 sceneTaxonomy:v7];
    v12 = [a1 _negativeHikingSceneNodesWithGraph:v6];
    v13 = [v11 collectionByFormingUnionWith:v12];

    v14 = [a1 _negativeSceneNodesForBeachingWithGraph:v6];
    v15 = [v13 collectionByFormingUnionWith:v14];

    v16 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:@"Beaching" minimumScore:v6 graph:0.4];
    v17 = [[PGMeaningfulEventSceneCollectionTrait alloc] initWithNodes:v8 negativeNodes:v15];
    -[PGMeaningfulEventTrait setMinimumScore:](v17, "setMinimumScore:", 1.0 / [v8 count]);
    [(PGMeaningfulEventSceneCollectionTrait *)v17 setMinimumNumberOfHighConfidenceAssets:1];
    [(PGMeaningfulEventSceneCollectionTrait *)v17 setMinimumNumberOfNegativeHighConfidenceAssets:4];
    [(PGMeaningfulEventCriteria *)v16 setScenesTrait:v17];
    if ([v10 count])
    {
      v18 = [[PGMeaningfulEventCollectionTrait alloc] initWithNodes:v10];
      [(PGMeaningfulEventTrait *)v18 setMinimumScore:1.0];
      [(PGMeaningfulEventCriteria *)v16 setRoisTrait:v18];
    }

    [(PGMeaningfulEventRequiredCriteria *)v16 setMustBeInteresting:0];
  }

  else
  {
    v16 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (id)_climbingCriteriaWithGraph:(id)a3 sceneTaxonomy:(id)a4
{
  v17[4] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [MEMORY[0x277CBEB98] setWithObject:@"rock_climbing"];
  v7 = [v5 sceneNodesForSceneNames:v6];

  if ([v7 count])
  {
    v17[0] = @"Mountain";
    v17[1] = @"Nature";
    v17[2] = @"Beach";
    v17[3] = @"Water";
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:4];
    v9 = [PGGraphROINodeCollection roiNodesForLabels:v8 inGraph:v5];

    v10 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:@"Climbing" minimumScore:v5 graph:0.4];
    if ([v9 count])
    {
      v11 = [[PGMeaningfulEventCollectionTrait alloc] initWithNodes:v9];
      [(PGMeaningfulEventTrait *)v11 setMinimumScore:0.25];
      [(PGMeaningfulEventCriteria *)v10 setRoisTrait:v11];
    }

    v12 = [[PGMeaningfulEventNumberTrait alloc] initWithNumberValue:1.0];
    [(PGMeaningfulEventTrait *)v12 setMinimumScore:1.0];
    [(PGMeaningfulEventCriteria *)v10 setNumberOfPeopleTrait:v12];
    v13 = [a1 _divingSceneNodesWithGraph:v5];
    v14 = [[PGMeaningfulEventSceneCollectionTrait alloc] initWithNodes:v7 negativeNodes:v13];
    [(PGMeaningfulEventSceneCollectionTrait *)v14 setMinimumNumberOfHighConfidenceAssets:2];
    [(PGMeaningfulEventTrait *)v14 setMinimumScore:1.0];
    [(PGMeaningfulEventSceneCollectionTrait *)v14 setMinimumRatioOfHighConfidenceAssets:0.5];
    [(PGMeaningfulEventCriteria *)v10 setScenesTrait:v14];
    [(PGMeaningfulEventRequiredCriteria *)v10 setMustBeInteresting:0];
  }

  else
  {
    v10 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)_hikingCriteriaWithGraph:(id)a3 sceneTaxonomy:(id)a4
{
  v31[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [a1 _hikingSceneNodesWithGraph:v5];
  v31[0] = @"Hiking";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];
  v8 = [PGGraphPOINodeCollection poiNodesForLabels:v7 inGraph:v5];

  v30[0] = @"Mountain";
  v30[1] = @"Nature";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];
  v10 = [PGGraphROINodeCollection roiNodesForLabels:v9 inGraph:v5];

  if ([v6 count] && (objc_msgSend(v8, "count") || objc_msgSend(v10, "count")))
  {
    v26 = [MEMORY[0x277CBEB98] setWithObjects:{@"gown", @"suit", @"necktie", @"vineyard", @"cycling", @"bicycle", @"golf", @"skydiving", @"sport", 0}];
    v11 = [v5 sceneNodesForSceneNames:v26];
    v12 = [a1 _beachingSceneNodesWithGraph:v5];
    v13 = [v11 collectionByFormingUnionWith:v12];

    v14 = [a1 _divingSceneNodesWithGraph:v5];
    v25 = [v13 collectionByFormingUnionWith:v14];

    v28 = v8;
    v15 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:@"Hiking" minimumScore:v5 graph:0.4];
    v16 = [[PGMeaningfulEventSceneCollectionTrait alloc] initWithNodes:v6 negativeNodes:v25];
    -[PGMeaningfulEventTrait setMinimumScore:](v16, "setMinimumScore:", 1.0 / [v6 count]);
    [(PGMeaningfulEventCriteria *)v15 setScenesTrait:v16];
    v27 = v10;
    v17 = [[PGMeaningfulEventCollectionTrait alloc] initWithNodes:v10];
    [(PGMeaningfulEventTrait *)v17 setMinimumScore:0.5];
    [(PGMeaningfulEventCriteria *)v15 setRoisTrait:v17];
    v18 = [[PGMeaningfulEventLocationMobilityTrait alloc] initWithMobility:1];
    [(PGMeaningfulEventTrait *)v18 setMinimumScore:0.9];
    [(PGMeaningfulEventCriteria *)v15 setLocationMobilityTrait:v18];
    v19 = [PGMeaningfulEventRequiredCriteriaFactory locationsTraitNotMatchingFrequentLocationsForGraph:v5];
    [(PGMeaningfulEventCriteria *)v15 setLocationsTrait:v19];
    [(PGMeaningfulEventRequiredCriteria *)v15 setMustBeInteresting:1];
    v20 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:@"Hiking" minimumScore:v5 graph:0.4];
    -[PGMeaningfulEventTrait setMinimumScore:](v16, "setMinimumScore:", 1.0 / [v6 count]);
    [(PGMeaningfulEventCriteria *)v20 setScenesTrait:v16];
    v21 = [[PGMeaningfulEventCollectionTrait alloc] initWithNodes:v8];
    [(PGMeaningfulEventTrait *)v21 setMinimumScore:0.5];
    [(PGMeaningfulEventCriteria *)v20 setPoisTrait:v21];
    [(PGMeaningfulEventTrait *)v18 setMinimumScore:0.9];
    [(PGMeaningfulEventCriteria *)v20 setLocationMobilityTrait:v18];
    [(PGMeaningfulEventCriteria *)v20 setLocationsTrait:v19];
    [(PGMeaningfulEventRequiredCriteria *)v20 setMustBeInteresting:1];
    v29[0] = v15;
    v29[1] = v20;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];

    v8 = v28;
    v10 = v27;
  }

  else
  {
    v22 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

+ (id)_restaurantCriteriaByCriteriaForIdentifiers:(id)a3 withGraph:(id)a4 sceneTaxonomy:(id)a5
{
  v103[2] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [a5 nodeForName:@"tableware"];
  v10 = [MEMORY[0x277CBEB58] setWithObjects:{@"restaurant", @"food", 0}];
  v11 = [MEMORY[0x277CBEB58] setWithObjects:{@"wine_bottle", @"wine", 0}];
  v86[0] = MEMORY[0x277D85DD0];
  v86[1] = 3221225472;
  v86[2] = __117__PGMeaningfulEventLooseRequiredCriteriaFactory__restaurantCriteriaByCriteriaForIdentifiers_withGraph_sceneTaxonomy___block_invoke;
  v86[3] = &unk_2788884F0;
  v12 = v11;
  v87 = v12;
  v65 = v9;
  [v9 traverseChildrenUsingNameBlock:v86];
  v64 = v10;
  v13 = [v8 sceneNodesForSceneNames:v10];
  v14 = [v8 sceneNodesForSceneNames:v12];
  v73 = v13;
  v15 = [v13 collectionByFormingUnionWith:v14];
  v63 = [MEMORY[0x277CBEB98] setWithObjects:{@"aquarium", @"underwater", 0}];
  v68 = [v8 sceneNodesForSceneNames:?];
  v103[0] = @"Nightlife";
  v103[1] = @"Restaurant";
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v103 count:2];
  v17 = [PGGraphPOINodeCollection poiNodesForLabels:v16 inGraph:v8];

  v102 = @"Museum";
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v102 count:1];
  v74 = v8;
  v66 = [PGGraphPOINodeCollection poiNodesForLabels:v18 inGraph:v8];

  v72 = v15;
  if ([v15 count] && objc_msgSend(v17, "count"))
  {
    v67 = v17;
    v61 = v14;
    v62 = v12;
    v99[0] = @"label";
    v99[1] = @"significantPartsOfDay";
    v71 = v7;
    v100[0] = @"Lunch";
    v100[1] = &unk_284482EC8;
    v99[2] = @"forbiddenPartOfDay";
    v99[3] = @"minimumNumberOfHighConfidenceScenes";
    v100[2] = &unk_284482EE0;
    v100[3] = &unk_284482E98;
    v19 = MEMORY[0x277CBEC28];
    v99[4] = @"usePOIs";
    v99[5] = @"useNegativePOIs";
    v100[4] = MEMORY[0x277CBEC28];
    v100[5] = MEMORY[0x277CBEC28];
    v80 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v100 forKeys:v99 count:6];
    v101[0] = v80;
    v97[0] = @"label";
    v97[1] = @"significantPartsOfDay";
    v98[0] = @"Lunch";
    v98[1] = &unk_284482EC8;
    v97[2] = @"forbiddenPartOfDay";
    v97[3] = @"minimumNumberOfHighConfidenceScenes";
    v98[2] = &unk_284482EE0;
    v98[3] = &unk_284482EF8;
    v97[4] = @"usePOIs";
    v97[5] = @"useNegativePOIs";
    v98[4] = MEMORY[0x277CBEC38];
    v20 = MEMORY[0x277CBEC38];
    v98[5] = v19;
    v78 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v98 forKeys:v97 count:6];
    v101[1] = v78;
    v95[0] = @"label";
    v95[1] = @"significantPartsOfDay";
    v96[0] = @"Dinner";
    v96[1] = &unk_284482EE0;
    v95[2] = @"forbiddenPartOfDay";
    v95[3] = @"allPartsOfDay";
    v96[2] = &unk_284482F10;
    v96[3] = &unk_284482F28;
    v95[4] = @"minimumDuration";
    v95[5] = @"minimumNumberOfHighConfidenceScenes";
    v96[4] = &unk_2844870F8;
    v96[5] = &unk_284482E98;
    v95[6] = @"usePOIs";
    v95[7] = @"useNegativePOIs";
    v96[6] = v20;
    v96[7] = v19;
    obja = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v96 forKeys:v95 count:8];
    v101[2] = obja;
    v93[0] = @"label";
    v93[1] = @"significantPartsOfDay";
    v94[0] = @"Dinner";
    v94[1] = &unk_284482EE0;
    v93[2] = @"forbiddenPartOfDay";
    v93[3] = @"allPartsOfDay";
    v94[2] = &unk_284482F10;
    v94[3] = &unk_284482F28;
    v93[4] = @"minimumDuration";
    v93[5] = @"minimumNumberOfHighConfidenceScenes";
    v94[4] = &unk_2844870F8;
    v94[5] = &unk_284482E98;
    v93[6] = @"usePOIs";
    v93[7] = @"useNegativePOIs";
    v94[6] = v19;
    v94[7] = v19;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v94 forKeys:v93 count:8];
    v101[3] = v21;
    v91[0] = @"label";
    v91[1] = @"forbiddenPartOfDay";
    v92[0] = @"Breakfast";
    v92[1] = &unk_284482F40;
    v91[2] = @"significantPartsOfDay";
    v91[3] = @"minimumNumberOfHighConfidenceScenes";
    v92[2] = &unk_284482F58;
    v92[3] = &unk_284482EF8;
    v91[4] = @"usePOIs";
    v91[5] = @"useNegativePOIs";
    v92[4] = MEMORY[0x277CBEC38];
    v92[5] = v19;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v92 forKeys:v91 count:6];
    v101[4] = v22;
    v89[0] = @"label";
    v89[1] = @"forbiddenPartOfDay";
    v90[0] = @"Breakfast";
    v90[1] = &unk_284482F40;
    v89[2] = @"significantPartsOfDay";
    v89[3] = @"minimumNumberOfHighConfidenceScenes";
    v90[2] = &unk_284482F58;
    v90[3] = &unk_284482E98;
    v89[4] = @"usePOIs";
    v89[5] = @"useNegativePOIs";
    v90[4] = v19;
    v90[5] = v19;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v90 forKeys:v89 count:6];
    v101[5] = v23;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v101 count:6];

    v7 = v71;
    v69 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v71, "count")}];
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    obj = v24;
    v25 = [obj countByEnumeratingWithState:&v82 objects:v88 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v83;
      v70 = *v83;
      do
      {
        v28 = 0;
        v75 = v26;
        do
        {
          if (*v83 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v29 = *(*(&v82 + 1) + 8 * v28);
          v30 = [v29 objectForKeyedSubscript:@"label"];
          if ([v7 containsObject:v30])
          {
            v81 = [v29 objectForKeyedSubscript:@"significantPartsOfDay"];
            v79 = [v29 objectForKeyedSubscript:@"forbiddenPartOfDay"];
            v31 = [v29 objectForKeyedSubscript:@"allPartsOfDay"];
            v32 = [v29 objectForKeyedSubscript:@"minimumDuration"];
            v33 = [v29 objectForKeyedSubscript:@"minimumNumberOfHighConfidenceScenes"];
            v34 = [v33 unsignedIntegerValue];

            if (v34 <= 1)
            {
              v35 = 1;
            }

            else
            {
              v35 = v34;
            }

            v36 = [v29 objectForKeyedSubscript:@"usePOIs"];
            v37 = [v36 BOOLValue];

            v38 = [v29 objectForKeyedSubscript:@"useNegativePOIs"];
            v39 = [v38 BOOLValue];

            v40 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:v30 minimumScore:v74 graph:0.6];
            v41 = v73;
            if (!v37)
            {
              v41 = v72;
            }

            v42 = v41;
            v43 = [v42 count];
            if (v43)
            {
              v44 = v43;
              if (v37)
              {
                v45 = [PGMeaningfulEventCollectionTrait alloc];
                if (v39)
                {
                  v46 = [(PGMeaningfulEventCollectionTrait *)v45 initWithNodes:v67 negativeNodes:v66];
                }

                else
                {
                  v46 = [(PGMeaningfulEventCollectionTrait *)v45 initWithNodes:v67];
                }

                v47 = v46;
                [(PGMeaningfulEventTrait *)v46 setMinimumScore:0.7];
                [(PGMeaningfulEventCriteria *)v40 setPoisTrait:v47];
              }

              v48 = 1.0 / v44;
              v49 = [[PGMeaningfulEventSceneCollectionTrait alloc] initWithNodes:v42 negativeNodes:v68];
              [(PGMeaningfulEventTrait *)v49 setMinimumScore:v48];
              [(PGMeaningfulEventSceneCollectionTrait *)v49 setMinimumNumberOfHighConfidenceAssets:v35];
              [(PGMeaningfulEventSceneCollectionTrait *)v49 setAccumulateHighConfidenceAssetCounts:1];
              [(PGMeaningfulEventCriteria *)v40 setScenesTrait:v49];
              v50 = [v81 unsignedIntegerValue];
              if (v79)
              {
                v51 = [v79 unsignedIntegerValue];
              }

              else
              {
                v51 = 1;
              }

              v52 = [[PGMeaningfulEventPartOfDayTrait alloc] initWithPartOfDay:v50 forbiddenPartOfDay:v51];
              [(PGMeaningfulEventTrait *)v52 setMinimumScore:0.75];
              [(PGMeaningfulEventCriteria *)v40 setSignificantPartsOfDayTrait:v52];
              if (v31)
              {
                v53 = -[PGMeaningfulEventPartOfDayTrait initWithPartOfDay:forbiddenPartOfDay:]([PGMeaningfulEventPartOfDayTrait alloc], "initWithPartOfDay:forbiddenPartOfDay:", [v31 unsignedIntegerValue], 1);
                [(PGMeaningfulEventTrait *)v53 setMinimumScore:0.75];
                [(PGMeaningfulEventCriteria *)v40 setAllPartsOfDayTrait:v53];
              }

              if (v32)
              {
                v54 = [PGMeaningfulEventNumberTrait alloc];
                [v32 doubleValue];
                v55 = [(PGMeaningfulEventNumberTrait *)v54 initWithNumberValue:?];
                [(PGMeaningfulEventTrait *)v55 setMinimumScore:1.0];
                [(PGMeaningfulEventCriteria *)v40 setMinimumDurationTrait:v55];
              }

              v56 = [v69 objectForKeyedSubscript:v30];
              if (!v56)
              {
                v56 = [MEMORY[0x277CBEB18] array];
                [v69 setObject:v56 forKeyedSubscript:v30];
              }

              [v56 addObject:v40];
            }

            v27 = v70;
            v7 = v71;
            v26 = v75;
          }

          ++v28;
        }

        while (v26 != v28);
        v26 = [obj countByEnumeratingWithState:&v82 objects:v88 count:16];
      }

      while (v26);
    }

    v58 = v64;
    v57 = v65;
    v14 = v61;
    v12 = v62;
    v17 = v67;
  }

  else
  {
    v69 = MEMORY[0x277CBEC10];
    v58 = v10;
    v57 = v65;
  }

  v59 = *MEMORY[0x277D85DE8];

  return v69;
}

+ (id)_anniversaryCriteriaWithGraph:(id)a3
{
  v3 = a3;
  v4 = [(PGGraphNodeCollection *)PGGraphMeNodeCollection nodesInGraph:v3];
  if ([v4 count])
  {
    v5 = [v4 anyNode];
    v6 = [v5 anniversaryDateComponents];
    if (v6)
    {
      v7 = [MEMORY[0x277CBEB18] array];
      v8 = [v6 year];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __79__PGMeaningfulEventLooseRequiredCriteriaFactory__anniversaryCriteriaWithGraph___block_invoke;
      v13[3] = &unk_278880E08;
      v17 = v8;
      v14 = v6;
      v15 = v3;
      v9 = v7;
      v16 = v9;
      [v15 enumerateNodesWithLabel:@"Year" domain:400 usingBlock:v13];
      v10 = v16;
      v11 = v9;
    }

    else
    {
      v11 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    v11 = MEMORY[0x277CBEBF8];
  }

  return v11;
}

void __79__PGMeaningfulEventLooseRequiredCriteriaFactory__anniversaryCriteriaWithGraph___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 calendarUnitValue];
  if (*(a1 + 56) != v3)
  {
    [*(a1 + 32) setYear:v3];
    v10 = [MEMORY[0x277D27690] dateFromComponents:*(a1 + 32) inTimeZone:0];
    v4 = [*(a1 + 40) dateNodeForLocalDate:?];
    if (v4)
    {
      v5 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:@"Anniversary" minimumScore:*(a1 + 40) graph:0.5];
      v6 = [PGMeaningfulEventCollectionTrait alloc];
      v7 = [v4 collection];
      v8 = [(PGMeaningfulEventCollectionTrait *)v6 initWithNodes:v7];
      [(PGMeaningfulEventCriteria *)v5 setDatesTrait:v8];

      v9 = [(PGMeaningfulEventCriteria *)v5 datesTrait];
      [v9 setMinimumScore:1.0];

      [*(a1 + 48) addObject:v5];
    }
  }
}

+ (id)_nightOutCriteriaArrayWithGraph:(id)a3 sceneTaxonomy:(id)a4
{
  v73 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEB18] array];
  v9 = [[PGMeaningfulEventPartOfDayTrait alloc] initWithPartOfDay:48];
  [(PGMeaningfulEventTrait *)v9 setMinimumScore:0.6];
  v10 = [MEMORY[0x277D27780] nightLife];
  v11 = [a1 _publicEventCriteriaForCategoryWithName:v10 inGraph:v6];

  if (v11)
  {
    [v11 setSignificantPartsOfDayTrait:v9];
    [v8 addObject:v11];
  }

  v44 = v11;
  v45 = v9;
  v51 = v8;
  v50 = [[PGMeaningfulEventPartOfDayTrait alloc] initWithPartOfDay:48 forbiddenPartOfDay:12];
  [(PGMeaningfulEventTrait *)v50 setMinimumScore:0.3];
  v52 = [MEMORY[0x277CBEB58] setWithArray:&unk_2844858C8];
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v12 = [&unk_2844858B0 countByEnumeratingWithState:&v59 objects:v72 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v60;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v60 != v14)
        {
          objc_enumerationMutation(&unk_2844858B0);
        }

        v16 = [v7 nodeForName:*(*(&v59 + 1) + 8 * i)];
        v57[0] = MEMORY[0x277D85DD0];
        v57[1] = 3221225472;
        v57[2] = __95__PGMeaningfulEventLooseRequiredCriteriaFactory__nightOutCriteriaArrayWithGraph_sceneTaxonomy___block_invoke;
        v57[3] = &unk_2788884F0;
        v58 = v52;
        [v16 traverseChildrenUsingNameBlock:v57];
      }

      v13 = [&unk_2844858B0 countByEnumeratingWithState:&v59 objects:v72 count:16];
    }

    while (v13);
  }

  v46 = v7;
  v17 = [v6 sceneNodesForSceneNames:v52];
  v71[0] = @"Nightlife";
  v71[1] = @"Restaurant";
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v71 count:2];
  v19 = [PGGraphPOINodeCollection poiNodesForLabels:v18 inGraph:v6];

  if ([v17 count])
  {
    v68[0] = @"minimumDuration";
    v68[1] = @"minimumNumberOfHighConfidenceScenes";
    v69[1] = &unk_284482E98;
    v68[2] = @"usePOIs";
    v69[0] = &unk_2844870D8;
    v69[2] = MEMORY[0x277CBEC38];
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v69 forKeys:v68 count:3];
    v70[0] = v20;
    v66[0] = @"minimumDuration";
    v66[1] = @"minimumNumberOfHighConfidenceScenes";
    v67[0] = &unk_2844870D8;
    v67[1] = &unk_284482EB0;
    v66[2] = @"usePOIs";
    v67[2] = MEMORY[0x277CBEC28];
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v67 forKeys:v66 count:3];
    v70[1] = v21;
    v64[0] = @"minimumDuration";
    v64[1] = @"minimumNumberOfHighConfidenceScenes";
    v65[0] = &unk_2844870E8;
    v65[1] = &unk_284482EB0;
    v64[2] = @"usePOIs";
    v65[2] = MEMORY[0x277CBEC38];
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v65 forKeys:v64 count:3];
    v70[2] = v22;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v70 count:3];

    v49 = v6;
    v48 = [PGMeaningfulEventRequiredCriteriaFactory locationsTraitNotMatchingPeopleHomeWorkLocationsForGraph:v6];
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    obj = v23;
    v24 = [obj countByEnumeratingWithState:&v53 objects:v63 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v54;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v54 != v26)
          {
            objc_enumerationMutation(obj);
          }

          v28 = *(*(&v53 + 1) + 8 * j);
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

          v37 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:@"NightOut" minimumScore:v49 graph:0.6];
          [(PGMeaningfulEventCriteria *)v37 setLocationsTrait:v48];
          v38 = [[PGMeaningfulEventNumberTrait alloc] initWithNumberValue:3.0];
          [(PGMeaningfulEventCriteria *)v37 setNumberOfPeopleTrait:v38];

          v39 = [[PGMeaningfulEventSceneCollectionTrait alloc] initWithNodes:v17];
          -[PGMeaningfulEventTrait setMinimumScore:](v39, "setMinimumScore:", 1.0 / [v17 count]);
          [(PGMeaningfulEventSceneCollectionTrait *)v39 setMinimumNumberOfHighConfidenceAssets:v34];
          [(PGMeaningfulEventCriteria *)v37 setScenesTrait:v39];
          if ([v19 count] && v36)
          {
            v40 = [[PGMeaningfulEventCollectionTrait alloc] initWithNodes:v19];
            [(PGMeaningfulEventTrait *)v40 setMinimumScore:0.4];
            [(PGMeaningfulEventCriteria *)v37 setPoisTrait:v40];
          }

          [(PGMeaningfulEventRequiredCriteria *)v37 setMustBeInteresting:0];
          v41 = [[PGMeaningfulEventNumberTrait alloc] initWithNumberValue:v31];
          [(PGMeaningfulEventTrait *)v41 setMinimumScore:1.0];
          [(PGMeaningfulEventCriteria *)v37 setMinimumDurationTrait:v41];
          [(PGMeaningfulEventCriteria *)v37 setSignificantPartsOfDayTrait:v50];
          [v51 addObject:v37];
        }

        v25 = [obj countByEnumeratingWithState:&v53 objects:v63 count:16];
      }

      while (v25);
    }

    v6 = v49;
  }

  v42 = *MEMORY[0x277D85DE8];

  return v51;
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

  v8 = [a1 _museumSceneTraitInGraph:v4 minimumNumberOfHighConfidenceAssets:6];
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
    v13 = [[PGMeaningfulEventPartOfDayTrait alloc] initWithPartOfDay:62];
    [(PGMeaningfulEventTrait *)v13 setMinimumScore:0.2];
    [(PGMeaningfulEventCriteria *)v11 setSignificantPartsOfDayTrait:v13];
    v14 = [[PGMeaningfulEventNumberTrait alloc] initWithNumberValue:1800.0];
    [(PGMeaningfulEventTrait *)v14 setMinimumScore:1.0];
    [(PGMeaningfulEventCriteria *)v11 setMinimumDurationTrait:v14];
    v15 = [PGMeaningfulEventRequiredCriteriaFactory locationsTraitNotMatchingPeopleHomeWorkLocationsForGraph:v4];
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
  v5 = [a1 _museumSceneTraitInGraph:v4 minimumNumberOfHighConfidenceAssets:3];
  if (v5)
  {
    v6 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:@"Museum" minimumScore:v4 graph:0.4];
    [(PGMeaningfulEventCriteria *)v6 setScenesTrait:v5];
    v7 = [[PGMeaningfulEventPartOfDayTrait alloc] initWithPartOfDay:62];
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
    [(PGMeaningfulEventSceneCollectionTrait *)v13 setMinimumNumberOfHighConfidenceAssets:5];
    [(PGMeaningfulEventCriteria *)v11 setScenesTrait:v13];
    v14 = [[PGMeaningfulEventNumberTrait alloc] initWithNumberValue:10800.0];
    [(PGMeaningfulEventTrait *)v14 setMinimumScore:1.0];
    [(PGMeaningfulEventCriteria *)v11 setMinimumDurationTrait:v14];
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
    [(PGMeaningfulEventSceneCollectionTrait *)v13 setMinimumNumberOfHighConfidenceAssets:2];
    [(PGMeaningfulEventCriteria *)v12 setScenesTrait:v13];
    v14 = [[PGMeaningfulEventPartOfDayTrait alloc] initWithPartOfDay:60];
    [(PGMeaningfulEventTrait *)v14 setMinimumScore:0.4];
    [(PGMeaningfulEventCriteria *)v12 setSignificantPartsOfDayTrait:v14];
    [v5 addObject:v12];
  }

  return v5;
}

+ (id)_concertCriteriaArrayForMeaningInferenceWithGraph:(id)a3
{
  v20[5] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = [MEMORY[0x277D27780] musicConcerts];
  v7 = [a1 _publicEventCriteriaForCategoryWithName:v6 inGraph:v4];

  if (v7)
  {
    [v5 addObject:v7];
  }

  v8 = [a1 _concertSceneNodesInGraph:v4];
  v20[0] = @"Nightlife";
  v20[1] = @"Culture";
  v20[2] = @"Entertainment";
  v20[3] = @"Stadium";
  v20[4] = @"Performance";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:5];
  v10 = [PGGraphPOINodeCollection poiNodesForLabels:v9 inGraph:v4];

  v11 = [v8 count];
  if (v11)
  {
    v12 = v11;
    v13 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:@"Concert" minimumScore:v4 graph:0.4];
    v14 = [[PGMeaningfulEventNumberTrait alloc] initWithNumberValue:1.0];
    [(PGMeaningfulEventCriteria *)v13 setNumberOfPeopleTrait:v14];

    if ([v10 count])
    {
      v15 = [[PGMeaningfulEventCollectionTrait alloc] initWithNodes:v10];
      [(PGMeaningfulEventTrait *)v15 setMinimumScore:0.1];
      [(PGMeaningfulEventCriteria *)v13 setPoisTrait:v15];
    }

    v16 = [[PGMeaningfulEventSceneCollectionTrait alloc] initWithNodes:v8];
    [(PGMeaningfulEventTrait *)v16 setMinimumScore:1.0 / v12];
    [(PGMeaningfulEventSceneCollectionTrait *)v16 setMinimumNumberOfHighConfidenceAssets:1];
    [(PGMeaningfulEventCriteria *)v13 setScenesTrait:v16];
    v17 = [[PGMeaningfulEventNumberTrait alloc] initWithNumberValue:300.0];
    [(PGMeaningfulEventTrait *)v17 setMinimumScore:1.0];
    [(PGMeaningfulEventCriteria *)v13 setMinimumDurationTrait:v17];
    [v5 addObject:v13];
  }

  v18 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)_performanceCriteriaWithGraph:(id)a3
{
  v14[4] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB98] setWithObjects:{@"entertainer", @"ballet_dancer", @"acrobat", @"clown", @"deejay", @"singer", @"rodeo", @"dancing", @"swing_dancing", @"hula", @"bellydance", @"breakdancing", @"samba", @"karaoke", @"airshow", @"concert", @"orchestra", @"juggling", @"magic", @"circus", @"ballet", @"parade", @"performance", 0}];
  v5 = [v3 sceneNodesForSceneNames:v4];
  if ([v5 count])
  {
    v14[0] = @"Nightlife";
    v14[1] = @"Culture";
    v14[2] = @"Entertainment";
    v14[3] = @"Performance";
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:4];
    v7 = [PGGraphPOINodeCollection poiNodesForLabels:v6 inGraph:v3];

    v8 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:@"Performance" minimumScore:v3 graph:0.4];
    v9 = [[PGMeaningfulEventNumberTrait alloc] initWithNumberValue:2.0];
    [(PGMeaningfulEventCriteria *)v8 setNumberOfPeopleTrait:v9];

    if ([v7 count])
    {
      v10 = [[PGMeaningfulEventCollectionTrait alloc] initWithNodes:v7];
      [(PGMeaningfulEventTrait *)v10 setMinimumScore:0.1];
      [(PGMeaningfulEventCriteria *)v8 setPoisTrait:v10];
    }

    v11 = [[PGMeaningfulEventSceneCollectionTrait alloc] initWithNodes:v5];
    -[PGMeaningfulEventTrait setMinimumScore:](v11, "setMinimumScore:", 1.0 / [v5 count]);
    [(PGMeaningfulEventSceneCollectionTrait *)v11 setMinimumNumberOfHighConfidenceAssets:1];
    [(PGMeaningfulEventCriteria *)v8 setScenesTrait:v11];
  }

  else
  {
    v8 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v8;
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
  v15[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [a1 _winterSportSceneNodesWithGraph:v6 sceneTaxonomy:a4];
  if ([v7 count])
  {
    v15[0] = @"Mountain";
    v15[1] = @"Nature";
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
    v9 = [PGGraphROINodeCollection roiNodesForLabels:v8 inGraph:v6];

    v10 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:@"WinterSport" minimumScore:v6 graph:0.6];
    v11 = [[PGMeaningfulEventSceneCollectionTrait alloc] initWithNodes:v7];
    -[PGMeaningfulEventTrait setMinimumScore:](v11, "setMinimumScore:", 1.0 / [v7 count]);
    [(PGMeaningfulEventCriteria *)v10 setScenesTrait:v11];
    if ([v9 count])
    {
      v12 = [[PGMeaningfulEventCollectionTrait alloc] initWithNodes:v9];
      [(PGMeaningfulEventTrait *)v12 setMinimumScore:0.25];
      [(PGMeaningfulEventCriteria *)v10 setRoisTrait:v12];
    }

    [(PGMeaningfulEventRequiredCriteria *)v10 setMustBeInteresting:0];
  }

  else
  {
    v10 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)_divingCriteriaWithGraph:(id)a3 sceneTaxonomy:(id)a4
{
  v22[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [a1 _divingSceneNodesWithGraph:v6];
  v22[0] = @"Water";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
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
    [(PGMeaningfulEventRequiredCriteria *)v17 setMustBeInteresting:0];
  }

  else
  {
    v17 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];

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
  v20[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = [MEMORY[0x277D27780] sports];
  v7 = [a1 _publicEventCriteriaForCategoryWithName:v6 inGraph:v4];

  if (v7)
  {
    [v5 addObject:v7];
  }

  v8 = [a1 _sportEventScenesTraitWithGraph:v4];
  v20[0] = @"Entertainment";
  v20[1] = @"Stadium";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  v10 = [PGGraphPOINodeCollection poiNodesForLabels:v9 inGraph:v4];

  v11 = [v4 anyNodeForLabel:@"Park" domain:501 properties:0];
  if (v8 && [v10 count])
  {
    v12 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:@"SportEvent" minimumScore:v4 graph:0.4];
    [(PGMeaningfulEventCriteria *)v12 setScenesTrait:v8];
    v13 = [[PGMeaningfulEventNumberTrait alloc] initWithNumberValue:1.0];
    [(PGMeaningfulEventTrait *)v13 setMinimumScore:1.0];
    [(PGMeaningfulEventCriteria *)v12 setNumberOfPeopleTrait:v13];
    v14 = [[PGMeaningfulEventCollectionTrait alloc] initWithNodes:v10];
    [(PGMeaningfulEventTrait *)v14 setMinimumScore:0.25];
    [(PGMeaningfulEventCriteria *)v12 setPoisTrait:v14];
    if (v11)
    {
      v18 = MEMORY[0x277D85DD0];
      v19 = v11;
      v15 = [(PGMeaningfulEventCriteria *)v12 poisTrait:v18];
      [v15 setAdditionalMatchingBlock:&v18];
    }

    [v5 addObject:v12];
  }

  v16 = *MEMORY[0x277D85DE8];

  return v5;
}

BOOL __102__PGMeaningfulEventLooseRequiredCriteriaFactory__sportEventCriteriaArrayForMeaningInferenceWithGraph___block_invoke(uint64_t a1, void *a2, void *a3)
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
    v11[2] = __102__PGMeaningfulEventLooseRequiredCriteriaFactory__sportEventCriteriaArrayForMeaningInferenceWithGraph___block_invoke_2;
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

void __102__PGMeaningfulEventLooseRequiredCriteriaFactory__sportEventCriteriaArrayForMeaningInferenceWithGraph___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 collection];
  v6 = [v5 areaNodes];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __102__PGMeaningfulEventLooseRequiredCriteriaFactory__sportEventCriteriaArrayForMeaningInferenceWithGraph___block_invoke_3;
  v9[3] = &unk_278881558;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v10 = v7;
  v11 = v8;
  v12 = a3;
  [v6 enumerateNodesUsingBlock:v9];
}

void __102__PGMeaningfulEventLooseRequiredCriteriaFactory__sportEventCriteriaArrayForMeaningInferenceWithGraph___block_invoke_3(uint64_t a1, void *a2, _BYTE *a3)
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

+ (id)_celebrationCriteriaWithGraph:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEB98] setWithObjects:{@"graduation", @"disco_ball", @"ceremony", @"wedding", 0}];
  v5 = [v3 sceneNodesForSceneNames:v4];
  if ([v5 count])
  {
    v6 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:@"Celebration" minimumScore:v3 graph:0.4];
    v7 = [[PGMeaningfulEventNumberTrait alloc] initWithNumberValue:2.0];
    [(PGMeaningfulEventTrait *)v7 setMinimumScore:1.0];
    [(PGMeaningfulEventCriteria *)v6 setNumberOfPeopleTrait:v7];
    v8 = [[PGMeaningfulEventSceneCollectionTrait alloc] initWithNodes:v5];
    -[PGMeaningfulEventTrait setMinimumScore:](v8, "setMinimumScore:", 1.0 / [v5 count]);
    [(PGMeaningfulEventSceneCollectionTrait *)v8 setMinimumNumberOfHighConfidenceAssets:5];
    [(PGMeaningfulEventCriteria *)v6 setScenesTrait:v8];
    v9 = [[PGMeaningfulEventNumberTrait alloc] initWithNumberValue:5400.0];
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
  v20[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [a1 _weddingSceneNodesWithGraph:v6 includeWedding:1 sceneTaxonomy:a4];
  if ([v7 count])
  {
    v8 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:@"Wedding" minimumScore:v6 graph:0.4];
    v9 = [[PGMeaningfulEventNumberTrait alloc] initWithNumberValue:2.0];
    [(PGMeaningfulEventTrait *)v9 setMinimumScore:1.0];
    [(PGMeaningfulEventCriteria *)v8 setNumberOfPeopleTrait:v9];
    v10 = [[PGMeaningfulEventSceneCollectionTrait alloc] initWithNodes:v7];
    -[PGMeaningfulEventTrait setMinimumScore:](v10, "setMinimumScore:", 2.0 / [v7 count]);
    [(PGMeaningfulEventSceneCollectionTrait *)v10 setMinimumNumberOfHighConfidenceAssets:2];
    [(PGMeaningfulEventCriteria *)v8 setScenesTrait:v10];
    v11 = [[PGMeaningfulEventNumberTrait alloc] initWithNumberValue:3600.0];
    [(PGMeaningfulEventTrait *)v11 setMinimumScore:1.0];
    [(PGMeaningfulEventCriteria *)v8 setMinimumDurationTrait:v11];
    v12 = [[PGMeaningfulEventPartOfDayTrait alloc] initWithPartOfDay:28];
    [(PGMeaningfulEventTrait *)v12 setMinimumScore:0.1];
    [(PGMeaningfulEventCriteria *)v8 setAllPartsOfDayTrait:v12];
    [(PGMeaningfulEventRequiredCriteria *)v8 setMustBeInteresting:0];
    v13 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:@"Wedding" minimumScore:v6 graph:0.4];
    v14 = [[PGMeaningfulEventNumberTrait alloc] initWithNumberValue:10.0];

    [(PGMeaningfulEventTrait *)v14 setMinimumScore:1.0];
    [(PGMeaningfulEventCriteria *)v13 setNumberOfPeopleTrait:v14];
    v15 = [[PGMeaningfulEventSceneCollectionTrait alloc] initWithNodes:v7];

    -[PGMeaningfulEventTrait setMinimumScore:](v15, "setMinimumScore:", 1.0 / [v7 count]);
    [(PGMeaningfulEventSceneCollectionTrait *)v15 setMinimumNumberOfHighConfidenceAssets:9];
    [(PGMeaningfulEventCriteria *)v13 setScenesTrait:v15];
    v16 = [[PGMeaningfulEventNumberTrait alloc] initWithNumberValue:1800.0];

    [(PGMeaningfulEventTrait *)v16 setMinimumScore:1.0];
    [(PGMeaningfulEventCriteria *)v13 setMinimumDurationTrait:v16];
    [(PGMeaningfulEventCriteria *)v13 setAllPartsOfDayTrait:v12];
    [(PGMeaningfulEventRequiredCriteria *)v13 setMustBeInteresting:0];
    v20[0] = v8;
    v20[1] = v13;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  }

  else
  {
    v17 = MEMORY[0x277CBEBF8];
  }

  v18 = *MEMORY[0x277D85DE8];

  return v17;
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
  aBlock[2] = __134__PGMeaningfulEventLooseRequiredCriteriaFactory__birthdayCriteriaWithGraph_strongBirthdayCriteria_weakBirthdayCriteria_sceneTaxonomy___block_invoke;
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
  v34[2] = __134__PGMeaningfulEventLooseRequiredCriteriaFactory__birthdayCriteriaWithGraph_strongBirthdayCriteria_weakBirthdayCriteria_sceneTaxonomy___block_invoke_5;
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

void __134__PGMeaningfulEventLooseRequiredCriteriaFactory__birthdayCriteriaWithGraph_strongBirthdayCriteria_weakBirthdayCriteria_sceneTaxonomy___block_invoke(id *a1, void *a2)
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
    v26[2] = __134__PGMeaningfulEventLooseRequiredCriteriaFactory__birthdayCriteriaWithGraph_strongBirthdayCriteria_weakBirthdayCriteria_sceneTaxonomy___block_invoke_2;
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
    aBlock[2] = __134__PGMeaningfulEventLooseRequiredCriteriaFactory__birthdayCriteriaWithGraph_strongBirthdayCriteria_weakBirthdayCriteria_sceneTaxonomy___block_invoke_4;
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

void __134__PGMeaningfulEventLooseRequiredCriteriaFactory__birthdayCriteriaWithGraph_strongBirthdayCriteria_weakBirthdayCriteria_sceneTaxonomy___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [v3 calendarUnitValue];
  if (v5 > *(a1 + 64))
  {
    [*(a1 + 32) setYear:v5];
    v6 = [MEMORY[0x277D27690] dateFromComponents:*(a1 + 32) inTimeZone:0];
    v7 = [*(a1 + 40) dateNodeForLocalDate:v6];
    if (v7)
    {
      [*(a1 + 48) addObject:v7];
    }

    if (([MEMORY[0x277D276A8] isWeekendDate:v6] & 1) == 0)
    {
      v22 = 0;
      v23 = 0.0;
      v8 = [MEMORY[0x277D276A8] nextWeekendLocalStartDate:&v22 interval:&v23 options:0 afterDate:v6];
      v9 = v22;
      v10 = v9;
      if (v8)
      {
        v11 = [v9 dateByAddingTimeInterval:v23];
        v16 = v10;
        v12 = v10;
        if ([v12 compare:v11] == 1)
        {
          v13 = v12;
        }

        else
        {
          do
          {
            v14 = [*(a1 + 40) dateNodeForLocalDate:{v12, v16}];
            v15 = v14;
            if (v14 && (!v7 || ([v14 isSameNodeAsNode:v7] & 1) == 0))
            {
              v18 = 0;
              v19 = &v18;
              v20 = 0x2020000000;
              v21 = 0;
              v17[0] = MEMORY[0x277D85DD0];
              v17[1] = 3221225472;
              v17[2] = __134__PGMeaningfulEventLooseRequiredCriteriaFactory__birthdayCriteriaWithGraph_strongBirthdayCriteria_weakBirthdayCriteria_sceneTaxonomy___block_invoke_3;
              v17[3] = &unk_278885C70;
              v17[4] = &v18;
              [v15 enumerateHolidayNodesUsingBlock:v17];
              if ((v19[3] & 1) == 0)
              {
                [*(a1 + 56) addObject:v15];
              }

              _Block_object_dispose(&v18, 8);
            }

            v13 = [MEMORY[0x277D27690] dateByAddingDays:1 toDate:v12];

            v12 = v13;
          }

          while ([v13 compare:v11] != 1);
        }

        v10 = v16;
      }
    }
  }

  objc_autoreleasePoolPop(v4);
}

PGMeaningfulEventRequiredCriteria *__134__PGMeaningfulEventLooseRequiredCriteriaFactory__birthdayCriteriaWithGraph_strongBirthdayCriteria_weakBirthdayCriteria_sceneTaxonomy___block_invoke_4(uint64_t a1, int a2, void *a3, int a4)
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

    v31 = [[PGMeaningfulEventPartOfDayTrait alloc] initWithPartOfDay:58];
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
    [(PGMeaningfulEventSceneCollectionTrait *)v27 setMinimumNumberOfHighConfidenceAssets:1];
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

unint64_t __134__PGMeaningfulEventLooseRequiredCriteriaFactory__birthdayCriteriaWithGraph_strongBirthdayCriteria_weakBirthdayCriteria_sceneTaxonomy___block_invoke_3(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [a2 category];
  if (result <= 4 && ((1 << result) & 0x16) != 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

+ (id)_requiredCriteriaForIdentifiers:(id)a3 graph:(id)a4 sceneTaxonomy:(id)a5
{
  v63[3] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x277CBEB38] dictionary];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __101__PGMeaningfulEventLooseRequiredCriteriaFactory__requiredCriteriaForIdentifiers_graph_sceneTaxonomy___block_invoke;
  aBlock[3] = &unk_2788814B8;
  v12 = v11;
  v62 = v12;
  v13 = _Block_copy(aBlock);
  v14 = MEMORY[0x277CBEBF8];
  if (v8)
  {
    if ([v8 containsObject:@"Wedding"])
    {
      v15 = [a1 _weddingCriteriaWithGraph:v9 sceneTaxonomy:v10];
      [v12 setObject:v15 forKeyedSubscript:@"Wedding"];
    }

    if (([v8 containsObject:@"Birthday"] & 1) == 0 && (objc_msgSend(v8, "containsObject:", @"WeakBirthday") & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v16 = [a1 _weddingCriteriaWithGraph:v9 sceneTaxonomy:v10];
    [v12 setObject:v16 forKeyedSubscript:@"Wedding"];
  }

  v59 = 0;
  v60 = 0;
  [a1 _birthdayCriteriaWithGraph:v9 strongBirthdayCriteria:&v60 weakBirthdayCriteria:&v59 sceneTaxonomy:v10];
  v17 = v60;
  v18 = v59;
  if (v8)
  {
    if ([v8 containsObject:@"Birthday"])
    {
      [v12 setObject:v17 forKeyedSubscript:@"Birthday"];
    }

    if (([v8 containsObject:@"WeakBirthday"] & 1) == 0)
    {

      goto LABEL_15;
    }
  }

  else
  {
    [v12 setObject:v17 forKeyedSubscript:@"Birthday"];
  }

  [v12 setObject:v18 forKeyedSubscript:@"WeakBirthday"];

  if (!v8)
  {
    v20 = [a1 _anniversaryCriteriaWithGraph:v9];
    [v12 setObject:v20 forKeyedSubscript:@"Anniversary"];

    goto LABEL_20;
  }

LABEL_15:
  if ([v8 containsObject:@"Anniversary"])
  {
    v19 = [a1 _anniversaryCriteriaWithGraph:v9];
    [v12 setObject:v19 forKeyedSubscript:@"Anniversary"];
  }

  if (([v8 containsObject:@"Celebration"] & 1) == 0)
  {
LABEL_21:
    if ([v8 containsObject:@"Performance"])
    {
      v22 = [a1 _performanceCriteriaWithGraph:v9];
      v13[2](v13, @"Performance", v22);
    }

    if (([v8 containsObject:@"Concert"] & 1) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_26;
  }

LABEL_20:
  v21 = [a1 _celebrationCriteriaWithGraph:v9];
  v13[2](v13, @"Celebration", v21);

  if (v8)
  {
    goto LABEL_21;
  }

  v23 = [a1 _performanceCriteriaWithGraph:v9];
  v13[2](v13, @"Performance", v23);

LABEL_26:
  v24 = [a1 _concertCriteriaArrayForMeaningInferenceWithGraph:v9];
  v25 = v24;
  if (v24)
  {
    v26 = v24;
  }

  else
  {
    v26 = v14;
  }

  [v12 setObject:v26 forKeyedSubscript:@"Concert"];

  if (!v8)
  {
    v28 = [a1 _festivalCriteriaArrayWithGraph:v9];
    [v12 setObject:v28 forKeyedSubscript:@"Festival"];

    goto LABEL_35;
  }

LABEL_30:
  if ([v8 containsObject:@"Festival"])
  {
    v27 = [a1 _festivalCriteriaArrayWithGraph:v9];
    [v12 setObject:v27 forKeyedSubscript:@"Festival"];
  }

  if (([v8 containsObject:@"Theater"] & 1) == 0)
  {
LABEL_36:
    if ([v8 containsObject:@"Dance"])
    {
      v30 = [a1 _danceCriteriaWithGraph:v9];
      v13[2](v13, @"Dance", v30);
    }

    if (([v8 containsObject:@"Hiking"] & 1) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

LABEL_35:
  v29 = [a1 _theaterCriteriaWithGraph:v9];
  v13[2](v13, @"Theater", v29);

  if (v8)
  {
    goto LABEL_36;
  }

  v31 = [a1 _danceCriteriaWithGraph:v9];
  v13[2](v13, @"Dance", v31);

LABEL_41:
  v32 = [a1 _hikingCriteriaWithGraph:v9 sceneTaxonomy:v10];
  [v12 setObject:v32 forKeyedSubscript:@"Hiking"];

  if (!v8)
  {
    v34 = [a1 _climbingCriteriaWithGraph:v9 sceneTaxonomy:v10];
    v13[2](v13, @"Climbing", v34);

    goto LABEL_47;
  }

LABEL_42:
  if ([v8 containsObject:@"Climbing"])
  {
    v33 = [a1 _climbingCriteriaWithGraph:v9 sceneTaxonomy:v10];
    v13[2](v13, @"Climbing", v33);
  }

  if (([v8 containsObject:@"Beaching"] & 1) == 0)
  {
LABEL_48:
    if ([v8 containsObject:@"SportEvent"])
    {
      v36 = [a1 _sportEventCriteriaArrayForMeaningInferenceWithGraph:v9];
      v37 = v36;
      if (v36)
      {
        v38 = v36;
      }

      else
      {
        v38 = v14;
      }

      [v12 setObject:v38 forKeyedSubscript:@"SportEvent"];
    }

    if (([v8 containsObject:@"WinterSport"] & 1) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

LABEL_47:
  v35 = [a1 _beachingCriteriaWithGraph:v9 sceneTaxonomy:v10];
  v13[2](v13, @"Beaching", v35);

  if (v8)
  {
    goto LABEL_48;
  }

  v39 = [a1 _sportEventCriteriaArrayForMeaningInferenceWithGraph:v9];
  v40 = v39;
  if (v39)
  {
    v41 = v39;
  }

  else
  {
    v41 = v14;
  }

  [v12 setObject:v41 forKeyedSubscript:@"SportEvent"];

LABEL_59:
  v42 = [a1 _winterSportCriteriaWithGraph:v9 sceneTaxonomy:v10];
  v13[2](v13, @"WinterSport", v42);

  if (!v8)
  {
    v45 = [a1 _divingCriteriaWithGraph:v9 sceneTaxonomy:v10];
    v13[2](v13, @"Diving", v45);

    v63[0] = @"Lunch";
    v63[1] = @"Dinner";
    v63[2] = @"Breakfast";
    v44 = [MEMORY[0x277CBEA60] arrayWithObjects:v63 count:3];
    goto LABEL_69;
  }

LABEL_60:
  if ([v8 containsObject:@"Diving"])
  {
    v43 = [a1 _divingCriteriaWithGraph:v9 sceneTaxonomy:v10];
    v13[2](v13, @"Diving", v43);
  }

  v44 = [MEMORY[0x277CBEB18] array];
  if ([v8 containsObject:@"Lunch"])
  {
    [v44 addObject:@"Lunch"];
  }

  if ([v8 containsObject:@"Dinner"])
  {
    [v44 addObject:@"Dinner"];
  }

  if ([v8 containsObject:@"Breakfast"])
  {
    [v44 addObject:@"Breakfast"];
  }

LABEL_69:
  if ([v44 count])
  {
    v46 = [a1 _restaurantCriteriaByCriteriaForIdentifiers:v44 withGraph:v9 sceneTaxonomy:v10];
    [v12 addEntriesFromDictionary:v46];
  }

  if (v8)
  {
    if ([v8 containsObject:@"NightOut"])
    {
      v47 = [a1 _nightOutCriteriaArrayWithGraph:v9 sceneTaxonomy:v10];
      [v12 setObject:v47 forKeyedSubscript:@"NightOut"];
    }

    if (([v8 containsObject:@"Entertainment"] & 1) == 0)
    {
LABEL_78:
      if ([v8 containsObject:@"AmusementPark"])
      {
        v50 = [a1 _amusementParkCriteriaArrayWithGraph:v9 sceneTaxonomy:v10];
        [v12 setObject:v50 forKeyedSubscript:@"AmusementPark"];
      }

      if (([v8 containsObject:@"Museum"] & 1) == 0)
      {
        goto LABEL_87;
      }

      goto LABEL_83;
    }
  }

  else
  {
    v48 = [a1 _nightOutCriteriaArrayWithGraph:v9 sceneTaxonomy:v10];
    [v12 setObject:v48 forKeyedSubscript:@"NightOut"];
  }

  v49 = [a1 _entertainmentCriteriaWithGraph:v9];
  v13[2](v13, @"Entertainment", v49);

  if (v8)
  {
    goto LABEL_78;
  }

  v51 = [a1 _amusementParkCriteriaArrayWithGraph:v9 sceneTaxonomy:v10];
  [v12 setObject:v51 forKeyedSubscript:@"AmusementPark"];

LABEL_83:
  v52 = [a1 _museumCriteriaArrayForMeaningInferenceWithGraph:v9];
  v53 = v52;
  if (v52)
  {
    v54 = v52;
  }

  else
  {
    v54 = v14;
  }

  [v12 setObject:v54 forKeyedSubscript:@"Museum"];

  if (!v8)
  {
    goto LABEL_88;
  }

LABEL_87:
  if ([v8 containsObject:@"Gathering"])
  {
LABEL_88:
    v55 = [a1 _socialGroupGatheringCriteriaWithGraph:v9];
    [v12 setObject:v55 forKeyedSubscript:@"Gathering"];
  }

  v56 = v12;

  v57 = *MEMORY[0x277D85DE8];
  return v12;
}

void __101__PGMeaningfulEventLooseRequiredCriteriaFactory__requiredCriteriaForIdentifiers_graph_sceneTaxonomy___block_invoke(uint64_t a1, void *a2, void *a3)
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

+ (id)requiredCriteriaForIdentifiers:(id)a3 graph:(id)a4 sceneTaxonomy:(id)a5
{
  v8 = MEMORY[0x277CBEB98];
  v9 = a5;
  v10 = a4;
  v11 = [v8 setWithArray:a3];
  v12 = [a1 _requiredCriteriaForIdentifiers:v11 graph:v10 sceneTaxonomy:v9];

  return v12;
}

@end