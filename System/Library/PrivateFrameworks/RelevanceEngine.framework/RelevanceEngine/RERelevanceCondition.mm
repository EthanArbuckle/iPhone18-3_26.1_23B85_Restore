@interface RERelevanceCondition
+ (id)conditionWithBlock:(id)a3;
- (BOOL)isEqual:(id)a3;
- (RERelevanceCondition)initWithCondtionBlock:(id)a3;
- (float)_evaluateRelevanceWithEnvironment:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation RERelevanceCondition

+ (id)conditionWithBlock:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithCondtionBlock:v4];

  return v5;
}

- (RERelevanceCondition)initWithCondtionBlock:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = RERelevanceCondition;
  v5 = [(RERelevanceCondition *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    condition = v5->_condition;
    v5->_condition = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [RERelevanceCondition allocWithZone:a3];
  condition = self->_condition;

  return [(RERelevanceCondition *)v4 initWithCondtionBlock:condition];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = MEMORY[0x22AABC5E0](self->_condition);
      v7 = MEMORY[0x22AABC5E0](v5->_condition);
      if (v6 == v7)
      {
        v8 = 1;
      }

      else
      {
        v8 = [v6 isEqual:v7];
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (float)_evaluateRelevanceWithEnvironment:(id)a3
{
  condition = self->_condition;
  if (!condition)
  {
    return 0.0;
  }

  condition[2](condition, a3);
  return result;
}

@end