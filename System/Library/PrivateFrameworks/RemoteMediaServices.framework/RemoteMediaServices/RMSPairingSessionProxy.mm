@interface RMSPairingSessionProxy
- (RMSPairingSessionDelegate)delegate;
- (RMSPairingSessionProxy)init;
- (void)_handleDidPairWithServiceNotification:(id)notification;
- (void)_handlePairingDidFailNotification:(id)notification;
- (void)_handleSessionDidEndNotification:(id)notification;
- (void)_notifyDelegatePairingFailed;
- (void)beginPairing;
- (void)dealloc;
- (void)endPairing;
- (void)unpairService:(id)service completionHandler:(id)handler;
@end

@implementation RMSPairingSessionProxy

- (RMSPairingSessionProxy)init
{
  v16.receiver = self;
  v16.super_class = RMSPairingSessionProxy;
  v2 = [(RMSSessionProxy *)&v16 initWithTimeout:*&RMSPairingSessionTimeout];
  if (v2)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__handleDidPairWithServiceNotification_ name:@"RMSIDSClientDidPairWithServiceNotification" object:0];
    [defaultCenter addObserver:v2 selector:sel__handlePairingDidFailNotification_ name:@"RMSIDSClientPairingDidFailNotification" object:0];
    [defaultCenter addObserver:v2 selector:sel__handleSessionDidEndNotification_ name:@"RMSIDSClientSessionDidEndNotification" object:0];
    v4 = generateRandomPasscode();
    passcode = v2->_passcode;
    v2->_passcode = v4;

    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v7 = [mainBundle objectForInfoDictionaryKey:@"CFBundleName"];
    advertisedAppName = v2->_advertisedAppName;
    v2->_advertisedAppName = v7;

    v9 = MGCopyAnswer();
    advertisedDeviceName = v2->_advertisedDeviceName;
    v2->_advertisedDeviceName = v9;

    v11 = MGCopyAnswer();
    advertisedDeviceModel = v2->_advertisedDeviceModel;
    v2->_advertisedDeviceModel = v11;

    v13 = +[RMSIDSClient sharedClient];
    idsClient = v2->_idsClient;
    v2->_idsClient = v13;
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = RMSPairingSessionProxy;
  [(RMSSessionProxy *)&v4 dealloc];
}

- (void)beginPairing
{
  if (!self->_pairing)
  {
    self->_pairing = 1;
    objc_initWeak(&location, self);
    idsClient = self->_idsClient;
    passcode = self->_passcode;
    advertisedAppName = self->_advertisedAppName;
    advertisedDeviceName = self->_advertisedDeviceName;
    advertisedDeviceModel = self->_advertisedDeviceModel;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __38__RMSPairingSessionProxy_beginPairing__block_invoke;
    v8[3] = &unk_279B08C00;
    objc_copyWeak(&v9, &location);
    [(RMSIDSClient *)idsClient beginPairingSessionWithPasscode:passcode appName:advertisedAppName deviceName:advertisedDeviceName deviceModel:advertisedDeviceModel completionHandler:v8];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __38__RMSPairingSessionProxy_beginPairing__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    if (a2 == 1)
    {
      [WeakRetained setSessionIdentifier:a3];
      [v6 beginHeartbeat];
    }

    else
    {
      [WeakRetained _notifyDelegatePairingFailed];
    }

    WeakRetained = v6;
  }
}

- (void)endPairing
{
  [(RMSSessionProxy *)self endHeartbeat];
  sessionIdentifier = [(RMSSessionProxy *)self sessionIdentifier];
  if (sessionIdentifier)
  {
    [(RMSIDSClient *)self->_idsClient endPairingSession:sessionIdentifier];
  }

  self->_pairing = 0;

  [(RMSSessionProxy *)self setSessionIdentifier:0];
}

- (void)unpairService:(id)service completionHandler:(id)handler
{
  idsClient = self->_idsClient;
  handlerCopy = handler;
  serviceCopy = service;
  [(RMSIDSClient *)idsClient unpairService:serviceCopy sessionIdentifier:[(RMSSessionProxy *)self sessionIdentifier] completionHandler:handlerCopy];
}

- (void)_notifyDelegatePairingFailed
{
  if (self->_pairing && [(RMSSessionProxy *)self sessionIdentifier])
  {
    self->_pairing = 0;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained pairingSessionDidFail:self];
  }
}

- (void)_handleDidPairWithServiceNotification:(id)notification
{
  notificationCopy = notification;
  if ([(RMSSessionProxy *)self sessionMatchesNotification:?])
  {
    userInfo = [notificationCopy userInfo];
    v5 = [userInfo objectForKeyedSubscript:@"RMSIDSClientServiceNetworkNameNotificationKey"];

    userInfo2 = [notificationCopy userInfo];
    v7 = [userInfo2 objectForKeyedSubscript:@"RMSIDSClientPairingGUIDNotificationKey"];

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained pairingSession:self didPairWithServiceNetworkName:v5 pairingGUID:v7];
  }
}

- (void)_handlePairingDidFailNotification:(id)notification
{
  if ([(RMSSessionProxy *)self sessionMatchesNotification:notification])
  {

    [(RMSPairingSessionProxy *)self _notifyDelegatePairingFailed];
  }
}

- (void)_handleSessionDidEndNotification:(id)notification
{
  if ([(RMSSessionProxy *)self sessionMatchesNotification:notification])
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__RMSPairingSessionProxy__handleSessionDidEndNotification___block_invoke;
    block[3] = &unk_279B088E8;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

uint64_t __59__RMSPairingSessionProxy__handleSessionDidEndNotification___block_invoke(uint64_t a1)
{
  [*(a1 + 32) endHeartbeat];
  v2 = *(a1 + 32);

  return [v2 _notifyDelegatePairingFailed];
}

- (RMSPairingSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end