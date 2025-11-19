@interface HKSPSyncAnchorContainer
+ (id)allKeys;
+ (id)descriptionForKey:(id)a3;
- (HKSPSyncAnchorContainer)initWithCoder:(id)a3;
- (HKSPSyncAnchorContainer)initWithIdentifier:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)incrementSyncAnchorForKey:(id)a3;
- (id)lock_incrementSyncAnchorForKey:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (id)syncAnchorForKey:(id)a3;
- (void)_withLock:(id)a3;
- (void)compareWithContainer:(id)a3 sleepScheduleSyncAnchorOutOfDate:(id)a4 sleepSettingsSyncAnchorOutOfDate:(id)a5 sleepEventRecordSyncAnchorOutOfDate:(id)a6 sleepScheduleStateSyncAnchorOutOfDate:(id)a7 sleepModeSyncAnchorOutOfDate:(id)a8 sleepEventSyncAnchorOutOfDate:(id)a9;
- (void)encodeWithCoder:(id)a3;
- (void)forceSetSleepScheduleSyncAnchor:(id)a3;
- (void)lock_setSyncAnchor:(id)a3 forKey:(id)a4;
- (void)lock_updateSyncAnchor:(id)a3 forKey:(id)a4;
- (void)updateSyncAnchor:(id)a3 forKey:(id)a4;
- (void)updateWithContainer:(id)a3;
@end

@implementation HKSPSyncAnchorContainer

+ (id)allKeys
{
  v5[6] = *MEMORY[0x277D85DE8];
  v5[0] = @"SleepScheduleSyncAnchor";
  v5[1] = @"SleepSettingsSyncAnchor";
  v5[2] = @"SleepRecordSyncAnchor";
  v5[3] = @"SleepStateSyncAnchor";
  v5[4] = @"SleepModeSyncAnchor";
  v5[5] = @"SleepEventSyncAnchor";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:6];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (HKSPSyncAnchorContainer)initWithIdentifier:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = HKSPSyncAnchorContainer;
  v6 = [(HKSPSyncAnchorContainer *)&v12 init];
  v7 = v6;
  if (v6)
  {
    v6->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v6->_identifier, a3);
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    backingDictionary = v7->_backingDictionary;
    v7->_backingDictionary = v8;

    v10 = v7;
  }

  return v7;
}

- (void)_withLock:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v4[2](v4);

  os_unfair_lock_unlock(&self->_lock);
}

- (id)syncAnchorForKey:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__6;
  v15 = __Block_byref_object_dispose__6;
  v16 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __44__HKSPSyncAnchorContainer_syncAnchorForKey___block_invoke;
  v8[3] = &unk_279C74230;
  v10 = &v11;
  v8[4] = self;
  v5 = v4;
  v9 = v5;
  [(HKSPSyncAnchorContainer *)self _withLock:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

uint64_t __44__HKSPSyncAnchorContainer_syncAnchorForKey___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) lock_syncAnchorForKey:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)updateSyncAnchor:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __51__HKSPSyncAnchorContainer_updateSyncAnchor_forKey___block_invoke;
  v10[3] = &unk_279C75CC0;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(HKSPSyncAnchorContainer *)self _withLock:v10];
}

- (void)lock_updateSyncAnchor:(id)a3 forKey:(id)a4
{
  v9 = a3;
  v6 = a4;
  if (v9)
  {
    v7 = [(HKSPSyncAnchorContainer *)self lock_syncAnchorForKey:v6];
    v8 = v7;
    if (!v7 || [v7 compare:v9] == -1)
    {
      [(HKSPSyncAnchorContainer *)self lock_setSyncAnchor:v9 forKey:v6];
    }
  }
}

- (void)lock_setSyncAnchor:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = [a3 copyWithZone:0];
  [(NSMutableDictionary *)self->_backingDictionary setObject:v7 forKeyedSubscript:v6];
}

- (id)incrementSyncAnchorForKey:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__6;
  v15 = __Block_byref_object_dispose__6;
  v16 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__HKSPSyncAnchorContainer_incrementSyncAnchorForKey___block_invoke;
  v8[3] = &unk_279C74230;
  v10 = &v11;
  v8[4] = self;
  v5 = v4;
  v9 = v5;
  [(HKSPSyncAnchorContainer *)self _withLock:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

uint64_t __53__HKSPSyncAnchorContainer_incrementSyncAnchorForKey___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) lock_incrementSyncAnchorForKey:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)lock_incrementSyncAnchorForKey:(id)a3
{
  v4 = a3;
  v5 = [(HKSPSyncAnchorContainer *)self lock_getSyncAnchorForKey:v4];
  v6 = [v5 hksp_increment];
  [(HKSPSyncAnchorContainer *)self lock_setSyncAnchor:v6 forKey:v4];

  return v6;
}

+ (id)descriptionForKey:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"SleepScheduleSyncAnchor"])
  {
    v4 = @"schedule";
  }

  else if ([v3 isEqualToString:@"SleepSettingsSyncAnchor"])
  {
    v4 = @"settings";
  }

  else if ([v3 isEqualToString:@"SleepRecordSyncAnchor"])
  {
    v4 = @"record";
  }

  else if ([v3 isEqualToString:@"SleepStateSyncAnchor"])
  {
    v4 = @"state";
  }

  else if ([v3 isEqualToString:@"SleepModeSyncAnchor"])
  {
    v4 = @"mode";
  }

  else if ([v3 isEqualToString:@"SleepEventSyncAnchor"])
  {
    v4 = @"event";
  }

  else
  {
    v4 = &stru_287A719F0;
  }

  return v4;
}

- (void)updateWithContainer:(id)a3
{
  v4 = [a3 copy];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__HKSPSyncAnchorContainer_updateWithContainer___block_invoke;
  v6[3] = &unk_279C73B58;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(HKSPSyncAnchorContainer *)self _withLock:v6];
}

void __47__HKSPSyncAnchorContainer_updateWithContainer___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() allKeys];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = *(a1 + 32);
        v10 = [*(a1 + 40) syncAnchorForKey:v8];
        [v9 lock_updateSyncAnchor:v10 forKey:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)compareWithContainer:(id)a3 sleepScheduleSyncAnchorOutOfDate:(id)a4 sleepSettingsSyncAnchorOutOfDate:(id)a5 sleepEventRecordSyncAnchorOutOfDate:(id)a6 sleepScheduleStateSyncAnchorOutOfDate:(id)a7 sleepModeSyncAnchorOutOfDate:(id)a8 sleepEventSyncAnchorOutOfDate:(id)a9
{
  v39[6] = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a9;
  v16 = a8;
  v17 = a7;
  v18 = a6;
  v19 = a5;
  v20 = a4;
  v21 = [v14 copy];
  v38[0] = @"SleepScheduleSyncAnchor";
  v22 = MEMORY[0x26D64AA30](v20);

  v39[0] = v22;
  v38[1] = @"SleepSettingsSyncAnchor";
  v23 = MEMORY[0x26D64AA30](v19);

  v39[1] = v23;
  v38[2] = @"SleepRecordSyncAnchor";
  v24 = MEMORY[0x26D64AA30](v18);

  v39[2] = v24;
  v38[3] = @"SleepModeSyncAnchor";
  v25 = MEMORY[0x26D64AA30](v16);

  v39[3] = v25;
  v38[4] = @"SleepStateSyncAnchor";
  v26 = MEMORY[0x26D64AA30](v17);

  v39[4] = v26;
  v38[5] = @"SleepEventSyncAnchor";
  v27 = MEMORY[0x26D64AA30](v15);

  v39[5] = v27;
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:6];

  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __247__HKSPSyncAnchorContainer_compareWithContainer_sleepScheduleSyncAnchorOutOfDate_sleepSettingsSyncAnchorOutOfDate_sleepEventRecordSyncAnchorOutOfDate_sleepScheduleStateSyncAnchorOutOfDate_sleepModeSyncAnchorOutOfDate_sleepEventSyncAnchorOutOfDate___block_invoke;
  v34[3] = &unk_279C75CE8;
  v34[4] = self;
  v35 = v21;
  v36 = v14;
  v37 = v28;
  v29 = v28;
  v30 = v14;
  v31 = v21;
  [(HKSPSyncAnchorContainer *)self _withLock:v34];

  v32 = *MEMORY[0x277D85DE8];
}

void __247__HKSPSyncAnchorContainer_compareWithContainer_sleepScheduleSyncAnchorOutOfDate_sleepSettingsSyncAnchorOutOfDate_sleepEventRecordSyncAnchorOutOfDate_sleepScheduleStateSyncAnchorOutOfDate_sleepModeSyncAnchorOutOfDate_sleepEventSyncAnchorOutOfDate___block_invoke(id *a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v2 = a1[4];
  obj = [objc_opt_class() allKeys];
  v3 = [obj countByEnumeratingWithState:&v22 objects:v36 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v23;
    *&v4 = 138544386;
    v19 = v4;
    do
    {
      v7 = 0;
      v20 = v5;
      do
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v22 + 1) + 8 * v7);
        v9 = [a1[5] syncAnchorForKey:{v8, v19}];
        v10 = [a1[4] lock_syncAnchorForKey:v8];
        if (!v9 || [v9 compare:v10] == -1)
        {
          v11 = HKSPLogForCategory(0xAuLL);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v12 = [a1[4] succinctDescription];
            v13 = [a1[6] succinctDescription];
            v14 = a1[4];
            [objc_opt_class() descriptionForKey:v8];
            v16 = v15 = v6;
            *buf = v19;
            v27 = v12;
            v28 = 2114;
            v29 = v13;
            v30 = 2114;
            v31 = v16;
            v32 = 2114;
            v33 = v9;
            v34 = 2114;
            v35 = v10;
            _os_log_impl(&dword_269A84000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ container %{public}@ has out of date %{public}@ sync anchor (%{public}@ vs %{public}@)", buf, 0x34u);

            v6 = v15;
            v5 = v20;
          }

          v17 = [a1[7] objectForKeyedSubscript:v8];
          (v17)[2](v17, v10);
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v22 objects:v36 count:16];
    }

    while (v5);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)forceSetSleepScheduleSyncAnchor:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__HKSPSyncAnchorContainer_forceSetSleepScheduleSyncAnchor___block_invoke;
  v6[3] = &unk_279C73B58;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [(HKSPSyncAnchorContainer *)self _withLock:v6];
}

uint64_t __59__HKSPSyncAnchorContainer_forceSetSleepScheduleSyncAnchor___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  if (v2)
  {
    return [v1 lock_setSyncAnchor:v2 forKey:@"SleepScheduleSyncAnchor"];
  }

  else
  {
    return [v1 lock_removeSyncAnchorForKey:@"SleepScheduleSyncAnchor"];
  }
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __43__HKSPSyncAnchorContainer_encodeWithCoder___block_invoke;
  v6[3] = &unk_279C73B58;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [(HKSPSyncAnchorContainer *)self _withLock:v6];
}

void __43__HKSPSyncAnchorContainer_encodeWithCoder___block_invoke(uint64_t a1)
{
  [*(a1 + 32) encodeObject:*(*(a1 + 40) + 16) forKey:@"identifier"];
  v2 = *(a1 + 32);
  v3 = [*(*(a1 + 40) + 24) copy];
  [v2 encodeObject:v3 forKey:@"dictionary"];
}

- (HKSPSyncAnchorContainer)initWithCoder:(id)a3
{
  v18[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v17.receiver = self;
  v17.super_class = HKSPSyncAnchorContainer;
  v5 = [(HKSPSyncAnchorContainer *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = MEMORY[0x277CBEB98];
    v18[0] = objc_opt_class();
    v18[1] = objc_opt_class();
    v18[2] = HKSPSyncAnchorClass();
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:3];
    v10 = [v8 setWithArray:v9];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"dictionary"];
    v12 = [v11 mutableCopy];
    backingDictionary = v5->_backingDictionary;
    v5->_backingDictionary = v12;

    v14 = v5;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __40__HKSPSyncAnchorContainer_copyWithZone___block_invoke;
  v8[3] = &unk_279C73B58;
  v5 = v4;
  v9 = v5;
  v10 = self;
  [(HKSPSyncAnchorContainer *)self _withLock:v8];
  v6 = v5;

  return v6;
}

uint64_t __40__HKSPSyncAnchorContainer_copyWithZone___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 40) + 16) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;

  v5 = [*(*(a1 + 40) + 24) mutableCopy];
  v6 = *(a1 + 32);
  v7 = *(v6 + 24);
  *(v6 + 24) = v5;

  return MEMORY[0x2821F96F8]();
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(HKSPSyncAnchorContainer *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v5 = [(HKSPSyncAnchorContainer *)self identifier];
  v6 = [v4 appendObject:v5 withName:@"id" skipIfNil:1];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __65__HKSPSyncAnchorContainer_descriptionBuilderWithMultilinePrefix___block_invoke;
  v11[3] = &unk_279C73B58;
  v11[4] = self;
  v7 = v4;
  v12 = v7;
  [(HKSPSyncAnchorContainer *)self _withLock:v11];
  v8 = v12;
  v9 = v7;

  return v7;
}

void __65__HKSPSyncAnchorContainer_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() allKeys];
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = *(a1 + 40);
        v10 = [*(a1 + 32) lock_syncAnchorForKey:v8];
        v11 = *(a1 + 32);
        v12 = [objc_opt_class() descriptionForKey:v8];
        v13 = [v9 appendObject:v10 withName:v12];
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)succinctDescription
{
  v2 = [(HKSPSyncAnchorContainer *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [(HKSPSyncAnchorContainer *)self identifier];
  v5 = [v3 appendObject:v4 withName:@"id"];

  return v3;
}

@end