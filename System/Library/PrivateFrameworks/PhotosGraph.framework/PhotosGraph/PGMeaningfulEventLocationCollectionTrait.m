@interface PGMeaningfulEventLocationCollectionTrait
- (PGMeaningfulEventLocationCollectionTrait)initWithNodes:(id)a3 negativeNodes:(id)a4;
@end

@implementation PGMeaningfulEventLocationCollectionTrait

- (PGMeaningfulEventLocationCollectionTrait)initWithNodes:(id)a3 negativeNodes:(id)a4
{
  v5.receiver = self;
  v5.super_class = PGMeaningfulEventLocationCollectionTrait;
  result = [(PGMeaningfulEventCollectionTrait *)&v5 initWithNodes:a3 negativeNodes:a4];
  if (result)
  {
    result->_useStrictNegativeNodesMatching = 1;
    result->_skipNegativeRequirementForMissingLocation = 0;
  }

  return result;
}

@end