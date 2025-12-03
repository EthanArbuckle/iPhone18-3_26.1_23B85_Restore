@interface UserRegistryDB
- (BOOL)beginExclusiveTransaction;
- (BOOL)deleteEscrowKey:(id)key;
- (BOOL)deleteMirrorKeys:(int)keys;
- (BOOL)deleteRecordAll;
- (BOOL)deleteRecordID:(id)d;
- (BOOL)endTransaction:(BOOL)transaction;
- (BOOL)markMirrorKey:(int)key type:(int)type;
- (BOOL)prepare:(const char *)prepare statement:(sqlite3_stmt *)statement;
- (BOOL)replaceRecord:(id)record type:(int)type data:(id)data publicKey:(id)key;
- (BOOL)setEscrowKey:(id)key escrowBlob:(id)blob;
- (BOOL)setMirrorKey:(id)key service:(int)service type:(int)type publicIdentity:(id)identity;
- (BOOL)setupDatabase;
- (BOOL)syncedKeyToDevice:(id)device type:(int)type device:(id)a5;
- (BOOL)updateEscrowKey:(id)key escrowBlob:(id)blob;
- (BOOL)updateMirrorKey:(id)key service:(int)service type:(int)type newType:(int)newType current:(BOOL)current;
- (BOOL)updateSyncDevice:(id)device seen:(id)seen version:(id)version;
- (UserRegistryDB)initWithDSID:(id)d;
- (id)getData:(id)data type:(int)type;
- (id)missingKeysFromDevice:(id)device type:(int)type;
- (id)queryEscrowKey:(id)key;
- (id)queryEscrowKeys;
- (id)syncDevices;
- (void)dealloc;
- (void)deleteRecordAll;
@end

@implementation UserRegistryDB

- (UserRegistryDB)initWithDSID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = UserRegistryDB;
  v5 = [(UserRegistryDB *)&v9 init];
  if (v5 && (v6 = os_log_create("com.apple.ProtectedCloudStorage", "UserDB"), [(UserRegistryDB *)v5 setOslog:v6], v6, [(UserRegistryDB *)v5 setDsid:dCopy], [(UserRegistryDB *)v5 setupDatabase]))
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)dealloc
{
  _os_assert_log();
  _os_crash();
  __break(1u);
}

- (BOOL)prepare:(const char *)prepare statement:(sqlite3_stmt *)statement
{
  v5 = sqlite3_prepare_v2(self->_sqliteHandle, prepare, -1, statement, 0);
  if (v5)
  {
    [UserRegistryDB prepare:? statement:?];
  }

  return v5 == 0;
}

- (BOOL)setupDatabase
{
  v34 = *MEMORY[0x1E69E9840];
  errmsg = 0;
  v3 = NSSearchPathForDirectoriesInDomains(NSApplicationSupportDirectory, 1uLL, 1);
  if ([v3 count])
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = [v3 objectAtIndexedSubscript:0];
    oslog6 = [v4 stringWithFormat:@"%@/com.apple.ProtectedCloudStorage", v5];

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v29 = 0;
    v8 = [defaultManager createDirectoryAtPath:oslog6 withIntermediateDirectories:1 attributes:0 error:&v29];
    v9 = v29;

    if (v8)
    {
      v10 = MEMORY[0x1E696AEC0];
      dsid = [(UserRegistryDB *)self dsid];
      v12 = [v10 stringWithFormat:@"KeysSyncing{, Version2}-%@-%@*", dsid, kPCSServiceName[0]];
      v13 = [oslog6 stringByAppendingPathComponent:v12];

      memset(&v33, 0, sizeof(v33));
      if (!glob([v13 UTF8String], 128, 0, &v33))
      {
        v28 = v9;
        oslog = [(UserRegistryDB *)self oslog];
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          LODWORD(v32) = v33.gl_matchc;
          _os_log_impl(&dword_1B229C000, oslog, OS_LOG_TYPE_DEFAULT, "Found %d PCS databases files to delete", buf, 8u);
        }

        if (v33.gl_matchc >= 1)
        {
          v15 = 0;
          do
          {
            v16 = v33.gl_pathv[v15];
            oslog2 = [(UserRegistryDB *)self oslog];
            if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315138;
              v32 = v16;
              _os_log_impl(&dword_1B229C000, oslog2, OS_LOG_TYPE_DEFAULT, "removing: %s", buf, 0xCu);
            }

            removefile(v16, 0, 0);
            ++v15;
          }

          while (v15 < v33.gl_matchc);
        }

        globfree(&v33);
        v9 = v28;
      }

      v18 = MEMORY[0x1E696AEC0];
      dsid2 = [(UserRegistryDB *)self dsid];
      v20 = [v18 stringWithFormat:@"KeysSyncingVersion3-%@-%@.db", dsid2, kPCSServiceName[0]];
      oslog5 = [oslog6 stringByAppendingPathComponent:v20];

      if (sqlite3_open_v2([oslog5 UTF8String], &self->_sqliteHandle, 6, 0))
      {
        oslog3 = [(UserRegistryDB *)self oslog];
        if (os_log_type_enabled(oslog3, OS_LOG_TYPE_DEFAULT))
        {
          v23 = sqlite3_errmsg(self->_sqliteHandle);
          LODWORD(v33.gl_pathc) = 136315138;
          *(&v33.gl_pathc + 4) = v23;
          _os_log_impl(&dword_1B229C000, oslog3, OS_LOG_TYPE_DEFAULT, "Failed to open userDB database: %s", &v33, 0xCu);
        }
      }

      else
      {
        [(UserRegistryDB *)self beginExclusiveTransaction];
        if (sqlite3_exec(self->_sqliteHandle, "CREATE TABLE IF NOT EXISTS PCSKeys(recordID TEXT PRIMARY KEY, type INTEGER NOT NULL, data BLOB, publicKey TEXT);CREATE TABLE IF NOT EXISTS SyncDevices(deviceID TEXT PRIMARY KEY NOT NULL, lastSeen TEXT, firstSeen TEXT, version TEXT);CREATE TABLE IF NOT EXISTS MirrorKeys(publicKey TEXT PRIMARY KEY NOT NULL, escrow BLOB, dsid TEXT NOT NULL, service INTEGER NOT NULL, current INTEGER NOT NULL, type INTEGER NOT NULL,publicIdentity BLOB);CREATE TABLE IF NOT EXISTS SyncedKeys(deviceNumber INTEGER NOT NULL, pubkeyNumber INTEGER NOT NULL, current INTEGER DEFAULT 0, PRIMARY KEY (deviceNumber,pubkeyNumber)) ;CREATE TABLE IF NOT EXISTS EscrowedKeys(publicKey TEXT PRIMARY KEY NOT NULL, escrow BLOB,dsid TEXT NOT NULL);CREATE TRIGGER IF NOT EXISTS removeSyncedKeys DELETE ON SyncDevices    FOR EACH ROW BEGIN        DELETE FROM SyncedKeys WHERE OLD.rowid = SyncedKeys.deviceNumber ;    END  ; CREATE TRIGGER IF NOT EXISTS removeMirrorKeys DELETE ON MirrorKeys    FOR EACH ROW BEGIN        DELETE FROM SyncedKeys WHERE OLD.rowid = SyncedKeys.pubkeyNumber ;    END  ; CREATE TABLE IF NOT EXISTS UpdateLimits(updateType TEXT PRIMARY KEY NOT NULL, mod_date DATETIME DEFAULT CURRENT_TIMESTAMP, counter INTEGER, digest TEXT);", 0, 0, &errmsg))
        {
          oslog4 = [(UserRegistryDB *)self oslog];
          if (os_log_type_enabled(oslog4, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(v33.gl_pathc) = 136315138;
            *(&v33.gl_pathc + 4) = errmsg;
            _os_log_impl(&dword_1B229C000, oslog4, OS_LOG_TYPE_DEFAULT, "Create schema for database: %s", &v33, 0xCu);
          }

          sqlite3_free(errmsg);
          [(UserRegistryDB *)self endTransaction:0];
        }

        else
        {
          [(UserRegistryDB *)self endTransaction:1];
          sqlite3_exec(self->_sqliteHandle, "PRAGMA journal_mode=WAL;", 0, 0, 0);
          if ([(UserRegistryDB *)self prepare:"SELECT data FROM PCSKeys WHERE recordID = ? AND type = ?;" statement:&self->_recordIDStatment]&& [(UserRegistryDB *)self prepare:"REPLACE INTO PCSKeys (recordID statement:type, data, publicKey) VALUES(?, ?, ?, ?);", &self->_replaceStatment]&& [(UserRegistryDB *)self prepare:"DELETE FROM PCSKeys WHERE recordID = ?;" statement:&self->_deleteStatment]&& [(UserRegistryDB *)self prepare:"INSERT OR IGNORE INTO SyncDevices (deviceID statement:firstSeen) VALUES(?, ?);", &self->_insertWatch]&& [(UserRegistryDB *)self prepare:"UPDATE SyncDevices SET lastSeen = ? AND version = ? WHERE deviceID = ?;" statement:&self->_updateWatch]&& [(UserRegistryDB *)self prepare:"INSERT INTO MirrorKeys (publicKey statement:dsid, service, current, type, publicIdentity) VALUES(?, ?, ?, 0, ?, ?);", &self->_insertMirrorKey]&& [(UserRegistryDB *)self prepare:"UPDATE MirrorKeys SET current=? statement:type=? WHERE publicKey = ? AND type = ? AND dsid = ?;", &self->_updateMirrorKey]&& [(UserRegistryDB *)self prepare:"UPDATE MirrorKeys SET type=? WHERE service = ? AND dsid = ?;" statement:&self->_markMirrorKey]&& [(UserRegistryDB *)self prepare:"DELETE FROM MirrorKeys WHERE service = ?;" statement:&self->_deleteMirrorKeys]&& [(UserRegistryDB *)self prepare:"INSERT OR REPLACE INTO EscrowedKeys (publicKey statement:escrow, dsid) VALUES(?, ?, ?);", &self->_insertEscrowKey]&& [(UserRegistryDB *)self prepare:"UPDATE EscrowedKeys SET escrow=? WHERE publicKey = ? AND dsid = ?;" statement:&self->_updateEscrowKey]&& [(UserRegistryDB *)self prepare:"DELETE FROM EscrowedKeys WHERE publicKey = ? AND dsid = ?;" statement:&self->_deleteEscrowKey]&& [(UserRegistryDB *)self prepare:"SELECT escrow FROM EscrowedKeys WHERE publicKey = ? AND dsid = ?" statement:&self->_queryEscrowKey]&& [(UserRegistryDB *)self prepare:"SELECT publicKey statement:escrow FROM EscrowedKeys WHERE dsid = ?", &self->_queryEscrowKeysAll]&& [(UserRegistryDB *)self prepare:"INSERT INTO SyncedKeys (deviceNumber statement:pubkeyNumber) SELECT SyncDevices.rowid, MirrorKeys.rowid FROM SyncDevices, MirrorKeys WHERE (SyncDevices.deviceID = ? AND MirrorKeys.publicKey = ? AND MirrorKeys.type = ? AND MirrorKeys.dsid = ?);", &self->_insertWatchKey]&& [(UserRegistryDB *)self prepare:"UPDATE MirrorKeys SET current = 0 WHERE service=? AND dsid=?;" statement:&self->_resetCurrentMirrorKey]&& [(UserRegistryDB *)self prepare:"SELECT MirrorKeys.publicKey FROM MirrorKeys WHERE MirrorKeys.dsid = ? AND MirrorKeys.type = ? AND (MirrorKeys.rowid NOT IN   (SELECT SyncedKeys.pubkeyNumber FROM SyncedKeys statement:SyncDevices WHERE (SyncDevices.deviceID = ? AND SyncedKeys.deviceNumber = SyncDevices.rowid))) ORDER BY MirrorKeys.current != 0", &self->_queryMissingKeys])
          {
            v24 = [(UserRegistryDB *)self prepare:"SELECT deviceID FROM SyncDevices;" statement:&self->_queryWatches];
LABEL_44:

            goto LABEL_45;
          }
        }
      }
    }

    else
    {
      oslog5 = [(UserRegistryDB *)self oslog];
      if (os_log_type_enabled(oslog5, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(v33.gl_pathc) = 138412290;
        *(&v33.gl_pathc + 4) = v9;
        _os_log_impl(&dword_1B229C000, oslog5, OS_LOG_TYPE_DEFAULT, "Failed to create ApplicationSupport directory: %@", &v33, 0xCu);
      }
    }

    v24 = 0;
    goto LABEL_44;
  }

  oslog6 = [(UserRegistryDB *)self oslog];
  if (os_log_type_enabled(oslog6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v33.gl_pathc) = 0;
    _os_log_impl(&dword_1B229C000, oslog6, OS_LOG_TYPE_DEFAULT, "Failed to get ApplicationSupport directory", &v33, 2u);
  }

  v24 = 0;
LABEL_45:

  v26 = *MEMORY[0x1E69E9840];
  return v24;
}

- (BOOL)deleteRecordAll
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  errmsg = 0;
  v3 = sqlite3_exec(selfCopy->_sqliteHandle, "DELETE FROM PCSKeys; DELETE FROM SyncedKeys; DELETE FROM MirrorKeys; DELETE FROM SyncDevices;DELETE FROM UpdateLimits;", 0, 0, &errmsg);
  if (v3)
  {
    oslog = [(UserRegistryDB *)selfCopy oslog];
    [(UserRegistryDB *)oslog deleteRecordAll];
  }

  if (errmsg)
  {
    sqlite3_free(errmsg);
  }

  objc_sync_exit(selfCopy);

  return v3 == 0;
}

- (BOOL)beginExclusiveTransaction
{
  errmsg = 0;
  v2 = sqlite3_exec(self->_sqliteHandle, "BEGIN EXCLUSIVE TRANSACTION;", 0, 0, &errmsg);
  if (errmsg)
  {
    sqlite3_free(errmsg);
  }

  return v2 == 0;
}

- (BOOL)endTransaction:(BOOL)transaction
{
  if (transaction)
  {
    v3 = "COMMIT TRANSACTION;";
  }

  else
  {
    v3 = "ROLLBACK TRANSACTION;";
  }

  sqlite3_exec(self->_sqliteHandle, v3, 0, 0, 0);
  return 1;
}

- (id)getData:(id)data type:(int)type
{
  dataCopy = data;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (sqlite3_bind_text(selfCopy->_recordIDStatment, 1, [dataCopy UTF8String], -1, 0) || sqlite3_bind_int(selfCopy->_recordIDStatment, 2, type) || sqlite3_step(selfCopy->_recordIDStatment) != 100)
  {
    v10 = 0;
  }

  else
  {
    v8 = sqlite3_column_blob(selfCopy->_recordIDStatment, 0);
    v9 = sqlite3_column_bytes(selfCopy->_recordIDStatment, 0);
    v10 = 0;
    if (v8 && v9 >= 1)
    {
      v10 = [MEMORY[0x1E695DEF0] dataWithBytes:v8 length:v9];
    }
  }

  sqlite3_reset(selfCopy->_recordIDStatment);
  objc_sync_exit(selfCopy);

  return v10;
}

- (BOOL)replaceRecord:(id)record type:(int)type data:(id)data publicKey:(id)key
{
  recordCopy = record;
  dataCopy = data;
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v14 = !sqlite3_bind_text(selfCopy->_replaceStatment, 1, [recordCopy UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL) && !sqlite3_bind_int(selfCopy->_replaceStatment, 2, type) && !sqlite3_bind_blob(selfCopy->_replaceStatment, 3, objc_msgSend(dataCopy, "bytes"), objc_msgSend(dataCopy, "length"), 0xFFFFFFFFFFFFFFFFLL) && !sqlite3_bind_text(selfCopy->_replaceStatment, 4, objc_msgSend(keyCopy, "UTF8String"), -1, 0xFFFFFFFFFFFFFFFFLL) && sqlite3_step(selfCopy->_replaceStatment) == 101;
  sqlite3_reset(selfCopy->_replaceStatment);
  objc_sync_exit(selfCopy);

  return v14;
}

- (BOOL)deleteRecordID:(id)d
{
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (sqlite3_bind_text(selfCopy->_deleteStatment, 1, [dCopy UTF8String], -1, 0))
  {
    v6 = 0;
  }

  else
  {
    v6 = sqlite3_step(selfCopy->_deleteStatment) == 101;
  }

  sqlite3_reset(selfCopy->_deleteStatment);
  objc_sync_exit(selfCopy);

  return v6;
}

- (BOOL)setMirrorKey:(id)key service:(int)service type:(int)type publicIdentity:(id)identity
{
  keyCopy = key;
  identityCopy = identity;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v13 = !sqlite3_bind_text(selfCopy->_insertMirrorKey, 1, [keyCopy UTF8String], -1, 0) && !sqlite3_bind_text(selfCopy->_insertMirrorKey, 2, -[NSString UTF8String](selfCopy->_dsid, "UTF8String"), -1, 0) && !sqlite3_bind_int(selfCopy->_insertMirrorKey, 3, service) && !sqlite3_bind_int(selfCopy->_insertMirrorKey, 4, type) && !sqlite3_bind_blob(selfCopy->_insertMirrorKey, 5, objc_msgSend(identityCopy, "bytes"), objc_msgSend(identityCopy, "length"), 0) && sqlite3_step(selfCopy->_insertMirrorKey) == 101;
  sqlite3_reset(selfCopy->_insertMirrorKey);
  objc_sync_exit(selfCopy);

  return v13;
}

- (BOOL)markMirrorKey:(int)key type:(int)type
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (sqlite3_bind_int(selfCopy->_markMirrorKey, 1, type) || sqlite3_bind_int(selfCopy->_markMirrorKey, 2, key) || sqlite3_bind_text(selfCopy->_markMirrorKey, 3, [(NSString *)selfCopy->_dsid UTF8String], -1, 0))
  {
    v7 = 0;
  }

  else
  {
      ;
    }

    v7 = 1;
  }

  sqlite3_reset(selfCopy->_markMirrorKey);
  objc_sync_exit(selfCopy);

  return v7;
}

- (BOOL)updateMirrorKey:(id)key service:(int)service type:(int)type newType:(int)newType current:(BOOL)current
{
  currentCopy = current;
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (currentCopy)
  {
    if (sqlite3_bind_int(selfCopy->_resetCurrentMirrorKey, 1, service) || sqlite3_bind_text(selfCopy->_resetCurrentMirrorKey, 2, [(NSString *)selfCopy->_dsid UTF8String], -1, 0))
    {
      goto LABEL_12;
    }

      ;
    }
  }

  if (sqlite3_bind_int(selfCopy->_updateMirrorKey, 1, currentCopy) || sqlite3_bind_int(selfCopy->_updateMirrorKey, 2, newType) || sqlite3_bind_text(selfCopy->_updateMirrorKey, 3, [keyCopy UTF8String], -1, 0) || sqlite3_bind_int(selfCopy->_updateMirrorKey, 4, type) || sqlite3_bind_text(selfCopy->_updateMirrorKey, 5, -[NSString UTF8String](selfCopy->_dsid, "UTF8String"), -1, 0))
  {
LABEL_12:
    v14 = 0;
    goto LABEL_11;
  }

  v14 = sqlite3_step(selfCopy->_updateMirrorKey) == 101;
LABEL_11:
  sqlite3_reset(selfCopy->_resetCurrentMirrorKey);
  sqlite3_reset(selfCopy->_updateMirrorKey);
  objc_sync_exit(selfCopy);

  return v14;
}

- (BOOL)deleteMirrorKeys:(int)keys
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (sqlite3_bind_int(selfCopy->_deleteMirrorKeys, 1, keys))
  {
    v5 = 0;
  }

  else
  {
    v5 = sqlite3_step(selfCopy->_deleteMirrorKeys) == 101;
  }

  sqlite3_reset(selfCopy->_deleteMirrorKeys);
  objc_sync_exit(selfCopy);

  return v5;
}

- (BOOL)setEscrowKey:(id)key escrowBlob:(id)blob
{
  keyCopy = key;
  blobCopy = blob;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (sqlite3_bind_text(selfCopy->_insertEscrowKey, 1, [keyCopy UTF8String], -1, 0) || sqlite3_bind_blob(selfCopy->_insertEscrowKey, 2, objc_msgSend(blobCopy, "bytes"), objc_msgSend(blobCopy, "length"), 0) || sqlite3_bind_text(selfCopy->_insertEscrowKey, 3, -[NSString UTF8String](selfCopy->_dsid, "UTF8String"), -1, 0) || sqlite3_step(selfCopy->_insertEscrowKey) != 101)
  {
    oslog = [(UserRegistryDB *)selfCopy oslog];
    [UserRegistryDB setEscrowKey:oslog escrowBlob:?];
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  sqlite3_reset(selfCopy->_insertEscrowKey);
  objc_sync_exit(selfCopy);

  return v9;
}

- (BOOL)updateEscrowKey:(id)key escrowBlob:(id)blob
{
  keyCopy = key;
  blobCopy = blob;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = !sqlite3_bind_blob(selfCopy->_updateEscrowKey, 1, [blobCopy bytes], objc_msgSend(blobCopy, "length"), 0) && !sqlite3_bind_text(selfCopy->_updateEscrowKey, 2, objc_msgSend(keyCopy, "UTF8String"), -1, 0) && !sqlite3_bind_text(selfCopy->_updateEscrowKey, 3, -[NSString UTF8String](selfCopy->_dsid, "UTF8String"), -1, 0) && sqlite3_step(selfCopy->_updateEscrowKey) == 101;
  sqlite3_reset(selfCopy->_updateEscrowKey);
  objc_sync_exit(selfCopy);

  return v9;
}

- (BOOL)deleteEscrowKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = !sqlite3_bind_text(selfCopy->_deleteEscrowKey, 1, [keyCopy UTF8String], -1, 0) && !sqlite3_bind_text(selfCopy->_deleteEscrowKey, 2, -[NSString UTF8String](selfCopy->_dsid, "UTF8String"), -1, 0) && sqlite3_step(selfCopy->_deleteEscrowKey) == 101;
  sqlite3_reset(selfCopy->_deleteEscrowKey);
  objc_sync_exit(selfCopy);

  return v6;
}

- (id)queryEscrowKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (sqlite3_bind_text(selfCopy->_queryEscrowKey, 1, [keyCopy UTF8String], -1, 0) || sqlite3_bind_text(selfCopy->_queryEscrowKey, 2, -[NSString UTF8String](selfCopy->_dsid, "UTF8String"), -1, 0) || sqlite3_step(selfCopy->_queryEscrowKey) != 100)
  {
    v8 = 0;
    goto LABEL_7;
  }

  v6 = sqlite3_column_blob(selfCopy->_queryEscrowKey, 0);
  v7 = sqlite3_column_bytes(selfCopy->_queryEscrowKey, 0);
  if (v6 && (v7 & 0x80000000) == 0)
  {
    v8 = [MEMORY[0x1E695DEF0] dataWithBytes:v6 length:v7];
LABEL_7:
    sqlite3_reset(selfCopy->_queryEscrowKey);
    goto LABEL_9;
  }

  sqlite3_reset(selfCopy->_queryEscrowKey);
  v8 = 0;
LABEL_9:
  objc_sync_exit(selfCopy);

  return v8;
}

- (BOOL)updateSyncDevice:(id)device seen:(id)seen version:(id)version
{
  deviceCopy = device;
  seenCopy = seen;
  versionCopy = version;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v12 = !sqlite3_bind_text(selfCopy->_insertWatch, 1, [deviceCopy UTF8String], -1, 0) && !sqlite3_bind_text(selfCopy->_insertWatch, 2, objc_msgSend(seenCopy, "UTF8String"), -1, 0) && (sqlite3_step(selfCopy->_insertWatch), !sqlite3_bind_text(selfCopy->_updateWatch, 1, objc_msgSend(seenCopy, "UTF8String"), -1, 0)) && !sqlite3_bind_text(selfCopy->_updateWatch, 2, objc_msgSend(versionCopy, "UTF8String"), -1, 0) && !sqlite3_bind_text(selfCopy->_updateWatch, 3, objc_msgSend(deviceCopy, "UTF8String"), -1, 0) && sqlite3_step(selfCopy->_updateWatch) == 101;
  sqlite3_reset(selfCopy->_insertWatch);
  sqlite3_reset(selfCopy->_updateWatch);
  objc_sync_exit(selfCopy);

  return v12;
}

- (BOOL)syncedKeyToDevice:(id)device type:(int)type device:(id)a5
{
  deviceCopy = device;
  v9 = a5;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v11 = !sqlite3_bind_text(selfCopy->_insertWatchKey, 1, [v9 UTF8String], -1, 0) && !sqlite3_bind_text(selfCopy->_insertWatchKey, 2, objc_msgSend(deviceCopy, "UTF8String"), -1, 0) && !sqlite3_bind_int(selfCopy->_insertWatchKey, 3, type) && !sqlite3_bind_text(selfCopy->_insertWatchKey, 4, -[NSString UTF8String](selfCopy->_dsid, "UTF8String"), -1, 0) && sqlite3_step(selfCopy->_insertWatchKey) == 101;
  sqlite3_reset(selfCopy->_insertWatchKey);
  objc_sync_exit(selfCopy);

  return v11;
}

- (id)syncDevices
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  array = [MEMORY[0x1E695DF70] array];
  while (1)
  {
    v4 = sqlite3_step(selfCopy->_queryWatches);
    queryWatches = selfCopy->_queryWatches;
    if (v4 != 100)
    {
      break;
    }

    v6 = sqlite3_column_text(queryWatches, 0);
    if (v6)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v6];
      [array addObject:v7];
    }
  }

  sqlite3_reset(queryWatches);
  objc_sync_exit(selfCopy);

  return array;
}

- (id)missingKeysFromDevice:(id)device type:(int)type
{
  deviceCopy = device;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  array = [MEMORY[0x1E695DF70] array];
  if (!sqlite3_bind_text(selfCopy->_queryMissingKeys, 1, -[NSString UTF8String](selfCopy->_dsid, "UTF8String"), -1, 0) && !sqlite3_bind_int(selfCopy->_queryMissingKeys, 2, type) && !sqlite3_bind_text(selfCopy->_queryMissingKeys, 3, [deviceCopy UTF8String], -1, 0))
  {
    while (sqlite3_step(selfCopy->_queryMissingKeys) == 100)
    {
      v9 = sqlite3_column_text(selfCopy->_queryMissingKeys, 0);
      if (v9)
      {
        v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v9];
        [array addObject:v10];
      }
    }
  }

  sqlite3_reset(selfCopy->_queryMissingKeys);
  objc_sync_exit(selfCopy);

  return array;
}

- (id)queryEscrowKeys
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (!sqlite3_bind_text(self->_queryEscrowKeysAll, 1, [(NSString *)self->_dsid UTF8String], -1, 0) && sqlite3_step(self->_queryEscrowKeysAll) == 100)
  {
    do
    {
      v4 = sqlite3_column_text(self->_queryEscrowKeysAll, 0);
      if (v4)
      {
        v5 = v4;
        v6 = sqlite3_column_blob(self->_queryEscrowKeysAll, 1);
        v7 = sqlite3_column_bytes(self->_queryEscrowKeysAll, 1);
        v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v5];
        v9 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v6 length:v7];
        [v3 setValue:v9 forKey:v8];
      }
    }

    while (sqlite3_step(self->_queryEscrowKeysAll) == 100);
  }

  sqlite3_reset(self->_queryEscrowKeysAll);

  return v3;
}

- (void)prepare:(void *)a1 statement:.cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 oslog];
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0_9();
    _os_log_impl(v2, v3, v4, v5, v6, 0x12u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)deleteRecordAll
{
  v11 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(self, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *a2;
    OUTLINED_FUNCTION_0_9();
    _os_log_impl(v4, v5, v6, v7, v8, 0xCu);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)setEscrowKey:(NSObject *)a1 escrowBlob:.cold.1(NSObject *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0_9();
    _os_log_impl(v2, v3, v4, v5, v6, 8u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

@end