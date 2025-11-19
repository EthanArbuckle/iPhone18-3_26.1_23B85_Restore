@interface HVQueues
+ (id)defaultQueues;
- (BOOL)cleanupWithError:(id *)a3 shouldContinueBlock:(id)a4;
- (BOOL)deleteContentWithRequest:(id)a3 error:(id *)a4;
- (BOOL)dequeuedContentConsumedForDataSources:(unsigned int)a3 withError:(id *)a4;
- (BOOL)dequeuedContentNotConsumed:(id)a3 dataSource:(unsigned int)a4 error:(id *)a5;
- (BOOL)enqueueContent:(id)a3 contentProtection:(id)a4 error:(id *)a5;
- (BOOL)registerQueueObserver:(id)a3 dispatchQueue:(id)a4;
- (HVQueues)init;
- (id)statsWithError:(id *)a3;
- (unsigned)waitForObserversWithTimeout:(double)a3;
- (void)_queueForDataSource:(void *)a1;
@end

@implementation HVQueues

void __49__HVQueues_informObserversThatContentIsAvailable__block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = v3[1];
  v4 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      v7 = 0;
      do
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v17 + 1) + 8 * v7);
        v9 = objc_autoreleasePoolPush();
        v10 = [v3[1] objectForKey:v8];
        v11 = *(v3 + 8);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __49__HVQueues_informObserversThatContentIsAvailable__block_invoke_2;
        block[3] = &unk_2789694E0;
        block[4] = v8;
        v16 = v11;
        v15 = *(a1 + 32);
        dispatch_async(v10, block);

        objc_autoreleasePoolPop(v9);
        ++v7;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __56__HVQueues__triggerDelayedContentAvailableNotifications__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = hv_default_log_handle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v11[0]) = 0;
    _os_log_impl(&dword_2321EC000, v4, OS_LOG_TYPE_DEFAULT, "HVQueues: informing observers and posting content available notification.", v11, 2u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = os_transaction_create();
    v7 = *(v5 + 8);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __49__HVQueues_informObserversThatContentIsAvailable__block_invoke;
    v11[3] = &unk_278969508;
    v12 = v6;
    v8 = v6;
    [v7 runWithLockAcquired:v11];
  }

  v9 = objc_opt_self();
  [(HVNotifications *)v9 _postNotificationWithName:?];
  v10 = v3[3];
  v3[3] = 0;
}

void __56__HVQueues__triggerDelayedContentAvailableNotifications__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(WeakRetained + 1);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __56__HVQueues__triggerDelayedContentAvailableNotifications__block_invoke_2;
    v5[3] = &unk_278969508;
    v5[4] = *(a1 + 32);
    [v4 runWithLockAcquired:v5];
  }
}

id __49__HVQueues_informObserversThatContentIsAvailable__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) contentAvailableFromSources:*(a1 + 48)];
  v2 = *(a1 + 40);
  return objc_opt_self();
}

- (BOOL)cleanupWithError:(id *)a3 shouldContinueBlock:(id)a4
{
  v6 = a4;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__1095;
  v22 = __Block_byref_object_dispose__1096;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 1;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __49__HVQueues_cleanupWithError_shouldContinueBlock___block_invoke;
  v10[3] = &unk_2789696B8;
  v7 = v6;
  v10[4] = self;
  v11 = v7;
  v12 = &v14;
  v13 = &v18;
  HVDataSourceRunBlockPerSetBit(-1, v10);
  v8 = *(v15 + 24);
  if (a3 && (v15[3] & 1) == 0)
  {
    *a3 = v19[5];
    v8 = *(v15 + 24);
  }

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);

  return v8 & 1;
}

void __49__HVQueues_cleanupWithError_shouldContinueBlock___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if ((*(*(a1 + 40) + 16))())
  {
    v6 = [(HVQueues *)*(a1 + 32) _queueForDataSource:a2];
    v7 = *(*(a1 + 56) + 8);
    obj = *(v7 + 40);
    v8 = [v6 cleanupWithError:&obj shouldContinueBlock:*(a1 + 40)];
    objc_storeStrong((v7 + 40), obj);
    *(*(*(a1 + 48) + 8) + 24) &= v8;
  }

  else
  {
    *a3 = 1;
  }
}

- (void)_queueForDataSource:(void *)a1
{
  v2 = a1;
  if (a1)
  {
    v3 = a2;
    HVDataSourceAssertSingleSource(a2);
    v8 = 0;
    v9 = &v8;
    v10 = 0x3032000000;
    v11 = __Block_byref_object_copy__1095;
    v12 = __Block_byref_object_dispose__1096;
    v13 = 0;
    v4 = v2[1];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __32__HVQueues__queueForDataSource___block_invoke;
    v6[3] = &unk_2789695D0;
    v7 = v3;
    v6[5] = &v8;
    v6[6] = sel__queueForDataSource_;
    v6[4] = v2;
    [v4 runWithLockAcquired:v6];
    v2 = v9[5];
    _Block_object_dispose(&v8, 8);
  }

  return v2;
}

void __32__HVQueues__queueForDataSource___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 56)];
  v5 = [v3[2] objectForKeyedSubscript:v4];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    goto LABEL_2;
  }

  v8 = 0;
  v9 = *(a1 + 56);
  if (v9 <= 255)
  {
    if (v9 > 15)
    {
      if (v9 > 63)
      {
        if (v9 == 64)
        {
          v8 = 0;
          v10 = 16;
          v11 = 0x277CF1A38;
          goto LABEL_42;
        }

        if (v9 == 128)
        {
          v8 = 0;
          v10 = 16;
          v11 = 0x277CF1A78;
          goto LABEL_42;
        }
      }

      else
      {
        if (v9 == 16)
        {
          v8 = 0;
          v10 = 16;
          v11 = 0x277CF1A28;
          goto LABEL_42;
        }

        if (v9 == 32)
        {
          v8 = 0;
          v10 = 16;
          v11 = 0x277CF1A48;
          goto LABEL_42;
        }
      }
    }

    else if (v9 > 3)
    {
      if (v9 == 4)
      {
        v8 = 0;
        v10 = 4;
        v11 = 0x277CF19F8;
        goto LABEL_42;
      }

      if (v9 == 8)
      {
        v8 = 0;
        v10 = 16;
        v11 = 0x277CF1A08;
        goto LABEL_42;
      }
    }

    else
    {
      if (v9 == 1)
      {
        v10 = 16;
        v11 = 0x277CF19C0;
        goto LABEL_42;
      }

      if (v9 == 2)
      {
        v10 = 256;
        v8 = 1;
        v11 = 0x277CF19D0;
LABEL_42:
        v14 = *v11;
        v15 = objc_opt_new();
        v12 = v15;
        if (v15)
        {
          v13 = [v15 identifier];
          if (v13)
          {
            goto LABEL_47;
          }
        }

        goto LABEL_46;
      }
    }

    goto LABEL_45;
  }

  if (v9 > 4095)
  {
    if (v9 >= 0x4000)
    {
      if (v9 == 0x4000)
      {
        v8 = 0;
        v10 = 256;
        v11 = off_278968598;
        goto LABEL_42;
      }

      if (v9 == 0x8000)
      {
        v8 = 0;
        v10 = 256;
        v11 = off_278968588;
        goto LABEL_42;
      }

      goto LABEL_45;
    }

    if (v9 == 4096)
    {
      v12 = 0;
      v8 = 0;
      v10 = 256;
      v13 = @"UserActivityMetadata";
    }

    else
    {
      if (v9 != 0x2000)
      {
        goto LABEL_45;
      }

      v12 = 0;
      v8 = 0;
      v10 = 256;
      v13 = @"SearchableUserActivities";
    }
  }

  else
  {
    if (v9 <= 1023)
    {
      if (v9 == 256)
      {
        v8 = 0;
        v10 = 4;
        v11 = 0x277CF1AB0;
        goto LABEL_42;
      }

      if (v9 == 512)
      {
        v8 = 0;
        v10 = 16;
        v11 = 0x277CF1B00;
        goto LABEL_42;
      }

LABEL_45:
      v16 = [MEMORY[0x277CCA890] currentHandler];
      [v16 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"HVQueues.m" lineNumber:262 description:{@"HVQueue initWithDataSource given unexpected data source value: %u", *(a1 + 56)}];

      v10 = 0;
      v12 = 0;
      v8 = 0;
LABEL_46:
      v17 = [MEMORY[0x277CCA890] currentHandler];
      [v17 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"HVQueues.m" lineNumber:268 description:{@"HVQueues failed to determine queue identifier: %u", *(a1 + 56)}];

      v13 = 0;
      goto LABEL_47;
    }

    if (v9 == 1024)
    {
      v8 = 0;
      v10 = 16;
      v11 = 0x277CF1B68;
      goto LABEL_42;
    }

    if (v9 != 2048)
    {
      goto LABEL_45;
    }

    v12 = 0;
    v10 = 256;
    v13 = @"Interactions";
  }

LABEL_47:
  v18 = [HVQueue alloc];
  v19 = HVDataSourceFileProtection(*(a1 + 56));
  HIDWORD(v20) = *(a1 + 56) - 1024;
  LODWORD(v20) = HIDWORD(v20);
  v21 = [(HVQueue *)v18 initWithIdentifier:v13 biomeStream:v12 memoryLimit:v10 contentProtection:v19 contentExpectedFromMultipleApps:((v20 >> 10) < 8) & (0x8Bu >> (v20 >> 10))];
  v22 = *(*(a1 + 40) + 8);
  v23 = *(v22 + 40);
  *(v22 + 40) = v21;

  [v3[2] setObject:*(*(*(a1 + 40) + 8) + 40) forKeyedSubscript:v4];
  if (v8)
  {
    objc_initWeak(&location, *(*(*(a1 + 40) + 8) + 40));
    v24 = MEMORY[0x277D42598];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __32__HVQueues__queueForDataSource___block_invoke_2;
    v25[3] = &unk_2789695A8;
    objc_copyWeak(&v26, &location);
    [v24 runBlockWhenDeviceIsClassCUnlockedWithQoS:9 block:v25];
    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }

LABEL_2:
}

void __32__HVQueues__queueForDataSource___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained ensureDeletionScanHasOccurredWithError:0];
    WeakRetained = v2;
  }
}

- (id)statsWithError:(id *)a3
{
  v56 = *MEMORY[0x277D85DE8];
  v4 = objc_opt_new();
  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = __Block_byref_object_copy__1095;
  v52 = __Block_byref_object_dispose__1096;
  v53 = 0;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__1095;
  v46 = __Block_byref_object_dispose__1096;
  v47 = 0;
  lock = self->_lock;
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __27__HVQueues_statsWithError___block_invoke;
  v38[3] = &unk_278969690;
  v40 = &v48;
  v41 = &v42;
  v6 = v4;
  v39 = v6;
  [(_PASLock *)lock runWithLockAcquired:v38];
  v7 = objc_opt_new();
  [v6 setObject:v7 forKeyedSubscript:@"Observers"];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v8 = v49[5];
  v9 = [v8 countByEnumeratingWithState:&v34 objects:v55 count:16];
  if (v9)
  {
    v10 = *v35;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v35 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v34 + 1) + 8 * i);
        v13 = objc_autoreleasePoolPush();
        v14 = [v6 objectForKeyedSubscript:@"Observers"];
        v15 = [v12 description];
        [v14 addObject:v15];

        objc_autoreleasePoolPop(v13);
      }

      v9 = [v8 countByEnumeratingWithState:&v34 objects:v55 count:16];
    }

    while (v9);
  }

  v16 = objc_opt_new();
  [v6 setObject:v16 forKeyedSubscript:@"Queues"];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v17 = v43[5];
  v18 = [v17 countByEnumeratingWithState:&v30 objects:v54 count:16];
  if (v18)
  {
    v19 = *v31;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v31 != v19)
        {
          objc_enumerationMutation(v17);
        }

        v21 = *(*(&v30 + 1) + 8 * j);
        v22 = [v43[5] objectForKeyedSubscript:{v21, v30}];
        v23 = [v22 statsWithError:0];
        v24 = [v6 objectForKeyedSubscript:@"Queues"];
        v25 = HVDataSourceDescription([v21 intValue]);
        [v24 setObject:v23 forKeyedSubscript:v25];
      }

      v18 = [v17 countByEnumeratingWithState:&v30 objects:v54 count:16];
    }

    while (v18);
  }

  v26 = v39;
  v27 = v6;

  _Block_object_dispose(&v42, 8);
  _Block_object_dispose(&v48, 8);

  v28 = *MEMORY[0x277D85DE8];

  return v27;
}

void __27__HVQueues_statsWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2[1];
  v4 = a2;
  v5 = [v3 copy];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = [v4[2] copy];
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = HVDataSourceDescription(*(v4 + 8));
  [*(a1 + 32) setObject:v11 forKeyedSubscript:@"DataSources with available content"];

  v12 = MEMORY[0x277CCABB0];
  v13 = v4[3];

  v14 = [v12 numberWithInt:v13 != 0];
  [*(a1 + 32) setObject:v14 forKeyedSubscript:@"Content available notification in progress"];
}

- (BOOL)deleteContentWithRequest:(id)a3 error:(id *)a4
{
  v50 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = hv_default_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 bundleIdentifier];
    LODWORD(buf) = 138477827;
    *(&buf + 4) = v8;
    _os_log_impl(&dword_2321EC000, v7, OS_LOG_TYPE_DEFAULT, "HVQueues: deleteContentWithRequest: %{private}@", &buf, 0xCu);
  }

  v9 = [v6 bundleIdentifier];
  v10 = HVDataSourceForBundleIdentifier(v9);

  v11 = objc_autoreleasePoolPush();
  v12 = objc_alloc(MEMORY[0x277CBEB98]);
  v13 = [(HVQueues *)self _queueForDataSource:?];
  v14 = [(HVQueues *)self _queueForDataSource:?];
  v15 = [v12 initWithObjects:{v13, v14, 0}];

  objc_autoreleasePoolPop(v11);
  v37 = a4;
  if (v10)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = [(HVQueues *)self _queueForDataSource:v10];
    v18 = [v15 setByAddingObject:v17];

    objc_autoreleasePoolPop(v16);
    v15 = v18;
  }

  v38 = self;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v19 = v15;
  v20 = [v19 countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = 0;
    v23 = *v41;
    v24 = 1;
    do
    {
      v25 = 0;
      v26 = v22;
      do
      {
        if (*v41 != v23)
        {
          objc_enumerationMutation(v19);
        }

        v27 = *(*(&v40 + 1) + 8 * v25);
        v28 = objc_autoreleasePoolPush();
        v39 = v26;
        v29 = [v27 deleteContentWithRequest:v6 error:&v39];
        v22 = v39;

        v24 &= v29;
        objc_autoreleasePoolPop(v28);
        ++v25;
        v26 = v22;
      }

      while (v21 != v25);
      v21 = [v19 countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v21);
  }

  else
  {
    v22 = 0;
    v24 = 1;
  }

  if (v37)
  {
    v30 = v22;
    *v37 = v22;
  }

  v31 = v6;
  if (v38)
  {
    v32 = os_transaction_create();
    lock = v38->_lock;
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v46 = __47__HVQueues_informObserversToDeleteWithRequest___block_invoke;
    v47 = &unk_2789694B8;
    v48 = v31;
    v49 = v32;
    v34 = v32;
    [(_PASLock *)lock runWithLockAcquired:&buf];
  }

  v35 = *MEMORY[0x277D85DE8];
  return v24;
}

void __47__HVQueues_informObserversToDeleteWithRequest___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = v3[1];
  v4 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      v7 = 0;
      do
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v16 + 1) + 8 * v7);
        v9 = objc_autoreleasePoolPush();
        v10 = [v3[1] objectForKey:v8];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __47__HVQueues_informObserversToDeleteWithRequest___block_invoke_2;
        block[3] = &unk_278969530;
        block[4] = v8;
        v14 = *(a1 + 32);
        v15 = *(a1 + 40);
        dispatch_async(v10, block);

        objc_autoreleasePoolPop(v9);
        ++v7;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  v11 = *MEMORY[0x277D85DE8];
}

id __47__HVQueues_informObserversToDeleteWithRequest___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) deleteContentWithRequest:*(a1 + 40) error:0];
  v2 = *(a1 + 48);
  return objc_opt_self();
}

- (BOOL)dequeuedContentNotConsumed:(id)a3 dataSource:(unsigned int)a4 error:(id *)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = hv_default_log_handle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v8 uniqueId];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v10;
    _os_log_impl(&dword_2321EC000, v9, OS_LOG_TYPE_DEFAULT, "HVQueues: dequeuedContentNotConsumedWithUniqueIdentifier: %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__1095;
  v24 = __Block_byref_object_dispose__1096;
  v25 = 0;
  lock = self->_lock;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __56__HVQueues_dequeuedContentNotConsumed_dataSource_error___block_invoke;
  v19[3] = &unk_278969640;
  v19[4] = &buf;
  v20 = a4;
  [(_PASLock *)lock runWithLockAcquired:v19];
  v12 = *(*(&buf + 1) + 40);
  if (v12)
  {
    v18 = 0;
    v13 = [v12 dequeuedContentNotConsumed:v8 error:&v18];
    v14 = v18;
    if (a5)
    {
      v15 = v13;
    }

    else
    {
      v15 = 1;
    }

    if ((v15 & 1) == 0)
    {
      v14 = v14;
      *a5 = v14;
    }
  }

  else if (a5)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"HVErrorDomain" code:12 userInfo:0];
    *a5 = v13 = 0;
  }

  else
  {
    v13 = 0;
  }

  _Block_object_dispose(&buf, 8);

  v16 = *MEMORY[0x277D85DE8];
  return v13;
}

void __56__HVQueues_dequeuedContentNotConsumed_dataSource_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 40)];
  v4 = [v3 objectForKeyedSubscript:v7];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (BOOL)dequeuedContentConsumedForDataSources:(unsigned int)a3 withError:(id *)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = hv_default_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HVDataSourceDescription(a3);
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v8;
    _os_log_impl(&dword_2321EC000, v7, OS_LOG_TYPE_DEFAULT, "HVQueues: dequeuedContentConsumedForDataSources:%{public}@", &buf, 0xCu);
  }

  v9 = 1;
  if (a3)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__1095;
    v20 = __Block_byref_object_dispose__1096;
    v21 = 0;
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 1;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __60__HVQueues_dequeuedContentConsumedForDataSources_withError___block_invoke;
    v12[3] = &unk_278969668;
    v12[4] = self;
    v12[5] = &buf;
    v12[6] = &v13;
    HVDataSourceRunBlockPerSetBit(a3, v12);
    v9 = *(v14 + 24);
    if (a4 && (v14[3] & 1) == 0)
    {
      *a4 = *(*(&buf + 1) + 40);
      v9 = *(v14 + 24);
    }

    _Block_object_dispose(&v13, 8);
    _Block_object_dispose(&buf, 8);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9 & 1;
}

void __60__HVQueues_dequeuedContentConsumedForDataSources_withError___block_invoke(void *a1, int a2)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__1095;
  v15 = __Block_byref_object_dispose__1096;
  v16 = 0;
  v3 = *(a1[4] + 8);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__HVQueues_dequeuedContentConsumedForDataSources_withError___block_invoke_2;
  v9[3] = &unk_278969640;
  v9[4] = &v11;
  v10 = a2;
  [v3 runWithLockAcquired:v9];
  v4 = v12[5];
  if (v4)
  {
    v8 = 0;
    v5 = [v4 dequeuedContentConsumedWithError:&v8];
    v6 = v8;
    v7 = v8;
    if ((v5 & 1) == 0)
    {
      objc_storeStrong((*(a1[5] + 8) + 40), v6);
      *(*(a1[6] + 8) + 24) = 0;
    }
  }

  _Block_object_dispose(&v11, 8);
}

void __60__HVQueues_dequeuedContentConsumedForDataSources_withError___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 40)];
  v4 = [v3 objectForKeyedSubscript:v7];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (BOOL)enqueueContent:(id)a3 contentProtection:(id)a4 error:(id *)a5
{
  v45 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__1095;
  v37 = __Block_byref_object_dispose__1096;
  v38 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  lock = self->_lock;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __51__HVQueues_enqueueContent_contentProtection_error___block_invoke;
  v24[3] = &unk_278969558;
  v11 = v8;
  v27 = &v29;
  v28 = &v33;
  v25 = v11;
  v26 = self;
  [(_PASLock *)lock runWithLockAcquired:v24];
  HIDWORD(v13) = *(v30 + 6) - 1024;
  LODWORD(v13) = HIDWORD(v13);
  v12 = v13 >> 10;
  if (v12 > 7 || ((0x8Bu >> v12) & 1) == 0)
  {
    v14 = [v34[5] contentProtection];
    v15 = [v9 isEqualToString:v14];

    if ((v15 & 1) == 0)
    {
      v16 = hv_default_log_handle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *(v30 + 6);
        v18 = [v34[5] contentProtection];
        *buf = 67109634;
        v40 = v17;
        v41 = 2112;
        v42 = v18;
        v43 = 2112;
        v44 = v9;
        _os_log_impl(&dword_2321EC000, v16, OS_LOG_TYPE_DEFAULT, "HVQueues: enqueueContent: contentProtection for dataSource %u is %@ but caller passed in %@", buf, 0x1Cu);
      }
    }
  }

  v19 = [v34[5] enqueueContent:v11 error:a5];
  if (v19)
  {
    v20 = self->_lock;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __51__HVQueues_enqueueContent_contentProtection_error___block_invoke_27;
    v23[3] = &unk_278969580;
    v23[4] = self;
    v23[5] = &v29;
    [(_PASLock *)v20 runWithLockAcquired:v23];
  }

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v33, 8);

  v21 = *MEMORY[0x277D85DE8];
  return v19;
}

void __51__HVQueues_enqueueContent_contentProtection_error___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = hv_default_log_handle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [objc_opt_class() description];
    v12 = 138412290;
    v13 = v4;
    _os_log_impl(&dword_2321EC000, v2, OS_LOG_TYPE_DEFAULT, "HVQueues: enqueueContent: %@", &v12, 0xCu);
  }

  v5 = *(a1 + 32);
  v6 = objc_opt_class();
  HVDataSourceForContentClass(v6);
  *(*(*(a1 + 48) + 8) + 24) = v7;
  v8 = [(HVQueues *)*(a1 + 40) _queueForDataSource:?];
  v9 = *(*(a1 + 56) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *MEMORY[0x277D85DE8];
}

void __51__HVQueues_enqueueContent_contentProtection_error___block_invoke_27(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) |= *(*(*(a1 + 40) + 8) + 24);
  if (!*(a2 + 24))
  {
    v9 = a2;
    v4 = os_transaction_create();
    v5 = *(a2 + 24);
    *(a2 + 24) = v4;

    v6 = *(a1 + 32);
    if (v6)
    {
      objc_initWeak(&location, v6);
      v7 = MEMORY[0x277D425A0];
      v8 = v6[2];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __56__HVQueues__triggerDelayedContentAvailableNotifications__block_invoke;
      v10[3] = &unk_2789695F8;
      objc_copyWeak(&v11, &location);
      v10[4] = v6;
      [v7 runAsyncOnQueue:v8 afterDelaySeconds:v10 block:0.1];
      objc_destroyWeak(&v11);
      objc_destroyWeak(&location);
    }
  }
}

- (BOOL)registerQueueObserver:(id)a3 dispatchQueue:(id)a4
{
  v6 = a3;
  v7 = a4;
  lock = self->_lock;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __48__HVQueues_registerQueueObserver_dispatchQueue___block_invoke;
  v12[3] = &unk_2789694B8;
  v13 = v7;
  v14 = v6;
  v9 = v6;
  v10 = v7;
  [(_PASLock *)lock runWithLockAcquired:v12];

  return 1;
}

- (HVQueues)init
{
  v10.receiver = self;
  v10.super_class = HVQueues;
  v2 = [(HVQueues *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277D425F8]);
    v4 = objc_opt_new();
    v5 = [v3 initWithGuardedData:v4];
    lock = v2->_lock;
    v2->_lock = v5;

    v7 = [MEMORY[0x277D425A0] autoreleasingSerialQueueWithLabel:"HVQueues.notificationSerialQueue" qosClass:9];
    notificationSerialQueue = v2->_notificationSerialQueue;
    v2->_notificationSerialQueue = v7;
  }

  return v2;
}

+ (id)defaultQueues
{
  if (defaultQueues__pasOnceToken2 != -1)
  {
    dispatch_once(&defaultQueues__pasOnceToken2, &__block_literal_global_1154);
  }

  v3 = defaultQueues__pasExprOnceResult;

  return v3;
}

void __25__HVQueues_defaultQueues__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = defaultQueues__pasExprOnceResult;
  defaultQueues__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

- (unsigned)waitForObserversWithTimeout:(double)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CBEAA8] now];
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v6 = MEMORY[0x277D85DD0];
  do
  {
    lock = self->_lock;
    v32[0] = v6;
    v32[1] = 3221225472;
    v32[2] = __53__HVQueues_TestHelpers__waitForObserversWithTimeout___block_invoke;
    v32[3] = &unk_2789696E0;
    v32[4] = &v33;
    [(_PASLock *)lock runWithLockAcquired:v32];
    if (*(v34 + 24) != 1)
    {
      break;
    }

    usleep(0x1E84u);
    if ((v34[3] & 1) == 0)
    {
      break;
    }

    v8 = [MEMORY[0x277CBEAA8] now];
    [v8 timeIntervalSinceDate:v5];
    v10 = v9 < a3;
  }

  while (v10);
  v11 = objc_opt_new();
  v12 = self->_lock;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __53__HVQueues_TestHelpers__waitForObserversWithTimeout___block_invoke_2;
  v30[3] = &unk_278969508;
  v13 = v11;
  v31 = v13;
  [(_PASLock *)v12 runWithLockAcquired:v30];
  v14 = [MEMORY[0x277CBEAA8] now];
  [v14 timeIntervalSinceDate:v5];
  v16 = v15;

  v17 = fmax(v16, 0.0);
  if (v17 <= 0.0)
  {
    v18 = 0;
  }

  else if (v17 <= 9223372040.0)
  {
    v18 = dispatch_time(0, (v17 * 1000000000.0));
  }

  else
  {
    v18 = -1;
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v19 = v13;
  v20 = [v19 countByEnumeratingWithState:&v26 objects:v37 count:16];
  if (v20)
  {
    v21 = *v27;
    while (2)
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v27 != v21)
        {
          objc_enumerationMutation(v19);
        }

        if (dispatch_block_wait(*(*(&v26 + 1) + 8 * i), v18))
        {
          v23 = 1;
          goto LABEL_20;
        }
      }

      v20 = [v19 countByEnumeratingWithState:&v26 objects:v37 count:16];
      if (v20)
      {
        continue;
      }

      break;
    }
  }

  v23 = 0;
LABEL_20:

  _Block_object_dispose(&v33, 8);
  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

void __53__HVQueues_TestHelpers__waitForObserversWithTimeout___block_invoke_2(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = v3[1];
  v4 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      v7 = 0;
      do
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v16 + 1) + 8 * v7);
        v9 = objc_autoreleasePoolPush();
        v10 = [v3[1] objectForKey:v8];
        v11 = dispatch_block_create(0, &__block_literal_global_124);
        dispatch_barrier_async(v10, v11);
        v12 = *(a1 + 32);
        v13 = MEMORY[0x238381E60](v11);
        [v12 addObject:v13];

        objc_autoreleasePoolPop(v9);
        ++v7;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  v14 = *MEMORY[0x277D85DE8];
}

@end