@interface AccountCacheDBClient
- (AccountCacheDBClient)init;
- (id)_databasePath;
- (id)dSIDForAppleID:(id)d;
@end

@implementation AccountCacheDBClient

- (AccountCacheDBClient)init
{
  v8.receiver = self;
  v8.super_class = AccountCacheDBClient;
  v2 = [(AccountCacheDBClient *)&v8 init];
  v3 = v2;
  if (v2)
  {
    _databasePath = [(AccountCacheDBClient *)v2 _databasePath];
    v5 = [[SSSQLiteDatabase alloc] initWithDatabaseURL:_databasePath readOnly:1 protectionType:NSFileProtectionCompleteUntilFirstUserAuthentication];
    database = v3->_database;
    v3->_database = v5;
  }

  return v3;
}

- (id)dSIDForAppleID:(id)d
{
  v4 = [NSString stringWithFormat:@"SELECT dsid FROM account WHERE apple_id = '%@'", d];
  v5 = objc_opt_new();
  database = self->_database;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000B1270;
  v10[3] = &unk_100327888;
  v10[4] = self;
  v7 = v5;
  v11 = v7;
  [(SSSQLiteDatabase *)database prepareStatementForSQL:v4 cache:0 usingBlock:v10];
  if ([v7 count])
  {
    firstObject = [v7 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (id)_databasePath
{
  v2 = [[NSArray alloc] initWithObjects:{CPSharedResourcesDirectory(), @"Library", @"MusicLibrary", @"AccountCache.sqlitedb", 0}];
  v3 = [NSString pathWithComponents:v2];
  v4 = [NSURL fileURLWithPath:v3 isDirectory:0];

  return v4;
}

@end