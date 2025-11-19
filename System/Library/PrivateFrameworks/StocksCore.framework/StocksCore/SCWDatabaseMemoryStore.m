@interface SCWDatabaseMemoryStore
- (SCWDatabaseMemoryStore)init;
- (id)zoneStoreForSchema:(id)a3;
@end

@implementation SCWDatabaseMemoryStore

- (SCWDatabaseMemoryStore)init
{
  v6.receiver = self;
  v6.super_class = SCWDatabaseMemoryStore;
  v2 = [(SCWDatabaseMemoryStore *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    zoneStoresByName = v2->_zoneStoresByName;
    v2->_zoneStoresByName = v3;
  }

  return v2;
}

- (id)zoneStoreForSchema:(id)a3
{
  v4 = a3;
  v5 = [(SCWDatabaseMemoryStore *)self zoneStoresByName];
  v6 = [v4 zoneName];
  v7 = [v5 objectForKeyedSubscript:v6];

  if (!v7)
  {
    v7 = objc_alloc_init(SCWZoneMemoryStore);
    v8 = [(SCWDatabaseMemoryStore *)self zoneStoresByName];
    v9 = [v4 zoneName];
    [v8 setObject:v7 forKeyedSubscript:v9];
  }

  return v7;
}

@end