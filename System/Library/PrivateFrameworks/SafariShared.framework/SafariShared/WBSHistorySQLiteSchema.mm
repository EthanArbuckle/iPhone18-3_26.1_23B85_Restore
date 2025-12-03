@interface WBSHistorySQLiteSchema
+ (id)legacyHistoryPropertyListURL;
- (BOOL)migrateLegacyDatabaseCreatingRedirectChains:(id)chains urlsToItemAndLastVisitID:(id)d visitsToUseForRedirectChains:(id)redirectChains;
- (NSDictionary)legacyDatabase;
- (WBSHistorySQLiteSchema)initWithDatabase:(id)database crypto:(id)crypto migrateVisitsAfterDate:(id)date;
- (id)_migrateLegacyDatabaseCreatingItemsAndVisits:(id)visits outVisitsToUseForRedirectChains:(id)chains;
- (int)_migrateToSchemaVersion:(int)version;
- (int)_migrateToSchemaVersion_10;
- (int)_migrateToSchemaVersion_11;
- (int)_migrateToSchemaVersion_12;
- (int)_migrateToSchemaVersion_13;
- (int)_migrateToSchemaVersion_14;
- (int)_migrateToSchemaVersion_15;
- (int)_migrateToSchemaVersion_16;
- (int)_migrateToSchemaVersion_2;
- (int)_migrateToSchemaVersion_3;
- (int)_migrateToSchemaVersion_4;
- (int)_migrateToSchemaVersion_5;
- (int)_migrateToSchemaVersion_6;
- (int)_migrateToSchemaVersion_7;
- (int)_migrateToSchemaVersion_8;
- (int)_migrateToSchemaVersion_9;
- (int)_setDatabaseSchemaVersion:(int)version;
- (int)migrateToCurrentSchemaVersionIfNeeded;
- (int64_t)_migrateLegacyItem:(id)item dailyVisitCounts:(void *)counts weeklyVisitCounts:(void *)visitCounts;
- (int64_t)_migrateLegacyVisitWithItemID:(int64_t)d visitTime:(double)time title:(id)title score:(unint64_t)score loadSuccessful:(BOOL)successful httpNonGet:(BOOL)get synthesized:(BOOL)synthesized;
- (void)_migrateLegacyDatabase;
- (void)_migrateToSchemaVersion_10;
- (void)_migrateToSchemaVersion_11;
- (void)_migrateToSchemaVersion_12;
- (void)_migrateToSchemaVersion_13;
- (void)_migrateToSchemaVersion_14;
- (void)_migrateToSchemaVersion_15;
- (void)_migrateToSchemaVersion_16;
- (void)_migrateToSchemaVersion_2;
- (void)_migrateToSchemaVersion_3;
- (void)_migrateToSchemaVersion_4;
- (void)_migrateToSchemaVersion_5;
- (void)_migrateToSchemaVersion_6;
- (void)_migrateToSchemaVersion_7;
- (void)_migrateToSchemaVersion_9;
- (void)_removeLegacyHistoryDatabaseIfNeeded;
- (void)migrateToCurrentSchemaVersionIfNeeded;
@end

@implementation WBSHistorySQLiteSchema

- (WBSHistorySQLiteSchema)initWithDatabase:(id)database crypto:(id)crypto migrateVisitsAfterDate:(id)date
{
  databaseCopy = database;
  cryptoCopy = crypto;
  dateCopy = date;
  v16.receiver = self;
  v16.super_class = WBSHistorySQLiteSchema;
  v12 = [(WBSHistorySQLiteSchema *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_database, database);
    objc_storeStrong(&v13->_crypto, crypto);
    objc_storeStrong(&v13->_migrateVisitsAfterDate, date);
    v14 = v13;
  }

  return v13;
}

- (int)migrateToCurrentSchemaVersionIfNeeded
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = SafariShared::WBSSQLiteDatabaseFetch<>(self->_database, @"PRAGMA user_version");
  nextObject = [v3 nextObject];
  v5 = [nextObject intAtIndex:0];

  statement = [v3 statement];
  [statement invalidate];

  if (v5 > 15)
  {
    goto LABEL_68;
  }

  if (v5)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 67109376;
      v22 = v5;
      v23 = 1024;
      v24 = 16;
      _os_log_impl(&dword_1BB6F3000, v7, OS_LOG_TYPE_INFO, "History database has schema version of %d. Migrating to schema version %d.", buf, 0xEu);
    }

    --v5;
    while (v5 != 15)
    {
      v8 = [(WBSHistorySQLiteSchema *)self _migrateToSchemaVersion:(v5 + 2)];
      ++v5;
      if (v8 != 101)
      {
        goto LABEL_68;
      }
    }

    v12 = WBS_LOG_CHANNEL_PREFIXHistory();
    v5 = 16;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v22 = 16;
      _os_log_impl(&dword_1BB6F3000, v12, OS_LOG_TYPE_INFO, "History database now has schema version of %d.", buf, 8u);
    }

    goto LABEL_68;
  }

  if (SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"CREATE TABLE history_items (id INTEGER PRIMARY KEY AUTOINCREMENT,url TEXT NOT NULL UNIQUE,domain_expansion TEXT NULL,visit_count INTEGER NOT NULL,daily_visit_counts BLOB NOT NULL,weekly_visit_counts BLOB NULL,autocomplete_triggers BLOB NULL,should_recompute_derived_visit_counts INTEGER NOT NULL,visit_count_score INTEGER NOT NULL,status_code INTEGER NOT NULL DEFAULT 0)") != 101)
  {
    v13 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [WBSHistorySQLiteSchema migrateToCurrentSchemaVersionIfNeeded];
    }

LABEL_63:

LABEL_67:
    v5 = 0;
    goto LABEL_68;
  }

  if (SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"CREATE TABLE history_visits (id INTEGER PRIMARY KEY AUTOINCREMENT,history_item INTEGER NOT NULL REFERENCES history_items(id) ON DELETE CASCADE,visit_time REAL NOT NULL,title TEXT NULL,load_successful BOOLEAN NOT NULL DEFAULT 1,http_non_get BOOLEAN NOT NULL DEFAULT 0,synthesized BOOLEAN NOT NULL DEFAULT 0,redirect_source INTEGER NULL UNIQUE REFERENCES history_visits(id) ON DELETE CASCADE,redirect_destination INTEGER NULL UNIQUE REFERENCES history_visits(id) ON DELETE CASCADE,origin INTEGER NOT NULL DEFAULT 0,generation INTEGER NOT NULL DEFAULT 0,attributes INTEGER NOT NULL DEFAULT 0,score INTEGER NOT NULL DEFAULT 0)") != 101)
  {
    v13 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [WBSHistorySQLiteSchema migrateToCurrentSchemaVersionIfNeeded];
    }

    goto LABEL_63;
  }

  if (SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"CREATE TABLE history_tombstones (id INTEGER PRIMARY KEY AUTOINCREMENT,start_time REAL NOT NULL,end_time REAL NOT NULL,url TEXT,generation INTEGER NOT NULL DEFAULT 0)") != 101)
  {
    v13 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [WBSHistorySQLiteSchema migrateToCurrentSchemaVersionIfNeeded];
    }

    goto LABEL_63;
  }

  if (SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"CREATE TABLE metadata (key TEXT NOT NULL UNIQUE, value)") != 101)
  {
    v13 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [WBSHistorySQLiteSchema migrateToCurrentSchemaVersionIfNeeded];
    }

    goto LABEL_63;
  }

  if (SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"CREATE TABLE history_client_versions (client_version INTEGER PRIMARY KEY,last_seen REAL NOT NULL)") != 101)
  {
    v13 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [WBSHistorySQLiteSchema migrateToCurrentSchemaVersionIfNeeded];
    }

    goto LABEL_63;
  }

  if (SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"CREATE TABLE history_event_listeners (listener_name TEXT PRIMARY KEY NOT NULL UNIQUE,last_seen REAL NOT NULL)") != 101)
  {
    v13 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [WBSHistorySQLiteSchema migrateToCurrentSchemaVersionIfNeeded];
    }

    goto LABEL_63;
  }

  if (SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"CREATE TABLE history_events (id INTEGER PRIMARY KEY AUTOINCREMENT,event_type TEXT NOT NULL,event_time REAL NOT NULL,pending_listeners TEXT NOT NULL,value BLOB)") != 101)
  {
    v13 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [WBSHistorySQLiteSchema migrateToCurrentSchemaVersionIfNeeded];
    }

    goto LABEL_63;
  }

  if (SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"CREATE TABLE history_tags (id INTEGER PRIMARY KEY,type INTEGER NOT NULL,level INTEGER NOT NULL,identifier TEXT NOT NULL,title TEXT NOT NULL,modification_timestamp REAL NOT NULL,item_count INTEGER NOT NULL DEFAULT 0)") != 101)
  {
    v13 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [WBSHistorySQLiteSchema migrateToCurrentSchemaVersionIfNeeded];
    }

    goto LABEL_63;
  }

  if (SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"CREATE TABLE history_items_to_tags (history_item INTEGER NOT NULL,tag_id INTEGER NOT NULL,timestamp REAL NOT NULL,FOREIGN KEY(tag_id) REFERENCES history_tags(id) ON DELETE CASCADE,FOREIGN KEY(history_item) REFERENCES history_items(id) ON DELETE CASCADE,UNIQUE(history_item, tag_id) ON CONFLICT REPLACE)") != 101)
  {
    v13 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [WBSHistorySQLiteSchema migrateToCurrentSchemaVersionIfNeeded];
    }

    goto LABEL_63;
  }

  if (SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"CREATE TRIGGER increment_count_on_insert AFTER INSERT ON history_items_to_tags BEGIN  UPDATE history_tags SET item_count = item_count + 1 WHERE id = NEW.tag_id;END;") != 101)
  {
    v13 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [WBSHistorySQLiteSchema migrateToCurrentSchemaVersionIfNeeded];
    }

    goto LABEL_63;
  }

  if (SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"CREATE TRIGGER decrement_count_on_delete BEFORE DELETE ON history_items_to_tags BEGIN  UPDATE history_tags SET item_count = item_count - 1 WHERE id = OLD.tag_id;END;") != 101)
  {
    v13 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [WBSHistorySQLiteSchema migrateToCurrentSchemaVersionIfNeeded];
    }

    goto LABEL_63;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = [&unk_1F3A9B258 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = *v17;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(&unk_1F3A9B258);
        }

        if (SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, *(*(&v16 + 1) + 8 * i)) != 101)
        {
          v14 = WBS_LOG_CHANNEL_PREFIXHistory();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
            objc_claimAutoreleasedReturnValue();
            [WBSHistorySQLiteSchema migrateToCurrentSchemaVersionIfNeeded];
          }

          goto LABEL_67;
        }
      }

      v9 = [&unk_1F3A9B258 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  [(WBSHistorySQLiteSchema *)self _setDatabaseSchemaVersion:16];
  [(WBSHistorySQLiteSchema *)self _migrateLegacyDatabase];
  v5 = 16;
LABEL_68:

  return v5;
}

- (int)_setDatabaseSchemaVersion:(int)version
{
  v17 = *MEMORY[0x1E69E9840];
  database = self->_database;
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PRAGMA user_version = %d", *&version];
  v7 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(database, 0, v6);

  if (v7 != 101)
  {
    v8 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      lastErrorMessage = [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      *buf = 67109634;
      versionCopy = version;
      v13 = 2114;
      v14 = lastErrorMessage;
      v15 = 1024;
      v16 = v7;
      _os_log_error_impl(&dword_1BB6F3000, v8, OS_LOG_TYPE_ERROR, "Failed to set the database schema version to %d: %{public}@ (%d)", buf, 0x18u);
    }
  }

  return v7;
}

- (int)_migrateToSchemaVersion:(int)version
{
  v3 = *&version;
  v15 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"_migrateToSchemaVersion_%d", *&version];
  v6 = NSSelectorFromString(v5);

  v7 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"BEGIN TRANSACTION");
  if (v7 == 101)
  {
    v8 = [(WBSHistorySQLiteSchema *)self methodSignatureForSelector:v6];
    v9 = [MEMORY[0x1E695DF50] invocationWithMethodSignature:v8];
    [v9 setSelector:v6];
    [v9 invokeWithTarget:self];
    v14 = 1;
    [v9 getReturnValue:&v14];
    if (v14 == 101 && (v14 = [(WBSHistorySQLiteSchema *)self _setDatabaseSchemaVersion:v3], v14 == 101))
    {
      v10 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"COMMIT TRANSACTION");
      if (v10 != 101)
      {
        v11 = WBS_LOG_CHANNEL_PREFIXHistory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
          objc_claimAutoreleasedReturnValue();
          [WBSHistorySQLiteSchema _migrateToSchemaVersion:];
        }

        goto LABEL_15;
      }
    }

    else if (SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"ROLLBACK TRANSACTION") != 101)
    {
      v12 = WBS_LOG_CHANNEL_PREFIXHistory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
        objc_claimAutoreleasedReturnValue();
        [WBSHistorySQLiteSchema _migrateToSchemaVersion:];
      }
    }

    v10 = v14;
LABEL_15:

    goto LABEL_16;
  }

  v10 = v7;
  v8 = WBS_LOG_CHANNEL_PREFIXHistory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
    objc_claimAutoreleasedReturnValue();
    [WBSHistorySQLiteSchema _migrateToSchemaVersion:];
  }

LABEL_16:

  return v10;
}

- (int)_migrateToSchemaVersion_2
{
  v3 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"ALTER TABLE history_visits ADD COLUMN origin INTEGER NOT NULL DEFAULT 0");
  if (v3 != 101)
  {
    v4 = v3;
    v5 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [WBSHistorySQLiteSchema _migrateToSchemaVersion_2];
    }

    goto LABEL_7;
  }

  v4 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"CREATE INDEX history_visits__origin ON history_visits (origin)");
  if (v4 != 101)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [WBSHistorySQLiteSchema _migrateToSchemaVersion_2];
    }

LABEL_7:
  }

  return v4;
}

- (int)_migrateToSchemaVersion_3
{
  v3 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"DROP INDEX history_visits__origin");
  if (v3 != 101)
  {
    v5 = v3;
    v6 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [WBSHistorySQLiteSchema _migrateToSchemaVersion_3];
    }

    goto LABEL_10;
  }

  v4 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"ALTER TABLE history_visits ADD COLUMN generation INTEGER NOT NULL DEFAULT 0");
  if (v4 != 101)
  {
    v5 = v4;
    v6 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [WBSHistorySQLiteSchema _migrateToSchemaVersion_3];
    }

    goto LABEL_10;
  }

  v5 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"CREATE INDEX history_visits__origin ON history_visits (origin, generation)");
  if (v5 != 101)
  {
    v6 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [WBSHistorySQLiteSchema _migrateToSchemaVersion_3];
    }

LABEL_10:
  }

  return v5;
}

- (int)_migrateToSchemaVersion_4
{
  v3 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"CREATE TABLE history_tombstones (id INTEGER PRIMARY KEY AUTOINCREMENT,start_time REAL NOT NULL,end_time REAL NOT NULL,url TEXT,generation INTEGER NOT NULL DEFAULT 0)");
  if (v3 != 101)
  {
    v4 = v3;
    v5 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [WBSHistorySQLiteSchema migrateToCurrentSchemaVersionIfNeeded];
    }

    goto LABEL_7;
  }

  v4 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"CREATE INDEX history_tombstones__generation ON history_tombstones (generation)");
  if (v4 != 101)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [WBSHistorySQLiteSchema _migrateToSchemaVersion_4];
    }

LABEL_7:
  }

  return v4;
}

- (int)_migrateToSchemaVersion_5
{
  v3 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"ALTER TABLE history_items ADD COLUMN should_recompute_derived_visit_counts INTEGER NOT NULL DEFAULT 0");
  if (v3 != 101)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [WBSHistorySQLiteSchema _migrateToSchemaVersion_5];
    }
  }

  return v3;
}

- (int)_migrateToSchemaVersion_6
{
  v3 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"DROP INDEX history_tombstones__end_time");
  if (v3 != 1 && v3 != 101)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [WBSHistorySQLiteSchema _migrateToSchemaVersion_6];
    }
  }

  v5 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"CREATE INDEX history_tombstones__end_time ON history_tombstones (end_time)");
  if (v5 != 101)
  {
    v6 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [WBSHistorySQLiteSchema _migrateToSchemaVersion_6];
    }
  }

  return v5;
}

- (int)_migrateToSchemaVersion_7
{
  v3 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"DROP INDEX history_visits__last_visit");
  if (v3 != 1 && v3 != 101)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [WBSHistorySQLiteSchema _migrateToSchemaVersion_7];
    }
  }

  v5 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"CREATE INDEX history_visits__last_visit ON history_visits (history_item, visit_time DESC, synthesized ASC)");
  if (v5 != 101)
  {
    v6 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [WBSHistorySQLiteSchema _migrateToSchemaVersion_7];
    }
  }

  return v5;
}

- (int)_migrateToSchemaVersion_8
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"CREATE TABLE history_client_versions (client_version INTEGER PRIMARY KEY,last_seen REAL NOT NULL)");
  if (v3 != 101)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [WBSHistorySQLiteSchema migrateToCurrentSchemaVersionIfNeeded];
    }
  }

  v22 = SafariShared::WBSSQLiteDatabaseFetch<>(self->_database, @"SELECT id, url FROM history_tombstones WHERE url IS NOT NULL");
  v24 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v22;
  v5 = [obj countByEnumeratingWithState:&v31 objects:v38 count:16];
  if (v5)
  {
    v6 = *v32;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v32 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v31 + 1) + 8 * i);
        v9 = [v8 int64AtIndex:0];
        v10 = [v8 stringAtIndex:1];
        crypto = self->_crypto;
        v36 = @"url";
        v37 = v10;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
        v13 = [(WBSHistoryCrypto *)crypto encryptDictionary:v12];
        v14 = [MEMORY[0x1E696AD98] numberWithLongLong:v9];
        [v24 setObject:v13 forKeyedSubscript:v14];
      }

      v5 = [obj countByEnumeratingWithState:&v31 objects:v38 count:16];
    }

    while (v5);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v15 = v24;
  v16 = [v15 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v16)
  {
    v17 = *v28;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v28 != v17)
        {
          objc_enumerationMutation(v15);
        }

        v19 = *(*(&v27 + 1) + 8 * j);
        v26 = [v15 objectForKeyedSubscript:v19];
        database = self->_database;
        integerValue = [v19 integerValue];
        v3 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSData * {__strong}&,long>(database, 0, @"UPDATE history_tombstones SET url = ? WHERE id = ?", &v26, &integerValue);
      }

      v16 = [v15 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v16);
  }

  return v3;
}

- (int)_migrateToSchemaVersion_9
{
  v3 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"ALTER TABLE history_items ADD COLUMN visit_count_score INTEGER NOT NULL DEFAULT 0");
  if (v3 == 101)
  {
    v4 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"ALTER TABLE history_visits ADD COLUMN attributes INTEGER NOT NULL DEFAULT 0");
    if (v4 == 101)
    {
      database = self->_database;
      LODWORD(v5) = 1.0;
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ALTER TABLE history_visits ADD COLUMN score INTEGER NOT NULL DEFAULT %lu", +[WBSHistoryVisit scoreForWeightedVisitCount:](WBSHistoryVisit, "scoreForWeightedVisitCount:", v5)];
      v8 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(database, 0, v7);

      if (v8 == 101)
      {
        function_v2 = sqlite3_create_function_v2([(WBSSQLiteDatabase *)self->_database handle], "safari_visitcountscore", 1, 2053, 0, sqliteVisitCountScore, 0, 0, 0);
        if (function_v2)
        {
          v8 = function_v2;
          v10 = WBS_LOG_CHANNEL_PREFIXHistory();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
            objc_claimAutoreleasedReturnValue();
            [WBSHistorySQLiteSchema _migrateToSchemaVersion_9];
          }
        }

        else
        {
          v12 = sqlite3_create_function_v2([(WBSSQLiteDatabase *)self->_database handle], "safari_visitblobscore", 1, 2053, 0, sqliteVisitBlobScore, 0, 0, 0);
          if (!v12)
          {
            v8 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"UPDATE history_items SET visit_count_score = safari_visitcountscore(visit_count), daily_visit_counts = safari_visitblobscore(daily_visit_counts), weekly_visit_counts = safari_visitblobscore(weekly_visit_counts)");
            sqlite3_create_function_v2([(WBSSQLiteDatabase *)self->_database handle], "safari_visitcountscore", 0, 5, 0, 0, 0, 0, 0);
            sqlite3_create_function_v2([(WBSSQLiteDatabase *)self->_database handle], "safari_visitblobscore", 0, 5, 0, 0, 0, 0, 0);
            return v8;
          }

          v8 = v12;
          v10 = WBS_LOG_CHANNEL_PREFIXHistory();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
            objc_claimAutoreleasedReturnValue();
            [WBSHistorySQLiteSchema _migrateToSchemaVersion_9];
          }
        }
      }

      else
      {
        v10 = WBS_LOG_CHANNEL_PREFIXHistory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
          objc_claimAutoreleasedReturnValue();
          [WBSHistorySQLiteSchema _migrateToSchemaVersion_9];
        }
      }
    }

    else
    {
      v8 = v4;
      v10 = WBS_LOG_CHANNEL_PREFIXHistory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
        objc_claimAutoreleasedReturnValue();
        [WBSHistorySQLiteSchema _migrateToSchemaVersion_9];
      }
    }
  }

  else
  {
    v8 = v3;
    v10 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [WBSHistorySQLiteSchema _migrateToSchemaVersion_9];
    }
  }

  return v8;
}

- (int)_migrateToSchemaVersion_10
{
  v3 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"ALTER TABLE history_visits ADD COLUMN core_spotlight_id TEXT NULL");
  if (v3 != 101)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [WBSHistorySQLiteSchema _migrateToSchemaVersion_10];
    }
  }

  return v3;
}

- (int)_migrateToSchemaVersion_11
{
  v3 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"CREATE TABLE history_event_listeners (listener_name TEXT PRIMARY KEY,last_seen REAL NOT NULL)");
  if (v3 != 101)
  {
    v4 = v3;
    v5 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [WBSHistorySQLiteSchema _migrateToSchemaVersion_11];
    }

    goto LABEL_7;
  }

  v4 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"CREATE TABLE history_events (id INTEGER PRIMARY KEY AUTOINCREMENT,event_type TEXT NOT NULL,event_time REAL NOT NULL,pending_listeners TEXT NOT NULL,value BLOB)");
  if (v4 != 101)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [WBSHistorySQLiteSchema _migrateToSchemaVersion_11];
    }

LABEL_7:
  }

  return v4;
}

- (int)_migrateToSchemaVersion_12
{
  v3 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"PRAGMA foreign_keys = OFF");
  if (v3 != 101)
  {
    v8 = v3;
    v9 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [WBSHistorySQLiteSchema _migrateToSchemaVersion_12];
    }

    goto LABEL_23;
  }

  if (SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"ALTER TABLE history_visits RENAME TO temp_history_visits") != 101)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [WBSHistorySQLiteSchema _migrateToSchemaVersion_12];
    }
  }

  if (SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"CREATE TABLE history_visits (id INTEGER PRIMARY KEY AUTOINCREMENT,history_item INTEGER NOT NULL REFERENCES history_items(id) ON DELETE CASCADE,visit_time REAL NOT NULL,title TEXT NULL,load_successful BOOLEAN NOT NULL DEFAULT 1,http_non_get BOOLEAN NOT NULL DEFAULT 0,synthesized BOOLEAN NOT NULL DEFAULT 0,redirect_source INTEGER NULL UNIQUE REFERENCES history_visits(id) ON DELETE CASCADE,redirect_destination INTEGER NULL UNIQUE REFERENCES history_visits(id) ON DELETE CASCADE,origin INTEGER NOT NULL DEFAULT 0,generation INTEGER NOT NULL DEFAULT 0,attributes INTEGER NOT NULL DEFAULT 0,score INTEGER NOT NULL DEFAULT 0)") != 101)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [WBSHistorySQLiteSchema _migrateToSchemaVersion_12];
    }
  }

  if (SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"INSERT INTO history_visits (id, history_item, visit_time, title, load_successful, http_non_get, synthesized, redirect_source, redirect_destination, origin, generation, attributes, score) SELECT id, history_item, visit_time, title, load_successful, http_non_get, synthesized, redirect_source, redirect_destination, origin, generation, attributes, score FROM temp_history_visits") != 101)
  {
    v6 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [WBSHistorySQLiteSchema _migrateToSchemaVersion_12];
    }
  }

  if (SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"DROP TABLE temp_history_visits") != 101)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [WBSHistorySQLiteSchema _migrateToSchemaVersion_12];
    }
  }

  v8 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"PRAGMA foreign_keys = ON");
  if (v8 != 101)
  {
    v9 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [WBSHistorySQLiteSchema _migrateToSchemaVersion_12];
    }

LABEL_23:
  }

  return v8;
}

- (int)_migrateToSchemaVersion_13
{
  v3 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"CREATE INDEX history_visits__last_visit ON history_visits (history_item, visit_time DESC, synthesized ASC)");
  if (v3 == 101)
  {
    goto LABEL_5;
  }

  v4 = v3;
  v5 = WBS_LOG_CHANNEL_PREFIXHistory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
    objc_claimAutoreleasedReturnValue();
    [WBSHistorySQLiteSchema _migrateToSchemaVersion_13];
  }

  if (indexExists(self->_database, &cfstr_HistoryVisitsL.isa))
  {
LABEL_5:
    v4 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"CREATE INDEX history_visits__origin ON history_visits (origin, generation)");
    if (v4 == 101)
    {
      return 101;
    }

    v6 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [WBSHistorySQLiteSchema _migrateToSchemaVersion_13];
    }

    if (indexExists(self->_database, &cfstr_HistoryVisitsO.isa))
    {
      return 101;
    }
  }

  return v4;
}

- (int)_migrateToSchemaVersion_14
{
  v3 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"CREATE TABLE history_tags (id INTEGER PRIMARY KEY,type INTEGER NOT NULL,level INTEGER NOT NULL,identifier TEXT NOT NULL,title TEXT NOT NULL,modification_timestamp REAL NOT NULL,item_count INTEGER NOT NULL DEFAULT 0)");
  if (v3 == 101)
  {
    v4 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"CREATE TABLE history_items_to_tags (history_item INTEGER NOT NULL,tag_id INTEGER NOT NULL,timestamp REAL NOT NULL,FOREIGN KEY(tag_id) REFERENCES history_tags(id) ON DELETE CASCADE,FOREIGN KEY(history_item) REFERENCES history_items(id) ON DELETE CASCADE,UNIQUE(history_item, tag_id) ON CONFLICT REPLACE)");
    if (v4 == 101)
    {
      v5 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"CREATE TRIGGER increment_count_on_insert AFTER INSERT ON history_items_to_tags BEGIN  UPDATE history_tags SET item_count = item_count + 1 WHERE id = NEW.tag_id;END;");
      if (v5 == 101)
      {
        v6 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"CREATE TRIGGER decrement_count_on_delete BEFORE DELETE ON history_items_to_tags BEGIN  UPDATE history_tags SET item_count = item_count - 1 WHERE id = OLD.tag_id;END;");
        if (v6 != 101)
        {
          v7 = WBS_LOG_CHANNEL_PREFIXHistory();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
          {
            [WBSHistorySQLiteSchema _migrateToSchemaVersion_14];
          }
        }
      }

      else
      {
        v6 = v5;
        v10 = WBS_LOG_CHANNEL_PREFIXHistory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          [WBSHistorySQLiteSchema _migrateToSchemaVersion_14];
        }
      }
    }

    else
    {
      v6 = v4;
      v9 = WBS_LOG_CHANNEL_PREFIXHistory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [WBSHistorySQLiteSchema _migrateToSchemaVersion_14];
      }
    }
  }

  else
  {
    v6 = v3;
    v8 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [WBSHistorySQLiteSchema _migrateToSchemaVersion_14];
    }
  }

  return v6;
}

- (int)_migrateToSchemaVersion_15
{
  v18[6] = *MEMORY[0x1E69E9840];
  v3 = SafariShared::WBSSQLiteDatabaseFetch<NSString * const {__strong}&>(self->_database, @"SELECT value FROM metadata WHERE key = ?", WBSHistorySQLiteStoreSyncsWithManateeContainerKey);
  nextObject = [v3 nextObject];
  v5 = [nextObject int64AtIndex:0];

  if (v5 < 1)
  {
    goto LABEL_9;
  }

  v6 = SafariShared::WBSSQLiteDatabaseFetch<>(self->_database, @"SELECT MAX(generation) FROM history_visits");

  nextObject2 = [v6 nextObject];
  v8 = [nextObject2 int64AtIndex:0];

  v9 = SafariShared::WBSSQLiteDatabaseFetch<>(self->_database, @"SELECT MAX(generation) FROM history_tombstones");

  nextObject3 = [v9 nextObject];
  v11 = [nextObject3 int64AtIndex:0];

  v3 = SafariShared::WBSSQLiteDatabaseFetch<NSString * const {__strong}&>(self->_database, @"SELECT value FROM metadata WHERE key = ?", WBSHistorySQLiteStoreLastSyncedGenerationKey);

  nextObject4 = [v3 nextObject];
  v13 = [nextObject4 int64AtIndex:0];

  if (v8 <= v11)
  {
    v14 = v11;
  }

  else
  {
    v14 = v8;
  }

  if (v14 <= v13)
  {
    v14 = v13;
  }

  v18[0] = v14 + 1;
  v15 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<long long &,NSString * const {__strong}&>(self->_database, 0, @"UPDATE metadata SET value = ? WHERE key = ?", v18, WBSHistorySQLiteStoreCurrentGenerationKey);
  if (v15 != 101)
  {
    v16 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [WBSHistorySQLiteSchema _migrateToSchemaVersion_15];
    }

LABEL_12:

    goto LABEL_13;
  }

  if (![(WBSSQLiteDatabase *)self->_database changedRowCount])
  {
    v15 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSString * const {__strong}&,long long &>(self->_database, 0, @"INSERT INTO metadata (key, value) VALUES (?, ?)", WBSHistorySQLiteStoreCurrentGenerationKey, v18);
    if (v15 == 101)
    {
      goto LABEL_13;
    }

    v16 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [WBSHistorySQLiteSchema _migrateToSchemaVersion_15];
    }

    goto LABEL_12;
  }

LABEL_9:
  v15 = 101;
LABEL_13:

  return v15;
}

- (int)_migrateToSchemaVersion_16
{
  v3 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"ALTER TABLE history_items ADD COLUMN status_code INTEGER NOT NULL DEFAULT 0");
  if (v3 != 101)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [WBSHistorySQLiteSchema _migrateToSchemaVersion_16];
    }
  }

  return v3;
}

+ (id)legacyHistoryPropertyListURL
{
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    safari_settingsDirectoryURL = [defaultManager safari_settingsDirectoryURL];
    +[WBSHistorySQLiteSchema legacyHistoryPropertyListURL]::historyURL = [safari_settingsDirectoryURL URLByAppendingPathComponent:@"History.plist" isDirectory:0];
  }

  v2 = +[WBSHistorySQLiteSchema legacyHistoryPropertyListURL]::historyURL;

  return v2;
}

- (NSDictionary)legacyDatabase
{
  v2 = MEMORY[0x1E695DF20];
  legacyHistoryPropertyListURL = [objc_opt_class() legacyHistoryPropertyListURL];
  v4 = [v2 dictionaryWithContentsOfURL:legacyHistoryPropertyListURL];

  return v4;
}

- (int64_t)_migrateLegacyItem:(id)item dailyVisitCounts:(void *)counts weeklyVisitCounts:(void *)visitCounts
{
  v70 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  v65 = [itemCopy safari_stringForKey:&stru_1F3A5E418];
  v47 = [itemCopy safari_arrayContainingObjectsOfClass:objc_opt_class() forKey:@"D"];
  v9 = [itemCopy safari_arrayContainingObjectsOfClass:objc_opt_class() forKey:@"W"];
  v10 = [itemCopy safari_numberForKey:@"visitCount"];
  intValue = [v10 intValue];

  v64 = intValue;
  v12 = [itemCopy safari_arrayContainingObjectsOfClass:objc_opt_class() forKey:@"autocomplete"];
  v62 = 0;
  data = 0;
  v13 = 0x1E695D000;
  v61 = 0;
  if (!(v47 | v9))
  {
LABEL_47:
    data = [*(v13 + 3824) data];
    goto LABEL_48;
  }

  v66 = 0;
  v67 = 0;
  v59 = 0;
  v60 = 0;
  v14 = [v47 count];
  if (v14)
  {
    if (v14 >> 30)
    {
      goto LABEL_57;
    }

    LODWORD(v67) = v14;
    v66 = WTF::fastMalloc((4 * v14));
  }

  v15 = [v9 count];
  if (!v15)
  {
    goto LABEL_8;
  }

  if (v15 >> 30)
  {
LABEL_57:
    __break(0xC471u);
    JUMPOUT(0x1BB7F9E90);
  }

  LODWORD(v60) = v15;
  v59 = WTF::fastMalloc((4 * v15));
LABEL_8:
  selfCopy = self;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v16 = v47;
  v17 = [v16 countByEnumeratingWithState:&v55 objects:v69 count:16];
  if (v17)
  {
    v18 = *v56;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v56 != v18)
        {
          objc_enumerationMutation(v16);
        }

        intValue2 = [*(*(&v55 + 1) + 8 * i) intValue];
        if (intValue2 <= 0x12C)
        {
          v21 = intValue2;
        }

        else
        {
          v21 = 0;
        }

        v54 = v21;
        v22 = *(counts + 3);
        if (v22 == *(counts + 2))
        {
          *(*counts + 4 * *(counts + 3)) = *WTF::Vector<SafariShared::FieldLabelPatternMatcher::DFA::State,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(counts, v22 + 1, &v54);
        }

        else
        {
          *(*counts + 4 * v22) = v21;
        }

        ++*(counts + 3);
        v23 = WBSHistoryVisitScoreForWeightedVisitCount(v54);
        v53 = v23;
        if (HIDWORD(v67) == v67)
        {
          v24 = WTF::Vector<SafariShared::FieldLabelPatternMatcher::DFA::State,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v66, HIDWORD(v67) + 1, &v53);
          *(v66 + HIDWORD(v67)) = *v24;
        }

        else
        {
          *(v66 + HIDWORD(v67)) = v23;
        }

        ++HIDWORD(v67);
      }

      v17 = [v16 countByEnumeratingWithState:&v55 objects:v69 count:16];
    }

    while (v17);
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v25 = v9;
  v26 = [v25 countByEnumeratingWithState:&v49 objects:v68 count:16];
  if (v26)
  {
    v27 = *v50;
    do
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v50 != v27)
        {
          objc_enumerationMutation(v25);
        }

        intValue3 = [*(*(&v49 + 1) + 8 * j) intValue];
        if (intValue3 <= 0x834)
        {
          v30 = intValue3;
        }

        else
        {
          v30 = 0;
        }

        v54 = v30;
        v31 = *(visitCounts + 3);
        if (v31 == *(visitCounts + 2))
        {
          *(*visitCounts + 4 * *(visitCounts + 3)) = *WTF::Vector<SafariShared::FieldLabelPatternMatcher::DFA::State,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(visitCounts, v31 + 1, &v54);
        }

        else
        {
          *(*visitCounts + 4 * v31) = v30;
        }

        ++*(visitCounts + 3);
        v32 = WBSHistoryVisitScoreForWeightedVisitCount(v54);
        v53 = v32;
        if (HIDWORD(v60) == v60)
        {
          v33 = WTF::Vector<SafariShared::FieldLabelPatternMatcher::DFA::State,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v59, HIDWORD(v60) + 1, &v53);
          *(v59 + HIDWORD(v60)) = *v33;
        }

        else
        {
          *(v59 + HIDWORD(v60)) = v32;
        }

        ++HIDWORD(v60);
      }

      v26 = [v25 countByEnumeratingWithState:&v49 objects:v68 count:16];
    }

    while (v26);
  }

  WBSHistoryCollapseDailyVisitsToWeekly(&v66, &v59);
  self = selfCopy;
  v13 = 0x1E695D000uLL;
  v35 = [MEMORY[0x1E695DEF0] dataWithBytes:v66 length:4 * HIDWORD(v67)];
  data = v35;
  if (*(visitCounts + 3))
  {
    v62 = [MEMORY[0x1E695DEF0] dataWithBytes:v59 length:4 * HIDWORD(v60)];
  }

  v36 = v59;
  if (v59)
  {
    v59 = 0;
    LODWORD(v60) = 0;
    WTF::fastFree(v36, v34);
  }

  v37 = v66;
  if (v66)
  {
    v66 = 0;
    LODWORD(v67) = 0;
    WTF::fastFree(v37, v34);
  }

  if (!v35)
  {
    goto LABEL_47;
  }

LABEL_48:
  if ([v12 count])
  {
    v61 = [MEMORY[0x1E696AE40] dataWithPropertyList:v12 format:100 options:0 error:0];
  }

  database = self->_database;
  v48 = 0;
  LODWORD(v66) = WBSHistoryVisitScoreForWeightedVisitCount(intValue);
  v39 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSString * {__strong}&,int &,int,NSData * {__strong}&,NSData * {__strong}&,NSData * {__strong}&>(database, &v48, @"INSERT INTO history_items (url, visit_count, visit_count_score, daily_visit_counts, weekly_visit_counts, autocomplete_triggers, domain_expansion, should_recompute_derived_visit_counts) VALUES (?,?,?,?,?,?,safari_domainexpansion(?1),0)", &v65, &v64, &v66, &data, &v62, &v61);
  v40 = v48;
  if (v39 && v39 != 101)
  {
    v42 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      v43 = v65;
      safari_privacyPreservingDescription = [v40 safari_privacyPreservingDescription];
      [WBSHistorySQLiteSchema _migrateLegacyItem:v43 dailyVisitCounts:safari_privacyPreservingDescription weeklyVisitCounts:&v66];
    }

    lastInsertRowID = 0;
  }

  else
  {
    lastInsertRowID = [(WBSSQLiteDatabase *)self->_database lastInsertRowID];
  }

  return lastInsertRowID;
}

- (int64_t)_migrateLegacyVisitWithItemID:(int64_t)d visitTime:(double)time title:(id)title score:(unint64_t)score loadSuccessful:(BOOL)successful httpNonGet:(BOOL)get synthesized:(BOOL)synthesized
{
  v26[4] = *MEMORY[0x1E69E9840];
  v26[0] = d;
  timeCopy = time;
  scoreCopy = score;
  titleCopy = title;
  successfulCopy = successful;
  getCopy = get;
  synthesizedCopy = synthesized;
  database = self->_database;
  v19 = 0;
  v14 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<long long &,double &,NSString * {__strong}&,unsigned long &,BOOL &,BOOL &,BOOL &>(database, &v19, @"INSERT INTO history_visits (history_item, visit_time, title, score, load_successful, http_non_get, synthesized) VALUES (?,?,?,?,?,?,?)", v26, &timeCopy, &titleCopy, &scoreCopy, &successfulCopy, &getCopy, &synthesizedCopy);
  v15 = v19;
  if (v14 && v14 != 101)
  {
    v17 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [v15 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      [WBSHistorySQLiteSchema _migrateLegacyVisitWithItemID:visitTime:title:score:loadSuccessful:httpNonGet:synthesized:];
    }

    lastInsertRowID = 0;
  }

  else
  {
    lastInsertRowID = [(WBSSQLiteDatabase *)self->_database lastInsertRowID];
  }

  return lastInsertRowID;
}

- (id)_migrateLegacyDatabaseCreatingItemsAndVisits:(id)visits outVisitsToUseForRedirectChains:(id)chains
{
  v68 = *MEMORY[0x1E69E9840];
  visitsCopy = visits;
  chainsCopy = chains;
  v48 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(visitsCopy, "count")}];
  v7 = WBSHistoryVisitScoreForWeightedVisitCount(1.0);
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = visitsCopy;
  v8 = [obj countByEnumeratingWithState:&v63 objects:v67 count:16];
  if (v8)
  {
    v9 = v7;
    v50 = *v64;
    do
    {
      v51 = v8;
      for (i = 0; i != v51; ++i)
      {
        if (*v64 != v50)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v63 + 1) + 8 * i);
        v61 = 0;
        v62 = 0;
        v59 = 0;
        v60 = 0;
        v13 = [(WBSHistorySQLiteSchema *)self _migrateLegacyItem:v11 dailyVisitCounts:&v61 weeklyVisitCounts:&v59];
        if (v13)
        {
          v14 = [v11 safari_stringForKey:@"lastVisitedDate"];
          [v14 doubleValue];
          v16 = v15;

          v17 = [v11 safari_stringForKey:@"title"];
          v18 = [v11 safari_numberForKey:@"lastVisitWasFailure"];
          intValue = [v18 intValue];
          v20 = [v11 safari_numberForKey:@"lastVisitWasHTTPNonGet"];
          v21 = -[WBSHistorySQLiteSchema _migrateLegacyVisitWithItemID:visitTime:title:score:loadSuccessful:httpNonGet:synthesized:](self, "_migrateLegacyVisitWithItemID:visitTime:title:score:loadSuccessful:httpNonGet:synthesized:", v13, v17, v9, intValue == 0, [v20 intValue] != 0, 0, v16);

          if (v21)
          {
            v52 = [v11 safari_stringForKey:&stru_1F3A5E418];
            v22 = [v11 safari_arrayContainingObjectsOfClass:objc_opt_class() forKey:@"redirectURLs"];
            WBSHistoryTimesOfVisitsToSynthesizeFromDailyCounts(&v61, &v59, &v56, v16);
            v23 = v58 + 1;
            if (v23 < [v22 count])
            {
              WBSHistoryTimesForSynthesizedVisitsPreceedingDailyAndWeeklyRange(v16, [v22 count] - v23, &v53);
              v25 = v55;
              v26 = v55 + v58;
              if (v26 > v57)
              {
                v27 = v57 + (v57 >> 1);
                if (v27 <= v57 + 1)
                {
                  v27 = v57 + 1;
                }

                if (v27 <= v26)
                {
                  v27 = v55 + v58;
                }

                if (v27 <= 0x10)
                {
                  v28 = 16;
                }

                else
                {
                  v28 = v27;
                }

                WTF::Vector<double,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(&v56, v28);
                v25 = v55;
              }

              v29 = v53;
              if (v25)
              {
                v30 = v56;
                v31 = v58;
                v32 = 8 * v25;
                v33 = v53;
                do
                {
                  v34 = *v33;
                  v33 = (v33 + 8);
                  *(v30 + v31++) = v34;
                  v32 -= 8;
                }

                while (v32);
                v58 = v31;
              }

              if (v29)
              {
                v53 = 0;
                v54 = 0;
                WTF::fastFree(v29, v24);
              }
            }

            if (v58)
            {
              v35 = v56;
              v36 = 8 * v58;
              do
              {
                [(WBSHistorySQLiteSchema *)self _migrateLegacyVisitWithItemID:v13 visitTime:0 title:v9 score:1 loadSuccessful:0 httpNonGet:1 synthesized:*v35];
                v35 = (v35 + 8);
                v36 -= 8;
              }

              while (v36);
            }

            v37 = objc_alloc(MEMORY[0x1E69C88F0]);
            v38 = [MEMORY[0x1E696AD98] numberWithLongLong:v13];
            v39 = [MEMORY[0x1E696AD98] numberWithLongLong:v21];
            v40 = [v37 initWithFirst:v38 second:v39];
            [v48 setObject:v40 forKeyedSubscript:v52];

            if (!v17)
            {
              v42 = [MEMORY[0x1E696AD98] numberWithLongLong:v21];
              [chainsCopy addObject:v42];

              v17 = 0;
            }

            v43 = v56;
            if (v56)
            {
              v56 = 0;
              v57 = 0;
              WTF::fastFree(v43, v41);
            }
          }
        }

        v44 = v59;
        if (v59)
        {
          v59 = 0;
          LODWORD(v60) = 0;
          WTF::fastFree(v44, v12);
        }

        v45 = v61;
        if (v61)
        {
          v61 = 0;
          LODWORD(v62) = 0;
          WTF::fastFree(v45, v12);
        }
      }

      v8 = [obj countByEnumeratingWithState:&v63 objects:v67 count:16];
    }

    while (v8);
  }

  return v48;
}

- (BOOL)migrateLegacyDatabaseCreatingRedirectChains:(id)chains urlsToItemAndLastVisitID:(id)d visitsToUseForRedirectChains:(id)redirectChains
{
  v80 = *MEMORY[0x1E69E9840];
  chainsCopy = chains;
  dCopy = d;
  redirectChainsCopy = redirectChains;
  v74 = WBSHistoryVisitScoreForWeightedVisitCount(1.0);
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  obj = chainsCopy;
  v52 = [obj countByEnumeratingWithState:&v70 objects:v79 count:{16, chainsCopy}];
  if (v52)
  {
    v51 = *v71;
    do
    {
      for (i = 0; i != v52; ++i)
      {
        if (*v71 != v51)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v70 + 1) + 8 * i);
        v10 = [v9 safari_stringForKey:@"lastVisitedDate"];
        [v10 doubleValue];
        v12 = v11;

        v13 = [v9 safari_stringForKey:&stru_1F3A5E418];
        v53 = [v9 safari_arrayContainingObjectsOfClass:objc_opt_class() forKey:@"redirectURLs"];
        v14 = [dCopy objectForKeyedSubscript:v13];
        first = [v14 first];
        longValue = [first longValue];

        v69 = longValue;
        v65 = 0u;
        v66 = 0u;
        v67 = 0u;
        v68 = 0u;
        v57 = v53;
        v17 = [v57 countByEnumeratingWithState:&v65 objects:v78 count:16];
        if (v17)
        {
          v18 = *v66;
          do
          {
            for (j = 0; j != v17; ++j)
            {
              if (*v66 != v18)
              {
                objc_enumerationMutation(v57);
              }

              v20 = *(*(&v65 + 1) + 8 * j);
              if (([v20 isEqualToString:v13] & 1) == 0)
              {
                v21 = [dCopy objectForKeyedSubscript:v20];
                v22 = v21;
                if (v21)
                {
                  first2 = [v21 first];
                  longValue2 = [first2 longValue];

                  v64 = longValue2;
                  second = [v22 second];
                  longValue3 = [second longValue];

                  v63 = longValue3;
                  v27 = [MEMORY[0x1E696AD98] numberWithLongLong:longValue3];
                  LOBYTE(longValue3) = [redirectChainsCopy containsObject:v27];

                  if (longValue3)
                  {
                    v28 = [MEMORY[0x1E696AD98] numberWithLongLong:v63];
                    [redirectChainsCopy removeObject:v28];

                    v29 = 0;
                    goto LABEL_15;
                  }

                  v63 = [(WBSHistorySQLiteSchema *)self _migrateLegacyVisitWithItemID:v64 visitTime:0 title:v74 score:1 loadSuccessful:0 httpNonGet:1 synthesized:v12];
                  if (v63)
                  {
                    lastInsertRowID = [(WBSSQLiteDatabase *)self->_database lastInsertRowID];
                    v62 = 0;
                    v63 = lastInsertRowID;
                    v41 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<unsigned long const&,long long &>(self->_database, &v62, @"UPDATE history_items SET visit_count = visit_count + 1, visit_count_score = visit_count_score + ? WHERE id = ?", &v74, &v64);
                    v29 = v62;
                    if (v41 && v41 != 101)
                    {
                      v42 = WBS_LOG_CHANNEL_PREFIXHistory();
                      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
                      {
                        safari_privacyPreservingDescription = [v29 safari_privacyPreservingDescription];
                        *buf = 138478083;
                        *&buf[4] = v20;
                        v76 = 2114;
                        v77 = safari_privacyPreservingDescription;
                        _os_log_error_impl(&dword_1BB6F3000, v42, OS_LOG_TYPE_ERROR, "Failed to update score of %{private}@: %{public}@", buf, 0x16u);
                      }

                      goto LABEL_45;
                    }

LABEL_15:
                    v60 = v29;
                    v61 = 0;
                    database = self->_database;
                    *buf = &v61;
                    v31 = SafariShared::WBSSQLiteDatabaseEnumerate<long long &,std::tuple<long long &>>(database, &v60, @"SELECT id FROM history_visits WHERE id = ? AND redirect_source IS NULL ORDER BY visit_time DESC LIMIT 1", &v69, buf);
                    v32 = v60;

                    if (v31)
                    {
LABEL_16:
                      v33 = self->_database;
                      v59 = v32;
                      v34 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<long long &,long long &>(v33, &v59, @"UPDATE history_visits SET redirect_source = ? WHERE id = ?", &v63, &v61);
                      v35 = v59;

                      v32 = v35;
                      if (v34 && v34 != 101)
                      {
                        v43 = WBS_LOG_CHANNEL_PREFIXHistory();
                        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
                        {
                          safari_privacyPreservingDescription2 = [v35 safari_privacyPreservingDescription];
                          *buf = 138478083;
                          *&buf[4] = v13;
                          v76 = 2114;
                          v77 = safari_privacyPreservingDescription2;
                          _os_log_error_impl(&dword_1BB6F3000, v43, OS_LOG_TYPE_ERROR, "Failed to set redirect source for %{private}@: %{public}@", buf, 0x16u);
                        }
                      }

                      else
                      {
                        v36 = self->_database;
                        v58 = v35;
                        v37 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<long long &,long long &>(v36, &v58, @"UPDATE history_visits SET redirect_destination = ? WHERE id = ?", &v61, &v63);
                        v38 = v58;

                        if (!v37 || v37 == 101)
                        {
                          v32 = v38;
LABEL_44:
                          v29 = v32;
                          goto LABEL_45;
                        }

                        v43 = WBS_LOG_CHANNEL_PREFIXHistory();
                        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
                        {
                          safari_privacyPreservingDescription3 = [v38 safari_privacyPreservingDescription];
                          *buf = 138478083;
                          *&buf[4] = v13;
                          v76 = 2114;
                          v77 = safari_privacyPreservingDescription3;
                          _os_log_error_impl(&dword_1BB6F3000, v43, OS_LOG_TYPE_ERROR, "Failed to set redirect source for %{private}@: %{public}@", buf, 0x16u);
                        }

                        v32 = v38;
                      }
                    }

                    else if ([v32 safari_isSQLiteError]&& [v32 code]== 101)
                    {
                      v61 = [(WBSHistorySQLiteSchema *)self _migrateLegacyVisitWithItemID:v69 visitTime:0 title:v74 score:1 loadSuccessful:0 httpNonGet:1 synthesized:v12];
                      if (v61)
                      {
                        goto LABEL_16;
                      }

                      v43 = WBS_LOG_CHANNEL_PREFIXHistory();
                      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
                      {
                        safari_privacyPreservingDescription4 = [v32 safari_privacyPreservingDescription];
                        *buf = 138478083;
                        *&buf[4] = v20;
                        v76 = 2114;
                        v77 = safari_privacyPreservingDescription4;
                        _os_log_error_impl(&dword_1BB6F3000, v43, OS_LOG_TYPE_ERROR, "Failed to update visit count scores for %{private}@: %{public}@", buf, 0x16u);
                      }
                    }

                    else
                    {
                      v43 = WBS_LOG_CHANNEL_PREFIXHistory();
                      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
                      {
                        safari_privacyPreservingDescription5 = [v32 safari_privacyPreservingDescription];
                        *buf = 138478083;
                        *&buf[4] = v13;
                        v76 = 2114;
                        v77 = safari_privacyPreservingDescription5;
                        _os_log_error_impl(&dword_1BB6F3000, v43, OS_LOG_TYPE_ERROR, "Failed to set redirect source for %{private}@: %{public}@", buf, 0x16u);
                      }
                    }

                    goto LABEL_44;
                  }

                  v29 = WBS_LOG_CHANNEL_PREFIXHistory();
                  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                  {
                    [0 safari_privacyPreservingDescription];
                    objc_claimAutoreleasedReturnValue();
                    [WBSHistorySQLiteSchema migrateLegacyDatabaseCreatingRedirectChains:urlsToItemAndLastVisitID:visitsToUseForRedirectChains:];
                  }

LABEL_45:
                }

                else
                {
                  v39 = WBS_LOG_CHANNEL_PREFIXHistory();
                  if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138477827;
                    *&buf[4] = v20;
                    _os_log_impl(&dword_1BB6F3000, v39, OS_LOG_TYPE_INFO, "Could not find an item for %{private}@", buf, 0xCu);
                  }
                }

                continue;
              }
            }

            v17 = [v57 countByEnumeratingWithState:&v65 objects:v78 count:16];
          }

          while (v17);
        }
      }

      v52 = [obj countByEnumeratingWithState:&v70 objects:v79 count:16];
    }

    while (v52);
  }

  SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSString * const {__strong}&>(self->_database, 0, @"INSERT INTO metadata (key,value) VALUES (?,1)", WBSHistorySQLiteStoreImportCompletedKey);
  return 1;
}

- (void)_migrateLegacyDatabase
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

BOOL __48__WBSHistorySQLiteSchema__migrateLegacyDatabase__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 safari_stringForKey:@"lastVisitedDate"];
  [v3 doubleValue];
  v5 = v4;
  [*(*(a1 + 32) + 24) timeIntervalSinceReferenceDate];
  v7 = v5 >= v6;

  return v7;
}

uint64_t __48__WBSHistorySQLiteSchema__migrateLegacyDatabase__block_invoke_274(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DFA8] set];
  v3 = [*(a1 + 32) _migrateLegacyDatabaseCreatingItemsAndVisits:*(a1 + 40) outVisitsToUseForRedirectChains:v2];
  if (v3)
  {
    v4 = [*(a1 + 32) migrateLegacyDatabaseCreatingRedirectChains:*(a1 + 40) urlsToItemAndLastVisitID:v3 visitsToUseForRedirectChains:v2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_removeLegacyHistoryDatabaseIfNeeded
{
  *buf = 138543362;
  *(buf + 4) = self;
  _os_log_error_impl(&dword_1BB6F3000, log, OS_LOG_TYPE_ERROR, "Failed to remove history plist with error %{public}@", buf, 0xCu);
}

- (void)migrateToCurrentSchemaVersionIfNeeded
{
  OUTLINED_FUNCTION_1_8();
  OUTLINED_FUNCTION_0_10(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_2_3(&dword_1BB6F3000, "Failed to create index: %{public}@ (%d)", v4, v5);
}

- (void)_migrateToSchemaVersion:.cold.1()
{
  OUTLINED_FUNCTION_1_8();
  OUTLINED_FUNCTION_0_10(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_2_3(&dword_1BB6F3000, "Failed to start a transaction: %{public}@ (%d)", v4, v5);
}

- (void)_migrateToSchemaVersion:.cold.2()
{
  OUTLINED_FUNCTION_1_8();
  OUTLINED_FUNCTION_0_10(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_2_3(&dword_1BB6F3000, "Failed to roll back transaction: %{public}@ (%d)", v4, v5);
}

- (void)_migrateToSchemaVersion:.cold.3()
{
  OUTLINED_FUNCTION_1_8();
  OUTLINED_FUNCTION_0_10(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_2_3(&dword_1BB6F3000, "Failed to commit transaction: %{public}@ (%d)", v4, v5);
}

- (void)_migrateToSchemaVersion_2
{
  OUTLINED_FUNCTION_1_8();
  OUTLINED_FUNCTION_0_10(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_2_3(&dword_1BB6F3000, "Failed to create history_visits__origin index: %{public}@ (%d)", v4, v5);
}

- (void)_migrateToSchemaVersion_3
{
  OUTLINED_FUNCTION_1_8();
  OUTLINED_FUNCTION_0_10(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_2_3(&dword_1BB6F3000, "Failed to recreate history_visits__origin index: %{public}@ (%d)", v4, v5);
}

- (void)_migrateToSchemaVersion_4
{
  OUTLINED_FUNCTION_1_8();
  OUTLINED_FUNCTION_0_10(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_2_3(&dword_1BB6F3000, "Failed to create history_tombstones__generation index: %{public}@ (%d)", v4, v5);
}

- (void)_migrateToSchemaVersion_5
{
  OUTLINED_FUNCTION_1_8();
  OUTLINED_FUNCTION_0_10(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_2_3(&dword_1BB6F3000, "Failed to add should_recompute_derived_visit_counts column to history_items table: %{public}@ (%d)", v4, v5);
}

- (void)_migrateToSchemaVersion_6
{
  OUTLINED_FUNCTION_1_8();
  OUTLINED_FUNCTION_0_10(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_2_3(&dword_1BB6F3000, "Failed to create history_tombstones__end_time index: %{public}@ (%d)", v4, v5);
}

- (void)_migrateToSchemaVersion_7
{
  OUTLINED_FUNCTION_1_8();
  OUTLINED_FUNCTION_0_10(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_2_3(&dword_1BB6F3000, "Failed to create history_visits__last_visit index: %{public}@ (%d)", v4, v5);
}

- (void)_migrateToSchemaVersion_9
{
  OUTLINED_FUNCTION_1_8();
  OUTLINED_FUNCTION_0_10(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_2_3(&dword_1BB6F3000, "Failed to add function safari_visitblobscore: %{public}@ (%d)", v4, v5);
}

- (void)_migrateToSchemaVersion_10
{
  OUTLINED_FUNCTION_1_8();
  OUTLINED_FUNCTION_0_10(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_2_3(&dword_1BB6F3000, "Failed to add core_spotlight_id column to history_visits table: %{public}@ (%d)", v4, v5);
}

- (void)_migrateToSchemaVersion_11
{
  OUTLINED_FUNCTION_1_8();
  OUTLINED_FUNCTION_0_10(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_2_3(&dword_1BB6F3000, "Failed to create the history_events table: %{public}@ (%d)", v4, v5);
}

- (void)_migrateToSchemaVersion_12
{
  OUTLINED_FUNCTION_1_8();
  OUTLINED_FUNCTION_0_10(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_2_3(&dword_1BB6F3000, "Failed to enable foreign keys: %{public}@ (%d)", v4, v5);
}

- (void)_migrateToSchemaVersion_13
{
  OUTLINED_FUNCTION_1_8();
  OUTLINED_FUNCTION_0_10(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_2_3(&dword_1BB6F3000, "Failed to create history_visits__origin index: %{public}@ (%d)", v4, v5);
}

- (void)_migrateToSchemaVersion_14
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)_migrateToSchemaVersion_15
{
  OUTLINED_FUNCTION_1_8();
  *v1 = 138412802;
  OUTLINED_FUNCTION_0_13(v2, v1, v3);
  OUTLINED_FUNCTION_9();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x1Cu);
}

- (void)_migrateToSchemaVersion_16
{
  OUTLINED_FUNCTION_1_8();
  OUTLINED_FUNCTION_0_10(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_2_3(&dword_1BB6F3000, "Failed to add status_code column to history_items table: %{public}@ (%d)", v4, v5);
}

- (void)_migrateLegacyItem:(uint64_t)a1 dailyVisitCounts:(void *)a2 weeklyVisitCounts:(uint64_t)a3 .cold.1(uint64_t a1, void *a2, uint64_t a3)
{
  *a3 = 138478083;
  *(a3 + 4) = a1;
  *(a3 + 12) = 2114;
  *(a3 + 14) = a2;
  OUTLINED_FUNCTION_9();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)_migrateLegacyVisitWithItemID:visitTime:title:score:loadSuccessful:httpNonGet:synthesized:.cold.1()
{
  OUTLINED_FUNCTION_1_8();
  *v1 = 134218242;
  *(v1 + 4) = v2;
  *(v1 + 12) = 2114;
  *(v1 + 14) = v3;
  OUTLINED_FUNCTION_9();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)migrateLegacyDatabaseCreatingRedirectChains:urlsToItemAndLastVisitID:visitsToUseForRedirectChains:.cold.1()
{
  OUTLINED_FUNCTION_1_8();
  *v1 = 138543362;
  *v3 = v2;
  OUTLINED_FUNCTION_9();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

@end