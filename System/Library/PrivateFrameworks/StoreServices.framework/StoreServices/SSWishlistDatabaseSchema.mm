@interface SSWishlistDatabaseSchema
+ (id)databasePathWithAccountIdentifier:(int64_t)identifier;
+ (void)createSchemaInDatabase:(id)database;
@end

@implementation SSWishlistDatabaseSchema

+ (void)createSchemaInDatabase:(id)database
{
  [database executeSQL:@"PRAGMA legacy_file_format = 0;"];
  [database executeSQL:{@"CREATE TABLE IF NOT EXISTS item (pid INTEGER, item_id INTEGER, sort_order INTEGER DEFAULT 0, state INTEGER DEFAULT 0, item_kind TEXT NOT NULL, item_data BLOB, PRIMARY KEY (pid));"}];
  [database executeSQL:{@"CREATE TABLE IF NOT EXISTS properties (key TEXT, value TEXT, PRIMARY KEY (key));"}];
  [database executeSQL:@"CREATE INDEX IF NOT EXISTS item_item_id ON item (item_id);"];
  [database executeSQL:@"CREATE INDEX IF NOT EXISTS item_state ON item (state);"];
  userVersion = [database userVersion];
  if (userVersion == 7001)
  {
    [self _migrate7001to7002InDatabase:database];
  }

  else if (userVersion == 7000)
  {
    [self _migrate7000to7001InDatabase:database];
  }

  [database setUserVersion:7002];
}

+ (id)databasePathWithAccountIdentifier:(int64_t)identifier
{
  identifier = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lld.sqlitedb", identifier];
  v4 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{CPSharedResourcesDirectory(), @"Library", @"com.apple.itunesstored", @"Wishlists", identifier, 0}];
  v5 = [MEMORY[0x1E696AEC0] pathWithComponents:v4];

  return v5;
}

@end