@interface NLSessionActivityTimer
- (NLSessionActivityTimer)initWithFireInterval:(double)interval;
- (NLSessionActivityTimerDelegate)delegate;
- (double)elapsedTime;
- (void)_timerFired:(id)fired;
- (void)start;
- (void)stop;
@end

@implementation NLSessionActivityTimer

- (NLSessionActivityTimer)initWithFireInterval:(double)interval
{
  v8 = a2;
  intervalCopy = interval;
  v9 = 0;
  v6.receiver = self;
  v6.super_class = NLSessionActivityTimer;
  v5 = [(NLSessionActivityTimer *)&v6 init];
  v9 = v5;
  objc_storeStrong(&v9, v5);
  if (v5)
  {
    v9->_fireInterval = intervalCopy;
  }

  v4 = MEMORY[0x277D82BE0](v9);
  objc_storeStrong(&v9, 0);
  return v4;
}

- (void)start
{
  selfCopy = self;
  v16[1] = a2;
  if (!self->_startDate && !selfCopy->_endDate)
  {
    date = [MEMORY[0x277CBEAA8] date];
    startDate = selfCopy->_startDate;
    selfCopy->_startDate = date;
    MEMORY[0x277D82BD8](startDate);
    v4 = [objc_alloc(MEMORY[0x277CF0B50]) initWithIdentifier:@"NLSessionActivityTimer"];
    timer = selfCopy->_timer;
    selfCopy->_timer = v4;
    MEMORY[0x277D82BD8](timer);
    v9 = selfCopy->_timer;
    fireInterval = selfCopy->_fireInterval;
    v7 = MEMORY[0x277D85CD0];
    v6 = MEMORY[0x277D85CD0];
    v10 = v7;
    v11 = MEMORY[0x277D85DD0];
    v12 = -1073741824;
    v13 = 0;
    v14 = __31__NLSessionActivityTimer_start__block_invoke;
    v15 = &unk_277D88E30;
    v16[0] = MEMORY[0x277D82BE0](selfCopy);
    [(BSAbsoluteMachTimer *)v9 scheduleRepeatingWithFireInterval:v10 repeatInterval:&v11 leewayInterval:0.0 queue:fireInterval handler:0.03];
    MEMORY[0x277D82BD8](v10);
    objc_storeStrong(v16, 0);
  }
}

void __31__NLSessionActivityTimer_start__block_invoke(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [a1[4] _timerFired:location[0]];
  objc_storeStrong(location, 0);
}

- (void)stop
{
  if (self->_startDate && !self->_endDate)
  {
    date = [MEMORY[0x277CBEAA8] date];
    endDate = self->_endDate;
    self->_endDate = date;
    MEMORY[0x277D82BD8](endDate);
    if (self->_timer)
    {
      [(BSAbsoluteMachTimer *)self->_timer invalidate];
      objc_storeStrong(&self->_timer, 0);
    }
  }
}

- (double)elapsedTime
{
  v6 = 0.0;
  if (self->_startDate)
  {
    if (self->_endDate)
    {
      [(NSDate *)self->_endDate timeIntervalSinceDate:self->_startDate];
      return v2;
    }

    else
    {
      date = [MEMORY[0x277CBEAA8] date];
      [date timeIntervalSinceDate:self->_startDate];
      v6 = v3;
      MEMORY[0x277D82BD8](date);
    }
  }

  return v6;
}

- (void)_timerFired:(id)fired
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, fired);
  delegate = [(NLSessionActivityTimer *)selfCopy delegate];
  v5 = objc_opt_respondsToSelector();
  MEMORY[0x277D82BD8](delegate);
  if (v5)
  {
    delegate2 = [(NLSessionActivityTimer *)selfCopy delegate];
    [(NLSessionActivityTimerDelegate *)delegate2 activityTimerFired:selfCopy];
    MEMORY[0x277D82BD8](delegate2);
  }

  objc_storeStrong(location, 0);
}

- (NLSessionActivityTimerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end