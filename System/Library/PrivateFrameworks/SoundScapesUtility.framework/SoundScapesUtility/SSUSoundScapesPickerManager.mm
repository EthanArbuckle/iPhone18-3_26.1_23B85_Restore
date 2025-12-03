@interface SSUSoundScapesPickerManager
+ (BOOL)pickerSupportHome:(id)home targetMediaProfiles:(id)profiles;
+ (id)pickerForMediaProfiles:(id)profiles forDelegate:(id)delegate;
+ (id)pickerIdentity;
+ (id)sharedManager;
- (SSUSoundScapesPickerManager)init;
- (void)hostViewControllerDidActivate:(id)activate;
- (void)hostViewControllerWillDeactivate:(id)deactivate error:(id)error;
- (void)registerViewController:(id)controller forMediaProfiles:(id)profiles andDelegate:(id)delegate;
@end

@implementation SSUSoundScapesPickerManager

+ (id)sharedManager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__SSUSoundScapesPickerManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedManager_onceToken != -1)
  {
    dispatch_once(&sharedManager_onceToken, block);
  }

  v2 = sharedManager_manager;

  return v2;
}

uint64_t __44__SSUSoundScapesPickerManager_sharedManager__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  sharedManager_manager = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (SSUSoundScapesPickerManager)init
{
  v8.receiver = self;
  v8.super_class = SSUSoundScapesPickerManager;
  v2 = [(SSUSoundScapesPickerManager *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:513 valueOptions:0];
    targetMediaProfile = v2->_targetMediaProfile;
    v2->_targetMediaProfile = v3;

    v5 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:513 valueOptions:0];
    delegates = v2->_delegates;
    v2->_delegates = v5;
  }

  return v2;
}

- (void)registerViewController:(id)controller forMediaProfiles:(id)profiles andDelegate:(id)delegate
{
  targetMediaProfile = self->_targetMediaProfile;
  delegateCopy = delegate;
  controllerCopy = controller;
  [(NSMapTable *)targetMediaProfile setObject:profiles forKey:controllerCopy];
  v11 = [[_SSUSoundScapesDelegateForwarder alloc] initForViewController:controllerCopy];
  [v11 setDelegate:delegateCopy];

  [(NSMapTable *)self->_delegates setObject:v11 forKey:controllerCopy];
}

+ (BOOL)pickerSupportHome:(id)home targetMediaProfiles:(id)profiles
{
  residentDevices = [home residentDevices];
  v5 = [residentDevices na_firstObjectPassingTest:&__block_literal_global_0];
  v6 = v5 != 0;

  return v6;
}

+ (id)pickerIdentity
{
  if (pickerIdentity_onceToken != -1)
  {
    +[SSUSoundScapesPickerManager pickerIdentity];
  }

  v3 = pickerIdentity_identity;

  return v3;
}

void __45__SSUSoundScapesPickerManager_pickerIdentity__block_invoke()
{
  v0 = _SSULoggingFacility();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_26B266000, v0, OS_LOG_TYPE_INFO, "Start looking for picker", v5, 2u);
  }

  v1 = [objc_alloc(MEMORY[0x277CC5DF8]) initWithExtensionPointIdentifier:@"com.apple.SoundScapesViewServices.ViewService"];
  v2 = [MEMORY[0x277CC5E00] executeQuery:v1];
  v3 = [v2 firstObject];
  v4 = pickerIdentity_identity;
  pickerIdentity_identity = v3;
}

+ (id)pickerForMediaProfiles:(id)profiles forDelegate:(id)delegate
{
  v43 = *MEMORY[0x277D85DE8];
  profilesCopy = profiles;
  delegateCopy = delegate;
  pickerIdentity = [self pickerIdentity];
  v9 = _SSULoggingFacility();
  v10 = v9;
  if (pickerIdentity)
  {
    v39 = delegateCopy;
    v40 = profilesCopy;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_26B266000, v10, OS_LOG_TYPE_INFO, "Start loading picker", buf, 2u);
    }

    v10 = [objc_alloc(MEMORY[0x277CC5E78]) initWithExtensionIdentity:pickerIdentity];
    v11 = [objc_alloc(MEMORY[0x277CC5E70]) initWithConfiguration:v10];
    v12 = objc_opt_new();
    systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
    [v12 setBackgroundColor:systemBackgroundColor];

    v14 = MEMORY[0x277CCA8D8];
    v15 = [pickerIdentity url];
    v16 = [v14 bundleWithURL:v15];

    v17 = objc_opt_new();
    v18 = [v16 localizedStringForKey:@"ERROR" value:0 table:0];
    [v17 setText:v18];

    [v17 setTag:10001];
    [v17 setHidden:1];
    [v17 setTextAlignment:1];
    [v12 addSubview:v17];
    [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
    centerXAnchor = [v12 centerXAnchor];
    centerXAnchor2 = [v17 centerXAnchor];
    v21 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [v21 setActive:1];

    centerYAnchor = [v12 centerYAnchor];
    centerYAnchor2 = [v17 centerYAnchor];
    v24 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [v24 setActive:1];

    leadingAnchor = [v17 leadingAnchor];
    safeAreaLayoutGuide = [v12 safeAreaLayoutGuide];
    leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
    v28 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:20.0];
    [v28 setActive:1];

    safeAreaLayoutGuide2 = [v12 safeAreaLayoutGuide];
    topAnchor = [safeAreaLayoutGuide2 topAnchor];
    topAnchor2 = [v17 topAnchor];
    v32 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [v32 setActive:1];

    [v11 setPlaceholderView:v12];
    systemBackgroundColor2 = [MEMORY[0x277D75348] systemBackgroundColor];
    view = [v11 view];
    [view setBackgroundColor:systemBackgroundColor2];

    v35 = +[SSUSoundScapesPickerManager sharedManager];
    [v11 setDelegate:v35];
    delegateCopy = v39;
    profilesCopy = v40;
    [v35 registerViewController:v11 forMediaProfiles:v40 andDelegate:v39];
    v36 = _SSULoggingFacility();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v42 = v11;
      _os_log_impl(&dword_26B266000, v36, OS_LOG_TYPE_INFO, "Return picker: %@", buf, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [SSUSoundScapesPickerManager pickerForMediaProfiles:v10 forDelegate:?];
    }

    v11 = 0;
  }

  v37 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)hostViewControllerDidActivate:(id)activate
{
  v34 = *MEMORY[0x277D85DE8];
  activateCopy = activate;
  v5 = _SSULoggingFacility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_26B266000, v5, OS_LOG_TYPE_INFO, "Picker become active", buf, 2u);
  }

  v6 = [(NSMapTable *)self->_targetMediaProfile objectForKey:activateCopy];
  v23 = [(NSMapTable *)self->_delegates objectForKey:activateCopy];
  anyObject = [v6 anyObject];
  home = [anyObject home];

  allObjects = [v6 allObjects];
  v24 = [allObjects na_map:&__block_literal_global_134];

  anyObject2 = [v6 anyObject];
  home2 = [anyObject2 home];
  residentDevices = [home2 residentDevices];

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __61__SSUSoundScapesPickerManager_hostViewControllerDidActivate___block_invoke_2;
  v28[3] = &unk_279CD6678;
  v13 = home;
  v29 = v13;
  v14 = [residentDevices na_map:v28];
  v15 = _SSULoggingFacility();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v31 = v24;
    v32 = 2112;
    v33 = v14;
    _os_log_impl(&dword_26B266000, v15, OS_LOG_TYPE_INFO, "Setup picker for target version %@, resident version %@", buf, 0x16u);
  }

  v27 = 0;
  v16 = [activateCopy makeXPCConnectionWithError:&v27];
  v17 = v27;
  if (v17)
  {
    v18 = _SSULoggingFacility();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      [(SSUSoundScapesPickerManager *)v17 hostViewControllerDidActivate:v18];
    }
  }

  else
  {
    v19 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287BCB168];
    [v16 setRemoteObjectInterface:v19];

    v20 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287BCA700];
    [v16 setExportedInterface:v20];

    [v16 setExportedObject:v23];
    objc_initWeak(buf, self);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __61__SSUSoundScapesPickerManager_hostViewControllerDidActivate___block_invoke_141;
    v25[3] = &unk_279CD66A0;
    objc_copyWeak(&v26, buf);
    [v16 setInvalidationHandler:v25];
    [v23 setConnection:v16];
    [v16 resume];
    remoteObjectProxy = [v16 remoteObjectProxy];
    [remoteObjectProxy setupDataSourceWithTargetDeviceVersions:v24 andFallbackResidentDeviceVersions:v14];

    objc_destroyWeak(&v26);
    objc_destroyWeak(buf);
  }

  v22 = *MEMORY[0x277D85DE8];
}

id __61__SSUSoundScapesPickerManager_hostViewControllerDidActivate___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 backingAccessory];
  v3 = [v2 softwareVersion];
  v4 = [v3 shortVersionString];

  return v4;
}

id __61__SSUSoundScapesPickerManager_hostViewControllerDidActivate___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) accessories];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__SSUSoundScapesPickerManager_hostViewControllerDidActivate___block_invoke_3;
  v10[3] = &unk_279CD6650;
  v11 = v3;
  v5 = v3;
  v6 = [v4 na_firstObjectPassingTest:v10];

  v7 = [v6 softwareVersion];
  v8 = [v7 shortVersionString];

  return v8;
}

uint64_t __61__SSUSoundScapesPickerManager_hostViewControllerDidActivate___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 device];
  v4 = [*(a1 + 32) device];
  v5 = [v3 isEqual:v4];

  return v5;
}

void __61__SSUSoundScapesPickerManager_hostViewControllerDidActivate___block_invoke_141(uint64_t a1)
{
  v2 = _SSULoggingFacility();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_26B266000, v2, OS_LOG_TYPE_INFO, "Picker connection invalidate", v3, 2u);
  }
}

- (void)hostViewControllerWillDeactivate:(id)deactivate error:(id)error
{
  delegates = self->_delegates;
  deactivateCopy = deactivate;
  v7 = [(NSMapTable *)delegates objectForKey:deactivateCopy];
  [v7 pickerDismissed];
  [(NSMapTable *)self->_targetMediaProfile removeObjectForKey:deactivateCopy];
  [(NSMapTable *)self->_delegates removeObjectForKey:deactivateCopy];
}

- (void)hostViewControllerDidActivate:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_26B266000, a2, OS_LOG_TYPE_FAULT, "Failed to get picker connection: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end