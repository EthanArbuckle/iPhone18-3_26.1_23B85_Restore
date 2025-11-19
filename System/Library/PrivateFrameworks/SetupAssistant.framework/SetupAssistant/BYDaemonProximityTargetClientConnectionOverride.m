@interface BYDaemonProximityTargetClientConnectionOverride
- (BYDaemonProximityTargetClientConnectionOverride)init;
- (id)remoteObject;
- (void)beginAdvertisingProximitySetup;
- (void)dismissProximityPinCode;
- (void)doWithSetupCtlConnections:(id)a3;
- (void)endAdvertisingProximitySetup;
- (void)executeResumeConnectionCompletionWithHandshake;
- (void)executeSuspendConnectionForSoftwareUpdateCompletion;
- (void)fileTransferSessionTemplate:(id)a3;
- (void)finishAccountSetupWithIntent:(int64_t)a3;
- (void)finishPairing;
- (void)hasConnection:(id)a3;
- (void)hasHandshake:(id)a3;
- (void)hasProximityInformation:(id)a3;
- (void)isAdvertising:(id)a3;
- (void)isConnected:(id)a3;
- (void)isShowingPairingCode:(id)a3;
- (void)proximityConnectionInitiated;
- (void)proximityConnectionPreparing:(id)a3;
- (void)proximityConnectionReconnected;
- (void)proximityConnectionTerminated;
- (void)proximitySetupCompleted:(id)a3;
- (void)receivedLanguages:(id)a3 locale:(id)a4 model:(id)a5 deviceClass:(id)a6 accessibilitySettings:(id)a7;
- (void)resumeProximitySetup:(id)a3;
- (void)storeHandshake:(id)a3;
- (void)storeInformation:(id)a3;
- (void)suspendConnectionForSoftwareUpdate:(id)a3;
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
  v3 = [(BYDaemonProximityTargetClientConnectionOverride *)self setupConnection];

  if (v3)
  {
    v4 = [(BYDaemonProximityTargetClientConnectionOverride *)self setupConnection];
    v5 = [v4 remoteObjectProxy];
  }

  else
  {
    v6 = _BYLoggingFacility();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100010EE4(v6);
    }

    v5 = 0;
  }

  return v5;
}

- (void)dismissProximityPinCode
{
  [(BYDaemonProximityTargetClientConnectionOverride *)self setIsShowingPairingCode:0];
  v3 = [(BYDaemonProximityTargetClientConnectionOverride *)self remoteObject];
  [v3 dismissProximityPinCode];
}

- (void)proximityConnectionInitiated
{
  [(BYDaemonProximityTargetClientConnectionOverride *)self setIsConnected:1];
  [(BYDaemonProximityTargetClientConnectionOverride *)self setIsShowingPairingCode:0];
  v3 = [(BYDaemonProximityTargetClientConnectionOverride *)self remoteObject];
  [v3 proximityConnectionInitiated];
}

- (void)proximityConnectionReconnected
{
  [(BYDaemonProximityTargetClientConnectionOverride *)self setIsConnected:1];
  v3 = [(BYDaemonProximityTargetClientConnectionOverride *)self remoteObject];
  [v3 proximityConnectionReconnected];
}

- (void)proximityConnectionTerminated
{
  [(BYDaemonProximityTargetClientConnectionOverride *)self setIsConnected:0];
  v3 = [(BYDaemonProximityTargetClientConnectionOverride *)self remoteObject];
  [v3 proximityConnectionTerminated];
}

- (void)proximityConnectionPreparing:(id)a3
{
  v4 = a3;
  v5 = [(BYDaemonProximityTargetClientConnectionOverride *)self remoteObject];
  [v5 proximityConnectionPreparing:v4];
}

- (void)proximitySetupCompleted:(id)a3
{
  v4 = a3;
  [(BYDaemonProximityTargetClientConnectionOverride *)self setIsShowingPairingCode:0];
  v5 = [(BYDaemonProximityTargetClientConnectionOverride *)self remoteObject];
  [v5 proximitySetupCompleted:v4];
}

- (void)receivedLanguages:(id)a3 locale:(id)a4 model:(id)a5 deviceClass:(id)a6 accessibilitySettings:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [(BYDaemonProximityTargetClientConnectionOverride *)self remoteObject];
  [v17 receivedLanguages:v16 locale:v15 model:v14 deviceClass:v13 accessibilitySettings:v12];
}

- (void)finishPairing
{
  v3 = [(BYDaemonProximityTargetClientConnectionOverride *)self setupConnection];
  v2 = [v3 remoteObjectProxy];
  [v2 finishPairing];
}

- (void)finishAccountSetupWithIntent:(int64_t)a3
{
  v5 = [(BYDaemonProximityTargetClientConnectionOverride *)self setupConnection];
  v4 = [v5 remoteObjectProxy];
  [v4 finishAccountSetupWithIntent:a3];
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

- (void)hasConnection:(id)a3
{
  v5 = a3;
  (*(a3 + 2))(v5, [(BYDaemonProximityTargetClientConnectionOverride *)self isConnected]);

  [(BYDaemonProximityTargetClientConnectionOverride *)self doWithSetupCtlConnections:&stru_100020AC0];
}

- (void)resumeProximitySetup:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100008B5C;
  v6[3] = &unk_100020B88;
  objc_copyWeak(&v8, &location);
  v5 = v4;
  v7 = v5;
  [(BYDaemonProximityTargetClientConnectionOverride *)self setResumeConnectionCompletion:v6];
  [(BYDaemonProximityTargetClientConnectionOverride *)self doWithSetupCtlConnections:&stru_100020BA8];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)storeHandshake:(id)a3
{
  v4 = a3;
  [(BYDaemonProximityTargetClientConnectionOverride *)self setHandshake:v4];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100008D6C;
  v6[3] = &unk_100020BF0;
  v7 = v4;
  v5 = v4;
  [(BYDaemonProximityTargetClientConnectionOverride *)self doWithSetupCtlConnections:v6];
}

- (void)storeInformation:(id)a3
{
  v4 = a3;
  [(BYDaemonProximityTargetClientConnectionOverride *)self setInformation:v4];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100008E64;
  v6[3] = &unk_100020BF0;
  v7 = v4;
  v5 = v4;
  [(BYDaemonProximityTargetClientConnectionOverride *)self doWithSetupCtlConnections:v6];
}

- (void)suspendConnectionForSoftwareUpdate:(id)a3
{
  [(BYDaemonProximityTargetClientConnectionOverride *)self setSuspendConnectionForSoftwareUpdateCompletion:a3];

  [(BYDaemonProximityTargetClientConnectionOverride *)self doWithSetupCtlConnections:&stru_100020C10];
}

- (void)fileTransferSessionTemplate:(id)a3
{
  [(BYDaemonProximityTargetClientConnectionOverride *)self setFileTransferSessionTemplateCompletion:a3];
  [(BYDaemonProximityTargetClientConnectionOverride *)self doWithSetupCtlConnections:&stru_100020C30];

  [(BYDaemonProximityTargetClientConnectionOverride *)self executeFileTransferSessionTemplateWithError:0];
}

- (void)doWithSetupCtlConnections:(id)a3
{
  v4 = a3;
  v5 = [(BYDaemonProximityTargetClientConnectionOverride *)self setupCtlConnections];
  v6 = [v5 copy];

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
          v4[2](v4);
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
  v3 = [(BYDaemonProximityTargetClientConnectionOverride *)self resumeConnectionCompletion];

  if (v3)
  {
    v4 = [(BYDaemonProximityTargetClientConnectionOverride *)self resumeConnectionCompletion];
    v4[2]();

    [(BYDaemonProximityTargetClientConnectionOverride *)self setResumeConnectionCompletion:0];
  }
}

- (void)executeSuspendConnectionForSoftwareUpdateCompletion
{
  v3 = [(BYDaemonProximityTargetClientConnectionOverride *)self suspendConnectionForSoftwareUpdateCompletion];

  if (v3)
  {
    v4 = [(BYDaemonProximityTargetClientConnectionOverride *)self suspendConnectionForSoftwareUpdateCompletion];
    v4[2]();

    [(BYDaemonProximityTargetClientConnectionOverride *)self setSuspendConnectionForSoftwareUpdateCompletion:0];
  }
}

- (void)hasHandshake:(id)a3
{
  v5 = a3;
  v6 = [(BYDaemonProximityTargetClientConnectionOverride *)self handshake];
  (*(a3 + 2))(v5, v6 != 0);
}

- (void)hasProximityInformation:(id)a3
{
  v5 = a3;
  v6 = [(BYDaemonProximityTargetClientConnectionOverride *)self information];
  (*(a3 + 2))(v5, v6 != 0);
}

- (void)isAdvertising:(id)a3
{
  v5 = a3;
  (*(a3 + 2))(v5, [(BYDaemonProximityTargetClientConnectionOverride *)self isAdvertising]);
}

- (void)isConnected:(id)a3
{
  v5 = a3;
  (*(a3 + 2))(v5, [(BYDaemonProximityTargetClientConnectionOverride *)self isConnected]);
}

- (void)isShowingPairingCode:(id)a3
{
  v5 = a3;
  (*(a3 + 2))(v5, [(BYDaemonProximityTargetClientConnectionOverride *)self isShowingPairingCode]);
}

@end