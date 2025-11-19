@interface ICDelegateAccountStoreSchema
+ (BOOL)_createDefaultSchemaWithConnection:(id)a3 error:(id *)a4;
+ (BOOL)setupWithConnection:(id)a3 error:(id *)a4;
+ (id)defaultDatabasePath;
@end

@implementation ICDelegateAccountStoreSchema

+ (BOOL)_createDefaultSchemaWithConnection:(id)a3 error:(id *)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"CREATE TABLE IF NOT EXISTS account(identity TEXT PRIMARY KEY, storefront TEXT);", @"CREATE TABLE IF NOT EXISTS metadata(key TEXT PRIMARY KEY, value TEXT);", @"CREATE TABLE IF NOT EXISTS token(account_identity TEXT UNIQUE, type INTEGER NOT NULL, expiration_date REAL, data BLOB NOT NULL);", @"CREATE TABLE IF NOT EXISTS delegation_uuid(user_identity TEXT, uuid TEXT, insertion_date REAL, UNIQUE(user_identity, uuid));", @"ANALYZE", 0}];
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v20;
    while (2)
    {
      v11 = 0;
      v12 = v9;
      do
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v19 + 1) + 8 * v11);
        v18 = v12;
        v14 = [v5 executeStatement:v13 error:&v18];
        v9 = v18;

        if (!v14)
        {

          if (a4)
          {
            v15 = v9;
            v16 = 0;
            *a4 = v9;
          }

          else
          {
            v16 = 0;
          }

          goto LABEL_15;
        }

        ++v11;
        v12 = v9;
      }

      while (v8 != v11);
      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v9 = 0;
  }

  v16 = 1;
LABEL_15:

  return v16;
}

+ (BOOL)setupWithConnection:(id)a3 error:(id *)a4
{
  v6 = a3;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__36037;
  v19 = __Block_byref_object_dispose__36038;
  v20 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __58__ICDelegateAccountStoreSchema_setupWithConnection_error___block_invoke;
  v10[3] = &unk_1E7BF9140;
  v7 = v6;
  v11 = v7;
  v12 = &v15;
  v13 = &v21;
  v14 = a1;
  [v7 performTransaction:v10];
  v8 = *(v22 + 24);
  if (a4 && (v22[3] & 1) == 0)
  {
    *a4 = v16[5];
    v8 = *(v22 + 24);
  }

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  return v8 & 1;
}

uint64_t __58__ICDelegateAccountStoreSchema_setupWithConnection_error___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 8);
  v5 = *(v2 + 40);
  v3 = (v2 + 40);
  v4 = v5;
  v6 = *(a1 + 32);
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__36037;
  v34 = __Block_byref_object_dispose__36038;
  v35 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = ____GetUserVersion_block_invoke;
  v21[3] = &unk_1E7BF9168;
  v21[4] = &v30;
  v21[5] = &v26;
  v21[6] = &v22;
  [v6 executeQuery:@"PRAGMA user_version" withResults:v21];
  if (*(v27 + 24) == 1)
  {
    v7 = v23[3];
    v8 = 1;
  }

  else
  {
    v4 = v31[5];
    v9 = v4;
    v7 = 0;
    v8 = *(v27 + 24);
  }

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v30, 8);

  objc_storeStrong(v3, v4);
  if (v8)
  {
    if (v7)
    {
      if (v7 == 11000)
      {
        *(*(*(a1 + 48) + 8) + 24) = 1;
        return *(*(*(a1 + 48) + 8) + 24);
      }

      [*(a1 + 32) truncate];
    }

    v10 = *(a1 + 56);
    v11 = *(a1 + 32);
    v12 = *(*(a1 + 40) + 8);
    obj = *(v12 + 40);
    v13 = [v10 _createDefaultSchemaWithConnection:v11 error:&obj];
    objc_storeStrong((v12 + 40), obj);
    if (v13)
    {
      v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"PRAGMA user_version=%ld", 11000];
      v15 = *(a1 + 32);
      v16 = *(*(a1 + 40) + 8);
      v19 = *(v16 + 40);
      v17 = [v15 executeStatement:v14 error:&v19];
      objc_storeStrong((v16 + 40), v19);
      if (v17)
      {
        *(*(*(a1 + 48) + 8) + 24) = 1;
      }
    }
  }

  return *(*(*(a1 + 48) + 8) + 24);
}

+ (id)defaultDatabasePath
{
  v2 = MSVMobileHomeDirectory();
  v3 = [v2 stringByAppendingPathComponent:@"Library/com.apple.iTunesCloud/ICDelegateAccountStore.db"];

  return v3;
}

@end