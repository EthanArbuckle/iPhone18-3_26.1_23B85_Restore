@interface SUSUICommandLineToolClient
- (SUSUICommandLineToolClient)init;
- (SUSUICommandLineToolClient)initWithDelegate:(id)delegate;
- (SUSUICommandLineToolClientDelegate)delegate;
- (id)URLForType:(unint64_t)type;
- (id)_remoteInterfaceWithErrorHandler:(id)handler;
- (void)_connectToServerIfNecessary;
- (void)_invalidateConnection;
- (void)_noteConnectionDropped;
- (void)ddmInstallNow;
- (void)dealloc;
- (void)destroyInstallationKeybag;
- (void)dismissAllAlerts;
- (void)downloadDidFinish;
- (void)getAlertStatus:(id)status;
- (void)getDDMAlertStatus:(id)status;
- (void)reboot:(BOOL)reboot;
- (void)setInstallOperation:(id)operation;
- (void)setPasscodePolicy:(unint64_t)policy;
- (void)setRestartCountdownOverrideIntervalSeconds:(id)seconds;
- (void)setUpdateToInstall:(id)install;
- (void)showAuthenticationUIWithOptions:(unint64_t)options result:(id)result;
- (void)showDDMAlert:(int64_t)alert install:(BOOL)install;
- (void)showEmergencyCallUIWithOptions:(unint64_t)options result:(id)result;
- (void)showFollowUp:(unint64_t)up;
- (void)showLaggardsUi:(unint64_t)ui usingFakeData:(BOOL)data result:(id)result;
- (void)showMiniAlertWithDescriptors:(unint64_t)descriptors errorCode:(id)code downloadDescriptor:(id)descriptor scanResultsDescriptor:(id)resultsDescriptor autoInstallForecast:(id)forecast andRollbackDescriptor:(id)rollbackDescriptor result:(id)result;
- (void)showMiniAlertWithScan:(unint64_t)scan errorCode:(id)code result:(id)result;
- (void)simulateComingFromOTAUpdate;
- (void)toggleSettingsBadge:(BOOL)badge;
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

- (SUSUICommandLineToolClient)initWithDelegate:(id)delegate
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, delegate);
  v3 = selfCopy;
  selfCopy = 0;
  v7.receiver = v3;
  v7.super_class = SUSUICommandLineToolClient;
  v6 = [(SUSUICommandLineToolClient *)&v7 init];
  selfCopy = v6;
  objc_storeStrong(&selfCopy, v6);
  if (v6)
  {
    [(SUSUICommandLineToolClient *)selfCopy setDelegate:location[0]];
    [(SUSUICommandLineToolClient *)selfCopy _connectToServerIfNecessary];
  }

  v5 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (void)dealloc
{
  selfCopy = self;
  v3 = a2;
  objc_storeWeak(&self->_delegate, 0);
  [(SUSUICommandLineToolClient *)selfCopy _invalidateConnection];
  v2.receiver = selfCopy;
  v2.super_class = SUSUICommandLineToolClient;
  [(SUSUICommandLineToolClient *)&v2 dealloc];
}

- (void)showMiniAlertWithScan:(unint64_t)scan errorCode:(id)code result:(id)result
{
  selfCopy = self;
  v24 = a2;
  scanCopy = scan;
  location = 0;
  objc_storeStrong(&location, code);
  v21 = 0;
  objc_storeStrong(&v21, result);
  v6 = selfCopy;
  v15[1] = MEMORY[0x277D85DD0];
  v16 = -1073741824;
  v17 = 0;
  v18 = __69__SUSUICommandLineToolClient_showMiniAlertWithScan_errorCode_result___block_invoke;
  v19 = &unk_279CB4858;
  v20 = MEMORY[0x277D82BE0](v21);
  v9 = [(SUSUICommandLineToolClient *)v6 _remoteInterfaceWithErrorHandler:?];
  v7 = scanCopy;
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

- (void)showMiniAlertWithDescriptors:(unint64_t)descriptors errorCode:(id)code downloadDescriptor:(id)descriptor scanResultsDescriptor:(id)resultsDescriptor autoInstallForecast:(id)forecast andRollbackDescriptor:(id)rollbackDescriptor result:(id)result
{
  selfCopy = self;
  v35 = a2;
  descriptorsCopy = descriptors;
  location = 0;
  objc_storeStrong(&location, code);
  v32 = 0;
  objc_storeStrong(&v32, descriptor);
  v31 = 0;
  objc_storeStrong(&v31, resultsDescriptor);
  v30 = 0;
  objc_storeStrong(&v30, forecast);
  v29 = 0;
  objc_storeStrong(&v29, rollbackDescriptor);
  v28 = 0;
  objc_storeStrong(&v28, result);
  v13 = selfCopy;
  v22[1] = MEMORY[0x277D85DD0];
  v23 = -1073741824;
  v24 = 0;
  v25 = __159__SUSUICommandLineToolClient_showMiniAlertWithDescriptors_errorCode_downloadDescriptor_scanResultsDescriptor_autoInstallForecast_andRollbackDescriptor_result___block_invoke;
  v26 = &unk_279CB4858;
  v27 = MEMORY[0x277D82BE0](v28);
  v20 = [(SUSUICommandLineToolClient *)v13 _remoteInterfaceWithErrorHandler:?];
  v14 = descriptorsCopy;
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
  _remoteInterface = [(SUSUICommandLineToolClient *)self _remoteInterface];
  [_remoteInterface dismissAllAlerts];
  MEMORY[0x277D82BD8](_remoteInterface);
}

- (void)showFollowUp:(unint64_t)up
{
  _remoteInterface = [(SUSUICommandLineToolClient *)self _remoteInterface];
  [_remoteInterface showFollowUp:up];
  MEMORY[0x277D82BD8](_remoteInterface);
}

- (void)showLaggardsUi:(unint64_t)ui usingFakeData:(BOOL)data result:(id)result
{
  selfCopy = self;
  v9 = a2;
  uiCopy = ui;
  dataCopy = data;
  location = 0;
  objc_storeStrong(&location, result);
  _remoteInterface = [(SUSUICommandLineToolClient *)selfCopy _remoteInterface];
  [_remoteInterface showLaggardsUi:uiCopy usingFakeData:dataCopy result:location];
  MEMORY[0x277D82BD8](_remoteInterface);
  objc_storeStrong(&location, 0);
}

- (void)showAuthenticationUIWithOptions:(unint64_t)options result:(id)result
{
  selfCopy = self;
  v20 = a2;
  optionsCopy = options;
  location = 0;
  objc_storeStrong(&location, result);
  v4 = selfCopy;
  v12[1] = MEMORY[0x277D85DD0];
  v13 = -1073741824;
  v14 = 0;
  v15 = __69__SUSUICommandLineToolClient_showAuthenticationUIWithOptions_result___block_invoke;
  v16 = &unk_279CB4858;
  v17 = MEMORY[0x277D82BE0](location);
  v6 = [(SUSUICommandLineToolClient *)v4 _remoteInterfaceWithErrorHandler:?];
  v5 = optionsCopy;
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

- (void)showEmergencyCallUIWithOptions:(unint64_t)options result:(id)result
{
  selfCopy = self;
  v20 = a2;
  optionsCopy = options;
  location = 0;
  objc_storeStrong(&location, result);
  v4 = selfCopy;
  v12[1] = MEMORY[0x277D85DD0];
  v13 = -1073741824;
  v14 = 0;
  v15 = __68__SUSUICommandLineToolClient_showEmergencyCallUIWithOptions_result___block_invoke;
  v16 = &unk_279CB4858;
  v17 = MEMORY[0x277D82BE0](location);
  v6 = [(SUSUICommandLineToolClient *)v4 _remoteInterfaceWithErrorHandler:?];
  v5 = optionsCopy;
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

- (void)toggleSettingsBadge:(BOOL)badge
{
  _remoteInterface = [(SUSUICommandLineToolClient *)self _remoteInterface];
  [_remoteInterface toggleSettingsBadge:badge];
  MEMORY[0x277D82BD8](_remoteInterface);
}

- (void)reboot:(BOOL)reboot
{
  _remoteInterface = [(SUSUICommandLineToolClient *)self _remoteInterface];
  [_remoteInterface reboot:reboot];
  MEMORY[0x277D82BD8](_remoteInterface);
}

- (void)simulateComingFromOTAUpdate
{
  _remoteInterface = [(SUSUICommandLineToolClient *)self _remoteInterface];
  [_remoteInterface simulateComingFromOTAUpdate];
  MEMORY[0x277D82BD8](_remoteInterface);
}

- (void)downloadDidFinish
{
  _remoteInterface = [(SUSUICommandLineToolClient *)self _remoteInterface];
  [_remoteInterface downloadDidFinish];
  MEMORY[0x277D82BD8](_remoteInterface);
}

- (void)setPasscodePolicy:(unint64_t)policy
{
  _remoteInterface = [(SUSUICommandLineToolClient *)self _remoteInterface];
  [_remoteInterface setPasscodePolicy:policy];
  MEMORY[0x277D82BD8](_remoteInterface);
}

- (void)destroyInstallationKeybag
{
  _remoteInterface = [(SUSUICommandLineToolClient *)self _remoteInterface];
  [_remoteInterface destroyInstallationKeybag];
  MEMORY[0x277D82BD8](_remoteInterface);
}

- (id)URLForType:(unint64_t)type
{
  v12 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v8 = a2;
  typeCopy = type;
  location = 0;
  switch(type)
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
    __os_log_helper_16_0_1_8_0(v11, typeCopy);
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

- (id)_remoteInterfaceWithErrorHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, handler);
  [(SUSUICommandLineToolClient *)selfCopy _connectToServerIfNecessary];
  v4 = [(NSXPCConnection *)selfCopy->_serverConnection remoteObjectProxyWithErrorHandler:location[0]];
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
  selfCopy = self;
  location[1] = a2;
  if (!self->_connected)
  {
    location[0] = SUSUILog();
    v28 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_0_1_8_0(v32, selfCopy);
      _os_log_impl(&dword_26AC54000, location[0], v28, "Client <%p>: establishing connection to softwareupdateservicesui plugin.", v32, 0xCu);
    }

    objc_storeStrong(location, 0);
    [(SUSUICommandLineToolClient *)selfCopy _invalidateConnection];
    v11 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.softwareupdateservicesui.tool" options:4096];
    serverConnection = selfCopy->_serverConnection;
    selfCopy->_serverConnection = v11;
    MEMORY[0x277D82BD8](serverConnection);
    v10 = selfCopy->_serverConnection;
    v3 = MEMORY[0x277D85CD0];
    v9 = MEMORY[0x277D85CD0];
    [(NSXPCConnection *)v10 _setQueue:?];
    MEMORY[0x277D82BD8](v9);
    v8 = selfCopy->_serverConnection;
    v7 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287B7DAE8];
    [(NSXPCConnection *)v8 setRemoteObjectInterface:?];
    MEMORY[0x277D82BD8](v7);
    v6 = selfCopy->_serverConnection;
    v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287B79198];
    [(NSXPCConnection *)v6 setExportedInterface:?];
    MEMORY[0x277D82BD8](v5);
    [(NSXPCConnection *)selfCopy->_serverConnection setExportedObject:selfCopy];
    objc_initWeak(&from, selfCopy);
    v20 = MEMORY[0x277D85DD0];
    v21 = -1073741824;
    v22 = 0;
    v23 = __57__SUSUICommandLineToolClient__connectToServerIfNecessary__block_invoke;
    v24 = &unk_279CB48D0;
    objc_copyWeak(&v25, &from);
    v26 = MEMORY[0x26D669210](&v20);
    [(NSXPCConnection *)selfCopy->_serverConnection setInvalidationHandler:v26];
    v4 = selfCopy->_serverConnection;
    v13 = MEMORY[0x277D85DD0];
    v14 = -1073741824;
    v15 = 0;
    v16 = __57__SUSUICommandLineToolClient__connectToServerIfNecessary__block_invoke_2;
    v17 = &unk_279CB48F8;
    objc_copyWeak(&v19, &from);
    v18 = MEMORY[0x277D82BE0](v26);
    [(NSXPCConnection *)v4 setInterruptionHandler:&v13];
    [(NSXPCConnection *)selfCopy->_serverConnection resume];
    selfCopy->_connected = 1;
    selfCopy->_serverIsExiting = 0;
    oslog = SUSUILog();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_0_1_8_0(v31, selfCopy);
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
  selfCopy = self;
  oslog[1] = a2;
  oslog[0] = SUSUILog();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_1_8_0(v4, selfCopy);
    _os_log_impl(&dword_26AC54000, oslog[0], OS_LOG_TYPE_DEFAULT, "Client <%p>: disconnected from softwareupdateservicesui plugin.", v4, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  selfCopy->_connected = 0;
  *MEMORY[0x277D85DE8];
}

- (void)getDDMAlertStatus:(id)status
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, status);
  _remoteInterface = [(SUSUICommandLineToolClient *)selfCopy _remoteInterface];
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __48__SUSUICommandLineToolClient_getDDMAlertStatus___block_invoke;
  v8 = &unk_279CB4920;
  v9 = MEMORY[0x277D82BE0](location[0]);
  [_remoteInterface getDDMAlertStatus:?];
  MEMORY[0x277D82BD8](_remoteInterface);
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

- (void)showDDMAlert:(int64_t)alert install:(BOOL)install
{
  _remoteInterface = [(SUSUICommandLineToolClient *)self _remoteInterface];
  [_remoteInterface showDDMAlert:alert install:install];
  MEMORY[0x277D82BD8](_remoteInterface);
}

- (void)ddmInstallNow
{
  _remoteInterface = [(SUSUICommandLineToolClient *)self _remoteInterface];
  [_remoteInterface ddmInstallNow];
  MEMORY[0x277D82BD8](_remoteInterface);
}

- (void)getAlertStatus:(id)status
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, status);
  _remoteInterface = [(SUSUICommandLineToolClient *)selfCopy _remoteInterface];
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __45__SUSUICommandLineToolClient_getAlertStatus___block_invoke;
  v8 = &unk_279CB4920;
  v9 = MEMORY[0x277D82BE0](location[0]);
  [_remoteInterface getAlertStatus:?];
  MEMORY[0x277D82BD8](_remoteInterface);
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

- (void)setRestartCountdownOverrideIntervalSeconds:(id)seconds
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, seconds);
  _remoteInterface = [(SUSUICommandLineToolClient *)selfCopy _remoteInterface];
  [_remoteInterface setRestartCountdownOverrideIntervalSeconds:location[0]];
  MEMORY[0x277D82BD8](_remoteInterface);
  objc_storeStrong(location, 0);
}

- (void)setInstallOperation:(id)operation
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, operation);
  _remoteInterface = [(SUSUICommandLineToolClient *)selfCopy _remoteInterface];
  [_remoteInterface setInstallOperation:location[0]];
  MEMORY[0x277D82BD8](_remoteInterface);
  objc_storeStrong(location, 0);
}

- (void)setUpdateToInstall:(id)install
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, install);
  _remoteInterface = [(SUSUICommandLineToolClient *)selfCopy _remoteInterface];
  [_remoteInterface setUpdateToInstall:location[0]];
  MEMORY[0x277D82BD8](_remoteInterface);
  objc_storeStrong(location, 0);
}

- (SUSUICommandLineToolClientDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end