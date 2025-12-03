@interface PGGraphAreaNodeCollection
+ (id)areaNodesForNames:(id)names inGraph:(id)graph;
+ (id)areaNodesWithCIDINames:(id)names inGraph:(id)graph;
- (PGGraphAddressNodeCollection)addressNodes;
- (id)names;
- (id)nonBlockedAreaNodes;
- (void)enumerateIdentifiersSortedByPopularityScoreWithBlock:(id)block;
- (void)enumeratePopularityScoresUsingBlock:(id)block;
@end

@implementation PGGraphAreaNodeCollection

- (void)enumeratePopularityScoresUsingBlock:(id)block
{
  blockCopy = block;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__PGGraphAreaNodeCollection_enumeratePopularityScoresUsingBlock___block_invoke;
  v6[3] = &unk_278888AA8;
  v7 = blockCopy;
  v5 = blockCopy;
  [(MANodeCollection *)self enumerateDoublePropertyValuesForKey:@"popularityScore" withBlock:v6];
}

- (void)enumerateIdentifiersSortedByPopularityScoreWithBlock:(id)block
{
  blockCopy = block;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __82__PGGraphAreaNodeCollection_enumerateIdentifiersSortedByPopularityScoreWithBlock___block_invoke;
  v6[3] = &unk_278888A80;
  v7 = blockCopy;
  v5 = blockCopy;
  [(MANodeCollection *)self enumerateNodesAsCollectionsSortedByDoublePropertyForName:@"popularityScore" ascending:0 usingBlock:v6];
}

void __82__PGGraphAreaNodeCollection_enumerateIdentifiersSortedByPopularityScoreWithBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [a2 elementIdentifiers];
  (*(v4 + 16))(v4, [v5 firstElement], a3);
}

- (id)nonBlockedAreaNodes
{
  v3 = +[PGGraphAreaNode nonBlockedFilter];
  relation = [v3 relation];
  v5 = [(MANodeCollection *)PGGraphAreaNodeCollection nodesRelatedToNodes:self withRelation:relation];

  return v5;
}

- (id)names
{
  v3 = [MEMORY[0x277CBEB58] setWithCapacity:{-[MAElementCollection count](self, "count")}];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __34__PGGraphAreaNodeCollection_names__block_invoke;
  v6[3] = &unk_27888B480;
  v4 = v3;
  v7 = v4;
  [(MANodeCollection *)self enumerateStringPropertyValuesForKey:@"name" withBlock:v6];

  return v4;
}

void __34__PGGraphAreaNodeCollection_names__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([v4 length])
  {
    [*(a1 + 32) addObject:v4];
  }
}

- (PGGraphAddressNodeCollection)addressNodes
{
  v3 = +[PGGraphAreaNode addressOfArea];
  v4 = [(MANodeCollection *)PGGraphAddressNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

+ (id)areaNodesWithCIDINames:(id)names inGraph:(id)graph
{
  v16[1] = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  namesCopy = names;
  v8 = +[PGGraphAreaNode filter];
  v15 = @"name";
  v9 = [objc_alloc(MEMORY[0x277D22B98]) initWithComparator:8 value:namesCopy];

  v16[0] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v11 = [v8 filterBySettingProperties:v10];

  v12 = [self nodesMatchingFilter:v11 inGraph:graphCopy];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)areaNodesForNames:(id)names inGraph:(id)graph
{
  graphCopy = graph;
  v7 = [PGGraphAreaNode filterWithNames:names];
  v8 = [self nodesMatchingFilter:v7 inGraph:graphCopy];

  return v8;
}

@end