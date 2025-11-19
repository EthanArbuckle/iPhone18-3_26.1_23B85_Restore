@interface VMAccountStore
- (VMAccountStore)initWithLabel:(id)a3 accountDir:(id)a4;
- (__CFArray)copyOfAllRecordsWithFlags:(unsigned int)a3 flagsToNotHave:(unsigned int)a4;
- (__CFArray)copyOfAllRecordsWithFlagsInRemoteUIDRange:(unsigned int)a3 flagsToNotHave:(unsigned int)a4 lowUid:(unsigned int)a5 highUid:(unsigned int)a6;
- (__CFArray)copyOfAllRemoteUIDsWithTrashState:(BOOL)a3 includeTemp:(BOOL)a4;
- (__CFArray)copyRecordsWithToken:(__CFString *)a3;
- (__CFArray)copyRecordsWithTokenInMailbox:(__CFString *)a3 mailboxType:(int64_t)a4;
- (id)description;
- (id)getDataFiles;
- (int)copyOfAllRecordsWithFlagsInRemoteUIDRangeByStatement:(unsigned int)a3 flagsToNotHave:(unsigned int)a4 lowUid:(unsigned int)a5 highUid:(unsigned int)a6;
- (int)countOfRecordsWithFlags:(unsigned int)a3 flagsToNotHave:(unsigned int)a4;
- (unsigned)getMailboxUsage;
- (unsigned)getRecordIdentifier:(void *)a3;
- (unsigned)getUIDValidity:(__CFString *)a3;
- (void)copyFirstRecordWithToken:(__CFString *)a3;
- (void)copyFirstRecordWithTokenInMailbox:(__CFString *)a3 mailboxType:(int64_t)a4;
- (void)copyRecordWithIdentifier:(unsigned int)a3;
- (void)copyRecordWithRemoteUID:(unsigned int)a3 flagsToHave:(unsigned int)a4 flagsToNotHave:(unsigned int)a5;
- (void)createAndAddRecord:(unsigned int)a3 date:(int)a4 token:(id)a5 sender:(id)a6 callbackNumber:(id)a7 duration:(int)a8 expirationDate:(int)a9 flags:(int)a10 receiver:(id)a11;
- (void)dealloc;
- (void)getRecordProperty:(void *)a3 property:(int)a4;
- (void)getRecordProperty_sync:(void *)a3 property:(int)a4;
- (void)removeAllRecords;
- (void)removeRecord:(void *)a3;
- (void)resetLocalFlag:(void *)a3 flag:(unsigned int)a4;
- (void)save;
- (void)setLocalFlag:(void *)a3 flag:(unsigned int)a4;
- (void)setMailboxUsage:(unsigned int)a3;
- (void)setRecordProperty:(void *)a3 property:(int)a4 value:(void *)a5;
- (void)setUIDValidity:(__CFString *)a3 uidValidity:(unsigned int)a4;
@end

@implementation VMAccountStore

- (VMAccountStore)initWithLabel:(id)a3 accountDir:(id)a4
{
  v6 = a3;
  v7 = a4;
  v39.receiver = self;
  v39.super_class = VMAccountStore;
  v8 = [(VMAccountStore *)&v39 init];
  if (v8)
  {
    v9 = dispatch_queue_create("com.apple.voicemail.VMAccountStore.queue", 0);
    queue = v8->_queue;
    v8->_queue = v9;

    [(VMAccountStore *)v8 setLabel:v6];
    [(VMAccountStore *)v8 setAccountDir:v7];
    v12 = sub_1000856B8(v7, v11);
    [(VMAccountStore *)v8 setDbfile:v12];

    v13 = +[NSFileManager defaultManager];
    v14 = [(VMAccountStore *)v8 dbfile];
    v15 = [v14 path];
    v16 = [v13 fileExistsAtPath:v15];

    if ((v16 & 1) == 0)
    {
      v17 = +[NSFileManager defaultManager];
      v18 = [(VMAccountStore *)v8 accountDir];
      v19 = [v18 path];
      v38 = 0;
      v20 = [v17 createDirectoryAtPath:v19 withIntermediateDirectories:1 attributes:0 error:&v38];
      v21 = v38;

      if ((v20 & 1) == 0)
      {
        v22 = vm_vmd_log();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          sub_10009E3BC(v8, v21, v22);
        }
      }
    }

    v23 = [(VMAccountStore *)v8 dbfile];
    [v23 path];
    v8->store = CSDBRecordStoreCreateWithPath();

    if (v8->store)
    {
      CSDBRecordStoreRegisterClass();
      store = v8->store;
      CSDBRecordStoreSetSetupHandler();
      v25 = v8->store;
      Database = CSDBRecordStoreGetDatabase();
      if (Database)
      {
        v27 = Database;
        CSDBSqliteDatabaseSetDataProtectionClass();
        CSDBSqliteDatabaseSetVersion();
        v28 = CSDBSqliteDatabaseConnectionForReading();
        v29 = vm_vmd_log();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v30 = *v27;
          *buf = 134218498;
          v41 = v27;
          v42 = 2112;
          v43 = v30;
          v44 = 2048;
          v45 = v28;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Creating account db %p path %@, connection %p", buf, 0x20u);
        }

        v31 = CSDBSqliteDatabaseCopyValueForProperty();
        if (v31)
        {
          CFRelease(v31);
        }

        v32 = 0;
        v33 = &off_1000EFB58;
        do
        {
          v34 = *v33;
          dword_10010DA64[v32] = CSDBRecordIndexOfPropertyNamed();
          v35 = vm_vmd_log();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            v36 = dword_10010DA64[v32];
            *buf = 134218754;
            v41 = v32;
            v42 = 2080;
            v43 = v34;
            v44 = 2048;
            v45 = v32;
            v46 = 1024;
            v47 = v36;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "[%lu] Property ID of %s (%lu) is %d", buf, 0x26u);
          }

          ++v32;
          v33 += 5;
        }

        while (v32 != 11);
      }
    }
  }

  return v8;
}

- (void)dealloc
{
  store = self->store;
  CSDBRecordStoreDestroy();
  [(VMAccountStore *)self setLabel:0];
  [(VMAccountStore *)self setAccountDir:0];
  [(VMAccountStore *)self setDbfile:0];
  v4.receiver = self;
  v4.super_class = VMAccountStore;
  [(VMAccountStore *)&v4 dealloc];
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = [(VMAccountStore *)self label];
  v5 = [NSString stringWithFormat:@"<%@ %p label=%@>", v3, self, v4];

  return v5;
}

- (void)getRecordProperty_sync:(void *)a3 property:(int)a4
{
  if (!a3)
  {
    return 0;
  }

  v4 = dword_10010DA64[a4];
  return CSDBRecordGetProperty();
}

- (void)getRecordProperty:(void *)a3 property:(int)a4
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v7 = [(VMAccountStore *)self queue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000900D8;
  v10[3] = &unk_1000EFD18;
  v10[4] = self;
  v10[5] = &v12;
  v10[6] = a3;
  v11 = a4;
  dispatch_sync(v7, v10);

  v8 = v13[3];
  _Block_object_dispose(&v12, 8);
  return v8;
}

- (void)setRecordProperty:(void *)a3 property:(int)a4 value:(void *)a5
{
  v9 = [(VMAccountStore *)self queue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000901D8;
  v10[3] = &unk_1000EFD40;
  v10[4] = self;
  v10[5] = a3;
  v11 = a4;
  v10[6] = a5;
  dispatch_sync(v9, v10);
}

- (unsigned)getRecordIdentifier:(void *)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v4 = [(VMAccountStore *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000902D0;
  v6[3] = &unk_1000EFD68;
  v6[4] = &v7;
  v6[5] = a3;
  dispatch_sync(v4, v6);

  LODWORD(a3) = *(v8 + 6);
  _Block_object_dispose(&v7, 8);
  return a3;
}

- (void)setLocalFlag:(void *)a3 flag:(unsigned int)a4
{
  v7 = [(VMAccountStore *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000903A0;
  block[3] = &unk_1000EFD90;
  block[4] = self;
  block[5] = a3;
  v9 = a4;
  dispatch_sync(v7, block);
}

- (void)resetLocalFlag:(void *)a3 flag:(unsigned int)a4
{
  v7 = [(VMAccountStore *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000904A0;
  block[3] = &unk_1000EFD90;
  block[4] = self;
  block[5] = a3;
  v9 = a4;
  dispatch_sync(v7, block);
}

- (void)createAndAddRecord:(unsigned int)a3 date:(int)a4 token:(id)a5 sender:(id)a6 callbackNumber:(id)a7 duration:(int)a8 expirationDate:(int)a9 flags:(int)a10 receiver:(id)a11
{
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a11;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  v21 = [(VMAccountStore *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009069C;
  block[3] = &unk_1000EFDB8;
  v34 = a3;
  v35 = a4;
  block[4] = self;
  v29 = v17;
  v30 = v18;
  v31 = v19;
  v36 = a8;
  v37 = a9;
  v38 = a10;
  v32 = v20;
  v33 = &v39;
  v22 = v20;
  v23 = v19;
  v24 = v18;
  v25 = v17;
  dispatch_sync(v21, block);

  v26 = v40[3];
  _Block_object_dispose(&v39, 8);
  return v26;
}

- (void)removeRecord:(void *)a3
{
  v5 = [(VMAccountStore *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000909D0;
  v6[3] = &unk_1000EEF10;
  v6[4] = self;
  v6[5] = a3;
  dispatch_sync(v5, v6);
}

- (id)getDataFiles
{
  v3 = +[NSFileManager defaultManager];
  v4 = [(VMAccountStore *)self accountDir];
  v5 = [v4 path];
  v14 = 0;
  v6 = [v3 contentsOfDirectoryAtPath:v5 error:&v14];
  v7 = v14;

  if (v7)
  {
    v8 = vm_vmd_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(VMAccountStore *)self accountDir];
      v10 = [v9 path];
      *buf = 138412546;
      v16 = v10;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Can't retrieve the contents of directory %@, error %@", buf, 0x16u);
    }
  }

  v11 = [NSPredicate predicateWithBlock:&stru_1000EFDD8];
  v12 = [v6 filteredArrayUsingPredicate:v11];

  return v12;
}

- (void)removeAllRecords
{
  v3 = [(VMAccountStore *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100090DB4;
  block[3] = &unk_1000EE5B8;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (void)copyRecordWithIdentifier:(unsigned int)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v5 = [(VMAccountStore *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000912DC;
  block[3] = &unk_1000EFE00;
  block[4] = self;
  block[5] = &v10;
  v9 = a3;
  dispatch_sync(v5, block);

  v6 = v11[3];
  _Block_object_dispose(&v10, 8);
  return v6;
}

- (void)copyRecordWithRemoteUID:(unsigned int)a3 flagsToHave:(unsigned int)a4 flagsToNotHave:(unsigned int)a5
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v9 = [(VMAccountStore *)self queue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100091420;
  v12[3] = &unk_1000EFD18;
  v12[4] = self;
  v12[5] = &v16;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  dispatch_sync(v9, v12);

  v10 = v17[3];
  _Block_object_dispose(&v16, 8);
  return v10;
}

- (int)copyOfAllRecordsWithFlagsInRemoteUIDRangeByStatement:(unsigned int)a3 flagsToNotHave:(unsigned int)a4 lowUid:(unsigned int)a5 highUid:(unsigned int)a6
{
  ppDb = 0;
  v10 = [(VMAccountStore *)self dbfile];
  v11 = [v10 path];
  v12 = sqlite3_open([v11 UTF8String], &ppDb);

  if (v12)
  {
    return 0;
  }

  v14 = [NSString stringWithFormat:@"SELECT ROWID, remote_uid, date, token, sender, callback_num, duration, expiration, trashed_date, flags, receiver FROM voicemail WHERE (flags & ?) = ? AND remote_uid >= ? AND remote_uid <= ? ORDER BY remote_uid"];;
  ppStmt = 0;
  if (sqlite3_prepare_v2(ppDb, [v14 UTF8String], -1, &ppStmt, 0))
  {
    i = 0;
  }

  else
  {
    sqlite3_bind_int(ppStmt, 1, a4 | a3);
    sqlite3_bind_int(ppStmt, 2, a3);
    sqlite3_bind_int(ppStmt, 3, a5);
    sqlite3_bind_int(ppStmt, 4, a6);
    for (i = 0; ; ++i)
    {
      v15 = sqlite3_step(ppStmt);
      if (v15 != 100)
      {
        break;
      }

      v16 = sqlite3_column_int(ppStmt, 0);
      v17 = sqlite3_column_int(ppStmt, 1);
      v18 = sqlite3_column_int(ppStmt, 2);
      v19 = sqlite3_column_text(ppStmt, 3);
      v20 = sqlite3_column_text(ppStmt, 4);
      v21 = sqlite3_column_int(ppStmt, 9);
      v22 = vm_vmd_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67110402;
        *v29 = v16;
        *&v29[4] = 1024;
        *&v29[6] = v17;
        v30 = 1024;
        v31 = v18;
        v32 = 2080;
        v33 = v19;
        v34 = 2080;
        v35 = v20;
        v36 = 1024;
        v37 = v21;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%02d|%d|%d|%s|%s|%d", buf, 0x2Eu);
      }
    }

    if (v15 != 101)
    {
      v23 = vm_vmd_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = sqlite3_errmsg(ppDb);
        *buf = 136315138;
        *v29 = v24;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Step failure: %s", buf, 0xCu);
      }
    }
  }

  sqlite3_finalize(ppStmt);
  sqlite3_close(ppDb);

  return i;
}

- (__CFArray)copyOfAllRecordsWithFlagsInRemoteUIDRange:(unsigned int)a3 flagsToNotHave:(unsigned int)a4 lowUid:(unsigned int)a5 highUid:(unsigned int)a6
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v11 = [(VMAccountStore *)self queue];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100091858;
  v14[3] = &unk_1000EFE28;
  v14[4] = self;
  v14[5] = &v19;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  dispatch_sync(v11, v14);

  v12 = v20[3];
  _Block_object_dispose(&v19, 8);
  return v12;
}

- (__CFArray)copyOfAllRecordsWithFlags:(unsigned int)a3 flagsToNotHave:(unsigned int)a4
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v7 = [(VMAccountStore *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100091AD8;
  block[3] = &unk_1000EFE50;
  block[4] = self;
  block[5] = &v13;
  v11 = a3;
  v12 = a4;
  dispatch_sync(v7, block);

  v8 = v14[3];
  _Block_object_dispose(&v13, 8);
  return v8;
}

- (int)countOfRecordsWithFlags:(unsigned int)a3 flagsToNotHave:(unsigned int)a4
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v7 = [(VMAccountStore *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100091C18;
  block[3] = &unk_1000EFE50;
  block[4] = self;
  block[5] = &v13;
  v11 = a3;
  v12 = a4;
  dispatch_sync(v7, block);

  v8 = *(v14 + 6);
  _Block_object_dispose(&v13, 8);
  return v8;
}

- (__CFArray)copyOfAllRemoteUIDsWithTrashState:(BOOL)a3 includeTemp:(BOOL)a4
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v7 = [(VMAccountStore *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100091D44;
  block[3] = &unk_1000EFE78;
  block[4] = self;
  block[5] = &v13;
  v11 = a3;
  v12 = a4;
  dispatch_sync(v7, block);

  v8 = v14[3];
  _Block_object_dispose(&v13, 8);
  return v8;
}

- (void)copyFirstRecordWithTokenInMailbox:(__CFString *)a3 mailboxType:(int64_t)a4
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v7 = [(VMAccountStore *)self queue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100091E74;
  v10[3] = &unk_1000EFE28;
  v10[4] = self;
  v10[5] = &v11;
  v10[6] = a3;
  v10[7] = a4;
  dispatch_sync(v7, v10);

  v8 = v12[3];
  _Block_object_dispose(&v11, 8);
  return v8;
}

- (__CFArray)copyRecordsWithTokenInMailbox:(__CFString *)a3 mailboxType:(int64_t)a4
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v7 = [(VMAccountStore *)self queue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100091FB0;
  v10[3] = &unk_1000EFE28;
  v10[4] = self;
  v10[5] = &v11;
  v10[6] = a3;
  v10[7] = a4;
  dispatch_sync(v7, v10);

  v8 = v12[3];
  _Block_object_dispose(&v11, 8);
  return v8;
}

- (void)copyFirstRecordWithToken:(__CFString *)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v5 = [(VMAccountStore *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000920E0;
  block[3] = &unk_1000EFE50;
  block[4] = self;
  block[5] = &v9;
  block[6] = a3;
  dispatch_sync(v5, block);

  v6 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v6;
}

- (__CFArray)copyRecordsWithToken:(__CFString *)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v5 = [(VMAccountStore *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100092214;
  block[3] = &unk_1000EFE50;
  block[4] = self;
  block[5] = &v9;
  block[6] = a3;
  dispatch_sync(v5, block);

  v6 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v6;
}

- (unsigned)getUIDValidity:(__CFString *)a3
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v5 = [(VMAccountStore *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100092348;
  block[3] = &unk_1000EFE50;
  block[4] = self;
  block[5] = &v8;
  block[6] = a3;
  dispatch_sync(v5, block);

  LODWORD(a3) = *(v9 + 6);
  _Block_object_dispose(&v8, 8);
  return a3;
}

- (void)setUIDValidity:(__CFString *)a3 uidValidity:(unsigned int)a4
{
  v7 = [(VMAccountStore *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100092420;
  block[3] = &unk_1000EFD90;
  block[4] = self;
  block[5] = a3;
  v9 = a4;
  dispatch_sync(v7, block);
}

- (unsigned)getMailboxUsage
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(VMAccountStore *)self queue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100092538;
  v5[3] = &unk_1000ED428;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LODWORD(v2) = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v2;
}

- (void)setMailboxUsage:(unsigned int)a3
{
  v5 = [(VMAccountStore *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100092608;
  v6[3] = &unk_1000EFEA0;
  v6[4] = self;
  v7 = a3;
  dispatch_sync(v5, v6);
}

- (void)save
{
  v3 = [(VMAccountStore *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000926CC;
  block[3] = &unk_1000EE5B8;
  block[4] = self;
  dispatch_sync(v3, block);
}

@end