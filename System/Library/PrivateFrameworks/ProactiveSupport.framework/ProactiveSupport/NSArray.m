@interface NSArray
@end

@implementation NSArray

id __49__NSArray__PASAdditions___pas_proxyArrayReversed__block_invoke(uint64_t a1, unint64_t a2)
{
  v4 = a1 + 32;
  v2 = *(a1 + 32);
  v3 = *(v4 + 8);
  if (v3 > a2)
  {
    v5 = ~a2;
  }

  else
  {
    v5 = 0;
  }

  v6 = [v2 objectAtIndexedSubscript:v3 + v5];

  return v6;
}

id __56__NSArray__PASAdditions___pas_proxyArrayRevivingStrings__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 conformsToProtocol:&unk_1F1B32D20] & 1) == 0)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"NSArray+_PASAdditions.m" lineNumber:445 description:{@"Invalid parameter not satisfying: %@", @"[distilledString conformsToProtocol:@protocol(_PASDistilledString)]"}];
  }

  v4 = [v3 _pas_revivedString];

  return v4;
}

id __58__NSArray__PASAdditions___pas_proxyArrayDistillingStrings__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"NSArray+_PASAdditions.m" lineNumber:437 description:{@"Invalid parameter not satisfying: %@", @"[string isKindOfClass:[NSString class]]"}];
  }

  v4 = [v3 _pas_distilledString];

  return v4;
}

id __57__NSArray__PASAdditions___pas_proxyArrayWithRepetitions___block_invoke(void *a1, unint64_t a2)
{
  v4 = a1[5];
  v5 = a1[6];
  v6 = a1[4];
  if (v5 * v4 <= a2)
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = a2 % v4;
  }

  v8 = [v6 objectAtIndexedSubscript:{v7, v2}];

  return v8;
}

id __58__NSArray__PASAdditions___pas_proxyArrayByAppendingArray___block_invoke(void *a1, unint64_t a2)
{
  v2 = a1[6];
  v3 = a2 - v2;
  if (a2 >= v2)
  {
    v4 = a1[5];
  }

  else
  {
    v4 = a1[4];
    v3 = a2;
  }

  v5 = [v4 objectAtIndexedSubscript:v3];

  return v5;
}

id __53__NSArray__PASAdditions___pas_proxyArrayWithMapping___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) objectAtIndexedSubscript:a2];
  v4 = (*(v2 + 16))(v2, v3);

  return v4;
}

id __62__NSArray__PASAdditions___pas_proxyArrayWithObjectsAtIndexes___block_invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 48) <= a2)
  {
    v3 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v3 = *([*(a1 + 32) bytes] + 8 * a2);
  }

  v4 = [*(a1 + 40) objectAtIndexedSubscript:v3];

  return v4;
}

id __54__NSArray__PASAdditions___pas_proxySubarrayWithRange___block_invoke(void *a1, unint64_t a2)
{
  if (a1[6] <= a2)
  {
    v3 = a1[4];
    v2 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v2 = a1[5] + a2;
    v3 = a1[4];
  }

  v4 = [v3 objectAtIndexedSubscript:v2];

  return v4;
}

id __61__NSArray__PASAdditions___pas_proxyComponentsJoinedByString___block_invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 48) <= a2)
  {
    __assert_rtn("[NSArray(_PASAdditions) _pas_proxyComponentsJoinedByString:]_block_invoke", "NSArray+_PASAdditions.m", 228, "index < countWithSeparators");
  }

  if (a2)
  {
    v2 = *(a1 + 40);
  }

  else
  {
    v2 = [*(a1 + 32) objectAtIndexedSubscript:a2 >> 1];
  }

  return v2;
}

id __64__NSArray__PASAdditions___pas_proxyArrayWithObject_repetitions___block_invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 40) <= a2)
  {
    result = [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695DA20] format:{@"Index %tu out of range", a2, 0, v2, v3}];
    __break(1u);
  }

  else
  {
    v4 = *(a1 + 32);

    return v4;
  }

  return result;
}

@end