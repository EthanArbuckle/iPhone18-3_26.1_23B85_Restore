@interface STTimeAllowancesViewModelCoordinator
+ (BOOL)saveAllowance:(id)a3 forUser:(id)a4 error:(id *)a5;
- (BOOL)isDowntimeActive;
- (STTimeAllowancesViewModelCoordinator)initWithPersistenceController:(id)a3 userDSID:(id)a4;
- (double)timeToNextExpectedStateChange;
- (id)_iCloudAccountPredicate;
- (int64_t)currentDowntimeState;
- (void)_registerForPersistentStoreNotifications;
- (void)deleteAllowance:(id)a3 completionHandler:(id)a4;
- (void)loadViewModelWithCompletionHandler:(id)a3;
- (void)respondToAskForTime:(id)a3 withApproval:(BOOL)a4 timeApproved:(id)a5 completionHandler:(id)a6;
- (void)saveAllAllowancesEnabled:(BOOL)a3 completionHandler:(id)a4;
- (void)saveAllowance:(id)a3 completionHandler:(id)a4;
- (void)saveAlwaysAllowList:(id)a3 completionHandler:(id)a4;
- (void)saveDefaultAlwaysAllowListWithCompletionHandler:(id)a3;
- (void)saveDeviceBedtime:(id)a3 completionHandler:(id)a4;
- (void)toggleDowntimeWithCompletionHandler:(id)a3;
@end

@implementation STTimeAllowancesViewModelCoordinator

- (STTimeAllowancesViewModelCoordinator)initWithPersistenceController:(id)a3 userDSID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v22.receiver = self;
  v22.super_class = STTimeAllowancesViewModelCoordinator;
  v9 = [(STTimeAllowancesViewModelCoordinator *)&v22 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_persistenceController, a3);
    v11 = objc_opt_new();
    askForTimeClient = v10->_askForTimeClient;
    v10->_askForTimeClient = v11;

    v13 = [v8 copy];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = &unk_28769D5E0;
    }

    objc_storeStrong(&v10->_userDSID, v15);

    v16 = objc_opt_new();
    viewModel = v10->_viewModel;
    v10->_viewModel = v16;

    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __79__STTimeAllowancesViewModelCoordinator_initWithPersistenceController_userDSID___block_invoke;
    v20[3] = &unk_279B7CC18;
    v18 = v10;
    v21 = v18;
    [(STTimeAllowancesViewModelCoordinator *)v18 loadViewModelWithCompletionHandler:v20];
    [(STTimeAllowancesViewModelCoordinator *)v18 _registerForPersistentStoreNotifications];
  }

  return v10;
}

- (void)saveDefaultAlwaysAllowListWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(STTimeAllowancesViewModelCoordinator *)self viewModel];
  v6 = [v5 alwaysAllowList];

  if (!v6)
  {
    v7 = +[STUILog persistence];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_264BA2000, v7, OS_LOG_TYPE_DEFAULT, "Always Allow list does not exist. Saving default Always Allow list.", buf, 2u);
    }

    v8 = [(STTimeAllowancesViewModelCoordinator *)self userDSID];
    v9 = [(STTimeAllowancesViewModelCoordinator *)self persistenceController];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __88__STTimeAllowancesViewModelCoordinator_saveDefaultAlwaysAllowListWithCompletionHandler___block_invoke;
    v11[3] = &unk_279B7D298;
    v12 = v8;
    v13 = v4;
    v10 = v8;
    [v9 performBackgroundTask:v11];
  }
}

void __88__STTimeAllowancesViewModelCoordinator_saveDefaultAlwaysAllowListWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v27[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v19 = 0;
    v5 = [MEMORY[0x277D4B988] fetchUserWithDSID:v4 inContext:v3 error:&v19];
    v6 = v19;
    if (v5)
    {
      v18 = v6;
      v7 = [MEMORY[0x277D4B928] saveDefaultAlwaysAllowListIfNecessaryForUser:v5 error:&v18];
      v8 = v18;

      v9 = *(a1 + 40);
      if (v7)
      {
        v10 = v9;
        if (v10)
        {
          if ([MEMORY[0x277CCACC8] isMainThread])
          {
            v10[2](v10, 0);
          }

          else
          {
            block = MEMORY[0x277D85DD0];
            v21 = 3221225472;
            v22 = __STUICallCompletionHandlerOnMainThread_block_invoke_2;
            v23 = &unk_279B7D130;
            v17 = v10;
            v24 = 0;
            v25 = v17;
            dispatch_async(MEMORY[0x277D85CD0], &block);
          }
        }
      }

      else
      {
        v10 = v9;
        v8 = v8;
        if (v10)
        {
          if ([MEMORY[0x277CCACC8] isMainThread])
          {
            (v10)[2](v10, v8);
          }

          else
          {
            block = MEMORY[0x277D85DD0];
            v21 = 3221225472;
            v22 = __STUICallCompletionHandlerOnMainThread_block_invoke_2;
            v23 = &unk_279B7D130;
            v25 = v10;
            v24 = v8;
            dispatch_async(MEMORY[0x277D85CD0], &block);
          }
        }
      }

      goto LABEL_25;
    }

    v11 = +[STUILog persistence];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      __88__STTimeAllowancesViewModelCoordinator_saveDefaultAlwaysAllowListWithCompletionHandler___block_invoke_cold_1();
    }
  }

  else
  {
    v6 = 0;
  }

  v12 = +[STUILog persistence];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    __88__STTimeAllowancesViewModelCoordinator_saveDefaultAlwaysAllowListWithCompletionHandler___block_invoke_cold_2();
  }

  v13 = MEMORY[0x277CCA9B8];
  v14 = *MEMORY[0x277D4BBD8];
  v26 = *MEMORY[0x277CCA450];
  v27[0] = @"user could not be found";
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
  v16 = [v13 errorWithDomain:v14 code:11 userInfo:v15];

  v5 = *(a1 + 40);
  v8 = v16;
  if (v5)
  {
    if ([MEMORY[0x277CCACC8] isMainThread])
    {
      v5[2](v5, v8);
    }

    else
    {
      block = MEMORY[0x277D85DD0];
      v21 = 3221225472;
      v22 = __STUICallCompletionHandlerOnMainThread_block_invoke_2;
      v23 = &unk_279B7D130;
      v25 = v5;
      v24 = v8;
      dispatch_async(MEMORY[0x277D85CD0], &block);
    }
  }

LABEL_25:
}

- (void)_registerForPersistentStoreNotifications
{
  v3 = MEMORY[0x277D4B928];
  v4 = [(STTimeAllowancesViewModelCoordinator *)self userDSID];
  v14 = [v3 fetchResultsRequestsForChangesToBlueprintsForUserWithDSID:v4];

  v5 = MEMORY[0x277D4B9C8];
  v6 = [MEMORY[0x277D4B910] fetchRequest];
  v7 = [v5 requestWithFetchRequest:v6];

  v8 = objc_alloc(MEMORY[0x277D4B9D0]);
  v9 = [v14 arrayByAddingObject:v7];
  v10 = [(STTimeAllowancesViewModelCoordinator *)self persistenceController];
  v11 = [v10 viewContext];
  v12 = [v8 initWithResultsRequests:v9 cacheName:0 managedObjectContext:v11];
  groupFetchResultsController = self->_groupFetchResultsController;
  self->_groupFetchResultsController = v12;

  [(STGroupFetchedResultsController *)self->_groupFetchResultsController setDelegate:self];
}

- (void)loadViewModelWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(STTimeAllowancesViewModelCoordinator *)self viewModel];
  v6 = [(STTimeAllowancesViewModelCoordinator *)self userDSID];
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3032000000;
  v19[3] = __Block_byref_object_copy__6;
  v19[4] = __Block_byref_object_dispose__6;
  v20 = [(STTimeAllowancesViewModelCoordinator *)self userObjectID];
  objc_initWeak(&location, self);
  v7 = [(STTimeAllowancesViewModelCoordinator *)self persistenceController];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __75__STTimeAllowancesViewModelCoordinator_loadViewModelWithCompletionHandler___block_invoke;
  v11[3] = &unk_279B7E3D0;
  v16 = v19;
  v8 = v6;
  v12 = v8;
  v9 = v4;
  v15 = v9;
  v13 = self;
  v10 = v5;
  v14 = v10;
  objc_copyWeak(&v17, &location);
  [v7 performBackgroundTask:v11];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
  _Block_object_dispose(v19, 8);
}

void __75__STTimeAllowancesViewModelCoordinator_loadViewModelWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v118[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v80 = v3;
  v81 = a1;
  if (*(*(*(a1 + 64) + 8) + 40))
  {
    v4 = [v3 objectWithID:?];
  }

  else
  {
    v4 = 0;
  }

  if (*(*(*(a1 + 64) + 8) + 40))
  {
    v5 = 0;
    if (v4)
    {
      goto LABEL_6;
    }

LABEL_12:
    v17 = +[STUILog persistence];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      __75__STTimeAllowancesViewModelCoordinator_loadViewModelWithCompletionHandler___block_invoke_cold_7();
    }

    v18 = MEMORY[0x277CCA9B8];
    v117 = *MEMORY[0x277CCA450];
    v118[0] = @"user could not be found";
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v118 forKeys:&v117 count:1];
    v20 = [v18 errorWithDomain:*MEMORY[0x277D4BBD8] code:11 userInfo:v19];

    v21 = *(v81 + 56);
    v22 = v20;
    if (v21)
    {
      if ([MEMORY[0x277CCACC8] isMainThread])
      {
        v21[2](v21, v22);
      }

      else
      {
        block = MEMORY[0x277D85DD0];
        v108 = 3221225472;
        v109 = __STUICallCompletionHandlerOnMainThread_block_invoke_2;
        v110 = &unk_279B7D130;
        v112 = v21;
        v111 = v22;
        dispatch_async(MEMORY[0x277D85CD0], &block);
      }
    }

    goto LABEL_96;
  }

  v10 = v4;
  v11 = [MEMORY[0x277D4B988] fetchRequestForUsersWithDSID:*(a1 + 32)];
  v106 = 0;
  v12 = [v11 execute:&v106];
  v5 = v106;
  if (v12)
  {
    v13 = [v12 firstObject];

    v14 = [v13 objectID];
    v15 = *(*(v81 + 64) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    v4 = v13;
    if (v13)
    {
LABEL_6:
      v78 = v4;
      v79 = [v4 managingOrganization];
      if (v79)
      {
        v6 = [MEMORY[0x277D4B928] fetchRequestMatchingBlueprintsForUser:v78 ofType:*MEMORY[0x277D4BB90] fromOrganization:v79 includeTombstones:0];
        v105 = v5;
        v7 = [v6 execute:&v105];
        v8 = v105;

        if (!v7)
        {
          v26 = +[STUILog persistence];
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            __75__STTimeAllowancesViewModelCoordinator_loadViewModelWithCompletionHandler___block_invoke_cold_4();
          }

          v27 = *(v81 + 56);
          v22 = v8;
          if (v27)
          {
            if ([MEMORY[0x277CCACC8] isMainThread])
            {
              v27[2](v27, v22);
            }

            else
            {
              block = MEMORY[0x277D85DD0];
              v108 = 3221225472;
              v109 = __STUICallCompletionHandlerOnMainThread_block_invoke_2;
              v110 = &unk_279B7D130;
              v112 = v27;
              v111 = v22;
              dispatch_async(MEMORY[0x277D85CD0], &block);
            }
          }

          goto LABEL_95;
        }

        v9 = [v7 firstObject];
        if (v9)
        {
          v73 = [[STDeviceBedtime alloc] initWithBlueprint:v9];
        }

        else
        {
          v73 = 0;
        }

        v82 = objc_opt_new();
        v76 = [MEMORY[0x277D4B928] fetchRequestMatchingBlueprintsForUser:v78 ofType:*MEMORY[0x277D4BBA8] fromOrganization:v79 includeTombstones:0];
        v104 = v8;
        v28 = [v76 execute:&v104];
        v74 = v104;

        if (!v28)
        {
          v46 = +[STUILog persistence];
          if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
          {
            __75__STTimeAllowancesViewModelCoordinator_loadViewModelWithCompletionHandler___block_invoke_cold_3();
          }

          v47 = *(v81 + 56);
          v22 = v74;
          if (v47)
          {
            if ([MEMORY[0x277CCACC8] isMainThread])
            {
              v47[2](v47, v22);
            }

            else
            {
              block = MEMORY[0x277D85DD0];
              v108 = 3221225472;
              v109 = __STUICallCompletionHandlerOnMainThread_block_invoke_2;
              v110 = &unk_279B7D130;
              v112 = v47;
              v111 = v22;
              dispatch_async(MEMORY[0x277D85CD0], &block);
            }
          }

          v43 = v76;
          goto LABEL_94;
        }

        v102 = 0u;
        v103 = 0u;
        v100 = 0u;
        v101 = 0u;
        v29 = v28;
        v23 = 0;
        v30 = [v29 countByEnumeratingWithState:&v100 objects:v116 count:16];
        if (v30)
        {
          v31 = *v101;
          do
          {
            for (i = 0; i != v30; ++i)
            {
              if (*v101 != v31)
              {
                objc_enumerationMutation(v29);
              }

              v33 = *(*(&v100 + 1) + 8 * i);
              v34 = [v33 configurations];
              v35 = [v34 count] == 0;

              if (v35)
              {
                v39 = +[STUILog persistence];
                if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
                {
                  __75__STTimeAllowancesViewModelCoordinator_loadViewModelWithCompletionHandler___block_invoke_cold_1(v114, v33, &v115, v39);
                }

                [v33 tombstone];
                v23 = 1;
              }

              else
              {
                v36 = [[STAllowance alloc] initWithBlueprint:v33];
                v37 = [(STAllowance *)v36 identifier];

                if (v37)
                {
                  v38 = [(STAllowance *)v36 identifier];
                  [v82 setObject:v36 forKeyedSubscript:v38];
                }
              }
            }

            v30 = [v29 countByEnumeratingWithState:&v100 objects:v116 count:16];
          }

          while (v30);
        }

        v40 = MEMORY[0x277D4B928];
        v41 = *(v81 + 32);
        v42 = [v78 alwaysAllowActivationIdentifier];
        v43 = [v40 fetchRequestMatchingBlueprintsForUserWithDSID:v41 ofType:*MEMORY[0x277D4BB88] withIdentifier:v42 fromOrganization:v79];

        v99 = v74;
        v44 = [v43 execute:&v99];
        v5 = v99;

        if (!v44)
        {
          v48 = +[STUILog persistence];
          if (os_log_type_enabled(v48, OS_LOG_TYPE_FAULT))
          {
            __75__STTimeAllowancesViewModelCoordinator_loadViewModelWithCompletionHandler___block_invoke_cold_2();
          }

          v49 = *(v81 + 56);
          v22 = v5;
          if (v49)
          {
            if ([MEMORY[0x277CCACC8] isMainThread])
            {
              v49[2](v49, v22);
            }

            else
            {
              block = MEMORY[0x277D85DD0];
              v108 = 3221225472;
              v109 = __STUICallCompletionHandlerOnMainThread_block_invoke_2;
              v110 = &unk_279B7D130;
              v112 = v49;
              v111 = v22;
              dispatch_async(MEMORY[0x277D85CD0], &block);
            }
          }

          goto LABEL_94;
        }

        v45 = [v44 firstObject];
        if (v45)
        {
          v72 = [[STAlwaysAllowList alloc] initWithBlueprint:v45];
        }

        else
        {
          v72 = 0;
        }
      }

      else
      {
        v82 = objc_opt_new();
        v23 = 0;
        v72 = 0;
        v73 = 0;
      }

      v77 = [MEMORY[0x277D4B910] fetchRequest];
      v50 = MEMORY[0x277CCAC30];
      v51 = [*(v81 + 40) userDSID];
      v52 = [MEMORY[0x277CBEAA8] date];
      v53 = [v50 predicateWithFormat:@"%K == %@ AND %K == nil AND %K > %@", @"requestingUser.dsid", v51, @"answer", @"expirationDate", v52];
      [v77 setPredicate:v53];

      v98 = v5;
      v75 = [v77 execute:&v98];
      v54 = v98;

      if (v75)
      {
        v55 = objc_opt_new();
        v96 = 0u;
        v97 = 0u;
        v95 = 0u;
        v94 = 0u;
        v56 = v75;
        v57 = [v56 countByEnumeratingWithState:&v94 objects:v113 count:16];
        if (v57)
        {
          v58 = *v95;
          do
          {
            for (j = 0; j != v57; ++j)
            {
              if (*v95 != v58)
              {
                objc_enumerationMutation(v56);
              }

              v60 = [[STUIAskForTimeRequestResponse alloc] initWithRequestResponse:*(*(&v94 + 1) + 8 * j)];
              v61 = [(STUIAskForTimeRequestResponse *)v60 identifier];
              [v55 setObject:v60 forKeyedSubscript:v61];
            }

            v57 = [v56 countByEnumeratingWithState:&v94 objects:v113 count:16];
          }

          while (v57);
        }

        v62 = [v78 unmodeledManagingOrganizationSettings];
        v63 = [v62 allLimitsEnabled];
        v84[0] = MEMORY[0x277D85DD0];
        v84[1] = 3221225472;
        v84[2] = __75__STTimeAllowancesViewModelCoordinator_loadViewModelWithCompletionHandler___block_invoke_265;
        v84[3] = &unk_279B7E3A8;
        v85 = *(v81 + 48);
        v86 = v73;
        v87 = v82;
        v93 = v63;
        v88 = v72;
        v64 = v55;
        v89 = v64;
        objc_copyWeak(&v92, (v81 + 72));
        v71 = *(v81 + 56);
        v65 = v71;
        v91 = v71;
        v90 = *(v81 + 40);
        dispatch_async(MEMORY[0x277D85CD0], v84);
        if (v23)
        {
          v66 = [*(v81 + 40) persistenceController];
          v83 = v54;
          v67 = [v66 saveContext:v80 error:&v83];
          v22 = v83;

          if (v67)
          {
            v68 = +[STUILog persistence];
            if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(block) = 0;
              _os_log_impl(&dword_264BA2000, v68, OS_LOG_TYPE_DEFAULT, "Saved database after deleting corrupt blueprints", &block, 2u);
            }
          }

          else
          {
            v68 = +[STUILog persistence];
            if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
            {
              __75__STContentPrivacyViewModelCoordinator_loadViewModelWithCompletionHandler___block_invoke_cold_2();
            }
          }
        }

        else
        {
          v22 = v54;
        }

        objc_destroyWeak(&v92);
      }

      else
      {
        v69 = +[STUILog persistence];
        if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
        {
          __75__STTimeAllowancesViewModelCoordinator_loadViewModelWithCompletionHandler___block_invoke_cold_6();
        }

        v70 = *(v81 + 56);
        v22 = v54;
        if (v70)
        {
          if ([MEMORY[0x277CCACC8] isMainThread])
          {
            v70[2](v70, v22);
          }

          else
          {
            block = MEMORY[0x277D85DD0];
            v108 = 3221225472;
            v109 = __STUICallCompletionHandlerOnMainThread_block_invoke_2;
            v110 = &unk_279B7D130;
            v112 = v70;
            v111 = v22;
            dispatch_async(MEMORY[0x277D85CD0], &block);
          }
        }
      }

      v43 = v72;
LABEL_94:

      v6 = v73;
LABEL_95:

      goto LABEL_96;
    }

    goto LABEL_12;
  }

  v24 = +[STUILog persistence];
  if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
  {
    __88__STTimeAllowancesViewModelCoordinator_saveDefaultAlwaysAllowListWithCompletionHandler___block_invoke_cold_1();
  }

  v25 = *(a1 + 56);
  v22 = v5;
  if (v25)
  {
    if ([MEMORY[0x277CCACC8] isMainThread])
    {
      v25[2](v25, v22);
    }

    else
    {
      block = MEMORY[0x277D85DD0];
      v108 = 3221225472;
      v109 = __STUICallCompletionHandlerOnMainThread_block_invoke_2;
      v110 = &unk_279B7D130;
      v112 = v25;
      v111 = v22;
      dispatch_async(MEMORY[0x277D85CD0], &block);
    }
  }

LABEL_96:
}

void __75__STTimeAllowancesViewModelCoordinator_loadViewModelWithCompletionHandler___block_invoke_265(uint64_t a1)
{
  [*(a1 + 32) setBedtime:*(a1 + 40)];
  [*(a1 + 32) setAllowancesByIdentifier:*(a1 + 48)];
  [*(a1 + 32) setAllAllowancesEnabled:*(a1 + 104)];
  [*(a1 + 32) setAlwaysAllowList:*(a1 + 56)];
  [*(a1 + 32) setPendingAskForTimeByIdentifier:*(a1 + 64)];
  v2 = *(*(*(a1 + 88) + 8) + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 96));
  [WeakRetained setUserObjectID:v2];

  v4 = *(a1 + 80);
  if (v4)
  {
    if ([MEMORY[0x277CCACC8] isMainThread])
    {
      v4[2](v4, 0);
    }

    else
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __STUICallCompletionHandlerOnMainThread_block_invoke_2;
      block[3] = &unk_279B7D130;
      v13 = 0;
      v14 = v4;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }

  v5 = [*(a1 + 56) allowedBundleIDs];
  v6 = [MEMORY[0x277CF9650] sharedCategories];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __75__STTimeAllowancesViewModelCoordinator_loadViewModelWithCompletionHandler___block_invoke_2;
  v9[3] = &unk_279B7E380;
  v7 = *(a1 + 72);
  v10 = v5;
  v11 = v7;
  v8 = v5;
  [v6 categoriesForBundleIDs:v8 completionHandler:v9];
}

void __75__STTimeAllowancesViewModelCoordinator_loadViewModelWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB40]) initWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __75__STTimeAllowancesViewModelCoordinator_loadViewModelWithCompletionHandler___block_invoke_268;
    v13[3] = &unk_279B7CAB8;
    v8 = v7;
    v14 = v8;
    [v5 enumerateKeysAndObjectsUsingBlock:v13];
    v9 = [MEMORY[0x277CCABD8] mainQueue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __75__STTimeAllowancesViewModelCoordinator_loadViewModelWithCompletionHandler___block_invoke_2_271;
    v11[3] = &unk_279B7CAE0;
    v11[4] = *(a1 + 40);
    v12 = v8;
    v10 = v8;
    [v9 addOperationWithBlock:v11];
  }

  else
  {
    v10 = +[STUILog persistence];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __75__STTimeAllowancesViewModelCoordinator_loadViewModelWithCompletionHandler___block_invoke_2_cold_1();
    }
  }
}

void __75__STTimeAllowancesViewModelCoordinator_loadViewModelWithCompletionHandler___block_invoke_268(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 canonicalBundleIdentifier];
  v8 = v6;
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  [v4 addObject:v7];
}

void __75__STTimeAllowancesViewModelCoordinator_loadViewModelWithCompletionHandler___block_invoke_2_271(uint64_t a1)
{
  v4 = [*(a1 + 40) array];
  v2 = [*(a1 + 32) viewModel];
  v3 = [v2 alwaysAllowList];
  [v3 setAllowedBundleIDs:v4];
}

- (id)_iCloudAccountPredicate
{
  v2 = MEMORY[0x277CFBBD8];
  v3 = [(STTimeAllowancesViewModelCoordinator *)self userDSID];
  v4 = [v3 stringValue];
  v5 = [v2 buildWithDSID:v4];

  return v5;
}

- (void)saveDeviceBedtime:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(STTimeAllowancesViewModelCoordinator *)self persistenceController];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __76__STTimeAllowancesViewModelCoordinator_saveDeviceBedtime_completionHandler___block_invoke;
  v11[3] = &unk_279B7E3F8;
  objc_copyWeak(&v14, &location);
  v9 = v7;
  v13 = v9;
  v10 = v6;
  v12 = v10;
  [v8 performBackgroundTask:v11];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __76__STTimeAllowancesViewModelCoordinator_saveDeviceBedtime_completionHandler___block_invoke(id *a1, void *a2)
{
  v39[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v5 = [WeakRetained userObjectID];

  if (v5)
  {
    v6 = [v3 objectWithID:v5];
    if (v6)
    {
      v7 = v6;
      v8 = [a1[4] scheduleByWeekdayIndex];
      if (v8)
      {
        v9 = 0;
        v10 = 0;
      }

      else
      {
        v17 = [a1[4] simpleSchedule];
        v9 = [v17 startTime];
        v10 = [v17 endTime];
      }

      v18 = [a1[4] askForMoreTime];
      v19 = MEMORY[0x277D4B928];
      v20 = [a1[4] deviceBedtimeEnabled];
      v31 = 0;
      LODWORD(v18) = [v19 saveDowntimeForUser:v7 startTime:v9 endTime:v10 scheduleByWeekdayIndex:v8 enabled:v20 behaviorType:v18 error:&v31];
      v21 = v31;
      if (v18)
      {
        v29 = v8;
        v22 = v10;
        v23 = v9;
        v24 = [MEMORY[0x277D4B898] sharedController];
        v30 = v21;
        v25 = [v24 saveContext:v3 error:&v30];
        v16 = v30;

        v26 = a1[5];
        if (v25)
        {
          v27 = v26;
          v9 = v23;
          v10 = v22;
          v8 = v29;
          if (v27)
          {
            if ([MEMORY[0x277CCACC8] isMainThread])
            {
              v27[2](v27, 0);
            }

            else
            {
              block = MEMORY[0x277D85DD0];
              v33 = 3221225472;
              v34 = __STUICallCompletionHandlerOnMainThread_block_invoke_2;
              v35 = &unk_279B7D130;
              v28 = v27;
              v36 = 0;
              v37 = v28;
              dispatch_async(MEMORY[0x277D85CD0], &block);
            }
          }

          goto LABEL_25;
        }

        v27 = v26;
        v16 = v16;
        v9 = v23;
        v10 = v22;
        v8 = v29;
        if (v27)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v27 = a1[5];
        v16 = v21;
        if (v27)
        {
LABEL_21:
          if ([MEMORY[0x277CCACC8] isMainThread])
          {
            (v27)[2](v27, v16);
          }

          else
          {
            block = MEMORY[0x277D85DD0];
            v33 = 3221225472;
            v34 = __STUICallCompletionHandlerOnMainThread_block_invoke_2;
            v35 = &unk_279B7D130;
            v37 = v27;
            v36 = v16;
            dispatch_async(MEMORY[0x277D85CD0], &block);
          }
        }
      }

LABEL_25:
      goto LABEL_26;
    }
  }

  v11 = +[STUILog persistence];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    __84__STContentPrivacyViewModelCoordinator_saveContentPrivacyEnabled_completionHandler___block_invoke_cold_4();
  }

  v12 = MEMORY[0x277CCA9B8];
  v13 = *MEMORY[0x277D4BBD8];
  v38 = *MEMORY[0x277CCA450];
  v39[0] = @"user could not be found";
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:&v38 count:1];
  v15 = [v12 errorWithDomain:v13 code:11 userInfo:v14];

  v7 = a1[5];
  v16 = v15;
  if (v7)
  {
    if ([MEMORY[0x277CCACC8] isMainThread])
    {
      v7[2](v7, v16);
    }

    else
    {
      block = MEMORY[0x277D85DD0];
      v33 = 3221225472;
      v34 = __STUICallCompletionHandlerOnMainThread_block_invoke_2;
      v35 = &unk_279B7D130;
      v37 = v7;
      v36 = v16;
      dispatch_async(MEMORY[0x277D85CD0], &block);
    }
  }

LABEL_26:
}

- (void)toggleDowntimeWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(STTimeAllowancesViewModelCoordinator *)self userObjectID];
  v6 = [(STTimeAllowancesViewModelCoordinator *)self persistenceController];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __76__STTimeAllowancesViewModelCoordinator_toggleDowntimeWithCompletionHandler___block_invoke;
  v9[3] = &unk_279B7D550;
  v11 = self;
  v12 = v4;
  v10 = v5;
  v7 = v4;
  v8 = v5;
  [v6 performBackgroundTask:v9];
}

void __76__STTimeAllowancesViewModelCoordinator_toggleDowntimeWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v33[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32) && ([v3 objectWithID:?], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    v7 = objc_alloc(MEMORY[0x277D4BAE0]);
    v8 = [v6 dsid];
    v9 = [v7 initWithDSID:v8];

    v10 = [*(a1 + 40) isDowntimeActive];
    v25 = 0;
    v11 = [MEMORY[0x277D4B928] applyAutomaticOnDemandDowntimeStateChange:v10 ^ 1u forUserID:v9 context:v4 error:&v25];
    v12 = v25;

    if (v11)
    {
      v13 = [MEMORY[0x277D4B898] sharedController];
      v24 = v12;
      v14 = [v13 saveContext:v4 error:&v24];
      v15 = v24;

      if (v14)
      {
        v16 = 0;
      }

      else
      {
        v16 = v15;
      }

      v12 = v15;
    }

    else
    {
      v16 = v12;
    }

    v22 = *(a1 + 48);
    v23 = v16;
    if (v22)
    {
      if ([MEMORY[0x277CCACC8] isMainThread])
      {
        v22[2](v22, v23);
      }

      else
      {
        block = MEMORY[0x277D85DD0];
        v27 = 3221225472;
        v28 = __STUICallCompletionHandlerOnMainThread_block_invoke_2;
        v29 = &unk_279B7D130;
        v31 = v22;
        v30 = v23;
        dispatch_async(MEMORY[0x277D85CD0], &block);
      }
    }
  }

  else
  {
    v17 = +[STUILog persistence];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      __76__STTimeAllowancesViewModelCoordinator_toggleDowntimeWithCompletionHandler___block_invoke_cold_1();
    }

    v18 = MEMORY[0x277CCA9B8];
    v19 = *MEMORY[0x277D4BBD8];
    v32 = *MEMORY[0x277CCA450];
    v33[0] = @"user could not be found";
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:1];
    v21 = [v18 errorWithDomain:v19 code:11 userInfo:v20];

    v6 = *(a1 + 48);
    v12 = v21;
    if (v6)
    {
      if ([MEMORY[0x277CCACC8] isMainThread])
      {
        (*(v6 + 2))(v6, v12);
      }

      else
      {
        block = MEMORY[0x277D85DD0];
        v27 = 3221225472;
        v28 = __STUICallCompletionHandlerOnMainThread_block_invoke_2;
        v29 = &unk_279B7D130;
        v31 = v6;
        v30 = v12;
        dispatch_async(MEMORY[0x277D85CD0], &block);
      }
    }
  }
}

- (BOOL)isDowntimeActive
{
  v3 = objc_alloc(MEMORY[0x277D4BAE0]);
  v4 = [(STTimeAllowancesViewModelCoordinator *)self userDSID];
  v5 = [v3 initWithDSID:v4];

  v6 = [(STTimeAllowancesViewModelCoordinator *)self persistenceController];
  v7 = [v6 viewContext];

  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __56__STTimeAllowancesViewModelCoordinator_isDowntimeActive__block_invoke;
  v11[3] = &unk_279B7E0B8;
  v8 = v5;
  v12 = v8;
  v9 = v7;
  v13 = v9;
  v14 = &v15;
  [v9 performBlockAndWait:v11];
  LOBYTE(v7) = *(v16 + 24);

  _Block_object_dispose(&v15, 8);
  return v7;
}

void __56__STTimeAllowancesViewModelCoordinator_isDowntimeActive__block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v7 = 0;
  v4 = [MEMORY[0x277D4B928] downtimeConfigurationForUserID:v2 context:v3 error:&v7];
  v5 = v7;
  v6 = [v4 currentState];

  if (v6 <= 4)
  {
    *(*(a1[6] + 8) + 24) = 0x100010000uLL >> (8 * v6);
  }
}

- (int64_t)currentDowntimeState
{
  v3 = objc_alloc(MEMORY[0x277D4BAE0]);
  v4 = [(STTimeAllowancesViewModelCoordinator *)self userDSID];
  v5 = [v3 initWithDSID:v4];

  v6 = [(STTimeAllowancesViewModelCoordinator *)self persistenceController];
  v7 = [v6 viewContext];

  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __60__STTimeAllowancesViewModelCoordinator_currentDowntimeState__block_invoke;
  v12[3] = &unk_279B7E420;
  v15 = &v16;
  v8 = v5;
  v13 = v8;
  v9 = v7;
  v14 = v9;
  [v9 performBlockAndWait:v12];
  v10 = v17[3];

  _Block_object_dispose(&v16, 8);
  return v10;
}

void __60__STTimeAllowancesViewModelCoordinator_currentDowntimeState__block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v6 = 0;
  v4 = [MEMORY[0x277D4B928] downtimeConfigurationForUserID:v2 context:v3 error:&v6];
  v5 = v6;
  *(*(a1[6] + 8) + 24) = [v4 currentState];
}

- (double)timeToNextExpectedStateChange
{
  v3 = objc_alloc(MEMORY[0x277D4BAE0]);
  v4 = [(STTimeAllowancesViewModelCoordinator *)self userDSID];
  v5 = [v3 initWithDSID:v4];

  v6 = [(STTimeAllowancesViewModelCoordinator *)self persistenceController];
  v7 = [v6 viewContext];

  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__6;
  v23 = __Block_byref_object_dispose__6;
  v24 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __69__STTimeAllowancesViewModelCoordinator_timeToNextExpectedStateChange__block_invoke;
  v15[3] = &unk_279B7E420;
  v18 = &v19;
  v8 = v5;
  v16 = v8;
  v9 = v7;
  v17 = v9;
  [v9 performBlockAndWait:v15];
  if (v20[5])
  {
    v10 = [MEMORY[0x277CBEA80] autoupdatingCurrentCalendar];
    v11 = STLocalDateFromUTCErasedDate();
    [v11 timeIntervalSinceNow];
    v13 = v12;
  }

  else
  {
    v13 = -1.0;
  }

  _Block_object_dispose(&v19, 8);
  return v13;
}

void __69__STTimeAllowancesViewModelCoordinator_timeToNextExpectedStateChange__block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v9 = 0;
  v4 = [MEMORY[0x277D4B928] downtimeConfigurationForUserID:v2 context:v3 error:&v9];
  v5 = v9;
  v6 = [v4 nextStateChangeDate];
  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

- (void)saveAllowance:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(STTimeAllowancesViewModelCoordinator *)self persistenceController];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __72__STTimeAllowancesViewModelCoordinator_saveAllowance_completionHandler___block_invoke;
  v11[3] = &unk_279B7D550;
  v12 = v6;
  v13 = v7;
  v11[4] = self;
  v9 = v6;
  v10 = v7;
  [v8 performBackgroundTask:v11];
}

void __72__STTimeAllowancesViewModelCoordinator_saveAllowance_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v32[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) userObjectID];
  if (v4)
  {
    v5 = [v3 objectWithID:v4];
    if (v5)
    {
      v6 = v5;
      v7 = objc_opt_class();
      v8 = *(a1 + 40);
      v24 = 0;
      v9 = [v7 saveAllowance:v8 forUser:v6 error:&v24];
      v10 = v24;
      if (v9)
      {
        v11 = [MEMORY[0x277D4B898] sharedController];
        v23 = v10;
        v12 = [v11 saveContext:v3 error:&v23];
        v13 = v23;

        v14 = *(a1 + 48);
        if (v12)
        {
          v15 = v14;
          if (v15)
          {
            if ([MEMORY[0x277CCACC8] isMainThread])
            {
              v15[2](v15, 0);
            }

            else
            {
              block = MEMORY[0x277D85DD0];
              v26 = 3221225472;
              v27 = __STUICallCompletionHandlerOnMainThread_block_invoke_2;
              v28 = &unk_279B7D130;
              v22 = v15;
              v29 = 0;
              v30 = v22;
              dispatch_async(MEMORY[0x277D85CD0], &block);
            }
          }

LABEL_22:

          goto LABEL_23;
        }

        v15 = v14;
        v21 = v13;
      }

      else
      {
        v15 = *(a1 + 48);
        v21 = v10;
      }

      v13 = v21;
      if (v15)
      {
        if ([MEMORY[0x277CCACC8] isMainThread])
        {
          (v15)[2](v15, v13);
        }

        else
        {
          block = MEMORY[0x277D85DD0];
          v26 = 3221225472;
          v27 = __STUICallCompletionHandlerOnMainThread_block_invoke_2;
          v28 = &unk_279B7D130;
          v30 = v15;
          v29 = v13;
          dispatch_async(MEMORY[0x277D85CD0], &block);
        }
      }

      goto LABEL_22;
    }
  }

  v16 = +[STUILog persistence];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
  {
    __84__STContentPrivacyViewModelCoordinator_saveContentPrivacyEnabled_completionHandler___block_invoke_cold_4();
  }

  v17 = MEMORY[0x277CCA9B8];
  v18 = *MEMORY[0x277D4BBD8];
  v31 = *MEMORY[0x277CCA450];
  v32[0] = @"user could not be found";
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
  v20 = [v17 errorWithDomain:v18 code:11 userInfo:v19];

  v6 = *(a1 + 48);
  v13 = v20;
  if (v6)
  {
    if ([MEMORY[0x277CCACC8] isMainThread])
    {
      v6[2](v6, v13);
    }

    else
    {
      block = MEMORY[0x277D85DD0];
      v26 = 3221225472;
      v27 = __STUICallCompletionHandlerOnMainThread_block_invoke_2;
      v28 = &unk_279B7D130;
      v30 = v6;
      v29 = v13;
      dispatch_async(MEMORY[0x277D85CD0], &block);
    }
  }

LABEL_23:
}

+ (BOOL)saveAllowance:(id)a3 forUser:(id)a4 error:(id *)a5
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 timeByDay];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v8, "count")}];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __68__STTimeAllowancesViewModelCoordinator_saveAllowance_forUser_error___block_invoke;
    v31[3] = &unk_279B7E448;
    v32 = v9;
    v29 = v9;
    [v8 enumerateKeysAndObjectsUsingBlock:v31];
    v10 = MEMORY[0x277D4B928];
    v11 = [v7 identifier];
    v12 = [v7 bundleIdentifiers];
    v13 = [v7 webDomains];
    v14 = [v7 categoryIdentifiers];
    v15 = [v7 allowanceEnabled];
    v16 = [v7 behaviorType];

    LOBYTE(v28) = v15;
    v17 = [v10 saveUsageLimitWithIdentifier:v11 user:v6 bundleIdentifiers:v12 webDomains:v13 categoryIdentifiers:v14 dailyBudgetLimit:v29 budgetLimitByWeekday:0.0 enabled:v28 behaviorType:v16 error:a5];
  }

  else
  {
    v18 = [v7 time];
    [STAllowance timeIntervalForAllowanceDateComponents:v18];
    v20 = v19;

    v21 = MEMORY[0x277D4B928];
    v22 = [v7 identifier];
    v23 = [v7 bundleIdentifiers];
    v24 = [v7 webDomains];
    v25 = [v7 categoryIdentifiers];
    LOBYTE(v18) = [v7 allowanceEnabled];
    v26 = [v7 behaviorType];

    LOBYTE(v28) = v18;
    v17 = [v21 saveUsageLimitWithIdentifier:v22 user:v6 bundleIdentifiers:v23 webDomains:v24 categoryIdentifiers:v25 dailyBudgetLimit:0 budgetLimitByWeekday:v20 enabled:v28 behaviorType:v26 error:a5];
  }

  return v17;
}

void __68__STTimeAllowancesViewModelCoordinator_saveAllowance_forUser_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x277CCABB0];
  v6 = a2;
  [STAllowance timeIntervalForAllowanceDateComponents:a3];
  v7 = [v5 numberWithDouble:?];
  [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];
}

- (void)deleteAllowance:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(STTimeAllowancesViewModelCoordinator *)self userObjectID];
  v9 = [(STTimeAllowancesViewModelCoordinator *)self persistenceController];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __74__STTimeAllowancesViewModelCoordinator_deleteAllowance_completionHandler___block_invoke;
  v13[3] = &unk_279B7D550;
  v15 = v6;
  v16 = v7;
  v14 = v8;
  v10 = v6;
  v11 = v7;
  v12 = v8;
  [v9 performBackgroundTask:v13];
}

void __74__STTimeAllowancesViewModelCoordinator_deleteAllowance_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v31[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32))
  {
    v5 = [v3 objectWithID:?];
    if (v5)
    {
      v6 = v5;
      v7 = MEMORY[0x277D4B928];
      v8 = [*(a1 + 40) identifier];
      v23 = 0;
      LODWORD(v7) = [v7 deleteUsageLimitWithIdentifier:v8 user:v6 managedObjectContext:v4 error:&v23];
      v9 = v23;

      if (v7)
      {
        v10 = [MEMORY[0x277D4B898] sharedController];
        v22 = v9;
        v11 = [v10 saveContext:v4 error:&v22];
        v12 = v22;

        v13 = *(a1 + 48);
        if (v11)
        {
          v14 = v13;
          if (v14)
          {
            if ([MEMORY[0x277CCACC8] isMainThread])
            {
              v14[2](v14, 0);
            }

            else
            {
              block = MEMORY[0x277D85DD0];
              v25 = 3221225472;
              v26 = __STUICallCompletionHandlerOnMainThread_block_invoke_2;
              v27 = &unk_279B7D130;
              v21 = v14;
              v28 = 0;
              v29 = v21;
              dispatch_async(MEMORY[0x277D85CD0], &block);
            }
          }

LABEL_22:

          goto LABEL_23;
        }

        v14 = v13;
        v20 = v12;
      }

      else
      {
        v14 = *(a1 + 48);
        v20 = v9;
      }

      v12 = v20;
      if (v14)
      {
        if ([MEMORY[0x277CCACC8] isMainThread])
        {
          (v14)[2](v14, v12);
        }

        else
        {
          block = MEMORY[0x277D85DD0];
          v25 = 3221225472;
          v26 = __STUICallCompletionHandlerOnMainThread_block_invoke_2;
          v27 = &unk_279B7D130;
          v29 = v14;
          v28 = v12;
          dispatch_async(MEMORY[0x277D85CD0], &block);
        }
      }

      goto LABEL_22;
    }
  }

  v15 = +[STUILog persistence];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
  {
    __76__STTimeAllowancesViewModelCoordinator_toggleDowntimeWithCompletionHandler___block_invoke_cold_1();
  }

  v16 = MEMORY[0x277CCA9B8];
  v17 = *MEMORY[0x277D4BBD8];
  v30 = *MEMORY[0x277CCA450];
  v31[0] = @"user could not be found";
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];
  v19 = [v16 errorWithDomain:v17 code:11 userInfo:v18];

  v6 = *(a1 + 48);
  v12 = v19;
  if (v6)
  {
    if ([MEMORY[0x277CCACC8] isMainThread])
    {
      v6[2](v6, v12);
    }

    else
    {
      block = MEMORY[0x277D85DD0];
      v25 = 3221225472;
      v26 = __STUICallCompletionHandlerOnMainThread_block_invoke_2;
      v27 = &unk_279B7D130;
      v29 = v6;
      v28 = v12;
      dispatch_async(MEMORY[0x277D85CD0], &block);
    }
  }

LABEL_23:
}

- (void)saveAllAllowancesEnabled:(BOOL)a3 completionHandler:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(STTimeAllowancesViewModelCoordinator *)self viewModel];
  [v7 setAllAllowancesEnabled:v4];

  v8 = [(STTimeAllowancesViewModelCoordinator *)self userObjectID];
  v9 = [(STTimeAllowancesViewModelCoordinator *)self persistenceController];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __83__STTimeAllowancesViewModelCoordinator_saveAllAllowancesEnabled_completionHandler___block_invoke;
  v12[3] = &unk_279B7E470;
  v14 = self;
  v15 = v6;
  v16 = v4;
  v13 = v8;
  v10 = v6;
  v11 = v8;
  [v9 performBackgroundTask:v12];
}

void __83__STTimeAllowancesViewModelCoordinator_saveAllAllowancesEnabled_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v30[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32) && ([v3 objectWithID:?], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    v7 = [v5 unmodeledManagingOrganizationSettings];
    [v7 setAllLimitsEnabled:*(a1 + 56)];
    v8 = [v6 familySettings];
    v9 = v8;
    if (v7 == v8)
    {
      [v8 setIsDirty:1];
    }

    v10 = [*(a1 + 40) persistenceController];
    v22 = 0;
    v11 = [v10 saveContext:v4 error:&v22];
    v12 = v22;

    if (v11)
    {
      v13 = *(a1 + 48);
      if (v13)
      {
        if ([MEMORY[0x277CCACC8] isMainThread])
        {
          v13[2](v13, 0);
        }

        else
        {
          block = MEMORY[0x277D85DD0];
          v24 = 3221225472;
          v25 = __STUICallCompletionHandlerOnMainThread_block_invoke_2;
          v26 = &unk_279B7D130;
          v21 = v13;
          v27 = 0;
          v28 = v21;
          dispatch_async(MEMORY[0x277D85CD0], &block);
        }
      }
    }

    else
    {
      v19 = +[STUILog persistence];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        __82__STContentPrivacyViewModelCoordinator_saveCommunicationLimits_completionHandler___block_invoke_cold_1();
      }

      v13 = *(a1 + 48);
      v20 = v12;
      if (v13)
      {
        if ([MEMORY[0x277CCACC8] isMainThread])
        {
          (v13)[2](v13, v20);
        }

        else
        {
          block = MEMORY[0x277D85DD0];
          v24 = 3221225472;
          v25 = __STUICallCompletionHandlerOnMainThread_block_invoke_2;
          v26 = &unk_279B7D130;
          v28 = v13;
          v27 = v20;
          dispatch_async(MEMORY[0x277D85CD0], &block);
        }
      }
    }
  }

  else
  {
    v14 = +[STUILog persistence];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      __76__STTimeAllowancesViewModelCoordinator_toggleDowntimeWithCompletionHandler___block_invoke_cold_1();
    }

    v15 = MEMORY[0x277CCA9B8];
    v16 = *MEMORY[0x277D4BBD8];
    v29 = *MEMORY[0x277CCA450];
    v30[0] = @"user could not be found";
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
    v18 = [v15 errorWithDomain:v16 code:11 userInfo:v17];

    v6 = *(a1 + 48);
    v12 = v18;
    if (v6)
    {
      if ([MEMORY[0x277CCACC8] isMainThread])
      {
        (*(v6 + 2))(v6, v12);
      }

      else
      {
        block = MEMORY[0x277D85DD0];
        v24 = 3221225472;
        v25 = __STUICallCompletionHandlerOnMainThread_block_invoke_2;
        v26 = &unk_279B7D130;
        v28 = v6;
        v27 = v12;
        dispatch_async(MEMORY[0x277D85CD0], &block);
      }
    }
  }
}

- (void)saveAlwaysAllowList:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = MEMORY[0x277CBEB98];
  v8 = a3;
  v9 = [(STTimeAllowancesViewModelCoordinator *)self viewModel];
  v10 = [v9 alwaysAllowList];
  v11 = [v10 allowedBundleIDs];
  v12 = [v7 setWithArray:v11];

  v13 = [v8 allowedBundleIDs];

  v14 = [MEMORY[0x277CBEB98] setWithArray:v13];
  if ([v12 isEqualToSet:v14])
  {
    v15 = v6;
    if (v15)
    {
      if ([MEMORY[0x277CCACC8] isMainThread])
      {
        v15[2](v15, 0);
      }

      else
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __STUICallCompletionHandlerOnMainThread_block_invoke_2;
        block[3] = &unk_279B7D130;
        v27 = 0;
        v28 = v15;
        dispatch_async(MEMORY[0x277D85CD0], block);
      }
    }
  }

  else
  {
    v16 = [(STTimeAllowancesViewModelCoordinator *)self userDSID];
    v17 = [(STTimeAllowancesViewModelCoordinator *)self userObjectID];
    v18 = [(STTimeAllowancesViewModelCoordinator *)self persistenceController];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __78__STTimeAllowancesViewModelCoordinator_saveAlwaysAllowList_completionHandler___block_invoke;
    v21[3] = &unk_279B7E498;
    v22 = v17;
    v23 = v16;
    v25 = v6;
    v24 = v13;
    v19 = v16;
    v20 = v17;
    [v18 performBackgroundTask:v21];
  }
}

void __78__STTimeAllowancesViewModelCoordinator_saveAlwaysAllowList_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v35[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32))
  {
    v5 = [v3 objectWithID:?];
    v6 = 0;
    if (v5)
    {
      v7 = v5;
      goto LABEL_6;
    }
  }

  else
  {
    v8 = *(a1 + 40);
    if (v8)
    {
      v27 = 0;
      v7 = [MEMORY[0x277D4B988] fetchUserWithDSID:v8 inContext:v3 error:&v27];
      v6 = v27;
      if (v7)
      {
LABEL_6:
        v9 = *(a1 + 48);
        v26 = v6;
        v10 = [MEMORY[0x277D4B928] saveAlwaysAllowListForUser:v7 withBundleIDs:v9 error:&v26];
        v11 = v26;

        if (v10)
        {
          v12 = [MEMORY[0x277D4B898] sharedController];
          v25 = v11;
          v13 = [v12 saveContext:v4 error:&v25];
          v14 = v25;

          v15 = *(a1 + 56);
          if (v13)
          {
            v16 = v15;
            if (v16)
            {
              if ([MEMORY[0x277CCACC8] isMainThread])
              {
                v16[2](v16, 0);
              }

              else
              {
                block = MEMORY[0x277D85DD0];
                v29 = 3221225472;
                v30 = __STUICallCompletionHandlerOnMainThread_block_invoke_2;
                v31 = &unk_279B7D130;
                v24 = v16;
                v32 = 0;
                v33 = v24;
                dispatch_async(MEMORY[0x277D85CD0], &block);
              }
            }

LABEL_19:

            goto LABEL_30;
          }

          v16 = v15;
          v17 = v14;
        }

        else
        {
          v16 = *(a1 + 56);
          v17 = v11;
        }

        v14 = v17;
        if (v16)
        {
          if ([MEMORY[0x277CCACC8] isMainThread])
          {
            (v16)[2](v16, v14);
          }

          else
          {
            block = MEMORY[0x277D85DD0];
            v29 = 3221225472;
            v30 = __STUICallCompletionHandlerOnMainThread_block_invoke_2;
            v31 = &unk_279B7D130;
            v33 = v16;
            v32 = v14;
            dispatch_async(MEMORY[0x277D85CD0], &block);
          }
        }

        goto LABEL_19;
      }

      v18 = +[STUILog persistence];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        __88__STTimeAllowancesViewModelCoordinator_saveDefaultAlwaysAllowListWithCompletionHandler___block_invoke_cold_1();
      }
    }

    else
    {
      v6 = 0;
    }
  }

  v19 = +[STUILog persistence];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
  {
    __78__STTimeAllowancesViewModelCoordinator_saveAlwaysAllowList_completionHandler___block_invoke_cold_2();
  }

  v20 = MEMORY[0x277CCA9B8];
  v21 = *MEMORY[0x277D4BBD8];
  v34 = *MEMORY[0x277CCA450];
  v35[0] = @"user could not be found";
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:&v34 count:1];
  v23 = [v20 errorWithDomain:v21 code:11 userInfo:v22];

  v7 = *(a1 + 56);
  v14 = v23;
  if (v7)
  {
    if ([MEMORY[0x277CCACC8] isMainThread])
    {
      v7[2](v7, v14);
    }

    else
    {
      block = MEMORY[0x277D85DD0];
      v29 = 3221225472;
      v30 = __STUICallCompletionHandlerOnMainThread_block_invoke_2;
      v31 = &unk_279B7D130;
      v33 = v7;
      v32 = v14;
      dispatch_async(MEMORY[0x277D85CD0], &block);
    }
  }

LABEL_30:
}

- (void)respondToAskForTime:(id)a3 withApproval:(BOOL)a4 timeApproved:(id)a5 completionHandler:(id)a6
{
  v7 = a4;
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = [(STTimeAllowancesViewModelCoordinator *)self askForTimeClient];
  v14 = !v7;
  v15 = objc_alloc(MEMORY[0x277CCAD78]);
  v16 = [v12 identifier];

  v17 = [v15 initWithUUIDString:v16];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __104__STTimeAllowancesViewModelCoordinator_respondToAskForTime_withApproval_timeApproved_completionHandler___block_invoke;
  v19[3] = &unk_279B7D270;
  v20 = v10;
  v18 = v10;
  [v13 handleAnswer:v14 requestIdentifier:v17 timeApproved:v11 completionHandler:v19];
}

void __104__STTimeAllowancesViewModelCoordinator_respondToAskForTime_withApproval_timeApproved_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    if ([MEMORY[0x277CCACC8] isMainThread])
    {
      v1[2](v1, 0);
    }

    else
    {
      v2[0] = MEMORY[0x277D85DD0];
      v2[1] = 3221225472;
      v2[2] = __STUICallCompletionHandlerOnMainThread_block_invoke_2;
      v2[3] = &unk_279B7D130;
      v3 = 0;
      v4 = v1;
      dispatch_async(MEMORY[0x277D85CD0], v2);
    }
  }
}

void __88__STTimeAllowancesViewModelCoordinator_saveDefaultAlwaysAllowListWithCompletionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_3(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_3_0(&dword_264BA2000, v0, v1, "failed to fetch user with DSID %{public}@: %{public}@");
}

void __88__STTimeAllowancesViewModelCoordinator_saveDefaultAlwaysAllowListWithCompletionHandler___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1_3(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_0_0(&dword_264BA2000, v0, v1, "user with DSID could not be found: %{public}@", v2, v3, v4, v5, v6);
}

void __75__STTimeAllowancesViewModelCoordinator_loadViewModelWithCompletionHandler___block_invoke_cold_1(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 identifier];
  *a1 = 138543362;
  *a3 = v7;
  _os_log_error_impl(&dword_264BA2000, a4, OS_LOG_TYPE_ERROR, "Deleting usage limit blueprint with missing configurations: %{public}@", a1, 0xCu);
}

void __76__STTimeAllowancesViewModelCoordinator_toggleDowntimeWithCompletionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_3(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_0_0(&dword_264BA2000, v0, v1, "user with objectID could not be found: %{public}@", v2, v3, v4, v5, v6);
}

void __78__STTimeAllowancesViewModelCoordinator_saveAlwaysAllowList_completionHandler___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1_3(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_3_0(&dword_264BA2000, v0, v1, "user with objectID / DSID could not be found: %{public}@ / %{public}@");
}

@end