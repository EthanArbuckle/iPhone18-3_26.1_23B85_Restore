@interface RMSLocalPairingSession
- (RMSLocalPairingSession)init;
- (RMSPairingSessionDelegate)delegate;
- (id)_expectedPasscodeHashForPasscode:(id)passcode publicKey:(id)key;
- (id)_pairingNetServiceName;
- (void)_startBonjourAdvertisingWithPublicKey:(id)key httpServerPort:(unsigned __int16)port;
- (void)beginPairing;
- (void)dealloc;
- (void)endPairing;
- (void)netService:(id)service didNotPublish:(id)publish;
- (void)netServiceDidPublish:(id)publish;
- (void)netServiceDidStop:(id)stop;
- (void)pairingServer:(id)server didPairWithService:(id)service pairingGUID:(id)d;
- (void)pairingServerDidFail:(id)fail;
- (void)unpairService:(id)service completionHandler:(id)handler;
@end

@implementation RMSLocalPairingSession

- (RMSLocalPairingSession)init
{
  v11.receiver = self;
  v11.super_class = RMSLocalPairingSession;
  v2 = [(RMSLocalPairingSession *)&v11 init];
  if (v2)
  {
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v4 = [mainBundle objectForInfoDictionaryKey:@"CFBundleName"];
    advertisedAppName = v2->_advertisedAppName;
    v2->_advertisedAppName = v4;

    v6 = MGCopyAnswer();
    advertisedDeviceName = v2->_advertisedDeviceName;
    v2->_advertisedDeviceName = v6;

    v8 = MGCopyAnswer();
    advertisedDeviceModel = v2->_advertisedDeviceModel;
    v2->_advertisedDeviceModel = v8;
  }

  return v2;
}

- (void)dealloc
{
  delegate = [__netService delegate];

  if (delegate == self)
  {
    [__netService stop];
    v4 = __netService;
    __netService = 0;
  }

  v5.receiver = self;
  v5.super_class = RMSLocalPairingSession;
  [(RMSLocalPairingSession *)&v5 dealloc];
}

- (void)beginPairing
{
  if (!self->_passcode)
  {
    v3 = generateRandomPasscode();
    passcode = self->_passcode;
    self->_passcode = v3;
  }

  _generatePublicKey = [(RMSLocalPairingSession *)self _generatePublicKey];
  v5 = [(RMSLocalPairingSession *)self _expectedPasscodeHashForPasscode:self->_passcode publicKey:?];
  v6 = objc_opt_new();
  pairingServer = self->_pairingServer;
  self->_pairingServer = v6;

  [(RMSPairingServer *)self->_pairingServer setDelegate:self];
  if ([(RMSPairingServer *)self->_pairingServer startServerWithExpectedPasscodeHash:v5 advertisedDeviceName:self->_advertisedDeviceName advertisedDeviceModel:self->_advertisedDeviceModel])
  {
    [(RMSLocalPairingSession *)self _startBonjourAdvertisingWithPublicKey:_generatePublicKey httpServerPort:[(RMSPairingServer *)self->_pairingServer port]];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained pairingSessionDidFail:self];
  }
}

- (void)endPairing
{
  [(RMSPairingServer *)self->_pairingServer stopServer];
  v2 = __netService;

  [v2 stop];
}

- (void)unpairService:(id)service completionHandler:(id)handler
{
  if (handler)
  {
    (*(handler + 2))(handler, 0);
  }
}

- (void)netServiceDidPublish:(id)publish
{
  v4 = RMSLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_261E98000, v4, OS_LOG_TYPE_DEFAULT, "Pairing bonjour service published", v8, 2u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 pairingSession:self didBeginPairingWithPasscode:self->_passcode];
  }
}

- (void)netService:(id)service didNotPublish:(id)publish
{
  [(RMSPairingServer *)self->_pairingServer stopServer:service];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained pairingSessionDidFail:self];
}

- (void)netServiceDidStop:(id)stop
{
  v3 = RMSLogger();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_261E98000, v3, OS_LOG_TYPE_DEFAULT, "Pairing bonjour service stopped", v5, 2u);
  }

  v4 = __netService;
  __netService = 0;
}

- (void)pairingServer:(id)server didPairWithService:(id)service pairingGUID:(id)d
{
  v15 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  dCopy = d;
  v9 = RMSLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = serviceCopy;
    v13 = 2112;
    v14 = dCopy;
    _os_log_impl(&dword_261E98000, v9, OS_LOG_TYPE_DEFAULT, "Pairing server successfully paired, serviceName=[%@] pairingGUID=[%@]", &v11, 0x16u);
  }

  [(RMSLocalPairingSession *)self endPairing];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained pairingSession:self didPairWithServiceNetworkName:serviceCopy pairingGUID:dCopy];
}

- (void)pairingServerDidFail:(id)fail
{
  [(RMSLocalPairingSession *)self endPairing];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained pairingSessionDidFail:self];
}

- (void)_startBonjourAdvertisingWithPublicKey:(id)key httpServerPort:(unsigned __int16)port
{
  keyCopy = key;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__RMSLocalPairingSession__startBonjourAdvertisingWithPublicKey_httpServerPort___block_invoke;
  block[3] = &unk_279B08C28;
  block[4] = self;
  v9 = keyCopy;
  portCopy = port;
  v7 = keyCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __79__RMSLocalPairingSession__startBonjourAdvertisingWithPublicKey_httpServerPort___block_invoke(uint64_t a1)
{
  v14[6] = *MEMORY[0x277D85DE8];
  v13[0] = @"txtvers";
  v13[1] = @"RemN";
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = v2[4];
  v5 = v2[5];
  v14[0] = @"1";
  v14[1] = v4;
  v13[2] = @"DvTy";
  v13[3] = @"DvNm";
  v14[2] = v2[6];
  v14[3] = v5;
  v13[4] = @"RemV";
  v13[5] = @"Pair";
  v14[4] = @"10000";
  v14[5] = v3;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:6];
  if (__netService)
  {
    [__netService stop];
  }

  v7 = objc_alloc(MEMORY[0x277CCAB78]);
  v8 = [*(a1 + 32) _pairingNetServiceName];
  v9 = [v7 initWithDomain:@"local." type:@"_touch-remote._tcp." name:v8 port:*(a1 + 48)];
  v10 = __netService;
  __netService = v9;

  v11 = __netService;
  v12 = [MEMORY[0x277CCAB78] dataFromTXTRecordDictionary:v6];
  [v11 setTXTRecordData:v12];

  [__netService setDelegate:*(a1 + 32)];
  [__netService publish];
}

- (id)_expectedPasscodeHashForPasscode:(id)passcode publicKey:(id)key
{
  v15 = *MEMORY[0x277D85DE8];
  memset(c, 0, 92);
  keyCopy = key;
  CC_MD5_Init(c);
  uTF8String = [keyCopy UTF8String];
  v7 = [keyCopy lengthOfBytesUsingEncoding:4];

  CC_MD5_Update(c, uTF8String, v7);
  passcode = [(RMSLocalPairingSession *)self passcode];
  v9 = [passcode cStringUsingEncoding:10];
  passcode2 = [(RMSLocalPairingSession *)self passcode];
  CC_MD5_Update(c, v9, [passcode2 lengthOfBytesUsingEncoding:10]);

  CC_MD5_Final(md, c);
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%.2X%.2X%.2X%.2X%.2X%.2X%.2X%.2X%.2X%.2X%.2X%.2X%.2X%.2X%.2X%.2X", md[0], md[1], md[2], md[3], md[4], md[5], md[6], md[7], md[8], md[9], md[10], md[11], md[12], md[13], md[14], md[15], *c, *&c[16], *&c[24], *&c[40], *&c[48], *&c[64], *&c[72], *&c[88]];

  return v11;
}

- (id)_pairingNetServiceName
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  uUIDString = [standardUserDefaults stringForKey:@"PairingNetServiceName"];
  if (!uUIDString)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];

    [standardUserDefaults setValue:uUIDString forKey:@"PairingNetServiceName"];
    [standardUserDefaults synchronize];
  }

  return uUIDString;
}

- (RMSPairingSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end