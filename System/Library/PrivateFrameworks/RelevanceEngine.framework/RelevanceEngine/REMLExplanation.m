@interface REMLExplanation
+ (id)explanationForCondition:(id)a3;
+ (id)explanationForFeature:(id)a3 mean:(float)a4 variance:(float)a5;
+ (id)explanationForFilteringRule:(id)a3;
- (BOOL)_isSystemFeature:(id)a3;
- (BOOL)canCombineExplanationWithExplanation:(id)a3;
- (id)_formattedFeatureListFromFeatures:(id)a3 style:(unint64_t)a4;
- (int64_t)rankExplanationToExplanation:(id)a3;
@end

@implementation REMLExplanation

+ (id)explanationForCondition:(id)a3
{
  v3 = a3;
  if (REMLExplanationsEnabled())
  {
    v4 = [[_REMLConditionExplanation alloc] initWithCondition:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)explanationForFeature:(id)a3 mean:(float)a4 variance:(float)a5
{
  v7 = a3;
  if (REMLExplanationsEnabled())
  {
    v8 = [_REMLFeatureExplanation alloc];
    *&v9 = a4;
    *&v10 = a5;
    v11 = [(_REMLFeatureExplanation *)v8 initWithFeature:v7 mean:v9 variance:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)explanationForFilteringRule:(id)a3
{
  v3 = a3;
  if (REMLExplanationsEnabled())
  {
    v4 = [[_REMLRuleExplanation alloc] initWithRule:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_isSystemFeature:(id)a3
{
  v3 = a3;
  v4 = +[REFeature systemFeatureNames];
  v5 = [v3 name];

  LOBYTE(v3) = [v4 containsObject:v5];
  return v3;
}

- (id)_formattedFeatureListFromFeatures:(id)a3 style:(unint64_t)a4
{
  v5 = a3;
  if ([v5 count])
  {
    if ([v5 count] == 1)
    {
      v6 = [v5 firstObject];
      v7 = [v6 name];
    }

    else
    {
      v8 = @", and ";
      if (a4 != 1)
      {
        v8 = 0;
      }

      if (a4)
      {
        v9 = v8;
      }

      else
      {
        v9 = @", ";
      }

      v10 = [MEMORY[0x277CCAB68] string];
      v13 = MEMORY[0x277D85DD0];
      v14 = 3221225472;
      v15 = __59__REMLExplanation__formattedFeatureListFromFeatures_style___block_invoke;
      v16 = &unk_2785FDDE0;
      v17 = v5;
      v18 = v10;
      v19 = v9;
      v20 = @", ";
      v11 = v10;
      [v17 enumerateObjectsUsingBlock:&v13];
      v7 = [v11 copy];
    }
  }

  else
  {
    v7 = &stru_283B97458;
  }

  return v7;
}

void __59__REMLExplanation__formattedFeatureListFromFeatures_style___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  if ([*(a1 + 32) count] - 1 == a3)
  {
    v5 = 48;
  }

  else
  {
    if (!a3)
    {
      goto LABEL_6;
    }

    v5 = 56;
  }

  [*(a1 + 40) appendString:*(a1 + v5)];
LABEL_6:
  v6 = *(a1 + 40);
  v7 = [v8 name];
  [v6 appendString:v7];
}

- (BOOL)canCombineExplanationWithExplanation:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(REMLExplanation *)self _canCombineWithSimilarExplanation:v4];

  return v5;
}

- (int64_t)rankExplanationToExplanation:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if ([v5 isEqual:objc_opt_class()])
  {
    v6 = [(REMLExplanation *)self _rankExplanationToSimilarExplanation:v4];
  }

  else if ([v5 isSubclassOfClass:objc_opt_class()])
  {
    v6 = 1;
  }

  else
  {
    v6 = -1;
  }

  return v6;
}

@end