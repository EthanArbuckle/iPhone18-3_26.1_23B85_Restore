@interface PPSQLKVStore
+ (id)loadBlobForKey:(id)a3 transaction:(id)a4;
+ (id)numberForKey:(id)a3 transaction:(id)a4;
+ (id)stringForKey:(id)a3 transaction:(id)a4;
+ (void)removeBlobForKey:(id)a3 transaction:(id)a4;
+ (void)setNumber:(id)a3 forKey:(id)a4 transaction:(id)a5;
+ (void)setString:(id)a3 forKey:(id)a4 transaction:(id)a5;
+ (void)storeBlob:(id)a3 forKey:(id)a4 transaction:(id)a5;
@end

@implementation PPSQLKVStore

+ (id)stringForKey:(id)a3 transaction:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [a1 loadBlobForKey:v6 transaction:v7];
  if (v8)
  {
    v9 = MEMORY[0x277CCAAC8];
    v10 = objc_autoreleasePoolPush();
    v11 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v10);
    v18 = 0;
    v12 = [v9 unarchivedObjectOfClasses:v11 fromData:v8 error:&v18];
    v13 = v18;

    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v15 = pp_default_log_handle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v20 = v13;
        _os_log_error_impl(&dword_23224A000, v15, OS_LOG_TYPE_ERROR, "PPSQLDatabase: unable to unarchive string: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v12 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)numberForKey:(id)a3 transaction:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [a1 loadBlobForKey:v6 transaction:v7];
  if (v8)
  {
    v9 = MEMORY[0x277CCAAC8];
    v10 = objc_autoreleasePoolPush();
    v11 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v10);
    v18 = 0;
    v12 = [v9 unarchivedObjectOfClasses:v11 fromData:v8 error:&v18];
    v13 = v18;

    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v15 = pp_default_log_handle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v20 = v13;
        _os_log_error_impl(&dword_23224A000, v15, OS_LOG_TYPE_ERROR, "PPSQLDatabase: unable to unarchive number: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v12 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (void)setString:(id)a3 forKey:(id)a4 transaction:(id)a5
{
  v16 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v13 = 0;
  v9 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:a3 requiringSecureCoding:1 error:&v13];
  v10 = v13;
  if (v9)
  {
    [PPSQLKVStore storeBlob:v9 forKey:v7 transaction:v8];
  }

  else
  {
    v11 = pp_default_log_handle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = v10;
      _os_log_error_impl(&dword_23224A000, v11, OS_LOG_TYPE_ERROR, "PPSQLDatabase: unable to archive string: %@", buf, 0xCu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

+ (void)setNumber:(id)a3 forKey:(id)a4 transaction:(id)a5
{
  v16 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v13 = 0;
  v9 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:a3 requiringSecureCoding:1 error:&v13];
  v10 = v13;
  if (v9)
  {
    [PPSQLKVStore storeBlob:v9 forKey:v7 transaction:v8];
  }

  else
  {
    v11 = pp_default_log_handle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = v10;
      _os_log_error_impl(&dword_23224A000, v11, OS_LOG_TYPE_ERROR, "PPSQLDatabase: unable to archive number: %@", buf, 0xCu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

+ (void)removeBlobForKey:(id)a3 transaction:(id)a4
{
  v5 = a3;
  v6 = [a4 db];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45__PPSQLKVStore_removeBlobForKey_transaction___block_invoke;
  v8[3] = &unk_278978CF8;
  v9 = v5;
  v7 = v5;
  [v6 prepAndRunQuery:@"DELETE FROM kv_blobs WHERE key = :key" onPrep:v8 onRow:0 onError:0];
}

+ (void)storeBlob:(id)a3 forKey:(id)a4 transaction:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [a5 db];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __45__PPSQLKVStore_storeBlob_forKey_transaction___block_invoke;
  v12[3] = &unk_2789743E8;
  v13 = v8;
  v14 = v7;
  v10 = v7;
  v11 = v8;
  [v9 prepAndRunQuery:@"INSERT OR REPLACE INTO kv_blobs (key onPrep:value) VALUES (:key onRow::value)" onError:{v12, 0, 0}];
}

void __45__PPSQLKVStore_storeBlob_forKey_transaction___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindNamedParam:":key" toNSString:v3];
  [v4 bindNamedParam:":value" toNSData:*(a1 + 40)];
}

+ (id)loadBlobForKey:(id)a3 transaction:(id)a4
{
  v5 = a3;
  v6 = a4;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__10210;
  v18 = __Block_byref_object_dispose__10211;
  v19 = 0;
  v7 = [v6 db];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __43__PPSQLKVStore_loadBlobForKey_transaction___block_invoke;
  v12[3] = &unk_278978CF8;
  v8 = v5;
  v13 = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __43__PPSQLKVStore_loadBlobForKey_transaction___block_invoke_2;
  v11[3] = &unk_278976450;
  v11[4] = &v14;
  [v7 prepAndRunQuery:@"SELECT value FROM kv_blobs WHERE key = :key" onPrep:v12 onRow:v11 onError:0];

  v9 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v9;
}

uint64_t __43__PPSQLKVStore_loadBlobForKey_transaction___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 getNSDataForColumn:0];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return *MEMORY[0x277D42698];
}

@end