@interface STConcreteReactorToolService
- (STReactorToolServiceDelegate)delegate;
- (void)currentMessageTransportReachabilityMap:(id)a3;
- (void)scheduleFailStuckMessagesActivity:(id)a3;
- (void)scheduleMessageRetryActivity:(id)a3;
- (void)scheduleStoreCleanupActivity:(id)a3;
- (void)shutdownReactorWithCompletion:(id)a3;
@end

@implementation STConcreteReactorToolService

- (void)shutdownReactorWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(STConcreteReactorToolService *)self delegate];
  [v5 shutdownReactorWithCompletion:v4];
}

- (void)scheduleMessageRetryActivity:(id)a3
{
  v4 = a3;
  v5 = [(STConcreteReactorToolService *)self delegate];
  [v5 scheduleMessageRetryActivity:v4];
}

- (void)scheduleStoreCleanupActivity:(id)a3
{
  v4 = a3;
  v5 = [(STConcreteReactorToolService *)self delegate];
  [v5 scheduleStoreCleanupActivity:v4];
}

- (void)scheduleFailStuckMessagesActivity:(id)a3
{
  v4 = a3;
  v5 = [(STConcreteReactorToolService *)self delegate];
  [v5 scheduleFailStuckMessagesActivity:v4];
}

- (void)currentMessageTransportReachabilityMap:(id)a3
{
  v4 = a3;
  v5 = [(STConcreteReactorToolService *)self delegate];
  [v5 currentMessageTransportReachabilityMap:v4];
}

- (STReactorToolServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end