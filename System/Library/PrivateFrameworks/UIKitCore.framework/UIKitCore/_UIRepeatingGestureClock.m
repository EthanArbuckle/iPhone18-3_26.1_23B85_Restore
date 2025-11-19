@interface _UIRepeatingGestureClock
- (_UIRepeatingGestureClockDelegate)delegate;
- (void)_cancelTimer;
- (void)_createTick:(id)a3;
- (void)_performTick:(id)a3;
- (void)_scheduleTimer;
- (void)dealloc;
@end

@implementation _UIRepeatingGestureClock

- (void)dealloc
{
  [(_UIRepeatingGestureClock *)self _cancelTimer];
  v3.receiver = self;
  v3.super_class = _UIRepeatingGestureClock;
  [(_UIRepeatingGestureClock *)&v3 dealloc];
}

- (void)_cancelTimer
{
  if (self->_timerOn)
  {
    [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__createTick_ object:0];
    [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__performTick_ object:0];
  }

  self->_timerOn = 0;
}

- (void)_scheduleTimer
{
  v6[1] = *MEMORY[0x1E69E9840];
  [(_UIRepeatingGestureClock *)self _cancelTimer];
  self->_timerOn = 1;
  delayIndex = self->_delayIndex;
  self->_delayIndex = delayIndex + 1;
  if (delayIndex >= 3)
  {
    delayIndex = 3;
  }

  v4 = kDelayTable[delayIndex];
  v6[0] = *MEMORY[0x1E695DA28];
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  [(_UIRepeatingGestureClock *)self performSelector:sel__createTick_ withObject:0 afterDelay:v5 inModes:v4];
}

- (void)_createTick:(id)a3
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = *MEMORY[0x1E695DA28];
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  [(_UIRepeatingGestureClock *)self performSelector:sel__performTick_ withObject:0 afterDelay:v4 inModes:0.0];
}

- (void)_performTick:(id)a3
{
  if (self->_timerOn)
  {
    v5 = [(_UIRepeatingGestureClock *)self delegate];
    v6 = v5;
    if (v5)
    {
      [v5 repeatingGestureClockDidTick:self];
      [(_UIRepeatingGestureClock *)self _scheduleTimer];
    }

    else
    {
      [(_UIRepeatingGestureClock *)self _cancelTimer];
    }
  }
}

- (_UIRepeatingGestureClockDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end