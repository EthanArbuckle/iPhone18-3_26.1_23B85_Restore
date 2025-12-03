@interface RERelevanceCondition
+ (id)conditionWithBlock:(id)block;
- (BOOL)isEqual:(id)equal;
- (RERelevanceCondition)initWithCondtionBlock:(id)block;
- (float)_evaluateRelevanceWithEnvironment:(id)environment;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation RERelevanceCondition

+ (id)conditionWithBlock:(id)block
{
  blockCopy = block;
  v5 = [[self alloc] initWithCondtionBlock:blockCopy];

  return v5;
}

- (RERelevanceCondition)initWithCondtionBlock:(id)block
{
  blockCopy = block;
  v9.receiver = self;
  v9.super_class = RERelevanceCondition;
  v5 = [(RERelevanceCondition *)&v9 init];
  if (v5)
  {
    v6 = [blockCopy copy];
    condition = v5->_condition;
    v5->_condition = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [RERelevanceCondition allocWithZone:zone];
  condition = self->_condition;

  return [(RERelevanceCondition *)v4 initWithCondtionBlock:condition];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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

- (float)_evaluateRelevanceWithEnvironment:(id)environment
{
  condition = self->_condition;
  if (!condition)
  {
    return 0.0;
  }

  condition[2](condition, environment);
  return result;
}

@end