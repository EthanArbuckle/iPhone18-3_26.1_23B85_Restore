@interface PGCurationCriteriaFactory
- (PGCurationCriteriaFactory)init;
- (id)_anniversaryCriteriaWithPersonLocalIdentifier:(id)identifier client:(unint64_t)client;
- (id)_beachingCriteriaWithClient:(unint64_t)client;
- (id)_birthdayCriteriaWithPersonLocalIdentifiers:(id)identifiers client:(unint64_t)client;
- (id)_breakfastCriteriaWithClient:(unint64_t)client;
- (id)_climbingCriteriaWithClient:(unint64_t)client;
- (id)_compulsoryRequiredTraitsFromBaseSceneNames:(id)names leafSceneNames:(id)sceneNames;
- (id)_concertCriteriaWithClient:(unint64_t)client;
- (id)_dinnerCriteriaWithClient:(unint64_t)client;
- (id)_divingCriteriaWithClient:(unint64_t)client;
- (id)_entertainmentCriteriaWithClient:(unint64_t)client;
- (id)_festivalCriteriaWithClient:(unint64_t)client;
- (id)_hikingCriteriaWithClient:(unint64_t)client;
- (id)_holidayEventCriteriaWithGraph:(id)graph featureNodes:(id)nodes client:(unint64_t)client;
- (id)_longTripCriteriaWithClient:(unint64_t)client;
- (id)_lunchCriteriaWithClient:(unint64_t)client;
- (id)_memoriesRestaurantScenesTrait;
- (id)_museumCriteriaWithClient:(unint64_t)client;
- (id)_nightOutCriteriaWithClient:(unint64_t)client;
- (id)_performanceCriteriaWithClient:(unint64_t)client;
- (id)_sceneNamesFromBaseSceneNames:(id)names leafSceneNames:(id)sceneNames;
- (id)_searchFallCriteria;
- (id)_searchRestaurantCompulsoryScenesTrait;
- (id)_searchRestaurantScenesTrait;
- (id)_searchSpringCriteria;
- (id)_searchSummerCriteria;
- (id)_searchWinterCriteria;
- (id)_shortTripCriteriaWithClient:(unint64_t)client;
- (id)_sportEventCriteriaWithClient:(unint64_t)client;
- (id)_tripScenesTrait;
- (id)_weddingCriteriaWithClient:(unint64_t)client;
- (id)_winterSportCriteriaWithClient:(unint64_t)client;
- (id)curationCriteriaWithCollection:(id)collection meaningLabel:(id)label inGraph:(id)graph client:(unint64_t)client;
- (id)curationCriteriaWithMeaningLabel:(id)label featureNodes:(id)nodes inGraph:(id)graph client:(unint64_t)client;
- (id)curationCriteriaWithSeasonName:(id)name client:(unint64_t)client;
- (id)foodieCurationCriteriaWithClient:(unint64_t)client;
- (id)foodieCurationCriteriaWithPersonLocalIdentifier:(id)identifier client:(unint64_t)client;
- (id)holidayServiceWithGraph:(id)graph;
- (id)petCurationCriteriaWithCollection:(id)collection client:(unint64_t)client curationContext:(id)context;
- (id)tripCurationCriteriaWithCollection:(id)collection client:(unint64_t)client;
@end

@implementation PGCurationCriteriaFactory

- (id)_sceneNamesFromBaseSceneNames:(id)names leafSceneNames:(id)sceneNames
{
  v24 = *MEMORY[0x277D85DE8];
  namesCopy = names;
  sceneNamesCopy = sceneNames;
  v7 = [objc_alloc(MEMORY[0x277CBEB58]) initWithArray:sceneNamesCopy];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = namesCopy;
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

- (id)_compulsoryRequiredTraitsFromBaseSceneNames:(id)names leafSceneNames:(id)sceneNames
{
  v4 = [(PGCurationCriteriaFactory *)self _sceneNamesFromBaseSceneNames:names leafSceneNames:MEMORY[0x277CBEBF8]];
  v5 = [[PGCurationSceneTrait alloc] initWithSceneNames:v4];
  [(PGCurationTrait *)v5 setMinimumScore:0.1];

  return v5;
}

- (id)_longTripCriteriaWithClient:(unint64_t)client
{
  v4 = [[PGCurationCriteria alloc] initWithMinimumAssetsRatio:client client:0.05];
  _tripScenesTrait = [(PGCurationCriteriaFactory *)self _tripScenesTrait];
  [(PGCurationCriteria *)v4 setScenesTrait:_tripScenesTrait];

  [(PGCurationCriteria *)v4 setFaceFilter:0];

  return v4;
}

- (id)_shortTripCriteriaWithClient:(unint64_t)client
{
  v4 = [[PGCurationCriteria alloc] initWithMinimumAssetsRatio:client client:0.05];
  _tripScenesTrait = [(PGCurationCriteriaFactory *)self _tripScenesTrait];
  [(PGCurationCriteria *)v4 setScenesTrait:_tripScenesTrait];

  return v4;
}

- (id)_dinnerCriteriaWithClient:(unint64_t)client
{
  v5 = [[PGCurationCriteria alloc] initWithMinimumAssetsRatio:client client:0.1];
  if (client)
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
  if (client >= 2)
  {
    if (client == 2)
    {
      _searchRestaurantCompulsoryScenesTrait = [(PGCurationCriteriaFactory *)self _searchRestaurantCompulsoryScenesTrait];
      [(PGCurationCriteria *)v5 setCompulsoryScenesTrait:_searchRestaurantCompulsoryScenesTrait];

      _searchRestaurantScenesTrait = [(PGCurationCriteriaFactory *)self _searchRestaurantScenesTrait];
      [(PGCurationCriteria *)v5 setScenesTrait:_searchRestaurantScenesTrait];

      [(PGCurationCriteria *)v5 setFaceFilter:0];
    }
  }

  else
  {
    _memoriesRestaurantScenesTrait = [(PGCurationCriteriaFactory *)self _memoriesRestaurantScenesTrait];
    [(PGCurationCriteria *)v5 setScenesTrait:_memoriesRestaurantScenesTrait];
  }

  return v5;
}

- (id)_lunchCriteriaWithClient:(unint64_t)client
{
  v5 = [[PGCurationCriteria alloc] initWithMinimumAssetsRatio:client client:0.1];
  v6 = [[PGCurationPartOfDayTrait alloc] initWithPartOfDay:4];
  [(PGCurationTrait *)v6 setMinimumScore:0.1];
  [(PGCurationCriteria *)v5 setPartOfDayTrait:v6];
  if (client >= 2)
  {
    if (client == 2)
    {
      _searchRestaurantCompulsoryScenesTrait = [(PGCurationCriteriaFactory *)self _searchRestaurantCompulsoryScenesTrait];
      [(PGCurationCriteria *)v5 setCompulsoryScenesTrait:_searchRestaurantCompulsoryScenesTrait];

      _searchRestaurantScenesTrait = [(PGCurationCriteriaFactory *)self _searchRestaurantScenesTrait];
      [(PGCurationCriteria *)v5 setScenesTrait:_searchRestaurantScenesTrait];

      [(PGCurationCriteria *)v5 setFaceFilter:0];
    }
  }

  else
  {
    _memoriesRestaurantScenesTrait = [(PGCurationCriteriaFactory *)self _memoriesRestaurantScenesTrait];
    [(PGCurationCriteria *)v5 setScenesTrait:_memoriesRestaurantScenesTrait];
  }

  return v5;
}

- (id)_breakfastCriteriaWithClient:(unint64_t)client
{
  v5 = [[PGCurationCriteria alloc] initWithMinimumAssetsRatio:client client:0.1];
  v6 = [[PGCurationPartOfDayTrait alloc] initWithPartOfDay:2];
  [(PGCurationTrait *)v6 setMinimumScore:0.1];
  [(PGCurationCriteria *)v5 setPartOfDayTrait:v6];
  if (client >= 2)
  {
    if (client == 2)
    {
      _searchRestaurantCompulsoryScenesTrait = [(PGCurationCriteriaFactory *)self _searchRestaurantCompulsoryScenesTrait];
      [(PGCurationCriteria *)v5 setCompulsoryScenesTrait:_searchRestaurantCompulsoryScenesTrait];

      _searchRestaurantScenesTrait = [(PGCurationCriteriaFactory *)self _searchRestaurantScenesTrait];
      [(PGCurationCriteria *)v5 setScenesTrait:_searchRestaurantScenesTrait];

      [(PGCurationCriteria *)v5 setFaceFilter:0];
    }
  }

  else
  {
    _memoriesRestaurantScenesTrait = [(PGCurationCriteriaFactory *)self _memoriesRestaurantScenesTrait];
    [(PGCurationCriteria *)v5 setScenesTrait:_memoriesRestaurantScenesTrait];
  }

  return v5;
}

- (id)_nightOutCriteriaWithClient:(unint64_t)client
{
  v5 = [[PGCurationCriteria alloc] initWithMinimumAssetsRatio:client client:0.1];
  v6 = [(PGCurationCriteriaFactory *)self _sceneNamesFromBaseSceneNames:&unk_284486588 leafSceneNames:MEMORY[0x277CBEBF8]];
  v7 = [[PGCurationSceneTrait alloc] initWithSceneNames:v6];
  [(PGCurationCriteria *)v5 setScenesTrait:v7];

  v8 = [[PGCurationPartOfDayTrait alloc] initWithPartOfDay:48];
  [(PGCurationTrait *)v8 setMinimumScore:0.1];
  [(PGCurationCriteria *)v5 setPartOfDayTrait:v8];
  if (client == 2)
  {
    [(PGCurationCriteria *)v5 setFaceFilter:0];
  }

  return v5;
}

- (id)_sportEventCriteriaWithClient:(unint64_t)client
{
  v5 = [[PGCurationCriteria alloc] initWithMinimumAssetsRatio:client client:0.1];
  v6 = [(PGCurationCriteriaFactory *)self _sceneNamesFromBaseSceneNames:&unk_284486570 leafSceneNames:MEMORY[0x277CBEBF8]];
  v7 = [[PGCurationSceneTrait alloc] initWithSceneNames:v6];
  [(PGCurationCriteria *)v5 setScenesTrait:v7];

  if (client == 2)
  {
    [(PGCurationCriteria *)v5 setFaceFilter:0];
  }

  return v5;
}

- (id)_museumCriteriaWithClient:(unint64_t)client
{
  v4 = [[PGCurationCriteria alloc] initWithMinimumAssetsRatio:client client:0.1];
  v5 = [(PGCurationCriteriaFactory *)self _sceneNamesFromBaseSceneNames:MEMORY[0x277CBEBF8] leafSceneNames:&unk_284486558];
  v6 = [[PGCurationSceneTrait alloc] initWithSceneNames:v5];
  [(PGCurationCriteria *)v4 setScenesTrait:v6];

  [(PGCurationCriteria *)v4 setFaceFilter:0];

  return v4;
}

- (id)_performanceCriteriaWithClient:(unint64_t)client
{
  v4 = [[PGCurationCriteria alloc] initWithMinimumAssetsRatio:client client:0.1];
  v5 = [(PGCurationCriteriaFactory *)self _sceneNamesFromBaseSceneNames:&unk_284486540 leafSceneNames:MEMORY[0x277CBEBF8]];
  v6 = [[PGCurationSceneTrait alloc] initWithSceneNames:v5];
  [(PGCurationCriteria *)v4 setScenesTrait:v6];

  return v4;
}

- (id)_festivalCriteriaWithClient:(unint64_t)client
{
  v4 = [[PGCurationCriteria alloc] initWithMinimumAssetsRatio:client client:0.1];
  v5 = [(PGCurationCriteriaFactory *)self _sceneNamesFromBaseSceneNames:&unk_284486528 leafSceneNames:MEMORY[0x277CBEBF8]];
  v6 = [[PGCurationSceneTrait alloc] initWithSceneNames:v5];
  [(PGCurationCriteria *)v4 setScenesTrait:v6];

  [(PGCurationCriteria *)v4 setFaceFilter:0];

  return v4;
}

- (id)_concertCriteriaWithClient:(unint64_t)client
{
  v4 = [[PGCurationCriteria alloc] initWithMinimumAssetsRatio:client client:0.1];
  v5 = [(PGCurationCriteriaFactory *)self _sceneNamesFromBaseSceneNames:&unk_284486510 leafSceneNames:MEMORY[0x277CBEBF8]];
  v6 = [[PGCurationSceneTrait alloc] initWithSceneNames:v5];
  [(PGCurationCriteria *)v4 setScenesTrait:v6];

  [(PGCurationCriteria *)v4 setFaceFilter:0];

  return v4;
}

- (id)_entertainmentCriteriaWithClient:(unint64_t)client
{
  v4 = [[PGCurationCriteria alloc] initWithMinimumAssetsRatio:client client:0.1];
  v5 = +[PGMeaningfulEventRequiredCriteriaFactory entertainmentSceneTaxonomyNames];
  v6 = [(PGCurationCriteriaFactory *)self _sceneNamesFromBaseSceneNames:v5 leafSceneNames:MEMORY[0x277CBEBF8]];
  v7 = [[PGCurationSceneTrait alloc] initWithSceneNames:v6];
  [(PGCurationCriteria *)v4 setScenesTrait:v7];

  return v4;
}

- (id)_climbingCriteriaWithClient:(unint64_t)client
{
  v5 = [[PGCurationCriteria alloc] initWithMinimumAssetsRatio:client client:0.1];
  v6 = [(PGCurationCriteriaFactory *)self _sceneNamesFromBaseSceneNames:&unk_2844864F8 leafSceneNames:MEMORY[0x277CBEBF8]];
  v7 = [[PGCurationSceneTrait alloc] initWithSceneNames:v6];
  [(PGCurationCriteria *)v5 setScenesTrait:v7];

  if (client == 2)
  {
    [(PGCurationCriteria *)v5 setFaceFilter:0];
  }

  return v5;
}

- (id)_beachingCriteriaWithClient:(unint64_t)client
{
  v5 = [[PGCurationCriteria alloc] initWithMinimumAssetsRatio:client client:0.1];
  v6 = [(PGCurationCriteriaFactory *)self _sceneNamesFromBaseSceneNames:&unk_2844864E0 leafSceneNames:MEMORY[0x277CBEBF8]];
  v7 = [[PGCurationSceneTrait alloc] initWithSceneNames:v6];
  [(PGCurationCriteria *)v5 setScenesTrait:v7];

  if (client == 2)
  {
    [(PGCurationCriteria *)v5 setFaceFilter:0];
  }

  return v5;
}

- (id)_winterSportCriteriaWithClient:(unint64_t)client
{
  v5 = [[PGCurationCriteria alloc] initWithMinimumAssetsRatio:client client:0.1];
  v6 = [(PGCurationCriteriaFactory *)self _sceneNamesFromBaseSceneNames:&unk_2844864C8 leafSceneNames:MEMORY[0x277CBEBF8]];
  v7 = [[PGCurationSceneTrait alloc] initWithSceneNames:v6];
  [(PGCurationCriteria *)v5 setScenesTrait:v7];

  if (client == 2)
  {
    [(PGCurationCriteria *)v5 setFaceFilter:0];
  }

  return v5;
}

- (id)_divingCriteriaWithClient:(unint64_t)client
{
  v4 = [[PGCurationCriteria alloc] initWithMinimumAssetsRatio:client client:0.1];
  v5 = [(PGCurationCriteriaFactory *)self _sceneNamesFromBaseSceneNames:&unk_2844864B0 leafSceneNames:MEMORY[0x277CBEBF8]];
  v6 = [[PGCurationSceneTrait alloc] initWithSceneNames:v5];
  [(PGCurationCriteria *)v4 setScenesTrait:v6];

  [(PGCurationCriteria *)v4 setFaceFilter:0];

  return v4;
}

- (id)_hikingCriteriaWithClient:(unint64_t)client
{
  v5 = [[PGCurationCriteria alloc] initWithMinimumAssetsRatio:client client:0.1];
  v6 = [(PGCurationCriteriaFactory *)self _sceneNamesFromBaseSceneNames:&unk_284486498 leafSceneNames:MEMORY[0x277CBEBF8]];
  v7 = [[PGCurationSceneTrait alloc] initWithSceneNames:v6];
  [(PGCurationCriteria *)v5 setScenesTrait:v7];

  if (client == 2)
  {
    [(PGCurationCriteria *)v5 setFaceFilter:0];
  }

  return v5;
}

- (id)_holidayEventCriteriaWithGraph:(id)graph featureNodes:(id)nodes client:(unint64_t)client
{
  graphCopy = graph;
  nodesCopy = nodes;
  v10 = [[PGCurationCriteria alloc] initWithMinimumAssetsRatio:client client:0.1];
  if ([nodesCopy count])
  {
    v11 = [(PGCurationCriteriaFactory *)self holidayServiceWithGraph:graphCopy];
    v12 = [(PGGraphNodeCollection *)PGGraphHolidayNodeCollection subsetInCollection:nodesCopy];
    anyNode = [v12 anyNode];
    name = [anyNode name];

    v15 = [v11 sceneNamesForHolidayName:name];
    v16 = [(PGCurationCriteriaFactory *)self _sceneNamesFromBaseSceneNames:v15 leafSceneNames:MEMORY[0x277CBEBF8]];
    v17 = [[PGCurationSceneTrait alloc] initWithSceneNames:v16];
    [(PGCurationCriteria *)v10 setScenesTrait:v17];

    v18 = [v11 peopleTraitForHolidayName:name];
    v19 = [(PGGraphNodeCollection *)PGGraphMomentNodeCollection subsetInCollection:nodesCopy];
    v20 = v19;
    switch(v18)
    {
      case 1:
        v27 = graphCopy;
        personNodes = [v19 personNodes];
        partnerPersonNodes = [personNodes partnerPersonNodes];
        break;
      case 32:
        v27 = graphCopy;
        personNodes = [v19 personNodes];
        partnerPersonNodes = [personNodes motherPersonNodes];
        break;
      case 64:
        v27 = graphCopy;
        personNodes = [v19 personNodes];
        partnerPersonNodes = [personNodes fatherPersonNodes];
        break;
      default:
LABEL_9:

        goto LABEL_10;
    }

    v23 = partnerPersonNodes;
    localIdentifiers = [partnerPersonNodes localIdentifiers];

    v25 = [[PGCurationSetTrait alloc] initWithItems:localIdentifiers];
    [(PGCurationCriteria *)v10 setPeopleTrait:v25];

    graphCopy = v27;
    goto LABEL_9;
  }

LABEL_10:

  return v10;
}

- (id)_anniversaryCriteriaWithPersonLocalIdentifier:(id)identifier client:(unint64_t)client
{
  identifierCopy = identifier;
  if ([identifierCopy length])
  {
    v6 = [MEMORY[0x277CBEB98] setWithObject:identifierCopy];
    v7 = [[PGCurationCriteria alloc] initWithMinimumAssetsRatio:client client:0.1];
    v8 = [[PGCurationSetTrait alloc] initWithItems:v6];
    [(PGCurationCriteria *)v7 setPeopleTrait:v8];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_birthdayCriteriaWithPersonLocalIdentifiers:(id)identifiers client:(unint64_t)client
{
  identifiersCopy = identifiers;
  if ([identifiersCopy count])
  {
    v7 = [[PGCurationCriteria alloc] initWithMinimumAssetsRatio:client client:0.1];
    v8 = [(PGCurationCriteriaFactory *)self _sceneNamesFromBaseSceneNames:&unk_284486480 leafSceneNames:MEMORY[0x277CBEBF8]];
    v9 = [[PGCurationSceneTrait alloc] initWithSceneNames:v8];
    [(PGCurationCriteria *)v7 setScenesTrait:v9];

    v10 = [[PGCurationSetTrait alloc] initWithItems:identifiersCopy];
    [(PGCurationCriteria *)v7 setPeopleTrait:v10];

    peopleTrait = [(PGCurationCriteria *)v7 peopleTrait];
    [peopleTrait setMinimumScore:1.0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_weddingCriteriaWithClient:(unint64_t)client
{
  v4 = [[PGCurationCriteria alloc] initWithMinimumAssetsRatio:client client:0.07];
  v5 = [(PGCurationCriteriaFactory *)self _sceneNamesFromBaseSceneNames:&unk_284486468 leafSceneNames:MEMORY[0x277CBEBF8]];
  v6 = [[PGCurationSceneTrait alloc] initWithSceneNames:v5];
  [(PGCurationCriteria *)v4 setScenesTrait:v6];

  return v4;
}

- (id)foodieCurationCriteriaWithPersonLocalIdentifier:(id)identifier client:(unint64_t)client
{
  identifierCopy = identifier;
  v6 = [[PGCurationCriteria alloc] initWithMinimumAssetsRatio:client client:0.1];
  v7 = [PGCurationSetTrait alloc];
  v8 = [MEMORY[0x277CBEB98] setWithObject:identifierCopy];

  v9 = [(PGCurationSetTrait *)v7 initWithItems:v8];
  [(PGCurationCriteria *)v6 setPeopleTrait:v9];

  peopleTrait = [(PGCurationCriteria *)v6 peopleTrait];
  [peopleTrait setMinimumScore:1.0];

  return v6;
}

- (id)foodieCurationCriteriaWithClient:(unint64_t)client
{
  v3 = [[PGCurationCriteria alloc] initWithMinimumAssetsRatio:client client:0.1];
  v4 = objc_alloc_init(PGCurationSDFoodTrait);
  [(PGCurationCriteria *)v3 setSdFoodTrait:v4];

  v5 = [[PGCurationCropScoreTrait alloc] initWithMinimumSquareCropScore:0.7];
  [(PGCurationCriteria *)v3 setCropScoreTrait:v5];

  return v3;
}

- (id)curationCriteriaWithSeasonName:(id)name client:(unint64_t)client
{
  nameCopy = name;
  v7 = nameCopy;
  if (client != 1)
  {
    if ([nameCopy isEqualToString:*MEMORY[0x277D27600]])
    {
      _searchWinterCriteria = [(PGCurationCriteriaFactory *)self _searchWinterCriteria];
    }

    else if ([v7 isEqualToString:*MEMORY[0x277D275F0]])
    {
      _searchWinterCriteria = [(PGCurationCriteriaFactory *)self _searchSpringCriteria];
    }

    else if ([v7 isEqualToString:*MEMORY[0x277D275F8]])
    {
      _searchWinterCriteria = [(PGCurationCriteriaFactory *)self _searchSummerCriteria];
    }

    else
    {
      if (![v7 isEqualToString:*MEMORY[0x277D275E8]])
      {
        v10 = 0;
        goto LABEL_14;
      }

      _searchWinterCriteria = [(PGCurationCriteriaFactory *)self _searchFallCriteria];
    }

    v10 = _searchWinterCriteria;
LABEL_14:
    [v10 setFaceFilter:2];
    goto LABEL_15;
  }

  v8 = +[PGLogging sharedLogging];
  loggingConnection = [v8 loggingConnection];

  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
  {
    *v13 = 0;
    _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Curation criteria are not defined for client PGCriteriaClientMemories", v13, 2u);
  }

  v10 = 0;
LABEL_15:

  return v10;
}

- (id)tripCurationCriteriaWithCollection:(id)collection client:(unint64_t)client
{
  if ([collection isShortTrip])
  {
    [(PGCurationCriteriaFactory *)self _shortTripCriteriaWithClient:client];
  }

  else
  {
    [(PGCurationCriteriaFactory *)self _longTripCriteriaWithClient:client];
  }
  v6 = ;

  return v6;
}

- (id)petCurationCriteriaWithCollection:(id)collection client:(unint64_t)client curationContext:(id)context
{
  contextCopy = context;
  eventEnrichmentMomentNodes = [collection eventEnrichmentMomentNodes];
  petNodes = [eventEnrichmentMomentNodes petNodes];

  if ([petNodes count])
  {
    uuids = [petNodes uuids];
    v11 = [uuids mutableCopy];

    hiddenOrBlockedPersonUUIDs = [contextCopy hiddenOrBlockedPersonUUIDs];
    [v11 minusSet:hiddenOrBlockedPersonUUIDs];

    v13 = [MEMORY[0x277CD9938] localIdentifiersWithUUIDs:v11];
    if ([v13 count])
    {
      v14 = [[PGCurationCriteria alloc] initWithMinimumAssetsRatio:client client:0.1];
      v15 = [[PGCurationSetTrait alloc] initWithItems:v13];
      [(PGCurationCriteria *)v14 setPeopleTrait:v15];

      peopleTrait = [(PGCurationCriteria *)v14 peopleTrait];
      [peopleTrait setMinimumScore:1.0];
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

- (id)curationCriteriaWithCollection:(id)collection meaningLabel:(id)label inGraph:(id)graph client:(unint64_t)client
{
  collectionCopy = collection;
  labelCopy = label;
  graphCopy = graph;
  if ([labelCopy isEqualToString:@"Birthday"])
  {
    birthdayPersonNodes = [collectionCopy birthdayPersonNodes];
LABEL_5:
    v14 = birthdayPersonNodes;
    goto LABEL_7;
  }

  if ([labelCopy isEqualToString:@"Anniversary"])
  {
    birthdayPersonNodes = [collectionCopy anniversaryPersonNodes];
    goto LABEL_5;
  }

  v14 = 0;
LABEL_7:
  featureNodeCollection = [v14 featureNodeCollection];
  v16 = [(PGCurationCriteriaFactory *)self curationCriteriaWithMeaningLabel:labelCopy featureNodes:featureNodeCollection inGraph:graphCopy client:client];

  return v16;
}

- (id)curationCriteriaWithMeaningLabel:(id)label featureNodes:(id)nodes inGraph:(id)graph client:(unint64_t)client
{
  labelCopy = label;
  nodesCopy = nodes;
  graphCopy = graph;
  if ([labelCopy isEqualToString:@"Wedding"])
  {
    v13 = [(PGCurationCriteriaFactory *)self _weddingCriteriaWithClient:client];
LABEL_3:
    v14 = v13;
    if (!nodesCopy)
    {
      goto LABEL_31;
    }

    goto LABEL_28;
  }

  if (![labelCopy isEqualToString:@"Birthday"])
  {
    if (![labelCopy isEqualToString:@"Anniversary"])
    {
      if ([labelCopy isEqualToString:@"HolidayEvent"])
      {
        v13 = [(PGCurationCriteriaFactory *)self _holidayEventCriteriaWithGraph:graphCopy featureNodes:nodesCopy client:client];
      }

      else if (([labelCopy isEqualToString:@"Entertainment"] & 1) != 0 || objc_msgSend(labelCopy, "isEqualToString:", @"AmusementPark"))
      {
        v13 = [(PGCurationCriteriaFactory *)self _entertainmentCriteriaWithClient:client];
      }

      else if ([labelCopy isEqualToString:@"Concert"])
      {
        v13 = [(PGCurationCriteriaFactory *)self _concertCriteriaWithClient:client];
      }

      else if ([labelCopy isEqualToString:@"Festival"])
      {
        v13 = [(PGCurationCriteriaFactory *)self _festivalCriteriaWithClient:client];
      }

      else if ([labelCopy isEqualToString:@"SportEvent"])
      {
        v13 = [(PGCurationCriteriaFactory *)self _sportEventCriteriaWithClient:client];
      }

      else if ([labelCopy isEqualToString:@"NightOut"])
      {
        v13 = [(PGCurationCriteriaFactory *)self _nightOutCriteriaWithClient:client];
      }

      else if ([labelCopy isEqualToString:@"Performance"])
      {
        v13 = [(PGCurationCriteriaFactory *)self _performanceCriteriaWithClient:client];
      }

      else if ([labelCopy isEqualToString:@"Museum"])
      {
        v13 = [(PGCurationCriteriaFactory *)self _museumCriteriaWithClient:client];
      }

      else if ([labelCopy isEqualToString:@"Diving"])
      {
        v13 = [(PGCurationCriteriaFactory *)self _divingCriteriaWithClient:client];
      }

      else if ([labelCopy isEqualToString:@"Hiking"])
      {
        v13 = [(PGCurationCriteriaFactory *)self _hikingCriteriaWithClient:client];
      }

      else if ([labelCopy isEqualToString:@"WinterSport"])
      {
        v13 = [(PGCurationCriteriaFactory *)self _winterSportCriteriaWithClient:client];
      }

      else if ([labelCopy isEqualToString:@"Beaching"])
      {
        v13 = [(PGCurationCriteriaFactory *)self _beachingCriteriaWithClient:client];
      }

      else if ([labelCopy isEqualToString:@"Climbing"])
      {
        v13 = [(PGCurationCriteriaFactory *)self _climbingCriteriaWithClient:client];
      }

      else if ([labelCopy isEqualToString:@"Breakfast"])
      {
        v13 = [(PGCurationCriteriaFactory *)self _breakfastCriteriaWithClient:client];
      }

      else if ([labelCopy isEqualToString:@"Lunch"])
      {
        v13 = [(PGCurationCriteriaFactory *)self _lunchCriteriaWithClient:client];
      }

      else
      {
        if (![labelCopy isEqualToString:@"Dinner"])
        {
          v14 = 0;
          if (!nodesCopy)
          {
            goto LABEL_31;
          }

          goto LABEL_28;
        }

        v13 = [(PGCurationCriteriaFactory *)self _dinnerCriteriaWithClient:client];
      }

      goto LABEL_3;
    }

    if (nodesCopy)
    {
      v15 = [(PGGraphNodeCollection *)PGGraphPersonNodeCollection subsetInCollection:nodesCopy];
      if ([v15 count])
      {
        localIdentifiers = [v15 localIdentifiers];
        anyObject = [localIdentifiers anyObject];
        v14 = [(PGCurationCriteriaFactory *)self _anniversaryCriteriaWithPersonLocalIdentifier:anyObject client:client];

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

  if (!nodesCopy)
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

  v15 = [(PGGraphNodeCollection *)PGGraphPersonNodeCollection subsetInCollection:nodesCopy];
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

  localIdentifiers = [v15 localIdentifiers];
  v14 = [(PGCurationCriteriaFactory *)self _birthdayCriteriaWithPersonLocalIdentifiers:localIdentifiers client:client];
LABEL_13:

LABEL_27:
LABEL_28:
  v24 = [(PGGraphNodeCollection *)PGGraphSocialGroupNodeCollection subsetInCollection:nodesCopy];
  if ([v24 count])
  {
    v25 = [PGCurationSetTrait alloc];
    memberNodes = [v24 memberNodes];
    localIdentifiers2 = [memberNodes localIdentifiers];
    v28 = [(PGCurationSetTrait *)v25 initWithItems:localIdentifiers2];
    [v14 setSocialGroupTrait:v28];
  }

LABEL_31:

  return v14;
}

- (id)holidayServiceWithGraph:(id)graph
{
  graphCopy = graph;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  infoNode = [graphCopy infoNode];
  locale = [infoNode locale];

  v8 = [(NSMutableDictionary *)selfCopy->_holidayServiceByLocale objectForKeyedSubscript:locale];
  if (!v8)
  {
    v8 = [objc_alloc(MEMORY[0x277D276D8]) initWithLocale:locale];
  }

  objc_sync_exit(selfCopy);

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