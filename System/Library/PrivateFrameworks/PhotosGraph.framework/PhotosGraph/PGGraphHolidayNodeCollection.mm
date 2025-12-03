@interface PGGraphHolidayNodeCollection
+ (id)holidayNodesWithCategory:(unint64_t)category inGraph:(id)graph;
+ (id)holidayNodesWithName:(id)name inGraph:(id)graph;
+ (id)holidayNodesWithNames:(id)names inGraph:(id)graph;
- (NSSet)holidayNames;
- (NSSet)localizedHolidayNames;
- (NSSet)localizedHolidaySynonyms;
- (PGGraphDateNodeCollection)dateNodes;
- (PGGraphMomentNodeCollection)celebratingMomentNodes;
- (void)enumerateHolidayNamesUsingBlock:(id)block;
- (void)enumerateLocalizedHolidayNamesUsingBlock:(id)block;
@end

@implementation PGGraphHolidayNodeCollection

- (void)enumerateLocalizedHolidayNamesUsingBlock:(id)block
{
  blockCopy = block;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __73__PGGraphHolidayNodeCollection_enumerateLocalizedHolidayNamesUsingBlock___block_invoke;
  v6[3] = &unk_278887978;
  v7 = blockCopy;
  v5 = blockCopy;
  [(MANodeCollection *)self enumerateStringPropertyValuesForKey:@"name" withBlock:v6];
}

void __73__PGGraphHolidayNodeCollection_enumerateLocalizedHolidayNamesUsingBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if ([v5 length])
  {
    v4 = [MEMORY[0x277D276C8] localizedNameForName:v5];
    (*(*(a1 + 32) + 16))();
  }
}

- (void)enumerateHolidayNamesUsingBlock:(id)block
{
  blockCopy = block;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64__PGGraphHolidayNodeCollection_enumerateHolidayNamesUsingBlock___block_invoke;
  v6[3] = &unk_278887978;
  v7 = blockCopy;
  v5 = blockCopy;
  [(MANodeCollection *)self enumerateStringPropertyValuesForKey:@"name" withBlock:v6];
}

- (NSSet)localizedHolidaySynonyms
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__PGGraphHolidayNodeCollection_localizedHolidaySynonyms__block_invoke;
  v6[3] = &unk_27888B480;
  v4 = v3;
  v7 = v4;
  [(MANodeCollection *)self enumerateStringPropertyValuesForKey:@"name" withBlock:v6];

  return v4;
}

uint64_t __56__PGGraphHolidayNodeCollection_localizedHolidaySynonyms__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if ([v6 length])
  {
    v4 = [MEMORY[0x277D276C8] localizedSynonymsForHolidayName:v6];
    if (v4)
    {
      [*(a1 + 32) addObjectsFromArray:v4];
    }
  }

  return MEMORY[0x2821F9730]();
}

- (NSSet)localizedHolidayNames
{
  v3 = [MEMORY[0x277CBEB58] setWithCapacity:{-[MAElementCollection count](self, "count")}];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__PGGraphHolidayNodeCollection_localizedHolidayNames__block_invoke;
  v6[3] = &unk_27888B480;
  v4 = v3;
  v7 = v4;
  [(MANodeCollection *)self enumerateStringPropertyValuesForKey:@"name" withBlock:v6];

  return v4;
}

void __53__PGGraphHolidayNodeCollection_localizedHolidayNames__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if ([v5 length])
  {
    v4 = [MEMORY[0x277D276C8] localizedNameForName:v5];
    [*(a1 + 32) addObject:v4];
  }
}

- (NSSet)holidayNames
{
  v3 = [MEMORY[0x277CBEB58] setWithCapacity:{-[MAElementCollection count](self, "count")}];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__PGGraphHolidayNodeCollection_holidayNames__block_invoke;
  v6[3] = &unk_27888B480;
  v4 = v3;
  v7 = v4;
  [(MANodeCollection *)self enumerateStringPropertyValuesForKey:@"name" withBlock:v6];

  return v4;
}

void __44__PGGraphHolidayNodeCollection_holidayNames__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([v4 length])
  {
    [*(a1 + 32) addObject:v4];
  }
}

- (PGGraphDateNodeCollection)dateNodes
{
  v3 = +[PGGraphHolidayEdge filter];
  inRelation = [v3 inRelation];
  v5 = [(MANodeCollection *)PGGraphDateNodeCollection nodesRelatedToNodes:self withRelation:inRelation];

  return v5;
}

- (PGGraphMomentNodeCollection)celebratingMomentNodes
{
  v3 = +[PGGraphCelebratingEdge filter];
  inRelation = [v3 inRelation];

  v5 = [(MANodeCollection *)PGGraphMomentNodeCollection nodesRelatedToNodes:self withRelation:inRelation];

  return v5;
}

+ (id)holidayNodesWithCategory:(unint64_t)category inGraph:(id)graph
{
  graphCopy = graph;
  v7 = [PGGraphHolidayNode holidayNodeFilterWithCategory:category];
  v8 = [self nodesMatchingFilter:v7 inGraph:graphCopy];

  return v8;
}

+ (id)holidayNodesWithNames:(id)names inGraph:(id)graph
{
  graphCopy = graph;
  v7 = [PGGraphHolidayNode holidayNodeFilterWithNames:names];
  v8 = [self nodesMatchingFilter:v7 inGraph:graphCopy];

  return v8;
}

+ (id)holidayNodesWithName:(id)name inGraph:(id)graph
{
  v14 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v6 = MEMORY[0x277CBEA60];
  graphCopy = graph;
  nameCopy2 = name;
  v9 = [v6 arrayWithObjects:&nameCopy count:1];

  v10 = [self holidayNodesWithNames:v9 inGraph:{graphCopy, nameCopy, v14}];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

@end