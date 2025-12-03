@interface ABSContactsShadow
+ (id)instance;
- (ABSContactsShadow)init;
- (BOOL)_createDb;
- (BOOL)_execSql:(const char *)sql;
- (BOOL)_prepareStatements;
- (BOOL)contains:(id)contains;
- (int64_t)_userSchema;
- (void)_closeDb;
- (void)_openDb;
- (void)beginTransaction;
- (void)commitTransaction;
- (void)dealloc;
- (void)insert:(id)insert;
- (void)purge;
- (void)remove:(id)remove;
- (void)rollbackTransaction;
@end

@implementation ABSContactsShadow

+ (id)instance
{
  if (qword_100071C58 != -1)
  {
    sub_10003A728();
  }

  v3 = qword_100071C60;

  return v3;
}

- (ABSContactsShadow)init
{
  v3.receiver = self;
  v3.super_class = ABSContactsShadow;
  result = [(ABSContactsShadow *)&v3 init];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (void)_openDb
{
  v3 = [ABSDatabaseFileManager syncStateDBPathFor:@"ABSABShadow.db"];
  uTF8String = [v3 UTF8String];

  if (!sqlite3_open_v2(uTF8String, &self->_db, 6, 0) && [(ABSContactsShadow *)self _createDb])
  {

    [(ABSContactsShadow *)self _prepareStatements];
  }
}

- (void)_closeDb
{
  v3 = os_transaction_create();
  v4 = 0;
  statements = self->statements;
  do
  {
    v6 = statements[v4];
    if (v6)
    {
      sqlite3_finalize(v6);
      statements[v4] = 0;
    }

    ++v4;
  }

  while (v4 != 4);
  v7 = sqlite3_close(self->_db);
  self->_db = 0;
  if (v7 && os_log_type_enabled(*(qword_100071D00 + 8), OS_LOG_TYPE_ERROR))
  {
    sub_10003A73C();
  }
}

- (void)dealloc
{
  if (self->_db)
  {
    [(ABSContactsShadow *)self _closeDb];
  }

  v3.receiver = self;
  v3.super_class = ABSContactsShadow;
  [(ABSContactsShadow *)&v3 dealloc];
}

- (BOOL)_createDb
{
  [(ABSContactsShadow *)self _execSql:"PRAGMA journal_mode=WAL;"];
  _userSchema = [(ABSContactsShadow *)self _userSchema];
  switch(_userSchema)
  {
    case 2:
      goto LABEL_6;
    case 1:
LABEL_5:
      [(ABSContactsShadow *)self _execSql:"alter table ABSyncState add column account_id TEXT;"];
      [(ABSContactsShadow *)self _execSql:"pragma user_version=2;"];
LABEL_6:
      [(ABSContactsShadow *)self _execSql:"drop table if exists ABSyncState"];
      [(ABSContactsShadow *)self _execSql:"create table if not exists SyncState (guid TEXT UNIQUE)"];
      [(ABSContactsShadow *)self _execSql:"pragma user_version=3;"];
      return 1;
    case 0:
      [(ABSContactsShadow *)self _execSql:"create table if not exists ABSyncState (guid TEXT, hash INT);"];
      [(ABSContactsShadow *)self _execSql:"create unique index if not exists ABGUIDIndex on ABSyncState (guid);"];
      [(ABSContactsShadow *)self _execSql:"alter table ABSyncState add column mark INT;"];
      goto LABEL_5;
  }

  return 1;
}

- (BOOL)_execSql:(const char *)sql
{
  errmsg = 0;
  os_unfair_lock_lock(&self->_lock);
  v5 = sqlite3_exec(self->_db, sql, 0, 0, &errmsg);
  if (v5)
  {
    v6 = *(qword_100071D00 + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10003A7B0(&errmsg, v5, v6);
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  return v5 == 0;
}

- (BOOL)_prepareStatements
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001B708;
  v5[3] = &unk_10005D418;
  v5[4] = self;
  v2 = objc_retainBlock(v5);
  if ((v2[2])(v2, 0, "insert or replace into SyncState (guid) values (?)") && (v2[2])(v2, 1, "delete from SyncState where guid = ?") && (v2[2])(v2, 2, "select count() from SyncState where guid = ?"))
  {
    v3 = (v2[2])(v2, 3, "delete from SyncState");
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)insert:(id)insert
{
  if (insert)
  {
    v4 = self->statements[0];
    uTF8String = [insert UTF8String];
    os_unfair_lock_lock(&self->_lock);
    sqlite3_bind_text(v4, 1, uTF8String, -1, 0xFFFFFFFFFFFFFFFFLL);
    if (sqlite3_step(v4) != 101 && os_log_type_enabled(*(qword_100071D00 + 8), OS_LOG_TYPE_ERROR))
    {
      sub_10003A8B0();
    }

    sqlite3_reset(v4);
    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)remove:(id)remove
{
  if (remove)
  {
    v4 = self->statements[1];
    uTF8String = [remove UTF8String];
    os_unfair_lock_lock(&self->_lock);
    sqlite3_bind_text(v4, 1, uTF8String, -1, 0xFFFFFFFFFFFFFFFFLL);
    if (sqlite3_step(v4) != 101 && os_log_type_enabled(*(qword_100071D00 + 8), OS_LOG_TYPE_ERROR))
    {
      sub_10003A924();
    }

    sqlite3_reset(v4);
    os_unfair_lock_unlock(&self->_lock);
  }
}

- (BOOL)contains:(id)contains
{
  v4 = self->statements[2];
  containsCopy = contains;
  os_unfair_lock_lock(&self->_lock);
  uTF8String = [containsCopy UTF8String];

  sqlite3_bind_text(v4, 1, uTF8String, -1, 0xFFFFFFFFFFFFFFFFLL);
  v7 = sqlite3_step(v4) == 100 && sqlite3_column_int(v4, 0) != 0;
  sqlite3_reset(v4);
  os_unfair_lock_unlock(&self->_lock);
  return v7;
}

- (void)purge
{
  v3 = self->statements[3];
  os_unfair_lock_lock(&self->_lock);
  sqlite3_step(v3);
  sqlite3_reset(v3);

  os_unfair_lock_unlock(&self->_lock);
}

- (int64_t)_userSchema
{
  ppStmt = 0;
  if (sqlite3_prepare_v2(self->_db, "pragma user_version;", -1, &ppStmt, 0))
  {
    if (os_log_type_enabled(*(qword_100071D00 + 8), OS_LOG_TYPE_ERROR))
    {
      sub_10003A998();
    }

    return 0;
  }

  else
  {
    if (sqlite3_step(ppStmt) == 100)
    {
      v2 = sqlite3_column_int64(ppStmt, 0);
    }

    else
    {
      v2 = 0;
    }

    sqlite3_finalize(ppStmt);
  }

  return v2;
}

- (void)beginTransaction
{
  [(ABSContactsShadow *)self _openDb];
  [(ABSContactsShadow *)self _execSql:"BEGIN"];
  v3 = *(qword_100071D00 + 8);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Started shadow transaction", v4, 2u);
  }
}

- (void)commitTransaction
{
  [(ABSContactsShadow *)self _execSql:"COMMIT"];
  [(ABSContactsShadow *)self _closeDb];
  v3 = *(qword_100071D00 + 8);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Committed shadow transaction", v4, 2u);
  }
}

- (void)rollbackTransaction
{
  [(ABSContactsShadow *)self _execSql:"ROLLBACK"];
  [(ABSContactsShadow *)self _closeDb];
  v3 = *(qword_100071D00 + 8);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Rolled back shadow transaction", v4, 2u);
  }
}

@end