@interface SBClickGestureRecognizer
- (BOOL)_areRequiredPressTypesContainedInSet:(id)a3;
- (SBClickGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (id)gestureStateInfoForUnbalancedPressBeganCount:(int64_t)a3 previousCount:(int64_t)a4;
- (void)_notePressReceivedWithType:(int64_t)a3 phase:(int64_t)a4;
- (void)addShortcutWithPressTypes:(id)a3;
- (void)reset;
- (void)resetShortcutsTracking;
@end

@implementation SBClickGestureRecognizer

- (SBClickGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  v13.receiver = self;
  v13.super_class = SBClickGestureRecognizer;
  v4 = [(SBPressGestureRecognizer *)&v13 initWithTarget:a3 action:a4];
  v5 = v4;
  if (v4)
  {
    v4->_gestureWasRecognized = 0;
    v4->_numberOfClicksRequired = 1;
    v4->_allPressesUpRequired = 1;
    v4->_maximumClickDownDuration = 0.75;
    v4->_maximumBetweenClicksDelay = 0.35;
    v4->_maximumClickFormationDuration = 0.75;
    v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
    shortcutPressTypesSubsets = v5->_shortcutPressTypesSubsets;
    v5->_shortcutPressTypesSubsets = v6;

    v8 = [MEMORY[0x277CBEB58] setWithCapacity:2];
    receivedPressBeganTypes = v5->_receivedPressBeganTypes;
    v5->_receivedPressBeganTypes = v8;

    v10 = [MEMORY[0x277CBEB58] setWithCapacity:2];
    receivedPressEndedTypes = v5->_receivedPressEndedTypes;
    v5->_receivedPressEndedTypes = v10;
  }

  return v5;
}

- (void)reset
{
  v3.receiver = self;
  v3.super_class = SBClickGestureRecognizer;
  [(SBPressGestureRecognizer *)&v3 reset];
  [(SBClickGestureRecognizer *)self resetShortcutsTracking];
  self->_recognizedClicksCount = 0;
  self->_gestureWasRecognized = 0;
}

- (BOOL)_areRequiredPressTypesContainedInSet:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(NSMutableArray *)self->_shortcutPressTypesSubsets count])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = self->_shortcutPressTypesSubsets;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = *v12;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v5);
          }

          if ([*(*(&v11 + 1) + 8 * i) isSubsetOfSet:{v4, v11}])
          {
            LOBYTE(v6) = 1;
            goto LABEL_12;
          }
        }

        v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v9 = [(SBPressGestureRecognizer *)self requiredPressTypesCount];
    LOBYTE(v6) = v9 == [v4 count];
  }

  return v6;
}

- (void)addShortcutWithPressTypes:(id)a3
{
  shortcutPressTypesSubsets = self->_shortcutPressTypesSubsets;
  v4 = [MEMORY[0x277CBEB98] setWithArray:a3];
  [(NSMutableArray *)shortcutPressTypesSubsets addObject:v4];
}

- (void)_notePressReceivedWithType:(int64_t)a3 phase:(int64_t)a4
{
  if ([(SBPressGestureRecognizer *)self latestPressPhase:a3])
  {
    if ([(SBPressGestureRecognizer *)self latestPressPhase]!= 3)
    {
      return;
    }

    v6 = &OBJC_IVAR___SBClickGestureRecognizer__receivedPressEndedTypes;
  }

  else
  {
    v6 = &OBJC_IVAR___SBClickGestureRecognizer__receivedPressBeganTypes;
  }

  v7 = *(&self->super.super.super.isa + *v6);
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [v7 addObject:v8];
}

- (id)gestureStateInfoForUnbalancedPressBeganCount:(int64_t)a3 previousCount:(int64_t)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v7 = objc_alloc_init(SBPressGestureStateInfo);
  [(SBClickGestureRecognizer *)self _notePressReceivedWithType:[(SBPressGestureRecognizer *)self latestPressType] phase:[(SBPressGestureRecognizer *)self latestPressPhase]];
  if (!self->_numberOfClicksRequired || self->_gestureWasRecognized)
  {
    [(SBPressGestureStateInfo *)v7 setState:3];
    goto LABEL_20;
  }

  if (a4 < a3)
  {
    v8 = [(SBClickGestureRecognizer *)self didReceiveRequiredPressBeganCount];
    self->_allPressBeganReceived = v8;
    if (!a4 || v8)
    {
      [(SBPressGestureStateInfo *)v7 setState:0];
      if (self->_allPressBeganReceived)
      {
        v9 = &OBJC_IVAR___SBClickGestureRecognizer__maximumClickDownDuration;
      }

      else
      {
        v9 = &OBJC_IVAR___SBClickGestureRecognizer__maximumClickFormationDuration;
      }

      v10 = *v9;
      goto LABEL_11;
    }

    goto LABEL_17;
  }

  if (a4 <= a3)
  {
LABEL_17:
    [(SBPressGestureStateInfo *)v7 setIsCoalescing:1];
    v13 = [(SBClickGestureRecognizer *)self state];
    v14 = v7;
LABEL_18:
    [(SBPressGestureStateInfo *)v14 setState:v13];
    goto LABEL_19;
  }

  if (!self->_allPressBeganReceived)
  {
    v14 = v7;
    v13 = 5;
    goto LABEL_18;
  }

  recognizedClicksCount = self->_recognizedClicksCount;
  if (!self->_allPressesUpRequired)
  {
    v12 = recognizedClicksCount + 1;
    goto LABEL_27;
  }

  if ([(SBClickGestureRecognizer *)self didReceiveRequiredPressEndedCount])
  {
    v12 = self->_recognizedClicksCount + 1;
LABEL_27:
    self->_recognizedClicksCount = v12;
    goto LABEL_29;
  }

  [(SBPressGestureStateInfo *)v7 setIsCoalescing:1];
  [(SBPressGestureStateInfo *)v7 setState:[(SBClickGestureRecognizer *)self state]];
  v12 = self->_recognizedClicksCount;
LABEL_29:
  if (recognizedClicksCount >= v12)
  {
    goto LABEL_19;
  }

  if (v12 == self->_numberOfClicksRequired)
  {
    v14 = v7;
    v13 = 3;
    goto LABEL_18;
  }

  self->_allPressBeganReceived = 0;
  [(SBClickGestureRecognizer *)self resetShortcutsTracking];
  [(SBPressGestureStateInfo *)v7 setState:0];
  v10 = 416;
LABEL_11:
  [(SBPressGestureStateInfo *)v7 setExpirationTime:*(&self->super.super.super.isa + v10)];
  [(SBPressGestureStateInfo *)v7 setStateUponExpiration:5];
LABEL_19:
  self->_gestureWasRecognized = [(SBPressGestureStateInfo *)v7 state]== 3;
LABEL_20:
  v15 = SBLogButtonsCombo();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v17 = [(SBPressGestureRecognizer *)self name];
    v18 = SBSystemGestureRecognizerStateDescription([(SBPressGestureStateInfo *)v7 state]);
    [(SBPressGestureStateInfo *)v7 expirationTime];
    v20 = v19;
    v21 = SBSystemGestureRecognizerStateDescription([(SBPressGestureStateInfo *)v7 stateUponExpiration]);
    v22 = 138544642;
    v23 = v17;
    v24 = 1024;
    v25 = a3;
    v26 = 1024;
    v27 = a4;
    v28 = 2114;
    v29 = v18;
    v30 = 2048;
    v31 = v20;
    v32 = 2114;
    v33 = v21;
    _os_log_debug_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEBUG, "%{public}@ gestureStateInfoForUnbalancedPressBeganCount:%d previousCount:%d outState:%{public}@ expiration:%g setStateUponExpiration:%{public}@", &v22, 0x36u);
  }

  return v7;
}

- (void)resetShortcutsTracking
{
  [(NSMutableSet *)self->_receivedPressBeganTypes removeAllObjects];
  receivedPressEndedTypes = self->_receivedPressEndedTypes;

  [(NSMutableSet *)receivedPressEndedTypes removeAllObjects];
}

@end