@interface PGPotentialEarlyMomentsWithPeopleMemory
- (PGPotentialEarlyMomentsWithPeopleMemory)initWithMomentNodes:(id)a3 personNodes:(id)a4;
- (id)memoryFeatureNodesInGraph:(id)a3;
@end

@implementation PGPotentialEarlyMomentsWithPeopleMemory

- (id)memoryFeatureNodesInGraph:(id)a3
{
  v4 = a3;
  v5 = [(MAElementCollection *)[PGGraphPersonNodeCollection alloc] initWithSet:self->_personNodes graph:v4];

  v6 = [(PGGraphPersonNodeCollection *)v5 featureNodeCollection];

  return v6;
}

- (PGPotentialEarlyMomentsWithPeopleMemory)initWithMomentNodes:(id)a3 personNodes:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = PGPotentialEarlyMomentsWithPeopleMemory;
  v8 = [(PGPotentialMemory *)&v11 initWithCategory:219 subcategory:0 momentNodes:a3 sourceType:2];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_personNodes, a4);
  }

  return v9;
}

@end