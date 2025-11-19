@interface TADisplayOnCalculator
- (BOOL)isEqual:(id)a3;
- (TADisplayOnCalculator)initWithCoder:(id)a3;
- (TADisplayOnCalculator)initWithStartTime:(id)a3;
- (TADisplayOnCalculator)initWithStartTime:(id)a3 budget:(double)a4;
- (double)calculateDisplayOnWithEvents:(id)a3 advertisements:(id)a4 endDate:(id)a5;
- (void)completeDisplayOnWithEndDate:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TADisplayOnCalculator

- (TADisplayOnCalculator)initWithStartTime:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TADisplayOnCalculator;
  v6 = [(TADisplayOnCalculator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_startTime, a3);
    v7->_useBudget = 0;
    objc_storeStrong(&v7->_evaluatedUntil, v7->_startTime);
  }

  return v7;
}

- (TADisplayOnCalculator)initWithStartTime:(id)a3 budget:(double)a4
{
  result = [(TADisplayOnCalculator *)self initWithStartTime:a3];
  if (result)
  {
    result->_useBudget = 1;
    result->_budgetRemaining = a4;
  }

  return result;
}

- (void)completeDisplayOnWithEndDate:(id)a3
{
  v5 = a3;
  if (!self->_useBudget)
  {
    v6 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_FAULT))
    {
      [(TADisplayOnCalculator *)v6 completeDisplayOnWithEndDate:v7, v8, v9, v10, v11, v12, v13];
    }
  }

  if (self->_budgetRemaining > 0.0)
  {
    if ([(NSDate *)self->_evaluatedUntil compare:v5]== NSOrderedAscending)
    {
      objc_storeStrong(&self->_evaluatedUntil, a3);
    }

    self->_budgetRemaining = 0.0;
  }
}

- (double)calculateDisplayOnWithEvents:(id)a3 advertisements:(id)a4 endDate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = 0.0;
  if ([(NSDate *)self->_evaluatedUntil compare:v10]!= NSOrderedAscending || self->_useBudget && self->_budgetRemaining <= 0.0)
  {
    goto LABEL_49;
  }

  v12 = self->_evaluatedUntil;
  if (![v8 count])
  {
    if ([v9 count])
    {
      [v10 timeIntervalSinceDate:self->_startTime];
      v11 = v23;
      if (v23 >= 0.0)
      {
        objc_storeStrong(&self->_evaluatedUntil, a5);
        if (self->_useBudget)
        {
          budgetRemaining = self->_budgetRemaining;
          if (v11 <= budgetRemaining)
          {
            self->_budgetRemaining = budgetRemaining - v11;
          }

          else
          {
            self->_budgetRemaining = 0.0;
            v11 = 0.0;
          }
        }
      }

      else
      {
        v24 = TAStatusLog;
        if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_FAULT))
        {
          [(TADisplayOnCalculator *)v24 calculateDisplayOnWithEvents:v25 advertisements:v26 endDate:v27, v28, v29, v30, v31];
        }
      }
    }

    goto LABEL_48;
  }

  p_evaluatedUntil = &self->_evaluatedUntil;
  v60 = v9;
  v13 = [v8 lastObject];
  v14 = [v13 getDate];
  v15 = [v14 compare:v12];

  v16 = [v8 count];
  if (v15 != 1)
  {
    LODWORD(v17) = v16 - 1;
    v32 = v16 - 1;
    goto LABEL_17;
  }

  if (v16)
  {
    v17 = 0;
    while (1)
    {
      v18 = [v8 objectAtIndexedSubscript:v17];
      v19 = [v18 getDate];
      v20 = [v19 compare:v12];

      if (v20 == 1)
      {
        break;
      }

      if (!v20)
      {
        v33 = v8;
        v32 = v17;
        goto LABEL_18;
      }

      if ([v8 count] <= ++v17)
      {
        goto LABEL_11;
      }
    }

    if (!v17)
    {
      v34 = [v8 objectAtIndexedSubscript:0];
      v21 = [v34 isOn] ^ 1;
      LODWORD(v17) = -1;
LABEL_19:

      v22 = v17;
      goto LABEL_20;
    }

    LODWORD(v17) = v17 - 1;
    v32 = v17;
LABEL_17:
    v33 = v8;
LABEL_18:
    v34 = [v33 objectAtIndexedSubscript:v32];
    v21 = [v34 isOn];
    goto LABEL_19;
  }

LABEL_11:
  v21 = 0;
  v22 = -1;
LABEL_20:
  v35 = 0;
  v36 = v22 + 1;
  v11 = 0.0;
  while (1)
  {
    v37 = [v8 count];
    v38 = v37 > v36;
    if (v37 <= v36)
    {
      goto LABEL_24;
    }

    v39 = [v8 objectAtIndexedSubscript:v36];
    v40 = [v39 getDate];

    if ([(NSDate *)v40 compare:v10]== NSOrderedAscending)
    {
      break;
    }

    v35 = v40;
LABEL_24:
    v40 = v10;

    if (v21)
    {
      goto LABEL_25;
    }

LABEL_34:
    if (v38 || v36 == [v8 count] || self->_useBudget && self->_budgetRemaining <= 0.0)
    {
      goto LABEL_47;
    }

    v46 = [v8 objectAtIndexedSubscript:v36];
    v21 = [v46 isOn];

    v35 = v40;
    ++v36;
    v12 = v35;
  }

  v38 = 0;
  if ((v21 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_25:
  [(NSDate *)v40 timeIntervalSinceDate:v12];
  if (!self->_useBudget)
  {
LABEL_33:
    [(NSDate *)v40 timeIntervalSinceDate:v12];
    v11 = v11 + v45;
    goto LABEL_34;
  }

  if (v41 >= 0.0)
  {
    v42 = self->_budgetRemaining;
    if (v41 <= v42)
    {
      v44 = v42 - v41;
    }

    else
    {
      v43 = [(NSDate *)v12 dateByAddingTimeInterval:self->_budgetRemaining];

      v44 = 0.0;
      v40 = v43;
    }

    self->_budgetRemaining = v44;
    goto LABEL_33;
  }

  v48 = TAStatusLog;
  if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_FAULT))
  {
    [(TADisplayOnCalculator *)v48 calculateDisplayOnWithEvents:v49 advertisements:v50 endDate:v51, v52, v53, v54, v55];
  }

LABEL_47:
  v56 = *p_evaluatedUntil;
  *p_evaluatedUntil = v40;
  v57 = v40;

  v9 = v60;
LABEL_48:

LABEL_49:
  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      v7 = [(TADisplayOnCalculator *)self useBudget];
      if (v7 != [(TADisplayOnCalculator *)v6 useBudget]|| ([(TADisplayOnCalculator *)self budgetRemaining], v9 = v8, [(TADisplayOnCalculator *)v6 budgetRemaining], v9 != v10))
      {
        v14 = 0;
LABEL_18:

        goto LABEL_19;
      }

      v11 = [(TADisplayOnCalculator *)self startTime];
      v12 = [(TADisplayOnCalculator *)v6 startTime];
      if (v11 != v12)
      {
        v13 = [(TADisplayOnCalculator *)self startTime];
        v3 = [(TADisplayOnCalculator *)v6 startTime];
        if (![v13 isEqual:v3])
        {
          v14 = 0;
LABEL_16:

LABEL_17:
          goto LABEL_18;
        }

        v21 = v13;
      }

      v15 = [(TADisplayOnCalculator *)self evaluatedUntil];
      v16 = [(TADisplayOnCalculator *)v6 evaluatedUntil];
      v17 = v16;
      if (v15 == v16)
      {

        v14 = 1;
      }

      else
      {
        v18 = [(TADisplayOnCalculator *)self evaluatedUntil];
        v19 = [(TADisplayOnCalculator *)v6 evaluatedUntil];
        v14 = [v18 isEqual:v19];
      }

      v13 = v21;
      if (v11 == v12)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    v14 = 0;
  }

LABEL_19:

  return v14;
}

- (TADisplayOnCalculator)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = TADisplayOnCalculator;
  v5 = [(TADisplayOnCalculator *)&v12 init];
  if (v5)
  {
    v5->_useBudget = [v4 decodeBoolForKey:@"UseBudget"];
    [v4 decodeDoubleForKey:@"BudgetRemaining"];
    v5->_budgetRemaining = v6;
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"StartTime"];
    startTime = v5->_startTime;
    v5->_startTime = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EvalUntil"];
    evaluatedUntil = v5->_evaluatedUntil;
    v5->_evaluatedUntil = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  useBudget = self->_useBudget;
  v5 = a3;
  [v5 encodeBool:useBudget forKey:@"UseBudget"];
  [v5 encodeDouble:@"BudgetRemaining" forKey:self->_budgetRemaining];
  [v5 encodeObject:self->_startTime forKey:@"StartTime"];
  [v5 encodeObject:self->_evaluatedUntil forKey:@"EvalUntil"];
}

@end