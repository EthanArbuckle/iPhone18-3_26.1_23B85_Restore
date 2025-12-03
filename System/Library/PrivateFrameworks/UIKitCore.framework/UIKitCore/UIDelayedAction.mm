@interface UIDelayedAction
- (UIDelayedAction)init;
- (UIDelayedAction)initWithTarget:(id)target action:(SEL)action userInfo:(id)info delay:(double)delay mode:(id)mode;
- (void)dealloc;
- (void)timerFired:(id)fired;
- (void)touchWithDelay:(double)delay;
- (void)unschedule;
@end

@implementation UIDelayedAction

- (void)unschedule
{
  [(NSTimer *)self->m_timer invalidate];
  m_timer = self->m_timer;
  self->m_timer = 0;
}

- (void)dealloc
{
  [(NSTimer *)self->m_timer invalidate];
  m_timer = self->m_timer;
  self->m_timer = 0;

  v4.receiver = self;
  v4.super_class = UIDelayedAction;
  [(UIDelayedAction *)&v4 dealloc];
}

- (UIDelayedAction)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[UIDelayedAction init]"];
  [v3 raise:v4 format:{@"Don't call %@.", v5}];

  return 0;
}

- (UIDelayedAction)initWithTarget:(id)target action:(SEL)action userInfo:(id)info delay:(double)delay mode:(id)mode
{
  targetCopy = target;
  infoCopy = info;
  modeCopy = mode;
  v22.receiver = self;
  v22.super_class = UIDelayedAction;
  v16 = [(UIDelayedAction *)&v22 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->m_target, target);
    if (action)
    {
      actionCopy = action;
    }

    else
    {
      actionCopy = 0;
    }

    v17->m_action = actionCopy;
    objc_storeStrong(&v17->m_userInfo, info);
    v17->m_delay = delay;
    v19 = [modeCopy copy];
    m_runLoopMode = v17->m_runLoopMode;
    v17->m_runLoopMode = v19;

    [(UIDelayedAction *)v17 touchWithDelay:v17->m_delay];
  }

  return v17;
}

- (void)touchWithDelay:(double)delay
{
  self->m_canceled = 0;
  self->m_delay = delay;
  date = [MEMORY[0x1E695DF00] date];
  m_startDate = self->m_startDate;
  self->m_startDate = date;

  v7 = [(NSDate *)self->m_startDate dateByAddingTimeInterval:delay];
  m_timer = self->m_timer;
  v12 = v7;
  if (m_timer)
  {
    [(NSTimer *)m_timer setFireDate:v7];
  }

  else
  {
    v9 = [objc_alloc(MEMORY[0x1E695DFF0]) initWithFireDate:v7 interval:self target:sel_timerFired_ selector:self->m_userInfo userInfo:0 repeats:delay];
    v10 = self->m_timer;
    self->m_timer = v9;

    currentRunLoop = [MEMORY[0x1E695DFD0] currentRunLoop];
    [currentRunLoop addTimer:self->m_timer forMode:self->m_runLoopMode];
  }
}

- (void)timerFired:(id)fired
{
  if (!self->m_canceled)
  {
    m_action = self->m_action;
    m_target = self->m_target;
    if (m_action)
    {
      [m_target m_action];
    }

    else
    {
      [m_target 0];
    }
  }

  [(UIDelayedAction *)self cancel];
}

@end