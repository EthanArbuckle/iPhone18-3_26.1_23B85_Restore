@interface PPLocationAggScoreInputSet
- (id)nameForArrayScoreIndex:(unint64_t)a3;
- (id)nameForObjectScoreIndex:(unint64_t)a3;
- (id)nameForScalarScoreIndex:(unint64_t)a3;
@end

@implementation PPLocationAggScoreInputSet

- (id)nameForObjectScoreIndex:(unint64_t)a3
{
  if (a3 + 1 < 0xD)
  {
    return off_2789794D0[a3 + 1];
  }

  v7 = [MEMORY[0x277CCA890] currentHandler];
  [v7 handleFailureInMethod:a2 object:self file:@"PPLocationAggScoreInputMethods.h" lineNumber:164 description:{@"Value %tu forPPLocationAggScoreInputObject out of range", a3}];

  __break(1u);
  return result;
}

- (id)nameForArrayScoreIndex:(unint64_t)a3
{
  if (a3 == -1)
  {
    return @"PPLocationAggScoreInputArrayUndefined";
  }

  v7 = [MEMORY[0x277CCA890] currentHandler];
  [v7 handleFailureInMethod:a2 object:self file:@"PPLocationAggScoreInputMethods.h" lineNumber:103 description:{@"Value %tu forPPLocationAggScoreInputArray out of range", a3}];

  __break(1u);
  return result;
}

- (id)nameForScalarScoreIndex:(unint64_t)a3
{
  if (a3 + 1 < 0x1A)
  {
    return off_278979400[a3 + 1];
  }

  v7 = [MEMORY[0x277CCA890] currentHandler];
  [v7 handleFailureInMethod:a2 object:self file:@"PPLocationAggScoreInputMethods.h" lineNumber:66 description:{@"Value %tu forPPLocationAggScoreInputScalar out of range", a3}];

  __break(1u);
  return result;
}

@end