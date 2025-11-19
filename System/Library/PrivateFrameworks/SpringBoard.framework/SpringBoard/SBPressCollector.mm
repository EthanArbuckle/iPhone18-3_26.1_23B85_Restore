@interface SBPressCollector
+ (double)currentTimeStamp;
- (SBPressCollector)init;
- (SBPressCollectorDelegate)delegate;
- (void)_end;
- (void)_fireEndTimerWithDelay:(double)a3 isButtonDown:(BOOL)a4;
- (void)_handlePressDownWithTimeStamp:(double)a3;
- (void)_handlePressUpWithTimeStamp:(double)a3;
- (void)_reset;
- (void)_resetTimersIfNecessary;
- (void)dealloc;
- (void)endCurrentSequence;
- (void)registerPressDownWithTimeStamp:(double)a3;
- (void)registerPressUpWithTimeStamp:(double)a3;
@end

@implementation SBPressCollector

- (SBPressCollector)init
{
  v11.receiver = self;
  v11.super_class = SBPressCollector;
  v2 = [(SBPressCollector *)&v11 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v4 = *(v2 + 2);
    *(v2 + 2) = v3;

    __asm { FMOV            V0.2D, #2.0 }

    *(v2 + 56) = _Q0;
  }

  return v2;
}

- (void)dealloc
{
  [(BSAbsoluteMachTimer *)self->_hardEndTimer invalidate];
  v3.receiver = self;
  v3.super_class = SBPressCollector;
  [(SBPressCollector *)&v3 dealloc];
}

+ (double)currentTimeStamp
{
  v2 = [MEMORY[0x277CCAC38] processInfo];
  [v2 systemUptime];
  v4 = v3;

  return v4;
}

- (void)registerPressUpWithTimeStamp:(double)a3
{
  [(SBPressCollector *)self _resetTimersIfNecessary];

  [(SBPressCollector *)self _handlePressUpWithTimeStamp:a3];
}

- (void)registerPressDownWithTimeStamp:(double)a3
{
  [(SBPressCollector *)self _resetTimersIfNecessary];

  [(SBPressCollector *)self _handlePressDownWithTimeStamp:a3];
}

- (void)endCurrentSequence
{
  +[SBPressCollector currentTimeStamp];
  currentTuple = self->_currentTuple;
  if (currentTuple)
  {
    [(SBPressTuple *)currentTuple setDurationUp:v3 - self->_lastHandledUpEvent];
    v5 = self->_currentTuple;
    self->_currentTuple = 0;
  }

  [(SBPressCollector *)self _end];
}

- (void)_handlePressDownWithTimeStamp:(double)a3
{
  v5 = a3 - self->_lastHandledUpEvent;
  if (self->_currentTuple)
  {
    goto LABEL_2;
  }

  if (![(NSMutableArray *)self->_currentSequence count])
  {
    goto LABEL_9;
  }

  if (self->_currentTuple)
  {
LABEL_2:
    [(SBPressCollector *)self maxPressUpDuration];
    if (v5 <= v6)
    {
      [(SBPressTuple *)self->_currentTuple setDurationUp:v5];
      currentTuple = self->_currentTuple;
      self->_currentTuple = 0;

      goto LABEL_9;
    }
  }

  [(SBPressCollector *)self maxPressUpDuration];
  if (v5 > v7)
  {
    [(SBPressCollector *)self _end];
  }

LABEL_9:
  self->_lastHandledDownEvent = a3;
  [(SBPressCollector *)self maxPressDownDuration];

  [(SBPressCollector *)self _fireEndTimerWithDelay:1 isButtonDown:?];
}

- (void)_handlePressUpWithTimeStamp:(double)a3
{
  if (!self->_currentTuple)
  {
    v5 = a3 - self->_lastHandledDownEvent;
    [(SBPressCollector *)self maxPressDownDuration];
    if (v5 <= v6)
    {
      v7 = [[SBPressTuple alloc] initWithDurationDown:v5 durationUp:0.0];
      currentTuple = self->_currentTuple;
      self->_currentTuple = v7;

      [(NSMutableArray *)self->_currentSequence addObject:self->_currentTuple];
    }
  }

  self->_lastHandledUpEvent = a3;
  [(SBPressCollector *)self maxPressUpDuration];

  [(SBPressCollector *)self _fireEndTimerWithDelay:0 isButtonDown:?];
}

- (void)_resetTimersIfNecessary
{
  hardEndTimer = self->_hardEndTimer;
  if (hardEndTimer)
  {
    [(BSAbsoluteMachTimer *)hardEndTimer invalidate];
    v4 = self->_hardEndTimer;
    self->_hardEndTimer = 0;
  }
}

- (void)_fireEndTimerWithDelay:(double)a3 isButtonDown:(BOOL)a4
{
  v6 = [objc_alloc(MEMORY[0x277CF0B50]) initWithIdentifier:@"SBPressCollector.hardEndTimer"];
  hardEndTimer = self->_hardEndTimer;
  self->_hardEndTimer = v6;

  v8 = self->_hardEndTimer;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__SBPressCollector__fireEndTimerWithDelay_isButtonDown___block_invoke;
  v9[3] = &unk_2783ABAA8;
  v9[4] = self;
  [(BSAbsoluteMachTimer *)v8 scheduleWithFireInterval:MEMORY[0x277D85CD0] leewayInterval:v9 queue:a3 handler:0.0];
}

- (void)_end
{
  currentTuple = self->_currentTuple;
  if (currentTuple)
  {
    [(SBPressCollector *)self maxPressUpDuration];
    [(SBPressTuple *)currentTuple setDurationUp:?];
  }

  v4 = [(SBPressCollector *)self delegate];
  v5 = [MEMORY[0x277CBEA60] arrayWithArray:self->_currentSequence];
  [v4 pressCollector:self didCollectSequence:v5];

  [(SBPressCollector *)self _reset];
}

- (void)_reset
{
  currentTuple = self->_currentTuple;
  self->_currentTuple = 0;

  [(NSMutableArray *)self->_currentSequence removeAllObjects];

  [(SBPressCollector *)self _resetTimersIfNecessary];
}

- (SBPressCollectorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end