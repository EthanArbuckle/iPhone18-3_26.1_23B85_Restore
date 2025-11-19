@interface APOdmlAssetManagerCoordinator
+ (id)sharedAssetManagerCoordinator;
- (APOdmlAssetManagerCoordinator)init;
- (id)assetManagerForPlacementType:(unint64_t)a3 assetManagerType:(unint64_t)a4;
- (void)initializeAssetManagersforPlacementTypes:(id)a3;
- (void)refreshTrialClientForPlacementTypes:(id)a3;
- (void)setUpdateHandlerForNamespace:(id)a3;
@end

@implementation APOdmlAssetManagerCoordinator

+ (id)sharedAssetManagerCoordinator
{
  if (qword_280CCF588 != -1)
  {
    sub_260EF80B0();
  }

  v3 = qword_280CCF580;

  return v3;
}

- (APOdmlAssetManagerCoordinator)init
{
  v35.receiver = self;
  v35.super_class = APOdmlAssetManagerCoordinator;
  v2 = [(APOdmlAssetManagerCoordinator *)&v35 init];
  if (v2)
  {
    v3 = [APOdmlUnfairLock alloc];
    v5 = objc_msgSend_initWithOptions_(v3, v4, 1);
    refreshTrialLock = v2->_refreshTrialLock;
    v2->_refreshTrialLock = v5;

    v8 = objc_msgSend_clientWithIdentifier_(MEMORY[0x277D73660], v7, 238);
    trialClient = v2->_trialClient;
    v2->_trialClient = v8;

    objc_msgSend_setUpdateHandlerForNamespace_(v2, v10, @"AD_PLATFORMS_ODML");
    objc_msgSend_setUpdateHandlerForNamespace_(v2, v11, @"SEARCH_ADS_COUNTERFACTUAL");
    v2->_respondToRefreshNotification = 1;
    v14 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v12, v13);
    assetManagers = v2->_assetManagers;
    v2->_assetManagers = v14;

    v16 = MEMORY[0x277CBEA60];
    v18 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v17, 0);
    v20 = objc_msgSend_arrayWithObjects_(v16, v19, v18, 0);
    objc_msgSend_initializeAssetManagersforPlacementTypes_(v2, v21, v20);

    v22 = objc_alloc_init(MEMORY[0x277CCABD8]);
    refreshClientQueue = v2->_refreshClientQueue;
    v2->_refreshClientQueue = v22;

    v26 = objc_msgSend_defaultCenter(MEMORY[0x277CCA9A0], v24, v25);
    v27 = v2->_refreshClientQueue;
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = sub_260ECE07C;
    v33[3] = &unk_279AC5F00;
    v28 = v2;
    v34 = v28;
    v30 = objc_msgSend_addObserverForName_object_queue_usingBlock_(v26, v29, @"kAPODMLDeviceKnowledgeManagerRanNotification", 0, v27, v33);
    refreshClientNotificationObserver = v28->_refreshClientNotificationObserver;
    v28->_refreshClientNotificationObserver = v30;
  }

  return v2;
}

- (id)assetManagerForPlacementType:(unint64_t)a3 assetManagerType:(unint64_t)a4
{
  v23[1] = *MEMORY[0x277D85DE8];
  v7 = objc_msgSend_trialClient(self, a2, a3);

  if (!v7)
  {
    v10 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v8, a3);
    v23[0] = v10;
    v12 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v11, v23, 1);
    objc_msgSend_refreshTrialClientForPlacementTypes_(self, v13, v12);
  }

  v14 = objc_msgSend_assetManagers(self, v8, v9);
  v16 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v15, a3);
  v18 = objc_msgSend_objectForKey_(v14, v17, v16);
  v20 = objc_msgSend_assetManagerForType_(v18, v19, a4);

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (void)refreshTrialClientForPlacementTypes:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_refreshTrialLock(self, v5, v6);
  objc_msgSend_lock(v7, v8, v9);

  v11 = objc_msgSend_clientWithIdentifier_(MEMORY[0x277D73660], v10, 238);
  objc_msgSend_setTrialClient_(self, v12, v11);

  objc_msgSend_setUpdateHandlerForNamespace_(self, v13, @"AD_PLATFORMS_ODML");
  objc_msgSend_setUpdateHandlerForNamespace_(self, v14, @"SEARCH_ADS_COUNTERFACTUAL");
  objc_msgSend_initializeAssetManagersforPlacementTypes_(self, v15, v4);

  v20 = objc_msgSend_refreshTrialLock(self, v16, v17);
  objc_msgSend_unlock(v20, v18, v19);
}

- (void)initializeAssetManagersforPlacementTypes:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v20, v24, 16);
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      v9 = 0;
      do
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v20 + 1) + 8 * v9);
        v11 = [APOdmlAssetManagersForPlacement alloc];
        v14 = objc_msgSend_unsignedIntegerValue(v10, v12, v13);
        v16 = objc_msgSend_initWithPlacementType_trialClient_(v11, v15, v14, self->_trialClient);
        objc_msgSend_setObject_forKey_(self->_assetManagers, v17, v16, v10);

        ++v9;
      }

      while (v7 != v9);
      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v18, &v20, v24, 16);
    }

    while (v7);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)setUpdateHandlerForNamespace:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v7 = objc_msgSend_trialClient(self, v5, v6);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_260ECE558;
  v10[3] = &unk_279AC5F28;
  objc_copyWeak(&v11, &location);
  v9 = objc_msgSend_addUpdateHandlerForNamespaceName_usingBlock_(v7, v8, v4, v10);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

@end