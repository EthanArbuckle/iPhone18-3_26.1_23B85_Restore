@interface SSKeyValueStoreSchema
+ (id)databasePath;
+ (void)createSchemaInDatabase:(id)a3;
@end

@implementation SSKeyValueStoreSchema

+ (id)databasePath
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{CPSharedResourcesDirectory(), @"Library", @"com.apple.itunesstored", @"kvs.sqlitedb", 0}];
  v3 = [MEMORY[0x1E696AEC0] pathWithComponents:v2];

  return v3;
}

+ (void)createSchemaInDatabase:(id)a3
{
  [a3 executeSQL:@"PRAGMA legacy_file_format = 0;"];
  [a3 executeSQL:{@"CREATE TABLE IF NOT EXISTS kvs_value (pid INTEGER, domain TEXT NOT NULL, key TEXT NOT NULL, value BLOB NOT NULL, UNIQUE (domain, key), PRIMARY KEY (pid));"}];
  [a3 executeSQL:{@"CREATE INDEX IF NOT EXISTS kvs_value_domain_key ON kvs_value (domain, key);"}];

  [a3 setUserVersion:6000];
}

@end