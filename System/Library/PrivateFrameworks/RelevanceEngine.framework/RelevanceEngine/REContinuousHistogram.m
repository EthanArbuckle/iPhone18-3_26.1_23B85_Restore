@interface REContinuousHistogram
@end

@implementation REContinuousHistogram

void __39___REContinuousHistogram_copyWithZone___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(*(a1 + 32) + 24);
  v5 = a2;
  v6 = [a3 copy];
  [v4 setObject:v6 forKey:v5];
}

void __30___REContinuousHistogram_mean__block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  if (REFeatureValueTypeForTaggedPointer(a2) == 1)
  {
    v7 = REIntegerValueForTaggedPointer(a2);
    v8 = *(*(a1 + 32) + 8);
    v9 = *(v8 + 24) + (v7 * a3);
  }

  else
  {
    v10 = REDoubleValueForTaggedPointer(a2, v6);
    v8 = *(*(a1 + 32) + 8);
    v9 = *(v8 + 24) + v10 * a3;
  }

  *(v8 + 24) = v9;
  *(*(*(a1 + 40) + 8) + 24) += a3;
}

double __43___REContinuousHistogram_standardDeviation__block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  if (REFeatureValueTypeForTaggedPointer(a2) == 1)
  {
    v7 = REIntegerValueForTaggedPointer(a2);
  }

  else
  {
    v7 = REDoubleValueForTaggedPointer(a2, v6);
  }

  v8 = v7 - *(a1 + 48);
  v9 = *(*(a1 + 32) + 8);
  result = *(v9 + 24) + ((v8 * v8) * a3);
  *(v9 + 24) = result;
  *(*(*(a1 + 40) + 8) + 24) += a3;
  return result;
}

void __73___REContinuousHistogram__enumerateValuesBetweenMinValue_maxValue_block___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(*(a1 + 32) + 24) objectForKey:a2];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __73___REContinuousHistogram__enumerateValuesBetweenMinValue_maxValue_block___block_invoke_2;
  v5[3] = &unk_2785FAC48;
  v8 = *(a1 + 48);
  v6 = v3;
  v7 = *(a1 + 40);
  v4 = v3;
  [v4 enumerateFeatureValuesUsingBlock:v5];
}

uint64_t __73___REContinuousHistogram__enumerateValuesBetweenMinValue_maxValue_block___block_invoke_2(uint64_t a1, void *a2)
{
  result = RECompareFeatureValues(*(a1 + 48), a2);
  if (result != 1)
  {
    result = RECompareFeatureValues(a2, *(a1 + 56));
    if (result != 1)
    {
      [*(a1 + 32) countForFeatureValue:a2];
      v5 = *(*(a1 + 40) + 16);

      return v5();
    }
  }

  return result;
}

void __52___REContinuousHistogram_enumerateValuesUsingBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52___REContinuousHistogram_enumerateValuesUsingBlock___block_invoke_2;
  v8[3] = &unk_2785FAC98;
  v9 = v6;
  v10 = *(a1 + 32);
  v11 = a4;
  v7 = v6;
  [v7 enumerateFeatureValuesUsingBlock:v8];
}

uint64_t __52___REContinuousHistogram_enumerateValuesUsingBlock___block_invoke_2(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  [*(a1 + 32) countForFeatureValue:a2];
  result = (*(*(a1 + 40) + 16))();
  if (*a3 == 1)
  {
    **(a1 + 48) = 1;
  }

  return result;
}

@end