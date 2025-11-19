@interface UserRegistryDB
- (BOOL)beginExclusiveTransaction;
- (BOOL)deleteEscrowKey:(id)a3;
- (BOOL)deleteMirrorKeys:(int)a3;
- (BOOL)deleteRecordAll;
- (BOOL)deleteRecordID:(id)a3;
- (BOOL)endTransaction:(BOOL)a3;
- (BOOL)markMirrorKey:(int)a3 type:(int)a4;
- (BOOL)prepare:(const char *)a3 statement:(sqlite3_stmt *)a4;
- (BOOL)replaceRecord:(id)a3 type:(int)a4 data:(id)a5 publicKey:(id)a6;
- (BOOL)setEscrowKey:(id)a3 escrowBlob:(id)a4;
- (BOOL)setMirrorKey:(id)a3 service:(int)a4 type:(int)a5 publicIdentity:(id)a6;
- (BOOL)setupDatabase;
- (BOOL)syncedKeyToDevice:(id)a3 type:(int)a4 device:(id)a5;
- (BOOL)updateEscrowKey:(id)a3 escrowBlob:(id)a4;
- (BOOL)updateMirrorKey:(id)a3 service:(int)a4 type:(int)a5 newType:(int)a6 current:(BOOL)a7;
- (BOOL)updateSyncDevice:(id)a3 seen:(id)a4 version:(id)a5;
- (UserRegistryDB)initWithDSID:(id)a3;
- (id)getData:(id)a3 type:(int)a4;
- (id)missingKeysFromDevice:(id)a3 type:(int)a4;
- (id)queryEscrowKey:(id)a3;
- (id)queryEscrowKeys;
- (id)syncDevices;
- (void)dealloc;
- (void)deleteRecordAll;
@end

@implementation UserRegistryDB

- (UserRegistryDB)initWithDSID:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = UserRegistryDB;
  v5 = [(UserRegistryDB *)&v9 init];
  if (v5 && (v6 = os_log_create("com.apple.ProtectedCloudStorage", "UserDB"), [(UserRegistryDB *)v5 setOslog:v6], v6, [(UserRegistryDB *)v5 setDsid:v4], [(UserRegistryDB *)v5 setupDatabase]))
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

- (BOOL)prepare:(const char *)a3 statement:(sqlite3_stmt *)a4
{
  v5 = sqlite3_prepare_v2(self->_sqliteHandle, a3, -1, a4, 0);
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
    v6 = [v4 stringWithFormat:@"%@/com.apple.ProtectedCloudStorage", v5];

    v7 = [MEMORY[0x1E696AC08] defaultManager];
    v29 = 0;
    v8 = [v7 createDirectoryAtPath:v6 withIntermediateDirectories:1 attributes:0 error:&v29];
    v9 = v29;

    if (v8)
    {
      v10 = MEMORY[0x1E696AEC0];
      v11 = [(UserRegistryDB *)self dsid];
      v12 = [v10 stringWithFormat:@"KeysSyncing{, Version2}-%@-%@*", v11, kPCSServiceName[0]];
      v13 = [v6 stringByAppendingPathComponent:v12];

      memset(&v33, 0, sizeof(v33));
      if (!glob([v13 UTF8String], 128, 0, &v33))
      {
        v28 = v9;
        v14 = [(UserRegistryDB *)self oslog];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          LODWORD(v32) = v33.gl_matchc;
          _os_log_impl(&dword_1B229C000, v14, OS_LOG_TYPE_DEFAULT, "Found %d PCS databases files to delete", buf, 8u);
        }

        if (v33.gl_matchc >= 1)
        {
          v15 = 0;
          do
          {
            v16 = v33.gl_pathv[v15];
            v17 = [(UserRegistryDB *)self oslog];
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315138;
              v32 = v16;
              _os_log_impl(&dword_1B229C000, v17, OS_LOG_TYPE_DEFAULT, "removing: %s", buf, 0xCu);
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
      v19 = [(UserRegistryDB *)self dsid];
      v20 = [v18 stringWithFormat:@"KeysSyncingVersion3-%@-%@.db", v19, kPCSServiceName[0]];
      v21 = [v6 stringByAppendingPathComponent:v20];

      if (sqlite3_open_v2([v21 UTF8String], &self->_sqliteHandle, 6, 0))
      {
        v22 = [(UserRegistryDB *)self oslog];
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = sqlite3_errmsg(self->_sqliteHandle);
          LODWORD(v33.gl_pathc) = 136315138;
          *(&v33.gl_pathc + 4) = v23;
          _os_log_impl(&dword_1B229C000, v22, OS_LOG_TYPE_DEFAULT, "Failed to open userDB database: %s", &v33, 0xCu);
        }
      }

      else
      {
        [(UserRegistryDB *)self beginExclusiveTransaction];
        if (sqlite3_exec(self->_sqliteHandle, "CREATE TABLE IF NOT EXISTS PCSKeys(recordID TEXT PRIMARY KEY, type INTEGER NOT NULL, data BLOB, publicKey TEXT);CREATE TABLE IF NOT EXISTS SyncDevices(deviceID TEXT PRIMARY KEY NOT NULL, lastSeen TEXT, firstSeen TEXT, version TEXT);CREATE TABLE IF NOT EXISTS MirrorKeys(publicKey TEXT PRIMARY KEY NOT NULL, escrow BLOB, dsid TEXT NOT NULL, service INTEGER NOT NULL, current INTEGER NOT NULL, type INTEGER NOT NULL,publicIdentity BLOB);CREATE TABLE IF NOT EXISTS SyncedKeys(deviceNumber INTEGER NOT NULL, pubkeyNumber INTEGER NOT NULL, current INTEGER DEFAULT 0, PRIMARY KEY (deviceNumber,pubkeyNumber)) ;CREATE TABLE IF NOT EXISTS EscrowedKeys(publicKey TEXT PRIMARY KEY NOT NULL, escrow BLOB,dsid TEXT NOT NULL);CREATE TRIGGER IF NOT EXISTS removeSyncedKeys DELETE ON SyncDevices    FOR EACH ROW BEGIN        DELETE FROM SyncedKeys WHERE OLD.rowid = SyncedKeys.deviceNumber ;    END  ; CREATE TRIGGER IF NOT EXISTS removeMirrorKeys DELETE ON MirrorKeys    FOR EACH ROW BEGIN        DELETE FROM SyncedKeys WHERE OLD.rowid = SyncedKeys.pubkeyNumber ;    END  ; CREATE TABLE IF NOT EXISTS UpdateLimits(updateType TEXT PRIMARY KEY NOT NULL, mod_date DATETIME DEFAULT CURRENT_TIMESTAMP, counter INTEGER, digest TEXT);", 0, 0, &errmsg))
        {
          v25 = [(UserRegistryDB *)self oslog];
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(v33.gl_pathc) = 136315138;
            *(&v33.gl_pathc + 4) = errmsg;
            _os_log_impl(&dword_1B229C000, v25, OS_LOG_TYPE_DEFAULT, "Create schema for database: %s", &v33, 0xCu);
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
      v21 = [(UserRegistryDB *)self oslog];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(v33.gl_pathc) = 138412290;
        *(&v33.gl_pathc + 4) = v9;
        _os_log_impl(&dword_1B229C000, v21, OS_LOG_TYPE_DEFAULT, "Failed to create ApplicationSupport directory: %@", &v33, 0xCu);
      }
    }

    v24 = 0;
    goto LABEL_44;
  }

  v6 = [(UserRegistryDB *)self oslog];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v33.gl_pathc) = 0;
    _os_log_impl(&dword_1B229C000, v6, OS_LOG_TYPE_DEFAULT, "Failed to get ApplicationSupport directory", &v33, 2u);
  }

  v24 = 0;
LABEL_45:

  v26 = *MEMORY[0x1E69E9840];
  return v24;
}

- (BOOL)deleteRecordAll
{
  v2 = self;
  objc_sync_enter(v2);
  errmsg = 0;
  v3 = sqlite3_exec(v2->_sqliteHandle, "DELETE FROM PCSKeys; DELETE FROM SyncedKeys; DELETE FROM MirrorKeys; DELETE FROM SyncDevices;DELETE FROM UpdateLimits;", 0, 0, &errmsg);
  if (v3)
  {
    v5 = [(UserRegistryDB *)v2 oslog];
    [(UserRegistryDB *)v5 deleteRecordAll];
  }

  if (errmsg)
  {
    sqlite3_free(errmsg);
  }

  objc_sync_exit(v2);

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

- (BOOL)endTransaction:(BOOL)a3
{
  if (a3)
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

- (id)getData:(id)a3 type:(int)a4
{
  v6 = a3;
  v7 = self;
  objc_sync_enter(v7);
  if (sqlite3_bind_text(v7->_recordIDStatment, 1, [v6 UTF8String], -1, 0) || sqlite3_bind_int(v7->_recordIDStatment, 2, a4) || sqlite3_step(v7->_recordIDStatment) != 100)
  {
    v10 = 0;
  }

  else
  {
    v8 = sqlite3_column_blob(v7->_recordIDStatment, 0);
    v9 = sqlite3_column_bytes(v7->_recordIDStatment, 0);
    v10 = 0;
    if (v8 && v9 >= 1)
    {
      v10 = [MEMORY[0x1E695DEF0] dataWithBytes:v8 length:v9];
    }
  }

  sqlite3_reset(v7->_recordIDStatment);
  objc_sync_exit(v7);

  return v10;
}

- (BOOL)replaceRecord:(id)a3 type:(int)a4 data:(id)a5 publicKey:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = self;
  objc_sync_enter(v13);
  v14 = !sqlite3_bind_text(v13->_replaceStatment, 1, [v10 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL) && !sqlite3_bind_int(v13->_replaceStatment, 2, a4) && !sqlite3_bind_blob(v13->_replaceStatment, 3, objc_msgSend(v11, "bytes"), objc_msgSend(v11, "length"), 0xFFFFFFFFFFFFFFFFLL) && !sqlite3_bind_text(v13->_replaceStatment, 4, objc_msgSend(v12, "UTF8String"), -1, 0xFFFFFFFFFFFFFFFFLL) && sqlite3_step(v13->_replaceStatment) == 101;
  sqlite3_reset(v13->_replaceStatment);
  objc_sync_exit(v13);

  return v14;
}

- (BOOL)deleteRecordID:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (sqlite3_bind_text(v5->_deleteStatment, 1, [v4 UTF8String], -1, 0))
  {
    v6 = 0;
  }

  else
  {
    v6 = sqlite3_step(v5->_deleteStatment) == 101;
  }

  sqlite3_reset(v5->_deleteStatment);
  objc_sync_exit(v5);

  return v6;
}

- (BOOL)setMirrorKey:(id)a3 service:(int)a4 type:(int)a5 publicIdentity:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = self;
  objc_sync_enter(v12);
  v13 = !sqlite3_bind_text(v12->_insertMirrorKey, 1, [v10 UTF8String], -1, 0) && !sqlite3_bind_text(v12->_insertMirrorKey, 2, -[NSString UTF8String](v12->_dsid, "UTF8String"), -1, 0) && !sqlite3_bind_int(v12->_insertMirrorKey, 3, a4) && !sqlite3_bind_int(v12->_insertMirrorKey, 4, a5) && !sqlite3_bind_blob(v12->_insertMirrorKey, 5, objc_msgSend(v11, "bytes"), objc_msgSend(v11, "length"), 0) && sqlite3_step(v12->_insertMirrorKey) == 101;
  sqlite3_reset(v12->_insertMirrorKey);
  objc_sync_exit(v12);

  return v13;
}

- (BOOL)markMirrorKey:(int)a3 type:(int)a4
{
  v6 = self;
  objc_sync_enter(v6);
  if (sqlite3_bind_int(v6->_markMirrorKey, 1, a4) || sqlite3_bind_int(v6->_markMirrorKey, 2, a3) || sqlite3_bind_text(v6->_markMirrorKey, 3, [(NSString *)v6->_dsid UTF8String], -1, 0))
  {
    v7 = 0;
  }

  else
  {
      ;
    }

    v7 = 1;
  }

  sqlite3_reset(v6->_markMirrorKey);
  objc_sync_exit(v6);

  return v7;
}

- (BOOL)updateMirrorKey:(id)a3 service:(int)a4 type:(int)a5 newType:(int)a6 current:(BOOL)a7
{
  v7 = a7;
  v12 = a3;
  v13 = self;
  objc_sync_enter(v13);
  if (v7)
  {
    if (sqlite3_bind_int(v13->_resetCurrentMirrorKey, 1, a4) || sqlite3_bind_text(v13->_resetCurrentMirrorKey, 2, [(NSString *)v13->_dsid UTF8String], -1, 0))
    {
      goto LABEL_12;
    }

      ;
    }
  }

  if (sqlite3_bind_int(v13->_updateMirrorKey, 1, v7) || sqlite3_bind_int(v13->_updateMirrorKey, 2, a6) || sqlite3_bind_text(v13->_updateMirrorKey, 3, [v12 UTF8String], -1, 0) || sqlite3_bind_int(v13->_updateMirrorKey, 4, a5) || sqlite3_bind_text(v13->_updateMirrorKey, 5, -[NSString UTF8String](v13->_dsid, "UTF8String"), -1, 0))
  {
LABEL_12:
    v14 = 0;
    goto LABEL_11;
  }

  v14 = sqlite3_step(v13->_updateMirrorKey) == 101;
LABEL_11:
  sqlite3_reset(v13->_resetCurrentMirrorKey);
  sqlite3_reset(v13->_updateMirrorKey);
  objc_sync_exit(v13);

  return v14;
}

- (BOOL)deleteMirrorKeys:(int)a3
{
  v4 = self;
  objc_sync_enter(v4);
  if (sqlite3_bind_int(v4->_deleteMirrorKeys, 1, a3))
  {
    v5 = 0;
  }

  else
  {
    v5 = sqlite3_step(v4->_deleteMirrorKeys) == 101;
  }

  sqlite3_reset(v4->_deleteMirrorKeys);
  objc_sync_exit(v4);

  return v5;
}

- (BOOL)setEscrowKey:(id)a3 escrowBlob:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  if (sqlite3_bind_text(v8->_insertEscrowKey, 1, [v6 UTF8String], -1, 0) || sqlite3_bind_blob(v8->_insertEscrowKey, 2, objc_msgSend(v7, "bytes"), objc_msgSend(v7, "length"), 0) || sqlite3_bind_text(v8->_insertEscrowKey, 3, -[NSString UTF8String](v8->_dsid, "UTF8String"), -1, 0) || sqlite3_step(v8->_insertEscrowKey) != 101)
  {
    v11 = [(UserRegistryDB *)v8 oslog];
    [UserRegistryDB setEscrowKey:v11 escrowBlob:?];
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  sqlite3_reset(v8->_insertEscrowKey);
  objc_sync_exit(v8);

  return v9;
}

- (BOOL)updateEscrowKey:(id)a3 escrowBlob:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  v9 = !sqlite3_bind_blob(v8->_updateEscrowKey, 1, [v7 bytes], objc_msgSend(v7, "length"), 0) && !sqlite3_bind_text(v8->_updateEscrowKey, 2, objc_msgSend(v6, "UTF8String"), -1, 0) && !sqlite3_bind_text(v8->_updateEscrowKey, 3, -[NSString UTF8String](v8->_dsid, "UTF8String"), -1, 0) && sqlite3_step(v8->_updateEscrowKey) == 101;
  sqlite3_reset(v8->_updateEscrowKey);
  objc_sync_exit(v8);

  return v9;
}

- (BOOL)deleteEscrowKey:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = !sqlite3_bind_text(v5->_deleteEscrowKey, 1, [v4 UTF8String], -1, 0) && !sqlite3_bind_text(v5->_deleteEscrowKey, 2, -[NSString UTF8String](v5->_dsid, "UTF8String"), -1, 0) && sqlite3_step(v5->_deleteEscrowKey) == 101;
  sqlite3_reset(v5->_deleteEscrowKey);
  objc_sync_exit(v5);

  return v6;
}

- (id)queryEscrowKey:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (sqlite3_bind_text(v5->_queryEscrowKey, 1, [v4 UTF8String], -1, 0) || sqlite3_bind_text(v5->_queryEscrowKey, 2, -[NSString UTF8String](v5->_dsid, "UTF8String"), -1, 0) || sqlite3_step(v5->_queryEscrowKey) != 100)
  {
    v8 = 0;
    goto LABEL_7;
  }

  v6 = sqlite3_column_blob(v5->_queryEscrowKey, 0);
  v7 = sqlite3_column_bytes(v5->_queryEscrowKey, 0);
  if (v6 && (v7 & 0x80000000) == 0)
  {
    v8 = [MEMORY[0x1E695DEF0] dataWithBytes:v6 length:v7];
LABEL_7:
    sqlite3_reset(v5->_queryEscrowKey);
    goto LABEL_9;
  }

  sqlite3_reset(v5->_queryEscrowKey);
  v8 = 0;
LABEL_9:
  objc_sync_exit(v5);

  return v8;
}

- (BOOL)updateSyncDevice:(id)a3 seen:(id)a4 version:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  objc_sync_enter(v11);
  v12 = !sqlite3_bind_text(v11->_insertWatch, 1, [v8 UTF8String], -1, 0) && !sqlite3_bind_text(v11->_insertWatch, 2, objc_msgSend(v9, "UTF8String"), -1, 0) && (sqlite3_step(v11->_insertWatch), !sqlite3_bind_text(v11->_updateWatch, 1, objc_msgSend(v9, "UTF8String"), -1, 0)) && !sqlite3_bind_text(v11->_updateWatch, 2, objc_msgSend(v10, "UTF8String"), -1, 0) && !sqlite3_bind_text(v11->_updateWatch, 3, objc_msgSend(v8, "UTF8String"), -1, 0) && sqlite3_step(v11->_updateWatch) == 101;
  sqlite3_reset(v11->_insertWatch);
  sqlite3_reset(v11->_updateWatch);
  objc_sync_exit(v11);

  return v12;
}

- (BOOL)syncedKeyToDevice:(id)a3 type:(int)a4 device:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = self;
  objc_sync_enter(v10);
  v11 = !sqlite3_bind_text(v10->_insertWatchKey, 1, [v9 UTF8String], -1, 0) && !sqlite3_bind_text(v10->_insertWatchKey, 2, objc_msgSend(v8, "UTF8String"), -1, 0) && !sqlite3_bind_int(v10->_insertWatchKey, 3, a4) && !sqlite3_bind_text(v10->_insertWatchKey, 4, -[NSString UTF8String](v10->_dsid, "UTF8String"), -1, 0) && sqlite3_step(v10->_insertWatchKey) == 101;
  sqlite3_reset(v10->_insertWatchKey);
  objc_sync_exit(v10);

  return v11;
}

- (id)syncDevices
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [MEMORY[0x1E695DF70] array];
  while (1)
  {
    v4 = sqlite3_step(v2->_queryWatches);
    queryWatches = v2->_queryWatches;
    if (v4 != 100)
    {
      break;
    }

    v6 = sqlite3_column_text(queryWatches, 0);
    if (v6)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v6];
      [v3 addObject:v7];
    }
  }

  sqlite3_reset(queryWatches);
  objc_sync_exit(v2);

  return v3;
}

- (id)missingKeysFromDevice:(id)a3 type:(int)a4
{
  v6 = a3;
  v7 = self;
  objc_sync_enter(v7);
  v8 = [MEMORY[0x1E695DF70] array];
  if (!sqlite3_bind_text(v7->_queryMissingKeys, 1, -[NSString UTF8String](v7->_dsid, "UTF8String"), -1, 0) && !sqlite3_bind_int(v7->_queryMissingKeys, 2, a4) && !sqlite3_bind_text(v7->_queryMissingKeys, 3, [v6 UTF8String], -1, 0))
  {
    while (sqlite3_step(v7->_queryMissingKeys) == 100)
    {
      v9 = sqlite3_column_text(v7->_queryMissingKeys, 0);
      if (v9)
      {
        v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v9];
        [v8 addObject:v10];
      }
    }
  }

  sqlite3_reset(v7->_queryMissingKeys);
  objc_sync_exit(v7);

  return v8;
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
  if (os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT))
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