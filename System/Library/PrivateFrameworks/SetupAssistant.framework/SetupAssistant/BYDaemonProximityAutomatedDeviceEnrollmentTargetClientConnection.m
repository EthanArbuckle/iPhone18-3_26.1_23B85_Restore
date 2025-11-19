@interface BYDaemonProximityAutomatedDeviceEnrollmentTargetClientConnection
- (BYBuddyDaemonProximityAutomatedDeviceEnrollmentTargetProtocol)remoteObjectProxy;
- (BYDaemonProximityAutomatedDeviceEnrollmentTargetClientConnection)initWithConnection:(id)a3 broadcastingProvider:(id)a4;
- (void)activateWithCompletion:(id)a3;
- (void)beginAdvertisingProximityAutomatedDeviceEnrollment;
- (void)endAdvertisingProximityAutomatedDeviceEnrollment;
- (void)enrollmentController:(id)a3 hasBroadcastError:(id)a4;
- (void)enrollmentController:(id)a3 hasCompletedWithViewModel:(id)a4;
- (void)enrollmentController:(id)a3 hasUpdatedWithViewModel:(id)a4;
- (void)enrollmentController:(id)a3 needsToDisplayPin:(id)a4;
- (void)enrollmentControllerHasPaired:(id)a3 withInitialViewModel:(id)a4;
- (void)enrollmentControllerNeedsToDismissPin:(id)a3;
- (void)fetchActivationStateWithCompletion:(id)a3;
- (void)shutDown;
- (void)shutdown;
@end

@implementation BYDaemonProximityAutomatedDeviceEnrollmentTargetClientConnection

- (BYDaemonProximityAutomatedDeviceEnrollmentTargetClientConnection)initWithConnection:(id)a3 broadcastingProvider:(id)a4
{
  v6 = a4;
  v20.receiver = self;
  v20.super_class = BYDaemonProximityAutomatedDeviceEnrollmentTargetClientConnection;
  v7 = [(BYDaemonClientConnection *)&v20 initWithConnection:a3];
  if (v7)
  {
    v8 = _BYLoggingFacility();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      *buf = 138543362;
      v22 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ created.", buf, 0xCu);
    }

    v11 = objc_alloc_init(DMTMDMClientLibraryBackedAutomatedDeviceEnrollmentPrimitives);
    v12 = objc_alloc_init(DMTMobileGestaltBackedDeviceInformationPrimitives);
    v13 = objc_alloc_init(DMTNetworkBackedInternetReachabilityPrimitives);
    v14 = objc_alloc_init(DMTCoreWiFiBackedWiFiPrimitives);
    v15 = objc_alloc_init(DMTManagedConfigurationBackedProfileInstallationPrimitives);
    v16 = objc_opt_new();
    v17 = [[DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController alloc] initWithBroadcastingProvider:v6 enrollmentPrimitives:v11 deviceInformationPrimitives:v12 enrollmentInformationPrimitives:v7 reachabilityPrimitives:v13 wifiActivationPrimitives:v7 wifiPrimitives:v14 profileInstallationPrimitives:v15 destructiveErasePrimitives:v16 powerOffPrimitives:v7 delegate:v7];
    enrollmentController = v7->_enrollmentController;
    v7->_enrollmentController = v17;
  }

  return v7;
}

- (void)beginAdvertisingProximityAutomatedDeviceEnrollment
{
  v4 = _BYLoggingFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(a2);
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@", &v7, 0xCu);
  }

  v6 = [(BYDaemonProximityAutomatedDeviceEnrollmentTargetClientConnection *)self enrollmentController];
  [v6 beginBroadcasting];
}

- (void)endAdvertisingProximityAutomatedDeviceEnrollment
{
  v4 = _BYLoggingFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(a2);
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@", &v7, 0xCu);
  }

  v6 = [(BYDaemonProximityAutomatedDeviceEnrollmentTargetClientConnection *)self enrollmentController];
  [v6 endBroadcasting];
}

- (void)shutdown
{
  v4 = _BYLoggingFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(a2);
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@", &v7, 0xCu);
  }

  v6 = [(BYDaemonProximityAutomatedDeviceEnrollmentTargetClientConnection *)self enrollmentController];
  [v6 beginEraseAndShutdown];
}

- (void)enrollmentController:(id)a3 hasBroadcastError:(id)a4
{
  v5 = a4;
  v6 = [(BYDaemonProximityAutomatedDeviceEnrollmentTargetClientConnection *)self remoteObjectProxy];
  [v6 dismissProximityPinCodeWithError:v5];
}

- (void)enrollmentController:(id)a3 needsToDisplayPin:(id)a4
{
  v5 = a4;
  v6 = [(BYDaemonProximityAutomatedDeviceEnrollmentTargetClientConnection *)self remoteObjectProxy];
  [v6 displayProximityPinCode:v5];
}

- (void)enrollmentControllerNeedsToDismissPin:(id)a3
{
  v3 = [(BYDaemonProximityAutomatedDeviceEnrollmentTargetClientConnection *)self remoteObjectProxy];
  [v3 dismissProximityPinCodeWithError:0];
}

- (void)enrollmentControllerHasPaired:(id)a3 withInitialViewModel:(id)a4
{
  v5 = a4;
  v6 = [(BYDaemonProximityAutomatedDeviceEnrollmentTargetClientConnection *)self remoteObjectProxy];
  [v6 configuratorPairingSuccessfulWithViewModel:v5];
}

- (void)enrollmentController:(id)a3 hasCompletedWithViewModel:(id)a4
{
  v5 = a4;
  v6 = [(BYDaemonProximityAutomatedDeviceEnrollmentTargetClientConnection *)self remoteObjectProxy];
  [v6 enrollmentCompleteWithViewModel:v5];
}

- (void)enrollmentController:(id)a3 hasUpdatedWithViewModel:(id)a4
{
  v5 = a4;
  v6 = [(BYDaemonProximityAutomatedDeviceEnrollmentTargetClientConnection *)self remoteObjectProxy];
  [v6 enrollmentHasStatusUpdateWithViewModel:v5];
}

- (BYBuddyDaemonProximityAutomatedDeviceEnrollmentTargetProtocol)remoteObjectProxy
{
  v2 = [(BYDaemonClientConnection *)self connection];
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:&stru_100020770];

  return v3;
}

- (void)shutDown
{
  v2 = [(BYDaemonProximityAutomatedDeviceEnrollmentTargetClientConnection *)self remoteObjectProxy];
  [v2 displayShutdownUI];
}

- (void)fetchActivationStateWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(BYDaemonClientConnection *)self connection];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100004548;
  v11[3] = &unk_100020798;
  v6 = v4;
  v12 = v6;
  v7 = [v5 remoteObjectProxyWithErrorHandler:v11];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100004560;
  v9[3] = &unk_1000207C0;
  v10 = v6;
  v8 = v6;
  [v7 fetchActivationStateWithCompletion:v9];
}

- (void)activateWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(BYDaemonClientConnection *)self connection];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100004640;
  v8[3] = &unk_100020798;
  v9 = v4;
  v6 = v4;
  v7 = [v5 remoteObjectProxyWithErrorHandler:v8];

  [v7 activateUsingWiFiWithCompletion:v6];
}

@end