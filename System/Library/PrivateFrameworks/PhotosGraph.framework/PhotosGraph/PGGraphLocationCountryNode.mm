@interface PGGraphLocationCountryNode
+ (MARelation)momentInCountry;
+ (id)addressOfCountry;
+ (id)filter;
+ (id)languageOfCountry;
- (NSString)displayName;
- (PGGraphLocationCountryNodeCollection)collection;
@end

@implementation PGGraphLocationCountryNode

- (NSString)displayName
{
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  name = [(PGGraphNamedLocationNode *)self name];
  v5 = [currentLocale localizedStringForCountryCode:name];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = name;
  }

  v8 = v7;

  return v7;
}

- (PGGraphLocationCountryNodeCollection)collection
{
  v2 = [(MANodeCollection *)[PGGraphLocationCountryNodeCollection alloc] initWithNode:self];

  return v2;
}

+ (id)languageOfCountry
{
  v2 = +[PGGraphLanguageEdge filter];
  outRelation = [v2 outRelation];

  return outRelation;
}

+ (MARelation)momentInCountry
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

+ (id)addressOfCountry
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
  v2 = [objc_alloc(MEMORY[0x277D22C78]) initWithLabel:@"Country" domain:200];

  return v2;
}

@end