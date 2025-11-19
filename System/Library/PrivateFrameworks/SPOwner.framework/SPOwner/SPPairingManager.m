@interface SPPairingManager
- (SPPairingManager)init;
- (SPPairingManagerXPCProtocol)proxy;
- (id)remoteInterface;
- (void)allPairingErrorsWithCompletion:(id)a3;
- (void)alwaysBeaconWildStateWithCompletion:(id)a3;
- (void)currentBeaconingKeyWithCompletion:(id)a3;
- (void)dealloc;
- (void)finalizePairingWithSession:(id)a3 configuration:(id)a4 completion:(id)a5;
- (void)finalizePairingWithSession:(id)a3 name:(id)a4 roleId:(int64_t)a5 roleEmoji:(id)a6 keyStatus:(id)a7 collaborativeKey:(id)a8 signature:(id)a9 completion:(id)a10;
- (void)getLocalPairingDataWithCompletion:(id)a3;
- (void)getOfflineFindingInfoWithCurrentData:(id)a3 completion:(id)a4;
- (void)initiatePairingSessionWithCompletion:(id)a3;
- (void)invalidatePairingSession:(id)a3 completion:(id)a4;
- (void)setAlwaysBeaconWildState:(BOOL)a3 completion:(id)a4;
- (void)unpairUUID:(id)a3 force:(BOOL)a4 completion:(id)a5;
- (void)verifyPairingWithPairingSession:(id)a3 signature:(id)a4 attestation:(id)a5 systemPublicKey:(id)a6 refKeyPublicKey:(id)a7 systemVersion:(id)a8 vendorId:(int64_t)a9 productId:(int64_t)a10 ecid:(id)a11 chipId:(id)a12 serialNumber:(id)a13 collaborativeKey:(id)a14 completion:(id)a15;
@end

@implementation SPPairingManager

- (SPPairingManager)init
{
  v11.receiver = self;
  v11.super_class = SPPairingManager;
  v2 = [(SPPairingManager *)&v11 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.icloud.searchpartyd.pairingmanager", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = objc_alloc(MEMORY[0x277D07BA0]);
    v7 = [(SPPairingManager *)v2 remoteInterface];
    v8 = [v6 initWithMachServiceName:@"com.apple.icloud.searchpartyd.pairingmanager" options:0 remoteObjectInterface:v7 interruptionHandler:0 invalidationHandler:0];
    serviceDescription = v2->_serviceDescription;
    v2->_serviceDescription = v8;
  }

  return v2;
}

- (void)dealloc
{
  v3 = [(SPPairingManager *)self session];
  [v3 invalidate];

  [(SPPairingManager *)self setSession:0];
  v4.receiver = self;
  v4.super_class = SPPairingManager;
  [(SPPairingManager *)&v4 dealloc];
}

- (SPPairingManagerXPCProtocol)proxy
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(SPPairingManager *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(SPPairingManager *)self session];

  if (!v4)
  {
    v5 = objc_alloc(MEMORY[0x277D07BA8]);
    v6 = [(SPPairingManager *)self serviceDescription];
    v7 = [v5 initWithServiceDescription:v6];
    [(SPPairingManager *)self setSession:v7];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(SPPairingManager *)self serviceDescription];
      v9 = [v8 machService];
      v15 = 138412290;
      v16 = v9;
      _os_log_impl(&dword_2643D0000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "SPPairingManager: Establishing XPC connection to %@", &v15, 0xCu);
    }

    v10 = [(SPPairingManager *)self session];
    [v10 resume];
  }

  v11 = [(SPPairingManager *)self session];
  v12 = [v11 proxy];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)remoteInterface
{
  v8[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287606C70];
  v3 = MEMORY[0x277CBEB98];
  v8[0] = objc_opt_class();
  v8[1] = objc_opt_class();
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];
  v5 = [v3 setWithArray:v4];
  [v2 setClasses:v5 forSelector:sel_allPairingErrorsWithCompletion_ argumentIndex:0 ofReply:1];

  v6 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)initiatePairingSessionWithCompletion:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v12 = "[SPPairingManager initiatePairingSessionWithCompletion:]";
    _os_log_impl(&dword_2643D0000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "SPPairingManager: %{public}s", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v5 = [(SPPairingManager *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__SPPairingManager_initiatePairingSessionWithCompletion___block_invoke;
  v8[3] = &unk_279B59650;
  objc_copyWeak(&v10, buf);
  v9 = v4;
  v6 = v4;
  dispatch_async(v5, v8);

  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
  v7 = *MEMORY[0x277D85DE8];
}

void __57__SPPairingManager_initiatePairingSessionWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained userAgentProxy];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __57__SPPairingManager_initiatePairingSessionWithCompletion___block_invoke_2;
  v4[3] = &unk_279B59628;
  v5 = *(a1 + 32);
  [v3 initiatePairingSessionWithCompletion:v4];
}

void __57__SPPairingManager_initiatePairingSessionWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 identifier];
    v9 = 138543362;
    v10 = v7;
    _os_log_impl(&dword_2643D0000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "SPPairingManager: Got pairing session with id - %{public}@", &v9, 0xCu);
  }

  (*(*(a1 + 32) + 16))();

  v8 = *MEMORY[0x277D85DE8];
}

- (void)invalidatePairingSession:(id)a3 completion:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v17 = "[SPPairingManager invalidatePairingSession:completion:]";
    _os_log_impl(&dword_2643D0000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "SPPairingManager: %{public}s", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v8 = [(SPPairingManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__SPPairingManager_invalidatePairingSession_completion___block_invoke;
  block[3] = &unk_279B58BA8;
  objc_copyWeak(&v15, buf);
  v13 = v6;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);

  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);
  v11 = *MEMORY[0x277D85DE8];
}

void __56__SPPairingManager_invalidatePairingSession_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained userAgentProxy];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __56__SPPairingManager_invalidatePairingSession_completion___block_invoke_2;
  v5[3] = &unk_279B58B58;
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  [v3 invalidatePairingSession:v4 completion:v5];
}

void __56__SPPairingManager_invalidatePairingSession_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_2643D0000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "SPPairingManager: Error invalidating pairing session - %{public}@", &v5, 0xCu);
  }

  (*(*(a1 + 32) + 16))();

  v4 = *MEMORY[0x277D85DE8];
}

- (void)verifyPairingWithPairingSession:(id)a3 signature:(id)a4 attestation:(id)a5 systemPublicKey:(id)a6 refKeyPublicKey:(id)a7 systemVersion:(id)a8 vendorId:(int64_t)a9 productId:(int64_t)a10 ecid:(id)a11 chipId:(id)a12 serialNumber:(id)a13 collaborativeKey:(id)a14 completion:(id)a15
{
  v47 = *MEMORY[0x277D85DE8];
  v21 = a3;
  v22 = a4;
  v38 = a5;
  v37 = a6;
  v36 = a7;
  v35 = a8;
  v23 = v22;
  v24 = a11;
  v25 = self;
  v26 = a12;
  v27 = a13;
  v28 = a14;
  v29 = a15;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v30 = [v21 identifier];
    *buf = 136446466;
    v44 = "[SPPairingManager verifyPairingWithPairingSession:signature:attestation:systemPublicKey:refKeyPublicKey:systemVersion:vendorId:productId:ecid:chipId:serialNumber:collaborativeKey:completion:]";
    v45 = 2114;
    v46 = v30;
    _os_log_impl(&dword_2643D0000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "SPPairingManager: %{public}s, with session - %{public}@", buf, 0x16u);
  }

  [v21 setPayloadSignature:v23];
  [v21 setAttestation:v38];
  [v21 setSystemPublicKey:v37];
  [v21 setRefKeyPublicKey:v36];
  [v21 setCollaborativeKeyC1:v28];
  [v21 setSystemVersion:v35];
  [v21 setVendorId:a9];
  [v21 setProductId:a10];
  [v21 setEcid:v24];
  [v21 setChipId:v26];
  [v21 setSerialNumber:v27];
  objc_initWeak(buf, v25);
  v31 = [(SPPairingManager *)v25 queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __192__SPPairingManager_verifyPairingWithPairingSession_signature_attestation_systemPublicKey_refKeyPublicKey_systemVersion_vendorId_productId_ecid_chipId_serialNumber_collaborativeKey_completion___block_invoke;
  block[3] = &unk_279B58BA8;
  objc_copyWeak(&v42, buf);
  v40 = v21;
  v41 = v29;
  v32 = v29;
  v33 = v21;
  dispatch_async(v31, block);

  objc_destroyWeak(&v42);
  objc_destroyWeak(buf);

  v34 = *MEMORY[0x277D85DE8];
}

void __192__SPPairingManager_verifyPairingWithPairingSession_signature_attestation_systemPublicKey_refKeyPublicKey_systemVersion_vendorId_productId_ecid_chipId_serialNumber_collaborativeKey_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained userAgentProxy];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __192__SPPairingManager_verifyPairingWithPairingSession_signature_attestation_systemPublicKey_refKeyPublicKey_systemVersion_vendorId_productId_ecid_chipId_serialNumber_collaborativeKey_completion___block_invoke_2;
  v5[3] = &unk_279B59628;
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  [v3 verifyPairingInfoUsing:v4 completion:v5];
}

- (void)finalizePairingWithSession:(id)a3 name:(id)a4 roleId:(int64_t)a5 roleEmoji:(id)a6 keyStatus:(id)a7 collaborativeKey:(id)a8 signature:(id)a9 completion:(id)a10
{
  v36 = *MEMORY[0x277D85DE8];
  v16 = a3;
  v17 = a4;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v23 = [v16 identifier];
    *buf = 136446466;
    v33 = "[SPPairingManager finalizePairingWithSession:name:roleId:roleEmoji:keyStatus:collaborativeKey:signature:completion:]";
    v34 = 2114;
    v35 = v23;
    _os_log_impl(&dword_2643D0000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "@DEPRECATED SPPairingManager: %{public}s, with session - %{public}@", buf, 0x16u);
  }

  [v16 setKeyGenerationStatus:v19];
  [v16 setCollaborativeKeyC3:v20];
  [v16 setConfirmSignature:v21];
  [v16 updateName:v17 roleId:a5 roleEmoji:v18];
  objc_initWeak(buf, self);
  v24 = [(SPPairingManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __117__SPPairingManager_finalizePairingWithSession_name_roleId_roleEmoji_keyStatus_collaborativeKey_signature_completion___block_invoke;
  block[3] = &unk_279B58BA8;
  objc_copyWeak(&v31, buf);
  v29 = v16;
  v30 = v22;
  v25 = v22;
  v26 = v16;
  dispatch_async(v24, block);

  objc_destroyWeak(&v31);
  objc_destroyWeak(buf);

  v27 = *MEMORY[0x277D85DE8];
}

void __117__SPPairingManager_finalizePairingWithSession_name_roleId_roleEmoji_keyStatus_collaborativeKey_signature_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained userAgentProxy];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __117__SPPairingManager_finalizePairingWithSession_name_roleId_roleEmoji_keyStatus_collaborativeKey_signature_completion___block_invoke_2;
  v5[3] = &unk_279B59628;
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  [v3 finalizePairingUsing:v4 completion:v5];
}

- (void)finalizePairingWithSession:(id)a3 configuration:(id)a4 completion:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v8 identifier];
    *buf = 136446466;
    v21 = "[SPPairingManager finalizePairingWithSession:configuration:completion:]";
    v22 = 2114;
    v23 = v11;
    _os_log_impl(&dword_2643D0000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "SPPairingManager: %{public}s, with session - %{public}@", buf, 0x16u);
  }

  [v8 updateWithConfiguration:v9];
  objc_initWeak(buf, self);
  v12 = [(SPPairingManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__SPPairingManager_finalizePairingWithSession_configuration_completion___block_invoke;
  block[3] = &unk_279B58BA8;
  objc_copyWeak(&v19, buf);
  v17 = v8;
  v18 = v10;
  v13 = v10;
  v14 = v8;
  dispatch_async(v12, block);

  objc_destroyWeak(&v19);
  objc_destroyWeak(buf);

  v15 = *MEMORY[0x277D85DE8];
}

void __72__SPPairingManager_finalizePairingWithSession_configuration_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained userAgentProxy];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __72__SPPairingManager_finalizePairingWithSession_configuration_completion___block_invoke_2;
  v5[3] = &unk_279B59628;
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  [v3 finalizePairingUsing:v4 completion:v5];
}

- (void)unpairUUID:(id)a3 force:(BOOL)a4 completion:(id)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v20 = "[SPPairingManager unpairUUID:force:completion:]";
    _os_log_impl(&dword_2643D0000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "SPPairingManager: %{public}s", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v10 = [(SPPairingManager *)self queue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __48__SPPairingManager_unpairUUID_force_completion___block_invoke;
  v14[3] = &unk_279B59678;
  objc_copyWeak(&v17, buf);
  v18 = a4;
  v15 = v8;
  v16 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, v14);

  objc_destroyWeak(&v17);
  objc_destroyWeak(buf);
  v13 = *MEMORY[0x277D85DE8];
}

void __48__SPPairingManager_unpairUUID_force_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained userAgentProxy];
  v4 = *(a1 + 56);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__SPPairingManager_unpairUUID_force_completion___block_invoke_2;
  v6[3] = &unk_279B58B58;
  v5 = *(a1 + 32);
  v7 = *(a1 + 40);
  [v3 unpairUUID:v5 force:v4 completion:v6];
}

void __48__SPPairingManager_unpairUUID_force_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_2643D0000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "SPPairingManager: unpair completed. Error - %@", &v5, 0xCu);
  }

  (*(*(a1 + 32) + 16))();

  v4 = *MEMORY[0x277D85DE8];
}

- (void)getLocalPairingDataWithCompletion:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v12 = "[SPPairingManager getLocalPairingDataWithCompletion:]";
    _os_log_impl(&dword_2643D0000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "SPPairingManager: %{public}s", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v5 = [(SPPairingManager *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54__SPPairingManager_getLocalPairingDataWithCompletion___block_invoke;
  v8[3] = &unk_279B59650;
  objc_copyWeak(&v10, buf);
  v9 = v4;
  v6 = v4;
  dispatch_async(v5, v8);

  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
  v7 = *MEMORY[0x277D85DE8];
}

void __54__SPPairingManager_getLocalPairingDataWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained proxy];
  [v2 getLocalPairingDataWithCompletion:*(a1 + 32)];
}

- (void)currentBeaconingKeyWithCompletion:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v12 = "[SPPairingManager currentBeaconingKeyWithCompletion:]";
    _os_log_impl(&dword_2643D0000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "SPPairingManager: %{public}s", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v5 = [(SPPairingManager *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54__SPPairingManager_currentBeaconingKeyWithCompletion___block_invoke;
  v8[3] = &unk_279B59650;
  objc_copyWeak(&v10, buf);
  v9 = v4;
  v6 = v4;
  dispatch_async(v5, v8);

  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
  v7 = *MEMORY[0x277D85DE8];
}

void __54__SPPairingManager_currentBeaconingKeyWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained proxy];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __54__SPPairingManager_currentBeaconingKeyWithCompletion___block_invoke_2;
  v4[3] = &unk_279B596A0;
  v5 = *(a1 + 32);
  [v3 currentBeaconingKeyWithCompletion:v4];
}

- (void)allPairingErrorsWithCompletion:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v12 = "[SPPairingManager allPairingErrorsWithCompletion:]";
    _os_log_impl(&dword_2643D0000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "SPPairingManager: %{public}s", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v5 = [(SPPairingManager *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__SPPairingManager_allPairingErrorsWithCompletion___block_invoke;
  v8[3] = &unk_279B59650;
  objc_copyWeak(&v10, buf);
  v9 = v4;
  v6 = v4;
  dispatch_async(v5, v8);

  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
  v7 = *MEMORY[0x277D85DE8];
}

void __51__SPPairingManager_allPairingErrorsWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained proxy];
  [v2 allPairingErrorsWithCompletion:*(a1 + 32)];
}

- (void)setAlwaysBeaconWildState:(BOOL)a3 completion:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v14 = "[SPPairingManager setAlwaysBeaconWildState:completion:]";
    _os_log_impl(&dword_2643D0000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "SPPairingManager: %{public}s", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__SPPairingManager_setAlwaysBeaconWildState_completion___block_invoke;
  v9[3] = &unk_279B596F0;
  v9[4] = self;
  objc_copyWeak(&v11, buf);
  v12 = a3;
  v10 = v6;
  v7 = v6;
  _os_activity_initiate(&dword_2643D0000, "SPPairingManager setAlwaysBeaconWildState:completion:", OS_ACTIVITY_FLAG_DEFAULT, v9);

  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
  v8 = *MEMORY[0x277D85DE8];
}

void __56__SPPairingManager_setAlwaysBeaconWildState_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__SPPairingManager_setAlwaysBeaconWildState_completion___block_invoke_2;
  block[3] = &unk_279B596C8;
  objc_copyWeak(&v5, (a1 + 48));
  v6 = *(a1 + 56);
  v4 = *(a1 + 40);
  dispatch_async(v2, block);

  objc_destroyWeak(&v5);
}

void __56__SPPairingManager_setAlwaysBeaconWildState_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained proxy];
  [v2 setAlwaysBeaconWildState:*(a1 + 48) completion:*(a1 + 32)];
}

- (void)alwaysBeaconWildStateWithCompletion:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v11 = "[SPPairingManager alwaysBeaconWildStateWithCompletion:]";
    _os_log_impl(&dword_2643D0000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "SPPairingManager: %{public}s", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __56__SPPairingManager_alwaysBeaconWildStateWithCompletion___block_invoke;
  activity_block[3] = &unk_279B59718;
  activity_block[4] = self;
  objc_copyWeak(&v9, buf);
  v8 = v4;
  v5 = v4;
  _os_activity_initiate(&dword_2643D0000, "SPPairingManager alwaysBeaconWildStateWithCompletion:", OS_ACTIVITY_FLAG_DEFAULT, activity_block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(buf);
  v6 = *MEMORY[0x277D85DE8];
}

void __56__SPPairingManager_alwaysBeaconWildStateWithCompletion___block_invoke(id *a1)
{
  v2 = [a1[4] queue];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __56__SPPairingManager_alwaysBeaconWildStateWithCompletion___block_invoke_2;
  v3[3] = &unk_279B59650;
  objc_copyWeak(&v5, a1 + 6);
  v4 = a1[5];
  dispatch_async(v2, v3);

  objc_destroyWeak(&v5);
}

void __56__SPPairingManager_alwaysBeaconWildStateWithCompletion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained proxy];
  [v2 alwaysBeaconWildStateWithCompletion:*(a1 + 32)];
}

- (void)getOfflineFindingInfoWithCurrentData:(id)a3 completion:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v17 = "[SPPairingManager getOfflineFindingInfoWithCurrentData:completion:]";
    _os_log_impl(&dword_2643D0000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "SPPairingManager: %{public}s", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v8 = [(SPPairingManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__SPPairingManager_getOfflineFindingInfoWithCurrentData_completion___block_invoke;
  block[3] = &unk_279B58BA8;
  objc_copyWeak(&v15, buf);
  v13 = v6;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);

  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);
  v11 = *MEMORY[0x277D85DE8];
}

void __68__SPPairingManager_getOfflineFindingInfoWithCurrentData_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained proxy];
  [v2 getOfflineFindingInfoWithCurrentData:*(a1 + 32) completion:*(a1 + 40)];
}

@end