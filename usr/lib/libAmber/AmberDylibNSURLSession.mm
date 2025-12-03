@interface AmberDylibNSURLSession
- (AmberDylibNSURLSession)initWithAmberSession:(void *)session;
@end

@implementation AmberDylibNSURLSession

- (AmberDylibNSURLSession)initWithAmberSession:(void *)session
{
  v10.receiver = self;
  v10.super_class = AmberDylibNSURLSession;
  v4 = [(AmberDylibNSURLSession *)&v10 init];
  if (v4)
  {
    ephemeralSessionConfiguration = [MEMORY[0x29EDBA138] ephemeralSessionConfiguration];
    [ephemeralSessionConfiguration setHTTPMaximumConnectionsPerHost:16];
    [ephemeralSessionConfiguration setTimeoutIntervalForRequest:120.0];
    [ephemeralSessionConfiguration setTimeoutIntervalForResource:1200.0];
    v6 = [MEMORY[0x29EDBA130] sessionWithConfiguration:ephemeralSessionConfiguration];
    session = v4->_session;
    v4->_session = v6;

    v4->_amberSession = session;
    v8 = v4;
  }

  return v4;
}

@end