@interface StopWatch
- (double)currentRun;
- (double)stop;
- (double)total;
- (void)start;
@end

@implementation StopWatch

- (void)start
{
  v10 = *MEMORY[0x277D85DE8];
  if (self->start)
  {
    v3 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v8 = 134217984;
      v9 = self;
      _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "netanalyticsdebug: %p stopwatch has double activation?!", &v8, 0xCu);
    }

    v4 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v5 = [MEMORY[0x277CBEAA8] date];
    start = self->start;
    self->start = v5;
    v7 = *MEMORY[0x277D85DE8];

    MEMORY[0x2821F96F8](v5, start);
  }
}

- (double)stop
{
  if (self->start)
  {
    v3 = [MEMORY[0x277CBEAA8] date];
    [v3 timeIntervalSinceDate:self->start];
    self->cumul = v4 + self->cumul;
    start = self->start;
    self->start = 0;
  }

  return self->cumul;
}

- (double)currentRun
{
  if (!self->start)
  {
    return 0.0;
  }

  v3 = [MEMORY[0x277CBEAA8] date];
  [v3 timeIntervalSinceDate:self->start];
  v5 = v4;

  return v5;
}

- (double)total
{
  cumul = self->cumul;
  [(StopWatch *)self currentRun];
  return cumul + v3;
}

@end