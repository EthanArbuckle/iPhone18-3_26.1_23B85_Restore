void sendAppsInfoWithData(void *a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (runningInSpotlight == 1)
  {
    v8 = prepareApps(v6, v7);
    if (v8)
    {
      v9 = [objc_alloc(MEMORY[0x277D4BEE0]) initWithName:@"Apps"];
      [v9 setRootObject:v8];
      [v9 setInfo:MEMORY[0x277CBEC10]];
      [v5 sendMessage:v9];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v11 = 134218240;
        v12 = [v6 count];
        v13 = 2048;
        v14 = [v7 count];
        _os_log_impl(&dword_26B824000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Send apps:%ld hidden:%ld", &v11, 0x16u);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_26B824000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "No app data to send", &v11, 2u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

id prepareApps(void *a1, void *a2)
{
  v57 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v36 = a2;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v41 objects:v56 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v42;
    v8 = MEMORY[0x277D86220];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v42 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v41 + 1) + 8 * i);
        v11 = [v3 objectForKeyedSubscript:v10];
        if (([v11 displayNameLoaded] & 1) == 0)
        {
          v12 = [v11 displayName];
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            v53 = v10;
            v54 = 2112;
            v55 = v12;
            _os_log_debug_impl(&dword_26B824000, v8, OS_LOG_TYPE_DEBUG, "app %@ display name %@", buf, 0x16u);
          }

          if ([v12 length])
          {
            [v11 setDisplayName:v12];
          }

          else
          {
            if (!v6)
            {
              v6 = objc_opt_new();
            }

            [v6 addObject:v10];
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v41 objects:v56 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v13 = [v3 count];
  if (v13)
  {
    v14 = v36;
    if ([v36 count])
    {
      v50[0] = @"apps";
      v50[1] = @"hiddenApps";
      v51[0] = v3;
      v51[1] = v36;
      v15 = MEMORY[0x277CBEAC0];
      v16 = v51;
      v17 = v50;
      v18 = 2;
    }

    else
    {
      v48 = @"apps";
      v49 = v3;
      v15 = MEMORY[0x277CBEAC0];
      v16 = &v49;
      v17 = &v48;
      v18 = 1;
    }

    v13 = [v15 dictionaryWithObjects:v16 forKeys:v17 count:v18];
  }

  else
  {
    v14 = v36;
  }

  v19 = v13;
  v20 = v19;
  if ([v6 count])
  {
    v21 = [v19 objectForKeyedSubscript:@"apps"];
    v22 = [v21 mutableCopy];

    v23 = [v19 objectForKeyedSubscript:@"hiddenApps"];
    v24 = [v23 mutableCopy];
    v25 = v24;
    if (v24)
    {
      v26 = v24;
    }

    else
    {
      v26 = objc_opt_new();
    }

    v27 = v26;

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v28 = v6;
    v29 = [v28 countByEnumeratingWithState:&v37 objects:v47 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v38;
      do
      {
        for (j = 0; j != v30; ++j)
        {
          if (*v38 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v33 = *(*(&v37 + 1) + 8 * j);
          [v22 removeObjectForKey:v33];
          [v27 addObject:v33];
        }

        v30 = [v28 countByEnumeratingWithState:&v37 objects:v47 count:16];
      }

      while (v30);
    }

    v20 = v19;
    if (v22)
    {
      v20 = v19;
      if (v27)
      {
        v45[0] = @"apps";
        v45[1] = @"hiddenApps";
        v46[0] = v22;
        v46[1] = v27;
        v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:2];
      }
    }

    v14 = v36;
  }

  v34 = *MEMORY[0x277D85DE8];

  return v20;
}

void sub_26B825FD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void SPUIInitLogging()
{
  if (SPUIInitLogging_once != -1)
  {
    SPUIInitLogging_cold_1();
  }
}

void __SPUIInitLogging_block_invoke()
{
  for (i = 0; i != 7; ++i)
  {
    v1 = os_log_create("com.apple.spotlight.ui", SPUILogSubsystem_block_invoke_categories[i]);
    v2 = spuiLogHandles[i];
    spuiLogHandles[i] = v1;
  }
}

id SPTransactionCreate(void *a1)
{
  v1 = a1;
  if ([v1 count] && (objc_msgSend(v1, "componentsJoinedByString:", @"."), (v2 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v3 = v2;
    v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"com.apple.spotlight.%@", v2];
  }

  else
  {
    v4 = @"com.apple.spotlight";
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    SPTransactionCreate_cold_1();
  }

  [(__CFString *)v4 UTF8String];
  v5 = os_transaction_create();

  return v5;
}

void SPTransactionDone(void *a1)
{
  v1 = a1;
  if (v1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v2 = os_transaction_copy_description();
    if (v2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      SPTransactionDone_cold_1();
    }

    free(v2);
  }
}

void lockStateChanged(uint64_t a1, const void *a2)
{
  v3 = MKBGetDeviceLockState();
  if (!v3 || v3 == 3 || unlocked == 1)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, a2, @"com.apple.mobile.keybagd.lock_status", 0);
    unlocked = 1;
  }
}

__CFString *SPUIRemoteViewPresentationSourceDescription(uint64_t a1)
{
  if ((a1 - 1) > 7)
  {
    return @"Unknown";
  }

  else
  {
    return off_279D053C0[a1 - 1];
  }
}

void sub_26B82820C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_26B828ACC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

__CFString *SPUIRemoteViewPresentationIntentDescription(unint64_t a1)
{
  if (a1 > 4)
  {
    return 0;
  }

  else
  {
    return off_279D05428[a1];
  }
}

__CFString *SPUISearchViewSceneSettingValueDescription(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1 == 1000)
  {
    v5 = [v3 description];
    goto LABEL_9;
  }

  if (a1 == 1003)
  {
    v6 = [v3 integerValue];
    if (v6 < 5)
    {
      v7 = off_279D05428[v6];
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  if (a1 != 1002)
  {
LABEL_7:
    v7 = 0;
    goto LABEL_10;
  }

  v5 = SPUIRemoteViewPresentationSourceDescription([v3 integerValue]);
LABEL_9:
  v7 = v5;
LABEL_10:

  return v7;
}

__CFString *SPUISearchViewSceneClientSettingsKeyDescription(uint64_t a1)
{
  if ((a1 - 1000) > 0xC)
  {
    return 0;
  }

  else
  {
    return off_279D05450[a1 - 1000];
  }
}

id SPUISearchViewClientSceneSettingsValueDescription(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  v6 = a1 + 24;
  if ((a1 - 1000) > 0xA)
  {
    v8 = 0;
  }

  else
  {
    if (((1 << v6) & 0x47F) != 0)
    {
      v7 = [v4 description];
    }

    else
    {
      if (((1 << v6) & 0x300) != 0)
      {
        [v4 CGSizeValue];
        NSStringFromCGSize(v11);
      }

      else
      {
        BSSettingFlagDescription();
      }
      v7 = ;
    }

    v8 = v7;
  }

  return v8;
}

void sub_26B82B574(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak(&a18);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26B82BD5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void SPTransactionCreate_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void SPTransactionDone_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}