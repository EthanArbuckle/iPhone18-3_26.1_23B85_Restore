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
  v3 = [MEMORY[0x277CBEAF8] currentLocale];
  v4 = [(PGGraphNamedLocationNode *)self name];
  v5 = [v3 localizedStringForCountryCode:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
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
  v3 = [v2 outRelation];

  return v3;
}

+ (MARelation)momentInCountry
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

+ (id)addressOfCountry
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
  v2 = [objc_alloc(MEMORY[0x277D22C78]) initWithLabel:@"Country" domain:200];

  return v2;
}

@end