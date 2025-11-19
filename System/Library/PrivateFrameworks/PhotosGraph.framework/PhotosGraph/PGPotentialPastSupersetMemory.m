@interface PGPotentialPastSupersetMemory
- (PGPotentialPastSupersetMemory)initWithSupersetLocationNode:(id)a3 supersetDateInterval:(id)a4 interestingMomentNodes:(id)a5 momentNodes:(id)a6;
- (id)memoryFeatureNodesInGraph:(id)a3;
@end

@implementation PGPotentialPastSupersetMemory

- (id)memoryFeatureNodesInGraph:(id)a3
{
  v4 = MEMORY[0x277D22BD0];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = [(PGGraphLocationNode *)self->_supersetLocationNode label];
  if (([v7 isEqualToString:@"City"] & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"State") & 1) != 0 || objc_msgSend(v7, "isEqualToString:", @"Country"))
  {
    [v6 addIdentifier:{-[MANode identifier](self->_supersetLocationNode, "identifier")}];
  }

  v8 = [(PGGraphMomentNodeCollection *)self->_interestingMomentNodes frequentLocationNodes];
  v9 = [v8 elementIdentifiers];
  [v6 unionWithIdentifierSet:v9];

  v10 = [(MAElementCollection *)[PGGraphFeatureNodeCollection alloc] initWithGraph:v5 elementIdentifiers:v6];

  return v10;
}

- (PGPotentialPastSupersetMemory)initWithSupersetLocationNode:(id)a3 supersetDateInterval:(id)a4 interestingMomentNodes:(id)a5 momentNodes:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = [a6 set];
  v17.receiver = self;
  v17.super_class = PGPotentialPastSupersetMemory;
  v15 = [(PGPotentialMemory *)&v17 initWithCategory:301 subcategory:211 momentNodes:v14 sourceType:3];

  if (v15)
  {
    objc_storeStrong(&v15->_supersetLocationNode, a3);
    objc_storeStrong(&v15->_supersetDateInterval, a4);
    objc_storeStrong(&v15->_interestingMomentNodes, a5);
  }

  return v15;
}

@end