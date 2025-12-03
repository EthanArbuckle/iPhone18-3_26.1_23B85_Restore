@interface BYDaemonProximityAutomatedDeviceEnrollmentTargetClientConnection
- (BYBuddyDaemonProximityAutomatedDeviceEnrollmentTargetProtocol)remoteObjectProxy;
- (BYDaemonProximityAutomatedDeviceEnrollmentTargetClientConnection)initWithConnection:(id)connection broadcastingProvider:(id)provider;
- (void)activateWithCompletion:(id)completion;
- (void)beginAdvertisingProximityAutomatedDeviceEnrollment;
- (void)endAdvertisingProximityAutomatedDeviceEnrollment;
- (void)enrollmentController:(id)controller hasBroadcastError:(id)error;
- (void)enrollmentController:(id)controller hasCompletedWithViewModel:(id)model;
- (void)enrollmentController:(id)controller hasUpdatedWithViewModel:(id)model;
- (void)enrollmentController:(id)controller needsToDisplayPin:(id)pin;
- (void)enrollmentControllerHasPaired:(id)paired withInitialViewModel:(id)model;
- (void)enrollmentControllerNeedsToDismissPin:(id)pin;
- (void)fetchActivationStateWithCompletion:(id)completion;
- (void)shutDown;
- (void)shutdown;
@end

@implementation BYDaemonProximityAutomatedDeviceEnrollmentTargetClientConnection

- (BYDaemonProximityAutomatedDeviceEnrollmentTargetClientConnection)initWithConnection:(id)connection broadcastingProvider:(id)provider
{
  providerCopy = provider;
  v20.receiver = self;
  v20.super_class = BYDaemonProximityAutomatedDeviceEnrollmentTargetClientConnection;
  v7 = [(BYDaemonClientConnection *)&v20 initWithConnection:connection];
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
    v17 = [[DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController alloc] initWithBroadcastingProvider:providerCopy enrollmentPrimitives:v11 deviceInformationPrimitives:v12 enrollmentInformationPrimitives:v7 reachabilityPrimitives:v13 wifiActivationPrimitives:v7 wifiPrimitives:v14 profileInstallationPrimitives:v15 destructiveErasePrimitives:v16 powerOffPrimitives:v7 delegate:v7];
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

  enrollmentController = [(BYDaemonProximityAutomatedDeviceEnrollmentTargetClientConnection *)self enrollmentController];
  [enrollmentController beginBroadcasting];
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

  enrollmentController = [(BYDaemonProximityAutomatedDeviceEnrollmentTargetClientConnection *)self enrollmentController];
  [enrollmentController endBroadcasting];
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

  enrollmentController = [(BYDaemonProximityAutomatedDeviceEnrollmentTargetClientConnection *)self enrollmentController];
  [enrollmentController beginEraseAndShutdown];
}

- (void)enrollmentController:(id)controller hasBroadcastError:(id)error
{
  errorCopy = error;
  remoteObjectProxy = [(BYDaemonProximityAutomatedDeviceEnrollmentTargetClientConnection *)self remoteObjectProxy];
  [remoteObjectProxy dismissProximityPinCodeWithError:errorCopy];
}

- (void)enrollmentController:(id)controller needsToDisplayPin:(id)pin
{
  pinCopy = pin;
  remoteObjectProxy = [(BYDaemonProximityAutomatedDeviceEnrollmentTargetClientConnection *)self remoteObjectProxy];
  [remoteObjectProxy displayProximityPinCode:pinCopy];
}

- (void)enrollmentControllerNeedsToDismissPin:(id)pin
{
  remoteObjectProxy = [(BYDaemonProximityAutomatedDeviceEnrollmentTargetClientConnection *)self remoteObjectProxy];
  [remoteObjectProxy dismissProximityPinCodeWithError:0];
}

- (void)enrollmentControllerHasPaired:(id)paired withInitialViewModel:(id)model
{
  modelCopy = model;
  remoteObjectProxy = [(BYDaemonProximityAutomatedDeviceEnrollmentTargetClientConnection *)self remoteObjectProxy];
  [remoteObjectProxy configuratorPairingSuccessfulWithViewModel:modelCopy];
}

- (void)enrollmentController:(id)controller hasCompletedWithViewModel:(id)model
{
  modelCopy = model;
  remoteObjectProxy = [(BYDaemonProximityAutomatedDeviceEnrollmentTargetClientConnection *)self remoteObjectProxy];
  [remoteObjectProxy enrollmentCompleteWithViewModel:modelCopy];
}

- (void)enrollmentController:(id)controller hasUpdatedWithViewModel:(id)model
{
  modelCopy = model;
  remoteObjectProxy = [(BYDaemonProximityAutomatedDeviceEnrollmentTargetClientConnection *)self remoteObjectProxy];
  [remoteObjectProxy enrollmentHasStatusUpdateWithViewModel:modelCopy];
}

- (BYBuddyDaemonProximityAutomatedDeviceEnrollmentTargetProtocol)remoteObjectProxy
{
  connection = [(BYDaemonClientConnection *)self connection];
  v3 = [connection synchronousRemoteObjectProxyWithErrorHandler:&stru_100020770];

  return v3;
}

- (void)shutDown
{
  remoteObjectProxy = [(BYDaemonProximityAutomatedDeviceEnrollmentTargetClientConnection *)self remoteObjectProxy];
  [remoteObjectProxy displayShutdownUI];
}

- (void)fetchActivationStateWithCompletion:(id)completion
{
  completionCopy = completion;
  connection = [(BYDaemonClientConnection *)self connection];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100004548;
  v11[3] = &unk_100020798;
  v6 = completionCopy;
  v12 = v6;
  v7 = [connection remoteObjectProxyWithErrorHandler:v11];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100004560;
  v9[3] = &unk_1000207C0;
  v10 = v6;
  v8 = v6;
  [v7 fetchActivationStateWithCompletion:v9];
}

- (void)activateWithCompletion:(id)completion
{
  completionCopy = completion;
  connection = [(BYDaemonClientConnection *)self connection];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100004640;
  v8[3] = &unk_100020798;
  v9 = completionCopy;
  v6 = completionCopy;
  v7 = [connection remoteObjectProxyWithErrorHandler:v8];

  [v7 activateUsingWiFiWithCompletion:v6];
}

@end