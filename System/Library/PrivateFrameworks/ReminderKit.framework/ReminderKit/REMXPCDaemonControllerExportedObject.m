@interface REMXPCDaemonControllerExportedObject
- (REMXPCDaemonControllerAutoCategorizationActivityObserver)autoCategorizationActivityObserver;
- (REMXPCDaemonControllerCloudKitNetworkActivityDelegate)cloudKitNetworkActivityDelegate;
- (void)autoCategorizationActivityDidUpdate:(id)a3;
- (void)cloudKitNetworkActivityDidUpdate:(id)a3;
@end

@implementation REMXPCDaemonControllerExportedObject

- (REMXPCDaemonControllerCloudKitNetworkActivityDelegate)cloudKitNetworkActivityDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_cloudKitNetworkActivityDelegate);

  return WeakRetained;
}

- (void)cloudKitNetworkActivityDidUpdate:(id)a3
{
  v4 = a3;
  v5 = [(REMXPCDaemonControllerExportedObject *)self cloudKitNetworkActivityDelegate];
  [v5 cloudKitNetworkActivityDidChange:v4];
}

- (void)autoCategorizationActivityDidUpdate:(id)a3
{
  v4 = a3;
  v5 = [(REMXPCDaemonControllerExportedObject *)self autoCategorizationActivityObserver];
  [v5 autoCategorizationActivityDidChange:v4];
}

- (REMXPCDaemonControllerAutoCategorizationActivityObserver)autoCategorizationActivityObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_autoCategorizationActivityObserver);

  return WeakRetained;
}

@end