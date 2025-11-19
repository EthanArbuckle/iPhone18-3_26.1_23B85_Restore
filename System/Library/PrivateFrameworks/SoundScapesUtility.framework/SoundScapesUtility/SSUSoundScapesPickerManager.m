@interface SSUSoundScapesPickerManager
+ (BOOL)pickerSupportHome:(id)a3 targetMediaProfiles:(id)a4;
+ (id)pickerForMediaProfiles:(id)a3 forDelegate:(id)a4;
+ (id)pickerIdentity;
+ (id)sharedManager;
- (SSUSoundScapesPickerManager)init;
- (void)hostViewControllerDidActivate:(id)a3;
- (void)hostViewControllerWillDeactivate:(id)a3 error:(id)a4;
- (void)registerViewController:(id)a3 forMediaProfiles:(id)a4 andDelegate:(id)a5;
@end

@implementation SSUSoundScapesPickerManager

+ (id)sharedManager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__SSUSoundScapesPickerManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
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

- (void)registerViewController:(id)a3 forMediaProfiles:(id)a4 andDelegate:(id)a5
{
  targetMediaProfile = self->_targetMediaProfile;
  v9 = a5;
  v10 = a3;
  [(NSMapTable *)targetMediaProfile setObject:a4 forKey:v10];
  v11 = [[_SSUSoundScapesDelegateForwarder alloc] initForViewController:v10];
  [v11 setDelegate:v9];

  [(NSMapTable *)self->_delegates setObject:v11 forKey:v10];
}

+ (BOOL)pickerSupportHome:(id)a3 targetMediaProfiles:(id)a4
{
  v4 = [a3 residentDevices];
  v5 = [v4 na_firstObjectPassingTest:&__block_literal_global_0];
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

+ (id)pickerForMediaProfiles:(id)a3 forDelegate:(id)a4
{
  v43 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [a1 pickerIdentity];
  v9 = _SSULoggingFacility();
  v10 = v9;
  if (v8)
  {
    v39 = v7;
    v40 = v6;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_26B266000, v10, OS_LOG_TYPE_INFO, "Start loading picker", buf, 2u);
    }

    v10 = [objc_alloc(MEMORY[0x277CC5E78]) initWithExtensionIdentity:v8];
    v11 = [objc_alloc(MEMORY[0x277CC5E70]) initWithConfiguration:v10];
    v12 = objc_opt_new();
    v13 = [MEMORY[0x277D75348] systemBackgroundColor];
    [v12 setBackgroundColor:v13];

    v14 = MEMORY[0x277CCA8D8];
    v15 = [v8 url];
    v16 = [v14 bundleWithURL:v15];

    v17 = objc_opt_new();
    v18 = [v16 localizedStringForKey:@"ERROR" value:0 table:0];
    [v17 setText:v18];

    [v17 setTag:10001];
    [v17 setHidden:1];
    [v17 setTextAlignment:1];
    [v12 addSubview:v17];
    [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
    v19 = [v12 centerXAnchor];
    v20 = [v17 centerXAnchor];
    v21 = [v19 constraintEqualToAnchor:v20];
    [v21 setActive:1];

    v22 = [v12 centerYAnchor];
    v23 = [v17 centerYAnchor];
    v24 = [v22 constraintEqualToAnchor:v23];
    [v24 setActive:1];

    v25 = [v17 leadingAnchor];
    v26 = [v12 safeAreaLayoutGuide];
    v27 = [v26 leadingAnchor];
    v28 = [v25 constraintEqualToAnchor:v27 constant:20.0];
    [v28 setActive:1];

    v29 = [v12 safeAreaLayoutGuide];
    v30 = [v29 topAnchor];
    v31 = [v17 topAnchor];
    v32 = [v30 constraintEqualToAnchor:v31];
    [v32 setActive:1];

    [v11 setPlaceholderView:v12];
    v33 = [MEMORY[0x277D75348] systemBackgroundColor];
    v34 = [v11 view];
    [v34 setBackgroundColor:v33];

    v35 = +[SSUSoundScapesPickerManager sharedManager];
    [v11 setDelegate:v35];
    v7 = v39;
    v6 = v40;
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

- (void)hostViewControllerDidActivate:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _SSULoggingFacility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_26B266000, v5, OS_LOG_TYPE_INFO, "Picker become active", buf, 2u);
  }

  v6 = [(NSMapTable *)self->_targetMediaProfile objectForKey:v4];
  v23 = [(NSMapTable *)self->_delegates objectForKey:v4];
  v7 = [v6 anyObject];
  v8 = [v7 home];

  v9 = [v6 allObjects];
  v24 = [v9 na_map:&__block_literal_global_134];

  v10 = [v6 anyObject];
  v11 = [v10 home];
  v12 = [v11 residentDevices];

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __61__SSUSoundScapesPickerManager_hostViewControllerDidActivate___block_invoke_2;
  v28[3] = &unk_279CD6678;
  v13 = v8;
  v29 = v13;
  v14 = [v12 na_map:v28];
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
  v16 = [v4 makeXPCConnectionWithError:&v27];
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
    v21 = [v16 remoteObjectProxy];
    [v21 setupDataSourceWithTargetDeviceVersions:v24 andFallbackResidentDeviceVersions:v14];

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

- (void)hostViewControllerWillDeactivate:(id)a3 error:(id)a4
{
  delegates = self->_delegates;
  v6 = a3;
  v7 = [(NSMapTable *)delegates objectForKey:v6];
  [v7 pickerDismissed];
  [(NSMapTable *)self->_targetMediaProfile removeObjectForKey:v6];
  [(NSMapTable *)self->_delegates removeObjectForKey:v6];
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