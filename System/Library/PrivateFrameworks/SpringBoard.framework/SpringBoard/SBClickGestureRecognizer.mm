@interface SBClickGestureRecognizer
- (BOOL)_areRequiredPressTypesContainedInSet:(id)set;
- (SBClickGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (id)gestureStateInfoForUnbalancedPressBeganCount:(int64_t)count previousCount:(int64_t)previousCount;
- (void)_notePressReceivedWithType:(int64_t)type phase:(int64_t)phase;
- (void)addShortcutWithPressTypes:(id)types;
- (void)reset;
- (void)resetShortcutsTracking;
@end

@implementation SBClickGestureRecognizer

- (SBClickGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  v13.receiver = self;
  v13.super_class = SBClickGestureRecognizer;
  v4 = [(SBPressGestureRecognizer *)&v13 initWithTarget:target action:action];
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

- (BOOL)_areRequiredPressTypesContainedInSet:(id)set
{
  v16 = *MEMORY[0x277D85DE8];
  setCopy = set;
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

          if ([*(*(&v11 + 1) + 8 * i) isSubsetOfSet:{setCopy, v11}])
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
    requiredPressTypesCount = [(SBPressGestureRecognizer *)self requiredPressTypesCount];
    LOBYTE(v6) = requiredPressTypesCount == [setCopy count];
  }

  return v6;
}

- (void)addShortcutWithPressTypes:(id)types
{
  shortcutPressTypesSubsets = self->_shortcutPressTypesSubsets;
  v4 = [MEMORY[0x277CBEB98] setWithArray:types];
  [(NSMutableArray *)shortcutPressTypesSubsets addObject:v4];
}

- (void)_notePressReceivedWithType:(int64_t)type phase:(int64_t)phase
{
  if ([(SBPressGestureRecognizer *)self latestPressPhase:type])
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
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:type];
  [v7 addObject:v8];
}

- (id)gestureStateInfoForUnbalancedPressBeganCount:(int64_t)count previousCount:(int64_t)previousCount
{
  v34 = *MEMORY[0x277D85DE8];
  v7 = objc_alloc_init(SBPressGestureStateInfo);
  [(SBClickGestureRecognizer *)self _notePressReceivedWithType:[(SBPressGestureRecognizer *)self latestPressType] phase:[(SBPressGestureRecognizer *)self latestPressPhase]];
  if (!self->_numberOfClicksRequired || self->_gestureWasRecognized)
  {
    [(SBPressGestureStateInfo *)v7 setState:3];
    goto LABEL_20;
  }

  if (previousCount < count)
  {
    didReceiveRequiredPressBeganCount = [(SBClickGestureRecognizer *)self didReceiveRequiredPressBeganCount];
    self->_allPressBeganReceived = didReceiveRequiredPressBeganCount;
    if (!previousCount || didReceiveRequiredPressBeganCount)
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

  if (previousCount <= count)
  {
LABEL_17:
    [(SBPressGestureStateInfo *)v7 setIsCoalescing:1];
    state = [(SBClickGestureRecognizer *)self state];
    v14 = v7;
LABEL_18:
    [(SBPressGestureStateInfo *)v14 setState:state];
    goto LABEL_19;
  }

  if (!self->_allPressBeganReceived)
  {
    v14 = v7;
    state = 5;
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
    state = 3;
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
    name = [(SBPressGestureRecognizer *)self name];
    v18 = SBSystemGestureRecognizerStateDescription([(SBPressGestureStateInfo *)v7 state]);
    [(SBPressGestureStateInfo *)v7 expirationTime];
    v20 = v19;
    v21 = SBSystemGestureRecognizerStateDescription([(SBPressGestureStateInfo *)v7 stateUponExpiration]);
    v22 = 138544642;
    v23 = name;
    v24 = 1024;
    countCopy = count;
    v26 = 1024;
    previousCountCopy = previousCount;
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