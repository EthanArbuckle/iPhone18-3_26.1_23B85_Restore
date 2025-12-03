@interface PCSMetrics
+ (id)metrics;
- (BOOL)addKeyWithDSID:(id)d service:(unsigned int)service publicKey:(id)key;
- (BOOL)markKeyNegativeWithDSID:(id)d service:(unsigned int)service;
- (BOOL)setupDatabase;
- (PCSMetrics)init;
- (id)databaseURL;
- (id)keyRegistryCallback;
- (id)markNegativeCallback;
- (int)updateCurrentWState:(_PCSIdentitySetData *)state forceFetchFromServer:(BOOL)server;
- (unsigned)getKeyInfoWithDSID:(id)d service:(unsigned int)service publicKey:(id)key;
- (void)addIdentityInfoToHealthSummary:(id)summary dsid:(id)dsid wState:(int)state;
- (void)addMetricsToHealthSummary:(id)summary withIdentitySet:(_PCSIdentitySetData *)set;
- (void)dealloc;
- (void)storeEventTimestamp:(unint64_t)timestamp;
@end

@implementation PCSMetrics

- (PCSMetrics)init
{
  v6.receiver = self;
  v6.super_class = PCSMetrics;
  v2 = [(PCSMetrics *)&v6 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.ProtectedCloudStorage", "PCSMetrics");
    [(PCSMetrics *)v2 setLog:v3];

    v4 = objc_alloc_init(NSUserDefaults);
    [(PCSMetrics *)v2 setSettings:v4];

    if (![(PCSMetrics *)v2 setupDatabase])
    {

      return 0;
    }
  }

  return v2;
}

- (void)dealloc
{
  sqlite3_finalize([(PCSMetrics *)self addKeyStmt]);
  sqlite3_finalize([(PCSMetrics *)self markKeyStmt]);
  sqlite3_finalize([(PCSMetrics *)self getKeyStmt]);
  if (sqlite3_close([(PCSMetrics *)self db]))
  {
    sub_100022C2C();
  }

  v3.receiver = self;
  v3.super_class = PCSMetrics;
  [(PCSMetrics *)&v3 dealloc];
}

+ (id)metrics
{
  if (qword_100040758 != -1)
  {
    sub_100022C48();
  }

  v3 = qword_100040760;

  return v3;
}

- (void)addMetricsToHealthSummary:(id)summary withIdentitySet:(_PCSIdentitySetData *)set
{
  summaryCopy = summary;
  settings = [(PCSMetrics *)self settings];
  v7 = [settings fuzzyDaysSinceKey:kPCSSettingStingrayRoll];
  [summaryCopy setObject:v7 forKeyedSubscript:@"rollSettingDays"];

  settings2 = [(PCSMetrics *)self settings];
  v9 = [settings2 fuzzyDaysSinceKey:@"timestampWEnable"];
  [summaryCopy setObject:v9 forKeyedSubscript:@"wEnableThisDeviceDays"];

  settings3 = [(PCSMetrics *)self settings];
  v11 = [settings3 fuzzyDaysSinceKey:@"timestampWDisable"];
  [summaryCopy setObject:v11 forKeyedSubscript:@"wDisableThisDeviceDays"];

  settings4 = [(PCSMetrics *)self settings];
  v13 = [settings4 fuzzyDaysSinceKey:@"timestampKeyrollSuccess"];
  [summaryCopy setObject:v13 forKeyedSubscript:@"keyrollSucceededDays"];

  settings5 = [(PCSMetrics *)self settings];
  v15 = [settings5 fuzzyDaysSinceKey:@"timestampKeyrollAttempted"];
  [summaryCopy setObject:v15 forKeyedSubscript:@"keyrollAttemptedDays"];

  settings6 = [(PCSMetrics *)self settings];
  v17 = [settings6 fuzzyDaysSinceKey:@"timestampObserveWEnable"];
  [summaryCopy setObject:v17 forKeyedSubscript:@"wEnableObservedDays"];

  settings7 = [(PCSMetrics *)self settings];
  v19 = [settings7 fuzzyDaysSinceKey:@"timestampObserveWDisable"];
  [summaryCopy setObject:v19 forKeyedSubscript:@"wDisableObservedDays"];

  v20 = [(PCSMetrics *)self updateCurrentWState:set forceFetchFromServer:1];
  v21 = [NSNumber numberWithInt:v20];
  [summaryCopy setObject:v21 forKeyedSubscript:@"wState"];

  settings8 = [(PCSMetrics *)self settings];
  v23 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [settings8 tristateForBoolKey:@"initialWState"]);
  [summaryCopy setObject:v23 forKeyedSubscript:@"initialWState"];

  [(PCSMetrics *)self addIdentityInfoToHealthSummary:summaryCopy dsid:_PCSIdentitySetGetDSID() wState:v20];
}

- (void)addIdentityInfoToHealthSummary:(id)summary dsid:(id)dsid wState:(int)state
{
  summaryCopy = summary;
  dsidCopy = dsid;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v11 = _PCSServiceItemsGetNoRollStingrayServiceTypes();
  v12 = dsidCopy;
  v13 = summaryCopy;
  PCSServiceItemsGetEachName();
  v8 = [NSNumber numberWithUnsignedLong:v23[3], _NSConcreteStackBlock, 3221225472, sub_100015D70, &unk_100039498];
  [v13 setObject:v8 forKeyedSubscript:@"currentInStingray"];

  v9 = [NSNumber numberWithUnsignedLong:v19[3]];
  [v13 setObject:v9 forKeyedSubscript:@"currentMarkedForRolling"];

  v10 = [NSNumber numberWithUnsignedLong:v15[3]];
  [v13 setObject:v10 forKeyedSubscript:@"currentWasMarkedForRolling"];

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);
}

- (int)updateCurrentWState:(_PCSIdentitySetData *)state forceFetchFromServer:(BOOL)server
{
  if (state)
  {
    v5 = PCSIdentitySetIsWalrusWithForceFetch();
    settings = [(PCSMetrics *)self settings];
    v7 = [settings objectForKey:@"initialWState"];

    if (!v7)
    {
      settings2 = [(PCSMetrics *)self settings];
      [settings2 setBool:v5 forKey:@"initialWState"];
    }

    settings3 = [(PCSMetrics *)self settings];
    v10 = [settings3 tristateForBoolKey:@"knownWState"];

    if (v10 == -1 || ((v5 ^ (v10 == 0)) & 1) == 0)
    {
      settings4 = [(PCSMetrics *)self settings];
      [settings4 setBool:v5 forKey:@"knownWState"];

      if (v5)
      {
        v12 = 5;
      }

      else
      {
        v12 = 6;
      }

      [(PCSMetrics *)self storeEventTimestamp:v12];
    }
  }

  else
  {
    LODWORD(v5) = -1;
  }

  return v5;
}

- (void)storeEventTimestamp:(unint64_t)timestamp
{
  v6 = objc_alloc_init(NSUserDefaults);
  if (timestamp - 1 > 5)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&off_100039558 + timestamp - 1);
  }

  v5 = +[NSDate now];
  [v6 setObject:v5 forKey:v4];
}

- (id)keyRegistryCallback
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001646C;
  v4[3] = &unk_100039510;
  v4[4] = self;
  v2 = objc_retainBlock(v4);

  return v2;
}

- (id)markNegativeCallback
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000166A4;
  v4[3] = &unk_100039538;
  v4[4] = self;
  v2 = objc_retainBlock(v4);

  return v2;
}

- (id)databaseURL
{
  v3 = +[NSFileManager defaultManager];
  v9 = 0;
  v4 = [v3 URLForDirectory:14 inDomain:1 appropriateForURL:0 create:0 error:&v9];
  v5 = v9;

  if (v4)
  {
    v6 = [v4 URLByAppendingPathComponent:@"com.apple.ProtectedCloudStorage"];

    v7 = [v6 URLByAppendingPathComponent:@"metrics.db"];
  }

  else
  {
    v6 = [(PCSMetrics *)self log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "failed to locate Application Support directory: %@", buf, 0xCu);
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)setupDatabase
{
  databaseURL = [(PCSMetrics *)self databaseURL];
  v4 = databaseURL;
  if (databaseURL)
  {
    fileSystemRepresentation = [databaseURL fileSystemRepresentation];
    if (fileSystemRepresentation)
    {
      if (sqlite3_open_v2(fileSystemRepresentation, &self->_db, 6, 0))
      {
        v6 = [(PCSMetrics *)self log];
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v15 = v4;
          v16 = 2080;
          v17 = sqlite3_errmsg([(PCSMetrics *)self db]);
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "opening %@ failed: %s", buf, 0x16u);
        }
      }

      else
      {
        [(PCSMetrics *)self db];
        factor = _sqlite3_maintain_load_factor();
        if (factor)
        {
          v8 = factor;
          v9 = [(PCSMetrics *)self log];
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v15 = v4;
            v16 = 1024;
            LODWORD(v17) = v8;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "_sqlite3_maintain_load_factor for %@ failed: %d", buf, 0x12u);
          }
        }

        errmsg = 0;
        if (sqlite3_exec([(PCSMetrics *)self db], "PRAGMA journal_mode = WAL;CREATE TABLE IF NOT EXISTS keys(    dsid TEXT NOT NULL,    service INTEGER NOT NULL,    pubkey TEXT NOT NULL,    marked INTEGER NOT NULL DEFAULT 0,    PRIMARY KEY (dsid, service, pubkey));", 0, 0, &errmsg))
        {
          v10 = [(PCSMetrics *)self log];
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v15 = v4;
            v16 = 2080;
            v17 = errmsg;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "table create for %@ failed: %s", buf, 0x16u);
          }

          sqlite3_free(errmsg);
        }

        else if (!sqlite3_prepare_v2([(PCSMetrics *)self db], "INSERT OR IGNORE INTO keys (dsid, service, pubkey) VALUES (?, ?, ?);", -1, &self->_addKeyStmt, 0) && !sqlite3_prepare_v2([(PCSMetrics *)self db], "UPDATE keys SET marked=? WHERE dsid=? AND service=?;", -1, &self->_markKeyStmt, 0))
        {
          v11 = sqlite3_prepare_v2([(PCSMetrics *)self db], "SELECT marked FROM keys WHERE dsid=? AND service=? AND pubkey=?;", -1, &self->_getKeyStmt, 0) == 0;
          goto LABEL_18;
        }
      }
    }
  }

  v11 = 0;
LABEL_18:

  return v11;
}

- (BOOL)addKeyWithDSID:(id)d service:(unsigned int)service publicKey:(id)key
{
  keyCopy = key;
  dCopy = d;
  [(PCSMetrics *)self addKeyStmt];
  [dCopy UTF8String];

  v10 = !sub_100016B98() && !sqlite3_bind_int64(-[PCSMetrics addKeyStmt](self, "addKeyStmt"), 2, service) && (-[PCSMetrics addKeyStmt](self, "addKeyStmt"), !sub_100016B74([keyCopy UTF8String])) && sqlite3_step(-[PCSMetrics addKeyStmt](self, "addKeyStmt")) == 101;
  sqlite3_reset([(PCSMetrics *)self addKeyStmt]);

  return v10;
}

- (BOOL)markKeyNegativeWithDSID:(id)d service:(unsigned int)service
{
  dCopy = d;
  v7 = !sqlite3_bind_int(-[PCSMetrics markKeyStmt](self, "markKeyStmt"), 1, 1) && !sqlite3_bind_text(-[PCSMetrics markKeyStmt](self, "markKeyStmt"), 2, [dCopy UTF8String], -1, 0) && !sqlite3_bind_int64(-[PCSMetrics markKeyStmt](self, "markKeyStmt"), 3, service) && sqlite3_step(-[PCSMetrics markKeyStmt](self, "markKeyStmt")) == 101;
  sqlite3_reset([(PCSMetrics *)self markKeyStmt]);

  return v7;
}

- (unsigned)getKeyInfoWithDSID:(id)d service:(unsigned int)service publicKey:(id)key
{
  keyCopy = key;
  dCopy = d;
  [(PCSMetrics *)self getKeyStmt];
  [dCopy UTF8String];

  if (sub_100016B98() || sqlite3_bind_int64(-[PCSMetrics getKeyStmt](self, "getKeyStmt"), 2, service) || (-[PCSMetrics getKeyStmt](self, "getKeyStmt"), sub_100016B74([keyCopy UTF8String])) || sqlite3_step(-[PCSMetrics getKeyStmt](self, "getKeyStmt")) != 100)
  {
    v10 = 0;
  }

  else if (sqlite3_column_int([(PCSMetrics *)self getKeyStmt], 0))
  {
    v10 = 3;
  }

  else
  {
    v10 = 1;
  }

  sqlite3_reset([(PCSMetrics *)self getKeyStmt]);

  return v10;
}

@end