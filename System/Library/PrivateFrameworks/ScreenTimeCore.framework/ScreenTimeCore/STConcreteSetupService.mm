@interface STConcreteSetupService
- (STSetupServiceDelegate)delegate;
- (void)applyUpdatedConfiguration:(id)configuration completionHandler:(id)handler;
- (void)currentConfigurationForUser:(id)user completionHandler:(id)handler;
- (void)promptForPasscodeFromUserWithEndpoint:(id)endpoint completionHandler:(id)handler;
@end

@implementation STConcreteSetupService

- (void)currentConfigurationForUser:(id)user completionHandler:(id)handler
{
  handlerCopy = handler;
  userCopy = user;
  delegate = [(STConcreteSetupService *)self delegate];
  [delegate currentConfigurationForUser:userCopy completionHandler:handlerCopy];
}

- (void)applyUpdatedConfiguration:(id)configuration completionHandler:(id)handler
{
  handlerCopy = handler;
  configurationCopy = configuration;
  delegate = [(STConcreteSetupService *)self delegate];
  [delegate applyUpdatedConfiguration:configurationCopy completionHandler:handlerCopy];
}

- (void)promptForPasscodeFromUserWithEndpoint:(id)endpoint completionHandler:(id)handler
{
  handlerCopy = handler;
  endpointCopy = endpoint;
  delegate = [(STConcreteSetupService *)self delegate];
  [delegate promptForPasscodeFromUserWithEndpoint:endpointCopy completionHandler:handlerCopy];
}

- (STSetupServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end