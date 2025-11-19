@interface REDependentRelevanceProvider
+ (id)_dependentConditionWithRelevanceProvider:(id)a3 invertsRelevance:(BOOL)a4;
@end

@implementation REDependentRelevanceProvider

+ (id)_dependentConditionWithRelevanceProvider:(id)a3 invertsRelevance:(BOOL)a4
{
  v5 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __90__REDependentRelevanceProvider__dependentConditionWithRelevanceProvider_invertsRelevance___block_invoke;
  v9[3] = &unk_2785FC760;
  v10 = v5;
  v11 = a4;
  v6 = v5;
  v7 = [RERelevanceCondition conditionWithBlock:v9];

  return v7;
}

float __90__REDependentRelevanceProvider__dependentConditionWithRelevanceProvider_invertsRelevance___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = 0.0;
  if ([v3 containsRelevanceProvider:*(a1 + 32)])
  {
    v5 = [v3 featuresForRelevanceProvider:*(a1 + 32)];
    v6 = [v3 relevancesForRelevanceProvider:*(a1 + 32)];
    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v26 = 0;
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __90__REDependentRelevanceProvider__dependentConditionWithRelevanceProvider_invertsRelevance___block_invoke_2;
    v20 = &unk_2785FC738;
    v22 = &v23;
    v7 = v6;
    v21 = v7;
    [v5 enumerateObjectsUsingBlock:&v17];
    v8 = v24[3];
    if (!v8)
    {
      v8 = [v7 firstFeatureValue];
      v24[3] = v8;
    }

    v9 = REFeatureValueTypeForTaggedPointer(v8);
    LOBYTE(v11) = 0;
    if (v9 <= 1)
    {
      if (v9)
      {
        if (v9 == 1)
        {
          LOBYTE(v11) = REIntegerValueForTaggedPointer(v24[3]) == 0;
        }
      }

      else
      {
        v11 = REBooleanValueForTaggedPointer(v24[3]) ^ 1;
      }

      goto LABEL_16;
    }

    if (v9 == 2)
    {
      v14 = REDoubleValueForTaggedPointer(v24[3], v10);
      LOBYTE(v11) = RERelevanceEqualToRelevance(v14, 0.0);
    }

    else
    {
      if (v9 == 3)
      {
        v12 = REStringValueForTaggedPointer(v24[3]);
        v13 = [v12 length];
      }

      else
      {
        if (v9 != 4)
        {
          goto LABEL_16;
        }

        v12 = RESetValueForTaggedPointer(v24[3]);
        v13 = [v12 count];
      }

      LOBYTE(v11) = v13 == 0;
    }

LABEL_16:
    v15 = v11 ^ *(a1 + 40);

    _Block_object_dispose(&v23, 8);
    if (v15)
    {
      v4 = 0.0;
    }

    else
    {
      v4 = 1.0;
    }
  }

  return v4;
}

uint64_t __90__REDependentRelevanceProvider__dependentConditionWithRelevanceProvider_invertsRelevance___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 featureType];
  if ((result | 2) == 2)
  {
    result = [*(a1 + 32) featureValueAtIndex:a3];
    *(*(*(a1 + 40) + 8) + 24) = result;
    *a4 = 1;
  }

  return result;
}

@end