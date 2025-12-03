@interface SVXSessionIdleAssertion
- (SVXSessionIdleAssertion)initWithTimestamp:(unint64_t)timestamp session:(id)session;
- (id)description;
@end

@implementation SVXSessionIdleAssertion

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v7.receiver = self;
  v7.super_class = SVXSessionIdleAssertion;
  v4 = [(SVXSessionIdleAssertion *)&v7 description];
  v5 = [v3 initWithFormat:@"%@ {timestamp = %llu, session = %@}", v4, self->_timestamp, self->_session];

  return v5;
}

- (SVXSessionIdleAssertion)initWithTimestamp:(unint64_t)timestamp session:(id)session
{
  sessionCopy = session;
  v11.receiver = self;
  v11.super_class = SVXSessionIdleAssertion;
  v8 = [(SVXSessionIdleAssertion *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_timestamp = timestamp;
    objc_storeStrong(&v8->_session, session);
  }

  return v9;
}

@end