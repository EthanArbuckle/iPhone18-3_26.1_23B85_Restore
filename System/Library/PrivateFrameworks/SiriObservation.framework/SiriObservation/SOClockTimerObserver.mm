@interface SOClockTimerObserver
+ (void)initialize;
- (SOClockTimerObserver)init;
- (SOClockTimerObserver)initWithInstanceContext:(id)a3;
- (id)_timerSnapshot;
- (void)_beginGroup;
- (void)_consolidateNotifiedFiringTimers;
- (void)_endGroup;
- (void)_enumerateListenersUsingBlock:(id)a3;
- (void)_fetchTimersForReason:(id)a3 completion:(id)a4;
- (void)_handleFetchTimersForReason:(id)a3 error:(id)a4 completion:(id)a5;
- (void)_handleFetchTimersForReason:(id)a3 result:(id)a4 completion:(id)a5;
- (void)_reset;
- (void)_setUp;
- (void)_tearDown;
- (void)addListener:(id)a3;
- (void)clockItemStorageDidUpdate:(id)a3 insertedItemIDs:(id)a4 updatedItemIDs:(id)a5 deletedItemIDs:(id)a6;
- (void)dealloc;
- (void)firingTimerChanged:(id)a3;
- (void)firingTimerDismissed:(id)a3;
- (void)getFiringTimerIDsWithCompletion:(id)a3;
- (void)getTimerSnapshotWithCompletion:(id)a3;
- (void)invalidate;
- (void)removeListener:(id)a3;
- (void)stateReset:(id)a3;
- (void)timerFired:(id)a3;
- (void)timersAdded:(id)a3;
- (void)timersChanged:(id)a3;
- (void)timersRemoved:(id)a3;
- (void)timersUpdated:(id)a3;
@end

@implementation SOClockTimerObserver

- (void)_consolidateNotifiedFiringTimers
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = [(AFClockItemStorage *)self->_timerStorage itemsByID];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __56__SOClockTimerObserver__consolidateNotifiedFiringTimers__block_invoke;
  v23[3] = &unk_279C3D410;
  v23[4] = self;
  [v3 enumerateKeysAndObjectsUsingBlock:v23];
  if ([(NSMutableOrderedSet *)self->_notifiedFiringTimerIDs count])
  {
    v4 = MEMORY[0x277CBEB98];
    v5 = [v3 allKeys];
    v6 = [v4 setWithArray:v5];

    v7 = MEMORY[0x277CBEB58];
    v8 = [(NSMutableOrderedSet *)self->_notifiedFiringTimerIDs set];
    v9 = [v7 setWithSet:v8];

    v17 = v6;
    [v9 minusSet:v6];
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v20;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v19 + 1) + 8 * i);
          [(NSMutableOrderedSet *)self->_notifiedFiringTimerIDs removeObject:v15];
          v18[0] = MEMORY[0x277D85DD0];
          v18[1] = 3221225472;
          v18[2] = __56__SOClockTimerObserver__consolidateNotifiedFiringTimers__block_invoke_4;
          v18[3] = &unk_279C3D2D0;
          v18[4] = self;
          v18[5] = v15;
          [(SOClockTimerObserver *)self _enumerateListenersUsingBlock:v18];
        }

        v12 = [v10 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v12);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __56__SOClockTimerObserver__consolidateNotifiedFiringTimers__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v6 isFiring] && (objc_msgSend(*(*(a1 + 32) + 72), "containsObject:", v5) & 1) == 0)
  {
    [*(*(a1 + 32) + 72) addObject:v5];
    v7 = *(a1 + 32);
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __56__SOClockTimerObserver__consolidateNotifiedFiringTimers__block_invoke_2;
    v19 = &unk_279C3D2D0;
    v20 = v7;
    v8 = &v21;
    v21 = v5;
    v9 = &v16;
    goto LABEL_7;
  }

  if (([v6 isFiring] & 1) == 0 && objc_msgSend(*(*(a1 + 32) + 72), "containsObject:", v5))
  {
    [*(*(a1 + 32) + 72) removeObject:v5];
    v7 = *(a1 + 32);
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __56__SOClockTimerObserver__consolidateNotifiedFiringTimers__block_invoke_3;
    v13 = &unk_279C3D2D0;
    v14 = v7;
    v8 = &v15;
    v15 = v5;
    v9 = &v10;
LABEL_7:
    [v7 _enumerateListenersUsingBlock:{v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21}];
  }
}

- (void)_enumerateListenersUsingBlock:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = self->_listeners;
    v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v4[2](v4, *(*(&v11 + 1) + 8 * v9++));
        }

        while (v7 != v9);
        v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_handleFetchTimersForReason:(id)a3 error:(id)a4 completion:(id)a5
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v12 = 136315650;
    v13 = "[SOClockTimerObserver _handleFetchTimersForReason:error:completion:]";
    v14 = 2112;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    _os_log_error_impl(&dword_26858F000, v10, OS_LOG_TYPE_ERROR, "%s reason = %@, error = %@", &v12, 0x20u);
    if (!v9)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (v9)
  {
LABEL_3:
    v9[2](v9, 0, v8);
  }

LABEL_4:

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_handleFetchTimersForReason:(id)a3 result:(id)a4 completion:(id)a5
{
  v19 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = SOClockTimerCreateFromMTTimers(a4);
  v11 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v13 = 136315650;
    v14 = "[SOClockTimerObserver _handleFetchTimersForReason:result:completion:]";
    v15 = 2112;
    v16 = v8;
    v17 = 2112;
    v18 = v10;
    _os_log_impl(&dword_26858F000, v11, OS_LOG_TYPE_INFO, "%s reason = %@, timers = %@", &v13, 0x20u);
  }

  [(AFClockItemStorage *)self->_timerStorage beginGrouping];
  [(AFClockItemStorage *)self->_timerStorage deleteAllItems];
  [(AFClockItemStorage *)self->_timerStorage insertOrUpdateItems:v10];
  [(AFClockItemStorage *)self->_timerStorage endGroupingWithOptions:0];
  if (v9)
  {
    v9[2](v9, v10, 0);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_fetchTimersForReason:(id)a3 completion:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v29 = "[SOClockTimerObserver _fetchTimersForReason:completion:]";
    v30 = 2112;
    v31 = v6;
    _os_log_impl(&dword_26858F000, v8, OS_LOG_TYPE_INFO, "%s reason = %@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v9 = [(SOClockTimerManager *)self->_timerManager timers];
  if (v9)
  {
    v10 = self->_queue;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __57__SOClockTimerObserver__fetchTimersForReason_completion___block_invoke;
    v23[3] = &unk_279C3D3C0;
    v11 = v6;
    v24 = v11;
    v12 = v10;
    v25 = v12;
    objc_copyWeak(&v27, buf);
    v13 = v7;
    v26 = v13;
    v14 = [v9 addSuccessBlock:v23];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __57__SOClockTimerObserver__fetchTimersForReason_completion___block_invoke_2;
    v18[3] = &unk_279C3D3E8;
    v19 = v11;
    v15 = v12;
    v20 = v15;
    objc_copyWeak(&v22, buf);
    v21 = v13;
    v16 = [v9 addFailureBlock:v18];

    objc_destroyWeak(&v22);
    objc_destroyWeak(&v27);
  }

  else
  {
    v15 = [MEMORY[0x277CEF2A0] errorWithCode:2106];
    [(SOClockTimerObserver *)self _handleFetchTimersForReason:v6 error:v15 completion:v7];
  }

  objc_destroyWeak(buf);
  v17 = *MEMORY[0x277D85DE8];
}

void __57__SOClockTimerObserver__fetchTimersForReason_completion___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    *buf = 136315650;
    v15 = "[SOClockTimerObserver _fetchTimersForReason:completion:]_block_invoke";
    v16 = 2112;
    v17 = v5;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_26858F000, v4, OS_LOG_TYPE_INFO, "%s reason = %@, result = %@", buf, 0x20u);
  }

  v6 = *(a1 + 40);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__SOClockTimerObserver__fetchTimersForReason_completion___block_invoke_26;
  v9[3] = &unk_279C3D398;
  objc_copyWeak(&v13, (a1 + 56));
  v10 = *(a1 + 32);
  v11 = v3;
  v12 = *(a1 + 48);
  v7 = v3;
  dispatch_async(v6, v9);

  objc_destroyWeak(&v13);
  v8 = *MEMORY[0x277D85DE8];
}

void __57__SOClockTimerObserver__fetchTimersForReason_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v8 = *(a1 + 32);
    *buf = 136315650;
    v15 = "[SOClockTimerObserver _fetchTimersForReason:completion:]_block_invoke_2";
    v16 = 2112;
    v17 = v8;
    v18 = 2112;
    v19 = v3;
    _os_log_error_impl(&dword_26858F000, v4, OS_LOG_TYPE_ERROR, "%s reason = %@, error = %@", buf, 0x20u);
  }

  v5 = *(a1 + 40);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__SOClockTimerObserver__fetchTimersForReason_completion___block_invoke_27;
  v9[3] = &unk_279C3D398;
  objc_copyWeak(&v13, (a1 + 56));
  v10 = *(a1 + 32);
  v11 = v3;
  v12 = *(a1 + 48);
  v6 = v3;
  dispatch_async(v5, v9);

  objc_destroyWeak(&v13);
  v7 = *MEMORY[0x277D85DE8];
}

void __57__SOClockTimerObserver__fetchTimersForReason_completion___block_invoke_27(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _handleFetchTimersForReason:*(a1 + 32) error:*(a1 + 40) completion:*(a1 + 48)];
}

void __57__SOClockTimerObserver__fetchTimersForReason_completion___block_invoke_26(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _handleFetchTimersForReason:*(a1 + 32) result:*(a1 + 40) completion:*(a1 + 48)];
}

- (void)_reset
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v11 = "[SOClockTimerObserver _reset]";
    _os_log_impl(&dword_26858F000, v3, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  [(NSMutableOrderedSet *)self->_notifiedFiringTimerIDs removeAllObjects];
  [(AFClockItemStorage *)self->_timerStorage invalidate];
  if (self->_timerManager)
  {
    v4 = [objc_alloc(MEMORY[0x277CEF1F8]) initWithIdentifier:@"timer observer" delegate:self];
  }

  else
  {
    v4 = 0;
  }

  timerStorage = self->_timerStorage;
  self->_timerStorage = v4;

  if (self->_timerSnapshot)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __30__SOClockTimerObserver__reset__block_invoke;
    v9[3] = &unk_279C3D370;
    v9[4] = self;
    [(SOClockTimerObserver *)self _enumerateListenersUsingBlock:v9];
    timerSnapshot = self->_timerSnapshot;
    self->_timerSnapshot = 0;
  }

  timersChangedToken = self->_timersChangedToken;
  self->_timersChangedToken = 0;

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_tearDown
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v6 = 136315138;
    v7 = "[SOClockTimerObserver _tearDown]";
    _os_log_impl(&dword_26858F000, v3, OS_LOG_TYPE_INFO, "%s ", &v6, 0xCu);
  }

  timerManager = self->_timerManager;
  self->_timerManager = 0;

  [(SOClockTimerObserver *)self _reset];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_setUp
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v38 = "[SOClockTimerObserver _setUp]";
    _os_log_impl(&dword_26858F000, v3, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  timerSnapshot = self->_timerSnapshot;
  self->_timerSnapshot = 0;

  v5 = [objc_alloc(MEMORY[0x277CEF1F8]) initWithIdentifier:@"timer observer" delegate:self];
  timerStorage = self->_timerStorage;
  self->_timerStorage = v5;

  v7 = objc_alloc_init(MEMORY[0x277CBEB40]);
  notifiedFiringTimerIDs = self->_notifiedFiringTimerIDs;
  self->_notifiedFiringTimerIDs = v7;

  v9 = [[SOClockTimerManager alloc] initWithInstanceContext:self->_instanceContext];
  timerManager = self->_timerManager;
  self->_timerManager = v9;

  v11 = self->_timerManager;
  if (v11)
  {
    [(SOClockTimerManager *)v11 checkIn];
    objc_initWeak(buf, self);
    v12 = self->_timerManager;
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __30__SOClockTimerObserver__setUp__block_invoke;
    v35[3] = &unk_279C3D348;
    objc_copyWeak(&v36, buf);
    [(SOClockTimerManager *)v12 addHandler:v35 forEvent:1];
    v13 = self->_timerManager;
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __30__SOClockTimerObserver__setUp__block_invoke_2;
    v33[3] = &unk_279C3D348;
    objc_copyWeak(&v34, buf);
    [(SOClockTimerManager *)v13 addHandler:v33 forEvent:2];
    v14 = self->_timerManager;
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __30__SOClockTimerObserver__setUp__block_invoke_3;
    v31[3] = &unk_279C3D348;
    objc_copyWeak(&v32, buf);
    [(SOClockTimerManager *)v14 addHandler:v31 forEvent:3];
    v15 = self->_timerManager;
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __30__SOClockTimerObserver__setUp__block_invoke_4;
    v29[3] = &unk_279C3D348;
    objc_copyWeak(&v30, buf);
    [(SOClockTimerManager *)v15 addHandler:v29 forEvent:4];
    v16 = self->_timerManager;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __30__SOClockTimerObserver__setUp__block_invoke_5;
    v27[3] = &unk_279C3D348;
    objc_copyWeak(&v28, buf);
    [(SOClockTimerManager *)v16 addHandler:v27 forEvent:5];
    v17 = self->_timerManager;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __30__SOClockTimerObserver__setUp__block_invoke_6;
    v25[3] = &unk_279C3D348;
    objc_copyWeak(&v26, buf);
    [(SOClockTimerManager *)v17 addHandler:v25 forEvent:6];
    v18 = self->_timerManager;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __30__SOClockTimerObserver__setUp__block_invoke_7;
    v23[3] = &unk_279C3D348;
    objc_copyWeak(&v24, buf);
    [(SOClockTimerManager *)v18 addHandler:v23 forEvent:8];
    v19 = self->_timerManager;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __30__SOClockTimerObserver__setUp__block_invoke_8;
    v21[3] = &unk_279C3D348;
    objc_copyWeak(&v22, buf);
    [(SOClockTimerManager *)v19 addHandler:v21 forEvent:7];
    objc_destroyWeak(&v22);
    objc_destroyWeak(&v24);
    objc_destroyWeak(&v26);
    objc_destroyWeak(&v28);
    objc_destroyWeak(&v30);
    objc_destroyWeak(&v32);
    objc_destroyWeak(&v34);
    objc_destroyWeak(&v36);
    objc_destroyWeak(buf);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __30__SOClockTimerObserver__setUp__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained timersAdded:v3];
}

void __30__SOClockTimerObserver__setUp__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained timersUpdated:v3];
}

void __30__SOClockTimerObserver__setUp__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained timersRemoved:v3];
}

void __30__SOClockTimerObserver__setUp__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained timerFired:v3];
}

void __30__SOClockTimerObserver__setUp__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained firingTimerChanged:v3];
}

void __30__SOClockTimerObserver__setUp__block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained firingTimerDismissed:v3];
}

void __30__SOClockTimerObserver__setUp__block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained stateReset:v3];
}

void __30__SOClockTimerObserver__setUp__block_invoke_8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained timersChanged:v3];
}

- (id)_timerSnapshot
{
  timerSnapshot = self->_timerSnapshot;
  if (!timerSnapshot)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __38__SOClockTimerObserver__timerSnapshot__block_invoke;
    v7[3] = &unk_279C3D320;
    v7[4] = self;
    v4 = [MEMORY[0x277CEF208] newWithBuilder:v7];
    v5 = self->_timerSnapshot;
    self->_timerSnapshot = v4;

    timerSnapshot = self->_timerSnapshot;
  }

  return timerSnapshot;
}

void __38__SOClockTimerObserver__timerSnapshot__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 64);
  v6 = a2;
  [v6 setGeneration:{objc_msgSend(v3, "generation")}];
  v4 = [*(*(a1 + 32) + 64) date];
  [v6 setDate:v4];

  v5 = [*(*(a1 + 32) + 64) itemsByID];
  [v6 setTimersByID:v5];

  [v6 setNotifiedFiringTimerIDs:*(*(a1 + 32) + 72)];
}

- (void)_endGroup
{
  p_timerSnapshotGroup = &self->_timerSnapshotGroup;
  timerSnapshotGroup = self->_timerSnapshotGroup;
  self->_timerSnapshotGroupDepth = p_timerSnapshotGroup[1] - 1;
  dispatch_group_leave(timerSnapshotGroup);
  if (!self->_timerSnapshotGroupDepth)
  {
    v5 = self->_timerSnapshotGroup;
    self->_timerSnapshotGroup = 0;
  }
}

- (void)_beginGroup
{
  timerSnapshotGroup = self->_timerSnapshotGroup;
  if (!timerSnapshotGroup)
  {
    v4 = dispatch_group_create();
    v5 = self->_timerSnapshotGroup;
    self->_timerSnapshotGroup = v4;

    timerSnapshotGroup = self->_timerSnapshotGroup;
  }

  dispatch_group_enter(timerSnapshotGroup);
  ++self->_timerSnapshotGroupDepth;
}

- (void)timersChanged:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__SOClockTimerObserver_timersChanged___block_invoke;
  v7[3] = &unk_279C3D598;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __38__SOClockTimerObserver_timersChanged___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 40);
      *buf = 136315394;
      v14 = "[SOClockTimerObserver timersChanged:]_block_invoke";
      v15 = 2112;
      v16 = v4;
      _os_log_impl(&dword_26858F000, v3, OS_LOG_TYPE_INFO, "%s timers = %@", buf, 0x16u);
    }

    v5 = [MEMORY[0x277CCAD78] UUID];
    objc_storeStrong(v2 + 10, v5);
    objc_initWeak(buf, v2);
    v6 = dispatch_time(0, 250000000);
    v7 = *(*(a1 + 32) + 8);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __38__SOClockTimerObserver_timersChanged___block_invoke_14;
    v10[3] = &unk_279C3D2F8;
    objc_copyWeak(&v12, buf);
    v11 = v5;
    v8 = v5;
    dispatch_after(v6, v7, v10);

    objc_destroyWeak(&v12);
    objc_destroyWeak(buf);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __38__SOClockTimerObserver_timersChanged___block_invoke_14(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(WeakRetained + 10);
    if (v4)
    {
      if (*(a1 + 32) && [v4 isEqual:?])
      {
        [v3 _beginGroup];
        v5[0] = MEMORY[0x277D85DD0];
        v5[1] = 3221225472;
        v5[2] = __38__SOClockTimerObserver_timersChanged___block_invoke_2;
        v5[3] = &unk_279C3D258;
        v5[4] = v3;
        [v3 _fetchTimersForReason:@"batched changes" completion:v5];
      }
    }
  }
}

uint64_t __38__SOClockTimerObserver_timersChanged___block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[SOClockTimerObserver timersChanged:]_block_invoke_2";
    _os_log_impl(&dword_26858F000, v2, OS_LOG_TYPE_INFO, "%s Timer fetch complete for batched changes", &v5, 0xCu);
  }

  result = [*(a1 + 32) _endGroup];
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)stateReset:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v10 = "[SOClockTimerObserver stateReset:]";
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_26858F000, v5, OS_LOG_TYPE_INFO, "%s timers = %@", buf, 0x16u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__SOClockTimerObserver_stateReset___block_invoke;
  block[3] = &unk_279C3D280;
  block[4] = self;
  dispatch_async(queue, block);

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t __35__SOClockTimerObserver_stateReset___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _reset];
  [*(a1 + 32) _beginGroup];
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __35__SOClockTimerObserver_stateReset___block_invoke_2;
  v4[3] = &unk_279C3D258;
  v4[4] = v2;
  return [v2 _fetchTimersForReason:@"state reset" completion:v4];
}

uint64_t __35__SOClockTimerObserver_stateReset___block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[SOClockTimerObserver stateReset:]_block_invoke_2";
    _os_log_impl(&dword_26858F000, v2, OS_LOG_TYPE_INFO, "%s Timer fetch complete for state reset", &v5, 0xCu);
  }

  result = [*(a1 + 32) _endGroup];
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)firingTimerDismissed:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v12 = "[SOClockTimerObserver firingTimerDismissed:]";
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_26858F000, v5, OS_LOG_TYPE_INFO, "%s timers = %@", buf, 0x16u);
  }

  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __45__SOClockTimerObserver_firingTimerDismissed___block_invoke;
  v9[3] = &unk_279C3D598;
  v9[4] = self;
  v10 = v4;
  v7 = v4;
  dispatch_async(queue, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __45__SOClockTimerObserver_firingTimerDismissed___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 40);
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;

  v5 = _SOClockTimerObserverGetTimerIDsFromTimers(*(a1 + 40));
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        if ([*(*(a1 + 32) + 72) containsObject:v10])
        {
          [*(*(a1 + 32) + 72) removeObject:v10];
          v11 = *(a1 + 32);
          v18[0] = MEMORY[0x277D85DD0];
          v18[1] = 3221225472;
          v18[2] = __45__SOClockTimerObserver_firingTimerDismissed___block_invoke_2;
          v18[3] = &unk_279C3D2D0;
          v18[4] = v11;
          v18[5] = v10;
          [v11 _enumerateListenersUsingBlock:v18];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  [*(*(a1 + 32) + 64) beginGrouping];
  [*(*(a1 + 32) + 64) insertOrUpdateItems:*(a1 + 40)];
  [*(*(a1 + 32) + 64) endGroupingWithOptions:1];
  [*(a1 + 32) _consolidateNotifiedFiringTimers];
  v12 = [*(a1 + 32) _timerSnapshot];
  if (v2 != v12 && ([v2 isEqual:v12] & 1) == 0)
  {
    v13 = *(a1 + 32);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __45__SOClockTimerObserver_firingTimerDismissed___block_invoke_3;
    v15[3] = &unk_279C3D2A8;
    v15[4] = v13;
    v16 = v2;
    v17 = v12;
    [v13 _enumerateListenersUsingBlock:v15];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)firingTimerChanged:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v12 = "[SOClockTimerObserver firingTimerChanged:]";
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_26858F000, v5, OS_LOG_TYPE_INFO, "%s timers = %@", buf, 0x16u);
  }

  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __43__SOClockTimerObserver_firingTimerChanged___block_invoke;
  v9[3] = &unk_279C3D598;
  v9[4] = self;
  v10 = v4;
  v7 = v4;
  dispatch_async(queue, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)timerFired:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v12 = "[SOClockTimerObserver timerFired:]";
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_26858F000, v5, OS_LOG_TYPE_INFO, "%s timers = %@", buf, 0x16u);
  }

  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __35__SOClockTimerObserver_timerFired___block_invoke;
  v9[3] = &unk_279C3D598;
  v9[4] = self;
  v10 = v4;
  v7 = v4;
  dispatch_async(queue, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __35__SOClockTimerObserver_timerFired___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 40);
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;

  v5 = _SOClockTimerObserverGetTimerIDsFromTimers(*(a1 + 40));
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        if (([*(*(a1 + 32) + 72) containsObject:v10] & 1) == 0)
        {
          [*(*(a1 + 32) + 72) addObject:v10];
          v11 = *(a1 + 32);
          v18[0] = MEMORY[0x277D85DD0];
          v18[1] = 3221225472;
          v18[2] = __35__SOClockTimerObserver_timerFired___block_invoke_2;
          v18[3] = &unk_279C3D2D0;
          v18[4] = v11;
          v18[5] = v10;
          [v11 _enumerateListenersUsingBlock:v18];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  [*(*(a1 + 32) + 64) beginGrouping];
  [*(*(a1 + 32) + 64) insertOrUpdateItems:*(a1 + 40)];
  [*(*(a1 + 32) + 64) endGroupingWithOptions:1];
  [*(a1 + 32) _consolidateNotifiedFiringTimers];
  v12 = [*(a1 + 32) _timerSnapshot];
  if (v2 != v12 && ([v2 isEqual:v12] & 1) == 0)
  {
    v13 = *(a1 + 32);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __35__SOClockTimerObserver_timerFired___block_invoke_3;
    v15[3] = &unk_279C3D2A8;
    v15[4] = v13;
    v16 = v2;
    v17 = v12;
    [v13 _enumerateListenersUsingBlock:v15];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)timersRemoved:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v12 = "[SOClockTimerObserver timersRemoved:]";
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_26858F000, v5, OS_LOG_TYPE_INFO, "%s timers = %@", buf, 0x16u);
  }

  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __38__SOClockTimerObserver_timersRemoved___block_invoke;
  v9[3] = &unk_279C3D598;
  v9[4] = self;
  v10 = v4;
  v7 = v4;
  dispatch_async(queue, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __38__SOClockTimerObserver_timersRemoved___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 40);
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;

  v5 = _SOClockTimerObserverGetTimerIDsFromTimers(*(a1 + 40));
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        if ([*(*(a1 + 32) + 72) containsObject:v10])
        {
          [*(*(a1 + 32) + 72) removeObject:v10];
          v11 = *(a1 + 32);
          v18[0] = MEMORY[0x277D85DD0];
          v18[1] = 3221225472;
          v18[2] = __38__SOClockTimerObserver_timersRemoved___block_invoke_2;
          v18[3] = &unk_279C3D2D0;
          v18[4] = v11;
          v18[5] = v10;
          [v11 _enumerateListenersUsingBlock:v18];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  [*(*(a1 + 32) + 64) beginGrouping];
  [*(*(a1 + 32) + 64) deleteItemsWithIDs:v5];
  [*(*(a1 + 32) + 64) endGroupingWithOptions:1];
  [*(a1 + 32) _consolidateNotifiedFiringTimers];
  v12 = [*(a1 + 32) _timerSnapshot];
  if (v2 != v12 && ([v2 isEqual:v12] & 1) == 0)
  {
    v13 = *(a1 + 32);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __38__SOClockTimerObserver_timersRemoved___block_invoke_3;
    v15[3] = &unk_279C3D2A8;
    v15[4] = v13;
    v16 = v2;
    v17 = v12;
    [v13 _enumerateListenersUsingBlock:v15];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)timersUpdated:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v12 = "[SOClockTimerObserver timersUpdated:]";
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_26858F000, v5, OS_LOG_TYPE_INFO, "%s timers = %@", buf, 0x16u);
  }

  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __38__SOClockTimerObserver_timersUpdated___block_invoke;
  v9[3] = &unk_279C3D598;
  v9[4] = self;
  v10 = v4;
  v7 = v4;
  dispatch_async(queue, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)timersAdded:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v12 = "[SOClockTimerObserver timersAdded:]";
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_26858F000, v5, OS_LOG_TYPE_INFO, "%s timers = %@", buf, 0x16u);
  }

  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __36__SOClockTimerObserver_timersAdded___block_invoke;
  v9[3] = &unk_279C3D598;
  v9[4] = self;
  v10 = v4;
  v7 = v4;
  dispatch_async(queue, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)clockItemStorageDidUpdate:(id)a3 insertedItemIDs:(id)a4 updatedItemIDs:(id)a5 deletedItemIDs:(id)a6
{
  v26 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (self->_timerStorage == a3)
  {
    dispatch_assert_queue_V2(self->_queue);
    v13 = MEMORY[0x277CEF098];
    v14 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v23 = "[SOClockTimerObserver clockItemStorageDidUpdate:insertedItemIDs:updatedItemIDs:deletedItemIDs:]";
      v24 = 2112;
      v25 = v10;
      _os_log_impl(&dword_26858F000, v14, OS_LOG_TYPE_INFO, "%s insertedItemIDs = %@", buf, 0x16u);
      v14 = *v13;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v23 = "[SOClockTimerObserver clockItemStorageDidUpdate:insertedItemIDs:updatedItemIDs:deletedItemIDs:]";
      v24 = 2112;
      v25 = v11;
      _os_log_impl(&dword_26858F000, v14, OS_LOG_TYPE_INFO, "%s  updatedItemIDs = %@", buf, 0x16u);
      v14 = *v13;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v23 = "[SOClockTimerObserver clockItemStorageDidUpdate:insertedItemIDs:updatedItemIDs:deletedItemIDs:]";
      v24 = 2112;
      v25 = v12;
      _os_log_impl(&dword_26858F000, v14, OS_LOG_TYPE_INFO, "%s  deletedItemIDs = %@", buf, 0x16u);
    }

    v15 = self->_timerSnapshot;
    timerSnapshot = self->_timerSnapshot;
    self->_timerSnapshot = 0;

    [(SOClockTimerObserver *)self _consolidateNotifiedFiringTimers];
    v17 = [(SOClockTimerObserver *)self _timerSnapshot];
    if (v15 != v17 && ([(AFClockTimerSnapshot *)v15 isEqual:v17]& 1) == 0)
    {
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __96__SOClockTimerObserver_clockItemStorageDidUpdate_insertedItemIDs_updatedItemIDs_deletedItemIDs___block_invoke;
      v19[3] = &unk_279C3D2A8;
      v19[4] = self;
      v20 = v15;
      v21 = v17;
      [(SOClockTimerObserver *)self _enumerateListenersUsingBlock:v19];
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)invalidate
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__SOClockTimerObserver_invalidate__block_invoke;
  block[3] = &unk_279C3D280;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __34__SOClockTimerObserver_invalidate__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 24) removeAllObjects];
  v2 = *(a1 + 32);

  return [v2 _tearDown];
}

- (void)getFiringTimerIDsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __56__SOClockTimerObserver_getFiringTimerIDsWithCompletion___block_invoke;
    v7[3] = &unk_279C3D548;
    v7[4] = self;
    v8 = v4;
    dispatch_async(queue, v7);
  }
}

void __56__SOClockTimerObserver_getFiringTimerIDsWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(*(a1 + 32) + 72) copy];
  (*(v1 + 16))(v1, v2);
}

- (void)getTimerSnapshotWithCompletion:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v11 = "[SOClockTimerObserver getTimerSnapshotWithCompletion:]";
      _os_log_impl(&dword_26858F000, v5, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
    }

    queue = self->_queue;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __55__SOClockTimerObserver_getTimerSnapshotWithCompletion___block_invoke;
    v8[3] = &unk_279C3D548;
    v8[4] = self;
    v9 = v4;
    dispatch_async(queue, v8);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __55__SOClockTimerObserver_getTimerSnapshotWithCompletion___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = v2[6];
  if (v3)
  {
    v4 = v2[1];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __55__SOClockTimerObserver_getTimerSnapshotWithCompletion___block_invoke_2;
    v8[3] = &unk_279C3D548;
    v8[4] = v2;
    v9 = *(a1 + 40);
    dispatch_group_notify(v3, v4, v8);
  }

  else
  {
    v5 = [v2 _timerSnapshot];
    v6 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v11 = "[SOClockTimerObserver getTimerSnapshotWithCompletion:]_block_invoke";
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&dword_26858F000, v6, OS_LOG_TYPE_INFO, "%s timerSnapshot = %@", buf, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __55__SOClockTimerObserver_getTimerSnapshotWithCompletion___block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _timerSnapshot];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v5 = 136315394;
    v6 = "[SOClockTimerObserver getTimerSnapshotWithCompletion:]_block_invoke_2";
    v7 = 2112;
    v8 = v2;
    _os_log_impl(&dword_26858F000, v3, OS_LOG_TYPE_INFO, "%s Notified, timerSnapshot = %@", &v5, 0x16u);
  }

  (*(*(a1 + 40) + 16))();

  v4 = *MEMORY[0x277D85DE8];
}

- (void)removeListener:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __39__SOClockTimerObserver_removeListener___block_invoke;
    v7[3] = &unk_279C3D598;
    v7[4] = self;
    v8 = v4;
    dispatch_async(queue, v7);
  }
}

- (void)addListener:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __36__SOClockTimerObserver_addListener___block_invoke;
    v7[3] = &unk_279C3D598;
    v7[4] = self;
    v8 = v4;
    dispatch_async(queue, v7);
  }
}

- (void)dealloc
{
  [(SOClockTimerObserver *)self _tearDown];
  v3.receiver = self;
  v3.super_class = SOClockTimerObserver;
  [(SOClockTimerObserver *)&v3 dealloc];
}

- (SOClockTimerObserver)initWithInstanceContext:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v20.receiver = self;
  v20.super_class = SOClockTimerObserver;
  v5 = [(SOClockTimerObserver *)&v20 init];
  if (v5)
  {
    v6 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v22 = "[SOClockTimerObserver initWithInstanceContext:]";
      _os_log_impl(&dword_26858F000, v6, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
    }

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_attr_make_with_qos_class(v7, QOS_CLASS_USER_INITIATED, 0);

    v9 = dispatch_queue_create("com.apple.assistant.clock-timer-observer", v8);
    queue = v5->_queue;
    v5->_queue = v9;

    if (v4)
    {
      v11 = v4;
    }

    else
    {
      v11 = [MEMORY[0x277CEF2C8] defaultContext];
    }

    instanceContext = v5->_instanceContext;
    v5->_instanceContext = v11;

    v13 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:5 capacity:0];
    listeners = v5->_listeners;
    v5->_listeners = v13;

    [(SOClockTimerObserver *)v5 _beginGroup];
    v15 = v5->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__SOClockTimerObserver_initWithInstanceContext___block_invoke;
    block[3] = &unk_279C3D280;
    v19 = v5;
    dispatch_async(v15, block);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v5;
}

void __48__SOClockTimerObserver_initWithInstanceContext___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setUp];
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __48__SOClockTimerObserver_initWithInstanceContext___block_invoke_2;
  v3[3] = &unk_279C3D258;
  v4 = v2;
  [v4 _fetchTimersForReason:@"initial" completion:v3];
}

uint64_t __48__SOClockTimerObserver_initWithInstanceContext___block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[SOClockTimerObserver initWithInstanceContext:]_block_invoke_2";
    _os_log_impl(&dword_26858F000, v2, OS_LOG_TYPE_INFO, "%s Initial timer fetch completed", &v5, 0xCu);
  }

  result = [*(a1 + 32) _endGroup];
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

- (SOClockTimerObserver)init
{
  v3 = [MEMORY[0x277CEF2C8] currentContext];
  v4 = [(SOClockTimerObserver *)self initWithInstanceContext:v3];

  return v4;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {

    +[SOClockTimerManager warmUp];
  }
}

@end