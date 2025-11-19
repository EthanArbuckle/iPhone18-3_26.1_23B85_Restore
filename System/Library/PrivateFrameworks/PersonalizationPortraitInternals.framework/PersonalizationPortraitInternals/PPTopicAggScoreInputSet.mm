@interface PPTopicAggScoreInputSet
- (id)nameForArrayScoreIndex:(unint64_t)a3;
- (id)nameForObjectScoreIndex:(unint64_t)a3;
- (id)nameForScalarScoreIndex:(unint64_t)a3;
@end

@implementation PPTopicAggScoreInputSet

- (id)nameForObjectScoreIndex:(unint64_t)a3
{
  if (a3 + 1 < 0xD)
  {
    return off_278971B80[a3 + 1];
  }

  v7 = [MEMORY[0x277CCA890] currentHandler];
  [v7 handleFailureInMethod:a2 object:self file:@"PPTopicAggScoreInputMethods.h" lineNumber:162 description:{@"Value %tu forPPTopicAggScoreInputObject out of range", a3}];

  __break(1u);
  return result;
}

- (id)nameForArrayScoreIndex:(unint64_t)a3
{
  if (a3 == -1)
  {
    return @"PPTopicAggScoreInputArrayUndefined";
  }

  v7 = [MEMORY[0x277CCA890] currentHandler];
  [v7 handleFailureInMethod:a2 object:self file:@"PPTopicAggScoreInputMethods.h" lineNumber:101 description:{@"Value %tu forPPTopicAggScoreInputArray out of range", a3}];

  __break(1u);
  return result;
}

- (id)nameForScalarScoreIndex:(unint64_t)a3
{
  if (a3 + 1 < 0x19)
  {
    return off_278971AB8[a3 + 1];
  }

  v7 = [MEMORY[0x277CCA890] currentHandler];
  [v7 handleFailureInMethod:a2 object:self file:@"PPTopicAggScoreInputMethods.h" lineNumber:64 description:{@"Value %tu forPPTopicAggScoreInputScalar out of range", a3}];

  __break(1u);
  return result;
}

@end