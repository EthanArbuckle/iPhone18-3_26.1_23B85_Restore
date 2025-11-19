@interface RMSPairingSessionProxy
- (RMSPairingSessionDelegate)delegate;
- (RMSPairingSessionProxy)init;
- (void)_handleDidPairWithServiceNotification:(id)a3;
- (void)_handlePairingDidFailNotification:(id)a3;
- (void)_handleSessionDidEndNotification:(id)a3;
- (void)_notifyDelegatePairingFailed;
- (void)beginPairing;
- (void)dealloc;
- (void)endPairing;
- (void)unpairService:(id)a3 completionHandler:(id)a4;
@end

@implementation RMSPairingSessionProxy

- (RMSPairingSessionProxy)init
{
  v16.receiver = self;
  v16.super_class = RMSPairingSessionProxy;
  v2 = [(RMSSessionProxy *)&v16 initWithTimeout:*&RMSPairingSessionTimeout];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 addObserver:v2 selector:sel__handleDidPairWithServiceNotification_ name:@"RMSIDSClientDidPairWithServiceNotification" object:0];
    [v3 addObserver:v2 selector:sel__handlePairingDidFailNotification_ name:@"RMSIDSClientPairingDidFailNotification" object:0];
    [v3 addObserver:v2 selector:sel__handleSessionDidEndNotification_ name:@"RMSIDSClientSessionDidEndNotification" object:0];
    v4 = generateRandomPasscode();
    passcode = v2->_passcode;
    v2->_passcode = v4;

    v6 = [MEMORY[0x277CCA8D8] mainBundle];
    v7 = [v6 objectForInfoDictionaryKey:@"CFBundleName"];
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
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

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
  v3 = [(RMSSessionProxy *)self sessionIdentifier];
  if (v3)
  {
    [(RMSIDSClient *)self->_idsClient endPairingSession:v3];
  }

  self->_pairing = 0;

  [(RMSSessionProxy *)self setSessionIdentifier:0];
}

- (void)unpairService:(id)a3 completionHandler:(id)a4
{
  idsClient = self->_idsClient;
  v7 = a4;
  v8 = a3;
  [(RMSIDSClient *)idsClient unpairService:v8 sessionIdentifier:[(RMSSessionProxy *)self sessionIdentifier] completionHandler:v7];
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

- (void)_handleDidPairWithServiceNotification:(id)a3
{
  v9 = a3;
  if ([(RMSSessionProxy *)self sessionMatchesNotification:?])
  {
    v4 = [v9 userInfo];
    v5 = [v4 objectForKeyedSubscript:@"RMSIDSClientServiceNetworkNameNotificationKey"];

    v6 = [v9 userInfo];
    v7 = [v6 objectForKeyedSubscript:@"RMSIDSClientPairingGUIDNotificationKey"];

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained pairingSession:self didPairWithServiceNetworkName:v5 pairingGUID:v7];
  }
}

- (void)_handlePairingDidFailNotification:(id)a3
{
  if ([(RMSSessionProxy *)self sessionMatchesNotification:a3])
  {

    [(RMSPairingSessionProxy *)self _notifyDelegatePairingFailed];
  }
}

- (void)_handleSessionDidEndNotification:(id)a3
{
  if ([(RMSSessionProxy *)self sessionMatchesNotification:a3])
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