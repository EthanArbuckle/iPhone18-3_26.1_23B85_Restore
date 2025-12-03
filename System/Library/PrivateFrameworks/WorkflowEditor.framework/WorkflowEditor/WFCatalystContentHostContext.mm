@interface WFCatalystContentHostContext
- (WFCatalystContentHost)handler;
- (void)actionInterfaceListenerDidBecomeActive:(id)active;
@end

@implementation WFCatalystContentHostContext

- (WFCatalystContentHost)handler
{
  WeakRetained = objc_loadWeakRetained(&self->_handler);

  return WeakRetained;
}

- (void)actionInterfaceListenerDidBecomeActive:(id)active
{
  activeCopy = active;
  handler = [(WFCatalystContentHostContext *)self handler];
  [handler actionInterfaceListenerDidBecomeActive:activeCopy];
}

@end