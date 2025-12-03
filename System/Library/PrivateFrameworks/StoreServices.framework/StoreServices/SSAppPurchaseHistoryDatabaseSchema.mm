@interface SSAppPurchaseHistoryDatabaseSchema
+ (BOOL)createSchemaInDatabase:(id)database;
+ (id)databasePath;
@end

@implementation SSAppPurchaseHistoryDatabaseSchema

+ (BOOL)createSchemaInDatabase:(id)database
{
  v79 = *MEMORY[0x1E69E9840];
  userVersion = [database userVersion];
  if (userVersion == 11201)
  {
LABEL_83:
    LOBYTE(v45) = 1;
    return v45;
  }

  userVersion3 = userVersion;
  v6 = 0;
  LOBYTE(v7) = 0;
  while (1)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = v8;
    if (userVersion3 <= 8001)
    {
      break;
    }

    if (userVersion3 > 10199)
    {
      switch(userVersion3)
      {
        case 10200:
          if (([database executeSQL:@"ALTER TABLE app_purchase_history ADD COLUMN is_32_bit_only INTEGER DEFAULT 0;"] & 1) == 0)
          {
            goto LABEL_50;
          }

          userVersion3 = 11000;
          goto LABEL_46;
        case 11000:
          if (([database executeSQL:@"ALTER TABLE app_purchase_history ADD COLUMN is_preorder INTEGER DEFAULT 0;"] & 1) == 0)
          {
            goto LABEL_50;
          }

          userVersion3 = 11200;
          goto LABEL_46;
        case 11200:
          if (![database executeSQL:@"ALTER TABLE app_purchase_history ADD COLUMN required_capabilities TEXT;"])
          {
            goto LABEL_50;
          }

LABEL_9:
          userVersion3 = 11201;
LABEL_46:
          objc_autoreleasePoolPop(v9);
LABEL_48:
          v7 = 1;
          goto LABEL_76;
      }

LABEL_47:
      objc_autoreleasePoolPop(v8);
      if ((v7 & 1) == 0)
      {
        goto LABEL_51;
      }

      goto LABEL_48;
    }

    if (userVersion3 != 8002)
    {
      if (userVersion3 == 10000)
      {
        if (![database executeSQL:@"ALTER TABLE app_purchase_history ADD COLUMN is_hidden_from_springboard INTEGER DEFAULT 0;"] || !objc_msgSend(database, "executeSQL:", @"ALTER TABLE app_purchase_history ADD COLUMN oval_icon_token TEXT;") || (objc_msgSend(database, "executeSQL:", @"ALTER TABLE app_purchase_history ADD COLUMN oval_icon_url TEXT;") & 1) == 0)
        {
          goto LABEL_50;
        }

        userVersion3 = 10200;
        goto LABEL_46;
      }

      goto LABEL_47;
    }

    v15 = [database executeSQL:@"ALTER TABLE app_purchase_history ADD COLUMN has_messages_extension INTEGER DEFAULT 0;"];
    objc_autoreleasePoolPop(v9);
    if ((v15 & 1) == 0)
    {
      userVersion3 = 10000;
      goto LABEL_51;
    }

    v7 = 1;
    userVersion3 = 10000;
LABEL_76:
    if (userVersion3 == 11201)
    {
      if (v7)
      {
        [database setUserVersion:11201];
      }

      goto LABEL_83;
    }
  }

  if (userVersion3 > 7999)
  {
    if (userVersion3 == 8000)
    {
      if (![database executeSQL:@"ALTER TABLE app_purchase_history ADD COLUMN is_family_shareable INTEGER DEFAULT 0;"] || (objc_msgSend(database, "executeSQL:", @"ALTER TABLE app_purchase_history ADD COLUMN vpp_is_licensed INTEGER DEFAULT 0;") & 1) == 0)
      {
        goto LABEL_50;
      }

      userVersion3 = 8001;
      goto LABEL_46;
    }

    v14 = [database executeSQL:@"ALTER TABLE app_purchase_history ADD COLUMN is_first_party INTEGER DEFAULT 0;"];
    objc_autoreleasePoolPop(v9);
    if ((v14 & 1) == 0)
    {
      userVersion3 = 8002;
      goto LABEL_51;
    }

    v7 = 1;
    userVersion3 = 8002;
    goto LABEL_76;
  }

  if (!userVersion3)
  {
    if (![database executeSQL:@"PRAGMA legacy_file_format = 0;"] || !objc_msgSend(database, "executeSQL:", @"CREATE TABLE IF NOT EXISTS app_purchase_history (pid INTEGER, account_unique_identifier INTEGER,category TEXT, company_title TEXT, content_rating_flags INTEGER, bundle_id TEXT, date_updated INTEGER, date_purchased INTEGER, download_size INTEGER, flavors TEXT, has_messages_extension INTEGER DEFAULT 0, is_hidden_from_springboard INTEGER DEFAULT 0, icon_title TEXT, icon_token TEXT, icon_url TEXT, oval_icon_token TEXT, oval_icon_url TEXT, is_family_shareable INTEGER DEFAULT 0, is_first_party INTEGER DEFAULT 0, is_newsstand INTEGER DEFAULT 0, is_hidden INTEGER DEFAULT 0, long_title TEXT, minimum_os INTEGER, purchased_token INTEGER,store_id INTEGER, supports_ipad INTEGER DEFAULT 0, supports_iphone INTEGER DEFAULT 0, redownload_params TEXT, version_human_readable TEXT, version_itunes INTEGER, vpp_is_licensed INTEGER DEFAULT 0, is_32_bit_only INTEGER DEFAULT 0, is_preorder INTEGER DEFAULT 0, required_capabilities TEXT, PRIMARY KEY (pid));") || !objc_msgSend(database, "executeSQL:", @"CREATE TABLE IF NOT EXISTS db_properties (key TEXT PRIMARY KEY, value TEXT)") || !objc_msgSend(database, "executeSQL:", @"CREATE TABLE IF NOT EXISTS app_purchase_history_accounts (account_unique_identifier INTEGER, local_revision INTEGER, PRIMARY KEY (account_unique_identifier));") || !objc_msgSend(database, "executeSQL:", @"CREATE INDEX IF NOT EXISTS app_purchase_history_store_id ON app_purchase_history (store_id);") || !objc_msgSend(database, "executeSQL:", @"CREATE INDEX IF NOT EXISTS app_purchase_history_category ON app_purchase_history (category);") || !objc_msgSend(database, "executeSQL:", @"CREATE INDEX IF NOT EXISTS app_purchase_history_bundle_id ON app_purchase_history (bundle_id);") || (objc_msgSend(database, "executeSQL:", @"CREATE INDEX IF NOT EXISTS app_purchase_history_account_unique_identifier ON app_purchase_history (account_unique_identifier);") & 1) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_9;
  }

  if (userVersion3 != 7000)
  {
    goto LABEL_47;
  }

  v71 = 0;
  v72 = &v71;
  v73 = 0x2020000000;
  v74 = 0;
  v10 = [database executeSQL:{@"CREATE TABLE IF NOT EXISTS app_purchase_history_accounts (account_unique_identifier INTEGER, local_revision INTEGER, PRIMARY KEY (account_unique_identifier));"}];
  *(v72 + 24) = v10;
  if ((v10 & 1) == 0)
  {
    _Block_object_dispose(&v71, 8);
    userVersion3 = 7000;
LABEL_50:
    objc_autoreleasePoolPop(v9);
    goto LABEL_51;
  }

  *v77 = 0;
  *&v77[8] = v77;
  *&v77[16] = 0x3052000000;
  *&v77[24] = __Block_byref_object_copy__70;
  *&v77[32] = __Block_byref_object_dispose__70;
  v78 = 0;
  v70[0] = MEMORY[0x1E69E9820];
  v70[1] = 3221225472;
  v70[2] = __updateAppPurchaseHistoryFrom7000to8000_block_invoke;
  v70[3] = &unk_1E84B1E90;
  v70[4] = database;
  v70[5] = v77;
  [database prepareStatementForSQL:@"SELECT value FROM db_properties WHERE key=app_purchase_history.localRevision;" cache:0 usingBlock:v70];
  v64 = 0;
  v65 = &v64;
  v66 = 0x3052000000;
  v67 = __Block_byref_object_copy__70;
  v68 = __Block_byref_object_dispose__70;
  v69 = 0;
  v63[0] = MEMORY[0x1E69E9820];
  v63[1] = 3221225472;
  v63[2] = __updateAppPurchaseHistoryFrom7000to8000_block_invoke_2;
  v63[3] = &unk_1E84B1E90;
  v63[4] = database;
  v63[5] = &v64;
  [database prepareStatementForSQL:@"SELECT value FROM db_properties WHERE key=app_purchase_history.account_unique_identifier;" cache:0 usingBlock:v63];
  v11 = v65[5];
  if (v11)
  {
    v12 = *(*&v77[8] + 40);
    if (v12)
    {
      v75[0] = @"account_unique_identifier";
      v75[1] = @"local_revision";
      v76[0] = v11;
      v76[1] = v12;

      v11 = v65[5];
    }
  }

  v62[0] = MEMORY[0x1E69E9820];
  v62[1] = 3221225472;
  v62[2] = __updateAppPurchaseHistoryFrom7000to8000_block_invoke_3;
  v62[3] = &unk_1E84B3018;
  v62[4] = database;
  v62[5] = &v71;
  [database prepareStatementForSQL:@"DELETE FROM db_properties WHERE key=app_purchase_history.localRevision;" cache:0 usingBlock:v62];
  v13 = *(v72 + 24);
  _Block_object_dispose(&v64, 8);
  _Block_object_dispose(v77, 8);
  _Block_object_dispose(&v71, 8);
  objc_autoreleasePoolPop(v9);
  if (v13)
  {
    v7 = 1;
    userVersion3 = 8000;
    goto LABEL_76;
  }

  userVersion3 = 8000;
LABEL_51:
  userVersion2 = [database userVersion];
  v17 = userVersion2;
  if (userVersion2 != userVersion3)
  {
    v31 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v31)
    {
      v31 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v31 shouldLog];
    if ([v31 shouldLogToDisk])
    {
      v33 = shouldLog | 2;
    }

    else
    {
      v33 = shouldLog;
    }

    if (os_log_type_enabled([v31 OSLogObject], OS_LOG_TYPE_ERROR))
    {
      v34 = v33;
    }

    else
    {
      v34 = v33 & 2;
    }

    if (v34)
    {
      v35 = objc_opt_class();
      *v77 = 138413058;
      *&v77[4] = v35;
      *&v77[12] = 1024;
      *&v77[14] = userVersion3;
      *&v77[18] = 1024;
      *&v77[20] = 11201;
      *&v77[24] = 1024;
      *&v77[26] = v17;
      LODWORD(v61) = 30;
      v60 = v77;
      v36 = _os_log_send_and_compose_impl();
      if (v36)
      {
        v37 = v36;
        v38 = [MEMORY[0x1E696AEC0] stringWithCString:v36 encoding:{4, v77, v61}];
        free(v37);
        SSFileLog(v31, @"%@", v39, v40, v41, v42, v43, v44, v38);
      }
    }

    v6 = 0;
    goto LABEL_75;
  }

  v18 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v18)
  {
    v18 = +[SSLogConfig sharedConfig];
  }

  shouldLog2 = [v18 shouldLog];
  if ([v18 shouldLogToDisk])
  {
    shouldLog2 |= 2u;
  }

  v20 = v6 + 1;
  if (!os_log_type_enabled([v18 OSLogObject], OS_LOG_TYPE_ERROR))
  {
    shouldLog2 &= 2u;
  }

  if (shouldLog2)
  {
    v21 = objc_opt_class();
    *v77 = 138413058;
    *&v77[4] = v21;
    *&v77[12] = 2048;
    *&v77[14] = userVersion3;
    *&v77[22] = 2048;
    *&v77[24] = 11201;
    *&v77[32] = 1024;
    *&v77[34] = v6 + 1;
    LODWORD(v61) = 38;
    v60 = v77;
    v22 = _os_log_send_and_compose_impl();
    if (v22)
    {
      v23 = v22;
      v24 = [MEMORY[0x1E696AEC0] stringWithCString:v22 encoding:{4, v77, v61}];
      free(v23);
      SSFileLog(v18, @"%@", v25, v26, v27, v28, v29, v30, v24);
    }
  }

  if (v6 < 5)
  {
    ++v6;
LABEL_75:
    userVersion3 = [database userVersion];
    v7 = 0;
    goto LABEL_76;
  }

  v46 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v46)
  {
    v46 = +[SSLogConfig sharedConfig];
  }

  shouldLog3 = [v46 shouldLog];
  if ([v46 shouldLogToDisk])
  {
    v48 = shouldLog3 | 2;
  }

  else
  {
    v48 = shouldLog3;
  }

  if (os_log_type_enabled([v46 OSLogObject], OS_LOG_TYPE_ERROR))
  {
    v49 = v48;
  }

  else
  {
    v49 = v48 & 2;
  }

  if (v49)
  {
    v50 = objc_opt_class();
    *v77 = 138413058;
    *&v77[4] = v50;
    *&v77[12] = 1024;
    *&v77[14] = v20;
    *&v77[18] = 2048;
    *&v77[20] = userVersion3;
    *&v77[28] = 2048;
    *&v77[30] = 11201;
    LODWORD(v61) = 38;
    v45 = _os_log_send_and_compose_impl();
    if (!v45)
    {
      return v45;
    }

    v51 = v45;
    v52 = [MEMORY[0x1E696AEC0] stringWithCString:v45 encoding:{4, v77, v61}];
    free(v51);
    SSFileLog(v46, @"%@", v53, v54, v55, v56, v57, v58, v52);
  }

  LOBYTE(v45) = 0;
  return v45;
}

+ (id)databasePath
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{CPSharedResourcesDirectory(), @"Library", @"Caches", @"com.apple.storeservices", @"AppPurchaseHistory.6.sqlitedb", 0}];
  v3 = [MEMORY[0x1E696AEC0] pathWithComponents:v2];

  return v3;
}

@end