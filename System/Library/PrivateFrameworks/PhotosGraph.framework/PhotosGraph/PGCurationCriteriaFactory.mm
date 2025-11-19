@interface PGCurationCriteriaFactory
- (PGCurationCriteriaFactory)init;
- (id)_anniversaryCriteriaWithPersonLocalIdentifier:(id)a3 client:(unint64_t)a4;
- (id)_beachingCriteriaWithClient:(unint64_t)a3;
- (id)_birthdayCriteriaWithPersonLocalIdentifiers:(id)a3 client:(unint64_t)a4;
- (id)_breakfastCriteriaWithClient:(unint64_t)a3;
- (id)_climbingCriteriaWithClient:(unint64_t)a3;
- (id)_compulsoryRequiredTraitsFromBaseSceneNames:(id)a3 leafSceneNames:(id)a4;
- (id)_concertCriteriaWithClient:(unint64_t)a3;
- (id)_dinnerCriteriaWithClient:(unint64_t)a3;
- (id)_divingCriteriaWithClient:(unint64_t)a3;
- (id)_entertainmentCriteriaWithClient:(unint64_t)a3;
- (id)_festivalCriteriaWithClient:(unint64_t)a3;
- (id)_hikingCriteriaWithClient:(unint64_t)a3;
- (id)_holidayEventCriteriaWithGraph:(id)a3 featureNodes:(id)a4 client:(unint64_t)a5;
- (id)_longTripCriteriaWithClient:(unint64_t)a3;
- (id)_lunchCriteriaWithClient:(unint64_t)a3;
- (id)_memoriesRestaurantScenesTrait;
- (id)_museumCriteriaWithClient:(unint64_t)a3;
- (id)_nightOutCriteriaWithClient:(unint64_t)a3;
- (id)_performanceCriteriaWithClient:(unint64_t)a3;
- (id)_sceneNamesFromBaseSceneNames:(id)a3 leafSceneNames:(id)a4;
- (id)_searchFallCriteria;
- (id)_searchRestaurantCompulsoryScenesTrait;
- (id)_searchRestaurantScenesTrait;
- (id)_searchSpringCriteria;
- (id)_searchSummerCriteria;
- (id)_searchWinterCriteria;
- (id)_shortTripCriteriaWithClient:(unint64_t)a3;
- (id)_sportEventCriteriaWithClient:(unint64_t)a3;
- (id)_tripScenesTrait;
- (id)_weddingCriteriaWithClient:(unint64_t)a3;
- (id)_winterSportCriteriaWithClient:(unint64_t)a3;
- (id)curationCriteriaWithCollection:(id)a3 meaningLabel:(id)a4 inGraph:(id)a5 client:(unint64_t)a6;
- (id)curationCriteriaWithMeaningLabel:(id)a3 featureNodes:(id)a4 inGraph:(id)a5 client:(unint64_t)a6;
- (id)curationCriteriaWithSeasonName:(id)a3 client:(unint64_t)a4;
- (id)foodieCurationCriteriaWithClient:(unint64_t)a3;
- (id)foodieCurationCriteriaWithPersonLocalIdentifier:(id)a3 client:(unint64_t)a4;
- (id)holidayServiceWithGraph:(id)a3;
- (id)petCurationCriteriaWithCollection:(id)a3 client:(unint64_t)a4 curationContext:(id)a5;
- (id)tripCurationCriteriaWithCollection:(id)a3 client:(unint64_t)a4;
@end

@implementation PGCurationCriteriaFactory

- (id)_sceneNamesFromBaseSceneNames:(id)a3 leafSceneNames:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v16 = a4;
  v7 = [objc_alloc(MEMORY[0x277CBEB58]) initWithArray:v16];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [(CLSSceneTaxonomyHierarchy *)self->_sceneTaxonomy nodeForName:*(*(&v19 + 1) + 8 * i)];
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __74__PGCurationCriteriaFactory__sceneNamesFromBaseSceneNames_leafSceneNames___block_invoke;
        v17[3] = &unk_2788884F0;
        v18 = v7;
        [v13 traverseChildrenUsingNameBlock:v17];
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)_tripScenesTrait
{
  v2 = [(PGCurationCriteriaFactory *)self _sceneNamesFromBaseSceneNames:&unk_2844866C0 leafSceneNames:MEMORY[0x277CBEBF8]];
  v3 = [[PGCurationSceneTrait alloc] initWithSceneNames:v2];

  return v3;
}

- (id)_searchRestaurantCompulsoryScenesTrait
{
  v2 = [(PGCurationCriteriaFactory *)self _sceneNamesFromBaseSceneNames:MEMORY[0x277CBEBF8] leafSceneNames:&unk_2844866A8];
  v3 = [[PGCurationSceneTrait alloc] initWithSceneNames:v2];

  return v3;
}

- (id)_searchRestaurantScenesTrait
{
  v2 = [(PGCurationCriteriaFactory *)self _sceneNamesFromBaseSceneNames:&unk_284486690 leafSceneNames:MEMORY[0x277CBEBF8]];
  v3 = [[PGCurationSceneTrait alloc] initWithSceneNames:v2];

  return v3;
}

- (id)_memoriesRestaurantScenesTrait
{
  v2 = [(PGCurationCriteriaFactory *)self _sceneNamesFromBaseSceneNames:&unk_284486660 leafSceneNames:&unk_284486678];
  v3 = [[PGCurationSceneTrait alloc] initWithSceneNames:v2];

  return v3;
}

- (id)_searchFallCriteria
{
  v3 = [[PGCurationCriteria alloc] initWithMinimumAssetsRatio:2 client:0.1];
  v4 = MEMORY[0x277CBEBF8];
  v5 = [(PGCurationCriteriaFactory *)self _compulsoryRequiredTraitsFromBaseSceneNames:&unk_284486630 leafSceneNames:MEMORY[0x277CBEBF8]];
  [(PGCurationCriteria *)v3 setCompulsoryScenesTrait:v5];

  v6 = [(PGCurationCriteriaFactory *)self _sceneNamesFromBaseSceneNames:&unk_284486648 leafSceneNames:v4];
  v7 = [[PGCurationSceneTrait alloc] initWithSceneNames:v6];
  [(PGCurationCriteria *)v3 setScenesTrait:v7];

  return v3;
}

- (id)_searchSummerCriteria
{
  v3 = [[PGCurationCriteria alloc] initWithMinimumAssetsRatio:2 client:0.1];
  v4 = MEMORY[0x277CBEBF8];
  v5 = [(PGCurationCriteriaFactory *)self _compulsoryRequiredTraitsFromBaseSceneNames:&unk_284486600 leafSceneNames:MEMORY[0x277CBEBF8]];
  [(PGCurationCriteria *)v3 setCompulsoryScenesTrait:v5];

  v6 = [(PGCurationCriteriaFactory *)self _sceneNamesFromBaseSceneNames:&unk_284486618 leafSceneNames:v4];
  v7 = [[PGCurationSceneTrait alloc] initWithSceneNames:v6];
  [(PGCurationCriteria *)v3 setScenesTrait:v7];

  return v3;
}

- (id)_searchSpringCriteria
{
  v3 = [[PGCurationCriteria alloc] initWithMinimumAssetsRatio:2 client:0.1];
  v4 = MEMORY[0x277CBEBF8];
  v5 = [(PGCurationCriteriaFactory *)self _compulsoryRequiredTraitsFromBaseSceneNames:&unk_2844865D0 leafSceneNames:MEMORY[0x277CBEBF8]];
  [(PGCurationCriteria *)v3 setCompulsoryScenesTrait:v5];

  v6 = [(PGCurationCriteriaFactory *)self _sceneNamesFromBaseSceneNames:&unk_2844865E8 leafSceneNames:v4];
  v7 = [[PGCurationSceneTrait alloc] initWithSceneNames:v6];
  [(PGCurationCriteria *)v3 setScenesTrait:v7];

  return v3;
}

- (id)_searchWinterCriteria
{
  v3 = [[PGCurationCriteria alloc] initWithMinimumAssetsRatio:2 client:0.1];
  v4 = MEMORY[0x277CBEBF8];
  v5 = [(PGCurationCriteriaFactory *)self _compulsoryRequiredTraitsFromBaseSceneNames:&unk_2844865A0 leafSceneNames:MEMORY[0x277CBEBF8]];
  [(PGCurationCriteria *)v3 setCompulsoryScenesTrait:v5];

  v6 = [(PGCurationCriteriaFactory *)self _sceneNamesFromBaseSceneNames:&unk_2844865B8 leafSceneNames:v4];
  v7 = [[PGCurationSceneTrait alloc] initWithSceneNames:v6];
  [(PGCurationCriteria *)v3 setScenesTrait:v7];

  return v3;
}

- (id)_compulsoryRequiredTraitsFromBaseSceneNames:(id)a3 leafSceneNames:(id)a4
{
  v4 = [(PGCurationCriteriaFactory *)self _sceneNamesFromBaseSceneNames:a3 leafSceneNames:MEMORY[0x277CBEBF8]];
  v5 = [[PGCurationSceneTrait alloc] initWithSceneNames:v4];
  [(PGCurationTrait *)v5 setMinimumScore:0.1];

  return v5;
}

- (id)_longTripCriteriaWithClient:(unint64_t)a3
{
  v4 = [[PGCurationCriteria alloc] initWithMinimumAssetsRatio:a3 client:0.05];
  v5 = [(PGCurationCriteriaFactory *)self _tripScenesTrait];
  [(PGCurationCriteria *)v4 setScenesTrait:v5];

  [(PGCurationCriteria *)v4 setFaceFilter:0];

  return v4;
}

- (id)_shortTripCriteriaWithClient:(unint64_t)a3
{
  v4 = [[PGCurationCriteria alloc] initWithMinimumAssetsRatio:a3 client:0.05];
  v5 = [(PGCurationCriteriaFactory *)self _tripScenesTrait];
  [(PGCurationCriteria *)v4 setScenesTrait:v5];

  return v4;
}

- (id)_dinnerCriteriaWithClient:(unint64_t)a3
{
  v5 = [[PGCurationCriteria alloc] initWithMinimumAssetsRatio:a3 client:0.1];
  if (a3)
  {
    v6 = 16;
  }

  else
  {
    v6 = 48;
  }

  v7 = [[PGCurationPartOfDayTrait alloc] initWithPartOfDay:v6];
  [(PGCurationTrait *)v7 setMinimumScore:0.1];
  [(PGCurationCriteria *)v5 setPartOfDayTrait:v7];
  if (a3 >= 2)
  {
    if (a3 == 2)
    {
      v9 = [(PGCurationCriteriaFactory *)self _searchRestaurantCompulsoryScenesTrait];
      [(PGCurationCriteria *)v5 setCompulsoryScenesTrait:v9];

      v10 = [(PGCurationCriteriaFactory *)self _searchRestaurantScenesTrait];
      [(PGCurationCriteria *)v5 setScenesTrait:v10];

      [(PGCurationCriteria *)v5 setFaceFilter:0];
    }
  }

  else
  {
    v8 = [(PGCurationCriteriaFactory *)self _memoriesRestaurantScenesTrait];
    [(PGCurationCriteria *)v5 setScenesTrait:v8];
  }

  return v5;
}

- (id)_lunchCriteriaWithClient:(unint64_t)a3
{
  v5 = [[PGCurationCriteria alloc] initWithMinimumAssetsRatio:a3 client:0.1];
  v6 = [[PGCurationPartOfDayTrait alloc] initWithPartOfDay:4];
  [(PGCurationTrait *)v6 setMinimumScore:0.1];
  [(PGCurationCriteria *)v5 setPartOfDayTrait:v6];
  if (a3 >= 2)
  {
    if (a3 == 2)
    {
      v8 = [(PGCurationCriteriaFactory *)self _searchRestaurantCompulsoryScenesTrait];
      [(PGCurationCriteria *)v5 setCompulsoryScenesTrait:v8];

      v9 = [(PGCurationCriteriaFactory *)self _searchRestaurantScenesTrait];
      [(PGCurationCriteria *)v5 setScenesTrait:v9];

      [(PGCurationCriteria *)v5 setFaceFilter:0];
    }
  }

  else
  {
    v7 = [(PGCurationCriteriaFactory *)self _memoriesRestaurantScenesTrait];
    [(PGCurationCriteria *)v5 setScenesTrait:v7];
  }

  return v5;
}

- (id)_breakfastCriteriaWithClient:(unint64_t)a3
{
  v5 = [[PGCurationCriteria alloc] initWithMinimumAssetsRatio:a3 client:0.1];
  v6 = [[PGCurationPartOfDayTrait alloc] initWithPartOfDay:2];
  [(PGCurationTrait *)v6 setMinimumScore:0.1];
  [(PGCurationCriteria *)v5 setPartOfDayTrait:v6];
  if (a3 >= 2)
  {
    if (a3 == 2)
    {
      v8 = [(PGCurationCriteriaFactory *)self _searchRestaurantCompulsoryScenesTrait];
      [(PGCurationCriteria *)v5 setCompulsoryScenesTrait:v8];

      v9 = [(PGCurationCriteriaFactory *)self _searchRestaurantScenesTrait];
      [(PGCurationCriteria *)v5 setScenesTrait:v9];

      [(PGCurationCriteria *)v5 setFaceFilter:0];
    }
  }

  else
  {
    v7 = [(PGCurationCriteriaFactory *)self _memoriesRestaurantScenesTrait];
    [(PGCurationCriteria *)v5 setScenesTrait:v7];
  }

  return v5;
}

- (id)_nightOutCriteriaWithClient:(unint64_t)a3
{
  v5 = [[PGCurationCriteria alloc] initWithMinimumAssetsRatio:a3 client:0.1];
  v6 = [(PGCurationCriteriaFactory *)self _sceneNamesFromBaseSceneNames:&unk_284486588 leafSceneNames:MEMORY[0x277CBEBF8]];
  v7 = [[PGCurationSceneTrait alloc] initWithSceneNames:v6];
  [(PGCurationCriteria *)v5 setScenesTrait:v7];

  v8 = [[PGCurationPartOfDayTrait alloc] initWithPartOfDay:48];
  [(PGCurationTrait *)v8 setMinimumScore:0.1];
  [(PGCurationCriteria *)v5 setPartOfDayTrait:v8];
  if (a3 == 2)
  {
    [(PGCurationCriteria *)v5 setFaceFilter:0];
  }

  return v5;
}

- (id)_sportEventCriteriaWithClient:(unint64_t)a3
{
  v5 = [[PGCurationCriteria alloc] initWithMinimumAssetsRatio:a3 client:0.1];
  v6 = [(PGCurationCriteriaFactory *)self _sceneNamesFromBaseSceneNames:&unk_284486570 leafSceneNames:MEMORY[0x277CBEBF8]];
  v7 = [[PGCurationSceneTrait alloc] initWithSceneNames:v6];
  [(PGCurationCriteria *)v5 setScenesTrait:v7];

  if (a3 == 2)
  {
    [(PGCurationCriteria *)v5 setFaceFilter:0];
  }

  return v5;
}

- (id)_museumCriteriaWithClient:(unint64_t)a3
{
  v4 = [[PGCurationCriteria alloc] initWithMinimumAssetsRatio:a3 client:0.1];
  v5 = [(PGCurationCriteriaFactory *)self _sceneNamesFromBaseSceneNames:MEMORY[0x277CBEBF8] leafSceneNames:&unk_284486558];
  v6 = [[PGCurationSceneTrait alloc] initWithSceneNames:v5];
  [(PGCurationCriteria *)v4 setScenesTrait:v6];

  [(PGCurationCriteria *)v4 setFaceFilter:0];

  return v4;
}

- (id)_performanceCriteriaWithClient:(unint64_t)a3
{
  v4 = [[PGCurationCriteria alloc] initWithMinimumAssetsRatio:a3 client:0.1];
  v5 = [(PGCurationCriteriaFactory *)self _sceneNamesFromBaseSceneNames:&unk_284486540 leafSceneNames:MEMORY[0x277CBEBF8]];
  v6 = [[PGCurationSceneTrait alloc] initWithSceneNames:v5];
  [(PGCurationCriteria *)v4 setScenesTrait:v6];

  return v4;
}

- (id)_festivalCriteriaWithClient:(unint64_t)a3
{
  v4 = [[PGCurationCriteria alloc] initWithMinimumAssetsRatio:a3 client:0.1];
  v5 = [(PGCurationCriteriaFactory *)self _sceneNamesFromBaseSceneNames:&unk_284486528 leafSceneNames:MEMORY[0x277CBEBF8]];
  v6 = [[PGCurationSceneTrait alloc] initWithSceneNames:v5];
  [(PGCurationCriteria *)v4 setScenesTrait:v6];

  [(PGCurationCriteria *)v4 setFaceFilter:0];

  return v4;
}

- (id)_concertCriteriaWithClient:(unint64_t)a3
{
  v4 = [[PGCurationCriteria alloc] initWithMinimumAssetsRatio:a3 client:0.1];
  v5 = [(PGCurationCriteriaFactory *)self _sceneNamesFromBaseSceneNames:&unk_284486510 leafSceneNames:MEMORY[0x277CBEBF8]];
  v6 = [[PGCurationSceneTrait alloc] initWithSceneNames:v5];
  [(PGCurationCriteria *)v4 setScenesTrait:v6];

  [(PGCurationCriteria *)v4 setFaceFilter:0];

  return v4;
}

- (id)_entertainmentCriteriaWithClient:(unint64_t)a3
{
  v4 = [[PGCurationCriteria alloc] initWithMinimumAssetsRatio:a3 client:0.1];
  v5 = +[PGMeaningfulEventRequiredCriteriaFactory entertainmentSceneTaxonomyNames];
  v6 = [(PGCurationCriteriaFactory *)self _sceneNamesFromBaseSceneNames:v5 leafSceneNames:MEMORY[0x277CBEBF8]];
  v7 = [[PGCurationSceneTrait alloc] initWithSceneNames:v6];
  [(PGCurationCriteria *)v4 setScenesTrait:v7];

  return v4;
}

- (id)_climbingCriteriaWithClient:(unint64_t)a3
{
  v5 = [[PGCurationCriteria alloc] initWithMinimumAssetsRatio:a3 client:0.1];
  v6 = [(PGCurationCriteriaFactory *)self _sceneNamesFromBaseSceneNames:&unk_2844864F8 leafSceneNames:MEMORY[0x277CBEBF8]];
  v7 = [[PGCurationSceneTrait alloc] initWithSceneNames:v6];
  [(PGCurationCriteria *)v5 setScenesTrait:v7];

  if (a3 == 2)
  {
    [(PGCurationCriteria *)v5 setFaceFilter:0];
  }

  return v5;
}

- (id)_beachingCriteriaWithClient:(unint64_t)a3
{
  v5 = [[PGCurationCriteria alloc] initWithMinimumAssetsRatio:a3 client:0.1];
  v6 = [(PGCurationCriteriaFactory *)self _sceneNamesFromBaseSceneNames:&unk_2844864E0 leafSceneNames:MEMORY[0x277CBEBF8]];
  v7 = [[PGCurationSceneTrait alloc] initWithSceneNames:v6];
  [(PGCurationCriteria *)v5 setScenesTrait:v7];

  if (a3 == 2)
  {
    [(PGCurationCriteria *)v5 setFaceFilter:0];
  }

  return v5;
}

- (id)_winterSportCriteriaWithClient:(unint64_t)a3
{
  v5 = [[PGCurationCriteria alloc] initWithMinimumAssetsRatio:a3 client:0.1];
  v6 = [(PGCurationCriteriaFactory *)self _sceneNamesFromBaseSceneNames:&unk_2844864C8 leafSceneNames:MEMORY[0x277CBEBF8]];
  v7 = [[PGCurationSceneTrait alloc] initWithSceneNames:v6];
  [(PGCurationCriteria *)v5 setScenesTrait:v7];

  if (a3 == 2)
  {
    [(PGCurationCriteria *)v5 setFaceFilter:0];
  }

  return v5;
}

- (id)_divingCriteriaWithClient:(unint64_t)a3
{
  v4 = [[PGCurationCriteria alloc] initWithMinimumAssetsRatio:a3 client:0.1];
  v5 = [(PGCurationCriteriaFactory *)self _sceneNamesFromBaseSceneNames:&unk_2844864B0 leafSceneNames:MEMORY[0x277CBEBF8]];
  v6 = [[PGCurationSceneTrait alloc] initWithSceneNames:v5];
  [(PGCurationCriteria *)v4 setScenesTrait:v6];

  [(PGCurationCriteria *)v4 setFaceFilter:0];

  return v4;
}

- (id)_hikingCriteriaWithClient:(unint64_t)a3
{
  v5 = [[PGCurationCriteria alloc] initWithMinimumAssetsRatio:a3 client:0.1];
  v6 = [(PGCurationCriteriaFactory *)self _sceneNamesFromBaseSceneNames:&unk_284486498 leafSceneNames:MEMORY[0x277CBEBF8]];
  v7 = [[PGCurationSceneTrait alloc] initWithSceneNames:v6];
  [(PGCurationCriteria *)v5 setScenesTrait:v7];

  if (a3 == 2)
  {
    [(PGCurationCriteria *)v5 setFaceFilter:0];
  }

  return v5;
}

- (id)_holidayEventCriteriaWithGraph:(id)a3 featureNodes:(id)a4 client:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [[PGCurationCriteria alloc] initWithMinimumAssetsRatio:a5 client:0.1];
  if ([v9 count])
  {
    v11 = [(PGCurationCriteriaFactory *)self holidayServiceWithGraph:v8];
    v12 = [(PGGraphNodeCollection *)PGGraphHolidayNodeCollection subsetInCollection:v9];
    v13 = [v12 anyNode];
    v14 = [v13 name];

    v15 = [v11 sceneNamesForHolidayName:v14];
    v16 = [(PGCurationCriteriaFactory *)self _sceneNamesFromBaseSceneNames:v15 leafSceneNames:MEMORY[0x277CBEBF8]];
    v17 = [[PGCurationSceneTrait alloc] initWithSceneNames:v16];
    [(PGCurationCriteria *)v10 setScenesTrait:v17];

    v18 = [v11 peopleTraitForHolidayName:v14];
    v19 = [(PGGraphNodeCollection *)PGGraphMomentNodeCollection subsetInCollection:v9];
    v20 = v19;
    switch(v18)
    {
      case 1:
        v27 = v8;
        v21 = [v19 personNodes];
        v22 = [v21 partnerPersonNodes];
        break;
      case 32:
        v27 = v8;
        v21 = [v19 personNodes];
        v22 = [v21 motherPersonNodes];
        break;
      case 64:
        v27 = v8;
        v21 = [v19 personNodes];
        v22 = [v21 fatherPersonNodes];
        break;
      default:
LABEL_9:

        goto LABEL_10;
    }

    v23 = v22;
    v24 = [v22 localIdentifiers];

    v25 = [[PGCurationSetTrait alloc] initWithItems:v24];
    [(PGCurationCriteria *)v10 setPeopleTrait:v25];

    v8 = v27;
    goto LABEL_9;
  }

LABEL_10:

  return v10;
}

- (id)_anniversaryCriteriaWithPersonLocalIdentifier:(id)a3 client:(unint64_t)a4
{
  v5 = a3;
  if ([v5 length])
  {
    v6 = [MEMORY[0x277CBEB98] setWithObject:v5];
    v7 = [[PGCurationCriteria alloc] initWithMinimumAssetsRatio:a4 client:0.1];
    v8 = [[PGCurationSetTrait alloc] initWithItems:v6];
    [(PGCurationCriteria *)v7 setPeopleTrait:v8];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_birthdayCriteriaWithPersonLocalIdentifiers:(id)a3 client:(unint64_t)a4
{
  v6 = a3;
  if ([v6 count])
  {
    v7 = [[PGCurationCriteria alloc] initWithMinimumAssetsRatio:a4 client:0.1];
    v8 = [(PGCurationCriteriaFactory *)self _sceneNamesFromBaseSceneNames:&unk_284486480 leafSceneNames:MEMORY[0x277CBEBF8]];
    v9 = [[PGCurationSceneTrait alloc] initWithSceneNames:v8];
    [(PGCurationCriteria *)v7 setScenesTrait:v9];

    v10 = [[PGCurationSetTrait alloc] initWithItems:v6];
    [(PGCurationCriteria *)v7 setPeopleTrait:v10];

    v11 = [(PGCurationCriteria *)v7 peopleTrait];
    [v11 setMinimumScore:1.0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_weddingCriteriaWithClient:(unint64_t)a3
{
  v4 = [[PGCurationCriteria alloc] initWithMinimumAssetsRatio:a3 client:0.07];
  v5 = [(PGCurationCriteriaFactory *)self _sceneNamesFromBaseSceneNames:&unk_284486468 leafSceneNames:MEMORY[0x277CBEBF8]];
  v6 = [[PGCurationSceneTrait alloc] initWithSceneNames:v5];
  [(PGCurationCriteria *)v4 setScenesTrait:v6];

  return v4;
}

- (id)foodieCurationCriteriaWithPersonLocalIdentifier:(id)a3 client:(unint64_t)a4
{
  v5 = a3;
  v6 = [[PGCurationCriteria alloc] initWithMinimumAssetsRatio:a4 client:0.1];
  v7 = [PGCurationSetTrait alloc];
  v8 = [MEMORY[0x277CBEB98] setWithObject:v5];

  v9 = [(PGCurationSetTrait *)v7 initWithItems:v8];
  [(PGCurationCriteria *)v6 setPeopleTrait:v9];

  v10 = [(PGCurationCriteria *)v6 peopleTrait];
  [v10 setMinimumScore:1.0];

  return v6;
}

- (id)foodieCurationCriteriaWithClient:(unint64_t)a3
{
  v3 = [[PGCurationCriteria alloc] initWithMinimumAssetsRatio:a3 client:0.1];
  v4 = objc_alloc_init(PGCurationSDFoodTrait);
  [(PGCurationCriteria *)v3 setSdFoodTrait:v4];

  v5 = [[PGCurationCropScoreTrait alloc] initWithMinimumSquareCropScore:0.7];
  [(PGCurationCriteria *)v3 setCropScoreTrait:v5];

  return v3;
}

- (id)curationCriteriaWithSeasonName:(id)a3 client:(unint64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (a4 != 1)
  {
    if ([v6 isEqualToString:*MEMORY[0x277D27600]])
    {
      v11 = [(PGCurationCriteriaFactory *)self _searchWinterCriteria];
    }

    else if ([v7 isEqualToString:*MEMORY[0x277D275F0]])
    {
      v11 = [(PGCurationCriteriaFactory *)self _searchSpringCriteria];
    }

    else if ([v7 isEqualToString:*MEMORY[0x277D275F8]])
    {
      v11 = [(PGCurationCriteriaFactory *)self _searchSummerCriteria];
    }

    else
    {
      if (![v7 isEqualToString:*MEMORY[0x277D275E8]])
      {
        v10 = 0;
        goto LABEL_14;
      }

      v11 = [(PGCurationCriteriaFactory *)self _searchFallCriteria];
    }

    v10 = v11;
LABEL_14:
    [v10 setFaceFilter:2];
    goto LABEL_15;
  }

  v8 = +[PGLogging sharedLogging];
  v9 = [v8 loggingConnection];

  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *v13 = 0;
    _os_log_error_impl(&dword_22F0FC000, v9, OS_LOG_TYPE_ERROR, "Curation criteria are not defined for client PGCriteriaClientMemories", v13, 2u);
  }

  v10 = 0;
LABEL_15:

  return v10;
}

- (id)tripCurationCriteriaWithCollection:(id)a3 client:(unint64_t)a4
{
  if ([a3 isShortTrip])
  {
    [(PGCurationCriteriaFactory *)self _shortTripCriteriaWithClient:a4];
  }

  else
  {
    [(PGCurationCriteriaFactory *)self _longTripCriteriaWithClient:a4];
  }
  v6 = ;

  return v6;
}

- (id)petCurationCriteriaWithCollection:(id)a3 client:(unint64_t)a4 curationContext:(id)a5
{
  v7 = a5;
  v8 = [a3 eventEnrichmentMomentNodes];
  v9 = [v8 petNodes];

  if ([v9 count])
  {
    v10 = [v9 uuids];
    v11 = [v10 mutableCopy];

    v12 = [v7 hiddenOrBlockedPersonUUIDs];
    [v11 minusSet:v12];

    v13 = [MEMORY[0x277CD9938] localIdentifiersWithUUIDs:v11];
    if ([v13 count])
    {
      v14 = [[PGCurationCriteria alloc] initWithMinimumAssetsRatio:a4 client:0.1];
      v15 = [[PGCurationSetTrait alloc] initWithItems:v13];
      [(PGCurationCriteria *)v14 setPeopleTrait:v15];

      v16 = [(PGCurationCriteria *)v14 peopleTrait];
      [v16 setMinimumScore:1.0];
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)curationCriteriaWithCollection:(id)a3 meaningLabel:(id)a4 inGraph:(id)a5 client:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if ([v11 isEqualToString:@"Birthday"])
  {
    v13 = [v10 birthdayPersonNodes];
LABEL_5:
    v14 = v13;
    goto LABEL_7;
  }

  if ([v11 isEqualToString:@"Anniversary"])
  {
    v13 = [v10 anniversaryPersonNodes];
    goto LABEL_5;
  }

  v14 = 0;
LABEL_7:
  v15 = [v14 featureNodeCollection];
  v16 = [(PGCurationCriteriaFactory *)self curationCriteriaWithMeaningLabel:v11 featureNodes:v15 inGraph:v12 client:a6];

  return v16;
}

- (id)curationCriteriaWithMeaningLabel:(id)a3 featureNodes:(id)a4 inGraph:(id)a5 client:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if ([v10 isEqualToString:@"Wedding"])
  {
    v13 = [(PGCurationCriteriaFactory *)self _weddingCriteriaWithClient:a6];
LABEL_3:
    v14 = v13;
    if (!v11)
    {
      goto LABEL_31;
    }

    goto LABEL_28;
  }

  if (![v10 isEqualToString:@"Birthday"])
  {
    if (![v10 isEqualToString:@"Anniversary"])
    {
      if ([v10 isEqualToString:@"HolidayEvent"])
      {
        v13 = [(PGCurationCriteriaFactory *)self _holidayEventCriteriaWithGraph:v12 featureNodes:v11 client:a6];
      }

      else if (([v10 isEqualToString:@"Entertainment"] & 1) != 0 || objc_msgSend(v10, "isEqualToString:", @"AmusementPark"))
      {
        v13 = [(PGCurationCriteriaFactory *)self _entertainmentCriteriaWithClient:a6];
      }

      else if ([v10 isEqualToString:@"Concert"])
      {
        v13 = [(PGCurationCriteriaFactory *)self _concertCriteriaWithClient:a6];
      }

      else if ([v10 isEqualToString:@"Festival"])
      {
        v13 = [(PGCurationCriteriaFactory *)self _festivalCriteriaWithClient:a6];
      }

      else if ([v10 isEqualToString:@"SportEvent"])
      {
        v13 = [(PGCurationCriteriaFactory *)self _sportEventCriteriaWithClient:a6];
      }

      else if ([v10 isEqualToString:@"NightOut"])
      {
        v13 = [(PGCurationCriteriaFactory *)self _nightOutCriteriaWithClient:a6];
      }

      else if ([v10 isEqualToString:@"Performance"])
      {
        v13 = [(PGCurationCriteriaFactory *)self _performanceCriteriaWithClient:a6];
      }

      else if ([v10 isEqualToString:@"Museum"])
      {
        v13 = [(PGCurationCriteriaFactory *)self _museumCriteriaWithClient:a6];
      }

      else if ([v10 isEqualToString:@"Diving"])
      {
        v13 = [(PGCurationCriteriaFactory *)self _divingCriteriaWithClient:a6];
      }

      else if ([v10 isEqualToString:@"Hiking"])
      {
        v13 = [(PGCurationCriteriaFactory *)self _hikingCriteriaWithClient:a6];
      }

      else if ([v10 isEqualToString:@"WinterSport"])
      {
        v13 = [(PGCurationCriteriaFactory *)self _winterSportCriteriaWithClient:a6];
      }

      else if ([v10 isEqualToString:@"Beaching"])
      {
        v13 = [(PGCurationCriteriaFactory *)self _beachingCriteriaWithClient:a6];
      }

      else if ([v10 isEqualToString:@"Climbing"])
      {
        v13 = [(PGCurationCriteriaFactory *)self _climbingCriteriaWithClient:a6];
      }

      else if ([v10 isEqualToString:@"Breakfast"])
      {
        v13 = [(PGCurationCriteriaFactory *)self _breakfastCriteriaWithClient:a6];
      }

      else if ([v10 isEqualToString:@"Lunch"])
      {
        v13 = [(PGCurationCriteriaFactory *)self _lunchCriteriaWithClient:a6];
      }

      else
      {
        if (![v10 isEqualToString:@"Dinner"])
        {
          v14 = 0;
          if (!v11)
          {
            goto LABEL_31;
          }

          goto LABEL_28;
        }

        v13 = [(PGCurationCriteriaFactory *)self _dinnerCriteriaWithClient:a6];
      }

      goto LABEL_3;
    }

    if (v11)
    {
      v15 = [(PGGraphNodeCollection *)PGGraphPersonNodeCollection subsetInCollection:v11];
      if ([v15 count])
      {
        v16 = [v15 localIdentifiers];
        v17 = [v16 anyObject];
        v14 = [(PGCurationCriteriaFactory *)self _anniversaryCriteriaWithPersonLocalIdentifier:v17 client:a6];

        goto LABEL_13;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v21 = MEMORY[0x277D86220];
        v22 = "Asking for Anniversary meaning criteria with no associated featured person";
        v23 = buf;
        goto LABEL_45;
      }

LABEL_26:
      v14 = 0;
      goto LABEL_27;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v30 = 0;
      v18 = MEMORY[0x277D86220];
      v19 = "Asking for Anniversary meaning criteria with no associated feature node";
      v20 = &v30;
      goto LABEL_41;
    }

LABEL_24:
    v14 = 0;
    goto LABEL_31;
  }

  if (!v11)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v32 = 0;
      v18 = MEMORY[0x277D86220];
      v19 = "Asking for Birthday meaning criteria with no associated feature node";
      v20 = &v32;
LABEL_41:
      _os_log_error_impl(&dword_22F0FC000, v18, OS_LOG_TYPE_ERROR, v19, v20, 2u);
      goto LABEL_24;
    }

    goto LABEL_24;
  }

  v15 = [(PGGraphNodeCollection *)PGGraphPersonNodeCollection subsetInCollection:v11];
  if (![v15 count])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v33 = 0;
      v21 = MEMORY[0x277D86220];
      v22 = "Asking for Birthday meaning criteria with no associated featured person";
      v23 = &v33;
LABEL_45:
      _os_log_error_impl(&dword_22F0FC000, v21, OS_LOG_TYPE_ERROR, v22, v23, 2u);
      goto LABEL_26;
    }

    goto LABEL_26;
  }

  v16 = [v15 localIdentifiers];
  v14 = [(PGCurationCriteriaFactory *)self _birthdayCriteriaWithPersonLocalIdentifiers:v16 client:a6];
LABEL_13:

LABEL_27:
LABEL_28:
  v24 = [(PGGraphNodeCollection *)PGGraphSocialGroupNodeCollection subsetInCollection:v11];
  if ([v24 count])
  {
    v25 = [PGCurationSetTrait alloc];
    v26 = [v24 memberNodes];
    v27 = [v26 localIdentifiers];
    v28 = [(PGCurationSetTrait *)v25 initWithItems:v27];
    [v14 setSocialGroupTrait:v28];
  }

LABEL_31:

  return v14;
}

- (id)holidayServiceWithGraph:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [v4 infoNode];
  v7 = [v6 locale];

  v8 = [(NSMutableDictionary *)v5->_holidayServiceByLocale objectForKeyedSubscript:v7];
  if (!v8)
  {
    v8 = [objc_alloc(MEMORY[0x277D276D8]) initWithLocale:v7];
  }

  objc_sync_exit(v5);

  return v8;
}

- (PGCurationCriteriaFactory)init
{
  v6.receiver = self;
  v6.super_class = PGCurationCriteriaFactory;
  v2 = [(PGCurationCriteriaFactory *)&v6 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277D3C7B8]) initForSceneNetOnly:1];
    sceneTaxonomy = v2->_sceneTaxonomy;
    v2->_sceneTaxonomy = v3;
  }

  return v2;
}

@end