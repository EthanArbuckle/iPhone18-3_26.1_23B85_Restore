@interface WGWidgetLifeCycleSequence
- (BOOL)_isValidTransitionToState:(int64_t)a3;
- (WGWidgetLifeCycleSequence)initWithSequenceIdentifier:(id)a3;
- (WGWidgetLifeCycleSequence)sequenceWithIdentifier:(id)a3;
- (id)beginTransitionToState:(int64_t)a3 error:(id *)a4;
- (id)description;
- (id)transitionToState:(int64_t)a3;
- (int64_t)currentState;
- (void)_setCurrentState:(int64_t)a3;
@end

@implementation WGWidgetLifeCycleSequence

- (WGWidgetLifeCycleSequence)initWithSequenceIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = WGWidgetLifeCycleSequence;
  v5 = [(WGWidgetLifeCycleSequence *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    sequenceIdentifier = v5->_sequenceIdentifier;
    v5->_sequenceIdentifier = v6;
  }

  return v5;
}

- (WGWidgetLifeCycleSequence)sequenceWithIdentifier:(id)a3
{
  v4 = a3;
  if (![(WGWidgetLifeCycleSequence *)self isCurrentStateAtLeast:5])
  {
    [WGWidgetLifeCycleSequence sequenceWithIdentifier:];
  }

  v5 = [objc_alloc(objc_opt_class()) initWithSequenceIdentifier:v4];

  [v5 _setPreviousSequence:self];

  return v5;
}

- (int64_t)currentState
{
  previousSequence = self->_previousSequence;
  if (previousSequence)
  {
    return [(WGWidgetLifeCycleSequence *)previousSequence currentState];
  }

  else
  {
    return self->_currentState;
  }
}

- (BOOL)_isValidTransitionToState:(int64_t)a3
{
  if (a3 >= 7)
  {
    [WGWidgetLifeCycleSequence _isValidTransitionToState:];
  }

  previousSequence = self->_previousSequence;
  if (previousSequence)
  {
    if ([(WGWidgetLifeCycleSequence *)previousSequence currentState]>= 7)
    {
      [WGWidgetLifeCycleSequence _isValidTransitionToState:];
    }

    if ([(WGWidgetLifeCycleSequence *)self->_previousSequence currentState]< a3)
    {
      return 1;
    }
  }

  else if ([(WGWidgetLifeCycleSequence *)self currentState]>= 7)
  {
    [WGWidgetLifeCycleSequence _isValidTransitionToState:];
  }

  currentState = self->_currentState;
  v8 = currentState <= 6 && a3 - 1 >= currentState;
  return a3 <= 6 && v8;
}

- (void)_setCurrentState:(int64_t)a3
{
  if (a3 <= 0 && (v5 = self->_previousSequence) != 0)
  {
    [(WGWidgetLifeCycleSequence *)v5 _setCurrentState:a3];
    if ([(WGWidgetLifeCycleSequence *)self->_previousSequence isCurrentState:0])
    {
      previousSequence = self->_previousSequence;
      self->_previousSequence = 0;
    }
  }

  else
  {
    v7 = WGLogWidgets;
    if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEBUG))
    {
      [(WGWidgetLifeCycleSequence *)v7 _setCurrentState:a3];
    }

    v8 = self->_previousSequence;
    self->_previousSequence = 0;

    self->_currentState = a3;
  }
}

- (id)beginTransitionToState:(int64_t)a3 error:(id *)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v7 = [(WGWidgetLifeCycleSequence *)self currentState];
  v8 = [(WGWidgetLifeCycleSequence *)self _isValidTransitionToState:a3];
  v9 = WGLogWidgets;
  if (!v8)
  {
    if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_ERROR))
    {
      [(WGWidgetLifeCycleSequence *)v9 beginTransitionToState:v7 error:a3];
      if (!a4)
      {
        goto LABEL_8;
      }
    }

    else if (!a4)
    {
LABEL_8:
      v10 = 0;
      goto LABEL_9;
    }

    v11 = MEMORY[0x277CCACA8];
    v12 = WGStringFromWidgetLifeCycleSequenceState([(WGWidgetLifeCycleSequence *)self currentState]);
    v13 = WGStringFromWidgetLifeCycleSequenceState(a3);
    v14 = [v11 stringWithFormat:@"Invalid transition from '%@' to '%@' attempted", v12, v13];

    v15 = MEMORY[0x277CCA9B8];
    v25 = *MEMORY[0x277CCA450];
    v26 = v14;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    *a4 = [v15 errorWithDomain:@"WGWidgetLifeCycleErrorDomain" code:0 userInfo:v16];

    goto LABEL_8;
  }

  if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEBUG))
  {
    v19 = v9;
    v20 = [(WGWidgetLifeCycleSequence *)self sequenceIdentifier];
    v21 = WGStringFromWidgetLifeCycleSequenceState(v7);
    v22 = WGStringFromWidgetLifeCycleSequenceState(a3);
    *location = 138544130;
    *&location[4] = v20;
    v28 = 2050;
    v29 = self;
    v30 = 2114;
    v31 = v21;
    v32 = 2114;
    v33 = v22;
    _os_log_debug_impl(&dword_27425E000, v19, OS_LOG_TYPE_DEBUG, "<%{public}@: %{public}p> Beginning transition from '%{public}@' to '%{public}@'", location, 0x2Au);
  }

  objc_initWeak(location, self);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __58__WGWidgetLifeCycleSequence_beginTransitionToState_error___block_invoke;
  v23[3] = &unk_279ED0E98;
  objc_copyWeak(v24, location);
  v24[1] = v7;
  v24[2] = a3;
  v10 = MEMORY[0x2743E8C10](v23);
  objc_destroyWeak(v24);
  objc_destroyWeak(location);
LABEL_9:
  v17 = [v10 copy];

  return v17;
}

id __58__WGWidgetLifeCycleSequence_beginTransitionToState_error___block_invoke(uint64_t a1, unint64_t a2)
{
  v19[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained isCurrentState:*(a1 + 40)];
  v6 = *(a1 + 48);
  if (v5)
  {
    v7 = v6 == a2;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    [WeakRetained _setCurrentState:a2];
    v9 = 0;
    goto LABEL_13;
  }

  if ((v5 & 1) == 0)
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = WGStringFromWidgetLifeCycleSequenceState([WeakRetained currentState]);
    v12 = WGStringFromWidgetLifeCycleSequenceState(*(a1 + 40));
    v8 = [v10 stringWithFormat:@"A transition has occurred (to '%@') since this transition was begun (from '%@')", v11, v12];
LABEL_11:

    goto LABEL_12;
  }

  if (v6 != a2)
  {
    v13 = MEMORY[0x277CCACA8];
    v11 = WGStringFromWidgetLifeCycleSequenceState([WeakRetained currentState]);
    v12 = WGStringFromWidgetLifeCycleSequenceState(a2);
    v14 = WGStringFromWidgetLifeCycleSequenceState(*(a1 + 48));
    v8 = [v13 stringWithFormat:@"Unexpected state transition from '%@' to '%@' ('%@' was promised)", v11, v12, v14];

    goto LABEL_11;
  }

  v8 = @"Unexpected error";
LABEL_12:
  v15 = MEMORY[0x277CCA9B8];
  v18 = *MEMORY[0x277CCA450];
  v19[0] = v8;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
  v9 = [v15 errorWithDomain:@"WGWidgetLifeCycleErrorDomain" code:0 userInfo:v16];

LABEL_13:

  return v9;
}

- (id)transitionToState:(int64_t)a3
{
  v7 = 0;
  v4 = [(WGWidgetLifeCycleSequence *)self beginTransitionToState:a3 error:&v7];
  v5 = v7;
  if (!v5)
  {
    if (!v4)
    {
      [WGWidgetLifeCycleSequence transitionToState:];
    }

    v5 = v4[2](v4, a3);
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v5 = [(WGWidgetLifeCycleSequence *)self sequenceIdentifier];
  v6 = WGStringFromWidgetLifeCycleSequenceState([(WGWidgetLifeCycleSequence *)self currentState]);
  v7 = [v3 stringWithFormat:@"<%@: %p sequenceID: %@; currentState: %@", v4, self, v5, v6];;

  previousSequence = self->_previousSequence;
  if (previousSequence)
  {
    v9 = [(WGWidgetLifeCycleSequence *)previousSequence description];
    [v7 appendFormat:@"; _previousSeqeunce: %@", v9];
  }

  [v7 appendString:@">"];

  return v7;
}

- (void)sequenceWithIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_0_1();
  v3 = [MEMORY[0x277CCA890] currentHandler];
  v2 = WGStringFromWidgetLifeCycleSequenceState([v1 currentState]);
  [v3 handleFailureInMethod:v0 object:v1 file:@"WGWidgetLifeCycleSequence.m" lineNumber:39 description:{@"Invalid initial state: %@", v2}];
}

- (void)_isValidTransitionToState:.cold.1()
{
  OUTLINED_FUNCTION_0_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"IsValidState(finalState)" object:? file:? lineNumber:? description:?];
}

- (void)_isValidTransitionToState:.cold.2()
{
  OUTLINED_FUNCTION_0_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"IsValidState([_previousSequence currentState])" object:? file:? lineNumber:? description:?];
}

- (void)_isValidTransitionToState:.cold.3()
{
  OUTLINED_FUNCTION_0_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"IsValidState([self currentState])" object:? file:? lineNumber:? description:?];
}

- (void)_setCurrentState:(unint64_t)a3 .cold.1(void *a1, unint64_t *a2, unint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = [a2 sequenceIdentifier];
  v7 = WGStringFromWidgetLifeCycleSequenceState(a2[1]);
  v8 = WGStringFromWidgetLifeCycleSequenceState(a3);
  v9 = 138544130;
  v10 = v6;
  v11 = 2050;
  v12 = a2;
  v13 = 2114;
  v14 = v7;
  v15 = 2114;
  v16 = v8;
  _os_log_debug_impl(&dword_27425E000, v5, OS_LOG_TYPE_DEBUG, "<%{public}@: %{public}p> Transitioned from '%{public}@' to '%{public}@'", &v9, 0x2Au);
}

- (void)beginTransitionToState:(unint64_t)a3 error:.cold.1(void *a1, unint64_t a2, unint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = WGStringFromWidgetLifeCycleSequenceState(a2);
  v7 = WGStringFromWidgetLifeCycleSequenceState(a3);
  v8 = 138543618;
  v9 = v6;
  v10 = 2114;
  v11 = v7;
  _os_log_error_impl(&dword_27425E000, v5, OS_LOG_TYPE_ERROR, "Invalid transition from '%{public}@' to '%{public}@' attempted", &v8, 0x16u);
}

- (void)transitionToState:.cold.1()
{
  OUTLINED_FUNCTION_0_1();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v1 handleFailureInMethod:@"endTransitionBlock" object:? file:? lineNumber:? description:?];
}

@end