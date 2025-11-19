@interface REMReplicaManager
+ (BOOL)shouldUseNewInMemoryOnlyReplicaManager;
+ (id)replicaManagerForAccountID:(id)a3 store:(id)a4;
+ (id)replicaManagerIfLoadedForAccountID:(id)a3;
+ (id)replicaManagerWithSerializedData:(id)a3 error:(id *)a4;
+ (id)unsavedReplicaManagersForAccountIDs:(id)a3;
+ (void)setReplicaManager:(id)a3 forAccountID:(id)a4;
- (BOOL)hasEqualPersistedEntriesAs:(id)a3;
- (BOOL)hasUnsavedChanges;
- (BOOL)l_updateVersionOfEntry:(id)a3 forClient:(id)a4;
- (REMReplicaManager)init;
- (REMReplicaManager)initWithArchive:(const void *)a3 error:(id *)a4;
- (id)availabilityOfFirstReplicaForCRDTID:(id)a3;
- (id)checkoutReplicaUUIDForClient:(id)a3;
- (id)clockOfFirstReplicaForCRDTID:(id)a3;
- (id)description;
- (id)l_checkoutReplicaUUIDForClient:(id)a3;
- (id)l_replicaEntriesDescriptionForPersistence:(BOOL)a3;
- (id)l_replicaUUIDsDescription;
- (id)l_serializedDataWithError:(id *)a3;
- (id)persistenceDescription;
- (id)serializedDataCappedAtMaxSize:(BOOL)a3 error:(id *)a4;
- (unint64_t)replicaEntryCount;
- (void)addRandomReplicaEntriesWithCount:(int64_t)a3;
- (void)didSaveVersion:(unint64_t)a3;
- (void)encodeIntoArchive:(void *)a3;
- (void)modifyReplicaEntryForClient:(id)a3 block:(id)a4;
- (void)performLocked:(id)a3;
- (void)returnReplicaForClient:(id)a3;
- (void)updateVersionForClient:(id)a3;
@end

@implementation REMReplicaManager

+ (id)replicaManagerForAccountID:(id)a3 store:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy_;
  v22 = __Block_byref_object_dispose_;
  v23 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __54__REMReplicaManager_replicaManagerForAccountID_store___block_invoke;
  v13[3] = &unk_1E7507750;
  v16 = &v18;
  v17 = a1;
  v14 = v6;
  v15 = v7;
  v8 = v7;
  v9 = v6;
  v10 = MEMORY[0x19A8FD720](v13);
  os_unfair_lock_lock(&managerByAccountIDLock);
  v10[2](v10);
  os_unfair_lock_unlock(&managerByAccountIDLock);
  v11 = v19[5];

  _Block_object_dispose(&v18, 8);

  return v11;
}

void __54__REMReplicaManager_replicaManagerForAccountID_store___block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) uuid];
  v3 = [managerByAccountID objectForKeyedSubscript:v2];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    if (([*(a1 + 56) disablesInMemoryOnlyCheck] & 1) != 0 || !objc_msgSend(*(a1 + 56), "shouldUseNewInMemoryOnlyReplicaManager"))
    {
      v10 = *(a1 + 40);
      if (v10)
      {
        v11 = v10;
      }

      else
      {
        v11 = objc_alloc_init(REMStore);
      }

      v12 = v11;
      v13 = *(a1 + 32);
      v32 = 0;
      v14 = [(REMStore *)v11 fetchReplicaManagerForAccountID:v13 error:&v32];
      v15 = v32;
      if (v14)
      {
        v16 = +[REMLog crdt];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = [v14 managerData];
          v18 = [v17 length];
          *buf = 138412546;
          v34 = v2;
          v35 = 2048;
          v36 = v18;
          _os_log_impl(&dword_19A0DB000, v16, OS_LOG_TYPE_INFO, "Deserializing existing replica manager {account = %@, size = %lu}", buf, 0x16u);
        }

        v31 = v15;
        v19 = [REMReplicaManager replicaManagerWithSerializedData:v14 error:&v31];
        v20 = v31;

        v21 = *(*(a1 + 48) + 8);
        v22 = *(v21 + 40);
        *(v21 + 40) = v19;

        v15 = v20;
      }

      if (!*(*(*(a1 + 48) + 8) + 40))
      {
        v23 = +[REMLog crdt];
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v34 = v2;
          _os_log_impl(&dword_19A0DB000, v23, OS_LOG_TYPE_INFO, "Creating a new replica manager {account = %@}", buf, 0xCu);
        }

        v24 = objc_alloc_init(REMReplicaManager);
        v25 = *(*(a1 + 48) + 8);
        v26 = *(v25 + 40);
        *(v25 + 40) = v24;
      }
    }

    else
    {
      v6 = +[REMLog crdt];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v34 = v2;
        _os_log_impl(&dword_19A0DB000, v6, OS_LOG_TYPE_INFO, "Creating a new, in-memory only replica manager {account = %@}", buf, 0xCu);
      }

      v7 = objc_alloc_init(REMReplicaManager);
      v8 = *(*(a1 + 48) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;

      [*(*(*(a1 + 48) + 8) + 40) setIsPersistable:0];
    }

    v27 = managerByAccountID;
    if (!managerByAccountID)
    {
      v28 = [MEMORY[0x1E695DF90] dictionary];
      v29 = managerByAccountID;
      managerByAccountID = v28;

      v27 = managerByAccountID;
    }

    [v27 setObject:*(*(*(a1 + 48) + 8) + 40) forKeyedSubscript:v2];
  }

  v30 = *MEMORY[0x1E69E9840];
}

+ (BOOL)shouldUseNewInMemoryOnlyReplicaManager
{
  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v3 = [v2 bundleIdentifier];

  if (!v3 || ([@"com.apple.remindd" isEqualToString:v3] & 1) != 0 || (objc_msgSend(@"com.apple.dt.xctest.tool", "isEqualToString:", v3) & 1) != 0 || (objc_msgSend(@"com.apple.TestReminderKit.xctrunner", "isEqualToString:", v3) & 1) != 0 || (objc_msgSend(@"com.apple.iOSTestReminders.xctrunner", "isEqualToString:", v3) & 1) != 0 || (objc_msgSend(@"com.apple.macOSTestReminders.xctrunner", "isEqualToString:", v3) & 1) != 0)
  {
    v4 = 1;
  }

  else
  {
    v4 = [@"com.apple.watchOSTestReminders.xctrunner" isEqualToString:v3];
  }

  return v4;
}

- (REMReplicaManager)init
{
  v9.receiver = self;
  v9.super_class = REMReplicaManager;
  v2 = [(REMReplicaManager *)&v9 init];
  v3 = v2;
  if (v2)
  {
    [(REMReplicaManager *)v2 commonInit];
    v4 = [MEMORY[0x1E695DFA0] orderedSet];
    replicaUUIDs = v3->_replicaUUIDs;
    v3->_replicaUUIDs = v4;

    v6 = [MEMORY[0x1E695DF90] dictionary];
    replicaEntries = v3->_replicaEntries;
    v3->_replicaEntries = v6;
  }

  return v3;
}

- (REMReplicaManager)initWithArchive:(const void *)a3 error:(id *)a4
{
  v42.receiver = self;
  v42.super_class = REMReplicaManager;
  v6 = [(REMReplicaManager *)&v42 init];
  v7 = v6;
  if (v6)
  {
    [(REMReplicaManager *)v6 commonInit];
    v40 = v7;
    v8 = *(a3 + 12);
    v9 = [MEMORY[0x1E695DFA0] orderedSetWithCapacity:v8];
    if (v8)
    {
      for (i = 0; i != v8; ++i)
      {
        v11 = objc_alloc(MEMORY[0x1E696AFB0]);
        v12 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(a3 + 40, i);
        if (*(v12 + 23) >= 0)
        {
          v13 = v12;
        }

        else
        {
          v13 = *v12;
        }

        v14 = [v11 initWithUUIDBytes:v13];
        [(NSMutableOrderedSet *)v9 addObject:v14];
      }
    }

    v39 = a4;
    v15 = *(a3 + 18);
    v41 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:v15];
    v16 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:v15];
    if (v15)
    {
      v17 = 0;
      while (1)
      {
        v18 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(a3 + 64, v17);
        v19 = objc_alloc(MEMORY[0x1E696AEC0]);
        v20 = *(v18 + 23);
        v21 = v20 >= 0 ? v18 : *v18;
        v22 = v20 >= 0 ? *(v18 + 23) : *(v18 + 8);
        v23 = [v19 initWithBytes:v21 length:v22 encoding:4];
        if (![v23 length])
        {
          break;
        }

        v24 = [MEMORY[0x1E695DF70] array];
        [(NSMutableDictionary *)v41 setObject:v24 forKeyedSubscript:v23];

        v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v17];
        [v16 setObject:v23 forKeyedSubscript:v25];

        v17 = (v17 + 1);
        if (v15 == v17)
        {
          goto LABEL_18;
        }
      }

      if (v39)
      {
        *v39 = [REMError internalErrorWithDebugDescription:@"Invalid crdtID"];
      }

      goto LABEL_35;
    }

LABEL_18:
    v26 = *(a3 + 24);
    if (v26)
    {
      v27 = 0;
      while (1)
      {
        v28 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<replica_manager::ReplicaEntry>::TypeHandler>(a3 + 88, v27);
        v29 = [[REMReplicaEntry alloc] initWithEntryArchive:v28];
        v30 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(v28 + 40)];
        v31 = [v16 objectForKeyedSubscript:v30];

        if ([(REMReplicaEntry *)v29 replicaUUIDIndex]>= v8)
        {
          if (!v39)
          {
            goto LABEL_34;
          }

          v37 = [REMError internalErrorWithDebugDescription:@"Invalid replicaUUIDIndex"];
          goto LABEL_32;
        }

        if (!v31)
        {
          break;
        }

        v32 = [(NSMutableDictionary *)v41 objectForKeyedSubscript:v31];
        [v32 addObject:v29];

        if (v26 == ++v27)
        {
          goto LABEL_23;
        }
      }

      if (v39)
      {
        v31 = 0;
        v37 = [REMError internalErrorWithDebugDescription:@"Invalid crdtIDIndex"];
LABEL_32:
        *v39 = v37;
        goto LABEL_34;
      }

      v31 = 0;
LABEL_34:

LABEL_35:
      v36 = 0;
      v7 = v40;
      goto LABEL_36;
    }

LABEL_23:
    v7 = v40;
    replicaUUIDs = v40->_replicaUUIDs;
    v40->_replicaUUIDs = v9;
    v34 = v9;

    replicaEntries = v40->_replicaEntries;
    v40->_replicaEntries = v41;
  }

  v36 = v7;
LABEL_36:

  return v36;
}

- (void)encodeIntoArchive:(void *)a3
{
  v54 = *MEMORY[0x1E69E9840];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = [(REMReplicaManager *)self replicaUUIDs];
  v4 = [obj countByEnumeratingWithState:&v46 objects:v53 count:16];
  if (v4)
  {
    v5 = *v47;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v47 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = [*(*(&v46 + 1) + 8 * i) getUUIDBytes:v52];
        v8 = *(a3 + 13);
        v9 = *(a3 + 12);
        if (v9 >= v8)
        {
          if (v8 == *(a3 + 14))
          {
            v7 = google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a3 + 5, v8 + 1);
          }

          google::protobuf::internal::StringTypeHandlerBase::New(v7);
        }

        v10 = *(a3 + 5);
        *(a3 + 12) = v9 + 1;
        MEMORY[0x19A8FCFF0](*(v10 + 8 * v9), v52, 16);
      }

      v4 = [obj countByEnumeratingWithState:&v46 objects:v53 count:16];
    }

    while (v4);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  obja = [(REMReplicaManager *)self replicaEntries];
  v11 = [obja countByEnumeratingWithState:&v42 objects:v51 count:16];
  if (v11)
  {
    v12 = *v43;
    do
    {
      for (j = 0; j != v11; ++j)
      {
        if (*v43 != v12)
        {
          objc_enumerationMutation(obja);
        }

        v14 = *(*(&v42 + 1) + 8 * j);
        v15 = *(a3 + 18);
        v16 = v14;
        v17 = [v14 UTF8String];
        v18 = [v14 lengthOfBytesUsingEncoding:4];
        v19 = *(a3 + 19);
        v20 = *(a3 + 18);
        if (v20 >= v19)
        {
          if (v19 == *(a3 + 20))
          {
            v18 = google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a3 + 8, v19 + 1);
          }

          google::protobuf::internal::StringTypeHandlerBase::New(v18);
        }

        v21 = *(a3 + 8);
        *(a3 + 18) = v20 + 1;
        MEMORY[0x19A8FCFF0](*(v21 + 8 * v20), v17, v18);
        v22 = [(REMReplicaManager *)self replicaEntries];
        v23 = [v22 objectForKeyedSubscript:v14];

        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v24 = v23;
        v25 = [v24 countByEnumeratingWithState:&v38 objects:v50 count:16];
        v26 = v25;
        if (v25)
        {
          v27 = *v39;
          do
          {
            v28 = 0;
            do
            {
              if (*v39 != v27)
              {
                objc_enumerationMutation(v24);
              }

              v29 = *(*(&v38 + 1) + 8 * v28);
              v30 = *(a3 + 25);
              v31 = *(a3 + 24);
              if (v31 >= v30)
              {
                if (v30 == *(a3 + 26))
                {
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a3 + 11, v30 + 1);
                }

                google::protobuf::internal::GenericTypeHandler<replica_manager::ReplicaEntry>::New();
              }

              v32 = *(a3 + 11);
              *(a3 + 24) = v31 + 1;
              v33 = *(v32 + 8 * v31);
              *(v33 + 32) |= 1u;
              *(v33 + 40) = v15;
              [v29 encodeIntoEntryArchive:?];
              ++v28;
            }

            while (v26 != v28);
            v26 = [v24 countByEnumeratingWithState:&v38 objects:v50 count:16];
          }

          while (v26);
        }
      }

      v11 = [obja countByEnumeratingWithState:&v42 objects:v51 count:16];
    }

    while (v11);
  }

  v34 = *MEMORY[0x1E69E9840];
}

- (void)performLocked:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_ivarLock);
  v4[2](v4);

  os_unfair_lock_unlock(&self->_ivarLock);
}

- (id)checkoutReplicaUUIDForClient:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__REMReplicaManager_checkoutReplicaUUIDForClient___block_invoke;
  v8[3] = &unk_1E7507778;
  v9 = v4;
  v10 = &v11;
  v8[4] = self;
  v5 = v4;
  [(REMReplicaManager *)self performLocked:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

uint64_t __50__REMReplicaManager_checkoutReplicaUUIDForClient___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) l_checkoutReplicaUUIDForClient:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (id)l_checkoutReplicaUUIDForClient:(id)a3
{
  v58 = *MEMORY[0x1E69E9840];
  v40 = a3;
  v41 = self;
  v4 = [(REMReplicaManager *)self replicaEntries];
  v5 = [v40 crdtID];
  v6 = [v4 objectForKey:v5];

  if (!v6)
  {
    v7 = [MEMORY[0x1E695DF70] array];
    v8 = [(REMReplicaManager *)v41 replicaEntries];
    v9 = [v40 crdtID];
    [v8 setObject:v7 forKey:v9];

    v6 = v7;
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = [(REMReplicaManager *)v41 replicaUUIDs];
  v10 = [obj countByEnumeratingWithState:&v43 objects:v57 count:16];
  if (v10)
  {
    v12 = *v44;
    *&v11 = 138413058;
    v37 = v11;
LABEL_5:
    v13 = 0;
    while (1)
    {
      if (*v44 != v12)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v43 + 1) + 8 * v13);
      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = __52__REMReplicaManager_l_checkoutReplicaUUIDForClient___block_invoke;
      v42[3] = &unk_1E75077A0;
      v42[4] = v41;
      v42[5] = v14;
      v15 = [v6 indexOfObjectPassingTest:{v42, v37}];
      if (v15 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v26 = v14;
        v27 = [REMReplicaEntry alloc];
        v28 = [(REMReplicaManager *)v41 replicaUUIDs];
        v29 = -[REMReplicaEntry initWithReplicaUUIDIndex:clockElementList:inUse:forClient:](v27, "initWithReplicaUUIDIndex:clockElementList:inUse:forClient:", [v28 indexOfObject:v26], 0, 1, v40);

        [v6 addObject:v29];
        if (v26)
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }

      v16 = [v6 objectAtIndexedSubscript:v15];
      if (([v16 inUse] & 1) == 0)
      {
        v17 = [v40 clockElementListForReplicaUUID:v14];
        v18 = [v16 clockElementList];
        v19 = [REMClockElementList list:v17 isCompatibleToList:v18];

        if (!v19)
        {
          v20 = +[REMLog crdt];
          if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
          {
            v21 = clientDescription(v40);
            [(REMReplicaManager *)v21 l_checkoutReplicaUUIDForClient:v55, &v56, v20];
          }
        }

        v22 = [v16 clockElementList];
        v23 = [REMClockElementList compareList:v17 toList:v22];

        if ((v23 - 2) >= 2)
        {
          if (!v23)
          {
            [v16 setClient:v40];
            [v16 setInUse:1];
            v26 = v14;

            if (v26)
            {
              goto LABEL_26;
            }

            goto LABEL_24;
          }
        }

        else
        {
          v24 = +[REMLog crdt];
          if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
          {
            v38 = clientDescription(v40);
            v25 = [v16 clockElementList];
            *buf = v37;
            v48 = v38;
            v49 = 2112;
            v50 = v17;
            v51 = 2112;
            v52 = v25;
            v53 = 2112;
            v54 = v14;
            _os_log_fault_impl(&dword_19A0DB000, v24, OS_LOG_TYPE_FAULT, "Client clock newer that replica manager clock {client: %@, clientClockElementList: %@, replicaEntry.clockElementList: %@, replicaUUID: %@}", buf, 0x2Au);
          }
        }
      }

      if (v10 == ++v13)
      {
        v10 = [obj countByEnumeratingWithState:&v43 objects:v57 count:16];
        if (v10)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

LABEL_24:
  v30 = [MEMORY[0x1E696AFB0] UUID];
  v31 = [(REMReplicaManager *)v41 replicaUUIDs];
  [v31 addObject:v30];

  v32 = [REMReplicaEntry alloc];
  v33 = [(REMReplicaManager *)v41 replicaUUIDs];
  v34 = -[REMReplicaEntry initWithReplicaUUIDIndex:clockElementList:inUse:forClient:](v32, "initWithReplicaUUIDIndex:clockElementList:inUse:forClient:", [v33 indexOfObject:v30], 0, 1, v40);

  [v6 addObject:v34];
  v26 = v30;
LABEL_25:
  [(REMReplicaManager *)v41 setCurrentVersion:[(REMReplicaManager *)v41 currentVersion]+ 1];
LABEL_26:

  v35 = *MEMORY[0x1E69E9840];

  return v26;
}

uint64_t __52__REMReplicaManager_l_checkoutReplicaUUIDForClient___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) replicaUUIDs];
  v5 = [v4 objectAtIndex:{objc_msgSend(v3, "replicaUUIDIndex")}];

  v6 = [v5 isEqual:*(a1 + 40)];
  return v6;
}

- (void)modifyReplicaEntryForClient:(id)a3 block:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __55__REMReplicaManager_modifyReplicaEntryForClient_block___block_invoke;
  v10[3] = &unk_1E75077C8;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(REMReplicaManager *)self performLocked:v10];
}

void __55__REMReplicaManager_modifyReplicaEntryForClient_block___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) replicaEntries];
  v3 = [*(a1 + 40) crdtID];
  v4 = [v2 objectForKey:v3];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [*(a1 + 32) replicaUUIDs];
        v11 = [v10 objectAtIndex:{objc_msgSend(v9, "replicaUUIDIndex")}];

        v12 = [*(a1 + 40) replicaUUID];
        v13 = [v12 isEqual:v11];

        if (v13)
        {
          (*(*(a1 + 48) + 16))();

          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v14 = *MEMORY[0x1E69E9840];
}

- (void)updateVersionForClient:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__REMReplicaManager_updateVersionForClient___block_invoke;
  v6[3] = &unk_1E75077F0;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [(REMReplicaManager *)self modifyReplicaEntryForClient:v5 block:v6];
}

void __44__REMReplicaManager_updateVersionForClient___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) replicaUUID];
  if (([v3 inUse] & 1) == 0)
  {
    v8 = +[REMLog crdt];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      v9 = clientDescription(*(a1 + 32));
      __44__REMReplicaManager_updateVersionForClient___block_invoke_cold_1(v9, v4, v18);
    }
  }

  v5 = *(a1 + 32);
  v6 = [v3 client];
  LOBYTE(v5) = v5 == v6;

  if ((v5 & 1) == 0)
  {
    v10 = +[REMLog crdt];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      v11 = clientDescription(*(a1 + 32));
      v12 = [v3 client];
      v13 = clientDescription(v12);
      v14 = 138412546;
      v15 = v11;
      v16 = 2112;
      v17 = v13;
      _os_log_fault_impl(&dword_19A0DB000, v10, OS_LOG_TYPE_FAULT, "rem_log_fault_if (client != entry.client) -- Client attempt to update a replica not checked out by it {client: %@, entry.client: %@}", &v14, 0x16u);
    }
  }

  if ([*(a1 + 40) l_updateVersionOfEntry:v3 forClient:*(a1 + 32)])
  {
    [*(a1 + 40) setCurrentVersion:{objc_msgSend(*(a1 + 40), "currentVersion") + 1}];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (BOOL)l_updateVersionOfEntry:(id)a3 forClient:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 replicaUUID];
  v8 = [v6 clockElementListForReplicaUUID:v7];

  v9 = [v5 clockElementList];
  v10 = [REMClockElementList compareList:v8 toList:v9];

  if (v10)
  {
    if (v10 != 2)
    {
      v12 = +[REMLog crdt];
      [REMReplicaManager l_updateVersionOfEntry:v12 forClient:?];
    }

    [v5 setClockElementList:v8];
  }

  return v10 != 0;
}

- (void)returnReplicaForClient:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__REMReplicaManager_returnReplicaForClient___block_invoke;
  v6[3] = &unk_1E75077F0;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [(REMReplicaManager *)self modifyReplicaEntryForClient:v5 block:v6];
}

void __44__REMReplicaManager_returnReplicaForClient___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) replicaUUID];
  if (([v3 inUse] & 1) == 0)
  {
    v8 = +[REMLog crdt];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      v9 = clientDescription(*(a1 + 32));
      __44__REMReplicaManager_returnReplicaForClient___block_invoke_cold_1(v9, v4, v20);
    }
  }

  v5 = *(a1 + 32);
  v6 = [v3 client];
  LOBYTE(v5) = v5 == v6;

  if ((v5 & 1) == 0)
  {
    v10 = +[REMLog crdt];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      v11 = clientDescription(*(a1 + 32));
      v12 = [v3 client];
      v13 = clientDescription(v12);
      v14 = 138412802;
      v15 = v11;
      v16 = 2112;
      v17 = v4;
      v18 = 2112;
      v19 = v13;
      _os_log_fault_impl(&dword_19A0DB000, v10, OS_LOG_TYPE_FAULT, "rem_log_fault_if (client != entry.client) -- Client attempts to return replicaUUID not checked out by it {client = %@, replicaUUID = %@, checked out by = %@}", &v14, 0x20u);
    }
  }

  [v3 setInUse:0];
  [v3 setClient:0];
  if ([*(a1 + 40) l_updateVersionOfEntry:v3 forClient:*(a1 + 32)])
  {
    [*(a1 + 40) setCurrentVersion:{objc_msgSend(*(a1 + 40), "currentVersion") + 1}];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (id)description
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy_;
  v9 = __Block_byref_object_dispose_;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __32__REMReplicaManager_description__block_invoke;
  v4[3] = &unk_1E7507818;
  v4[4] = self;
  v4[5] = &v5;
  [(REMReplicaManager *)self performLocked:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __32__REMReplicaManager_description__block_invoke(uint64_t a1)
{
  v7 = [*(a1 + 32) l_replicaUUIDsDescription];
  v2 = [*(a1 + 32) l_replicaEntriesDescriptionForPersistence:0];
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@: %p> {\n\tcurrentVersion: %llu\n\tmaxLastSavedVersion: %llu\n\tReplica UUIDs: %@\n\tReplica Entries: %@\n}", objc_opt_class(), v3, objc_msgSend(v3, "currentVersion"), objc_msgSend(v3, "maxLastSavedVersion"), v7, v2];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (id)l_replicaUUIDsDescription
{
  v3 = MEMORY[0x1E695DF70];
  v4 = [(REMReplicaManager *)self replicaUUIDs];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(v4, "count")}];

  v6 = [(REMReplicaManager *)self replicaUUIDs];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __46__REMReplicaManager_l_replicaUUIDsDescription__block_invoke;
  v15 = &unk_1E7507840;
  v7 = v5;
  v16 = v7;
  [v6 enumerateObjectsUsingBlock:&v12];

  v8 = MEMORY[0x1E696AEC0];
  v9 = [v7 componentsJoinedByString:@"\n"];
  v10 = [v8 stringWithFormat:@"[\n%@\n\t]", v9, v12, v13, v14, v15];

  return v10;
}

void __46__REMReplicaManager_l_replicaUUIDsDescription__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\t\t%lu: %@", a3, a2];
  [v3 addObject:?];
}

- (id)l_replicaEntriesDescriptionForPersistence:(BOOL)a3
{
  v5 = MEMORY[0x1E695DF70];
  v6 = [(REMReplicaManager *)self replicaEntries];
  v7 = [v5 arrayWithCapacity:{objc_msgSend(v6, "count")}];

  v8 = [(REMReplicaManager *)self replicaEntries];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __63__REMReplicaManager_l_replicaEntriesDescriptionForPersistence___block_invoke;
  v14[3] = &unk_1E7507868;
  v16 = a3;
  v9 = v7;
  v15 = v9;
  [v8 enumerateKeysAndObjectsUsingBlock:v14];

  v10 = MEMORY[0x1E696AEC0];
  v11 = [v9 componentsJoinedByString:@"\n"];
  v12 = [v10 stringWithFormat:@"[\n%@\n\t]", v11];

  return v12;
}

void __63__REMReplicaManager_l_replicaEntriesDescriptionForPersistence___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v27 = a2;
  v28 = a3;
  if ([v28 count] == 1)
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = *(a1 + 40);
    [v28 firstObject];
    if (v9 == 1)
      v4 = {;
      [v4 persistenceDescription];
    }

    else
      v5 = {;
      [v5 description];
    }
    v10 = ;
    v23 = [v8 stringWithFormat:@"%@", v10];

    if (v9)
    {
    }

    else
    {
    }
  }

  else
  {
    v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v28, "count")}];
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = v28;
    v12 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v12)
    {
      v13 = *v32;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v32 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v31 + 1) + 8 * i);
          v16 = MEMORY[0x1E696AEC0];
          v17 = *(a1 + 40);
          if (v17 == 1)
          {
            v18 = [v15 persistenceDescription];
            v6 = v18;
          }

          else
          {
            v18 = [v15 description];
            v3 = v18;
          }

          v19 = [v16 stringWithFormat:@"\t\t\t%@", v18];
          [v11 addObject:v19];

          if (v17)
          {
            v20 = v6;
          }

          else
          {
            v20 = v3;
          }
        }

        v12 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v12);
    }

    v21 = MEMORY[0x1E696AEC0];
    v22 = [v11 componentsJoinedByString:@"\n"];
    v23 = [v21 stringWithFormat:@"[\n%@\n\t\t]", v22];
  }

  v24 = *(a1 + 32);
  v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\t\t%@: %@", v27, v23];
  [v24 addObject:v25];

  v26 = *MEMORY[0x1E69E9840];
}

- (id)persistenceDescription
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy_;
  v9 = __Block_byref_object_dispose_;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __43__REMReplicaManager_persistenceDescription__block_invoke;
  v4[3] = &unk_1E7507818;
  v4[4] = self;
  v4[5] = &v5;
  [(REMReplicaManager *)self performLocked:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __43__REMReplicaManager_persistenceDescription__block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) l_replicaUUIDsDescription];
  v2 = [*(a1 + 32) l_replicaEntriesDescriptionForPersistence:1];
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{\n\tversion: %llu\n\tReplica UUIDs: %@\n\tReplica Entries: %@\n}", objc_msgSend(*(a1 + 32), "currentVersion"), v6, v2];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (BOOL)hasUnsavedChanges
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __38__REMReplicaManager_hasUnsavedChanges__block_invoke;
  v4[3] = &unk_1E7507890;
  v4[4] = self;
  v4[5] = &v5;
  [(REMReplicaManager *)self performLocked:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

unint64_t __38__REMReplicaManager_hasUnsavedChanges__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isPersistable];
  if (result)
  {
    v3 = [*(a1 + 32) maxLastSavedVersion];
    result = [*(a1 + 32) currentVersion];
    v4 = v3 < result;
  }

  else
  {
    v4 = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = v4;
  return result;
}

+ (id)unsavedReplicaManagersForAccountIDs:(id)a3
{
  v3 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  v15 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v3, "count")}];
  os_unfair_lock_lock(&managerByAccountIDLock);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__REMReplicaManager_unsavedReplicaManagersForAccountIDs___block_invoke;
  v7[3] = &unk_1E7507818;
  v4 = v3;
  v8 = v4;
  v9 = &v10;
  __57__REMReplicaManager_unsavedReplicaManagersForAccountIDs___block_invoke(v7);
  os_unfair_lock_unlock(&managerByAccountIDLock);

  v5 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v5;
}

void __57__REMReplicaManager_unsavedReplicaManagersForAccountIDs___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = *v12;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v12 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v11 + 1) + 8 * i);
        v7 = managerByAccountID;
        v8 = [v6 uuid];
        v9 = [v7 objectForKeyedSubscript:v8];

        if ([v9 hasUnsavedChanges])
        {
          [*(*(*(a1 + 40) + 8) + 40) setObject:v9 forKeyedSubscript:v6];
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v3);
  }

  v10 = *MEMORY[0x1E69E9840];
}

+ (id)replicaManagerWithSerializedData:(id)a3 error:(id *)a4
{
  v5 = a3;
  if ([v5 isRepresentingDiscardedReplicaManager])
  {
    v6 = objc_alloc_init(REMReplicaManager);
  }

  else
  {
    replica_manager::ReplicaManager::ReplicaManager(v13);
    v7 = [v5 managerData];
    v8 = [v7 bytes];
    v9 = [v5 managerData];
    LOBYTE(v8) = google::protobuf::MessageLite::ParseFromArray(v13, v8, [v9 length]);

    if (v8)
    {
      v6 = [[REMReplicaManager alloc] initWithArchive:v13 error:a4];
      if (v6)
      {
        v10 = [v5 version];
        [(REMReplicaManager *)v6 setMaxLastSavedVersion:v10];
        [(REMReplicaManager *)v6 setCurrentVersion:v10];
        v11 = v6;
      }
    }

    else if (a4)
    {
      [REMError internalErrorWithDebugDescription:@"Cannot deserialize replica manager from input data"];
      *a4 = v6 = 0;
    }

    else
    {
      v6 = 0;
    }

    replica_manager::ReplicaManager::~ReplicaManager(v13);
  }

  return v6;
}

- (id)l_serializedDataWithError:(id *)a3
{
  replica_manager::ReplicaManager::ReplicaManager(v8);
  [(REMReplicaManager *)self encodeIntoArchive:v8];
  v5 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:replica_manager::ReplicaManager::ByteSize(v8)];
  if (google::protobuf::MessageLite::SerializeToArray(v8, [v5 mutableBytes], objc_msgSend(v5, "length")))
  {
    v6 = [[REMReplicaManagerSerializedData alloc] initWithManagerData:v5 version:[(REMReplicaManager *)self currentVersion]];
  }

  else if (a3)
  {
    [REMError internalErrorWithDebugDescription:@"Cannot serialize replica manager to data"];
    *a3 = v6 = 0;
  }

  else
  {
    v6 = 0;
  }

  replica_manager::ReplicaManager::~ReplicaManager(v8);

  return v6;
}

- (id)serializedDataCappedAtMaxSize:(BOOL)a3 error:(id *)a4
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy_;
  v23 = __Block_byref_object_dispose_;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  if ([(REMReplicaManager *)self isPersistable])
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __57__REMReplicaManager_serializedDataCappedAtMaxSize_error___block_invoke;
    v11[3] = &unk_1E75078B8;
    v12 = a3;
    v11[4] = self;
    v11[5] = &v19;
    v11[6] = &v13;
    [(REMReplicaManager *)self performLocked:v11];
    if (!a4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v9 = [REMError internalErrorWithDebugDescription:@"Attempting to serialize a REMReplicaManager that is marked non-persistable"];
  v10 = v14[5];
  v14[5] = v9;

  if (a4)
  {
LABEL_3:
    *a4 = v14[5];
  }

LABEL_4:
  v7 = v20[5];
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);

  return v7;
}

void __57__REMReplicaManager_serializedDataCappedAtMaxSize_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 32);
  if (v2 == 1)
  {
    if ([v3 exceededMaxSerializedSize])
    {
      v4 = +[REMReplicaManagerSerializedData serializedDataRepresentingDiscardedReplicaManager];
      v5 = *(*(a1 + 40) + 8);
      v6 = *(v5 + 40);
      *(v5 + 40) = v4;

      MEMORY[0x1EEE66BB8]();
    }

    else
    {
      v11 = *(a1 + 32);
      v12 = *(*(a1 + 48) + 8);
      v23 = *(v12 + 40);
      v13 = [v11 l_serializedDataWithError:&v23];
      objc_storeStrong((v12 + 40), v23);
      v14 = *(*(a1 + 40) + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = v13;

      v16 = *(*(*(a1 + 40) + 8) + 40);
      if (v16)
      {
        v17 = [v16 managerData];
        v18 = [v17 length];

        if (v18 > 0x19000)
        {
          v19 = +[REMReplicaManagerSerializedData serializedDataRepresentingDiscardedReplicaManager];
          v20 = *(*(a1 + 40) + 8);
          v21 = *(v20 + 40);
          *(v20 + 40) = v19;

          [*(a1 + 32) setExceededMaxSerializedSize:1];
        }
      }
    }
  }

  else
  {
    v7 = *(*(a1 + 48) + 8);
    obj = *(v7 + 40);
    v8 = [v3 l_serializedDataWithError:&obj];
    objc_storeStrong((v7 + 40), obj);
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }
}

- (void)didSaveVersion:(unint64_t)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __36__REMReplicaManager_didSaveVersion___block_invoke;
  v3[3] = &unk_1E75078E0;
  v3[4] = self;
  v3[5] = a3;
  [(REMReplicaManager *)self performLocked:v3];
}

unint64_t __36__REMReplicaManager_didSaveVersion___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) maxLastSavedVersion];
  if (result < *(a1 + 40))
  {
    v3 = *(a1 + 32);

    return [v3 setMaxLastSavedVersion:?];
  }

  return result;
}

+ (id)replicaManagerIfLoadedForAccountID:(id)a3
{
  v3 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  v15 = 0;
  os_unfair_lock_lock(&managerByAccountIDLock);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__REMReplicaManager_replicaManagerIfLoadedForAccountID___block_invoke;
  v7[3] = &unk_1E7507890;
  v8 = v3;
  v9 = &v10;
  v4 = v3;
  __56__REMReplicaManager_replicaManagerIfLoadedForAccountID___block_invoke(v7);
  os_unfair_lock_unlock(&managerByAccountIDLock);

  v5 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v5;
}

void __56__REMReplicaManager_replicaManagerIfLoadedForAccountID___block_invoke(uint64_t a1)
{
  v2 = managerByAccountID;
  v6 = [*(a1 + 32) uuid];
  v3 = [v2 objectForKeyedSubscript:?];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

+ (void)setReplicaManager:(id)a3 forAccountID:(id)a4
{
  v5 = a3;
  v6 = a4;
  os_unfair_lock_lock(&managerByAccountIDLock);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __52__REMReplicaManager_setReplicaManager_forAccountID___block_invoke;
  v9[3] = &unk_1E7507908;
  v10 = v6;
  v11 = v5;
  v7 = v5;
  v8 = v6;
  __52__REMReplicaManager_setReplicaManager_forAccountID___block_invoke(v9);
  os_unfair_lock_unlock(&managerByAccountIDLock);
}

void __52__REMReplicaManager_setReplicaManager_forAccountID___block_invoke(uint64_t a1)
{
  v2 = managerByAccountID;
  if (!managerByAccountID)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    v4 = managerByAccountID;
    managerByAccountID = v3;

    v2 = managerByAccountID;
  }

  v5 = *(a1 + 40);
  v6 = [*(a1 + 32) uuid];
  [v2 setObject:v5 forKeyedSubscript:?];
}

- (unint64_t)replicaEntryCount
{
  v2 = [(REMReplicaManager *)self replicaEntries];
  v3 = [v2 count];

  return v3;
}

- (id)availabilityOfFirstReplicaForCRDTID:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __57__REMReplicaManager_availabilityOfFirstReplicaForCRDTID___block_invoke;
  v8[3] = &unk_1E7507930;
  v8[4] = self;
  v9 = v4;
  v10 = &v11;
  v5 = v4;
  [(REMReplicaManager *)self performLocked:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __57__REMReplicaManager_availabilityOfFirstReplicaForCRDTID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) replicaEntries];
  v8 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  v3 = [v8 firstObject];
  v4 = v3;
  if (v3)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v3, "inUse") ^ 1}];
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }
}

- (id)clockOfFirstReplicaForCRDTID:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__REMReplicaManager_clockOfFirstReplicaForCRDTID___block_invoke;
  v8[3] = &unk_1E7507930;
  v8[4] = self;
  v9 = v4;
  v10 = &v11;
  v5 = v4;
  [(REMReplicaManager *)self performLocked:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __50__REMReplicaManager_clockOfFirstReplicaForCRDTID___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) replicaEntries];
  v11 = [v5 objectForKeyedSubscript:*(a1 + 40)];

  v6 = [v11 firstObject];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 clockElementList];
    if (v8)
    {
      v9 = MEMORY[0x1E696AD98];
      v1 = [v7 clockElementList];
      v2 = [v1 elements];
      v3 = [v2 objectAtIndexedSubscript:0];
      v10 = [v9 numberWithUnsignedLongLong:{objc_msgSend(v3, "clock")}];
    }

    else
    {
      v10 = 0;
    }

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v10);
    if (v8)
    {
    }
  }
}

- (BOOL)hasEqualPersistedEntriesAs:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    v5 = [(REMReplicaManager *)self replicaUUIDs];
    v6 = [(REMReplicaManager *)v4 replicaUUIDs];
    v7 = v6;
    if (v5 == v6)
    {
    }

    else
    {
      v8 = [(REMReplicaManager *)self replicaUUIDs];
      v9 = [(REMReplicaManager *)v4 replicaUUIDs];
      v10 = [v8 isEqual:v9];

      if ((v10 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    v12 = [(REMReplicaManager *)self replicaEntries];
    v13 = [v12 count];
    v14 = [(REMReplicaManager *)v4 replicaEntries];
    v15 = [v14 count];

    if (v13 != v15)
    {
LABEL_21:
      v11 = 0;
      goto LABEL_25;
    }

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v16 = [(REMReplicaManager *)self replicaEntries];
    v17 = [v16 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v17)
    {
      v31 = *v34;
      obj = v16;
      while (2)
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v34 != v31)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v33 + 1) + 8 * i);
          v20 = [(REMReplicaManager *)self replicaEntries];
          v21 = [v20 objectForKeyedSubscript:v19];

          v22 = [(REMReplicaManager *)v4 replicaEntries];
          v23 = [v22 objectForKeyedSubscript:v19];

          v24 = [v21 count];
          if (v24 != [v23 count])
          {
LABEL_22:

            v11 = 0;
            v16 = obj;
            goto LABEL_24;
          }

          v25 = 0;
          while (v25 < [v21 count])
          {
            v26 = [v21 objectAtIndexedSubscript:v25];
            v27 = [v23 objectAtIndexedSubscript:v25];
            v28 = [v26 hasEqualPersistedPropertiesAs:v27];

            ++v25;
            if ((v28 & 1) == 0)
            {
              goto LABEL_22;
            }
          }
        }

        v16 = obj;
        v17 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
        v11 = 1;
        if (v17)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v11 = 1;
    }

LABEL_24:
  }

LABEL_25:

  v29 = *MEMORY[0x1E69E9840];
  return v11;
}

- (void)addRandomReplicaEntriesWithCount:(int64_t)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __54__REMReplicaManager_addRandomReplicaEntriesWithCount___block_invoke;
  v3[3] = &unk_1E75078E0;
  v3[4] = self;
  v3[5] = a3;
  [(REMReplicaManager *)self performLocked:v3];
}

uint64_t __54__REMReplicaManager_addRandomReplicaEntriesWithCount___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) replicaUUIDs];
  v3 = [v2 count];

  if (!v3)
  {
    v4 = [*(a1 + 32) replicaUUIDs];
    v5 = [MEMORY[0x1E696AFB0] UUID];
    [v4 addObject:v5];
  }

  if (*(a1 + 40) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = [MEMORY[0x1E696AFB0] UUID];
      v8 = [v7 UUIDString];

      v9 = [[REMReplicaEntry alloc] initWithReplicaUUIDIndex:0 clockElementList:0 inUse:0 forClient:0];
      v10 = [MEMORY[0x1E695DF70] arrayWithObject:v9];
      v11 = [*(a1 + 32) replicaEntries];
      [v11 setObject:v10 forKeyedSubscript:v8];

      ++v6;
    }

    while (v6 < *(a1 + 40));
  }

  v12 = *(a1 + 32);
  v13 = [v12 currentVersion] + 1;

  return [v12 setCurrentVersion:v13];
}

- (void)l_checkoutReplicaUUIDForClient:(void *)a3 .cold.1(void *a1, uint8_t *buf, void *a3, os_log_t log)
{
  *buf = 138412290;
  *a3 = a1;
  _os_log_fault_impl(&dword_19A0DB000, log, OS_LOG_TYPE_FAULT, "Clock element list is incompatible with existing list {cliet: %@}", buf, 0xCu);
}

void __44__REMReplicaManager_updateVersionForClient___block_invoke_cold_1(void *a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_0(a1, a2, a3, 5.778e-34);
  _os_log_fault_impl(&dword_19A0DB000, v5, OS_LOG_TYPE_FAULT, "rem_log_fault_if (!entry.inUse) -- Client attempt to update replica while it is not in use {client: %@, replicaUUID: %@}", v4, 0x16u);
}

- (void)l_updateVersionOfEntry:(NSObject *)a1 forClient:.cold.1(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_FAULT))
  {
    *v2 = 0;
    _os_log_fault_impl(&dword_19A0DB000, a1, OS_LOG_TYPE_FAULT, "rem_log_fault_if (comparisonResult != REMClockElementsComparisonResultDescending) -- Can only update with a newer version.", v2, 2u);
  }
}

void __44__REMReplicaManager_returnReplicaForClient___block_invoke_cold_1(void *a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_0(a1, a2, a3, 5.778e-34);
  _os_log_fault_impl(&dword_19A0DB000, v5, OS_LOG_TYPE_FAULT, "rem_log_fault_if (!entry.inUse) -- Client attempts to return replicaUUID while it is not in use {client = %@, replicaUUID = %@}", v4, 0x16u);
}

@end