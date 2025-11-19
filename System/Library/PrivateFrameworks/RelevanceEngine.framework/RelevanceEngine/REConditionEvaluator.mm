@interface REConditionEvaluator
- (BOOL)acceptsFeatureMap:(id)a3 predictionSet:(id)a4 explanation:(id *)a5;
- (BOOL)compareFeatureMap:(id)a3 toFeatureMap:(id)a4;
- (REConditionEvaluator)initWithCondition:(id)a3;
@end

@implementation REConditionEvaluator

- (REConditionEvaluator)initWithCondition:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = REConditionEvaluator;
  v6 = [(REConditionEvaluator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_condition, a3);
    v7->_mode = [(RECondition *)v7->_condition _validForRanking];
  }

  return v7;
}

- (BOOL)acceptsFeatureMap:(id)a3 predictionSet:(id)a4 explanation:(id *)a5
{
  v8 = a3;
  v15 = a4;
  if (self->_mode)
  {
    RERaiseInternalException(*MEMORY[0x277CBE658], @"Cannot call -acceptsFeatureMap: when not configured for filtering", v9, v10, v11, v12, v13, v14, v18);
  }

  v16 = [(RECondition *)self->_condition _acceptsFeatureMap:v8 predictionSet:v15 explanation:a5];

  return v16;
}

- (BOOL)compareFeatureMap:(id)a3 toFeatureMap:(id)a4
{
  v6 = a3;
  v13 = a4;
  if (self->_mode != 1)
  {
    RERaiseInternalException(*MEMORY[0x277CBE658], @"Cannot call -acceptsFeatureMap: when not configured for ranking", v7, v8, v9, v10, v11, v12, v16);
  }

  v14 = [(RECondition *)self->_condition _acceptsLeftFeatureMap:v6 rightFeatureMap:v13];

  return v14;
}

@end