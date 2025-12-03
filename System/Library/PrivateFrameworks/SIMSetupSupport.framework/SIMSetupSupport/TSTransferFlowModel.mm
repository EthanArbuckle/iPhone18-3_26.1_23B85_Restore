@interface TSTransferFlowModel
+ (id)sharedInstance;
- (BOOL)shouldShowTransferredPane;
- (TSTransferFlowModel)init;
- (TSTransferFlowModel)initWithIsStandaloneProximityTransfer:(BOOL)transfer transferBackPlan:(id)plan;
- (void)bootstrap:(id)bootstrap isUsingPreSharedKey:(BOOL)key completion:(id)completion;
- (void)clearCarrierSetupItemsCache;
- (void)establishReconnectionCredentials:(id)credentials completion:(id)completion;
- (void)filterCarrierSetupItems:(id)items;
- (void)filterTransferPlans:(id)plans;
- (void)forceRecheckTransferableAndPendingInstallPlans;
- (void)getWebsheetInfo:(id)info completion:(id)completion;
- (void)requestCarrierSetups:(id)setups;
- (void)requestPendingInstallPlans:(id)plans;
- (void)requestTransferPlans:(id)plans;
- (void)shouldShowTransferPlans:(id)plans sourceOSVersion:(id)version isPostMigrationFlow:(BOOL)flow transferItems:(id)items completion:(id)completion;
@end

@implementation TSTransferFlowModel

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[TSTransferFlowModel sharedInstance];
  }

  v3 = sharedInstance_sModel;

  return v3;
}

uint64_t __37__TSTransferFlowModel_sharedInstance__block_invoke()
{
  sharedInstance_sModel = objc_alloc_init(TSTransferFlowModel);

  return MEMORY[0x2821F96F8]();
}

- (TSTransferFlowModel)init
{
  v14.receiver = self;
  v14.super_class = TSTransferFlowModel;
  v2 = [(TSTransferFlowModel *)&v14 init];
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

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    simsetupD2dInfo = v2->_simsetupD2dInfo;
    v2->_simsetupD2dInfo = dictionary2;
  }

  return v2;
}

- (TSTransferFlowModel)initWithIsStandaloneProximityTransfer:(BOOL)transfer transferBackPlan:(id)plan
{
  planCopy = plan;
  v8 = [(TSTransferFlowModel *)self init];
  v9 = v8;
  if (v8)
  {
    v8->_isStandaloneProximityTransfer = transfer;
    objc_storeStrong(&v8->_transferBackPlan, plan);
  }

  return v9;
}

void __147__TSTransferFlowModel_arePlansAvailable_transferablePlanOnSource_bootstrapOnly_sourceOSVersion_isPostMigrationFlow_isUsingPreSharedKey_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v34 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (*(a1 + 48) == 1)
    {
      v11 = _TSLogDomain();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v32 = 136315138;
        v33 = "[TSTransferFlowModel arePlansAvailable:transferablePlanOnSource:bootstrapOnly:sourceOSVersion:isPostMigrationFlow:isUsingPreSharedKey:completion:]_block_invoke";
        _os_log_impl(&dword_262AA8000, v11, OS_LOG_TYPE_DEFAULT, "Clear pending install plans & transfer plans flag @%s", &v32, 0xCu);
      }

      WeakRetained[8] = 0;
      WeakRetained[17] = 0;
    }

    if (v7 && [v7 count])
    {
      goto LABEL_14;
    }

    if (v8)
    {
      v12 = [v8 plans];
      if (v12)
      {
        v13 = v12;
        v14 = [v8 plans];
        v15 = [v14 count];

        if (v15)
        {
          goto LABEL_14;
        }
      }
    }

    if (!v9)
    {
      goto LABEL_18;
    }

    v16 = [v9 plans];
    if (!v16)
    {
      goto LABEL_18;
    }

    v17 = v16;
    v18 = [v9 plans];
    v19 = [v18 count];

    if (v19)
    {
LABEL_14:
      v20 = [WeakRetained requestCompletion];
      v21 = v20[2];
    }

    else
    {
LABEL_18:
      v30 = [MEMORY[0x277CF96D8] sharedManager];
      [v30 getSupportedFlowTypes];

      v20 = [WeakRetained requestCompletion];
      v21 = v20[2];
    }

    v21();
  }

  else
  {
    v22 = _TSLogDomain();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      __147__TSTransferFlowModel_arePlansAvailable_transferablePlanOnSource_bootstrapOnly_sourceOSVersion_isPostMigrationFlow_isUsingPreSharedKey_completion___block_invoke_cold_1(v22, v23, v24, v25, v26, v27, v28, v29);
    }

    (*(*(a1 + 32) + 16))();
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)bootstrap:(id)bootstrap isUsingPreSharedKey:(BOOL)key completion:(id)completion
{
  if (!self->_isBootstrapTriggerred)
  {
    self->_isBootstrapTriggerred = 1;
    if (key)
    {
      v7 = 6;
    }

    else if (self->_isStandaloneProximityTransfer)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }

    completionCopy = completion;
    bootstrapCopy = bootstrap;
    v10 = +[TSCoreTelephonyClientCache sharedInstance];
    [v10 bootstrapPlanTransferUsingMessageSession:bootstrapCopy flowType:v7 completion:completionCopy];
  }
}

- (void)filterTransferPlans:(id)plans
{
  v78 = *MEMORY[0x277D85DE8];
  plansCopy = plans;
  [(NSMutableArray *)self->_transferItems removeAllObjects];
  [(NSMutableArray *)self->_transferPlans removeAllObjects];
  if (plansCopy)
  {
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v47 = plansCopy;
    obj = [plansCopy devices];
    v50 = [obj countByEnumeratingWithState:&v61 objects:v77 count:16];
    if (v50)
    {
      v49 = *v62;
      do
      {
        v5 = 0;
        do
        {
          if (*v62 != v49)
          {
            objc_enumerationMutation(obj);
          }

          v51 = v5;
          v6 = *(*(&v61 + 1) + 8 * v5);
          v57 = 0u;
          v58 = 0u;
          v59 = 0u;
          v60 = 0u;
          v52 = v6;
          remoteDisplayPlans = [v6 remoteDisplayPlans];
          v8 = [remoteDisplayPlans countByEnumeratingWithState:&v57 objects:v76 count:16];
          if (v8)
          {
            v9 = v8;
            v10 = *v58;
            do
            {
              for (i = 0; i != v9; ++i)
              {
                if (*v58 != v10)
                {
                  objc_enumerationMutation(remoteDisplayPlans);
                }

                v12 = *(*(&v57 + 1) + 8 * i);
                if ([v12 isNotEligibleActivationPolicyMismatchPlan])
                {
                  [(TSTransferFlowModel *)self setIsActivationPolicyMismatch:1];
                }

                plan = [v12 plan];

                if (!plan)
                {
                  v26 = _TSLogDomain();
                  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
                  {
                    [(TSTransferFlowModel *)v74 filterTransferPlans:v26];
                  }

                  goto LABEL_40;
                }

                plan2 = [v12 plan];
                objc_opt_class();
                isKindOfClass = objc_opt_isKindOfClass();

                if ((isKindOfClass & 1) == 0)
                {
                  v26 = _TSLogDomain();
                  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
                  {
                    plan3 = [v12 plan];
                    *buf = 138412546;
                    v67 = plan3;
                    v68 = 2080;
                    v69 = "[TSTransferFlowModel filterTransferPlans:]";
                    _os_log_error_impl(&dword_262AA8000, v26, OS_LOG_TYPE_ERROR, "[E]%@ is not a CTRemotePlan @%s", buf, 0x16u);
                  }

                  goto LABEL_40;
                }

                transferBackPlan = self->_transferBackPlan;
                if (transferBackPlan)
                {
                  phoneNumber = [transferBackPlan phoneNumber];
                  phoneNumber2 = [v12 phoneNumber];
                  v19 = [phoneNumber isEqualToPhoneNumber:phoneNumber2];

                  if (!v19)
                  {
                    continue;
                  }

                  v20 = _TSLogDomain();
                  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
                  {
                    phoneNumber3 = [self->_transferBackPlan phoneNumber];
                    *buf = 138412546;
                    v67 = phoneNumber3;
                    v68 = 2080;
                    v69 = "[TSTransferFlowModel filterTransferPlans:]";
                    _os_log_impl(&dword_262AA8000, v20, OS_LOG_TYPE_DEFAULT, "find plan with same phone number : %@ @%s", buf, 0x16u);
                  }
                }

                [(NSMutableArray *)self->_transferPlans addObject:v12];
                if (([v12 isTransferablePlan] & 1) == 0)
                {
                  transferIneligibleItems = self->_transferIneligibleItems;
                  if (!transferIneligibleItems)
                  {
                    array = [MEMORY[0x277CBEB18] array];
                    v24 = self->_transferIneligibleItems;
                    self->_transferIneligibleItems = array;

                    transferIneligibleItems = self->_transferIneligibleItems;
                  }

                  self->_needOfferQRCodeOption = 1;
                  [(NSMutableArray *)transferIneligibleItems addObject:v12];
                }

                if (![v12 requireVisitStoreOnce] || !objc_msgSend(v12, "isTransferablePlan"))
                {
                  goto LABEL_39;
                }

                v25 = [TSUtilities getStoreVisitStatusForPlan:v12 cache:self->_storeVisitedMap];
                v26 = v25;
                if (!v25)
                {
                  goto LABEL_37;
                }

                if (([v25 BOOLValue]& 1) == 0)
                {
                  if (+[TSUtilities inBuddy])
                  {
                    v27 = _TSLogDomain();
                    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
                    {
                      identifier = [v12 identifier];
                      *buf = 138412546;
                      v67 = identifier;
                      v68 = 2080;
                      v69 = "[TSTransferFlowModel filterTransferPlans:]";
                      _os_log_impl(&dword_262AA8000, v27, OS_LOG_TYPE_DEFAULT, "user explicitly mentioned he/she has not visited store, plan (%@) is not able to transfer for now. @%s", buf, 0x16u);
                    }

                    goto LABEL_40;
                  }

LABEL_37:
                  [(NSMutableArray *)self->_requireStoreVisitItems addObject:v12];
                }

LABEL_39:
                v72[0] = @"planItem";
                v72[1] = @"deviceInfo";
                v73[0] = v12;
                v73[1] = v52;
                v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v73 forKeys:v72 count:2];
                [(NSMutableArray *)self->_transferItems addObject:v26];
LABEL_40:
              }

              v9 = [remoteDisplayPlans countByEnumeratingWithState:&v57 objects:v76 count:16];
            }

            while (v9);
          }

          v5 = v51 + 1;
        }

        while (v51 + 1 != v50);
        v50 = [obj countByEnumeratingWithState:&v61 objects:v77 count:16];
      }

      while (v50);
    }

    v30 = _TSLogDomain();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = [(NSMutableArray *)self->_transferItems count];
      transferItems = self->_transferItems;
      *buf = 134218498;
      v67 = v31;
      v68 = 2112;
      v69 = transferItems;
      v70 = 2080;
      v71 = "[TSTransferFlowModel filterTransferPlans:]";
      _os_log_impl(&dword_262AA8000, v30, OS_LOG_TYPE_DEFAULT, "transfer plans [%lu] : %@ @%s", buf, 0x20u);
    }

    plansCopy = v47;
    if ([(NSMutableArray *)self->_transferItems count]!= 1)
    {
      goto LABEL_53;
    }

    v33 = [(NSMutableArray *)self->_transferItems objectAtIndex:0];
    v34 = [v33 objectForKeyedSubscript:@"planItem"];
    transferCapability = [v34 transferCapability];
    v36 = transferCapability;
    if (transferCapability <= 6 && ((1 << transferCapability) & 0x68) != 0)
    {
      self->_showTransferredPane = 1;
    }

    if (v36 > 6 || ((1 << v36) & 0x68) == 0)
    {
LABEL_53:
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v37 = self->_transferItems;
      v38 = [(NSMutableArray *)v37 countByEnumeratingWithState:&v53 objects:v65 count:16];
      if (v38)
      {
        v39 = v38;
        v40 = *v54;
        do
        {
          v41 = 0;
          do
          {
            if (*v54 != v40)
            {
              objc_enumerationMutation(v37);
            }

            v42 = [*(*(&v53 + 1) + 8 * v41) objectForKeyedSubscript:@"planItem"];
            transferCapability2 = [v42 transferCapability];
            if (transferCapability2 > 0x14 || ((1 << transferCapability2) & 0x1FF683) == 0 && (transferCapability2 != 8 || !+[TSUtilities inBuddy](TSUtilities, "inBuddy")) || self->_isStandaloneProximityTransfer && [v42 isTransferIneligiblePlan])
            {

              goto LABEL_74;
            }

            ++v41;
          }

          while (v39 != v41);
          v44 = [(NSMutableArray *)v37 countByEnumeratingWithState:&v53 objects:v65 count:16];
          v39 = v44;
        }

        while (v44);
      }

      v45 = _TSLogDomain();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
      {
        [TSTransferFlowModel filterTransferPlans:v45];
      }

      [(NSMutableArray *)self->_transferItems removeAllObjects];
    }
  }

  else
  {
    v37 = _TSLogDomain();
    if (os_log_type_enabled(&v37->super.super, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v67 = "[TSTransferFlowModel filterTransferPlans:]";
      _os_log_impl(&dword_262AA8000, &v37->super.super, OS_LOG_TYPE_DEFAULT, "no remote plans @%s", buf, 0xCu);
    }

LABEL_74:
  }

  v46 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldShowTransferredPane
{
  if (self->_showTransferredPane)
  {
    plans = [(CTDisplayPlanList *)self->_pendingInstallItems plans];
    if ([plans count])
    {
      LOBYTE(v4) = 0;
    }

    else
    {
      v4 = ![(TSTransferFlowModel *)self shouldShowCarrierSetupPane];
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)establishReconnectionCredentials:(id)credentials completion:(id)completion
{
  completionCopy = completion;
  credentialsCopy = credentials;
  v8 = +[TSCoreTelephonyClientCache sharedInstance];
  getCoreTelephonyClient = [v8 getCoreTelephonyClient];
  [getCoreTelephonyClient establishReconnectionCredentialsUsingMessageSession:credentialsCopy completion:completionCopy];
}

- (void)requestTransferPlans:(id)plans
{
  plansCopy = plans;
  v5 = plansCopy;
  if (self->_areTransferPlansReady)
  {
    (*(plansCopy + 2))(plansCopy);
  }

  else
  {
    objc_initWeak(&location, self);
    v6 = +[TSCoreTelephonyClientCache sharedInstance];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __44__TSTransferFlowModel_requestTransferPlans___block_invoke;
    v7[3] = &unk_279B45248;
    objc_copyWeak(&v9, &location);
    v8 = v5;
    [v6 transferPlanListWithCompletion:v7];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __44__TSTransferFlowModel_requestTransferPlans___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
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
        __44__TSTransferFlowModel_requestTransferPlans___block_invoke_cold_1();
      }

      v11[16] = [v9 code] == 61;
      v11[19] = 1;
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
                    v38 = "[TSTransferFlowModel requestTransferPlans:]_block_invoke";
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
      __44__TSTransferFlowModel_requestTransferPlans___block_invoke_cold_2(v13, v14, v15, v16, v17, v18, v19, v20);
    }
  }

  (*(*(a1 + 32) + 16))();

  v32 = *MEMORY[0x277D85DE8];
}

- (void)requestPendingInstallPlans:(id)plans
{
  v15 = *MEMORY[0x277D85DE8];
  plansCopy = plans;
  v5 = plansCopy;
  if (self->_hasPendingInstallPlansQueried)
  {
    goto LABEL_4;
  }

  if (self->_isStandaloneProximityTransfer)
  {
    self->_hasPendingInstallPlansQueried = 1;
LABEL_4:
    (*(plansCopy + 2))(plansCopy);
    goto LABEL_8;
  }

  objc_initWeak(&location, self);
  v6 = _TSLogDomain();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v14 = "[TSTransferFlowModel requestPendingInstallPlans:]";
    _os_log_impl(&dword_262AA8000, v6, OS_LOG_TYPE_DEFAULT, "_requestPendingInstallItems @%s", buf, 0xCu);
  }

  v7 = +[TSCoreTelephonyClientCache sharedInstance];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __50__TSTransferFlowModel_requestPendingInstallPlans___block_invoke;
  v9[3] = &unk_279B452C0;
  objc_copyWeak(&v11, &location);
  v10 = v5;
  [v7 pendingInstallItemsWithCompletion:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
LABEL_8:

  v8 = *MEMORY[0x277D85DE8];
}

void __50__TSTransferFlowModel_requestPendingInstallPlans___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = _TSLogDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412546;
      v9 = v4;
      v10 = 2080;
      v11 = "[TSTransferFlowModel requestPendingInstallPlans:]_block_invoke";
      _os_log_impl(&dword_262AA8000, v6, OS_LOG_TYPE_DEFAULT, "pending plans: %@ @%s", &v8, 0x16u);
    }

    objc_storeStrong(WeakRetained + 7, a2);
  }

  (*(*(a1 + 32) + 16))();

  v7 = *MEMORY[0x277D85DE8];
}

- (void)filterCarrierSetupItems:(id)items
{
  v31 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v6 = itemsCopy;
  if (itemsCopy)
  {
    if (self->_areTransferPlansReady)
    {
      plans = [itemsCopy plans];
      v8 = [plans count];

      if (v8)
      {
        transferPlans = self->_transferPlans;
        plans2 = [v6 plans];
        [(NSMutableArray *)transferPlans filteredPlansWithoutSODATether:plans2];

        v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
        if ([TSFlowHelper hasTransferablePlanWithSameCarrierName:v6 transferablePlans:self->_transferItems inBuddy:1 matchingSODACarrierWebsheetTransferPlanIndex:v11])
        {
          [(TSTransferFlowModel *)self clearCarrierSetupItemsCache];
        }

        else
        {
          objc_storeStrong(&self->_carrierSetupItems, items);
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
                  v29 = "[TSTransferFlowModel filterCarrierSetupItems:]";
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
            [(TSTransferFlowModel *)self clearCarrierSetupItemsCache];
          }

          v11 = v21;
        }
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
        [(TSTransferFlowModel *)v10 getWebsheetInfo:v11 completion:v12, v13, v14, v15, v16, v17];
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
      v26[2] = __50__TSTransferFlowModel_getWebsheetInfo_completion___block_invoke;
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
      *(location + 4) = "[TSTransferFlowModel getWebsheetInfo:completion:]";
      _os_log_impl(&dword_262AA8000, v24, OS_LOG_TYPE_DEFAULT, "No carrier setup items @%s", location, 0xCu);
    }

    completionCopy[2](completionCopy);
  }

  v25 = *MEMORY[0x277D85DE8];
}

void __50__TSTransferFlowModel_getWebsheetInfo_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    objc_storeStrong(WeakRetained + 9, a2);
    objc_storeStrong(v9 + 10, a3);
  }

  else
  {
    v10 = _TSLogDomain();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __50__TSTransferFlowModel_getWebsheetInfo_completion___block_invoke_cold_1(v10, v11, v12, v13, v14, v15, v16, v17);
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)requestCarrierSetups:(id)setups
{
  setupsCopy = setups;
  v5 = setupsCopy;
  if (self->_hasCarrierSetupItemsQueried)
  {
    (*(setupsCopy + 2))(setupsCopy);
  }

  else
  {
    objc_initWeak(&location, self);
    v6 = +[TSCoreTelephonyClientCache sharedInstance];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __44__TSTransferFlowModel_requestCarrierSetups___block_invoke;
    v7[3] = &unk_279B452E8;
    objc_copyWeak(&v9, &location);
    v7[4] = self;
    v8 = v5;
    [v6 getCarrierSetupWithCompletion:v7];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __44__TSTransferFlowModel_requestCarrierSetups___block_invoke(uint64_t a1, void *a2)
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
      v14 = "[TSTransferFlowModel requestCarrierSetups:]_block_invoke";
      _os_log_impl(&dword_262AA8000, v6, OS_LOG_TYPE_DEFAULT, "Carrier setup %@ @%s", buf, 0x16u);
    }

    objc_storeStrong(WeakRetained + 8, a2);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __44__TSTransferFlowModel_requestCarrierSetups___block_invoke_46;
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

- (void)clearCarrierSetupItemsCache
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = _TSLogDomain();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[TSTransferFlowModel clearCarrierSetupItemsCache]";
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

- (void)forceRecheckTransferableAndPendingInstallPlans
{
  self->_areTransferPlansReady = 0;
  self->_hasPendingInstallPlansQueried = 0;
  self->_hasCarrierSetupItemsQueried = 0;
}

- (void)shouldShowTransferPlans:(id)plans sourceOSVersion:(id)version isPostMigrationFlow:(BOOL)flow transferItems:(id)items completion:(id)completion
{
  flowCopy = flow;
  v44 = *MEMORY[0x277D85DE8];
  plansCopy = plans;
  versionCopy = version;
  itemsCopy = items;
  completionCopy = completion;
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v24 = _TSLogDomain();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *v41 = "[TSTransferFlowModel shouldShowTransferPlans:sourceOSVersion:isPostMigrationFlow:transferItems:completion:]";
      _os_log_impl(&dword_262AA8000, v24, OS_LOG_TYPE_DEFAULT, "BuddyPostMigrationFlow feature disabled @%s", buf, 0xCu);
    }

    goto LABEL_14;
  }

  selfCopy = self;
  v32 = itemsCopy;
  v33 = versionCopy;
  v16 = plansCopy;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v17 = itemsCopy;
  v18 = [v17 countByEnumeratingWithState:&v36 objects:buf count:16];
  if (!v18)
  {
LABEL_10:

LABEL_16:
    completionCopy[2](completionCopy, 1);
    plansCopy = v16;
LABEL_17:
    itemsCopy = v32;
    versionCopy = v33;
    goto LABEL_18;
  }

  v19 = v18;
  v20 = *v37;
LABEL_4:
  v21 = 0;
  while (1)
  {
    if (*v37 != v20)
    {
      objc_enumerationMutation(v17);
    }

    v22 = [*(*(&v36 + 1) + 8 * v21) objectForKeyedSubscript:{@"planItem", selfCopy}];
    isTransferablePlan = [v22 isTransferablePlan];

    if (isTransferablePlan)
    {
      break;
    }

    if (v19 == ++v21)
    {
      v19 = [v17 countByEnumeratingWithState:&v36 objects:buf count:16];
      if (v19)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  if (selfCopy->_isStandaloneProximityTransfer)
  {
    goto LABEL_16;
  }

  plansCopy = v16;
  itemsCopy = v32;
  versionCopy = v33;
  if (flowCopy || !v33 || [TSUtilities compareProductVersion:v33 toProductVersion:@"26.0"]== -1)
  {
LABEL_14:
    completionCopy[2](completionCopy, 1);
    goto LABEL_18;
  }

  v26 = +[TSCoreTelephonyClientCache sharedInstance];
  usingBootstrapDataService = [v26 usingBootstrapDataService];

  v28 = +[TSUtilities isWifiAvailable];
  v29 = _TSLogDomain();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109634;
    *v41 = usingBootstrapDataService;
    *&v41[4] = 1024;
    *&v41[6] = v28;
    v42 = 2080;
    v43 = "[TSTransferFlowModel shouldShowTransferPlans:sourceOSVersion:isPostMigrationFlow:transferItems:completion:]";
    _os_log_impl(&dword_262AA8000, v29, OS_LOG_TYPE_DEFAULT, "Using bootstrap: %d, on wifi:%d @%s", buf, 0x18u);
  }

  if (!v28 && (usingBootstrapDataService & 1) != 0)
  {
    completionCopy[2](completionCopy, 1);
    goto LABEL_17;
  }

  v30 = _TSLogDomain();
  itemsCopy = v32;
  versionCopy = v33;
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *v41 = "[TSTransferFlowModel shouldShowTransferPlans:sourceOSVersion:isPostMigrationFlow:transferItems:completion:]";
    _os_log_impl(&dword_262AA8000, v30, OS_LOG_TYPE_DEFAULT, "Establishing reconnection credentials @%s", buf, 0xCu);
  }

  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __108__TSTransferFlowModel_shouldShowTransferPlans_sourceOSVersion_isPostMigrationFlow_transferItems_completion___block_invoke;
  v34[3] = &unk_279B44DB8;
  v35 = completionCopy;
  [(TSTransferFlowModel *)selfCopy establishReconnectionCredentials:v16 completion:v34];

LABEL_18:
  v25 = *MEMORY[0x277D85DE8];
}

void __142__TSTransferFlowModel_requestPlans_transferablePlanOnSource_bootstrapOnly_sourceOSVersion_isPostMigrationFlow_isUsingPreSharedKey_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (*(*(*(a1 + 56) + 8) + 40))
  {
    [*(a1 + 32) filterCarrierSetupItems:v9];
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    v13 = *(a1 + 72);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __142__TSTransferFlowModel_requestPlans_transferablePlanOnSource_bootstrapOnly_sourceOSVersion_isPostMigrationFlow_isUsingPreSharedKey_completion___block_invoke_2;
    v14[3] = &unk_279B455A0;
    v19 = *(a1 + 56);
    v15 = v7;
    v16 = v8;
    v17 = v9;
    v18 = WeakRetained;
    [WeakRetained shouldShowTransferPlans:v11 sourceOSVersion:v12 isPostMigrationFlow:v13 transferItems:v15 completion:v14];
  }
}

void __142__TSTransferFlowModel_requestPlans_transferablePlanOnSource_bootstrapOnly_sourceOSVersion_isPostMigrationFlow_isUsingPreSharedKey_completion___block_invoke_2(void *a1, int a2)
{
  if (a2)
  {
    v3 = *(*(a1[8] + 8) + 40);
    v4 = a1[4];
    v5 = a1[5];
    v6 = a1[6];
    v7 = *(*(*(a1[8] + 8) + 40) + 16);
  }

  else
  {
    v8 = a1[7];
    v9 = *(v8 + 24);
    *(v8 + 24) = 0;

    v10 = a1[7];
    v11 = *(v10 + 48);
    *(v10 + 48) = 0;

    v12 = a1[7];
    v13 = *(v12 + 40);
    *(v12 + 40) = 0;

    v14 = a1[7];
    v15 = *(v14 + 32);
    *(v14 + 32) = 0;

    v16 = a1[5];
    v17 = a1[6];
    v7 = *(*(*(a1[8] + 8) + 40) + 16);
  }

  v7();
  v18 = *(a1[8] + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = 0;
}

void __142__TSTransferFlowModel_requestPlans_transferablePlanOnSource_bootstrapOnly_sourceOSVersion_isPostMigrationFlow_isUsingPreSharedKey_completion___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    WeakRetained[17] = 1;
    if ([WeakRetained arePlansRequested])
    {
      v3 = *(a1 + 32);
      v4 = [v7 transferItems];
      v5 = [v7 pendingInstallItems];
      v6 = [v7 carrierSetupItems];
      (*(v3 + 16))(v3, v4, v5, v6);
    }
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __142__TSTransferFlowModel_requestPlans_transferablePlanOnSource_bootstrapOnly_sourceOSVersion_isPostMigrationFlow_isUsingPreSharedKey_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (v3 || *(a1 + 48) == 1)
    {
      WeakRetained[17] = 1;
      WeakRetained[10] = 1;
      WeakRetained[19] = 1;
      if ([WeakRetained arePlansRequested])
      {
        v6 = *(a1 + 32);
        v7 = [v5 transferItems];
        v8 = [v5 pendingInstallItems];
        v9 = [v5 carrierSetupItems];
        (*(v6 + 16))(v6, v7, v8, v9);
      }
    }

    else
    {
      WeakRetained[10] = 1;
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __142__TSTransferFlowModel_requestPlans_transferablePlanOnSource_bootstrapOnly_sourceOSVersion_isPostMigrationFlow_isUsingPreSharedKey_completion___block_invoke_5;
      v10[3] = &unk_279B44C58;
      objc_copyWeak(&v12, (a1 + 40));
      v11 = *(a1 + 32);
      [v5 requestTransferPlans:v10];

      objc_destroyWeak(&v12);
    }
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __142__TSTransferFlowModel_requestPlans_transferablePlanOnSource_bootstrapOnly_sourceOSVersion_isPostMigrationFlow_isUsingPreSharedKey_completion___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    WeakRetained[17] = 1;
    if ([WeakRetained arePlansRequested])
    {
      v3 = *(a1 + 32);
      v4 = [v7 transferItems];
      v5 = [v7 pendingInstallItems];
      v6 = [v7 carrierSetupItems];
      (*(v3 + 16))(v3, v4, v5, v6);
    }
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __142__TSTransferFlowModel_requestPlans_transferablePlanOnSource_bootstrapOnly_sourceOSVersion_isPostMigrationFlow_isUsingPreSharedKey_completion___block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    WeakRetained[11] = 1;
    if ([WeakRetained arePlansRequested])
    {
      v3 = *(a1 + 32);
      v4 = [v7 transferItems];
      v5 = [v7 pendingInstallItems];
      v6 = [v7 carrierSetupItems];
      (*(v3 + 16))(v3, v4, v5, v6);
    }
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __142__TSTransferFlowModel_requestPlans_transferablePlanOnSource_bootstrapOnly_sourceOSVersion_isPostMigrationFlow_isUsingPreSharedKey_completion___block_invoke_51(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    WeakRetained[8] = 1;
    if ([WeakRetained arePlansRequested])
    {
      v3 = *(a1 + 32);
      v4 = [v7 transferItems];
      v5 = [v7 pendingInstallItems];
      v6 = [v7 carrierSetupItems];
      (*(v3 + 16))(v3, v4, v5, v6);
    }
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __147__TSTransferFlowModel_arePlansAvailable_transferablePlanOnSource_bootstrapOnly_sourceOSVersion_isPostMigrationFlow_isUsingPreSharedKey_completion___block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]Self doesnt exist @%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)filterTransferPlans:(os_log_t)log .cold.1(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "[TSTransferFlowModel filterTransferPlans:]";
  _os_log_error_impl(&dword_262AA8000, log, OS_LOG_TYPE_ERROR, "[E]invalid CTRemotePlan @%s", buf, 0xCu);
}

- (void)filterTransferPlans:(os_log_t)log .cold.2(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[TSTransferFlowModel filterTransferPlans:]";
  _os_log_debug_impl(&dword_262AA8000, log, OS_LOG_TYPE_DEBUG, "[Db] no eligible plan to transfer in buddy @%s", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __44__TSTransferFlowModel_requestTransferPlans___block_invoke_cold_1()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v3 = "[TSTransferFlowModel requestTransferPlans:]_block_invoke";
  _os_log_error_impl(&dword_262AA8000, v0, OS_LOG_TYPE_ERROR, "[E]error: %@ @%s", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

void __44__TSTransferFlowModel_requestTransferPlans___block_invoke_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]Self doesnt exist @%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)getWebsheetInfo:(uint64_t)a3 completion:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]Wrong number of carrier setup items on server @%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __50__TSTransferFlowModel_getWebsheetInfo_completion___block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]Self doesnt exist @%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end