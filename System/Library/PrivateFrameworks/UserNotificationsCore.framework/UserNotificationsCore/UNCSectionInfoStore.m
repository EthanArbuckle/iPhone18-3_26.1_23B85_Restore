@interface UNCSectionInfoStore
- (UNCSectionInfoStore)initWithEffectiveSettings:(id)a3 persistence:(id)a4;
- (id)_queue_effectiveSectionInfoForSectionInfo:(id)a3;
- (id)_queue_sectionInfoForSectionID:(id)a3 effective:(BOOL)a4;
- (id)activeSectionIDs;
- (id)allSortedActiveSections:(BOOL)a3;
- (id)allSortedSectionInfo:(BOOL)a3;
- (id)allUnsortedSectionInfoIDs;
- (id)clearedInfoForSectionID:(id)a3;
- (id)clearedSectionsByID;
- (id)effectiveSectionInfoForSectionInfo:(id)a3;
- (id)sectionInfoByID;
- (id)sectionInfoForSectionID:(id)a3 effective:(BOOL)a4;
- (id)sectionInfosByIDForSectionIDs:(id)a3 effective:(BOOL)a4;
- (id)sortedSectionIDs;
- (id)sortedSectionInfoForSectionIDs:(id)a3 effective:(BOOL)a4;
- (void)_queue_removeSectionWithID:(id)a3;
- (void)_queue_sortSectionIDs:(id)a3 usingGuideArray:(id)a4;
- (void)addActiveSectionID:(id)a3;
- (void)removeSectionWithID:(id)a3;
- (void)setClearedInfo:(id)a3 forSectionID:(id)a4;
- (void)setClearedSectionsByID:(id)a3;
- (void)setSectionInfo:(id)a3 forSectionID:(id)a4;
- (void)setSectionInfoByID:(id)a3;
@end

@implementation UNCSectionInfoStore

- (UNCSectionInfoStore)initWithEffectiveSettings:(id)a3 persistence:(id)a4
{
  v7 = a3;
  v8 = a4;
  v30.receiver = self;
  v30.super_class = UNCSectionInfoStore;
  v9 = [(UNCSectionInfoStore *)&v30 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_settings, a3);
    objc_storeStrong(&v10->_persistence, a4);
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("com.apple.usernotificationserver.SectionInfoStore", v11);
    queue = v10->_queue;
    v10->_queue = v12;

    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_create("com.apple.usernotificationserver.SectionInfoStore.gateway", v14);
    gatewayQueue = v10->_gatewayQueue;
    v10->_gatewayQueue = v15;

    v17 = [[UNCBulletinServerConnection alloc] initWithQueue:v10->_gatewayQueue];
    bbServerConnection = v10->_bbServerConnection;
    v10->_bbServerConnection = v17;

    v19 = v10->_gatewayQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__UNCSectionInfoStore_initWithEffectiveSettings_persistence___block_invoke;
    block[3] = &unk_1E85D6F70;
    v20 = v10;
    v29 = v20;
    dispatch_async(v19, block);
    v21 = [(UNCNotificationSettingsPersistentStore *)v10->_persistence readSectionInfo];
    v22 = [v21 mutableCopy];
    queue_sectionInfoByID = v20->_queue_sectionInfoByID;
    v20->_queue_sectionInfoByID = v22;

    v24 = [(UNCNotificationSettingsPersistentStore *)v10->_persistence readClearedSections];
    v25 = [v24 mutableCopy];
    queue_clearedSectionsByID = v20->_queue_clearedSectionsByID;
    v20->_queue_clearedSectionsByID = v25;
  }

  return v10;
}

void __61__UNCSectionInfoStore_initWithEffectiveSettings_persistence___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 64) activeSectionIDs];
  v3 = [v2 mutableCopy];

  v4 = *(a1 + 32);
  v5 = v4[1];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __61__UNCSectionInfoStore_initWithEffectiveSettings_persistence___block_invoke_2;
  v15 = &unk_1E85D6E70;
  v16 = v4;
  v6 = v3;
  v17 = v6;
  dispatch_async(v5, &v12);
  v7 = *MEMORY[0x1E6983388];
  if (os_log_type_enabled(*MEMORY[0x1E6983388], OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(*(a1 + 32) + 32);
    v9 = v7;
    v10 = [v8 count];
    *buf = 134217984;
    v19 = v10;
    _os_log_impl(&dword_1DA7A9000, v9, OS_LOG_TYPE_DEFAULT, "Initial fetch of activeSectionIDs count: %lu", buf, 0xCu);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __61__UNCSectionInfoStore_initWithEffectiveSettings_persistence___block_invoke_2(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 32), *(a1 + 40));
  v5 = [*(a1 + 40) allObjects];
  v2 = [v5 mutableCopy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)_queue_sectionInfoForSectionID:(id)a3 effective:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v7 = [(NSMutableDictionary *)self->_queue_sectionInfoByID objectForKey:v6];
  if (v4)
  {
    v8 = [(UNCSectionInfoStore *)self _queue_effectiveSectionInfoForSectionInfo:v7];

    v7 = v8;
  }

  if (v7 && ([v7 sectionID], v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
  {
    v11 = *MEMORY[0x1E69833A0];
    if (os_log_type_enabled(*MEMORY[0x1E69833A0], OS_LOG_TYPE_ERROR))
    {
      [(UNCSectionInfoStore *)v6 _queue_sectionInfoForSectionID:v7 effective:v11];
    }

    [(UNCSectionInfoStore *)self _queue_removeSectionWithID:v6];
    v10 = 0;
  }

  else
  {
    v10 = v7;
  }

  return v10;
}

- (id)sectionInfoForSectionID:(id)a3 effective:(BOOL)a4
{
  v6 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__14;
  v19 = __Block_byref_object_dispose__14;
  v20 = 0;
  queue = self->_queue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __57__UNCSectionInfoStore_sectionInfoForSectionID_effective___block_invoke;
  v11[3] = &unk_1E85D7E68;
  v12 = v6;
  v13 = &v15;
  v11[4] = self;
  v14 = a4;
  v8 = v6;
  dispatch_sync(queue, v11);
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

uint64_t __57__UNCSectionInfoStore_sectionInfoForSectionID_effective___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_sectionInfoForSectionID:*(a1 + 40) effective:*(a1 + 56)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (id)sortedSectionInfoForSectionIDs:(id)a3 effective:(BOOL)a4
{
  v6 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__14;
  v19 = __Block_byref_object_dispose__14;
  v20 = [MEMORY[0x1E695DEC8] array];
  queue = self->_queue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __64__UNCSectionInfoStore_sortedSectionInfoForSectionIDs_effective___block_invoke;
  v11[3] = &unk_1E85D7E68;
  v12 = v6;
  v13 = &v15;
  v11[4] = self;
  v14 = a4;
  v8 = v6;
  dispatch_sync(queue, v11);
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

uint64_t __64__UNCSectionInfoStore_sortedSectionInfoForSectionIDs_effective___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_sortedSectionInfoForSectionIDs:*(a1 + 40) effective:*(a1 + 56)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (id)sectionInfosByIDForSectionIDs:(id)a3 effective:(BOOL)a4
{
  v6 = a3;
  v7 = [MEMORY[0x1E695DF90] dictionary];
  queue = self->_queue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __63__UNCSectionInfoStore_sectionInfosByIDForSectionIDs_effective___block_invoke;
  v14[3] = &unk_1E85D7E90;
  v15 = v6;
  v16 = self;
  v18 = a4;
  v9 = v7;
  v17 = v9;
  v10 = v6;
  dispatch_sync(queue, v14);
  v11 = v17;
  v12 = v9;

  return v9;
}

void __63__UNCSectionInfoStore_sectionInfosByIDForSectionIDs_effective___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        v8 = [*(a1 + 40) _queue_sectionInfoForSectionID:v7 effective:{*(a1 + 56), v10}];
        if (v8)
        {
          [*(a1 + 48) setObject:v8 forKey:v7];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (id)_queue_effectiveSectionInfoForSectionInfo:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if (v4)
  {
    v5 = [v4 factorySectionID];
    if (!v5 || (-[UNCSectionInfoStore _queue_sectionInfoForSectionID:effective:](self, "_queue_sectionInfoForSectionID:effective:", v5, 0), (v6 = objc_claimAutoreleasedReturnValue()) == 0) || (v7 = v6, [v4 effectiveSectionInfoWithFactoryInfo:v6 defaultContentPreviewSetting:-[UNCEffectiveSettings effectiveGlobalContentPreviewSetting](self->_settings globalAnnounceSetting:"effectiveGlobalContentPreviewSetting") globalScheduledDeliverySetting:-[UNCEffectiveSettings effectiveGlobalAnnounceSetting](self->_settings hasPairedVehiclesForCarPlay:"effectiveGlobalAnnounceSetting") hasDestinationForRemoteNotifications:{-[UNCEffectiveSettings effectiveGlobalScheduledDeliverySetting](self->_settings, "effectiveGlobalScheduledDeliverySetting"), -[UNCEffectiveSettings hasPairedVehiclesForCarPlay](self->_settings, "hasPairedVehiclesForCarPlay"), 1}], v8 = objc_claimAutoreleasedReturnValue(), v7, !v8))
    {
      v8 = [v4 effectiveSectionInfoWithDefaultContentPreviewSetting:-[UNCEffectiveSettings effectiveGlobalContentPreviewSetting](self->_settings globalAnnounceSetting:"effectiveGlobalContentPreviewSetting") globalScheduledDeliverySetting:-[UNCEffectiveSettings effectiveGlobalAnnounceSetting](self->_settings hasPairedVehiclesForCarPlay:"effectiveGlobalAnnounceSetting") hasDestinationForRemoteNotifications:{-[UNCEffectiveSettings effectiveGlobalScheduledDeliverySetting](self->_settings, "effectiveGlobalScheduledDeliverySetting"), -[UNCEffectiveSettings hasPairedVehiclesForCarPlay](self->_settings, "hasPairedVehiclesForCarPlay"), 1}];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)effectiveSectionInfoForSectionInfo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__14;
    v16 = __Block_byref_object_dispose__14;
    v17 = 0;
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __58__UNCSectionInfoStore_effectiveSectionInfoForSectionInfo___block_invoke;
    block[3] = &unk_1E85D6F48;
    v11 = &v12;
    block[4] = self;
    v10 = v4;
    dispatch_sync(queue, block);
    v7 = v13[5];

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __58__UNCSectionInfoStore_effectiveSectionInfoForSectionInfo___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_effectiveSectionInfoForSectionInfo:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (void)setSectionInfo:(id)a3 forSectionID:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__UNCSectionInfoStore_setSectionInfo_forSectionID___block_invoke;
  block[3] = &unk_1E85D6F20;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(queue, block);
}

uint64_t __51__UNCSectionInfoStore_setSectionInfo_forSectionID___block_invoke(void *a1)
{
  [*(a1[4] + 24) setObject:a1[5] forKey:a1[6]];
  [*(a1[4] + 72) writeSectionInfo:*(a1[4] + 24)];
  v2 = *(a1[4] + 64);
  v3 = a1[6];

  return [v2 refreshSectionInfoForID:v3];
}

- (void)_queue_removeSectionWithID:(id)a3
{
  queue_sectionInfoByID = self->_queue_sectionInfoByID;
  v5 = a3;
  [(NSMutableDictionary *)queue_sectionInfoByID removeObjectForKey:v5];
  [(NSMutableSet *)self->_queue_activeSectionIDs removeObject:v5];
  [(NSMutableArray *)self->_queue_sortedSectionIDs removeObject:v5];

  [(UNCNotificationSettingsPersistentStore *)self->_persistence writeSectionInfo:self->_queue_sectionInfoByID];
  persistence = self->_persistence;
  queue_clearedSectionsByID = self->_queue_clearedSectionsByID;

  [(UNCNotificationSettingsPersistentStore *)persistence writeClearedSections:queue_clearedSectionsByID];
}

- (void)removeSectionWithID:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__UNCSectionInfoStore_removeSectionWithID___block_invoke;
  v7[3] = &unk_1E85D6E70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (void)addActiveSectionID:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__UNCSectionInfoStore_addActiveSectionID___block_invoke;
  v7[3] = &unk_1E85D6E70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

uint64_t __42__UNCSectionInfoStore_addActiveSectionID___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 32) addObject:*(a1 + 40)];
  result = [*(*(a1 + 32) + 40) containsObject:*(a1 + 40)];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 40);

    return [v4 addObject:v3];
  }

  return result;
}

- (id)activeSectionIDs
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__14;
  v10 = __Block_byref_object_dispose__14;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__UNCSectionInfoStore_activeSectionIDs__block_invoke;
  v5[3] = &unk_1E85D6E48;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)allSortedActiveSections:(BOOL)a3
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__14;
  v12 = __Block_byref_object_dispose__14;
  v13 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__UNCSectionInfoStore_allSortedActiveSections___block_invoke;
  block[3] = &unk_1E85D7EB8;
  block[4] = self;
  block[5] = &v8;
  v7 = a3;
  dispatch_sync(queue, block);
  v4 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v4;
}

uint64_t __47__UNCSectionInfoStore_allSortedActiveSections___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_sortedSectionInfoForSectionIDs:*(*(a1 + 32) + 32) effective:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (id)sortedSectionIDs
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__14;
  v10 = __Block_byref_object_dispose__14;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__UNCSectionInfoStore_sortedSectionIDs__block_invoke;
  v5[3] = &unk_1E85D6E48;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)_queue_sortSectionIDs:(id)a3 usingGuideArray:(id)a4
{
  v67 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v38 = self;
  dispatch_assert_queue_V2(self->_queue);
  if ([v6 count])
  {
    v8 = [v7 count];
    if (v6 != v7)
    {
      if (v8)
      {
        v35 = v7;
        v9 = [MEMORY[0x1E695DFD8] setWithArray:v7];
        v10 = [MEMORY[0x1E695DFD8] setWithArray:v6];
        v39 = [MEMORY[0x1E695DF90] dictionary];
        v44 = [v6 mutableCopy];
        v56 = 0u;
        v57 = 0u;
        v58 = 0u;
        v59 = 0u;
        v34 = v6;
        obj = v6;
        v40 = [obj countByEnumeratingWithState:&v56 objects:v66 count:16];
        if (v40)
        {
          v37 = *v57;
          v11 = MEMORY[0x1E69833A0];
          do
          {
            for (i = 0; i != v40; ++i)
            {
              if (*v57 != v37)
              {
                objc_enumerationMutation(obj);
              }

              v45 = *(*(&v56 + 1) + 8 * i);
              v13 = [UNCSectionInfoStore _queue_sectionInfoForSectionID:v38 effective:"_queue_sectionInfoForSectionID:effective:"];
              v14 = [v13 dataProviderIDs];
              if ([v14 count])
              {
                v42 = v13;
                v43 = i;
                v15 = [MEMORY[0x1E695DF70] array];
                v52 = 0u;
                v53 = 0u;
                v54 = 0u;
                v55 = 0u;
                v41 = v14;
                v16 = v14;
                v17 = [v16 countByEnumeratingWithState:&v52 objects:v65 count:16];
                if (v17)
                {
                  v18 = v17;
                  v19 = *v53;
                  do
                  {
                    for (j = 0; j != v18; ++j)
                    {
                      if (*v53 != v19)
                      {
                        objc_enumerationMutation(v16);
                      }

                      v21 = *(*(&v52 + 1) + 8 * j);
                      if ([v10 containsObject:v21])
                      {
                        if (([v9 containsObject:v21] & 1) == 0)
                        {
                          [v15 addObject:v21];
                        }
                      }

                      else
                      {
                        v22 = *v11;
                        if (os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 138412546;
                          v62 = v21;
                          v63 = 2112;
                          v64 = v45;
                          _os_log_error_impl(&dword_1DA7A9000, v22, OS_LOG_TYPE_ERROR, "UNCSectionInfoStore: unknown subsection %@ (of %@) cannot be sorted.", buf, 0x16u);
                        }
                      }
                    }

                    v18 = [v16 countByEnumeratingWithState:&v52 objects:v65 count:16];
                  }

                  while (v18);
                }

                if ([v15 count])
                {
                  [v39 setObject:v15 forKey:v45];
                  [v44 removeObjectsInArray:v15];
                }

                v13 = v42;
                i = v43;
                v14 = v41;
              }
            }

            v40 = [obj countByEnumeratingWithState:&v56 objects:v66 count:16];
          }

          while (v40);
        }

        v50[0] = MEMORY[0x1E69E9820];
        v50[1] = 3221225472;
        v50[2] = __61__UNCSectionInfoStore__queue_sortSectionIDs_usingGuideArray___block_invoke;
        v50[3] = &unk_1E85D7EE0;
        v51 = v35;
        [v44 sortUsingComparator:v50];
        v23 = v39;
        if ([v39 count])
        {
          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          v24 = [v39 allKeys];
          v25 = [v24 countByEnumeratingWithState:&v46 objects:v60 count:16];
          if (v25)
          {
            v26 = v25;
            v27 = *v47;
            do
            {
              for (k = 0; k != v26; ++k)
              {
                if (*v47 != v27)
                {
                  objc_enumerationMutation(v24);
                }

                v29 = *(*(&v46 + 1) + 8 * k);
                v30 = [v39 objectForKey:v29];
                v31 = [v44 indexOfObject:v29];
                if (v31 != 0x7FFFFFFFFFFFFFFFLL)
                {
                  v32 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{v31 + 1, objc_msgSend(v30, "count")}];
                  [v44 insertObjects:v30 atIndexes:v32];
                }
              }

              v26 = [v24 countByEnumeratingWithState:&v46 objects:v60 count:16];
            }

            while (v26);
          }

          v23 = v39;
        }

        [obj removeAllObjects];
        [obj addObjectsFromArray:v44];

        v6 = v34;
        v7 = v35;
      }
    }
  }

  v33 = *MEMORY[0x1E69E9840];
}

uint64_t __61__UNCSectionInfoStore__queue_sortSectionIDs_usingGuideArray___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ([v5 isEqual:v6])
  {
    v7 = 0;
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = *(a1 + 32);
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v16 + 1) + 8 * i);
          if ([v13 isEqual:{v5, v16}])
          {
            v7 = -1;
            goto LABEL_16;
          }

          if ([v13 isEqual:v6])
          {
            v7 = 1;
            goto LABEL_16;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
        v7 = 0;
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v7 = 0;
    }

LABEL_16:
  }

  v14 = *MEMORY[0x1E69E9840];
  return v7;
}

- (id)allUnsortedSectionInfoIDs
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__14;
  v10 = __Block_byref_object_dispose__14;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__UNCSectionInfoStore_allUnsortedSectionInfoIDs__block_invoke;
  v5[3] = &unk_1E85D6E48;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __48__UNCSectionInfoStore_allUnsortedSectionInfoIDs__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) allKeys];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (id)allSortedSectionInfo:(BOOL)a3
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__14;
  v12 = __Block_byref_object_dispose__14;
  v13 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__UNCSectionInfoStore_allSortedSectionInfo___block_invoke;
  block[3] = &unk_1E85D7F08;
  block[4] = self;
  block[5] = &v8;
  v7 = a3;
  dispatch_sync(queue, block);
  v4 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v4;
}

void __44__UNCSectionInfoStore_allSortedSectionInfo___block_invoke(uint64_t a1)
{
  v5 = [MEMORY[0x1E695DFD8] setWithArray:*(*(a1 + 32) + 40)];
  v2 = [*(a1 + 32) _queue_sortedSectionInfoForSectionIDs:v5 effective:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)sectionInfoByID
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__14;
  v10 = __Block_byref_object_dispose__14;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38__UNCSectionInfoStore_sectionInfoByID__block_invoke;
  v5[3] = &unk_1E85D6E48;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __38__UNCSectionInfoStore_sectionInfoByID__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (void)setSectionInfoByID:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__UNCSectionInfoStore_setSectionInfoByID___block_invoke;
  v7[3] = &unk_1E85D6E70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

uint64_t __42__UNCSectionInfoStore_setSectionInfoByID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) mutableCopy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (id)clearedInfoForSectionID:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__14;
  v16 = __Block_byref_object_dispose__14;
  v17 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__UNCSectionInfoStore_clearedInfoForSectionID___block_invoke;
  block[3] = &unk_1E85D6F48;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __47__UNCSectionInfoStore_clearedInfoForSectionID___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 48) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (id)clearedSectionsByID
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__14;
  v10 = __Block_byref_object_dispose__14;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__UNCSectionInfoStore_clearedSectionsByID__block_invoke;
  v5[3] = &unk_1E85D6E48;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setClearedInfo:(id)a3 forSectionID:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__UNCSectionInfoStore_setClearedInfo_forSectionID___block_invoke;
  block[3] = &unk_1E85D6F20;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(queue, block);
}

uint64_t __51__UNCSectionInfoStore_setClearedInfo_forSectionID___block_invoke(void *a1)
{
  if (a1[4] && ([MEMORY[0x1E695DFB0] null], v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v2, "isEqual:", a1[4]), v2, (v3 & 1) == 0))
  {
    v7 = a1[4];
    v8 = *(a1[5] + 48);
    v9 = a1[6];

    return [v8 setObject:v7 forKey:v9];
  }

  else
  {
    v4 = a1[6];
    v5 = *(a1[5] + 48);

    return [v5 removeObjectForKey:v4];
  }
}

- (void)setClearedSectionsByID:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__UNCSectionInfoStore_setClearedSectionsByID___block_invoke;
  v7[3] = &unk_1E85D6E70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

uint64_t __46__UNCSectionInfoStore_setClearedSectionsByID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) mutableCopy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 48);
  *(v3 + 48) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (void)_queue_sectionInfoForSectionID:(os_log_t)log effective:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_1DA7A9000, log, OS_LOG_TYPE_ERROR, "Produced invalid sectionInfo without ID for %@: %@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

@end