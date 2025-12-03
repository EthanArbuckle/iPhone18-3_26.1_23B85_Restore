@interface PGPotentialPastSupersetMemory
- (PGPotentialPastSupersetMemory)initWithSupersetLocationNode:(id)node supersetDateInterval:(id)interval interestingMomentNodes:(id)nodes momentNodes:(id)momentNodes;
- (id)memoryFeatureNodesInGraph:(id)graph;
@end

@implementation PGPotentialPastSupersetMemory

- (id)memoryFeatureNodesInGraph:(id)graph
{
  v4 = MEMORY[0x277D22BD0];
  graphCopy = graph;
  v6 = objc_alloc_init(v4);
  label = [(PGGraphLocationNode *)self->_supersetLocationNode label];
  if (([label isEqualToString:@"City"] & 1) != 0 || (objc_msgSend(label, "isEqualToString:", @"State") & 1) != 0 || objc_msgSend(label, "isEqualToString:", @"Country"))
  {
    [v6 addIdentifier:{-[MANode identifier](self->_supersetLocationNode, "identifier")}];
  }

  frequentLocationNodes = [(PGGraphMomentNodeCollection *)self->_interestingMomentNodes frequentLocationNodes];
  elementIdentifiers = [frequentLocationNodes elementIdentifiers];
  [v6 unionWithIdentifierSet:elementIdentifiers];

  v10 = [(MAElementCollection *)[PGGraphFeatureNodeCollection alloc] initWithGraph:graphCopy elementIdentifiers:v6];

  return v10;
}

- (PGPotentialPastSupersetMemory)initWithSupersetLocationNode:(id)node supersetDateInterval:(id)interval interestingMomentNodes:(id)nodes momentNodes:(id)momentNodes
{
  nodeCopy = node;
  intervalCopy = interval;
  nodesCopy = nodes;
  v14 = [momentNodes set];
  v17.receiver = self;
  v17.super_class = PGPotentialPastSupersetMemory;
  v15 = [(PGPotentialMemory *)&v17 initWithCategory:301 subcategory:211 momentNodes:v14 sourceType:3];

  if (v15)
  {
    objc_storeStrong(&v15->_supersetLocationNode, node);
    objc_storeStrong(&v15->_supersetDateInterval, interval);
    objc_storeStrong(&v15->_interestingMomentNodes, nodes);
  }

  return v15;
}

@end