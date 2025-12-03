@interface WiFiAwareDevicesStore
- (WiFiAwareDevicesStore)init;
- (WiFiAwareDevicesStoreDelegate)delegate;
- (id)reauthorizePairedDeviceFor:(id)for withDeviceID:(unint64_t)d;
- (id)remoteObjectInterface;
- (id)removeAllPairedDevices;
- (id)removeAllPairedDevicesFor:(id)for;
- (id)removePairedDeviceFor:(id)for withDeviceID:(unint64_t)d;
- (id)uninstallPairedDeviceFor:(id)for withDeviceID:(unint64_t)d;
- (id)updatePairedDeviceNameFor:(id)for withDeviceID:(unint64_t)d toNewName:(id)name;
- (unint64_t)authorizeNewPairedDeviceFor:(id)for pairingKeyStoreID:(id)d storageClass:(int64_t)class lifetime:(double)lifetime client:(int64_t)client error:(id *)error;
- (void)authorizeNewPairedDeviceFor:(id)for pairingKeyStoreID:(id)d storageClass:(int64_t)class lifetime:(double)lifetime client:(int64_t)client completionHandler:(id)handler;
- (void)deauthorizePairedDeviceFor:(id)for withDeviceID:(unint64_t)d remove:(BOOL)remove completionHandler:(id)handler;
- (void)pairedDeviceAdded:(id)added;
- (void)pairedDeviceChanged:(id)changed;
- (void)pairedDeviceRemoved:(id)removed;
- (void)queryPairedDevicesInfo:(id)info;
- (void)reauthorizePairedDeviceFor:(id)for withDeviceID:(unint64_t)d completionHandler:(id)handler;
- (void)removeAllPairedDevices:(id)devices;
- (void)removeAllPairedDevicesFor:(id)for completionHandler:(id)handler;
- (void)removePairedDeviceFor:(id)for withDeviceID:(unint64_t)d completionHandler:(id)handler;
- (void)uninstallPairedDeviceFor:(id)for withDeviceID:(unint64_t)d completionHandler:(id)handler;
- (void)updatePairedDeviceNameFor:(id)for withDeviceID:(unint64_t)d toNewName:(id)name completionHandler:(id)handler;
@end

@implementation WiFiAwareDevicesStore

- (WiFiAwareDevicesStore)init
{
  v9.receiver = self;
  v9.super_class = WiFiAwareDevicesStore;
  v2 = [(WiFiAwareDevicesStore *)&v9 init];
  if (v2)
  {
    v3 = [WiFiP2PXPCConnection alloc];
    v4 = +[WiFiP2PXPCConnection wifiPeerToPeerWorkloop];
    v5 = dispatch_queue_create_with_target_V2("com.apple.wifip2p.WiFiAwarePairedDevicesManager", 0, v4);
    v6 = [(WiFiP2PXPCConnection *)v3 initWithEndpointType:1 queue:v5 retryTimeout:+[WiFiP2PXPCConnection defaultRetryTimeout]];
    xpcConnection = v2->_xpcConnection;
    v2->_xpcConnection = v6;

    [(WiFiP2PXPCConnection *)v2->_xpcConnection setDelegate:v2];
  }

  return v2;
}

- (id)remoteObjectInterface
{
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2841B40C8];
  v3 = MEMORY[0x277CBEB98];
  v4 = objc_opt_class();
  v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
  [v2 setClasses:v5 forSelector:sel_queryPairedDevicesInfo_ argumentIndex:0 ofReply:1];

  return v2;
}

- (void)queryPairedDevicesInfo:(id)info
{
  infoCopy = info;
  xpcConnection = self->_xpcConnection;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__WiFiAwareDevicesStore_queryPairedDevicesInfo___block_invoke;
  v7[3] = &unk_2787AAE88;
  v8 = infoCopy;
  v6 = infoCopy;
  [(WiFiP2PXPCConnection *)xpcConnection withRemoteObjectProxy:v7];
}

- (void)authorizeNewPairedDeviceFor:(id)for pairingKeyStoreID:(id)d storageClass:(int64_t)class lifetime:(double)lifetime client:(int64_t)client completionHandler:(id)handler
{
  forCopy = for;
  dCopy = d;
  handlerCopy = handler;
  xpcConnection = self->_xpcConnection;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __118__WiFiAwareDevicesStore_authorizeNewPairedDeviceFor_pairingKeyStoreID_storageClass_lifetime_client_completionHandler___block_invoke;
  v21[3] = &unk_2787AAEB0;
  v22 = forCopy;
  v23 = dCopy;
  lifetimeCopy = lifetime;
  clientCopy = client;
  v24 = handlerCopy;
  classCopy = class;
  v18 = handlerCopy;
  v19 = dCopy;
  v20 = forCopy;
  [(WiFiP2PXPCConnection *)xpcConnection withRemoteObjectProxy:v21];
}

- (unint64_t)authorizeNewPairedDeviceFor:(id)for pairingKeyStoreID:(id)d storageClass:(int64_t)class lifetime:(double)lifetime client:(int64_t)client error:(id *)error
{
  v38 = *MEMORY[0x277D85DE8];
  forCopy = for;
  dCopy = d;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__0;
  v30 = __Block_byref_object_dispose__0;
  v31 = 0;
  v16 = dispatch_semaphore_create(0);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __106__WiFiAwareDevicesStore_authorizeNewPairedDeviceFor_pairingKeyStoreID_storageClass_lifetime_client_error___block_invoke;
  v22[3] = &unk_2787AAED8;
  v24 = &v26;
  v25 = &v32;
  v17 = v16;
  v23 = v17;
  [(WiFiAwareDevicesStore *)self authorizeNewPairedDeviceFor:forCopy pairingKeyStoreID:dCopy storageClass:class lifetime:client client:v22 completionHandler:lifetime];
  v18 = dispatch_time(0, 10000000000);
  if (dispatch_semaphore_wait(v17, v18) >= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 134349056;
    v37 = 0x4024000000000000;
    _os_log_error_impl(&dword_22DFDF000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "[WiFiPeerToPeer] FAILED to complete operation within %{public}.1fs, continuing", buf, 0xCu);
  }

  *error = v27[5];
  v19 = v33[3];

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v32, 8);

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

void __106__WiFiAwareDevicesStore_authorizeNewPairedDeviceFor_pairingKeyStoreID_storageClass_lifetime_client_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v11 = "[WiFiAwareDevicesStore authorizeNewPairedDeviceFor:pairingKeyStoreID:storageClass:lifetime:client:error:]_block_invoke";
    v12 = 2080;
    v10 = 136316162;
    v13 = "WiFiAwareDevicesStore.m";
    v14 = 1024;
    v15 = 101;
    v16 = 2048;
    v17 = a2;
    v18 = 2112;
    v19 = v5;
    _os_log_impl(&dword_22DFDF000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s (%s:%u) DeviceID: %llu, Error: %@", &v10, 0x30u);
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  *(*(*(a1 + 48) + 8) + 24) = a2;
  dispatch_semaphore_signal(*(a1 + 32));

  v9 = *MEMORY[0x277D85DE8];
}

- (void)reauthorizePairedDeviceFor:(id)for withDeviceID:(unint64_t)d completionHandler:(id)handler
{
  forCopy = for;
  handlerCopy = handler;
  xpcConnection = self->_xpcConnection;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __83__WiFiAwareDevicesStore_reauthorizePairedDeviceFor_withDeviceID_completionHandler___block_invoke;
  v13[3] = &unk_2787AAF00;
  v15 = handlerCopy;
  dCopy = d;
  v14 = forCopy;
  v11 = handlerCopy;
  v12 = forCopy;
  [(WiFiP2PXPCConnection *)xpcConnection withRemoteObjectProxy:v13];
}

- (id)reauthorizePairedDeviceFor:(id)for withDeviceID:(unint64_t)d
{
  v24 = *MEMORY[0x277D85DE8];
  forCopy = for;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__0;
  v20 = __Block_byref_object_dispose__0;
  v21 = 0;
  v7 = dispatch_semaphore_create(0);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __65__WiFiAwareDevicesStore_reauthorizePairedDeviceFor_withDeviceID___block_invoke;
  v13[3] = &unk_2787AAF28;
  v15 = &v16;
  v8 = v7;
  v14 = v8;
  [(WiFiAwareDevicesStore *)self reauthorizePairedDeviceFor:forCopy withDeviceID:d completionHandler:v13];
  v9 = dispatch_time(0, 10000000000);
  if (dispatch_semaphore_wait(v8, v9) >= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 134349056;
    v23 = 0x4024000000000000;
    _os_log_error_impl(&dword_22DFDF000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "[WiFiPeerToPeer] FAILED to complete operation within %{public}.1fs, continuing", buf, 0xCu);
  }

  v10 = v17[5];

  _Block_object_dispose(&v16, 8);
  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __65__WiFiAwareDevicesStore_reauthorizePairedDeviceFor_withDeviceID___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315906;
    v9 = "[WiFiAwareDevicesStore reauthorizePairedDeviceFor:withDeviceID:]_block_invoke";
    v10 = 2080;
    v11 = "WiFiAwareDevicesStore.m";
    v12 = 1024;
    v13 = 128;
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&dword_22DFDF000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s (%s:%u) Error: %@", &v8, 0x26u);
  }

  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
  v6 = v3;

  dispatch_semaphore_signal(*(a1 + 32));
  v7 = *MEMORY[0x277D85DE8];
}

- (void)updatePairedDeviceNameFor:(id)for withDeviceID:(unint64_t)d toNewName:(id)name completionHandler:(id)handler
{
  forCopy = for;
  nameCopy = name;
  handlerCopy = handler;
  xpcConnection = self->_xpcConnection;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __92__WiFiAwareDevicesStore_updatePairedDeviceNameFor_withDeviceID_toNewName_completionHandler___block_invoke;
  v17[3] = &unk_2787AAF50;
  v18 = forCopy;
  v19 = nameCopy;
  v20 = handlerCopy;
  dCopy = d;
  v14 = handlerCopy;
  v15 = nameCopy;
  v16 = forCopy;
  [(WiFiP2PXPCConnection *)xpcConnection withRemoteObjectProxy:v17];
}

- (id)updatePairedDeviceNameFor:(id)for withDeviceID:(unint64_t)d toNewName:(id)name
{
  v27 = *MEMORY[0x277D85DE8];
  forCopy = for;
  nameCopy = name;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__0;
  v23 = __Block_byref_object_dispose__0;
  v24 = 0;
  v10 = dispatch_semaphore_create(0);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __74__WiFiAwareDevicesStore_updatePairedDeviceNameFor_withDeviceID_toNewName___block_invoke;
  v16[3] = &unk_2787AAF28;
  v18 = &v19;
  v11 = v10;
  v17 = v11;
  [(WiFiAwareDevicesStore *)self updatePairedDeviceNameFor:forCopy withDeviceID:d toNewName:nameCopy completionHandler:v16];
  v12 = dispatch_time(0, 10000000000);
  if (dispatch_semaphore_wait(v11, v12) >= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 134349056;
    v26 = 0x4024000000000000;
    _os_log_error_impl(&dword_22DFDF000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "[WiFiPeerToPeer] FAILED to complete operation within %{public}.1fs, continuing", buf, 0xCu);
  }

  v13 = v20[5];

  _Block_object_dispose(&v19, 8);
  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

void __74__WiFiAwareDevicesStore_updatePairedDeviceNameFor_withDeviceID_toNewName___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315906;
    v9 = "[WiFiAwareDevicesStore updatePairedDeviceNameFor:withDeviceID:toNewName:]_block_invoke";
    v10 = 2080;
    v11 = "WiFiAwareDevicesStore.m";
    v12 = 1024;
    v13 = 158;
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&dword_22DFDF000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s (%s:%u) Error: %@", &v8, 0x26u);
  }

  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
  v6 = v3;

  dispatch_semaphore_signal(*(a1 + 32));
  v7 = *MEMORY[0x277D85DE8];
}

- (void)removePairedDeviceFor:(id)for withDeviceID:(unint64_t)d completionHandler:(id)handler
{
  forCopy = for;
  handlerCopy = handler;
  xpcConnection = self->_xpcConnection;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __78__WiFiAwareDevicesStore_removePairedDeviceFor_withDeviceID_completionHandler___block_invoke;
  v13[3] = &unk_2787AAF00;
  v15 = handlerCopy;
  dCopy = d;
  v14 = forCopy;
  v11 = handlerCopy;
  v12 = forCopy;
  [(WiFiP2PXPCConnection *)xpcConnection withRemoteObjectProxy:v13];
}

- (id)removePairedDeviceFor:(id)for withDeviceID:(unint64_t)d
{
  v24 = *MEMORY[0x277D85DE8];
  forCopy = for;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__0;
  v20 = __Block_byref_object_dispose__0;
  v21 = 0;
  v7 = dispatch_semaphore_create(0);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __60__WiFiAwareDevicesStore_removePairedDeviceFor_withDeviceID___block_invoke;
  v13[3] = &unk_2787AAF28;
  v15 = &v16;
  v8 = v7;
  v14 = v8;
  [(WiFiAwareDevicesStore *)self removePairedDeviceFor:forCopy withDeviceID:d completionHandler:v13];
  v9 = dispatch_time(0, 10000000000);
  if (dispatch_semaphore_wait(v8, v9) >= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 134349056;
    v23 = 0x4024000000000000;
    _os_log_error_impl(&dword_22DFDF000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "[WiFiPeerToPeer] FAILED to complete operation within %{public}.1fs, continuing", buf, 0xCu);
  }

  v10 = v17[5];

  _Block_object_dispose(&v16, 8);
  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __60__WiFiAwareDevicesStore_removePairedDeviceFor_withDeviceID___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315906;
    v9 = "[WiFiAwareDevicesStore removePairedDeviceFor:withDeviceID:]_block_invoke";
    v10 = 2080;
    v11 = "WiFiAwareDevicesStore.m";
    v12 = 1024;
    v13 = 185;
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&dword_22DFDF000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s (%s:%u) Error: %@", &v8, 0x26u);
  }

  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
  v6 = v3;

  dispatch_semaphore_signal(*(a1 + 32));
  v7 = *MEMORY[0x277D85DE8];
}

- (void)uninstallPairedDeviceFor:(id)for withDeviceID:(unint64_t)d completionHandler:(id)handler
{
  forCopy = for;
  handlerCopy = handler;
  xpcConnection = self->_xpcConnection;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __81__WiFiAwareDevicesStore_uninstallPairedDeviceFor_withDeviceID_completionHandler___block_invoke;
  v13[3] = &unk_2787AAF00;
  v15 = handlerCopy;
  dCopy = d;
  v14 = forCopy;
  v11 = handlerCopy;
  v12 = forCopy;
  [(WiFiP2PXPCConnection *)xpcConnection withRemoteObjectProxy:v13];
}

- (id)uninstallPairedDeviceFor:(id)for withDeviceID:(unint64_t)d
{
  v24 = *MEMORY[0x277D85DE8];
  forCopy = for;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__0;
  v20 = __Block_byref_object_dispose__0;
  v21 = 0;
  v7 = dispatch_semaphore_create(0);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __63__WiFiAwareDevicesStore_uninstallPairedDeviceFor_withDeviceID___block_invoke;
  v13[3] = &unk_2787AAF28;
  v15 = &v16;
  v8 = v7;
  v14 = v8;
  [(WiFiAwareDevicesStore *)self uninstallPairedDeviceFor:forCopy withDeviceID:d completionHandler:v13];
  v9 = dispatch_time(0, 10000000000);
  if (dispatch_semaphore_wait(v8, v9) >= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 134349056;
    v23 = 0x4024000000000000;
    _os_log_error_impl(&dword_22DFDF000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "[WiFiPeerToPeer] FAILED to complete operation within %{public}.1fs, continuing", buf, 0xCu);
  }

  v10 = v17[5];

  _Block_object_dispose(&v16, 8);
  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __63__WiFiAwareDevicesStore_uninstallPairedDeviceFor_withDeviceID___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315906;
    v9 = "[WiFiAwareDevicesStore uninstallPairedDeviceFor:withDeviceID:]_block_invoke";
    v10 = 2080;
    v11 = "WiFiAwareDevicesStore.m";
    v12 = 1024;
    v13 = 212;
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&dword_22DFDF000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s (%s:%u) Error: %@", &v8, 0x26u);
  }

  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
  v6 = v3;

  dispatch_semaphore_signal(*(a1 + 32));
  v7 = *MEMORY[0x277D85DE8];
}

- (void)deauthorizePairedDeviceFor:(id)for withDeviceID:(unint64_t)d remove:(BOOL)remove completionHandler:(id)handler
{
  forCopy = for;
  handlerCopy = handler;
  xpcConnection = self->_xpcConnection;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __90__WiFiAwareDevicesStore_deauthorizePairedDeviceFor_withDeviceID_remove_completionHandler___block_invoke;
  v15[3] = &unk_2787AAF78;
  v17 = handlerCopy;
  dCopy = d;
  removeCopy = remove;
  v16 = forCopy;
  v13 = handlerCopy;
  v14 = forCopy;
  [(WiFiP2PXPCConnection *)xpcConnection withRemoteObjectProxy:v15];
}

void __72__WiFiAwareDevicesStore_deauthorizePairedDeviceFor_withDeviceID_remove___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315906;
    v9 = "[WiFiAwareDevicesStore deauthorizePairedDeviceFor:withDeviceID:remove:]_block_invoke";
    v10 = 2080;
    v11 = "WiFiAwareDevicesStore.m";
    v12 = 1024;
    v13 = 237;
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&dword_22DFDF000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s (%s:%u) Error: %@", &v8, 0x26u);
  }

  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
  v6 = v3;

  dispatch_semaphore_signal(*(a1 + 32));
  v7 = *MEMORY[0x277D85DE8];
}

- (void)removeAllPairedDevicesFor:(id)for completionHandler:(id)handler
{
  forCopy = for;
  handlerCopy = handler;
  xpcConnection = self->_xpcConnection;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __69__WiFiAwareDevicesStore_removeAllPairedDevicesFor_completionHandler___block_invoke;
  v11[3] = &unk_2787AAFA0;
  v12 = forCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = forCopy;
  [(WiFiP2PXPCConnection *)xpcConnection withRemoteObjectProxy:v11];
}

- (id)removeAllPairedDevicesFor:(id)for
{
  v22 = *MEMORY[0x277D85DE8];
  forCopy = for;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__0;
  v18 = __Block_byref_object_dispose__0;
  v19 = 0;
  v5 = dispatch_semaphore_create(0);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __51__WiFiAwareDevicesStore_removeAllPairedDevicesFor___block_invoke;
  v11[3] = &unk_2787AAF28;
  v13 = &v14;
  v6 = v5;
  v12 = v6;
  [(WiFiAwareDevicesStore *)self removeAllPairedDevicesFor:forCopy completionHandler:v11];
  v7 = dispatch_time(0, 10000000000);
  if (dispatch_semaphore_wait(v6, v7) >= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 134349056;
    v21 = 0x4024000000000000;
    _os_log_error_impl(&dword_22DFDF000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "[WiFiPeerToPeer] FAILED to complete operation within %{public}.1fs, continuing", buf, 0xCu);
  }

  v8 = v15[5];

  _Block_object_dispose(&v14, 8);
  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

void __51__WiFiAwareDevicesStore_removeAllPairedDevicesFor___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315906;
    v9 = "[WiFiAwareDevicesStore removeAllPairedDevicesFor:]_block_invoke";
    v10 = 2080;
    v11 = "WiFiAwareDevicesStore.m";
    v12 = 1024;
    v13 = 262;
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&dword_22DFDF000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s (%s:%u) Error: %@", &v8, 0x26u);
  }

  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
  v6 = v3;

  dispatch_semaphore_signal(*(a1 + 32));
  v7 = *MEMORY[0x277D85DE8];
}

- (void)removeAllPairedDevices:(id)devices
{
  devicesCopy = devices;
  xpcConnection = self->_xpcConnection;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__WiFiAwareDevicesStore_removeAllPairedDevices___block_invoke;
  v7[3] = &unk_2787AAE88;
  v8 = devicesCopy;
  v6 = devicesCopy;
  [(WiFiP2PXPCConnection *)xpcConnection withRemoteObjectProxy:v7];
}

- (id)removeAllPairedDevices
{
  v20 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__0;
  v16 = __Block_byref_object_dispose__0;
  v17 = 0;
  v3 = dispatch_semaphore_create(0);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47__WiFiAwareDevicesStore_removeAllPairedDevices__block_invoke;
  v9[3] = &unk_2787AAF28;
  v11 = &v12;
  v4 = v3;
  v10 = v4;
  [(WiFiAwareDevicesStore *)self removeAllPairedDevices:v9];
  v5 = dispatch_time(0, 10000000000);
  if (dispatch_semaphore_wait(v4, v5) >= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 134349056;
    v19 = 0x4024000000000000;
    _os_log_error_impl(&dword_22DFDF000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "[WiFiPeerToPeer] FAILED to complete operation within %{public}.1fs, continuing", buf, 0xCu);
  }

  v6 = v13[5];

  _Block_object_dispose(&v12, 8);
  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

void __47__WiFiAwareDevicesStore_removeAllPairedDevices__block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315906;
    v9 = "[WiFiAwareDevicesStore removeAllPairedDevices]_block_invoke";
    v10 = 2080;
    v11 = "WiFiAwareDevicesStore.m";
    v12 = 1024;
    v13 = 287;
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&dword_22DFDF000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s (%s:%u) Error: %@", &v8, 0x26u);
  }

  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
  v6 = v3;

  dispatch_semaphore_signal(*(a1 + 32));
  v7 = *MEMORY[0x277D85DE8];
}

- (void)pairedDeviceAdded:(id)added
{
  addedCopy = added;
  delegate = [(WiFiAwareDevicesStore *)self delegate];
  [delegate deviceAdded:addedCopy];
}

- (void)pairedDeviceRemoved:(id)removed
{
  removedCopy = removed;
  delegate = [(WiFiAwareDevicesStore *)self delegate];
  [delegate deviceRemoved:removedCopy];
}

- (void)pairedDeviceChanged:(id)changed
{
  changedCopy = changed;
  delegate = [(WiFiAwareDevicesStore *)self delegate];
  [delegate deviceChanged:changedCopy];
}

- (WiFiAwareDevicesStoreDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end