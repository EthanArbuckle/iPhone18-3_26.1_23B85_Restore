@interface STConcreteCommunicationService
- (STCommunicationServiceDelegate)delegate;
- (void)authenticatePasscodeForUserWithEndpoint:(id)a3 completionHandler:(id)a4;
- (void)currentCommunicationConfigurationWithCompletionHandler:(id)a3;
@end

@implementation STConcreteCommunicationService

- (STCommunicationServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

- (void)currentCommunicationConfigurationWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(STConcreteCommunicationService *)self delegate];
  [v5 currentCommunicationConfigurationWithCompletionHandler:v4];
}

- (void)authenticatePasscodeForUserWithEndpoint:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(STConcreteCommunicationService *)self delegate];
  [v8 authenticatePasscodeForUserWithEndpoint:v7 completionHandler:v6];
}

@end