@interface REMLExplanation
+ (id)explanationForCondition:(id)condition;
+ (id)explanationForFeature:(id)feature mean:(float)mean variance:(float)variance;
+ (id)explanationForFilteringRule:(id)rule;
- (BOOL)_isSystemFeature:(id)feature;
- (BOOL)canCombineExplanationWithExplanation:(id)explanation;
- (id)_formattedFeatureListFromFeatures:(id)features style:(unint64_t)style;
- (int64_t)rankExplanationToExplanation:(id)explanation;
@end

@implementation REMLExplanation

+ (id)explanationForCondition:(id)condition
{
  conditionCopy = condition;
  if (REMLExplanationsEnabled())
  {
    v4 = [[_REMLConditionExplanation alloc] initWithCondition:conditionCopy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)explanationForFeature:(id)feature mean:(float)mean variance:(float)variance
{
  featureCopy = feature;
  if (REMLExplanationsEnabled())
  {
    v8 = [_REMLFeatureExplanation alloc];
    *&v9 = mean;
    *&v10 = variance;
    v11 = [(_REMLFeatureExplanation *)v8 initWithFeature:featureCopy mean:v9 variance:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)explanationForFilteringRule:(id)rule
{
  ruleCopy = rule;
  if (REMLExplanationsEnabled())
  {
    v4 = [[_REMLRuleExplanation alloc] initWithRule:ruleCopy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_isSystemFeature:(id)feature
{
  featureCopy = feature;
  v4 = +[REFeature systemFeatureNames];
  name = [featureCopy name];

  LOBYTE(featureCopy) = [v4 containsObject:name];
  return featureCopy;
}

- (id)_formattedFeatureListFromFeatures:(id)features style:(unint64_t)style
{
  featuresCopy = features;
  if ([featuresCopy count])
  {
    if ([featuresCopy count] == 1)
    {
      firstObject = [featuresCopy firstObject];
      name = [firstObject name];
    }

    else
    {
      v8 = @", and ";
      if (style != 1)
      {
        v8 = 0;
      }

      if (style)
      {
        v9 = v8;
      }

      else
      {
        v9 = @", ";
      }

      string = [MEMORY[0x277CCAB68] string];
      v13 = MEMORY[0x277D85DD0];
      v14 = 3221225472;
      v15 = __59__REMLExplanation__formattedFeatureListFromFeatures_style___block_invoke;
      v16 = &unk_2785FDDE0;
      v17 = featuresCopy;
      v18 = string;
      v19 = v9;
      v20 = @", ";
      v11 = string;
      [v17 enumerateObjectsUsingBlock:&v13];
      name = [v11 copy];
    }
  }

  else
  {
    name = &stru_283B97458;
  }

  return name;
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

- (BOOL)canCombineExplanationWithExplanation:(id)explanation
{
  explanationCopy = explanation;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(REMLExplanation *)self _canCombineWithSimilarExplanation:explanationCopy];

  return v5;
}

- (int64_t)rankExplanationToExplanation:(id)explanation
{
  explanationCopy = explanation;
  v5 = objc_opt_class();
  if ([v5 isEqual:objc_opt_class()])
  {
    v6 = [(REMLExplanation *)self _rankExplanationToSimilarExplanation:explanationCopy];
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