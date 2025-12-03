@interface SCLSchedulingEngine
- (BOOL)_evaluateChangeFromParameters:(id)parameters toParameters:(id)toParameters;
- (SCLSchedulingEngine)initWithParametersBlock:(id)block shouldStartManuallyActive:(BOOL)active;
- (SCLSchedulingEngineDelegate)delegate;
- (void)reevaluateStateAtDate:(id)date;
- (void)updateParametersWithBlock:(id)block;
@end

@implementation SCLSchedulingEngine

- (SCLSchedulingEngine)initWithParametersBlock:(id)block shouldStartManuallyActive:(BOOL)active
{
  activeCopy = active;
  blockCopy = block;
  v12.receiver = self;
  v12.super_class = SCLSchedulingEngine;
  v7 = [(SCLSchedulingEngine *)&v12 init];
  if (v7)
  {
    v8 = objc_alloc_init(SCLSchedulingParameters);
    [(SCLSchedulingParameters *)v8 setActivationSetting:0];
    blockCopy[2](blockCopy, v8);
    [(SCLSchedulingEngine *)v7 _evaluateChangeFromParameters:0 toParameters:v8];
    if (activeCopy && ![(SCLState *)v7->_state activeState])
    {
      v9 = [[SCLState alloc] initWithActiveState:2 scheduleEnabled:[(SCLState *)v7->_state isScheduleEnabled] inSchedule:[(SCLState *)v7->_state isInSchedule]];
      state = v7->_state;
      v7->_state = v9;
    }
  }

  return v7;
}

- (void)updateParametersWithBlock:(id)block
{
  blockCopy = block;
  schedulingParameters = [(SCLSchedulingEngine *)self schedulingParameters];
  v5 = [schedulingParameters copy];
  if (!v5)
  {
    v5 = objc_alloc_init(SCLSchedulingParameters);
  }

  blockCopy[2](blockCopy, v5);
  v6 = self->_state;
  v7 = [(SCLSchedulingEngine *)self _evaluateChangeFromParameters:schedulingParameters toParameters:v5];
  v8 = self->_state;
  if (v7)
  {
    v9 = self->_nextEvaluationDate;
    delegate = [(SCLSchedulingEngine *)self delegate];
    [delegate schedulingEngine:self didUpdateState:v8 fromState:v6 nextEvaluationDate:v9];
  }
}

- (BOOL)_evaluateChangeFromParameters:(id)parameters toParameters:(id)toParameters
{
  toParametersCopy = toParameters;
  evaluationDate = [toParametersCopy evaluationDate];
  scheduleSettings = [toParametersCopy scheduleSettings];
  calendar = [toParametersCopy calendar];
  v33 = self->_state;
  scheduleSettings2 = [toParametersCopy scheduleSettings];
  isEnabled = [scheduleSettings2 isEnabled];

  scheduleSettings3 = [toParametersCopy scheduleSettings];
  calendar2 = [toParametersCopy calendar];
  v12 = [scheduleSettings3 isActiveAtDate:evaluationDate calendar:calendar2];

  v13 = [scheduleSettings dateIntervalForActiveScheduleOnOrAfterDate:evaluationDate calendar:calendar];
  if ([v13 containsDate:evaluationDate])
  {
    endDate = [v13 endDate];
LABEL_5:
    v15 = endDate;
    goto LABEL_6;
  }

  if (v13)
  {
    endDate = [v13 startDate];
    goto LABEL_5;
  }

  v15 = 0;
LABEL_6:
  v30 = self->_nextEvaluationDate;
  objc_storeStrong(&self->_nextEvaluationDate, v15);
  objc_storeStrong(&self->_lastEvaluationDate, evaluationDate);
  activationSetting = [toParametersCopy activationSetting];
  if (activationSetting)
  {
    v17 = activationSetting;
    v18 = calendar;
    v19 = scheduleSettings;
    v20 = isEnabled ^ [(SCLState *)v33 isScheduleEnabled];
    v21 = v12 ^ [(SCLState *)v33 isInSchedule]| v20;
    scheduleSettings = v19;
    calendar = v18;
    if (v21)
    {
      v22 = 0;
    }

    else
    {
      v22 = v17;
    }

    [toParametersCopy setActivationSetting:v22];
  }

  activationSetting2 = [toParametersCopy activationSetting];
  if (activationSetting2 == 1 || !activationSetting2 && v12)
  {
    if ([toParametersCopy isSuppressed])
    {
      v24 = 1;
    }

    else
    {
      v24 = 2;
    }
  }

  else
  {
    v24 = 0;
  }

  v25 = [[SCLState alloc] initWithActiveState:v24 scheduleEnabled:isEnabled inSchedule:v12];
  state = self->_state;
  self->_state = v25;

  objc_storeStrong(&self->_schedulingParameters, toParameters);
  if ([(SCLState *)v25 isEqual:v33])
  {
    v27 = v30;
    if (v30 == v15)
    {
      LOBYTE(v28) = 0;
    }

    else
    {
      v28 = [(NSDate *)v30 isEqual:v15]^ 1;
    }
  }

  else
  {
    LOBYTE(v28) = 1;
    v27 = v30;
  }

  return v28;
}

- (void)reevaluateStateAtDate:(id)date
{
  dateCopy = date;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__SCLSchedulingEngine_reevaluateStateAtDate___block_invoke;
  v6[3] = &unk_279B6C4A8;
  v7 = dateCopy;
  v5 = dateCopy;
  [(SCLSchedulingEngine *)self updateParametersWithBlock:v6];
}

- (SCLSchedulingEngineDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end