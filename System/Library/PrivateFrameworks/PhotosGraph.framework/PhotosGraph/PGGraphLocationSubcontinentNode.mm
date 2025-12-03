@interface PGGraphLocationSubcontinentNode
+ (MARelation)momentInSubcontinent;
+ (id)addressOfSubcontinent;
+ (id)countryOfSubcontinent;
+ (id)filter;
- (PGGraphLocationSubcontinentNodeCollection)collection;
@end

@implementation PGGraphLocationSubcontinentNode

- (PGGraphLocationSubcontinentNodeCollection)collection
{
  v2 = [(MANodeCollection *)[PGGraphLocationSubcontinentNodeCollection alloc] initWithNode:self];

  return v2;
}

+ (id)countryOfSubcontinent
{
  v2 = +[PGGraphLocationSubcontinentEdge filter];
  inRelation = [v2 inRelation];

  return inRelation;
}

+ (MARelation)momentInSubcontinent
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

+ (id)addressOfSubcontinent
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
  v2 = [objc_alloc(MEMORY[0x277D22C78]) initWithLabel:@"Subcontinent" domain:200];

  return v2;
}

@end