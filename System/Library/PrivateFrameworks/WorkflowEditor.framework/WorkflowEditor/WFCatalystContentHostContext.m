@interface WFCatalystContentHostContext
- (WFCatalystContentHost)handler;
- (void)actionInterfaceListenerDidBecomeActive:(id)a3;
@end

@implementation WFCatalystContentHostContext

- (WFCatalystContentHost)handler
{
  WeakRetained = objc_loadWeakRetained(&self->_handler);

  return WeakRetained;
}

- (void)actionInterfaceListenerDidBecomeActive:(id)a3
{
  v4 = a3;
  v5 = [(WFCatalystContentHostContext *)self handler];
  [v5 actionInterfaceListenerDidBecomeActive:v4];
}

@end