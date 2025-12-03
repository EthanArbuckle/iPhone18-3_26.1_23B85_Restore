@interface REConditionEvaluator
- (BOOL)acceptsFeatureMap:(id)map predictionSet:(id)set explanation:(id *)explanation;
- (BOOL)compareFeatureMap:(id)map toFeatureMap:(id)featureMap;
- (REConditionEvaluator)initWithCondition:(id)condition;
@end

@implementation REConditionEvaluator

- (REConditionEvaluator)initWithCondition:(id)condition
{
  conditionCopy = condition;
  v9.receiver = self;
  v9.super_class = REConditionEvaluator;
  v6 = [(REConditionEvaluator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_condition, condition);
    v7->_mode = [(RECondition *)v7->_condition _validForRanking];
  }

  return v7;
}

- (BOOL)acceptsFeatureMap:(id)map predictionSet:(id)set explanation:(id *)explanation
{
  mapCopy = map;
  setCopy = set;
  if (self->_mode)
  {
    RERaiseInternalException(*MEMORY[0x277CBE658], @"Cannot call -acceptsFeatureMap: when not configured for filtering", v9, v10, v11, v12, v13, v14, v18);
  }

  v16 = [(RECondition *)self->_condition _acceptsFeatureMap:mapCopy predictionSet:setCopy explanation:explanation];

  return v16;
}

- (BOOL)compareFeatureMap:(id)map toFeatureMap:(id)featureMap
{
  mapCopy = map;
  featureMapCopy = featureMap;
  if (self->_mode != 1)
  {
    RERaiseInternalException(*MEMORY[0x277CBE658], @"Cannot call -acceptsFeatureMap: when not configured for ranking", v7, v8, v9, v10, v11, v12, v16);
  }

  v14 = [(RECondition *)self->_condition _acceptsLeftFeatureMap:mapCopy rightFeatureMap:featureMapCopy];

  return v14;
}

@end