@interface PGPotentialEarlyMomentsWithPeopleMemory
- (PGPotentialEarlyMomentsWithPeopleMemory)initWithMomentNodes:(id)nodes personNodes:(id)personNodes;
- (id)memoryFeatureNodesInGraph:(id)graph;
@end

@implementation PGPotentialEarlyMomentsWithPeopleMemory

- (id)memoryFeatureNodesInGraph:(id)graph
{
  graphCopy = graph;
  v5 = [(MAElementCollection *)[PGGraphPersonNodeCollection alloc] initWithSet:self->_personNodes graph:graphCopy];

  featureNodeCollection = [(PGGraphPersonNodeCollection *)v5 featureNodeCollection];

  return featureNodeCollection;
}

- (PGPotentialEarlyMomentsWithPeopleMemory)initWithMomentNodes:(id)nodes personNodes:(id)personNodes
{
  personNodesCopy = personNodes;
  v11.receiver = self;
  v11.super_class = PGPotentialEarlyMomentsWithPeopleMemory;
  v8 = [(PGPotentialMemory *)&v11 initWithCategory:219 subcategory:0 momentNodes:nodes sourceType:2];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_personNodes, personNodes);
  }

  return v9;
}

@end