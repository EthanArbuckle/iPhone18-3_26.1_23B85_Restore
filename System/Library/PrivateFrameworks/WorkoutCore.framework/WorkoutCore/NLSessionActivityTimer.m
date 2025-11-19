@interface NLSessionActivityTimer
- (NLSessionActivityTimer)initWithFireInterval:(double)a3;
- (NLSessionActivityTimerDelegate)delegate;
- (double)elapsedTime;
- (void)_timerFired:(id)a3;
- (void)start;
- (void)stop;
@end

@implementation NLSessionActivityTimer

- (NLSessionActivityTimer)initWithFireInterval:(double)a3
{
  v8 = a2;
  v7 = a3;
  v9 = 0;
  v6.receiver = self;
  v6.super_class = NLSessionActivityTimer;
  v5 = [(NLSessionActivityTimer *)&v6 init];
  v9 = v5;
  objc_storeStrong(&v9, v5);
  if (v5)
  {
    v9->_fireInterval = v7;
  }

  v4 = MEMORY[0x277D82BE0](v9);
  objc_storeStrong(&v9, 0);
  return v4;
}

- (void)start
{
  v17 = self;
  v16[1] = a2;
  if (!self->_startDate && !v17->_endDate)
  {
    v2 = [MEMORY[0x277CBEAA8] date];
    startDate = v17->_startDate;
    v17->_startDate = v2;
    MEMORY[0x277D82BD8](startDate);
    v4 = [objc_alloc(MEMORY[0x277CF0B50]) initWithIdentifier:@"NLSessionActivityTimer"];
    timer = v17->_timer;
    v17->_timer = v4;
    MEMORY[0x277D82BD8](timer);
    v9 = v17->_timer;
    fireInterval = v17->_fireInterval;
    v7 = MEMORY[0x277D85CD0];
    v6 = MEMORY[0x277D85CD0];
    v10 = v7;
    v11 = MEMORY[0x277D85DD0];
    v12 = -1073741824;
    v13 = 0;
    v14 = __31__NLSessionActivityTimer_start__block_invoke;
    v15 = &unk_277D88E30;
    v16[0] = MEMORY[0x277D82BE0](v17);
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
    v2 = [MEMORY[0x277CBEAA8] date];
    endDate = self->_endDate;
    self->_endDate = v2;
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
      v5 = [MEMORY[0x277CBEAA8] date];
      [v5 timeIntervalSinceDate:self->_startDate];
      v6 = v3;
      MEMORY[0x277D82BD8](v5);
    }
  }

  return v6;
}

- (void)_timerFired:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [(NLSessionActivityTimer *)v7 delegate];
  v5 = objc_opt_respondsToSelector();
  MEMORY[0x277D82BD8](v4);
  if (v5)
  {
    v3 = [(NLSessionActivityTimer *)v7 delegate];
    [(NLSessionActivityTimerDelegate *)v3 activityTimerFired:v7];
    MEMORY[0x277D82BD8](v3);
  }

  objc_storeStrong(location, 0);
}

- (NLSessionActivityTimerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end