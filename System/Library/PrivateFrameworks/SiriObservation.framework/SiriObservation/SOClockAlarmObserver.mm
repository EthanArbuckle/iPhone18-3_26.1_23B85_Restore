@interface SOClockAlarmObserver
+ (void)initialize;
- (SOClockAlarmObserver)init;
- (SOClockAlarmObserver)initWithInstanceContext:(id)context;
- (id)_alarmSnapshot;
- (void)_beginGroup;
- (void)_consolidateNotifiedFiringAlarms;
- (void)_endGroup;
- (void)_enumerateListenersUsingBlock:(id)block;
- (void)_fetchAlarmsForReason:(id)reason completion:(id)completion;
- (void)_handleFetchAlarmsForReason:(id)reason error:(id)error completion:(id)completion;
- (void)_handleFetchAlarmsForReason:(id)reason result:(id)result completion:(id)completion;
- (void)_reset;
- (void)_setUp;
- (void)_tearDown;
- (void)addListener:(id)listener;
- (void)alarmFired:(id)fired;
- (void)alarmsAdded:(id)added;
- (void)alarmsChanged:(id)changed;
- (void)alarmsRemoved:(id)removed;
- (void)alarmsUpdated:(id)updated;
- (void)clockItemStorageDidUpdate:(id)update insertedItemIDs:(id)ds updatedItemIDs:(id)iDs deletedItemIDs:(id)itemIDs;
- (void)dealloc;
- (void)firingAlarmChanged:(id)changed;
- (void)firingAlarmDismissed:(id)dismissed;
- (void)getAlarmSnapshotWithCompletion:(id)completion;
- (void)getFiringAlarmIDsWithCompletion:(id)completion;
- (void)invalidate;
- (void)removeListener:(id)listener;
- (void)stateReset:(id)reset;
@end

@implementation SOClockAlarmObserver

- (void)_consolidateNotifiedFiringAlarms
{
  v25 = *MEMORY[0x277D85DE8];
  itemsByID = [(AFClockItemStorage *)self->_alarmStorage itemsByID];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __56__SOClockAlarmObserver__consolidateNotifiedFiringAlarms__block_invoke;
  v23[3] = &unk_279C3CF10;
  v23[4] = self;
  [itemsByID enumerateKeysAndObjectsUsingBlock:v23];
  if ([(NSMutableOrderedSet *)self->_notifiedFiringAlarmIDs count])
  {
    v4 = MEMORY[0x277CBEB98];
    allKeys = [itemsByID allKeys];
    v6 = [v4 setWithArray:allKeys];

    v7 = MEMORY[0x277CBEB58];
    v8 = [(NSMutableOrderedSet *)self->_notifiedFiringAlarmIDs set];
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
          [(NSMutableOrderedSet *)self->_notifiedFiringAlarmIDs removeObject:v15];
          v18[0] = MEMORY[0x277D85DD0];
          v18[1] = 3221225472;
          v18[2] = __56__SOClockAlarmObserver__consolidateNotifiedFiringAlarms__block_invoke_4;
          v18[3] = &unk_279C3CE98;
          v18[4] = self;
          v18[5] = v15;
          [(SOClockAlarmObserver *)self _enumerateListenersUsingBlock:v18];
        }

        v12 = [v10 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v12);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __56__SOClockAlarmObserver__consolidateNotifiedFiringAlarms__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v6 isFiring] && (objc_msgSend(*(*(a1 + 32) + 72), "containsObject:", v5) & 1) == 0)
  {
    [*(*(a1 + 32) + 72) addObject:v5];
    v7 = *(a1 + 32);
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __56__SOClockAlarmObserver__consolidateNotifiedFiringAlarms__block_invoke_2;
    v19 = &unk_279C3CE98;
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
    v12 = __56__SOClockAlarmObserver__consolidateNotifiedFiringAlarms__block_invoke_3;
    v13 = &unk_279C3CE98;
    v14 = v7;
    v8 = &v15;
    v15 = v5;
    v9 = &v10;
LABEL_7:
    [v7 _enumerateListenersUsingBlock:{v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21}];
  }
}

- (void)_enumerateListenersUsingBlock:(id)block
{
  v16 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (blockCopy)
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

          blockCopy[2](blockCopy, *(*(&v11 + 1) + 8 * v9++));
        }

        while (v7 != v9);
        v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_handleFetchAlarmsForReason:(id)reason error:(id)error completion:(id)completion
{
  v18 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  errorCopy = error;
  completionCopy = completion;
  v10 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v12 = 136315650;
    v13 = "[SOClockAlarmObserver _handleFetchAlarmsForReason:error:completion:]";
    v14 = 2112;
    v15 = reasonCopy;
    v16 = 2112;
    v17 = errorCopy;
    _os_log_error_impl(&dword_26858F000, v10, OS_LOG_TYPE_ERROR, "%s reason = %@, error = %@", &v12, 0x20u);
    if (!completionCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (completionCopy)
  {
LABEL_3:
    completionCopy[2](completionCopy, 0, errorCopy);
  }

LABEL_4:

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_handleFetchAlarmsForReason:(id)reason result:(id)result completion:(id)completion
{
  v19 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  completionCopy = completion;
  v10 = SOClockAlarmCreateFromMTAlarms(result);
  v11 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v13 = 136315650;
    v14 = "[SOClockAlarmObserver _handleFetchAlarmsForReason:result:completion:]";
    v15 = 2112;
    v16 = reasonCopy;
    v17 = 2112;
    v18 = v10;
    _os_log_impl(&dword_26858F000, v11, OS_LOG_TYPE_INFO, "%s reason = %@, alarms = %@", &v13, 0x20u);
  }

  [(AFClockItemStorage *)self->_alarmStorage beginGrouping];
  [(AFClockItemStorage *)self->_alarmStorage deleteAllItems];
  [(AFClockItemStorage *)self->_alarmStorage insertOrUpdateItems:v10];
  [(AFClockItemStorage *)self->_alarmStorage endGroupingWithOptions:0];
  if (completionCopy)
  {
    completionCopy[2](completionCopy, v10, 0);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_fetchAlarmsForReason:(id)reason completion:(id)completion
{
  v32 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  completionCopy = completion;
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v29 = "[SOClockAlarmObserver _fetchAlarmsForReason:completion:]";
    v30 = 2112;
    v31 = reasonCopy;
    _os_log_impl(&dword_26858F000, v8, OS_LOG_TYPE_INFO, "%s reason = %@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v9 = [(SOClockAlarmManager *)self->_alarmManager alarmsIncludingSleepAlarm:1];
  if (v9)
  {
    v10 = self->_queue;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __57__SOClockAlarmObserver__fetchAlarmsForReason_completion___block_invoke;
    v23[3] = &unk_279C3D3C0;
    v11 = reasonCopy;
    v24 = v11;
    v12 = v10;
    v25 = v12;
    objc_copyWeak(&v27, buf);
    v13 = completionCopy;
    v26 = v13;
    v14 = [v9 addSuccessBlock:v23];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __57__SOClockAlarmObserver__fetchAlarmsForReason_completion___block_invoke_2;
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
    v15 = [MEMORY[0x277CEF2A0] errorWithCode:2105];
    [(SOClockAlarmObserver *)self _handleFetchAlarmsForReason:reasonCopy error:v15 completion:completionCopy];
  }

  objc_destroyWeak(buf);
  v17 = *MEMORY[0x277D85DE8];
}

void __57__SOClockAlarmObserver__fetchAlarmsForReason_completion___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    *buf = 136315650;
    v15 = "[SOClockAlarmObserver _fetchAlarmsForReason:completion:]_block_invoke";
    v16 = 2112;
    v17 = v5;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_26858F000, v4, OS_LOG_TYPE_INFO, "%s reason = %@, result = %@", buf, 0x20u);
  }

  v6 = *(a1 + 40);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__SOClockAlarmObserver__fetchAlarmsForReason_completion___block_invoke_26;
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

void __57__SOClockAlarmObserver__fetchAlarmsForReason_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v8 = *(a1 + 32);
    *buf = 136315650;
    v15 = "[SOClockAlarmObserver _fetchAlarmsForReason:completion:]_block_invoke_2";
    v16 = 2112;
    v17 = v8;
    v18 = 2112;
    v19 = v3;
    _os_log_error_impl(&dword_26858F000, v4, OS_LOG_TYPE_ERROR, "%s reason = %@, error = %@", buf, 0x20u);
  }

  v5 = *(a1 + 40);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__SOClockAlarmObserver__fetchAlarmsForReason_completion___block_invoke_27;
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

void __57__SOClockAlarmObserver__fetchAlarmsForReason_completion___block_invoke_27(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _handleFetchAlarmsForReason:*(a1 + 32) error:*(a1 + 40) completion:*(a1 + 48)];
}

void __57__SOClockAlarmObserver__fetchAlarmsForReason_completion___block_invoke_26(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _handleFetchAlarmsForReason:*(a1 + 32) result:*(a1 + 40) completion:*(a1 + 48)];
}

- (void)_reset
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v11 = "[SOClockAlarmObserver _reset]";
    _os_log_impl(&dword_26858F000, v3, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  [(NSMutableOrderedSet *)self->_notifiedFiringAlarmIDs removeAllObjects];
  [(AFClockItemStorage *)self->_alarmStorage invalidate];
  if (self->_alarmManager)
  {
    v4 = [objc_alloc(MEMORY[0x277CEF1F8]) initWithIdentifier:@"alarm observer" delegate:self];
  }

  else
  {
    v4 = 0;
  }

  alarmStorage = self->_alarmStorage;
  self->_alarmStorage = v4;

  if (self->_alarmSnapshot)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __30__SOClockAlarmObserver__reset__block_invoke;
    v9[3] = &unk_279C3CEE8;
    v9[4] = self;
    [(SOClockAlarmObserver *)self _enumerateListenersUsingBlock:v9];
    alarmSnapshot = self->_alarmSnapshot;
    self->_alarmSnapshot = 0;
  }

  alarmsChangedToken = self->_alarmsChangedToken;
  self->_alarmsChangedToken = 0;

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_tearDown
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v6 = 136315138;
    v7 = "[SOClockAlarmObserver _tearDown]";
    _os_log_impl(&dword_26858F000, v3, OS_LOG_TYPE_INFO, "%s ", &v6, 0xCu);
  }

  alarmManager = self->_alarmManager;
  self->_alarmManager = 0;

  [(SOClockAlarmObserver *)self _reset];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_setUp
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v38 = "[SOClockAlarmObserver _setUp]";
    _os_log_impl(&dword_26858F000, v3, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  alarmSnapshot = self->_alarmSnapshot;
  self->_alarmSnapshot = 0;

  v5 = [objc_alloc(MEMORY[0x277CEF1F8]) initWithIdentifier:@"alarm observer" delegate:self];
  alarmStorage = self->_alarmStorage;
  self->_alarmStorage = v5;

  v7 = objc_alloc_init(MEMORY[0x277CBEB40]);
  notifiedFiringAlarmIDs = self->_notifiedFiringAlarmIDs;
  self->_notifiedFiringAlarmIDs = v7;

  v9 = [[SOClockAlarmManager alloc] initWithInstanceContext:self->_instanceContext];
  alarmManager = self->_alarmManager;
  self->_alarmManager = v9;

  v11 = self->_alarmManager;
  if (v11)
  {
    [(SOClockAlarmManager *)v11 checkIn];
    objc_initWeak(buf, self);
    v12 = self->_alarmManager;
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __30__SOClockAlarmObserver__setUp__block_invoke;
    v35[3] = &unk_279C3D348;
    objc_copyWeak(&v36, buf);
    [(SOClockAlarmManager *)v12 addHandler:v35 forEvent:1];
    v13 = self->_alarmManager;
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __30__SOClockAlarmObserver__setUp__block_invoke_2;
    v33[3] = &unk_279C3D348;
    objc_copyWeak(&v34, buf);
    [(SOClockAlarmManager *)v13 addHandler:v33 forEvent:2];
    v14 = self->_alarmManager;
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __30__SOClockAlarmObserver__setUp__block_invoke_3;
    v31[3] = &unk_279C3D348;
    objc_copyWeak(&v32, buf);
    [(SOClockAlarmManager *)v14 addHandler:v31 forEvent:3];
    v15 = self->_alarmManager;
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __30__SOClockAlarmObserver__setUp__block_invoke_4;
    v29[3] = &unk_279C3D348;
    objc_copyWeak(&v30, buf);
    [(SOClockAlarmManager *)v15 addHandler:v29 forEvent:4];
    v16 = self->_alarmManager;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __30__SOClockAlarmObserver__setUp__block_invoke_5;
    v27[3] = &unk_279C3D348;
    objc_copyWeak(&v28, buf);
    [(SOClockAlarmManager *)v16 addHandler:v27 forEvent:6];
    v17 = self->_alarmManager;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __30__SOClockAlarmObserver__setUp__block_invoke_6;
    v25[3] = &unk_279C3D348;
    objc_copyWeak(&v26, buf);
    [(SOClockAlarmManager *)v17 addHandler:v25 forEvent:5];
    v18 = self->_alarmManager;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __30__SOClockAlarmObserver__setUp__block_invoke_7;
    v23[3] = &unk_279C3D348;
    objc_copyWeak(&v24, buf);
    [(SOClockAlarmManager *)v18 addHandler:v23 forEvent:7];
    v19 = self->_alarmManager;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __30__SOClockAlarmObserver__setUp__block_invoke_8;
    v21[3] = &unk_279C3D348;
    objc_copyWeak(&v22, buf);
    [(SOClockAlarmManager *)v19 addHandler:v21 forEvent:8];
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

void __30__SOClockAlarmObserver__setUp__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained alarmsAdded:v3];
}

void __30__SOClockAlarmObserver__setUp__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained alarmsUpdated:v3];
}

void __30__SOClockAlarmObserver__setUp__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained alarmsRemoved:v3];
}

void __30__SOClockAlarmObserver__setUp__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained alarmFired:v3];
}

void __30__SOClockAlarmObserver__setUp__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained firingAlarmChanged:v3];
}

void __30__SOClockAlarmObserver__setUp__block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained firingAlarmDismissed:v3];
}

void __30__SOClockAlarmObserver__setUp__block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained stateReset:v3];
}

void __30__SOClockAlarmObserver__setUp__block_invoke_8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained alarmsChanged:v3];
}

- (id)_alarmSnapshot
{
  alarmSnapshot = self->_alarmSnapshot;
  if (!alarmSnapshot)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __38__SOClockAlarmObserver__alarmSnapshot__block_invoke;
    v7[3] = &unk_279C3CEC0;
    v7[4] = self;
    v4 = [MEMORY[0x277CEF1F0] newWithBuilder:v7];
    v5 = self->_alarmSnapshot;
    self->_alarmSnapshot = v4;

    alarmSnapshot = self->_alarmSnapshot;
  }

  return alarmSnapshot;
}

void __38__SOClockAlarmObserver__alarmSnapshot__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 64);
  v6 = a2;
  [v6 setGeneration:{objc_msgSend(v3, "generation")}];
  v4 = [*(*(a1 + 32) + 64) date];
  [v6 setDate:v4];

  v5 = [*(*(a1 + 32) + 64) itemsByID];
  [v6 setAlarmsByID:v5];

  [v6 setNotifiedFiringAlarmIDs:*(*(a1 + 32) + 72)];
}

- (void)_endGroup
{
  p_alarmSnapshotGroup = &self->_alarmSnapshotGroup;
  alarmSnapshotGroup = self->_alarmSnapshotGroup;
  self->_alarmSnapshotGroupDepth = p_alarmSnapshotGroup[1] - 1;
  dispatch_group_leave(alarmSnapshotGroup);
  if (!self->_alarmSnapshotGroupDepth)
  {
    v5 = self->_alarmSnapshotGroup;
    self->_alarmSnapshotGroup = 0;
  }
}

- (void)_beginGroup
{
  alarmSnapshotGroup = self->_alarmSnapshotGroup;
  if (!alarmSnapshotGroup)
  {
    v4 = dispatch_group_create();
    v5 = self->_alarmSnapshotGroup;
    self->_alarmSnapshotGroup = v4;

    alarmSnapshotGroup = self->_alarmSnapshotGroup;
  }

  dispatch_group_enter(alarmSnapshotGroup);
  ++self->_alarmSnapshotGroupDepth;
}

- (void)alarmsChanged:(id)changed
{
  changedCopy = changed;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__SOClockAlarmObserver_alarmsChanged___block_invoke;
  v7[3] = &unk_279C3D598;
  v7[4] = self;
  v8 = changedCopy;
  v6 = changedCopy;
  dispatch_async(queue, v7);
}

void __38__SOClockAlarmObserver_alarmsChanged___block_invoke(uint64_t a1)
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
      v14 = "[SOClockAlarmObserver alarmsChanged:]_block_invoke";
      v15 = 2112;
      v16 = v4;
      _os_log_impl(&dword_26858F000, v3, OS_LOG_TYPE_INFO, "%s alarms = %@", buf, 0x16u);
    }

    v5 = [MEMORY[0x277CCAD78] UUID];
    objc_storeStrong(v2 + 10, v5);
    objc_initWeak(buf, v2);
    v6 = dispatch_time(0, 250000000);
    v7 = *(*(a1 + 32) + 8);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __38__SOClockAlarmObserver_alarmsChanged___block_invoke_14;
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

void __38__SOClockAlarmObserver_alarmsChanged___block_invoke_14(uint64_t a1)
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
        v5[2] = __38__SOClockAlarmObserver_alarmsChanged___block_invoke_2;
        v5[3] = &unk_279C3D258;
        v5[4] = v3;
        [v3 _fetchAlarmsForReason:@"batched changes" completion:v5];
      }
    }
  }
}

uint64_t __38__SOClockAlarmObserver_alarmsChanged___block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[SOClockAlarmObserver alarmsChanged:]_block_invoke_2";
    _os_log_impl(&dword_26858F000, v2, OS_LOG_TYPE_INFO, "%s Alarm fetch complete for batched changes", &v5, 0xCu);
  }

  result = [*(a1 + 32) _endGroup];
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)stateReset:(id)reset
{
  v13 = *MEMORY[0x277D85DE8];
  resetCopy = reset;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v10 = "[SOClockAlarmObserver stateReset:]";
    v11 = 2112;
    v12 = resetCopy;
    _os_log_impl(&dword_26858F000, v5, OS_LOG_TYPE_INFO, "%s alarms = %@", buf, 0x16u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__SOClockAlarmObserver_stateReset___block_invoke;
  block[3] = &unk_279C3D280;
  block[4] = self;
  dispatch_async(queue, block);

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t __35__SOClockAlarmObserver_stateReset___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _reset];
  [*(a1 + 32) _beginGroup];
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __35__SOClockAlarmObserver_stateReset___block_invoke_2;
  v4[3] = &unk_279C3D258;
  v4[4] = v2;
  return [v2 _fetchAlarmsForReason:@"state reset" completion:v4];
}

uint64_t __35__SOClockAlarmObserver_stateReset___block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[SOClockAlarmObserver stateReset:]_block_invoke_2";
    _os_log_impl(&dword_26858F000, v2, OS_LOG_TYPE_INFO, "%s Alarm fetch complete for state reset", &v5, 0xCu);
  }

  result = [*(a1 + 32) _endGroup];
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)firingAlarmDismissed:(id)dismissed
{
  v15 = *MEMORY[0x277D85DE8];
  dismissedCopy = dismissed;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v12 = "[SOClockAlarmObserver firingAlarmDismissed:]";
    v13 = 2112;
    v14 = dismissedCopy;
    _os_log_impl(&dword_26858F000, v5, OS_LOG_TYPE_INFO, "%s alarms = %@", buf, 0x16u);
  }

  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __45__SOClockAlarmObserver_firingAlarmDismissed___block_invoke;
  v9[3] = &unk_279C3D598;
  v9[4] = self;
  v10 = dismissedCopy;
  v7 = dismissedCopy;
  dispatch_async(queue, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __45__SOClockAlarmObserver_firingAlarmDismissed___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 40);
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;

  v5 = _SOClockAlarmObserverGetAlarmIDsFromAlarms(*(a1 + 40));
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
          v18[2] = __45__SOClockAlarmObserver_firingAlarmDismissed___block_invoke_2;
          v18[3] = &unk_279C3CE98;
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
  [*(a1 + 32) _consolidateNotifiedFiringAlarms];
  v12 = [*(a1 + 32) _alarmSnapshot];
  if (v2 != v12 && ([v2 isEqual:v12] & 1) == 0)
  {
    v13 = *(a1 + 32);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __45__SOClockAlarmObserver_firingAlarmDismissed___block_invoke_3;
    v15[3] = &unk_279C3CE70;
    v15[4] = v13;
    v16 = v2;
    v17 = v12;
    [v13 _enumerateListenersUsingBlock:v15];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)firingAlarmChanged:(id)changed
{
  v15 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v12 = "[SOClockAlarmObserver firingAlarmChanged:]";
    v13 = 2112;
    v14 = changedCopy;
    _os_log_impl(&dword_26858F000, v5, OS_LOG_TYPE_INFO, "%s alarms = %@", buf, 0x16u);
  }

  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __43__SOClockAlarmObserver_firingAlarmChanged___block_invoke;
  v9[3] = &unk_279C3D598;
  v9[4] = self;
  v10 = changedCopy;
  v7 = changedCopy;
  dispatch_async(queue, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)alarmFired:(id)fired
{
  v15 = *MEMORY[0x277D85DE8];
  firedCopy = fired;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v12 = "[SOClockAlarmObserver alarmFired:]";
    v13 = 2112;
    v14 = firedCopy;
    _os_log_impl(&dword_26858F000, v5, OS_LOG_TYPE_INFO, "%s alarms = %@", buf, 0x16u);
  }

  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __35__SOClockAlarmObserver_alarmFired___block_invoke;
  v9[3] = &unk_279C3D598;
  v9[4] = self;
  v10 = firedCopy;
  v7 = firedCopy;
  dispatch_async(queue, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __35__SOClockAlarmObserver_alarmFired___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 40);
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;

  v5 = _SOClockAlarmObserverGetAlarmIDsFromAlarms(*(a1 + 40));
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
          v18[2] = __35__SOClockAlarmObserver_alarmFired___block_invoke_2;
          v18[3] = &unk_279C3CE98;
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
  [*(a1 + 32) _consolidateNotifiedFiringAlarms];
  v12 = [*(a1 + 32) _alarmSnapshot];
  if (v2 != v12 && ([v2 isEqual:v12] & 1) == 0)
  {
    v13 = *(a1 + 32);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __35__SOClockAlarmObserver_alarmFired___block_invoke_3;
    v15[3] = &unk_279C3CE70;
    v15[4] = v13;
    v16 = v2;
    v17 = v12;
    [v13 _enumerateListenersUsingBlock:v15];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)alarmsRemoved:(id)removed
{
  v15 = *MEMORY[0x277D85DE8];
  removedCopy = removed;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v12 = "[SOClockAlarmObserver alarmsRemoved:]";
    v13 = 2112;
    v14 = removedCopy;
    _os_log_impl(&dword_26858F000, v5, OS_LOG_TYPE_INFO, "%s alarms = %@", buf, 0x16u);
  }

  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __38__SOClockAlarmObserver_alarmsRemoved___block_invoke;
  v9[3] = &unk_279C3D598;
  v9[4] = self;
  v10 = removedCopy;
  v7 = removedCopy;
  dispatch_async(queue, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __38__SOClockAlarmObserver_alarmsRemoved___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 40);
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;

  v5 = _SOClockAlarmObserverGetAlarmIDsFromAlarms(*(a1 + 40));
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
          v18[2] = __38__SOClockAlarmObserver_alarmsRemoved___block_invoke_2;
          v18[3] = &unk_279C3CE98;
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
  [*(a1 + 32) _consolidateNotifiedFiringAlarms];
  v12 = [*(a1 + 32) _alarmSnapshot];
  if (v2 != v12 && ([v2 isEqual:v12] & 1) == 0)
  {
    v13 = *(a1 + 32);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __38__SOClockAlarmObserver_alarmsRemoved___block_invoke_3;
    v15[3] = &unk_279C3CE70;
    v15[4] = v13;
    v16 = v2;
    v17 = v12;
    [v13 _enumerateListenersUsingBlock:v15];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)alarmsUpdated:(id)updated
{
  v15 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v12 = "[SOClockAlarmObserver alarmsUpdated:]";
    v13 = 2112;
    v14 = updatedCopy;
    _os_log_impl(&dword_26858F000, v5, OS_LOG_TYPE_INFO, "%s alarms = %@", buf, 0x16u);
  }

  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __38__SOClockAlarmObserver_alarmsUpdated___block_invoke;
  v9[3] = &unk_279C3D598;
  v9[4] = self;
  v10 = updatedCopy;
  v7 = updatedCopy;
  dispatch_async(queue, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)alarmsAdded:(id)added
{
  v15 = *MEMORY[0x277D85DE8];
  addedCopy = added;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v12 = "[SOClockAlarmObserver alarmsAdded:]";
    v13 = 2112;
    v14 = addedCopy;
    _os_log_impl(&dword_26858F000, v5, OS_LOG_TYPE_INFO, "%s alarms = %@", buf, 0x16u);
  }

  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __36__SOClockAlarmObserver_alarmsAdded___block_invoke;
  v9[3] = &unk_279C3D598;
  v9[4] = self;
  v10 = addedCopy;
  v7 = addedCopy;
  dispatch_async(queue, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)clockItemStorageDidUpdate:(id)update insertedItemIDs:(id)ds updatedItemIDs:(id)iDs deletedItemIDs:(id)itemIDs
{
  v26 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  iDsCopy = iDs;
  itemIDsCopy = itemIDs;
  if (self->_alarmStorage == update)
  {
    dispatch_assert_queue_V2(self->_queue);
    v13 = MEMORY[0x277CEF098];
    v14 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v23 = "[SOClockAlarmObserver clockItemStorageDidUpdate:insertedItemIDs:updatedItemIDs:deletedItemIDs:]";
      v24 = 2112;
      v25 = dsCopy;
      _os_log_impl(&dword_26858F000, v14, OS_LOG_TYPE_INFO, "%s insertedItemIDs = %@", buf, 0x16u);
      v14 = *v13;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v23 = "[SOClockAlarmObserver clockItemStorageDidUpdate:insertedItemIDs:updatedItemIDs:deletedItemIDs:]";
      v24 = 2112;
      v25 = iDsCopy;
      _os_log_impl(&dword_26858F000, v14, OS_LOG_TYPE_INFO, "%s  updatedItemIDs = %@", buf, 0x16u);
      v14 = *v13;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v23 = "[SOClockAlarmObserver clockItemStorageDidUpdate:insertedItemIDs:updatedItemIDs:deletedItemIDs:]";
      v24 = 2112;
      v25 = itemIDsCopy;
      _os_log_impl(&dword_26858F000, v14, OS_LOG_TYPE_INFO, "%s  deletedItemIDs = %@", buf, 0x16u);
    }

    v15 = self->_alarmSnapshot;
    alarmSnapshot = self->_alarmSnapshot;
    self->_alarmSnapshot = 0;

    [(SOClockAlarmObserver *)self _consolidateNotifiedFiringAlarms];
    _alarmSnapshot = [(SOClockAlarmObserver *)self _alarmSnapshot];
    if (v15 != _alarmSnapshot && ([(AFClockAlarmSnapshot *)v15 isEqual:_alarmSnapshot]& 1) == 0)
    {
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __96__SOClockAlarmObserver_clockItemStorageDidUpdate_insertedItemIDs_updatedItemIDs_deletedItemIDs___block_invoke;
      v19[3] = &unk_279C3CE70;
      v19[4] = self;
      v20 = v15;
      v21 = _alarmSnapshot;
      [(SOClockAlarmObserver *)self _enumerateListenersUsingBlock:v19];
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)invalidate
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__SOClockAlarmObserver_invalidate__block_invoke;
  block[3] = &unk_279C3D280;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __34__SOClockAlarmObserver_invalidate__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 24) removeAllObjects];
  v2 = *(a1 + 32);

  return [v2 _tearDown];
}

- (void)getFiringAlarmIDsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (completionCopy)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __56__SOClockAlarmObserver_getFiringAlarmIDsWithCompletion___block_invoke;
    v7[3] = &unk_279C3D548;
    v7[4] = self;
    v8 = completionCopy;
    dispatch_async(queue, v7);
  }
}

void __56__SOClockAlarmObserver_getFiringAlarmIDsWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(*(a1 + 32) + 72) copy];
  (*(v1 + 16))(v1, v2);
}

- (void)getAlarmSnapshotWithCompletion:(id)completion
{
  v12 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if (completionCopy)
  {
    v5 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v11 = "[SOClockAlarmObserver getAlarmSnapshotWithCompletion:]";
      _os_log_impl(&dword_26858F000, v5, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
    }

    queue = self->_queue;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __55__SOClockAlarmObserver_getAlarmSnapshotWithCompletion___block_invoke;
    v8[3] = &unk_279C3D548;
    v8[4] = self;
    v9 = completionCopy;
    dispatch_async(queue, v8);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __55__SOClockAlarmObserver_getAlarmSnapshotWithCompletion___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = v2[6];
  if (v3)
  {
    v4 = v2[1];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __55__SOClockAlarmObserver_getAlarmSnapshotWithCompletion___block_invoke_2;
    v8[3] = &unk_279C3D548;
    v8[4] = v2;
    v9 = *(a1 + 40);
    dispatch_group_notify(v3, v4, v8);
  }

  else
  {
    v5 = [v2 _alarmSnapshot];
    v6 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v11 = "[SOClockAlarmObserver getAlarmSnapshotWithCompletion:]_block_invoke";
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&dword_26858F000, v6, OS_LOG_TYPE_INFO, "%s alarmSnapshot = %@", buf, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __55__SOClockAlarmObserver_getAlarmSnapshotWithCompletion___block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _alarmSnapshot];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v5 = 136315394;
    v6 = "[SOClockAlarmObserver getAlarmSnapshotWithCompletion:]_block_invoke_2";
    v7 = 2112;
    v8 = v2;
    _os_log_impl(&dword_26858F000, v3, OS_LOG_TYPE_INFO, "%s Notified, alarmSnapshot = %@", &v5, 0x16u);
  }

  (*(*(a1 + 40) + 16))();

  v4 = *MEMORY[0x277D85DE8];
}

- (void)removeListener:(id)listener
{
  listenerCopy = listener;
  v5 = listenerCopy;
  if (listenerCopy)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __39__SOClockAlarmObserver_removeListener___block_invoke;
    v7[3] = &unk_279C3D598;
    v7[4] = self;
    v8 = listenerCopy;
    dispatch_async(queue, v7);
  }
}

- (void)addListener:(id)listener
{
  listenerCopy = listener;
  v5 = listenerCopy;
  if (listenerCopy)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __36__SOClockAlarmObserver_addListener___block_invoke;
    v7[3] = &unk_279C3D598;
    v7[4] = self;
    v8 = listenerCopy;
    dispatch_async(queue, v7);
  }
}

- (void)dealloc
{
  [(SOClockAlarmObserver *)self _tearDown];
  v3.receiver = self;
  v3.super_class = SOClockAlarmObserver;
  [(SOClockAlarmObserver *)&v3 dealloc];
}

- (SOClockAlarmObserver)initWithInstanceContext:(id)context
{
  v23 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v20.receiver = self;
  v20.super_class = SOClockAlarmObserver;
  v5 = [(SOClockAlarmObserver *)&v20 init];
  if (v5)
  {
    v6 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v22 = "[SOClockAlarmObserver initWithInstanceContext:]";
      _os_log_impl(&dword_26858F000, v6, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
    }

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_attr_make_with_qos_class(v7, QOS_CLASS_USER_INITIATED, 0);

    v9 = dispatch_queue_create("com.apple.assistant.clock-alarm-observer", v8);
    queue = v5->_queue;
    v5->_queue = v9;

    if (contextCopy)
    {
      defaultContext = contextCopy;
    }

    else
    {
      defaultContext = [MEMORY[0x277CEF2C8] defaultContext];
    }

    instanceContext = v5->_instanceContext;
    v5->_instanceContext = defaultContext;

    v13 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:5 capacity:0];
    listeners = v5->_listeners;
    v5->_listeners = v13;

    [(SOClockAlarmObserver *)v5 _beginGroup];
    v15 = v5->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__SOClockAlarmObserver_initWithInstanceContext___block_invoke;
    block[3] = &unk_279C3D280;
    v19 = v5;
    dispatch_async(v15, block);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v5;
}

void __48__SOClockAlarmObserver_initWithInstanceContext___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setUp];
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __48__SOClockAlarmObserver_initWithInstanceContext___block_invoke_2;
  v3[3] = &unk_279C3D258;
  v4 = v2;
  [v4 _fetchAlarmsForReason:@"initial" completion:v3];
}

uint64_t __48__SOClockAlarmObserver_initWithInstanceContext___block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[SOClockAlarmObserver initWithInstanceContext:]_block_invoke_2";
    _os_log_impl(&dword_26858F000, v2, OS_LOG_TYPE_INFO, "%s Initial alarm fetch completed", &v5, 0xCu);
  }

  result = [*(a1 + 32) _endGroup];
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

- (SOClockAlarmObserver)init
{
  currentContext = [MEMORY[0x277CEF2C8] currentContext];
  v4 = [(SOClockAlarmObserver *)self initWithInstanceContext:currentContext];

  return v4;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    +[SOClockAlarmManager warmUp];
  }
}

@end