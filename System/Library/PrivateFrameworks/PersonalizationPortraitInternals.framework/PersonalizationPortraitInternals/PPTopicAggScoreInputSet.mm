@interface PPTopicAggScoreInputSet
- (id)nameForArrayScoreIndex:(unint64_t)index;
- (id)nameForObjectScoreIndex:(unint64_t)index;
- (id)nameForScalarScoreIndex:(unint64_t)index;
@end

@implementation PPTopicAggScoreInputSet

- (id)nameForObjectScoreIndex:(unint64_t)index
{
  if (index + 1 < 0xD)
  {
    return off_278971B80[index + 1];
  }

  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PPTopicAggScoreInputMethods.h" lineNumber:162 description:{@"Value %tu forPPTopicAggScoreInputObject out of range", index}];

  __break(1u);
  return result;
}

- (id)nameForArrayScoreIndex:(unint64_t)index
{
  if (index == -1)
  {
    return @"PPTopicAggScoreInputArrayUndefined";
  }

  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PPTopicAggScoreInputMethods.h" lineNumber:101 description:{@"Value %tu forPPTopicAggScoreInputArray out of range", index}];

  __break(1u);
  return result;
}

- (id)nameForScalarScoreIndex:(unint64_t)index
{
  if (index + 1 < 0x19)
  {
    return off_278971AB8[index + 1];
  }

  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PPTopicAggScoreInputMethods.h" lineNumber:64 description:{@"Value %tu forPPTopicAggScoreInputScalar out of range", index}];

  __break(1u);
  return result;
}

@end