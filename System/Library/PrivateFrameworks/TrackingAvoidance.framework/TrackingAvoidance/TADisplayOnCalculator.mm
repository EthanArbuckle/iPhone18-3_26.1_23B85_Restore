@interface TADisplayOnCalculator
- (BOOL)isEqual:(id)equal;
- (TADisplayOnCalculator)initWithCoder:(id)coder;
- (TADisplayOnCalculator)initWithStartTime:(id)time;
- (TADisplayOnCalculator)initWithStartTime:(id)time budget:(double)budget;
- (double)calculateDisplayOnWithEvents:(id)events advertisements:(id)advertisements endDate:(id)date;
- (void)completeDisplayOnWithEndDate:(id)date;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TADisplayOnCalculator

- (TADisplayOnCalculator)initWithStartTime:(id)time
{
  timeCopy = time;
  v9.receiver = self;
  v9.super_class = TADisplayOnCalculator;
  v6 = [(TADisplayOnCalculator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_startTime, time);
    v7->_useBudget = 0;
    objc_storeStrong(&v7->_evaluatedUntil, v7->_startTime);
  }

  return v7;
}

- (TADisplayOnCalculator)initWithStartTime:(id)time budget:(double)budget
{
  result = [(TADisplayOnCalculator *)self initWithStartTime:time];
  if (result)
  {
    result->_useBudget = 1;
    result->_budgetRemaining = budget;
  }

  return result;
}

- (void)completeDisplayOnWithEndDate:(id)date
{
  dateCopy = date;
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
    if ([(NSDate *)self->_evaluatedUntil compare:dateCopy]== NSOrderedAscending)
    {
      objc_storeStrong(&self->_evaluatedUntil, date);
    }

    self->_budgetRemaining = 0.0;
  }
}

- (double)calculateDisplayOnWithEvents:(id)events advertisements:(id)advertisements endDate:(id)date
{
  eventsCopy = events;
  advertisementsCopy = advertisements;
  dateCopy = date;
  v11 = 0.0;
  if ([(NSDate *)self->_evaluatedUntil compare:dateCopy]!= NSOrderedAscending || self->_useBudget && self->_budgetRemaining <= 0.0)
  {
    goto LABEL_49;
  }

  v12 = self->_evaluatedUntil;
  if (![eventsCopy count])
  {
    if ([advertisementsCopy count])
    {
      [dateCopy timeIntervalSinceDate:self->_startTime];
      v11 = v23;
      if (v23 >= 0.0)
      {
        objc_storeStrong(&self->_evaluatedUntil, date);
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
  v60 = advertisementsCopy;
  lastObject = [eventsCopy lastObject];
  getDate = [lastObject getDate];
  v15 = [getDate compare:v12];

  v16 = [eventsCopy count];
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
      v18 = [eventsCopy objectAtIndexedSubscript:v17];
      getDate2 = [v18 getDate];
      v20 = [getDate2 compare:v12];

      if (v20 == 1)
      {
        break;
      }

      if (!v20)
      {
        v33 = eventsCopy;
        v32 = v17;
        goto LABEL_18;
      }

      if ([eventsCopy count] <= ++v17)
      {
        goto LABEL_11;
      }
    }

    if (!v17)
    {
      v34 = [eventsCopy objectAtIndexedSubscript:0];
      isOn = [v34 isOn] ^ 1;
      LODWORD(v17) = -1;
LABEL_19:

      v22 = v17;
      goto LABEL_20;
    }

    LODWORD(v17) = v17 - 1;
    v32 = v17;
LABEL_17:
    v33 = eventsCopy;
LABEL_18:
    v34 = [v33 objectAtIndexedSubscript:v32];
    isOn = [v34 isOn];
    goto LABEL_19;
  }

LABEL_11:
  isOn = 0;
  v22 = -1;
LABEL_20:
  v35 = 0;
  v36 = v22 + 1;
  v11 = 0.0;
  while (1)
  {
    v37 = [eventsCopy count];
    v38 = v37 > v36;
    if (v37 <= v36)
    {
      goto LABEL_24;
    }

    v39 = [eventsCopy objectAtIndexedSubscript:v36];
    getDate3 = [v39 getDate];

    if ([(NSDate *)getDate3 compare:dateCopy]== NSOrderedAscending)
    {
      break;
    }

    v35 = getDate3;
LABEL_24:
    getDate3 = dateCopy;

    if (isOn)
    {
      goto LABEL_25;
    }

LABEL_34:
    if (v38 || v36 == [eventsCopy count] || self->_useBudget && self->_budgetRemaining <= 0.0)
    {
      goto LABEL_47;
    }

    v46 = [eventsCopy objectAtIndexedSubscript:v36];
    isOn = [v46 isOn];

    v35 = getDate3;
    ++v36;
    v12 = v35;
  }

  v38 = 0;
  if ((isOn & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_25:
  [(NSDate *)getDate3 timeIntervalSinceDate:v12];
  if (!self->_useBudget)
  {
LABEL_33:
    [(NSDate *)getDate3 timeIntervalSinceDate:v12];
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
      getDate3 = v43;
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
  *p_evaluatedUntil = getDate3;
  v57 = getDate3;

  advertisementsCopy = v60;
LABEL_48:

LABEL_49:
  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      useBudget = [(TADisplayOnCalculator *)self useBudget];
      if (useBudget != [(TADisplayOnCalculator *)v6 useBudget]|| ([(TADisplayOnCalculator *)self budgetRemaining], v9 = v8, [(TADisplayOnCalculator *)v6 budgetRemaining], v9 != v10))
      {
        v14 = 0;
LABEL_18:

        goto LABEL_19;
      }

      startTime = [(TADisplayOnCalculator *)self startTime];
      startTime2 = [(TADisplayOnCalculator *)v6 startTime];
      if (startTime != startTime2)
      {
        startTime3 = [(TADisplayOnCalculator *)self startTime];
        startTime4 = [(TADisplayOnCalculator *)v6 startTime];
        if (![startTime3 isEqual:startTime4])
        {
          v14 = 0;
LABEL_16:

LABEL_17:
          goto LABEL_18;
        }

        v21 = startTime3;
      }

      evaluatedUntil = [(TADisplayOnCalculator *)self evaluatedUntil];
      evaluatedUntil2 = [(TADisplayOnCalculator *)v6 evaluatedUntil];
      v17 = evaluatedUntil2;
      if (evaluatedUntil == evaluatedUntil2)
      {

        v14 = 1;
      }

      else
      {
        evaluatedUntil3 = [(TADisplayOnCalculator *)self evaluatedUntil];
        evaluatedUntil4 = [(TADisplayOnCalculator *)v6 evaluatedUntil];
        v14 = [evaluatedUntil3 isEqual:evaluatedUntil4];
      }

      startTime3 = v21;
      if (startTime == startTime2)
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

- (TADisplayOnCalculator)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = TADisplayOnCalculator;
  v5 = [(TADisplayOnCalculator *)&v12 init];
  if (v5)
  {
    v5->_useBudget = [coderCopy decodeBoolForKey:@"UseBudget"];
    [coderCopy decodeDoubleForKey:@"BudgetRemaining"];
    v5->_budgetRemaining = v6;
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"StartTime"];
    startTime = v5->_startTime;
    v5->_startTime = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EvalUntil"];
    evaluatedUntil = v5->_evaluatedUntil;
    v5->_evaluatedUntil = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  useBudget = self->_useBudget;
  coderCopy = coder;
  [coderCopy encodeBool:useBudget forKey:@"UseBudget"];
  [coderCopy encodeDouble:@"BudgetRemaining" forKey:self->_budgetRemaining];
  [coderCopy encodeObject:self->_startTime forKey:@"StartTime"];
  [coderCopy encodeObject:self->_evaluatedUntil forKey:@"EvalUntil"];
}

@end