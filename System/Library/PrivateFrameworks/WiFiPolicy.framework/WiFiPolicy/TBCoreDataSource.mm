@interface TBCoreDataSource
- (BOOL)_canSupportRequest:(id)a3;
- (TBCoreDataSource)initWithStoreDescriptor:(id)a3;
- (void)_createNewNetwork:(id)a3 tile:(id)a4 withMOC:(id)a5;
- (void)_createNewNetworkFromDictionary:(id)a3 withMOC:(id)a4;
- (void)_executeFetchRequest:(id)a3;
- (void)_executePreferLocalFetchRequest:(id)a3;
- (void)cacheFetchResponse:(id)a3 completionHandler:(id)a4;
- (void)executeFetchRequest:(id)a3;
- (void)importObjectsWithArray:(id)a3 completionHandler:(id)a4;
- (void)prune3BarsNetworks:(unint64_t)a3 completionHandler:(id)a4;
- (void)removeAllWithCompletionHandler:(id)a3;
- (void)removeWithFetchRequest:(id)a3 completionHandler:(id)a4;
@end

@implementation TBCoreDataSource

- (TBCoreDataSource)initWithStoreDescriptor:(id)a3
{
  v4 = a3;
  v32.receiver = self;
  v32.super_class = TBCoreDataSource;
  v5 = [(TBCoreDataSource *)&v32 init];
  descriptor = v5->_descriptor;
  v5->_descriptor = v4;
  v7 = v4;

  v8 = objc_alloc(MEMORY[0x277CBE450]);
  v9 = [(TBCoreDataStoreDescriptor *)v7 modelURL];
  v10 = [v8 initWithContentsOfURL:v9];

  v11 = [[TBPersistenceManager alloc] initWithManagedObjectModel:v10 storeDescriptor:v7];
  persistenceManager = v5->_persistenceManager;
  v5->_persistenceManager = v11;

  v13 = v5->_persistenceManager;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __44__TBCoreDataSource_initWithStoreDescriptor___block_invoke;
  v30[3] = &unk_2789C73D0;
  v14 = v5;
  v31 = v14;
  [(TBPersistenceManager *)v13 addPersistentStorage:v7 completionHandler:v30];
  v15 = [(TBCoreDataStoreDescriptor *)v7 modelURL];
  NSLog(&cfstr_SObjectModelAt.isa, "[TBCoreDataSource initWithStoreDescriptor:]", v15);

  v16 = [(TBCoreDataStoreDescriptor *)v7 storeURL];
  NSLog(&cfstr_SStoreUrl.isa, "[TBCoreDataSource initWithStoreDescriptor:]", v16);

  v17 = [objc_alloc(MEMORY[0x277CBE440]) initWithConcurrencyType:1];
  v18 = [MEMORY[0x277CBE460] mergeByPropertyObjectTrumpMergePolicy];
  [(NSManagedObjectContext *)v17 setMergePolicy:v18];

  v19 = [(TBPersistenceManager *)v5->_persistenceManager persistenceCoordinator];
  [(NSManagedObjectContext *)v17 setPersistentStoreCoordinator:v19];

  v20 = [MEMORY[0x277CCAC38] processInfo];
  v21 = [v20 processName];
  [(NSManagedObjectContext *)v17 setTransactionAuthor:v21];

  context = v14->_context;
  v14->_context = v17;
  v23 = v17;

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __44__TBCoreDataSource_initWithStoreDescriptor___block_invoke_2;
  v28[3] = &unk_2789C7250;
  v24 = v14;
  v29 = v24;
  [WCAFetchWiFiBehaviorParameters fetchWiFiBehaviorWithCompletion:v28];
  v25 = v29;
  v26 = v24;

  return v26;
}

void __44__TBCoreDataSource_initWithStoreDescriptor___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    NSLog(&cfstr_SAddThePersist.isa, "[TBCoreDataSource initWithStoreDescriptor:]_block_invoke", a2);
    *(*(a1 + 32) + 16) = 1;
  }
}

void __44__TBCoreDataSource_initWithStoreDescriptor___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 jtrnDefaults];
  if (v3)
  {
    v5 = v3;
    v4 = [v3 valueForKey:@"kWiFiCoreDataSourceExpirationDays"];
    *(*(a1 + 32) + 24) = [v4 intValue];

    v3 = v5;
  }

  else
  {
    *(*(a1 + 32) + 24) = 7;
  }
}

- (void)executeFetchRequest:(id)a3
{
  v4 = a3;
  if ([v4 sourcePolicy] == 3)
  {
    [(TBCoreDataSource *)self _executePreferLocalFetchRequest:v4];
  }

  else
  {
    [(TBCoreDataSource *)self _executeFetchRequest:v4];
  }
}

- (void)_executePreferLocalFetchRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 descriptor];
  v6 = [v5 preferLocalFetchDescriptor];
  v7 = [v6 fetchRequest];

  v8 = [(TBCoreDataSource *)self context];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __52__TBCoreDataSource__executePreferLocalFetchRequest___block_invoke;
  v11[3] = &unk_2789C6C70;
  v11[4] = self;
  v12 = v7;
  v13 = v4;
  v9 = v4;
  v10 = v7;
  [v8 performBlock:v11];
}

void __52__TBCoreDataSource__executePreferLocalFetchRequest___block_invoke(uint64_t a1)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) context];
  v3 = *(a1 + 40);
  v19 = 0;
  v4 = [v2 executeFetchRequest:v3 error:&v19];
  v5 = v19;

  if (v5)
  {
    NSLog(&cfstr_SError.isa, "[TBCoreDataSource _executePreferLocalFetchRequest:]_block_invoke", v5);
    v6 = *(a1 + 48);
    v7 = [TBErrorFetchResponse responseWithError:v5];
    [v6 handleResponse:v7];
LABEL_11:

    goto LABEL_12;
  }

  if (![v4 count])
  {
    v11 = [TBError alloc];
    v22 = *MEMORY[0x277CCA450];
    v23[0] = @"pref local cache doesn't satisfy request (0 results)";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v13 = v11;
    v14 = 103;
LABEL_10:
    v7 = [(TBError *)v13 initWithType:v14 userInfo:v12];

    v16 = *(a1 + 48);
    v17 = [TBErrorFetchResponse responseWithError:v7];
    [v16 handleResponse:v17];

    goto LABEL_11;
  }

  v8 = *(a1 + 48);
  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 48) handlePreferLocalResponse:v4];
  }

  v9 = [*(a1 + 48) preferLocalHandler];
  v10 = (v9)[2](v9, v4);

  if (!v10)
  {
    v15 = [TBError alloc];
    v20 = *MEMORY[0x277CCA450];
    v21 = @"pref local cache doesn't satisfy request (1 or more missing results)";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v13 = v15;
    v14 = 102;
    goto LABEL_10;
  }

  NSLog(&cfstr_SLocalResultsS.isa, "-[TBCoreDataSource _executePreferLocalFetchRequest:]_block_invoke", [v4 count]);
  [*(a1 + 32) _executeFetchRequest:*(a1 + 48)];
LABEL_12:

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_executeFetchRequest:(id)a3
{
  v41[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(TBCoreDataSource *)self _canSupportRequest:v4])
  {
    if ([(TBCoreDataSource *)self hasStorageError])
    {
      v5 = [TBError alloc];
      v38 = *MEMORY[0x277CCA450];
      v39 = @"Failed to add persistent store.";
      v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
      v7 = [(TBError *)v5 initWithType:104 userInfo:v6];

      v8 = [TBErrorFetchResponse responseWithError:v7];
      [v4 handleResponse:v8];
    }

    else
    {
      v11 = [v4 descriptor];
      v12 = [v11 localFetchDescriptor];
      v7 = [v12 fetchRequest];

      if (v7)
      {
        v13 = mach_absolute_time();
        v32 = 0;
        v33 = &v32;
        v34 = 0x2020000000;
        v35 = 0;
        v26 = 0;
        v27 = &v26;
        v28 = 0x3032000000;
        v29 = __Block_byref_object_copy__4;
        v30 = __Block_byref_object_dispose__4;
        v31 = 0;
        v14 = [v4 descriptor];
        v15 = [v14 type] == 1;

        if (v15)
        {
          [(TBError *)v7 setResultType:2];
          [(TBError *)v7 setPropertiesToFetch:&unk_2848BAD00];
          [(TBError *)v7 setAllocationType:1];
          v16 = [(TBCoreDataSource *)self context];
          v17 = v25;
          v25[0] = MEMORY[0x277D85DD0];
          v25[1] = 3221225472;
          v25[2] = __41__TBCoreDataSource__executeFetchRequest___block_invoke;
          v25[3] = &unk_2789C73F8;
          v25[4] = self;
          v25[5] = v7;
          v25[7] = &v26;
          v25[6] = v4;
          v25[8] = &v32;
          [v16 performBlockAndWait:v25];
        }

        else
        {
          v16 = [(TBCoreDataSource *)self context];
          v17 = v24;
          v24[0] = MEMORY[0x277D85DD0];
          v24[1] = 3221225472;
          v24[2] = __41__TBCoreDataSource__executeFetchRequest___block_invoke_2;
          v24[3] = &unk_2789C7420;
          v24[4] = self;
          v24[5] = v7;
          v24[6] = v4;
          v24[7] = &v32;
          [v16 performBlockAndWait:v24];
        }

        v21 = mach_absolute_time();
        v22 = MachTimeToSecs(v21 - v13);
        NSLog(&cfstr_SFetchedLuResu.isa, "[TBCoreDataSource _executeFetchRequest:]", v33[3], *&v22);
        [(TBDataSource *)self submitAnalyticsEventForFetchRequest:v4 duration:v27[5] error:v33[3] resultCount:v22];
        _Block_object_dispose(&v26, 8);

        _Block_object_dispose(&v32, 8);
      }

      else
      {
        v36 = *MEMORY[0x277CCA450];
        v37 = @"localFetchDescriptor is nil";
        v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
        v19 = [TBError fetchMissingParametersErrorWithUserInfo:v18];

        v20 = [TBErrorFetchResponse responseWithError:v19];
        [v4 handleResponse:v20];
      }
    }
  }

  else
  {
    v40 = *MEMORY[0x277CCA450];
    v41[0] = @"unhandled fetch request type";
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:&v40 count:1];
    v7 = [TBError fetchMissingParametersErrorWithUserInfo:v9];

    v10 = [TBErrorFetchResponse responseWithError:v7];
    [v4 handleResponse:v10];
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __41__TBCoreDataSource__executeFetchRequest___block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) context];
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 56) + 8);
  obj = *(v4 + 40);
  v5 = [v2 executeFetchRequest:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);

  v6 = *(*(*(a1 + 56) + 8) + 40);
  if (v6)
  {
    NSLog(&cfstr_SFailedFetchFo.isa, "[TBCoreDataSource _executeFetchRequest:]_block_invoke", v6);
    v7 = *(a1 + 48);
    v8 = [TBErrorFetchResponse responseWithError:*(*(*(a1 + 56) + 8) + 40)];
    [v7 handleResponse:v8];
  }

  else
  {
    v8 = +[TBNetworkMO fetchRequest];
    v9 = MEMORY[0x277CCAC30];
    v10 = [v5 valueForKey:@"network"];
    v11 = [v9 predicateWithFormat:@"self IN %@", v10];
    [v8 setPredicate:v11];

    [v8 setReturnsObjectsAsFaults:0];
    v12 = [*(a1 + 32) context];
    v13 = *(*(a1 + 56) + 8);
    v38 = *(v13 + 40);
    v14 = [v12 executeFetchRequest:v8 error:&v38];
    objc_storeStrong((v13 + 40), v38);

    v15 = *(*(*(a1 + 56) + 8) + 40);
    if (!v14 || v15)
    {
      NSLog(&cfstr_SFailedFetchFo_0.isa, "[TBCoreDataSource _executeFetchRequest:]_block_invoke", v15);
      v28 = *(a1 + 48);
      v16 = [TBErrorFetchResponse responseWithError:*(*(*(a1 + 56) + 8) + 40)];
      [v28 handleResponse:v16];
    }

    else
    {
      v30 = v14;
      v31 = v8;
      v16 = [MEMORY[0x277CBEB38] dictionary];
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v32 = v5;
      v33 = v5;
      v17 = [v33 countByEnumeratingWithState:&v34 objects:v40 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v35;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v35 != v19)
            {
              objc_enumerationMutation(v33);
            }

            v21 = *(*(&v34 + 1) + 8 * i);
            v22 = [v21 objectForKey:@"bssid"];
            v23 = [v21 objectForKey:@"network"];
            v24 = [*(a1 + 32) context];
            v25 = [v24 objectWithID:v23];
            [v16 setObject:v25 forKey:v22];
          }

          v18 = [v33 countByEnumeratingWithState:&v34 objects:v40 count:16];
        }

        while (v18);
      }

      *(*(*(a1 + 64) + 8) + 24) = [v16 count];
      v26 = *(a1 + 48);
      v27 = [TBLocalFetchResponse responseWithResultsByBSSID:v16];
      [v26 handleResponse:v27];

      v8 = v31;
      v5 = v32;
      v14 = v30;
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

void __41__TBCoreDataSource__executeFetchRequest___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = *(a1 + 40);
  v10 = 0;
  v4 = [v2 executeFetchRequest:v3 error:&v10];
  v5 = v10;

  if (v5)
  {
    NSLog(&cfstr_SError.isa, "[TBCoreDataSource _executeFetchRequest:]_block_invoke_2", v5);
    v6 = *(a1 + 48);
    v7 = [TBErrorFetchResponse responseWithError:v5];
    [v6 handleResponse:v7];
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = [v4 count];
    v8 = *(a1 + 48);
    v7 = [*(a1 + 40) entity];
    v9 = [TBLocalFetchResponse responseWithResults:v4 entityDescription:v7];
    [v8 handleResponse:v9];

    v5 = v9;
  }
}

- (BOOL)_canSupportRequest:(id)a3
{
  v3 = a3;
  v4 = [v3 descriptor];
  if ([v4 type] == 1)
  {
    v5 = 1;
  }

  else
  {
    v6 = [v3 descriptor];
    if ([v6 type] == 2)
    {
      v5 = 1;
    }

    else
    {
      v7 = [v3 descriptor];
      v5 = [v7 type] == 3;
    }
  }

  return v5;
}

- (void)cacheFetchResponse:(id)a3 completionHandler:(id)a4
{
  v129 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v71 = a4;
  v66 = v5;
  NSLog(&cfstr_SCachingRespon.isa, "[TBCoreDataSource cacheFetchResponse:completionHandler:]", v5);
  v65 = os_transaction_create();
  v6 = [v5 error];

  if (v6)
  {
    v7 = [v5 error];
    NSLog(&cfstr_SError.isa, "[TBCoreDataSource cacheFetchResponse:completionHandler:]", v7);

    if (v71)
    {
      v8 = [v5 error];
      v71[2](v71, v8);
    }
  }

  else
  {
    v64 = [objc_alloc(MEMORY[0x277CBE440]) initWithConcurrencyType:1];
    v9 = [(TBCoreDataSource *)self persistenceManager];
    v10 = [v9 persistenceCoordinator];
    [v64 setPersistentStoreCoordinator:v10];

    v11 = [MEMORY[0x277CBEAA8] date];
    v63 = [v11 dateByAddingDays:{--[TBCoreDataSource cacheExpirationInDays](self, "cacheExpirationInDays")}];

    v12 = [v66 tiles];
    v13 = [v12 count];

    if (v13)
    {
      v62 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(created < %@)", v63];
      [TBTileMO removeTilesUsingPredicate:v62 moc:v64];
      v14 = MEMORY[0x277CBEB18];
      v15 = [v66 tiles];
      v70 = [v14 arrayWithCapacity:{objc_msgSend(v15, "count")}];

      v123 = 0u;
      v124 = 0u;
      v121 = 0u;
      v122 = 0u;
      v16 = [v66 tiles];
      v17 = [v16 countByEnumeratingWithState:&v121 objects:v128 count:16];
      if (v17)
      {
        v18 = *v122;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v122 != v18)
            {
              objc_enumerationMutation(v16);
            }

            v20 = MEMORY[0x277CCABB0];
            v21 = [*(*(&v121 + 1) + 8 * i) tile];
            v22 = [v20 numberWithLongLong:{objc_msgSend(v21, "key")}];
            [v70 addObject:v22];
          }

          v17 = [v16 countByEnumeratingWithState:&v121 objects:v128 count:16];
        }

        while (v17);
      }

      v61 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(key IN %@)", v70];
      [TBTileMO removeTilesUsingPredicate:v61 moc:v64];
      v119[0] = MEMORY[0x277D85DD0];
      v119[1] = 3221225472;
      v119[2] = __57__TBCoreDataSource_cacheFetchResponse_completionHandler___block_invoke;
      v119[3] = &unk_2789C6630;
      v23 = v64;
      v120 = v23;
      [v23 performBlockAndWait:v119];
      v24 = [v66 tiles];
      v77 = [v24 count];

      v117 = 0u;
      v118 = 0u;
      v115 = 0u;
      v116 = 0u;
      obj = [v66 tiles];
      v69 = [obj countByEnumeratingWithState:&v115 objects:v127 count:16];
      if (v69)
      {
        v80 = 0;
        v68 = *v116;
        do
        {
          v25 = 0;
          do
          {
            if (*v116 != v68)
            {
              v26 = v25;
              objc_enumerationMutation(obj);
              v25 = v26;
            }

            v72 = v25;
            v27 = *(*(&v115 + 1) + 8 * v25);
            context = objc_autoreleasePoolPush();
            v74 = [v27 tile];
            v28 = [TBTileMO generateNewTileObjectFromMOC:v23];
            [v28 setKey:{objc_msgSend(v74, "key")}];
            v29 = [MEMORY[0x277CBEAA8] date];
            [v28 setCreated:v29];

            if (objc_opt_respondsToSelector())
            {
              v30 = [v74 etag];
              [v28 setEtag:v30];
            }

            else
            {
              NSLog(&cfstr_STileDoesnTRes.isa, "[TBCoreDataSource cacheFetchResponse:completionHandler:]", v74);
            }

            v31 = [v27 networks];
            v32 = [v31 count];
            NSLog(&cfstr_SLdResultsForT.isa, "-[TBCoreDataSource cacheFetchResponse:completionHandler:]", v32, v80++, [v74 key]);
            v109 = 0;
            v110 = &v109;
            v111 = 0x3032000000;
            v112 = __Block_byref_object_copy__4;
            v113 = __Block_byref_object_dispose__4;
            v114 = 0;
            if (v32)
            {
              if (v32 >= 1)
              {
                v33 = 0;
                v34 = 1;
                do
                {
                  v35 = [v31 objectAtIndexedSubscript:v33];
                  [(TBCoreDataSource *)self _createNewNetwork:v35 tile:v28 withMOC:v23];
                  v36 = v33 + 1;
                  if (100 * (v34 / 0x64) - 1 == v33 || v32 - 1 == v33)
                  {
                    NSLog(&cfstr_SSavingEntries.isa, "[TBCoreDataSource cacheFetchResponse:completionHandler:]", v33 + 1, v32);
                    v99[0] = MEMORY[0x277D85DD0];
                    v99[1] = 3221225472;
                    v99[2] = __57__TBCoreDataSource_cacheFetchResponse_completionHandler___block_invoke_3;
                    v99[3] = &unk_2789C7448;
                    v100 = v23;
                    v101 = &v109;
                    v102 = v80;
                    v103 = v77;
                    [v100 performBlockAndWait:v99];
                  }

                  ++v34;
                  ++v33;
                }

                while (v32 != v36);
              }
            }

            else
            {
              NSLog(&cfstr_SSavingEmptyTi.isa, "-[TBCoreDataSource cacheFetchResponse:completionHandler:]", [v74 key]);
              v104[0] = MEMORY[0x277D85DD0];
              v104[1] = 3221225472;
              v104[2] = __57__TBCoreDataSource_cacheFetchResponse_completionHandler___block_invoke_2;
              v104[3] = &unk_2789C7448;
              v105 = v23;
              v106 = &v109;
              v107 = v80;
              v108 = v77;
              [v105 performBlockAndWait:v104];
            }

            if (v71 && v80 == v77)
            {
              v71[2](v71, v110[5]);
            }

            _Block_object_dispose(&v109, 8);

            objc_autoreleasePoolPop(context);
            v25 = v72 + 1;
          }

          while (v72 + 1 != v69);
          v69 = [obj countByEnumeratingWithState:&v115 objects:v127 count:16];
        }

        while (v69);
      }
    }

    else
    {
      v39 = [v66 results];
      v40 = [v39 count];

      if (v40)
      {
        v41 = [MEMORY[0x277CBEB58] set];
        v97 = 0u;
        v98 = 0u;
        v95 = 0u;
        v96 = 0u;
        v75 = [v66 results];
        v81 = [v75 countByEnumeratingWithState:&v95 objects:v126 count:16];
        if (v81)
        {
          v78 = *v96;
          do
          {
            for (j = 0; j != v81; ++j)
            {
              if (*v96 != v78)
              {
                objc_enumerationMutation(v75);
              }

              v43 = *(*(&v95 + 1) + 8 * j);
              v91 = 0u;
              v92 = 0u;
              v93 = 0u;
              v94 = 0u;
              v44 = [v43 accessPoints];
              v45 = [v44 countByEnumeratingWithState:&v91 objects:v125 count:16];
              if (v45)
              {
                v46 = *v92;
                do
                {
                  for (k = 0; k != v45; ++k)
                  {
                    if (*v92 != v46)
                    {
                      objc_enumerationMutation(v44);
                    }

                    v48 = *(*(&v91 + 1) + 8 * k);
                    v49 = [v48 BSSID];

                    if (v49)
                    {
                      v50 = [v48 BSSID];
                      [v41 addObject:v50];
                    }

                    else
                    {
                      NSLog(&cfstr_SNullBssidForN.isa, "[TBCoreDataSource cacheFetchResponse:completionHandler:]", v43);
                    }
                  }

                  v45 = [v44 countByEnumeratingWithState:&v91 objects:v125 count:16];
                }

                while (v45);
              }
            }

            v81 = [v75 countByEnumeratingWithState:&v95 objects:v126 count:16];
          }

          while (v81);
        }

        v79 = +[TBAccessPointMO fetchRequest];
        v51 = [v41 bssidPredicate];
        [v79 setPredicate:v51];

        v52 = [objc_alloc(MEMORY[0x277CBE360]) initWithFetchRequest:v79];
        v88[0] = MEMORY[0x277D85DD0];
        v88[1] = 3221225472;
        v88[2] = __57__TBCoreDataSource_cacheFetchResponse_completionHandler___block_invoke_4;
        v88[3] = &unk_2789C6608;
        v53 = v64;
        v89 = v53;
        v76 = v52;
        v90 = v76;
        [v53 performBlockAndWait:v88];
        v54 = [v66 results];
        v55 = [v54 count];
        NSLog(&cfstr_SLdResultsAvai.isa, "[TBCoreDataSource cacheFetchResponse:completionHandler:]", v55);
        v56 = v55 - 1;
        if (v55 >= 1)
        {
          v57 = 0;
          v58 = 1;
          do
          {
            v59 = [v54 objectAtIndexedSubscript:v57];
            [(TBCoreDataSource *)self _createNewNetwork:v59 tile:0 withMOC:v53];
            v60 = v57 + 1;
            if (v56 == v57 || 100 * (v58 / 0x64) - 1 == v57)
            {
              NSLog(&cfstr_SSavingEntries.isa, "[TBCoreDataSource cacheFetchResponse:completionHandler:]", v57 + 1, v55);
              v109 = 0;
              v110 = &v109;
              v111 = 0x3032000000;
              v112 = __Block_byref_object_copy__4;
              v113 = __Block_byref_object_dispose__4;
              v114 = 0;
              v83[0] = MEMORY[0x277D85DD0];
              v83[1] = 3221225472;
              v83[2] = __57__TBCoreDataSource_cacheFetchResponse_completionHandler___block_invoke_5;
              v83[3] = &unk_2789C7448;
              v84 = v53;
              v85 = &v109;
              v86 = v57 + 1;
              v87 = v55;
              [v84 performBlockAndWait:v83];
              if (v71 && v56 == v57)
              {
                v71[2](v71, v110[5]);
              }

              _Block_object_dispose(&v109, 8);
            }

            ++v58;
            ++v57;
          }

          while (v55 != v60);
        }
      }

      else
      {
        NSLog(&cfstr_SEmptyResultsI.isa, "[TBCoreDataSource cacheFetchResponse:completionHandler:]", v66);
        if (v71)
        {
          v71[2](v71, 0);
        }
      }
    }
  }

  v38 = *MEMORY[0x277D85DE8];
}

void __57__TBCoreDataSource_cacheFetchResponse_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5 = 0;
  [v2 save:&v5];
  v3 = v5;
  v4 = v3;
  if (v3)
  {
    NSLog(&cfstr_SaveError.isa, v3);
  }

  [*(a1 + 32) reset];
}

void __57__TBCoreDataSource_cacheFetchResponse_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 8);
  obj = *(v3 + 40);
  [v2 save:&obj];
  objc_storeStrong((v3 + 40), obj);
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    NSLog(&cfstr_SaveError.isa, *(*(*(a1 + 40) + 8) + 40));
  }

  if (*(a1 + 48) == *(a1 + 56))
  {
    [*(a1 + 32) reset];
  }
}

void __57__TBCoreDataSource_cacheFetchResponse_completionHandler___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 8);
  obj = *(v3 + 40);
  [v2 save:&obj];
  objc_storeStrong((v3 + 40), obj);
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    NSLog(&cfstr_SaveError.isa, *(*(*(a1 + 40) + 8) + 40));
  }

  if (*(a1 + 48) == *(a1 + 56))
  {
    [*(a1 + 32) reset];
  }
}

void __57__TBCoreDataSource_cacheFetchResponse_completionHandler___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v6 = 0;
  v3 = [v2 executeRequest:v1 error:&v6];
  v4 = v6;
  v5 = v4;
  if (v4)
  {
    NSLog(&cfstr_SApDeleteError.isa, "[TBCoreDataSource cacheFetchResponse:completionHandler:]_block_invoke_4", v4);
  }
}

void __57__TBCoreDataSource_cacheFetchResponse_completionHandler___block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 8);
  obj = *(v3 + 40);
  [v2 save:&obj];
  objc_storeStrong((v3 + 40), obj);
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    NSLog(&cfstr_SaveError.isa, *(*(*(a1 + 40) + 8) + 40));
  }

  if (*(a1 + 48) == *(a1 + 56))
  {
    [*(a1 + 32) reset];
  }
}

- (void)removeAllWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = os_transaction_create();
  v6 = [objc_alloc(MEMORY[0x277CBE440]) initWithConcurrencyType:1];
  v7 = [(TBCoreDataSource *)self persistenceManager];
  v8 = [v7 persistenceCoordinator];
  [v6 setPersistentStoreCoordinator:v8];

  NSLog(&cfstr_SRemovingAll.isa, "[TBCoreDataSource removeAllWithCompletionHandler:]");
  [TBNetworkMO removeAllNetworksInMOC:v6];
  [TBTileMO removeAllTilesInMOC:v6];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __51__TBCoreDataSource_removeAllWithCompletionHandler___block_invoke;
  v11[3] = &unk_2789C6BA8;
  v12 = v6;
  v13 = v4;
  v9 = v4;
  v10 = v6;
  [v10 performBlockAndWait:v11];
}

void __51__TBCoreDataSource_removeAllWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = 0;
  [v2 save:&v6];
  v3 = v6;
  v4 = v3;
  if (v3)
  {
    NSLog(&cfstr_SaveError.isa, v3);
  }

  [*(a1 + 32) reset];
  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v4);
  }
}

- (void)prune3BarsNetworks:(unint64_t)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = [(TBCoreDataStoreDescriptor *)self->_descriptor storeURL];
  v8 = [v7 path];

  v9 = [MEMORY[0x277CCAA00] defaultManager];
  v15 = 0;
  v10 = [v9 attributesOfItemAtPath:v8 error:&v15];
  v11 = v15;

  if (v10)
  {
    v12 = v11 == 0;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    v13 = [v10 objectForKey:*MEMORY[0x277CCA1C0]];
    v14 = [v13 longLongValue];
    if (v14 > a3)
    {
      NSLog(&cfstr_LocalStoreSize.isa, v14, a3);
      [(TBCoreDataSource *)self removeAllWithCompletionHandler:v6];
    }
  }

  else
  {
    NSLog(&cfstr_FailedToGetAtt.isa, v11);
  }
}

- (void)removeWithFetchRequest:(id)a3 completionHandler:(id)a4
{
  v22[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 descriptor];
  v7 = [v6 localFetchDescriptor];
  v8 = [v7 fetchRequest];

  if (v8)
  {
    NSLog(&cfstr_SRemovingAllMa.isa, "[TBCoreDataSource removeWithFetchRequest:completionHandler:]", v8);
    v9 = [objc_alloc(MEMORY[0x277CBE360]) initWithFetchRequest:v8];
    v10 = [objc_alloc(MEMORY[0x277CBE440]) initWithConcurrencyType:1];
    v11 = [(TBCoreDataSource *)self persistenceManager];
    v12 = [v11 persistenceCoordinator];
    [v10 setPersistentStoreCoordinator:v12];

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __61__TBCoreDataSource_removeWithFetchRequest_completionHandler___block_invoke;
    v17[3] = &unk_2789C6C70;
    v18 = v10;
    v19 = v9;
    v20 = v8;
    v13 = v9;
    v14 = v10;
    [v14 performBlockAndWait:v17];
  }

  else
  {
    v21 = *MEMORY[0x277CCA450];
    v22[0] = @"localFetchDescriptor is nil";
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v14 = [TBError fetchMissingParametersErrorWithUserInfo:v15];

    v13 = [TBErrorFetchResponse responseWithError:v14];
    [v5 handleResponse:v13];
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __61__TBCoreDataSource_removeWithFetchRequest_completionHandler___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v10 = 0;
  v5 = [v3 executeRequest:v4 error:&v10];
  v6 = v10;
  v7 = v6;
  if (v6)
  {
    NSLog(&cfstr_SError.isa, "[TBCoreDataSource removeWithFetchRequest:completionHandler:]_block_invoke", v6);
  }

  else
  {
    v8 = [*(a1 + 48) entityName];
    v9 = [*(a1 + 48) predicate];
    NSLog(&cfstr_SRemovedItemsT.isa, "[TBCoreDataSource removeWithFetchRequest:completionHandler:]_block_invoke", v8, v9);
  }

  objc_autoreleasePoolPop(v2);
}

- (void)_createNewNetwork:(id)a3 tile:(id)a4 withMOC:(id)a5
{
  v47 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v39 = a4;
  v8 = a5;
  context = objc_autoreleasePoolPush();
  v41 = v8;
  v9 = [TBNetworkMO generateNewNetworkObjectFromMOC:v8];
  [v9 setAuthMask:{objc_msgSend(v7, "authMask")}];
  v10 = [v7 remoteIdentifier];
  [v9 setIdentifier:v10];

  v11 = [v7 SSID];
  [v9 setName:v11];

  v12 = [v7 popularityScore];
  [v9 setPopularityScoreValue:{objc_msgSend(v12, "score")}];

  v13 = [v7 qualityScore];
  [v9 setQualityScoreValue:{objc_msgSend(v13, "score")}];

  [v9 setMoving:{objc_msgSend(v7, "isMoving")}];
  [v9 setSuspicious:{objc_msgSend(v7, "isSuspicious")}];
  [v9 setCaptive:{objc_msgSend(v7, "isCaptive")}];
  [v9 setPublic:{objc_msgSend(v7, "isPublic")}];
  [v9 setLowQuality:{objc_msgSend(v7, "isLowQuality")}];
  v14 = [MEMORY[0x277CBEAA8] date];
  [v9 setCreated:v14];

  v15 = [v7 ownerIdentifiers];
  [v9 setOwnerIdentifiers:v15];

  [v9 setType:{objc_msgSend(v7, "type")}];
  [v9 setVenueGroup:{objc_msgSend(v7, "venueGroup")}];
  [v9 setVenueType:{objc_msgSend(v7, "venueType")}];
  v16 = objc_alloc_init(TBCentroidCalculator);
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v40 = v7;
  v17 = [v7 accessPoints];
  v18 = [v17 countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v43;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v43 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v42 + 1) + 8 * i);
        v23 = objc_autoreleasePoolPush();
        v24 = [v22 BSSID];

        if (v24)
        {
          v25 = [TBAccessPointMO generateNewAccessPointObjectFromMOC:v41];
          v26 = [v22 BSSID];
          [v25 setBssid:v26];

          [v22 latitude];
          [v25 setLat:?];
          [v22 longitude];
          [v25 setLng:?];
          [v22 latitude];
          v28 = v27;
          [v22 longitude];
          [(TBCentroidCalculator *)v16 addLatitude:v28 longitude:v29];
          v30 = [v22 popularityScore];
          [v25 setPopularityScoreValue:{objc_msgSend(v30, "score")}];

          v31 = [v22 qualityScore];
          [v25 setQualityScoreValue:{objc_msgSend(v31, "score")}];

          [v25 setEdge:{objc_msgSend(v22, "isEdge")}];
          [v25 setTcpGood:{objc_msgSend(v22, "isTCPGood")}];
          [v25 setNetwork:v9];
          v32 = [MEMORY[0x277CBEAA8] date];
          [v25 setCreated:v32];

          v33 = [v9 accessPoints];
          v34 = [v33 setByAddingObject:v25];
        }

        objc_autoreleasePoolPop(v23);
      }

      v19 = [v17 countByEnumeratingWithState:&v42 objects:v46 count:16];
    }

    while (v19);
  }

  [(TBCentroidCalculator *)v16 centroid];
  v36 = v35;
  [v9 setCentroidLat:?];
  [v9 setCentroidLng:v36];
  if (v39)
  {
    [v39 addNetworksObject:v9];
  }

  objc_autoreleasePoolPop(context);
  v37 = *MEMORY[0x277D85DE8];
}

- (void)importObjectsWithArray:(id)a3 completionHandler:(id)a4
{
  v18[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6 && [v6 count])
  {
    v8 = [(TBCoreDataSource *)self context];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __61__TBCoreDataSource_importObjectsWithArray_completionHandler___block_invoke;
    v13[3] = &unk_2789C7470;
    v14 = v6;
    v15 = self;
    v16 = v7;
    [v8 performBlock:v13];

    v9 = v14;
  }

  else
  {
    v10 = [TBError alloc];
    v17 = *MEMORY[0x277CCA450];
    v18[0] = @"nil or empty objects to import";
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v11 = [(TBError *)v10 initWithType:0 userInfo:v9];
    (*(v7 + 2))(v7, v11);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __61__TBCoreDataSource_importObjectsWithArray_completionHandler___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v17;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v16 + 1) + 8 * i);
        v8 = *(a1 + 40);
        v9 = [v8 context];
        [v8 _createNewNetworkFromDictionary:v7 withMOC:v9];
      }

      v4 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v4);
  }

  v10 = [*(a1 + 40) context];
  v11 = [v10 insertedObjects];
  NSLog(&cfstr_InsertedLuObje.isa, [v11 count]);

  v12 = [*(a1 + 40) context];
  v15 = 0;
  [v12 save:&v15];
  v13 = v15;

  if (v13)
  {
    NSLog(&cfstr_SFailedToSaveW.isa, "[TBCoreDataSource importObjectsWithArray:completionHandler:]_block_invoke", v13);
  }

  (*(*(a1 + 48) + 16))();

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_createNewNetworkFromDictionary:(id)a3 withMOC:(id)a4
{
  v67 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v61 = a4;
  v6 = [TBNetworkMO generateNewNetworkObjectFromMOC:?];
  v7 = [MEMORY[0x277CBEAA8] date];
  [v7 timeIntervalSince1970];
  [v6 setTimestamp:v8];

  v9 = [MEMORY[0x277CBEAA8] date];
  [v6 setCreated:v9];

  v10 = [v5 objectForKeyedSubscript:@"authMask"];

  if (v10)
  {
    v11 = [v5 objectForKeyedSubscript:@"authMask"];
    [v6 setAuthMask:{objc_msgSend(v11, "integerValue")}];
  }

  v12 = [v5 objectForKeyedSubscript:@"identifier"];

  if (v12)
  {
    v13 = [v5 objectForKeyedSubscript:@"identifier"];
    [v6 setIdentifier:v13];
  }

  v14 = [v5 objectForKeyedSubscript:@"SSID"];

  if (v14)
  {
    v15 = [v5 objectForKeyedSubscript:@"SSID"];
    [v6 setName:v15];
  }

  v16 = [v5 objectForKeyedSubscript:@"popularityScoreValue"];

  if (v16)
  {
    v17 = [v5 objectForKeyedSubscript:@"popularityScoreValue"];
    [v6 setPopularityScoreValue:{objc_msgSend(v17, "intValue")}];
  }

  v18 = [v5 objectForKeyedSubscript:@"qualityScoreValue"];

  if (v18)
  {
    v19 = [v5 objectForKeyedSubscript:@"qualityScoreValue"];
    [v6 setQualityScoreValue:{objc_msgSend(v19, "intValue")}];
  }

  v20 = [v5 objectForKeyedSubscript:@"moving"];

  if (v20)
  {
    v21 = [v5 objectForKeyedSubscript:@"moving"];
    [v6 setMoving:{objc_msgSend(v21, "BOOLValue")}];
  }

  v22 = [v5 objectForKeyedSubscript:@"suspicious"];

  if (v22)
  {
    v23 = [v5 objectForKeyedSubscript:@"suspicious"];
    [v6 setSuspicious:{objc_msgSend(v23, "BOOLValue")}];
  }

  v24 = [v5 objectForKeyedSubscript:@"captive"];

  if (v24)
  {
    v25 = [v5 objectForKeyedSubscript:@"captive"];
    [v6 setCaptive:{objc_msgSend(v25, "BOOLValue")}];
  }

  v26 = [v5 objectForKeyedSubscript:@"public"];

  if (v26)
  {
    v27 = [v5 objectForKeyedSubscript:@"public"];
    [v6 setPublic:{objc_msgSend(v27, "BOOLValue")}];
  }

  v28 = [v5 objectForKeyedSubscript:@"public"];

  if (v28)
  {
    v29 = [v5 objectForKeyedSubscript:@"lowQuality"];
    [v6 setLowQuality:{objc_msgSend(v29, "BOOLValue")}];
  }

  v30 = [v5 objectForKeyedSubscript:@"ownerIdentifiers"];

  if (v30)
  {
    v31 = [v5 objectForKeyedSubscript:@"ownerIdentifiers"];
    [v6 setOwnerIdentifiers:v31];
  }

  v32 = [v5 objectForKeyedSubscript:@"type"];

  if (v32)
  {
    v33 = [v5 objectForKeyedSubscript:@"type"];
    [v6 setType:{objc_msgSend(v33, "integerValue")}];
  }

  v34 = [v5 objectForKeyedSubscript:@"venueGroup"];

  if (v34)
  {
    v35 = [v5 objectForKeyedSubscript:@"venueGroup"];
    [v6 setVenueGroup:{objc_msgSend(v35, "integerValue")}];
  }

  v36 = [v5 objectForKeyedSubscript:@"venueType"];

  if (v36)
  {
    v37 = [v5 objectForKeyedSubscript:@"venueType"];
    [v6 setVenueType:{objc_msgSend(v37, "intValue")}];
  }

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = [v5 objectForKeyedSubscript:{@"accessPoints", v5}];
  v38 = [obj countByEnumeratingWithState:&v62 objects:v66 count:16];
  if (v38)
  {
    v39 = v38;
    v60 = *v63;
    do
    {
      for (i = 0; i != v39; ++i)
      {
        if (*v63 != v60)
        {
          objc_enumerationMutation(obj);
        }

        v41 = *(*(&v62 + 1) + 8 * i);
        v42 = [TBAccessPointMO generateNewAccessPointObjectFromMOC:v61];
        v43 = [v41 objectForKeyedSubscript:@"bssid"];
        [v42 setBssid:v43];

        v44 = [v41 objectForKeyedSubscript:@"latitude"];
        [v44 doubleValue];
        [v42 setLat:?];

        v45 = [v41 objectForKeyedSubscript:@"longitude"];
        [v45 doubleValue];
        [v42 setLng:?];

        v46 = [v41 objectForKeyedSubscript:@"popularityScoreValue"];

        if (v46)
        {
          v47 = [v41 objectForKeyedSubscript:@"popularityScoreValue"];
          [v42 setPopularityScoreValue:{objc_msgSend(v47, "intValue")}];
        }

        v48 = [v41 objectForKeyedSubscript:@"qualityScoreValue"];

        if (v48)
        {
          v49 = [v41 objectForKeyedSubscript:@"qualityScoreValue"];
          [v42 setQualityScoreValue:{objc_msgSend(v49, "intValue")}];
        }

        v50 = [v41 objectForKeyedSubscript:@"edge"];

        if (v50)
        {
          v51 = [v41 objectForKeyedSubscript:@"edge"];
          [v42 setEdge:{objc_msgSend(v51, "BOOLValue")}];
        }

        v52 = [v41 objectForKeyedSubscript:@"tcpGood"];

        if (v52)
        {
          v53 = [v41 objectForKeyedSubscript:@"tcpGood"];
          [v42 setTcpGood:{objc_msgSend(v53, "BOOLValue")}];
        }

        [v42 setNetwork:v6];
        v54 = [MEMORY[0x277CBEAA8] date];
        [v42 setCreated:v54];

        v55 = [v6 accessPoints];
        v56 = [v55 setByAddingObject:v42];
      }

      v39 = [obj countByEnumeratingWithState:&v62 objects:v66 count:16];
    }

    while (v39);
  }

  v57 = *MEMORY[0x277D85DE8];
}

@end