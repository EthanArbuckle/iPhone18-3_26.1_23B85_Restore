@interface STConcreteSetupService
- (STSetupServiceDelegate)delegate;
- (void)applyUpdatedConfiguration:(id)a3 completionHandler:(id)a4;
- (void)currentConfigurationForUser:(id)a3 completionHandler:(id)a4;
- (void)promptForPasscodeFromUserWithEndpoint:(id)a3 completionHandler:(id)a4;
@end

@implementation STConcreteSetupService

- (void)currentConfigurationForUser:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(STConcreteSetupService *)self delegate];
  [v8 currentConfigurationForUser:v7 completionHandler:v6];
}

- (void)applyUpdatedConfiguration:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(STConcreteSetupService *)self delegate];
  [v8 applyUpdatedConfiguration:v7 completionHandler:v6];
}

- (void)promptForPasscodeFromUserWithEndpoint:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(STConcreteSetupService *)self delegate];
  [v8 promptForPasscodeFromUserWithEndpoint:v7 completionHandler:v6];
}

- (STSetupServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end