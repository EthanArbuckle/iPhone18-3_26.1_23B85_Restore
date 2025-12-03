@interface HDSPSyncedDefaultsConfiguration
- (BOOL)shouldPersistKey:(id)key;
- (BOOL)shouldSyncKey:(id)key;
- (HDSPSyncedDefaultsConfiguration)initWithInfo:(id)info keySets:(id)sets;
- (NSDictionary)allDefaultValues;
- (id)_accumulateKeysWithBlock:(id)block includeVersionInfo:(BOOL)info isForSync:(BOOL)sync;
- (id)_createKeySetMapForKeySets:(id)sets;
- (id)_keySetForKey:(id)key;
- (id)filteredKeySetsWithKeysToSync:(id)sync;
@end

@implementation HDSPSyncedDefaultsConfiguration

- (HDSPSyncedDefaultsConfiguration)initWithInfo:(id)info keySets:(id)sets
{
  infoCopy = info;
  setsCopy = sets;
  v15.receiver = self;
  v15.super_class = HDSPSyncedDefaultsConfiguration;
  v9 = [(HDSPSyncedDefaultsConfiguration *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_info, info);
    v11 = [(HDSPSyncedDefaultsConfiguration *)v10 _createKeySetMapForKeySets:setsCopy];
    keySetMap = v10->_keySetMap;
    v10->_keySetMap = v11;

    v13 = v10;
  }

  return v10;
}

- (id)_createKeySetMapForKeySets:(id)sets
{
  v3 = MEMORY[0x277CBEB38];
  setsCopy = sets;
  v5 = objc_alloc_init(v3);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __62__HDSPSyncedDefaultsConfiguration__createKeySetMapForKeySets___block_invoke;
  v9[3] = &unk_279C7C450;
  v10 = v5;
  v6 = v5;
  [setsCopy na_each:v9];

  v7 = [v6 copy];

  return v7;
}

void __62__HDSPSyncedDefaultsConfiguration__createKeySetMapForKeySets___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 identifier];
  [v2 setObject:v3 forKeyedSubscript:v4];
}

- (id)_accumulateKeysWithBlock:(id)block includeVersionInfo:(BOOL)info isForSync:(BOOL)sync
{
  infoCopy = info;
  blockCopy = block;
  v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
  keySets = [(HDSPSyncedDefaultsConfiguration *)self keySets];
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __89__HDSPSyncedDefaultsConfiguration__accumulateKeysWithBlock_includeVersionInfo_isForSync___block_invoke;
  v21 = &unk_279C7C630;
  v11 = v9;
  v22 = v11;
  v12 = blockCopy;
  v23 = v12;
  [keySets na_each:&v18];

  if (infoCopy)
  {
    v13 = [(HDSPSyncedDefaultsInfo *)self->_info dataVersionKey:v18];
    [v11 addObject:v13];

    cloudDataVersionKey = [(HDSPSyncedDefaultsInfo *)self->_info cloudDataVersionKey];
    [v11 addObject:cloudDataVersionKey];

    if (!sync)
    {
      localDataVersionKey = [(HDSPSyncedDefaultsInfo *)self->_info localDataVersionKey];
      [v11 addObject:localDataVersionKey];
    }
  }

  v16 = [v11 copy];

  return v16;
}

void __89__HDSPSyncedDefaultsConfiguration__accumulateKeysWithBlock_includeVersionInfo_isForSync___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = (*(*(a1 + 40) + 16))();
  [v1 unionSet:v2];
}

- (NSDictionary)allDefaultValues
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  keySets = [(HDSPSyncedDefaultsConfiguration *)self keySets];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__HDSPSyncedDefaultsConfiguration_allDefaultValues__block_invoke;
  v8[3] = &unk_279C7C450;
  v9 = v3;
  v5 = v3;
  [keySets na_each:v8];

  v6 = [v5 copy];

  return v6;
}

void __51__HDSPSyncedDefaultsConfiguration_allDefaultValues__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 defaultValues];
  [v2 addEntriesFromDictionary:v3];
}

- (BOOL)shouldPersistKey:(id)key
{
  keyCopy = key;
  allKeysToPersist = [(HDSPSyncedDefaultsConfiguration *)self allKeysToPersist];
  v6 = [allKeysToPersist containsObject:keyCopy];

  return v6;
}

- (BOOL)shouldSyncKey:(id)key
{
  keyCopy = key;
  allKeysToSync = [(HDSPSyncedDefaultsConfiguration *)self allKeysToSync];
  v6 = [allKeysToSync containsObject:keyCopy];

  return v6;
}

- (id)_keySetForKey:(id)key
{
  keyCopy = key;
  keySets = [(HDSPSyncedDefaultsConfiguration *)self keySets];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __49__HDSPSyncedDefaultsConfiguration__keySetForKey___block_invoke;
  v9[3] = &unk_279C7C678;
  v10 = keyCopy;
  v6 = keyCopy;
  v7 = [keySets na_firstObjectPassingTest:v9];

  return v7;
}

uint64_t __49__HDSPSyncedDefaultsConfiguration__keySetForKey___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 keysToPersist];
  v4 = [v3 containsObject:*(a1 + 32)];

  return v4;
}

- (id)filteredKeySetsWithKeysToSync:(id)sync
{
  syncCopy = sync;
  keySetMap = self->_keySetMap;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __65__HDSPSyncedDefaultsConfiguration_filteredKeySetsWithKeysToSync___block_invoke;
  v13[3] = &unk_279C7C6A0;
  v6 = syncCopy;
  v14 = v6;
  v7 = [(NSDictionary *)keySetMap na_filter:v13];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __65__HDSPSyncedDefaultsConfiguration_filteredKeySetsWithKeysToSync___block_invoke_2;
  v11[3] = &unk_279C7C6C8;
  v12 = v6;
  v8 = v6;
  v9 = [v7 na_map:v11];

  return v9;
}

uint64_t __65__HDSPSyncedDefaultsConfiguration_filteredKeySetsWithKeysToSync___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 keysToSync];
  v5 = [v4 intersectsSet:*(a1 + 32)];

  return v5;
}

HDSPSyncedDefaultsKeySet *__65__HDSPSyncedDefaultsConfiguration_filteredKeySetsWithKeysToSync___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [HDSPSyncedDefaultsKeySet alloc];
  v6 = [v4 identifier];
  v7 = [v4 modificationDateKey];
  v8 = [v4 keysToPersist];
  v9 = [v4 keysToSync];

  v10 = [v9 na_setByIntersectingWithSet:*(a1 + 32)];
  v11 = [(HDSPSyncedDefaultsKeySet *)v5 initWithIdentifier:v6 modficationDateKey:v7 keysToPersist:v8 keysToSync:v10];

  return v11;
}

@end