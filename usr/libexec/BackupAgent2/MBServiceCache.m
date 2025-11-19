@interface MBServiceCache
+ (id)systemPath;
- (MBServiceCache)initWithPath:(id)a3 domainManager:(id)a4;
- (id)_prepare:(id)a3;
- (id)_snapshotWithStmt:(id)a3;
- (id)backupForUDID:(id)a3 lastModified:(int64_t *)a4;
- (id)configuration;
- (id)pathsForFilesMissingEncryptionKeyWithOffset:(unint64_t)a3 limit:(unint64_t)a4;
- (id)propertyForKey:(id)a3;
- (id)protectionClassesToRestoreByPathWithOffset:(unint64_t)a3 limit:(unint64_t)a4;
- (id)restoreFailuresForDataClass:(id)a3 assetType:(id)a4 range:(_NSRange)a5;
- (id)snapshotsForBackupUDID:(id)a3;
- (unint64_t)countOfRestoreFailuresForDataclass:(id)a3 assetType:(id)a4;
- (void)_exec:(id)a3;
- (void)_logProfile;
- (void)_profile:(id)a3 time:(double)a4;
- (void)_raise:(id)a3;
- (void)_remove;
- (void)_removeSnapshotForID:(unint64_t)a3 backupUDID:(id)a4;
- (void)addRestoreFailure:(id)a3;
- (void)close;
- (void)dealloc;
- (void)open;
- (void)removeAllDisabledDomains;
- (void)removeAllProtectionClassesToRestore;
- (void)removeBackupForUDID:(id)a3;
- (void)removeFileMissingEncryptionKeyWithPath:(id)a3;
- (void)removePropertyForKey:(id)a3;
- (void)removeSnapshotForID:(unint64_t)a3 backupUDID:(id)a4 lastModified:(int64_t)a5;
- (void)setDisabledDomainNames:(id)a3 restrictedDomainNames:(id)a4;
- (void)setFileEncryptionKey:(id)a3 forInodeNumber:(unint64_t)a4;
- (void)setLastModified:(int64_t)a3 forBackupUDID:(id)a4;
- (void)setProperty:(id)a3 forKey:(id)a4;
@end

@implementation MBServiceCache

+ (id)systemPath
{
  v2 = MBGetCacheDir();

  return [v2 stringByAppendingPathComponent:@"cache.db"];
}

- (MBServiceCache)initWithPath:(id)a3 domainManager:(id)a4
{
  if (!a4)
  {
    sub_10009BA2C();
  }

  v13.receiver = self;
  v13.super_class = MBServiceCache;
  v6 = [(MBServiceCache *)&v13 init];
  if (v6)
  {
    v6->_path = a3;
    v6->_domainManager = a4;
    v6->_stmtsBySQL = objc_alloc_init(NSMutableDictionary);
    v7 = MBGetSQLLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v6->_countAndTimeBySQL = objc_alloc_init(NSMutableDictionary);
    }

    if (qword_10011E2F8 != -1)
    {
      sub_10009BA04();
    }

    v8 = qword_10011E300;
    objc_sync_enter(qword_10011E300);
    v9 = [qword_10011E300 objectForKeyedSubscript:a3];
    v6->_upToDateBackupUDIDs = v9;
    if (!v9)
    {
      v10 = objc_alloc_init(NSMutableSet);
      v6->_upToDateBackupUDIDs = v10;
      [qword_10011E300 setObject:v10 forKeyedSubscript:a3];
    }

    objc_sync_exit(v8);
    upToDateBackupUDIDs = v6->_upToDateBackupUDIDs;
    objc_sync_enter(upToDateBackupUDIDs);
    [(NSMutableSet *)v6->_upToDateBackupUDIDs removeAllObjects];
    objc_sync_exit(upToDateBackupUDIDs);
  }

  return v6;
}

- (void)dealloc
{
  [(MBServiceCache *)self close];

  v3.receiver = self;
  v3.super_class = MBServiceCache;
  [(MBServiceCache *)&v3 dealloc];
}

- (void)_remove
{
  v3 = MBGetDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Removing cache db", buf, 2u);
    _MBLog();
  }

  [+[NSFileManager defaultManager](NSFileManager removeItemAtPath:"removeItemAtPath:error:" error:self->_path, 0];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = MBSQLiteJournalSuffixes();
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [+[NSFileManager removeItemAtPath:v9]error:"removeItemAtPath:error:", [(NSString *)self->_path stringByAppendingString:*(*(&v9 + 1) + 8 * v8)], 0];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)_raise:(id)a3
{
  v4 = [[NSString alloc] initWithFormat:a3 arguments:&v15];
  db = self->_db;
  if (db)
  {
    v6 = sqlite3_errcode(db);
    v7 = sqlite3_errmsg(self->_db);
    v4 = [v4 stringByAppendingFormat:@" (%d(%d)/%s)", v6, sqlite3_extended_errcode(self->_db), v7];
    if (!self->_corrupt && (v6 == 26 || v6 == 11))
    {
      v8 = MBGetDefaultLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109378;
        v12 = v6;
        v13 = 2080;
        v14 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Removing corrupt backup cache db (%d/%s)", buf, 0x12u);
        v9 = v6;
        v10 = v7;
        _MBLog();
      }

      self->_corrupt = 1;
      [(MBServiceCache *)self close:v9];
      [(MBServiceCache *)self _remove];
    }
  }

  [NSException raise:NSGenericException format:@"%@", v4];
}

- (void)_profile:(id)a3 time:(double)a4
{
  v7 = MBGetSQLLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = [(NSMutableDictionary *)self->_countAndTimeBySQL objectForKeyedSubscript:a3];
    if (v8)
    {
      v9 = v8;
      [v8 setObject:+[NSNumber numberWithInteger:](NSNumber atIndexedSubscript:{"numberWithInteger:", objc_msgSend(objc_msgSend(v8, "objectAtIndexedSubscript:", 0), "integerValue") + 1), 0}];
      [objc_msgSend(v9 objectAtIndexedSubscript:{1), "doubleValue"}];
      v11 = [NSNumber numberWithDouble:v10 + a4];

      [v9 setObject:v11 atIndexedSubscript:1];
    }

    else
    {
      v12 = [NSMutableArray arrayWithObjects:[NSNumber numberWithInteger:1], [NSNumber numberWithDouble:a4], 0];
      countAndTimeBySQL = self->_countAndTimeBySQL;

      [(NSMutableDictionary *)countAndTimeBySQL setObject:v12 forKeyedSubscript:a3];
    }
  }
}

- (void)_logProfile
{
  v3 = MBGetSQLLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = MBGetSQLLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "SQL: Profile", buf, 2u);
      _MBLog();
    }

    v5 = [(NSMutableDictionary *)self->_countAndTimeBySQL allKeys];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100012DD8;
    v25[3] = &unk_1000FD568;
    v25[4] = self;
    v6 = [v5 sortedArrayUsingComparator:v25];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v21 objects:v32 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v22;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v22 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v21 + 1) + 8 * i);
          v12 = [(NSMutableDictionary *)self->_countAndTimeBySQL objectForKeyedSubscript:v11, v18, v19, v20];
          v13 = [objc_msgSend(v12 objectAtIndexedSubscript:{0), "integerValue"}];
          [objc_msgSend(v12 objectAtIndexedSubscript:{1), "doubleValue"}];
          v15 = v14;
          v16 = MBGetSQLLog();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            v17 = sub_100012EB0(v11);
            *buf = 134218498;
            v27 = v13;
            v28 = 2048;
            v29 = v15;
            v30 = 2112;
            v31 = v17;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "SQL: %6ld  %6.3f s  %@", buf, 0x20u);
            v20 = sub_100012EB0(v11);
            v19 = v15;
            v18 = v13;
            _MBLog();
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v21 objects:v32 count:16];
      }

      while (v8);
    }
  }
}

- (void)_exec:(id)a3
{
  if (!self->_db)
  {
    [(MBServiceCache *)self _raise:@"Database is closed"];
  }

  +[NSDate timeIntervalSinceReferenceDate];
  v6 = v5;
  if (sqlite3_exec(self->_db, [a3 UTF8String], 0, 0, 0))
  {
    [(MBServiceCache *)self _raise:@"Error executing SQL: %@", a3];
  }

  +[NSDate timeIntervalSinceReferenceDate];
  v8 = v7 - v6;

  [(MBServiceCache *)self _profile:a3 time:v8];
}

- (id)_prepare:(id)a3
{
  if (!self->_db)
  {
    [(MBServiceCache *)self _raise:@"Database is closed"];
  }

  v6 = [(NSMutableDictionary *)self->_stmtsBySQL objectForKeyedSubscript:a3];
  if (v6)
  {
    v7 = v6;
    if (![(MBSCacheStmt *)v6 isReset])
    {
      sub_10009BA58(a2, self, a3);
    }
  }

  else
  {
    ppStmt = 0;
    if (sqlite3_prepare_v2(self->_db, [a3 UTF8String], -1, &ppStmt, 0))
    {
      [(MBServiceCache *)self _raise:@"Error preparing statement: %@", a3];
    }

    v8 = [MBSCacheStmt alloc];
    v7 = [(MBSCacheStmt *)v8 initWithCache:self SQL:a3 stmt:ppStmt];
    [(NSMutableDictionary *)self->_stmtsBySQL setObject:v7 forKeyedSubscript:a3];
  }

  return v7;
}

- (void)open
{
  v12 = 0;
  if (self->_openCount < 1)
  {
    v3 = [(NSString *)self->_path stringByDeletingLastPathComponent];
    if (![+[NSFileManager createDirectoryAtPath:"createDirectoryAtPath:withIntermediateDirectories:attributes:error:"]
    {
      [(MBServiceCache *)self _raise:@"Error creating cache dir at %@: %@", v3, v12];
    }

    v4 = MBGetDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Opening cache db", buf, 2u);
      _MBLog();
    }

    if (sqlite3_open([(NSString *)self->_path fileSystemRepresentation], &self->_db))
    {
      [(MBServiceCache *)self _raise:@"Error opening cache db at %@", self->_path];
LABEL_21:
      [(MBServiceCache *)self _exec:@"pragma synchronous = normal"];
      goto LABEL_22;
    }

    if (sqlite3_busy_timeout(self->_db, 900000))
    {
      [(MBServiceCache *)self _raise:@"Error setting cache db busy timeout"];
    }

    v5 = MBGetSQLLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sqlite3_trace_v2(self->_db, 1u, sub_1000133F0, 0);
    }

    [(MBServiceCache *)self begin];
    [(MBServiceCache *)self _exec:@"create table if not exists Properties (\n    key                    text primary key, \n    value                  text\n);\n"];
    v6 = [(MBServiceCache *)self propertyForKey:@"SchemaVersion"];
    if (v6)
    {
      v7 = v6;
      if ([v6 isEqualToString:@"26"])
      {
LABEL_20:
        [(MBServiceCache *)self end];
        goto LABEL_21;
      }

      v8 = MBGetDefaultLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v14 = v7;
        v15 = 2112;
        v16 = @"26";
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Re-creating cache db because schema version changed (%@ != %@)", buf, 0x16u);
        v10 = v7;
        v11 = @"26";
        _MBLog();
      }

      [(MBServiceCache *)self _finalizeAll:v10];
      [(MBServiceCache *)self _exec:@"drop table if exists Properties;\ndrop table if exists Backups;\ndrop table if exists Snapshots;\ndrop table if exists Files;\ndrop table if exists FileExtendedAttributes;\ndrop table if exists DisabledDomains;\ndrop table if exists FileChanges;\ndrop table if exists FilesMissingEncryptionKey;\ndrop table if exists FileEncryptionKeys;\ndrop table if exists Restores;\ndrop table if exists RestoreFiles;\ndrop table if exists PlaceholderIcons;\ndrop table if exists FileProtectionClassesToRestore;\ndrop table if exists RestoreFailures;\ndrop table if exists PlaceholderResources;\ndrop table if exists KeyBagInfo;\n"];
      [(MBServiceCache *)self _exec:@"create table if not exists Properties (\n    key                    text primary key, \n    value                  text\n);\n"];
    }

    [(MBServiceCache *)self _exec:&cfstr_CreateTableIfN_0];
    [(MBServiceCache *)self setProperty:@"26" forKey:@"SchemaVersion"];
    [+[NSDate date](NSDate timeIntervalSinceReferenceDate];
    [(MBServiceCache *)self setProperty:[NSString forKey:"stringWithFormat:" stringWithFormat:v9], @"Created"];
    goto LABEL_20;
  }

  if (!self->_db)
  {
    sub_10009BAC0();
  }

LABEL_22:
  ++self->_openCount;
}

- (void)close
{
  openCount = self->_openCount;
  if (openCount >= 1)
  {
    if (openCount == 1)
    {
      if (!self->_db)
      {
        sub_10009BB14();
      }

      v4 = MBGetDefaultLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        *v5 = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Closing cache db", v5, 2u);
        _MBLog();
      }

      [(MBServiceCache *)self _finalizeAll];
      if (sqlite3_close(self->_db))
      {
        [(MBServiceCache *)self _raise:@"Error closing database"];
      }

      self->_db = 0;
      [(MBServiceCache *)self _logProfile];
      openCount = self->_openCount;
    }

    self->_openCount = openCount - 1;
  }
}

- (id)propertyForKey:(id)a3
{
  if (!a3)
  {
    sub_10009BB68();
  }

  v5 = [(MBServiceCache *)self _prepare:@"select value from Properties where key = ?"];
  [v5 bindText:a3 atIndex:1];
  if ([v5 step])
  {
    v6 = [v5 textColumn:0];
  }

  else
  {
    v6 = 0;
  }

  [v5 reset];
  return v6;
}

- (void)setProperty:(id)a3 forKey:(id)a4
{
  if (a4)
  {
    if (a3)
    {
LABEL_3:
      v7 = [(MBServiceCache *)self _prepare:@"insert or replace into Properties (key, value) values (?, ?)"];
      [v7 bindText:a4 atIndex:1];
      [v7 bindText:a3 atIndex:2];
      [v7 step];

      [v7 reset];
      return;
    }
  }

  else
  {
    sub_10009BBBC();
    if (a3)
    {
      goto LABEL_3;
    }
  }

  [(MBServiceCache *)self removePropertyForKey:a4];
}

- (void)removePropertyForKey:(id)a3
{
  if (!a3)
  {
    sub_10009BC10();
  }

  v5 = [(MBServiceCache *)self _prepare:@"delete from Properties where key = ?"];
  [v5 bindText:a3 atIndex:1];
  [v5 step];

  [v5 reset];
}

- (id)configuration
{
  v8 = 0;
  result = self->_configuration;
  if (!result)
  {
    v4 = [(MBServiceCache *)self propertyForKey:@"Configuration"];
    if (v4)
    {
      v5 = +[NSPropertyListSerialization propertyListWithData:options:format:error:](NSPropertyListSerialization, "propertyListWithData:options:format:error:", [v4 dataUsingEncoding:4], 0, 0, &v8);
      if (v5)
      {
LABEL_8:
        result = [[MBServiceConfiguration alloc] initWithPropertyList:v5];
        self->_configuration = result;
        return result;
      }

      v6 = MBGetDefaultLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v10 = v8;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Error deserializing configuration from cache: %@", buf, 0xCu);
        v7 = v8;
        _MBLog();
      }

      [(MBServiceCache *)self removePropertyForKey:@"Configuration", v7];
    }

    v5 = 0;
    goto LABEL_8;
  }

  return result;
}

- (id)backupForUDID:(id)a3 lastModified:(int64_t *)a4
{
  if (!a3)
  {
    sub_10009BC64();
  }

  v8 = [(MBServiceCache *)self _prepare:@"select lastModified, attributes from Backups where backupUDID = ?"];
  [v8 bindText:a3 atIndex:1];
  if (![v8 step])
  {
    v9 = 0;
    goto LABEL_9;
  }

  v9 = objc_alloc_init(MBSBackup);
  [(MBSBackup *)v9 setBackupUDID:MBDataWithString()];
  if (![(MBSBackup *)v9 backupUDID])
  {
    sub_10009BCB8(a2, self, a3);
    if (!a4)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (a4)
  {
LABEL_6:
    *a4 = [v8 int64Column:0];
  }

LABEL_7:
  -[MBSBackup setAttributes:](v9, "setAttributes:", -[MBSBackupAttributes initWithData:]([MBSBackupAttributes alloc], "initWithData:", [v8 blobColumn:1]));
  -[MBSBackup setSnapshots:](v9, "setSnapshots:", [-[MBServiceCache snapshotsForBackupUDID:](self snapshotsForBackupUDID:{a3), "mutableCopy"}]);
LABEL_9:
  [v8 reset];
  return v9;
}

- (void)setLastModified:(int64_t)a3 forBackupUDID:(id)a4
{
  if (!a4)
  {
    sub_10009BD20();
  }

  v7 = [(MBServiceCache *)self _prepare:@"update Backups set lastModified = ? where backupUDID = ?"];
  [v7 bindInt64:a3 atIndex:1];
  [v7 bindText:a4 atIndex:2];
  [v7 step];

  [v7 reset];
}

- (void)removeBackupForUDID:(id)a3
{
  if (!a3)
  {
    sub_10009BD74();
  }

  v5 = [(MBServiceCache *)self _prepare:@"delete from Backups where backupUDID = ?"];
  [v5 bindText:a3 atIndex:1];
  [v5 step];

  [v5 reset];
}

- (id)_snapshotWithStmt:(id)a3
{
  v4 = objc_alloc_init(MBSSnapshot);
  -[MBSSnapshot setSnapshotID:](v4, "setSnapshotID:", [a3 intColumn:1]);
  -[MBSSnapshot setLastModified:](v4, "setLastModified:", [a3 int64Column:2]);
  -[MBSSnapshot setCommitted:](v4, "setCommitted:", [a3 int64Column:3]);
  -[MBSSnapshot setAttributes:](v4, "setAttributes:", -[MBSSnapshotAttributes initWithData:]([MBSSnapshotAttributes alloc], "initWithData:", [a3 blobColumn:6]));
  return v4;
}

- (id)snapshotsForBackupUDID:(id)a3
{
  if (!a3)
  {
    sub_10009BDC8();
  }

  v5 = +[NSMutableArray array];
  v6 = [(MBServiceCache *)self _prepare:@"select * from Snapshots where backupUDID = ?"];
  [v6 bindText:a3 atIndex:1];
  if ([v6 step])
  {
    do
    {
      [v5 addObject:{-[MBServiceCache _snapshotWithStmt:](self, "_snapshotWithStmt:", v6)}];
    }

    while (([v6 step] & 1) != 0);
  }

  [v6 reset];
  [v5 sortUsingComparator:&stru_1000FD5A8];
  return v5;
}

- (void)_removeSnapshotForID:(unint64_t)a3 backupUDID:(id)a4
{
  v6 = [(MBServiceCache *)self _prepare:@"delete from Snapshots where backupUDID = ? and snapshotID = ?"];
  [v6 bindText:a4 atIndex:1];
  [v6 bindInteger:a3 atIndex:2];
  [v6 step];

  [v6 reset];
}

- (void)removeSnapshotForID:(unint64_t)a3 backupUDID:(id)a4 lastModified:(int64_t)a5
{
  v9 = [(MBServiceCache *)self snapshotsForBackupUDID:a4];
  if ([v9 count])
  {
    v10 = 0;
    while (1)
    {
      v11 = [v9 objectAtIndexedSubscript:v10];
      if ([v11 snapshotID] == a3)
      {
        break;
      }

      if (++v10 >= [v9 count])
      {
        return;
      }
    }

    if ([v11 committed])
    {
      if (v10 < [v9 count] - 1)
      {
        v12 = [objc_msgSend(v9 objectAtIndexedSubscript:{v10 + 1), "snapshotID"}];
        v13 = MBGetDefaultLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = 134218240;
          v25 = a3;
          v26 = 2048;
          v27 = v12;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Merging snapshot %lu into snapshot %lu", buf, 0x16u);
          v21 = a3;
          v23 = v12;
          _MBLog();
        }

        v14 = [(MBServiceCache *)self _prepare:@"update or ignore Files set snapshotID = ? where backupUDID = ? and snapshotID = ?", v21, v23];
        [v14 bindInteger:v12 atIndex:1];
        [v14 bindText:a4 atIndex:2];
        [v14 bindInteger:a3 atIndex:3];
        [v14 step];
        [v14 reset];
        v15 = [(MBServiceCache *)self _prepare:@"update Files set duplicateFileID = null, duplicateSnapshotID = 0 where backupUDID = ? and snapshotID = ? and duplicateSnapshotID = ?"];
        [v15 bindText:a4 atIndex:1];
        [v15 bindInteger:v12 atIndex:2];
        [v15 bindInteger:a3 atIndex:3];
        [v15 step];
        [v15 reset];
        if (!v10)
        {
          v16 = MBGetDefaultLog();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            *buf = 134217984;
            v25 = v12;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Discarding deleted files from snapshot %lu", buf, 0xCu);
            v22 = v12;
            _MBLog();
          }

          v17 = [(MBServiceCache *)self _prepare:@"delete from Files where backupUDID = ? and snapshotID = ? and deleted = 1", v22];
          [v17 bindText:a4 atIndex:1];
          [v17 bindInteger:v12 atIndex:2];
          [v17 step];
          [v17 reset];
        }

        v18 = [(MBServiceCache *)self _prepare:@"update Snapshots set lastModified = ? where backupUDID = ? and snapshotID = ?"];
        [v18 bindInt64:a5 atIndex:1];
        [v18 bindText:a4 atIndex:2];
        [v18 bindInteger:v12 atIndex:3];
        [v18 step];
        [v18 reset];
        goto LABEL_20;
      }

      v20 = MBGetDefaultLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Removing last snapshot", buf, 2u);
        goto LABEL_19;
      }
    }

    else
    {
      v19 = MBGetDefaultLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Removing uncommitted snapshot", buf, 2u);
LABEL_19:
        _MBLog();
      }
    }

LABEL_20:
    [(MBServiceCache *)self _removeSnapshotForID:a3 backupUDID:a4];
  }
}

- (void)setDisabledDomainNames:(id)a3 restrictedDomainNames:(id)a4
{
  self->_disabledDomainNames = objc_alloc_init(NSMutableSet);
  [(MBServiceCache *)self begin];
  [(MBServiceCache *)self removeAllDisabledDomains];
  [(MBServiceCache *)self addDisabledDomainNames:a3 restricted:0];
  [(MBServiceCache *)self addDisabledDomainNames:a4 restricted:1];
  -[MBServiceCache addDisabledDomainNames:restricted:](self, "addDisabledDomainNames:restricted:", [-[MBServiceCache configuration](self "configuration")], 1);

  [(MBServiceCache *)self end];
}

- (void)removeAllDisabledDomains
{
  v3 = [(MBServiceCache *)self _prepare:@"delete from DisabledDomains"];
  [v3 step];
  [v3 reset];
  disabledDomainNames = self->_disabledDomainNames;

  [(NSMutableSet *)disabledDomainNames removeAllObjects];
}

- (id)pathsForFilesMissingEncryptionKeyWithOffset:(unint64_t)a3 limit:(unint64_t)a4
{
  v7 = +[NSMutableArray array];
  v8 = [(MBServiceCache *)self _prepare:@"select path from FilesMissingEncryptionKey limit ? offset ?"];
  [v8 bindInteger:a4 atIndex:1];
  [v8 bindInteger:a3 atIndex:2];
  if ([v8 step])
  {
    do
    {
      [v7 addObject:{objc_msgSend(v8, "textColumn:", 0)}];
    }

    while (([v8 step] & 1) != 0);
  }

  [v8 reset];
  return v7;
}

- (void)removeFileMissingEncryptionKeyWithPath:(id)a3
{
  v4 = [(MBServiceCache *)self _prepare:@"delete from FilesMissingEncryptionKey where path = ?"];
  [v4 bindText:a3 atIndex:1];
  [v4 step];

  [v4 reset];
}

- (void)setFileEncryptionKey:(id)a3 forInodeNumber:(unint64_t)a4
{
  v6 = [(MBServiceCache *)self _prepare:@"insert or replace into FileEncryptionKeys values (?, ?)"];
  [v6 bindInt64:a4 atIndex:1];
  [v6 bindBlob:a3 atIndex:2];
  [v6 step];

  [v6 reset];
}

- (id)protectionClassesToRestoreByPathWithOffset:(unint64_t)a3 limit:(unint64_t)a4
{
  v7 = +[NSMutableDictionary dictionary];
  v8 = [(MBServiceCache *)self _prepare:@"select domainName, relativePath, protectionClass from FileProtectionClassesToRestore limit ? offset ?"];
  [v8 bindInteger:a4 atIndex:1];
  [v8 bindInteger:a3 atIndex:2];
  if ([v8 step])
  {
    do
    {
      v9 = [v8 textColumn:0];
      v10 = [v8 textColumn:1];
      v11 = [v8 intColumn:2];
      v12 = [(MBDomainManager *)self->_domainManager domainForName:v9];
      if (v12)
      {
        v13 = v12;
        if (([v12 isUninstalledAppDomain] & 1) == 0)
        {
          [v7 setObject:+[NSNumber numberWithUnsignedChar:](NSNumber forKeyedSubscript:{"numberWithUnsignedChar:", v11), objc_msgSend(objc_msgSend(v13, "rootPath"), "stringByAppendingPathComponent:", v10)}];
          continue;
        }

        v14 = MBGetDefaultLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v20 = v13;
          v21 = 2112;
          v22 = v10;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "App uninstalled for protection class to restore: %@:%@", buf, 0x16u);
          v17 = v13;
          v18 = v10;
LABEL_8:
          _MBLog();
        }
      }

      else
      {
        v15 = MBGetDefaultLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v20 = 0;
          v21 = 2112;
          v22 = v10;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Domain not found for protection class to restore: %@:%@", buf, 0x16u);
          v17 = 0;
          v18 = v10;
          goto LABEL_8;
        }
      }
    }

    while (([v8 step] & 1) != 0);
  }

  [v8 reset];
  return v7;
}

- (void)removeAllProtectionClassesToRestore
{
  v2 = [(MBServiceCache *)self _prepare:@"delete from FileProtectionClassesToRestore"];
  [v2 step];

  [v2 reset];
}

- (void)addRestoreFailure:(id)a3
{
  v4 = [(MBServiceCache *)self _prepare:@"insert or replace into RestoreFailures values (?, ?, ?, ?, ?, ?)"];
  [v4 bindText:objc_msgSend(a3 atIndex:{"identifier"), 1}];
  [v4 bindText:objc_msgSend(a3 atIndex:{"dataclass"), 2}];
  [v4 bindText:objc_msgSend(a3 atIndex:{"assetType"), 3}];
  [v4 bindText:objc_msgSend(a3 atIndex:{"displayName"), 4}];
  [v4 bindBlob:objc_msgSend(a3 atIndex:{"icon"), 5}];
  if ([a3 error])
  {
    [v4 bindBlob:+[NSKeyedArchiver archivedDataWithRootObject:requiringSecureCoding:error:](NSKeyedArchiver atIndex:{"archivedDataWithRootObject:requiringSecureCoding:error:", objc_msgSend(a3, "error"), 1, 0), 6}];
  }

  [v4 step];

  [v4 reset];
}

- (unint64_t)countOfRestoreFailuresForDataclass:(id)a3 assetType:(id)a4
{
  v6 = @"and dataclass = ?";
  v7 = &stru_1000FF270;
  if (!a3)
  {
    v6 = &stru_1000FF270;
  }

  if (a4)
  {
    v7 = @"and assetType = ?";
  }

  v8 = [(MBServiceCache *)self _prepare:[NSString stringWithFormat:@"select count(*) from RestoreFailures where 1 %@ %@", v6, v7]];
  v9 = v8;
  if (a3)
  {
    [v8 bindText:a3 atIndex:1];
    v10 = 2;
    if (!a4)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v10 = 1;
  if (a4)
  {
LABEL_7:
    [v9 bindText:a4 atIndex:v10];
  }

LABEL_8:
  if ([v9 step])
  {
    v11 = [v9 intColumn:0];
  }

  else
  {
    v11 = 0;
  }

  [v9 reset];
  return v11;
}

- (id)restoreFailuresForDataClass:(id)a3 assetType:(id)a4 range:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  v10 = +[NSMutableArray array];
  v11 = @"and dataclass = ?";
  v12 = &stru_1000FF270;
  if (!a3)
  {
    v11 = &stru_1000FF270;
  }

  if (a4)
  {
    v12 = @"and assetType = ?";
  }

  v13 = [(MBServiceCache *)self _prepare:[NSString stringWithFormat:@"select identifier, dataclass, assetType, displayName, icon, error from RestoreFailures where 1 %@ %@ order by dataclass, identifier limit ? offset ?", v11, v12]];
  v14 = v13;
  if (a3)
  {
    [v13 bindText:a3 atIndex:1];
    v15 = 2;
    if (!a4)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v15 = 1;
  if (a4)
  {
LABEL_7:
    [v14 bindText:a4 atIndex:v15];
    v15 = (v15 + 1);
  }

LABEL_8:
  [v14 bindInteger:length atIndex:v15];
  [v14 bindInteger:location atIndex:(v15 + 1)];
  if ([v14 step])
  {
    do
    {
      v16 = objc_alloc_init(MBRestoreFailure);
      [v16 setIdentifier:{objc_msgSend(v14, "textColumn:", 0)}];
      [v16 setDataclass:{objc_msgSend(v14, "textColumn:", 1)}];
      [v16 setAssetType:{objc_msgSend(v14, "textColumn:", 2)}];
      [v16 setDisplayName:{objc_msgSend(v14, "textColumn:", 3)}];
      [v16 setIcon:{objc_msgSend(v14, "blobColumn:", 4)}];
      v17 = [v14 blobColumn:5];
      if (v17)
      {
        [v16 setError:{+[NSKeyedUnarchiver unarchivedObjectOfClass:fromData:error:](NSKeyedUnarchiver, "unarchivedObjectOfClass:fromData:error:", objc_opt_class(), v17, 0)}];
      }

      [v10 addObject:v16];
    }

    while (([v14 step] & 1) != 0);
  }

  [v14 reset];
  return v10;
}

@end