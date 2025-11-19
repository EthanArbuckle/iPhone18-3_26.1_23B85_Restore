@interface PPCombinedScoreInputSet
- (id)nameForArrayScoreIndex:(unint64_t)a3;
- (id)nameForObjectScoreIndex:(unint64_t)a3;
- (id)nameForScalarScoreIndex:(unint64_t)a3;
@end

@implementation PPCombinedScoreInputSet

- (id)nameForObjectScoreIndex:(unint64_t)a3
{
  if (a3 == -1)
  {
    return @"PPCombinedScoreInputObjectUndefined";
  }

  v7 = [MEMORY[0x277CCA890] currentHandler];
  [v7 handleFailureInMethod:a2 object:self file:@"PPCombinedScoreInputMethods.h" lineNumber:298 description:{@"Value %tu forPPCombinedScoreInputObject out of range", a3}];

  __break(1u);
  return result;
}

- (id)nameForArrayScoreIndex:(unint64_t)a3
{
  if (a3 == -1)
  {
    return @"PPCombinedScoreInputArrayUndefined";
  }

  v7 = [MEMORY[0x277CCA890] currentHandler];
  [v7 handleFailureInMethod:a2 object:self file:@"PPCombinedScoreInputMethods.h" lineNumber:261 description:{@"Value %tu forPPCombinedScoreInputArray out of range", a3}];

  __break(1u);
  return result;
}

- (id)nameForScalarScoreIndex:(unint64_t)a3
{
  if (a3 + 1 < 0x69)
  {
    return off_278978648[a3 + 1];
  }

  v7 = [MEMORY[0x277CCA890] currentHandler];
  [v7 handleFailureInMethod:a2 object:self file:@"PPCombinedScoreInputMethods.h" lineNumber:224 description:{@"Value %tu forPPCombinedScoreInputScalar out of range", a3}];

  __break(1u);
  return result;
}

@end