@interface TUIDevicesWithIssuesSpecifierProvider
- (AAUISpecifierProviderDelegate)delegate;
- (NSArray)specifiers;
- (TUIDevicesWithIssuesSpecifierProvider)initWithAccountManager:(id)a3;
- (TUIDevicesWithIssuesSpecifierProvider)initWithAccountManager:(id)a3 devicesWithIssuesIdentifiers:(id)a4;
- (id)_deviceList;
- (id)_iconURLForDevice:(id)a3;
- (id)_specifierForDevice:(id)a3;
- (id)_specifierForError;
- (id)_specifierForUnknownDevice:(id)a3;
- (id)_specifiersForDeviceList:(id)a3;
- (void)_deviceList;
- (void)_updateDevicesWithIssuesList:(id)a3;
- (void)deviceListModified:(id)a3;
@end

@implementation TUIDevicesWithIssuesSpecifierProvider

- (TUIDevicesWithIssuesSpecifierProvider)initWithAccountManager:(id)a3
{
  v4 = a3;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_0 != -1)
  {
    [TUIDevicesWithIssuesSpecifierProvider initWithAccountManager:];
  }

  v5 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_0;
  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
  {
    [(TUIDevicesWithIssuesSpecifierProvider *)self initWithAccountManager:v5];
  }

  return 0;
}

uint64_t __64__TUIDevicesWithIssuesSpecifierProvider_initWithAccountManager___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_0 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (TUIDevicesWithIssuesSpecifierProvider)initWithAccountManager:(id)a3 devicesWithIssuesIdentifiers:(id)a4
{
  v7 = a3;
  v8 = a4;
  v19.receiver = self;
  v19.super_class = TUIDevicesWithIssuesSpecifierProvider;
  v9 = [(TUIDevicesWithIssuesSpecifierProvider *)&v19 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_accountManager, a3);
    objc_storeStrong(&v10->_devicesWithIssuesIdentifiers, a4);
    v11 = [MEMORY[0x277CBEB18] array];
    devicesWithIssues = v10->_devicesWithIssues;
    v10->_devicesWithIssues = v11;

    v13 = [MEMORY[0x277CBEB18] array];
    unknownDevices = v10->_unknownDevices;
    v10->_unknownDevices = v13;

    v15 = [[TUIIDMSDeviceSource alloc] initWithIdmsDeviceProtocol:0];
    idms = v10->_idms;
    v10->_idms = v15;

    v17 = [(TUIDevicesWithIssuesSpecifierProvider *)v10 _deviceList];
  }

  return v10;
}

- (NSArray)specifiers
{
  specifiers = self->_specifiers;
  if (!specifiers)
  {
    v4 = [MEMORY[0x277CBEB18] array];
    v5 = [(TUIDevicesWithIssuesSpecifierProvider *)self _deviceList];
    v6 = [(TUIDevicesWithIssuesSpecifierProvider *)self _specifiersForDeviceList:v5];
    [v4 addObjectsFromArray:v6];

    v7 = [v4 copy];
    v8 = self->_specifiers;
    self->_specifiers = v7;

    specifiers = self->_specifiers;
  }

  return specifiers;
}

- (id)_specifiersForDeviceList:(id)a3
{
  v40[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  self->_devicesWithIssuesCount = 0;
  v5 = [v4 loadError];

  if (v5)
  {
    v6 = [(TUIDevicesWithIssuesSpecifierProvider *)self _specifierForError];
    v40[0] = v6;
    v7 = MEMORY[0x277CBEA60];
    v8 = v40;
    goto LABEL_3;
  }

  v10 = [v4 devices];
  v11 = [v10 count];

  if (v11)
  {
    if ([(NSMutableArray *)self->_devicesWithIssues count]|| [(NSMutableArray *)self->_unknownDevices count])
    {
      v6 = [MEMORY[0x277CBEB18] array];
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v12 = self->_devicesWithIssues;
      v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v32 objects:v37 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v33;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v33 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = [(TUIDevicesWithIssuesSpecifierProvider *)self _specifierForDevice:*(*(&v32 + 1) + 8 * i)];
            [v6 addObject:v17];

            ++self->_devicesWithIssuesCount;
          }

          v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v32 objects:v37 count:16];
        }

        while (v14);
      }

      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v18 = self->_unknownDevices;
      v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v28 objects:v36 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v29;
        do
        {
          for (j = 0; j != v20; ++j)
          {
            if (*v29 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = [(TUIDevicesWithIssuesSpecifierProvider *)self _specifierForUnknownDevice:*(*(&v28 + 1) + 8 * j), v28];
            [v6 addObject:v23];

            ++self->_devicesWithIssuesCount;
          }

          v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v28 objects:v36 count:16];
        }

        while (v20);
      }

      v9 = [v6 copy];
      goto LABEL_22;
    }

    v6 = [(TUIDevicesWithIssuesSpecifierProvider *)self _spinnerSpecifierGroup];
    v38 = v6;
    v7 = MEMORY[0x277CBEA60];
    v8 = &v38;
LABEL_3:
    v9 = [v7 arrayWithObjects:v8 count:1];
LABEL_22:
    v24 = v9;
    goto LABEL_23;
  }

  v6 = [(TUIDevicesWithIssuesSpecifierProvider *)self _spinnerSpecifierGroup];
  v39[0] = v6;
  v27 = [(TUIDevicesWithIssuesSpecifierProvider *)self _specifierForSpinner];
  v39[1] = v27;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:2];

LABEL_23:
  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

- (id)_specifierForError
{
  v2 = MEMORY[0x277D3FAD8];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"TRANSPARENCY_PANE_DEVICE_LOADING_ERROR" value:&stru_287F92480 table:@"Localizable"];
  v5 = [v2 preferenceSpecifierNamed:v4 target:0 set:0 get:0 detail:0 cell:-1 edit:0];

  [v5 setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FF38]];
  [v5 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FD80]];

  return v5;
}

- (id)_specifierForDevice:(id)a3
{
  v4 = MEMORY[0x277D3FAD8];
  v5 = a3;
  v6 = [v5 name];
  v7 = [v4 preferenceSpecifierNamed:v6 target:self set:0 get:0 detail:0 cell:-1 edit:0];

  [v7 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
  v8 = [v5 name];
  [v7 setProperty:v8 forKey:*MEMORY[0x277D40170]];

  v9 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D76F30]];
  [v7 setProperty:v9 forKey:*MEMORY[0x277D40140]];

  v10 = [v5 osVersion];
  [v7 setProperty:v10 forKey:*MEMORY[0x277D40160]];

  v11 = MEMORY[0x277CBEC38];
  [v7 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D40020]];
  v12 = [(TUIDevicesWithIssuesSpecifierProvider *)self _iconURLForDevice:v5];

  [v7 setProperty:v12 forKey:*MEMORY[0x277D40030]];
  [v7 setProperty:v11 forKey:*MEMORY[0x277D3FF38]];

  return v7;
}

- (id)_specifierForUnknownDevice:(id)a3
{
  v4 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:a3 target:self set:0 get:0 detail:0 cell:-1 edit:0];
  [v4 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"UNKNOWN_DEVICE" value:&stru_287F92480 table:@"Localizable"];
  [v4 setProperty:v6 forKey:*MEMORY[0x277D40170]];

  v7 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D76F30]];
  [v4 setProperty:v7 forKey:*MEMORY[0x277D40140]];

  [v4 setProperty:&stru_287F92480 forKey:*MEMORY[0x277D40160]];
  v8 = MEMORY[0x277CBEC38];
  [v4 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D40020]];
  v9 = [(TUIDevicesWithIssuesSpecifierProvider *)self _iconURLForDevice:0];
  [v4 setProperty:v9 forKey:*MEMORY[0x277D40030]];

  [v4 setProperty:v8 forKey:*MEMORY[0x277D3FF38]];

  return v4;
}

- (id)_iconURLForDevice:(id)a3
{
  if (a3)
  {
    v3 = [a3 modelSmallPhotoURL3x];
  }

  else
  {
    v3 = @"https://appleid.cdn-apple.com/static/bin/cb2625518626/images/deviceLoading@3x.png";
  }

  v4 = v3;
  v5 = [MEMORY[0x277CBEBC0] URLWithString:v3];

  return v5;
}

- (void)_updateDevicesWithIssuesList:(id)a3
{
  v64 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(NSMutableArray *)self->_devicesWithIssues removeAllObjects];
  [(NSMutableArray *)self->_unknownDevices removeAllObjects];
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = self->_devicesWithIssuesIdentifiers;
  v44 = [(NSMutableArray *)obj countByEnumeratingWithState:&v52 objects:v63 count:16];
  if (v44)
  {
    v42 = *v53;
    *&v5 = 138543874;
    v40 = v5;
    v43 = v4;
    v46 = self;
    do
    {
      v6 = 0;
      do
      {
        if (*v53 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v45 = v6;
        v7 = [*(*(&v52 + 1) + 8 * v6) kt_hexString];
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        v8 = v4;
        v9 = [v8 countByEnumeratingWithState:&v48 objects:v62 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v49;
          while (2)
          {
            v12 = 0;
            do
            {
              if (*v49 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v48 + 1) + 8 * v12);
              v14 = [v13 pushToken];
              if (v14 && (v15 = v14, [v13 pushToken], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "isEqualToString:", &stru_287F92480), v16, v15, !v17))
              {
                v21 = [v13 pushToken];
                v22 = [v21 isEqualToString:v7];

                if (v22)
                {
                  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_0 != -1)
                  {
                    [TUIDevicesWithIssuesSpecifierProvider _updateDevicesWithIssuesList:];
                  }

                  v4 = v43;
                  self = v46;
                  v26 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_0;
                  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
                  {
                    v29 = v26;
                    v30 = [v13 pushToken];
                    v31 = [v13 name];
                    *buf = v40;
                    v57 = v46;
                    v58 = 2114;
                    v59 = v30;
                    v60 = 2114;
                    v61 = v31;
                    _os_log_debug_impl(&dword_26F50B000, v29, OS_LOG_TYPE_DEBUG, "%{public}@ device with issue found (%{public}@, %{public}@)", buf, 0x20u);
                  }

                  [(NSMutableArray *)v46->_devicesWithIssues addObject:v13];

                  goto LABEL_31;
                }
              }

              else
              {
                if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_0 != -1)
                {
                  [TUIDevicesWithIssuesSpecifierProvider _updateDevicesWithIssuesList:];
                }

                v18 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_0;
                if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
                {
                  v19 = v18;
                  v20 = [v13 name];
                  *buf = 138543618;
                  v57 = v46;
                  v58 = 2114;
                  v59 = v20;
                  _os_log_debug_impl(&dword_26F50B000, v19, OS_LOG_TYPE_DEBUG, "%{public}@ device %{public}@ ignored", buf, 0x16u);
                }
              }

              ++v12;
            }

            while (v10 != v12);
            v10 = [v8 countByEnumeratingWithState:&v48 objects:v62 count:16];
            if (v10)
            {
              continue;
            }

            break;
          }
        }

        self = v46;
        v23 = [(TUIDevicesWithIssuesSpecifierProvider *)v46 idms];
        v24 = [v23 mapDeviceWithMissing:v7 aaDevices:v8];

        if (v24)
        {
          if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_0 != -1)
          {
            [TUIDevicesWithIssuesSpecifierProvider _updateDevicesWithIssuesList:];
          }

          v25 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_0;
          v4 = v43;
          if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
          {
            v32 = v25;
            v33 = [v24 pushToken];
            v34 = [v24 name];
            *buf = v40;
            v57 = v46;
            v58 = 2114;
            v59 = v33;
            v60 = 2114;
            v61 = v34;
            _os_log_debug_impl(&dword_26F50B000, v32, OS_LOG_TYPE_DEBUG, "%{public}@ device with issues found via fallback (%{public}@, %{public}@)", buf, 0x20u);
          }

          [(NSMutableArray *)v46->_devicesWithIssues addObject:v24];

LABEL_31:
          v27 = v45;
        }

        else
        {
          if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_0 != -1)
          {
            [TUIDevicesWithIssuesSpecifierProvider _updateDevicesWithIssuesList:];
          }

          v27 = v45;
          v28 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_0;
          v4 = v43;
          if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v57 = v46;
            v58 = 2114;
            v59 = v7;
            _os_log_error_impl(&dword_26F50B000, v28, OS_LOG_TYPE_ERROR, "%{public}@ device with issue not found => adding unknown device (%{public}@)", buf, 0x16u);
          }

          [(NSMutableArray *)v46->_unknownDevices addObject:v7];
        }

        v6 = v27 + 1;
      }

      while (v6 != v44);
      v35 = [(NSMutableArray *)obj countByEnumeratingWithState:&v52 objects:v63 count:16];
      v44 = v35;
    }

    while (v35);
  }

  if ([(NSMutableArray *)self->_unknownDevices count])
  {
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __70__TUIDevicesWithIssuesSpecifierProvider__updateDevicesWithIssuesList___block_invoke_61;
    v47[3] = &unk_279DDA9C0;
    v47[4] = self;
    [v4 enumerateObjectsUsingBlock:v47];
  }

  specifiers = self->_specifiers;
  self->_specifiers = 0;
  v37 = specifiers;

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained reloadSpecifiersForProvider:self oldSpecifiers:v37 animated:1];

  v39 = *MEMORY[0x277D85DE8];
}

uint64_t __70__TUIDevicesWithIssuesSpecifierProvider__updateDevicesWithIssuesList___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_0 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

uint64_t __70__TUIDevicesWithIssuesSpecifierProvider__updateDevicesWithIssuesList___block_invoke_52()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_0 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

uint64_t __70__TUIDevicesWithIssuesSpecifierProvider__updateDevicesWithIssuesList___block_invoke_55()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_0 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

uint64_t __70__TUIDevicesWithIssuesSpecifierProvider__updateDevicesWithIssuesList___block_invoke_58()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_0 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

void __70__TUIDevicesWithIssuesSpecifierProvider__updateDevicesWithIssuesList___block_invoke_61(uint64_t a1, void *a2, uint64_t a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_0 != -1)
  {
    __70__TUIDevicesWithIssuesSpecifierProvider__updateDevicesWithIssuesList___block_invoke_61_cold_1();
  }

  v6 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_0;
  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
  {
    v8 = *(a1 + 32);
    v9 = v6;
    v10 = [v5 pushToken];
    v11 = [v5 name];
    v12 = [v5 deviceID];
    v13 = 138544642;
    v14 = v8;
    v15 = 2048;
    v16 = a3;
    v17 = 2114;
    v18 = v10;
    v19 = 2160;
    v20 = 1752392040;
    v21 = 2112;
    v22 = v11;
    v23 = 2114;
    v24 = v12;
    _os_log_error_impl(&dword_26F50B000, v9, OS_LOG_TYPE_ERROR, "%{public}@ IdMS device %ld: %{public}@ %{mask.hash}@ %{public}@", &v13, 0x3Eu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t __70__TUIDevicesWithIssuesSpecifierProvider__updateDevicesWithIssuesList___block_invoke_2()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_0 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (id)_deviceList
{
  deviceList = self->_deviceList;
  if (!deviceList)
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_0 != -1)
    {
      [TUIDevicesWithIssuesSpecifierProvider _deviceList];
    }

    v4 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_0;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
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

uint64_t __52__TUIDevicesWithIssuesSpecifierProvider__deviceList__block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_0 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)deviceListModified:(id)a3
{
  v4 = a3;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_0 != -1)
  {
    [TUIDevicesWithIssuesSpecifierProvider deviceListModified:];
  }

  v5 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_0;
  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
  {
    [(TUIDevicesWithIssuesSpecifierProvider *)v5 deviceListModified:v4, self];
  }

  objc_initWeak(&location, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__TUIDevicesWithIssuesSpecifierProvider_deviceListModified___block_invoke_70;
  block[3] = &unk_279DDA9E8;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

uint64_t __60__TUIDevicesWithIssuesSpecifierProvider_deviceListModified___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_0 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

void __60__TUIDevicesWithIssuesSpecifierProvider_deviceListModified___block_invoke_70(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _updateDevicesWithIssuesList:*(a1 + 32)];
  }

  else
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_0 != -1)
    {
      __60__TUIDevicesWithIssuesSpecifierProvider_deviceListModified___block_invoke_70_cold_1();
    }

    v4 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_0;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315138;
      v7 = "[TUIDevicesWithIssuesSpecifierProvider deviceListModified:]_block_invoke";
      _os_log_impl(&dword_26F50B000, v4, OS_LOG_TYPE_ERROR, "%s, block required strong self is nil", &v6, 0xCu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

uint64_t __60__TUIDevicesWithIssuesSpecifierProvider_deviceListModified___block_invoke_2()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_0 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (AAUISpecifierProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithAccountManager:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136315394;
  v4 = "[TUIDevicesWithIssuesSpecifierProvider initWithAccountManager:]";
  v5 = 2114;
  v6 = a1;
  _os_log_error_impl(&dword_26F50B000, a2, OS_LOG_TYPE_ERROR, "%s not supported on %{public}@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_deviceList
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_debug_impl(&dword_26F50B000, a2, OS_LOG_TYPE_DEBUG, "%{public}@ getting device list...", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)deviceListModified:(uint64_t)a3 .cold.2(void *a1, void *a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v7 = 136315650;
  v8 = "[TUIDevicesWithIssuesSpecifierProvider deviceListModified:]";
  v9 = 1024;
  v10 = [a2 count];
  v11 = 2114;
  v12 = a3;
  _os_log_debug_impl(&dword_26F50B000, v5, OS_LOG_TYPE_DEBUG, "%s devices count = %d on %{public}@", &v7, 0x1Cu);

  v6 = *MEMORY[0x277D85DE8];
}

@end