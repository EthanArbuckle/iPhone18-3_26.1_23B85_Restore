@interface TUIDeviceSpecifierProvider
- (NSArray)specifiers;
- (TUIDeviceSpecifierProvider)initWithAccountManager:(id)a3;
- (TUIDeviceSpecifierProvider)initWithAccountManager:(id)a3 stateManager:(id)a4;
- (TUIDeviceSpecifierProviderDelegate)delegate;
- (id)_deviceErrorSpecifierGroup;
- (id)_deviceList;
- (id)_iconURLForDevice:(id)a3;
- (id)_removeDeviceSpecifier:(id)a3;
- (id)_specifierForDevice:(id)a3;
- (id)_specifierForError;
- (id)_specifiersForDevicesWithError;
- (void)_deviceSpecifierWasTapped:(id)a3;
- (void)deviceListModified:(id)a3;
- (void)refreshDeviceList;
@end

@implementation TUIDeviceSpecifierProvider

- (TUIDeviceSpecifierProvider)initWithAccountManager:(id)a3 stateManager:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = TUIDeviceSpecifierProvider;
  v9 = [(TUIDeviceSpecifierProvider *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_accountManager, a3);
    objc_storeStrong(&v10->_stateManager, a4);
    v11 = [MEMORY[0x277CBEB18] array];
    devicesWithErrors = v10->_devicesWithErrors;
    v10->_devicesWithErrors = v11;

    v13 = [(TUIDeviceSpecifierProvider *)v10 _deviceList];
  }

  return v10;
}

- (TUIDeviceSpecifierProvider)initWithAccountManager:(id)a3
{
  v4 = a3;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_15 != -1)
  {
    [TUIDeviceSpecifierProvider initWithAccountManager:];
  }

  v5 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_15;
  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_15, OS_LOG_TYPE_ERROR))
  {
    [(TUIDeviceSpecifierProvider *)self initWithAccountManager:v5];
  }

  return 0;
}

uint64_t __53__TUIDeviceSpecifierProvider_initWithAccountManager___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_15 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (NSArray)specifiers
{
  specifiers = self->_specifiers;
  if (!specifiers)
  {
    v4 = [MEMORY[0x277CBEB18] array];
    v5 = [(TUIDeviceSpecifierProvider *)self _specifiersForDevicesWithError];
    [v4 addObjectsFromArray:v5];

    v6 = [v4 copy];
    v7 = self->_specifiers;
    self->_specifiers = v6;

    specifiers = self->_specifiers;
  }

  return specifiers;
}

- (id)_specifiersForDevicesWithError
{
  v29[1] = *MEMORY[0x277D85DE8];
  v3 = [(TUIDeviceSpecifierProvider *)self _deviceList];
  v4 = [v3 loadError];

  if (v4)
  {
    v5 = [(TUIDeviceSpecifierProvider *)self _specifierForError];
    v29[0] = v5;
    v6 = MEMORY[0x277CBEA60];
    v7 = v29;
    goto LABEL_3;
  }

  v12 = [v3 devices];
  v13 = [v12 count];

  if (v13)
  {
    if ([(NSMutableArray *)self->_devicesWithErrors count])
    {
      v5 = [MEMORY[0x277CBEB18] array];
      v14 = [(TUIDeviceSpecifierProvider *)self _deviceErrorSpecifierGroup];
      [v5 addObject:v14];

      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v15 = self->_devicesWithErrors;
      v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v23;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v23 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = [(TUIDeviceSpecifierProvider *)self _specifierForDevice:*(*(&v22 + 1) + 8 * i), v22];
            [v5 addObject:v20];
          }

          v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v22 objects:v26 count:16];
        }

        while (v17);
      }

      v8 = [v5 copy];
      goto LABEL_4;
    }

    v5 = [(TUIDeviceSpecifierProvider *)self _spinnerSpecifierGroup];
    v27 = v5;
    v6 = MEMORY[0x277CBEA60];
    v7 = &v27;
LABEL_3:
    v8 = [v6 arrayWithObjects:v7 count:1];
LABEL_4:
    v9 = v8;
    goto LABEL_5;
  }

  v5 = [(TUIDeviceSpecifierProvider *)self _spinnerSpecifierGroup];
  v28[0] = v5;
  v21 = [(TUIDeviceSpecifierProvider *)self _specifierForSpinner];
  v28[1] = v21;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];

LABEL_5:
  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)refreshDeviceList
{
  specifiers = self->_specifiers;
  self->_specifiers = 0;

  deviceList = self->_deviceList;

  [(AADeviceList *)deviceList refreshDeviceList];
}

- (id)_deviceErrorSpecifierGroup
{
  v2 = [(NSMutableArray *)self->_devicesWithErrors count];
  v3 = MEMORY[0x277D3FAD8];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = v4;
  if (v2 >= 2)
  {
    v6 = @"TRANSPARENCY_PANE_DEVICES_ERROR_GROUP_HEADER";
  }

  else
  {
    v6 = @"TRANSPARENCY_PANE_DEVICE_ERROR_GROUP_HEADER";
  }

  if (v2 >= 2)
  {
    v7 = @"TRANSPARENCY_PANE_DEVICES_ERROR_GROUP_FOOTER";
  }

  else
  {
    v7 = @"TRANSPARENCY_PANE_DEVICE_ERROR_GROUP_FOOTER";
  }

  v8 = [v4 localizedStringForKey:v6 value:&stru_287F92480 table:@"Localizable"];
  v9 = [v3 groupSpecifierWithID:@"TUI_PANE_DEVICE_ERROR_GROUP" name:v8];

  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:v7 value:&stru_287F92480 table:@"Localizable"];
  [v9 setProperty:v11 forKey:*MEMORY[0x277D3FF88]];

  return v9;
}

- (id)_specifierForError
{
  v2 = MEMORY[0x277D3FAD8];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"TRANSPARENCY_PANE_DEVICE_LOADING_ERROR" value:&stru_287F92480 table:@"Localizable"];
  v5 = [v2 preferenceSpecifierNamed:v4 target:0 set:0 get:0 detail:0 cell:-1 edit:0];

  [v5 setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FF38]];

  return v5;
}

- (id)_specifierForDevice:(id)a3
{
  v4 = MEMORY[0x277D3FAD8];
  v5 = a3;
  v6 = [v5 name];
  v7 = [v4 preferenceSpecifierNamed:v6 target:self set:0 get:0 detail:0 cell:1 edit:0];

  [v7 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
  v8 = [v5 name];
  [v7 setProperty:v8 forKey:*MEMORY[0x277D40170]];

  v9 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D76F30]];
  [v7 setProperty:v9 forKey:*MEMORY[0x277D40140]];

  v10 = [v5 modelDisplayName];
  [v7 setProperty:v10 forKey:*MEMORY[0x277D40160]];

  v11 = MEMORY[0x277CBEC38];
  [v7 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D40020]];
  v12 = [(TUIDeviceSpecifierProvider *)self _iconURLForDevice:v5];
  [v7 setProperty:v12 forKey:*MEMORY[0x277D40030]];

  [v7 setControllerLoadAction:sel__deviceSpecifierWasTapped_];
  [v7 setUserInfo:v5];

  [v7 setProperty:v11 forKey:*MEMORY[0x277D3FF38]];

  return v7;
}

- (id)_removeDeviceSpecifier:(id)a3
{
  v4 = MEMORY[0x277D3FAD8];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"REMOVE_FROM_ACCOUNT" value:&stru_287F92480 table:@"Localizable"];
  v7 = [v4 deleteButtonSpecifierWithName:v6 target:self action:sel__removeTappedForDevice_];

  [v7 setProperty:&unk_287F9E6F0 forKey:*MEMORY[0x277D3FD78]];

  return v7;
}

- (void)_deviceSpecifierWasTapped:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = MEMORY[0x277CBEBC0];
    v7 = [v5 deviceDetailUri];
    v8 = [v6 URLWithString:v7];

    if (v8)
    {
      v9 = [objc_alloc(MEMORY[0x277CBAB50]) initWithURL:v8];
      v10 = [v5 deviceDetailHttpMethod];
      [v9 setHTTPMethod:v10];

      v11 = [(TUIDeviceSpecifierProvider *)self delegate];
      [v11 specifierProvider:self loadRequest:v9 withIdentifier:@"_AAUIRemotePageIdentifierTrustedDevice" specifier:v4];
    }

    else
    {
      if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_15 != -1)
      {
        [TUIDeviceSpecifierProvider _deviceSpecifierWasTapped:];
      }

      v13 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_15;
      if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_15, OS_LOG_TYPE_DEBUG))
      {
        *v14 = 0;
        _os_log_impl(&dword_26F50B000, v13, OS_LOG_TYPE_DEBUG, "Unable to load trusted-devices remote UI. We're missing the URL from the device info!", v14, 2u);
      }
    }
  }

  else
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_15 != -1)
    {
      [TUIDeviceSpecifierProvider _deviceSpecifierWasTapped:];
    }

    v12 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_15;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_15, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_26F50B000, v12, OS_LOG_TYPE_DEBUG, "Unable to load trusted-devices remote UI. We're missing the device info!", buf, 2u);
    }
  }
}

uint64_t __56__TUIDeviceSpecifierProvider__deviceSpecifierWasTapped___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_15 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

uint64_t __56__TUIDeviceSpecifierProvider__deviceSpecifierWasTapped___block_invoke_72()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_15 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (id)_iconURLForDevice:(id)a3
{
  v3 = [a3 modelSmallPhotoURL3x];
  v4 = [MEMORY[0x277CBEBC0] URLWithString:v3];

  return v4;
}

- (id)_deviceList
{
  deviceList = self->_deviceList;
  if (!deviceList)
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_15 != -1)
    {
      [TUIDeviceSpecifierProvider _deviceList];
    }

    v4 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_15;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_15, OS_LOG_TYPE_DEBUG))
    {
      [(TUIDevicesWithIssuesSpecifierProvider *)self _deviceList];
    }

    v5 = [objc_alloc(MEMORY[0x277CEC7C0]) initWithAccountManager:self->_accountManager];
    v6 = self->_deviceList;
    self->_deviceList = v5;

    [(AADeviceList *)self->_deviceList setDelegate:self];
    deviceList = self->_deviceList;
  }

  return deviceList;
}

uint64_t __41__TUIDeviceSpecifierProvider__deviceList__block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_15 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)deviceListModified:(id)a3
{
  v49 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_15 != -1)
  {
    [TUIDeviceSpecifierProvider deviceListModified:];
  }

  v4 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_15;
  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_15, OS_LOG_TYPE_DEBUG))
  {
    [(TUIDeviceSpecifierProvider *)v4 deviceListModified:v3, self];
  }

  [(NSMutableArray *)self->_devicesWithErrors removeAllObjects];
  v26 = [MEMORY[0x277CBEB18] array];
  v5 = dispatch_group_create();
  v42[0] = 0;
  v42[1] = v42;
  v42[2] = 0x3032000000;
  v42[3] = __Block_byref_object_copy_;
  v42[4] = __Block_byref_object_dispose_;
  v43 = 0;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v3;
  v6 = [obj countByEnumeratingWithState:&v38 objects:v48 count:16];
  if (v6)
  {
    v8 = *v39;
    v25 = *MEMORY[0x277D735B0];
    *&v7 = 138543618;
    v24 = v7;
    do
    {
      v9 = 0;
      do
      {
        if (*v39 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v38 + 1) + 8 * v9);
        v11 = [v10 pushToken];
        if (v11 && ([v10 pushToken], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "isEqualToString:", &stru_287F92480), v12, v11, !v13))
        {
          if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_15 != -1)
          {
            [TUIDeviceSpecifierProvider deviceListModified:];
          }

          v16 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_15;
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            v17 = [v10 pushToken];
            *buf = 138412290;
            v45 = v17;
            _os_log_impl(&dword_26F50B000, v16, OS_LOG_TYPE_DEBUG, "checking device %@ for errors", buf, 0xCu);
          }

          v18 = MEMORY[0x277CBEA90];
          v19 = [v10 pushToken];
          v20 = v19;
          v14 = [v18 kt_dataWithHexString:{objc_msgSend(v19, "UTF8String")}];

          objc_initWeak(buf, self);
          dispatch_group_enter(v5);
          v21 = MEMORY[0x277D73550];
          v33[0] = MEMORY[0x277D85DD0];
          v33[1] = 3221225472;
          v33[2] = __49__TUIDeviceSpecifierProvider_deviceListModified___block_invoke_92;
          v33[3] = &unk_279DDB2B0;
          objc_copyWeak(&v37, buf);
          v33[4] = v10;
          v34 = v26;
          v36 = v42;
          v35 = v5;
          [v21 loggableDataForDeviceID:v14 application:v25 completionBlock:v33];

          objc_destroyWeak(&v37);
          objc_destroyWeak(buf);
        }

        else
        {
          if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_15 != -1)
          {
            [TUIDeviceSpecifierProvider deviceListModified:];
          }

          v14 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_15;
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            v15 = [v10 name];
            *buf = v24;
            v45 = self;
            v46 = 2114;
            v47 = v15;
            _os_log_debug_impl(&dword_26F50B000, v14, OS_LOG_TYPE_DEBUG, "%{public}@ device %{public}@ ignored", buf, 0x16u);
          }
        }

        ++v9;
      }

      while (v6 != v9);
      v6 = [obj countByEnumeratingWithState:&v38 objects:v48 count:16];
    }

    while (v6);
  }

  objc_initWeak(buf, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__TUIDeviceSpecifierProvider_deviceListModified___block_invoke_109;
  block[3] = &unk_279DDB2D8;
  objc_copyWeak(&v32, buf);
  v30 = v26;
  v31 = v42;
  v22 = v26;
  dispatch_group_notify(v5, MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v32);
  objc_destroyWeak(buf);
  _Block_object_dispose(v42, 8);

  v23 = *MEMORY[0x277D85DE8];
}

uint64_t __49__TUIDeviceSpecifierProvider_deviceListModified___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_15 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

uint64_t __49__TUIDeviceSpecifierProvider_deviceListModified___block_invoke_84()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_15 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

uint64_t __49__TUIDeviceSpecifierProvider_deviceListModified___block_invoke_87()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_15 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

void __49__TUIDeviceSpecifierProvider_deviceListModified___block_invoke_92(uint64_t a1, void *a2, void *a3)
{
  v48 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_15 != -1)
    {
      __49__TUIDeviceSpecifierProvider_deviceListModified___block_invoke_92_cold_1();
    }

    v8 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_15;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_15, OS_LOG_TYPE_DEBUG))
    {
      v24 = *(a1 + 32);
      v25 = v8;
      v26 = [v24 pushToken];
      *buf = 136316162;
      v39 = "[TUIDeviceSpecifierProvider deviceListModified:]_block_invoke_2";
      v40 = 2114;
      v41 = v26;
      v42 = 2114;
      v43 = v5;
      v44 = 2114;
      v45 = v6;
      v46 = 2114;
      v47 = WeakRetained;
      _os_log_debug_impl(&dword_26F50B000, v25, OS_LOG_TYPE_DEBUG, "%s device %{public}@: loggableData = %{public}@, error = %{public}@ on %{public}@", buf, 0x34u);

      if (!v5)
      {
        goto LABEL_31;
      }
    }

    else if (!v5)
    {
      goto LABEL_31;
    }

    if ([v5 result])
    {
      goto LABEL_31;
    }

    if ([v5 marked])
    {
      v9 = [v5 markExpiryDate];
      if (!v9 || (v10 = v9, [v5 markExpiryDate], v11 = objc_claimAutoreleasedReturnValue(), v12 = +[TUIUtils isDateExpired:](TUIUtils, "isDateExpired:", v11), v11, v10, !v12))
      {
        if ([*(a1 + 40) count])
        {
          goto LABEL_31;
        }

        v22 = [v5 markExpiryDate];
        if (!v22)
        {
          goto LABEL_31;
        }

        v21 = v22;
        v23 = [v5 markExpiryDate];
        if ([TUIUtils isDateExpired:v23])
        {
        }

        else
        {
          v28 = *(*(*(a1 + 56) + 8) + 40);
          if (v28)
          {
            v37 = [v5 markExpiryDate];
            v29 = [v28 laterDate:v37];
            v30 = [v5 markExpiryDate];

            if (v29 != v30)
            {
              goto LABEL_31;
            }
          }

          else
          {
          }

          if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_15 != -1)
          {
            __49__TUIDeviceSpecifierProvider_deviceListModified___block_invoke_92_cold_4();
          }

          v31 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_15;
          if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_15, OS_LOG_TYPE_DEBUG))
          {
            v32 = v31;
            v33 = [v5 markExpiryDate];
            v34 = [*(a1 + 32) pushToken];
            *buf = 138543618;
            v39 = v33;
            v40 = 2114;
            v41 = v34;
            _os_log_impl(&dword_26F50B000, v32, OS_LOG_TYPE_DEBUG, "found new max expiry date (%{public}@) on device %{public}@ ", buf, 0x16u);
          }

          v35 = [v5 markExpiryDate];
          v36 = *(*(a1 + 56) + 8);
          v21 = *(v36 + 40);
          *(v36 + 40) = v35;
        }

        goto LABEL_25;
      }

      if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_15 != -1)
      {
        __49__TUIDeviceSpecifierProvider_deviceListModified___block_invoke_92_cold_3();
      }

      v13 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_15;
      if (!os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_15, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_23;
      }

      v14 = v13;
      v15 = [v5 markExpiryDate];
      v16 = [*(a1 + 32) pushToken];
      *buf = 138543618;
      v39 = v15;
      v40 = 2114;
      v41 = v16;
      _os_log_impl(&dword_26F50B000, v14, OS_LOG_TYPE_DEBUG, "found deleted expired device (%{public}@) to display %{public}@", buf, 0x16u);
    }

    else
    {
      if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_15 != -1)
      {
        __49__TUIDeviceSpecifierProvider_deviceListModified___block_invoke_92_cold_2();
      }

      v18 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_15;
      if (!os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_15, OS_LOG_TYPE_DEBUG))
      {
LABEL_23:
        [*(a1 + 40) addObject:*(a1 + 32)];
        v20 = *(*(a1 + 56) + 8);
        v21 = *(v20 + 40);
        if (v21)
        {
          *(v20 + 40) = 0;
LABEL_25:
        }

LABEL_31:
        dispatch_group_leave(*(a1 + 48));
        goto LABEL_32;
      }

      v19 = *(a1 + 32);
      v14 = v18;
      v15 = [v19 pushToken];
      *buf = 138543362;
      v39 = v15;
      _os_log_impl(&dword_26F50B000, v14, OS_LOG_TYPE_DEBUG, "found failed device to display %{public}@", buf, 0xCu);
    }

    goto LABEL_23;
  }

  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_15 != -1)
  {
    __49__TUIDeviceSpecifierProvider_deviceListModified___block_invoke_92_cold_5();
  }

  v17 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_15;
  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_15, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v39 = "[TUIDeviceSpecifierProvider deviceListModified:]_block_invoke";
    _os_log_impl(&dword_26F50B000, v17, OS_LOG_TYPE_ERROR, "%s, block required strong self is nil", buf, 0xCu);
  }

LABEL_32:

  v27 = *MEMORY[0x277D85DE8];
}

uint64_t __49__TUIDeviceSpecifierProvider_deviceListModified___block_invoke_2()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_15 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

uint64_t __49__TUIDeviceSpecifierProvider_deviceListModified___block_invoke_95()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_15 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

uint64_t __49__TUIDeviceSpecifierProvider_deviceListModified___block_invoke_98()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_15 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

uint64_t __49__TUIDeviceSpecifierProvider_deviceListModified___block_invoke_102()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_15 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

uint64_t __49__TUIDeviceSpecifierProvider_deviceListModified___block_invoke_105()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_15 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

void __49__TUIDeviceSpecifierProvider_deviceListModified___block_invoke_109(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_15 != -1)
    {
      __49__TUIDeviceSpecifierProvider_deviceListModified___block_invoke_109_cold_1();
    }

    v3 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_15;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_15, OS_LOG_TYPE_DEBUG))
    {
      __49__TUIDeviceSpecifierProvider_deviceListModified___block_invoke_109_cold_2(WeakRetained, a1, v3);
    }

    v4 = [WeakRetained stateManager];
    [v4 setExpectedResolutionDays:*(*(*(a1 + 40) + 8) + 40)];

    [WeakRetained setDevicesWithErrors:*(a1 + 32)];
    v5 = WeakRetained[2];
    WeakRetained[2] = 0;
    v6 = v5;

    v7 = [WeakRetained delegate];
    [v7 reloadSpecifiersForProvider:WeakRetained oldSpecifiers:v6 animated:1];
  }

  else
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_15 != -1)
    {
      __49__TUIDeviceSpecifierProvider_deviceListModified___block_invoke_109_cold_3();
    }

    v8 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_15;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_15, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315138;
      v11 = "[TUIDeviceSpecifierProvider deviceListModified:]_block_invoke";
      _os_log_impl(&dword_26F50B000, v8, OS_LOG_TYPE_ERROR, "%s, block required strong self is nil", &v10, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __49__TUIDeviceSpecifierProvider_deviceListModified___block_invoke_2_110()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_15 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

uint64_t __49__TUIDeviceSpecifierProvider_deviceListModified___block_invoke_113()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_15 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (TUIDeviceSpecifierProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithAccountManager:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136315394;
  v4 = "[TUIDeviceSpecifierProvider initWithAccountManager:]";
  v5 = 2114;
  v6 = a1;
  _os_log_error_impl(&dword_26F50B000, a2, OS_LOG_TYPE_ERROR, "%s not supported on %{public}@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)deviceListModified:(uint64_t)a3 .cold.2(void *a1, void *a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v7 = 136315650;
  v8 = "[TUIDeviceSpecifierProvider deviceListModified:]";
  v9 = 1024;
  v10 = [a2 count];
  v11 = 2114;
  v12 = a3;
  _os_log_debug_impl(&dword_26F50B000, v5, OS_LOG_TYPE_DEBUG, "%s devices count = %d on %{public}@", &v7, 0x1Cu);

  v6 = *MEMORY[0x277D85DE8];
}

void __49__TUIDeviceSpecifierProvider_deviceListModified___block_invoke_109_cold_2(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 32);
  v6 = a3;
  v7 = [v5 count];
  v8 = *(*(*(a2 + 40) + 8) + 40);
  v10 = 138543874;
  v11 = a1;
  v12 = 1024;
  v13 = v7;
  v14 = 2114;
  v15 = v8;
  _os_log_debug_impl(&dword_26F50B000, v6, OS_LOG_TYPE_DEBUG, "%{public}@ devices with errors count = %d, deleted devices expire date = %{public}@", &v10, 0x1Cu);

  v9 = *MEMORY[0x277D85DE8];
}

@end