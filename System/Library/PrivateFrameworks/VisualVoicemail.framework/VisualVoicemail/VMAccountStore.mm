@interface VMAccountStore
- (VMAccountStore)initWithLabel:(id)label accountDir:(id)dir;
- (__CFArray)copyOfAllRecordsWithFlags:(unsigned int)flags flagsToNotHave:(unsigned int)have;
- (__CFArray)copyOfAllRecordsWithFlagsInRemoteUIDRange:(unsigned int)range flagsToNotHave:(unsigned int)have lowUid:(unsigned int)uid highUid:(unsigned int)highUid;
- (__CFArray)copyOfAllRemoteUIDsWithTrashState:(BOOL)state includeTemp:(BOOL)temp;
- (__CFArray)copyRecordsWithToken:(__CFString *)token;
- (__CFArray)copyRecordsWithTokenInMailbox:(__CFString *)mailbox mailboxType:(int64_t)type;
- (id)description;
- (id)getDataFiles;
- (int)copyOfAllRecordsWithFlagsInRemoteUIDRangeByStatement:(unsigned int)statement flagsToNotHave:(unsigned int)have lowUid:(unsigned int)uid highUid:(unsigned int)highUid;
- (int)countOfRecordsWithFlags:(unsigned int)flags flagsToNotHave:(unsigned int)have;
- (unsigned)getMailboxUsage;
- (unsigned)getRecordIdentifier:(void *)identifier;
- (unsigned)getUIDValidity:(__CFString *)validity;
- (void)copyFirstRecordWithToken:(__CFString *)token;
- (void)copyFirstRecordWithTokenInMailbox:(__CFString *)mailbox mailboxType:(int64_t)type;
- (void)copyRecordWithIdentifier:(unsigned int)identifier;
- (void)copyRecordWithRemoteUID:(unsigned int)d flagsToHave:(unsigned int)have flagsToNotHave:(unsigned int)notHave;
- (void)createAndAddRecord:(unsigned int)record date:(int)date token:(id)token sender:(id)sender callbackNumber:(id)number duration:(int)duration expirationDate:(int)expirationDate flags:(int)self0 receiver:(id)self1;
- (void)dealloc;
- (void)getRecordProperty:(void *)property property:(int)a4;
- (void)getRecordProperty_sync:(void *)property_sync property:(int)property;
- (void)removeAllRecords;
- (void)removeRecord:(void *)record;
- (void)resetLocalFlag:(void *)flag flag:(unsigned int)a4;
- (void)save;
- (void)setLocalFlag:(void *)flag flag:(unsigned int)a4;
- (void)setMailboxUsage:(unsigned int)usage;
- (void)setRecordProperty:(void *)property property:(int)a4 value:(void *)value;
- (void)setUIDValidity:(__CFString *)validity uidValidity:(unsigned int)uidValidity;
@end

@implementation VMAccountStore

- (VMAccountStore)initWithLabel:(id)label accountDir:(id)dir
{
  labelCopy = label;
  dirCopy = dir;
  v39.receiver = self;
  v39.super_class = VMAccountStore;
  v8 = [(VMAccountStore *)&v39 init];
  if (v8)
  {
    v9 = dispatch_queue_create("com.apple.voicemail.VMAccountStore.queue", 0);
    queue = v8->_queue;
    v8->_queue = v9;

    [(VMAccountStore *)v8 setLabel:labelCopy];
    [(VMAccountStore *)v8 setAccountDir:dirCopy];
    v12 = sub_1000856B8(dirCopy, v11);
    [(VMAccountStore *)v8 setDbfile:v12];

    v13 = +[NSFileManager defaultManager];
    dbfile = [(VMAccountStore *)v8 dbfile];
    path = [dbfile path];
    v16 = [v13 fileExistsAtPath:path];

    if ((v16 & 1) == 0)
    {
      v17 = +[NSFileManager defaultManager];
      accountDir = [(VMAccountStore *)v8 accountDir];
      path2 = [accountDir path];
      v38 = 0;
      v20 = [v17 createDirectoryAtPath:path2 withIntermediateDirectories:1 attributes:0 error:&v38];
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

    dbfile2 = [(VMAccountStore *)v8 dbfile];
    [dbfile2 path];
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
  label = [(VMAccountStore *)self label];
  v5 = [NSString stringWithFormat:@"<%@ %p label=%@>", v3, self, label];

  return v5;
}

- (void)getRecordProperty_sync:(void *)property_sync property:(int)property
{
  if (!property_sync)
  {
    return 0;
  }

  v4 = dword_10010DA64[property];
  return CSDBRecordGetProperty();
}

- (void)getRecordProperty:(void *)property property:(int)a4
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  queue = [(VMAccountStore *)self queue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000900D8;
  v10[3] = &unk_1000EFD18;
  v10[4] = self;
  v10[5] = &v12;
  v10[6] = property;
  v11 = a4;
  dispatch_sync(queue, v10);

  v8 = v13[3];
  _Block_object_dispose(&v12, 8);
  return v8;
}

- (void)setRecordProperty:(void *)property property:(int)a4 value:(void *)value
{
  queue = [(VMAccountStore *)self queue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000901D8;
  v10[3] = &unk_1000EFD40;
  v10[4] = self;
  v10[5] = property;
  v11 = a4;
  v10[6] = value;
  dispatch_sync(queue, v10);
}

- (unsigned)getRecordIdentifier:(void *)identifier
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  queue = [(VMAccountStore *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000902D0;
  v6[3] = &unk_1000EFD68;
  v6[4] = &v7;
  v6[5] = identifier;
  dispatch_sync(queue, v6);

  LODWORD(identifier) = *(v8 + 6);
  _Block_object_dispose(&v7, 8);
  return identifier;
}

- (void)setLocalFlag:(void *)flag flag:(unsigned int)a4
{
  queue = [(VMAccountStore *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000903A0;
  block[3] = &unk_1000EFD90;
  block[4] = self;
  block[5] = flag;
  v9 = a4;
  dispatch_sync(queue, block);
}

- (void)resetLocalFlag:(void *)flag flag:(unsigned int)a4
{
  queue = [(VMAccountStore *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000904A0;
  block[3] = &unk_1000EFD90;
  block[4] = self;
  block[5] = flag;
  v9 = a4;
  dispatch_sync(queue, block);
}

- (void)createAndAddRecord:(unsigned int)record date:(int)date token:(id)token sender:(id)sender callbackNumber:(id)number duration:(int)duration expirationDate:(int)expirationDate flags:(int)self0 receiver:(id)self1
{
  tokenCopy = token;
  senderCopy = sender;
  numberCopy = number;
  receiverCopy = receiver;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  queue = [(VMAccountStore *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009069C;
  block[3] = &unk_1000EFDB8;
  recordCopy = record;
  dateCopy = date;
  block[4] = self;
  v29 = tokenCopy;
  v30 = senderCopy;
  v31 = numberCopy;
  durationCopy = duration;
  expirationDateCopy = expirationDate;
  flagsCopy = flags;
  v32 = receiverCopy;
  v33 = &v39;
  v22 = receiverCopy;
  v23 = numberCopy;
  v24 = senderCopy;
  v25 = tokenCopy;
  dispatch_sync(queue, block);

  v26 = v40[3];
  _Block_object_dispose(&v39, 8);
  return v26;
}

- (void)removeRecord:(void *)record
{
  queue = [(VMAccountStore *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000909D0;
  v6[3] = &unk_1000EEF10;
  v6[4] = self;
  v6[5] = record;
  dispatch_sync(queue, v6);
}

- (id)getDataFiles
{
  v3 = +[NSFileManager defaultManager];
  accountDir = [(VMAccountStore *)self accountDir];
  path = [accountDir path];
  v14 = 0;
  v6 = [v3 contentsOfDirectoryAtPath:path error:&v14];
  v7 = v14;

  if (v7)
  {
    v8 = vm_vmd_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      accountDir2 = [(VMAccountStore *)self accountDir];
      path2 = [accountDir2 path];
      *buf = 138412546;
      v16 = path2;
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
  queue = [(VMAccountStore *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100090DB4;
  block[3] = &unk_1000EE5B8;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)copyRecordWithIdentifier:(unsigned int)identifier
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  queue = [(VMAccountStore *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000912DC;
  block[3] = &unk_1000EFE00;
  block[4] = self;
  block[5] = &v10;
  identifierCopy = identifier;
  dispatch_sync(queue, block);

  v6 = v11[3];
  _Block_object_dispose(&v10, 8);
  return v6;
}

- (void)copyRecordWithRemoteUID:(unsigned int)d flagsToHave:(unsigned int)have flagsToNotHave:(unsigned int)notHave
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  queue = [(VMAccountStore *)self queue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100091420;
  v12[3] = &unk_1000EFD18;
  v12[4] = self;
  v12[5] = &v16;
  dCopy = d;
  haveCopy = have;
  notHaveCopy = notHave;
  dispatch_sync(queue, v12);

  v10 = v17[3];
  _Block_object_dispose(&v16, 8);
  return v10;
}

- (int)copyOfAllRecordsWithFlagsInRemoteUIDRangeByStatement:(unsigned int)statement flagsToNotHave:(unsigned int)have lowUid:(unsigned int)uid highUid:(unsigned int)highUid
{
  ppDb = 0;
  dbfile = [(VMAccountStore *)self dbfile];
  path = [dbfile path];
  v12 = sqlite3_open([path UTF8String], &ppDb);

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
    sqlite3_bind_int(ppStmt, 1, have | statement);
    sqlite3_bind_int(ppStmt, 2, statement);
    sqlite3_bind_int(ppStmt, 3, uid);
    sqlite3_bind_int(ppStmt, 4, highUid);
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

- (__CFArray)copyOfAllRecordsWithFlagsInRemoteUIDRange:(unsigned int)range flagsToNotHave:(unsigned int)have lowUid:(unsigned int)uid highUid:(unsigned int)highUid
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  queue = [(VMAccountStore *)self queue];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100091858;
  v14[3] = &unk_1000EFE28;
  v14[4] = self;
  v14[5] = &v19;
  rangeCopy = range;
  haveCopy = have;
  uidCopy = uid;
  highUidCopy = highUid;
  dispatch_sync(queue, v14);

  v12 = v20[3];
  _Block_object_dispose(&v19, 8);
  return v12;
}

- (__CFArray)copyOfAllRecordsWithFlags:(unsigned int)flags flagsToNotHave:(unsigned int)have
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  queue = [(VMAccountStore *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100091AD8;
  block[3] = &unk_1000EFE50;
  block[4] = self;
  block[5] = &v13;
  flagsCopy = flags;
  haveCopy = have;
  dispatch_sync(queue, block);

  v8 = v14[3];
  _Block_object_dispose(&v13, 8);
  return v8;
}

- (int)countOfRecordsWithFlags:(unsigned int)flags flagsToNotHave:(unsigned int)have
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  queue = [(VMAccountStore *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100091C18;
  block[3] = &unk_1000EFE50;
  block[4] = self;
  block[5] = &v13;
  flagsCopy = flags;
  haveCopy = have;
  dispatch_sync(queue, block);

  v8 = *(v14 + 6);
  _Block_object_dispose(&v13, 8);
  return v8;
}

- (__CFArray)copyOfAllRemoteUIDsWithTrashState:(BOOL)state includeTemp:(BOOL)temp
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  queue = [(VMAccountStore *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100091D44;
  block[3] = &unk_1000EFE78;
  block[4] = self;
  block[5] = &v13;
  stateCopy = state;
  tempCopy = temp;
  dispatch_sync(queue, block);

  v8 = v14[3];
  _Block_object_dispose(&v13, 8);
  return v8;
}

- (void)copyFirstRecordWithTokenInMailbox:(__CFString *)mailbox mailboxType:(int64_t)type
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  queue = [(VMAccountStore *)self queue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100091E74;
  v10[3] = &unk_1000EFE28;
  v10[4] = self;
  v10[5] = &v11;
  v10[6] = mailbox;
  v10[7] = type;
  dispatch_sync(queue, v10);

  v8 = v12[3];
  _Block_object_dispose(&v11, 8);
  return v8;
}

- (__CFArray)copyRecordsWithTokenInMailbox:(__CFString *)mailbox mailboxType:(int64_t)type
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  queue = [(VMAccountStore *)self queue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100091FB0;
  v10[3] = &unk_1000EFE28;
  v10[4] = self;
  v10[5] = &v11;
  v10[6] = mailbox;
  v10[7] = type;
  dispatch_sync(queue, v10);

  v8 = v12[3];
  _Block_object_dispose(&v11, 8);
  return v8;
}

- (void)copyFirstRecordWithToken:(__CFString *)token
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  queue = [(VMAccountStore *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000920E0;
  block[3] = &unk_1000EFE50;
  block[4] = self;
  block[5] = &v9;
  block[6] = token;
  dispatch_sync(queue, block);

  v6 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v6;
}

- (__CFArray)copyRecordsWithToken:(__CFString *)token
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  queue = [(VMAccountStore *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100092214;
  block[3] = &unk_1000EFE50;
  block[4] = self;
  block[5] = &v9;
  block[6] = token;
  dispatch_sync(queue, block);

  v6 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v6;
}

- (unsigned)getUIDValidity:(__CFString *)validity
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  queue = [(VMAccountStore *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100092348;
  block[3] = &unk_1000EFE50;
  block[4] = self;
  block[5] = &v8;
  block[6] = validity;
  dispatch_sync(queue, block);

  LODWORD(validity) = *(v9 + 6);
  _Block_object_dispose(&v8, 8);
  return validity;
}

- (void)setUIDValidity:(__CFString *)validity uidValidity:(unsigned int)uidValidity
{
  queue = [(VMAccountStore *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100092420;
  block[3] = &unk_1000EFD90;
  block[4] = self;
  block[5] = validity;
  uidValidityCopy = uidValidity;
  dispatch_sync(queue, block);
}

- (unsigned)getMailboxUsage
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = [(VMAccountStore *)self queue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100092538;
  v5[3] = &unk_1000ED428;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(queue, v5);

  LODWORD(selfCopy) = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

- (void)setMailboxUsage:(unsigned int)usage
{
  queue = [(VMAccountStore *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100092608;
  v6[3] = &unk_1000EFEA0;
  v6[4] = self;
  usageCopy = usage;
  dispatch_sync(queue, v6);
}

- (void)save
{
  queue = [(VMAccountStore *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000926CC;
  block[3] = &unk_1000EE5B8;
  block[4] = self;
  dispatch_sync(queue, block);
}

@end