@interface REMXPCDaemonControllerExportedObject
- (REMXPCDaemonControllerAutoCategorizationActivityObserver)autoCategorizationActivityObserver;
- (REMXPCDaemonControllerCloudKitNetworkActivityDelegate)cloudKitNetworkActivityDelegate;
- (void)autoCategorizationActivityDidUpdate:(id)update;
- (void)cloudKitNetworkActivityDidUpdate:(id)update;
@end

@implementation REMXPCDaemonControllerExportedObject

- (REMXPCDaemonControllerCloudKitNetworkActivityDelegate)cloudKitNetworkActivityDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_cloudKitNetworkActivityDelegate);

  return WeakRetained;
}

- (void)cloudKitNetworkActivityDidUpdate:(id)update
{
  updateCopy = update;
  cloudKitNetworkActivityDelegate = [(REMXPCDaemonControllerExportedObject *)self cloudKitNetworkActivityDelegate];
  [cloudKitNetworkActivityDelegate cloudKitNetworkActivityDidChange:updateCopy];
}

- (void)autoCategorizationActivityDidUpdate:(id)update
{
  updateCopy = update;
  autoCategorizationActivityObserver = [(REMXPCDaemonControllerExportedObject *)self autoCategorizationActivityObserver];
  [autoCategorizationActivityObserver autoCategorizationActivityDidChange:updateCopy];
}

- (REMXPCDaemonControllerAutoCategorizationActivityObserver)autoCategorizationActivityObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_autoCategorizationActivityObserver);

  return WeakRetained;
}

@end