@interface PPNamedEntityAggScoreInputSet
- (id)nameForArrayScoreIndex:(unint64_t)index;
- (id)nameForObjectScoreIndex:(unint64_t)index;
- (id)nameForScalarScoreIndex:(unint64_t)index;
@end

@implementation PPNamedEntityAggScoreInputSet

- (id)nameForObjectScoreIndex:(unint64_t)index
{
  if (index + 1 < 0xE)
  {
    return off_278973C40[index + 1];
  }

  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PPNamedEntityAggScoreInputMethods.h" lineNumber:166 description:{@"Value %tu forPPNamedEntityAggScoreInputObject out of range", index}];

  __break(1u);
  return result;
}

- (id)nameForArrayScoreIndex:(unint64_t)index
{
  if (index == -1)
  {
    return @"PPNamedEntityAggScoreInputArrayUndefined";
  }

  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PPNamedEntityAggScoreInputMethods.h" lineNumber:103 description:{@"Value %tu forPPNamedEntityAggScoreInputArray out of range", index}];

  __break(1u);
  return result;
}

- (id)nameForScalarScoreIndex:(unint64_t)index
{
  if (index + 1 < 0x1A)
  {
    return off_278973B70[index + 1];
  }

  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PPNamedEntityAggScoreInputMethods.h" lineNumber:66 description:{@"Value %tu forPPNamedEntityAggScoreInputScalar out of range", index}];

  __break(1u);
  return result;
}

@end