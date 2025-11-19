@interface RERankingRule
- (BOOL)isEqual:(id)a3;
- (REConditionEvaluator)comparisonConditionEvaluator;
- (REConditionEvaluator)leftConditionEvaluator;
- (REConditionEvaluator)rightConditionEvaluator;
- (RERankingRule)initWithLeftCondition:(id)a3 rightCondition:(id)a4 comparisonCondition:(id)a5 order:(int64_t)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation RERankingRule

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = RERankingRule;
  v3 = [(RERule *)&v7 hash];
  v4 = [(RECondition *)self->_leftCondition hash]^ v3;
  v5 = [(RECondition *)self->_rightCondition hash];
  return v4 ^ v5 ^ [(REComparisonCondition *)self->_comparison hash]^ self->_order;
}

- (RERankingRule)initWithLeftCondition:(id)a3 rightCondition:(id)a4 comparisonCondition:(id)a5 order:(int64_t)a6
{
  v11 = a3;
  v12 = a4;
  v19 = a5;
  v20 = MEMORY[0x277CBE660];
  if (v11)
  {
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_14:
    RERaiseInternalException(*v20, @"Condition must be non-nil", v13, v14, v15, v16, v17, v18, v41.receiver);
    if (v19)
    {
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  RERaiseInternalException(*MEMORY[0x277CBE660], @"Condition must be non-nil", v13, v14, v15, v16, v17, v18, v41.receiver);
  if (!v12)
  {
    goto LABEL_14;
  }

LABEL_3:
  if (v19)
  {
    goto LABEL_4;
  }

LABEL_15:
  RERaiseInternalException(*v20, @"Condition must be non-nil", v13, v14, v15, v16, v17, v18, v41.receiver);
LABEL_4:
  v41.receiver = self;
  v41.super_class = RERankingRule;
  v21 = [(RERule *)&v41 init];
  if (v21)
  {
    if ([v11 _validForRanking])
    {
      RERaiseInternalException(*v20, @"REComparisonCondition cannot be used for the left condition", v22, v23, v24, v25, v26, v27, v41.receiver);
    }

    if ([v12 _validForRanking])
    {
      RERaiseInternalException(*v20, @"REComparisonCondition cannot be used for the right condition", v28, v29, v30, v31, v32, v33, v41.receiver);
    }

    if (([v19 _validForRanking] & 1) == 0)
    {
      RERaiseInternalException(*v20, @"REComparisonCondition must be used for the comparison condition", v34, v35, v36, v37, v38, v39, v41.receiver);
    }

    objc_storeStrong(&v21->_leftCondition, a3);
    objc_storeStrong(&v21->_rightCondition, a4);
    objc_storeStrong(&v21->_comparison, a5);
    v21->_order = a6;
  }

  return v21;
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
      v20.receiver = self;
      v20.super_class = RERankingRule;
      if ([(RERule *)&v20 isEqual:v4])
      {
        v5 = v4;
        leftCondition = v5->_leftCondition;
        v7 = self->_leftCondition;
        v8 = v7;
        if (v7 == leftCondition)
        {
        }

        else
        {
          v9 = [(RECondition *)v7 isEqual:leftCondition];

          if (!v9)
          {
            goto LABEL_16;
          }
        }

        rightCondition = v5->_rightCondition;
        v12 = self->_rightCondition;
        v13 = v12;
        if (v12 == rightCondition)
        {
        }

        else
        {
          v14 = [(RECondition *)v12 isEqual:rightCondition];

          if (!v14)
          {
            goto LABEL_16;
          }
        }

        comparison = v5->_comparison;
        v16 = self->_comparison;
        v17 = v16;
        if (v16 == comparison)
        {
        }

        else
        {
          v18 = [(REComparisonCondition *)v16 isEqual:comparison];

          if (!v18)
          {
LABEL_16:
            v10 = 0;
LABEL_19:

            goto LABEL_20;
          }
        }

        v10 = self->_order == v5->_order;
        goto LABEL_19;
      }
    }

    v10 = 0;
  }

LABEL_20:

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "initWithLeftCondition:rightCondition:comparisonCondition:order:", self->_leftCondition, self->_rightCondition, self->_comparison, self->_order}];
  [(RERule *)self priority];
  [v4 setPriority:?];
  return v4;
}

- (REConditionEvaluator)leftConditionEvaluator
{
  os_unfair_lock_lock(&GlobalRuleConditionEvaluatorLock);
  if (!self->_leftConditionEvaluator)
  {
    v3 = [[REConditionEvaluator alloc] initWithCondition:self->_leftCondition];
    leftConditionEvaluator = self->_leftConditionEvaluator;
    self->_leftConditionEvaluator = v3;
  }

  os_unfair_lock_unlock(&GlobalRuleConditionEvaluatorLock);
  v5 = self->_leftConditionEvaluator;

  return v5;
}

- (REConditionEvaluator)rightConditionEvaluator
{
  os_unfair_lock_lock(&GlobalRuleConditionEvaluatorLock);
  if (!self->_rightConditionEvaluator)
  {
    v3 = [[REConditionEvaluator alloc] initWithCondition:self->_rightCondition];
    rightConditionEvaluator = self->_rightConditionEvaluator;
    self->_rightConditionEvaluator = v3;
  }

  os_unfair_lock_unlock(&GlobalRuleConditionEvaluatorLock);
  v5 = self->_rightConditionEvaluator;

  return v5;
}

- (REConditionEvaluator)comparisonConditionEvaluator
{
  os_unfair_lock_lock(&GlobalRuleConditionEvaluatorLock);
  if (!self->_comparisonConditionEvaluator)
  {
    v3 = [[REConditionEvaluator alloc] initWithCondition:self->_comparison];
    comparisonConditionEvaluator = self->_comparisonConditionEvaluator;
    self->_comparisonConditionEvaluator = v3;
  }

  os_unfair_lock_unlock(&GlobalRuleConditionEvaluatorLock);
  v5 = self->_comparisonConditionEvaluator;

  return v5;
}

@end