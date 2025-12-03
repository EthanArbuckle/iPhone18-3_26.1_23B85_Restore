@interface SBPressGestureRecognizer
- (SBPressGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (id)_allowedPressTypes;
- (id)_gestureStateInfoForPressInfo:(id)info;
- (id)gestureStateInfoForUnbalancedPressBeganCount:(int64_t)count previousCount:(int64_t)previousCount;
- (id)name;
- (void)_addDelayedPress:(id)press;
- (void)_applyGestureStateInfo:(id)info;
- (void)_cancelGesture;
- (void)_processDelayablePresses:(id)presses;
- (void)_processPrecedencePresses:(id)presses;
- (void)_reallyStartDispatchingDelayedPresses;
- (void)_resetDelayedPresses;
- (void)_resetState;
- (void)_startDispatchingDelayedPresses;
- (void)_stopWaitingGestureStateExpiration;
- (void)_updatePublicPressInfo:(id)info;
- (void)_updateUnbalancedPressBeganTypesWithCurrentPressType:(int64_t)type andPhase:(int64_t)phase result:(int64_t *)result;
- (void)_waitGestureStateExpirationWithFireInterval:(double)interval timerExpiredActionBlock:(id)block;
- (void)dealloc;
- (void)processPresses:(id)presses;
- (void)reset;
- (void)setAllowedPressTypes:(id)types;
- (void)setPressTypesWithPrecedence:(id)precedence;
@end

@implementation SBPressGestureRecognizer

- (SBPressGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  v14.receiver = self;
  v14.super_class = SBPressGestureRecognizer;
  v4 = [(SBPressGestureRecognizer *)&v14 initWithTarget:target action:action];
  if (v4)
  {
    v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:3];
    unbalancedPressBeganTypes = v4->_unbalancedPressBeganTypes;
    v4->_unbalancedPressBeganTypes = v5;

    v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:3];
    delayedPressesInfo = v4->_delayedPressesInfo;
    v4->_delayedPressesInfo = v7;

    v4->_internalGestureState = 0;
    v9 = [MEMORY[0x277CBEB98] set];
    delayablePressTypes = v4->_delayablePressTypes;
    v4->_delayablePressTypes = v9;

    v4->_waitForPreemptionTimeInterval = 0.075;
    v4->_latestDispatchedPressTimestamp = -1.0;
    precedencePressTypes = v4->_precedencePressTypes;
    v4->_precedencePressTypes = 0;

    v4->_isDispatchingPresses = 0;
    v4->_precedencePressesTime = -1.79769313e308;
    [(SBPressGestureRecognizer *)v4 setCancelsTouchesInView:0];
    v12 = MEMORY[0x277CBEBF8];
    [(SBPressGestureRecognizer *)v4 setAllowedTouchTypes:MEMORY[0x277CBEBF8]];
    [(SBPressGestureRecognizer *)v4 setAllowedPressTypes:v12];
  }

  return v4;
}

- (void)dealloc
{
  [(BSAbsoluteMachTimer *)self->_waitingGestureStateExpirationTimer invalidate];
  [(BSAbsoluteMachTimer *)self->_waitingForPreemptionTimer invalidate];
  v3.receiver = self;
  v3.super_class = SBPressGestureRecognizer;
  [(SBPressGestureRecognizer *)&v3 dealloc];
}

- (id)name
{
  v7.receiver = self;
  v7.super_class = SBPressGestureRecognizer;
  name = [(SBPressGestureRecognizer *)&v7 name];
  v3 = name;
  if (name)
  {
    v4 = name;
  }

  else
  {
    v4 = [objc_opt_class() description];
  }

  v5 = v4;

  return v5;
}

- (void)setPressTypesWithPrecedence:(id)precedence
{
  v4 = [MEMORY[0x277CBEB98] setWithArray:precedence];
  precedencePressTypes = self->_precedencePressTypes;
  self->_precedencePressTypes = v4;

  _allowedPressTypes = [(SBPressGestureRecognizer *)self _allowedPressTypes];
  v7.receiver = self;
  v7.super_class = SBPressGestureRecognizer;
  [(SBPressGestureRecognizer *)&v7 setAllowedPressTypes:_allowedPressTypes];
}

- (void)setAllowedPressTypes:(id)types
{
  if (types)
  {
    v4 = [MEMORY[0x277CBEB98] setWithArray:?];
    delayablePressTypes = self->_delayablePressTypes;
    self->_delayablePressTypes = v4;

    _allowedPressTypes = [(SBPressGestureRecognizer *)self _allowedPressTypes];
    v7.receiver = self;
    v7.super_class = SBPressGestureRecognizer;
    [(SBPressGestureRecognizer *)&v7 setAllowedPressTypes:_allowedPressTypes];
  }
}

- (id)_allowedPressTypes
{
  v3 = self->_delayablePressTypes;
  if ([(NSSet *)self->_precedencePressTypes count])
  {
    v4 = [MEMORY[0x277CBEB58] setWithSet:self->_precedencePressTypes];
    [v4 minusSet:self->_delayablePressTypes];
    objc_storeStrong(&self->_precedencePressTypes, v4);
    v5 = [(NSSet *)v3 setByAddingObjectsFromSet:self->_precedencePressTypes];

    if (![(NSSet *)self->_precedencePressTypes count])
    {
      precedencePressTypes = self->_precedencePressTypes;
      self->_precedencePressTypes = 0;
    }

    v3 = v5;
  }

  allObjects = [(NSSet *)v3 allObjects];

  return allObjects;
}

- (void)reset
{
  v3.receiver = self;
  v3.super_class = SBPressGestureRecognizer;
  [(SBPressGestureRecognizer *)&v3 reset];
  [(SBPressGestureRecognizer *)self _resetState];
}

- (void)processPresses:(id)presses
{
  v25 = *MEMORY[0x277D85DE8];
  pressesCopy = presses;
  v19 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSSet count](self->_precedencePressTypes, "count")}];
  v18 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSSet count](self->_delayablePressTypes, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v17 = pressesCopy;
  allObjects = [pressesCopy allObjects];
  v6 = [allObjects countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(allObjects);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        precedencePressTypes = self->_precedencePressTypes;
        v12 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v10, "type")}];
        LODWORD(precedencePressTypes) = [(NSSet *)precedencePressTypes containsObject:v12];

        if (precedencePressTypes)
        {
          phase = [v10 phase];
          v14 = v19;
          if (phase)
          {
            continue;
          }
        }

        else
        {
          delayablePressTypes = self->_delayablePressTypes;
          v16 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v10, "type")}];
          LODWORD(delayablePressTypes) = [(NSSet *)delayablePressTypes containsObject:v16];

          v14 = v18;
          if (!delayablePressTypes)
          {
            continue;
          }
        }

        [v14 addObject:v10];
      }

      v7 = [allObjects countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v7);
  }

  [(SBPressGestureRecognizer *)self _processPrecedencePresses:v19];
  [(SBPressGestureRecognizer *)self _processDelayablePresses:v18];
}

- (void)_processPrecedencePresses:(id)presses
{
  v16 = *MEMORY[0x277D85DE8];
  pressesCopy = presses;
  if ([pressesCopy count])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = pressesCopy;
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v5);
          }

          if (![*(*(&v11 + 1) + 8 * i) phase])
          {
            BSContinuousMachTimeNow();
            self->_precedencePressesTime = v10;
            if (self->_waitingForPreemptionTimer)
            {
              [(SBPressGestureRecognizer *)self _cancelGesture];
            }

            goto LABEL_13;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }
}

- (void)_processDelayablePresses:(id)presses
{
  v42[1] = *MEMORY[0x277D85DE8];
  obj = presses;
  if ([obj count] || -[SBPressGestureRecognizer _didGestureBegin](self, "_didGestureBegin"))
  {
    BSContinuousMachTimeNow();
    v5 = v4;
    precedencePressesTime = self->_precedencePressesTime;
    v27 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"timestamp" ascending:1];
    v42[0] = v27;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:1];
    v8 = [obj sortedArrayUsingDescriptors:v7];

    v9 = SBLogButtonsCombo();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [(SBPressGestureRecognizer *)self _processDelayablePresses:v8];
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = v8;
    v10 = 0;
    v11 = [obj countByEnumeratingWithState:&v31 objects:v41 count:16];
    if (v11)
    {
      v13 = *v32;
      *&v12 = 138543874;
      v26 = v12;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v32 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v31 + 1) + 8 * i);
          if ([v15 phase] == 4)
          {

            [(SBPressGestureRecognizer *)self _cancelGesture];
            goto LABEL_19;
          }

          v16 = [v15 phase] == 0;
          v17 = SBLogButtonsCombo();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            name = [(SBPressGestureRecognizer *)self name];
            type = [v15 type];
            phase = [v15 phase];
            *buf = v26;
            v36 = name;
            v37 = 2048;
            v38 = type;
            v39 = 1024;
            v40 = phase;
            _os_log_debug_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_DEBUG, "QUEUED %{public}@ pressType: %li phase: %i", buf, 0x1Cu);
          }

          [(SBPressGestureRecognizer *)self _addDelayedPress:v15];
          v10 |= v16;
        }

        v11 = [obj countByEnumeratingWithState:&v31 objects:v41 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    if (self->_precedencePressTypes && ![(SBPressGestureRecognizer *)self _didGestureBegin]&& (v10 & 1) != 0)
    {
      if (v5 - precedencePressesTime >= self->_waitForPreemptionTimeInterval)
      {
        if ((v10 & 1) != 0 && !self->_waitingForPreemptionTimer)
        {
          objc_initWeak(buf, self);
          v21 = [objc_alloc(MEMORY[0x277CF0B50]) initWithIdentifier:@"SBPressGestureRecognizer.waitingForPreemptionTimer"];
          waitingForPreemptionTimer = self->_waitingForPreemptionTimer;
          self->_waitingForPreemptionTimer = v21;

          v23 = self->_waitingForPreemptionTimer;
          waitForPreemptionTimeInterval = self->_waitForPreemptionTimeInterval;
          v25 = MEMORY[0x277D85CD0];
          v29[0] = MEMORY[0x277D85DD0];
          v29[1] = 3221225472;
          v29[2] = __53__SBPressGestureRecognizer__processDelayablePresses___block_invoke;
          v29[3] = &unk_2783A9918;
          objc_copyWeak(&v30, buf);
          [(BSAbsoluteMachTimer *)v23 scheduleWithFireInterval:MEMORY[0x277D85CD0] leewayInterval:v29 queue:waitForPreemptionTimeInterval handler:0.0];

          objc_destroyWeak(&v30);
          objc_destroyWeak(buf);
        }
      }

      else
      {
        [(SBPressGestureRecognizer *)self _cancelGesture];
      }
    }

    else
    {
      [(SBPressGestureRecognizer *)self _startDispatchingDelayedPresses];
    }

LABEL_19:
  }

  else
  {
    [(SBPressGestureRecognizer *)self _cancelGesture];
  }
}

void __53__SBPressGestureRecognizer__processDelayablePresses___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _startDispatchingDelayedPresses];
}

- (void)_addDelayedPress:(id)press
{
  pressCopy = press;
  v7 = objc_alloc_init(SBDelayedPressInfo);
  -[SBDelayedPressInfo setType:](v7, "setType:", [pressCopy type]);
  -[SBDelayedPressInfo setPhase:](v7, "setPhase:", [pressCopy phase]);
  [pressCopy timestamp];
  v6 = v5;

  [(SBDelayedPressInfo *)v7 setTimestamp:v6];
  [(NSMutableArray *)self->_delayedPressesInfo addObject:v7];
}

- (void)_startDispatchingDelayedPresses
{
  [(BSAbsoluteMachTimer *)self->_waitingForPreemptionTimer invalidate];
  waitingForPreemptionTimer = self->_waitingForPreemptionTimer;
  self->_waitingForPreemptionTimer = 0;

  if (![(SBPressGestureRecognizer *)self _isDispatchingDelayedPresses]&& [(SBPressGestureRecognizer *)self _delayedPressesCount]>= 1)
  {

    [(SBPressGestureRecognizer *)self _reallyStartDispatchingDelayedPresses];
  }
}

- (void)_reallyStartDispatchingDelayedPresses
{
  v6[1] = *MEMORY[0x277D85DE8];
  if ([(SBPressGestureRecognizer *)self _shouldStopDispatching])
  {
    self->_isDispatchingPresses = 0;
  }

  else
  {
    self->_isDispatchingPresses = 1;
    firstObject = [(NSMutableArray *)self->_delayedPressesInfo firstObject];
    [(SBPressGestureRecognizer *)self _updatePublicPressInfo:firstObject];
    v4 = [(SBPressGestureRecognizer *)self _gestureStateInfoForPressInfo:firstObject];
    [(SBPressGestureRecognizer *)self _applyGestureStateInfo:v4];
    [(NSMutableArray *)self->_delayedPressesInfo removeObject:firstObject];
    if ([(SBPressGestureRecognizer *)self _shouldStopDispatching])
    {
      self->_isDispatchingPresses = 0;
    }

    else if (self->_internalGestureState)
    {
      v6[0] = *MEMORY[0x277CBE738];
      v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
      [(SBPressGestureRecognizer *)self performSelector:sel__reallyStartDispatchingDelayedPresses withObject:0 afterDelay:v5 inModes:0.0];
    }

    else
    {
      [(SBPressGestureRecognizer *)self _reallyStartDispatchingDelayedPresses];
    }
  }
}

- (void)_resetDelayedPresses
{
  [(BSAbsoluteMachTimer *)self->_waitingForPreemptionTimer invalidate];
  waitingForPreemptionTimer = self->_waitingForPreemptionTimer;
  self->_waitingForPreemptionTimer = 0;

  [(NSMutableArray *)self->_delayedPressesInfo removeAllObjects];
  unbalancedPressBeganTypes = self->_unbalancedPressBeganTypes;

  [(NSMutableArray *)unbalancedPressBeganTypes removeAllObjects];
}

- (id)_gestureStateInfoForPressInfo:(id)info
{
  unbalancedPressBeganTypes = self->_unbalancedPressBeganTypes;
  infoCopy = info;
  v6 = [(NSMutableArray *)unbalancedPressBeganTypes count];
  v12 = 0;
  type = [infoCopy type];
  phase = [infoCopy phase];

  [(SBPressGestureRecognizer *)self _updateUnbalancedPressBeganTypesWithCurrentPressType:type andPhase:phase result:&v12];
  if ((v12 - 3) > 1)
  {
    v10 = [(SBPressGestureRecognizer *)self gestureStateInfoForUnbalancedPressBeganCount:[(NSMutableArray *)self->_unbalancedPressBeganTypes count] previousCount:v6];
  }

  else
  {
    if (self->_internalGestureState > 0)
    {
      v9 = 4;
    }

    else
    {
      v9 = 5;
    }

    v10 = objc_alloc_init(SBPressGestureStateInfo);
    [(SBPressGestureStateInfo *)v10 setState:v9];
  }

  return v10;
}

- (void)_updateUnbalancedPressBeganTypesWithCurrentPressType:(int64_t)type andPhase:(int64_t)phase result:(int64_t *)result
{
  v25 = *MEMORY[0x277D85DE8];
  *result = 0;
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:type];
  v9 = [(NSMutableArray *)self->_unbalancedPressBeganTypes indexOfObject:v8];
  v10 = v9;
  if (phase == 3)
  {
    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = SBLogButtonsCombo();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        [SBPressGestureRecognizer _updateUnbalancedPressBeganTypesWithCurrentPressType:andPhase:result:];
      }

      v13 = 4;
    }

    else
    {
      [(NSMutableArray *)self->_unbalancedPressBeganTypes removeObjectAtIndex:v9];
      v16 = SBLogButtonsCombo();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        [SBPressGestureRecognizer _updateUnbalancedPressBeganTypesWithCurrentPressType:andPhase:result:];
      }

      v13 = 2;
    }

    goto LABEL_20;
  }

  if (!phase)
  {
    v11 = SBLogButtonsCombo();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);
    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v12)
      {
        [SBPressGestureRecognizer _updateUnbalancedPressBeganTypesWithCurrentPressType:andPhase:result:];
      }

      [(NSMutableArray *)self->_unbalancedPressBeganTypes addObject:v8];
      v13 = 1;
    }

    else
    {
      if (v12)
      {
        [SBPressGestureRecognizer _updateUnbalancedPressBeganTypesWithCurrentPressType:andPhase:result:];
      }

      [(NSMutableArray *)self->_unbalancedPressBeganTypes removeObjectAtIndex:v10];
      v13 = 3;
    }

LABEL_20:
    *result = v13;
    goto LABEL_21;
  }

  v15 = SBLogButtonsCombo();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    sb_briefDescription = [(UIGestureRecognizer *)self sb_briefDescription];
    v18 = [MEMORY[0x277CCABB0] numberWithInteger:phase];
    v19 = 138543874;
    v20 = sb_briefDescription;
    v21 = 2114;
    v22 = v8;
    v23 = 2114;
    v24 = v18;
    _os_log_debug_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEBUG, "%{public}@ _updateUnbalanced type:%{public}@ phase is %{public}@, ignoring", &v19, 0x20u);
  }

LABEL_21:
}

- (void)_applyGestureStateInfo:(id)info
{
  infoCopy = info;
  state = [infoCopy state];
  isCoalescing = [infoCopy isCoalescing];
  self->_internalGestureState = state;
  _isGestureFailedOrCancelled = [(SBPressGestureRecognizer *)self _isGestureFailedOrCancelled];
  if ((isCoalescing & 1) == 0 && !_isGestureFailedOrCancelled)
  {
    [(SBPressGestureRecognizer *)self _stopWaitingGestureStateExpiration];
    [infoCopy expirationTime];
    if (v8 != -1.0)
    {
      [infoCopy expirationTime];
      v10 = v9;
      v11 = objc_alloc_init(SBPressGestureStateInfo);
      -[SBPressGestureStateInfo setState:](v11, "setState:", [infoCopy stateUponExpiration]);
      v12 = SBLogButtonsCombo();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [SBPressGestureRecognizer _applyGestureStateInfo:];
      }

      v16 = MEMORY[0x277D85DD0];
      v17 = 3221225472;
      v18 = __51__SBPressGestureRecognizer__applyGestureStateInfo___block_invoke;
      v19 = &unk_2783A92D8;
      selfCopy = self;
      v21 = v11;
      v13 = v11;
      v14 = MEMORY[0x223D6F7F0](&v16);
      [(SBPressGestureRecognizer *)self _waitGestureStateExpirationWithFireInterval:v14 timerExpiredActionBlock:v10, v16, v17, v18, v19, selfCopy];
    }
  }

  v15 = SBLogButtonsCombo();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [SBPressGestureRecognizer _applyGestureStateInfo:];
  }

  [(SBPressGestureRecognizer *)self setState:self->_internalGestureState];
}

uint64_t __51__SBPressGestureRecognizer__applyGestureStateInfo___block_invoke(uint64_t a1)
{
  v2 = SBLogButtonsCombo();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __51__SBPressGestureRecognizer__applyGestureStateInfo___block_invoke_cold_1(a1);
  }

  return [*(a1 + 32) _applyGestureStateInfo:*(a1 + 40)];
}

- (void)_updatePublicPressInfo:(id)info
{
  infoCopy = info;
  v6 = infoCopy;
  if (infoCopy)
  {
    self->_latestDispatchedPressType = [infoCopy type];
    self->_latestDispatchedPressPhase = [v6 phase];
    [v6 timestamp];
    self->_latestDispatchedPressTimestamp = v5;
  }

  else
  {
    [(SBPressGestureRecognizer *)self _resetPublishedPressInfo];
  }
}

- (void)_waitGestureStateExpirationWithFireInterval:(double)interval timerExpiredActionBlock:(id)block
{
  blockCopy = block;
  v7 = SBLogButtonsCombo();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [SBPressGestureRecognizer _waitGestureStateExpirationWithFireInterval:? timerExpiredActionBlock:?];
  }

  [(BSAbsoluteMachTimer *)self->_waitingGestureStateExpirationTimer invalidate];
  v8 = [objc_alloc(MEMORY[0x277CF0B50]) initWithIdentifier:@"SBPressGestureRecognizer.waitingGestureStateExpirationTimer"];
  waitingGestureStateExpirationTimer = self->_waitingGestureStateExpirationTimer;
  self->_waitingGestureStateExpirationTimer = v8;

  v10 = self->_waitingGestureStateExpirationTimer;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __96__SBPressGestureRecognizer__waitGestureStateExpirationWithFireInterval_timerExpiredActionBlock___block_invoke;
  v12[3] = &unk_2783C5430;
  v13 = blockCopy;
  v11 = blockCopy;
  [(BSAbsoluteMachTimer *)v10 scheduleWithFireInterval:MEMORY[0x277D85CD0] leewayInterval:v12 queue:interval handler:0.0];
}

- (void)_stopWaitingGestureStateExpiration
{
  sb_briefDescription = [self sb_briefDescription];
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)_cancelGesture
{
  internalGestureState = self->_internalGestureState;
  if (internalGestureState <= 2)
  {
    if (internalGestureState > 0)
    {
      v5 = 4;
    }

    else
    {
      v5 = 5;
    }

    v6 = objc_alloc_init(SBPressGestureStateInfo);
    [(SBPressGestureStateInfo *)v6 setState:v5];
    [(SBPressGestureRecognizer *)self _updatePublicPressInfo:0];
    [(SBPressGestureRecognizer *)self _applyGestureStateInfo:v6];
  }
}

- (void)_resetState
{
  OUTLINED_FUNCTION_5_1();
  sb_briefDescription = [v1 sb_briefDescription];
  v3 = SBSystemGestureRecognizerStateDescription(*v0);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (id)gestureStateInfoForUnbalancedPressBeganCount:(int64_t)count previousCount:(int64_t)previousCount
{
  v7 = objc_alloc_init(SBPressGestureStateInfo);
  v8 = v7;
  if (!previousCount)
  {
    if (count > 0)
    {
      state = 1;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (count)
  {
    if (count != previousCount)
    {
      state = 2;
      goto LABEL_9;
    }

LABEL_7:
    [(SBPressGestureStateInfo *)v7 setIsCoalescing:1];
    state = [(SBPressGestureRecognizer *)self state];
    goto LABEL_9;
  }

  state = 3;
LABEL_9:
  [(SBPressGestureStateInfo *)v8 setState:state];

  return v8;
}

- (void)_processDelayablePresses:(void *)a1 .cold.1(void *a1, void *a2)
{
  v8 = [a1 name];
  [a2 count];
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x12u);
}

- (void)_updateUnbalancedPressBeganTypesWithCurrentPressType:andPhase:result:.cold.1()
{
  OUTLINED_FUNCTION_5_1();
  v1 = [v0 sb_briefDescription];
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)_updateUnbalancedPressBeganTypesWithCurrentPressType:andPhase:result:.cold.2()
{
  OUTLINED_FUNCTION_5_1();
  v1 = [v0 sb_briefDescription];
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)_updateUnbalancedPressBeganTypesWithCurrentPressType:andPhase:result:.cold.3()
{
  OUTLINED_FUNCTION_5_1();
  v1 = [v0 sb_briefDescription];
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)_updateUnbalancedPressBeganTypesWithCurrentPressType:andPhase:result:.cold.4()
{
  OUTLINED_FUNCTION_5_1();
  v1 = [v0 sb_briefDescription];
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)_applyGestureStateInfo:.cold.1()
{
  OUTLINED_FUNCTION_5_1();
  v2 = [v1 sb_briefDescription];
  v3 = SBSystemGestureRecognizerStateDescription([v0 stateUponExpiration]);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)_applyGestureStateInfo:.cold.2()
{
  OUTLINED_FUNCTION_5_1();
  v2 = [v1 sb_briefDescription];
  v3 = SBSystemGestureRecognizerStateDescription(*v0);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

void __51__SBPressGestureRecognizer__applyGestureStateInfo___block_invoke_cold_1(uint64_t a1)
{
  v6 = [*(a1 + 32) sb_briefDescription];
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)_waitGestureStateExpirationWithFireInterval:(void *)a1 timerExpiredActionBlock:.cold.1(void *a1)
{
  v6 = [a1 sb_briefDescription];
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

@end