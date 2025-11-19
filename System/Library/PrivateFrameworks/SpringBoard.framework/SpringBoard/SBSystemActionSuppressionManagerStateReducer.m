@interface SBSystemActionSuppressionManagerStateReducer
- (id)_buildSuppressionMetrics;
- (id)_reduceState;
- (id)initWithReduceBlock:(void *)a3 viewObstructionEligibility:(void *)a4 viewObstructionState:(void *)a5 selectedAction:(void *)a6 pocketState:(void *)a7 displayState:(char)a8 isAlwaysOnDisplayEnabled:;
- (uint64_t)isAlwaysOnDisplayEnabled;
- (void)setDisplayState:(void *)a1;
- (void)setIsAlwaysOnDisplayEnabled:(_BYTE *)a1;
- (void)setPocketState:(void *)a1;
- (void)setSelectedAction:(id *)a1;
- (void)setViewObstructionEligibility:(void *)a1;
- (void)setViewObstructionState:(id *)a1;
@end

@implementation SBSystemActionSuppressionManagerStateReducer

- (id)_buildSuppressionMetrics
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = NSStringFromSBSystemActionSuppressionViewObstructionEligibility(self->_viewObstructionEligibility);
  OUTLINED_FUNCTION_6_6();

  pocketState = self->_pocketState;
  if (pocketState > 3)
  {
    v6 = @"Unknown";
  }

  else
  {
    v6 = off_2783BBFB8[pocketState];
  }

  [v3 setObject:v6 forKeyedSubscript:@"pocket_state"];
  v7 = NSStringFromBLSBacklightState();
  OUTLINED_FUNCTION_6_6();

  v8 = [MEMORY[0x277CCABB0] numberWithBool:self->_isAlwaysOnDisplayEnabled];
  OUTLINED_FUNCTION_6_6();

  viewObstructionState = self->_viewObstructionState;
  if (viewObstructionState)
  {
    viewObstructionState = viewObstructionState->_event;
  }

  if (viewObstructionState)
  {
    v10 = self->_viewObstructionState;
    if (v10)
    {
      event = v10->_event;
    }

    else
    {
      event = 0;
    }

    v12 = [(CMSuppressionEvent *)event type];
    if (v12 > 3)
    {
      v13 = @"Suppress";
    }

    else
    {
      v13 = off_2783BBFD8[v12];
    }

    [v3 setObject:v13 forKeyedSubscript:@"event_type"];
    v14 = MEMORY[0x277CCABB0];
    v15 = self->_viewObstructionState;
    if (v15)
    {
      v16 = v15->_event;
    }

    else
    {
      v16 = 0;
    }

    [(CMSuppressionEvent *)v16 timestamp];
    v18 = v17;
    v19 = [MEMORY[0x277CCAC38] processInfo];
    [v19 systemUptime];
    v21 = v20;

    v22 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:v18 - v21];
    [v22 timeIntervalSinceReferenceDate];
    v24 = v23;

    v25 = [v14 numberWithDouble:v24];
    OUTLINED_FUNCTION_6_6();
  }

  v26 = self->_viewObstructionState;
  if (v26)
  {
    v26 = v26->_error;
  }

  if (v26)
  {
    v27 = MEMORY[0x277CCACA8];
    v28 = self->_viewObstructionState;
    if (v28)
    {
      v28 = v28->_error;
    }

    v29 = v28;
    v30 = [(SBSystemActionViewObstructionState *)v29 domain];
    v31 = self->_viewObstructionState;
    if (v31)
    {
      error = v31->_error;
    }

    else
    {
      error = 0;
    }

    v33 = [MEMORY[0x277CCABB0] numberWithInteger:{-[NSError code](error, "code")}];
    v34 = [v27 stringWithFormat:@"%@: %@", v30, v33];
    [v3 setObject:v34 forKeyedSubscript:@"error"];
  }

  v35 = [v3 copy];

  return v35;
}

- (id)_reduceState
{
  v3 = [(SBSystemAction *)self->_selectedAction configuredAction];
  v4 = [v3 sectionIdentifier];
  v5 = [v4 isEqualToString:@"Nothing"];

  if ([MEMORY[0x277CC1D50] isAvailable])
  {
    viewObstructionEligibility = self->_viewObstructionEligibility;
    if (!((viewObstructionEligibility == 2) | v5 & 1) && (viewObstructionEligibility != 1 || self->_isAlwaysOnDisplayEnabled) && (self->_isAlwaysOnDisplayEnabled || ![(SBSystemAction *)self->_selectedAction shouldBePerformedWhenSuppressed]) && !BLSBacklightStateIsActive())
    {
      LOBYTE(v7) = 0;
      v8 = 1;
      if (v5)
      {
        goto LABEL_24;
      }

LABEL_22:
      viewObstructionState = self->_viewObstructionState;
      if (viewObstructionState)
      {
        v11 = viewObstructionState->_event;
        if (v11)
        {
          v17 = v11;
          v18 = self->_viewObstructionState;
          if (v18)
          {
            event = v18->_event;
          }

          else
          {
            event = 0;
          }

          if ([(CMSuppressionEvent *)event type]== 1)
          {
            v9 = 1;
          }

          else
          {
            v9 = 2;
          }

          goto LABEL_25;
        }
      }

      goto LABEL_24;
    }
  }

  if (!(v5 & 1 | (([MEMORY[0x277CC1D28] isPocketStateAvailable] & 1) == 0)) && self->_viewObstructionEligibility)
  {
    v7 = ![(SBSystemAction *)self->_selectedAction shouldBePerformedWhenSuppressed];
    if (v5)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v7 = 0;
    if (v5)
    {
LABEL_11:
      v8 = 0;
LABEL_24:
      v9 = 2;
      goto LABEL_25;
    }
  }

  if (self->_isAlwaysOnDisplayEnabled || ![(SBSystemAction *)self->_selectedAction shouldBePerformedWhenSuppressed])
  {
    v8 = 0;
    if (v7)
    {
      LOBYTE(v7) = 1;
      if ((self->_pocketState | 2) == 3)
      {
        v9 = 1;
        goto LABEL_25;
      }
    }

    goto LABEL_22;
  }

  v8 = 0;
  if (self->_displayState)
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

LABEL_25:
  v12 = [SBSystemActionSuppressionStatus alloc];
  v13 = [(SBSystemActionSuppressionManagerStateReducer *)self _buildSuppressionMetrics];
  v14 = [(SBSystemActionSuppressionStatus *)&v12->super.isa initWithState:v9 metrics:v13];

  v15 = [[SBSystemActionSuppressionManagerState alloc] initWithSuppressionStatus:v14 isEligibleForViewObstructionEvents:v8 canUsePocketStateForSuppression:v7];

  return v15;
}

- (id)initWithReduceBlock:(void *)a3 viewObstructionEligibility:(void *)a4 viewObstructionState:(void *)a5 selectedAction:(void *)a6 pocketState:(void *)a7 displayState:(char)a8 isAlwaysOnDisplayEnabled:
{
  v15 = a2;
  v16 = a4;
  v17 = a5;
  if (a1)
  {
    if (!v15)
    {
      [SBSystemActionSuppressionManagerStateReducer initWithReduceBlock:? viewObstructionEligibility:? viewObstructionState:? selectedAction:? pocketState:? displayState:? isAlwaysOnDisplayEnabled:?];
    }

    if (!v16)
    {
      [SBSystemActionSuppressionManagerStateReducer initWithReduceBlock:? viewObstructionEligibility:? viewObstructionState:? selectedAction:? pocketState:? displayState:? isAlwaysOnDisplayEnabled:?];
    }

    if (!v17)
    {
      [SBSystemActionSuppressionManagerStateReducer initWithReduceBlock:? viewObstructionEligibility:? viewObstructionState:? selectedAction:? pocketState:? displayState:? isAlwaysOnDisplayEnabled:?];
    }

    v23.receiver = a1;
    v23.super_class = SBSystemActionSuppressionManagerStateReducer;
    a1 = objc_msgSendSuper2(&v23, sel_init);
    if (a1)
    {
      v18 = MEMORY[0x223D6F7F0](v15);
      v19 = a1[2];
      a1[2] = v18;

      a1[1] = a3;
      objc_storeStrong(a1 + 4, a4);
      objc_storeStrong(a1 + 5, a5);
      a1[6] = a6;
      a1[7] = a7;
      *(a1 + 24) = a8;
      v20 = a1[2];
      v21 = [a1 _reduceState];
      v20[2](v20, v21);
    }
  }

  return a1;
}

- (void)setViewObstructionState:(id *)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (!v3)
    {
      [SBSystemActionSuppressionManagerStateReducer setViewObstructionState:?];
    }

    v5 = v3;
    [(SBSystemActionSuppressionManagerStateReducer *)a1 setViewObstructionState:v3];
    v4 = v5;
  }
}

- (void)setSelectedAction:(id *)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (!v3)
    {
      [SBSystemActionSuppressionManagerStateReducer setSelectedAction:?];
    }

    v5 = v3;
    [(SBSystemActionSuppressionManagerStateReducer *)a1 setSelectedAction:v3];
    v4 = v5;
  }
}

- (void)setViewObstructionEligibility:(void *)a1
{
  if (a1 && a1[1] != a2)
  {
    a1[1] = a2;
    [a1 _reduceState];
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_0_8();
    v4(v3);
  }
}

- (void)setPocketState:(void *)a1
{
  if (a1 && a1[6] != a2)
  {
    a1[6] = a2;
    [a1 _reduceState];
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_0_8();
    v4(v3);
  }
}

- (void)setDisplayState:(void *)a1
{
  if (a1 && a1[7] != a2)
  {
    a1[7] = a2;
    [a1 _reduceState];
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_0_8();
    v4(v3);
  }
}

- (void)setIsAlwaysOnDisplayEnabled:(_BYTE *)a1
{
  if (a1 && a1[24] != a2)
  {
    a1[24] = a2;
    [a1 _reduceState];
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_0_8();
    v4(v3);
  }
}

- (uint64_t)isAlwaysOnDisplayEnabled
{
  if (a1)
  {
    return OUTLINED_FUNCTION_0_9(*(a1 + 24));
  }

  else
  {
    return OUTLINED_FUNCTION_0_9(0);
  }
}

- (void)initWithReduceBlock:(char *)a1 viewObstructionEligibility:viewObstructionState:selectedAction:pocketState:displayState:isAlwaysOnDisplayEnabled:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_5_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"selectedAction != ((void *)0)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithReduceBlock:(char *)a1 viewObstructionEligibility:viewObstructionState:selectedAction:pocketState:displayState:isAlwaysOnDisplayEnabled:.cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_5_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"viewObstructionState != ((void *)0)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithReduceBlock:(char *)a1 viewObstructionEligibility:viewObstructionState:selectedAction:pocketState:displayState:isAlwaysOnDisplayEnabled:.cold.3(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_5_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"reduceBlock != ((void *)0)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)setViewObstructionState:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_5_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"viewObstructionState != ((void *)0)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)setViewObstructionState:(id *)a1 .cold.2(id *a1, void *a2)
{
  v4 = a1 + 4;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(v4, a2);
    [a1 _reduceState];
    objc_claimAutoreleasedReturnValue();
    v5 = OUTLINED_FUNCTION_3_21();
    v6(v5);
  }
}

- (void)setSelectedAction:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_5_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"selectedAction != ((void *)0)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)setSelectedAction:(id *)a1 .cold.2(id *a1, void *a2)
{
  v4 = a1 + 5;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(v4, a2);
    [a1 _reduceState];
    objc_claimAutoreleasedReturnValue();
    v5 = OUTLINED_FUNCTION_3_21();
    v6(v5);
  }
}

@end