@interface PGUpNextHighlightBasedMatchingInfo
+ (id)matchingInfosWithHighlightNodes:(id)nodes;
- (NSString)debugInfo;
- (PGUpNextHighlightBasedMatchingInfo)initWithHighlightNodeAsCollection:(id)collection;
- (PGUpNextHighlightBasedMatchingInfo)initWithHighlightNodeAsCollection:(id)collection momentNodes:(id)nodes;
- (unint64_t)nodeIdentifier;
@end

@implementation PGUpNextHighlightBasedMatchingInfo

- (NSString)debugInfo
{
  v2 = MEMORY[0x277CCACA8];
  uuids = [(PGGraphHighlightNodeCollection *)self->_highlightNodeAsCollection uuids];
  anyObject = [uuids anyObject];
  v5 = [v2 stringWithFormat:@"Highlight uuid %@", anyObject];

  return v5;
}

- (unint64_t)nodeIdentifier
{
  elementIdentifiers = [(MAElementCollection *)self->_highlightNodeAsCollection elementIdentifiers];
  firstElement = [elementIdentifiers firstElement];

  return firstElement;
}

- (PGUpNextHighlightBasedMatchingInfo)initWithHighlightNodeAsCollection:(id)collection momentNodes:(id)nodes
{
  collectionCopy = collection;
  v11.receiver = self;
  v11.super_class = PGUpNextHighlightBasedMatchingInfo;
  v8 = [(PGUpNextMomentCollectionBasedMatchingInfo *)&v11 initWithMomentNodes:nodes];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_highlightNodeAsCollection, collection);
  }

  return v9;
}

- (PGUpNextHighlightBasedMatchingInfo)initWithHighlightNodeAsCollection:(id)collection
{
  collectionCopy = collection;
  momentNodes = [collectionCopy momentNodes];
  v9.receiver = self;
  v9.super_class = PGUpNextHighlightBasedMatchingInfo;
  v7 = [(PGUpNextMomentCollectionBasedMatchingInfo *)&v9 initWithMomentNodes:momentNodes];

  if (v7)
  {
    objc_storeStrong(&v7->_highlightNodeAsCollection, collection);
  }

  return v7;
}

+ (id)matchingInfosWithHighlightNodes:(id)nodes
{
  v3 = MEMORY[0x277CBEB18];
  nodesCopy = nodes;
  v5 = [[v3 alloc] initWithCapacity:{objc_msgSend(nodesCopy, "count")}];
  v6 = MEMORY[0x277D22BF8];
  v7 = +[PGGraphHighlightNode momentInHighlight];
  v8 = objc_opt_self();
  v9 = [v6 adjacencyWithSources:nodesCopy relation:v7 targetsClass:v8];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __70__PGUpNextHighlightBasedMatchingInfo_matchingInfosWithHighlightNodes___block_invoke;
  v12[3] = &unk_278889940;
  v10 = v5;
  v13 = v10;
  [v9 enumerateTargetsBySourceWithBlock:v12];

  return v10;
}

void __70__PGUpNextHighlightBasedMatchingInfo_matchingInfosWithHighlightNodes___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [[PGUpNextHighlightBasedMatchingInfo alloc] initWithHighlightNodeAsCollection:v6 momentNodes:v5];

  [*(a1 + 32) addObject:v7];
}

@end