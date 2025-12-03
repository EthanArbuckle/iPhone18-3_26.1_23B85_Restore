@interface TSTransferQRCodeFlow
- (TSTransferQRCodeFlow)initWithIccid:(id)iccid;
- (void)firstViewController:(id)controller;
@end

@implementation TSTransferQRCodeFlow

- (TSTransferQRCodeFlow)initWithIccid:(id)iccid
{
  iccidCopy = iccid;
  v9.receiver = self;
  v9.super_class = TSTransferQRCodeFlow;
  v6 = [(TSSIMSetupFlow *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_iccid, iccid);
  }

  return v7;
}

- (void)firstViewController:(id)controller
{
  v32 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  if (controllerCopy)
  {
    if (_os_feature_enabled_impl())
    {
      v5 = +[TSCellularPlanManagerCache sharedInstance];
      planItems = [v5 planItems];

      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v7 = planItems;
      v8 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v8)
      {
        v9 = *v26;
        while (2)
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v26 != v9)
            {
              objc_enumerationMutation(v7);
            }

            v11 = *(*(&v25 + 1) + 8 * i);
            iccid = [v11 iccid];
            v13 = [iccid isEqualToString:self->_iccid];

            if (v13)
            {
              carrierName = [v11 carrierName];
              carrierName = self->_carrierName;
              self->_carrierName = carrierName;

              goto LABEL_16;
            }
          }

          v8 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
          if (v8)
          {
            continue;
          }

          break;
        }
      }

LABEL_16:

      v17 = MEMORY[0x2667315D0](controllerCopy);
      objc_initWeak(buf, self);
      v18 = +[TSCoreTelephonyClientCache sharedInstance];
      iccid = self->_iccid;
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __44__TSTransferQRCodeFlow_firstViewController___block_invoke;
      v22[3] = &unk_279B45468;
      objc_copyWeak(&v24, buf);
      v20 = v17;
      v22[4] = self;
      v23 = v20;
      [v18 getPlanTransferCredentials:iccid completion:v22];

      objc_destroyWeak(&v24);
      objc_destroyWeak(buf);
    }

    else
    {
      v14 = _TSLogDomain();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v31 = "[TSTransferQRCodeFlow firstViewController:]";
        _os_log_impl(&dword_262AA8000, v14, OS_LOG_TYPE_DEFAULT, "SIMSetupSupport/MagnoliaOverQRCode is disabled @%s", buf, 0xCu);
      }

      controllerCopy[2](controllerCopy, 0);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __44__TSTransferQRCodeFlow_firstViewController___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (!WeakRetained)
  {
    v7 = _TSLogDomain();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __44__TSTransferQRCodeFlow_firstViewController___block_invoke_cold_2(v7);
    }

    goto LABEL_10;
  }

  if (![v3 length])
  {
    v7 = _TSLogDomain();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __44__TSTransferQRCodeFlow_firstViewController___block_invoke_cold_1(v7);
    }

LABEL_10:

    (*(*(a1 + 40) + 16))();
    goto LABEL_11;
  }

  v5 = [[TSTransferQRCodeViewController alloc] initWithTransferCredentials:v3 carrierName:WeakRetained[13]];
  [*(a1 + 32) setTopViewController:v5];
  v6 = _TSLogDomain();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = objc_opt_class();
    v11 = 2080;
    v12 = "[TSTransferQRCodeFlow firstViewController:]_block_invoke";
    _os_log_impl(&dword_262AA8000, v6, OS_LOG_TYPE_DEFAULT, "first view: %@ @%s", &v9, 0x16u);
  }

  [(TSTransferQRCodeViewController *)v5 setDelegate:WeakRetained];
  (*(*(a1 + 40) + 16))();

LABEL_11:
  v8 = *MEMORY[0x277D85DE8];
}

void __44__TSTransferQRCodeFlow_firstViewController___block_invoke_cold_1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[TSTransferQRCodeFlow firstViewController:]_block_invoke";
  _os_log_error_impl(&dword_262AA8000, log, OS_LOG_TYPE_ERROR, "[E]no credentials @%s", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __44__TSTransferQRCodeFlow_firstViewController___block_invoke_cold_2(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[TSTransferQRCodeFlow firstViewController:]_block_invoke";
  _os_log_error_impl(&dword_262AA8000, log, OS_LOG_TYPE_ERROR, "[E]invalid self @%s", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end