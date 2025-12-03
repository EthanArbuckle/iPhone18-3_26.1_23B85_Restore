@interface SBKSyncRequestData
- (BOOL)_needsConflictDetection;
- (id)_serializableConflictDetectionOrdinalForKey:(id)key;
- (id)_serializableConflictDetectionValue;
- (id)_serializableDeleteItemPayloadDictionaryForKey:(id)key;
- (id)_serializableUpdateItemPayloadDictionaryForKey:(id)key;
- (id)serializableRequestBodyPropertyList;
@end

@implementation SBKSyncRequestData

- (id)_serializableDeleteItemPayloadDictionaryForKey:(id)key
{
  v12[2] = *MEMORY[0x277D85DE8];
  v11[0] = @"op";
  v11[1] = @"key";
  v12[0] = @"delete";
  v12[1] = key;
  v4 = MEMORY[0x277CBEAC0];
  keyCopy = key;
  v6 = [v4 dictionaryWithObjects:v12 forKeys:v11 count:2];
  v7 = [v6 mutableCopy];

  v8 = [(SBKSyncRequestData *)self _serializableConflictDetectionOrdinalForKey:keyCopy];

  if (v8)
  {
    [v7 setObject:v8 forKey:@"ordinal"];
  }

  v9 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)_serializableUpdateItemPayloadDictionaryForKey:(id)key
{
  v18[3] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  syncTransaction = [(SBKSyncRequestData *)self syncTransaction];
  v6 = [syncTransaction keyValuePairForUpdatedKey:keyCopy];
  kvsPayload = [v6 kvsPayload];

  if (kvsPayload)
  {
    sBKDataByDeflatingWithNoZipHeader = [kvsPayload SBKDataByDeflatingWithNoZipHeader];
    v9 = sBKDataByDeflatingWithNoZipHeader;
    if (sBKDataByDeflatingWithNoZipHeader)
    {
      v10 = sBKDataByDeflatingWithNoZipHeader;
    }

    else
    {
      v10 = kvsPayload;
    }

    v11 = v10;

    v17[0] = @"op";
    v17[1] = @"key";
    v18[0] = @"put";
    v18[1] = keyCopy;
    v17[2] = @"value";
    v18[2] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:3];

    v13 = [v12 mutableCopy];
    v14 = [(SBKSyncRequestData *)self _serializableConflictDetectionOrdinalForKey:keyCopy];
    if (v14)
    {
      [v13 setObject:v14 forKey:@"ordinal"];
    }
  }

  else
  {
    v13 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v13;
}

- (BOOL)_needsConflictDetection
{
  syncTransaction = [(SBKSyncRequestData *)self syncTransaction];
  v3 = [syncTransaction conflictDetectionType] != 0;

  return v3;
}

- (id)_serializableConflictDetectionOrdinalForKey:(id)key
{
  keyCopy = key;
  if ([(SBKSyncRequestData *)self _needsConflictDetection])
  {
    syncTransaction = [(SBKSyncRequestData *)self syncTransaction];
    v6 = [syncTransaction conflictDetectionOrdinalForKey:keyCopy];

    if (v6)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lld", objc_msgSend(v6, "longLongValue")];
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = 0;
LABEL_6:

  return v7;
}

- (id)_serializableConflictDetectionValue
{
  v13[3] = *MEMORY[0x277D85DE8];
  if ([(SBKSyncRequestData *)self _needsConflictDetection])
  {
    v12[0] = &unk_287CA26F0;
    v12[1] = &unk_287CA2708;
    v13[0] = @"none";
    v13[1] = @"ordinal";
    v12[2] = &unk_287CA2720;
    v13[2] = @"version";
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];
    v4 = MEMORY[0x277CCABB0];
    syncTransaction = [(SBKSyncRequestData *)self syncTransaction];
    v6 = [v4 numberWithInteger:{objc_msgSend(syncTransaction, "conflictDetectionType")}];
    v7 = [v3 objectForKey:v6];

    if (([(__CFString *)v7 isEqualToString:@"none"]& 1) != 0)
    {
      v8 = 0;
    }

    else
    {
      if (v7)
      {
        v9 = v7;
      }

      else
      {
        v9 = @"none";
      }

      v8 = v9;
    }
  }

  else
  {
    v8 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)serializableRequestBodyPropertyList
{
  v47 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  syncTransaction = [(SBKSyncRequestData *)self syncTransaction];
  keysToUpdate = [syncTransaction keysToUpdate];

  v7 = [keysToUpdate countByEnumeratingWithState:&v37 objects:v46 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v38;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v38 != v9)
        {
          objc_enumerationMutation(keysToUpdate);
        }

        v11 = *(*(&v37 + 1) + 8 * i);
        v12 = [(SBKSyncRequestData *)self _serializableUpdateItemPayloadDictionaryForKey:v11];
        if (v12)
        {
          [array addObject:v12];
        }

        else
        {
          v13 = os_log_create("com.apple.amp.StoreBookkeeper", "Default");
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v45 = v11;
            _os_log_impl(&dword_26BC19000, v13, OS_LOG_TYPE_DEFAULT, "WARNING: no data was provided for updated key %@, skipping just that item", buf, 0xCu);
          }
        }
      }

      v8 = [keysToUpdate countByEnumeratingWithState:&v37 objects:v46 count:16];
    }

    while (v8);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  syncTransaction2 = [(SBKSyncRequestData *)self syncTransaction];
  keysToDelete = [syncTransaction2 keysToDelete];

  v16 = [keysToDelete countByEnumeratingWithState:&v33 objects:v43 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v34;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v34 != v18)
        {
          objc_enumerationMutation(keysToDelete);
        }

        v20 = [(SBKSyncRequestData *)self _serializableDeleteItemPayloadDictionaryForKey:*(*(&v33 + 1) + 8 * j)];
        [array2 addObject:v20];
      }

      v17 = [keysToDelete countByEnumeratingWithState:&v33 objects:v43 count:16];
    }

    while (v17);
  }

  _serializableConflictDetectionValue = [(SBKSyncRequestData *)self _serializableConflictDetectionValue];
  v22 = [array arrayByAddingObjectsFromArray:array2];
  v41[0] = @"domain";
  syncTransaction3 = [(SBKSyncRequestData *)self syncTransaction];
  domain = [syncTransaction3 domain];
  v42[0] = domain;
  v41[1] = @"version";
  syncTransaction4 = [(SBKSyncRequestData *)self syncTransaction];
  syncAnchor = [syncTransaction4 syncAnchor];
  v41[2] = @"ops";
  v42[1] = syncAnchor;
  v42[2] = v22;
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:3];
  v28 = [v27 mutableCopy];

  if ([_serializableConflictDetectionValue length])
  {
    [v28 setObject:_serializableConflictDetectionValue forKey:@"conflict-detection"];
  }

  v29 = os_log_create("com.apple.amp.StoreBookkeeper", "KVS");
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v45 = v28;
    _os_log_impl(&dword_26BC19000, v29, OS_LOG_TYPE_DEFAULT, "Sync request payload (plist): %@", buf, 0xCu);
  }

  objc_autoreleasePoolPop(context);
  v30 = *MEMORY[0x277D85DE8];

  return v28;
}

@end