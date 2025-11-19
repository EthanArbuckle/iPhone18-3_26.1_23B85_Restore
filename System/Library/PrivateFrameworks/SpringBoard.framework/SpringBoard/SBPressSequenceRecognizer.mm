@interface SBPressSequenceRecognizer
- (SBPressSequenceRecognizer)init;
- (SBPressSequenceRecognizer)initWithValidator:(id)a3 numberOfPresses:(unint64_t)a4;
- (SBPressSequenceRecognizerDelegate)delegate;
- (void)_complete;
- (void)_handlePressDownWithTimestamp:(double)a3;
- (void)_handlePressUpWithTimestamp:(double)a3;
- (void)_reset;
- (void)_resetAfterDelay:(double)a3;
- (void)_resetAndNotify;
- (void)_resetWatchdogIfNecessary;
- (void)dealloc;
- (void)registerPressDownWithTimestamp:(double)a3;
- (void)registerPressUpWithTimestamp:(double)a3;
- (void)resetWithNewValidator:(id)a3 numberOfPresses:(unint64_t)a4;
@end

@implementation SBPressSequenceRecognizer

- (SBPressSequenceRecognizer)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"SBPressSequenceRecognizer.m" lineNumber:35 description:@"Use initWithValidator:"];

  return [(SBPressSequenceRecognizer *)self initWithValidator:0 numberOfPresses:0];
}

- (SBPressSequenceRecognizer)initWithValidator:(id)a3 numberOfPresses:(unint64_t)a4
{
  v8 = a3;
  if (!v8)
  {
    [SBPressSequenceRecognizer initWithValidator:a2 numberOfPresses:self];
  }

  v14.receiver = self;
  v14.super_class = SBPressSequenceRecognizer;
  v9 = [(SBPressSequenceRecognizer *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_validator, a3);
    v10->_numberOfPresses = a4;
    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    currentSequence = v10->_currentSequence;
    v10->_currentSequence = v11;
  }

  return v10;
}

- (void)dealloc
{
  [(BSAbsoluteMachTimer *)self->_watchdogTimer invalidate];
  v3.receiver = self;
  v3.super_class = SBPressSequenceRecognizer;
  [(SBPressSequenceRecognizer *)&v3 dealloc];
}

- (void)registerPressDownWithTimestamp:(double)a3
{
  if (self->_currentPressTuple)
  {
    [(SBPressSequenceRecognizer *)self _handlePressDownWithTimestamp:a3];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained pressSequenceRecognizer:self didBeginPressDownAtIndex:0];
  }

  self->_lastPressDownEvent = a3;
}

- (void)registerPressUpWithTimestamp:(double)a3
{
  if (!self->_currentPressTuple && (BSFloatIsZero() & 1) == 0)
  {
    [(SBPressSequenceRecognizer *)self _handlePressUpWithTimestamp:a3];
  }

  self->_lastPressUpEvent = a3;
}

- (void)resetWithNewValidator:(id)a3 numberOfPresses:(unint64_t)a4
{
  objc_storeStrong(&self->_validator, a3);
  self->_numberOfPresses = a4;

  [(SBPressSequenceRecognizer *)self _resetAndNotify];
}

- (void)_handlePressDownWithTimestamp:(double)a3
{
  [(SBPressSequenceRecognizer *)self _resetWatchdogIfNecessary];
  v5 = a3 - self->_lastPressUpEvent;
  validator = self->_validator;
  v7 = [(NSMutableArray *)self->_currentSequence copy];
  LODWORD(validator) = [(SBPressSequenceValidator *)validator pressEventIsValidInSequence:v7 endingDownEvent:0 duration:v5];

  if (validator)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained pressSequenceRecognizer:self didBeginPressDownAtIndex:{-[NSMutableArray indexOfObject:](self->_currentSequence, "indexOfObject:", self->_currentPressTuple) + 1}];

    [(SBPressTuple *)self->_currentPressTuple setDurationUp:v5];
    currentPressTuple = self->_currentPressTuple;
    self->_currentPressTuple = 0;

    [(SBPressSequenceValidator *)self->_validator timeUntilNextPressEventIsInValidInSequence:self->_currentSequence lastPressEventInSequenceIsDown:0];
  }

  else
  {
    v11 = SBLogButtonsCombo();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [SBPressSequenceRecognizer _handlePressDownWithTimestamp:];
    }

    v10 = 0.0;
  }

  [(SBPressSequenceRecognizer *)self _resetAfterDelay:v10];
}

- (void)_handlePressUpWithTimestamp:(double)a3
{
  [(SBPressSequenceRecognizer *)self _resetWatchdogIfNecessary];
  v5 = a3 - self->_lastPressDownEvent;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __57__SBPressSequenceRecognizer__handlePressUpWithTimestamp___block_invoke;
  v10[3] = &unk_2783BFD90;
  v10[4] = self;
  *&v10[5] = v5;
  v6 = MEMORY[0x223D6F7F0](v10);
  v7 = v6[2]();
  v8 = [(NSMutableArray *)self->_currentSequence count];
  v9 = v8;
  if (!v7)
  {
    [(SBPressSequenceRecognizer *)self _reset];
    if (v9)
    {
      [(SBPressSequenceRecognizer *)self _resetAndNotify];
      goto LABEL_8;
    }

    if (((v6[2])(v6) & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_7:
    [(SBPressSequenceValidator *)self->_validator timeUntilNextPressEventIsInValidInSequence:self->_currentSequence lastPressEventInSequenceIsDown:1];
    [(SBPressSequenceRecognizer *)self _resetAfterDelay:?];
    goto LABEL_8;
  }

  if (v8 != self->_numberOfPresses)
  {
    goto LABEL_7;
  }

  [(SBPressSequenceRecognizer *)self _complete];
LABEL_8:
}

uint64_t __57__SBPressSequenceRecognizer__handlePressUpWithTimestamp___block_invoke(uint64_t a1)
{
  v3 = a1 + 32;
  v2 = *(a1 + 32);
  v4 = *(v2 + 56);
  v5 = [*(v2 + 40) copy];
  v6 = [v4 pressEventIsValidInSequence:v5 endingDownEvent:1 duration:*(v3 + 8)];

  if (v6)
  {
    v7 = [[SBPressTuple alloc] initWithDurationDown:*(a1 + 40) durationUp:0.0];
    v8 = *(a1 + 32);
    v9 = *(v8 + 32);
    *(v8 + 32) = v7;

    [*(*(a1 + 32) + 40) addObject:*(*(a1 + 32) + 32)];
    v10 = SBLogButtonsCombo();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      __57__SBPressSequenceRecognizer__handlePressUpWithTimestamp___block_invoke_cold_2(v3);
    }
  }

  else
  {
    v10 = SBLogButtonsCombo();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      __57__SBPressSequenceRecognizer__handlePressUpWithTimestamp___block_invoke_cold_1();
    }
  }

  return v6;
}

- (void)_complete
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained pressSequenceRecognizerDidCompleteSequence:self];

  [(SBPressSequenceRecognizer *)self _reset];
}

- (void)_reset
{
  v0 = objc_opt_class();
  v6 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)_resetAndNotify
{
  [(SBPressSequenceRecognizer *)self _reset];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained pressSequenceRecognizerDidFail:self];
}

- (void)_resetWatchdogIfNecessary
{
  watchdogTimer = self->_watchdogTimer;
  if (watchdogTimer)
  {
    [(BSAbsoluteMachTimer *)watchdogTimer invalidate];
    v4 = self->_watchdogTimer;
    self->_watchdogTimer = 0;
  }
}

- (void)_resetAfterDelay:(double)a3
{
  if (BSFloatLessThanOrEqualToFloat())
  {

    [(SBPressSequenceRecognizer *)self _resetAndNotify];
  }

  else
  {
    objc_initWeak(&location, self);
    v5 = [objc_alloc(MEMORY[0x277CF0B50]) initWithIdentifier:@"SBPressSequenceRecognizer.watchdogTimer"];
    watchdogTimer = self->_watchdogTimer;
    self->_watchdogTimer = v5;

    v7 = self->_watchdogTimer;
    [(SBPressSequenceRecognizer *)self _watchdogTimeIntervalFromDelay:a3];
    v9 = v8;
    v10 = MEMORY[0x277D85CD0];
    v11 = MEMORY[0x277D85CD0];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __46__SBPressSequenceRecognizer__resetAfterDelay___block_invoke;
    v12[3] = &unk_2783A9918;
    objc_copyWeak(&v13, &location);
    [(BSAbsoluteMachTimer *)v7 scheduleWithFireInterval:v10 leewayInterval:v12 queue:v9 handler:0.0];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

void __46__SBPressSequenceRecognizer__resetAfterDelay___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _resetAndNotify];
}

- (SBPressSequenceRecognizerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithValidator:(uint64_t)a1 numberOfPresses:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBPressSequenceRecognizer.m" lineNumber:40 description:@"SBPressSequenceRecognizer must be given non nil validator"];
}

- (void)_handlePressDownWithTimestamp:.cold.1()
{
  v0 = objc_opt_class();
  v6 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void __57__SBPressSequenceRecognizer__handlePressUpWithTimestamp___block_invoke_cold_1()
{
  v0 = objc_opt_class();
  v6 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void __57__SBPressSequenceRecognizer__handlePressUpWithTimestamp___block_invoke_cold_2(uint64_t a1)
{
  v2 = objc_opt_class();
  v8 = NSStringFromClass(v2);
  [*(*a1 + 40) count];
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x12u);
}

@end