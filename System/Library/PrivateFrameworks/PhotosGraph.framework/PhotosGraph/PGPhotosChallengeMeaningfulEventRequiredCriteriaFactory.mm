@interface PGPhotosChallengeMeaningfulEventRequiredCriteriaFactory
+ (id)_amusementParkCriteriaArrayWithGraph:(id)graph sceneTaxonomy:(id)taxonomy;
+ (id)_anniversaryCriteriaWithGraph:(id)graph;
+ (id)_beachingCriteriaWithGraph:(id)graph sceneTaxonomy:(id)taxonomy;
+ (id)_beachingSceneNodesWithGraph:(id)graph;
+ (id)_celebrationCriteriaWithGraph:(id)graph;
+ (id)_climbingCriteriaWithGraph:(id)graph sceneTaxonomy:(id)taxonomy;
+ (id)_concertCriteriaArrayForInferenceType:(unint64_t)type graph:(id)graph;
+ (id)_concertCriteriaArrayForMeaningInferenceWithGraph:(id)graph;
+ (id)_concertCriteriaArrayForPublicEventInferenceWithGraph:(id)graph;
+ (id)_concertSceneNodesInGraph:(id)graph;
+ (id)_danceCriteriaWithGraph:(id)graph;
+ (id)_divingCriteriaWithGraph:(id)graph sceneTaxonomy:(id)taxonomy;
+ (id)_divingSceneNodesWithGraph:(id)graph;
+ (id)_entertainmentCriteriaWithGraph:(id)graph;
+ (id)_festivalCriteriaArrayWithGraph:(id)graph;
+ (id)_hikingCriteriaWithGraph:(id)graph sceneTaxonomy:(id)taxonomy;
+ (id)_hikingSceneNodesWithGraph:(id)graph;
+ (id)_museumCriteriaArrayForInferenceType:(unint64_t)type graph:(id)graph;
+ (id)_museumCriteriaArrayForMeaningInferenceWithGraph:(id)graph;
+ (id)_museumCriteriaArrayForPublicEventInferenceWithGraph:(id)graph;
+ (id)_museumSceneNodesInGraph:(id)graph;
+ (id)_museumSceneTraitInGraph:(id)graph minimumNumberOfHighConfidenceAssets:(unint64_t)assets;
+ (id)_negativeHikingSceneNodesWithGraph:(id)graph;
+ (id)_negativeMuseumSceneNodesInGraph:(id)graph;
+ (id)_negativeSceneNodesForBeachingWithGraph:(id)graph;
+ (id)_nightOutCriteriaArrayWithGraph:(id)graph sceneTaxonomy:(id)taxonomy;
+ (id)_performanceCriteriaWithGraph:(id)graph;
+ (id)_publicEventCriteriaForCategoryWithName:(id)name inGraph:(id)graph;
+ (id)_requiredCriteriaForIdentifiers:(id)identifiers inferenceType:(unint64_t)type graph:(id)graph sceneTaxonomy:(id)taxonomy params:(id)params;
+ (id)_restaurantCriteriaByCriteriaForIdentifiers:(id)identifiers withGraph:(id)graph sceneTaxonomy:(id)taxonomy params:(id)params;
+ (id)_socialGroupGatheringCriteriaWithGraph:(id)graph;
+ (id)_specialAmusementParkCriteriaWithGraph:(id)graph;
+ (id)_sportEventCriteriaArrayForInferenceType:(unint64_t)type graph:(id)graph;
+ (id)_sportEventCriteriaArrayForMeaningInferenceWithGraph:(id)graph;
+ (id)_sportEventCriteriaArrayForPublicEventInferenceWithGraph:(id)graph;
+ (id)_sportEventScenesTraitWithGraph:(id)graph;
+ (id)_theaterCriteriaWithGraph:(id)graph;
+ (id)_weddingCriteriaWithGraph:(id)graph sceneTaxonomy:(id)taxonomy;
+ (id)_weddingSceneNodesWithGraph:(id)graph includeWedding:(BOOL)wedding sceneTaxonomy:(id)taxonomy;
+ (id)_winterSportCriteriaWithGraph:(id)graph sceneTaxonomy:(id)taxonomy;
+ (id)_winterSportSceneNodesWithGraph:(id)graph sceneTaxonomy:(id)taxonomy;
+ (id)requiredCriteriaForIdentifiers:(id)identifiers inferenceType:(unint64_t)type graph:(id)graph sceneTaxonomy:(id)taxonomy params:(id)params;
+ (void)_birthdayCriteriaWithGraph:(id)graph strongBirthdayCriteria:(id *)criteria weakBirthdayCriteria:(id *)birthdayCriteria sceneTaxonomy:(id)taxonomy;
@end

@implementation PGPhotosChallengeMeaningfulEventRequiredCriteriaFactory

+ (id)_publicEventCriteriaForCategoryWithName:(id)name inGraph:(id)graph
{
  v34 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  graphCopy = graph;
  v7 = [graphCopy anyNodeForLabel:nameCopy domain:901];
  if (!v7)
  {
    v12 = 0;
    goto LABEL_19;
  }

  artsAndMuseums = [MEMORY[0x277D27780] artsAndMuseums];
  v9 = [nameCopy isEqualToString:artsAndMuseums];

  v10 = 0.4;
  if (v9)
  {
    v11 = kPGGraphNodeMeaningMuseum;
  }

  else
  {
    dance = [MEMORY[0x277D27780] dance];
    v14 = [nameCopy isEqualToString:dance];

    if (v14)
    {
      v11 = kPGGraphNodeMeaningDance;
    }

    else
    {
      festivalsAndFairs = [MEMORY[0x277D27780] festivalsAndFairs];
      v16 = [nameCopy isEqualToString:festivalsAndFairs];

      if (v16)
      {
        v11 = kPGGraphNodeMeaningFestival;
      }

      else
      {
        musicConcerts = [MEMORY[0x277D27780] musicConcerts];
        v18 = [nameCopy isEqualToString:musicConcerts];

        if (v18)
        {
          v11 = kPGGraphNodeMeaningConcert;
        }

        else
        {
          nightLife = [MEMORY[0x277D27780] nightLife];
          v20 = [nameCopy isEqualToString:nightLife];

          if (v20)
          {
            v11 = kPGGraphNodeMeaningNightOut;
            v10 = 0.6;
          }

          else
          {
            sports = [MEMORY[0x277D27780] sports];
            v22 = [nameCopy isEqualToString:sports];

            if (v22)
            {
              v11 = kPGGraphNodeMeaningSportEvent;
            }

            else
            {
              theater = [MEMORY[0x277D27780] theater];
              v24 = [nameCopy isEqualToString:theater];

              if ((v24 & 1) == 0)
              {
                v31 = +[PGLogging sharedLogging];
                loggingConnection = [v31 loggingConnection];

                if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
                {
                  v32 = 138412290;
                  v33 = nameCopy;
                  _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Not handling category with name %@", &v32, 0xCu);
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

  loggingConnection = *v11;
  v12 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:loggingConnection minimumScore:graphCopy graph:v10];
  v26 = [PGMeaningfulEventCollectionTrait alloc];
  collection = [v7 collection];
  v28 = [(PGMeaningfulEventCollectionTrait *)v26 initWithNodes:collection];

  [(PGMeaningfulEventTrait *)v28 setMinimumScore:1.0];
  [(PGMeaningfulEventCriteria *)v12 setPublicEventCategoriesTrait:v28];

LABEL_18:
LABEL_19:

  v29 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)_negativeMuseumSceneNodesInGraph:(id)graph
{
  v3 = MEMORY[0x277CBEB98];
  graphCopy = graph;
  v5 = [v3 setWithObjects:{@"food", 0}];
  v6 = [graphCopy sceneNodesForSceneNames:v5];

  return v6;
}

+ (id)_museumSceneNodesInGraph:(id)graph
{
  v3 = MEMORY[0x277CBEB98];
  graphCopy = graph;
  v5 = [v3 setWithObjects:{@"illustrations", @"painting", @"museum", 0}];
  v6 = [graphCopy sceneNodesForSceneNames:v5];

  return v6;
}

+ (id)_museumSceneTraitInGraph:(id)graph minimumNumberOfHighConfidenceAssets:(unint64_t)assets
{
  graphCopy = graph;
  v7 = [self _museumSceneNodesInGraph:graphCopy];
  v8 = [v7 count];
  if (v8)
  {
    v9 = v8;
    v10 = [self _negativeMuseumSceneNodesInGraph:graphCopy];
    v11 = [[PGMeaningfulEventSceneCollectionTrait alloc] initWithNodes:v7 negativeNodes:v10];
    [(PGMeaningfulEventTrait *)v11 setMinimumScore:1.0 / v9];
    [(PGMeaningfulEventSceneCollectionTrait *)v11 setMinimumNumberOfHighConfidenceAssets:assets];
    v12 = vcvtas_u32_f32(vcvts_n_f32_u64(assets, 1uLL));
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

+ (id)_concertSceneNodesInGraph:(id)graph
{
  v3 = MEMORY[0x277CBEB98];
  graphCopy = graph;
  v5 = [v3 setWithObjects:{@"concert", @"singer", @"deejay", @"orchestra", @"musical_instrument", @"speakers_music", @"microphone", 0}];
  v6 = [graphCopy sceneNodesForSceneNames:v5];

  return v6;
}

+ (id)_weddingSceneNodesWithGraph:(id)graph includeWedding:(BOOL)wedding sceneTaxonomy:(id)taxonomy
{
  weddingCopy = wedding;
  taxonomyCopy = taxonomy;
  v8 = MEMORY[0x277CBEB58];
  graphCopy = graph;
  v10 = [v8 set];
  v11 = v10;
  if (weddingCopy)
  {
    [v10 addObject:@"wedding"];
  }

  v12 = [taxonomyCopy nodeForName:@"wedding"];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __116__PGPhotosChallengeMeaningfulEventRequiredCriteriaFactory__weddingSceneNodesWithGraph_includeWedding_sceneTaxonomy___block_invoke;
  v16[3] = &unk_2788884F0;
  v17 = v11;
  v13 = v11;
  [v12 visitChildrenUsingNameBlock:v16];
  v14 = [graphCopy sceneNodesForSceneNames:v13];

  return v14;
}

+ (id)_negativeHikingSceneNodesWithGraph:(id)graph
{
  v3 = MEMORY[0x277CBEB98];
  graphCopy = graph;
  v5 = [v3 setWithObjects:{@"hiking", @"canyon", @"volcano", @"cliff", @"waterfall", 0}];
  v6 = [graphCopy sceneNodesForSceneNames:v5];

  return v6;
}

+ (id)_hikingSceneNodesWithGraph:(id)graph
{
  v3 = MEMORY[0x277CBEB98];
  graphCopy = graph;
  v5 = [v3 setWithObjects:{@"hiking", @"mountain", @"canyon", @"volcano", @"glacier", @"cliff", @"waterfall", @"forest", @"desert", @"hill", @"trail", 0}];
  v6 = [graphCopy sceneNodesForSceneNames:v5];

  return v6;
}

+ (id)_divingSceneNodesWithGraph:(id)graph
{
  v3 = MEMORY[0x277CBEB98];
  graphCopy = graph;
  v5 = [v3 setWithObjects:{@"diving", @"underwater", @"submarine_water", @"scuba", @"wetsuit", @"coral_reef", 0}];
  v6 = [graphCopy sceneNodesForSceneNames:v5];

  return v6;
}

+ (id)_negativeSceneNodesForBeachingWithGraph:(id)graph
{
  v3 = MEMORY[0x277CBEB98];
  graphCopy = graph;
  v5 = [v3 setWithObjects:{@"snow", @"blizzard", @"snowball", @"snowman", 0}];
  v6 = [graphCopy sceneNodesForSceneNames:v5];

  return v6;
}

+ (id)_beachingSceneNodesWithGraph:(id)graph
{
  v3 = MEMORY[0x277CBEB98];
  graphCopy = graph;
  v5 = [v3 setWithObjects:{@"beach", @"surfing", @"surfboard", @"mollusk", @"shore", @"folding_chair", @"jetski", @"windsurfing", @"barnacle", @"sand", @"skating", @"lighthouse", @"swimsuit", @"sandcastle", @"sunbathing", @"watersport", 0}];
  v6 = [graphCopy sceneNodesForSceneNames:v5];

  return v6;
}

+ (id)_winterSportSceneNodesWithGraph:(id)graph sceneTaxonomy:(id)taxonomy
{
  graphCopy = graph;
  v6 = [taxonomy nodeForName:@"winter_sport"];
  if (v6)
  {
    v7 = [MEMORY[0x277CBEB58] setWithObjects:{@"winter_sport", @"ski_boot", @"snowshoe", @"ski_equipment", @"snowboard", @"snowmobile", 0}];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __105__PGPhotosChallengeMeaningfulEventRequiredCriteriaFactory__winterSportSceneNodesWithGraph_sceneTaxonomy___block_invoke;
    v11[3] = &unk_2788884F0;
    v12 = v7;
    v8 = v7;
    [v6 traverseChildrenUsingNameBlock:v11];
    v9 = [graphCopy sceneNodesForSceneNames:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)_sportEventScenesTraitWithGraph:(id)graph
{
  graphCopy = graph;
  v4 = [MEMORY[0x277CBEB98] setWithObjects:{@"sumo", @"badminton", @"softball", @"soccer", @"cricket_sport", @"rugby", @"scoreboard", @"tennis", @"cheerleading", @"polo", @"hockey", @"football", @"grand_prix", @"jockey_horse", @"wrestling", @"baseball", @"motorsport", @"basketball", @"rink", @"arena", @"motocross", @"stadium", @"ballgames", 0}];
  v5 = [graphCopy sceneNodesForSceneNames:v4];
  if ([v5 count])
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{@"amusement_park", @"graduation", 0}];
    v7 = [graphCopy sceneNodesForSceneNames:v6];

    v8 = [[PGMeaningfulEventSceneCollectionTrait alloc] initWithNodes:v5 negativeNodes:v7];
    -[PGMeaningfulEventTrait setMinimumScore:](v8, "setMinimumScore:", 1.0 / [v5 count]);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)_socialGroupGatheringCriteriaWithGraph:(id)graph
{
  v61 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  meNode = [graphCopy meNode];
  v33 = meNode;
  if (meNode)
  {
    localIdentifier = [meNode localIdentifier];
    if ([localIdentifier length])
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

  array = [MEMORY[0x277CBEB18] array];
  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = __98__PGPhotosChallengeMeaningfulEventRequiredCriteriaFactory__socialGroupGatheringCriteriaWithGraph___block_invoke;
  v55[3] = &unk_2788815F0;
  v57 = v5;
  v35 = array;
  v56 = v35;
  [graphCopy enumerateNodesWithLabel:@"SocialGroup" domain:302 usingBlock:v55];
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
      v46[2] = __98__PGPhotosChallengeMeaningfulEventRequiredCriteriaFactory__socialGroupGatheringCriteriaWithGraph___block_invoke_3;
      v46[3] = &unk_278881638;
      v46[4] = &v51;
      v15 = v35;
      [MEMORY[0x277D27688] calculateStandardDeviationForItems:v35 valueBlock:&__block_literal_global_541 result:v46];
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
          numberOfMomentNodes = [v20 numberOfMomentNodes];
          if (v52[3] <= numberOfMomentNodes)
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
          v26 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:@"Gathering" minimumScore:graphCopy graph:0.01];
          v27 = [PGMeaningfulEventCollectionTrait alloc];
          collection = [v25 collection];
          v29 = [(PGMeaningfulEventCollectionTrait *)v27 initWithNodes:collection];
          [(PGMeaningfulEventCriteria *)v26 setSocialGroupsTrait:v29];

          socialGroupsTrait = [(PGMeaningfulEventCriteria *)v26 socialGroupsTrait];
          [socialGroupsTrait setMinimumScore:1.0];

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

void __98__PGPhotosChallengeMeaningfulEventRequiredCriteriaFactory__socialGroupGatheringCriteriaWithGraph___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 numberOfMemberNodes] >= *(a1 + 40))
  {
    [*(a1 + 32) addObject:v3];
  }
}

double __98__PGPhotosChallengeMeaningfulEventRequiredCriteriaFactory__socialGroupGatheringCriteriaWithGraph___block_invoke_3(uint64_t a1, double a2, double a3)
{
  result = a2 + a3;
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

+ (id)_specialAmusementParkCriteriaWithGraph:(id)graph
{
  v11[1] = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  v11[0] = @"AmusementPark";
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v5 = [PGGraphPOINodeCollection poiNodesForLabels:v4 inGraph:graphCopy];

  if ([v5 count])
  {
    v6 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:@"AmusementPark" minimumScore:graphCopy graph:0.4];
    v7 = [[PGMeaningfulEventCollectionTrait alloc] initWithNodes:v5];
    [(PGMeaningfulEventTrait *)v7 setMinimumScore:0.7];
    [(PGMeaningfulEventCollectionTrait *)v7 setAdditionalMatchingBlock:&__block_literal_global_534];
    [(PGMeaningfulEventCriteria *)v6 setPoisTrait:v7];
    v8 = [PGMeaningfulEventRequiredCriteriaFactory locationsTraitNotMatchingPeopleHomeWorkLocationsForGraph:graphCopy];
    [(PGMeaningfulEventCriteria *)v6 setLocationsTrait:v8];
  }

  else
  {
    v6 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v6;
}

BOOL __98__PGPhotosChallengeMeaningfulEventRequiredCriteriaFactory__specialAmusementParkCriteriaWithGraph___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 collection];
  v6 = +[PGGraphPOIEdge filterSpecial];
  v7 = [(MAEdgeCollection *)PGGraphPOIEdgeCollection edgesFromNodes:v5 toNodes:v4 matchingFilter:v6];

  v8 = [v7 count] != 0;
  return v8;
}

+ (id)_amusementParkCriteriaArrayWithGraph:(id)graph sceneTaxonomy:(id)taxonomy
{
  v28[1] = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  v7 = MEMORY[0x277CBEB18];
  taxonomyCopy = taxonomy;
  array = [v7 array];
  v10 = [self _specialAmusementParkCriteriaWithGraph:graphCopy];
  if (v10)
  {
    [array addObject:v10];
  }

  v11 = [MEMORY[0x277CBEB58] set];
  v12 = [taxonomyCopy nodeForName:@"amusement_park"];

  if (v12)
  {
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __110__PGPhotosChallengeMeaningfulEventRequiredCriteriaFactory__amusementParkCriteriaArrayWithGraph_sceneTaxonomy___block_invoke;
    v26[3] = &unk_2788884F0;
    v27 = v11;
    [v12 traverseChildrenUsingNameBlock:v26];
  }

  v13 = [graphCopy sceneNodesForSceneNames:v11];
  v28[0] = @"AmusementPark";
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
  v15 = [PGGraphPOINodeCollection poiNodesForLabels:v14 inGraph:graphCopy];

  if ([v13 count] && objc_msgSend(v15, "count"))
  {
    v16 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:@"AmusementPark" minimumScore:graphCopy graph:0.4];
    v25 = [[PGMeaningfulEventSceneCollectionTrait alloc] initWithNodes:v13];
    -[PGMeaningfulEventTrait setMinimumScore:](v25, "setMinimumScore:", 1.0 / [v13 count]);
    [(PGMeaningfulEventCriteria *)v16 setScenesTrait:v25];
    v17 = [[PGMeaningfulEventCollectionTrait alloc] initWithNodes:v15];
    [(PGMeaningfulEventTrait *)v17 setMinimumScore:0.7];
    [(PGMeaningfulEventCriteria *)v16 setPoisTrait:v17];
    [PGMeaningfulEventRequiredCriteriaFactory locationsTraitNotMatchingPeopleHomeWorkLocationsForGraph:graphCopy];
    v18 = v12;
    v19 = v11;
    v20 = v10;
    v22 = v21 = array;
    [(PGMeaningfulEventCriteria *)v16 setLocationsTrait:v22];
    [v21 addObject:v16];

    array = v21;
    v10 = v20;
    v11 = v19;
    v12 = v18;
  }

  v23 = *MEMORY[0x277D85DE8];

  return array;
}

+ (id)_entertainmentCriteriaWithGraph:(id)graph
{
  v14[1] = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  v4 = +[PGMeaningfulEventRequiredCriteriaFactory entertainmentSceneTaxonomyNames];
  v5 = [graphCopy sceneNodesForSceneNames:v4];
  v14[0] = @"Entertainment";
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v7 = [PGGraphPOINodeCollection poiNodesForLabels:v6 inGraph:graphCopy];

  if ([v5 count] && objc_msgSend(v7, "count"))
  {
    v8 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:@"Entertainment" minimumScore:graphCopy graph:0.4];
    v9 = [[PGMeaningfulEventSceneCollectionTrait alloc] initWithNodes:v5];
    -[PGMeaningfulEventTrait setMinimumScore:](v9, "setMinimumScore:", 1.0 / [v5 count]);
    [(PGMeaningfulEventCriteria *)v8 setScenesTrait:v9];
    v10 = [[PGMeaningfulEventCollectionTrait alloc] initWithNodes:v7];
    [(PGMeaningfulEventTrait *)v10 setMinimumScore:0.7];
    [(PGMeaningfulEventCriteria *)v8 setPoisTrait:v10];
    v11 = [PGMeaningfulEventRequiredCriteriaFactory locationsTraitNotMatchingPeopleHomeWorkLocationsForGraph:graphCopy];
    [(PGMeaningfulEventCriteria *)v8 setLocationsTrait:v11];
  }

  else
  {
    v8 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)_beachingCriteriaWithGraph:(id)graph sceneTaxonomy:(id)taxonomy
{
  v22[1] = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  taxonomyCopy = taxonomy;
  v8 = [self _beachingSceneNodesWithGraph:graphCopy];
  v22[0] = @"Beach";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  v10 = [PGGraphROINodeCollection roiNodesForLabels:v9 inGraph:graphCopy];

  if ([v8 count] && objc_msgSend(v10, "count"))
  {
    v11 = [self _winterSportSceneNodesWithGraph:graphCopy sceneTaxonomy:taxonomyCopy];
    v12 = [self _negativeHikingSceneNodesWithGraph:graphCopy];
    v13 = [v11 collectionByFormingUnionWith:v12];

    v14 = [self _negativeSceneNodesForBeachingWithGraph:graphCopy];
    v15 = [v13 collectionByFormingUnionWith:v14];

    v16 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:@"Beaching" minimumScore:graphCopy graph:0.4];
    v17 = [[PGMeaningfulEventSceneCollectionTrait alloc] initWithNodes:v8 negativeNodes:v15];
    -[PGMeaningfulEventTrait setMinimumScore:](v17, "setMinimumScore:", 1.0 / [v8 count]);
    [(PGMeaningfulEventSceneCollectionTrait *)v17 setMinimumNumberOfHighConfidenceAssets:2];
    [(PGMeaningfulEventSceneCollectionTrait *)v17 setMinimumNumberOfNegativeHighConfidenceAssets:4];
    [(PGMeaningfulEventCriteria *)v16 setScenesTrait:v17];
    v18 = [[PGMeaningfulEventCollectionTrait alloc] initWithNodes:v10];
    [(PGMeaningfulEventTrait *)v18 setMinimumScore:1.0];
    [(PGMeaningfulEventCriteria *)v16 setRoisTrait:v18];
    v19 = [PGMeaningfulEventRequiredCriteriaFactory locationsTraitNotMatchingFrequentLocationsForGraph:graphCopy];
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

+ (id)_climbingCriteriaWithGraph:(id)graph sceneTaxonomy:(id)taxonomy
{
  v22[4] = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  taxonomyCopy = taxonomy;
  v8 = [MEMORY[0x277CBEB98] setWithObject:@"rock_climbing"];
  v9 = [graphCopy sceneNodesForSceneNames:v8];

  v22[0] = @"Mountain";
  v22[1] = @"Nature";
  v22[2] = @"Beach";
  v22[3] = @"Water";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:4];
  v11 = [PGGraphROINodeCollection roiNodesForLabels:v10 inGraph:graphCopy];

  if ([v9 count] && objc_msgSend(v11, "count"))
  {
    v12 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:@"Climbing" minimumScore:graphCopy graph:0.4];
    v13 = [[PGMeaningfulEventCollectionTrait alloc] initWithNodes:v11];
    [(PGMeaningfulEventTrait *)v13 setMinimumScore:0.25];
    [(PGMeaningfulEventCriteria *)v12 setRoisTrait:v13];
    v21 = [PGMeaningfulEventRequiredCriteriaFactory locationsTraitNotMatchingFrequentLocationsForGraph:graphCopy];
    [(PGMeaningfulEventCriteria *)v12 setLocationsTrait:v21];
    v14 = [[PGMeaningfulEventNumberTrait alloc] initWithNumberValue:1.0];
    [(PGMeaningfulEventTrait *)v14 setMinimumScore:1.0];
    [(PGMeaningfulEventCriteria *)v12 setNumberOfPeopleTrait:v14];
    v15 = [self _winterSportSceneNodesWithGraph:graphCopy sceneTaxonomy:taxonomyCopy];
    v16 = [self _divingSceneNodesWithGraph:graphCopy];
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

+ (id)_hikingCriteriaWithGraph:(id)graph sceneTaxonomy:(id)taxonomy
{
  v36[1] = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  taxonomyCopy = taxonomy;
  v8 = [self _hikingSceneNodesWithGraph:graphCopy];
  v36[0] = @"Hiking";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:1];
  v10 = [PGGraphPOINodeCollection poiNodesForLabels:v9 inGraph:graphCopy];

  v35[0] = @"Mountain";
  v35[1] = @"Nature";
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:2];
  v12 = [PGGraphROINodeCollection roiNodesForLabels:v11 inGraph:graphCopy];

  if ([v8 count] && (objc_msgSend(v10, "count") || objc_msgSend(v12, "count")))
  {
    v30 = [MEMORY[0x277CBEB98] setWithObjects:{@"gown", @"suit", @"necktie", @"vineyard", @"cycling", @"bicycle", @"golf", @"skydiving", @"sport", 0}];
    v13 = [graphCopy sceneNodesForSceneNames:v30];
    v14 = [self _winterSportSceneNodesWithGraph:graphCopy sceneTaxonomy:taxonomyCopy];
    [v13 collectionByFormingUnionWith:v14];
    v15 = v33 = v10;

    v16 = [self _beachingSceneNodesWithGraph:graphCopy];
    v17 = [v15 collectionByFormingUnionWith:v16];

    v18 = [self _divingSceneNodesWithGraph:graphCopy];
    v29 = [v17 collectionByFormingUnionWith:v18];

    v32 = taxonomyCopy;
    v19 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:@"Hiking" minimumScore:graphCopy graph:0.4];
    v20 = [[PGMeaningfulEventSceneCollectionTrait alloc] initWithNodes:v8 negativeNodes:v29];
    -[PGMeaningfulEventTrait setMinimumScore:](v20, "setMinimumScore:", 1.0 / [v8 count]);
    [(PGMeaningfulEventCriteria *)v19 setScenesTrait:v20];
    v31 = v12;
    v21 = [[PGMeaningfulEventCollectionTrait alloc] initWithNodes:v12];
    [(PGMeaningfulEventTrait *)v21 setMinimumScore:0.5];
    [(PGMeaningfulEventCriteria *)v19 setRoisTrait:v21];
    v22 = [[PGMeaningfulEventLocationMobilityTrait alloc] initWithMobility:1];
    [(PGMeaningfulEventTrait *)v22 setMinimumScore:0.9];
    [(PGMeaningfulEventCriteria *)v19 setLocationMobilityTrait:v22];
    v23 = [PGMeaningfulEventRequiredCriteriaFactory locationsTraitNotMatchingFrequentLocationsForGraph:graphCopy];
    [(PGMeaningfulEventCriteria *)v19 setLocationsTrait:v23];
    [(PGMeaningfulEventRequiredCriteria *)v19 setMustBeInteresting:1];
    v24 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:@"Hiking" minimumScore:graphCopy graph:0.4];
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

    taxonomyCopy = v32;
    v10 = v33;

    v12 = v31;
  }

  else
  {
    v26 = 0;
  }

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

+ (id)_restaurantCriteriaByCriteriaForIdentifiers:(id)identifiers withGraph:(id)graph sceneTaxonomy:(id)taxonomy params:(id)params
{
  v152[2] = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  graphCopy = graph;
  paramsCopy = params;
  v12 = [taxonomy nodeForName:@"tableware"];
  v13 = [MEMORY[0x277CBEB58] setWithObjects:{@"restaurant", @"food", 0}];
  v14 = [MEMORY[0x277CBEB58] setWithObjects:{@"wine_bottle", @"wine", 0}];
  v133[0] = MEMORY[0x277D85DD0];
  v133[1] = 3221225472;
  v133[2] = __134__PGPhotosChallengeMeaningfulEventRequiredCriteriaFactory__restaurantCriteriaByCriteriaForIdentifiers_withGraph_sceneTaxonomy_params___block_invoke;
  v133[3] = &unk_2788884F0;
  v15 = v14;
  v134 = v15;
  v107 = v12;
  [v12 traverseChildrenUsingNameBlock:v133];
  v106 = v13;
  v16 = [graphCopy sceneNodesForSceneNames:v13];
  [graphCopy sceneNodesForSceneNames:v15];
  v105 = v120 = v16;
  v17 = [v16 collectionByFormingUnionWith:?];
  v104 = [MEMORY[0x277CBEB98] setWithObjects:{@"aquarium", @"underwater", 0}];
  v111 = [graphCopy sceneNodesForSceneNames:?];
  v152[0] = @"Nightlife";
  v152[1] = @"Restaurant";
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v152 count:2];
  v19 = [PGGraphPOINodeCollection poiNodesForLabels:v18 inGraph:graphCopy];

  v151 = @"Museum";
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v151 count:1];
  v117 = graphCopy;
  v108 = [PGGraphPOINodeCollection poiNodesForLabels:v20 inGraph:graphCopy];

  v116 = v17;
  if (![v17 count] || !objc_msgSend(v19, "count"))
  {
    v112 = MEMORY[0x277CBEC10];
    v40 = v13;
    v39 = v107;
    goto LABEL_57;
  }

  v110 = v19;
  v102 = v15;
  v115 = identifiersCopy;
  v109 = [PGMeaningfulEventRequiredCriteriaFactory locationsTraitNotMatchingPeopleHomeWorkLocationsForGraph:graphCopy];
  v126 = objc_alloc(MEMORY[0x277CBEB18]);
  v148[0] = @"label";
  v148[1] = @"significantPartsOfDay";
  v149[0] = @"Lunch";
  v149[1] = &unk_284483150;
  v148[2] = @"forbiddenPartOfDay";
  v148[3] = @"minimumNumberOfHighConfidenceScenes";
  v149[2] = &unk_284483168;
  v149[3] = &unk_284483108;
  v21 = MEMORY[0x277CBEC38];
  v148[4] = @"usePOIs";
  v148[5] = @"useNegativePOIs";
  v149[4] = MEMORY[0x277CBEC38];
  v149[5] = MEMORY[0x277CBEC38];
  v124 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v149 forKeys:v148 count:6];
  v150[0] = v124;
  v146[0] = @"label";
  v146[1] = @"significantPartsOfDay";
  v147[0] = @"Lunch";
  v147[1] = &unk_284483150;
  v146[2] = @"forbiddenPartOfDay";
  v146[3] = @"minimumNumberOfHighConfidenceScenes";
  v147[2] = &unk_284483168;
  v147[3] = &unk_284483180;
  v146[4] = @"usePOIs";
  v146[5] = @"useNegativePOIs";
  v147[4] = v21;
  v147[5] = MEMORY[0x277CBEC28];
  v122 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v147 forKeys:v146 count:6];
  v114 = paramsCopy;
  v150[1] = v122;
  v144[0] = @"label";
  v144[1] = @"forbiddenPartOfDay";
  v145[0] = @"Breakfast";
  v145[1] = &unk_284483198;
  v144[2] = @"significantPartsOfDay";
  v144[3] = @"minimumNumberOfHighConfidenceScenes";
  v145[2] = &unk_2844831B0;
  v145[3] = &unk_284483108;
  v144[4] = @"usePOIs";
  v144[5] = @"useNegativePOIs";
  v145[4] = v21;
  v145[5] = v21;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v145 forKeys:v144 count:6];
  v150[2] = v22;
  v142[0] = @"label";
  v142[1] = @"forbiddenPartOfDay";
  v143[0] = @"Breakfast";
  v143[1] = &unk_284483198;
  v142[2] = @"significantPartsOfDay";
  v142[3] = @"minimumNumberOfHighConfidenceScenes";
  v143[2] = &unk_2844831B0;
  v143[3] = &unk_284483180;
  v142[4] = @"usePOIs";
  v142[5] = @"useNegativePOIs";
  v143[4] = v21;
  v23 = v21;
  v24 = MEMORY[0x277CBEC28];
  v143[5] = MEMORY[0x277CBEC28];
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v143 forKeys:v142 count:6];
  v150[3] = v25;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v150 count:4];
  v127 = [v126 initWithArray:v26];

  v27 = [paramsCopy objectForKeyedSubscript:@"DinnerKeyMinimumDurationCriterion1"];
  [v27 doubleValue];
  v29 = v28;

  v30 = [paramsCopy objectForKeyedSubscript:@"DinnerKeyMinimumNumberOfHighConfidenceScenesCriterion1"];
  intValue = [v30 intValue];

  v140[0] = @"label";
  v140[1] = @"significantPartsOfDay";
  v141[0] = @"Dinner";
  v141[1] = &unk_284483168;
  v140[2] = @"forbiddenPartOfDay";
  v140[3] = @"allPartsOfDay";
  v141[2] = &unk_2844831C8;
  v141[3] = &unk_2844831E0;
  v140[4] = @"minimumDuration";
  v32 = [MEMORY[0x277CCABB0] numberWithDouble:v29 * 60.0];
  v141[4] = v32;
  v140[5] = @"minimumNumberOfHighConfidenceScenes";
  v33 = [MEMORY[0x277CCABB0] numberWithInt:intValue];
  v141[5] = v33;
  v141[6] = v23;
  v140[6] = @"usePOIs";
  v140[7] = @"useNegativePOIs";
  v141[7] = v24;
  v103 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v141 forKeys:v140 count:8];

  v34 = [paramsCopy objectForKeyedSubscript:@"DinnerKeyMinimumDurationCriterion2"];

  if (v34)
  {
    v35 = [paramsCopy objectForKeyedSubscript:@"DinnerKeyMinimumDurationCriterion2"];
    [v35 doubleValue];
    v37 = v36;

    v38 = v37 * 60.0;
  }

  else
  {
    v38 = INFINITY;
  }

  v41 = [paramsCopy objectForKeyedSubscript:@"DinnerKeyMinimumNumberOfHighConfidenceScenesCriterion2"];

  if (v41)
  {
    v42 = [paramsCopy objectForKeyedSubscript:@"DinnerKeyMinimumNumberOfHighConfidenceScenesCriterion2"];
    intValue2 = [v42 intValue];
  }

  else
  {
    intValue2 = 0x7FFFFFFFLL;
  }

  v138[0] = @"label";
  v138[1] = @"significantPartsOfDay";
  v139[0] = @"Dinner";
  v139[1] = &unk_284483168;
  v138[2] = @"forbiddenPartOfDay";
  v138[3] = @"allPartsOfDay";
  v139[2] = &unk_2844831C8;
  v139[3] = &unk_2844831E0;
  v138[4] = @"minimumDuration";
  v44 = [MEMORY[0x277CCABB0] numberWithDouble:v38];
  v139[4] = v44;
  v138[5] = @"minimumNumberOfHighConfidenceScenes";
  v45 = [MEMORY[0x277CCABB0] numberWithInt:intValue2];
  v139[5] = v45;
  v139[6] = v23;
  v138[6] = @"usePOIs";
  v138[7] = @"useNegativePOIs";
  v139[7] = MEMORY[0x277CBEC28];
  v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v139 forKeys:v138 count:8];

  v47 = [paramsCopy objectForKeyedSubscript:@"DinnerKeyMinimumDurationCriterion3"];

  if (v47)
  {
    v48 = [paramsCopy objectForKeyedSubscript:@"DinnerKeyMinimumDurationCriterion3"];
    [v48 doubleValue];
    v50 = v49;

    v51 = v50 * 60.0;
  }

  else
  {
    v51 = INFINITY;
  }

  v52 = [paramsCopy objectForKeyedSubscript:@"DinnerKeyMinimumNumberOfHighConfidenceScenesCriterion3"];

  if (v52)
  {
    v53 = [paramsCopy objectForKeyedSubscript:@"DinnerKeyMinimumNumberOfHighConfidenceScenesCriterion3"];
    intValue3 = [v53 intValue];
  }

  else
  {
    intValue3 = 0x7FFFFFFFLL;
  }

  v136[0] = @"label";
  v136[1] = @"significantPartsOfDay";
  v137[0] = @"Dinner";
  v137[1] = &unk_284483168;
  v136[2] = @"forbiddenPartOfDay";
  v136[3] = @"allPartsOfDay";
  v137[2] = &unk_2844831C8;
  v137[3] = &unk_2844831E0;
  v136[4] = @"minimumDuration";
  v55 = [MEMORY[0x277CCABB0] numberWithDouble:v51];
  v137[4] = v55;
  v136[5] = @"minimumNumberOfHighConfidenceScenes";
  v56 = [MEMORY[0x277CCABB0] numberWithInt:intValue3];
  v137[5] = v56;
  v137[6] = MEMORY[0x277CBEC28];
  v136[6] = @"usePOIs";
  v136[7] = @"useNegativePOIs";
  v137[7] = MEMORY[0x277CBEC28];
  v57 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v137 forKeys:v136 count:8];

  v58 = [paramsCopy objectForKeyedSubscript:@"DinnerCriteriaDefinitions"];
  if ([v58 isEqualToString:@"ThreeCriteria"])
  {
    v59 = v127;
    [v127 addObject:v103];
    v60 = v46;
    v61 = v57;
    identifiersCopy = v115;
  }

  else
  {
    v62 = [v58 isEqualToString:@"TwoCriteria"];
    v60 = v103;
    v61 = v46;
    identifiersCopy = v115;
    v59 = v127;
    if ((v62 & 1) == 0)
    {
      v61 = v103;
      if (([v58 isEqualToString:@"Criterion1"] & 1) == 0)
      {
        v61 = v46;
        if (([v58 isEqualToString:@"Criterion2"] & 1) == 0)
        {
          v61 = v57;
          if (([v58 isEqualToString:@"Criterion3"] & 1) == 0)
          {
            goto LABEL_21;
          }
        }
      }

      goto LABEL_20;
    }
  }

  [v59 addObject:v60];
LABEL_20:
  [v59 addObject:v61];
LABEL_21:
  v99 = v58;
  v100 = v57;
  v101 = v46;
  v112 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(identifiersCopy, "count")}];
  v129 = 0u;
  v130 = 0u;
  v131 = 0u;
  v132 = 0u;
  obj = v59;
  v63 = [obj countByEnumeratingWithState:&v129 objects:v135 count:16];
  if (v63)
  {
    v64 = v63;
    v65 = *v130;
    v113 = *v130;
    do
    {
      v66 = 0;
      v118 = v64;
      do
      {
        if (*v130 != v65)
        {
          objc_enumerationMutation(obj);
        }

        v67 = *(*(&v129 + 1) + 8 * v66);
        v68 = [v67 objectForKeyedSubscript:@"label"];
        if ([identifiersCopy containsObject:v68])
        {
          v128 = [v67 objectForKeyedSubscript:@"significantPartsOfDay"];
          v125 = [v67 objectForKeyedSubscript:@"forbiddenPartOfDay"];
          v123 = [v67 objectForKeyedSubscript:@"allPartsOfDay"];
          v121 = [v67 objectForKeyedSubscript:@"minimumDuration"];
          v69 = [v67 objectForKeyedSubscript:@"minimumNumberOfHighConfidenceScenes"];
          unsignedIntegerValue = [v69 unsignedIntegerValue];

          if (unsignedIntegerValue <= 1)
          {
            v71 = 1;
          }

          else
          {
            v71 = unsignedIntegerValue;
          }

          v72 = [v67 objectForKeyedSubscript:@"usePOIs"];
          bOOLValue = [v72 BOOLValue];

          v74 = [v67 objectForKeyedSubscript:@"useNegativePOIs"];
          bOOLValue2 = [v74 BOOLValue];

          v76 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:v68 minimumScore:v117 graph:0.6];
          v77 = v120;
          if (!bOOLValue)
          {
            v77 = v116;
          }

          v78 = v77;
          [paramsCopy objectForKeyedSubscript:@"DinnerSceneNodesCritererion3"];
          v80 = v79 = paramsCopy;

          if (v80)
          {
            v81 = [v79 objectForKeyedSubscript:@"DinnerSceneNodesCritererion3"];
            if ([v81 isEqualToString:@"POISceneNodes"])
            {
              v82 = v120;

              v78 = v82;
            }
          }

          v83 = [v78 count];
          if (v83)
          {
            v84 = v83;
            if (bOOLValue)
            {
              v85 = [PGMeaningfulEventCollectionTrait alloc];
              if (bOOLValue2)
              {
                v86 = [(PGMeaningfulEventCollectionTrait *)v85 initWithNodes:v110 negativeNodes:v108];
              }

              else
              {
                v86 = [(PGMeaningfulEventCollectionTrait *)v85 initWithNodes:v110];
              }

              v88 = v86;
              [(PGMeaningfulEventTrait *)v86 setMinimumScore:0.7];
              [(PGMeaningfulEventCriteria *)v76 setPoisTrait:v88];
              v87 = 1.0 / v84;
            }

            else
            {
              [(PGMeaningfulEventCriteria *)v76 setLocationsTrait:v109];
              v87 = 2.0 / v84;
              [(PGMeaningfulEventRequiredCriteria *)v76 setMustBeInteresting:1];
            }

            v89 = [[PGMeaningfulEventSceneCollectionTrait alloc] initWithNodes:v78 negativeNodes:v111];
            [(PGMeaningfulEventTrait *)v89 setMinimumScore:v87];
            [(PGMeaningfulEventSceneCollectionTrait *)v89 setMinimumNumberOfHighConfidenceAssets:v71];
            [(PGMeaningfulEventSceneCollectionTrait *)v89 setAccumulateHighConfidenceAssetCounts:1];
            [(PGMeaningfulEventCriteria *)v76 setScenesTrait:v89];
            unsignedIntegerValue2 = [v128 unsignedIntegerValue];
            if (v125)
            {
              unsignedIntegerValue3 = [v125 unsignedIntegerValue];
            }

            else
            {
              unsignedIntegerValue3 = 1;
            }

            v92 = [[PGMeaningfulEventPartOfDayTrait alloc] initWithPartOfDay:unsignedIntegerValue2 forbiddenPartOfDay:unsignedIntegerValue3];
            [(PGMeaningfulEventTrait *)v92 setMinimumScore:0.75];
            [(PGMeaningfulEventCriteria *)v76 setSignificantPartsOfDayTrait:v92];
            if (v123)
            {
              v93 = -[PGMeaningfulEventPartOfDayTrait initWithPartOfDay:forbiddenPartOfDay:]([PGMeaningfulEventPartOfDayTrait alloc], "initWithPartOfDay:forbiddenPartOfDay:", [v123 unsignedIntegerValue], 1);
              [(PGMeaningfulEventTrait *)v93 setMinimumScore:0.75];
              [(PGMeaningfulEventCriteria *)v76 setAllPartsOfDayTrait:v93];
            }

            if (v121)
            {
              v94 = [PGMeaningfulEventNumberTrait alloc];
              [v121 doubleValue];
              v95 = [(PGMeaningfulEventNumberTrait *)v94 initWithNumberValue:?];
              [(PGMeaningfulEventTrait *)v95 setMinimumScore:1.0];
              [(PGMeaningfulEventCriteria *)v76 setMinimumDurationTrait:v95];
            }

            array = [v112 objectForKeyedSubscript:v68];
            if (!array)
            {
              array = [MEMORY[0x277CBEB18] array];
              [v112 setObject:array forKeyedSubscript:v68];
            }

            [array addObject:v76];
          }

          paramsCopy = v114;
          identifiersCopy = v115;
          v64 = v118;
          v65 = v113;
        }

        ++v66;
      }

      while (v64 != v66);
      v64 = [obj countByEnumeratingWithState:&v129 objects:v135 count:16];
    }

    while (v64);
  }

  v40 = v106;
  v39 = v107;
  v15 = v102;
  v19 = v110;
LABEL_57:

  v97 = *MEMORY[0x277D85DE8];

  return v112;
}

+ (id)_anniversaryCriteriaWithGraph:(id)graph
{
  v28[1] = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  v4 = [(PGGraphNodeCollection *)PGGraphMeNodeCollection nodesInGraph:graphCopy];
  if ([v4 count])
  {
    anyNode = [v4 anyNode];
    anniversaryDateComponents = [anyNode anniversaryDateComponents];
    if (anniversaryDateComponents)
    {
      v7 = [(PGGraphNodeCollection *)PGGraphSocialGroupNodeCollection nodesInGraph:graphCopy];
      if ([v7 count])
      {
        v8 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:0 ascending:0 comparator:&__block_literal_global_20769];
        v28[0] = v8;
        v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
        v21 = [v7 sortedArrayUsingDescriptors:v9];

        firstObject = [v21 firstObject];
        collection = [firstObject collection];
        personNodes = [collection personNodes];

        array = [MEMORY[0x277CBEB18] array];
        year = [anniversaryDateComponents year];
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __89__PGPhotosChallengeMeaningfulEventRequiredCriteriaFactory__anniversaryCriteriaWithGraph___block_invoke_2;
        v22[3] = &unk_2788814E0;
        v27 = year;
        v23 = anniversaryDateComponents;
        v24 = graphCopy;
        v25 = personNodes;
        v15 = array;
        v26 = v15;
        v16 = personNodes;
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

void __89__PGPhotosChallengeMeaningfulEventRequiredCriteriaFactory__anniversaryCriteriaWithGraph___block_invoke_2(uint64_t a1, void *a2)
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

uint64_t __89__PGPhotosChallengeMeaningfulEventRequiredCriteriaFactory__anniversaryCriteriaWithGraph___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 numberOfMomentNodes];
  v6 = [v4 numberOfMomentNodes];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v5];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v6];
  v9 = [v7 compare:v8];

  return v9;
}

+ (id)_nightOutCriteriaArrayWithGraph:(id)graph sceneTaxonomy:(id)taxonomy
{
  v73 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  taxonomyCopy = taxonomy;
  array = [MEMORY[0x277CBEB18] array];
  v9 = [[PGMeaningfulEventPartOfDayTrait alloc] initWithPartOfDay:32];
  [(PGMeaningfulEventTrait *)v9 setMinimumScore:0.6];
  nightLife = [MEMORY[0x277D27780] nightLife];
  v52 = graphCopy;
  v11 = [self _publicEventCriteriaForCategoryWithName:nightLife inGraph:graphCopy];

  if (v11)
  {
    [v11 setSignificantPartsOfDayTrait:v9];
    [array addObject:v11];
  }

  v44 = v11;
  v45 = v9;
  v51 = array;
  v50 = [[PGMeaningfulEventPartOfDayTrait alloc] initWithPartOfDay:48 forbiddenPartOfDay:12];
  [(PGMeaningfulEventTrait *)v50 setMinimumScore:0.3];
  v12 = [MEMORY[0x277CBEB58] setWithArray:&unk_284485970];
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v13 = [&unk_284485958 countByEnumeratingWithState:&v59 objects:v72 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v60;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v60 != v15)
        {
          objc_enumerationMutation(&unk_284485958);
        }

        v17 = [taxonomyCopy nodeForName:*(*(&v59 + 1) + 8 * i)];
        v57[0] = MEMORY[0x277D85DD0];
        v57[1] = 3221225472;
        v57[2] = __105__PGPhotosChallengeMeaningfulEventRequiredCriteriaFactory__nightOutCriteriaArrayWithGraph_sceneTaxonomy___block_invoke;
        v57[3] = &unk_2788884F0;
        v58 = v12;
        [v17 traverseChildrenUsingNameBlock:v57];
      }

      v14 = [&unk_284485958 countByEnumeratingWithState:&v59 objects:v72 count:16];
    }

    while (v14);
  }

  v18 = [v52 sceneNodesForSceneNames:v12];
  v71[0] = @"Nightlife";
  v71[1] = @"Restaurant";
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v71 count:2];
  v20 = [PGGraphPOINodeCollection poiNodesForLabels:v19 inGraph:v52];

  if ([v18 count] && objc_msgSend(v20, "count"))
  {
    v46 = v20;
    v68[0] = @"minimumDuration";
    v68[1] = @"minimumNumberOfHighConfidenceScenes";
    v69[1] = &unk_284483108;
    v68[2] = @"usePOIs";
    v69[0] = &unk_284487158;
    v69[2] = MEMORY[0x277CBEC38];
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v69 forKeys:v68 count:3];
    v70[0] = v21;
    v66[0] = @"minimumDuration";
    v66[1] = @"minimumNumberOfHighConfidenceScenes";
    v67[0] = &unk_284487158;
    v67[1] = &unk_284483120;
    v66[2] = @"usePOIs";
    v67[2] = MEMORY[0x277CBEC28];
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v67 forKeys:v66 count:3];
    v70[1] = v22;
    v64[0] = @"minimumDuration";
    v64[1] = @"minimumNumberOfHighConfidenceScenes";
    v65[0] = &unk_284487168;
    v65[1] = &unk_284483138;
    v64[2] = @"usePOIs";
    v65[2] = MEMORY[0x277CBEC38];
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v65 forKeys:v64 count:3];
    v70[2] = v23;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v70 count:3];

    v49 = [PGMeaningfulEventRequiredCriteriaFactory locationsTraitNotMatchingPeopleHomeWorkLocationsForGraph:v52];
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    obj = v24;
    v25 = [obj countByEnumeratingWithState:&v53 objects:v63 count:16];
    if (v25)
    {
      v26 = v25;
      v48 = *v54;
      do
      {
        for (j = 0; j != v26; ++j)
        {
          if (*v54 != v48)
          {
            objc_enumerationMutation(obj);
          }

          v28 = *(*(&v53 + 1) + 8 * j);
          v29 = [v28 objectForKeyedSubscript:@"minimumDuration"];
          [v29 doubleValue];
          v31 = v30;

          v32 = [v28 objectForKeyedSubscript:@"minimumNumberOfHighConfidenceScenes"];
          unsignedIntegerValue = [v32 unsignedIntegerValue];

          if (unsignedIntegerValue <= 1)
          {
            v34 = 1;
          }

          else
          {
            v34 = unsignedIntegerValue;
          }

          v35 = [v28 objectForKeyedSubscript:@"usePOIs"];
          bOOLValue = [v35 BOOLValue];

          v37 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:@"NightOut" minimumScore:v52 graph:0.6];
          [(PGMeaningfulEventCriteria *)v37 setLocationsTrait:v49];
          v38 = [[PGMeaningfulEventNumberTrait alloc] initWithNumberValue:3.0];
          [(PGMeaningfulEventCriteria *)v37 setNumberOfPeopleTrait:v38];

          v39 = [[PGMeaningfulEventSceneCollectionTrait alloc] initWithNodes:v18];
          -[PGMeaningfulEventTrait setMinimumScore:](v39, "setMinimumScore:", 1.0 / [v18 count]);
          [(PGMeaningfulEventSceneCollectionTrait *)v39 setMinimumNumberOfHighConfidenceAssets:v34];
          [(PGMeaningfulEventCriteria *)v37 setScenesTrait:v39];
          if (bOOLValue)
          {
            v40 = [[PGMeaningfulEventCollectionTrait alloc] initWithNodes:v46];
            [(PGMeaningfulEventTrait *)v40 setMinimumScore:0.4];
            [(PGMeaningfulEventCriteria *)v37 setPoisTrait:v40];
          }

          [(PGMeaningfulEventRequiredCriteria *)v37 setMustBeInteresting:1];
          v41 = [[PGMeaningfulEventNumberTrait alloc] initWithNumberValue:v31];
          [(PGMeaningfulEventTrait *)v41 setMinimumScore:1.0];
          [(PGMeaningfulEventCriteria *)v37 setMinimumDurationTrait:v41];
          [(PGMeaningfulEventCriteria *)v37 setSignificantPartsOfDayTrait:v50];
          [v51 addObject:v37];
        }

        v26 = [obj countByEnumeratingWithState:&v53 objects:v63 count:16];
      }

      while (v26);
    }

    v20 = v46;
  }

  v42 = *MEMORY[0x277D85DE8];

  return v51;
}

+ (id)_museumCriteriaArrayForMeaningInferenceWithGraph:(id)graph
{
  v18[2] = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  array = [MEMORY[0x277CBEB18] array];
  artsAndMuseums = [MEMORY[0x277D27780] artsAndMuseums];
  v7 = [self _publicEventCriteriaForCategoryWithName:artsAndMuseums inGraph:graphCopy];

  if (v7)
  {
    [array addObject:v7];
  }

  v8 = [self _museumSceneTraitInGraph:graphCopy minimumNumberOfHighConfidenceAssets:12];
  v18[0] = @"Museum";
  v18[1] = @"Culture";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
  v10 = [PGGraphPOINodeCollection poiNodesForLabels:v9 inGraph:graphCopy];

  if (v8 && [v10 count])
  {
    v11 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:@"Museum" minimumScore:graphCopy graph:0.4];
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
    v15 = [PGMeaningfulEventRequiredCriteriaFactory locationsTraitNotMatchingPeopleHomeWorkLocationsForGraph:graphCopy];
    [(PGMeaningfulEventCriteria *)v11 setLocationsTrait:v15];
    [array addObject:v11];
  }

  v16 = *MEMORY[0x277D85DE8];

  return array;
}

+ (id)_museumCriteriaArrayForPublicEventInferenceWithGraph:(id)graph
{
  v11[1] = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  v5 = [self _museumSceneTraitInGraph:graphCopy minimumNumberOfHighConfidenceAssets:8];
  if (v5)
  {
    v6 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:@"Museum" minimumScore:graphCopy graph:0.4];
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

+ (id)_museumCriteriaArrayForInferenceType:(unint64_t)type graph:(id)graph
{
  graphCopy = graph;
  if (type == 1)
  {
    v7 = [self _museumCriteriaArrayForPublicEventInferenceWithGraph:graphCopy];
    goto LABEL_5;
  }

  if (!type)
  {
    v7 = [self _museumCriteriaArrayForMeaningInferenceWithGraph:graphCopy];
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

+ (id)_festivalCriteriaArrayWithGraph:(id)graph
{
  graphCopy = graph;
  array = [MEMORY[0x277CBEB18] array];
  festivalsAndFairs = [MEMORY[0x277D27780] festivalsAndFairs];
  v7 = [self _publicEventCriteriaForCategoryWithName:festivalsAndFairs inGraph:graphCopy];

  if (v7)
  {
    [array addObject:v7];
  }

  v8 = [self _concertSceneNodesInGraph:graphCopy];
  v9 = [v8 count];
  if (v9)
  {
    v10 = v9;
    v11 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:@"Festival" minimumScore:graphCopy graph:0.4];
    v12 = [[PGMeaningfulEventNumberTrait alloc] initWithNumberValue:5.0];
    [(PGMeaningfulEventCriteria *)v11 setNumberOfPeopleTrait:v12];

    v13 = [[PGMeaningfulEventSceneCollectionTrait alloc] initWithNodes:v8];
    [(PGMeaningfulEventTrait *)v13 setMinimumScore:1.0 / v10];
    [(PGMeaningfulEventSceneCollectionTrait *)v13 setMinimumNumberOfHighConfidenceAssets:10];
    [(PGMeaningfulEventCriteria *)v11 setScenesTrait:v13];
    v14 = [[PGMeaningfulEventNumberTrait alloc] initWithNumberValue:57600.0];
    [(PGMeaningfulEventTrait *)v14 setMinimumScore:1.0];
    [(PGMeaningfulEventCriteria *)v11 setMinimumDurationTrait:v14];
    v15 = [PGMeaningfulEventRequiredCriteriaFactory locationsTraitNotMatchingPeopleHomeWorkLocationsForGraph:graphCopy];
    [(PGMeaningfulEventCriteria *)v11 setLocationsTrait:v15];
    [array addObject:v11];
  }

  return array;
}

+ (id)_concertCriteriaArrayForPublicEventInferenceWithGraph:(id)graph
{
  graphCopy = graph;
  array = [MEMORY[0x277CBEB18] array];
  v6 = [self _concertSceneNodesInGraph:graphCopy];
  v7 = [MEMORY[0x277CBEB98] setWithObjects:{@"performance", @"nightclub", 0}];
  v8 = [graphCopy sceneNodesForSceneNames:v7];
  v9 = [v6 collectionByFormingUnionWith:v8];

  v10 = [v9 count];
  if (v10)
  {
    v11 = v10;
    v12 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:@"Concert" minimumScore:graphCopy graph:0.4];
    v13 = [[PGMeaningfulEventSceneCollectionTrait alloc] initWithNodes:v9];
    [(PGMeaningfulEventTrait *)v13 setMinimumScore:1.0 / v11];
    [(PGMeaningfulEventSceneCollectionTrait *)v13 setMinimumNumberOfHighConfidenceAssets:7];
    [(PGMeaningfulEventCriteria *)v12 setScenesTrait:v13];
    v14 = [[PGMeaningfulEventPartOfDayTrait alloc] initWithPartOfDay:48];
    [(PGMeaningfulEventTrait *)v14 setMinimumScore:0.4];
    [(PGMeaningfulEventCriteria *)v12 setSignificantPartsOfDayTrait:v14];
    [array addObject:v12];
  }

  return array;
}

+ (id)_concertCriteriaArrayForMeaningInferenceWithGraph:(id)graph
{
  v21[5] = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  array = [MEMORY[0x277CBEB18] array];
  musicConcerts = [MEMORY[0x277D27780] musicConcerts];
  v7 = [self _publicEventCriteriaForCategoryWithName:musicConcerts inGraph:graphCopy];

  if (v7)
  {
    [array addObject:v7];
  }

  v8 = [self _concertSceneNodesInGraph:graphCopy];
  v21[0] = @"Nightlife";
  v21[1] = @"Culture";
  v21[2] = @"Entertainment";
  v21[3] = @"Stadium";
  v21[4] = @"Performance";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:5];
  v10 = [PGGraphPOINodeCollection poiNodesForLabels:v9 inGraph:graphCopy];

  v11 = [v8 count];
  if (v11)
  {
    v12 = v11;
    if ([v10 count])
    {
      v13 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:@"Concert" minimumScore:graphCopy graph:0.4];
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
      v18 = [PGMeaningfulEventRequiredCriteriaFactory locationsTraitNotMatchingPeopleHomeWorkLocationsForGraph:graphCopy];
      [(PGMeaningfulEventCriteria *)v13 setLocationsTrait:v18];
      [array addObject:v13];
    }
  }

  v19 = *MEMORY[0x277D85DE8];

  return array;
}

+ (id)_concertCriteriaArrayForInferenceType:(unint64_t)type graph:(id)graph
{
  graphCopy = graph;
  if (type == 1)
  {
    v7 = [self _concertCriteriaArrayForPublicEventInferenceWithGraph:graphCopy];
    goto LABEL_5;
  }

  if (!type)
  {
    v7 = [self _concertCriteriaArrayForMeaningInferenceWithGraph:graphCopy];
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

+ (id)_performanceCriteriaWithGraph:(id)graph
{
  v17[4] = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  v4 = [MEMORY[0x277CBEB98] setWithObjects:{@"performance", @"clown", @"ballet_dancer", @"acrobat", @"ballet", @"breakdancing", @"bellydance", @"magic", @"circus", @"orchestra", 0}];
  v5 = [graphCopy sceneNodesForSceneNames:v4];
  v17[0] = @"Nightlife";
  v17[1] = @"Culture";
  v17[2] = @"Entertainment";
  v17[3] = @"Performance";
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:4];
  v7 = [PGGraphPOINodeCollection poiNodesForLabels:v6 inGraph:graphCopy];

  if ([v5 count] && objc_msgSend(v7, "count"))
  {
    v8 = [MEMORY[0x277CBEB98] setWithObjects:{@"toy", 0}];
    v9 = [graphCopy sceneNodesForSceneNames:v8];

    v10 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:@"Performance" minimumScore:graphCopy graph:0.4];
    v11 = [[PGMeaningfulEventNumberTrait alloc] initWithNumberValue:2.0];
    [(PGMeaningfulEventCriteria *)v10 setNumberOfPeopleTrait:v11];

    v12 = [[PGMeaningfulEventCollectionTrait alloc] initWithNodes:v7];
    [(PGMeaningfulEventTrait *)v12 setMinimumScore:0.1];
    [(PGMeaningfulEventCriteria *)v10 setPoisTrait:v12];
    v13 = [[PGMeaningfulEventSceneCollectionTrait alloc] initWithNodes:v5 negativeNodes:v9];
    -[PGMeaningfulEventTrait setMinimumScore:](v13, "setMinimumScore:", 1.0 / [v5 count]);
    [(PGMeaningfulEventSceneCollectionTrait *)v13 setMinimumNumberOfHighConfidenceAssets:4];
    [(PGMeaningfulEventCriteria *)v10 setScenesTrait:v13];
    v14 = [PGMeaningfulEventRequiredCriteriaFactory locationsTraitNotMatchingPeopleHomeWorkLocationsForGraph:graphCopy];
    [(PGMeaningfulEventCriteria *)v10 setLocationsTrait:v14];
  }

  else
  {
    v10 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)_danceCriteriaWithGraph:(id)graph
{
  v4 = MEMORY[0x277D27780];
  graphCopy = graph;
  dance = [v4 dance];
  v7 = [self _publicEventCriteriaForCategoryWithName:dance inGraph:graphCopy];

  return v7;
}

+ (id)_theaterCriteriaWithGraph:(id)graph
{
  v4 = MEMORY[0x277D27780];
  graphCopy = graph;
  theater = [v4 theater];
  v7 = [self _publicEventCriteriaForCategoryWithName:theater inGraph:graphCopy];

  return v7;
}

+ (id)_winterSportCriteriaWithGraph:(id)graph sceneTaxonomy:(id)taxonomy
{
  v19[2] = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  v7 = [self _winterSportSceneNodesWithGraph:graphCopy sceneTaxonomy:taxonomy];
  v19[0] = @"Mountain";
  v19[1] = @"Nature";
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
  v9 = [PGGraphROINodeCollection roiNodesForLabels:v8 inGraph:graphCopy];

  if ([v7 count] && objc_msgSend(v9, "count"))
  {
    v10 = [self _beachingSceneNodesWithGraph:graphCopy];
    v11 = [self _negativeHikingSceneNodesWithGraph:graphCopy];
    v12 = [v10 collectionByFormingUnionWith:v11];

    v13 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:@"WinterSport" minimumScore:graphCopy graph:0.6];
    v14 = [[PGMeaningfulEventSceneCollectionTrait alloc] initWithNodes:v7 negativeNodes:v12];
    -[PGMeaningfulEventTrait setMinimumScore:](v14, "setMinimumScore:", 1.0 / [v7 count]);
    [(PGMeaningfulEventCriteria *)v13 setScenesTrait:v14];
    v15 = [[PGMeaningfulEventCollectionTrait alloc] initWithNodes:v9];
    [(PGMeaningfulEventTrait *)v15 setMinimumScore:0.25];
    [(PGMeaningfulEventCriteria *)v13 setRoisTrait:v15];
    [(PGMeaningfulEventRequiredCriteria *)v13 setMustBeInteresting:1];
    v16 = [PGMeaningfulEventRequiredCriteriaFactory locationsTraitNotMatchingPeopleHomeWorkLocationsForGraph:graphCopy];
    [(PGMeaningfulEventCriteria *)v13 setLocationsTrait:v16];
  }

  else
  {
    v13 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)_divingCriteriaWithGraph:(id)graph sceneTaxonomy:(id)taxonomy
{
  v23[1] = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  taxonomyCopy = taxonomy;
  v8 = [self _divingSceneNodesWithGraph:graphCopy];
  v23[0] = @"Water";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
  v10 = [PGGraphROINodeCollection roiNodesForLabels:v9 inGraph:graphCopy];

  if ([v8 count] && objc_msgSend(v10, "count"))
  {
    v11 = [self _winterSportSceneNodesWithGraph:graphCopy sceneTaxonomy:taxonomyCopy];
    v12 = [self _negativeHikingSceneNodesWithGraph:graphCopy];
    v13 = [v11 collectionByFormingUnionWith:v12];

    v14 = [MEMORY[0x277CBEB98] setWithObjects:{@"surfing", @"surfboard", @"watersport", @"jetski", @"kiteboarding", @"wakeboarding", 0}];
    v15 = [graphCopy sceneNodesForSceneNames:v14];
    v16 = [v13 collectionByFormingUnionWith:v15];

    v17 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:@"Diving" minimumScore:graphCopy graph:0.7];
    v18 = [[PGMeaningfulEventSceneCollectionTrait alloc] initWithNodes:v8 negativeNodes:v16];
    -[PGMeaningfulEventTrait setMinimumScore:](v18, "setMinimumScore:", 1.0 / [v8 count]);
    [(PGMeaningfulEventCriteria *)v17 setScenesTrait:v18];
    v19 = [[PGMeaningfulEventCollectionTrait alloc] initWithNodes:v10];
    [(PGMeaningfulEventTrait *)v19 setMinimumScore:0.25];
    [(PGMeaningfulEventCriteria *)v17 setRoisTrait:v19];
    [(PGMeaningfulEventRequiredCriteria *)v17 setMustBeInteresting:1];
    v20 = [PGMeaningfulEventRequiredCriteriaFactory locationsTraitNotMatchingFrequentLocationsForGraph:graphCopy];
    [(PGMeaningfulEventCriteria *)v17 setLocationsTrait:v20];
  }

  else
  {
    v17 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];

  return v17;
}

+ (id)_sportEventCriteriaArrayForPublicEventInferenceWithGraph:(id)graph
{
  v13[2] = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  v5 = [self _sportEventScenesTraitWithGraph:graphCopy];
  v6 = v5;
  if (v5)
  {
    [v5 setMinimumNumberOfHighConfidenceAssets:2];
    v7 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:@"SportEvent" minimumScore:graphCopy graph:0.4];
    [(PGMeaningfulEventCriteria *)v7 setScenesTrait:v6];
    v8 = [self _sportEventScenesTraitWithGraph:graphCopy];
    [v8 setMinimumNumberOfHighConfidenceAssets:7];
    v9 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:@"SportEvent" minimumScore:graphCopy graph:0.4];
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

+ (id)_sportEventCriteriaArrayForMeaningInferenceWithGraph:(id)graph
{
  v25[2] = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  array = [MEMORY[0x277CBEB18] array];
  sports = [MEMORY[0x277D27780] sports];
  v7 = [self _publicEventCriteriaForCategoryWithName:sports inGraph:graphCopy];

  if (v7)
  {
    [array addObject:v7];
  }

  v8 = [self _sportEventScenesTraitWithGraph:graphCopy];
  v25[0] = @"Entertainment";
  v25[1] = @"Stadium";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
  v10 = [PGGraphPOINodeCollection poiNodesForLabels:v9 inGraph:graphCopy];

  v11 = [graphCopy anyNodeForLabel:@"Park" domain:501 properties:0];
  if (v8 && [v10 count])
  {
    v12 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:@"SportEvent" minimumScore:graphCopy graph:0.4];
    [(PGMeaningfulEventCriteria *)v12 setScenesTrait:v8];
    v13 = [[PGMeaningfulEventNumberTrait alloc] initWithNumberValue:2.0];
    [(PGMeaningfulEventTrait *)v13 setMinimumScore:1.0];
    [(PGMeaningfulEventCriteria *)v12 setNumberOfPeopleTrait:v13];
    v14 = [[PGMeaningfulEventCollectionTrait alloc] initWithNodes:v10];
    [(PGMeaningfulEventTrait *)v14 setMinimumScore:0.25];
    [(PGMeaningfulEventCriteria *)v12 setPoisTrait:v14];
    v15 = [PGMeaningfulEventRequiredCriteriaFactory locationsTraitNotMatchingPeopleHomeWorkLocationsForGraph:graphCopy];
    [(PGMeaningfulEventCriteria *)v12 setLocationsTrait:v15];
    if (v11)
    {
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __112__PGPhotosChallengeMeaningfulEventRequiredCriteriaFactory__sportEventCriteriaArrayForMeaningInferenceWithGraph___block_invoke;
      v23[3] = &unk_2788815A8;
      v24 = v11;
      [(PGMeaningfulEventCriteria *)v12 poisTrait];
      v22 = v11;
      v16 = v7;
      v17 = v13;
      v19 = v18 = array;
      [v19 setAdditionalMatchingBlock:v23];

      array = v18;
      v13 = v17;
      v7 = v16;
      v11 = v22;
    }

    [array addObject:v12];
  }

  v20 = *MEMORY[0x277D85DE8];

  return array;
}

BOOL __112__PGPhotosChallengeMeaningfulEventRequiredCriteriaFactory__sportEventCriteriaArrayForMeaningInferenceWithGraph___block_invoke(uint64_t a1, void *a2, void *a3)
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
    v11[2] = __112__PGPhotosChallengeMeaningfulEventRequiredCriteriaFactory__sportEventCriteriaArrayForMeaningInferenceWithGraph___block_invoke_2;
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

void __112__PGPhotosChallengeMeaningfulEventRequiredCriteriaFactory__sportEventCriteriaArrayForMeaningInferenceWithGraph___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 collection];
  v6 = [v5 areaNodes];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __112__PGPhotosChallengeMeaningfulEventRequiredCriteriaFactory__sportEventCriteriaArrayForMeaningInferenceWithGraph___block_invoke_3;
  v9[3] = &unk_278881558;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v10 = v7;
  v11 = v8;
  v12 = a3;
  [v6 enumerateNodesUsingBlock:v9];
}

void __112__PGPhotosChallengeMeaningfulEventRequiredCriteriaFactory__sportEventCriteriaArrayForMeaningInferenceWithGraph___block_invoke_3(uint64_t a1, void *a2, _BYTE *a3)
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

+ (id)_sportEventCriteriaArrayForInferenceType:(unint64_t)type graph:(id)graph
{
  graphCopy = graph;
  if (type == 1)
  {
    v7 = [self _sportEventCriteriaArrayForPublicEventInferenceWithGraph:graphCopy];
    goto LABEL_5;
  }

  if (!type)
  {
    v7 = [self _sportEventCriteriaArrayForMeaningInferenceWithGraph:graphCopy];
LABEL_5:
    v8 = v7;
    goto LABEL_7;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

+ (id)_celebrationCriteriaWithGraph:(id)graph
{
  graphCopy = graph;
  v4 = [MEMORY[0x277CBEB98] setWithObjects:{@"graduation", @"disco_ball", @"ceremony", @"wedding", 0}];
  v5 = [graphCopy sceneNodesForSceneNames:v4];
  if ([v5 count])
  {
    v6 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:@"Celebration" minimumScore:graphCopy graph:0.4];
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

+ (id)_weddingCriteriaWithGraph:(id)graph sceneTaxonomy:(id)taxonomy
{
  v21[2] = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  v7 = [self _weddingSceneNodesWithGraph:graphCopy includeWedding:1 sceneTaxonomy:taxonomy];
  if ([v7 count])
  {
    v8 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:@"Wedding" minimumScore:graphCopy graph:0.4];
    v9 = [PGMeaningfulEventRequiredCriteriaFactory locationsTraitNotMatchingPeopleWorkLocationsForGraph:graphCopy];
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
    v14 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:@"Wedding" minimumScore:graphCopy graph:0.4];
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

+ (void)_birthdayCriteriaWithGraph:(id)graph strongBirthdayCriteria:(id *)criteria weakBirthdayCriteria:(id *)birthdayCriteria sceneTaxonomy:(id)taxonomy
{
  graphCopy = graph;
  v10 = MEMORY[0x277CBEB98];
  taxonomyCopy = taxonomy;
  v33 = [v10 setWithObjects:{@"celebration", @"birthday_cake", @"sparkling_wine", @"cake", @"pinata", 0}];
  v12 = [graphCopy sceneNodesForSceneNames:?];
  v13 = [MEMORY[0x277CBEB98] setWithObjects:{@"restaurant", @"bar", 0}];
  v14 = [graphCopy sceneNodesForSceneNames:v13];

  v15 = [v14 collectionByFormingUnionWith:v12];

  v16 = [self _weddingSceneNodesWithGraph:graphCopy includeWedding:1 sceneTaxonomy:taxonomyCopy];

  v17 = [MEMORY[0x277CBEB98] setWithObjects:{@"grave", 0}];
  v18 = [graphCopy sceneNodesForSceneNames:v17];
  v19 = [v18 collectionByFormingUnionWith:v16];

  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __144__PGPhotosChallengeMeaningfulEventRequiredCriteriaFactory__birthdayCriteriaWithGraph_strongBirthdayCriteria_weakBirthdayCriteria_sceneTaxonomy___block_invoke;
  aBlock[3] = &unk_278881530;
  v22 = graphCopy;
  v37 = v22;
  v38 = v15;
  v39 = v19;
  v40 = v12;
  v23 = array;
  v41 = v23;
  v24 = array2;
  v42 = v24;
  v25 = v12;
  v26 = v19;
  v27 = v15;
  v28 = _Block_copy(aBlock);
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __144__PGPhotosChallengeMeaningfulEventRequiredCriteriaFactory__birthdayCriteriaWithGraph_strongBirthdayCriteria_weakBirthdayCriteria_sceneTaxonomy___block_invoke_5;
  v34[3] = &unk_278885D38;
  v35 = v28;
  v29 = v28;
  [v22 enumeratePersonNodesIncludingMe:1 withBlock:v34];
  if (criteria)
  {
    v30 = v23;
    *criteria = v23;
  }

  if (birthdayCriteria)
  {
    v31 = v24;
    *birthdayCriteria = v24;
  }
}

void __144__PGPhotosChallengeMeaningfulEventRequiredCriteriaFactory__birthdayCriteriaWithGraph_strongBirthdayCriteria_weakBirthdayCriteria_sceneTaxonomy___block_invoke(id *a1, void *a2)
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
    v26[2] = __144__PGPhotosChallengeMeaningfulEventRequiredCriteriaFactory__birthdayCriteriaWithGraph_strongBirthdayCriteria_weakBirthdayCriteria_sceneTaxonomy___block_invoke_2;
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
    aBlock[2] = __144__PGPhotosChallengeMeaningfulEventRequiredCriteriaFactory__birthdayCriteriaWithGraph_strongBirthdayCriteria_weakBirthdayCriteria_sceneTaxonomy___block_invoke_4;
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

void __144__PGPhotosChallengeMeaningfulEventRequiredCriteriaFactory__birthdayCriteriaWithGraph_strongBirthdayCriteria_weakBirthdayCriteria_sceneTaxonomy___block_invoke_2(uint64_t a1, void *a2)
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
              v17[2] = __144__PGPhotosChallengeMeaningfulEventRequiredCriteriaFactory__birthdayCriteriaWithGraph_strongBirthdayCriteria_weakBirthdayCriteria_sceneTaxonomy___block_invoke_3;
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

PGMeaningfulEventRequiredCriteria *__144__PGPhotosChallengeMeaningfulEventRequiredCriteriaFactory__birthdayCriteriaWithGraph_strongBirthdayCriteria_weakBirthdayCriteria_sceneTaxonomy___block_invoke_4(uint64_t a1, int a2, void *a3, int a4)
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

unint64_t __144__PGPhotosChallengeMeaningfulEventRequiredCriteriaFactory__birthdayCriteriaWithGraph_strongBirthdayCriteria_weakBirthdayCriteria_sceneTaxonomy___block_invoke_3(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [a2 category];
  if (result <= 4 && ((1 << result) & 0x16) != 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

+ (id)_requiredCriteriaForIdentifiers:(id)identifiers inferenceType:(unint64_t)type graph:(id)graph sceneTaxonomy:(id)taxonomy params:(id)params
{
  v59[3] = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  graphCopy = graph;
  taxonomyCopy = taxonomy;
  paramsCopy = params;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __132__PGPhotosChallengeMeaningfulEventRequiredCriteriaFactory__requiredCriteriaForIdentifiers_inferenceType_graph_sceneTaxonomy_params___block_invoke;
  aBlock[3] = &unk_2788814B8;
  v17 = dictionary;
  v58 = v17;
  v18 = _Block_copy(aBlock);
  if (identifiersCopy)
  {
    if ([identifiersCopy containsObject:@"Wedding"])
    {
      v19 = [self _weddingCriteriaWithGraph:graphCopy sceneTaxonomy:taxonomyCopy];
      [v17 setObject:v19 forKeyedSubscript:@"Wedding"];
    }

    if (([identifiersCopy containsObject:@"Birthday"] & 1) == 0 && (objc_msgSend(identifiersCopy, "containsObject:", @"WeakBirthday") & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v20 = [self _weddingCriteriaWithGraph:graphCopy sceneTaxonomy:taxonomyCopy];
    [v17 setObject:v20 forKeyedSubscript:@"Wedding"];
  }

  v55 = 0;
  v56 = 0;
  [self _birthdayCriteriaWithGraph:graphCopy strongBirthdayCriteria:&v56 weakBirthdayCriteria:&v55 sceneTaxonomy:taxonomyCopy];
  v21 = v56;
  v22 = v55;
  if (identifiersCopy)
  {
    if ([identifiersCopy containsObject:@"Birthday"])
    {
      [v17 setObject:v21 forKeyedSubscript:@"Birthday"];
    }

    if (([identifiersCopy containsObject:@"WeakBirthday"] & 1) == 0)
    {

      goto LABEL_15;
    }
  }

  else
  {
    [v17 setObject:v21 forKeyedSubscript:@"Birthday"];
  }

  [v17 setObject:v22 forKeyedSubscript:@"WeakBirthday"];

  if (!identifiersCopy)
  {
    v24 = [self _anniversaryCriteriaWithGraph:graphCopy];
    [v17 setObject:v24 forKeyedSubscript:@"Anniversary"];

    goto LABEL_20;
  }

LABEL_15:
  if ([identifiersCopy containsObject:@"Anniversary"])
  {
    v23 = [self _anniversaryCriteriaWithGraph:graphCopy];
    [v17 setObject:v23 forKeyedSubscript:@"Anniversary"];
  }

  if (([identifiersCopy containsObject:@"Celebration"] & 1) == 0)
  {
LABEL_21:
    if ([identifiersCopy containsObject:@"Performance"])
    {
      v26 = [self _performanceCriteriaWithGraph:graphCopy];
      v18[2](v18, @"Performance", v26);
    }

    if (([identifiersCopy containsObject:@"Concert"] & 1) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_20:
  v25 = [self _celebrationCriteriaWithGraph:graphCopy];
  v18[2](v18, @"Celebration", v25);

  if (identifiersCopy)
  {
    goto LABEL_21;
  }

  v27 = [self _performanceCriteriaWithGraph:graphCopy];
  v18[2](v18, @"Performance", v27);

LABEL_26:
  v28 = [self _concertCriteriaArrayForInferenceType:type graph:graphCopy];
  [v17 setObject:v28 forKeyedSubscript:@"Concert"];

  if (!identifiersCopy)
  {
    v30 = [self _festivalCriteriaArrayWithGraph:graphCopy];
    [v17 setObject:v30 forKeyedSubscript:@"Festival"];

    goto LABEL_32;
  }

LABEL_27:
  if ([identifiersCopy containsObject:@"Festival"])
  {
    v29 = [self _festivalCriteriaArrayWithGraph:graphCopy];
    [v17 setObject:v29 forKeyedSubscript:@"Festival"];
  }

  if (([identifiersCopy containsObject:@"Theater"] & 1) == 0)
  {
LABEL_33:
    if ([identifiersCopy containsObject:@"Dance"])
    {
      v32 = [self _danceCriteriaWithGraph:graphCopy];
      v18[2](v18, @"Dance", v32);
    }

    if (([identifiersCopy containsObject:@"Hiking"] & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

LABEL_32:
  v31 = [self _theaterCriteriaWithGraph:graphCopy];
  v18[2](v18, @"Theater", v31);

  if (identifiersCopy)
  {
    goto LABEL_33;
  }

  v33 = [self _danceCriteriaWithGraph:graphCopy];
  v18[2](v18, @"Dance", v33);

LABEL_38:
  v34 = [self _hikingCriteriaWithGraph:graphCopy sceneTaxonomy:taxonomyCopy];
  [v17 setObject:v34 forKeyedSubscript:@"Hiking"];

  if (!identifiersCopy)
  {
    v36 = [self _climbingCriteriaWithGraph:graphCopy sceneTaxonomy:taxonomyCopy];
    v18[2](v18, @"Climbing", v36);

    goto LABEL_44;
  }

LABEL_39:
  if ([identifiersCopy containsObject:@"Climbing"])
  {
    v35 = [self _climbingCriteriaWithGraph:graphCopy sceneTaxonomy:taxonomyCopy];
    v18[2](v18, @"Climbing", v35);
  }

  if (([identifiersCopy containsObject:@"Beaching"] & 1) == 0)
  {
LABEL_45:
    if ([identifiersCopy containsObject:@"SportEvent"])
    {
      v38 = [self _sportEventCriteriaArrayForInferenceType:type graph:graphCopy];
      [v17 setObject:v38 forKeyedSubscript:@"SportEvent"];
    }

    if (([identifiersCopy containsObject:@"WinterSport"] & 1) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

LABEL_44:
  v37 = [self _beachingCriteriaWithGraph:graphCopy sceneTaxonomy:taxonomyCopy];
  v18[2](v18, @"Beaching", v37);

  if (identifiersCopy)
  {
    goto LABEL_45;
  }

  v39 = [self _sportEventCriteriaArrayForInferenceType:type graph:graphCopy];
  [v17 setObject:v39 forKeyedSubscript:@"SportEvent"];

LABEL_50:
  v40 = [self _winterSportCriteriaWithGraph:graphCopy sceneTaxonomy:taxonomyCopy];
  v18[2](v18, @"WinterSport", v40);

  if (!identifiersCopy)
  {
    v43 = [self _divingCriteriaWithGraph:graphCopy sceneTaxonomy:taxonomyCopy];
    v18[2](v18, @"Diving", v43);

    v59[0] = @"Lunch";
    v59[1] = @"Dinner";
    v59[2] = @"Breakfast";
    array = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:3];
    goto LABEL_60;
  }

LABEL_51:
  if ([identifiersCopy containsObject:@"Diving"])
  {
    v41 = [self _divingCriteriaWithGraph:graphCopy sceneTaxonomy:taxonomyCopy];
    v18[2](v18, @"Diving", v41);
  }

  array = [MEMORY[0x277CBEB18] array];
  if ([identifiersCopy containsObject:@"Lunch"])
  {
    [array addObject:@"Lunch"];
  }

  if ([identifiersCopy containsObject:@"Dinner"])
  {
    [array addObject:@"Dinner"];
  }

  if ([identifiersCopy containsObject:@"Breakfast"])
  {
    [array addObject:@"Breakfast"];
  }

LABEL_60:
  if ([array count])
  {
    v44 = [self _restaurantCriteriaByCriteriaForIdentifiers:array withGraph:graphCopy sceneTaxonomy:taxonomyCopy params:paramsCopy];
    [v17 addEntriesFromDictionary:v44];
  }

  if (identifiersCopy)
  {
    if ([identifiersCopy containsObject:@"NightOut"])
    {
      v45 = [self _nightOutCriteriaArrayWithGraph:graphCopy sceneTaxonomy:taxonomyCopy];
      [v17 setObject:v45 forKeyedSubscript:@"NightOut"];
    }

    if (([identifiersCopy containsObject:@"Entertainment"] & 1) == 0)
    {
LABEL_69:
      if ([identifiersCopy containsObject:@"AmusementPark"])
      {
        v48 = [self _amusementParkCriteriaArrayWithGraph:graphCopy sceneTaxonomy:taxonomyCopy];
        [v17 setObject:v48 forKeyedSubscript:@"AmusementPark"];
      }

      if (([identifiersCopy containsObject:@"Museum"] & 1) == 0)
      {
        goto LABEL_75;
      }

      goto LABEL_74;
    }
  }

  else
  {
    v46 = [self _nightOutCriteriaArrayWithGraph:graphCopy sceneTaxonomy:taxonomyCopy];
    [v17 setObject:v46 forKeyedSubscript:@"NightOut"];
  }

  v47 = [self _entertainmentCriteriaWithGraph:graphCopy];
  v18[2](v18, @"Entertainment", v47);

  if (identifiersCopy)
  {
    goto LABEL_69;
  }

  v49 = [self _amusementParkCriteriaArrayWithGraph:graphCopy sceneTaxonomy:taxonomyCopy];
  [v17 setObject:v49 forKeyedSubscript:@"AmusementPark"];

LABEL_74:
  v50 = [self _museumCriteriaArrayForInferenceType:type graph:graphCopy];
  [v17 setObject:v50 forKeyedSubscript:@"Museum"];

  if (!identifiersCopy)
  {
LABEL_76:
    v51 = [self _socialGroupGatheringCriteriaWithGraph:graphCopy];
    [v17 setObject:v51 forKeyedSubscript:@"Gathering"];

    goto LABEL_77;
  }

LABEL_75:
  if ([identifiersCopy containsObject:@"Gathering"])
  {
    goto LABEL_76;
  }

LABEL_77:
  v52 = v17;

  v53 = *MEMORY[0x277D85DE8];
  return v17;
}

void __132__PGPhotosChallengeMeaningfulEventRequiredCriteriaFactory__requiredCriteriaForIdentifiers_inferenceType_graph_sceneTaxonomy_params___block_invoke(uint64_t a1, void *a2, void *a3)
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

+ (id)requiredCriteriaForIdentifiers:(id)identifiers inferenceType:(unint64_t)type graph:(id)graph sceneTaxonomy:(id)taxonomy params:(id)params
{
  v12 = MEMORY[0x277CBEB98];
  paramsCopy = params;
  taxonomyCopy = taxonomy;
  graphCopy = graph;
  v16 = [v12 setWithArray:identifiers];
  v17 = [self _requiredCriteriaForIdentifiers:v16 inferenceType:type graph:graphCopy sceneTaxonomy:taxonomyCopy params:paramsCopy];

  return v17;
}

@end