@interface PGPotentialYearSummaryMemory
- (PGPotentialYearSummaryMemory)initWithMomentNodes:(id)a3;
- (id)memoryFeatureNodesInGraph:(id)a3;
@end

@implementation PGPotentialYearSummaryMemory

- (id)memoryFeatureNodesInGraph:(id)a3
{
  v3 = [PGGraphYearNodeCollection yearNodesForYear:self->_year inGraph:a3];
  v4 = [v3 featureNodeCollection];

  return v4;
}

- (PGPotentialYearSummaryMemory)initWithMomentNodes:(id)a3
{
  v4.receiver = self;
  v4.super_class = PGPotentialYearSummaryMemory;
  return [(PGPotentialMemory *)&v4 initWithCategory:201 subcategory:0 momentNodes:a3 sourceType:2];
}

@end