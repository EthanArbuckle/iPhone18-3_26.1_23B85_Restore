@interface PGGraphLocationCityNode
+ (MARelation)addressOfCity;
+ (MARelation)countryOfCity;
+ (MARelation)countyOfCity;
+ (MARelation)districtOfCity;
+ (MARelation)momentInCity;
+ (MARelation)stateOfCity;
+ (id)filter;
- (PGGraphLocationCityNodeCollection)collection;
@end

@implementation PGGraphLocationCityNode

- (PGGraphLocationCityNodeCollection)collection
{
  v2 = [(MANodeCollection *)[PGGraphLocationCityNodeCollection alloc] initWithNode:self];

  return v2;
}

+ (MARelation)districtOfCity
{
  v2 = +[PGGraphLocationCityEdge filter];
  v3 = [v2 inRelation];

  return v3;
}

+ (MARelation)countyOfCity
{
  v2 = +[PGGraphLocationCountyEdge filter];
  v3 = [v2 outRelation];

  return v3;
}

+ (MARelation)stateOfCity
{
  v12[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D22C90];
  v3 = +[PGGraphLocationEdge filter];
  v4 = [v3 outRelation];
  v5 = [v4 transitiveClosure];
  v12[0] = v5;
  v6 = +[PGGraphLocationStateNode filter];
  v7 = [v6 relation];
  v12[1] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
  v9 = [v2 chain:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (MARelation)countryOfCity
{
  v12[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D22C90];
  v3 = +[PGGraphLocationEdge filter];
  v4 = [v3 outRelation];
  v5 = [v4 transitiveClosure];
  v12[0] = v5;
  v6 = +[PGGraphLocationCountryNode filter];
  v7 = [v6 relation];
  v12[1] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
  v9 = [v2 chain:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (MARelation)momentInCity
{
  v14[3] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D22C90];
  v3 = [a1 filter];
  v4 = [v3 relation];
  v5 = +[PGGraphLocationEdge filter];
  v6 = [v5 inRelation];
  v7 = [v6 transitiveClosure];
  v14[1] = v7;
  v8 = +[PGGraphMomentNode filter];
  v9 = [v8 relation];
  v14[2] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:3];
  v11 = [v2 chain:v10];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (MARelation)addressOfCity
{
  v14[3] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D22C90];
  v3 = [a1 filter];
  v4 = [v3 relation];
  v5 = +[PGGraphLocationEdge filter];
  v6 = [v5 inRelation];
  v7 = [v6 transitiveClosure];
  v14[1] = v7;
  v8 = +[PGGraphAddressNode filter];
  v9 = [v8 relation];
  v14[2] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:3];
  v11 = [v2 chain:v10];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C78]) initWithLabel:@"City" domain:200];

  return v2;
}

@end