@interface PGUpNextHighlightBasedMatchingInfo
+ (id)matchingInfosWithHighlightNodes:(id)a3;
- (NSString)debugInfo;
- (PGUpNextHighlightBasedMatchingInfo)initWithHighlightNodeAsCollection:(id)a3;
- (PGUpNextHighlightBasedMatchingInfo)initWithHighlightNodeAsCollection:(id)a3 momentNodes:(id)a4;
- (unint64_t)nodeIdentifier;
@end

@implementation PGUpNextHighlightBasedMatchingInfo

- (NSString)debugInfo
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(PGGraphHighlightNodeCollection *)self->_highlightNodeAsCollection uuids];
  v4 = [v3 anyObject];
  v5 = [v2 stringWithFormat:@"Highlight uuid %@", v4];

  return v5;
}

- (unint64_t)nodeIdentifier
{
  v2 = [(MAElementCollection *)self->_highlightNodeAsCollection elementIdentifiers];
  v3 = [v2 firstElement];

  return v3;
}

- (PGUpNextHighlightBasedMatchingInfo)initWithHighlightNodeAsCollection:(id)a3 momentNodes:(id)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = PGUpNextHighlightBasedMatchingInfo;
  v8 = [(PGUpNextMomentCollectionBasedMatchingInfo *)&v11 initWithMomentNodes:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_highlightNodeAsCollection, a3);
  }

  return v9;
}

- (PGUpNextHighlightBasedMatchingInfo)initWithHighlightNodeAsCollection:(id)a3
{
  v5 = a3;
  v6 = [v5 momentNodes];
  v9.receiver = self;
  v9.super_class = PGUpNextHighlightBasedMatchingInfo;
  v7 = [(PGUpNextMomentCollectionBasedMatchingInfo *)&v9 initWithMomentNodes:v6];

  if (v7)
  {
    objc_storeStrong(&v7->_highlightNodeAsCollection, a3);
  }

  return v7;
}

+ (id)matchingInfosWithHighlightNodes:(id)a3
{
  v3 = MEMORY[0x277CBEB18];
  v4 = a3;
  v5 = [[v3 alloc] initWithCapacity:{objc_msgSend(v4, "count")}];
  v6 = MEMORY[0x277D22BF8];
  v7 = +[PGGraphHighlightNode momentInHighlight];
  v8 = objc_opt_self();
  v9 = [v6 adjacencyWithSources:v4 relation:v7 targetsClass:v8];

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