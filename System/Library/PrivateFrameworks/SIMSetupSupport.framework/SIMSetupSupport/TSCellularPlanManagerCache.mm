@interface TSCellularPlanManagerCache
+ (id)sharedInstance;
- (NSArray)planItems;
- (TSCellularPlanManagerCache)init;
- (TSCellularPlanManagerCacheDelegate)delegate;
- (id)_getValidatedPlanItemFor:(id)for;
- (id)getDanglingPlanItems;
- (id)getPredefinedLabels;
- (id)getShortLabelsForLabels:(id)labels;
- (id)getSubscriptionContextUUIDforPlan:(id)plan;
- (id)remapSimLabel:(id)label to:(id)to;
- (id)setLabelForPlan:(id)plan label:(id)label;
- (void)_initializePlanItems;
- (void)_updateCachedPlanItems;
- (void)_updateLocalCachedPlanItems:(id)items;
- (void)addNewPlanWithAddress:(id)address matchingId:(id)id confirmationCode:(id)code userConsent:(int64_t)consent completion:(id)completion;
- (void)addNewPlanWithCardData:(id)data confirmationCode:(id)code userConsentResponse:(int64_t)response completion:(id)completion;
- (void)dealloc;
- (void)didEnablePlanItems:(id)items;
- (void)didPurchasePlanForCarrier:(id)carrier mnc:(id)mnc gid1:(id)gid1 gid2:(id)gid2 state:(id)state;
- (void)didPurchasePlanForEid:(id)eid iccid:(id)iccid smdpURL:(id)l state:(id)state;
- (void)didTransferPlanForEid:(id)eid iccid:(id)iccid srcIccid:(id)srcIccid smdpURL:(id)l state:(id)state;
- (void)hasInstallingPlanOrUserPlan:(id)plan;
- (void)planItemsWithCompletion:(id)completion;
- (void)provideUserResponse:(int64_t)response confirmationCode:(id)code;
- (void)resetDelegate:(id)delegate;
- (void)selectPlanForData:(id)data;
- (void)selectPlanForVoice:(id)voice;
- (void)selectPlansForIMessage:(id)message;
- (void)sendUserResponse:(unint64_t)response confirmationCode:(id)code;
- (void)setDelegate:(id)delegate;
- (void)shouldShowPlanSetupWithCompletion:(id)completion;
@end

@implementation TSCellularPlanManagerCache

+ (id)sharedInstance
{
  if (sharedInstance_once_0 != -1)
  {
    +[TSCellularPlanManagerCache sharedInstance];
  }

  v3 = sharedInstance_instance_0;

  return v3;
}

uint64_t __44__TSCellularPlanManagerCache_sharedInstance__block_invoke()
{
  sharedInstance_instance_0 = objc_alloc_init(TSCellularPlanManagerCache);

  return MEMORY[0x2821F96F8]();
}

- (TSCellularPlanManagerCache)init
{
  v5.receiver = self;
  v5.super_class = TSCellularPlanManagerCache;
  v2 = [(TSCellularPlanManagerCache *)&v5 init];
  if (v2)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__updateLocalCachedPlanItems_ name:*MEMORY[0x277CF96A8] object:0];
  }

  return v2;
}

- (void)planItemsWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    objc_initWeak(&location, self);
    mEMORY[0x277CF96D8] = [MEMORY[0x277CF96D8] sharedManager];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __54__TSCellularPlanManagerCache_planItemsWithCompletion___block_invoke;
    v7[3] = &unk_279B45510;
    objc_copyWeak(&v9, &location);
    v7[4] = self;
    v8 = completionCopy;
    [mEMORY[0x277CF96D8] planItemsWithCompletion:v7];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  else
  {
    v6 = _TSLogDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [TSCellularPlanManagerCache planItemsWithCompletion:];
    }
  }
}

void __54__TSCellularPlanManagerCache_planItemsWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__TSCellularPlanManagerCache_planItemsWithCompletion___block_invoke_2;
  block[3] = &unk_279B454E8;
  objc_copyWeak(&v16, (a1 + 48));
  v7 = *(a1 + 40);
  v8 = *(a1 + 32);
  v12 = v6;
  v13 = v8;
  v14 = v5;
  v15 = v7;
  v9 = v5;
  v10 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v16);
}

void __54__TSCellularPlanManagerCache_planItemsWithCompletion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    if (!*(a1 + 32))
    {
      [*(a1 + 40) setCachedPlanItems:*(a1 + 48)];
      v5 = *(a1 + 56);
      v6 = [*(a1 + 40) cachedPlanItems];
      (*(v5 + 16))(v5, v6);

      goto LABEL_11;
    }

    v3 = _TSLogDomain();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __54__TSCellularPlanManagerCache_planItemsWithCompletion___block_invoke_2_cold_1((a1 + 32));
    }
  }

  else
  {
    v4 = _TSLogDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __54__TSCellularPlanManagerCache_planItemsWithCompletion___block_invoke_2_cold_2();
    }
  }

  (*(*(a1 + 56) + 16))();
LABEL_11:
}

- (void)hasInstallingPlanOrUserPlan:(id)plan
{
  planCopy = plan;
  v5 = planCopy;
  if (planCopy)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __58__TSCellularPlanManagerCache_hasInstallingPlanOrUserPlan___block_invoke;
    v7[3] = &unk_279B44E98;
    v8 = planCopy;
    [(TSCellularPlanManagerCache *)self planItemsWithCompletion:v7];
    v6 = v8;
  }

  else
  {
    v6 = _TSLogDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [TSCellularPlanManagerCache hasInstallingPlanOrUserPlan:];
    }
  }
}

uint64_t __58__TSCellularPlanManagerCache_hasInstallingPlanOrUserPlan___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 count] != 0;
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = TSCellularPlanManagerCache;
  [(TSCellularPlanManagerCache *)&v4 dealloc];
}

- (void)setDelegate:(id)delegate
{
  v11 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  v5 = _TSLogDomain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    v8 = delegateCopy;
    v9 = 2080;
    v10 = "[TSCellularPlanManagerCache setDelegate:]";
    _os_log_impl(&dword_262AA8000, v5, OS_LOG_TYPE_DEFAULT, "set delegate : %@ @%s", &v7, 0x16u);
  }

  objc_storeWeak(&self->delegate, delegateCopy);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)resetDelegate:(id)delegate
{
  v15 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  v5 = _TSLogDomain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained(&self->delegate);
    v9 = 138412802;
    v10 = WeakRetained;
    v11 = 2112;
    v12 = delegateCopy;
    v13 = 2080;
    v14 = "[TSCellularPlanManagerCache resetDelegate:]";
    _os_log_impl(&dword_262AA8000, v5, OS_LOG_TYPE_DEFAULT, "reset delegate : %@ <> removedDelegate: %@ @%s", &v9, 0x20u);
  }

  v7 = objc_loadWeakRetained(&self->delegate);
  if (v7 == delegateCopy)
  {
    objc_storeWeak(&self->delegate, 0);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (NSArray)planItems
{
  cachedPlanItems = self->_cachedPlanItems;
  if (!cachedPlanItems)
  {
    objc_sync_enter(0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __39__TSCellularPlanManagerCache_planItems__block_invoke;
    block[3] = &unk_279B44578;
    block[4] = self;
    if (planItems_onceToken != -1)
    {
      dispatch_once(&planItems_onceToken, block);
    }

    objc_sync_exit(0);
    cachedPlanItems = self->_cachedPlanItems;
  }

  return cachedPlanItems;
}

- (void)shouldShowPlanSetupWithCompletion:(id)completion
{
  v3 = MEMORY[0x277CF96D8];
  completionCopy = completion;
  sharedManager = [v3 sharedManager];
  [sharedManager shouldShowPlanSetup:completionCopy];
}

- (void)selectPlanForData:(id)data
{
  v3 = [(TSCellularPlanManagerCache *)self _getValidatedPlanItemFor:data];
  if (v3)
  {
    mEMORY[0x277CF96D8] = [MEMORY[0x277CF96D8] sharedManager];
    [mEMORY[0x277CF96D8] didSelectPlanForData:v3 completion:&__block_literal_global_37];
  }

  else
  {
    mEMORY[0x277CF96D8] = _TSLogDomain();
    if (os_log_type_enabled(mEMORY[0x277CF96D8], OS_LOG_TYPE_ERROR))
    {
      [TSCellularPlanManagerCache selectPlanForData:];
    }
  }
}

void __48__TSCellularPlanManagerCache_selectPlanForData___block_invoke(uint64_t a1, char a2, void *a3)
{
  v4 = a3;
  if ((a2 & 1) == 0)
  {
    v5 = _TSLogDomain();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __48__TSCellularPlanManagerCache_selectPlanForData___block_invoke_cold_1();
    }
  }
}

- (void)selectPlanForVoice:(id)voice
{
  v3 = [(TSCellularPlanManagerCache *)self _getValidatedPlanItemFor:voice];
  if (v3)
  {
    mEMORY[0x277CF96D8] = [MEMORY[0x277CF96D8] sharedManager];
    [mEMORY[0x277CF96D8] didSelectPlanForDefaultVoice:v3 completion:&__block_literal_global_39];
  }

  else
  {
    mEMORY[0x277CF96D8] = _TSLogDomain();
    if (os_log_type_enabled(mEMORY[0x277CF96D8], OS_LOG_TYPE_ERROR))
    {
      [TSCellularPlanManagerCache selectPlanForVoice:];
    }
  }
}

void __49__TSCellularPlanManagerCache_selectPlanForVoice___block_invoke(uint64_t a1, char a2, void *a3)
{
  v4 = a3;
  if ((a2 & 1) == 0)
  {
    v5 = _TSLogDomain();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __49__TSCellularPlanManagerCache_selectPlanForVoice___block_invoke_cold_1();
    }
  }
}

- (void)selectPlansForIMessage:(id)message
{
  v25 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v5 = _TSLogDomain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [TSCellularPlanManagerCache selectPlansForIMessage:];
  }

  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = messageCopy;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = [(TSCellularPlanManagerCache *)self _getValidatedPlanItemFor:v12, v18];
        if (v13)
        {
          [v6 addObject:v12];
        }

        else
        {
          v14 = _TSLogDomain();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            [(TSCellularPlanManagerCache *)buf selectPlansForIMessage:v14];
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v9);
  }

  if ([v6 count])
  {
    v15 = _TSLogDomain();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [(TSCellularPlanManagerCache *)v6 selectPlansForIMessage:v15];
    }

    mEMORY[0x277CF96D8] = [MEMORY[0x277CF96D8] sharedManager];
    [mEMORY[0x277CF96D8] didSelectPlansForIMessage:v6 completion:&__block_literal_global_42];
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __53__TSCellularPlanManagerCache_selectPlansForIMessage___block_invoke(uint64_t a1, char a2, void *a3)
{
  v4 = a3;
  if ((a2 & 1) == 0)
  {
    v5 = _TSLogDomain();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __53__TSCellularPlanManagerCache_selectPlansForIMessage___block_invoke_cold_1();
    }
  }
}

- (id)getPredefinedLabels
{
  mEMORY[0x277CF96D8] = [MEMORY[0x277CF96D8] sharedManager];
  getPredefinedLabels = [mEMORY[0x277CF96D8] getPredefinedLabels];

  return getPredefinedLabels;
}

- (id)setLabelForPlan:(id)plan label:(id)label
{
  labelCopy = label;
  v7 = [(TSCellularPlanManagerCache *)self _getValidatedPlanItemFor:plan];
  if (v7)
  {
    mEMORY[0x277CF96D8] = [MEMORY[0x277CF96D8] sharedManager];
    v9 = [mEMORY[0x277CF96D8] setLabelForPlan:v7 label:labelCopy];

    if (v9)
    {
      v10 = _TSLogDomain();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [TSCellularPlanManagerCache setLabelForPlan:label:];
      }
    }

    [(TSCellularPlanManagerCache *)self _updateCachedPlanItems];
  }

  else
  {
    v11 = _TSLogDomain();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [TSCellularPlanManagerCache setLabelForPlan:label:];
    }

    v9 = 0;
  }

  return v9;
}

- (id)getShortLabelsForLabels:(id)labels
{
  v3 = MEMORY[0x277CF96D8];
  labelsCopy = labels;
  sharedManager = [v3 sharedManager];
  v6 = [sharedManager getShortLabelsForLabels:labelsCopy];

  return v6;
}

- (id)getDanglingPlanItems
{
  mEMORY[0x277CF96D8] = [MEMORY[0x277CF96D8] sharedManager];
  v3 = [mEMORY[0x277CF96D8] danglingPlanItemsShouldUpdate:0];

  return v3;
}

- (void)addNewPlanWithCardData:(id)data confirmationCode:(id)code userConsentResponse:(int64_t)response completion:(id)completion
{
  dataCopy = data;
  codeCopy = code;
  completionCopy = completion;
  v13 = _TSLogDomain();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [TSCellularPlanManagerCache addNewPlanWithCardData:confirmationCode:userConsentResponse:completion:];
  }

  mEMORY[0x277CF96D8] = [MEMORY[0x277CF96D8] sharedManager];
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __101__TSCellularPlanManagerCache_addNewPlanWithCardData_confirmationCode_userConsentResponse_completion___block_invoke;
  v19 = &unk_279B45538;
  selfCopy = self;
  v21 = completionCopy;
  v15 = completionCopy;
  [mEMORY[0x277CF96D8] addNewPlanWithCardData:dataCopy confirmationCode:codeCopy triggerType:2 userConsent:response completion:&v16];

  [(TSCellularPlanManagerCache *)self _updateCachedPlanItems:v16];
}

void __101__TSCellularPlanManagerCache_addNewPlanWithCardData_confirmationCode_userConsentResponse_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (v3)
  {
    v4 = [v3 domain];
    if ([v4 isEqualToString:*MEMORY[0x277CF9680]])
    {
      if ([v6 code] == 19)
      {
LABEL_8:

        goto LABEL_9;
      }

      v5 = [v6 code];

      if (v5 == 2)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

    v4 = [*(a1 + 32) delegate];
    [v4 planItemsUpdated:0 planListError:v6];
    goto LABEL_8;
  }

LABEL_9:
  (*(*(a1 + 40) + 16))();
}

- (void)addNewPlanWithAddress:(id)address matchingId:(id)id confirmationCode:(id)code userConsent:(int64_t)consent completion:(id)completion
{
  v33 = *MEMORY[0x277D85DE8];
  addressCopy = address;
  idCopy = id;
  codeCopy = code;
  completionCopy = completion;
  v16 = _TSLogDomain();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413314;
    v24 = addressCopy;
    v25 = 2112;
    v26 = idCopy;
    v27 = 2112;
    v28 = codeCopy;
    v29 = 2048;
    consentCopy = consent;
    v31 = 2080;
    v32 = "[TSCellularPlanManagerCache addNewPlanWithAddress:matchingId:confirmationCode:userConsent:completion:]";
    _os_log_debug_impl(&dword_262AA8000, v16, OS_LOG_TYPE_DEBUG, "[Db] SMDP: %@, matchingid: %@ cc: %@ signup consent %lu @%s", buf, 0x34u);
  }

  if (BYSetupAssistantNeedsToRun())
  {
    v17 = 1;
  }

  else
  {
    v17 = 2;
  }

  mEMORY[0x277CF96D8] = [MEMORY[0x277CF96D8] sharedManager];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __103__TSCellularPlanManagerCache_addNewPlanWithAddress_matchingId_confirmationCode_userConsent_completion___block_invoke;
  v21[3] = &unk_279B45538;
  v21[4] = self;
  v22 = completionCopy;
  v19 = completionCopy;
  [mEMORY[0x277CF96D8] addNewPlanWithAddress:addressCopy matchingId:idCopy oid:0 confirmationCode:codeCopy triggerType:v17 userConsent:consent completion:v21];

  [(TSCellularPlanManagerCache *)self _updateCachedPlanItems];
  v20 = *MEMORY[0x277D85DE8];
}

void __103__TSCellularPlanManagerCache_addNewPlanWithAddress_matchingId_confirmationCode_userConsent_completion___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([TSUtilities isRegulatoryRestrictionActive:?])
  {
    v3 = [*(a1 + 32) delegate];
    [v3 planItemsUpdated:0 planListError:v4];
  }

  (*(*(a1 + 40) + 16))();
}

void __65__TSCellularPlanManagerCache_resumePlanProvisioning_userConsent___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = _TSLogDomain();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __65__TSCellularPlanManagerCache_resumePlanProvisioning_userConsent___block_invoke_cold_1();
    }
  }
}

- (id)remapSimLabel:(id)label to:(id)to
{
  v5 = MEMORY[0x277CF96D8];
  toCopy = to;
  labelCopy = label;
  sharedManager = [v5 sharedManager];
  v9 = [sharedManager remapSimLabel:labelCopy to:toCopy];

  if (v9)
  {
    v10 = _TSLogDomain();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [TSCellularPlanManagerCache remapSimLabel:to:];
    }
  }

  return v9;
}

- (void)provideUserResponse:(int64_t)response confirmationCode:(id)code
{
  v19 = *MEMORY[0x277D85DE8];
  codeCopy = code;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  planItems = [(TSCellularPlanManagerCache *)self planItems];
  v8 = [planItems countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(planItems);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([v11 isInstalling])
        {
          v8 = v11;
          goto LABEL_11;
        }
      }

      v8 = [planItems countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  mEMORY[0x277CF96D8] = [MEMORY[0x277CF96D8] sharedManager];
  [mEMORY[0x277CF96D8] userDidProvideResponse:response confirmationCode:codeCopy forPlan:v8 isRemote:0 completion:&__block_literal_global_48];

  [(TSCellularPlanManagerCache *)self _updateCachedPlanItems];
  v13 = *MEMORY[0x277D85DE8];
}

void __67__TSCellularPlanManagerCache_provideUserResponse_confirmationCode___block_invoke(uint64_t a1, char a2, void *a3)
{
  v4 = a3;
  if ((a2 & 1) == 0)
  {
    v5 = _TSLogDomain();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __67__TSCellularPlanManagerCache_provideUserResponse_confirmationCode___block_invoke_cold_1();
    }
  }
}

- (void)sendUserResponse:(unint64_t)response confirmationCode:(id)code
{
  v22 = *MEMORY[0x277D85DE8];
  codeCopy = code;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  planItems = [(TSCellularPlanManagerCache *)self planItems];
  v8 = [planItems countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v18 != v10)
      {
        objc_enumerationMutation(planItems);
      }

      v12 = *(*(&v17 + 1) + 8 * v11);
      if ([v12 isInstalling])
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [planItems countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v13 = v12;

    if (!v13)
    {
      goto LABEL_15;
    }

    if (response)
    {
      v14 = response == 2;
    }

    else
    {
      v14 = 2;
    }

    mEMORY[0x277CF96D8] = [MEMORY[0x277CF96D8] sharedManager];
    [mEMORY[0x277CF96D8] userDidProvideResponse:v14 confirmationCode:codeCopy forPlan:v13 isRemote:0 completion:&__block_literal_global_50];

    [(TSCellularPlanManagerCache *)self _updateCachedPlanItems];
  }

  else
  {
LABEL_9:

LABEL_15:
    v13 = _TSLogDomain();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [TSCellularPlanManagerCache sendUserResponse:confirmationCode:];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __64__TSCellularPlanManagerCache_sendUserResponse_confirmationCode___block_invoke(uint64_t a1, char a2, void *a3)
{
  v4 = a3;
  if ((a2 & 1) == 0)
  {
    v5 = _TSLogDomain();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __64__TSCellularPlanManagerCache_sendUserResponse_confirmationCode___block_invoke_cold_1();
    }
  }
}

- (id)getSubscriptionContextUUIDforPlan:(id)plan
{
  v3 = MEMORY[0x277CF96D8];
  planCopy = plan;
  sharedManager = [v3 sharedManager];
  v6 = [sharedManager getSubscriptionContextUUIDforPlan:planCopy];

  return v6;
}

- (void)didPurchasePlanForEid:(id)eid iccid:(id)iccid smdpURL:(id)l state:(id)state
{
  lCopy = l;
  stateCopy = state;
  if (eid)
  {
    iccidCopy = iccid;
    sharedManager = [TSUtilities getByteRepresentationOf:eid];
    iccidCopy2 = [MEMORY[0x277CF96D8] sharedManager];
    [iccidCopy2 didPurchasePlanForCsn:sharedManager iccid:iccidCopy profileServer:lCopy state:stateCopy];
  }

  else
  {
    v13 = MEMORY[0x277CF96D8];
    iccidCopy2 = iccid;
    sharedManager = [v13 sharedManager];
    [sharedManager didPurchasePlanWithIccid:iccidCopy2 downloadProfile:1];
  }
}

- (void)didPurchasePlanForCarrier:(id)carrier mnc:(id)mnc gid1:(id)gid1 gid2:(id)gid2 state:(id)state
{
  v11 = MEMORY[0x277CF96D8];
  stateCopy = state;
  gid2Copy = gid2;
  gid1Copy = gid1;
  mncCopy = mnc;
  carrierCopy = carrier;
  sharedManager = [v11 sharedManager];
  [sharedManager didPurchasePlanForCarrier:carrierCopy mnc:mncCopy gid1:gid1Copy gid2:gid2Copy state:stateCopy];
}

- (void)didTransferPlanForEid:(id)eid iccid:(id)iccid srcIccid:(id)srcIccid smdpURL:(id)l state:(id)state
{
  srcIccidCopy = srcIccid;
  lCopy = l;
  stateCopy = state;
  if (eid)
  {
    iccidCopy = iccid;
    sharedManager = [TSUtilities getByteRepresentationOf:eid];
    iccidCopy2 = [MEMORY[0x277CF96D8] sharedManager];
    [iccidCopy2 didTransferPlanForCsn:sharedManager iccid:iccidCopy srcIccid:srcIccidCopy profileServer:lCopy state:stateCopy];
  }

  else
  {
    v16 = MEMORY[0x277CF96D8];
    iccidCopy2 = iccid;
    sharedManager = [v16 sharedManager];
    [sharedManager didPurchasePlanWithIccid:iccidCopy2 downloadProfile:1];
  }
}

- (void)didEnablePlanItems:(id)items
{
  v15 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  mEMORY[0x277CF96D8] = [MEMORY[0x277CF96D8] sharedManager];
  v6 = [mEMORY[0x277CF96D8] didEnablePlanItems:itemsCopy];

  if (v6)
  {
    v7 = _TSLogDomain();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412802;
      v10 = itemsCopy;
      v11 = 2112;
      v12 = v6;
      v13 = 2080;
      v14 = "[TSCellularPlanManagerCache didEnablePlanItems:]";
      _os_log_impl(&dword_262AA8000, v7, OS_LOG_TYPE_DEFAULT, "Enabling plans: %@, error: %@ @%s", &v9, 0x20u);
    }
  }

  [(TSCellularPlanManagerCache *)self _updateCachedPlanItems];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_initializePlanItems
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__TSCellularPlanManagerCache__initializePlanItems__block_invoke;
  block[3] = &unk_279B44578;
  block[4] = self;
  if (_initializePlanItems_onceToken != -1)
  {
    dispatch_once(&_initializePlanItems_onceToken, block);
  }
}

- (void)_updateCachedPlanItems
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = _TSLogDomain();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    lastError = self->_lastError;
    v11 = 138412546;
    v12 = lastError;
    v13 = 2080;
    v14 = "[TSCellularPlanManagerCache _updateCachedPlanItems]";
    _os_log_impl(&dword_262AA8000, v3, OS_LOG_TYPE_DEFAULT, "Updated plan list _lastError: %@ @%s", &v11, 0x16u);
  }

  mEMORY[0x277CF96D8] = [MEMORY[0x277CF96D8] sharedManager];
  v6 = [mEMORY[0x277CF96D8] planItemsShouldUpdate:0];
  [(TSCellularPlanManagerCache *)self setCachedPlanItems:v6];

  delegate = [(TSCellularPlanManagerCache *)self delegate];
  cachedPlanItems = [(TSCellularPlanManagerCache *)self cachedPlanItems];
  [delegate planItemsUpdated:cachedPlanItems planListError:self->_lastError];

  v9 = self->_lastError;
  self->_lastError = 0;

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_updateLocalCachedPlanItems:(id)items
{
  userInfo = [items userInfo];
  v5 = [userInfo objectForKey:@"CTCellularPlanLocalInfoError"];

  if (v5)
  {
    v6 = _TSLogDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [TSCellularPlanManagerCache _updateLocalCachedPlanItems:];
    }

    delegate = [(TSCellularPlanManagerCache *)self delegate];
    [delegate planItemsUpdated:0 planListError:v5];

    objc_storeStrong(&self->_lastError, v5);
  }

  [(TSCellularPlanManagerCache *)self _updateCachedPlanItems];
}

- (id)_getValidatedPlanItemFor:(id)for
{
  v20 = *MEMORY[0x277D85DE8];
  forCopy = for;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  planItems = [(TSCellularPlanManagerCache *)self planItems];
  v6 = [planItems countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(planItems);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        iccid = [v9 iccid];
        iccid2 = [forCopy iccid];
        v12 = [iccid isEqualToString:iccid2];

        if (v12)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [planItems countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v13 = *MEMORY[0x277D85DE8];

  return v6;
}

- (TSCellularPlanManagerCacheDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

- (void)planItemsWithCompletion:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __54__TSCellularPlanManagerCache_planItemsWithCompletion___block_invoke_2_cold_1(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __54__TSCellularPlanManagerCache_planItemsWithCompletion___block_invoke_2_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)hasInstallingPlanOrUserPlan:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)selectPlanForData:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __48__TSCellularPlanManagerCache_selectPlanForData___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)selectPlanForVoice:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __49__TSCellularPlanManagerCache_selectPlanForVoice___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)selectPlansForIMessage:.cold.1()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v3 = "[TSCellularPlanManagerCache selectPlansForIMessage:]";
  _os_log_debug_impl(&dword_262AA8000, v0, OS_LOG_TYPE_DEBUG, "[Db] %@ @%s", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)selectPlansForIMessage:(os_log_t)log .cold.2(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "[TSCellularPlanManagerCache selectPlansForIMessage:]";
  _os_log_error_impl(&dword_262AA8000, log, OS_LOG_TYPE_ERROR, "[E]Failed - plan item invalid @%s", buf, 0xCu);
}

- (void)selectPlansForIMessage:(void *)a1 .cold.3(void *a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  [a1 count];
  OUTLINED_FUNCTION_2_1();
  v6 = a1;
  v7 = 2080;
  v8 = "[TSCellularPlanManagerCache selectPlansForIMessage:]";
  _os_log_debug_impl(&dword_262AA8000, a2, OS_LOG_TYPE_DEBUG, "[Db]  Going to send %lu plans to select iMessage %@ @%s", v5, 0x20u);
  v4 = *MEMORY[0x277D85DE8];
}

void __53__TSCellularPlanManagerCache_selectPlansForIMessage___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setLabelForPlan:label:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setLabelForPlan:label:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)addNewPlanWithCardData:confirmationCode:userConsentResponse:completion:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_1();
  v4 = v0;
  v5 = 2080;
  v6 = "[TSCellularPlanManagerCache addNewPlanWithCardData:confirmationCode:userConsentResponse:completion:]";
  _os_log_debug_impl(&dword_262AA8000, v1, OS_LOG_TYPE_DEBUG, "[Db] adding new plan with card data %@ and confirmation code %@ @%s", v3, 0x20u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)resumePlanProvisioning:(os_log_t)log userConsent:.cold.1(char a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v4[0] = 67109634;
  v4[1] = a1 & 1;
  v5 = 2048;
  v6 = a2;
  v7 = 2080;
  v8 = "[TSCellularPlanManagerCache resumePlanProvisioning:userConsent:]";
  _os_log_debug_impl(&dword_262AA8000, log, OS_LOG_TYPE_DEBUG, "[Db] Resume: [%d] signupConsent: %lu @%s", v4, 0x1Cu);
  v3 = *MEMORY[0x277D85DE8];
}

void __65__TSCellularPlanManagerCache_resumePlanProvisioning_userConsent___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)remapSimLabel:to:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __67__TSCellularPlanManagerCache_provideUserResponse_confirmationCode___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)sendUserResponse:confirmationCode:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __64__TSCellularPlanManagerCache_sendUserResponse_confirmationCode___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_updateLocalCachedPlanItems:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

@end