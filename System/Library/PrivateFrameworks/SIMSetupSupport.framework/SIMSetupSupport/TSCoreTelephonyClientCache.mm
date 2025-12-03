@interface TSCoreTelephonyClientCache
+ (id)sharedInstance;
- (BOOL)deviceSupportsHydra;
- (BOOL)getTransferCapability:(unint64_t)capability;
- (BOOL)isEmbeddedSIMOnlyConfig;
- (BOOL)usingBootstrapDataService;
- (TSCoreTelephonyClientCache)init;
- (id)getStoreVisitStatusForCarrier:(id)carrier;
- (id)loadSimSetupInfo:(id)info;
- (void)cancelTransferPlan:(id)plan fromDevice:(id)device completionHandler:(id)handler;
- (void)convertPhysicalSIMToeSIMWithCompletion:(id)completion;
- (void)deviceSupportsHydra;
- (void)getCarrierSetupWithCompletion:(id)completion;
- (void)getPlanTransferCredentials:(id)credentials completion:(id)completion;
- (void)pendingInstallItemsWithCompletion:(id)completion;
- (void)saveSimSetupInfo:(id)info info:(id)a4;
- (void)transferPlanListWithCompletion:(id)completion;
- (void)transferPlanWithIdentifier:(id)identifier fromDevice:(id)device completionHandler:(id)handler;
- (void)transferPlansWithIdentifier:(id)identifier fromDevice:(id)device completionHandler:(id)handler;
@end

@implementation TSCoreTelephonyClientCache

+ (id)sharedInstance
{
  if (sharedInstance_once_1 != -1)
  {
    +[TSCoreTelephonyClientCache sharedInstance];
  }

  v3 = sharedInstance_instance_1;

  return v3;
}

uint64_t __44__TSCoreTelephonyClientCache_sharedInstance__block_invoke()
{
  sharedInstance_instance_1 = objc_alloc_init(TSCoreTelephonyClientCache);

  return MEMORY[0x2821F96F8]();
}

- (TSCoreTelephonyClientCache)init
{
  v7.receiver = self;
  v7.super_class = TSCoreTelephonyClientCache;
  v2 = [(TSCoreTelephonyClientCache *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277CC37B0]);
    v4 = [v3 initWithQueue:MEMORY[0x277D85CD0]];
    client = v2->_client;
    v2->_client = v4;
  }

  return v2;
}

- (void)transferPlanListWithCompletion:(id)completion
{
  completionCopy = completion;
  client = self->_client;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__TSCoreTelephonyClientCache_transferPlanListWithCompletion___block_invoke;
  v7[3] = &unk_279B458F8;
  v8 = completionCopy;
  v6 = completionCopy;
  [(CoreTelephonyClient *)client getTransferPlansWithCompletion:v7];
}

void __61__TSCoreTelephonyClientCache_transferPlanListWithCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v54 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v30 = a4;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v32 = v5;
  obj = [v5 devices];
  v6 = [obj countByEnumeratingWithState:&v40 objects:v53 count:16];
  if (!v6)
  {
    v34 = 0;
    goto LABEL_26;
  }

  v7 = v6;
  v34 = 0;
  v35 = *v41;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v41 != v35)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(*(&v40 + 1) + 8 * i);
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v10 = [v9 remoteDisplayPlans];
      v11 = [v10 countByEnumeratingWithState:&v36 objects:v52 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v37;
        do
        {
          for (j = 0; j != v12; ++j)
          {
            if (*v37 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v36 + 1) + 8 * j);
            v16 = [v15 plan];

            if (!v16)
            {
              v22 = _TSLogDomain();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
              {
                __61__TSCoreTelephonyClientCache_transferPlanListWithCompletion___block_invoke_cold_1(v50, &v51, v22);
              }

              goto LABEL_19;
            }

            v17 = [v15 plan];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            if ((isKindOfClass & 1) == 0)
            {
              v22 = _TSLogDomain();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
              {
                v23 = [v15 plan];
                *buf = 138412546;
                v45 = v23;
                v46 = 2080;
                v47 = "[TSCoreTelephonyClientCache transferPlanListWithCompletion:]_block_invoke";
                _os_log_error_impl(&dword_262AA8000, v22, OS_LOG_TYPE_ERROR, "[E]%@ is not a CTRemotePlan @%s", buf, 0x16u);
              }

LABEL_19:

              continue;
            }

            v19 = [v15 plan];
            v20 = [v19 transferAttributes];
            v21 = [v20 transferCapability];

            if (v21 == 12)
            {
              v34 = 1;
              goto LABEL_22;
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v36 objects:v52 count:16];
        }

        while (v12);
      }

LABEL_22:
    }

    v7 = [obj countByEnumeratingWithState:&v40 objects:v53 count:16];
  }

  while (v7);
LABEL_26:

  v24 = _TSLogDomain();
  v25 = v24;
  if (v30)
  {
    v27 = a1;
    v26 = v32;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      __61__TSCoreTelephonyClientCache_transferPlanListWithCompletion___block_invoke_cold_2();
    }
  }

  else
  {
    v27 = a1;
    v26 = v32;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v28 = @"NO";
      if (v34)
      {
        v28 = @"YES";
      }

      *buf = 138412802;
      v45 = v32;
      v46 = 2112;
      v47 = v28;
      v48 = 2080;
      v49 = "[TSCoreTelephonyClientCache transferPlanListWithCompletion:]_block_invoke";
      _os_log_impl(&dword_262AA8000, v25, OS_LOG_TYPE_INFO, "[I] Tranfer plan list: %@ isActivationPolicyMismatch: %@ @%s", buf, 0x20u);
    }
  }

  (*(*(v27 + 32) + 16))();
  v29 = *MEMORY[0x277D85DE8];
}

- (void)transferPlanWithIdentifier:(id)identifier fromDevice:(id)device completionHandler:(id)handler
{
  handlerCopy = handler;
  client = self->_client;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __86__TSCoreTelephonyClientCache_transferPlanWithIdentifier_fromDevice_completionHandler___block_invoke;
  v11[3] = &unk_279B45920;
  v12 = handlerCopy;
  v10 = handlerCopy;
  [(CoreTelephonyClient *)client transferPlan:identifier fromDevice:device completionHandler:v11];
}

void __86__TSCoreTelephonyClientCache_transferPlanWithIdentifier_fromDevice_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  if (v6)
  {
    v7 = _TSLogDomain();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __86__TSCoreTelephonyClientCache_transferPlanWithIdentifier_fromDevice_completionHandler___block_invoke_cold_1();
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)transferPlansWithIdentifier:(id)identifier fromDevice:(id)device completionHandler:(id)handler
{
  handlerCopy = handler;
  client = self->_client;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __87__TSCoreTelephonyClientCache_transferPlansWithIdentifier_fromDevice_completionHandler___block_invoke;
  v11[3] = &unk_279B45920;
  v12 = handlerCopy;
  v10 = handlerCopy;
  [(CoreTelephonyClient *)client transferPlans:identifier fromDevice:device completionHandler:v11];
}

void __87__TSCoreTelephonyClientCache_transferPlansWithIdentifier_fromDevice_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  if (v6)
  {
    v7 = _TSLogDomain();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __87__TSCoreTelephonyClientCache_transferPlansWithIdentifier_fromDevice_completionHandler___block_invoke_cold_1();
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)cancelTransferPlan:(id)plan fromDevice:(id)device completionHandler:(id)handler
{
  handlerCopy = handler;
  client = self->_client;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __78__TSCoreTelephonyClientCache_cancelTransferPlan_fromDevice_completionHandler___block_invoke;
  v11[3] = &unk_279B44DB8;
  v12 = handlerCopy;
  v10 = handlerCopy;
  [(CoreTelephonyClient *)client cancelCellularPlanTransfer:plan fromDevice:device completionHandler:v11];
}

void __78__TSCoreTelephonyClientCache_cancelTransferPlan_fromDevice_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _TSLogDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __78__TSCoreTelephonyClientCache_cancelTransferPlan_fromDevice_completionHandler___block_invoke_cold_1();
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)getPlanTransferCredentials:(id)credentials completion:(id)completion
{
  completionCopy = completion;
  client = self->_client;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __68__TSCoreTelephonyClientCache_getPlanTransferCredentials_completion___block_invoke;
  v9[3] = &unk_279B45948;
  v10 = completionCopy;
  v8 = completionCopy;
  [(CoreTelephonyClient *)client getPlanTransferCredentials:credentials completion:v9];
}

void __68__TSCoreTelephonyClientCache_getPlanTransferCredentials_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _TSLogDomain();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __68__TSCoreTelephonyClientCache_getPlanTransferCredentials_completion___block_invoke_cold_1();
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (BOOL)getTransferCapability:(unint64_t)capability
{
  v5 = dispatch_semaphore_create(0);
  v6 = dispatch_time(0, 20000000000);
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  client = self->_client;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __52__TSCoreTelephonyClientCache_getTransferCapability___block_invoke;
  v10[3] = &unk_279B45970;
  v12 = &v13;
  v8 = v5;
  v11 = v8;
  [(CoreTelephonyClient *)client isAnyPlanOfTransferCapability:capability availableForThisDeviceWithCompletion:v10];
  dispatch_semaphore_wait(v8, v6);
  LOBYTE(v6) = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  return v6;
}

void __52__TSCoreTelephonyClientCache_getTransferCapability___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = _TSLogDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __52__TSCoreTelephonyClientCache_getTransferCapability___block_invoke_cold_1();
    }
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void __62__TSCoreTelephonyClientCache_setDataFallbackEnabled_forIccid___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _TSLogDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __62__TSCoreTelephonyClientCache_setDataFallbackEnabled_forIccid___block_invoke_cold_1(a1);
    }
  }
}

- (void)pendingInstallItemsWithCompletion:(id)completion
{
  completionCopy = completion;
  client = self->_client;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__TSCoreTelephonyClientCache_pendingInstallItemsWithCompletion___block_invoke;
  v7[3] = &unk_279B459C0;
  v8 = completionCopy;
  v6 = completionCopy;
  [(CoreTelephonyClient *)client plansPendingInstallWithCompletion:v7];
}

void __64__TSCoreTelephonyClientCache_pendingInstallItemsWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _TSLogDomain();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __64__TSCoreTelephonyClientCache_pendingInstallItemsWithCompletion___block_invoke_cold_1();
    }
  }

  v8 = _TSLogDomain();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v10 = 138412546;
    v11 = v5;
    v12 = 2080;
    v13 = "[TSCoreTelephonyClientCache pendingInstallItemsWithCompletion:]_block_invoke";
    _os_log_impl(&dword_262AA8000, v8, OS_LOG_TYPE_INFO, "[I] Pending install items: %@ @%s", &v10, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
  v9 = *MEMORY[0x277D85DE8];
}

- (void)convertPhysicalSIMToeSIMWithCompletion:(id)completion
{
  completionCopy = completion;
  client = self->_client;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69__TSCoreTelephonyClientCache_convertPhysicalSIMToeSIMWithCompletion___block_invoke;
  v7[3] = &unk_279B44DB8;
  v8 = completionCopy;
  v6 = completionCopy;
  [(CoreTelephonyClient *)client convertPhysicalToeSIMWithCompletionHandler:v7];
}

void __69__TSCoreTelephonyClientCache_convertPhysicalSIMToeSIMWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _TSLogDomain();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    v8 = v3;
    v9 = 2080;
    v10 = "[TSCoreTelephonyClientCache convertPhysicalSIMToeSIMWithCompletion:]_block_invoke";
    _os_log_impl(&dword_262AA8000, v4, OS_LOG_TYPE_DEFAULT, "convert psim -> esim. error:%@ @%s", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)deviceSupportsHydra
{
  v17 = *MEMORY[0x277D85DE8];
  client = self->_client;
  v12 = 0;
  v3 = [(CoreTelephonyClient *)client supportsHydraWithError:&v12];
  v4 = v12;
  v5 = _TSLogDomain();
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      bOOLValue = [v3 BOOLValue];
      v8 = @"Not Supported";
      if (bOOLValue)
      {
        v8 = @"Supported";
      }

      *buf = 138412546;
      v14 = v8;
      v15 = 2080;
      v16 = "[TSCoreTelephonyClientCache deviceSupportsHydra]";
      _os_log_impl(&dword_262AA8000, v6, OS_LOG_TYPE_DEFAULT, "Checking hydra result: %@ @%s", buf, 0x16u);
    }

    bOOLValue2 = [v3 BOOLValue];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [TSCoreTelephonyClientCache deviceSupportsHydra];
    }

    bOOLValue2 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return bOOLValue2;
}

- (BOOL)isEmbeddedSIMOnlyConfig
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__TSCoreTelephonyClientCache_isEmbeddedSIMOnlyConfig__block_invoke;
  block[3] = &unk_279B44578;
  block[4] = self;
  if (isEmbeddedSIMOnlyConfig_onceToken != -1)
  {
    dispatch_once(&isEmbeddedSIMOnlyConfig_onceToken, block);
  }

  return self->_isEOnly;
}

void __53__TSCoreTelephonyClientCache_isEmbeddedSIMOnlyConfig__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v7 = 0;
  v3 = [v2 isEmbeddedSIMOnlyConfig:&v7];
  v4 = v7;
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = v3 == 0;
  }

  if (v5)
  {
    v6 = _TSLogDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __53__TSCoreTelephonyClientCache_isEmbeddedSIMOnlyConfig__block_invoke_cold_1();
    }

    *(*(a1 + 32) + 16) = 1;
  }

  else
  {
    *(*(a1 + 32) + 16) = [v3 BOOLValue];
  }
}

- (id)getStoreVisitStatusForCarrier:(id)carrier
{
  carrierCopy = carrier;
  client = self->_client;
  if (objc_opt_respondsToSelector())
  {
    v6 = self->_client;
    v19 = 0;
    v7 = [(CoreTelephonyClient *)v6 loadCarrierStoreVisitStatusForCarrier:carrierCopy error:&v19];
    v8 = v19;
    if (v8)
    {
      v9 = _TSLogDomain();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [TSCoreTelephonyClientCache getStoreVisitStatusForCarrier:];
      }

      v10 = 0;
    }

    else
    {
      v10 = v7;
    }
  }

  else
  {
    v8 = _TSLogDomain();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [(TSCoreTelephonyClientCache *)v8 getStoreVisitStatusForCarrier:v11, v12, v13, v14, v15, v16, v17];
    }

    v10 = 0;
  }

  return v10;
}

void __69__TSCoreTelephonyClientCache_saveStoreVisitStatusForCarrier_visited___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _TSLogDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __69__TSCoreTelephonyClientCache_saveStoreVisitStatusForCarrier_visited___block_invoke_cold_1(a1);
    }
  }
}

- (id)loadSimSetupInfo:(id)info
{
  v28 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  client = self->_client;
  if (objc_opt_respondsToSelector())
  {
    v6 = self->_client;
    v21 = 0;
    v7 = [(CoreTelephonyClient *)v6 loadSimSetupInfo:infoCopy error:&v21];
    v8 = v21;
    v9 = _TSLogDomain();
    v10 = v9;
    if (v8)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [TSCoreTelephonyClientCache loadSimSetupInfo:];
      }

      v11 = 0;
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v23 = infoCopy;
        v24 = 2112;
        v25 = v7;
        v26 = 2080;
        v27 = "[TSCoreTelephonyClientCache loadSimSetupInfo:]";
        _os_log_impl(&dword_262AA8000, v10, OS_LOG_TYPE_DEFAULT, "simsetup info key: %@, value: %@ @%s", buf, 0x20u);
      }

      v11 = v7;
    }
  }

  else
  {
    v8 = _TSLogDomain();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [(TSCoreTelephonyClientCache *)v8 loadSimSetupInfo:v12, v13, v14, v15, v16, v17, v18];
    }

    v11 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)saveSimSetupInfo:(id)info info:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v7 = a4;
  client = self->_client;
  v9 = objc_opt_respondsToSelector();
  v10 = _TSLogDomain();
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v24 = infoCopy;
      v25 = 2112;
      v26 = v7;
      v27 = 2080;
      v28 = "[TSCoreTelephonyClientCache saveSimSetupInfo:info:]";
      _os_log_impl(&dword_262AA8000, v11, OS_LOG_TYPE_DEFAULT, "saving simsetup info. key: %@, info: %@ @%s", buf, 0x20u);
    }

    v12 = self->_client;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __52__TSCoreTelephonyClientCache_saveSimSetupInfo_info___block_invoke;
    v21[3] = &unk_279B44638;
    v22 = infoCopy;
    [(CoreTelephonyClient *)v12 saveSimSetupInfo:v22 info:v7 completion:v21];
    v11 = v22;
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [(TSCoreTelephonyClientCache *)v11 saveSimSetupInfo:v13 info:v14, v15, v16, v17, v18, v19];
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __52__TSCoreTelephonyClientCache_saveSimSetupInfo_info___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _TSLogDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __52__TSCoreTelephonyClientCache_saveSimSetupInfo_info___block_invoke_cold_1(a1);
    }
  }
}

void __50__TSCoreTelephonyClientCache_submitSimSetupUsage___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = _TSLogDomain();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __50__TSCoreTelephonyClientCache_submitSimSetupUsage___block_invoke_cold_1();
    }
  }
}

void __60__TSCoreTelephonyClientCache_submitAutoReconnectionDetails___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = _TSLogDomain();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __60__TSCoreTelephonyClientCache_submitAutoReconnectionDetails___block_invoke_cold_1();
    }
  }
}

- (void)getCarrierSetupWithCompletion:(id)completion
{
  completionCopy = completion;
  client = self->_client;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__TSCoreTelephonyClientCache_getCarrierSetupWithCompletion___block_invoke;
  v7[3] = &unk_279B459C0;
  v8 = completionCopy;
  v6 = completionCopy;
  [(CoreTelephonyClient *)client getCarrierSetupWithCompletion:v7];
}

void __60__TSCoreTelephonyClientCache_getCarrierSetupWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _TSLogDomain();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __60__TSCoreTelephonyClientCache_getCarrierSetupWithCompletion___block_invoke_cold_1();
    }
  }

  v8 = _TSLogDomain();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v10 = 138412546;
    v11 = v5;
    v12 = 2080;
    v13 = "[TSCoreTelephonyClientCache getCarrierSetupWithCompletion:]_block_invoke";
    _os_log_impl(&dword_262AA8000, v8, OS_LOG_TYPE_INFO, "[I] Carrier setup items: %@ @%s", &v10, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
  v9 = *MEMORY[0x277D85DE8];
}

void __72__TSCoreTelephonyClientCache_getWebsheetInfoForPlan_inBuddy_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = _TSLogDomain();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __72__TSCoreTelephonyClientCache_getWebsheetInfoForPlan_inBuddy_completion___block_invoke_cold_1();
    }
  }

  v11 = _TSLogDomain();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v13 = 138412802;
    v14 = v7;
    v15 = 2112;
    v16 = v8;
    v17 = 2080;
    v18 = "[TSCoreTelephonyClientCache getWebsheetInfoForPlan:inBuddy:completion:]_block_invoke";
    _os_log_impl(&dword_262AA8000, v11, OS_LOG_TYPE_INFO, "[I] Websheet: %@ Postdata: %@ @%s", &v13, 0x20u);
  }

  (*(*(a1 + 32) + 16))();
  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)usingBootstrapDataService
{
  v14 = *MEMORY[0x277D85DE8];
  client = self->_client;
  v9 = 0;
  v3 = [(CoreTelephonyClient *)client usingBootstrapDataService:&v9];
  v4 = v9;
  if (v4)
  {
    v5 = _TSLogDomain();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v11 = v4;
      v12 = 2080;
      v13 = "[TSCoreTelephonyClientCache usingBootstrapDataService]";
      _os_log_impl(&dword_262AA8000, v5, OS_LOG_TYPE_DEFAULT, "usingBootstrapDataService failed:%@ @%s", buf, 0x16u);
    }
  }

  bOOLValue = [v3 BOOLValue];

  v7 = *MEMORY[0x277D85DE8];
  return bOOLValue;
}

void __53__TSCoreTelephonyClientCache_submitPlanSetupDetails___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = _TSLogDomain();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __53__TSCoreTelephonyClientCache_submitPlanSetupDetails___block_invoke_cold_1();
    }
  }
}

void __61__TSCoreTelephonyClientCache_transferPlanListWithCompletion___block_invoke_cold_1(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "[TSCoreTelephonyClientCache transferPlanListWithCompletion:]_block_invoke";
  _os_log_error_impl(&dword_262AA8000, log, OS_LOG_TYPE_ERROR, "[E]invalid CTRemotePlan @%s", buf, 0xCu);
}

void __61__TSCoreTelephonyClientCache_transferPlanListWithCompletion___block_invoke_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_2(&dword_262AA8000, v0, v1, "[E]Tranfer plan list retrieval failed: %@ @%s", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __86__TSCoreTelephonyClientCache_transferPlanWithIdentifier_fromDevice_completionHandler___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_2(&dword_262AA8000, v0, v1, "[E]Failed %@ @%s", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __87__TSCoreTelephonyClientCache_transferPlansWithIdentifier_fromDevice_completionHandler___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_2(&dword_262AA8000, v0, v1, "[E]Failed %@ @%s", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __78__TSCoreTelephonyClientCache_cancelTransferPlan_fromDevice_completionHandler___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_2(&dword_262AA8000, v0, v1, "[E]Failed %@ @%s", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __68__TSCoreTelephonyClientCache_getPlanTransferCredentials_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_2(&dword_262AA8000, v0, v1, "[E]Failed %@ @%s", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __52__TSCoreTelephonyClientCache_getTransferCapability___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_2(&dword_262AA8000, v0, v1, "[E]%@ @%s", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __62__TSCoreTelephonyClientCache_setDataFallbackEnabled_forIccid___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  *(a1 + 40);
  v7 = *(a1 + 32);
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x2Au);
  v6 = *MEMORY[0x277D85DE8];
}

void __64__TSCoreTelephonyClientCache_pendingInstallItemsWithCompletion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_2(&dword_262AA8000, v0, v1, "[E]%@ @%s", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)deviceSupportsHydra
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_2(&dword_262AA8000, v0, v1, "[E]Error checking hydra: %@ @%s", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __53__TSCoreTelephonyClientCache_isEmbeddedSIMOnlyConfig__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_2(&dword_262AA8000, v0, v1, "[E]query eONLY failed : %@ @%s", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)getStoreVisitStatusForCarrier:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3(&dword_262AA8000, a1, a3, "[Db] incompatible CT @%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)getStoreVisitStatusForCarrier:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_2(&dword_262AA8000, v0, v1, "[E]load visit store failed : %@ @%s", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __69__TSCoreTelephonyClientCache_saveStoreVisitStatusForCarrier_visited___block_invoke_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 40);
  v8 = *(a1 + 32);
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x26u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)loadSimSetupInfo:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3(&dword_262AA8000, a1, a3, "[Db] incompatible CT @%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)loadSimSetupInfo:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)saveSimSetupInfo:(uint64_t)a3 info:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3(&dword_262AA8000, a1, a3, "[Db] incompatible CT @%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __52__TSCoreTelephonyClientCache_saveSimSetupInfo_info___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 32);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
  v6 = *MEMORY[0x277D85DE8];
}

void __50__TSCoreTelephonyClientCache_submitSimSetupUsage___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_2(&dword_262AA8000, v0, v1, "[E]submit sim setup usage failure. error:%@ @%s", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __60__TSCoreTelephonyClientCache_submitAutoReconnectionDetails___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_2(&dword_262AA8000, v0, v1, "[E]auto reconnection details submission failure. error:%@ @%s", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __60__TSCoreTelephonyClientCache_getCarrierSetupWithCompletion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_2(&dword_262AA8000, v0, v1, "[E]%@ @%s", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __72__TSCoreTelephonyClientCache_getWebsheetInfoForPlan_inBuddy_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_2(&dword_262AA8000, v0, v1, "[E]%@ @%s", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __53__TSCoreTelephonyClientCache_submitPlanSetupDetails___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_2(&dword_262AA8000, v0, v1, "[E]submit plan setup details failure. error:%@ @%s", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end