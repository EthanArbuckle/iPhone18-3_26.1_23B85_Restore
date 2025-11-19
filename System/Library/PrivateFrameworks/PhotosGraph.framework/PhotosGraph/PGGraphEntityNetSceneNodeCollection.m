@interface PGGraphEntityNetSceneNodeCollection
+ (id)sceneNodesForSceneNames:(id)a3 inGraph:(id)a4;
- (NSSet)localizedNames;
- (void)enumerateLocalizedNamesUsingBlock:(id)a3;
- (void)enumerateSceneIdentifiersUsingBlock:(id)a3;
@end

@implementation PGGraphEntityNetSceneNodeCollection

+ (id)sceneNodesForSceneNames:(id)a3 inGraph:(id)a4
{
  v6 = a4;
  v7 = [(PGGraphSceneNode *)PGGraphEntityNetSceneNode filterForSceneNames:a3];
  v8 = [a1 nodesMatchingFilter:v7 inGraph:v6];

  return v8;
}

- (void)enumerateSceneIdentifiersUsingBlock:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __75__PGGraphEntityNetSceneNodeCollection_enumerateSceneIdentifiersUsingBlock___block_invoke;
  v6[3] = &unk_278887A18;
  v7 = v4;
  v5 = v4;
  [(MANodeCollection *)self enumerateUnsignedLongLongPropertyValuesForKey:@"sceneIdentifier" withBlock:v6];
}

- (void)enumerateLocalizedNamesUsingBlock:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __73__PGGraphEntityNetSceneNodeCollection_enumerateLocalizedNamesUsingBlock___block_invoke;
  v6[3] = &unk_278887978;
  v7 = v4;
  v5 = v4;
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