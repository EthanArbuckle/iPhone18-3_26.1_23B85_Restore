@interface SBUIPreciseClockTimer
+ (id)now;
+ (id)sharedInstance;
- (SBUIPreciseClockTimer)init;
- (id)_nowWithAnimationLead;
- (id)startMinuteUpdatesWithHandler:(id)handler;
- (void)_handleTimePassed;
- (void)_updateDisplayLink;
- (void)_updateDisplayLinkFrameIntervalForSecondsPastMinute:(double)minute;
- (void)dealloc;
- (void)stopMinuteUpdatesForToken:(id)token;
@end

@implementation SBUIPreciseClockTimer

+ (id)now
{
  date = [MEMORY[0x1E695DF00] date];
  v3 = [date dateByAddingTimeInterval:0.05];

  return v3;
}

- (void)_handleTimePassed
{
  v18 = *MEMORY[0x1E69E9840];
  _nowWithAnimationLead = [(SBUIPreciseClockTimer *)self _nowWithAnimationLead];
  v16 = 0uLL;
  v14 = 0;
  v15 = 0;
  [(NSCalendar *)self->_calendar getHour:&v16 + 8 minute:&v16 second:&v15 nanosecond:&v14 fromDate:_nowWithAnimationLead];
  if (v16 != __PAIR128__(self->_lastHour, self->_lastMinute))
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    allValues = [(NSMutableDictionary *)self->_minuteUpdateHandlers allValues];
    v5 = [allValues countByEnumeratingWithState:&v10 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(allValues);
          }

          (*(*(*(&v10 + 1) + 8 * v8++) + 16))();
        }

        while (v6 != v8);
        v6 = [allValues countByEnumeratingWithState:&v10 objects:v17 count:16];
      }

      while (v6);
    }

    v9 = v16;
    self->_lastHour = *(&v16 + 1);
    self->_lastMinute = v9;
  }

  [(SBUIPreciseClockTimer *)self _updateDisplayLinkFrameIntervalForSecondsPastMinute:v14 / 1000000000.0 + v15];
}

- (void)_updateDisplayLink
{
  v3 = [(NSMutableDictionary *)self->_minuteUpdateHandlers count];
  displayLink = self->_displayLink;
  if (v3)
  {
    if (!displayLink)
    {
      v5 = [MEMORY[0x1E6979330] displayLinkWithTarget:self selector:sel__onDisplayLink_];
      v6 = self->_displayLink;
      self->_displayLink = v5;

      v7 = self->_displayLink;
      mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
      [(CADisplayLink *)v7 addToRunLoop:mainRunLoop forMode:*MEMORY[0x1E695DA28]];

      v9 = self->_displayLink;

      [(CADisplayLink *)v9 setPreferredFramesPerSecond:60];
    }
  }

  else if (displayLink)
  {
    [(CADisplayLink *)displayLink invalidate];
    v10 = self->_displayLink;
    self->_displayLink = 0;

    v11.f64[0] = NAN;
    v11.f64[1] = NAN;
    *&self->_lastHour = vnegq_f64(v11);
  }
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[SBUIPreciseClockTimer sharedInstance];
  }

  v3 = sharedInstance___sharedInstance;

  return v3;
}

uint64_t __39__SBUIPreciseClockTimer_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(SBUIPreciseClockTimer);
  v1 = sharedInstance___sharedInstance;
  sharedInstance___sharedInstance = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (id)_nowWithAnimationLead
{
  v3 = [objc_opt_class() now];
  v4 = [v3 dateByAddingTimeInterval:self->_additionalOffset];

  return v4;
}

- (SBUIPreciseClockTimer)init
{
  v9.receiver = self;
  v9.super_class = SBUIPreciseClockTimer;
  v2 = [(SBUIPreciseClockTimer *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4 = *(v2 + 2);
    *(v2 + 2) = v3;

    autoupdatingCurrentCalendar = [MEMORY[0x1E695DEE8] autoupdatingCurrentCalendar];
    v6 = *(v2 + 4);
    *(v2 + 4) = autoupdatingCurrentCalendar;

    v7.f64[0] = NAN;
    v7.f64[1] = NAN;
    *(v2 + 40) = vnegq_f64(v7);
  }

  return v2;
}

- (void)dealloc
{
  [(CADisplayLink *)self->_displayLink invalidate];
  v3.receiver = self;
  v3.super_class = SBUIPreciseClockTimer;
  [(SBUIPreciseClockTimer *)&v3 dealloc];
}

- (id)startMinuteUpdatesWithHandler:(id)handler
{
  v4 = MEMORY[0x1E696AD98];
  nextToken = self->_nextToken;
  handlerCopy = handler;
  v7 = [v4 numberWithUnsignedInteger:nextToken];
  minuteUpdateHandlers = self->_minuteUpdateHandlers;
  ++self->_nextToken;
  v9 = [handlerCopy copy];

  [(NSMutableDictionary *)minuteUpdateHandlers setObject:v9 forKey:v7];
  [(SBUIPreciseClockTimer *)self _updateDisplayLink];

  return v7;
}

- (void)stopMinuteUpdatesForToken:(id)token
{
  [(NSMutableDictionary *)self->_minuteUpdateHandlers removeObjectForKey:token];

  [(SBUIPreciseClockTimer *)self _updateDisplayLink];
}

- (void)_updateDisplayLinkFrameIntervalForSecondsPastMinute:(double)minute
{
  if (minute <= 59.8666667)
  {
    v4 = 15.0;
    v5 = 15.0;
  }

  else
  {
    v4 = 60.0;
    v5 = 60.0;
  }

  v14 = CAFrameRateRangeMake(v4, 120.0, v5);
  minimum = v14.minimum;
  maximum = v14.maximum;
  preferred = v14.preferred;
  [(CADisplayLink *)self->_displayLink preferredFrameRateRange];
  v16.minimum = minimum;
  v16.maximum = maximum;
  v16.preferred = preferred;
  if (!CAFrameRateRangeIsEqualToRange(v15, v16))
  {
    displayLink = self->_displayLink;
    *&v9 = minimum;
    *&v10 = maximum;
    *&v11 = preferred;

    [(CADisplayLink *)displayLink setPreferredFrameRateRange:v9, v10, v11];
  }
}

@end