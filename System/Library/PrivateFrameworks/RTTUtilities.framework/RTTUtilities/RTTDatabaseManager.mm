@interface RTTDatabaseManager
+ (id)sharedManager;
- (BOOL)contactIDIsTTYContact:(id)a3;
- (BOOL)contactIsTTYContact:(id)a3;
- (BOOL)contactPathWasUsedForTTY:(id)a3;
- (BOOL)deleteConversationWithCallUID:(id)a3;
- (BOOL)deleteConversationsWithCallUIDs:(id)a3;
- (BOOL)saveConversation:(id)a3;
- (RTTDatabaseManager)init;
- (id)conversationForCallUID:(id)a3;
- (void)_callHistoryDBDidChange:(id)a3;
- (void)callHistoryDBDidChange:(id)a3;
- (void)logMessage:(id)a3;
@end

@implementation RTTDatabaseManager

+ (id)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    +[RTTDatabaseManager sharedManager];
  }

  v3 = sharedManager_Manager;

  return v3;
}

uint64_t __35__RTTDatabaseManager_sharedManager__block_invoke()
{
  sharedManager_Manager = objc_alloc_init(RTTDatabaseManager);

  return MEMORY[0x2821F96F8]();
}

- (RTTDatabaseManager)init
{
  v7.receiver = self;
  v7.super_class = RTTDatabaseManager;
  v2 = [(HCDatabaseManager *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 addObserver:v2 selector:sel_callHistoryDBDidChange_ name:*MEMORY[0x277CF7E10] object:0];

    v4 = objc_alloc_init(MEMORY[0x277CF7D38]);
    callHistoryManager = v2->_callHistoryManager;
    v2->_callHistoryManager = v4;

    [(RTTDatabaseManager *)v2 callHistoryDBDidChange:0];
  }

  return v2;
}

- (void)logMessage:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = AXLogRTT();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_261754000, v4, OS_LOG_TYPE_INFO, "%@", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)callHistoryDBDidChange:(id)a3
{
  v4 = a3;
  v3 = v4;
  AXPerformBlockAsynchronouslyOnMainThread();
}

- (void)_callHistoryDBDidChange:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = AXLogRTT();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v4;
    _os_log_impl(&dword_261754000, v5, OS_LOG_TYPE_INFO, "Call history changed: %@", &buf, 0xCu);
  }

  v6 = objc_autoreleasePoolPush();
  *&buf = 0;
  *(&buf + 1) = &buf;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__2;
  v25 = __Block_byref_object_dispose__2;
  v26 = 0;
  v7 = [(HCDatabaseManager *)self managedObjectContext];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __46__RTTDatabaseManager__callHistoryDBDidChange___block_invoke;
  v19[3] = &unk_279AE80C8;
  v19[4] = self;
  v19[5] = &buf;
  [v7 performBlockAndWait:v19];

  v8 = [MEMORY[0x277CBEB18] array];
  v9 = *(*(&buf + 1) + 40);
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __46__RTTDatabaseManager__callHistoryDBDidChange___block_invoke_2;
  v16 = &unk_279AE80F0;
  v17 = self;
  v10 = v8;
  v18 = v10;
  [v9 enumerateObjectsUsingBlock:&v13];
  v11 = AXLogRTT();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *v20 = 138412290;
    v21 = v10;
    _os_log_impl(&dword_261754000, v11, OS_LOG_TYPE_INFO, "Deleting %@", v20, 0xCu);
  }

  [(RTTDatabaseManager *)self deleteConversationsWithCallUIDs:v10, v13, v14, v15, v16, v17];
  _Block_object_dispose(&buf, 8);

  objc_autoreleasePoolPop(v6);
  v12 = *MEMORY[0x277D85DE8];
}

void __46__RTTDatabaseManager__callHistoryDBDidChange___block_invoke(uint64_t a1)
{
  v6 = [MEMORY[0x277CBE428] fetchRequestWithEntityName:@"TTYContactList"];
  [v6 setReturnsObjectsAsFaults:0];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = [v2 executeFetchRequest:v6 error:0];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __46__RTTDatabaseManager__callHistoryDBDidChange___block_invoke_2(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v5 = MEMORY[0x277CCAC30];
  v6 = [v3 callUID];
  v7 = [v5 predicateWithFormat:@"uniqueId == %@", v6];
  v8 = [v4 recentCallsWithPredicate:v7];

  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__2;
  v26 = __Block_byref_object_dispose__2;
  v27 = 0;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __46__RTTDatabaseManager__callHistoryDBDidChange___block_invoke_3;
  v19[3] = &unk_279AE80C8;
  v21 = &v22;
  v9 = v3;
  v20 = v9;
  [RTTTelephonyUtilities performCallCenterTask:v19];
  v10 = AXLogRTT();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = v23[5];
    *buf = 138412546;
    v29 = v8;
    v30 = 2112;
    v31 = v11;
    _os_log_impl(&dword_261754000, v10, OS_LOG_TYPE_INFO, "Recent calls: %@/TU Call %@", buf, 0x16u);
  }

  v12 = [v23[5] status];
  if (![v8 count])
  {
    v13 = [v9 callUID];
    if ([v13 length])
    {
      v14 = (v12 - 3) >= 0xFFFFFFFE;
    }

    else
    {
      v14 = 1;
    }

    v15 = !v14;

    if (v15)
    {
      v16 = *(a1 + 40);
      v17 = [v9 callUID];
      [v16 addObject:v17];
    }
  }

  _Block_object_dispose(&v22, 8);
  v18 = *MEMORY[0x277D85DE8];
}

void __46__RTTDatabaseManager__callHistoryDBDidChange___block_invoke_3(uint64_t a1)
{
  v6 = +[RTTTelephonyUtilities sharedCallCenter];
  v2 = [*(a1 + 32) callUID];
  v3 = [v6 callWithCallUUID:v2];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)conversationForCallUID:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v32 = 0;
  v33[0] = &v32;
  v33[1] = 0x3032000000;
  v33[2] = __Block_byref_object_copy__2;
  v33[3] = __Block_byref_object_dispose__2;
  v34 = 0;
  v5 = objc_autoreleasePoolPush();
  *v39 = 0;
  *&v39[8] = v39;
  *&v39[16] = 0x3032000000;
  v40 = __Block_byref_object_copy__2;
  v41 = __Block_byref_object_dispose__2;
  v42 = 0;
  v6 = [(HCDatabaseManager *)self managedObjectContext];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __45__RTTDatabaseManager_conversationForCallUID___block_invoke;
  v27[3] = &unk_279AE8118;
  v7 = v4;
  v28 = v7;
  v29 = self;
  v30 = v39;
  v31 = &v32;
  [v6 performBlockAndWait:v27];

  v8 = AXLogRTT();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = *(*&v39[8] + 40);
    v10 = *(v33[0] + 40);
    *buf = 138412546;
    v36 = v9;
    v37 = 2112;
    v38 = v10;
    _os_log_impl(&dword_261754000, v8, OS_LOG_TYPE_INFO, "Conversation for call UID result: %@/%@", buf, 0x16u);
  }

  if (*(v33[0] + 40))
  {
    v11 = AXLogRTT();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [RTTDatabaseManager conversationForCallUID:v33];
    }

LABEL_16:
    v21 = 0;
    goto LABEL_17;
  }

  if ([*(*&v39[8] + 40) count] >= 2)
  {
    v12 = AXLogRTT();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      [RTTDatabaseManager conversationForCallUID:?];
    }
  }

  v11 = [*(*&v39[8] + 40) lastObject];
  v13 = [v11 data];
  if (!v13)
  {
    goto LABEL_16;
  }

  v14 = [v11 version];
  v15 = [v14 isEqualToNumber:&unk_2873FFE48];

  if (!v15)
  {
    goto LABEL_16;
  }

  v16 = objc_alloc(MEMORY[0x277CCAAC8]);
  v17 = [v11 data];
  v18 = (v33[0] + 40);
  obj = *(v33[0] + 40);
  v19 = [v16 initForReadingFromData:v17 error:&obj];
  objc_storeStrong(v18, obj);

  if (*(v33[0] + 40))
  {
    v20 = AXLogRTT();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [RTTDatabaseManager conversationForCallUID:v33];
    }

    v21 = 0;
  }

  else
  {
    v25 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v21 = [v19 decodeObjectOfClasses:v25 forKey:*MEMORY[0x277CCA308]];
  }

LABEL_17:
  _Block_object_dispose(v39, 8);

  objc_autoreleasePoolPop(v5);
  v22 = AXLogRTT();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    *v39 = 138412546;
    *&v39[4] = v7;
    *&v39[12] = 2112;
    *&v39[14] = v21;
    _os_log_impl(&dword_261754000, v22, OS_LOG_TYPE_INFO, "Found conversation for id [%@] - %@", v39, 0x16u);
  }

  _Block_object_dispose(&v32, 8);
  v23 = *MEMORY[0x277D85DE8];

  return v21;
}

void __45__RTTDatabaseManager_conversationForCallUID___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBE428] fetchRequestWithEntityName:@"TTYHistory"];
  v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"callUID = %@", *(a1 + 32)];
  [v2 setPredicate:v3];

  [v2 setReturnsObjectsAsFaults:0];
  v4 = [*(a1 + 40) managedObjectContext];
  v5 = *(*(a1 + 56) + 8);
  obj = *(v5 + 40);
  v6 = [v4 executeFetchRequest:v2 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

- (BOOL)saveConversation:(id)a3
{
  v55 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HCDatabaseManager *)self managedObjectContext];

  if (v5)
  {
    v45 = 0;
    v46 = &v45;
    v47 = 0x3032000000;
    v48 = __Block_byref_object_copy__2;
    v49 = __Block_byref_object_dispose__2;
    v50 = 0;
    v6 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
    [v6 encodeObject:v4 forKey:*MEMORY[0x277CCA308]];
    [v6 finishEncoding];
    v7 = [v6 encodedData];
    if ([v7 length])
    {
      v39 = 0;
      v40 = &v39;
      v41 = 0x3032000000;
      v42 = __Block_byref_object_copy__2;
      v43 = __Block_byref_object_dispose__2;
      v44 = 0;
      v8 = [(HCDatabaseManager *)self managedObjectContext];
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __39__RTTDatabaseManager_saveConversation___block_invoke;
      v34[3] = &unk_279AE8118;
      v9 = v4;
      v35 = v9;
      v36 = self;
      v37 = &v39;
      v38 = &v45;
      [v8 performBlockAndWait:v34];

      v10 = [v40[5] lastObject];
      v11 = v10;
      if (v10 && !v46[5])
      {
        v14 = v10;
      }

      else
      {
        v12 = MEMORY[0x277CBE408];
        v13 = [(HCDatabaseManager *)self managedObjectContext];
        v14 = [v12 insertNewObjectForEntityForName:@"TTYHistory" inManagedObjectContext:v13];

        v15 = [v9 callIdentifier];
        [v14 setCallUID:v15];
      }

      [v14 setVersion:&unk_2873FFE48];
      [v14 setData:v7];
      [v14 setNeedsCloudKitUpload:MEMORY[0x277CBEC38]];

      _Block_object_dispose(&v39, 8);
      v39 = 0;
      v40 = &v39;
      v41 = 0x3032000000;
      v42 = __Block_byref_object_copy__2;
      v43 = __Block_byref_object_dispose__2;
      v44 = 0;
      v17 = [(HCDatabaseManager *)self managedObjectContext];
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __39__RTTDatabaseManager_saveConversation___block_invoke_60;
      v30[3] = &unk_279AE8140;
      v18 = v9;
      v32 = self;
      v33 = &v39;
      v31 = v18;
      [v17 performBlockAndWait:v30];

      v19 = [v40[5] lastObject];
      if (!v19)
      {
        v20 = [v18 otherContactPath];
        v21 = [v20 length] == 0;

        if (!v21)
        {
          v22 = MEMORY[0x277CBE408];
          v23 = [(HCDatabaseManager *)self managedObjectContext];
          v24 = [v22 insertNewObjectForEntityForName:@"TTYContactList" inManagedObjectContext:v23];

          v25 = [v18 callIdentifier];
          [v24 setCallUID:v25];

          v26 = [v18 otherContactPath];
          [v24 setContactID:v26];
        }
      }

      LODWORD(self) = [(HCDatabaseManager *)self saveIfPossible];
      v27 = AXLogRTT();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v52 = self;
        v53 = 2112;
        v54 = v18;
        _os_log_impl(&dword_261754000, v27, OS_LOG_TYPE_INFO, "Saved to database[%d]: %@", buf, 0x12u);
      }

      _Block_object_dispose(&v39, 8);
    }

    else
    {
      self = AXLogRTT();
      if (os_log_type_enabled(&self->super.super, OS_LOG_TYPE_ERROR))
      {
        [RTTDatabaseManager saveConversation:];
      }

      LOBYTE(self) = 0;
    }

    _Block_object_dispose(&v45, 8);
  }

  else
  {
    v16 = AXLogRTT();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [RTTDatabaseManager saveConversation:];
    }

    LOBYTE(self) = 0;
  }

  v28 = *MEMORY[0x277D85DE8];
  return self;
}

void __39__RTTDatabaseManager_saveConversation___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBE428] fetchRequestWithEntityName:@"TTYHistory"];
  v3 = MEMORY[0x277CCAC30];
  v4 = [*(a1 + 32) callIdentifier];
  v5 = [v3 predicateWithFormat:@"callUID = %@", v4];
  [v2 setPredicate:v5];

  [v2 setReturnsObjectsAsFaults:0];
  v6 = [*(a1 + 40) managedObjectContext];
  v7 = *(*(a1 + 56) + 8);
  obj = *(v7 + 40);
  v8 = [v6 executeFetchRequest:v2 error:&obj];
  objc_storeStrong((v7 + 40), obj);
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

void __39__RTTDatabaseManager_saveConversation___block_invoke_60(uint64_t a1)
{
  v9 = [MEMORY[0x277CBE428] fetchRequestWithEntityName:@"TTYContactList"];
  v2 = MEMORY[0x277CCAC30];
  v3 = [*(a1 + 32) callIdentifier];
  v4 = [v2 predicateWithFormat:@"callUID = %@", v3];
  [v9 setPredicate:v4];

  [v9 setReturnsObjectsAsFaults:0];
  v5 = [*(a1 + 40) managedObjectContext];
  v6 = [v5 executeFetchRequest:v9 error:0];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

- (BOOL)deleteConversationsWithCallUIDs:(id)a3
{
  v4 = a3;
  v5 = [(HCDatabaseManager *)self managedObjectContext];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __54__RTTDatabaseManager_deleteConversationsWithCallUIDs___block_invoke;
  v11 = &unk_279AE7760;
  v12 = v4;
  v13 = self;
  v6 = v4;
  [v5 performBlockAndWait:&v8];

  LOBYTE(self) = [(HCDatabaseManager *)self saveIfPossible:v8];
  return self;
}

void __54__RTTDatabaseManager_deleteConversationsWithCallUIDs___block_invoke(uint64_t a1)
{
  v3[0] = 0;
  v3[1] = v3;
  v3[2] = 0x3032000000;
  v3[3] = __Block_byref_object_copy__2;
  v3[4] = __Block_byref_object_dispose__2;
  v4 = 0;
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __54__RTTDatabaseManager_deleteConversationsWithCallUIDs___block_invoke_2;
  v2[3] = &unk_279AE8168;
  v1 = *(a1 + 32);
  v2[4] = *(a1 + 40);
  v2[5] = v3;
  [v1 enumerateObjectsUsingBlock:v2];
  _Block_object_dispose(v3, 8);
}

void __54__RTTDatabaseManager_deleteConversationsWithCallUIDs___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277CBE428] fetchRequestWithEntityName:@"TTYHistory"];
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"callUID = %@", v3];
  [v4 setPredicate:v5];

  [v4 setReturnsObjectsAsFaults:0];
  v6 = [*(a1 + 32) managedObjectContext];
  v7 = *(*(a1 + 40) + 8);
  obj = *(v7 + 40);
  v8 = [v6 executeFetchRequest:v4 error:&obj];
  objc_storeStrong((v7 + 40), obj);

  v9 = [v8 lastObject];
  if (v9)
  {
    v10 = [*(a1 + 32) managedObjectContext];
    [v10 deleteObject:v9];
  }

  v11 = [MEMORY[0x277CBE428] fetchRequestWithEntityName:@"TTYContactList"];

  v12 = [MEMORY[0x277CCAC30] predicateWithFormat:@"callUID = %@", v3];
  [v11 setPredicate:v12];

  [v11 setReturnsObjectsAsFaults:0];
  v13 = [*(a1 + 32) managedObjectContext];
  v14 = *(*(a1 + 40) + 8);
  v18 = *(v14 + 40);
  v15 = [v13 executeFetchRequest:v11 error:&v18];
  objc_storeStrong((v14 + 40), v18);

  v16 = [v15 lastObject];
  if (v16)
  {
    v17 = [*(a1 + 32) managedObjectContext];
    [v17 deleteObject:v16];
  }
}

- (BOOL)deleteConversationWithCallUID:(id)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 length])
  {
    v9[0] = v4;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
    v6 = [(RTTDatabaseManager *)self deleteConversationsWithCallUIDs:v5];
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)contactIDIsTTYContact:(id)a3
{
  v20[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v5 = +[RTTTelephonyUtilities sharedUtilityProvider];
  v6 = [v5 contactStore];
  v7 = MEMORY[0x277CBDA58];
  v20[0] = v4;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  v9 = [v7 predicateForContactsWithIdentifiers:v8];
  v19 = *MEMORY[0x277CBD098];
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
  v11 = [v6 unifiedContactsMatchingPredicate:v9 keysToFetch:v10 error:0];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __44__RTTDatabaseManager_contactIDIsTTYContact___block_invoke;
  v14[3] = &unk_279AE81B8;
  v14[4] = self;
  v14[5] = &v15;
  [v11 enumerateObjectsUsingBlock:v14];

  LOBYTE(v5) = *(v16 + 24);
  _Block_object_dispose(&v15, 8);

  v12 = *MEMORY[0x277D85DE8];
  return v5 & 1;
}

void __44__RTTDatabaseManager_contactIDIsTTYContact___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = [a2 phoneNumbers];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__RTTDatabaseManager_contactIDIsTTYContact___block_invoke_2;
  v7[3] = &unk_279AE8190;
  v8 = *(a1 + 32);
  v9 = a4;
  [v6 enumerateObjectsUsingBlock:v7];
}

void __44__RTTDatabaseManager_contactIDIsTTYContact___block_invoke_2(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a1[4];
  v7 = [a2 value];
  v8 = [v7 stringValue];
  LODWORD(v6) = [v6 contactPathWasUsedForTTY:v8];

  if (v6)
  {
    v9 = a1[6];
    *(*(a1[5] + 8) + 24) = 1;
    *a4 = 1;
    *v9 = 1;
  }
}

- (BOOL)contactIsTTYContact:(id)a3
{
  v4 = [a3 identifier];
  LOBYTE(self) = [(RTTDatabaseManager *)self contactIDIsTTYContact:v4];

  return self;
}

- (BOOL)contactPathWasUsedForTTY:(id)a3
{
  v4 = a3;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__2;
  v27 = __Block_byref_object_dispose__2;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__2;
  v21 = __Block_byref_object_dispose__2;
  v22 = 0;
  v5 = [(HCDatabaseManager *)self managedObjectContext];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __47__RTTDatabaseManager_contactPathWasUsedForTTY___block_invoke;
  v12 = &unk_279AE8118;
  v6 = v4;
  v13 = v6;
  v14 = self;
  v15 = &v17;
  v16 = &v23;
  [v5 performBlockAndWait:&v9];

  if ([v18[5] count])
  {
    v7 = v24[5] == 0;
  }

  else
  {
    v7 = 0;
  }

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);

  return v7;
}

void __47__RTTDatabaseManager_contactPathWasUsedForTTY___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBE428] fetchRequestWithEntityName:@"TTYContactList"];
  v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"contactID = %@", *(a1 + 32)];
  [v2 setPredicate:v3];

  v4 = [*(a1 + 40) managedObjectContext];
  v6 = *(a1 + 56);
  v5 = a1 + 56;
  v7 = *(v6 + 8);
  obj = *(v7 + 40);
  v8 = [v4 executeFetchRequest:v2 error:&obj];
  objc_storeStrong((v7 + 40), obj);
  v9 = *(*(v5 - 8) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  if (*(*(*v5 + 8) + 40))
  {
    v11 = AXLogRTT();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __47__RTTDatabaseManager_contactPathWasUsedForTTY___block_invoke_cold_1(v5);
    }
  }
}

- (void)conversationForCallUID:(uint64_t)a1 .cold.1(uint64_t a1)
{
  OUTLINED_FUNCTION_1_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1(&dword_261754000, v1, v2, "Failed TTYHistory fetch %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)conversationForCallUID:(uint64_t)a1 .cold.2(uint64_t a1)
{
  OUTLINED_FUNCTION_1_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  _os_log_fault_impl(&dword_261754000, v1, OS_LOG_TYPE_FAULT, "We had two callUID results, %@", v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)conversationForCallUID:(uint64_t)a1 .cold.3(uint64_t a1)
{
  OUTLINED_FUNCTION_1_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1(&dword_261754000, v1, v2, "Failed to create unarchiver with error %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)saveConversation:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_261754000, v0, v1, "Exception encoding data: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)saveConversation:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_261754000, v0, v1, "Not saving conversation because dataBlock was empty: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)saveConversation:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v4 = 2112;
  v5 = v0;
  _os_log_error_impl(&dword_261754000, v1, OS_LOG_TYPE_ERROR, "Not saving convo because no object: %@, %@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

void __47__RTTDatabaseManager_contactPathWasUsedForTTY___block_invoke_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *(*(*a1 + 8) + 40);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1(&dword_261754000, v2, v3, "Contact path TTY error: %@", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x277D85DE8];
}

@end