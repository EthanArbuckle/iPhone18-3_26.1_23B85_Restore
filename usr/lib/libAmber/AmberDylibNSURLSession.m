@interface AmberDylibNSURLSession
- (AmberDylibNSURLSession)initWithAmberSession:(void *)a3;
@end

@implementation AmberDylibNSURLSession

- (AmberDylibNSURLSession)initWithAmberSession:(void *)a3
{
  v10.receiver = self;
  v10.super_class = AmberDylibNSURLSession;
  v4 = [(AmberDylibNSURLSession *)&v10 init];
  if (v4)
  {
    v5 = [MEMORY[0x29EDBA138] ephemeralSessionConfiguration];
    [v5 setHTTPMaximumConnectionsPerHost:16];
    [v5 setTimeoutIntervalForRequest:120.0];
    [v5 setTimeoutIntervalForResource:1200.0];
    v6 = [MEMORY[0x29EDBA130] sessionWithConfiguration:v5];
    session = v4->_session;
    v4->_session = v6;

    v4->_amberSession = a3;
    v8 = v4;
  }

  return v4;
}

@end