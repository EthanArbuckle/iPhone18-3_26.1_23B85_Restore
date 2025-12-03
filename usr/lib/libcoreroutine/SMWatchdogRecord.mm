@interface SMWatchdogRecord
- (SMWatchdogRecord)initWithState:(id)state timeout:(double)timeout;
- (id)description;
@end

@implementation SMWatchdogRecord

- (SMWatchdogRecord)initWithState:(id)state timeout:(double)timeout
{
  stateCopy = state;
  v11.receiver = self;
  v11.super_class = SMWatchdogRecord;
  v8 = [(SMWatchdogRecord *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_state, state);
    v9->_timeout = timeout;
  }

  return v9;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  state = self->_state;
  timeout = self->_timeout;
  stringFromDate = [(NSDate *)self->_startDate stringFromDate];
  v6 = [v2 stringWithFormat:@"state, %@, timeout, %.2f, startDate, %@", state, *&timeout, stringFromDate];

  return v6;
}

@end