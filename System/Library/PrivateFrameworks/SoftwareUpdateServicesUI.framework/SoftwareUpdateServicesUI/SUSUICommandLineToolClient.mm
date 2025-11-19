@interface SUSUICommandLineToolClient
- (SUSUICommandLineToolClient)init;
- (SUSUICommandLineToolClient)initWithDelegate:(id)a3;
- (SUSUICommandLineToolClientDelegate)delegate;
- (id)URLForType:(unint64_t)a3;
- (id)_remoteInterfaceWithErrorHandler:(id)a3;
- (void)_connectToServerIfNecessary;
- (void)_invalidateConnection;
- (void)_noteConnectionDropped;
- (void)ddmInstallNow;
- (void)dealloc;
- (void)destroyInstallationKeybag;
- (void)dismissAllAlerts;
- (void)downloadDidFinish;
- (void)getAlertStatus:(id)a3;
- (void)getDDMAlertStatus:(id)a3;
- (void)reboot:(BOOL)a3;
- (void)setInstallOperation:(id)a3;
- (void)setPasscodePolicy:(unint64_t)a3;
- (void)setRestartCountdownOverrideIntervalSeconds:(id)a3;
- (void)setUpdateToInstall:(id)a3;
- (void)showAuthenticationUIWithOptions:(unint64_t)a3 result:(id)a4;
- (void)showDDMAlert:(int64_t)a3 install:(BOOL)a4;
- (void)showEmergencyCallUIWithOptions:(unint64_t)a3 result:(id)a4;
- (void)showFollowUp:(unint64_t)a3;
- (void)showLaggardsUi:(unint64_t)a3 usingFakeData:(BOOL)a4 result:(id)a5;
- (void)showMiniAlertWithDescriptors:(unint64_t)a3 errorCode:(id)a4 downloadDescriptor:(id)a5 scanResultsDescriptor:(id)a6 autoInstallForecast:(id)a7 andRollbackDescriptor:(id)a8 result:(id)a9;
- (void)showMiniAlertWithScan:(unint64_t)a3 errorCode:(id)a4 result:(id)a5;
- (void)simulateComingFromOTAUpdate;
- (void)toggleSettingsBadge:(BOOL)a3;
@end

@implementation SUSUICommandLineToolClient

- (SUSUICommandLineToolClient)init
{
  v4 = 0;
  v4 = [(SUSUICommandLineToolClient *)self initWithDelegate:?];
  v3 = MEMORY[0x277D82BE0](v4);
  objc_storeStrong(&v4, 0);
  return v3;
}

- (SUSUICommandLineToolClient)initWithDelegate:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v9;
  v9 = 0;
  v7.receiver = v3;
  v7.super_class = SUSUICommandLineToolClient;
  v6 = [(SUSUICommandLineToolClient *)&v7 init];
  v9 = v6;
  objc_storeStrong(&v9, v6);
  if (v6)
  {
    [(SUSUICommandLineToolClient *)v9 setDelegate:location[0]];
    [(SUSUICommandLineToolClient *)v9 _connectToServerIfNecessary];
  }

  v5 = MEMORY[0x277D82BE0](v9);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v9, 0);
  return v5;
}

- (void)dealloc
{
  v4 = self;
  v3 = a2;
  objc_storeWeak(&self->_delegate, 0);
  [(SUSUICommandLineToolClient *)v4 _invalidateConnection];
  v2.receiver = v4;
  v2.super_class = SUSUICommandLineToolClient;
  [(SUSUICommandLineToolClient *)&v2 dealloc];
}

- (void)showMiniAlertWithScan:(unint64_t)a3 errorCode:(id)a4 result:(id)a5
{
  v25 = self;
  v24 = a2;
  v23 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v21 = 0;
  objc_storeStrong(&v21, a5);
  v6 = v25;
  v15[1] = MEMORY[0x277D85DD0];
  v16 = -1073741824;
  v17 = 0;
  v18 = __69__SUSUICommandLineToolClient_showMiniAlertWithScan_errorCode_result___block_invoke;
  v19 = &unk_279CB4858;
  v20 = MEMORY[0x277D82BE0](v21);
  v9 = [(SUSUICommandLineToolClient *)v6 _remoteInterfaceWithErrorHandler:?];
  v7 = v23;
  v8 = location;
  v10 = MEMORY[0x277D85DD0];
  v11 = -1073741824;
  v12 = 0;
  v13 = __69__SUSUICommandLineToolClient_showMiniAlertWithScan_errorCode_result___block_invoke_2;
  v14 = &unk_279CB4880;
  v15[0] = MEMORY[0x277D82BE0](v21);
  [v9 showMiniAlertWithScan:v7 errorCode:v8 result:?];
  MEMORY[0x277D82BD8](v9);
  objc_storeStrong(v15, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&location, 0);
}

void __69__SUSUICommandLineToolClient_showMiniAlertWithScan_errorCode_result___block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  BSDispatchQueueAssertMain();
  if (a1[4])
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(location, 0);
}

void __69__SUSUICommandLineToolClient_showMiniAlertWithScan_errorCode_result___block_invoke_2(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = 0;
  objc_storeStrong(&v5, a3);
  BSDispatchQueueAssertMain();
  if (a1[4])
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)showMiniAlertWithDescriptors:(unint64_t)a3 errorCode:(id)a4 downloadDescriptor:(id)a5 scanResultsDescriptor:(id)a6 autoInstallForecast:(id)a7 andRollbackDescriptor:(id)a8 result:(id)a9
{
  v36 = self;
  v35 = a2;
  v34 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v32 = 0;
  objc_storeStrong(&v32, a5);
  v31 = 0;
  objc_storeStrong(&v31, a6);
  v30 = 0;
  objc_storeStrong(&v30, a7);
  v29 = 0;
  objc_storeStrong(&v29, a8);
  v28 = 0;
  objc_storeStrong(&v28, a9);
  v13 = v36;
  v22[1] = MEMORY[0x277D85DD0];
  v23 = -1073741824;
  v24 = 0;
  v25 = __159__SUSUICommandLineToolClient_showMiniAlertWithDescriptors_errorCode_downloadDescriptor_scanResultsDescriptor_autoInstallForecast_andRollbackDescriptor_result___block_invoke;
  v26 = &unk_279CB4858;
  v27 = MEMORY[0x277D82BE0](v28);
  v20 = [(SUSUICommandLineToolClient *)v13 _remoteInterfaceWithErrorHandler:?];
  v14 = v34;
  v15 = location;
  v16 = v32;
  v17 = v31;
  v18 = v30;
  v19 = v29;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __159__SUSUICommandLineToolClient_showMiniAlertWithDescriptors_errorCode_downloadDescriptor_scanResultsDescriptor_autoInstallForecast_andRollbackDescriptor_result___block_invoke_2;
  v21[3] = &unk_279CB4880;
  v22[0] = MEMORY[0x277D82BE0](v28);
  [v20 showMiniAlertWithDescriptors:v14 errorCode:v15 downloadDescriptor:v16 scanResultsDescriptor:v17 autoInstallForecast:v18 andRollbackDescriptor:v19 result:v21];
  MEMORY[0x277D82BD8](v20);
  objc_storeStrong(v22, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&location, 0);
}

void __159__SUSUICommandLineToolClient_showMiniAlertWithDescriptors_errorCode_downloadDescriptor_scanResultsDescriptor_autoInstallForecast_andRollbackDescriptor_result___block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  BSDispatchQueueAssertMain();
  if (a1[4])
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(location, 0);
}

void __159__SUSUICommandLineToolClient_showMiniAlertWithDescriptors_errorCode_downloadDescriptor_scanResultsDescriptor_autoInstallForecast_andRollbackDescriptor_result___block_invoke_2(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = 0;
  objc_storeStrong(&v5, a3);
  BSDispatchQueueAssertMain();
  if (a1[4])
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)dismissAllAlerts
{
  v2 = [(SUSUICommandLineToolClient *)self _remoteInterface];
  [v2 dismissAllAlerts];
  MEMORY[0x277D82BD8](v2);
}

- (void)showFollowUp:(unint64_t)a3
{
  v3 = [(SUSUICommandLineToolClient *)self _remoteInterface];
  [v3 showFollowUp:a3];
  MEMORY[0x277D82BD8](v3);
}

- (void)showLaggardsUi:(unint64_t)a3 usingFakeData:(BOOL)a4 result:(id)a5
{
  v10 = self;
  v9 = a2;
  v8 = a3;
  v7 = a4;
  location = 0;
  objc_storeStrong(&location, a5);
  v5 = [(SUSUICommandLineToolClient *)v10 _remoteInterface];
  [v5 showLaggardsUi:v8 usingFakeData:v7 result:location];
  MEMORY[0x277D82BD8](v5);
  objc_storeStrong(&location, 0);
}

- (void)showAuthenticationUIWithOptions:(unint64_t)a3 result:(id)a4
{
  v21 = self;
  v20 = a2;
  v19 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v4 = v21;
  v12[1] = MEMORY[0x277D85DD0];
  v13 = -1073741824;
  v14 = 0;
  v15 = __69__SUSUICommandLineToolClient_showAuthenticationUIWithOptions_result___block_invoke;
  v16 = &unk_279CB4858;
  v17 = MEMORY[0x277D82BE0](location);
  v6 = [(SUSUICommandLineToolClient *)v4 _remoteInterfaceWithErrorHandler:?];
  v5 = v19;
  v7 = MEMORY[0x277D85DD0];
  v8 = -1073741824;
  v9 = 0;
  v10 = __69__SUSUICommandLineToolClient_showAuthenticationUIWithOptions_result___block_invoke_2;
  v11 = &unk_279CB48A8;
  v12[0] = MEMORY[0x277D82BE0](location);
  [v6 showAuthenticationUIWithOptions:v5 result:?];
  MEMORY[0x277D82BD8](v6);
  objc_storeStrong(v12, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&location, 0);
}

void __69__SUSUICommandLineToolClient_showAuthenticationUIWithOptions_result___block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  BSDispatchQueueAssertMain();
  if (a1[4])
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(location, 0);
}

void __69__SUSUICommandLineToolClient_showAuthenticationUIWithOptions_result___block_invoke_2(uint64_t a1, char a2, id obj)
{
  v6 = a1;
  v5 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  BSDispatchQueueAssertMain();
  if (*(a1 + 32))
  {
    (*(*(a1 + 32) + 16))();
  }

  objc_storeStrong(&location, 0);
}

- (void)showEmergencyCallUIWithOptions:(unint64_t)a3 result:(id)a4
{
  v21 = self;
  v20 = a2;
  v19 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v4 = v21;
  v12[1] = MEMORY[0x277D85DD0];
  v13 = -1073741824;
  v14 = 0;
  v15 = __68__SUSUICommandLineToolClient_showEmergencyCallUIWithOptions_result___block_invoke;
  v16 = &unk_279CB4858;
  v17 = MEMORY[0x277D82BE0](location);
  v6 = [(SUSUICommandLineToolClient *)v4 _remoteInterfaceWithErrorHandler:?];
  v5 = v19;
  v7 = MEMORY[0x277D85DD0];
  v8 = -1073741824;
  v9 = 0;
  v10 = __68__SUSUICommandLineToolClient_showEmergencyCallUIWithOptions_result___block_invoke_2;
  v11 = &unk_279CB48A8;
  v12[0] = MEMORY[0x277D82BE0](location);
  [v6 showEmergencyCallUIWithOptions:v5 result:?];
  MEMORY[0x277D82BD8](v6);
  objc_storeStrong(v12, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&location, 0);
}

void __68__SUSUICommandLineToolClient_showEmergencyCallUIWithOptions_result___block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  BSDispatchQueueAssertMain();
  if (a1[4])
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(location, 0);
}

void __68__SUSUICommandLineToolClient_showEmergencyCallUIWithOptions_result___block_invoke_2(uint64_t a1, char a2, id obj)
{
  v6 = a1;
  v5 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  BSDispatchQueueAssertMain();
  if (*(a1 + 32))
  {
    (*(*(a1 + 32) + 16))();
  }

  objc_storeStrong(&location, 0);
}

- (void)toggleSettingsBadge:(BOOL)a3
{
  v3 = [(SUSUICommandLineToolClient *)self _remoteInterface];
  [v3 toggleSettingsBadge:a3];
  MEMORY[0x277D82BD8](v3);
}

- (void)reboot:(BOOL)a3
{
  v3 = [(SUSUICommandLineToolClient *)self _remoteInterface];
  [v3 reboot:a3];
  MEMORY[0x277D82BD8](v3);
}

- (void)simulateComingFromOTAUpdate
{
  v2 = [(SUSUICommandLineToolClient *)self _remoteInterface];
  [v2 simulateComingFromOTAUpdate];
  MEMORY[0x277D82BD8](v2);
}

- (void)downloadDidFinish
{
  v2 = [(SUSUICommandLineToolClient *)self _remoteInterface];
  [v2 downloadDidFinish];
  MEMORY[0x277D82BD8](v2);
}

- (void)setPasscodePolicy:(unint64_t)a3
{
  v3 = [(SUSUICommandLineToolClient *)self _remoteInterface];
  [v3 setPasscodePolicy:a3];
  MEMORY[0x277D82BD8](v3);
}

- (void)destroyInstallationKeybag
{
  v2 = [(SUSUICommandLineToolClient *)self _remoteInterface];
  [v2 destroyInstallationKeybag];
  MEMORY[0x277D82BD8](v2);
}

- (id)URLForType:(unint64_t)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v9 = self;
  v8 = a2;
  v7 = a3;
  location = 0;
  switch(a3)
  {
    case 0uLL:
      objc_storeStrong(&location, @"prefs:root=General&path=SOFTWARE_UPDATE_LINK");
LABEL_13:
      v10 = [MEMORY[0x277CBEBC0] URLWithString:location];
      goto LABEL_14;
    case 1uLL:
      objc_storeStrong(&location, @"prefs:root=General&path=About/SW_VERSION_SPECIFIER");
      goto LABEL_13;
    case 2uLL:
      objc_storeStrong(&location, @"prefs:root=General&path=SOFTWARE_UPDATE_LINK/SUAutomaticUpdateButton");
      goto LABEL_13;
    case 3uLL:
      objc_storeStrong(&location, @"prefs:root=General&path=SOFTWARE_UPDATE_LINK/SUBetaUpdatesButton");
      goto LABEL_13;
  }

  oslog = SUSUILog();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_1_8_0(v11, v7);
    _os_log_impl(&dword_26AC54000, oslog, OS_LOG_TYPE_DEFAULT, "Unsupported Preference pane: %lu", v11, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v10 = 0;
LABEL_14:
  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
  v3 = v10;

  return v3;
}

- (id)_remoteInterfaceWithErrorHandler:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(SUSUICommandLineToolClient *)v6 _connectToServerIfNecessary];
  v4 = [(NSXPCConnection *)v6->_serverConnection remoteObjectProxyWithErrorHandler:location[0]];
  objc_storeStrong(location, 0);

  return v4;
}

- (void)_invalidateConnection
{
  if (self->_serverConnection)
  {
    [(NSXPCConnection *)self->_serverConnection setInvalidationHandler:?];
    [(NSXPCConnection *)self->_serverConnection setInterruptionHandler:0];
    [(NSXPCConnection *)self->_serverConnection invalidate];
    objc_storeStrong(&self->_serverConnection, 0);
    self->_connected = 0;
  }
}

- (void)_connectToServerIfNecessary
{
  v33 = *MEMORY[0x277D85DE8];
  v30 = self;
  location[1] = a2;
  if (!self->_connected)
  {
    location[0] = SUSUILog();
    v28 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_0_1_8_0(v32, v30);
      _os_log_impl(&dword_26AC54000, location[0], v28, "Client <%p>: establishing connection to softwareupdateservicesui plugin.", v32, 0xCu);
    }

    objc_storeStrong(location, 0);
    [(SUSUICommandLineToolClient *)v30 _invalidateConnection];
    v11 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.softwareupdateservicesui.tool" options:4096];
    serverConnection = v30->_serverConnection;
    v30->_serverConnection = v11;
    MEMORY[0x277D82BD8](serverConnection);
    v10 = v30->_serverConnection;
    v3 = MEMORY[0x277D85CD0];
    v9 = MEMORY[0x277D85CD0];
    [(NSXPCConnection *)v10 _setQueue:?];
    MEMORY[0x277D82BD8](v9);
    v8 = v30->_serverConnection;
    v7 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287B7DAE8];
    [(NSXPCConnection *)v8 setRemoteObjectInterface:?];
    MEMORY[0x277D82BD8](v7);
    v6 = v30->_serverConnection;
    v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287B79198];
    [(NSXPCConnection *)v6 setExportedInterface:?];
    MEMORY[0x277D82BD8](v5);
    [(NSXPCConnection *)v30->_serverConnection setExportedObject:v30];
    objc_initWeak(&from, v30);
    v20 = MEMORY[0x277D85DD0];
    v21 = -1073741824;
    v22 = 0;
    v23 = __57__SUSUICommandLineToolClient__connectToServerIfNecessary__block_invoke;
    v24 = &unk_279CB48D0;
    objc_copyWeak(&v25, &from);
    v26 = MEMORY[0x26D669210](&v20);
    [(NSXPCConnection *)v30->_serverConnection setInvalidationHandler:v26];
    v4 = v30->_serverConnection;
    v13 = MEMORY[0x277D85DD0];
    v14 = -1073741824;
    v15 = 0;
    v16 = __57__SUSUICommandLineToolClient__connectToServerIfNecessary__block_invoke_2;
    v17 = &unk_279CB48F8;
    objc_copyWeak(&v19, &from);
    v18 = MEMORY[0x277D82BE0](v26);
    [(NSXPCConnection *)v4 setInterruptionHandler:&v13];
    [(NSXPCConnection *)v30->_serverConnection resume];
    v30->_connected = 1;
    v30->_serverIsExiting = 0;
    oslog = SUSUILog();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_0_1_8_0(v31, v30);
      _os_log_impl(&dword_26AC54000, oslog, OS_LOG_TYPE_DEFAULT, "Client <%p>: connection established to softwareupdateservicesui plugin.", v31, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    objc_storeStrong(&v18, 0);
    objc_destroyWeak(&v19);
    objc_storeStrong(&v26, 0);
    objc_destroyWeak(&v25);
    objc_destroyWeak(&from);
  }

  *MEMORY[0x277D85DE8];
}

uint64_t __57__SUSUICommandLineToolClient__connectToServerIfNecessary__block_invoke(uint64_t a1)
{
  BSDispatchQueueAssertMain();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _noteConnectionDropped];
  return MEMORY[0x277D82BD8](WeakRetained);
}

uint64_t __57__SUSUICommandLineToolClient__connectToServerIfNecessary__block_invoke_2(NSObject *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  oslog[2] = a1;
  oslog[1] = a1;
  oslog[0] = SUSUILog();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained(&a1[5].isa);
    __os_log_helper_16_0_1_8_0(v5, WeakRetained);
    _os_log_impl(&dword_26AC54000, oslog[0], OS_LOG_TYPE_DEFAULT, "Client <%p>: softwareupdateservicesui plugin exit detected.", v5, 0xCu);
    MEMORY[0x277D82BD8](WeakRetained);
  }

  objc_storeStrong(oslog, 0);
  result = (*(a1[4].isa + 2))();
  *MEMORY[0x277D85DE8];
  return result;
}

- (void)_noteConnectionDropped
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = self;
  oslog[1] = a2;
  oslog[0] = SUSUILog();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_1_8_0(v4, v3);
    _os_log_impl(&dword_26AC54000, oslog[0], OS_LOG_TYPE_DEFAULT, "Client <%p>: disconnected from softwareupdateservicesui plugin.", v4, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  v3->_connected = 0;
  *MEMORY[0x277D85DE8];
}

- (void)getDDMAlertStatus:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(SUSUICommandLineToolClient *)v11 _remoteInterface];
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __48__SUSUICommandLineToolClient_getDDMAlertStatus___block_invoke;
  v8 = &unk_279CB4920;
  v9 = MEMORY[0x277D82BE0](location[0]);
  [v3 getDDMAlertStatus:?];
  MEMORY[0x277D82BD8](v3);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void __48__SUSUICommandLineToolClient_getDDMAlertStatus___block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  (*(a1[4] + 16))();
  objc_storeStrong(location, 0);
}

- (void)showDDMAlert:(int64_t)a3 install:(BOOL)a4
{
  v4 = [(SUSUICommandLineToolClient *)self _remoteInterface];
  [v4 showDDMAlert:a3 install:a4];
  MEMORY[0x277D82BD8](v4);
}

- (void)ddmInstallNow
{
  v2 = [(SUSUICommandLineToolClient *)self _remoteInterface];
  [v2 ddmInstallNow];
  MEMORY[0x277D82BD8](v2);
}

- (void)getAlertStatus:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(SUSUICommandLineToolClient *)v11 _remoteInterface];
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __45__SUSUICommandLineToolClient_getAlertStatus___block_invoke;
  v8 = &unk_279CB4920;
  v9 = MEMORY[0x277D82BE0](location[0]);
  [v3 getAlertStatus:?];
  MEMORY[0x277D82BD8](v3);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void __45__SUSUICommandLineToolClient_getAlertStatus___block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  (*(a1[4] + 16))();
  objc_storeStrong(location, 0);
}

- (void)setRestartCountdownOverrideIntervalSeconds:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(SUSUICommandLineToolClient *)v5 _remoteInterface];
  [v3 setRestartCountdownOverrideIntervalSeconds:location[0]];
  MEMORY[0x277D82BD8](v3);
  objc_storeStrong(location, 0);
}

- (void)setInstallOperation:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(SUSUICommandLineToolClient *)v5 _remoteInterface];
  [v3 setInstallOperation:location[0]];
  MEMORY[0x277D82BD8](v3);
  objc_storeStrong(location, 0);
}

- (void)setUpdateToInstall:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(SUSUICommandLineToolClient *)v5 _remoteInterface];
  [v3 setUpdateToInstall:location[0]];
  MEMORY[0x277D82BD8](v3);
  objc_storeStrong(location, 0);
}

- (SUSUICommandLineToolClientDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end