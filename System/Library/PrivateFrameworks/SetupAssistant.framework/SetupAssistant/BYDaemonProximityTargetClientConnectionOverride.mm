@interface BYDaemonProximityTargetClientConnectionOverride
- (BYDaemonProximityTargetClientConnectionOverride)init;
- (id)remoteObject;
- (void)beginAdvertisingProximitySetup;
- (void)dismissProximityPinCode;
- (void)doWithSetupCtlConnections:(id)connections;
- (void)endAdvertisingProximitySetup;
- (void)executeResumeConnectionCompletionWithHandshake;
- (void)executeSuspendConnectionForSoftwareUpdateCompletion;
- (void)fileTransferSessionTemplate:(id)template;
- (void)finishAccountSetupWithIntent:(int64_t)intent;
- (void)finishPairing;
- (void)hasConnection:(id)connection;
- (void)hasHandshake:(id)handshake;
- (void)hasProximityInformation:(id)information;
- (void)isAdvertising:(id)advertising;
- (void)isConnected:(id)connected;
- (void)isShowingPairingCode:(id)code;
- (void)proximityConnectionInitiated;
- (void)proximityConnectionPreparing:(id)preparing;
- (void)proximityConnectionReconnected;
- (void)proximityConnectionTerminated;
- (void)proximitySetupCompleted:(id)completed;
- (void)receivedLanguages:(id)languages locale:(id)locale model:(id)model deviceClass:(id)class accessibilitySettings:(id)settings;
- (void)resumeProximitySetup:(id)setup;
- (void)storeHandshake:(id)handshake;
- (void)storeInformation:(id)information;
- (void)suspendConnectionForSoftwareUpdate:(id)update;
@end

@implementation BYDaemonProximityTargetClientConnectionOverride

- (BYDaemonProximityTargetClientConnectionOverride)init
{
  v5.receiver = self;
  v5.super_class = BYDaemonProximityTargetClientConnectionOverride;
  v2 = [(BYDaemonProximityTargetClientConnectionOverride *)&v5 init];
  if (v2)
  {
    v3 = objc_opt_new();
    [(BYDaemonProximityTargetClientConnectionOverride *)v2 setSetupCtlConnections:v3];
  }

  return v2;
}

- (id)remoteObject
{
  setupConnection = [(BYDaemonProximityTargetClientConnectionOverride *)self setupConnection];

  if (setupConnection)
  {
    setupConnection2 = [(BYDaemonProximityTargetClientConnectionOverride *)self setupConnection];
    remoteObjectProxy = [setupConnection2 remoteObjectProxy];
  }

  else
  {
    v6 = _BYLoggingFacility();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100010EE4(v6);
    }

    remoteObjectProxy = 0;
  }

  return remoteObjectProxy;
}

- (void)dismissProximityPinCode
{
  [(BYDaemonProximityTargetClientConnectionOverride *)self setIsShowingPairingCode:0];
  remoteObject = [(BYDaemonProximityTargetClientConnectionOverride *)self remoteObject];
  [remoteObject dismissProximityPinCode];
}

- (void)proximityConnectionInitiated
{
  [(BYDaemonProximityTargetClientConnectionOverride *)self setIsConnected:1];
  [(BYDaemonProximityTargetClientConnectionOverride *)self setIsShowingPairingCode:0];
  remoteObject = [(BYDaemonProximityTargetClientConnectionOverride *)self remoteObject];
  [remoteObject proximityConnectionInitiated];
}

- (void)proximityConnectionReconnected
{
  [(BYDaemonProximityTargetClientConnectionOverride *)self setIsConnected:1];
  remoteObject = [(BYDaemonProximityTargetClientConnectionOverride *)self remoteObject];
  [remoteObject proximityConnectionReconnected];
}

- (void)proximityConnectionTerminated
{
  [(BYDaemonProximityTargetClientConnectionOverride *)self setIsConnected:0];
  remoteObject = [(BYDaemonProximityTargetClientConnectionOverride *)self remoteObject];
  [remoteObject proximityConnectionTerminated];
}

- (void)proximityConnectionPreparing:(id)preparing
{
  preparingCopy = preparing;
  remoteObject = [(BYDaemonProximityTargetClientConnectionOverride *)self remoteObject];
  [remoteObject proximityConnectionPreparing:preparingCopy];
}

- (void)proximitySetupCompleted:(id)completed
{
  completedCopy = completed;
  [(BYDaemonProximityTargetClientConnectionOverride *)self setIsShowingPairingCode:0];
  remoteObject = [(BYDaemonProximityTargetClientConnectionOverride *)self remoteObject];
  [remoteObject proximitySetupCompleted:completedCopy];
}

- (void)receivedLanguages:(id)languages locale:(id)locale model:(id)model deviceClass:(id)class accessibilitySettings:(id)settings
{
  settingsCopy = settings;
  classCopy = class;
  modelCopy = model;
  localeCopy = locale;
  languagesCopy = languages;
  remoteObject = [(BYDaemonProximityTargetClientConnectionOverride *)self remoteObject];
  [remoteObject receivedLanguages:languagesCopy locale:localeCopy model:modelCopy deviceClass:classCopy accessibilitySettings:settingsCopy];
}

- (void)finishPairing
{
  setupConnection = [(BYDaemonProximityTargetClientConnectionOverride *)self setupConnection];
  remoteObjectProxy = [setupConnection remoteObjectProxy];
  [remoteObjectProxy finishPairing];
}

- (void)finishAccountSetupWithIntent:(int64_t)intent
{
  setupConnection = [(BYDaemonProximityTargetClientConnectionOverride *)self setupConnection];
  remoteObjectProxy = [setupConnection remoteObjectProxy];
  [remoteObjectProxy finishAccountSetupWithIntent:intent];
}

- (void)beginAdvertisingProximitySetup
{
  [(BYDaemonProximityTargetClientConnectionOverride *)self setIsAdvertising:1];

  [(BYDaemonProximityTargetClientConnectionOverride *)self doWithSetupCtlConnections:&stru_100020A60];
}

- (void)endAdvertisingProximitySetup
{
  [(BYDaemonProximityTargetClientConnectionOverride *)self setIsAdvertising:0];

  [(BYDaemonProximityTargetClientConnectionOverride *)self doWithSetupCtlConnections:&stru_100020A80];
}

- (void)hasConnection:(id)connection
{
  connectionCopy = connection;
  (*(connection + 2))(connectionCopy, [(BYDaemonProximityTargetClientConnectionOverride *)self isConnected]);

  [(BYDaemonProximityTargetClientConnectionOverride *)self doWithSetupCtlConnections:&stru_100020AC0];
}

- (void)resumeProximitySetup:(id)setup
{
  setupCopy = setup;
  objc_initWeak(&location, self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100008B5C;
  v6[3] = &unk_100020B88;
  objc_copyWeak(&v8, &location);
  v5 = setupCopy;
  v7 = v5;
  [(BYDaemonProximityTargetClientConnectionOverride *)self setResumeConnectionCompletion:v6];
  [(BYDaemonProximityTargetClientConnectionOverride *)self doWithSetupCtlConnections:&stru_100020BA8];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)storeHandshake:(id)handshake
{
  handshakeCopy = handshake;
  [(BYDaemonProximityTargetClientConnectionOverride *)self setHandshake:handshakeCopy];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100008D6C;
  v6[3] = &unk_100020BF0;
  v7 = handshakeCopy;
  v5 = handshakeCopy;
  [(BYDaemonProximityTargetClientConnectionOverride *)self doWithSetupCtlConnections:v6];
}

- (void)storeInformation:(id)information
{
  informationCopy = information;
  [(BYDaemonProximityTargetClientConnectionOverride *)self setInformation:informationCopy];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100008E64;
  v6[3] = &unk_100020BF0;
  v7 = informationCopy;
  v5 = informationCopy;
  [(BYDaemonProximityTargetClientConnectionOverride *)self doWithSetupCtlConnections:v6];
}

- (void)suspendConnectionForSoftwareUpdate:(id)update
{
  [(BYDaemonProximityTargetClientConnectionOverride *)self setSuspendConnectionForSoftwareUpdateCompletion:update];

  [(BYDaemonProximityTargetClientConnectionOverride *)self doWithSetupCtlConnections:&stru_100020C10];
}

- (void)fileTransferSessionTemplate:(id)template
{
  [(BYDaemonProximityTargetClientConnectionOverride *)self setFileTransferSessionTemplateCompletion:template];
  [(BYDaemonProximityTargetClientConnectionOverride *)self doWithSetupCtlConnections:&stru_100020C30];

  [(BYDaemonProximityTargetClientConnectionOverride *)self executeFileTransferSessionTemplateWithError:0];
}

- (void)doWithSetupCtlConnections:(id)connections
{
  connectionsCopy = connections;
  setupCtlConnections = [(BYDaemonProximityTargetClientConnectionOverride *)self setupCtlConnections];
  v6 = [setupCtlConnections copy];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        if (*(*(&v12 + 1) + 8 * v11))
        {
          connectionsCopy[2](connectionsCopy);
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)executeResumeConnectionCompletionWithHandshake
{
  resumeConnectionCompletion = [(BYDaemonProximityTargetClientConnectionOverride *)self resumeConnectionCompletion];

  if (resumeConnectionCompletion)
  {
    resumeConnectionCompletion2 = [(BYDaemonProximityTargetClientConnectionOverride *)self resumeConnectionCompletion];
    resumeConnectionCompletion2[2]();

    [(BYDaemonProximityTargetClientConnectionOverride *)self setResumeConnectionCompletion:0];
  }
}

- (void)executeSuspendConnectionForSoftwareUpdateCompletion
{
  suspendConnectionForSoftwareUpdateCompletion = [(BYDaemonProximityTargetClientConnectionOverride *)self suspendConnectionForSoftwareUpdateCompletion];

  if (suspendConnectionForSoftwareUpdateCompletion)
  {
    suspendConnectionForSoftwareUpdateCompletion2 = [(BYDaemonProximityTargetClientConnectionOverride *)self suspendConnectionForSoftwareUpdateCompletion];
    suspendConnectionForSoftwareUpdateCompletion2[2]();

    [(BYDaemonProximityTargetClientConnectionOverride *)self setSuspendConnectionForSoftwareUpdateCompletion:0];
  }
}

- (void)hasHandshake:(id)handshake
{
  handshakeCopy = handshake;
  handshake = [(BYDaemonProximityTargetClientConnectionOverride *)self handshake];
  (*(handshake + 2))(handshakeCopy, handshake != 0);
}

- (void)hasProximityInformation:(id)information
{
  informationCopy = information;
  information = [(BYDaemonProximityTargetClientConnectionOverride *)self information];
  (*(information + 2))(informationCopy, information != 0);
}

- (void)isAdvertising:(id)advertising
{
  advertisingCopy = advertising;
  (*(advertising + 2))(advertisingCopy, [(BYDaemonProximityTargetClientConnectionOverride *)self isAdvertising]);
}

- (void)isConnected:(id)connected
{
  connectedCopy = connected;
  (*(connected + 2))(connectedCopy, [(BYDaemonProximityTargetClientConnectionOverride *)self isConnected]);
}

- (void)isShowingPairingCode:(id)code
{
  codeCopy = code;
  (*(code + 2))(codeCopy, [(BYDaemonProximityTargetClientConnectionOverride *)self isShowingPairingCode]);
}

@end