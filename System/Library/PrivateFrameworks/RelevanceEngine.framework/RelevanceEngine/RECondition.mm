@interface RECondition
+ (id)andConditions:(id)conditions;
+ (id)conditionForFeature:(id)feature hasBoolValue:(BOOL)value;
+ (id)conditionForFeature:(id)feature hasIntegerValue:(int64_t)value;
+ (id)conditionForFeature:(id)feature hasValue:(id)value;
+ (id)conditionForFeature:(id)feature relation:(int64_t)relation feature:(id)a5;
+ (id)conditionForFeature:(id)feature relation:(int64_t)relation floatValue:(float)value;
+ (id)conditionForFeature:(id)feature relation:(int64_t)relation integerValue:(int64_t)value;
+ (id)conditionForProbabilityForInteraction:(id)interaction relation:(int64_t)relation feature:(id)feature;
+ (id)conditionForProbabilityForInteraction:(id)interaction relation:(int64_t)relation floatValue:(float)value;
+ (id)conditionHasValueForFeature:(id)feature;
+ (id)notCondition:(id)condition;
+ (id)orConditions:(id)conditions;
@end

@implementation RECondition

+ (id)conditionHasValueForFeature:(id)feature
{
  featureCopy = feature;
  if (!featureCopy)
  {
    RERaiseInternalException(*MEMORY[0x277CBE660], @"Feature must be non-nil", v3, v4, v5, v6, v7, v8, v12);
  }

  v10 = [[_REHasFeatureRuleCondition alloc] initWithFeature:featureCopy contains:1];

  return v10;
}

+ (id)conditionForFeature:(id)feature relation:(int64_t)relation floatValue:(float)value
{
  featureCopy = feature;
  REEnsureFeatureWithType(featureCopy, 2uLL);
  v7 = RECreateDoubleFeatureValueTaggedPointer();
  v8 = [[_REValueRuleCondition alloc] initWithFeature:featureCopy relation:relation value:v7];

  REReleaseFeatureValueTaggedPointer(v7);

  return v8;
}

+ (id)conditionForFeature:(id)feature relation:(int64_t)relation integerValue:(int64_t)value
{
  featureCopy = feature;
  REEnsureFeatureWithType(featureCopy, 2uLL);
  v8 = RECreateIntegerFeatureValueTaggedPointer(value);
  v9 = [[_REValueRuleCondition alloc] initWithFeature:featureCopy relation:relation value:v8];

  REReleaseFeatureValueTaggedPointer(v8);

  return v9;
}

+ (id)conditionForFeature:(id)feature hasValue:(id)value
{
  valueCopy = value;
  featureCopy = feature;
  REEnsureFeatureWithType(featureCopy, 1uLL);
  v7 = [REFeatureValue featureValueWithString:valueCopy];

  v8 = RECreateFeatureValueTaggedPointer(v7);
  v9 = [[_REValueRuleCondition alloc] initWithFeature:featureCopy relation:0 value:v8];

  RERetainFeatureValueTaggedPointer(v8);

  return v9;
}

+ (id)conditionForFeature:(id)feature hasIntegerValue:(int64_t)value
{
  featureCopy = feature;
  REEnsureFeatureWithType(featureCopy, 1uLL);
  v6 = RECreateIntegerFeatureValueTaggedPointer(value);
  v7 = [[_REValueRuleCondition alloc] initWithFeature:featureCopy relation:0 value:v6];

  REReleaseFeatureValueTaggedPointer(v6);

  return v7;
}

+ (id)conditionForFeature:(id)feature hasBoolValue:(BOOL)value
{
  valueCopy = value;
  featureCopy = feature;
  REEnsureFeatureWithType(featureCopy, 0);
  v6 = RECreateBooleanFeatureValueTaggedPointer(valueCopy);
  v7 = [[_REValueRuleCondition alloc] initWithFeature:featureCopy relation:0 value:v6];

  REReleaseFeatureValueTaggedPointer(v6);

  return v7;
}

+ (id)conditionForFeature:(id)feature relation:(int64_t)relation feature:(id)a5
{
  v7 = a5;
  featureCopy = feature;
  REEnsureMatchingFeatureTypes(featureCopy, v7);
  v9 = [[_REFeatureRuleCondition alloc] initWithFeature:featureCopy relation:relation feature:v7];

  return v9;
}

+ (id)conditionForProbabilityForInteraction:(id)interaction relation:(int64_t)relation floatValue:(float)value
{
  interactionCopy = interaction;
  v8 = [_REProbabilityRuleCondition alloc];
  *&v9 = value;
  v10 = [(_REProbabilityRuleCondition *)v8 initWithProbability:interactionCopy relation:relation feature:0 threshold:v9];

  return v10;
}

+ (id)conditionForProbabilityForInteraction:(id)interaction relation:(int64_t)relation feature:(id)feature
{
  featureCopy = feature;
  interactionCopy = interaction;
  REEnsureFeatureWithType(featureCopy, 2uLL);
  v9 = [[_REProbabilityRuleCondition alloc] initWithProbability:interactionCopy relation:relation feature:featureCopy threshold:0.0];

  return v9;
}

+ (id)andConditions:(id)conditions
{
  conditionsCopy = conditions;
  v4 = [_REAggregateRuleCondition alloc];
  if (conditionsCopy)
  {
    v5 = conditionsCopy;
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  v6 = [(_REAggregateRuleCondition *)v4 initWithConditions:v5 type:0];

  return v6;
}

+ (id)orConditions:(id)conditions
{
  conditionsCopy = conditions;
  v4 = [_REAggregateRuleCondition alloc];
  if (conditionsCopy)
  {
    v5 = conditionsCopy;
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  v6 = [(_REAggregateRuleCondition *)v4 initWithConditions:v5 type:1];

  return v6;
}

+ (id)notCondition:(id)condition
{
  conditionCopy = condition;
  if (!conditionCopy)
  {
    RERaiseInternalException(*MEMORY[0x277CBE660], @"Condition must be non-nil", v3, v4, v5, v6, v7, v8, v12);
  }

  _notCondition = [conditionCopy _notCondition];

  return _notCondition;
}

@end