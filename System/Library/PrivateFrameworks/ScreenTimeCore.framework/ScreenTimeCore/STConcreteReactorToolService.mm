@interface STConcreteReactorToolService
- (STReactorToolServiceDelegate)delegate;
- (void)currentMessageTransportReachabilityMap:(id)map;
- (void)scheduleFailStuckMessagesActivity:(id)activity;
- (void)scheduleMessageRetryActivity:(id)activity;
- (void)scheduleStoreCleanupActivity:(id)activity;
- (void)shutdownReactorWithCompletion:(id)completion;
@end

@implementation STConcreteReactorToolService

- (void)shutdownReactorWithCompletion:(id)completion
{
  completionCopy = completion;
  delegate = [(STConcreteReactorToolService *)self delegate];
  [delegate shutdownReactorWithCompletion:completionCopy];
}

- (void)scheduleMessageRetryActivity:(id)activity
{
  activityCopy = activity;
  delegate = [(STConcreteReactorToolService *)self delegate];
  [delegate scheduleMessageRetryActivity:activityCopy];
}

- (void)scheduleStoreCleanupActivity:(id)activity
{
  activityCopy = activity;
  delegate = [(STConcreteReactorToolService *)self delegate];
  [delegate scheduleStoreCleanupActivity:activityCopy];
}

- (void)scheduleFailStuckMessagesActivity:(id)activity
{
  activityCopy = activity;
  delegate = [(STConcreteReactorToolService *)self delegate];
  [delegate scheduleFailStuckMessagesActivity:activityCopy];
}

- (void)currentMessageTransportReachabilityMap:(id)map
{
  mapCopy = map;
  delegate = [(STConcreteReactorToolService *)self delegate];
  [delegate currentMessageTransportReachabilityMap:mapCopy];
}

- (STReactorToolServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end