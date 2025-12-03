@interface STConcreteDowntimeService
- (STDowntimeServiceDelegate)delegate;
- (void)isDowntimeEnabledForUserID:(id)d completionHandler:(id)handler;
- (void)toggleOnDemandDowntimeForUserID:(id)d completionHandler:(id)handler;
@end

@implementation STConcreteDowntimeService

- (void)isDowntimeEnabledForUserID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  delegate = [(STConcreteDowntimeService *)self delegate];
  [delegate isDowntimeEnabledForUserID:dCopy completionHandler:handlerCopy];
}

- (void)toggleOnDemandDowntimeForUserID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  delegate = [(STConcreteDowntimeService *)self delegate];
  [delegate toggleOnDemandDowntimeForUserID:dCopy completionHandler:handlerCopy];
}

- (STDowntimeServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end