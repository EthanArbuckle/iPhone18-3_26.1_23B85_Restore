@interface REFilteringRule
- (BOOL)isEqual:(id)a3;
- (REConditionEvaluator)conditionEvaluator;
- (REFilteringRule)initWithCondition:(id)a3 type:(unint64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation REFilteringRule

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = REFilteringRule;
  v3 = [(RERule *)&v5 hash];
  return [(RECondition *)self->_condition hash]^ v3;
}

- (REFilteringRule)initWithCondition:(id)a3 type:(unint64_t)a4
{
  v13 = a3;
  if (!v13)
  {
    RERaiseInternalException(*MEMORY[0x277CBE660], @"Condition must be non-nil", v7, v8, v9, v10, v11, v12, v22.receiver);
  }

  v22.receiver = self;
  v22.super_class = REFilteringRule;
  v14 = [(RERule *)&v22 init];
  if (v14)
  {
    if ([v13 _validForRanking])
    {
      RERaiseInternalException(*MEMORY[0x277CBE660], @"REComparisonCondition cannot be used for a filtering rule", v15, v16, v17, v18, v19, v20, v22.receiver);
    }

    objc_storeStrong(&v14->_condition, a3);
    v14->_type = a4;
  }

  return v14;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12.receiver = self;
      v12.super_class = REFilteringRule;
      if ([(RERule *)&v12 isEqual:v4])
      {
        v5 = v4;
        condition = v5->_condition;
        v7 = self->_condition;
        v8 = v7;
        if (v7 == condition)
        {
        }

        else
        {
          v9 = [(RECondition *)v7 isEqual:condition];

          if (!v9)
          {
            v10 = 0;
LABEL_11:

            goto LABEL_12;
          }
        }

        v10 = self->_type == v5->_type;
        goto LABEL_11;
      }
    }

    v10 = 0;
  }

LABEL_12:

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "initWithCondition:type:", self->_condition, self->_type}];
  [(RERule *)self priority];
  [v4 setPriority:?];
  return v4;
}

- (REConditionEvaluator)conditionEvaluator
{
  os_unfair_lock_lock(&GlobalRuleConditionEvaluatorLock);
  if (!self->_conditionEvaluator)
  {
    v3 = [[REConditionEvaluator alloc] initWithCondition:self->_condition];
    conditionEvaluator = self->_conditionEvaluator;
    self->_conditionEvaluator = v3;
  }

  os_unfair_lock_unlock(&GlobalRuleConditionEvaluatorLock);
  v5 = self->_conditionEvaluator;

  return v5;
}

@end