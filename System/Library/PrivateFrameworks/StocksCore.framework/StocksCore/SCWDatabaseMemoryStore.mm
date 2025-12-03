@interface SCWDatabaseMemoryStore
- (SCWDatabaseMemoryStore)init;
- (id)zoneStoreForSchema:(id)schema;
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

- (id)zoneStoreForSchema:(id)schema
{
  schemaCopy = schema;
  zoneStoresByName = [(SCWDatabaseMemoryStore *)self zoneStoresByName];
  zoneName = [schemaCopy zoneName];
  v7 = [zoneStoresByName objectForKeyedSubscript:zoneName];

  if (!v7)
  {
    v7 = objc_alloc_init(SCWZoneMemoryStore);
    zoneStoresByName2 = [(SCWDatabaseMemoryStore *)self zoneStoresByName];
    zoneName2 = [schemaCopy zoneName];
    [zoneStoresByName2 setObject:v7 forKeyedSubscript:zoneName2];
  }

  return v7;
}

@end