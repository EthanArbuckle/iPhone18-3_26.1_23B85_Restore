@interface SQLDB
+ (id)databaseWithURL:(id)l;
- (BOOL)setupSchema;
- (NSURL)shmURL;
- (NSURL)walURL;
- (SQLDB)initWithDatabaseURL:(id)l asReadOnly:(BOOL)only;
- (id)lastInsertRowID;
- (id)readSetting:(id)setting;
- (int)executeQuery:(id)query withBind:(id)bind withCancellableResults:(id)results;
- (int)executeQuery:(id)query withBind:(id)bind withResults:(id)results;
- (int)transaction:(id)transaction immediate:(BOOL)immediate;
- (unint64_t)tableRowCount:(id)count;
- (void)dealloc;
- (void)deleteSetting:(id)setting;
- (void)setSetting:(id)setting toValue:(id)value;
- (void)setupPermissions;
@end

@implementation SQLDB

- (id)lastInsertRowID
{
  v2 = MEMORY[0x1E696AD98];
  insert_rowid = sqlite3_last_insert_rowid(self->_db);

  return objc_msgSend_numberWithLongLong_(v2, v3, insert_rowid);
}

- (unint64_t)tableRowCount:(id)count
{
  v27 = *MEMORY[0x1E69E9840];
  countCopy = count;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_1B9DC4C18;
  v21 = sub_1B9DC4C28;
  v22 = 0;
  v6 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v5, @"SELECT COUNT(*) FROM %@", countCopy);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1B9DC4C30;
  v16[3] = &unk_1E7ED8570;
  v16[4] = &v17;
  v10 = objc_msgSend_executeQuery_withBind_withResults_(self, v7, v6, 0, v16);
  if (v10)
  {
    v11 = sub_1B9D98960();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v24 = countCopy;
      v25 = 1024;
      v26 = v10;
      _os_log_error_impl(&dword_1B9D96000, v11, OS_LOG_TYPE_ERROR, "Unable to table row count for %{public}@: %d", buf, 0x12u);
    }
  }

  v12 = v18[5];
  if (v12)
  {
    v13 = objc_msgSend_unsignedIntegerValue(v12, v8, v9);
  }

  else
  {
    v13 = 0;
  }

  _Block_object_dispose(&v17, 8);
  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (void)deleteSetting:(id)setting
{
  settingCopy = setting;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1B9DC4D34;
  v7[3] = &unk_1E7ED8548;
  v8 = settingCopy;
  v5 = settingCopy;
  objc_msgSend_executeQuery_withBind_withResults_(self, v6, @"DELETE FROM settings WHERE name = ?1", v7, 0);
}

- (void)setSetting:(id)setting toValue:(id)value
{
  settingCopy = setting;
  valueCopy = value;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1B9DC4E4C;
  v11[3] = &unk_1E7ED8598;
  v12 = settingCopy;
  v13 = valueCopy;
  v8 = valueCopy;
  v9 = settingCopy;
  objc_msgSend_executeQuery_withBind_withResults_(self, v10, @"INSERT OR REPLACE INTO settings (name, value) VALUES (?1, ?2)", v11, 0);
}

- (id)readSetting:(id)setting
{
  settingCopy = setting;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1B9DC4C18;
  v16 = sub_1B9DC4C28;
  v17 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1B9DC5040;
  v10[3] = &unk_1E7ED8548;
  v5 = settingCopy;
  v11 = v5;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1B9DC5090;
  v9[3] = &unk_1E7ED8570;
  v9[4] = &v12;
  objc_msgSend_executeQuery_withBind_withResults_(self, v6, @"SELECT value FROM settings WHERE name = ?1", v10, v9);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (int)transaction:(id)transaction immediate:(BOOL)immediate
{
  immediateCopy = immediate;
  transactionCopy = transaction;
  dispatch_semaphore_wait(self->_transactionSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  if (immediateCopy)
  {
    v8 = objc_msgSend_executeQuery_withBind_withResults_(self, v7, @"begin immediate transaction", 0, 0);
  }

  else
  {
    v8 = objc_msgSend_executeQuery_withBind_withResults_(self, v7, @"begin transaction", 0, 0);
  }

  v9 = v8;
  if (!v8)
  {
    if (transactionCopy[2](transactionCopy) && !objc_msgSend_executeQuery_withBind_withResults_(self, v10, @"end transaction", 0, 0))
    {
      v9 = 0;
    }

    else
    {
      v9 = objc_msgSend_executeQuery_withBind_withResults_(self, v10, @"rollback transaction", 0, 0);
    }
  }

  dispatch_semaphore_signal(self->_transactionSemaphore);

  return v9;
}

- (int)executeQuery:(id)query withBind:(id)bind withCancellableResults:(id)results
{
  v75 = *MEMORY[0x1E69E9840];
  queryCopy = query;
  bindCopy = bind;
  resultsCopy = results;
  ppStmt = 0;
  db = self->_db;
  v12 = queryCopy;
  v15 = objc_msgSend_UTF8String(v12, v13, v14);
  v16 = sqlite3_prepare_v2(db, v15, -1, &ppStmt, 0);
  if (v16)
  {
    v17 = v16;
    v18 = sub_1B9D98960();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v56 = sqlite3_errmsg(self->_db);
      selfCopy = self;
      v58 = bindCopy;
      v59 = v56;
      v60 = sqlite3_errcode(selfCopy->_db);
      *buf = 136446466;
      *v74 = v59;
      bindCopy = v58;
      self = selfCopy;
      *&v74[8] = 1024;
      *&v74[10] = v60;
      _os_log_error_impl(&dword_1B9D96000, v18, OS_LOG_TYPE_ERROR, "SQL error '%{public}s' (%1d)", buf, 0x12u);
    }

    v19 = sub_1B9D98960();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109378;
      *v74 = v17;
      *&v74[4] = 2114;
      *&v74[6] = queryCopy;
      _os_log_error_impl(&dword_1B9D96000, v19, OS_LOG_TYPE_ERROR, "Prepare error (%d) on query: %{public}@", buf, 0x12u);
    }

    v20 = MEMORY[0x1E695E0F8];
LABEL_40:
  }

  else
  {
    if (bindCopy)
    {
      bindCopy[2](bindCopy, ppStmt);
    }

    selfCopy2 = self;
    if (resultsCopy && (v21 = ppStmt, (v22 = sqlite3_column_count(ppStmt)) != 0))
    {
      v24 = v22;
      v20 = objc_msgSend_dictionaryWithCapacity_(MEMORY[0x1E695DF90], v23, 2 * v22);
      if (v24 >= 1)
      {
        v69 = bindCopy;
        v70 = queryCopy;
        v25 = 0;
        do
        {
          v26 = sqlite3_column_origin_name(v21, v25);
          v27 = sqlite3_column_name(v21, v25);
          v28 = sqlite3_column_table_name(v21, v25);
          if (v26 && v28)
          {
            v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v29, v28);
            if (objc_msgSend_hasSuffix_(v30, v31, @"s"))
            {
              v34 = objc_msgSend_length(v30, v32, v33);
              v36 = objc_msgSend_substringToIndex_(v30, v35, v34 - 1);

              v30 = v36;
            }

            v37 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v32, v25);
            v39 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v38, @"%@_%s", v30, v26);
            objc_msgSend_setObject_forKeyedSubscript_(v20, v40, v37, v39);
          }

          if (v27)
          {
            v41 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v29, v25);
            v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v42, v27);
            objc_msgSend_setObject_forKeyedSubscript_(v20, v44, v41, v43);
          }

          v25 = (v25 + 1);
        }

        while (v24 != v25);
        bindCopy = v69;
        queryCopy = v70;
      }
    }

    else
    {
      v20 = MEMORY[0x1E695E0F8];
    }

    do
    {
      v45 = sqlite3_step(ppStmt);
      v17 = v45;
      if ((v45 - 102) <= 0xFFFFFFFD)
      {
        v48 = sub_1B9D98960();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          v66 = bindCopy;
          v67 = sqlite3_errmsg(selfCopy2->_db);
          v68 = sqlite3_errcode(selfCopy2->_db);
          *buf = 136446466;
          *v74 = v67;
          bindCopy = v66;
          *&v74[8] = 1024;
          *&v74[10] = v68;
          _os_log_error_impl(&dword_1B9D96000, v48, OS_LOG_TYPE_ERROR, "SQL error '%{public}s' (%1d)", buf, 0x12u);
        }

        v19 = sub_1B9D98960();
        self = selfCopy2;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109378;
          *v74 = v17;
          *&v74[4] = 2114;
          *&v74[6] = queryCopy;
          _os_log_error_impl(&dword_1B9D96000, v19, OS_LOG_TYPE_ERROR, "Step error (%d) on query: %{public}@", buf, 0x12u);
        }

        goto LABEL_40;
      }

      v46 = v45 == 100;
      v47 = 1;
      if (resultsCopy && v17 == 100)
      {
        v47 = resultsCopy[2](resultsCopy, ppStmt, v20);
        v46 = 1;
      }
    }

    while (v46 && (v47 & 1) != 0);
    if (v46)
    {
      v17 = 100;
    }

    if (!(v47 & 1 | !v46))
    {
      v19 = sub_1B9D98960();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1B9D96000, v19, OS_LOG_TYPE_ERROR, "Query canceled", buf, 2u);
      }

      v17 = 4;
      goto LABEL_40;
    }
  }

  v49 = v17;
  if (ppStmt)
  {
    v49 = sqlite3_finalize(ppStmt);
    if (v49)
    {
      v50 = sub_1B9D98960();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        v61 = sqlite3_errmsg(self->_db);
        selfCopy3 = self;
        v63 = bindCopy;
        v64 = v61;
        v65 = sqlite3_errcode(selfCopy3->_db);
        *buf = 136446466;
        *v74 = v64;
        bindCopy = v63;
        *&v74[8] = 1024;
        *&v74[10] = v65;
        _os_log_error_impl(&dword_1B9D96000, v50, OS_LOG_TYPE_ERROR, "SQL error '%{public}s' (%1d)", buf, 0x12u);
      }

      v51 = sub_1B9D98960();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109378;
        *v74 = v49;
        *&v74[4] = 2114;
        *&v74[6] = queryCopy;
        _os_log_error_impl(&dword_1B9D96000, v51, OS_LOG_TYPE_ERROR, "Finalize error (%d) on query: %{public}@", buf, 0x12u);
      }
    }
  }

  if (v17 == 101)
  {
    v52 = v49;
  }

  else
  {
    v52 = v17;
  }

  if (v17)
  {
    v53 = v52;
  }

  else
  {
    v53 = v49;
  }

  v54 = *MEMORY[0x1E69E9840];
  return v53;
}

- (int)executeQuery:(id)query withBind:(id)bind withResults:(id)results
{
  resultsCopy = results;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1B9DC588C;
  v12[3] = &unk_1E7ED8520;
  v13 = resultsCopy;
  v9 = resultsCopy;
  LODWORD(bind) = objc_msgSend_executeQuery_withBind_withCancellableResults_(self, v10, query, bind, v12);

  return bind;
}

- (void)dealloc
{
  db = self->_db;
  if (db)
  {
    sqlite3_close(db);
  }

  v4.receiver = self;
  v4.super_class = SQLDB;
  [(SQLDB *)&v4 dealloc];
}

- (void)setupPermissions
{
  v4 = objc_msgSend_dbURL(self, a2, v2);
  v7 = objc_msgSend_path(v4, v5, v6);
  v8 = v7;
  v11 = objc_msgSend_UTF8String(v8, v9, v10);
  sub_1B9DD1A74(v11);

  v14 = objc_msgSend_shmURL(self, v12, v13);
  v17 = objc_msgSend_path(v14, v15, v16);
  v18 = v17;
  v21 = objc_msgSend_UTF8String(v18, v19, v20);
  sub_1B9DD1A74(v21);

  v31 = objc_msgSend_walURL(self, v22, v23);
  v26 = objc_msgSend_path(v31, v24, v25);
  v27 = v26;
  v30 = objc_msgSend_UTF8String(v27, v28, v29);
  sub_1B9DD1A74(v30);
}

- (BOOL)setupSchema
{
  v2 = objc_msgSend_executeQuery_withBind_withResults_(self, a2, @"CREATE TABLE IF NOT EXISTS settings(name TEXT, value TEXT, PRIMARY KEY (name))", 0, 0);
  if (v2)
  {
    v3 = sub_1B9D98960();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_error_impl(&dword_1B9D96000, v3, OS_LOG_TYPE_ERROR, "Database failed to initialize.", v5, 2u);
    }
  }

  return v2 == 0;
}

- (NSURL)shmURL
{
  v4 = objc_msgSend_path(self->_url, a2, v2);
  v7 = objc_msgSend_stringByDeletingLastPathComponent(v4, v5, v6);

  v10 = objc_msgSend_path(self->_url, v8, v9);
  v13 = objc_msgSend_lastPathComponent(v10, v11, v12);

  v15 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v14, @"%@-shm", v13);
  v17 = objc_msgSend_stringByAppendingPathComponent_(v7, v16, v15);
  v19 = objc_msgSend_fileURLWithPath_isDirectory_(MEMORY[0x1E695DFF8], v18, v17, 0);

  return v19;
}

- (NSURL)walURL
{
  v4 = objc_msgSend_path(self->_url, a2, v2);
  v7 = objc_msgSend_stringByDeletingLastPathComponent(v4, v5, v6);

  v10 = objc_msgSend_path(self->_url, v8, v9);
  v13 = objc_msgSend_lastPathComponent(v10, v11, v12);

  v15 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v14, @"%@-wal", v13);
  v17 = objc_msgSend_stringByAppendingPathComponent_(v7, v16, v15);
  v19 = objc_msgSend_fileURLWithPath_isDirectory_(MEMORY[0x1E695DFF8], v18, v17, 0);

  return v19;
}

- (SQLDB)initWithDatabaseURL:(id)l asReadOnly:(BOOL)only
{
  onlyCopy = only;
  v37 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v33.receiver = self;
  v33.super_class = SQLDB;
  v8 = [(SQLDB *)&v33 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_url, l);
    v10 = dispatch_semaphore_create(1);
    transactionSemaphore = v9->_transactionSemaphore;
    v9->_transactionSemaphore = v10;

    if (!v9->_transactionSemaphore)
    {
      goto LABEL_16;
    }

    url = v9->_url;
    ppDb = 0;
    if (onlyCopy)
    {
      v15 = 65537;
    }

    else
    {
      v15 = 65542;
    }

    v16 = objc_msgSend_path(url, v12, v13);
    v17 = v16;
    v20 = objc_msgSend_UTF8String(v17, v18, v19);
    v21 = sqlite3_open_v2(v20, &ppDb, v15, 0);

    if (v21)
    {
      v24 = sub_1B9D98960();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v36 = v21;
        _os_log_error_impl(&dword_1B9D96000, v24, OS_LOG_TYPE_ERROR, "Error opening DB: %d", buf, 8u);
      }
    }

    db = ppDb;
    v9->_db = ppDb;
    if (!db || (!onlyCopy ? (objc_msgSend_setupPermissions(v9, v22, v23), v26 = sqlite3_db_readonly(v9->_db, 0) == 1, db = v9->_db) : (v26 = 1), (v9->_readonly = v26, sqlite3_busy_timeout(db, 300000), !v9->_readonly) && (objc_msgSend_executeQuery_withBind_withResults_(v9, v27, @"PRAGMA journal_mode = WAL", 0, 0), objc_msgSend_executeQuery_withBind_withResults_(v9, v28, @"PRAGMA foreign_keys = ON", 0, 0), (objc_msgSend_setupSchema(v9, v29, v30) & 1) == 0)))
    {
LABEL_16:

      v9 = 0;
    }
  }

  v31 = *MEMORY[0x1E69E9840];
  return v9;
}

+ (id)databaseWithURL:(id)l
{
  v13 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v5 = sub_1B9D98960();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543362;
    v12 = lCopy;
    _os_log_impl(&dword_1B9D96000, v5, OS_LOG_TYPE_DEFAULT, "DB being loaded from %{public}@", &v11, 0xCu);
  }

  v6 = [self alloc];
  v8 = objc_msgSend_initWithDatabaseURL_(v6, v7, lCopy);

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

@end