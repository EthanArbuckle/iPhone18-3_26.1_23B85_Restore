@interface STConcreteCommunicationService
- (STCommunicationServiceDelegate)delegate;
- (void)authenticatePasscodeForUserWithEndpoint:(id)endpoint completionHandler:(id)handler;
- (void)currentCommunicationConfigurationWithCompletionHandler:(id)handler;
@end

@implementation STConcreteCommunicationService

- (STCommunicationServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

- (void)currentCommunicationConfigurationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  delegate = [(STConcreteCommunicationService *)self delegate];
  [delegate currentCommunicationConfigurationWithCompletionHandler:handlerCopy];
}

- (void)authenticatePasscodeForUserWithEndpoint:(id)endpoint completionHandler:(id)handler
{
  handlerCopy = handler;
  endpointCopy = endpoint;
  delegate = [(STConcreteCommunicationService *)self delegate];
  [delegate authenticatePasscodeForUserWithEndpoint:endpointCopy completionHandler:handlerCopy];
}

@end