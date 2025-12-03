@interface SCKDatabaseMemoryStore
- (SCKDatabaseMemoryStore)init;
- (id)zoneStoreForSchema:(id)schema;
@end

@implementation SCKDatabaseMemoryStore

- (SCKDatabaseMemoryStore)init
{
  v6.receiver = self;
  v6.super_class = SCKDatabaseMemoryStore;
  v2 = [(SCKDatabaseMemoryStore *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    zoneStoresByName = v2->_zoneStoresByName;
    v2->_zoneStoresByName = v3;
  }

  return v2;
}

- (id)zoneStoreForSchema:(id)schema
{
  schemaCopy = schema;
  zoneStoresByName = [(SCKDatabaseMemoryStore *)self zoneStoresByName];
  zoneName = [schemaCopy zoneName];
  v7 = [zoneStoresByName objectForKeyedSubscript:zoneName];

  if (!v7)
  {
    v7 = objc_alloc_init(SCKZoneMemoryStore);
    zoneStoresByName2 = [(SCKDatabaseMemoryStore *)self zoneStoresByName];
    zoneName2 = [schemaCopy zoneName];
    [zoneStoresByName2 setObject:v7 forKeyedSubscript:zoneName2];
  }

  return v7;
}

@end