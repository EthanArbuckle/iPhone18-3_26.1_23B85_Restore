@interface REConditionalRelevanceProvider
- (BOOL)isEqual:(id)a3;
- (REConditionalRelevanceProvider)initWithRelevanceCondition:(id)a3;
- (float)_evaluateCondition;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation REConditionalRelevanceProvider

- (REConditionalRelevanceProvider)initWithRelevanceCondition:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if ([v5 isMemberOfClass:objc_opt_class()])
  {
    v6 = 0;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = REConditionalRelevanceProvider;
    v7 = [(RERelevanceProvider *)&v11 init];
    if (v7)
    {
      v8 = [v4 copy];
      condition = v7->_condition;
      v7->_condition = v8;
    }

    self = v7;
    v6 = self;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = REConditionalRelevanceProvider;
  v4 = [(RERelevanceProvider *)&v8 copyWithZone:a3];
  v5 = [(RERelevanceCondition *)self->_condition copy];
  v6 = v4[4];
  v4[4] = v5;

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v11.receiver = self, v11.super_class = REConditionalRelevanceProvider, [(RERelevanceProvider *)&v11 isEqual:v4]))
    {
      condition = self->_condition;
      v6 = v4->_condition;
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
  v3 = [(RERelevanceProvider *)self environment];
  if (v3)
  {
    [(RERelevanceCondition *)self->_condition _evaluateRelevanceWithEnvironment:v3];
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

@end