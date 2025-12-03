@interface REConditionalRelevanceProvider
- (BOOL)isEqual:(id)equal;
- (REConditionalRelevanceProvider)initWithRelevanceCondition:(id)condition;
- (float)_evaluateCondition;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation REConditionalRelevanceProvider

- (REConditionalRelevanceProvider)initWithRelevanceCondition:(id)condition
{
  conditionCopy = condition;
  v5 = objc_opt_class();
  if ([v5 isMemberOfClass:objc_opt_class()])
  {
    selfCopy = 0;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = REConditionalRelevanceProvider;
    v7 = [(RERelevanceProvider *)&v11 init];
    if (v7)
    {
      v8 = [conditionCopy copy];
      condition = v7->_condition;
      v7->_condition = v8;
    }

    self = v7;
    selfCopy = self;
  }

  return selfCopy;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = REConditionalRelevanceProvider;
  v4 = [(RERelevanceProvider *)&v8 copyWithZone:zone];
  v5 = [(RERelevanceCondition *)self->_condition copy];
  v6 = v4[4];
  v4[4] = v5;

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v11.receiver = self, v11.super_class = REConditionalRelevanceProvider, [(RERelevanceProvider *)&v11 isEqual:equalCopy]))
    {
      condition = self->_condition;
      v6 = equalCopy->_condition;
      v7 = condition;
      v8 = v7;
      if (v7 == v6)
      {
        v9 = 1;
      }

      else
      {
        v9 = [(RERelevanceCondition *)v7 isEqual:v6];
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (float)_evaluateCondition
{
  environment = [(RERelevanceProvider *)self environment];
  if (environment)
  {
    [(RERelevanceCondition *)self->_condition _evaluateRelevanceWithEnvironment:environment];
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

@end