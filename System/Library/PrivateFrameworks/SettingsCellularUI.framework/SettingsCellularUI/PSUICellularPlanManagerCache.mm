@interface PSUICellularPlanManagerCache
+ (PSUICellularPlanManagerCache)sharedInstance;
- (BOOL)hasSubscriptions;
- (BOOL)isActivationCodeFlowSupported;
- (BOOL)isAnyLocalFlowTypeSupported;
- (BOOL)isAnyPlanActivating;
- (BOOL)isBootstrapRecommended;
- (BOOL)isCarrierItemBeingFetched;
- (BOOL)isCarrierItemFlowSupported;
- (BOOL)isMultipleDataPlanSupportAvailable;
- (BOOL)isSelectedPlanActivating;
- (BOOL)isSingleActivationCodeFlowSupported;
- (BOOL)isUsingBootstrapDataService;
- (BOOL)isWebUIFlowSupported;
- (BOOL)shouldShowOldUI;
- (BOOL)shouldShowPlanSelector;
- (CTBootstrapState)getBootstrapState;
- (CTCellularPlanItem)selectedPlanItem;
- (CTDisplayPlanList)pendingInstallPlans;
- (CTDisplayPlanList)remotePlans;
- (NSArray)carrierItems;
- (NSArray)danglingPlanItems;
- (NSArray)embeddedPlanItems;
- (NSArray)planItems;
- (NSArray)plansPendingTransfer;
- (PSUICellularPlanManagerCache)initWithCTClient:(id)client;
- (id)danglingPlanFromReference:(id)reference;
- (id)planFromReference:(id)reference;
- (id)planFromReferenceSafe:(id)safe;
- (id)planPendingTransferFromReference:(id)reference;
- (id)predefinedLabels;
- (id)subscriptionContextForPlanItem:(id)item cachedSubscriptionContexts:(id)contexts;
- (void)_carrierInfoDidChange;
- (void)_fetchPlanItemsIfNeeded;
- (void)_invalidatePlanItemsCache;
- (void)_mcSettingsDidChange;
- (void)_planInfoDidChange;
- (void)clearCachedCarrierItemsAndRemotePlans;
- (void)dealloc;
- (void)didEnablePlanItems:(id)items;
- (void)didSelectDanglingPlan:(id)plan;
- (void)plansDidUpdate:(id)update;
- (void)setLabel:(id)label forPlan:(id)plan;
- (void)setSelectedPlanItem:(id)item;
- (void)setSelectedPlanItemForData:(id)data;
@end

@implementation PSUICellularPlanManagerCache

+ (PSUICellularPlanManagerCache)sharedInstance
{
  if (qword_28156A7D0 != -1)
  {
    dispatch_once(&qword_28156A7D0, &__block_literal_global_22);
  }

  v3 = _MergedGlobals_76;

  return v3;
}

void __46__PSUICellularPlanManagerCache_sharedInstance__block_invoke()
{
  v0 = [PSUICellularPlanManagerCache alloc];
  v1 = objc_alloc(MEMORY[0x277CC37B0]);
  v5 = [MEMORY[0x277D4D878] createCTClientSerialQueue:@"plan_manager_cache"];
  v2 = [v1 initWithQueue:v5];
  v3 = [(PSUICellularPlanManagerCache *)v0 initWithCTClient:v2];
  v4 = _MergedGlobals_76;
  _MergedGlobals_76 = v3;
}

- (PSUICellularPlanManagerCache)initWithCTClient:(id)client
{
  clientCopy = client;
  v15.receiver = self;
  v15.super_class = PSUICellularPlanManagerCache;
  v6 = [(PSUICellularPlanManagerCache *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_coreTelephonyClient, client);
    [(CoreTelephonyClient *)v7->_coreTelephonyClient setDelegate:v7];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel__planInfoDidChange name:*MEMORY[0x277CF9688] object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v7 selector:sel__carrierInfoDidChange name:*MEMORY[0x277CF9678] object:0];

    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter3 addObserver:v7 selector:sel__mcSettingsDidChange name:*MEMORY[0x277D25CA0] object:0];

    defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter4 addObserver:v7 selector:sel__mcSettingsDidChange name:*MEMORY[0x277D26148] object:0];

    defaultCenter5 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter5 addObserver:v7 selector:sel__planInfoDidChange name:*MEMORY[0x277CF96B0] object:0];

    defaultCenter6 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter6 addObserver:v7 selector:sel__fetchPlanItemsIfNeeded name:*MEMORY[0x277CF96A8] object:0];
  }

  return v7;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = PSUICellularPlanManagerCache;
  [(PSUICellularPlanManagerCache *)&v4 dealloc];
}

- (void)_mcSettingsDidChange
{
  getLogger = [(PSUICellularPlanManagerCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Querying due to MCEffectiveSettingsChangedNotification or MCProfileListChangedNotification", buf, 2u);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__PSUICellularPlanManagerCache__mcSettingsDidChange__block_invoke;
  block[3] = &unk_279BA9D58;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)_planInfoDidChange
{
  getLogger = [(PSUICellularPlanManagerCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Querying due to CTCellularPlanInfoDidChangeNotification", v4, 2u);
  }

  os_unfair_lock_lock(&planCacheLock);
  [(PSUICellularPlanManagerCache *)self _invalidatePlanItemsCache];
  [(PSUICellularPlanManagerCache *)self _fetchPlanItemsIfNeeded];
  os_unfair_lock_unlock(&planCacheLock);
}

- (void)_invalidatePlanItemsCache
{
  self->_cacheIsValid = 0;
  selectedPlanItem = self->_selectedPlanItem;
  self->_selectedPlanItem = 0;

  planItems = self->_planItems;
  self->_planItems = 0;

  danglingPlanItems = self->_danglingPlanItems;
  self->_danglingPlanItems = 0;

  plansPendingTransfer = self->_plansPendingTransfer;
  self->_plansPendingTransfer = 0;

  referenceMap = self->_referenceMap;
  self->_referenceMap = 0;

  cachedRemotePlans = self->_cachedRemotePlans;
  self->_cachedRemotePlans = 0;

  self->_remoteListFetchCompleted = 0;
}

- (void)_carrierInfoDidChange
{
  getLogger = [(PSUICellularPlanManagerCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Querying due to CTCarrierInfoDidChangeNotification", v6, 2u);
  }

  cachedCarrierItems = self->_cachedCarrierItems;
  self->_cachedCarrierItems = 0;

  self->_carrierListFetchInProgress = 0;
  carrierItems = [(PSUICellularPlanManagerCache *)self carrierItems];
}

- (void)_fetchPlanItemsIfNeeded
{
  v92 = *MEMORY[0x277D85DE8];
  if (self->_cacheIsValid)
  {
    goto LABEL_60;
  }

  p_selectedPlanItem = &self->_selectedPlanItem;
  selectedPlanItem = self->_selectedPlanItem;
  self->_selectedPlanItem = 0;

  planItems = self->_planItems;
  self->_planItems = 0;

  self->_hasSubscriptions = 0;
  self->_shouldShowOldUI = 1;
  *&self->_isWebUIFlowSupported = 0;
  mEMORY[0x277CF96D8] = [MEMORY[0x277CF96D8] sharedManager];
  v7 = [mEMORY[0x277CF96D8] planItemsShouldUpdate:0];
  v8 = self->_planItems;
  self->_planItems = v7;

  getLogger = [(PSUICellularPlanManagerCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    v10 = self->_planItems;
    *buf = 138412290;
    v85 = v10;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "fetched cellular plan items: %@", buf, 0xCu);
  }

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    mEMORY[0x277CF96D8]2 = [MEMORY[0x277CF96D8] sharedManager];
    v14 = [mEMORY[0x277CF96D8]2 danglingPlanItemsShouldUpdate:0];
    danglingPlanItems = self->_danglingPlanItems;
    self->_danglingPlanItems = v14;

    getLogger2 = [(PSUICellularPlanManagerCache *)self getLogger];
    if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_DEFAULT))
    {
      v17 = self->_danglingPlanItems;
      *buf = 138412290;
      v85 = v17;
      _os_log_impl(&dword_2658DE000, getLogger2, OS_LOG_TYPE_DEFAULT, "fetched dangling plan items: %@", buf, 0xCu);
    }
  }

  mEMORY[0x277CF96D8]3 = [MEMORY[0x277CF96D8] sharedManager];
  v83 = 0;
  v19 = [mEMORY[0x277CF96D8]3 getPlansPendingTransfer:&v83];
  v20 = v83;
  plansPendingTransfer = self->_plansPendingTransfer;
  self->_plansPendingTransfer = v19;

  getLogger3 = [(PSUICellularPlanManagerCache *)self getLogger];
  v23 = getLogger3;
  if (v20)
  {
    if (os_log_type_enabled(getLogger3, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v85 = v20;
      _os_log_error_impl(&dword_2658DE000, v23, OS_LOG_TYPE_ERROR, "unable to fetch plans pending transfer with error: %@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(getLogger3, OS_LOG_TYPE_DEFAULT))
  {
    v24 = self->_plansPendingTransfer;
    *buf = 138412290;
    v85 = v24;
    _os_log_impl(&dword_2658DE000, v23, OS_LOG_TYPE_DEFAULT, "fetched plans pending transfer: %@", buf, 0xCu);
  }

  v66 = v20;

  v25 = objc_opt_new();
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v26 = self->_plansPendingTransfer;
  v27 = [(NSArray *)v26 countByEnumeratingWithState:&v79 objects:v91 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v80;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v80 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v79 + 1) + 8 * i);
        v32 = [PSUICellularPlanUniversalReference referenceFromCellularPlanPendingTransfer:v31];
        [v25 setObject:v31 forKey:v32];
      }

      v28 = [(NSArray *)v26 countByEnumeratingWithState:&v79 objects:v91 count:16];
    }

    while (v28);
  }

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v33 = self->_danglingPlanItems;
  v34 = [(NSArray *)v33 countByEnumeratingWithState:&v75 objects:v90 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v76;
    do
    {
      for (j = 0; j != v35; ++j)
      {
        if (*v76 != v36)
        {
          objc_enumerationMutation(v33);
        }

        v38 = *(*(&v75 + 1) + 8 * j);
        v39 = [PSUICellularPlanUniversalReference referenceFromDanglingPlanItem:v38];
        [v25 setObject:v38 forKey:v39];
      }

      v35 = [(NSArray *)v33 countByEnumeratingWithState:&v75 objects:v90 count:16];
    }

    while (v35);
  }

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v40 = self->_planItems;
  v41 = [(NSArray *)v40 countByEnumeratingWithState:&v71 objects:v89 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v72;
    do
    {
      for (k = 0; k != v42; ++k)
      {
        if (*v72 != v43)
        {
          objc_enumerationMutation(v40);
        }

        v45 = *(*(&v71 + 1) + 8 * k);
        v46 = [PSUICellularPlanUniversalReference referenceFromPlanItem:v45];
        [v25 setObject:v45 forKey:v46];
      }

      v42 = [(NSArray *)v40 countByEnumeratingWithState:&v71 objects:v89 count:16];
    }

    while (v42);
  }

  objc_storeStrong(&self->_referenceMap, v25);
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v47 = self->_planItems;
  v48 = [(NSArray *)v47 countByEnumeratingWithState:&v67 objects:v88 count:16];
  if (v48)
  {
    v49 = v48;
    v50 = *v68;
    do
    {
      for (m = 0; m != v49; ++m)
      {
        if (*v68 != v50)
        {
          objc_enumerationMutation(v47);
        }

        v52 = *(*(&v67 + 1) + 8 * m);
        if ([v52 isSelected])
        {
          objc_storeStrong(p_selectedPlanItem, v52);
        }

        if ([v52 isBackedByCellularPlan])
        {
          self->_hasSubscriptions = 1;
        }
      }

      v49 = [(NSArray *)v47 countByEnumeratingWithState:&v67 objects:v88 count:16];
    }

    while (v49);
  }

  mEMORY[0x277CF96D8]4 = [MEMORY[0x277CF96D8] sharedManager];
  getSupportedFlowTypes = [mEMORY[0x277CF96D8]4 getSupportedFlowTypes];

  self->_shouldShowOldUI = (getSupportedFlowTypes & 0x8000) == 0;
  self->_isWebUIFlowSupported = getSupportedFlowTypes & 1;
  self->_isActivationCodeFlowSupported = (getSupportedFlowTypes & 2) != 0;
  if (getSupportedFlowTypes == 2)
  {
    currentDevice2 = [MEMORY[0x277D75418] currentDevice];
    v56 = v66;
    if ([currentDevice2 sf_isChinaRegionCellularDevice])
    {
      currentDevice3 = [MEMORY[0x277D75418] currentDevice];
      self->_isSingleActivationCodeFlowSupported = [currentDevice3 sf_isiPad];
    }

    else
    {
      self->_isSingleActivationCodeFlowSupported = 0;
    }

    isWebUIFlowSupported = self->_isWebUIFlowSupported;
    self->_isCarrierItemFlowSupported = 0;
    if (isWebUIFlowSupported)
    {
      goto LABEL_52;
    }

    v59 = 0;
    isActivationCodeFlowSupported = self->_isActivationCodeFlowSupported;
LABEL_54:
    v61 = isActivationCodeFlowSupported | (v59 != 0);
    goto LABEL_55;
  }

  self->_isSingleActivationCodeFlowSupported = 0;
  self->_isCarrierItemFlowSupported = (getSupportedFlowTypes & 0x20) != 0;
  v56 = v66;
  if ((getSupportedFlowTypes & 1) == 0)
  {
    isActivationCodeFlowSupported = getSupportedFlowTypes >> 1;
    v59 = getSupportedFlowTypes & 0x20;
    goto LABEL_54;
  }

LABEL_52:
  v61 = 1;
LABEL_55:
  self->_isAnyLocalFlowTypeSupported = v61 & 1;
  getLogger4 = [(PSUICellularPlanManagerCache *)self getLogger];
  if (os_log_type_enabled(getLogger4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v85 = getSupportedFlowTypes;
    _os_log_impl(&dword_2658DE000, getLogger4, OS_LOG_TYPE_DEFAULT, "supported flows: 0x%lx", buf, 0xCu);
  }

  self->_isMultipleDataPlanSupportAvailable = (getSupportedFlowTypes & 0xFFFFFFFFFFFF7FFFLL) != 0;
  self->_cacheIsValid = 1;
  getLogger5 = [(PSUICellularPlanManagerCache *)self getLogger];
  if (os_log_type_enabled(getLogger5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v85 = "[PSUICellularPlanManagerCache _fetchPlanItemsIfNeeded]";
    v86 = 2112;
    v87 = @"PSUICellularPlanChanged";
    _os_log_impl(&dword_2658DE000, getLogger5, OS_LOG_TYPE_DEFAULT, "%s posting notification %@", buf, 0x16u);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"PSUICellularPlanChanged" object:0 userInfo:0];

LABEL_60:
  v65 = *MEMORY[0x277D85DE8];
}

- (NSArray)planItems
{
  v10 = *MEMORY[0x277D85DE8];
  [(PSUICellularPlanManagerCache *)self _fetchPlanItemsIfNeeded];
  getLogger = [(PSUICellularPlanManagerCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(NSArray *)self->_planItems count];
    v8 = 134217984;
    v9 = v4;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "%lu plan items exist", &v8, 0xCu);
  }

  planItems = self->_planItems;
  v6 = *MEMORY[0x277D85DE8];

  return planItems;
}

- (NSArray)embeddedPlanItems
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  planItems = [(PSUICellularPlanManagerCache *)self planItems];
  v5 = [planItems countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(planItems);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 type] == 2 || objc_msgSend(v9, "type") == 3)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [planItems countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

- (NSArray)danglingPlanItems
{
  [(PSUICellularPlanManagerCache *)self _fetchPlanItemsIfNeeded];
  danglingPlanItems = self->_danglingPlanItems;

  return danglingPlanItems;
}

- (NSArray)plansPendingTransfer
{
  [(PSUICellularPlanManagerCache *)self _fetchPlanItemsIfNeeded];
  plansPendingTransfer = self->_plansPendingTransfer;

  return plansPendingTransfer;
}

- (id)planFromReference:(id)reference
{
  v18 = *MEMORY[0x277D85DE8];
  referenceCopy = reference;
  [(PSUICellularPlanManagerCache *)self _fetchPlanItemsIfNeeded];
  v5 = [(NSDictionary *)self->_referenceMap objectForKey:referenceCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(NSDictionary *)self->_referenceMap objectForKey:referenceCopy];
  }

  else
  {
    getLogger = [(PSUICellularPlanManagerCache *)self getLogger];
    if (os_log_type_enabled(getLogger, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = 138412546;
      v15 = v11;
      v16 = 2114;
      v17 = v13;
      _os_log_error_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_ERROR, "The referenced plan is an object of the class %@, expected an object of the class %{public}@", &v14, 0x16u);
    }

    v6 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)danglingPlanFromReference:(id)reference
{
  v18 = *MEMORY[0x277D85DE8];
  referenceCopy = reference;
  [(PSUICellularPlanManagerCache *)self _fetchPlanItemsIfNeeded];
  v5 = [(NSDictionary *)self->_referenceMap objectForKey:referenceCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_6;
  }

  getLogger = [(PSUICellularPlanManagerCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_ERROR))
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = 138412546;
    v15 = v11;
    v16 = 2114;
    v17 = v13;
    _os_log_error_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_ERROR, "The referenced plan is an object of the class %@, expected an object of the class %{public}@", &v14, 0x16u);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_6:
    v7 = [(NSDictionary *)self->_referenceMap objectForKey:referenceCopy];
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)planPendingTransferFromReference:(id)reference
{
  v18 = *MEMORY[0x277D85DE8];
  referenceCopy = reference;
  [(PSUICellularPlanManagerCache *)self _fetchPlanItemsIfNeeded];
  v5 = [(NSDictionary *)self->_referenceMap objectForKey:referenceCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(NSDictionary *)self->_referenceMap objectForKey:referenceCopy];
  }

  else
  {
    getLogger = [(PSUICellularPlanManagerCache *)self getLogger];
    if (os_log_type_enabled(getLogger, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = 138412546;
      v15 = v11;
      v16 = 2114;
      v17 = v13;
      _os_log_error_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_ERROR, "The referenced plan is an object of the class %@, expected an object of the class %{public}@", &v14, 0x16u);
    }

    v6 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)planFromReferenceSafe:(id)safe
{
  v18 = *MEMORY[0x277D85DE8];
  safeCopy = safe;
  [(PSUICellularPlanManagerCache *)self _fetchPlanItemsIfNeeded];
  v5 = [(NSDictionary *)self->_referenceMap objectForKey:safeCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(NSDictionary *)self->_referenceMap objectForKey:safeCopy];
  }

  else
  {
    getLogger = [(PSUICellularPlanManagerCache *)self getLogger];
    if (os_log_type_enabled(getLogger, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = 138412546;
      v15 = v11;
      v16 = 2114;
      v17 = v13;
      _os_log_error_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_ERROR, "The referenced plan is an object of the class %@, expected an object of the class %{public}@", &v14, 0x16u);
    }

    v6 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];

  return v6;
}

- (CTCellularPlanItem)selectedPlanItem
{
  [(PSUICellularPlanManagerCache *)self _fetchPlanItemsIfNeeded];
  selectedPlanItem = self->_selectedPlanItem;

  return selectedPlanItem;
}

- (void)setSelectedPlanItem:(id)item
{
  v16 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v5 = itemCopy;
  if (!itemCopy)
  {
    getLogger = [(PSUICellularPlanManagerCache *)self getLogger];
    if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Can't activate nil plan", buf, 2u);
    }

    goto LABEL_14;
  }

  if (([itemCopy isSelected] & 1) == 0)
  {
    mEMORY[0x277CF96D8] = [MEMORY[0x277CF96D8] sharedManager];
    getLogger = [mEMORY[0x277CF96D8] didSelectPlanItem:v5 isEnable:1];

    if (getLogger)
    {
      getLogger2 = [(PSUICellularPlanManagerCache *)self getLogger];
      if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v15 = getLogger;
        _os_log_impl(&dword_2658DE000, getLogger2, OS_LOG_TYPE_DEFAULT, "Failed to select the plan: %@", buf, 0xCu);
      }
    }

    mEMORY[0x277CF96D8]2 = [MEMORY[0x277CF96D8] sharedManager];
    v10 = [mEMORY[0x277CF96D8]2 didSelectPlanForData:v5];

    if (v10)
    {
      getLogger3 = [(PSUICellularPlanManagerCache *)self getLogger];
      if (os_log_type_enabled(getLogger3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v15 = v10;
        _os_log_impl(&dword_2658DE000, getLogger3, OS_LOG_TYPE_DEFAULT, "Failed to make plan active data plan: %@", buf, 0xCu);
      }
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __52__PSUICellularPlanManagerCache_setSelectedPlanItem___block_invoke;
    block[3] = &unk_279BA9D58;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);

LABEL_14:
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __52__PSUICellularPlanManagerCache_setSelectedPlanItem___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _invalidatePlanItemsCache];
  v2 = *(a1 + 32);

  return [v2 _fetchPlanItemsIfNeeded];
}

- (void)setSelectedPlanItemForData:(id)data
{
  v13 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v5 = dataCopy;
  if (!dataCopy)
  {
    getLogger = [(PSUICellularPlanManagerCache *)self getLogger];
    if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Can't set nil plan for data", buf, 2u);
    }

    goto LABEL_10;
  }

  if (([dataCopy isActiveDataPlan] & 1) == 0)
  {
    mEMORY[0x277CF96D8] = [MEMORY[0x277CF96D8] sharedManager];
    getLogger = [mEMORY[0x277CF96D8] didSelectPlanForData:v5];

    if (getLogger)
    {
      getLogger2 = [(PSUICellularPlanManagerCache *)self getLogger];
      if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v12 = getLogger;
        _os_log_impl(&dword_2658DE000, getLogger2, OS_LOG_TYPE_DEFAULT, "Failed to make plan active data plan: %@", buf, 0xCu);
      }
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__PSUICellularPlanManagerCache_setSelectedPlanItemForData___block_invoke;
    block[3] = &unk_279BA9D58;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
LABEL_10:
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __59__PSUICellularPlanManagerCache_setSelectedPlanItemForData___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _invalidatePlanItemsCache];
  v2 = *(a1 + 32);

  return [v2 _fetchPlanItemsIfNeeded];
}

- (void)didSelectDanglingPlan:(id)plan
{
  v14 = *MEMORY[0x277D85DE8];
  planCopy = plan;
  getLogger = [(PSUICellularPlanManagerCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = planCopy;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Selected dangling plan item: %@", &v10, 0xCu);
  }

  mEMORY[0x277CF96D8] = [MEMORY[0x277CF96D8] sharedManager];
  v7 = [mEMORY[0x277CF96D8] resolveSimLabel:planCopy];

  if (v7)
  {
    getLogger2 = [(PSUICellularPlanManagerCache *)self getLogger];
    if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412546;
      v11 = planCopy;
      v12 = 2112;
      v13 = v7;
      _os_log_impl(&dword_2658DE000, getLogger2, OS_LOG_TYPE_DEFAULT, "Failed to resolve SIM label for plan: %@ with error:%@", &v10, 0x16u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)isMultipleDataPlanSupportAvailable
{
  v9 = *MEMORY[0x277D85DE8];
  [(PSUICellularPlanManagerCache *)self _fetchPlanItemsIfNeeded];
  getLogger = [(PSUICellularPlanManagerCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    if (self->_isMultipleDataPlanSupportAvailable)
    {
      v4 = @"is";
    }

    else
    {
      v4 = @"is not";
    }

    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Multiple data plan support %@ available", &v7, 0xCu);
  }

  result = self->_isMultipleDataPlanSupportAvailable;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)hasSubscriptions
{
  v9 = *MEMORY[0x277D85DE8];
  [(PSUICellularPlanManagerCache *)self _fetchPlanItemsIfNeeded];
  getLogger = [(PSUICellularPlanManagerCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    if (self->_hasSubscriptions)
    {
      v4 = @"Some plan item is backed by a cellular plan";
    }

    else
    {
      v4 = @"No plan item is backed by a cellular plan";
    }

    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "%@", &v7, 0xCu);
  }

  result = self->_hasSubscriptions;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)isSelectedPlanActivating
{
  v12 = *MEMORY[0x277D85DE8];
  selectedPlanItem = [(PSUICellularPlanManagerCache *)self selectedPlanItem];
  if ([selectedPlanItem isBackedByCellularPlan])
  {
    plan = [selectedPlanItem plan];
    v5 = [plan status] == 2;
  }

  else
  {
    v5 = 0;
  }

  getLogger = [(PSUICellularPlanManagerCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"is not";
    if (v5)
    {
      v7 = @"is";
    }

    v10 = 138412290;
    v11 = v7;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Selected plan item %@ activating", &v10, 0xCu);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isAnyPlanActivating
{
  v21 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  planItems = [(PSUICellularPlanManagerCache *)self planItems];
  v4 = [planItems countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v4)
  {
    v5 = *v15;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(planItems);
        }

        v7 = *(*(&v14 + 1) + 8 * i);
        if ([v7 isBackedByCellularPlan])
        {
          plan = [v7 plan];
          status = [plan status];

          if (status == 2)
          {
            LODWORD(v4) = 1;
            goto LABEL_12;
          }
        }
      }

      v4 = [planItems countByEnumeratingWithState:&v14 objects:v20 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  getLogger = [(PSUICellularPlanManagerCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    v11 = @"No plan is activating";
    if (v4)
    {
      v11 = @"Some plan is activating";
    }

    *buf = 138412290;
    v19 = v11;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v4;
}

- (BOOL)shouldShowPlanSelector
{
  [(PSUICellularPlanManagerCache *)self _fetchPlanItemsIfNeeded];
  if (__PAIR64__(self->_isMultipleDataPlanSupportAvailable, self->_hasSubscriptions) != 0x100000001)
  {
    return 0;
  }

  selectedPlanItem = [(PSUICellularPlanManagerCache *)self selectedPlanItem];
  v4 = selectedPlanItem == 0;

  return v4;
}

- (BOOL)shouldShowOldUI
{
  v11 = *MEMORY[0x277D85DE8];
  [(PSUICellularPlanManagerCache *)self _fetchPlanItemsIfNeeded];
  getLogger = [(PSUICellularPlanManagerCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    v4 = @"NO";
    if (self->_shouldShowOldUI)
    {
      v4 = @"YES";
    }

    v7 = 136315394;
    v8 = "[PSUICellularPlanManagerCache shouldShowOldUI]";
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "%s: %@", &v7, 0x16u);
  }

  result = self->_shouldShowOldUI;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)isAnyLocalFlowTypeSupported
{
  v11 = *MEMORY[0x277D85DE8];
  [(PSUICellularPlanManagerCache *)self _fetchPlanItemsIfNeeded];
  getLogger = [(PSUICellularPlanManagerCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    v4 = @"NO";
    if (self->_isAnyLocalFlowTypeSupported)
    {
      v4 = @"YES";
    }

    v7 = 136315394;
    v8 = "[PSUICellularPlanManagerCache isAnyLocalFlowTypeSupported]";
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "%s: %@", &v7, 0x16u);
  }

  result = self->_isAnyLocalFlowTypeSupported;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)isWebUIFlowSupported
{
  v11 = *MEMORY[0x277D85DE8];
  [(PSUICellularPlanManagerCache *)self _fetchPlanItemsIfNeeded];
  getLogger = [(PSUICellularPlanManagerCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    v4 = @"NO";
    if (self->_isWebUIFlowSupported)
    {
      v4 = @"YES";
    }

    v7 = 136315394;
    v8 = "[PSUICellularPlanManagerCache isWebUIFlowSupported]";
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "%s: %@", &v7, 0x16u);
  }

  result = self->_isWebUIFlowSupported;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)isActivationCodeFlowSupported
{
  v11 = *MEMORY[0x277D85DE8];
  [(PSUICellularPlanManagerCache *)self _fetchPlanItemsIfNeeded];
  getLogger = [(PSUICellularPlanManagerCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    v4 = @"NO";
    if (self->_isActivationCodeFlowSupported)
    {
      v4 = @"YES";
    }

    v7 = 136315394;
    v8 = "[PSUICellularPlanManagerCache isActivationCodeFlowSupported]";
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "%s: %@", &v7, 0x16u);
  }

  result = self->_isActivationCodeFlowSupported;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)isSingleActivationCodeFlowSupported
{
  v11 = *MEMORY[0x277D85DE8];
  [(PSUICellularPlanManagerCache *)self _fetchPlanItemsIfNeeded];
  getLogger = [(PSUICellularPlanManagerCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    v4 = @"NO";
    if (self->_isSingleActivationCodeFlowSupported)
    {
      v4 = @"YES";
    }

    v7 = 136315394;
    v8 = "[PSUICellularPlanManagerCache isSingleActivationCodeFlowSupported]";
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "%s: %@", &v7, 0x16u);
  }

  result = self->_isSingleActivationCodeFlowSupported;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)isCarrierItemFlowSupported
{
  v11 = *MEMORY[0x277D85DE8];
  [(PSUICellularPlanManagerCache *)self _fetchPlanItemsIfNeeded];
  getLogger = [(PSUICellularPlanManagerCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    v4 = @"NO";
    if (self->_isCarrierItemFlowSupported)
    {
      v4 = @"YES";
    }

    v7 = 136315394;
    v8 = "[PSUICellularPlanManagerCache isCarrierItemFlowSupported]";
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "%s: %@", &v7, 0x16u);
  }

  result = self->_isCarrierItemFlowSupported;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (CTDisplayPlanList)pendingInstallPlans
{
  v12 = *MEMORY[0x277D85DE8];
  getLogger = [(PSUICellularPlanManagerCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v11 = "[PSUICellularPlanManagerCache pendingInstallPlans]";
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  cachedPendingInstallPlans = self->_cachedPendingInstallPlans;
  if (!cachedPendingInstallPlans)
  {
    if (self->_pendingInstallPlanFetchInProgress)
    {
      cachedPendingInstallPlans = 0;
    }

    else
    {
      objc_initWeak(buf, self);
      self->_pendingInstallPlanFetchInProgress = 1;
      coreTelephonyClient = self->_coreTelephonyClient;
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __51__PSUICellularPlanManagerCache_pendingInstallPlans__block_invoke;
      v8[3] = &unk_279BAAB40;
      objc_copyWeak(&v9, buf);
      v8[4] = self;
      [(CoreTelephonyClient *)coreTelephonyClient plansPendingInstallWithCompletion:v8];
      objc_destroyWeak(&v9);
      objc_destroyWeak(buf);
      cachedPendingInstallPlans = self->_cachedPendingInstallPlans;
    }
  }

  v6 = *MEMORY[0x277D85DE8];

  return cachedPendingInstallPlans;
}

void __51__PSUICellularPlanManagerCache_pendingInstallPlans__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setPendingInstallPlanFetchInProgress:0];

  if (!v5 || v6)
  {
    v11 = [*(a1 + 32) getLogger];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = v6;
      _os_log_impl(&dword_2658DE000, v11, OS_LOG_TYPE_DEFAULT, "Failed to fetch pending install items with error: %@", buf, 0xCu);
    }

    v8 = objc_loadWeakRetained((a1 + 40));
    v9 = v8;
    v10 = 0;
  }

  else
  {
    v8 = objc_loadWeakRetained((a1 + 40));
    v9 = v8;
    v10 = v5;
  }

  [v8 setCachedPendingInstallPlans:v10];

  v12 = objc_loadWeakRetained((a1 + 40));
  v13 = [v12 cachedPendingInstallPlans];

  if (v13)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__PSUICellularPlanManagerCache_pendingInstallPlans__block_invoke_97;
    block[3] = &unk_279BA9D58;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __51__PSUICellularPlanManagerCache_pendingInstallPlans__block_invoke_97(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) getLogger];
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = "[PSUICellularPlanManagerCache pendingInstallPlans]_block_invoke";
    v6 = 2112;
    v7 = @"PSUICellularPlanChanged";
    _os_log_impl(&dword_2658DE000, v1, OS_LOG_TYPE_DEFAULT, "%s posting notification %@ from main thread", &v4, 0x16u);
  }

  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"PSUICellularPlanChanged" object:0 userInfo:0];

  v3 = *MEMORY[0x277D85DE8];
}

- (CTDisplayPlanList)remotePlans
{
  v17 = *MEMORY[0x277D85DE8];
  getLogger = [(PSUICellularPlanManagerCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = "[PSUICellularPlanManagerCache remotePlans]";
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  if (self->_remoteListFetchCompleted || self->_remoteListFetchInProgress)
  {
    getLogger2 = [(PSUICellularPlanManagerCache *)self getLogger];
    if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_DEFAULT))
    {
      plans = [(CTDisplayPlanList *)self->_cachedRemotePlans plans];
      v6 = [plans count];
      *buf = 134217984;
      v16 = v6;
      _os_log_impl(&dword_2658DE000, getLogger2, OS_LOG_TYPE_DEFAULT, "%lu remote items exist", buf, 0xCu);
    }
  }

  else if (self->_isCarrierItemFlowSupported)
  {
    objc_initWeak(&location, self);
    self->_remoteListFetchInProgress = 1;
    getLogger3 = [(PSUICellularPlanManagerCache *)self getLogger];
    if (os_log_type_enabled(getLogger3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v16 = "[PSUICellularPlanManagerCache remotePlans]";
      _os_log_impl(&dword_2658DE000, getLogger3, OS_LOG_TYPE_DEFAULT, "%s fetching add on plans", buf, 0xCu);
    }

    coreTelephonyClient = self->_coreTelephonyClient;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __43__PSUICellularPlanManagerCache_remotePlans__block_invoke;
    v12[3] = &unk_279BAAB68;
    objc_copyWeak(&v13, &location);
    v12[4] = self;
    [(CoreTelephonyClient *)coreTelephonyClient getRemoteDevices:v12];
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  cachedRemotePlans = self->_cachedRemotePlans;
  v8 = *MEMORY[0x277D85DE8];

  return cachedRemotePlans;
}

void __43__PSUICellularPlanManagerCache_remotePlans__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v52 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v33 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setRemoteListFetchInProgress:0];

  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v34 = v5;
  obj = [v5 devices];
  v37 = [obj countByEnumeratingWithState:&v44 objects:v51 count:16];
  if (v37)
  {
    v36 = *v45;
    do
    {
      v8 = 0;
      do
      {
        if (*v45 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v38 = v8;
        v9 = *(*(&v44 + 1) + 8 * v8);
        v10 = [*(a1 + 32) getLogger];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = [v9 deviceID];
          *buf = 138412290;
          v50 = v11;
          _os_log_impl(&dword_2658DE000, v10, OS_LOG_TYPE_DEFAULT, "Remote device => %@", buf, 0xCu);
        }

        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v12 = [v9 remoteDisplayPlans];
        v13 = [v12 countByEnumeratingWithState:&v40 objects:v48 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v41;
          do
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v41 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v40 + 1) + 8 * i);
              v18 = [*(a1 + 32) getLogger];
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v50 = v17;
                _os_log_impl(&dword_2658DE000, v18, OS_LOG_TYPE_DEFAULT, "Remote device plan => %@", buf, 0xCu);
              }

              [v7 addObject:v17];
            }

            v14 = [v12 countByEnumeratingWithState:&v40 objects:v48 count:16];
          }

          while (v14);
        }

        v8 = v38 + 1;
      }

      while (v38 + 1 != v37);
      v37 = [obj countByEnumeratingWithState:&v44 objects:v51 count:16];
    }

    while (v37);
  }

  v19 = v33;
  if (v33 || !v7)
  {
    v23 = [*(a1 + 32) getLogger];
    v22 = v34;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v50 = v19;
      _os_log_impl(&dword_2658DE000, v23, OS_LOG_TYPE_DEFAULT, "Failed to fetch addon items with error: %@", buf, 0xCu);
    }

    v20 = objc_loadWeakRetained((a1 + 40));
    [v20 setCachedRemotePlans:0];
  }

  else
  {
    v20 = [objc_alloc(MEMORY[0x277CC3668]) initWithDisplayPlans:v7];
    v21 = objc_loadWeakRetained((a1 + 40));
    [v21 setCachedRemotePlans:v20];

    v22 = v34;
  }

  v24 = objc_loadWeakRetained((a1 + 40));
  [v24 setRemoteListFetchCompleted:1];

  v25 = _os_feature_enabled_impl();
  v26 = objc_loadWeakRetained((a1 + 40));
  v27 = v26;
  if (v25)
  {
    v28 = [v26 remoteListFetchCompleted];

    if ((v28 & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v29 = [v26 cachedCarrierItems];
    if (v29)
    {
    }

    else
    {
      v31 = objc_loadWeakRetained((a1 + 40));
      v32 = [v31 cachedRemotePlans];

      if (v32)
      {
        goto LABEL_31;
      }
    }
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__PSUICellularPlanManagerCache_remotePlans__block_invoke_102;
  block[3] = &unk_279BA9D58;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
LABEL_31:

  v30 = *MEMORY[0x277D85DE8];
}

void __43__PSUICellularPlanManagerCache_remotePlans__block_invoke_102(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) getLogger];
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = "[PSUICellularPlanManagerCache remotePlans]_block_invoke";
    v6 = 2112;
    v7 = @"PSUICellularPlanChanged";
    _os_log_impl(&dword_2658DE000, v1, OS_LOG_TYPE_DEFAULT, "%s posting notification %@ from main thread", &v4, 0x16u);
  }

  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"PSUICellularPlanChanged" object:0 userInfo:0];

  v3 = *MEMORY[0x277D85DE8];
}

- (NSArray)carrierItems
{
  v15 = *MEMORY[0x277D85DE8];
  if (!self->_cachedCarrierItems && !self->_carrierListFetchInProgress && self->_isCarrierItemFlowSupported)
  {
    objc_initWeak(&location, self);
    self->_carrierListFetchInProgress = 1;
    getLogger = [(PSUICellularPlanManagerCache *)self getLogger];
    if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v14 = "[PSUICellularPlanManagerCache carrierItems]";
      _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "%s fetching carrier items", buf, 0xCu);
    }

    mEMORY[0x277CF96D8] = [MEMORY[0x277CF96D8] sharedManager];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __44__PSUICellularPlanManagerCache_carrierItems__block_invoke;
    v10[3] = &unk_279BAAB90;
    objc_copyWeak(&v11, &location);
    v10[4] = self;
    [mEMORY[0x277CF96D8] carrierItemsShouldUpdate:0 completion:v10];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  getLogger2 = [(PSUICellularPlanManagerCache *)self getLogger];
  if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(NSArray *)self->_cachedCarrierItems count];
    *buf = 134217984;
    v14 = v6;
    _os_log_impl(&dword_2658DE000, getLogger2, OS_LOG_TYPE_DEFAULT, "%lu carrier items exist", buf, 0xCu);
  }

  cachedCarrierItems = self->_cachedCarrierItems;
  v8 = *MEMORY[0x277D85DE8];

  return cachedCarrierItems;
}

void __44__PSUICellularPlanManagerCache_carrierItems__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setCarrierListFetchInProgress:0];

  if (!v5 || v6)
  {
    v11 = [*(a1 + 32) getLogger];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = v6;
      _os_log_error_impl(&dword_2658DE000, v11, OS_LOG_TYPE_ERROR, "Failed to fetch carrier items with error: %@", buf, 0xCu);
    }

    v8 = objc_loadWeakRetained((a1 + 40));
    v9 = v8;
    v10 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v8 = objc_loadWeakRetained((a1 + 40));
    v9 = v8;
    v10 = v5;
  }

  [v8 setCachedCarrierItems:v10];

  v12 = objc_loadWeakRetained((a1 + 40));
  v13 = [v12 remoteListFetchCompleted];

  if (v13)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __44__PSUICellularPlanManagerCache_carrierItems__block_invoke_104;
    block[3] = &unk_279BA9D58;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __44__PSUICellularPlanManagerCache_carrierItems__block_invoke_104(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) getLogger];
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = "[PSUICellularPlanManagerCache carrierItems]_block_invoke";
    v6 = 2112;
    v7 = @"PSUICellularPlanChanged";
    _os_log_impl(&dword_2658DE000, v1, OS_LOG_TYPE_DEFAULT, "%s posting notification %@ from main thread", &v4, 0x16u);
  }

  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"PSUICellularPlanChanged" object:0 userInfo:0];

  v3 = *MEMORY[0x277D85DE8];
}

- (void)clearCachedCarrierItemsAndRemotePlans
{
  cachedCarrierItems = self->_cachedCarrierItems;
  self->_cachedCarrierItems = 0;

  cachedRemotePlans = self->_cachedRemotePlans;
  self->_cachedRemotePlans = 0;

  self->_remoteListFetchCompleted = 0;
}

- (id)predefinedLabels
{
  v13[6] = *MEMORY[0x277D85DE8];
  mEMORY[0x277CF96D8] = [MEMORY[0x277CF96D8] sharedManager];
  getPredefinedLabels = [mEMORY[0x277CF96D8] getPredefinedLabels];

  if (!getPredefinedLabels || ![getPredefinedLabels count])
  {
    v4 = [objc_alloc(MEMORY[0x277CF96F0]) initWithLabel:@"Primary"];
    v13[0] = v4;
    v5 = [objc_alloc(MEMORY[0x277CF96F0]) initWithLabel:@"Secondary"];
    v13[1] = v5;
    v6 = [objc_alloc(MEMORY[0x277CF96F0]) initWithLabel:@"Personal"];
    v13[2] = v6;
    v7 = [objc_alloc(MEMORY[0x277CF96F0]) initWithLabel:@"Business"];
    v13[3] = v7;
    v8 = [objc_alloc(MEMORY[0x277CF96F0]) initWithLabel:@"Travel"];
    v13[4] = v8;
    v9 = [objc_alloc(MEMORY[0x277CF96F0]) initWithLabel:@"Cellular Data"];
    v13[5] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:6];

    getPredefinedLabels = v10;
  }

  v11 = *MEMORY[0x277D85DE8];

  return getPredefinedLabels;
}

- (void)setLabel:(id)label forPlan:(id)plan
{
  v17 = *MEMORY[0x277D85DE8];
  labelCopy = label;
  planCopy = plan;
  getLogger = [(PSUICellularPlanManagerCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412546;
    v14 = labelCopy;
    v15 = 2112;
    v16 = planCopy;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Setting label: %@ for plan item: %@", &v13, 0x16u);
  }

  mEMORY[0x277CF96D8] = [MEMORY[0x277CF96D8] sharedManager];
  v10 = [mEMORY[0x277CF96D8] setLabelForPlan:planCopy label:labelCopy];

  if (v10)
  {
    getLogger2 = [(PSUICellularPlanManagerCache *)self getLogger];
    if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412546;
      v14 = planCopy;
      v15 = 2112;
      v16 = v10;
      _os_log_error_impl(&dword_2658DE000, getLogger2, OS_LOG_TYPE_ERROR, "Failed to set label for plan: %@ with error: %@", &v13, 0x16u);
    }
  }

  else
  {
    [(PSUICellularPlanManagerCache *)self _invalidatePlanItemsCache];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)subscriptionContextForPlanItem:(id)item cachedSubscriptionContexts:(id)contexts
{
  v35 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  contextsCopy = contexts;
  if (!contextsCopy)
  {
    mEMORY[0x277D4D868] = [MEMORY[0x277D4D868] sharedInstance];
    contextsCopy = [mEMORY[0x277D4D868] subscriptionContexts];
  }

  mEMORY[0x277CF96D8] = [MEMORY[0x277CF96D8] sharedManager];
  v10 = [mEMORY[0x277CF96D8] getSubscriptionContextUUIDforPlan:itemCopy];

  if (!v10)
  {
    getLogger = [(PSUICellularPlanManagerCache *)self getLogger];
    if (!os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
    {
LABEL_20:
      v21 = 0;
      goto LABEL_21;
    }

    *buf = 138412546;
    v32 = itemCopy;
    v33 = 2112;
    v34 = 0;
LABEL_19:
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "plan item: %@, context: %@", buf, 0x16u);
    goto LABEL_20;
  }

  selfCopy = self;
  v25 = itemCopy;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  getLogger = contextsCopy;
  v12 = [getLogger countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v27;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v27 != v14)
        {
          objc_enumerationMutation(getLogger);
        }

        v16 = *(*(&v26 + 1) + 8 * i);
        uuid = [v16 uuid];
        uUIDString = [uuid UUIDString];
        v19 = [v10 isEqualToString:uUIDString];

        if (v19)
        {
          getLogger2 = [(PSUICellularPlanManagerCache *)selfCopy getLogger];
          itemCopy = v25;
          if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v32 = v25;
            v33 = 2112;
            v34 = v16;
            _os_log_impl(&dword_2658DE000, getLogger2, OS_LOG_TYPE_DEFAULT, "plan item: %@, context: %@", buf, 0x16u);
          }

          v21 = v16;
          goto LABEL_21;
        }
      }

      v13 = [getLogger countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  getLogger = [(PSUICellularPlanManagerCache *)selfCopy getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    itemCopy = v25;
    v32 = v25;
    v33 = 2112;
    v34 = 0;
    goto LABEL_19;
  }

  v21 = 0;
  itemCopy = v25;
LABEL_21:

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (void)didEnablePlanItems:(id)items
{
  v13 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  mEMORY[0x277CF96D8] = [MEMORY[0x277CF96D8] sharedManager];
  v6 = [mEMORY[0x277CF96D8] didEnablePlanItems:itemsCopy];

  if (v6)
  {
    getLogger = [(PSUICellularPlanManagerCache *)self getLogger];
    if (os_log_type_enabled(getLogger, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412546;
      v10 = itemsCopy;
      v11 = 2112;
      v12 = v6;
      _os_log_error_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_ERROR, "Enabling plans: %@, error: %@", &v9, 0x16u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)isUsingBootstrapDataService
{
  v13 = *MEMORY[0x277D85DE8];
  coreTelephonyClient = self->_coreTelephonyClient;
  v10 = 0;
  v4 = [(CoreTelephonyClient *)coreTelephonyClient usingBootstrapDataService:&v10];
  v5 = v10;
  if (v5)
  {
    getLogger = [(PSUICellularPlanManagerCache *)self getLogger];
    if (os_log_type_enabled(getLogger, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v5;
      _os_log_error_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_ERROR, "usingBootstrapDataService failed:%@", buf, 0xCu);
    }
  }

  bOOLValue = [v4 BOOLValue];

  v8 = *MEMORY[0x277D85DE8];
  return bOOLValue;
}

- (BOOL)isBootstrapRecommended
{
  v13 = *MEMORY[0x277D85DE8];
  coreTelephonyClient = self->_coreTelephonyClient;
  v10 = 0;
  v4 = [(CoreTelephonyClient *)coreTelephonyClient getBootstrapState:&v10];
  v5 = v10;
  if (v5)
  {
    getLogger = [(PSUICellularPlanManagerCache *)self getLogger];
    if (os_log_type_enabled(getLogger, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v5;
      _os_log_error_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_ERROR, "isBootstrapRecommended failed:%@", buf, 0xCu);
    }

    v7 = 0;
  }

  else
  {
    v7 = [v4 bootstrapStatus] == 2;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

- (CTBootstrapState)getBootstrapState
{
  v13 = *MEMORY[0x277D85DE8];
  coreTelephonyClient = self->_coreTelephonyClient;
  v10 = 0;
  v4 = [(CoreTelephonyClient *)coreTelephonyClient getBootstrapState:&v10];
  v5 = v10;
  if (v5)
  {
    getLogger = [(PSUICellularPlanManagerCache *)self getLogger];
    if (os_log_type_enabled(getLogger, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v5;
      _os_log_error_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_ERROR, "getBootstrapState failed:%@", buf, 0xCu);
    }

    v7 = 0;
  }

  else
  {
    v7 = v4;
  }

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (BOOL)isCarrierItemBeingFetched
{
  v9 = *MEMORY[0x277D85DE8];
  getLogger = [(PSUICellularPlanManagerCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    if (self->_carrierListFetchInProgress)
    {
      v4 = @"YES";
    }

    else
    {
      v4 = @"NO";
    }

    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "_carrierListFetchInProgress: %@", &v7, 0xCu);
  }

  result = self->_carrierListFetchInProgress;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)plansDidUpdate:(id)update
{
  v19 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  getLogger = [(PSUICellularPlanManagerCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = updateCopy;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "CTDisplayPlanList: %@", &v17, 0xCu);
  }

  plans = [updateCopy plans];
  v8 = [plans count];

  if (v8 && ([updateCopy plans], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "objectAtIndexedSubscript:", 0), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isPendingInstallPlan"), v10, v9, (v11 & 1) == 0))
  {
    plans2 = [updateCopy plans];
    v15 = [plans2 objectAtIndexedSubscript:0];
    isAddOnPurchasablePlan = [v15 isAddOnPurchasablePlan];

    if (!isAddOnPurchasablePlan)
    {
      goto LABEL_7;
    }

    v12 = 80;
  }

  else
  {
    v12 = 88;
  }

  objc_storeStrong((&self->super.isa + v12), update);
LABEL_7:
  dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global_128);

  v13 = *MEMORY[0x277D85DE8];
}

void __47__PSUICellularPlanManagerCache_plansDidUpdate___block_invoke()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 postNotificationName:@"PSUICellularPlanChanged" object:0 userInfo:0];
}

@end