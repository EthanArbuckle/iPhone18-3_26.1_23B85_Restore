@interface TVRUICoreDeviceQuery
- (BOOL)hasStarted;
- (TVRUIDeviceSearchDelegate)delegate;
- (void)deviceQueryDidUpdateDevices:(id)a3;
- (void)didUpdateSuggestedDevices:(id)a3;
- (void)startQuery:(id)a3 completionHandler:(id)a4;
- (void)stop;
@end

@implementation TVRUICoreDeviceQuery

- (void)startQuery:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(TVRUICoreDeviceQuery *)self setDelegate:v6];
  v8 = objc_alloc_init(MEMORY[0x277D6C4E0]);
  [(TVRUICoreDeviceQuery *)self setQuery:v8];

  v9 = [(TVRUICoreDeviceQuery *)self query];
  [v9 setDelegate:self];

  v10 = [MEMORY[0x277CBEB38] dictionary];
  [(TVRUICoreDeviceQuery *)self setDeviceList:v10];

  v11 = _TVRUIDeviceQueryLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_26CFEB000, v11, OS_LOG_TYPE_DEFAULT, "UI requesting device query to start", buf, 2u);
  }

  objc_initWeak(buf, self);
  v12 = [(TVRUICoreDeviceQuery *)self query];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __53__TVRUICoreDeviceQuery_startQuery_completionHandler___block_invoke;
  v14[3] = &unk_279D88678;
  objc_copyWeak(&v16, buf);
  v13 = v7;
  v15 = v13;
  [v12 startWithCompletionHandler:v14];

  objc_destroyWeak(&v16);
  objc_destroyWeak(buf);
}

void __53__TVRUICoreDeviceQuery_startQuery_completionHandler___block_invoke(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __53__TVRUICoreDeviceQuery_startQuery_completionHandler___block_invoke_2;
    v5[3] = &unk_279D88650;
    v6 = *(a1 + 32);
    v7 = a2;
    dispatch_async(MEMORY[0x277D85CD0], v5);
  }
}

- (BOOL)hasStarted
{
  v2 = [(TVRUICoreDeviceQuery *)self query];

  return v2 != 0;
}

- (void)stop
{
  v3 = [(TVRUICoreDeviceQuery *)self query];

  if (v3)
  {
    v4 = _TVRUIDeviceQueryLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_26CFEB000, v4, OS_LOG_TYPE_DEFAULT, "UI requesting device query to stop", v6, 2u);
    }

    v5 = [(TVRUICoreDeviceQuery *)self query];
    [v5 stop];

    [(TVRUICoreDeviceQuery *)self setQuery:0];
  }
}

- (void)deviceQueryDidUpdateDevices:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _TVRUIDeviceQueryLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 devices];
    *buf = 134217984;
    v34 = [v6 count];
    _os_log_impl(&dword_26CFEB000, v5, OS_LOG_TYPE_DEFAULT, "Device query did update. Num devices %ld ", buf, 0xCu);
  }

  v7 = [MEMORY[0x277CBEB38] dictionary];
  v8 = _TVRUIDeviceQueryLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(TVRUICoreDeviceQuery *)self deviceList];
    *buf = 138543362;
    v34 = v9;
    _os_log_impl(&dword_26CFEB000, v8, OS_LOG_TYPE_DEFAULT, "Old device list: %{public}@", buf, 0xCu);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v28 = v4;
  v10 = [v4 devices];
  v11 = [v10 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v30;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v30 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v29 + 1) + 8 * i);
        v16 = [(TVRUICoreDeviceQuery *)self deviceList];
        v17 = [v15 identifier];
        v18 = [v16 objectForKeyedSubscript:v17];

        if (!v18)
        {
          v18 = [[TVRUICoreDevice alloc] _initWithCoreDevice:v15];
          v19 = _TVRUIDeviceQueryLog();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v34 = v18;
            v35 = 2114;
            v36 = v15;
            _os_log_impl(&dword_26CFEB000, v19, OS_LOG_TYPE_DEFAULT, "Adding new uidevice: %{public}@ for core device: %{public}@", buf, 0x16u);
          }
        }

        v20 = [v15 identifier];
        [v7 setObject:v18 forKeyedSubscript:v20];
      }

      v12 = [v10 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v12);
  }

  v21 = [(TVRUICoreDeviceQuery *)self deviceList];
  [v21 removeAllObjects];

  [(TVRUICoreDeviceQuery *)self setDeviceList:v7];
  v22 = _TVRUIDeviceQueryLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [(TVRUICoreDeviceQuery *)self deviceList];
    *buf = 138543362;
    v34 = v23;
    _os_log_impl(&dword_26CFEB000, v22, OS_LOG_TYPE_DEFAULT, "New device list: %{public}@", buf, 0xCu);
  }

  v24 = [(TVRUICoreDeviceQuery *)self delegate];

  if (v24)
  {
    v25 = [(TVRUICoreDeviceQuery *)self delegate];
    v26 = [(TVRUICoreDeviceQuery *)self deviceList];
    v27 = [v26 allValues];
    [v25 deviceListUpdated:v27];
  }
}

- (void)didUpdateSuggestedDevices:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (+[TVRUIFeatures corianderEnabled])
  {
    v5 = [MEMORY[0x277CBEB18] array];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v20 = v4;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v22;
      do
      {
        v10 = 0;
        do
        {
          if (*v22 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v21 + 1) + 8 * v10);
          v12 = [(TVRUICoreDeviceQuery *)self deviceList];
          v13 = [v11 identifier];
          v14 = [v12 objectForKeyedSubscript:v13];

          v15 = _TVRUIDeviceQueryLog();
          v16 = v15;
          if (v14)
          {
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              v26 = v14;
              v27 = 2114;
              v28 = v11;
              _os_log_impl(&dword_26CFEB000, v16, OS_LOG_TYPE_DEFAULT, "Found coreUIDevice:%{public}@ for device:%{public}@", buf, 0x16u);
            }

            [v5 addObject:v14];
          }

          else
          {
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v26 = v11;
              _os_log_error_impl(&dword_26CFEB000, v16, OS_LOG_TYPE_ERROR, "Cannot find coredevice for device:%{public}@", buf, 0xCu);
            }
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v8);
    }

    v17 = [(TVRUICoreDeviceQuery *)self delegate];
    v18 = objc_opt_respondsToSelector();

    if (v18)
    {
      v19 = [(TVRUICoreDeviceQuery *)self delegate];
      [v19 suggestedDevices:v5];
    }

    v4 = v20;
  }
}

- (TVRUIDeviceSearchDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end