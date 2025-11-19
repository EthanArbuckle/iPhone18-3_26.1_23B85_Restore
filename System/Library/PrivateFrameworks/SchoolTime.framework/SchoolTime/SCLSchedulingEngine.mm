@interface SCLSchedulingEngine
- (BOOL)_evaluateChangeFromParameters:(id)a3 toParameters:(id)a4;
- (SCLSchedulingEngine)initWithParametersBlock:(id)a3 shouldStartManuallyActive:(BOOL)a4;
- (SCLSchedulingEngineDelegate)delegate;
- (void)reevaluateStateAtDate:(id)a3;
- (void)updateParametersWithBlock:(id)a3;
@end

@implementation SCLSchedulingEngine

- (SCLSchedulingEngine)initWithParametersBlock:(id)a3 shouldStartManuallyActive:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v12.receiver = self;
  v12.super_class = SCLSchedulingEngine;
  v7 = [(SCLSchedulingEngine *)&v12 init];
  if (v7)
  {
    v8 = objc_alloc_init(SCLSchedulingParameters);
    [(SCLSchedulingParameters *)v8 setActivationSetting:0];
    v6[2](v6, v8);
    [(SCLSchedulingEngine *)v7 _evaluateChangeFromParameters:0 toParameters:v8];
    if (v4 && ![(SCLState *)v7->_state activeState])
    {
      v9 = [[SCLState alloc] initWithActiveState:2 scheduleEnabled:[(SCLState *)v7->_state isScheduleEnabled] inSchedule:[(SCLState *)v7->_state isInSchedule]];
      state = v7->_state;
      v7->_state = v9;
    }
  }

  return v7;
}

- (void)updateParametersWithBlock:(id)a3
{
  v11 = a3;
  v4 = [(SCLSchedulingEngine *)self schedulingParameters];
  v5 = [v4 copy];
  if (!v5)
  {
    v5 = objc_alloc_init(SCLSchedulingParameters);
  }

  v11[2](v11, v5);
  v6 = self->_state;
  v7 = [(SCLSchedulingEngine *)self _evaluateChangeFromParameters:v4 toParameters:v5];
  v8 = self->_state;
  if (v7)
  {
    v9 = self->_nextEvaluationDate;
    v10 = [(SCLSchedulingEngine *)self delegate];
    [v10 schedulingEngine:self didUpdateState:v8 fromState:v6 nextEvaluationDate:v9];
  }
}

- (BOOL)_evaluateChangeFromParameters:(id)a3 toParameters:(id)a4
{
  v5 = a4;
  v6 = [v5 evaluationDate];
  v7 = [v5 scheduleSettings];
  v8 = [v5 calendar];
  v33 = self->_state;
  v9 = [v5 scheduleSettings];
  v32 = [v9 isEnabled];

  v10 = [v5 scheduleSettings];
  v11 = [v5 calendar];
  v12 = [v10 isActiveAtDate:v6 calendar:v11];

  v13 = [v7 dateIntervalForActiveScheduleOnOrAfterDate:v6 calendar:v8];
  if ([v13 containsDate:v6])
  {
    v14 = [v13 endDate];
LABEL_5:
    v15 = v14;
    goto LABEL_6;
  }

  if (v13)
  {
    v14 = [v13 startDate];
    goto LABEL_5;
  }

  v15 = 0;
LABEL_6:
  v30 = self->_nextEvaluationDate;
  objc_storeStrong(&self->_nextEvaluationDate, v15);
  objc_storeStrong(&self->_lastEvaluationDate, v6);
  v16 = [v5 activationSetting];
  if (v16)
  {
    v17 = v16;
    v18 = v8;
    v19 = v7;
    v20 = v32 ^ [(SCLState *)v33 isScheduleEnabled];
    v21 = v12 ^ [(SCLState *)v33 isInSchedule]| v20;
    v7 = v19;
    v8 = v18;
    if (v21)
    {
      v22 = 0;
    }

    else
    {
      v22 = v17;
    }

    [v5 setActivationSetting:v22];
  }

  v23 = [v5 activationSetting];
  if (v23 == 1 || !v23 && v12)
  {
    if ([v5 isSuppressed])
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

  v25 = [[SCLState alloc] initWithActiveState:v24 scheduleEnabled:v32 inSchedule:v12];
  state = self->_state;
  self->_state = v25;

  objc_storeStrong(&self->_schedulingParameters, a4);
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

- (void)reevaluateStateAtDate:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__SCLSchedulingEngine_reevaluateStateAtDate___block_invoke;
  v6[3] = &unk_279B6C4A8;
  v7 = v4;
  v5 = v4;
  [(SCLSchedulingEngine *)self updateParametersWithBlock:v6];
}

- (SCLSchedulingEngineDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end