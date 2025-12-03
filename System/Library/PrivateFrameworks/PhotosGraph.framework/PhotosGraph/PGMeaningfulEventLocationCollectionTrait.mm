@interface PGMeaningfulEventLocationCollectionTrait
- (PGMeaningfulEventLocationCollectionTrait)initWithNodes:(id)nodes negativeNodes:(id)negativeNodes;
@end

@implementation PGMeaningfulEventLocationCollectionTrait

- (PGMeaningfulEventLocationCollectionTrait)initWithNodes:(id)nodes negativeNodes:(id)negativeNodes
{
  v5.receiver = self;
  v5.super_class = PGMeaningfulEventLocationCollectionTrait;
  result = [(PGMeaningfulEventCollectionTrait *)&v5 initWithNodes:nodes negativeNodes:negativeNodes];
  if (result)
  {
    result->_useStrictNegativeNodesMatching = 1;
    result->_skipNegativeRequirementForMissingLocation = 0;
  }

  return result;
}

@end