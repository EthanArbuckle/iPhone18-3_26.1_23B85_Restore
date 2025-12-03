@interface WFOperation
- (id)description;
- (void)finish;
- (void)start;
@end

@implementation WFOperation

- (void)start
{
  self->_finished = 0;
  date = [MEMORY[0x277CBEAA8] date];
  start = self->_start;
  self->_start = date;

  MEMORY[0x2821F96F8]();
}

- (void)finish
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = WFLogForCategory(0);
  v4 = OSLogForWFLogLevel(4uLL);
  if (WFCurrentLogLevel() >= 4 && v3)
  {
    v5 = v3;
    if (os_log_type_enabled(v5, v4))
    {
      name = [(WFOperation *)self name];
      [(NSDate *)self->_start timeIntervalSinceNow];
      v9 = 138412546;
      v10 = name;
      v11 = 2048;
      v12 = v7;
      _os_log_impl(&dword_273ECD000, v5, v4, "%@ finished.  Elapsed: %f seconds.", &v9, 0x16u);
    }
  }

  [(WFOperation *)self willChangeValueForKey:@"isFinished"];
  self->_finished = 1;
  [(WFOperation *)self didChangeValueForKey:@"isFinished"];
  v8 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ : %p", v5, self];

  name = [(WFOperation *)self name];

  if (name)
  {
    name2 = [(WFOperation *)self name];
    [v6 appendFormat:@" %@", name2];
  }

  start = self->_start;
  if (start)
  {
    [(NSDate *)start timeIntervalSinceNow];
    [v6 appendFormat:@" started: %f seconds", -v10];
  }

  [v6 appendString:@">"];

  return v6;
}

@end