@interface BYDaemonProximityTargetClientConnection
- (BYDaemonProximityTargetClientConnection)initWithConnection:(id)connection;
- (void)beginAdvertisingProximitySetup;
- (void)beginSIMSetupExternalAuthentication;
- (void)dismissProximityPinCode;
- (void)endAdvertisingProximitySetup;
- (void)endDeviceToDeviceMigration;
- (void)endPairing;
- (void)endSIMSetupExternalAuthentication;
- (void)fileTransferSessionTemplate:(id)template;
- (void)hasConnection:(id)connection;
- (void)proximityConnectionInitiated;
- (void)proximityConnectionPreparing:(id)preparing;
- (void)proximityConnectionReconnected;
- (void)proximityConnectionTerminated;
- (void)proximitySetupCompleted:(id)completed;
- (void)receivedLanguages:(id)languages locale:(id)locale model:(id)model deviceClass:(id)class accessibilitySettings:(id)settings;
- (void)resumeProximitySetup:(id)setup;
- (void)showMigrationInterfaceOnSource;
- (void)storeHandshake:(id)handshake;
- (void)storeInformation:(id)information;
- (void)suspendConnectionForSoftwareUpdate:(id)update;
@end

@implementation BYDaemonProximityTargetClientConnection

- (BYDaemonProximityTargetClientConnection)initWithConnection:(id)connection
{
  v6.receiver = self;
  v6.super_class = BYDaemonProximityTargetClientConnection;
  v3 = [(BYDaemonClientConnection *)&v6 initWithConnection:connection];
  if (v3)
  {
    v4 = +[BYDaemonProximityController sharedController];
    [v4 setDelegate:v3];
  }

  return v3;
}

- (void)beginAdvertisingProximitySetup
{
  v2 = +[BYDaemonProximityController sharedController];
  [v2 beginAdvertising];
}

- (void)endAdvertisingProximitySetup
{
  v2 = +[BYDaemonProximityController sharedController];
  [v2 endAdvertising];
}

- (void)endPairing
{
  v2 = +[BYDaemonProximityController sharedController];
  [v2 endPairing];
}

- (void)hasConnection:(id)connection
{
  if (connection)
  {
    connectionCopy = connection;
    v5 = +[BYDaemonProximityController sharedController];
    (*(connection + 2))(connectionCopy, [v5 hasConnection]);
  }
}

- (void)resumeProximitySetup:(id)setup
{
  setupCopy = setup;
  v3 = +[BYDaemonProximityController sharedController];
  if (setupCopy)
  {
    handshake = [v3 handshake];
    information = [v3 information];
    messageSession = [v3 messageSession];
    model = [v3 model];
    deviceClass = [v3 deviceClass];
    setupCopy[2](setupCopy, handshake, information, messageSession, model, deviceClass, [v3 hasConnection]);
  }
}

- (void)storeInformation:(id)information
{
  informationCopy = information;
  v4 = _BYLoggingFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Storing information...", v6, 2u);
  }

  v5 = +[BYDaemonProximityController sharedController];
  [v5 setInformation:informationCopy];
}

- (void)storeHandshake:(id)handshake
{
  handshakeCopy = handshake;
  v4 = _BYLoggingFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Storing handshake...", v6, 2u);
  }

  v5 = +[BYDaemonProximityController sharedController];
  [v5 setHandshake:handshakeCopy];
}

- (void)fileTransferSessionTemplate:(id)template
{
  templateCopy = template;
  v3 = +[BYDaemonProximityController sharedController];
  fileTransferSessionTemplate = [v3 fileTransferSessionTemplate];

  if (templateCopy)
  {
    templateCopy[2](templateCopy, fileTransferSessionTemplate);
  }
}

- (void)endDeviceToDeviceMigration
{
  v2 = +[BYDaemonProximityController sharedController];
  [v2 endDeviceToDeviceMigration];
}

- (void)showMigrationInterfaceOnSource
{
  v2 = +[BYDaemonProximityController sharedController];
  [v2 showMigrationInterfaceOnSource];
}

- (void)suspendConnectionForSoftwareUpdate:(id)update
{
  updateCopy = update;
  v4 = +[BYDaemonProximityController sharedController];
  [v4 suspendConnectionForSoftwareUpdate:updateCopy];
}

- (void)beginSIMSetupExternalAuthentication
{
  v2 = +[BYDaemonProximityController sharedController];
  [v2 beginSIMSetupExternalAuthentication];
}

- (void)endSIMSetupExternalAuthentication
{
  v2 = +[BYDaemonProximityController sharedController];
  [v2 endSIMSetupExternalAuthentication];
}

- (void)dismissProximityPinCode
{
  connection = [(BYDaemonClientConnection *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];
  [remoteObjectProxy dismissProximityPinCode];
}

- (void)proximityConnectionPreparing:(id)preparing
{
  preparingCopy = preparing;
  connection = [(BYDaemonClientConnection *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];
  [remoteObjectProxy proximityConnectionPreparing:preparingCopy];
}

- (void)proximityConnectionInitiated
{
  connection = [(BYDaemonClientConnection *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];
  [remoteObjectProxy proximityConnectionInitiated];
}

- (void)proximityConnectionTerminated
{
  connection = [(BYDaemonClientConnection *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];
  [remoteObjectProxy proximityConnectionTerminated];
}

- (void)proximityConnectionReconnected
{
  connection = [(BYDaemonClientConnection *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];
  [remoteObjectProxy proximityConnectionReconnected];
}

- (void)receivedLanguages:(id)languages locale:(id)locale model:(id)model deviceClass:(id)class accessibilitySettings:(id)settings
{
  settingsCopy = settings;
  classCopy = class;
  modelCopy = model;
  localeCopy = locale;
  languagesCopy = languages;
  connection = [(BYDaemonClientConnection *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];
  [remoteObjectProxy receivedLanguages:languagesCopy locale:localeCopy model:modelCopy deviceClass:classCopy accessibilitySettings:settingsCopy];
}

- (void)proximitySetupCompleted:(id)completed
{
  completedCopy = completed;
  connection = [(BYDaemonClientConnection *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];
  [remoteObjectProxy proximitySetupCompleted:completedCopy];
}

@end