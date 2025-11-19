@interface PGGraphHighlightNodeCollection
+ (id)dayHighlightNodesInGraph:(id)a3;
+ (id)highlightNodeAsCollectionByHighlightUUIDForArrayOfHighlightUUIDs:(id)a3 inGraph:(id)a4;
+ (id)highlightNodeAsCollectionByHighlightUUIDForHighlightUUIDs:(id)a3 inGraph:(id)a4;
+ (id)highlightNodeForUUID:(id)a3 inGraph:(id)a4;
+ (id)highlightNodesForArrayOfUUIDs:(id)a3 inGraph:(id)a4;
+ (id)highlightNodesForUUIDs:(id)a3 inGraph:(id)a4;
- (NSSet)localIdentifiers;
- (NSSet)uuids;
- (PGGraphHighlightGroupNodeCollection)highlightGroupNodes;
- (PGGraphHighlightNodeCollection)subsetWithBothPrivateAndSharedAssets;
- (PGGraphHighlightNodeCollection)subsetWithPrivateAssets;
- (PGGraphHighlightNodeCollection)subsetWithSharedAssets;
- (PGGraphMomentNodeCollection)momentNodes;
- (id)highConfidenceSceneNodes;
- (id)highlightNodeAsCollectionByHighlightUUID;
- (id)highlightNodeByHighlightUUID;
- (id)sceneNodes;
- (id)searchConfidenceSceneNodes;
@end

@implementation PGGraphHighlightNodeCollection

- (PGGraphHighlightNodeCollection)subsetWithBothPrivateAndSharedAssets
{
  v3 = +[PGGraphHighlightNode highlightWithPrivateAndSharedAssetsOfHighlight];
  v4 = [(MANodeCollection *)PGGraphHighlightNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphHighlightNodeCollection)subsetWithPrivateAssets
{
  v3 = +[PGGraphHighlightNode highlightWithPrivateAssetsOfHighlight];
  v4 = [(MANodeCollection *)PGGraphHighlightNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphHighlightNodeCollection)subsetWithSharedAssets
{
  v3 = +[PGGraphHighlightNode highlightWithSharedAssetsOfHighlight];
  v4 = [(MANodeCollection *)PGGraphHighlightNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (id)highlightNodeByHighlightUUID
{
  v3 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{-[MAElementCollection count](self, "count")}];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __62__PGGraphHighlightNodeCollection_highlightNodeByHighlightUUID__block_invoke;
  v6[3] = &unk_278885850;
  v4 = v3;
  v7 = v4;
  [(MANodeCollection *)self enumerateNodesUsingBlock:v6];

  return v4;
}

void __62__PGGraphHighlightNodeCollection_highlightNodeByHighlightUUID__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 uuid];
  [v2 setObject:v3 forKeyedSubscript:v4];
}

- (id)highlightNodeAsCollectionByHighlightUUID
{
  v3 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{-[MAElementCollection count](self, "count")}];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __74__PGGraphHighlightNodeCollection_highlightNodeAsCollectionByHighlightUUID__block_invoke;
  v8[3] = &unk_278887A40;
  v8[4] = self;
  v4 = v3;
  v9 = v4;
  [(MANodeCollection *)self enumerateStringPropertyValuesForKey:@"id" withBlock:v8];
  v5 = v9;
  v6 = v4;

  return v4;
}

void __74__PGGraphHighlightNodeCollection_highlightNodeAsCollectionByHighlightUUID__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [PGGraphHighlightNodeCollection alloc];
  v7 = [*(a1 + 32) graph];
  v8 = [objc_alloc(MEMORY[0x277D22BB0]) initWithElementIdentifier:a2];
  v9 = [(MAElementCollection *)v6 initWithGraph:v7 elementIdentifiers:v8];

  [*(a1 + 40) setObject:v9 forKeyedSubscript:v5];
}

- (NSSet)localIdentifiers
{
  v3 = [MEMORY[0x277CBEB58] setWithCapacity:{-[MAElementCollection count](self, "count")}];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__PGGraphHighlightNodeCollection_localIdentifiers__block_invoke;
  v6[3] = &unk_27888B480;
  v4 = v3;
  v7 = v4;
  [(PGGraphHighlightNodeCollection *)self enumerateUUIDs:v6];

  return v4;
}

void __50__PGGraphHighlightNodeCollection_localIdentifiers__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CD9958] localIdentifierWithUUID:?];
  if ([v2 length])
  {
    [*(a1 + 32) addObject:v2];
  }
}

- (NSSet)uuids
{
  v3 = [MEMORY[0x277CBEB58] setWithCapacity:{-[MAElementCollection count](self, "count")}];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __39__PGGraphHighlightNodeCollection_uuids__block_invoke;
  v6[3] = &unk_27888B480;
  v4 = v3;
  v7 = v4;
  [(PGGraphHighlightNodeCollection *)self enumerateUUIDs:v6];

  return v4;
}

void __39__PGGraphHighlightNodeCollection_uuids__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([v4 length])
  {
    [*(a1 + 32) addObject:v4];
  }
}

- (id)searchConfidenceSceneNodes
{
  v2 = [(PGGraphHighlightNodeCollection *)self momentNodes];
  v3 = [v2 searchConfidenceSceneNodes];

  return v3;
}

- (id)highConfidenceSceneNodes
{
  v2 = [(PGGraphHighlightNodeCollection *)self momentNodes];
  v3 = [v2 highConfidenceSceneNodes];

  return v3;
}

- (id)sceneNodes
{
  v2 = [(PGGraphHighlightNodeCollection *)self momentNodes];
  v3 = [v2 sceneNodes];

  return v3;
}

- (PGGraphHighlightGroupNodeCollection)highlightGroupNodes
{
  v3 = +[PGGraphHighlightNode highlightGroupOfHighlight];
  v4 = [(MANodeCollection *)PGGraphHighlightGroupNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphMomentNodeCollection)momentNodes
{
  v3 = +[PGGraphHighlightNode momentInHighlight];
  v4 = [(MANodeCollection *)PGGraphMomentNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

+ (id)highlightNodeAsCollectionByHighlightUUIDForArrayOfHighlightUUIDs:(id)a3 inGraph:(id)a4
{
  v4 = [PGGraphHighlightNodeCollection highlightNodesForArrayOfUUIDs:a3 inGraph:a4];
  v5 = [v4 highlightNodeAsCollectionByHighlightUUID];

  return v5;
}

+ (id)highlightNodeAsCollectionByHighlightUUIDForHighlightUUIDs:(id)a3 inGraph:(id)a4
{
  v4 = [PGGraphHighlightNodeCollection highlightNodesForUUIDs:a3 inGraph:a4];
  v5 = [v4 highlightNodeAsCollectionByHighlightUUID];

  return v5;
}

+ (id)dayHighlightNodesInGraph:(id)a3
{
  v4 = a3;
  v5 = +[PGGraphHighlightNode filter];
  v6 = [a1 nodesMatchingFilter:v5 inGraph:v4];

  return v6;
}

+ (id)highlightNodeForUUID:(id)a3 inGraph:(id)a4
{
  v6 = a4;
  v7 = [PGGraphHighlightNode filterWithUUID:a3];
  v8 = [a1 nodesMatchingFilter:v7 inGraph:v6];

  return v8;
}

+ (id)highlightNodesForArrayOfUUIDs:(id)a3 inGraph:(id)a4
{
  v6 = a4;
  v7 = [PGGraphHighlightNode filterWithUUIDs:a3];
  v8 = [a1 nodesMatchingFilter:v7 inGraph:v6];

  return v8;
}

+ (id)highlightNodesForUUIDs:(id)a3 inGraph:(id)a4
{
  v6 = a4;
  v7 = [PGGraphHighlightNode filterWithUUIDs:a3];
  v8 = [a1 nodesMatchingFilter:v7 inGraph:v6];

  return v8;
}

@end