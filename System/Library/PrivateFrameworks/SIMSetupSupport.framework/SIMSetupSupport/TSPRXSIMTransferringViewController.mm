@interface TSPRXSIMTransferringViewController
- (TSPRXSIMTransferringViewController)initWithTitle:(id)title subtitle:(id)subtitle otpDetectorNeeded:(BOOL)needed;
- (void)_maybeEnableOneTimeCodeCheck;
- (void)_setupOneTimeCodeDetection;
@end

@implementation TSPRXSIMTransferringViewController

- (TSPRXSIMTransferringViewController)initWithTitle:(id)title subtitle:(id)subtitle otpDetectorNeeded:(BOOL)needed
{
  neededCopy = needed;
  v10.receiver = self;
  v10.super_class = TSPRXSIMTransferringViewController;
  v6 = [(TSIDSSimTransferringViewController *)&v10 initWithTitle:title subtitle:subtitle];
  v7 = v6;
  if (v6)
  {
    if (neededCopy)
    {
      [(TSPRXSIMTransferringViewController *)v6 _maybeEnableOneTimeCodeCheck];
    }

    v8 = v7;
  }

  return v7;
}

- (void)_maybeEnableOneTimeCodeCheck
{
  v3 = objc_alloc(MEMORY[0x277CC37B0]);
  v4 = [v3 initWithQueue:MEMORY[0x277D85CD0]];
  client = self->_client;
  self->_client = v4;

  objc_initWeak(&location, self);
  v6 = self->_client;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__TSPRXSIMTransferringViewController__maybeEnableOneTimeCodeCheck__block_invoke;
  v7[3] = &unk_279B453B0;
  objc_copyWeak(&v8, &location);
  [(CoreTelephonyClient *)v6 getSubscriptionInfo:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __66__TSPRXSIMTransferringViewController__maybeEnableOneTimeCodeCheck__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (v6)
    {
      obj = _TSLogDomain();
      if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
      {
        __66__TSPRXSIMTransferringViewController__maybeEnableOneTimeCodeCheck__block_invoke_cold_1(v6, obj);
      }
    }

    else
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      obj = [v5 subscriptions];
      v8 = [obj countByEnumeratingWithState:&v20 objects:v27 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v21;
        while (2)
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v21 != v10)
            {
              objc_enumerationMutation(obj);
            }

            v12 = *(*(&v20 + 1) + 8 * i);
            v13 = [objc_alloc(MEMORY[0x277CC3620]) initWithBundleType:1];
            v26[0] = @"PhoneAccountTransfer";
            v26[1] = @"OneTimeCodeForTransfer";
            v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
            v15 = [WeakRetained client];
            v16 = [v15 copyCarrierBundleValue:v12 keyHierarchy:v14 bundleType:v13 error:0];

            if (v16)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                if ([v16 BOOLValue])
                {
                  v17 = _TSLogDomain();
                  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315138;
                    v25 = "[TSPRXSIMTransferringViewController _maybeEnableOneTimeCodeCheck]_block_invoke";
                    _os_log_impl(&dword_262AA8000, v17, OS_LOG_TYPE_DEFAULT, "start monitor OTP @%s", buf, 0xCu);
                  }

                  [WeakRetained _setupOneTimeCodeDetection];
                  goto LABEL_21;
                }
              }
            }
          }

          v9 = [obj countByEnumeratingWithState:&v20 objects:v27 count:16];
          if (v9)
          {
            continue;
          }

          break;
        }

LABEL_21:
        v6 = 0;
      }
    }
  }

  else
  {
    obj = _TSLogDomain();
    if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
    {
      __66__TSPRXSIMTransferringViewController__maybeEnableOneTimeCodeCheck__block_invoke_cold_2(obj);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_setupOneTimeCodeDetection
{
  objc_initWeak(&location, self);
  v12 = 0;
  v13 = &v12;
  v14 = 0x2050000000;
  v3 = getIMOneTimeCodeAcceleratorClass_softClass;
  v15 = getIMOneTimeCodeAcceleratorClass_softClass;
  if (!getIMOneTimeCodeAcceleratorClass_softClass)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __getIMOneTimeCodeAcceleratorClass_block_invoke;
    v11[3] = &unk_279B44778;
    v11[4] = &v12;
    __getIMOneTimeCodeAcceleratorClass_block_invoke(v11);
    v3 = v13[3];
  }

  v4 = v3;
  _Block_object_dispose(&v12, 8);
  v5 = [v3 alloc];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __64__TSPRXSIMTransferringViewController__setupOneTimeCodeDetection__block_invoke;
  v8[3] = &unk_279B44388;
  objc_copyWeak(&v9, &location);
  v8[4] = self;
  v6 = [v5 initWithBlockForUpdates:v8];
  oneTimeCodeAccelerator = self->_oneTimeCodeAccelerator;
  self->_oneTimeCodeAccelerator = v6;

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __64__TSPRXSIMTransferringViewController__setupOneTimeCodeDetection__block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _TSLogDomain();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = v3;
    *&buf[12] = 2080;
    *&buf[14] = "[TSPRXSIMTransferringViewController _setupOneTimeCodeDetection]_block_invoke";
    _os_log_impl(&dword_262AA8000, v4, OS_LOG_TYPE_DEFAULT, "detect codes: %@ @%s", buf, 0x16u);
  }

  v5 = [v3 firstObject];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v6 = getIMOneTimeCodeKeySymbolLoc_ptr;
  v19 = getIMOneTimeCodeKeySymbolLoc_ptr;
  if (!getIMOneTimeCodeKeySymbolLoc_ptr)
  {
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __getIMOneTimeCodeKeySymbolLoc_block_invoke;
    v21 = &unk_279B44778;
    v22 = &v16;
    v7 = IMCoreLibrary();
    v8 = dlsym(v7, "IMOneTimeCodeKey");
    *(v22[1] + 24) = v8;
    getIMOneTimeCodeKeySymbolLoc_ptr = *(v22[1] + 24);
    v6 = v17[3];
  }

  _Block_object_dispose(&v16, 8);
  if (!v6)
  {
    __64__TSPRXSIMTransferringViewController__setupOneTimeCodeDetection__block_invoke_cold_1();
    __break(1u);
  }

  v9 = *v6;
  v10 = [v5 objectForKeyedSubscript:v9];

  v11 = _TSLogDomain();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = v10;
    *&buf[12] = 2080;
    *&buf[14] = "[TSPRXSIMTransferringViewController _setupOneTimeCodeDetection]_block_invoke";
    _os_log_impl(&dword_262AA8000, v11, OS_LOG_TYPE_DEFAULT, "OTP : %@ @%s", buf, 0x16u);
  }

  if (v10 && [v10 length])
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__TSPRXSIMTransferringViewController__setupOneTimeCodeDetection__block_invoke_65;
    block[3] = &unk_279B446B0;
    objc_copyWeak(&v15, (a1 + 40));
    block[4] = *(a1 + 32);
    v14 = v10;
    dispatch_async(MEMORY[0x277D85CD0], block);

    objc_destroyWeak(&v15);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __64__TSPRXSIMTransferringViewController__setupOneTimeCodeDetection__block_invoke_65(uint64_t a1)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"PRXCARD_ONE_TIME_CODE_%@" value:&stru_28753DF48 table:@"Localizable"];
  v6 = [v2 stringWithFormat:v5, *(a1 + 40)];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = [WeakRetained placeHolderLabel];
  [v8 setText:v6];

  v9 = objc_loadWeakRetained((a1 + 48));
  v10 = [v9 placeHolderLabel];
  [v10 setBoldSubString:*(a1 + 40)];

  v12 = objc_loadWeakRetained((a1 + 48));
  v11 = [v12 placeHolderLabel];
  [v11 setHidden:0];
}

void __66__TSPRXSIMTransferringViewController__maybeEnableOneTimeCodeCheck__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2080;
  v6 = "[TSPRXSIMTransferringViewController _maybeEnableOneTimeCodeCheck]_block_invoke";
  _os_log_error_impl(&dword_262AA8000, a2, OS_LOG_TYPE_ERROR, "[E]get subscription failed : %@ @%s", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

void __66__TSPRXSIMTransferringViewController__maybeEnableOneTimeCodeCheck__block_invoke_cold_2(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[TSPRXSIMTransferringViewController _maybeEnableOneTimeCodeCheck]_block_invoke";
  _os_log_error_impl(&dword_262AA8000, log, OS_LOG_TYPE_ERROR, "[E]Self doesnt exist @%s", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

uint64_t __64__TSPRXSIMTransferringViewController__setupOneTimeCodeDetection__block_invoke_cold_1()
{
  dlerror();
  v0 = abort_report_np();
  return __getIMOneTimeCodeAcceleratorClass_block_invoke_cold_1(v0);
}

@end