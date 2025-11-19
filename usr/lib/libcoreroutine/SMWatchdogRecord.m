@interface SMWatchdogRecord
- (SMWatchdogRecord)initWithState:(id)a3 timeout:(double)a4;
- (id)description;
@end

@implementation SMWatchdogRecord

- (SMWatchdogRecord)initWithState:(id)a3 timeout:(double)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = SMWatchdogRecord;
  v8 = [(SMWatchdogRecord *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_state, a3);
    v9->_timeout = a4;
  }

  return v9;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  state = self->_state;
  timeout = self->_timeout;
  v5 = [(NSDate *)self->_startDate stringFromDate];
  v6 = [v2 stringWithFormat:@"state, %@, timeout, %.2f, startDate, %@", state, *&timeout, v5];

  return v6;
}

@end