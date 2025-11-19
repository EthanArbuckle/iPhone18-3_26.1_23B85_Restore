@interface CLKUIClockTimerLink
- (CLKUIClockTimerLink)initWithUpdateHandler:(id)a3;
- (int64_t)_updateFrequencyForFPS:(int64_t)a3;
- (void)invalidate;
- (void)updateCoordinator;
@end

@implementation CLKUIClockTimerLink

- (CLKUIClockTimerLink)initWithUpdateHandler:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CLKUIClockTimerLink;
  v5 = [(CLKUIRenderFrequencyLink *)&v9 init];
  if (v5)
  {
    v6 = _Block_copy(v4);
    updateHandler = v5->_updateHandler;
    v5->_updateHandler = v6;
  }

  return v5;
}

- (void)updateCoordinator
{
  v14.receiver = self;
  v14.super_class = CLKUIClockTimerLink;
  [(CLKUIRenderFrequencyLink *)&v14 updateCoordinator];
  v3 = [MEMORY[0x1E695B4E0] sharedInstance];
  [v3 stopUpdatesForToken:self->_timerToken];

  timerToken = self->_timerToken;
  self->_timerToken = 0;

  if (![(CLKUIRenderFrequencyLink *)self isPaused])
  {
    v5 = [(CLKUIRenderFrequencyLink *)self preferredFramesPerSecond];
    v6 = [(CLKUIClockTimerLink *)self _updateFrequencyForFPS:v5];
    if ((v6 & 0x8000000000000000) == 0)
    {
      v7 = v6;
      v8 = [MEMORY[0x1E695B4E0] sharedInstance];
      updateHandler = self->_updateHandler;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __40__CLKUIClockTimerLink_updateCoordinator__block_invoke;
      v13[3] = &__block_descriptor_40_e15___NSString_8__0l;
      v13[4] = v5;
      v10 = [v8 startUpdatesWithUpdateFrequency:v7 withHandler:updateHandler identificationLog:v13];
      v11 = self->_timerToken;
      self->_timerToken = v10;

      v12 = [MEMORY[0x1E695B4E0] sharedInstance];
      [v12 setHandler:self->_timerToken wantsCommit:1];
    }
  }
}

- (void)invalidate
{
  v5.receiver = self;
  v5.super_class = CLKUIClockTimerLink;
  [(CLKUIRenderFrequencyLink *)&v5 invalidate];
  if (self->_timerToken)
  {
    v3 = [MEMORY[0x1E695B4E0] sharedInstance];
    [v3 stopUpdatesForToken:self->_timerToken];

    timerToken = self->_timerToken;
    self->_timerToken = 0;
  }
}

- (int64_t)_updateFrequencyForFPS:(int64_t)a3
{
  v3 = 4;
  v4 = -1;
  if (a3 == 30)
  {
    v4 = 3;
  }

  if (a3 != 60)
  {
    v3 = v4;
  }

  if (a3 == 15)
  {
    return 2;
  }

  else
  {
    return v3;
  }
}

@end