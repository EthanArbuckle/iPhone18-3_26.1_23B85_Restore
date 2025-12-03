@interface PSLivenessSession
- (PSLivenessSession)initWithDelegate:(id)delegate queue:(id)queue;
@end

@implementation PSLivenessSession

- (PSLivenessSession)initWithDelegate:(id)delegate queue:(id)queue
{
  v10.receiver = self;
  v10.super_class = PSLivenessSession;
  v6 = [(PSLivenessSession *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_delegate = delegate;
    v6->_queue = queue;
    v8 = v6;
  }

  return v7;
}

@end