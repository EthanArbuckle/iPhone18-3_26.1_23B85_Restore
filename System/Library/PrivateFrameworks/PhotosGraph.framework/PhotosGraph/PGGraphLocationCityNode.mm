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
  inRelation = [v2 inRelation];

  return inRelation;
}

+ (MARelation)countyOfCity
{
  v2 = +[PGGraphLocationCountyEdge filter];
  outRelation = [v2 outRelation];

  return outRelation;
}

+ (MARelation)stateOfCity
{
  v12[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D22C90];
  v3 = +[PGGraphLocationEdge filter];
  outRelation = [v3 outRelation];
  transitiveClosure = [outRelation transitiveClosure];
  v12[0] = transitiveClosure;
  v6 = +[PGGraphLocationStateNode filter];
  relation = [v6 relation];
  v12[1] = relation;
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
  outRelation = [v3 outRelation];
  transitiveClosure = [outRelation transitiveClosure];
  v12[0] = transitiveClosure;
  v6 = +[PGGraphLocationCountryNode filter];
  relation = [v6 relation];
  v12[1] = relation;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
  v9 = [v2 chain:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (MARelation)momentInCity
{
  v14[3] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D22C90];
  filter = [self filter];
  relation = [filter relation];
  v5 = +[PGGraphLocationEdge filter];
  inRelation = [v5 inRelation];
  transitiveClosure = [inRelation transitiveClosure];
  v14[1] = transitiveClosure;
  v8 = +[PGGraphMomentNode filter];
  relation2 = [v8 relation];
  v14[2] = relation2;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:3];
  v11 = [v2 chain:v10];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (MARelation)addressOfCity
{
  v14[3] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D22C90];
  filter = [self filter];
  relation = [filter relation];
  v5 = +[PGGraphLocationEdge filter];
  inRelation = [v5 inRelation];
  transitiveClosure = [inRelation transitiveClosure];
  v14[1] = transitiveClosure;
  v8 = +[PGGraphAddressNode filter];
  relation2 = [v8 relation];
  v14[2] = relation2;
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