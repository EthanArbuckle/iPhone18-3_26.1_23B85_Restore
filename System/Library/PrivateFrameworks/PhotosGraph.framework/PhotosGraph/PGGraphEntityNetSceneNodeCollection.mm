@interface PGGraphEntityNetSceneNodeCollection
+ (id)sceneNodesForSceneNames:(id)names inGraph:(id)graph;
- (NSSet)localizedNames;
- (void)enumerateLocalizedNamesUsingBlock:(id)block;
- (void)enumerateSceneIdentifiersUsingBlock:(id)block;
@end

@implementation PGGraphEntityNetSceneNodeCollection

+ (id)sceneNodesForSceneNames:(id)names inGraph:(id)graph
{
  graphCopy = graph;
  v7 = [(PGGraphSceneNode *)PGGraphEntityNetSceneNode filterForSceneNames:names];
  v8 = [self nodesMatchingFilter:v7 inGraph:graphCopy];

  return v8;
}

- (void)enumerateSceneIdentifiersUsingBlock:(id)block
{
  blockCopy = block;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __75__PGGraphEntityNetSceneNodeCollection_enumerateSceneIdentifiersUsingBlock___block_invoke;
  v6[3] = &unk_278887A18;
  v7 = blockCopy;
  v5 = blockCopy;
  [(MANodeCollection *)self enumerateUnsignedLongLongPropertyValuesForKey:@"sceneIdentifier" withBlock:v6];
}

- (void)enumerateLocalizedNamesUsingBlock:(id)block
{
  blockCopy = block;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __73__PGGraphEntityNetSceneNodeCollection_enumerateLocalizedNamesUsingBlock___block_invoke;
  v6[3] = &unk_278887978;
  v7 = blockCopy;
  v5 = blockCopy;
  [(MANodeCollection *)self enumerateStringPropertyValuesForKey:@"localizedName" withBlock:v6];
}

- (NSSet)localizedNames
{
  v3 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{-[MAElementCollection count](self, "count")}];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__PGGraphEntityNetSceneNodeCollection_localizedNames__block_invoke;
  v6[3] = &unk_27888B480;
  v4 = v3;
  v7 = v4;
  [(MANodeCollection *)self enumerateStringPropertyValuesForKey:@"localizedName" withBlock:v6];

  return v4;
}

@end