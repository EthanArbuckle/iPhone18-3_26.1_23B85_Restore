@interface PGGraphAddressNodeCollection
+ (id)addressNodeAsCollectionForUUID:(id)d inGraph:(id)graph;
+ (id)addressNodesForUUIDs:(id)ds inGraph:(id)graph;
+ (id)addressNodesWithinDistance:(double)distance ofLocations:(id)locations inGraph:(id)graph;
- (CLLocation)centroidLocation;
- (CLLocationCoordinate2D)centroidCoordinate;
- (NSArray)locations;
- (NSSet)uuids;
- (PGGraphAddressNodeCollection)preciseSubset;
- (PGGraphAreaNodeCollection)areaNodes;
- (PGGraphHomeWorkNodeCollection)homeNodes;
- (PGGraphHomeWorkNodeCollection)homeWorkNodes;
- (PGGraphHomeWorkNodeCollection)workNodes;
- (PGGraphLanguageNodeCollection)languageNodes;
- (PGGraphLocationCityNodeCollection)cityNodes;
- (PGGraphLocationContinentNodeCollection)continentNodes;
- (PGGraphLocationCountryNodeCollection)countryNodes;
- (PGGraphLocationCountyNodeCollection)countyNodes;
- (PGGraphLocationDistrictNodeCollection)districtNodes;
- (PGGraphLocationNumberNodeCollection)numberNodes;
- (PGGraphLocationStateNodeCollection)stateNodes;
- (PGGraphLocationStreetNodeCollection)streetNodes;
- (PGGraphLocationSubcontinentNodeCollection)subcontinentNodes;
- (PGGraphMomentNodeCollection)momentNodes;
- (void)enumerateUniversalEndDatesUsingBlock:(id)block;
@end

@implementation PGGraphAddressNodeCollection

- (NSArray)locations
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __41__PGGraphAddressNodeCollection_locations__block_invoke;
  v6[3] = &unk_278889878;
  v4 = v3;
  v7 = v4;
  [(MANodeCollection *)self enumerateNodesUsingBlock:v6];

  return v4;
}

void __41__PGGraphAddressNodeCollection_locations__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 location];
  [v2 addObject:v3];
}

- (CLLocationCoordinate2D)centroidCoordinate
{
  v3 = [(MAElementCollection *)self count];
  if (v3)
  {
    v4 = v3;
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __50__PGGraphAddressNodeCollection_centroidCoordinate__block_invoke;
    v11[3] = &unk_2788897F8;
    v11[4] = &v16;
    [(PGGraphAddressNodeCollection *)self enumerateLatitudesUsingBlock:v11];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __50__PGGraphAddressNodeCollection_centroidCoordinate__block_invoke_2;
    v10[3] = &unk_2788897F8;
    v10[4] = &v12;
    [(PGGraphAddressNodeCollection *)self enumerateLongitudesUsingBlock:v10];
    v5 = CLLocationCoordinate2DMake(v17[3] / v4, v13[3] / v4);
    latitude = v5.latitude;
    longitude = v5.longitude;
    _Block_object_dispose(&v12, 8);
    _Block_object_dispose(&v16, 8);
  }

  else
  {
    latitude = *MEMORY[0x277CE4278];
    longitude = *(MEMORY[0x277CE4278] + 8);
  }

  v8 = latitude;
  v9 = longitude;
  result.longitude = v9;
  result.latitude = v8;
  return result;
}

double __50__PGGraphAddressNodeCollection_centroidCoordinate__block_invoke(uint64_t a1, double a2)
{
  v2 = *(*(a1 + 32) + 8);
  result = *(v2 + 24) + a2;
  *(v2 + 24) = result;
  return result;
}

double __50__PGGraphAddressNodeCollection_centroidCoordinate__block_invoke_2(uint64_t a1, double a2)
{
  v2 = *(*(a1 + 32) + 8);
  result = *(v2 + 24) + a2;
  *(v2 + 24) = result;
  return result;
}

- (CLLocation)centroidLocation
{
  [(PGGraphAddressNodeCollection *)self centroidCoordinate];
  latitude = v7.latitude;
  longitude = v7.longitude;
  if (CLLocationCoordinate2DIsValid(v7))
  {
    v4 = [objc_alloc(MEMORY[0x277CE41F8]) initWithLatitude:latitude longitude:longitude];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (PGGraphAddressNodeCollection)preciseSubset
{
  v3 = +[PGGraphAddressNode preciseFilter];
  relation = [v3 relation];
  v5 = [(MANodeCollection *)PGGraphAddressNodeCollection nodesRelatedToNodes:self withRelation:relation];

  return v5;
}

- (PGGraphAreaNodeCollection)areaNodes
{
  v3 = +[PGGraphAddressNode areaOfAddress];
  v4 = [(MANodeCollection *)PGGraphAreaNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphLanguageNodeCollection)languageNodes
{
  v3 = +[PGGraphAddressNode languageOfAddress];
  v4 = [(MANodeCollection *)PGGraphLanguageNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphLocationContinentNodeCollection)continentNodes
{
  v3 = +[PGGraphAddressNode continentOfAddress];
  v4 = [(MANodeCollection *)PGGraphLocationContinentNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphLocationSubcontinentNodeCollection)subcontinentNodes
{
  v3 = +[PGGraphAddressNode subcontinentOfAddress];
  v4 = [(MANodeCollection *)PGGraphLocationSubcontinentNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphLocationCountryNodeCollection)countryNodes
{
  v3 = +[PGGraphAddressNode countryOfAddress];
  v4 = [(MANodeCollection *)PGGraphLocationCountryNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphLocationStateNodeCollection)stateNodes
{
  v3 = +[PGGraphAddressNode stateOfAddress];
  v4 = [(MANodeCollection *)PGGraphLocationStateNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphLocationCountyNodeCollection)countyNodes
{
  v3 = +[PGGraphAddressNode countyOfAddress];
  v4 = [(MANodeCollection *)PGGraphLocationCountyNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphLocationCityNodeCollection)cityNodes
{
  v3 = +[PGGraphAddressNode cityOfAddress];
  v4 = [(MANodeCollection *)PGGraphLocationCityNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphLocationDistrictNodeCollection)districtNodes
{
  v3 = +[PGGraphAddressNode districtOfAddress];
  v4 = [(MANodeCollection *)PGGraphLocationDistrictNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphLocationStreetNodeCollection)streetNodes
{
  v3 = +[PGGraphAddressNode streetOfAddress];
  v4 = [(MANodeCollection *)PGGraphLocationStreetNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphLocationNumberNodeCollection)numberNodes
{
  v3 = +[PGGraphAddressNode numberOfAddress];
  v4 = [(MANodeCollection *)PGGraphLocationNumberNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphHomeWorkNodeCollection)homeWorkNodes
{
  v3 = +[PGGraphAddressNode homeWorkOfAddress];
  v4 = [(MANodeCollection *)PGGraphHomeWorkNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphHomeWorkNodeCollection)workNodes
{
  v3 = +[PGGraphAddressNode workOfAddress];
  v4 = [(MANodeCollection *)PGGraphHomeWorkNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphHomeWorkNodeCollection)homeNodes
{
  v3 = +[PGGraphAddressNode homeOfAddress];
  v4 = [(MANodeCollection *)PGGraphHomeWorkNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphMomentNodeCollection)momentNodes
{
  v3 = +[PGGraphAddressNode momentOfAddress];
  v4 = [(MANodeCollection *)PGGraphMomentNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (NSSet)uuids
{
  v3 = [MEMORY[0x277CBEB58] setWithCapacity:{-[MAElementCollection count](self, "count")}];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __37__PGGraphAddressNodeCollection_uuids__block_invoke;
  v6[3] = &unk_27888B480;
  v4 = v3;
  v7 = v4;
  [(MANodeCollection *)self enumerateStringPropertyValuesForKey:@"uuid" withBlock:v6];

  return v4;
}

void __37__PGGraphAddressNodeCollection_uuids__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([v4 length])
  {
    [*(a1 + 32) addObject:v4];
  }
}

- (void)enumerateUniversalEndDatesUsingBlock:(id)block
{
  blockCopy = block;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __69__PGGraphAddressNodeCollection_enumerateUniversalEndDatesUsingBlock___block_invoke;
  v6[3] = &unk_278888AA8;
  v7 = blockCopy;
  v5 = blockCopy;
  [(MANodeCollection *)self enumerateDoublePropertyValuesForKey:@"utce" withBlock:v6];
}

void __69__PGGraphAddressNodeCollection_enumerateUniversalEndDatesUsingBlock___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:?];
  (*(*(a1 + 32) + 16))();
}

+ (id)addressNodesWithinDistance:(double)distance ofLocations:(id)locations inGraph:(id)graph
{
  locationsCopy = locations;
  graphCopy = graph;
  if ([locationsCopy count])
  {
    v10 = objc_alloc_init(MEMORY[0x277D22BD0]);
    v11 = [self nodesInGraph:graphCopy];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __79__PGGraphAddressNodeCollection_addressNodesWithinDistance_ofLocations_inGraph___block_invoke;
    v15[3] = &unk_278886038;
    distanceCopy = distance;
    v16 = locationsCopy;
    v17 = v10;
    v12 = v10;
    [v11 enumerateNodesUsingBlock:v15];

    v13 = [[self alloc] initWithGraph:graphCopy elementIdentifiers:v12];
    graphCopy = v12;
  }

  else
  {
    v13 = [[self alloc] initWithGraph:graphCopy];
  }

  return v13;
}

void __79__PGGraphAddressNodeCollection_addressNodesWithinDistance_ofLocations_inGraph___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v17 + 1) + 8 * i) coordinate];
        [v3 coordinate];
        v15 = v11;
        v16 = v12;
        CLLocationCoordinate2DGetDistanceFrom();
        if (v13 <= *(a1 + 48))
        {
          [*(a1 + 40) addIdentifier:{objc_msgSend(v3, "identifier", v15, v16)}];
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:{16, v15, v16}];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v14 = *MEMORY[0x277D85DE8];
}

+ (id)addressNodesForUUIDs:(id)ds inGraph:(id)graph
{
  v14[1] = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  dsCopy = ds;
  v7 = +[PGGraphAddressNode filter];
  v13 = @"uuid";
  v14[0] = dsCopy;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v9 = [v7 filterBySettingProperties:v8];

  v10 = [(MANodeCollection *)PGGraphAddressNodeCollection nodesMatchingFilter:v9 inGraph:graphCopy];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)addressNodeAsCollectionForUUID:(id)d inGraph:(id)graph
{
  v14[1] = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  dCopy = d;
  v7 = +[PGGraphAddressNode filter];
  v13 = @"uuid";
  v14[0] = dCopy;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v9 = [v7 filterBySettingProperties:v8];

  v10 = [(MANodeCollection *)PGGraphAddressNodeCollection nodesMatchingFilter:v9 inGraph:graphCopy];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

@end