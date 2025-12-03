@interface SBHIDValueModifyingButtonSetArbiter
- (BOOL)processKeyboardEvent:(__IOHIDEvent *)event;
- (SBHIDValueModifyingButtonSetArbiter)initWithHIDKeyPressEventUsages:(id)usages initialRepeatDelay:(double)delay subsequentRepeatDelay:(double)repeatDelay;
- (SBHIDValueModifyingButtonSetArbiterDelegate)delegate;
- (void)_invalidateRepeatingActionTimer;
- (void)_performActionForButton:(id)button;
- (void)_startRepeatingActionTimer;
- (void)dealloc;
- (void)performActionsForButtonDown:(id)down;
- (void)performActionsForButtonLongPress:(id)press;
- (void)performActionsForButtonUp:(id)up;
- (void)reset;
@end

@implementation SBHIDValueModifyingButtonSetArbiter

- (SBHIDValueModifyingButtonSetArbiter)initWithHIDKeyPressEventUsages:(id)usages initialRepeatDelay:(double)delay subsequentRepeatDelay:(double)repeatDelay
{
  v34 = *MEMORY[0x277D85DE8];
  usagesCopy = usages;
  v32.receiver = self;
  v32.super_class = SBHIDValueModifyingButtonSetArbiter;
  v9 = [(SBHIDValueModifyingButtonSetArbiter *)&v32 init];
  v10 = v9;
  if (v9)
  {
    if (repeatDelay > 0.0 && delay == 0.0)
    {
      delay = repeatDelay;
    }

    v9->_initialRepeatDelay = delay;
    v9->_subsequentRepeatDelay = repeatDelay;
    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    obj = usagesCopy;
    v14 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v29;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v29 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v28 + 1) + 8 * i);
          v19 = objc_alloc_init(SBHIDButtonStateArbiter);
          [(SBHIDButtonStateArbiter *)v19 setLongPressTimeout:delay];
          [(SBHIDButtonStateArbiter *)v19 setDelegate:v10];
          v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v18, "unsignedIntValue")}];
          [(NSDictionary *)v12 setObject:v19 forKeyedSubscript:v20];

          v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v18, "unsignedIntValue")}];
          v22 = [MEMORY[0x277CCAE60] valueWithPointer:v19];
          [(NSDictionary *)v13 setObject:v21 forKeyedSubscript:v22];
        }

        v15 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v15);
    }

    usageToButtonDictionary = v10->_usageToButtonDictionary;
    v10->_usageToButtonDictionary = v12;
    v24 = v12;

    buttonToUsageDictionary = v10->_buttonToUsageDictionary;
    v10->_buttonToUsageDictionary = v13;
  }

  return v10;
}

- (void)dealloc
{
  [(BSAbsoluteMachTimer *)self->_timer invalidate];
  v3.receiver = self;
  v3.super_class = SBHIDValueModifyingButtonSetArbiter;
  [(SBHIDValueModifyingButtonSetArbiter *)&v3 dealloc];
}

- (BOOL)processKeyboardEvent:(__IOHIDEvent *)event
{
  IntegerValue = IOHIDEventGetIntegerValue();
  v6 = IOHIDEventGetIntegerValue();
  usageToButtonDictionary = self->_usageToButtonDictionary;
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v6 | (IntegerValue << 16)];
  v9 = [(NSDictionary *)usageToButtonDictionary objectForKeyedSubscript:v8];

  if (v9)
  {
    [v9 processEvent:event];
  }

  return v9 != 0;
}

- (void)reset
{
  [(SBHIDValueModifyingButtonSetArbiter *)self _invalidateRepeatingActionTimer];
  [(SBHIDButtonStateArbiter *)self->_currentDownButton reset];
  currentDownButton = self->_currentDownButton;
  self->_currentDownButton = 0;

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained buttonSetArbiterDidReset:self];
  }
}

- (void)performActionsForButtonUp:(id)up
{
  if (self->_currentDownButton == up)
  {
    [(SBHIDValueModifyingButtonSetArbiter *)self reset];
    currentDownButton = self->_currentDownButton;
    self->_currentDownButton = 0;
  }
}

- (void)performActionsForButtonDown:(id)down
{
  downCopy = down;
  [(SBHIDValueModifyingButtonSetArbiter *)self _invalidateRepeatingActionTimer];
  currentDownButton = self->_currentDownButton;
  if (currentDownButton)
  {
    v6 = currentDownButton == downCopy;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    [(SBHIDButtonStateArbiter *)currentDownButton reset];
  }

  v7 = self->_currentDownButton;
  self->_currentDownButton = downCopy;
  v8 = downCopy;

  [(SBHIDValueModifyingButtonSetArbiter *)self _performActionForButton:v8];
}

- (void)performActionsForButtonLongPress:(id)press
{
  pressCopy = press;
  if (self->_currentDownButton != pressCopy)
  {
    [(SBHIDValueModifyingButtonSetArbiter *)a2 performActionsForButtonLongPress:?];
  }

  [(SBHIDValueModifyingButtonSetArbiter *)self _performActionForButton:?];
  [(SBHIDValueModifyingButtonSetArbiter *)self _startRepeatingActionTimer];
}

- (void)_performActionForButton:(id)button
{
  buttonToUsageDictionary = self->_buttonToUsageDictionary;
  v5 = [MEMORY[0x277CCAE60] valueWithPointer:button];
  v9 = [(NSDictionary *)buttonToUsageDictionary objectForKeyedSubscript:v5];

  unsignedIntValue = [v9 unsignedIntValue];
  LOWORD(buttonToUsageDictionary) = unsignedIntValue;
  v7 = HIWORD(unsignedIntValue);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained buttonSetArbiter:self performActionForButtonPage:v7 usage:buttonToUsageDictionary];
}

- (void)_startRepeatingActionTimer
{
  if (self->_subsequentRepeatDelay > 0.0)
  {
    objc_initWeak(&location, self);
    v3 = [objc_alloc(MEMORY[0x277CF0B50]) initWithIdentifier:@"SBHIDValueModifyingButtonSetArbiter.timer"];
    timer = self->_timer;
    self->_timer = v3;

    v5 = self->_timer;
    subsequentRepeatDelay = self->_subsequentRepeatDelay;
    v7 = MEMORY[0x277D85CD0];
    v8 = MEMORY[0x277D85CD0];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __65__SBHIDValueModifyingButtonSetArbiter__startRepeatingActionTimer__block_invoke;
    v9[3] = &unk_2783A9918;
    objc_copyWeak(&v10, &location);
    [(BSAbsoluteMachTimer *)v5 scheduleRepeatingWithFireInterval:v7 repeatInterval:v9 leewayInterval:subsequentRepeatDelay queue:subsequentRepeatDelay handler:0.01];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void __65__SBHIDValueModifyingButtonSetArbiter__startRepeatingActionTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _fireRepeatingActionTimer];
}

- (void)_invalidateRepeatingActionTimer
{
  [(BSAbsoluteMachTimer *)self->_timer invalidate];
  timer = self->_timer;
  self->_timer = 0;
}

- (SBHIDValueModifyingButtonSetArbiterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)performActionsForButtonLongPress:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBHIDValueModifyingButtonSetArbiter.m" lineNumber:115 description:@"bug somewhere in this class"];
}

@end