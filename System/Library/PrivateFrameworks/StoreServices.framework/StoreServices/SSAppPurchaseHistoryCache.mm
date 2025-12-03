@interface SSAppPurchaseHistoryCache
- (BOOL)setImageData:(id)data forAdamID:(id)d imageToken:(id)token;
- (SSAppPurchaseHistoryCache)init;
- (SSAppPurchaseHistoryCache)initWithAccount:(id)account;
- (id)allUncachedImages:(id)images;
- (id)imageDataForAdamID:(id)d;
- (unint64_t)purge:(unint64_t)purge;
- (unint64_t)purgeableSpace;
- (void)clearCacheForAdamID:(id)d;
@end

@implementation SSAppPurchaseHistoryCache

- (SSAppPurchaseHistoryCache)init
{
  v9.receiver = self;
  v9.super_class = SSAppPurchaseHistoryCache;
  v2 = [(SSAppPurchaseHistoryCache *)&v9 init];
  if (v2)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = +[SSAppPurchaseHistoryDatabase newDefaultInstance];
    purchaseHistoryDatabase = v2->_purchaseHistoryDatabase;
    v2->_purchaseHistoryDatabase = v4;

    v6 = +[SSAppIconDatabaseCache newDefaultDatabaseCache];
    databaseCache = v2->_databaseCache;
    v2->_databaseCache = v6;

    objc_autoreleasePoolPop(v3);
    if (!v2->_purchaseHistoryDatabase || !v2->_databaseCache)
    {

      return 0;
    }
  }

  return v2;
}

- (SSAppPurchaseHistoryCache)initWithAccount:(id)account
{
  accountCopy = account;
  v6 = [(SSAppPurchaseHistoryCache *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, account);
  }

  return v7;
}

- (id)allUncachedImages:(id)images
{
  imagesCopy = images;
  array = [MEMORY[0x1E695DF70] array];
  if (self->_account)
  {
    purchaseHistoryDatabase = self->_purchaseHistoryDatabase;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __47__SSAppPurchaseHistoryCache_allUncachedImages___block_invoke;
    v8[3] = &unk_1E84B33B0;
    v8[4] = self;
    v9 = imagesCopy;
    v10 = array;
    [(SSAppPurchaseHistoryDatabase *)purchaseHistoryDatabase readUsingTransactionBlock:v8];
  }

  return array;
}

uint64_t __47__SSAppPurchaseHistoryCache_allUncachedImages___block_invoke(uint64_t a1, void *a2)
{
  v48 = *MEMORY[0x1E69E9840];
  v39 = a2;
  v38 = objc_autoreleasePoolPush();
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v35 = v3;
  v4 = +[SSAppPurchaseHistoryEntry databaseTable];
  v5 = +[SSAppImageDatabaseCacheEntry databaseTable];
  v36 = MEMORY[0x1E696AEC0];
  v6 = SSDatabaseCacheEntryLookupKey;
  v7 = SSDatabaseCacheEntryDataBlobSize;
  v8 = SSDatabaseCacheEntryDateExpired;
  v9 = [*(*(a1 + 32) + 8) uniqueIdentifier];
  v32 = v7;
  v10 = v4;
  v11 = [v36 stringWithFormat:@"SELECT %@.%@, %@.%@, %@.%@, %@.%@, %@.%@, %@.%@, %@.%@ FROM %@ LEFT OUTER JOIN %@ ON %@.%@ = %@.%@ WHERE (%@.%@ IS NULL OR %@.%@ <= %lld) AND (%@ = %@)", v4, @"store_id", v4, @"bundle_id", v4, @"icon_url", v4, @"icon_token", v4, @"oval_icon_url", v4, @"oval_icon_token", v4, @"pid", v4, v5, v4, @"store_id", v5, v6, v5, v32, v5, v8, v35, @"account_unique_identifier", v9];

  if ([*(a1 + 40) count])
  {
    v12 = objc_autoreleasePoolPush();
    v13 = [*(a1 + 40) count];
    v14 = objc_alloc(MEMORY[0x1E696AEC0]);
    v15 = v14;
    if (v13 < 2)
    {
      v27 = [*(a1 + 40) lastObject];
      v28 = [v15 initWithFormat:@" AND %@.%@ = %@ ", v10, @"store_id", v27];

      v24 = [v11 stringByAppendingString:v28];

      v26 = v38;
      v25 = v39;
    }

    else
    {
      v33 = v12;
      v37 = v10;
      v16 = objc_msgSend(v14, "initWithFormat:", CFSTR(" AND (%@.%@ IN (XX"), v10, CFSTR("store_id"));
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v34 = a1;
      v17 = *(a1 + 40);
      v18 = [v17 countByEnumeratingWithState:&v43 objects:v47 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v44;
        do
        {
          v21 = 0;
          v22 = v16;
          do
          {
            if (*v44 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@, %@", v22, *(*(&v43 + 1) + 8 * v21)];

            ++v21;
            v22 = v16;
          }

          while (v19 != v21);
          v19 = [v17 countByEnumeratingWithState:&v43 objects:v47 count:16];
        }

        while (v19);
      }

      v23 = [v16 stringByAppendingString:@"]"));
      v24 = [v11 stringByAppendingString:v23];

      v26 = v38;
      v25 = v39;
      v10 = v37;
      v12 = v33;
      a1 = v34;
    }

    objc_autoreleasePoolPop(v12);
    v11 = v24;
  }

  else
  {
    v26 = v38;
    v25 = v39;
  }

  v29 = [v25 database];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __47__SSAppPurchaseHistoryCache_allUncachedImages___block_invoke_2;
  v40[3] = &unk_1E84B3388;
  v41 = v29;
  v42 = *(a1 + 48);
  v30 = v29;
  [v30 prepareStatementForSQL:v11 cache:0 usingBlock:v40];

  objc_autoreleasePoolPop(v26);
  return 1;
}

uint64_t __47__SSAppPurchaseHistoryCache_allUncachedImages___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  result = [*(a1 + 32) statementHasRowAfterStepping:a2];
  if (result)
  {
    do
    {
      v5 = SSSQLiteCopyFoundationValueForStatementColumn(a2, 0);
      v6 = SSSQLiteCopyFoundationValueForStatementColumn(a2, 1);
      v7 = SSSQLiteCopyFoundationValueForStatementColumn(a2, 2);
      v8 = SSSQLiteCopyFoundationValueForStatementColumn(a2, 3);
      v9 = SSSQLiteCopyFoundationValueForStatementColumn(a2, 4);
      v10 = SSSQLiteCopyFoundationValueForStatementColumn(a2, 5);
      v11 = SSSQLiteCopyFoundationValueForStatementColumn(a2, 6);
      v12 = v11;
      if (v5 && v7 && v8 && v6)
      {
        if (v11)
        {
          v13 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v5, @"store_id", v6, @"bundle_id", v7, @"icon_url", v8, @"icon_token", v9, @"oval_icon_url", v10, @"oval_icon_token", v11, @"pid", 0}];
          [*(a1 + 40) addObject:v13];
        }
      }

      result = [*(a1 + 32) statementHasRowAfterStepping:a2];
    }

    while ((result & 1) != 0);
  }

  return result;
}

- (void)clearCacheForAdamID:(id)d
{
  dCopy = d;
  if ([dCopy unsignedLongLongValue])
  {
    databaseCache = self->_databaseCache;
    stringValue = [dCopy stringValue];
    [(SSDatabaseCache *)databaseCache clearCacheForLookupKey:stringValue];
  }
}

- (BOOL)setImageData:(id)data forAdamID:(id)d imageToken:(id)token
{
  dataCopy = data;
  dCopy = d;
  tokenCopy = token;
  if (self->_account)
  {
    v11 = objc_autoreleasePoolPush();
    if ([dataCopy length] && objc_msgSend(dCopy, "unsignedLongLongValue"))
    {
      distantFuture = [MEMORY[0x1E695DF00] distantFuture];
      [distantFuture timeIntervalSinceReferenceDate];
      v14 = v13;

      databaseCache = self->_databaseCache;
      stringValue = [dCopy stringValue];
      v17 = [(SSDatabaseCache *)databaseCache setData:dataCopy expiring:stringValue retiring:tokenCopy lookupKey:v14 userInfo:v14];

      v18 = v17 != 0;
    }

    else
    {
      v18 = 0;
    }

    objc_autoreleasePoolPop(v11);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)imageDataForAdamID:(id)d
{
  dCopy = d;
  v5 = objc_autoreleasePoolPush();
  if ([dCopy unsignedLongLongValue])
  {
    databaseCache = self->_databaseCache;
    stringValue = [dCopy stringValue];
    v8 = [(SSDatabaseCache *)databaseCache cacheEntryForLookupKey:stringValue];

    v9 = [v8 dataBlob:0];
  }

  else
  {
    v9 = 0;
  }

  objc_autoreleasePoolPop(v5);

  return v9;
}

- (unint64_t)purgeableSpace
{
  v3 = objc_autoreleasePoolPush();
  statistics = [(SSDatabaseCache *)self->_databaseCache statistics];
  v5 = [statistics objectForKey:@"total"];
  v6 = [v5 objectForKey:@"bytes"];
  unsignedLongLongValue = [v6 unsignedLongLongValue];

  objc_autoreleasePoolPop(v3);
  return unsignedLongLongValue;
}

- (unint64_t)purge:(unint64_t)purge
{
  if (!purge)
  {
    return 0;
  }

  v4 = objc_autoreleasePoolPush();
  statistics = [(SSDatabaseCache *)self->_databaseCache statistics];
  v6 = [statistics objectForKey:@"total"];
  v7 = [v6 objectForKey:@"bytes"];
  unsignedLongLongValue = [v7 unsignedLongLongValue];
  [(SSDatabaseCache *)self->_databaseCache clear];

  objc_autoreleasePoolPop(v4);
  return unsignedLongLongValue;
}

@end