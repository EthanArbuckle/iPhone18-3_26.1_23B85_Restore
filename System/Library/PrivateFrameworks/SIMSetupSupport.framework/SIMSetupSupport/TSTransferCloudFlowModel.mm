@interface TSTransferCloudFlowModel
- (TSTransferCloudFlowModel)init;
- (void)arePlansAvailable:(id)available;
- (void)clearCarrierSetupItemsCache;
- (void)filterCarrierSetupItems:(id)items;
- (void)filterTransferPlans:(id)plans;
- (void)getWebsheetInfo:(id)info completion:(id)completion;
- (void)loadSimSetupInfo;
- (void)requestCarrierSetups:(id)setups;
- (void)requestCrossPlatformTransferPlanListWithCompletion:(id)completion;
- (void)requestPlansWithCompletion:(id)completion;
- (void)requestTransferPlans:(id)plans;
@end

@implementation TSTransferCloudFlowModel

- (TSTransferCloudFlowModel)init
{
  v14.receiver = self;
  v14.super_class = TSTransferCloudFlowModel;
  v2 = [(TSTransferCloudFlowModel *)&v14 init];
  if (v2)
  {
    array = [MEMORY[0x277CBEB18] array];
    transferItems = v2->_transferItems;
    v2->_transferItems = array;

    array2 = [MEMORY[0x277CBEB18] array];
    transferPlans = v2->_transferPlans;
    v2->_transferPlans = array2;

    array3 = [MEMORY[0x277CBEB18] array];
    requireStoreVisitItems = v2->_requireStoreVisitItems;
    v2->_requireStoreVisitItems = array3;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storeVisitedMap = v2->_storeVisitedMap;
    v2->_storeVisitedMap = dictionary;

    array4 = [MEMORY[0x277CBEB18] array];
    transferableHiddenInCloudFlowItems = v2->_transferableHiddenInCloudFlowItems;
    v2->_transferableHiddenInCloudFlowItems = array4;

    [(TSTransferCloudFlowModel *)v2 loadSimSetupInfo];
  }

  return v2;
}

- (void)loadSimSetupInfo
{
  v3 = +[TSCoreTelephonyClientCache sharedInstance];
  v5 = [v3 loadSimSetupInfo:@"simsetupD2dInfo"];

  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [v5 valueForKey:@"d2dDone"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        self->_isD2dDone = [v4 BOOLValue];
      }
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)arePlansAvailable:(id)available
{
  availableCopy = available;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__TSTransferCloudFlowModel_arePlansAvailable___block_invoke;
  v6[3] = &unk_279B45640;
  objc_copyWeak(&v8, &location);
  v5 = availableCopy;
  v6[4] = self;
  v7 = v5;
  [(TSTransferCloudFlowModel *)self requestPlansWithCompletion:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __46__TSTransferCloudFlowModel_arePlansAvailable___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (!WeakRetained)
  {
    v18 = _TSLogDomain();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      __46__TSTransferCloudFlowModel_arePlansAvailable___block_invoke_cold_1(v18, v19, v20, v21, v22, v23, v24, v25);
    }

    goto LABEL_10;
  }

  v4 = *(a1 + 32);
  v5 = [WeakRetained carrierSetupItems];
  [v4 filterCarrierSetupItems:v5];

  v6 = [v3 transferItems];
  if (v6)
  {
    v7 = v6;
    v8 = [v3 transferItems];
    v9 = [v8 count];

    if (v9)
    {
      goto LABEL_16;
    }
  }

  v10 = [v3 carrierSetupItems];
  if (v10)
  {
    v11 = v10;
    v12 = [v3 carrierSetupItems];
    v13 = [v12 plans];
    if (v13)
    {
      v14 = v13;
      v15 = [v3 carrierSetupItems];
      v16 = [v15 plans];
      v17 = [v16 count];

      if (v17)
      {
LABEL_16:
        v26 = *(*(a1 + 40) + 16);
        goto LABEL_17;
      }
    }

    else
    {
    }
  }

  v27 = [v3 crossPlatformTransferItems];
  if (v27)
  {
    v18 = v27;
    v28 = [v3 crossPlatformTransferItems];
    v29 = [v28 plans];
    if (v29)
    {
      v30 = v29;
      v31 = [v3 crossPlatformTransferItems];
      v32 = [v31 plans];
      v33 = [v32 count];

      if (v33)
      {
        goto LABEL_16;
      }

      goto LABEL_11;
    }

LABEL_10:
  }

LABEL_11:
  v26 = *(*(a1 + 40) + 16);
LABEL_17:
  v26();
}

- (void)requestPlansWithCompletion:(id)completion
{
  v29 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  objc_initWeak(&location, self);
  v5 = MEMORY[0x2667315D0](completionCopy);
  v6 = dispatch_group_create();
  queryGroup = self->_queryGroup;
  self->_queryGroup = v6;

  v8 = +[TSUtilities isWifiAvailable];
  v9 = +[TSCoreTelephonyClientCache sharedInstance];
  usingBootstrapDataService = [v9 usingBootstrapDataService];

  dispatch_group_enter(self->_queryGroup);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __55__TSTransferCloudFlowModel_requestPlansWithCompletion___block_invoke;
  v24[3] = &unk_279B44400;
  objc_copyWeak(&v25, &location);
  [(TSTransferCloudFlowModel *)self requestCrossPlatformTransferPlanListWithCompletion:v24];
  objc_destroyWeak(&v25);
  if (v8 || (usingBootstrapDataService & 1) == 0)
  {
    dispatch_group_enter(self->_queryGroup);
    defaultStore = [MEMORY[0x277CB8F48] defaultStore];
    aa_primaryAppleAccount = [defaultStore aa_primaryAppleAccount];

    if (aa_primaryAppleAccount)
    {
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __55__TSTransferCloudFlowModel_requestPlansWithCompletion___block_invoke_35;
      v22[3] = &unk_279B44400;
      objc_copyWeak(&v23, &location);
      [(TSTransferCloudFlowModel *)self requestTransferPlans:v22];
      objc_destroyWeak(&v23);
    }

    else
    {
      *&self->_needOfferProximityTransferOption = 257;
      v14 = _TSLogDomain();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v28 = "[TSTransferCloudFlowModel requestPlansWithCompletion:]";
        _os_log_impl(&dword_262AA8000, v14, OS_LOG_TYPE_DEFAULT, "Device not sign in to the iCloud @%s", buf, 0xCu);
      }

      dispatch_group_leave(self->_queryGroup);
    }

    if (!+[TSUtilities isPad])
    {
      dispatch_group_enter(self->_queryGroup);
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __55__TSTransferCloudFlowModel_requestPlansWithCompletion___block_invoke_36;
      v20[3] = &unk_279B44400;
      objc_copyWeak(&v21, &location);
      [(TSTransferCloudFlowModel *)self requestCarrierSetups:v20];
      objc_destroyWeak(&v21);
    }
  }

  else
  {
    v13 = _TSLogDomain();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v28 = "[TSTransferCloudFlowModel requestPlansWithCompletion:]";
      _os_log_impl(&dword_262AA8000, v13, OS_LOG_TYPE_DEFAULT, "Cannot query transfer plans and carrier setup items on bootstrap @%s", buf, 0xCu);
    }
  }

  v15 = self->_queryGroup;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__TSTransferCloudFlowModel_requestPlansWithCompletion___block_invoke_37;
  block[3] = &unk_279B44938;
  v19 = v5;
  v16 = v5;
  dispatch_group_notify(v15, MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&location);
  v17 = *MEMORY[0x277D85DE8];
}

void __55__TSTransferCloudFlowModel_requestPlansWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    dispatch_group_leave(WeakRetained[1]);
  }

  else
  {
    v3 = _TSLogDomain();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __55__TSTransferCloudFlowModel_requestPlansWithCompletion___block_invoke_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void __55__TSTransferCloudFlowModel_requestPlansWithCompletion___block_invoke_35(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    dispatch_group_leave(WeakRetained[1]);
  }

  else
  {
    v3 = _TSLogDomain();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __55__TSTransferCloudFlowModel_requestPlansWithCompletion___block_invoke_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void __55__TSTransferCloudFlowModel_requestPlansWithCompletion___block_invoke_36(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    dispatch_group_leave(WeakRetained[1]);
  }

  else
  {
    v3 = _TSLogDomain();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __55__TSTransferCloudFlowModel_requestPlansWithCompletion___block_invoke_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

- (void)requestTransferPlans:(id)plans
{
  plansCopy = plans;
  if (plansCopy)
  {
    objc_initWeak(&location, self);
    v5 = +[TSCoreTelephonyClientCache sharedInstance];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __49__TSTransferCloudFlowModel_requestTransferPlans___block_invoke;
    v14[3] = &unk_279B44E30;
    objc_copyWeak(&v16, &location);
    v15 = plansCopy;
    [v5 bootstrapPlanTransferUsingMessageSession:0 flowType:3 completion:v14];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  else
  {
    v6 = _TSLogDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(TSTransferCloudFlowModel *)v6 requestTransferPlans:v7, v8, v9, v10, v11, v12, v13];
    }
  }
}

void __49__TSTransferCloudFlowModel_requestTransferPlans___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (!v3)
    {
      v6 = +[TSCoreTelephonyClientCache sharedInstance];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __49__TSTransferCloudFlowModel_requestTransferPlans___block_invoke_38;
      v7[3] = &unk_279B45248;
      objc_copyWeak(&v9, (a1 + 40));
      v8 = *(a1 + 32);
      [v6 transferPlanListWithCompletion:v7];

      objc_destroyWeak(&v9);
      goto LABEL_8;
    }

    v5 = _TSLogDomain();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __49__TSTransferCloudFlowModel_requestTransferPlans___block_invoke_cold_1();
    }

    [WeakRetained setNeedOfferProximityTransferOption:1];
    [WeakRetained setNeedOfferQRCodeOption:1];
  }

  (*(*(a1 + 32) + 16))();
LABEL_8:
}

void __49__TSTransferCloudFlowModel_requestTransferPlans___block_invoke_38(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v40 = *MEMORY[0x277D85DE8];
  v8 = a2;
  v9 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setIsFlexPolicyOn:a4];
    if (v9)
    {
      v12 = _TSLogDomain();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        __49__TSTransferCloudFlowModel_requestTransferPlans___block_invoke_38_cold_1();
      }

      [v11 setNeedOfferProximityTransferOption:1];
      [v11 setNeedOfferQRCodeOption:1];
    }

    else if (v8)
    {
      if (!+[TSUtilities isPad])
      {
        v21 = +[TSCoreTelephonyClientCache sharedInstance];
        v22 = [v21 deviceSupportsHydra];

        if ((v22 & 1) == 0)
        {
          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          v34 = 0u;
          v23 = [v8 devices];
          v24 = [v23 countByEnumeratingWithState:&v33 objects:v39 count:16];
          if (v24)
          {
            v25 = v24;
            v26 = *v34;
            v27 = &off_279B46000;
            while (2)
            {
              v28 = 0;
              v29 = v27[233];
              do
              {
                if (*v34 != v26)
                {
                  objc_enumerationMutation(v23);
                }

                v30 = *(*(&v33 + 1) + 8 * v28);
                if ((objc_opt_respondsToSelector() & 1) != 0 && [v30 performSelector:v29])
                {
                  v31 = _TSLogDomain();
                  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315138;
                    v38 = "[TSTransferCloudFlowModel requestTransferPlans:]_block_invoke";
                    _os_log_impl(&dword_262AA8000, v31, OS_LOG_TYPE_DEFAULT, "remote has dual eSIM config @%s", buf, 0xCu);
                  }

                  [v11 setIsDualeSIMCapablityLoss:1];
                  goto LABEL_25;
                }

                ++v28;
              }

              while (v25 != v28);
              v25 = [v23 countByEnumeratingWithState:&v33 objects:v39 count:16];
              v27 = &off_279B46000;
              if (v25)
              {
                continue;
              }

              break;
            }
          }

LABEL_25:
        }
      }

      [v11 filterTransferPlans:v8];
    }
  }

  else
  {
    v13 = _TSLogDomain();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __49__TSTransferCloudFlowModel_requestTransferPlans___block_invoke_38_cold_2(v13, v14, v15, v16, v17, v18, v19, v20);
    }
  }

  (*(*(a1 + 32) + 16))();

  v32 = *MEMORY[0x277D85DE8];
}

- (void)filterTransferPlans:(id)plans
{
  v109 = *MEMORY[0x277D85DE8];
  plansCopy = plans;
  [(NSMutableArray *)self->_transferItems removeAllObjects];
  [(NSMutableArray *)self->_transferPlans removeAllObjects];
  if (!plansCopy)
  {
    v37 = _TSLogDomain();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v96 = "[TSTransferCloudFlowModel filterTransferPlans:]";
      _os_log_impl(&dword_262AA8000, v37, OS_LOG_TYPE_DEFAULT, "no remote plans @%s", buf, 0xCu);
    }

    goto LABEL_110;
  }

  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v69 = plansCopy;
  devices = [plansCopy devices];
  v75 = [devices countByEnumeratingWithState:&v90 objects:v108 count:16];
  if (!v75)
  {

    goto LABEL_61;
  }

  v6 = 0;
  obj = devices;
  v73 = *v91;
  do
  {
    v7 = 0;
    do
    {
      if (*v91 != v73)
      {
        objc_enumerationMutation(obj);
      }

      v77 = v7;
      v8 = *(*(&v90 + 1) + 8 * v7);
      v86 = 0u;
      v87 = 0u;
      v88 = 0u;
      v89 = 0u;
      v80 = v8;
      remoteDisplayPlans = [v8 remoteDisplayPlans];
      v10 = [remoteDisplayPlans countByEnumeratingWithState:&v86 objects:v107 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v87;
        do
        {
          v13 = 0;
          do
          {
            if (*v87 != v12)
            {
              objc_enumerationMutation(remoteDisplayPlans);
            }

            v14 = *(*(&v86 + 1) + 8 * v13);
            if ([v14 isNotEligibleActivationPolicyMismatchPlan])
            {
              [(TSTransferCloudFlowModel *)self setIsActivationPolicyMismatch:1];
            }

            plan = [v14 plan];

            if (plan)
            {
              plan2 = [v14 plan];
              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();

              if (isKindOfClass)
              {
                [(NSMutableArray *)self->_transferPlans addObject:v14];
                plan3 = [v14 plan];
                transferAttributes = [plan3 transferAttributes];
                transferCapability = [transferAttributes transferCapability];

                if (transferCapability <= 6 && ((1 << transferCapability) & 0x68) != 0)
                {
LABEL_20:
                  v6 = 1;
                  goto LABEL_25;
                }

                if (([v14 isTransferablePlan] & 1) == 0)
                {
                  if (!self->_transferIneligibleItems)
                  {
                    array = [MEMORY[0x277CBEB18] array];
                    transferIneligibleItems = self->_transferIneligibleItems;
                    self->_transferIneligibleItems = array;
                  }

                  v24 = _TSLogDomain();
                  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138412546;
                    v96 = v14;
                    v97 = 2080;
                    v98 = "[TSTransferCloudFlowModel filterTransferPlans:]";
                    _os_log_debug_impl(&dword_262AA8000, v24, OS_LOG_TYPE_DEBUG, "[Db] ineligible plan: %@, offer qrcode @%s", buf, 0x16u);
                  }

                  self->_needOfferQRCodeOption = 1;
                  [(NSMutableArray *)self->_transferIneligibleItems addObject:v14];
                }

                if ([v14 requireVisitStoreOnce] && objc_msgSend(v14, "isTransferablePlan"))
                {
                  v25 = [TSUtilities getStoreVisitStatusForPlan:v14 cache:self->_storeVisitedMap];
                  v26 = v25;
                  if (v25)
                  {
                    if (([v25 BOOLValue] & 1) == 0)
                    {
                      v27 = _TSLogDomain();
                      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
                      {
                        identifier = [v14 identifier];
                        *buf = 138412546;
                        v96 = identifier;
                        v97 = 2080;
                        v98 = "[TSTransferCloudFlowModel filterTransferPlans:]";
                        _os_log_impl(&dword_262AA8000, v27, OS_LOG_TYPE_DEFAULT, "user explicitly notify having not visited store, plan (%@) is not able to transfer for now. @%s", buf, 0x16u);
                      }

                      goto LABEL_20;
                    }
                  }

                  else
                  {
                    v30 = _TSLogDomain();
                    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 138412546;
                      v96 = v14;
                      v97 = 2080;
                      v98 = "[TSTransferCloudFlowModel filterTransferPlans:]";
                      _os_log_debug_impl(&dword_262AA8000, v30, OS_LOG_TYPE_DEBUG, "[Db] visit store plan : %@ @%s", buf, 0x16u);
                    }

                    [(NSMutableArray *)self->_requireStoreVisitItems addObject:v14];
                  }
                }

                if ([v14 isPlanHiddenRequiredForCloudFlow])
                {
                  if ([v14 isTransferablePlan])
                  {
                    v31 = _TSLogDomain();
                    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
                    {
                      [(TSTransferCloudFlowModel *)v103 filterTransferPlans:v31];
                    }

                    self->_needOfferProximityTransferOption = 1;
                    transferableHiddenInCloudFlowItems = self->_transferableHiddenInCloudFlowItems;
                    if (!transferableHiddenInCloudFlowItems)
                    {
                      array2 = [MEMORY[0x277CBEB18] array];
                      v34 = self->_transferableHiddenInCloudFlowItems;
                      self->_transferableHiddenInCloudFlowItems = array2;

                      transferableHiddenInCloudFlowItems = self->_transferableHiddenInCloudFlowItems;
                    }

                    [(NSMutableArray *)transferableHiddenInCloudFlowItems addObject:v14];
                  }
                }

                else
                {
                  v101[0] = @"planItem";
                  v101[1] = @"deviceInfo";
                  v102[0] = v14;
                  v102[1] = v80;
                  v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v102 forKeys:v101 count:2];
                  [(NSMutableArray *)self->_transferItems addObject:v35];
                }

                goto LABEL_20;
              }

              plan3 = _TSLogDomain();
              if (os_log_type_enabled(plan3, OS_LOG_TYPE_ERROR))
              {
                plan4 = [v14 plan];
                *buf = 138412546;
                v96 = plan4;
                v97 = 2080;
                v98 = "[TSTransferCloudFlowModel filterTransferPlans:]";
                _os_log_error_impl(&dword_262AA8000, plan3, OS_LOG_TYPE_ERROR, "[E]%@ is not a CTRemotePlan @%s", buf, 0x16u);
              }
            }

            else
            {
              plan3 = _TSLogDomain();
              if (os_log_type_enabled(plan3, OS_LOG_TYPE_ERROR))
              {
                [(TSTransferCloudFlowModel *)v105 filterTransferPlans:plan3];
              }
            }

LABEL_25:

            ++v13;
          }

          while (v11 != v13);
          v36 = [remoteDisplayPlans countByEnumeratingWithState:&v86 objects:v107 count:16];
          v11 = v36;
        }

        while (v36);
      }

      v7 = v77 + 1;
    }

    while (v77 + 1 != v75);
    v75 = [obj countByEnumeratingWithState:&v90 objects:v108 count:16];
  }

  while (v75);

  if ((v6 & 1) == 0)
  {
LABEL_61:
    self->_needOfferQRCodeOption = 1;
  }

  v38 = _TSLogDomain();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    v39 = [(NSMutableArray *)self->_transferItems count];
    transferItems = self->_transferItems;
    *buf = 134218498;
    v96 = v39;
    v97 = 2112;
    v98 = transferItems;
    v99 = 2080;
    v100 = "[TSTransferCloudFlowModel filterTransferPlans:]";
    _os_log_impl(&dword_262AA8000, v38, OS_LOG_TYPE_DEFAULT, "transfer plans [%lu] : %@ @%s", buf, 0x20u);
  }

  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v41 = self->_transferItems;
  v42 = [(NSMutableArray *)v41 countByEnumeratingWithState:&v82 objects:v94 count:16];
  if (!v42)
  {
    goto LABEL_106;
  }

  v43 = v42;
  v44 = *v83;
  v81 = v41;
  v78 = *v83;
  while (2)
  {
    v45 = 0;
    while (2)
    {
      if (*v83 != v44)
      {
        objc_enumerationMutation(v41);
      }

      v46 = [*(*(&v82 + 1) + 8 * v45) objectForKeyedSubscript:@"planItem"];
      plan5 = [v46 plan];
      transferAttributes2 = [plan5 transferAttributes];
      if (![transferAttributes2 transferCapability])
      {
        goto LABEL_88;
      }

      transferAttributes3 = [plan5 transferAttributes];
      if ([transferAttributes3 transferCapability] == 1)
      {
        goto LABEL_87;
      }

      transferAttributes4 = [plan5 transferAttributes];
      if ([transferAttributes4 transferCapability] == 13)
      {
        goto LABEL_86;
      }

      transferAttributes5 = [plan5 transferAttributes];
      if ([transferAttributes5 transferCapability] == 9)
      {
        goto LABEL_85;
      }

      v79 = transferAttributes5;
      transferAttributes6 = [plan5 transferAttributes];
      if ([transferAttributes6 transferCapability] == 7)
      {
        goto LABEL_84;
      }

      transferAttributes7 = [plan5 transferAttributes];
      if ([transferAttributes7 transferCapability] == 12)
      {
        goto LABEL_83;
      }

      v76 = transferAttributes7;
      transferAttributes8 = [plan5 transferAttributes];
      if ([transferAttributes8 transferCapability] == 8)
      {
        goto LABEL_82;
      }

      v74 = transferAttributes8;
      transferAttributes9 = [plan5 transferAttributes];
      if ([transferAttributes9 transferCapability] == 14)
      {
        goto LABEL_81;
      }

      obja = transferAttributes9;
      transferAttributes10 = [plan5 transferAttributes];
      if ([transferAttributes10 transferCapability] == 15)
      {
        goto LABEL_80;
      }

      v70 = transferAttributes10;
      transferAttributes11 = [plan5 transferAttributes];
      if ([transferAttributes11 transferCapability] == 16)
      {

        transferAttributes10 = v70;
LABEL_80:

        transferAttributes9 = obja;
LABEL_81:

        transferAttributes8 = v74;
LABEL_82:

        transferAttributes7 = v76;
LABEL_83:

        v44 = v78;
LABEL_84:

        transferAttributes5 = v79;
LABEL_85:

        v41 = v81;
LABEL_86:

LABEL_87:
LABEL_88:
      }

      else
      {
        v68 = transferAttributes11;
        transferAttributes12 = [plan5 transferAttributes];
        if ([transferAttributes12 transferCapability] == 17)
        {
          v65 = 0;
        }

        else
        {
          transferAttributes13 = [plan5 transferAttributes];
          if ([transferAttributes13 transferCapability] == 18)
          {
            v58 = 0;
          }

          else
          {
            transferAttributes14 = [plan5 transferAttributes];
            if ([transferAttributes14 transferCapability] == 19)
            {
              v58 = 0;
            }

            else
            {
              transferAttributes15 = [plan5 transferAttributes];
              if ([transferAttributes15 transferCapability] == 10)
              {
                v58 = 0;
              }

              else
              {
                transferAttributes16 = [plan5 transferAttributes];
                v58 = [transferAttributes16 transferCapability] != 20;
              }
            }
          }

          v65 = v58;
        }

        v41 = v81;
        v44 = v78;
        if (v65)
        {

          goto LABEL_109;
        }
      }

      if (v43 != ++v45)
      {
        continue;
      }

      break;
    }

    v59 = [(NSMutableArray *)v41 countByEnumeratingWithState:&v82 objects:v94 count:16];
    v43 = v59;
    if (v59)
    {
      continue;
    }

    break;
  }

LABEL_106:

  v60 = _TSLogDomain();
  if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
  {
    [TSTransferCloudFlowModel filterTransferPlans:v60];
  }

  [(NSMutableArray *)self->_transferItems removeAllObjects];
LABEL_109:
  plansCopy = v69;
LABEL_110:

  v61 = *MEMORY[0x277D85DE8];
}

- (void)requestCarrierSetups:(id)setups
{
  setupsCopy = setups;
  if (setupsCopy)
  {
    objc_initWeak(&location, self);
    v5 = +[TSCoreTelephonyClientCache sharedInstance];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __49__TSTransferCloudFlowModel_requestCarrierSetups___block_invoke;
    v14[3] = &unk_279B452E8;
    objc_copyWeak(&v16, &location);
    v14[4] = self;
    v15 = setupsCopy;
    [v5 getCarrierSetupWithCompletion:v14];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  else
  {
    v6 = _TSLogDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(TSTransferCloudFlowModel *)v6 requestCarrierSetups:v7, v8, v9, v10, v11, v12, v13];
    }
  }
}

void __49__TSTransferCloudFlowModel_requestCarrierSetups___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v6 = _TSLogDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v12 = v4;
      v13 = 2080;
      v14 = "[TSTransferCloudFlowModel requestCarrierSetups:]_block_invoke";
      _os_log_impl(&dword_262AA8000, v6, OS_LOG_TYPE_DEFAULT, "Carrier setup %@ @%s", buf, 0x16u);
    }

    objc_storeStrong(WeakRetained + 8, a2);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __49__TSTransferCloudFlowModel_requestCarrierSetups___block_invoke_44;
    v9[3] = &unk_279B44938;
    v7 = *(a1 + 32);
    v10 = *(a1 + 40);
    [v7 getWebsheetInfo:v4 completion:v9];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)filterCarrierSetupItems:(id)items
{
  v31 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  transferPlans = self->_transferPlans;
  plans = [itemsCopy plans];
  [(NSMutableArray *)transferPlans filteredPlansWithoutSODATether:plans];

  if (itemsCopy)
  {
    plans2 = [itemsCopy plans];
    v9 = [plans2 count];

    if (v9)
    {
      v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
      if ([TSFlowHelper hasTransferablePlanWithSameCarrierName:itemsCopy transferablePlans:self->_transferItems inBuddy:1 matchingSODACarrierWebsheetTransferPlanIndex:v10])
      {
        [(TSTransferCloudFlowModel *)self clearCarrierSetupItemsCache];
      }

      else
      {
        objc_storeStrong(&self->_carrierSetupItems, items);
      }

      v11 = [TSFlowHelper getAccountMemberTransferablePlanWithSameCarrierName:itemsCopy transferablePlans:self->_transferItems];

      v21 = v11;
      v12 = [TSFlowHelper sortIndexesInDescending:v11];
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v13 = [v12 countByEnumeratingWithState:&v22 objects:v30 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v23;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v23 != v15)
            {
              objc_enumerationMutation(v12);
            }

            unsignedIntegerValue = [*(*(&v22 + 1) + 8 * i) unsignedIntegerValue];
            v18 = _TSLogDomain();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              v19 = [(NSMutableArray *)self->_transferItems objectAtIndex:unsignedIntegerValue];
              *buf = 138412546;
              v27 = v19;
              v28 = 2080;
              v29 = "[TSTransferCloudFlowModel filterCarrierSetupItems:]";
              _os_log_impl(&dword_262AA8000, v18, OS_LOG_TYPE_DEFAULT, "Transferrable plan %@ will be removed from the list @%s", buf, 0x16u);
            }

            [(NSMutableArray *)self->_transferItems removeObjectAtIndex:unsignedIntegerValue];
          }

          v14 = [v12 countByEnumeratingWithState:&v22 objects:v30 count:16];
        }

        while (v14);
      }

      if ([(NSMutableArray *)self->_transferItems count])
      {
        [(TSTransferCloudFlowModel *)self clearCarrierSetupItemsCache];
      }
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)getWebsheetInfo:(id)info completion:(id)completion
{
  location[3] = *MEMORY[0x277D85DE8];
  infoCopy = info;
  completionCopy = completion;
  if (infoCopy)
  {
    objc_initWeak(location, self);
    plans = [(CTDisplayPlanList *)self->_carrierSetupItems plans];
    v9 = [plans count] > 1;

    if (v9)
    {
      v10 = _TSLogDomain();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(TSTransferCloudFlowModel *)v10 getWebsheetInfo:v11 completion:v12, v13, v14, v15, v16, v17];
      }
    }

    plans2 = [(CTDisplayPlanList *)self->_carrierSetupItems plans];
    v19 = [plans2 count] == 0;

    if (!v19)
    {
      v20 = +[TSCoreTelephonyClientCache sharedInstance];
      plans3 = [(CTDisplayPlanList *)self->_carrierSetupItems plans];
      v22 = [plans3 objectAtIndexedSubscript:0];
      plan = [v22 plan];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __55__TSTransferCloudFlowModel_getWebsheetInfo_completion___block_invoke;
      v26[3] = &unk_279B45310;
      objc_copyWeak(&v28, location);
      v27 = completionCopy;
      [v20 getWebsheetInfoForPlan:plan inBuddy:1 completion:v26];

      objc_destroyWeak(&v28);
    }

    objc_destroyWeak(location);
  }

  else
  {
    v24 = _TSLogDomain();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(location[0]) = 136315138;
      *(location + 4) = "[TSTransferCloudFlowModel getWebsheetInfo:completion:]";
      _os_log_impl(&dword_262AA8000, v24, OS_LOG_TYPE_DEFAULT, "No carrier setup items @%s", location, 0xCu);
    }

    completionCopy[2](completionCopy);
  }

  v25 = *MEMORY[0x277D85DE8];
}

void __55__TSTransferCloudFlowModel_getWebsheetInfo_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    objc_storeStrong(WeakRetained + 10, a2);
    objc_storeStrong(v9 + 11, a3);
  }

  else
  {
    v10 = _TSLogDomain();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __55__TSTransferCloudFlowModel_getWebsheetInfo_completion___block_invoke_cold_1(v10, v11, v12, v13, v14, v15, v16, v17);
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)requestCrossPlatformTransferPlanListWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    objc_initWeak(&location, self);
    v5 = MEMORY[0x2667315D0](completionCopy);
    v6 = +[TSCoreTelephonyClientCache sharedInstance];
    getCoreTelephonyClient = [v6 getCoreTelephonyClient];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __79__TSTransferCloudFlowModel_requestCrossPlatformTransferPlanListWithCompletion___block_invoke;
    v17[3] = &unk_279B45298;
    objc_copyWeak(&v19, &location);
    v8 = v5;
    v18 = v8;
    [getCoreTelephonyClient plansPendingCrossPlatformTransferWithCompletion:v17];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  else
  {
    v9 = _TSLogDomain();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(TSTransferCloudFlowModel *)v9 requestCrossPlatformTransferPlanListWithCompletion:v10, v11, v12, v13, v14, v15, v16];
    }
  }
}

void __79__TSTransferCloudFlowModel_requestCrossPlatformTransferPlanListWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v6)
    {
      v8 = _TSLogDomain();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __79__TSTransferCloudFlowModel_requestCrossPlatformTransferPlanListWithCompletion___block_invoke_cold_1();
      }
    }

    v9 = _TSLogDomain();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138412546;
      v21 = v5;
      v22 = 2080;
      v23 = "[TSTransferCloudFlowModel requestCrossPlatformTransferPlanListWithCompletion:]_block_invoke";
      _os_log_impl(&dword_262AA8000, v9, OS_LOG_TYPE_DEFAULT, "Cross platform transfer items %@ @%s", &v20, 0x16u);
    }

    v10 = v5;
    v11 = WeakRetained[9];
    WeakRetained[9] = v10;
  }

  else
  {
    v11 = _TSLogDomain();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __79__TSTransferCloudFlowModel_requestCrossPlatformTransferPlanListWithCompletion___block_invoke_cold_2(v11, v12, v13, v14, v15, v16, v17, v18);
    }
  }

  (*(*(a1 + 32) + 16))();
  v19 = *MEMORY[0x277D85DE8];
}

- (void)clearCarrierSetupItemsCache
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = _TSLogDomain();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[TSTransferCloudFlowModel clearCarrierSetupItemsCache]";
    _os_log_impl(&dword_262AA8000, v3, OS_LOG_TYPE_DEFAULT, "Clear carrier setup items cache @%s", &v8, 0xCu);
  }

  carrierSetupItems = self->_carrierSetupItems;
  self->_carrierSetupItems = 0;

  websheetUrl = self->_websheetUrl;
  self->_websheetUrl = 0;

  postdata = self->_postdata;
  self->_postdata = 0;

  v7 = *MEMORY[0x277D85DE8];
}

void __46__TSTransferCloudFlowModel_arePlansAvailable___block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]Self doesnt exist @%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __55__TSTransferCloudFlowModel_requestPlansWithCompletion___block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]Invalid self @%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)requestTransferPlans:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]Invalid completion @%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __49__TSTransferCloudFlowModel_requestTransferPlans___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_2(&dword_262AA8000, v0, v1, "[E]query bootstrap transfer plan error: %@ @%s", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __49__TSTransferCloudFlowModel_requestTransferPlans___block_invoke_38_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_2(&dword_262AA8000, v0, v1, "[E]error: %@ @%s", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __49__TSTransferCloudFlowModel_requestTransferPlans___block_invoke_38_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]Self doesnt exist @%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)filterTransferPlans:(os_log_t)log .cold.1(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "[TSTransferCloudFlowModel filterTransferPlans:]";
  _os_log_debug_impl(&dword_262AA8000, log, OS_LOG_TYPE_DEBUG, "[Db] transferable plan cannot proceed via cloud flow @%s", buf, 0xCu);
}

- (void)filterTransferPlans:(os_log_t)log .cold.2(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "[TSTransferCloudFlowModel filterTransferPlans:]";
  _os_log_error_impl(&dword_262AA8000, log, OS_LOG_TYPE_ERROR, "[E]invalid CTRemotePlan @%s", buf, 0xCu);
}

- (void)filterTransferPlans:(os_log_t)log .cold.3(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[TSTransferCloudFlowModel filterTransferPlans:]";
  _os_log_debug_impl(&dword_262AA8000, log, OS_LOG_TYPE_DEBUG, "[Db] no eligible plan to transfer in buddy @%s", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)requestCarrierSetups:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]Invalid completion @%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)getWebsheetInfo:(uint64_t)a3 completion:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]Wrong number of carrier setup items on server @%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __55__TSTransferCloudFlowModel_getWebsheetInfo_completion___block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]Self doesnt exist @%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)requestCrossPlatformTransferPlanListWithCompletion:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]Invalid completion @%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __79__TSTransferCloudFlowModel_requestCrossPlatformTransferPlanListWithCompletion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_2(&dword_262AA8000, v0, v1, "[E]%@ @%s", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __79__TSTransferCloudFlowModel_requestCrossPlatformTransferPlanListWithCompletion___block_invoke_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]Self doesnt exist @%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end