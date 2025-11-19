@interface SMSafetyMonitorManagerExportedObject
- (SMSafetyMonitorManager)safetyMonitorManager;
- (SMSafetyMonitorManagerExportedObject)initWithSafetyMonitorManager:(id)a3;
- (void)onInitiatorSafetyCacheChangeForSessionID:(id)a3 phoneCache:(id)a4 watchCache:(id)a5 cacheExpiryDate:(id)a6 cacheReleaseDate:(id)a7;
- (void)onLocalSessionStateChanged:(id)a3 withError:(id)a4;
- (void)onReceiverSafetyCacheChangeForSessionID:(id)a3 phoneCache:(id)a4 watchCache:(id)a5;
- (void)onReceiverSessionStatusChangeForSessionID:(id)a3 sessionStatus:(id)a4;
@end

@implementation SMSafetyMonitorManagerExportedObject

- (SMSafetyMonitorManagerExportedObject)initWithSafetyMonitorManager:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SMSafetyMonitorManagerExportedObject;
  v5 = [(SMSafetyMonitorManagerExportedObject *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_safetyMonitorManager, v4);
  }

  return v6;
}

- (void)onLocalSessionStateChanged:(id)a3 withError:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SMSafetyMonitorManagerExportedObject *)self safetyMonitorManager];
  [v8 onLocalSessionStateChanged:v7 withError:v6];
}

- (void)onInitiatorSafetyCacheChangeForSessionID:(id)a3 phoneCache:(id)a4 watchCache:(id)a5 cacheExpiryDate:(id)a6 cacheReleaseDate:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [(SMSafetyMonitorManagerExportedObject *)self safetyMonitorManager];
  [v17 onInitiatorSafetyCacheChangeForSessionID:v16 phoneCache:v15 watchCache:v14 cacheExpiryDate:v13 cacheReleaseDate:v12];
}

- (void)onReceiverSessionStatusChangeForSessionID:(id)a3 sessionStatus:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SMSafetyMonitorManagerExportedObject *)self safetyMonitorManager];
  [v8 onReceiverSessionStatusChangeForSessionID:v7 sessionStatus:v6];
}

- (void)onReceiverSafetyCacheChangeForSessionID:(id)a3 phoneCache:(id)a4 watchCache:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(SMSafetyMonitorManagerExportedObject *)self safetyMonitorManager];
  [v11 onReceiverSafetyCacheChangeForSessionID:v10 phoneCache:v9 watchCache:v8];
}

- (SMSafetyMonitorManager)safetyMonitorManager
{
  WeakRetained = objc_loadWeakRetained(&self->_safetyMonitorManager);

  return WeakRetained;
}

@end