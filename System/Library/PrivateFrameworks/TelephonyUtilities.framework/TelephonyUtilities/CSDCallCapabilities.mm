@interface CSDCallCapabilities
+ (CSDCallCapabilities)sharedInstance;
- (BOOL)_accountsMatchForSecondaryCalling;
- (BOOL)_deviceExistsThatSupportsRelayCallingWithoutLocalRelayCallingEnabled;
- (BOOL)_isAudioAccessoryDevice;
- (BOOL)_isThumperCallingAllowedForCurrentDeviceUsingSenderIdentityCapabilitiesState:(id)a3;
- (BOOL)_isWatchDevice;
- (BOOL)_relayCallingEnabledDefault;
- (BOOL)_supportsBasebandCalling;
- (BOOL)_supportsCellularData;
- (BOOL)_supportsDisplayingFaceTimeAudioCalls;
- (BOOL)_supportsDisplayingFaceTimeVideoCalls;
- (BOOL)_supportsDisplayingTelephonyCalls;
- (BOOL)_supportsPrimaryCalling;
- (BOOL)_supportsRelayCalling;
- (BOOL)_supportsThumperCallingUsingSenderIdentityCapabilitiesState:(id)a3;
- (BOOL)_supportslaunchingInCallApplicationForIncomingCall;
- (BOOL)isThumperCallingSupportedForAccountID:(id)a3;
- (BOOL)isThumperRegisteredDeviceID:(id)a3 forThumperAccountID:(id)a4;
- (CSDCallCapabilities)init;
- (CSDCallCapabilities)initWithRelayService:(id)a3 thumperService:(id)a4 lsApplicationWorkspace:(id)a5 userDefaults:(id)a6 featureFlags:(id)a7;
- (NSArray)localThumperAccounts;
- (NSArray)secondaryThumperAccounts;
- (NSDictionary)thumperCallingCapabilitiesStateByUUID;
- (NSString)debugDescription;
- (TUCallCapabilitiesState)callCapabilitiesState;
- (id)_cloudCallingDevices;
- (id)_outgoingCallerID;
- (id)_relayCallingDisabledForDeviceIDDefault;
- (id)secondaryThumperAccountForAccountID:(id)a3;
- (id)thumperCallingCapabilitiesStateForAccountID:(id)a3;
- (unsigned)_defaultOverrideForDisableDefault:(id)a3 forceDefault:(id)a4;
- (void)_initializePairedHostDeviceState;
- (void)_savePairedHostDeviceState;
- (void)_setDefaultCallingAppInLaunchServices:(id)a3;
- (void)_setRelayCallingEnabledDefault:(BOOL)a3;
- (void)_setRelayCallingEnabledDefault:(BOOL)a3 forDeviceWithID:(id)a4;
- (void)_setThumperCallingAllowed:(BOOL)a3 onSecondaryDeviceWithID:(id)a4 forSenderIdentityWithUUID:(id)a5;
- (void)_updateCTCapabilities;
- (void)_updateCallAvailability;
- (void)_updateClientsWithState;
- (void)_updateDefaultCallingAppIfNecessary;
- (void)_updateDefaultCallingAppInLaunchServices;
- (void)_updateDefaultRelayCallingAppInLaunchServicesWithCallCapabilities;
- (void)_updateDefaultRelayCallingAppInLaunchServicesWithLegacySetting:(unint64_t)a3;
- (void)_updateDynamicCapabilitiesAndUpdateClients;
- (void)_updateHostingAndDisplayingSupport;
- (void)_updateRelayCapabilities;
- (void)_updateState;
- (void)_updateTUDefaultAppRelayTelephonySetting;
- (void)accountsChanged;
- (void)addThumperRegisteredDeviceID:(id)a3 forThumperAccountID:(id)a4;
- (void)callCapabilitiesState:(id)a3;
- (void)cancelPinRequestFromPrimaryDevice;
- (void)dealloc;
- (void)deviceCapabilityChanged:(id)a3;
- (void)deviceListChanged:(id)a3;
- (void)endEmergencyCallbackMode;
- (void)faceTimeAvailabilityChanged;
- (void)invalidateAndRefreshThumperCallingProvisioningURLForSenderIdentityWithUUID:(id)a3;
- (void)invalidateAndRefreshWiFiCallingProvisioningURLForSenderIdentityWithUUID:(id)a3;
- (void)outgoingCallerIDChanged;
- (void)registerClient:(id)a3;
- (void)removeThumperRegisteredDeviceID:(id)a3 forThumperAccountID:(id)a4;
- (void)requestPinFromPrimaryDevice;
- (void)setRelayCallingEnabled:(BOOL)a3;
- (void)setRelayCallingEnabled:(BOOL)a3 forDeviceWithID:(id)a4;
- (void)setThumperCallingAllowed:(BOOL)a3 onSecondaryDeviceWithID:(id)a4 forSenderIdentityWithUUID:(id)a5;
- (void)setThumperCallingAllowedOnDefaultPairedDevice:(BOOL)a3 forSenderIdentityWithUUID:(id)a4;
- (void)setThumperCallingEnabled:(BOOL)a3 forSenderIdentityWithUUID:(id)a4;
- (void)setVoLTECallingEnabled:(BOOL)a3 forSenderIdentityWithUUID:(id)a4;
- (void)setWiFiCallingEnabled:(BOOL)a3 forSenderIdentityWithUUID:(id)a4;
- (void)setWiFiCallingRoamingEnabled:(BOOL)a3 forSenderIdentityWithUUID:(id)a4;
- (void)telephonyCallCapabilitiesChanged;
- (void)unregisterClient:(id)a3;
- (void)updatePairedHostDeviceCallCapabilitiesState:(id)a3;
- (void)updateState;
@end

@implementation CSDCallCapabilities

+ (CSDCallCapabilities)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100146B60;
  block[3] = &unk_10061A860;
  block[4] = a1;
  if (qword_1006ACD60 != -1)
  {
    dispatch_once(&qword_1006ACD60, block);
  }

  v2 = qword_1006ACD58;

  return v2;
}

- (BOOL)_supportslaunchingInCallApplicationForIncomingCall
{
  v3 = ![(CSDCallCapabilities *)self _isAudioAccessoryDevice]&& ![(CSDCallCapabilities *)self _isWatchDevice];
  v4 = sub_100004778();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "_supportslaunchingInCallApplicationForIncomingCall: %d", v6, 8u);
  }

  return v3;
}

- (BOOL)_isAudioAccessoryDevice
{
  v2 = +[FTDeviceSupport sharedInstance];
  v3 = [v2 deviceType] == 7;

  return v3;
}

- (BOOL)_isWatchDevice
{
  v2 = +[FTDeviceSupport sharedInstance];
  v3 = [v2 deviceType] == 6;

  return v3;
}

- (CSDCallCapabilities)init
{
  v3 = +[CSDRelayIDSService sharedInstance];
  v4 = +[CSDThumperIDSService sharedInstance];
  v5 = +[LSApplicationWorkspace defaultWorkspace];
  v6 = +[NSUserDefaults tu_defaults];
  v7 = objc_alloc_init(TUFeatureFlags);
  v8 = [(CSDCallCapabilities *)self initWithRelayService:v3 thumperService:v4 lsApplicationWorkspace:v5 userDefaults:v6 featureFlags:v7];

  return v8;
}

- (CSDCallCapabilities)initWithRelayService:(id)a3 thumperService:(id)a4 lsApplicationWorkspace:(id)a5 userDefaults:(id)a6 featureFlags:(id)a7
{
  v41 = a3;
  v42 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v50.receiver = self;
  v50.super_class = CSDCallCapabilities;
  v16 = [(CSDCallCapabilities *)&v50 init];
  if (v16)
  {
    v17 = dispatch_queue_create("com.apple.telephonyutilities.callservicesd.callcapabilities", 0);
    queue = v16->_queue;
    v16->_queue = v17;

    objc_storeStrong(&v16->_featureFlags, a7);
    v19 = [[CSDClientManager alloc] initWithSerialQueue:v16->_queue];
    clientManager = v16->_clientManager;
    v16->_clientManager = v19;

    objc_storeStrong(&v16->_lsApplicationWorkspace, a5);
    objc_storeStrong(&v16->_userDefaults, a6);
    v21 = v16->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001470CC;
    block[3] = &unk_100619D38;
    v22 = v16;
    v49 = v22;
    dispatch_sync(v21, block);
    objc_initWeak(&location, v22);
    v23 = [CSDProcessObserver alloc];
    v51 = TUBundleIdentifierInCallServiceApplication;
    v24 = [NSArray arrayWithObjects:&v51 count:1];
    v25 = [(CSDProcessObserver *)v23 initWithBundleIdentifiers:v24 queue:v16->_queue];
    processObserver = v22->_processObserver;
    v22->_processObserver = v25;

    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_100147388;
    v45[3] = &unk_10061C3C8;
    objc_copyWeak(&v46, &location);
    [(CSDProcessObserverProtocol *)v22->_processObserver setProcessStateChanged:v45];
    objc_storeStrong(&v22->_relayService, a3);
    objc_storeStrong(&v22->_thumperService, a4);
    v27 = objc_alloc_init(CSDAccountsController);
    accountsController = v22->_accountsController;
    v22->_accountsController = v27;

    [(CSDAccountsController *)v22->_accountsController setDelegate:v22];
    v29 = [[CSDTelephonyCallCapabilities alloc] initWithQueue:v16->_queue];
    telephonyCallCapabilities = v22->_telephonyCallCapabilities;
    v22->_telephonyCallCapabilities = v29;

    [(CSDTelephonyCallCapabilities *)v22->_telephonyCallCapabilities setDelegate:v22];
    v31 = objc_alloc_init(CSDThumperPushHandler);
    thumperPushHandler = v22->_thumperPushHandler;
    v22->_thumperPushHandler = v31;

    v33 = [[CSDPinExchangeController alloc] initWithDelegate:v22->_thumperPushHandler];
    thumperPinExchangeController = v22->_thumperPinExchangeController;
    v22->_thumperPinExchangeController = v33;

    v35 = objc_alloc_init(CSDThumperCapabilitiesMonitor);
    thumperCapabilitiesMonitor = v22->_thumperCapabilitiesMonitor;
    v22->_thumperCapabilitiesMonitor = v35;

    [(CSDThumperCapabilitiesMonitor *)v22->_thumperCapabilitiesMonitor setDataSource:v22];
    v37 = +[NSNotificationCenter defaultCenter];
    [v37 addObserver:v22 selector:"deviceListChanged:" name:@"CSDIDSDeviceListChangedNotification" object:v22->_relayService];

    v38 = +[NSNotificationCenter defaultCenter];
    [v38 addObserver:v22 selector:"deviceCapabilityChanged:" name:FaceTimeDeviceCapabilityChangedNotification object:0];

    v39 = v16->_queue;
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_100147670;
    v43[3] = &unk_100619D38;
    v44 = v22;
    dispatch_async(v39, v43);

    objc_destroyWeak(&v46);
    objc_destroyWeak(&location);
  }

  return v16;
}

- (NSString)debugDescription
{
  v3 = [NSMutableString stringWithFormat:@"%@\n", self];
  v4 = [(CSDCallCapabilities *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100147878;
  block[3] = &unk_100619D88;
  v5 = v3;
  v9 = v5;
  v10 = self;
  dispatch_sync(v4, block);

  v6 = v5;
  return v5;
}

- (void)dealloc
{
  v3 = [(CSDCallCapabilities *)self xpcListener];
  [v3 invalidate];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = CSDCallCapabilities;
  [(CSDCallCapabilities *)&v5 dealloc];
}

- (void)_updateClientsWithState
{
  v3 = sub_100004778();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(CSDCallCapabilities *)self state];
    *buf = 138412290;
    v20 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Updating clients with new call capabilities state: %@", buf, 0xCu);
  }

  v5 = [(CSDCallCapabilities *)self state];
  v6 = [v5 copy];

  v7 = [(CSDCallCapabilities *)self state];
  v8 = [v7 publiclyAccessibleCopy];

  v9 = sub_10020A620(@"access-call-capabilities");
  v10 = [(CSDCallCapabilities *)self clientManager];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100147BF4;
  v15[3] = &unk_10061C650;
  v17 = v8;
  v18 = v9;
  v16 = v6;
  v11 = v8;
  v12 = v6;
  v13 = v9;
  v14 = NSStringFromSelector("capabilityStateUpdated:");
  [v10 performBlockOnClients:v15 coalescedByIdentifier:v14];
}

- (TUCallCapabilitiesState)callCapabilitiesState
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_100028674;
  v11 = sub_1000328C4;
  v12 = 0;
  v3 = [(CSDCallCapabilities *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100147D9C;
  v6[3] = &unk_100619E80;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)updatePairedHostDeviceCallCapabilitiesState:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallCapabilities *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100147E9C;
  v7[3] = &unk_100619D88;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)callCapabilitiesState:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallCapabilities *)self clientManager];
  v6 = [v5 currentClient];

  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 processName];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "TUCallCapabilitiesXPCServer - callCapabilitiesState request from %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v12 = 0x3032000000;
  v13 = sub_100028674;
  v14 = sub_1000328C4;
  v15 = 0;
  v9[5] = &buf;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100148154;
  v10[3] = &unk_100619E80;
  v10[4] = self;
  v10[5] = &buf;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001481B8;
  v9[3] = &unk_100619E80;
  v9[4] = self;
  sub_100004AA4(v6, @"access-call-capabilities", v10, v9, 0);
  v4[2](v4, *(*(&buf + 1) + 40));
  _Block_object_dispose(&buf, 8);
}

- (void)setRelayCallingEnabled:(BOOL)a3
{
  v5 = [(CSDCallCapabilities *)self clientManager];
  v6 = [v5 currentClient];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001482E4;
  v7[3] = &unk_100619EA8;
  v8 = a3;
  v7[4] = self;
  sub_100004AA4(v6, @"modify-call-capabilities", v7, 0, "[CSDCallCapabilities setRelayCallingEnabled:]");
}

- (void)setRelayCallingEnabled:(BOOL)a3 forDeviceWithID:(id)a4
{
  v6 = a4;
  v7 = [(CSDCallCapabilities *)self clientManager];
  v8 = [v7 currentClient];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100148488;
  v10[3] = &unk_100619F48;
  v13 = a3;
  v11 = v6;
  v12 = self;
  v9 = v6;
  sub_100004AA4(v8, @"modify-call-capabilities", v10, 0, "[CSDCallCapabilities setRelayCallingEnabled:forDeviceWithID:]");
}

- (void)setWiFiCallingEnabled:(BOOL)a3 forSenderIdentityWithUUID:(id)a4
{
  v6 = a4;
  v7 = [(CSDCallCapabilities *)self clientManager];
  v8 = [v7 currentClient];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10014863C;
  v10[3] = &unk_100619F48;
  v13 = a3;
  v11 = v6;
  v12 = self;
  v9 = v6;
  sub_100004AA4(v8, @"modify-call-capabilities", v10, 0, "[CSDCallCapabilities setWiFiCallingEnabled:forSenderIdentityWithUUID:]");
}

- (void)setWiFiCallingRoamingEnabled:(BOOL)a3 forSenderIdentityWithUUID:(id)a4
{
  v6 = a4;
  v7 = [(CSDCallCapabilities *)self clientManager];
  v8 = [v7 currentClient];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001487F0;
  v10[3] = &unk_100619F48;
  v13 = a3;
  v11 = v6;
  v12 = self;
  v9 = v6;
  sub_100004AA4(v8, @"modify-call-capabilities", v10, 0, "[CSDCallCapabilities setWiFiCallingRoamingEnabled:forSenderIdentityWithUUID:]");
}

- (void)setVoLTECallingEnabled:(BOOL)a3 forSenderIdentityWithUUID:(id)a4
{
  v6 = a4;
  v7 = [(CSDCallCapabilities *)self clientManager];
  v8 = [v7 currentClient];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001489A4;
  v10[3] = &unk_100619F48;
  v13 = a3;
  v11 = v6;
  v12 = self;
  v9 = v6;
  sub_100004AA4(v8, @"modify-call-capabilities", v10, 0, "[CSDCallCapabilities setVoLTECallingEnabled:forSenderIdentityWithUUID:]");
}

- (void)setThumperCallingEnabled:(BOOL)a3 forSenderIdentityWithUUID:(id)a4
{
  v6 = a4;
  v7 = [(CSDCallCapabilities *)self clientManager];
  v8 = [v7 currentClient];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100148B58;
  v10[3] = &unk_100619F48;
  v13 = a3;
  v11 = v6;
  v12 = self;
  v9 = v6;
  sub_100004AA4(v8, @"modify-call-capabilities", v10, 0, "[CSDCallCapabilities setThumperCallingEnabled:forSenderIdentityWithUUID:]");
}

- (void)setThumperCallingAllowed:(BOOL)a3 onSecondaryDeviceWithID:(id)a4 forSenderIdentityWithUUID:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(CSDCallCapabilities *)self clientManager];
  v11 = [v10 currentClient];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100148D30;
  v14[3] = &unk_10061BE38;
  v18 = a3;
  v15 = v8;
  v16 = v9;
  v17 = self;
  v12 = v9;
  v13 = v8;
  sub_100004AA4(v11, @"modify-call-capabilities", v14, 0, "[CSDCallCapabilities setThumperCallingAllowed:onSecondaryDeviceWithID:forSenderIdentityWithUUID:]");
}

- (void)setThumperCallingAllowedOnDefaultPairedDevice:(BOOL)a3 forSenderIdentityWithUUID:(id)a4
{
  v6 = a4;
  v7 = [(CSDCallCapabilities *)self clientManager];
  v8 = [v7 currentClient];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100148EF0;
  v10[3] = &unk_100619F48;
  v13 = a3;
  v11 = v6;
  v12 = self;
  v9 = v6;
  sub_100004AA4(v8, @"modify-call-capabilities", v10, 0, "[CSDCallCapabilities setThumperCallingAllowedOnDefaultPairedDevice:forSenderIdentityWithUUID:]");
}

- (void)endEmergencyCallbackMode
{
  v3 = [(CSDCallCapabilities *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(CSDCallCapabilities *)self clientManager];
  v5 = [v4 currentClient];

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100149088;
  v6[3] = &unk_100619D38;
  v6[4] = self;
  sub_100004AA4(v5, @"modify-call-capabilities", v6, 0, "[CSDCallCapabilities endEmergencyCallbackMode]");
}

- (void)invalidateAndRefreshWiFiCallingProvisioningURLForSenderIdentityWithUUID:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallCapabilities *)self clientManager];
  v6 = [v5 currentClient];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001491EC;
  v8[3] = &unk_100619D88;
  v9 = v4;
  v10 = self;
  v7 = v4;
  sub_100004AA4(v6, @"modify-call-capabilities", v8, 0, "[CSDCallCapabilities invalidateAndRefreshWiFiCallingProvisioningURLForSenderIdentityWithUUID:]");
}

- (void)invalidateAndRefreshThumperCallingProvisioningURLForSenderIdentityWithUUID:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallCapabilities *)self clientManager];
  v6 = [v5 currentClient];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100149390;
  v8[3] = &unk_100619D88;
  v9 = v4;
  v10 = self;
  v7 = v4;
  sub_100004AA4(v6, @"modify-call-capabilities", v8, 0, "[CSDCallCapabilities invalidateAndRefreshThumperCallingProvisioningURLForSenderIdentityWithUUID:]");
}

- (void)requestPinFromPrimaryDevice
{
  v3 = [(CSDCallCapabilities *)self clientManager];
  v4 = [v3 currentClient];

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100149510;
  v5[3] = &unk_100619D38;
  v5[4] = self;
  sub_100004AA4(v4, @"modify-call-capabilities", v5, 0, "[CSDCallCapabilities requestPinFromPrimaryDevice]");
}

- (void)cancelPinRequestFromPrimaryDevice
{
  v3 = [(CSDCallCapabilities *)self clientManager];
  v4 = [v3 currentClient];

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001497E4;
  v5[3] = &unk_100619D38;
  v5[4] = self;
  sub_100004AA4(v4, @"modify-call-capabilities", v5, 0, "[CSDCallCapabilities cancelPinRequestFromPrimaryDevice]");
}

- (void)registerClient:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallCapabilities *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10014991C;
  v7[3] = &unk_100619D88;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)unregisterClient:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallCapabilities *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100149A24;
  v7[3] = &unk_100619D88;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)deviceListChanged:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received device list changed notification: %@", buf, 0xCu);
  }

  v6 = [(CSDCallCapabilities *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100149B94;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(v6, block);
}

- (void)deviceCapabilityChanged:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received device capability changed notification: %@", buf, 0xCu);
  }

  v6 = [(CSDCallCapabilities *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100149CB8;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(v6, block);
}

- (void)accountsChanged
{
  v3 = sub_100004778();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Received accounts changed delegate callback", buf, 2u);
  }

  v4 = [(CSDCallCapabilities *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100149DC4;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)faceTimeAvailabilityChanged
{
  v3 = sub_100004778();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Received FaceTime availability changed delegate callback", buf, 2u);
  }

  v4 = [(CSDCallCapabilities *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100149E9C;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)outgoingCallerIDChanged
{
  v3 = sub_100004778();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Received outgoingCallerIDChanged delegate callback", buf, 2u);
  }

  v4 = [(CSDCallCapabilities *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100149F74;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)telephonyCallCapabilitiesChanged
{
  v3 = [(CSDCallCapabilities *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = sub_100004778();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Received telephonyCallCapabilitiesChanged delegate callback", v5, 2u);
  }

  [(CSDCallCapabilities *)self _updateDynamicCapabilitiesAndUpdateClients];
}

- (BOOL)isThumperRegisteredDeviceID:(id)a3 forThumperAccountID:(id)a4
{
  v6 = a3;
  v7 = [(CSDCallCapabilities *)self thumperCallingCapabilitiesStateForAccountID:a4];
  v8 = v7;
  if (v7)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = [v7 approvedSecondaryDeviceIDs];
    v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v10)
    {
      v11 = *v16;
      while (2)
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v15 + 1) + 8 * i);
          if (TUStringsAreCaseInsensitiveEqual())
          {
            LOBYTE(v10) = 1;
            goto LABEL_12;
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (void)addThumperRegisteredDeviceID:(id)a3 forThumperAccountID:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(CSDCallCapabilities *)self thumperCallingCapabilitiesStateByUUID];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v19 = v27 = 0u;
  obj = [v19 allKeys];
  v8 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    v18 = v6;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v24 + 1) + 8 * i);
        v13 = [(CSDCallCapabilities *)self thumperCallingCapabilitiesStateByUUID];
        v14 = [v13 objectForKeyedSubscript:v12];
        v15 = [v14 accountID];
        v16 = TUStringsAreCaseInsensitiveEqual();

        if (v16)
        {
          v17 = [(CSDCallCapabilities *)self queue];
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10014A570;
          block[3] = &unk_100619E58;
          block[4] = self;
          v6 = v18;
          v22 = v18;
          v23 = v12;
          dispatch_async(v17, block);

          goto LABEL_11;
        }
      }

      v9 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      v6 = v18;
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (void)removeThumperRegisteredDeviceID:(id)a3 forThumperAccountID:(id)a4
{
  v19 = a3;
  v6 = a4;
  [(CSDCallCapabilities *)self thumperCallingCapabilitiesStateByUUID];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v18 = v30 = 0u;
  obj = [v18 allKeys];
  v7 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v28;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v27 + 1) + 8 * i);
        if (v6)
        {
          v12 = [(CSDCallCapabilities *)self thumperCallingCapabilitiesStateByUUID];
          v13 = [v12 objectForKeyedSubscript:v11];
          v14 = [v13 accountID];
          v15 = TUStringsAreCaseInsensitiveEqual();

          if (v15)
          {
            v17 = [(CSDCallCapabilities *)self queue];
            v24[0] = _NSConcreteStackBlock;
            v24[1] = 3221225472;
            v24[2] = sub_10014A810;
            v24[3] = &unk_100619E58;
            v24[4] = self;
            v25 = v19;
            v26 = v11;
            dispatch_async(v17, v24);

            goto LABEL_12;
          }
        }

        else
        {
          v16 = [(CSDCallCapabilities *)self queue];
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10014A824;
          block[3] = &unk_100619E58;
          block[4] = self;
          v22 = v19;
          v23 = v11;
          dispatch_async(v16, block);
        }
      }

      v8 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v8);
  }

LABEL_12:
}

- (NSArray)localThumperAccounts
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_100028674;
  v11 = sub_1000328C4;
  v12 = 0;
  v3 = [(CSDCallCapabilities *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10014A954;
  v6[3] = &unk_100619E80;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (NSArray)secondaryThumperAccounts
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_100028674;
  v11 = sub_1000328C4;
  v12 = 0;
  v3 = [(CSDCallCapabilities *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10014AAD8;
  v6[3] = &unk_100619E80;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)secondaryThumperAccountForAccountID:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100028674;
  v16 = sub_1000328C4;
  v17 = 0;
  v5 = [(CSDCallCapabilities *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10014AC84;
  block[3] = &unk_10061C678;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)thumperCallingCapabilitiesStateForAccountID:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallCapabilities *)self thumperCallingCapabilitiesStateByUUID];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = [v5 allKeys];
  v6 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v18 = v5;
    v8 = *v21;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        v11 = [(CSDCallCapabilities *)self thumperCallingCapabilitiesStateByUUID];
        v12 = [v11 objectForKeyedSubscript:v10];
        v13 = [v12 accountID];
        v14 = TUStringsAreCaseInsensitiveEqual();

        if (v14)
        {
          v16 = [(CSDCallCapabilities *)self thumperCallingCapabilitiesStateByUUID];
          v15 = [v16 objectForKeyedSubscript:v10];

          goto LABEL_11;
        }
      }

      v7 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }

    v15 = 0;
LABEL_11:
    v5 = v18;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (NSDictionary)thumperCallingCapabilitiesStateByUUID
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_100028674;
  v11 = sub_1000328C4;
  v12 = +[NSMutableDictionary dictionary];
  v3 = [(CSDCallCapabilities *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10014AFDC;
  v6[3] = &unk_10061C1E0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = [v8[5] copy];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)updateState
{
  v3 = [(CSDCallCapabilities *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10014B1C8;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_updateState
{
  [(CSDCallCapabilities *)self _updateHostingAndDisplayingSupport];
  [(CSDCallCapabilities *)self _updateCallAvailability];
  [(CSDCallCapabilities *)self _updateRelayCapabilities];

  [(CSDCallCapabilities *)self _updateCTCapabilities];
}

- (void)_updateHostingAndDisplayingSupport
{
  v3 = [(CSDCallCapabilities *)self _supportsPrimaryCalling];
  v4 = [(CSDCallCapabilities *)self state];
  [v4 setSupportsPrimaryCalling:v3];

  v5 = [(CSDCallCapabilities *)self _supportsBasebandCalling];
  v6 = [(CSDCallCapabilities *)self state];
  [v6 setSupportsBasebandCalling:v5];

  v7 = [(CSDCallCapabilities *)self _supportsCellularData];
  v8 = [(CSDCallCapabilities *)self state];
  [v8 setSupportsCellularData:v7];

  v9 = [(CSDCallCapabilities *)self _supportsDisplayingTelephonyCalls];
  v10 = [(CSDCallCapabilities *)self state];
  [v10 setSupportsDisplayingTelephonyCalls:v9];

  v11 = [(CSDCallCapabilities *)self _supportsDisplayingFaceTimeAudioCalls];
  v12 = [(CSDCallCapabilities *)self state];
  [v12 setSupportsDisplayingFaceTimeAudioCalls:v11];

  v13 = [(CSDCallCapabilities *)self _supportsDisplayingFaceTimeVideoCalls];
  v14 = [(CSDCallCapabilities *)self state];
  [v14 setSupportsDisplayingFaceTimeVideoCalls:v13];
}

- (unsigned)_defaultOverrideForDisableDefault:(id)a3 forceDefault:(id)a4
{
  v5 = a3;
  v6 = a4;
  keyExistsAndHasValidFormat = 0;
  v7 = TUBundleIdentifierTelephonyUtilitiesFramework;
  v8 = 0;
  if (CFPreferencesGetAppBooleanValue(v5, TUBundleIdentifierTelephonyUtilitiesFramework, &keyExistsAndHasValidFormat))
  {
    v9 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v10 = sub_100004778();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v5;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[WARN] Disabling support because %@ was set to YES", buf, 0xCu);
    }

    v8 = 2;
  }

  if (CFPreferencesGetAppBooleanValue(v6, v7, &keyExistsAndHasValidFormat))
  {
    v11 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    v12 = sub_100004778();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[WARN] Enabling support because %@ was set to YES", buf, 0xCu);
    }

    v8 = 1;
  }

  return v8;
}

- (BOOL)_supportsPrimaryCalling
{
  v3 = +[FTDeviceSupport sharedInstance];
  v4 = [v3 isTelephonyDevice];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10014B650;
  block[3] = &unk_100619D38;
  block[4] = self;
  if (qword_1006ACD70 != -1)
  {
    dispatch_once(&qword_1006ACD70, block);
  }

  if (byte_1006ACD68 == 2)
  {
    return 0;
  }

  if (byte_1006ACD68 == 1)
  {
    return 1;
  }

  return v4;
}

- (BOOL)_supportsBasebandCalling
{
  v3 = MGGetBoolAnswer();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10014B744;
  block[3] = &unk_100619D38;
  block[4] = self;
  if (qword_1006ACD80 != -1)
  {
    dispatch_once(&qword_1006ACD80, block);
  }

  if (byte_1006ACD78 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  return byte_1006ACD78 != 2 && v4;
}

- (BOOL)_supportsCellularData
{
  v3 = +[FTDeviceSupport sharedInstance];
  v4 = [v3 supportsCellularData];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10014B858;
  block[3] = &unk_100619D38;
  block[4] = self;
  if (qword_1006ACD90 != -1)
  {
    dispatch_once(&qword_1006ACD90, block);
  }

  if (byte_1006ACD88 == 2)
  {
    return 0;
  }

  if (byte_1006ACD88 == 1)
  {
    return 1;
  }

  return v4;
}

- (BOOL)_supportsDisplayingTelephonyCalls
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10014B924;
  block[3] = &unk_100619D38;
  block[4] = self;
  if (qword_1006ACDA0 != -1)
  {
    dispatch_once(&qword_1006ACDA0, block);
  }

  return byte_1006ACD98 != 2;
}

- (BOOL)_supportsDisplayingFaceTimeAudioCalls
{
  v3 = +[FTDeviceSupport sharedInstance];
  v4 = [v3 inProcess_isCallingSupported];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10014BA38;
  block[3] = &unk_100619D38;
  block[4] = self;
  if (qword_1006ACDB0 != -1)
  {
    dispatch_once(&qword_1006ACDB0, block);
  }

  if (byte_1006ACDA8 == 2)
  {
    return 0;
  }

  if (byte_1006ACDA8 == 1)
  {
    return 1;
  }

  return v4;
}

- (BOOL)_supportsDisplayingFaceTimeVideoCalls
{
  v3 = +[FTDeviceSupport sharedInstance];
  v4 = [v3 faceTimeSupported];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10014BB4C;
  block[3] = &unk_100619D38;
  block[4] = self;
  if (qword_1006ACDC0 != -1)
  {
    dispatch_once(&qword_1006ACDC0, block);
  }

  if (byte_1006ACDB8 == 2)
  {
    return 0;
  }

  if (byte_1006ACDB8 == 1)
  {
    return 1;
  }

  return v4;
}

- (void)_updateCallAvailability
{
  v3 = [(CSDCallCapabilities *)self accountsController];
  v4 = [v3 isFaceTimeAudioAvailable];
  v5 = [(CSDCallCapabilities *)self state];
  [v5 setFaceTimeAudioAvailable:v4];

  v8 = [(CSDCallCapabilities *)self accountsController];
  v6 = [v8 isFaceTimeVideoAvailable];
  v7 = [(CSDCallCapabilities *)self state];
  [v7 setFaceTimeVideoAvailable:v6];
}

- (void)_updateDynamicCapabilitiesAndUpdateClients
{
  [(CSDCallCapabilities *)self _updateCallAvailability];
  [(CSDCallCapabilities *)self _updateRelayCapabilities];
  [(CSDCallCapabilities *)self _updateCTCapabilities];
  [(CSDCallCapabilities *)self _updateClientsWithState];

  [(CSDCallCapabilities *)self _updateDefaultCallingAppIfNecessary];
}

- (void)_updateCTCapabilities
{
  v5 = [(CSDCallCapabilities *)self telephonyCallCapabilities];
  v6 = [v5 areCapabilitiesValid];
  v7 = [(CSDCallCapabilities *)self state];
  [v7 setCtCapabilitiesValid:v6];

  v8 = [(CSDCallCapabilities *)self telephonyCallCapabilities];
  v9 = [v8 isEmergencyCallbackModeEnabled];
  v10 = [(CSDCallCapabilities *)self state];
  [v10 setEmergencyCallbackModeEnabled:v9];

  v11 = [(CSDCallCapabilities *)self telephonyCallCapabilities];
  v12 = [v11 isEmergencyCallbackPossible];
  v13 = [(CSDCallCapabilities *)self state];
  [v13 setEmergencyCallbackPossible:v12];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10014C274;
  block[3] = &unk_100619D38;
  block[4] = self;
  if (qword_1006ACDD0 != -1)
  {
    dispatch_once(&qword_1006ACDD0, block);
  }

  v14 = [(CSDCallCapabilities *)self telephonyCallCapabilities];
  v15 = [v14 senderIdentityCapabilitiesStateByUUID];

  +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v15 count]);
  v47 = v46 = v15;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = [v15 allKeys];
  v16 = [obj countByEnumeratingWithState:&v48 objects:v55 count:16];
  if (v16)
  {
    v17 = v16;
    v45 = *v49;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v49 != v45)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v48 + 1) + 8 * i);
        v20 = [v46 objectForKeyedSubscript:v19];
        v21 = [v20 copy];

        if (byte_1006ACDC8 == 2)
        {
          v22 = 0;
        }

        else
        {
          if (byte_1006ACDC8 != 1)
          {
            goto LABEL_13;
          }

          v22 = 1;
        }

        v23 = [v21 wiFiCallingCapabilitiesState];
        [v23 setSupported:v22];

LABEL_13:
        if (byte_1006ACDC9 == 2)
        {
          v24 = 0;
        }

        else
        {
          if (byte_1006ACDC9 != 1)
          {
            goto LABEL_18;
          }

          v24 = 1;
        }

        v25 = [v21 voLTECallingCapabilitiesState];
        [v25 setSupported:v24];

LABEL_18:
        v26 = [v21 thumperCallingCapabilitiesState];
        v27 = v26;
        if (byte_1006ACDCA == 2)
        {
          v28 = 0;
          goto LABEL_22;
        }

        if (byte_1006ACDCA == 1)
        {
          v28 = 1;
LABEL_22:
          [v26 setSupported:v28];
        }

        [v27 setSupported:{-[CSDCallCapabilities _supportsThumperCallingUsingSenderIdentityCapabilitiesState:](self, "_supportsThumperCallingUsingSenderIdentityCapabilitiesState:", v21)}];
        [v27 setApproved:{-[CSDCallCapabilities _isThumperCallingAllowedForCurrentDeviceUsingSenderIdentityCapabilitiesState:](self, "_isThumperCallingAllowedForCurrentDeviceUsingSenderIdentityCapabilitiesState:", v21)}];
        v29 = [(CSDCallCapabilities *)self state];
        v30 = [v29 isRelayCallingEnabled];
        if ((v30 & 1) == 0)
        {
          v2 = [(CSDCallCapabilities *)self state];
          v3 = [v2 defaultPairedDevice];
          if (!v3)
          {
            [v27 setEnabled:0];
LABEL_32:

            goto LABEL_33;
          }
        }

        if ([v27 isSupported] && objc_msgSend(v27, "isApproved"))
        {
          v31 = [v27 isEnabled];
          v32 = v27;
        }

        else
        {
          v32 = v27;
          v31 = 0;
        }

        [v32 setEnabled:v31];
        if ((v30 & 1) == 0)
        {
          goto LABEL_32;
        }

LABEL_33:

        v33 = [(CSDCallCapabilities *)self state];
        v34 = [v33 supportsBasebandCalling];

        if ((v34 & 1) == 0)
        {
          [v21 setSupportsSimultaneousVoiceAndData:1];
        }

        [v47 setObject:v21 forKeyedSubscript:v19];
      }

      v17 = [obj countByEnumeratingWithState:&v48 objects:v55 count:16];
    }

    while (v17);
  }

  v35 = [(CSDCallCapabilities *)self state];
  [v35 setSenderIdentityCapabilitiesStateByUUID:v47];

  v36 = [(CSDCallCapabilities *)self state];
  if ([v36 supportsPrimaryCalling])
  {
    goto LABEL_49;
  }

  v37 = [(CSDCallCapabilities *)self state];
  v38 = [v37 accountsSupportSecondaryCalling];

  if (v38)
  {
    v39 = [(CSDCallCapabilities *)self _primaryThumperAccountRequiringMatchingCallerID];
    v36 = [v39 accountID];

    v40 = sub_100004778();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v54 = v36;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Found primary Thumper account ID %@", buf, 0xCu);
    }

    if (v36 && ![(CSDCallCapabilities *)self isThumperCallingSupportedForAccountID:v36])
    {
      v41 = sub_100004778();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v54 = v36;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Thumper calling is not supported for account ID %@", buf, 0xCu);
      }

      v36 = 0;
    }

    v42 = sub_100004778();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v54 = v36;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Setting associated Thumper account ID %@", buf, 0xCu);
    }

    v43 = [(CSDCallCapabilities *)self telephonyCallCapabilities];
    [v43 setThumperCallingAssociatedAccountID:v36];

LABEL_49:
  }
}

- (BOOL)isThumperCallingSupportedForAccountID:(id)a3
{
  v4 = a3;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = [(CSDCallCapabilities *)self state];
  v6 = [v5 senderIdentityCapabilitiesStateByUUID];
  v7 = [v6 allKeys];

  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = [(CSDCallCapabilities *)self state];
        v14 = [v13 senderIdentityCapabilitiesStateByUUID];
        v15 = [v14 objectForKeyedSubscript:v12];
        v16 = [v15 thumperCallingCapabilitiesState];

        v17 = [v16 accountID];
        LODWORD(v14) = TUStringsAreCaseInsensitiveEqual();

        if (v14)
        {
          v18 = [v16 isSupported];

          goto LABEL_11;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v18 = 0;
LABEL_11:

  return v18;
}

- (void)_setThumperCallingAllowed:(BOOL)a3 onSecondaryDeviceWithID:(id)a4 forSenderIdentityWithUUID:(id)a5
{
  v6 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(CSDCallCapabilities *)self state];
  v11 = [v10 senderIdentityCapabilitiesStateByUUID];
  v12 = [v11 objectForKeyedSubscript:v9];
  v13 = [v12 thumperCallingCapabilitiesState];

  if (!v13)
  {
    v17 = sub_100004778();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_35;
    }

    *buf = 138412290;
    *v45 = v9;
    v28 = "[WARN] Could not find Thumper capabilities for sender identity UUID %@";
    v29 = v17;
    v30 = 12;
LABEL_19:
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, v28, buf, v30);
    goto LABEL_35;
  }

  v14 = [v13 approvedSecondaryDeviceIDs];
  v15 = [v14 containsObject:v8];

  if (v15 == v6)
  {
    v17 = sub_100004778();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_35;
    }

    *buf = 67109634;
    *v45 = v15;
    *&v45[4] = 1024;
    *&v45[6] = v6;
    LOWORD(v46[0]) = 2112;
    *(v46 + 2) = v8;
    v28 = "_setThumperCallingAllowed: not updating value. Is currently %d and asked to set to %d on secondary device ID %@";
    v29 = v17;
    v30 = 24;
    goto LABEL_19;
  }

  v16 = [(CSDCallCapabilities *)self telephonyCallCapabilities];
  v17 = v16;
  if (v6)
  {
    v39 = [v13 accountID];
    if ([v39 length])
    {
      [v17 localThumperAccounts];
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v18 = v43 = 0u;
      v19 = [v18 countByEnumeratingWithState:&v40 objects:v47 count:16];
      if (v19)
      {
        v20 = v19;
        v35 = v15;
        v36 = v17;
        v37 = v9;
        v38 = v8;
        v21 = 0;
        v22 = *v41;
LABEL_7:
        v23 = v18;
        v24 = 0;
        v25 = v21;
        while (1)
        {
          if (*v41 != v22)
          {
            objc_enumerationMutation(v23);
          }

          v21 = *(*(&v40 + 1) + 8 * v24);

          v26 = [v21 accountID];
          v27 = TUStringsAreCaseInsensitiveEqual();

          if (v27)
          {
            break;
          }

          v24 = v24 + 1;
          v25 = v21;
          if (v20 == v24)
          {
            v18 = v23;
            v20 = [v23 countByEnumeratingWithState:&v40 objects:v47 count:16];
            if (v20)
            {
              goto LABEL_7;
            }

            v9 = v37;
            v8 = v38;
            v17 = v36;
            goto LABEL_14;
          }
        }

        v18 = v23;

        v9 = v37;
        v8 = v38;
        v17 = v36;
        if (!v21)
        {
          goto LABEL_26;
        }

        v31 = [v21 availableDeviceSlots];
        v32 = sub_100004778();
        v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
        if (v31 < 1)
        {
          if (v33)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "[WARN] Not changing Thumper calling allowed value. No device slots remain for this device. Displaying notification to the user", buf, 2u);
          }

          v34 = [(CSDCallCapabilities *)self thumperPinExchangeController];
          [v34 displaySlotsFullNotification];
        }

        else
        {
          if (v33)
          {
            *buf = 67109634;
            *v45 = v35;
            *&v45[4] = 1024;
            *&v45[6] = v6;
            LOWORD(v46[0]) = 2112;
            *(v46 + 2) = v38;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Changing Thumper calling allowed value from %d to %d on secondary device ID %@", buf, 0x18u);
          }

          [v36 setThumperCallingAllowed:1 onSecondaryDeviceWithID:v38 forSenderIdentityWithUUID:v37];
        }
      }

      else
      {
LABEL_14:

LABEL_26:
        v21 = sub_100004778();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          *v45 = v8;
          *&v45[8] = 2112;
          v46[0] = v17;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[WARN] Could not set Thumper calling allowed for secondary device with identifier %@; unable to retrieve local Thumper account from call capabilities %@", buf, 0x16u);
        }
      }
    }

    else
    {
      v18 = sub_100004778();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *v45 = v13;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[WARN] Could not retrieve account ID from Thumper capabilities %@", buf, 0xCu);
      }
    }
  }

  else
  {
    [v16 setThumperCallingAllowed:0 onSecondaryDeviceWithID:v8 forSenderIdentityWithUUID:v9];
  }

LABEL_35:
}

- (BOOL)_supportsThumperCallingUsingSenderIdentityCapabilitiesState:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallCapabilities *)self state];
  v6 = [v5 supportsPrimaryCalling];

  if (v6)
  {
    v7 = [v4 senderIdentityUUID];
    if (v7)
    {
      v8 = [(CSDCallCapabilities *)self telephonyCallCapabilities];
      v9 = [v8 telephonySubscriptionLabelIdentifierForSenderIdentityUUID:v7];

      if ([v9 length])
      {
        v10 = [v4 thumperCallingCapabilitiesState];
        if ([v10 isSupported])
        {
          v11 = [(CSDCallCapabilities *)self thumperService];
          LOBYTE(v12) = [v11 isServiceEnabledForTelephonySubscriptionLabelIdentifier:v9];
        }

        else
        {
          LOBYTE(v12) = 0;
        }
      }

      else
      {
        LOBYTE(v12) = 0;
      }
    }

    else
    {
      v12 = sub_100004778();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 138412290;
        v18 = v4;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[WARN] Could not obtain UUID from sender identity capabilities state %@", &v17, 0xCu);
      }

      LOBYTE(v12) = 0;
    }
  }

  else
  {
    v13 = [(CSDCallCapabilities *)self _primaryThumperAccountRequiringMatchingCallerID];
    LODWORD(v12) = v13 != 0;
  }

  v14 = [(CSDCallCapabilities *)self state];
  v15 = [v14 supportsRelayCalling];

  return v15 & v12;
}

- (BOOL)_isThumperCallingAllowedForCurrentDeviceUsingSenderIdentityCapabilitiesState:(id)a3
{
  v4 = a3;
  v5 = [v4 thumperCallingCapabilitiesState];
  v6 = [v5 isSupported];

  v7 = [(CSDCallCapabilities *)self state];
  v8 = [v7 supportsPrimaryCalling];

  if ((v8 & 1) == 0)
  {
    v9 = [(CSDCallCapabilities *)self _primaryThumperAccountRequiringMatchingCallerID];
    v10 = [v9 allowedSecondaryDeviceIDs];
    v11 = [v4 thumperCallingCapabilitiesState];
    v12 = [v11 localDeviceID];
    v6 = [v10 containsObject:v12];
  }

  return v6;
}

- (void)_updateRelayCapabilities
{
  v4 = [(CSDCallCapabilities *)self _supportsRelayCalling];
  v5 = [(CSDCallCapabilities *)self state];
  [v5 setSupportsRelayCalling:v4];

  v6 = [(CSDCallCapabilities *)self _accountsMatchForSecondaryCalling];
  v7 = [(CSDCallCapabilities *)self state];
  [v7 setAccountsMatchForSecondaryCalling:v6];

  if ([(CSDCallCapabilities *)self _isWatchDevice])
  {
    v8 = [(CSDCallCapabilities *)self relayService];
    v9 = [v8 defaultPairedDevice];

    v10 = [v9 isConnected];
    v11 = [(CSDCallCapabilities *)self state];
    v12 = v11;
    if (v10)
    {
      [v11 setRelayCallingEnabled:1];

      v13 = [(CSDCallCapabilities *)self state];
      [v13 setRelayCallingFeaturesEnabled:1];

      v14 = [v9 isNearby];
      v15 = [(CSDCallCapabilities *)self state];
      v16 = v15;
      if (v14)
      {
        v17 = 2;
      }

      else
      {
        v17 = 1;
      }
    }

    else
    {
      [v11 setRelayCallingEnabled:0];

      v24 = [(CSDCallCapabilities *)self state];
      [v24 setRelayCallingFeaturesEnabled:0];

      v15 = [(CSDCallCapabilities *)self state];
      v16 = v15;
      v17 = 0;
    }

    [v15 setRelayCallingAvailability:v17];

    v34 = [(CSDCallCapabilities *)self pairedHostDeviceState];
    v35 = [v34 isFaceTimeAudioAvailable];
    v36 = [(CSDCallCapabilities *)self state];
    [v36 setSupportsFaceTimeAudioRelayCalling:v35];

    v37 = [(CSDCallCapabilities *)self pairedHostDeviceState];
    v38 = [v37 isFaceTimeVideoAvailable];
    v39 = [(CSDCallCapabilities *)self state];
    [v39 setSupportsFaceTimeVideoRelayCalling:v38];

    v40 = [(CSDCallCapabilities *)self state];
    [v40 setAccountsSupportSecondaryCalling:1];

    goto LABEL_22;
  }

  if (![(CSDCallCapabilities *)self _isAudioAccessoryDevice])
  {
    v25 = [(CSDCallCapabilities *)self _relayCallingEnabledDefault];
    v26 = [(CSDCallCapabilities *)self state];
    [v26 setRelayCallingEnabled:v25];

    v27 = [(CSDCallCapabilities *)self state];
    [v27 setSupportsFaceTimeAudioRelayCalling:0];

    v28 = [(CSDCallCapabilities *)self state];
    v29 = [v28 accountsMatchForSecondaryCalling];
    v30 = [(CSDCallCapabilities *)self state];
    [v30 setAccountsSupportSecondaryCalling:v29];

    v23 = [(CSDCallCapabilities *)self state];
    v31 = [v23 supportsRelayCalling];
    if (v31)
    {
      v30 = [(CSDCallCapabilities *)self state];
      if ([v30 accountsSupportSecondaryCalling])
      {
        v2 = [(CSDCallCapabilities *)self state];
        v32 = 1;
        v33 = 1;
        if ([v2 isRelayCallingEnabled])
        {
          goto LABEL_17;
        }
      }

      else
      {
        v32 = 0;
      }
    }

    else
    {
      v32 = 0;
    }

    v33 = [(CSDCallCapabilities *)self _deviceExistsThatSupportsRelayCallingWithoutLocalRelayCallingEnabled];
LABEL_17:
    v41 = [(CSDCallCapabilities *)self state];
    [v41 setRelayCallingFeaturesEnabled:v33];

    if (v32)
    {
    }

    if (v31)
    {
    }

    goto LABEL_21;
  }

  v18 = [(CSDCallCapabilities *)self state];
  v19 = [v18 supportsRelayCalling];
  v20 = [(CSDCallCapabilities *)self state];
  [v20 setRelayCallingEnabled:v19];

  v21 = [(CSDCallCapabilities *)self state];
  [v21 setSupportsFaceTimeAudioRelayCalling:1];

  v22 = [(CSDCallCapabilities *)self state];
  [v22 setAccountsSupportSecondaryCalling:1];

  v23 = [(CSDCallCapabilities *)self state];
  [v23 setRelayCallingFeaturesEnabled:1];
LABEL_21:

  v42 = [(CSDCallCapabilities *)self state];
  v43 = [v42 isRelayCallingEnabled];
  v44 = [(CSDCallCapabilities *)self state];
  [v44 setRelayCallingAvailability:v43];

  v9 = [(CSDCallCapabilities *)self state];
  [v9 setSupportsFaceTimeVideoRelayCalling:0];
LABEL_22:

  v45 = [(CSDCallCapabilities *)self state];
  [v45 setSupportsTelephonyRelayCalling:1];

  v46 = [(CSDCallCapabilities *)self _relayCallingDisabledForDeviceIDDefault];
  v47 = [(CSDCallCapabilities *)self state];
  [v47 setRelayCallingDisabledForDeviceID:v46];

  v48 = [(CSDCallCapabilities *)self _outgoingCallerID];
  v49 = [(CSDCallCapabilities *)self state];
  [v49 setOutgoingRelayCallerID:v48];

  v51 = [(CSDCallCapabilities *)self _cloudCallingDevices];
  v50 = [(CSDCallCapabilities *)self state];
  [v50 setCloudCallingDevices:v51];
}

- (BOOL)_supportsRelayCalling
{
  v3 = [(CSDCallCapabilities *)self relayService];
  v4 = [v3 defaultPairedDeviceExists];

  if ([(CSDCallCapabilities *)self _isWatchDevice])
  {
    v5 = sub_100004778();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 67109120;
      v14 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "defaultPairedDeviceExists: %d", &v13, 8u);
    }
  }

  else
  {
    v6 = [(CSDCallCapabilities *)self state];
    if ([v6 supportsPrimaryCalling])
    {
      v7 = 1;
    }

    else
    {
      v8 = [(CSDCallCapabilities *)self relayService];
      v7 = [v8 telephonyCapableDeviceExists];
    }

    v9 = [(CSDCallCapabilities *)self relayService];
    v10 = [v9 relayCapableDeviceExists];

    v11 = sub_100004778();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 67109632;
      v14 = v7;
      v15 = 1024;
      v16 = v10;
      v17 = 1024;
      v18 = v4;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "telephonyDeviceExists: %d, relayCapableDeviceExists: %d, defaultPairedDeviceExists: %d", &v13, 0x14u);
    }

    LOBYTE(v4) = v7 & v10 | v4;
  }

  return v4 & 1;
}

- (BOOL)_accountsMatchForSecondaryCalling
{
  v2 = [(CSDCallCapabilities *)self accountsController];
  v3 = [v2 faceTimeIDMatchesAppleID];

  return v3;
}

- (id)_outgoingCallerID
{
  v2 = [(CSDCallCapabilities *)self accountsController];
  v3 = [v2 outgoingCallerID];

  return v3;
}

- (id)_cloudCallingDevices
{
  v2 = [(CSDCallCapabilities *)self relayService];
  v3 = [v2 devices];

  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [TUCloudCallingDevice alloc];
        v12 = [v11 initWithIDSDevice:{v10, v15}];
        [v4 addObject:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = [v4 sortedArrayUsingComparator:&stru_10061C6B8];

  return v13;
}

- (BOOL)_deviceExistsThatSupportsRelayCallingWithoutLocalRelayCallingEnabled
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(CSDCallCapabilities *)self relayService];
  v3 = [v2 devices];

  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v8 + 1) + 8 * i) supportsRelayCallingWithoutLocalRelayCallingEnabled])
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (BOOL)_relayCallingEnabledDefault
{
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"relayCallingDisabled", TUBundleIdentifierTelephonyUtilitiesFramework, &keyExistsAndHasValidFormat);
  return !keyExistsAndHasValidFormat || AppBooleanValue == 0;
}

- (void)_setRelayCallingEnabledDefault:(BOOL)a3
{
  v3 = a3;
  v4 = sub_100004778();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "_setRelayCallingEnabledDefault: changing value to %d", v7, 8u);
  }

  v5 = &kCFBooleanFalse;
  if (!v3)
  {
    v5 = &kCFBooleanTrue;
  }

  v6 = TUBundleIdentifierTelephonyUtilitiesFramework;
  CFPreferencesSetAppValue(@"relayCallingDisabled", *v5, TUBundleIdentifierTelephonyUtilitiesFramework);
  CFPreferencesAppSynchronize(v6);
}

- (id)_relayCallingDisabledForDeviceIDDefault
{
  v2 = CFPreferencesCopyAppValue(@"relayCallingDisabledForDeviceID", TUBundleIdentifierTelephonyUtilitiesFramework);

  return v2;
}

- (void)_setRelayCallingEnabledDefault:(BOOL)a3 forDeviceWithID:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v15[0] = 67109378;
    v15[1] = v4;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "setRelayCallingEnabledDefault:forDeviceWithID: changing value to %d for %@", v15, 0x12u);
  }

  v8 = [(CSDCallCapabilities *)self _relayCallingDisabledForDeviceIDDefault];
  v9 = [v8 mutableCopy];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = +[NSMutableDictionary dictionary];
  }

  v12 = v11;

  v13 = [NSNumber numberWithInt:!v4];
  [v12 setObject:v13 forKeyedSubscript:v6];

  v14 = TUBundleIdentifierTelephonyUtilitiesFramework;
  CFPreferencesSetAppValue(@"relayCallingDisabledForDeviceID", v12, TUBundleIdentifierTelephonyUtilitiesFramework);
  CFPreferencesAppSynchronize(v14);
}

- (void)_updateDefaultCallingAppIfNecessary
{
  if (supportsDefaultAppRelayTelephonySetting())
  {
    v3 = [(CSDCallCapabilities *)self featureFlags];
    v4 = [v3 phoneAppCoupledRelayEnabled];

    if (v4)
    {

      [(CSDCallCapabilities *)self _updateDefaultCallingAppInLaunchServices];
    }

    else
    {

      [(CSDCallCapabilities *)self _updateTUDefaultAppRelayTelephonySetting];
    }
  }
}

- (void)_updateTUDefaultAppRelayTelephonySetting
{
  if (supportsDefaultAppRelayTelephonySetting())
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v3 = [(CSDCallCapabilities *)self state];
    v4 = [v3 senderIdentityCapabilitiesStateByUUID];
    v5 = [v4 allKeys];

    v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v6)
    {
      v7 = *v19;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v19 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v18 + 1) + 8 * i);
          v10 = [(CSDCallCapabilities *)self state];
          v11 = [v10 senderIdentityCapabilitiesStateByUUID];
          v12 = [v11 objectForKeyedSubscript:v9];
          v13 = [v12 thumperCallingCapabilitiesState];
          v14 = [v13 isEnabled];

          if (v14)
          {
            LOBYTE(v6) = 1;
            goto LABEL_12;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    v15 = [(CSDCallCapabilities *)self state];
    v16 = [v15 isRelayCallingEnabled];
    if (v6 & 1) != 0 || (v16)
    {
    }

    else
    {
      v17 = defaultAppRelayTelephonySettingUserDefaultForPad();

      if (v17 == 2)
      {
        removeDefaultAppRelayTelephonySetting();
      }
    }
  }
}

- (void)_updateDefaultCallingAppInLaunchServices
{
  v3 = [(CSDCallCapabilities *)self userDefaults];
  v4 = [v3 objectForKey:TUDefaultAppRelayTelephonySettingKey];

  if (v4)
  {
    v5 = sub_100004778();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Found a legacy user default for Default Calling, updating LaunchServices to reflect legacy state", buf, 2u);
    }

    -[CSDCallCapabilities _updateDefaultRelayCallingAppInLaunchServicesWithLegacySetting:](self, "_updateDefaultRelayCallingAppInLaunchServicesWithLegacySetting:", [v4 integerValue]);
  }

  else
  {
    v6 = [(CSDCallCapabilities *)self userDefaults];
    v7 = [v6 objectForKey:TUUserManuallySetDefaultCallingAppKey];

    v8 = sub_100004778();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v9)
      {
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "User default indicates user has manually set default calling app, not updating LaunchServices", v11, 2u);
      }
    }

    else
    {
      if (v9)
      {
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "User has never set their default calling app, updating LaunchServices with calculate Default Calling app", v10, 2u);
      }

      [(CSDCallCapabilities *)self _updateDefaultRelayCallingAppInLaunchServicesWithCallCapabilities];
    }
  }
}

- (void)_updateDefaultRelayCallingAppInLaunchServicesWithLegacySetting:(unint64_t)a3
{
  if (supportsDefaultAppRelayTelephonySetting())
  {
    v5 = sub_100004778();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (a3 == 2)
    {
      if (v6)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Legacy default calling user default indicates previous Default Calling value was set to Calls from iPhone. Updating LaunchServices to set MobilePhone as the default calling app", buf, 2u);
      }

      v7 = [LSApplicationRecord alloc];
      v15 = 0;
      v8 = [v7 initWithBundleIdentifier:TUBundleIdentifierPhoneApplication allowPlaceholder:1 error:&v15];
      v9 = v15;
      if (v8)
      {
        v10 = self;
        v11 = v8;
      }

      else
      {
        v12 = sub_100004778();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v17 = v9;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Failed to create LSApplicationRecord for MobilePhone with error: %@", buf, 0xCu);
        }

        v10 = self;
        v11 = 0;
      }

      [(CSDCallCapabilities *)v10 _setDefaultCallingAppInLaunchServices:v11];
    }

    else if (a3 == 1)
    {
      if (v6)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Legacy default calling user default indicates previous Default Calling value was set to None. Updating LaunchServices to set no handler", buf, 2u);
      }

      [(CSDCallCapabilities *)self _setDefaultCallingAppInLaunchServices:0];
    }

    else
    {
      if (v6)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Legacy User Default indicates previous Default Calling value was an LS backed app, not updating", buf, 2u);
      }
    }

    v13 = [(CSDCallCapabilities *)self userDefaults];
    _TUUserManuallySetDefaultCallingApp();

    v14 = [(CSDCallCapabilities *)self userDefaults];
    supportsDefaultAppRelayTelephonySetting();
    _removeDefaultAppRelayTelephonySetting();
  }
}

- (void)_updateDefaultRelayCallingAppInLaunchServicesWithCallCapabilities
{
  if (supportsDefaultAppRelayTelephonySetting())
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v3 = [(CSDCallCapabilities *)self state];
    v4 = [v3 senderIdentityCapabilitiesStateByUUID];
    v5 = [v4 allKeys];

    v6 = [v5 countByEnumeratingWithState:&v30 objects:v36 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v31;
      while (2)
      {
        v9 = 0;
        do
        {
          if (*v31 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v30 + 1) + 8 * v9);
          v11 = [(CSDCallCapabilities *)self state];
          v12 = [v11 senderIdentityCapabilitiesStateByUUID];
          v13 = [v12 objectForKeyedSubscript:v10];
          v14 = [v13 thumperCallingCapabilitiesState];
          v15 = [v14 isEnabled];

          if (v15)
          {
            v16 = 1;
            goto LABEL_12;
          }

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v30 objects:v36 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v16 = 0;
LABEL_12:

    v17 = [(CSDCallCapabilities *)self state];
    v18 = [v17 isRelayCallingEnabled];

    v19 = sub_100004778();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
    if (v16 & 1) != 0 || (v18)
    {
      if (v20)
      {
        v21 = [(CSDCallCapabilities *)self state];
        v22 = [v21 isRelayCallingEnabled];
        *buf = 67109376;
        *v35 = v22;
        *&v35[4] = 1024;
        *&v35[6] = v16;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Relay calling (%d) or Thumper (%d) are enabled, setting Default Calling handler to MobilePhone", buf, 0xEu);
      }

      v23 = [LSApplicationRecord alloc];
      v29 = 0;
      v24 = [v23 initWithBundleIdentifier:TUBundleIdentifierPhoneApplication allowPlaceholder:1 error:&v29];
      v25 = v29;
      if (v24)
      {
        v26 = self;
        v27 = v24;
      }

      else
      {
        v28 = sub_100004778();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *v35 = v25;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Failed to create LSApplicationRecord for MobilePhone with error: %@", buf, 0xCu);
        }

        v26 = self;
        v27 = 0;
      }

      [(CSDCallCapabilities *)v26 _setDefaultCallingAppInLaunchServices:v27];
    }

    else
    {
      if (v20)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Relay calling and Thumper are disabled, setting Default Calling handler to nil", buf, 2u);
      }

      [(CSDCallCapabilities *)self _setDefaultCallingAppInLaunchServices:0];
    }
  }
}

- (void)_setDefaultCallingAppInLaunchServices:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallCapabilities *)self lsApplicationWorkspace];
  v6 = v5;
  if (v4)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10014F040;
    v7[3] = &unk_10061A5D8;
    v8 = v4;
    [v6 setDefaultApplicationForCategory:4 toApplicationRecord:v8 completionHandler:v7];
  }

  else
  {
    [v5 setPreferenceForNoHandlerForCategory:4 completionHandler:&stru_10061C6D8];
  }
}

- (void)_initializePairedHostDeviceState
{
  if (![(CSDCallCapabilities *)self _isWatchDevice])
  {
    return;
  }

  v3 = CFPreferencesCopyAppValue(@"pairedHostDeviceState", TUBundleIdentifierTelephonyUtilitiesFramework);
  if (!v3)
  {
    v4 = sub_100004778();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "No saved paired host device state found", &v16, 2u);
    }

    goto LABEL_15;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [[CSDMessagingCallCapabilitiesState alloc] initWithData:v3];
    v5 = [v4 state];
    [(CSDCallCapabilities *)self setPairedHostDeviceState:v5];

    v6 = [(CSDCallCapabilities *)self pairedHostDeviceState];

    v7 = sub_100004778();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v8)
      {
        v9 = [(CSDCallCapabilities *)self pairedHostDeviceState];
        v16 = 138412290;
        v17 = v9;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Initialized pairedHostDeviceState: %@", &v16, 0xCu);
      }

      goto LABEL_14;
    }

    if (!v8)
    {
LABEL_14:

      goto LABEL_15;
    }

    v16 = 138412290;
    v17 = v3;
    v10 = "[WARN] Could not de-serialize pairedHostDeviceStateData %@";
    v11 = v7;
    v12 = 12;
LABEL_13:
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v10, &v16, v12);
    goto LABEL_14;
  }

  v4 = sub_100004778();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412546;
    v17 = objc_opt_class();
    v18 = 2112;
    v19 = v3;
    v7 = v17;
    v10 = "[WARN] Saved pairedHostDeviceStateData was not an NSData type (class=%@): %@";
    v11 = v4;
    v12 = 22;
    goto LABEL_13;
  }

LABEL_15:

  v13 = [(CSDCallCapabilities *)self pairedHostDeviceState];

  if (!v13)
  {
    v14 = sub_100004778();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Initializing new paired host device state with all values set to NO", &v16, 2u);
    }

    v15 = objc_alloc_init(TUCallCapabilitiesState);
    [(CSDCallCapabilities *)self setPairedHostDeviceState:v15];

    [(CSDCallCapabilities *)self _savePairedHostDeviceState];
  }
}

- (void)_savePairedHostDeviceState
{
  if ([(CSDCallCapabilities *)self _isWatchDevice])
  {
    v3 = [CSDMessagingCallCapabilitiesState alloc];
    v4 = [(CSDCallCapabilities *)self pairedHostDeviceState];
    v7 = [(CSDMessagingCallCapabilitiesState *)v3 initWithCallCapabilitiesState:v4];

    v5 = [(CSDMessagingCallCapabilitiesState *)v7 data];
    v6 = TUBundleIdentifierTelephonyUtilitiesFramework;
    CFPreferencesSetAppValue(@"pairedHostDeviceState", v5, TUBundleIdentifierTelephonyUtilitiesFramework);
    CFPreferencesAppSynchronize(v6);
  }
}

@end