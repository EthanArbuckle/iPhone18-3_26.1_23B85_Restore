@interface SSDatabaseCacheEntry
+ (id)allPropertyKeys;
+ (unint64_t)_fetchPersistentID:(id)a3 inDatabase:(id)a4;
- (SSDatabaseCacheEntry)initWithLookupKey:(id)a3 inDatabase:(id)a4;
- (id)dataBlob:(BOOL *)a3;
- (void)dealloc;
- (void)setPersistentCache:(id)a3;
@end

@implementation SSDatabaseCacheEntry

- (SSDatabaseCacheEntry)initWithLookupKey:(id)a3 inDatabase:(id)a4
{
  v6 = [objc_opt_class() _fetchPersistentID:a3 inDatabase:a4];
  if (v6)
  {

    return [(SSSQLiteEntity *)self initWithPersistentID:v6 inDatabase:a4];
  }

  else
  {

    return 0;
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SSDatabaseCacheEntry;
  [(SSDatabaseCacheEntry *)&v3 dealloc];
}

- (void)setPersistentCache:(id)a3
{
  persistentCache = self->_persistentCache;
  if (persistentCache != a3)
  {

    self->_persistentCache = a3;
  }
}

- (id)dataBlob:(BOOL *)a3
{
  v13[5] = *MEMORY[0x1E69E9840];
  result = [(SSSQLiteEntity *)self persistentID];
  if (result)
  {
    v13[0] = SSDatabaseCacheEntryLookupKey;
    v13[1] = SSDatabaseCacheEntryDataBlob;
    v13[2] = SSDatabaseCacheEntryDataBlobSize;
    v13[3] = SSDatabaseCacheEntryDateExpired;
    v13[4] = SSDatabaseCacheEntryDateRetired;
    [(SSSQLiteEntity *)self getValues:&v9 forProperties:v13 count:5];
    result = [v9 length];
    if (result)
    {
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v7 = v6;
      if ([v12 longLongValue] <= v6)
      {
        if (a3)
        {
          *a3 = 1;
        }

        [(SSSQLiteEntity *)self deleteFromDatabase];
        return 0;
      }

      else
      {
        v8 = [v11 longLongValue];
        if (a3)
        {
          *a3 = v8 <= v7;
        }

        result = v10;
        if (!v10)
        {
          return [(SSPersistentCache *)self->_persistentCache dataForKey:v9];
        }
      }
    }
  }

  return result;
}

+ (unint64_t)_fetchPersistentID:(id)a3 inDatabase:(id)a4
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  if ([a3 length])
  {
    v6 = objc_alloc(MEMORY[0x1E696AEC0]);
    v7 = [v6 initWithFormat:@"SELECT %@ FROM %@ WHERE %@ = ? LIMIT 1;", SSDatabaseCacheEntryPID, objc_msgSend(objc_opt_class(), "databaseTable"), SSDatabaseCacheEntryLookupKey];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __54__SSDatabaseCacheEntry__fetchPersistentID_inDatabase___block_invoke;
    v10[3] = &unk_1E84B1E40;
    v10[4] = a3;
    v10[5] = a4;
    v10[6] = &v11;
    [a4 prepareStatementForSQL:v7 cache:1 usingBlock:v10];
  }

  v8 = v12[3];
  _Block_object_dispose(&v11, 8);
  return v8;
}

uint64_t __54__SSDatabaseCacheEntry__fetchPersistentID_inDatabase___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_text(a2, 1, [*(a1 + 32) UTF8String], -1, 0);
  result = [*(a1 + 40) statementHasRowAfterStepping:a2];
  if (result)
  {
    result = sqlite3_column_type(a2, 0);
    if (result == 1)
    {
      result = sqlite3_column_int64(a2, 0);
      *(*(*(a1 + 48) + 8) + 24) = result;
    }
  }

  return result;
}

+ (id)allPropertyKeys
{
  if (allPropertyKeys_onceToken_1 != -1)
  {
    +[SSDatabaseCacheEntry allPropertyKeys];
  }

  return allPropertyKeys__allProperties;
}

id __39__SSDatabaseCacheEntry_allPropertyKeys__block_invoke()
{
  v1[8] = *MEMORY[0x1E69E9840];
  v1[0] = SSDatabaseCacheEntryPID;
  v1[1] = SSDatabaseCacheEntryLookupKey;
  v1[2] = SSDatabaseCacheEntryDataBlob;
  v1[3] = SSDatabaseCacheEntryDataBlobSize;
  v1[4] = SSDatabaseCacheEntryDateInserted;
  v1[5] = SSDatabaseCacheEntryDateExpired;
  v1[6] = SSDatabaseCacheEntryDateRetired;
  v1[7] = SSDatabaseCacheEntryUserInfo;
  result = [MEMORY[0x1E695DEC8] arrayWithObjects:v1 count:8];
  allPropertyKeys__allProperties = result;
  return result;
}

@end