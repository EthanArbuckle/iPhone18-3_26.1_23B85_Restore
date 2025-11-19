@interface PPNamedEntityAggScoreInputSet
- (id)nameForArrayScoreIndex:(unint64_t)a3;
- (id)nameForObjectScoreIndex:(unint64_t)a3;
- (id)nameForScalarScoreIndex:(unint64_t)a3;
@end

@implementation PPNamedEntityAggScoreInputSet

- (id)nameForObjectScoreIndex:(unint64_t)a3
{
  if (a3 + 1 < 0xE)
  {
    return off_278973C40[a3 + 1];
  }

  v7 = [MEMORY[0x277CCA890] currentHandler];
  [v7 handleFailureInMethod:a2 object:self file:@"PPNamedEntityAggScoreInputMethods.h" lineNumber:166 description:{@"Value %tu forPPNamedEntityAggScoreInputObject out of range", a3}];

  __break(1u);
  return result;
}

- (id)nameForArrayScoreIndex:(unint64_t)a3
{
  if (a3 == -1)
  {
    return @"PPNamedEntityAggScoreInputArrayUndefined";
  }

  v7 = [MEMORY[0x277CCA890] currentHandler];
  [v7 handleFailureInMethod:a2 object:self file:@"PPNamedEntityAggScoreInputMethods.h" lineNumber:103 description:{@"Value %tu forPPNamedEntityAggScoreInputArray out of range", a3}];

  __break(1u);
  return result;
}

- (id)nameForScalarScoreIndex:(unint64_t)a3
{
  if (a3 + 1 < 0x1A)
  {
    return off_278973B70[a3 + 1];
  }

  v7 = [MEMORY[0x277CCA890] currentHandler];
  [v7 handleFailureInMethod:a2 object:self file:@"PPNamedEntityAggScoreInputMethods.h" lineNumber:66 description:{@"Value %tu forPPNamedEntityAggScoreInputScalar out of range", a3}];

  __break(1u);
  return result;
}

@end