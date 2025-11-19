@interface PSLivenessSession
- (PSLivenessSession)initWithDelegate:(id)a3 queue:(id)a4;
@end

@implementation PSLivenessSession

- (PSLivenessSession)initWithDelegate:(id)a3 queue:(id)a4
{
  v10.receiver = self;
  v10.super_class = PSLivenessSession;
  v6 = [(PSLivenessSession *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_delegate = a3;
    v6->_queue = a4;
    v8 = v6;
  }

  return v7;
}

@end