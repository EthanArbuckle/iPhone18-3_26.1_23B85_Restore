@interface RECondition
+ (id)andConditions:(id)a3;
+ (id)conditionForFeature:(id)a3 hasBoolValue:(BOOL)a4;
+ (id)conditionForFeature:(id)a3 hasIntegerValue:(int64_t)a4;
+ (id)conditionForFeature:(id)a3 hasValue:(id)a4;
+ (id)conditionForFeature:(id)a3 relation:(int64_t)a4 feature:(id)a5;
+ (id)conditionForFeature:(id)a3 relation:(int64_t)a4 floatValue:(float)a5;
+ (id)conditionForFeature:(id)a3 relation:(int64_t)a4 integerValue:(int64_t)a5;
+ (id)conditionForProbabilityForInteraction:(id)a3 relation:(int64_t)a4 feature:(id)a5;
+ (id)conditionForProbabilityForInteraction:(id)a3 relation:(int64_t)a4 floatValue:(float)a5;
+ (id)conditionHasValueForFeature:(id)a3;
+ (id)notCondition:(id)a3;
+ (id)orConditions:(id)a3;
@end

@implementation RECondition

+ (id)conditionHasValueForFeature:(id)a3
{
  v9 = a3;
  if (!v9)
  {
    RERaiseInternalException(*MEMORY[0x277CBE660], @"Feature must be non-nil", v3, v4, v5, v6, v7, v8, v12);
  }

  v10 = [[_REHasFeatureRuleCondition alloc] initWithFeature:v9 contains:1];

  return v10;
}

+ (id)conditionForFeature:(id)a3 relation:(int64_t)a4 floatValue:(float)a5
{
  v6 = a3;
  REEnsureFeatureWithType(v6, 2uLL);
  v7 = RECreateDoubleFeatureValueTaggedPointer();
  v8 = [[_REValueRuleCondition alloc] initWithFeature:v6 relation:a4 value:v7];

  REReleaseFeatureValueTaggedPointer(v7);

  return v8;
}

+ (id)conditionForFeature:(id)a3 relation:(int64_t)a4 integerValue:(int64_t)a5
{
  v7 = a3;
  REEnsureFeatureWithType(v7, 2uLL);
  v8 = RECreateIntegerFeatureValueTaggedPointer(a5);
  v9 = [[_REValueRuleCondition alloc] initWithFeature:v7 relation:a4 value:v8];

  REReleaseFeatureValueTaggedPointer(v8);

  return v9;
}

+ (id)conditionForFeature:(id)a3 hasValue:(id)a4
{
  v5 = a4;
  v6 = a3;
  REEnsureFeatureWithType(v6, 1uLL);
  v7 = [REFeatureValue featureValueWithString:v5];

  v8 = RECreateFeatureValueTaggedPointer(v7);
  v9 = [[_REValueRuleCondition alloc] initWithFeature:v6 relation:0 value:v8];

  RERetainFeatureValueTaggedPointer(v8);

  return v9;
}

+ (id)conditionForFeature:(id)a3 hasIntegerValue:(int64_t)a4
{
  v5 = a3;
  REEnsureFeatureWithType(v5, 1uLL);
  v6 = RECreateIntegerFeatureValueTaggedPointer(a4);
  v7 = [[_REValueRuleCondition alloc] initWithFeature:v5 relation:0 value:v6];

  REReleaseFeatureValueTaggedPointer(v6);

  return v7;
}

+ (id)conditionForFeature:(id)a3 hasBoolValue:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  REEnsureFeatureWithType(v5, 0);
  v6 = RECreateBooleanFeatureValueTaggedPointer(v4);
  v7 = [[_REValueRuleCondition alloc] initWithFeature:v5 relation:0 value:v6];

  REReleaseFeatureValueTaggedPointer(v6);

  return v7;
}

+ (id)conditionForFeature:(id)a3 relation:(int64_t)a4 feature:(id)a5
{
  v7 = a5;
  v8 = a3;
  REEnsureMatchingFeatureTypes(v8, v7);
  v9 = [[_REFeatureRuleCondition alloc] initWithFeature:v8 relation:a4 feature:v7];

  return v9;
}

+ (id)conditionForProbabilityForInteraction:(id)a3 relation:(int64_t)a4 floatValue:(float)a5
{
  v7 = a3;
  v8 = [_REProbabilityRuleCondition alloc];
  *&v9 = a5;
  v10 = [(_REProbabilityRuleCondition *)v8 initWithProbability:v7 relation:a4 feature:0 threshold:v9];

  return v10;
}

+ (id)conditionForProbabilityForInteraction:(id)a3 relation:(int64_t)a4 feature:(id)a5
{
  v7 = a5;
  v8 = a3;
  REEnsureFeatureWithType(v7, 2uLL);
  v9 = [[_REProbabilityRuleCondition alloc] initWithProbability:v8 relation:a4 feature:v7 threshold:0.0];

  return v9;
}

+ (id)andConditions:(id)a3
{
  v3 = a3;
  v4 = [_REAggregateRuleCondition alloc];
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  v6 = [(_REAggregateRuleCondition *)v4 initWithConditions:v5 type:0];

  return v6;
}

+ (id)orConditions:(id)a3
{
  v3 = a3;
  v4 = [_REAggregateRuleCondition alloc];
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  v6 = [(_REAggregateRuleCondition *)v4 initWithConditions:v5 type:1];

  return v6;
}

+ (id)notCondition:(id)a3
{
  v9 = a3;
  if (!v9)
  {
    RERaiseInternalException(*MEMORY[0x277CBE660], @"Condition must be non-nil", v3, v4, v5, v6, v7, v8, v12);
  }

  v10 = [v9 _notCondition];

  return v10;
}

@end