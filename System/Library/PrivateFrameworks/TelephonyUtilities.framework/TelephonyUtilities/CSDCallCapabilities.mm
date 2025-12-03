@interface CSDCallCapabilities
+ (CSDCallCapabilities)sharedInstance;
- (BOOL)_accountsMatchForSecondaryCalling;
- (BOOL)_deviceExistsThatSupportsRelayCallingWithoutLocalRelayCallingEnabled;
- (BOOL)_isAudioAccessoryDevice;
- (BOOL)_isThumperCallingAllowedForCurrentDeviceUsingSenderIdentityCapabilitiesState:(id)state;
- (BOOL)_isWatchDevice;
- (BOOL)_relayCallingEnabledDefault;
- (BOOL)_supportsBasebandCalling;
- (BOOL)_supportsCellularData;
- (BOOL)_supportsDisplayingFaceTimeAudioCalls;
- (BOOL)_supportsDisplayingFaceTimeVideoCalls;
- (BOOL)_supportsDisplayingTelephonyCalls;
- (BOOL)_supportsPrimaryCalling;
- (BOOL)_supportsRelayCalling;
- (BOOL)_supportsThumperCallingUsingSenderIdentityCapabilitiesState:(id)state;
- (BOOL)_supportslaunchingInCallApplicationForIncomingCall;
- (BOOL)isThumperCallingSupportedForAccountID:(id)d;
- (BOOL)isThumperRegisteredDeviceID:(id)d forThumperAccountID:(id)iD;
- (CSDCallCapabilities)init;
- (CSDCallCapabilities)initWithRelayService:(id)service thumperService:(id)thumperService lsApplicationWorkspace:(id)workspace userDefaults:(id)defaults featureFlags:(id)flags;
- (NSArray)localThumperAccounts;
- (NSArray)secondaryThumperAccounts;
- (NSDictionary)thumperCallingCapabilitiesStateByUUID;
- (NSString)debugDescription;
- (TUCallCapabilitiesState)callCapabilitiesState;
- (id)_cloudCallingDevices;
- (id)_outgoingCallerID;
- (id)_relayCallingDisabledForDeviceIDDefault;
- (id)secondaryThumperAccountForAccountID:(id)d;
- (id)thumperCallingCapabilitiesStateForAccountID:(id)d;
- (unsigned)_defaultOverrideForDisableDefault:(id)default forceDefault:(id)forceDefault;
- (void)_initializePairedHostDeviceState;
- (void)_savePairedHostDeviceState;
- (void)_setDefaultCallingAppInLaunchServices:(id)services;
- (void)_setRelayCallingEnabledDefault:(BOOL)default;
- (void)_setRelayCallingEnabledDefault:(BOOL)default forDeviceWithID:(id)d;
- (void)_setThumperCallingAllowed:(BOOL)allowed onSecondaryDeviceWithID:(id)d forSenderIdentityWithUUID:(id)iD;
- (void)_updateCTCapabilities;
- (void)_updateCallAvailability;
- (void)_updateClientsWithState;
- (void)_updateDefaultCallingAppIfNecessary;
- (void)_updateDefaultCallingAppInLaunchServices;
- (void)_updateDefaultRelayCallingAppInLaunchServicesWithCallCapabilities;
- (void)_updateDefaultRelayCallingAppInLaunchServicesWithLegacySetting:(unint64_t)setting;
- (void)_updateDynamicCapabilitiesAndUpdateClients;
- (void)_updateHostingAndDisplayingSupport;
- (void)_updateRelayCapabilities;
- (void)_updateState;
- (void)_updateTUDefaultAppRelayTelephonySetting;
- (void)accountsChanged;
- (void)addThumperRegisteredDeviceID:(id)d forThumperAccountID:(id)iD;
- (void)callCapabilitiesState:(id)state;
- (void)cancelPinRequestFromPrimaryDevice;
- (void)dealloc;
- (void)deviceCapabilityChanged:(id)changed;
- (void)deviceListChanged:(id)changed;
- (void)endEmergencyCallbackMode;
- (void)faceTimeAvailabilityChanged;
- (void)invalidateAndRefreshThumperCallingProvisioningURLForSenderIdentityWithUUID:(id)d;
- (void)invalidateAndRefreshWiFiCallingProvisioningURLForSenderIdentityWithUUID:(id)d;
- (void)outgoingCallerIDChanged;
- (void)registerClient:(id)client;
- (void)removeThumperRegisteredDeviceID:(id)d forThumperAccountID:(id)iD;
- (void)requestPinFromPrimaryDevice;
- (void)setRelayCallingEnabled:(BOOL)enabled;
- (void)setRelayCallingEnabled:(BOOL)enabled forDeviceWithID:(id)d;
- (void)setThumperCallingAllowed:(BOOL)allowed onSecondaryDeviceWithID:(id)d forSenderIdentityWithUUID:(id)iD;
- (void)setThumperCallingAllowedOnDefaultPairedDevice:(BOOL)device forSenderIdentityWithUUID:(id)d;
- (void)setThumperCallingEnabled:(BOOL)enabled forSenderIdentityWithUUID:(id)d;
- (void)setVoLTECallingEnabled:(BOOL)enabled forSenderIdentityWithUUID:(id)d;
- (void)setWiFiCallingEnabled:(BOOL)enabled forSenderIdentityWithUUID:(id)d;
- (void)setWiFiCallingRoamingEnabled:(BOOL)enabled forSenderIdentityWithUUID:(id)d;
- (void)telephonyCallCapabilitiesChanged;
- (void)unregisterClient:(id)client;
- (void)updatePairedHostDeviceCallCapabilitiesState:(id)state;
- (void)updateState;
@end

@implementation CSDCallCapabilities

+ (CSDCallCapabilities)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100146B60;
  block[3] = &unk_10061A860;
  block[4] = self;
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

- (CSDCallCapabilities)initWithRelayService:(id)service thumperService:(id)thumperService lsApplicationWorkspace:(id)workspace userDefaults:(id)defaults featureFlags:(id)flags
{
  serviceCopy = service;
  thumperServiceCopy = thumperService;
  workspaceCopy = workspace;
  defaultsCopy = defaults;
  flagsCopy = flags;
  v50.receiver = self;
  v50.super_class = CSDCallCapabilities;
  v16 = [(CSDCallCapabilities *)&v50 init];
  if (v16)
  {
    v17 = dispatch_queue_create("com.apple.telephonyutilities.callservicesd.callcapabilities", 0);
    queue = v16->_queue;
    v16->_queue = v17;

    objc_storeStrong(&v16->_featureFlags, flags);
    v19 = [[CSDClientManager alloc] initWithSerialQueue:v16->_queue];
    clientManager = v16->_clientManager;
    v16->_clientManager = v19;

    objc_storeStrong(&v16->_lsApplicationWorkspace, workspace);
    objc_storeStrong(&v16->_userDefaults, defaults);
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
    objc_storeStrong(&v22->_relayService, service);
    objc_storeStrong(&v22->_thumperService, thumperService);
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
  queue = [(CSDCallCapabilities *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100147878;
  block[3] = &unk_100619D88;
  v5 = v3;
  v9 = v5;
  selfCopy = self;
  dispatch_sync(queue, block);

  v6 = v5;
  return v5;
}

- (void)dealloc
{
  xpcListener = [(CSDCallCapabilities *)self xpcListener];
  [xpcListener invalidate];

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
    state = [(CSDCallCapabilities *)self state];
    *buf = 138412290;
    v20 = state;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Updating clients with new call capabilities state: %@", buf, 0xCu);
  }

  state2 = [(CSDCallCapabilities *)self state];
  v6 = [state2 copy];

  state3 = [(CSDCallCapabilities *)self state];
  publiclyAccessibleCopy = [state3 publiclyAccessibleCopy];

  v9 = sub_10020A620(@"access-call-capabilities");
  clientManager = [(CSDCallCapabilities *)self clientManager];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100147BF4;
  v15[3] = &unk_10061C650;
  v17 = publiclyAccessibleCopy;
  v18 = v9;
  v16 = v6;
  v11 = publiclyAccessibleCopy;
  v12 = v6;
  v13 = v9;
  v14 = NSStringFromSelector("capabilityStateUpdated:");
  [clientManager performBlockOnClients:v15 coalescedByIdentifier:v14];
}

- (TUCallCapabilitiesState)callCapabilitiesState
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_100028674;
  v11 = sub_1000328C4;
  v12 = 0;
  queue = [(CSDCallCapabilities *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100147D9C;
  v6[3] = &unk_100619E80;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)updatePairedHostDeviceCallCapabilitiesState:(id)state
{
  stateCopy = state;
  queue = [(CSDCallCapabilities *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100147E9C;
  v7[3] = &unk_100619D88;
  v7[4] = self;
  v8 = stateCopy;
  v6 = stateCopy;
  dispatch_async(queue, v7);
}

- (void)callCapabilitiesState:(id)state
{
  stateCopy = state;
  clientManager = [(CSDCallCapabilities *)self clientManager];
  currentClient = [clientManager currentClient];

  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    processName = [currentClient processName];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = processName;
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
  sub_100004AA4(currentClient, @"access-call-capabilities", v10, v9, 0);
  stateCopy[2](stateCopy, *(*(&buf + 1) + 40));
  _Block_object_dispose(&buf, 8);
}

- (void)setRelayCallingEnabled:(BOOL)enabled
{
  clientManager = [(CSDCallCapabilities *)self clientManager];
  currentClient = [clientManager currentClient];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001482E4;
  v7[3] = &unk_100619EA8;
  enabledCopy = enabled;
  v7[4] = self;
  sub_100004AA4(currentClient, @"modify-call-capabilities", v7, 0, "[CSDCallCapabilities setRelayCallingEnabled:]");
}

- (void)setRelayCallingEnabled:(BOOL)enabled forDeviceWithID:(id)d
{
  dCopy = d;
  clientManager = [(CSDCallCapabilities *)self clientManager];
  currentClient = [clientManager currentClient];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100148488;
  v10[3] = &unk_100619F48;
  enabledCopy = enabled;
  v11 = dCopy;
  selfCopy = self;
  v9 = dCopy;
  sub_100004AA4(currentClient, @"modify-call-capabilities", v10, 0, "[CSDCallCapabilities setRelayCallingEnabled:forDeviceWithID:]");
}

- (void)setWiFiCallingEnabled:(BOOL)enabled forSenderIdentityWithUUID:(id)d
{
  dCopy = d;
  clientManager = [(CSDCallCapabilities *)self clientManager];
  currentClient = [clientManager currentClient];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10014863C;
  v10[3] = &unk_100619F48;
  enabledCopy = enabled;
  v11 = dCopy;
  selfCopy = self;
  v9 = dCopy;
  sub_100004AA4(currentClient, @"modify-call-capabilities", v10, 0, "[CSDCallCapabilities setWiFiCallingEnabled:forSenderIdentityWithUUID:]");
}

- (void)setWiFiCallingRoamingEnabled:(BOOL)enabled forSenderIdentityWithUUID:(id)d
{
  dCopy = d;
  clientManager = [(CSDCallCapabilities *)self clientManager];
  currentClient = [clientManager currentClient];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001487F0;
  v10[3] = &unk_100619F48;
  enabledCopy = enabled;
  v11 = dCopy;
  selfCopy = self;
  v9 = dCopy;
  sub_100004AA4(currentClient, @"modify-call-capabilities", v10, 0, "[CSDCallCapabilities setWiFiCallingRoamingEnabled:forSenderIdentityWithUUID:]");
}

- (void)setVoLTECallingEnabled:(BOOL)enabled forSenderIdentityWithUUID:(id)d
{
  dCopy = d;
  clientManager = [(CSDCallCapabilities *)self clientManager];
  currentClient = [clientManager currentClient];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001489A4;
  v10[3] = &unk_100619F48;
  enabledCopy = enabled;
  v11 = dCopy;
  selfCopy = self;
  v9 = dCopy;
  sub_100004AA4(currentClient, @"modify-call-capabilities", v10, 0, "[CSDCallCapabilities setVoLTECallingEnabled:forSenderIdentityWithUUID:]");
}

- (void)setThumperCallingEnabled:(BOOL)enabled forSenderIdentityWithUUID:(id)d
{
  dCopy = d;
  clientManager = [(CSDCallCapabilities *)self clientManager];
  currentClient = [clientManager currentClient];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100148B58;
  v10[3] = &unk_100619F48;
  enabledCopy = enabled;
  v11 = dCopy;
  selfCopy = self;
  v9 = dCopy;
  sub_100004AA4(currentClient, @"modify-call-capabilities", v10, 0, "[CSDCallCapabilities setThumperCallingEnabled:forSenderIdentityWithUUID:]");
}

- (void)setThumperCallingAllowed:(BOOL)allowed onSecondaryDeviceWithID:(id)d forSenderIdentityWithUUID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  clientManager = [(CSDCallCapabilities *)self clientManager];
  currentClient = [clientManager currentClient];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100148D30;
  v14[3] = &unk_10061BE38;
  allowedCopy = allowed;
  v15 = dCopy;
  v16 = iDCopy;
  selfCopy = self;
  v12 = iDCopy;
  v13 = dCopy;
  sub_100004AA4(currentClient, @"modify-call-capabilities", v14, 0, "[CSDCallCapabilities setThumperCallingAllowed:onSecondaryDeviceWithID:forSenderIdentityWithUUID:]");
}

- (void)setThumperCallingAllowedOnDefaultPairedDevice:(BOOL)device forSenderIdentityWithUUID:(id)d
{
  dCopy = d;
  clientManager = [(CSDCallCapabilities *)self clientManager];
  currentClient = [clientManager currentClient];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100148EF0;
  v10[3] = &unk_100619F48;
  deviceCopy = device;
  v11 = dCopy;
  selfCopy = self;
  v9 = dCopy;
  sub_100004AA4(currentClient, @"modify-call-capabilities", v10, 0, "[CSDCallCapabilities setThumperCallingAllowedOnDefaultPairedDevice:forSenderIdentityWithUUID:]");
}

- (void)endEmergencyCallbackMode
{
  queue = [(CSDCallCapabilities *)self queue];
  dispatch_assert_queue_V2(queue);

  clientManager = [(CSDCallCapabilities *)self clientManager];
  currentClient = [clientManager currentClient];

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100149088;
  v6[3] = &unk_100619D38;
  v6[4] = self;
  sub_100004AA4(currentClient, @"modify-call-capabilities", v6, 0, "[CSDCallCapabilities endEmergencyCallbackMode]");
}

- (void)invalidateAndRefreshWiFiCallingProvisioningURLForSenderIdentityWithUUID:(id)d
{
  dCopy = d;
  clientManager = [(CSDCallCapabilities *)self clientManager];
  currentClient = [clientManager currentClient];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001491EC;
  v8[3] = &unk_100619D88;
  v9 = dCopy;
  selfCopy = self;
  v7 = dCopy;
  sub_100004AA4(currentClient, @"modify-call-capabilities", v8, 0, "[CSDCallCapabilities invalidateAndRefreshWiFiCallingProvisioningURLForSenderIdentityWithUUID:]");
}

- (void)invalidateAndRefreshThumperCallingProvisioningURLForSenderIdentityWithUUID:(id)d
{
  dCopy = d;
  clientManager = [(CSDCallCapabilities *)self clientManager];
  currentClient = [clientManager currentClient];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100149390;
  v8[3] = &unk_100619D88;
  v9 = dCopy;
  selfCopy = self;
  v7 = dCopy;
  sub_100004AA4(currentClient, @"modify-call-capabilities", v8, 0, "[CSDCallCapabilities invalidateAndRefreshThumperCallingProvisioningURLForSenderIdentityWithUUID:]");
}

- (void)requestPinFromPrimaryDevice
{
  clientManager = [(CSDCallCapabilities *)self clientManager];
  currentClient = [clientManager currentClient];

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100149510;
  v5[3] = &unk_100619D38;
  v5[4] = self;
  sub_100004AA4(currentClient, @"modify-call-capabilities", v5, 0, "[CSDCallCapabilities requestPinFromPrimaryDevice]");
}

- (void)cancelPinRequestFromPrimaryDevice
{
  clientManager = [(CSDCallCapabilities *)self clientManager];
  currentClient = [clientManager currentClient];

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001497E4;
  v5[3] = &unk_100619D38;
  v5[4] = self;
  sub_100004AA4(currentClient, @"modify-call-capabilities", v5, 0, "[CSDCallCapabilities cancelPinRequestFromPrimaryDevice]");
}

- (void)registerClient:(id)client
{
  clientCopy = client;
  queue = [(CSDCallCapabilities *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10014991C;
  v7[3] = &unk_100619D88;
  v7[4] = self;
  v8 = clientCopy;
  v6 = clientCopy;
  dispatch_async(queue, v7);
}

- (void)unregisterClient:(id)client
{
  clientCopy = client;
  queue = [(CSDCallCapabilities *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100149A24;
  v7[3] = &unk_100619D88;
  v7[4] = self;
  v8 = clientCopy;
  v6 = clientCopy;
  dispatch_async(queue, v7);
}

- (void)deviceListChanged:(id)changed
{
  changedCopy = changed;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v9 = changedCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received device list changed notification: %@", buf, 0xCu);
  }

  queue = [(CSDCallCapabilities *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100149B94;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)deviceCapabilityChanged:(id)changed
{
  changedCopy = changed;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v9 = changedCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received device capability changed notification: %@", buf, 0xCu);
  }

  queue = [(CSDCallCapabilities *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100149CB8;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)accountsChanged
{
  v3 = sub_100004778();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Received accounts changed delegate callback", buf, 2u);
  }

  queue = [(CSDCallCapabilities *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100149DC4;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)faceTimeAvailabilityChanged
{
  v3 = sub_100004778();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Received FaceTime availability changed delegate callback", buf, 2u);
  }

  queue = [(CSDCallCapabilities *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100149E9C;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)outgoingCallerIDChanged
{
  v3 = sub_100004778();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Received outgoingCallerIDChanged delegate callback", buf, 2u);
  }

  queue = [(CSDCallCapabilities *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100149F74;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)telephonyCallCapabilitiesChanged
{
  queue = [(CSDCallCapabilities *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = sub_100004778();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Received telephonyCallCapabilitiesChanged delegate callback", v5, 2u);
  }

  [(CSDCallCapabilities *)self _updateDynamicCapabilitiesAndUpdateClients];
}

- (BOOL)isThumperRegisteredDeviceID:(id)d forThumperAccountID:(id)iD
{
  dCopy = d;
  v7 = [(CSDCallCapabilities *)self thumperCallingCapabilitiesStateForAccountID:iD];
  v8 = v7;
  if (v7)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    approvedSecondaryDeviceIDs = [v7 approvedSecondaryDeviceIDs];
    v10 = [approvedSecondaryDeviceIDs countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v10)
    {
      v11 = *v16;
      while (2)
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(approvedSecondaryDeviceIDs);
          }

          v13 = *(*(&v15 + 1) + 8 * i);
          if (TUStringsAreCaseInsensitiveEqual())
          {
            LOBYTE(v10) = 1;
            goto LABEL_12;
          }
        }

        v10 = [approvedSecondaryDeviceIDs countByEnumeratingWithState:&v15 objects:v19 count:16];
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

- (void)addThumperRegisteredDeviceID:(id)d forThumperAccountID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
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
    v18 = dCopy;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v24 + 1) + 8 * i);
        thumperCallingCapabilitiesStateByUUID = [(CSDCallCapabilities *)self thumperCallingCapabilitiesStateByUUID];
        v14 = [thumperCallingCapabilitiesStateByUUID objectForKeyedSubscript:v12];
        accountID = [v14 accountID];
        v16 = TUStringsAreCaseInsensitiveEqual();

        if (v16)
        {
          queue = [(CSDCallCapabilities *)self queue];
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10014A570;
          block[3] = &unk_100619E58;
          block[4] = self;
          dCopy = v18;
          v22 = v18;
          v23 = v12;
          dispatch_async(queue, block);

          goto LABEL_11;
        }
      }

      v9 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      dCopy = v18;
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (void)removeThumperRegisteredDeviceID:(id)d forThumperAccountID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
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
        if (iDCopy)
        {
          thumperCallingCapabilitiesStateByUUID = [(CSDCallCapabilities *)self thumperCallingCapabilitiesStateByUUID];
          v13 = [thumperCallingCapabilitiesStateByUUID objectForKeyedSubscript:v11];
          accountID = [v13 accountID];
          v15 = TUStringsAreCaseInsensitiveEqual();

          if (v15)
          {
            queue = [(CSDCallCapabilities *)self queue];
            v24[0] = _NSConcreteStackBlock;
            v24[1] = 3221225472;
            v24[2] = sub_10014A810;
            v24[3] = &unk_100619E58;
            v24[4] = self;
            v25 = dCopy;
            v26 = v11;
            dispatch_async(queue, v24);

            goto LABEL_12;
          }
        }

        else
        {
          queue2 = [(CSDCallCapabilities *)self queue];
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10014A824;
          block[3] = &unk_100619E58;
          block[4] = self;
          v22 = dCopy;
          v23 = v11;
          dispatch_async(queue2, block);
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
  queue = [(CSDCallCapabilities *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10014A954;
  v6[3] = &unk_100619E80;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);

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
  queue = [(CSDCallCapabilities *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10014AAD8;
  v6[3] = &unk_100619E80;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)secondaryThumperAccountForAccountID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100028674;
  v16 = sub_1000328C4;
  v17 = 0;
  queue = [(CSDCallCapabilities *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10014AC84;
  block[3] = &unk_10061C678;
  v10 = dCopy;
  v11 = &v12;
  block[4] = self;
  v6 = dCopy;
  dispatch_sync(queue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)thumperCallingCapabilitiesStateForAccountID:(id)d
{
  dCopy = d;
  thumperCallingCapabilitiesStateByUUID = [(CSDCallCapabilities *)self thumperCallingCapabilitiesStateByUUID];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = [thumperCallingCapabilitiesStateByUUID allKeys];
  v6 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v18 = thumperCallingCapabilitiesStateByUUID;
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
        thumperCallingCapabilitiesStateByUUID2 = [(CSDCallCapabilities *)self thumperCallingCapabilitiesStateByUUID];
        v12 = [thumperCallingCapabilitiesStateByUUID2 objectForKeyedSubscript:v10];
        accountID = [v12 accountID];
        v14 = TUStringsAreCaseInsensitiveEqual();

        if (v14)
        {
          thumperCallingCapabilitiesStateByUUID3 = [(CSDCallCapabilities *)self thumperCallingCapabilitiesStateByUUID];
          v15 = [thumperCallingCapabilitiesStateByUUID3 objectForKeyedSubscript:v10];

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
    thumperCallingCapabilitiesStateByUUID = v18;
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
  queue = [(CSDCallCapabilities *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10014AFDC;
  v6[3] = &unk_10061C1E0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);

  v4 = [v8[5] copy];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)updateState
{
  queue = [(CSDCallCapabilities *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10014B1C8;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(queue, block);
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
  _supportsPrimaryCalling = [(CSDCallCapabilities *)self _supportsPrimaryCalling];
  state = [(CSDCallCapabilities *)self state];
  [state setSupportsPrimaryCalling:_supportsPrimaryCalling];

  _supportsBasebandCalling = [(CSDCallCapabilities *)self _supportsBasebandCalling];
  state2 = [(CSDCallCapabilities *)self state];
  [state2 setSupportsBasebandCalling:_supportsBasebandCalling];

  _supportsCellularData = [(CSDCallCapabilities *)self _supportsCellularData];
  state3 = [(CSDCallCapabilities *)self state];
  [state3 setSupportsCellularData:_supportsCellularData];

  _supportsDisplayingTelephonyCalls = [(CSDCallCapabilities *)self _supportsDisplayingTelephonyCalls];
  state4 = [(CSDCallCapabilities *)self state];
  [state4 setSupportsDisplayingTelephonyCalls:_supportsDisplayingTelephonyCalls];

  _supportsDisplayingFaceTimeAudioCalls = [(CSDCallCapabilities *)self _supportsDisplayingFaceTimeAudioCalls];
  state5 = [(CSDCallCapabilities *)self state];
  [state5 setSupportsDisplayingFaceTimeAudioCalls:_supportsDisplayingFaceTimeAudioCalls];

  _supportsDisplayingFaceTimeVideoCalls = [(CSDCallCapabilities *)self _supportsDisplayingFaceTimeVideoCalls];
  state6 = [(CSDCallCapabilities *)self state];
  [state6 setSupportsDisplayingFaceTimeVideoCalls:_supportsDisplayingFaceTimeVideoCalls];
}

- (unsigned)_defaultOverrideForDisableDefault:(id)default forceDefault:(id)forceDefault
{
  defaultCopy = default;
  forceDefaultCopy = forceDefault;
  keyExistsAndHasValidFormat = 0;
  v7 = TUBundleIdentifierTelephonyUtilitiesFramework;
  v8 = 0;
  if (CFPreferencesGetAppBooleanValue(defaultCopy, TUBundleIdentifierTelephonyUtilitiesFramework, &keyExistsAndHasValidFormat))
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
      v16 = defaultCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[WARN] Disabling support because %@ was set to YES", buf, 0xCu);
    }

    v8 = 2;
  }

  if (CFPreferencesGetAppBooleanValue(forceDefaultCopy, v7, &keyExistsAndHasValidFormat))
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
      v16 = forceDefaultCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[WARN] Enabling support because %@ was set to YES", buf, 0xCu);
    }

    v8 = 1;
  }

  return v8;
}

- (BOOL)_supportsPrimaryCalling
{
  v3 = +[FTDeviceSupport sharedInstance];
  isTelephonyDevice = [v3 isTelephonyDevice];

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

  return isTelephonyDevice;
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
  supportsCellularData = [v3 supportsCellularData];

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

  return supportsCellularData;
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
  inProcess_isCallingSupported = [v3 inProcess_isCallingSupported];

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

  return inProcess_isCallingSupported;
}

- (BOOL)_supportsDisplayingFaceTimeVideoCalls
{
  v3 = +[FTDeviceSupport sharedInstance];
  faceTimeSupported = [v3 faceTimeSupported];

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

  return faceTimeSupported;
}

- (void)_updateCallAvailability
{
  accountsController = [(CSDCallCapabilities *)self accountsController];
  isFaceTimeAudioAvailable = [accountsController isFaceTimeAudioAvailable];
  state = [(CSDCallCapabilities *)self state];
  [state setFaceTimeAudioAvailable:isFaceTimeAudioAvailable];

  accountsController2 = [(CSDCallCapabilities *)self accountsController];
  isFaceTimeVideoAvailable = [accountsController2 isFaceTimeVideoAvailable];
  state2 = [(CSDCallCapabilities *)self state];
  [state2 setFaceTimeVideoAvailable:isFaceTimeVideoAvailable];
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
  telephonyCallCapabilities = [(CSDCallCapabilities *)self telephonyCallCapabilities];
  areCapabilitiesValid = [telephonyCallCapabilities areCapabilitiesValid];
  state = [(CSDCallCapabilities *)self state];
  [state setCtCapabilitiesValid:areCapabilitiesValid];

  telephonyCallCapabilities2 = [(CSDCallCapabilities *)self telephonyCallCapabilities];
  isEmergencyCallbackModeEnabled = [telephonyCallCapabilities2 isEmergencyCallbackModeEnabled];
  state2 = [(CSDCallCapabilities *)self state];
  [state2 setEmergencyCallbackModeEnabled:isEmergencyCallbackModeEnabled];

  telephonyCallCapabilities3 = [(CSDCallCapabilities *)self telephonyCallCapabilities];
  isEmergencyCallbackPossible = [telephonyCallCapabilities3 isEmergencyCallbackPossible];
  state3 = [(CSDCallCapabilities *)self state];
  [state3 setEmergencyCallbackPossible:isEmergencyCallbackPossible];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10014C274;
  block[3] = &unk_100619D38;
  block[4] = self;
  if (qword_1006ACDD0 != -1)
  {
    dispatch_once(&qword_1006ACDD0, block);
  }

  telephonyCallCapabilities4 = [(CSDCallCapabilities *)self telephonyCallCapabilities];
  senderIdentityCapabilitiesStateByUUID = [telephonyCallCapabilities4 senderIdentityCapabilitiesStateByUUID];

  +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [senderIdentityCapabilitiesStateByUUID count]);
  v47 = v46 = senderIdentityCapabilitiesStateByUUID;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = [senderIdentityCapabilitiesStateByUUID allKeys];
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

        wiFiCallingCapabilitiesState = [v21 wiFiCallingCapabilitiesState];
        [wiFiCallingCapabilitiesState setSupported:v22];

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

        voLTECallingCapabilitiesState = [v21 voLTECallingCapabilitiesState];
        [voLTECallingCapabilitiesState setSupported:v24];

LABEL_18:
        thumperCallingCapabilitiesState = [v21 thumperCallingCapabilitiesState];
        v27 = thumperCallingCapabilitiesState;
        if (byte_1006ACDCA == 2)
        {
          v28 = 0;
          goto LABEL_22;
        }

        if (byte_1006ACDCA == 1)
        {
          v28 = 1;
LABEL_22:
          [thumperCallingCapabilitiesState setSupported:v28];
        }

        [v27 setSupported:{-[CSDCallCapabilities _supportsThumperCallingUsingSenderIdentityCapabilitiesState:](self, "_supportsThumperCallingUsingSenderIdentityCapabilitiesState:", v21)}];
        [v27 setApproved:{-[CSDCallCapabilities _isThumperCallingAllowedForCurrentDeviceUsingSenderIdentityCapabilitiesState:](self, "_isThumperCallingAllowedForCurrentDeviceUsingSenderIdentityCapabilitiesState:", v21)}];
        state4 = [(CSDCallCapabilities *)self state];
        isRelayCallingEnabled = [state4 isRelayCallingEnabled];
        if ((isRelayCallingEnabled & 1) == 0)
        {
          state5 = [(CSDCallCapabilities *)self state];
          defaultPairedDevice = [state5 defaultPairedDevice];
          if (!defaultPairedDevice)
          {
            [v27 setEnabled:0];
LABEL_32:

            goto LABEL_33;
          }
        }

        if ([v27 isSupported] && objc_msgSend(v27, "isApproved"))
        {
          isEnabled = [v27 isEnabled];
          v32 = v27;
        }

        else
        {
          v32 = v27;
          isEnabled = 0;
        }

        [v32 setEnabled:isEnabled];
        if ((isRelayCallingEnabled & 1) == 0)
        {
          goto LABEL_32;
        }

LABEL_33:

        state6 = [(CSDCallCapabilities *)self state];
        supportsBasebandCalling = [state6 supportsBasebandCalling];

        if ((supportsBasebandCalling & 1) == 0)
        {
          [v21 setSupportsSimultaneousVoiceAndData:1];
        }

        [v47 setObject:v21 forKeyedSubscript:v19];
      }

      v17 = [obj countByEnumeratingWithState:&v48 objects:v55 count:16];
    }

    while (v17);
  }

  state7 = [(CSDCallCapabilities *)self state];
  [state7 setSenderIdentityCapabilitiesStateByUUID:v47];

  state8 = [(CSDCallCapabilities *)self state];
  if ([state8 supportsPrimaryCalling])
  {
    goto LABEL_49;
  }

  state9 = [(CSDCallCapabilities *)self state];
  accountsSupportSecondaryCalling = [state9 accountsSupportSecondaryCalling];

  if (accountsSupportSecondaryCalling)
  {
    _primaryThumperAccountRequiringMatchingCallerID = [(CSDCallCapabilities *)self _primaryThumperAccountRequiringMatchingCallerID];
    state8 = [_primaryThumperAccountRequiringMatchingCallerID accountID];

    v40 = sub_100004778();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v54 = state8;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Found primary Thumper account ID %@", buf, 0xCu);
    }

    if (state8 && ![(CSDCallCapabilities *)self isThumperCallingSupportedForAccountID:state8])
    {
      v41 = sub_100004778();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v54 = state8;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Thumper calling is not supported for account ID %@", buf, 0xCu);
      }

      state8 = 0;
    }

    v42 = sub_100004778();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v54 = state8;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Setting associated Thumper account ID %@", buf, 0xCu);
    }

    telephonyCallCapabilities5 = [(CSDCallCapabilities *)self telephonyCallCapabilities];
    [telephonyCallCapabilities5 setThumperCallingAssociatedAccountID:state8];

LABEL_49:
  }
}

- (BOOL)isThumperCallingSupportedForAccountID:(id)d
{
  dCopy = d;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  state = [(CSDCallCapabilities *)self state];
  senderIdentityCapabilitiesStateByUUID = [state senderIdentityCapabilitiesStateByUUID];
  allKeys = [senderIdentityCapabilitiesStateByUUID allKeys];

  v8 = [allKeys countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        state2 = [(CSDCallCapabilities *)self state];
        senderIdentityCapabilitiesStateByUUID2 = [state2 senderIdentityCapabilitiesStateByUUID];
        v15 = [senderIdentityCapabilitiesStateByUUID2 objectForKeyedSubscript:v12];
        thumperCallingCapabilitiesState = [v15 thumperCallingCapabilitiesState];

        accountID = [thumperCallingCapabilitiesState accountID];
        LODWORD(senderIdentityCapabilitiesStateByUUID2) = TUStringsAreCaseInsensitiveEqual();

        if (senderIdentityCapabilitiesStateByUUID2)
        {
          isSupported = [thumperCallingCapabilitiesState isSupported];

          goto LABEL_11;
        }
      }

      v9 = [allKeys countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  isSupported = 0;
LABEL_11:

  return isSupported;
}

- (void)_setThumperCallingAllowed:(BOOL)allowed onSecondaryDeviceWithID:(id)d forSenderIdentityWithUUID:(id)iD
{
  allowedCopy = allowed;
  dCopy = d;
  iDCopy = iD;
  state = [(CSDCallCapabilities *)self state];
  senderIdentityCapabilitiesStateByUUID = [state senderIdentityCapabilitiesStateByUUID];
  v12 = [senderIdentityCapabilitiesStateByUUID objectForKeyedSubscript:iDCopy];
  thumperCallingCapabilitiesState = [v12 thumperCallingCapabilitiesState];

  if (!thumperCallingCapabilitiesState)
  {
    v17 = sub_100004778();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_35;
    }

    *buf = 138412290;
    *v45 = iDCopy;
    v28 = "[WARN] Could not find Thumper capabilities for sender identity UUID %@";
    v29 = v17;
    v30 = 12;
LABEL_19:
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, v28, buf, v30);
    goto LABEL_35;
  }

  approvedSecondaryDeviceIDs = [thumperCallingCapabilitiesState approvedSecondaryDeviceIDs];
  v15 = [approvedSecondaryDeviceIDs containsObject:dCopy];

  if (v15 == allowedCopy)
  {
    v17 = sub_100004778();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_35;
    }

    *buf = 67109634;
    *v45 = v15;
    *&v45[4] = 1024;
    *&v45[6] = allowedCopy;
    LOWORD(v46[0]) = 2112;
    *(v46 + 2) = dCopy;
    v28 = "_setThumperCallingAllowed: not updating value. Is currently %d and asked to set to %d on secondary device ID %@";
    v29 = v17;
    v30 = 24;
    goto LABEL_19;
  }

  telephonyCallCapabilities = [(CSDCallCapabilities *)self telephonyCallCapabilities];
  v17 = telephonyCallCapabilities;
  if (allowedCopy)
  {
    accountID = [thumperCallingCapabilitiesState accountID];
    if ([accountID length])
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
        v37 = iDCopy;
        v38 = dCopy;
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

          accountID2 = [v21 accountID];
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

            iDCopy = v37;
            dCopy = v38;
            v17 = v36;
            goto LABEL_14;
          }
        }

        v18 = v23;

        iDCopy = v37;
        dCopy = v38;
        v17 = v36;
        if (!v21)
        {
          goto LABEL_26;
        }

        availableDeviceSlots = [v21 availableDeviceSlots];
        v32 = sub_100004778();
        v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
        if (availableDeviceSlots < 1)
        {
          if (v33)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "[WARN] Not changing Thumper calling allowed value. No device slots remain for this device. Displaying notification to the user", buf, 2u);
          }

          thumperPinExchangeController = [(CSDCallCapabilities *)self thumperPinExchangeController];
          [thumperPinExchangeController displaySlotsFullNotification];
        }

        else
        {
          if (v33)
          {
            *buf = 67109634;
            *v45 = v35;
            *&v45[4] = 1024;
            *&v45[6] = allowedCopy;
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
          *v45 = dCopy;
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
        *v45 = thumperCallingCapabilitiesState;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[WARN] Could not retrieve account ID from Thumper capabilities %@", buf, 0xCu);
      }
    }
  }

  else
  {
    [telephonyCallCapabilities setThumperCallingAllowed:0 onSecondaryDeviceWithID:dCopy forSenderIdentityWithUUID:iDCopy];
  }

LABEL_35:
}

- (BOOL)_supportsThumperCallingUsingSenderIdentityCapabilitiesState:(id)state
{
  stateCopy = state;
  state = [(CSDCallCapabilities *)self state];
  supportsPrimaryCalling = [state supportsPrimaryCalling];

  if (supportsPrimaryCalling)
  {
    senderIdentityUUID = [stateCopy senderIdentityUUID];
    if (senderIdentityUUID)
    {
      telephonyCallCapabilities = [(CSDCallCapabilities *)self telephonyCallCapabilities];
      v9 = [telephonyCallCapabilities telephonySubscriptionLabelIdentifierForSenderIdentityUUID:senderIdentityUUID];

      if ([v9 length])
      {
        thumperCallingCapabilitiesState = [stateCopy thumperCallingCapabilitiesState];
        if ([thumperCallingCapabilitiesState isSupported])
        {
          thumperService = [(CSDCallCapabilities *)self thumperService];
          LOBYTE(v12) = [thumperService isServiceEnabledForTelephonySubscriptionLabelIdentifier:v9];
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
        v18 = stateCopy;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[WARN] Could not obtain UUID from sender identity capabilities state %@", &v17, 0xCu);
      }

      LOBYTE(v12) = 0;
    }
  }

  else
  {
    _primaryThumperAccountRequiringMatchingCallerID = [(CSDCallCapabilities *)self _primaryThumperAccountRequiringMatchingCallerID];
    LODWORD(v12) = _primaryThumperAccountRequiringMatchingCallerID != 0;
  }

  state2 = [(CSDCallCapabilities *)self state];
  supportsRelayCalling = [state2 supportsRelayCalling];

  return supportsRelayCalling & v12;
}

- (BOOL)_isThumperCallingAllowedForCurrentDeviceUsingSenderIdentityCapabilitiesState:(id)state
{
  stateCopy = state;
  thumperCallingCapabilitiesState = [stateCopy thumperCallingCapabilitiesState];
  isSupported = [thumperCallingCapabilitiesState isSupported];

  state = [(CSDCallCapabilities *)self state];
  supportsPrimaryCalling = [state supportsPrimaryCalling];

  if ((supportsPrimaryCalling & 1) == 0)
  {
    _primaryThumperAccountRequiringMatchingCallerID = [(CSDCallCapabilities *)self _primaryThumperAccountRequiringMatchingCallerID];
    allowedSecondaryDeviceIDs = [_primaryThumperAccountRequiringMatchingCallerID allowedSecondaryDeviceIDs];
    thumperCallingCapabilitiesState2 = [stateCopy thumperCallingCapabilitiesState];
    localDeviceID = [thumperCallingCapabilitiesState2 localDeviceID];
    isSupported = [allowedSecondaryDeviceIDs containsObject:localDeviceID];
  }

  return isSupported;
}

- (void)_updateRelayCapabilities
{
  _supportsRelayCalling = [(CSDCallCapabilities *)self _supportsRelayCalling];
  state = [(CSDCallCapabilities *)self state];
  [state setSupportsRelayCalling:_supportsRelayCalling];

  _accountsMatchForSecondaryCalling = [(CSDCallCapabilities *)self _accountsMatchForSecondaryCalling];
  state2 = [(CSDCallCapabilities *)self state];
  [state2 setAccountsMatchForSecondaryCalling:_accountsMatchForSecondaryCalling];

  if ([(CSDCallCapabilities *)self _isWatchDevice])
  {
    relayService = [(CSDCallCapabilities *)self relayService];
    defaultPairedDevice = [relayService defaultPairedDevice];

    isConnected = [defaultPairedDevice isConnected];
    state3 = [(CSDCallCapabilities *)self state];
    v12 = state3;
    if (isConnected)
    {
      [state3 setRelayCallingEnabled:1];

      state4 = [(CSDCallCapabilities *)self state];
      [state4 setRelayCallingFeaturesEnabled:1];

      isNearby = [defaultPairedDevice isNearby];
      state5 = [(CSDCallCapabilities *)self state];
      v16 = state5;
      if (isNearby)
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
      [state3 setRelayCallingEnabled:0];

      state6 = [(CSDCallCapabilities *)self state];
      [state6 setRelayCallingFeaturesEnabled:0];

      state5 = [(CSDCallCapabilities *)self state];
      v16 = state5;
      v17 = 0;
    }

    [state5 setRelayCallingAvailability:v17];

    pairedHostDeviceState = [(CSDCallCapabilities *)self pairedHostDeviceState];
    isFaceTimeAudioAvailable = [pairedHostDeviceState isFaceTimeAudioAvailable];
    state7 = [(CSDCallCapabilities *)self state];
    [state7 setSupportsFaceTimeAudioRelayCalling:isFaceTimeAudioAvailable];

    pairedHostDeviceState2 = [(CSDCallCapabilities *)self pairedHostDeviceState];
    isFaceTimeVideoAvailable = [pairedHostDeviceState2 isFaceTimeVideoAvailable];
    state8 = [(CSDCallCapabilities *)self state];
    [state8 setSupportsFaceTimeVideoRelayCalling:isFaceTimeVideoAvailable];

    state9 = [(CSDCallCapabilities *)self state];
    [state9 setAccountsSupportSecondaryCalling:1];

    goto LABEL_22;
  }

  if (![(CSDCallCapabilities *)self _isAudioAccessoryDevice])
  {
    _relayCallingEnabledDefault = [(CSDCallCapabilities *)self _relayCallingEnabledDefault];
    state10 = [(CSDCallCapabilities *)self state];
    [state10 setRelayCallingEnabled:_relayCallingEnabledDefault];

    state11 = [(CSDCallCapabilities *)self state];
    [state11 setSupportsFaceTimeAudioRelayCalling:0];

    state12 = [(CSDCallCapabilities *)self state];
    accountsMatchForSecondaryCalling = [state12 accountsMatchForSecondaryCalling];
    state13 = [(CSDCallCapabilities *)self state];
    [state13 setAccountsSupportSecondaryCalling:accountsMatchForSecondaryCalling];

    state14 = [(CSDCallCapabilities *)self state];
    supportsRelayCalling = [state14 supportsRelayCalling];
    if (supportsRelayCalling)
    {
      state13 = [(CSDCallCapabilities *)self state];
      if ([state13 accountsSupportSecondaryCalling])
      {
        state15 = [(CSDCallCapabilities *)self state];
        v32 = 1;
        _deviceExistsThatSupportsRelayCallingWithoutLocalRelayCallingEnabled = 1;
        if ([state15 isRelayCallingEnabled])
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

    _deviceExistsThatSupportsRelayCallingWithoutLocalRelayCallingEnabled = [(CSDCallCapabilities *)self _deviceExistsThatSupportsRelayCallingWithoutLocalRelayCallingEnabled];
LABEL_17:
    state16 = [(CSDCallCapabilities *)self state];
    [state16 setRelayCallingFeaturesEnabled:_deviceExistsThatSupportsRelayCallingWithoutLocalRelayCallingEnabled];

    if (v32)
    {
    }

    if (supportsRelayCalling)
    {
    }

    goto LABEL_21;
  }

  state17 = [(CSDCallCapabilities *)self state];
  supportsRelayCalling2 = [state17 supportsRelayCalling];
  state18 = [(CSDCallCapabilities *)self state];
  [state18 setRelayCallingEnabled:supportsRelayCalling2];

  state19 = [(CSDCallCapabilities *)self state];
  [state19 setSupportsFaceTimeAudioRelayCalling:1];

  state20 = [(CSDCallCapabilities *)self state];
  [state20 setAccountsSupportSecondaryCalling:1];

  state14 = [(CSDCallCapabilities *)self state];
  [state14 setRelayCallingFeaturesEnabled:1];
LABEL_21:

  state21 = [(CSDCallCapabilities *)self state];
  isRelayCallingEnabled = [state21 isRelayCallingEnabled];
  state22 = [(CSDCallCapabilities *)self state];
  [state22 setRelayCallingAvailability:isRelayCallingEnabled];

  defaultPairedDevice = [(CSDCallCapabilities *)self state];
  [defaultPairedDevice setSupportsFaceTimeVideoRelayCalling:0];
LABEL_22:

  state23 = [(CSDCallCapabilities *)self state];
  [state23 setSupportsTelephonyRelayCalling:1];

  _relayCallingDisabledForDeviceIDDefault = [(CSDCallCapabilities *)self _relayCallingDisabledForDeviceIDDefault];
  state24 = [(CSDCallCapabilities *)self state];
  [state24 setRelayCallingDisabledForDeviceID:_relayCallingDisabledForDeviceIDDefault];

  _outgoingCallerID = [(CSDCallCapabilities *)self _outgoingCallerID];
  state25 = [(CSDCallCapabilities *)self state];
  [state25 setOutgoingRelayCallerID:_outgoingCallerID];

  _cloudCallingDevices = [(CSDCallCapabilities *)self _cloudCallingDevices];
  state26 = [(CSDCallCapabilities *)self state];
  [state26 setCloudCallingDevices:_cloudCallingDevices];
}

- (BOOL)_supportsRelayCalling
{
  relayService = [(CSDCallCapabilities *)self relayService];
  defaultPairedDeviceExists = [relayService defaultPairedDeviceExists];

  if ([(CSDCallCapabilities *)self _isWatchDevice])
  {
    v5 = sub_100004778();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 67109120;
      v14 = defaultPairedDeviceExists;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "defaultPairedDeviceExists: %d", &v13, 8u);
    }
  }

  else
  {
    state = [(CSDCallCapabilities *)self state];
    if ([state supportsPrimaryCalling])
    {
      telephonyCapableDeviceExists = 1;
    }

    else
    {
      relayService2 = [(CSDCallCapabilities *)self relayService];
      telephonyCapableDeviceExists = [relayService2 telephonyCapableDeviceExists];
    }

    relayService3 = [(CSDCallCapabilities *)self relayService];
    relayCapableDeviceExists = [relayService3 relayCapableDeviceExists];

    v11 = sub_100004778();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 67109632;
      v14 = telephonyCapableDeviceExists;
      v15 = 1024;
      v16 = relayCapableDeviceExists;
      v17 = 1024;
      v18 = defaultPairedDeviceExists;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "telephonyDeviceExists: %d, relayCapableDeviceExists: %d, defaultPairedDeviceExists: %d", &v13, 0x14u);
    }

    LOBYTE(defaultPairedDeviceExists) = telephonyCapableDeviceExists & relayCapableDeviceExists | defaultPairedDeviceExists;
  }

  return defaultPairedDeviceExists & 1;
}

- (BOOL)_accountsMatchForSecondaryCalling
{
  accountsController = [(CSDCallCapabilities *)self accountsController];
  faceTimeIDMatchesAppleID = [accountsController faceTimeIDMatchesAppleID];

  return faceTimeIDMatchesAppleID;
}

- (id)_outgoingCallerID
{
  accountsController = [(CSDCallCapabilities *)self accountsController];
  outgoingCallerID = [accountsController outgoingCallerID];

  return outgoingCallerID;
}

- (id)_cloudCallingDevices
{
  relayService = [(CSDCallCapabilities *)self relayService];
  devices = [relayService devices];

  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [devices count]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = devices;
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
  relayService = [(CSDCallCapabilities *)self relayService];
  devices = [relayService devices];

  v4 = [devices countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(devices);
        }

        if ([*(*(&v8 + 1) + 8 * i) supportsRelayCallingWithoutLocalRelayCallingEnabled])
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [devices countByEnumeratingWithState:&v8 objects:v12 count:16];
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

- (void)_setRelayCallingEnabledDefault:(BOOL)default
{
  defaultCopy = default;
  v4 = sub_100004778();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = defaultCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "_setRelayCallingEnabledDefault: changing value to %d", v7, 8u);
  }

  v5 = &kCFBooleanFalse;
  if (!defaultCopy)
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

- (void)_setRelayCallingEnabledDefault:(BOOL)default forDeviceWithID:(id)d
{
  defaultCopy = default;
  dCopy = d;
  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v15[0] = 67109378;
    v15[1] = defaultCopy;
    v16 = 2112;
    v17 = dCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "setRelayCallingEnabledDefault:forDeviceWithID: changing value to %d for %@", v15, 0x12u);
  }

  _relayCallingDisabledForDeviceIDDefault = [(CSDCallCapabilities *)self _relayCallingDisabledForDeviceIDDefault];
  v9 = [_relayCallingDisabledForDeviceIDDefault mutableCopy];
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

  v13 = [NSNumber numberWithInt:!defaultCopy];
  [v12 setObject:v13 forKeyedSubscript:dCopy];

  v14 = TUBundleIdentifierTelephonyUtilitiesFramework;
  CFPreferencesSetAppValue(@"relayCallingDisabledForDeviceID", v12, TUBundleIdentifierTelephonyUtilitiesFramework);
  CFPreferencesAppSynchronize(v14);
}

- (void)_updateDefaultCallingAppIfNecessary
{
  if (supportsDefaultAppRelayTelephonySetting())
  {
    featureFlags = [(CSDCallCapabilities *)self featureFlags];
    phoneAppCoupledRelayEnabled = [featureFlags phoneAppCoupledRelayEnabled];

    if (phoneAppCoupledRelayEnabled)
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
    state = [(CSDCallCapabilities *)self state];
    senderIdentityCapabilitiesStateByUUID = [state senderIdentityCapabilitiesStateByUUID];
    allKeys = [senderIdentityCapabilitiesStateByUUID allKeys];

    v6 = [allKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v6)
    {
      v7 = *v19;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v19 != v7)
          {
            objc_enumerationMutation(allKeys);
          }

          v9 = *(*(&v18 + 1) + 8 * i);
          state2 = [(CSDCallCapabilities *)self state];
          senderIdentityCapabilitiesStateByUUID2 = [state2 senderIdentityCapabilitiesStateByUUID];
          v12 = [senderIdentityCapabilitiesStateByUUID2 objectForKeyedSubscript:v9];
          thumperCallingCapabilitiesState = [v12 thumperCallingCapabilitiesState];
          isEnabled = [thumperCallingCapabilitiesState isEnabled];

          if (isEnabled)
          {
            LOBYTE(v6) = 1;
            goto LABEL_12;
          }
        }

        v6 = [allKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    state3 = [(CSDCallCapabilities *)self state];
    isRelayCallingEnabled = [state3 isRelayCallingEnabled];
    if (v6 & 1) != 0 || (isRelayCallingEnabled)
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
  userDefaults = [(CSDCallCapabilities *)self userDefaults];
  v4 = [userDefaults objectForKey:TUDefaultAppRelayTelephonySettingKey];

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
    userDefaults2 = [(CSDCallCapabilities *)self userDefaults];
    v7 = [userDefaults2 objectForKey:TUUserManuallySetDefaultCallingAppKey];

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

- (void)_updateDefaultRelayCallingAppInLaunchServicesWithLegacySetting:(unint64_t)setting
{
  if (supportsDefaultAppRelayTelephonySetting())
  {
    v5 = sub_100004778();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (setting == 2)
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
        selfCopy2 = self;
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

        selfCopy2 = self;
        v11 = 0;
      }

      [(CSDCallCapabilities *)selfCopy2 _setDefaultCallingAppInLaunchServices:v11];
    }

    else if (setting == 1)
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

    userDefaults = [(CSDCallCapabilities *)self userDefaults];
    _TUUserManuallySetDefaultCallingApp();

    userDefaults2 = [(CSDCallCapabilities *)self userDefaults];
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
    state = [(CSDCallCapabilities *)self state];
    senderIdentityCapabilitiesStateByUUID = [state senderIdentityCapabilitiesStateByUUID];
    allKeys = [senderIdentityCapabilitiesStateByUUID allKeys];

    v6 = [allKeys countByEnumeratingWithState:&v30 objects:v36 count:16];
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
            objc_enumerationMutation(allKeys);
          }

          v10 = *(*(&v30 + 1) + 8 * v9);
          state2 = [(CSDCallCapabilities *)self state];
          senderIdentityCapabilitiesStateByUUID2 = [state2 senderIdentityCapabilitiesStateByUUID];
          v13 = [senderIdentityCapabilitiesStateByUUID2 objectForKeyedSubscript:v10];
          thumperCallingCapabilitiesState = [v13 thumperCallingCapabilitiesState];
          isEnabled = [thumperCallingCapabilitiesState isEnabled];

          if (isEnabled)
          {
            v16 = 1;
            goto LABEL_12;
          }

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [allKeys countByEnumeratingWithState:&v30 objects:v36 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v16 = 0;
LABEL_12:

    state3 = [(CSDCallCapabilities *)self state];
    isRelayCallingEnabled = [state3 isRelayCallingEnabled];

    v19 = sub_100004778();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
    if (v16 & 1) != 0 || (isRelayCallingEnabled)
    {
      if (v20)
      {
        state4 = [(CSDCallCapabilities *)self state];
        isRelayCallingEnabled2 = [state4 isRelayCallingEnabled];
        *buf = 67109376;
        *v35 = isRelayCallingEnabled2;
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
        selfCopy2 = self;
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

        selfCopy2 = self;
        v27 = 0;
      }

      [(CSDCallCapabilities *)selfCopy2 _setDefaultCallingAppInLaunchServices:v27];
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

- (void)_setDefaultCallingAppInLaunchServices:(id)services
{
  servicesCopy = services;
  lsApplicationWorkspace = [(CSDCallCapabilities *)self lsApplicationWorkspace];
  v6 = lsApplicationWorkspace;
  if (servicesCopy)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10014F040;
    v7[3] = &unk_10061A5D8;
    v8 = servicesCopy;
    [v6 setDefaultApplicationForCategory:4 toApplicationRecord:v8 completionHandler:v7];
  }

  else
  {
    [lsApplicationWorkspace setPreferenceForNoHandlerForCategory:4 completionHandler:&stru_10061C6D8];
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
    state = [v4 state];
    [(CSDCallCapabilities *)self setPairedHostDeviceState:state];

    pairedHostDeviceState = [(CSDCallCapabilities *)self pairedHostDeviceState];

    v7 = sub_100004778();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (pairedHostDeviceState)
    {
      if (v8)
      {
        pairedHostDeviceState2 = [(CSDCallCapabilities *)self pairedHostDeviceState];
        v16 = 138412290;
        v17 = pairedHostDeviceState2;
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

  pairedHostDeviceState3 = [(CSDCallCapabilities *)self pairedHostDeviceState];

  if (!pairedHostDeviceState3)
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
    pairedHostDeviceState = [(CSDCallCapabilities *)self pairedHostDeviceState];
    v7 = [(CSDMessagingCallCapabilitiesState *)v3 initWithCallCapabilitiesState:pairedHostDeviceState];

    data = [(CSDMessagingCallCapabilitiesState *)v7 data];
    v6 = TUBundleIdentifierTelephonyUtilitiesFramework;
    CFPreferencesSetAppValue(@"pairedHostDeviceState", data, TUBundleIdentifierTelephonyUtilitiesFramework);
    CFPreferencesAppSynchronize(v6);
  }
}

@end