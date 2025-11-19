@interface HKSPSleepStoreModelCache
- (HKSPSleepStoreModelCache)init;
- (id)_locked_cachedSleepEventRecord;
- (id)_locked_cachedSleepSchedule;
- (id)_locked_cachedSleepSettings;
- (id)cachedSleepEventRecord;
- (id)cachedSleepEventRecordWithMissHandler:(id)a3;
- (id)cachedSleepModeWithMissHandler:(id)a3;
- (id)cachedSleepSchedule;
- (id)cachedSleepScheduleModelWithMissHandler:(id)a3;
- (id)cachedSleepScheduleStateWithMissHandler:(id)a3;
- (id)cachedSleepScheduleWithMissHandler:(id)a3;
- (id)cachedSleepSettings;
- (id)cachedSleepSettingsWithMissHandler:(id)a3;
- (void)_locked_updateCachedSleepEventRecord:(id)a3;
- (void)_locked_updateCachedSleepSchedule:(id)a3;
- (void)_locked_updateCachedSleepSettings:(id)a3;
- (void)_withLock:(id)a3;
- (void)purgeCache;
- (void)purgeCachedSleepEventRecord;
- (void)purgeCachedSleepMode;
- (void)purgeCachedSleepSchedule;
- (void)purgeCachedSleepScheduleState;
- (void)purgeCachedSleepSettings;
- (void)updateCachedSleepEventRecord:(id)a3;
- (void)updateCachedSleepMode:(int64_t)a3;
- (void)updateCachedSleepSchedule:(id)a3;
- (void)updateCachedSleepScheduleModel:(id)a3;
- (void)updateCachedSleepScheduleState:(unint64_t)a3;
- (void)updateCachedSleepSettings:(id)a3;
@end

@implementation HKSPSleepStoreModelCache

- (HKSPSleepStoreModelCache)init
{
  v6.receiver = self;
  v6.super_class = HKSPSleepStoreModelCache;
  v2 = [(HKSPSleepStoreModelCache *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_cacheLock._os_unfair_lock_opaque = 0;
    *&v2->_sleepScheduleNeedsUpdate = 16843009;
    v2->_sleepModeNeedsUpdate = 1;
    v4 = v2;
  }

  return v3;
}

- (void)_withLock:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_cacheLock);
  v4[2](v4);

  os_unfair_lock_unlock(&self->_cacheLock);
}

- (id)cachedSleepSchedule
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__5;
  v9 = __Block_byref_object_dispose__5;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47__HKSPSleepStoreModelCache_cachedSleepSchedule__block_invoke;
  v4[3] = &unk_279C741E0;
  v4[4] = self;
  v4[5] = &v5;
  [(HKSPSleepStoreModelCache *)self _withLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __47__HKSPSleepStoreModelCache_cachedSleepSchedule__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _locked_cachedSleepSchedule];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)_locked_cachedSleepSchedule
{
  if (self->_sleepScheduleNeedsUpdate)
  {
    return 0;
  }

  else
  {
    return self->_sleepSchedule;
  }
}

- (id)cachedSleepScheduleWithMissHandler:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__5;
  v15 = __Block_byref_object_dispose__5;
  v16 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63__HKSPSleepStoreModelCache_cachedSleepScheduleWithMissHandler___block_invoke;
  v10[3] = &unk_279C74BB0;
  v10[4] = self;
  v10[5] = &v11;
  [(HKSPSleepStoreModelCache *)self _withLock:v10];
  v5 = v12[5];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v7 = v4[2](v4);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __63__HKSPSleepStoreModelCache_cachedSleepScheduleWithMissHandler___block_invoke_2;
    v9[3] = &unk_279C75B48;
    v9[4] = self;
    v6 = [v7 addSuccessBlock:v9];
  }

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __63__HKSPSleepStoreModelCache_cachedSleepScheduleWithMissHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 8) & 1) == 0)
  {
    v4 = MEMORY[0x277D2C900];
    v8 = HKSPNullify(*(v2 + 24));
    v5 = [v4 futureWithResult:v8];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }
}

void __63__HKSPSleepStoreModelCache_cachedSleepScheduleWithMissHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = HKSPNilify(a2);
  [v2 updateCachedSleepSchedule:v3];
}

- (void)updateCachedSleepSchedule:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__HKSPSleepStoreModelCache_updateCachedSleepSchedule___block_invoke;
  v6[3] = &unk_279C73B58;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(HKSPSleepStoreModelCache *)self _withLock:v6];
}

- (void)_locked_updateCachedSleepSchedule:(id)a3
{
  v4 = [a3 copy];
  sleepSchedule = self->_sleepSchedule;
  self->_sleepSchedule = v4;

  self->_sleepScheduleNeedsUpdate = 0;
}

- (void)purgeCachedSleepSchedule
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __52__HKSPSleepStoreModelCache_purgeCachedSleepSchedule__block_invoke;
  v2[3] = &unk_279C74258;
  v2[4] = self;
  [(HKSPSleepStoreModelCache *)self _withLock:v2];
}

- (id)cachedSleepSettings
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__5;
  v9 = __Block_byref_object_dispose__5;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47__HKSPSleepStoreModelCache_cachedSleepSettings__block_invoke;
  v4[3] = &unk_279C741E0;
  v4[4] = self;
  v4[5] = &v5;
  [(HKSPSleepStoreModelCache *)self _withLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __47__HKSPSleepStoreModelCache_cachedSleepSettings__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _locked_cachedSleepSettings];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)_locked_cachedSleepSettings
{
  if (self->_sleepSettingsNeedsUpdate)
  {
    return 0;
  }

  else
  {
    return self->_sleepSettings;
  }
}

- (id)cachedSleepSettingsWithMissHandler:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__5;
  v15 = __Block_byref_object_dispose__5;
  v16 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63__HKSPSleepStoreModelCache_cachedSleepSettingsWithMissHandler___block_invoke;
  v10[3] = &unk_279C74BB0;
  v10[4] = self;
  v10[5] = &v11;
  [(HKSPSleepStoreModelCache *)self _withLock:v10];
  v5 = v12[5];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v7 = v4[2](v4);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __63__HKSPSleepStoreModelCache_cachedSleepSettingsWithMissHandler___block_invoke_2;
    v9[3] = &unk_279C75B70;
    v9[4] = self;
    v6 = [v7 addSuccessBlock:v9];
  }

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __63__HKSPSleepStoreModelCache_cachedSleepSettingsWithMissHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 9) & 1) == 0)
  {
    v4 = MEMORY[0x277D2C900];
    v8 = HKSPNullify(*(v2 + 32));
    v5 = [v4 futureWithResult:v8];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }
}

void __63__HKSPSleepStoreModelCache_cachedSleepSettingsWithMissHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = HKSPNilify(a2);
  [v2 updateCachedSleepSettings:v3];
}

- (void)updateCachedSleepSettings:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__HKSPSleepStoreModelCache_updateCachedSleepSettings___block_invoke;
  v6[3] = &unk_279C73B58;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(HKSPSleepStoreModelCache *)self _withLock:v6];
}

- (void)_locked_updateCachedSleepSettings:(id)a3
{
  v4 = [a3 copy];
  sleepSettings = self->_sleepSettings;
  self->_sleepSettings = v4;

  self->_sleepSettingsNeedsUpdate = 0;
}

- (void)purgeCachedSleepSettings
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __52__HKSPSleepStoreModelCache_purgeCachedSleepSettings__block_invoke;
  v2[3] = &unk_279C74258;
  v2[4] = self;
  [(HKSPSleepStoreModelCache *)self _withLock:v2];
}

- (id)cachedSleepEventRecord
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__5;
  v9 = __Block_byref_object_dispose__5;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __50__HKSPSleepStoreModelCache_cachedSleepEventRecord__block_invoke;
  v4[3] = &unk_279C741E0;
  v4[4] = self;
  v4[5] = &v5;
  [(HKSPSleepStoreModelCache *)self _withLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __50__HKSPSleepStoreModelCache_cachedSleepEventRecord__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _locked_cachedSleepEventRecord];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)_locked_cachedSleepEventRecord
{
  if (self->_sleepEventRecordNeedsUpdate)
  {
    return 0;
  }

  else
  {
    return self->_sleepEventRecord;
  }
}

- (id)cachedSleepEventRecordWithMissHandler:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__5;
  v15 = __Block_byref_object_dispose__5;
  v16 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __66__HKSPSleepStoreModelCache_cachedSleepEventRecordWithMissHandler___block_invoke;
  v10[3] = &unk_279C74BB0;
  v10[4] = self;
  v10[5] = &v11;
  [(HKSPSleepStoreModelCache *)self _withLock:v10];
  v5 = v12[5];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v7 = v4[2](v4);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __66__HKSPSleepStoreModelCache_cachedSleepEventRecordWithMissHandler___block_invoke_2;
    v9[3] = &unk_279C75B98;
    v9[4] = self;
    v6 = [v7 addSuccessBlock:v9];
  }

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __66__HKSPSleepStoreModelCache_cachedSleepEventRecordWithMissHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 10) & 1) == 0)
  {
    v4 = MEMORY[0x277D2C900];
    v8 = HKSPNullify(*(v2 + 40));
    v5 = [v4 futureWithResult:v8];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }
}

void __66__HKSPSleepStoreModelCache_cachedSleepEventRecordWithMissHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = HKSPNilify(a2);
  [v2 updateCachedSleepEventRecord:v3];
}

- (void)updateCachedSleepEventRecord:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__HKSPSleepStoreModelCache_updateCachedSleepEventRecord___block_invoke;
  v6[3] = &unk_279C73B58;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(HKSPSleepStoreModelCache *)self _withLock:v6];
}

- (void)_locked_updateCachedSleepEventRecord:(id)a3
{
  v4 = [a3 copy];
  sleepEventRecord = self->_sleepEventRecord;
  self->_sleepEventRecord = v4;

  self->_sleepEventRecordNeedsUpdate = 0;
}

- (void)purgeCachedSleepEventRecord
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __55__HKSPSleepStoreModelCache_purgeCachedSleepEventRecord__block_invoke;
  v2[3] = &unk_279C74258;
  v2[4] = self;
  [(HKSPSleepStoreModelCache *)self _withLock:v2];
}

- (id)cachedSleepScheduleModelWithMissHandler:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__5;
  v15 = __Block_byref_object_dispose__5;
  v16 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __68__HKSPSleepStoreModelCache_cachedSleepScheduleModelWithMissHandler___block_invoke;
  v10[3] = &unk_279C74BB0;
  v10[4] = self;
  v10[5] = &v11;
  [(HKSPSleepStoreModelCache *)self _withLock:v10];
  v5 = v12[5];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v7 = v4[2](v4);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __68__HKSPSleepStoreModelCache_cachedSleepScheduleModelWithMissHandler___block_invoke_2;
    v9[3] = &unk_279C75BC0;
    v9[4] = self;
    v6 = [v7 addSuccessBlock:v9];
  }

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __68__HKSPSleepStoreModelCache_cachedSleepScheduleModelWithMissHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 8) & 1) == 0 && (*(v2 + 9) & 1) == 0 && (*(v2 + 10) & 1) == 0)
  {
    v9 = [HKSPSleepScheduleModel sleepScheduleModelWithSleepSchedule:*(v2 + 24) sleepSettings:*(v2 + 32) sleepEventRecord:*(v2 + 40)];
    v4 = MEMORY[0x277D2C900];
    v5 = HKSPNullify(v9);
    v6 = [v4 futureWithResult:v5];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }
}

void __68__HKSPSleepStoreModelCache_cachedSleepScheduleModelWithMissHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = HKSPNilify(a2);
  [v2 updateCachedSleepScheduleModel:v3];
}

- (void)updateCachedSleepScheduleModel:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__HKSPSleepStoreModelCache_updateCachedSleepScheduleModel___block_invoke;
  v6[3] = &unk_279C73B58;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(HKSPSleepStoreModelCache *)self _withLock:v6];
}

void __59__HKSPSleepStoreModelCache_updateCachedSleepScheduleModel___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) sleepSchedule];
  [v2 _locked_updateCachedSleepSchedule:v3];

  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) sleepSettings];
  [v4 _locked_updateCachedSleepSettings:v5];

  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) sleepEventRecord];
  [v6 _locked_updateCachedSleepEventRecord:v7];
}

- (id)cachedSleepModeWithMissHandler:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__5;
  v15 = __Block_byref_object_dispose__5;
  v16 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __59__HKSPSleepStoreModelCache_cachedSleepModeWithMissHandler___block_invoke;
  v10[3] = &unk_279C74BB0;
  v10[4] = self;
  v10[5] = &v11;
  [(HKSPSleepStoreModelCache *)self _withLock:v10];
  v5 = v12[5];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v7 = v4[2](v4);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __59__HKSPSleepStoreModelCache_cachedSleepModeWithMissHandler___block_invoke_2;
    v9[3] = &unk_279C73FF0;
    v9[4] = self;
    v6 = [v7 addSuccessBlock:v9];
  }

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __59__HKSPSleepStoreModelCache_cachedSleepModeWithMissHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 12) & 1) == 0)
  {
    v4 = MEMORY[0x277D2C900];
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:*(v2 + 56)];
    v5 = HKSPNullify(v9);
    v6 = [v4 futureWithResult:v5];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }
}

void __59__HKSPSleepStoreModelCache_cachedSleepModeWithMissHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = HKSPNilify(a2);
  [v2 updateCachedSleepMode:{objc_msgSend(v3, "integerValue")}];
}

- (void)updateCachedSleepMode:(int64_t)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __50__HKSPSleepStoreModelCache_updateCachedSleepMode___block_invoke;
  v3[3] = &unk_279C740B8;
  v3[4] = self;
  v3[5] = a3;
  [(HKSPSleepStoreModelCache *)self _withLock:v3];
}

uint64_t __50__HKSPSleepStoreModelCache_updateCachedSleepMode___block_invoke(uint64_t result)
{
  *(*(result + 32) + 56) = *(result + 40);
  *(*(result + 32) + 12) = 0;
  return result;
}

- (void)purgeCachedSleepMode
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __48__HKSPSleepStoreModelCache_purgeCachedSleepMode__block_invoke;
  v2[3] = &unk_279C74258;
  v2[4] = self;
  [(HKSPSleepStoreModelCache *)self _withLock:v2];
}

- (id)cachedSleepScheduleStateWithMissHandler:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__5;
  v15 = __Block_byref_object_dispose__5;
  v16 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __68__HKSPSleepStoreModelCache_cachedSleepScheduleStateWithMissHandler___block_invoke;
  v10[3] = &unk_279C74BB0;
  v10[4] = self;
  v10[5] = &v11;
  [(HKSPSleepStoreModelCache *)self _withLock:v10];
  v5 = v12[5];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v7 = v4[2](v4);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __68__HKSPSleepStoreModelCache_cachedSleepScheduleStateWithMissHandler___block_invoke_2;
    v9[3] = &unk_279C73FF0;
    v9[4] = self;
    v6 = [v7 addSuccessBlock:v9];
  }

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __68__HKSPSleepStoreModelCache_cachedSleepScheduleStateWithMissHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 11) & 1) == 0)
  {
    v4 = MEMORY[0x277D2C900];
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(v2 + 48)];
    v5 = HKSPNullify(v9);
    v6 = [v4 futureWithResult:v5];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }
}

void __68__HKSPSleepStoreModelCache_cachedSleepScheduleStateWithMissHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = HKSPNilify(a2);
  [v2 updateCachedSleepScheduleState:{objc_msgSend(v3, "integerValue")}];
}

- (void)updateCachedSleepScheduleState:(unint64_t)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __59__HKSPSleepStoreModelCache_updateCachedSleepScheduleState___block_invoke;
  v3[3] = &unk_279C740B8;
  v3[4] = self;
  v3[5] = a3;
  [(HKSPSleepStoreModelCache *)self _withLock:v3];
}

uint64_t __59__HKSPSleepStoreModelCache_updateCachedSleepScheduleState___block_invoke(uint64_t result)
{
  *(*(result + 32) + 48) = *(result + 40);
  *(*(result + 32) + 11) = 0;
  return result;
}

- (void)purgeCachedSleepScheduleState
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __57__HKSPSleepStoreModelCache_purgeCachedSleepScheduleState__block_invoke;
  v2[3] = &unk_279C74258;
  v2[4] = self;
  [(HKSPSleepStoreModelCache *)self _withLock:v2];
}

- (void)purgeCache
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __38__HKSPSleepStoreModelCache_purgeCache__block_invoke;
  v2[3] = &unk_279C74258;
  v2[4] = self;
  [(HKSPSleepStoreModelCache *)self _withLock:v2];
}

uint64_t __38__HKSPSleepStoreModelCache_purgeCache__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _locked_purgeCachedSleepSchedule];
  [*(a1 + 32) _locked_purgeCachedSleepSettings];
  [*(a1 + 32) _locked_purgeCachedSleepEventRecord];
  [*(a1 + 32) _locked_purgeCachedSleepMode];
  v2 = *(a1 + 32);

  return [v2 _locked_purgeCachedSleepScheduleState];
}

@end