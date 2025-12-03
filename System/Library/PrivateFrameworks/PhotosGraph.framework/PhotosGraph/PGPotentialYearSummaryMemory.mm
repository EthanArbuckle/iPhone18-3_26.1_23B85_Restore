@interface PGPotentialYearSummaryMemory
- (PGPotentialYearSummaryMemory)initWithMomentNodes:(id)nodes;
- (id)memoryFeatureNodesInGraph:(id)graph;
@end

@implementation PGPotentialYearSummaryMemory

- (id)memoryFeatureNodesInGraph:(id)graph
{
  v3 = [PGGraphYearNodeCollection yearNodesForYear:self->_year inGraph:graph];
  featureNodeCollection = [v3 featureNodeCollection];

  return featureNodeCollection;
}

- (PGPotentialYearSummaryMemory)initWithMomentNodes:(id)nodes
{
  v4.receiver = self;
  v4.super_class = PGPotentialYearSummaryMemory;
  return [(PGPotentialMemory *)&v4 initWithCategory:201 subcategory:0 momentNodes:nodes sourceType:2];
}

@end