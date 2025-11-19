@interface SAAlarmTask
- (SATimeClientProtocol)client;
@end

@implementation SAAlarmTask

- (SATimeClientProtocol)client
{
  WeakRetained = objc_loadWeakRetained(&self->_client);

  return WeakRetained;
}

@end