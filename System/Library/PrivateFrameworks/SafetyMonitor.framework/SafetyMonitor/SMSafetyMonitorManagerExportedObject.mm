@interface SMSafetyMonitorManagerExportedObject
- (SMSafetyMonitorManager)safetyMonitorManager;
- (SMSafetyMonitorManagerExportedObject)initWithSafetyMonitorManager:(id)manager;
- (void)onInitiatorSafetyCacheChangeForSessionID:(id)d phoneCache:(id)cache watchCache:(id)watchCache cacheExpiryDate:(id)date cacheReleaseDate:(id)releaseDate;
- (void)onLocalSessionStateChanged:(id)changed withError:(id)error;
- (void)onReceiverSafetyCacheChangeForSessionID:(id)d phoneCache:(id)cache watchCache:(id)watchCache;
- (void)onReceiverSessionStatusChangeForSessionID:(id)d sessionStatus:(id)status;
@end

@implementation SMSafetyMonitorManagerExportedObject

- (SMSafetyMonitorManagerExportedObject)initWithSafetyMonitorManager:(id)manager
{
  managerCopy = manager;
  v8.receiver = self;
  v8.super_class = SMSafetyMonitorManagerExportedObject;
  v5 = [(SMSafetyMonitorManagerExportedObject *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_safetyMonitorManager, managerCopy);
  }

  return v6;
}

- (void)onLocalSessionStateChanged:(id)changed withError:(id)error
{
  errorCopy = error;
  changedCopy = changed;
  safetyMonitorManager = [(SMSafetyMonitorManagerExportedObject *)self safetyMonitorManager];
  [safetyMonitorManager onLocalSessionStateChanged:changedCopy withError:errorCopy];
}

- (void)onInitiatorSafetyCacheChangeForSessionID:(id)d phoneCache:(id)cache watchCache:(id)watchCache cacheExpiryDate:(id)date cacheReleaseDate:(id)releaseDate
{
  releaseDateCopy = releaseDate;
  dateCopy = date;
  watchCacheCopy = watchCache;
  cacheCopy = cache;
  dCopy = d;
  safetyMonitorManager = [(SMSafetyMonitorManagerExportedObject *)self safetyMonitorManager];
  [safetyMonitorManager onInitiatorSafetyCacheChangeForSessionID:dCopy phoneCache:cacheCopy watchCache:watchCacheCopy cacheExpiryDate:dateCopy cacheReleaseDate:releaseDateCopy];
}

- (void)onReceiverSessionStatusChangeForSessionID:(id)d sessionStatus:(id)status
{
  statusCopy = status;
  dCopy = d;
  safetyMonitorManager = [(SMSafetyMonitorManagerExportedObject *)self safetyMonitorManager];
  [safetyMonitorManager onReceiverSessionStatusChangeForSessionID:dCopy sessionStatus:statusCopy];
}

- (void)onReceiverSafetyCacheChangeForSessionID:(id)d phoneCache:(id)cache watchCache:(id)watchCache
{
  watchCacheCopy = watchCache;
  cacheCopy = cache;
  dCopy = d;
  safetyMonitorManager = [(SMSafetyMonitorManagerExportedObject *)self safetyMonitorManager];
  [safetyMonitorManager onReceiverSafetyCacheChangeForSessionID:dCopy phoneCache:cacheCopy watchCache:watchCacheCopy];
}

- (SMSafetyMonitorManager)safetyMonitorManager
{
  WeakRetained = objc_loadWeakRetained(&self->_safetyMonitorManager);

  return WeakRetained;
}

@end