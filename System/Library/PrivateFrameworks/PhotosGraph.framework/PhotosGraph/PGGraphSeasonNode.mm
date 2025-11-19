@interface PGGraphSeasonNode
+ (id)_localizationKeyForSeasonNode:(id)a3;
+ (id)dateOfSeason;
+ (id)filter;
+ (id)filterForSeasonName:(id)a3;
- (BOOL)hasProperties:(id)a3;
- (MANodeFilter)uniquelyIdentifyingFilter;
- (NSArray)localizedSynonyms;
- (NSString)featureIdentifier;
- (NSString)localizedName;
- (PGGraphSeasonNode)initWithName:(id)a3;
- (PGGraphSeasonNodeCollection)collection;
- (id)propertyDictionary;
- (id)propertyForKey:(id)a3;
- (unint64_t)numberOfMomentNodes;
@end

@implementation PGGraphSeasonNode

- (NSString)featureIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(PGGraphSeasonNode *)self name];
  v7 = [v3 stringWithFormat:@"%@|%@", v5, v6];

  return v7;
}

- (PGGraphSeasonNodeCollection)collection
{
  v2 = [(MANodeCollection *)[PGGraphSeasonNodeCollection alloc] initWithNode:self];

  return v2;
}

- (NSArray)localizedSynonyms
{
  v2 = [objc_opt_class() _localizationKeyForSeasonNode:self];
  v3 = [PGGraphSynonymSupportHelper localizedSynonymsForLocalizationKey:v2];

  return v3;
}

- (NSString)localizedName
{
  v2 = [objc_opt_class() _localizationKeyForSeasonNode:self];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:v2 value:v2 table:@"Localizable"];

  return v4;
}

- (MANodeFilter)uniquelyIdentifyingFilter
{
  v3 = objc_alloc(MEMORY[0x277D22C78]);
  v4 = [(PGGraphSeasonNode *)self propertyDictionary];
  v5 = [v3 initWithLabel:@"Season" domain:400 properties:v4];

  return v5;
}

- (id)propertyForKey:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 isEqualToString:@"name"])
  {
    v5 = self->_name;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      v8 = 138412290;
      v9 = v4;
      _os_log_fault_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "Unsupported property '%@' accessed on PGGraphSeasonNode.", &v8, 0xCu);
    }

    v5 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)propertyDictionary
{
  v7[1] = *MEMORY[0x277D85DE8];
  name = self->_name;
  v6 = @"name";
  v7[0] = name;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (BOOL)hasProperties:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 count])
  {
    v6 = [v5 objectForKeyedSubscript:@"name"];
    v7 = v6;
    v8 = !v6 || [v6 isEqual:self->_name];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (PGGraphSeasonNode)initWithName:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PGGraphSeasonNode;
  v6 = [(PGGraphNode *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_name, a3);
  }

  return v7;
}

- (unint64_t)numberOfMomentNodes
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __40__PGGraphSeasonNode_numberOfMomentNodes__block_invoke;
  v4[3] = &unk_278885C98;
  v4[4] = &v5;
  [(MANode *)self enumerateNeighborNodesThroughEdgesWithLabel:@"SEASON" domain:400 usingBlock:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __40__PGGraphSeasonNode_numberOfMomentNodes__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 countOfEdgesWithLabel:@"DATE" domain:400];
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

+ (id)filterForSeasonName:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D22C78];
  v4 = a3;
  v5 = [v3 alloc];
  v10 = @"name";
  v11[0] = v4;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];

  v7 = [v5 initWithLabel:@"Season" domain:400 properties:v6];
  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)dateOfSeason
{
  v2 = +[PGGraphSeasonEdge filter];
  v3 = [v2 inRelation];

  return v3;
}

+ (id)_localizationKeyForSeasonNode:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 name];
  if ([v4 isEqualToString:*MEMORY[0x277D275F0]])
  {
    v5 = @"PGSeasonMemoryTitleFormatSpring";
  }

  else if ([v4 isEqualToString:*MEMORY[0x277D275F8]])
  {
    v5 = @"PGSeasonMemoryTitleFormatSummer";
  }

  else if ([v4 isEqualToString:*MEMORY[0x277D275E8]])
  {
    v5 = @"PGSeasonMemoryTitleFormatAutumn";
  }

  else if ([v4 isEqualToString:*MEMORY[0x277D27600]])
  {
    v5 = @"PGSeasonMemoryTitleFormatWinter";
  }

  else
  {
    v6 = +[PGLogging sharedLogging];
    v7 = [v6 loggingConnection];

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v3;
      _os_log_error_impl(&dword_22F0FC000, v7, OS_LOG_TYPE_ERROR, "Trying to localize season node with unsupported label: %@", &v10, 0xCu);
    }

    v5 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C78]) initWithLabel:@"Season" domain:400];

  return v2;
}

@end