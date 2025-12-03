@interface PPCombinedScoreInputSet
- (id)nameForArrayScoreIndex:(unint64_t)index;
- (id)nameForObjectScoreIndex:(unint64_t)index;
- (id)nameForScalarScoreIndex:(unint64_t)index;
@end

@implementation PPCombinedScoreInputSet

- (id)nameForObjectScoreIndex:(unint64_t)index
{
  if (index == -1)
  {
    return @"PPCombinedScoreInputObjectUndefined";
  }

  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PPCombinedScoreInputMethods.h" lineNumber:298 description:{@"Value %tu forPPCombinedScoreInputObject out of range", index}];

  __break(1u);
  return result;
}

- (id)nameForArrayScoreIndex:(unint64_t)index
{
  if (index == -1)
  {
    return @"PPCombinedScoreInputArrayUndefined";
  }

  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PPCombinedScoreInputMethods.h" lineNumber:261 description:{@"Value %tu forPPCombinedScoreInputArray out of range", index}];

  __break(1u);
  return result;
}

- (id)nameForScalarScoreIndex:(unint64_t)index
{
  if (index + 1 < 0x69)
  {
    return off_278978648[index + 1];
  }

  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PPCombinedScoreInputMethods.h" lineNumber:224 description:{@"Value %tu forPPCombinedScoreInputScalar out of range", index}];

  __break(1u);
  return result;
}

@end