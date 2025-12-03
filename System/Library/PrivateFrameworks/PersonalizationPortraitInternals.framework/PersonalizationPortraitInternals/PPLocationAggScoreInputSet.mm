@interface PPLocationAggScoreInputSet
- (id)nameForArrayScoreIndex:(unint64_t)index;
- (id)nameForObjectScoreIndex:(unint64_t)index;
- (id)nameForScalarScoreIndex:(unint64_t)index;
@end

@implementation PPLocationAggScoreInputSet

- (id)nameForObjectScoreIndex:(unint64_t)index
{
  if (index + 1 < 0xD)
  {
    return off_2789794D0[index + 1];
  }

  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PPLocationAggScoreInputMethods.h" lineNumber:164 description:{@"Value %tu forPPLocationAggScoreInputObject out of range", index}];

  __break(1u);
  return result;
}

- (id)nameForArrayScoreIndex:(unint64_t)index
{
  if (index == -1)
  {
    return @"PPLocationAggScoreInputArrayUndefined";
  }

  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PPLocationAggScoreInputMethods.h" lineNumber:103 description:{@"Value %tu forPPLocationAggScoreInputArray out of range", index}];

  __break(1u);
  return result;
}

- (id)nameForScalarScoreIndex:(unint64_t)index
{
  if (index + 1 < 0x1A)
  {
    return off_278979400[index + 1];
  }

  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PPLocationAggScoreInputMethods.h" lineNumber:66 description:{@"Value %tu forPPLocationAggScoreInputScalar out of range", index}];

  __break(1u);
  return result;
}

@end