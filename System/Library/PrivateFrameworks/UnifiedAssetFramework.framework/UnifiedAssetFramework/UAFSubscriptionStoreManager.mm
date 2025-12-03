@interface UAFSubscriptionStoreManager
+ (id)defaultManager;
+ (id)flattenSubscriptions:(id)subscriptions;
+ (id)getSerialQueue;
+ (id)writeManager;
+ (void)sendNotificationDBReset;
- (BOOL)_checkDbVersion:(BOOL *)version storedVersion:(int *)storedVersion;
- (BOOL)_isUsageLimitExceeded:(id)exceeded;
- (BOOL)_moveDatabase;
- (BOOL)_openDatabase:(id)database;
- (BOOL)_removeAllSubscriptions;
- (BOOL)_removeAllSystemAssetSetUsages;
- (BOOL)_subscribeSubscription:(id)subscription subscriptionName:(id)name assetSetSubscription:(id)setSubscription expires:(id)expires user:(id)user;
- (BOOL)_unsubscribeSubscription:(id)subscription subscription:(id)a4 user:(id)user;
- (BOOL)clearSystemAssetSetUsages:(id)usages;
- (BOOL)performDbUpgrade;
- (BOOL)removeAllSubscriptions;
- (BOOL)removeAllSystemAssetSetUsages;
- (BOOL)subscribe:(id)subscribe subscriptions:(id)subscriptions user:(id)user node:(id)node;
- (BOOL)unsubscribe:(id)unsubscribe subscriptions:(id)subscriptions user:(id)user node:(id)node;
- (UAFSubscriptionStoreManager)initWithDbDirPath:(id)path dbName:(id)name readOnly:(BOOL)only allowCreate:(BOOL)create;
- (id)_dataFromSystemAssetSetUsages:(id)usages;
- (id)_dataFromUAFAssetSubscription:(id)subscription;
- (id)_getAllSubscriptions:(int *)subscriptions;
- (id)_getSubscription:(id)subscription subscription:(id)a4 user:(id)user;
- (id)_getSubscription:(sqlite3_stmt *)subscription;
- (id)_getSubscriptions:(id)subscriptions user:(id)user;
- (id)_getSubscriptions:(sqlite3_stmt *)subscriptions subscriptionsFor:(id)for;
- (id)_openDatabaseFile:(id)file existed:(BOOL *)existed;
- (id)_subscriptionTime:(id)time;
- (id)_systemAssetSetUsagesFromData:(id)data;
- (id)_uafAssetSetSubscriptionFromData:(id)data;
- (id)getAllSubscriptions:(id *)subscriptions;
- (id)getAllSystemAssetSetUsages:(id *)usages;
- (id)getAllSystemConfiguration:(id *)configuration;
- (id)getSubscribers:(id)subscribers error:(id *)error;
- (id)getSubscription:(id)subscription subscriber:(id)subscriber user:(id)user error:(id *)error;
- (id)getSubscriptions:(id)subscriptions user:(id)user error:(id *)error;
- (id)getSystemAssetSetUsages:(id)usages;
- (id)getSystemConfigurationForKey:(id)key;
- (id)getUserLastSeenTime:(id)time error:(id *)error;
- (id)getUserNodeName:(id)name error:(id *)error;
- (id)getUsers:(id *)users;
- (id)getUsersOlderThanDate:(id)date error:(id *)error;
- (id)readData:(sqlite3_stmt *)data col:(int)col;
- (id)readDate:(sqlite3_stmt *)date col:(int)col;
- (id)readString:(sqlite3_stmt *)string col:(int)col;
- (id)removeAllUsers;
- (id)removeUser:(id)user;
- (id)setUserLastSeenTime:(id)time node:(id)node time:(id)a5;
- (id)updateSystemAssetSetUsages:(id *)usages configurationManager:(id)manager;
- (int)_beginDatabaseTransaction;
- (int)_dropTable:(id)table;
- (int)_endDatabaseTransaction;
- (int)_getSubscribers:(id)subscribers subscribers:(id *)a4;
- (int)_getUser:(id)user lastSeen:(id *)seen nodeName:(id *)name;
- (int)_performDbUpgrade:(int)upgrade;
- (int)_prepareStatements;
- (int)_removeUser:(id)user;
- (int)_rollbackDatabaseTransaction;
- (int)_setDbVersion:(int)version;
- (int)_setSystemAssetSetUsages:(id)usages;
- (int)_setSystemAssetSetUsages:(id)usages usages:(id)a4;
- (int)_setUserLastSeenTime:(id)time node:(id)node time:(id)a5;
- (int)_updateSystemAssetSetUsages:(id *)usages assetSetUsages:(id *)setUsages configurationManager:(id)manager;
- (int)bindData:(sqlite3_stmt *)data col:(int)col data:(id)a5;
- (int)bindDate:(sqlite3_stmt *)date col:(int)col date:(id)a5;
- (int)bindString:(sqlite3_stmt *)string col:(int)col string:(id)a5;
- (int)doDatabaseOperation:(id)operation useTransaction:(BOOL)transaction logDescription:(id)description error:(id *)error;
- (int)executeSQL:(const char *)l;
- (void)_acquireAssertion;
- (void)_closeDatabase;
- (void)_finalizeStatements;
- (void)_releaseAssertion;
- (void)dealloc;
- (void)expireSubscriptions;
- (void)setSystemConfigurationForKey:(id)key withValue:(id)value;
@end

@implementation UAFSubscriptionStoreManager

- (int)_prepareStatements
{
  v115 = *MEMORY[0x1E69E9840];
  if (!self->_readOnly)
  {
    _beginDatabaseTransaction = [(UAFSubscriptionStoreManager *)self _beginDatabaseTransaction];
    if (_beginDatabaseTransaction)
    {
      goto LABEL_163;
    }

    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    v9 = [&unk_1F3B73278 countByEnumeratingWithState:&v102 objects:v114 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v103;
LABEL_10:
      v12 = 0;
      while (1)
      {
        if (*v103 != v11)
        {
          objc_enumerationMutation(&unk_1F3B73278);
        }

        v13 = *(*(&v102 + 1) + 8 * v12);
        if ([v13 UTF8String])
        {
          v14 = -[UAFSubscriptionStoreManager executeSQL:](self, "executeSQL:", [v13 UTF8String]);
          if (v14)
          {
            break;
          }
        }

        if (v10 == ++v12)
        {
          v10 = [&unk_1F3B73278 countByEnumeratingWithState:&v102 objects:v114 count:16];
          if (v10)
          {
            goto LABEL_10;
          }

          goto LABEL_17;
        }
      }

      _beginDatabaseTransaction = v14;
      v20 = UAFGetLogCategory(&UAFLogContextStorage);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v34 = sqlite3_errmsg(self->_store);
        *buf = 136315906;
        v107 = "[UAFSubscriptionStoreManager _prepareStatements]";
        v108 = 2114;
        v109 = v13;
        v110 = 1024;
        v111 = _beginDatabaseTransaction;
        v112 = 2082;
        v113 = v34;
        _os_log_error_impl(&dword_1BCF2C000, v20, OS_LOG_TYPE_ERROR, "%s SQL error while executing statement: '%{public}@': (%d) '%{public}s", buf, 0x26u);
      }

      v21 = UAFGetLogCategory(&UAFLogContextStorage);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v107 = "[UAFSubscriptionStoreManager _prepareStatements]";
        _os_log_impl(&dword_1BCF2C000, v21, OS_LOG_TYPE_DEFAULT, "%s Rolling back exclusive transaction of tables creation", buf, 0xCu);
      }

      _rollbackDatabaseTransaction = [(UAFSubscriptionStoreManager *)self _rollbackDatabaseTransaction];
      if (!_rollbackDatabaseTransaction || _rollbackDatabaseTransaction == 101)
      {
        goto LABEL_163;
      }

      v6 = UAFGetLogCategory(&UAFLogContextStorage);
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_162;
      }

      *buf = 136315138;
      v107 = "[UAFSubscriptionStoreManager _prepareStatements]";
      v8 = "%s Rollback exclusive transaction of tables creation failed";
      v23 = v6;
      v24 = 12;
      goto LABEL_161;
    }

LABEL_17:
    _endDatabaseTransaction = [(UAFSubscriptionStoreManager *)self _endDatabaseTransaction];
    if (_endDatabaseTransaction && _endDatabaseTransaction != 101)
    {
      v16 = UAFGetLogCategory(&UAFLogContextStorage);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v107 = "[UAFSubscriptionStoreManager _prepareStatements]";
        _os_log_error_impl(&dword_1BCF2C000, v16, OS_LOG_TYPE_ERROR, "%s Commit of exclusive transaction of tables creation failed", buf, 0xCu);
      }
    }
  }

  setDbVersion = self->_setDbVersion;
  if (setDbVersion)
  {
    sqlite3_finalize(setDbVersion);
    self->_setDbVersion = 0;
  }

  v4 = sqlite3_prepare_v2(self->_store, "INSERT OR REPLACE INTO DbVersion (k0) VALUES (?)", 48, &self->_setDbVersion, 0);
  if (v4)
  {
    _beginDatabaseTransaction = v4;
    v6 = UAFGetLogCategory(&UAFLogContextStorage);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = sqlite3_errmsg(self->_store);
      *buf = 136315906;
      v107 = "[UAFSubscriptionStoreManager _prepareStatements]";
      v108 = 2080;
      v109 = "INSERT OR REPLACE INTO DbVersion (k0) VALUES (?)";
      v110 = 1024;
      v111 = _beginDatabaseTransaction;
      v112 = 2080;
      v113 = v7;
      v8 = "%s SQL error while preparing statement: %s, SQL error: (%d) %s";
LABEL_160:
      v23 = v6;
      v24 = 38;
LABEL_161:
      _os_log_error_impl(&dword_1BCF2C000, v23, OS_LOG_TYPE_ERROR, v8, buf, v24);
      goto LABEL_162;
    }

    goto LABEL_162;
  }

  deleteDbVersion = self->_deleteDbVersion;
  if (deleteDbVersion)
  {
    sqlite3_finalize(deleteDbVersion);
    self->_deleteDbVersion = 0;
  }

  v18 = sqlite3_prepare_v2(self->_store, "DELETE FROM DbVersion", 21, &self->_deleteDbVersion, 0);
  if (v18)
  {
    _beginDatabaseTransaction = v18;
    v6 = UAFGetLogCategory(&UAFLogContextStorage);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v19 = sqlite3_errmsg(self->_store);
      *buf = 136315906;
      v107 = "[UAFSubscriptionStoreManager _prepareStatements]";
      v108 = 2080;
      v109 = "DELETE FROM DbVersion";
      v110 = 1024;
      v111 = _beginDatabaseTransaction;
      v112 = 2080;
      v113 = v19;
      v8 = "%s SQL error while preparing statement: %s, SQL error: (%d) %s";
      goto LABEL_160;
    }

LABEL_162:

    goto LABEL_163;
  }

  readDbVersion = self->_readDbVersion;
  if (readDbVersion)
  {
    sqlite3_finalize(readDbVersion);
    self->_readDbVersion = 0;
  }

  v26 = sqlite3_prepare_v2(self->_store, "SELECT * FROM DbVersion ORDER BY k0 DESC LIMIT 1", 48, &self->_readDbVersion, 0);
  if (v26)
  {
    _beginDatabaseTransaction = v26;
    v6 = UAFGetLogCategory(&UAFLogContextStorage);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v27 = sqlite3_errmsg(self->_store);
      *buf = 136315906;
      v107 = "[UAFSubscriptionStoreManager _prepareStatements]";
      v108 = 2080;
      v109 = "SELECT * FROM DbVersion ORDER BY k0 DESC LIMIT 1";
      v110 = 1024;
      v111 = _beginDatabaseTransaction;
      v112 = 2080;
      v113 = v27;
      v8 = "%s SQL error while preparing statement: %s, SQL error: (%d) %s";
      goto LABEL_160;
    }

    goto LABEL_162;
  }

  writeSubscription = self->_writeSubscription;
  if (writeSubscription)
  {
    sqlite3_finalize(writeSubscription);
    self->_writeSubscription = 0;
  }

  v29 = sqlite3_prepare_v2(self->_store, "INSERT OR REPLACE INTO Subscriptions (k0, k1, k2, k3, k4, k5) VALUES (?, ?, ?, ?, ?, ?)", 87, &self->_writeSubscription, 0);
  if (v29)
  {
    _beginDatabaseTransaction = v29;
    v6 = UAFGetLogCategory(&UAFLogContextStorage);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v30 = sqlite3_errmsg(self->_store);
      *buf = 136315906;
      v107 = "[UAFSubscriptionStoreManager _prepareStatements]";
      v108 = 2080;
      v109 = "INSERT OR REPLACE INTO Subscriptions (k0, k1, k2, k3, k4, k5) VALUES (?, ?, ?, ?, ?, ?)";
      v110 = 1024;
      v111 = _beginDatabaseTransaction;
      v112 = 2080;
      v113 = v30;
      v8 = "%s SQL error while preparing statement: %s, SQL error: (%d) %s";
      goto LABEL_160;
    }

    goto LABEL_162;
  }

  readSubscriptionsForSubscriber = self->_readSubscriptionsForSubscriber;
  if (readSubscriptionsForSubscriber)
  {
    sqlite3_finalize(readSubscriptionsForSubscriber);
    self->_readSubscriptionsForSubscriber = 0;
  }

  v32 = sqlite3_prepare_v2(self->_store, "SELECT k2 FROM Subscriptions WHERE k0 = ? AND k4 = ?", 52, &self->_readSubscriptionsForSubscriber, 0);
  if (v32)
  {
    _beginDatabaseTransaction = v32;
    v6 = UAFGetLogCategory(&UAFLogContextStorage);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v33 = sqlite3_errmsg(self->_store);
      *buf = 136315906;
      v107 = "[UAFSubscriptionStoreManager _prepareStatements]";
      v108 = 2080;
      v109 = "SELECT k2 FROM Subscriptions WHERE k0 = ? AND k4 = ?";
      v110 = 1024;
      v111 = _beginDatabaseTransaction;
      v112 = 2080;
      v113 = v33;
      v8 = "%s SQL error while preparing statement: %s, SQL error: (%d) %s";
      goto LABEL_160;
    }

    goto LABEL_162;
  }

  readSubscriptionsForUser = self->_readSubscriptionsForUser;
  if (readSubscriptionsForUser)
  {
    sqlite3_finalize(readSubscriptionsForUser);
    self->_readSubscriptionsForUser = 0;
  }

  v36 = sqlite3_prepare_v2(self->_store, "SELECT k2 FROM Subscriptions WHERE k4 = ?", 41, &self->_readSubscriptionsForUser, 0);
  if (v36)
  {
    _beginDatabaseTransaction = v36;
    v6 = UAFGetLogCategory(&UAFLogContextStorage);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v37 = sqlite3_errmsg(self->_store);
      *buf = 136315906;
      v107 = "[UAFSubscriptionStoreManager _prepareStatements]";
      v108 = 2080;
      v109 = "SELECT k2 FROM Subscriptions WHERE k4 = ?";
      v110 = 1024;
      v111 = _beginDatabaseTransaction;
      v112 = 2080;
      v113 = v37;
      v8 = "%s SQL error while preparing statement: %s, SQL error: (%d) %s";
      goto LABEL_160;
    }

    goto LABEL_162;
  }

  readSubscription = self->_readSubscription;
  if (readSubscription)
  {
    sqlite3_finalize(readSubscription);
    self->_readSubscription = 0;
  }

  v39 = sqlite3_prepare_v2(self->_store, "SELECT k2, k5 FROM Subscriptions WHERE k0 = ? AND k1 = ? AND k4 = ?", 67, &self->_readSubscription, 0);
  if (v39)
  {
    _beginDatabaseTransaction = v39;
    v6 = UAFGetLogCategory(&UAFLogContextStorage);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v40 = sqlite3_errmsg(self->_store);
      *buf = 136315906;
      v107 = "[UAFSubscriptionStoreManager _prepareStatements]";
      v108 = 2080;
      v109 = "SELECT k2, k5 FROM Subscriptions WHERE k0 = ? AND k1 = ? AND k4 = ?";
      v110 = 1024;
      v111 = _beginDatabaseTransaction;
      v112 = 2080;
      v113 = v40;
      v8 = "%s SQL error while preparing statement: %s, SQL error: (%d) %s";
      goto LABEL_160;
    }

    goto LABEL_162;
  }

  readAllSubscriptions = self->_readAllSubscriptions;
  if (readAllSubscriptions)
  {
    sqlite3_finalize(readAllSubscriptions);
    self->_readAllSubscriptions = 0;
  }

  v42 = sqlite3_prepare_v2(self->_store, "SELECT k2 FROM Subscriptions", 28, &self->_readAllSubscriptions, 0);
  if (v42)
  {
    _beginDatabaseTransaction = v42;
    v6 = UAFGetLogCategory(&UAFLogContextStorage);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v43 = sqlite3_errmsg(self->_store);
      *buf = 136315906;
      v107 = "[UAFSubscriptionStoreManager _prepareStatements]";
      v108 = 2080;
      v109 = "SELECT k2 FROM Subscriptions";
      v110 = 1024;
      v111 = _beginDatabaseTransaction;
      v112 = 2080;
      v113 = v43;
      v8 = "%s SQL error while preparing statement: %s, SQL error: (%d) %s";
      goto LABEL_160;
    }

    goto LABEL_162;
  }

  readAllSubscriptionsAndSubscribers = self->_readAllSubscriptionsAndSubscribers;
  if (readAllSubscriptionsAndSubscribers)
  {
    sqlite3_finalize(readAllSubscriptionsAndSubscribers);
    self->_readAllSubscriptionsAndSubscribers = 0;
  }

  v45 = sqlite3_prepare_v2(self->_store, "SELECT k2, k0, k4 FROM Subscriptions", 36, &self->_readAllSubscriptionsAndSubscribers, 0);
  if (v45)
  {
    _beginDatabaseTransaction = v45;
    v6 = UAFGetLogCategory(&UAFLogContextStorage);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v46 = sqlite3_errmsg(self->_store);
      *buf = 136315906;
      v107 = "[UAFSubscriptionStoreManager _prepareStatements]";
      v108 = 2080;
      v109 = "SELECT k2, k0, k4 FROM Subscriptions";
      v110 = 1024;
      v111 = _beginDatabaseTransaction;
      v112 = 2080;
      v113 = v46;
      v8 = "%s SQL error while preparing statement: %s, SQL error: (%d) %s";
      goto LABEL_160;
    }

    goto LABEL_162;
  }

  readAllSubscribers = self->_readAllSubscribers;
  if (readAllSubscribers)
  {
    sqlite3_finalize(readAllSubscribers);
    self->_readAllSubscribers = 0;
  }

  v48 = sqlite3_prepare_v2(self->_store, "SELECT DISTINCT k0 FROM Subscriptions WHERE k4 = ?", 50, &self->_readAllSubscribers, 0);
  if (v48)
  {
    _beginDatabaseTransaction = v48;
    v6 = UAFGetLogCategory(&UAFLogContextStorage);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v49 = sqlite3_errmsg(self->_store);
      *buf = 136315906;
      v107 = "[UAFSubscriptionStoreManager _prepareStatements]";
      v108 = 2080;
      v109 = "SELECT DISTINCT k0 FROM Subscriptions WHERE k4 = ?";
      v110 = 1024;
      v111 = _beginDatabaseTransaction;
      v112 = 2080;
      v113 = v49;
      v8 = "%s SQL error while preparing statement: %s, SQL error: (%d) %s";
      goto LABEL_160;
    }

    goto LABEL_162;
  }

  readAllUsers = self->_readAllUsers;
  if (readAllUsers)
  {
    sqlite3_finalize(readAllUsers);
    self->_readAllUsers = 0;
  }

  v51 = sqlite3_prepare_v2(self->_store, "SELECT DISTINCT k4 FROM Subscriptions", 37, &self->_readAllUsers, 0);
  if (v51)
  {
    _beginDatabaseTransaction = v51;
    v6 = UAFGetLogCategory(&UAFLogContextStorage);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v52 = sqlite3_errmsg(self->_store);
      *buf = 136315906;
      v107 = "[UAFSubscriptionStoreManager _prepareStatements]";
      v108 = 2080;
      v109 = "SELECT DISTINCT k4 FROM Subscriptions";
      v110 = 1024;
      v111 = _beginDatabaseTransaction;
      v112 = 2080;
      v113 = v52;
      v8 = "%s SQL error while preparing statement: %s, SQL error: (%d) %s";
      goto LABEL_160;
    }

    goto LABEL_162;
  }

  removeSubscription = self->_removeSubscription;
  if (removeSubscription)
  {
    sqlite3_finalize(removeSubscription);
    self->_removeSubscription = 0;
  }

  v54 = sqlite3_prepare_v2(self->_store, "DELETE FROM Subscriptions WHERE k0 = ? AND k1 = ? AND k4 = ?", 60, &self->_removeSubscription, 0);
  if (v54)
  {
    _beginDatabaseTransaction = v54;
    v6 = UAFGetLogCategory(&UAFLogContextStorage);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v55 = sqlite3_errmsg(self->_store);
      *buf = 136315906;
      v107 = "[UAFSubscriptionStoreManager _prepareStatements]";
      v108 = 2080;
      v109 = "DELETE FROM Subscriptions WHERE k0 = ? AND k1 = ? AND k4 = ?";
      v110 = 1024;
      v111 = _beginDatabaseTransaction;
      v112 = 2080;
      v113 = v55;
      v8 = "%s SQL error while preparing statement: %s, SQL error: (%d) %s";
      goto LABEL_160;
    }

    goto LABEL_162;
  }

  removeAllSubscriptions = self->_removeAllSubscriptions;
  if (removeAllSubscriptions)
  {
    sqlite3_finalize(removeAllSubscriptions);
    self->_removeAllSubscriptions = 0;
  }

  v57 = sqlite3_prepare_v2(self->_store, "DELETE FROM Subscriptions", 25, &self->_removeAllSubscriptions, 0);
  if (v57)
  {
    _beginDatabaseTransaction = v57;
    v6 = UAFGetLogCategory(&UAFLogContextStorage);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v58 = sqlite3_errmsg(self->_store);
      *buf = 136315906;
      v107 = "[UAFSubscriptionStoreManager _prepareStatements]";
      v108 = 2080;
      v109 = "DELETE FROM Subscriptions";
      v110 = 1024;
      v111 = _beginDatabaseTransaction;
      v112 = 2080;
      v113 = v58;
      v8 = "%s SQL error while preparing statement: %s, SQL error: (%d) %s";
      goto LABEL_160;
    }

    goto LABEL_162;
  }

  fetchExpiredSubscriptions = self->_fetchExpiredSubscriptions;
  if (fetchExpiredSubscriptions)
  {
    sqlite3_finalize(fetchExpiredSubscriptions);
    self->_fetchExpiredSubscriptions = 0;
  }

  v60 = sqlite3_prepare_v2(self->_store, "SELECT k0, k2, k4 FROM Subscriptions WHERE k3 <> 0.0 AND datetime(k3, 'unixepoch') < datetime('now')", 100, &self->_fetchExpiredSubscriptions, 0);
  if (v60)
  {
    _beginDatabaseTransaction = v60;
    v6 = UAFGetLogCategory(&UAFLogContextStorage);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v61 = sqlite3_errmsg(self->_store);
      *buf = 136315906;
      v107 = "[UAFSubscriptionStoreManager _prepareStatements]";
      v108 = 2080;
      v109 = "SELECT k0, k2, k4 FROM Subscriptions WHERE k3 <> 0.0 AND datetime(k3, 'unixepoch') < datetime('now')";
      v110 = 1024;
      v111 = _beginDatabaseTransaction;
      v112 = 2080;
      v113 = v61;
      v8 = "%s SQL error while preparing statement: %s, SQL error: (%d) %s";
      goto LABEL_160;
    }

    goto LABEL_162;
  }

  setSystemAssetSetUsages = self->_setSystemAssetSetUsages;
  if (setSystemAssetSetUsages)
  {
    sqlite3_finalize(setSystemAssetSetUsages);
    self->_setSystemAssetSetUsages = 0;
  }

  v63 = sqlite3_prepare_v2(self->_store, "INSERT OR REPLACE INTO SystemAssetSetUsages (k0, k1) VALUES (?, ?)", 66, &self->_setSystemAssetSetUsages, 0);
  if (v63)
  {
    _beginDatabaseTransaction = v63;
    v6 = UAFGetLogCategory(&UAFLogContextStorage);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v64 = sqlite3_errmsg(self->_store);
      *buf = 136315906;
      v107 = "[UAFSubscriptionStoreManager _prepareStatements]";
      v108 = 2080;
      v109 = "INSERT OR REPLACE INTO SystemAssetSetUsages (k0, k1) VALUES (?, ?)";
      v110 = 1024;
      v111 = _beginDatabaseTransaction;
      v112 = 2080;
      v113 = v64;
      v8 = "%s SQL error while preparing statement: %s, SQL error: (%d) %s";
      goto LABEL_160;
    }

    goto LABEL_162;
  }

  fetchSystemAssetSetUsages = self->_fetchSystemAssetSetUsages;
  if (fetchSystemAssetSetUsages)
  {
    sqlite3_finalize(fetchSystemAssetSetUsages);
    self->_fetchSystemAssetSetUsages = 0;
  }

  v66 = sqlite3_prepare_v2(self->_store, "SELECT k1 FROM SystemAssetSetUsages WHERE k0 = ?", 48, &self->_fetchSystemAssetSetUsages, 0);
  if (v66)
  {
    _beginDatabaseTransaction = v66;
    v6 = UAFGetLogCategory(&UAFLogContextStorage);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v67 = sqlite3_errmsg(self->_store);
      *buf = 136315906;
      v107 = "[UAFSubscriptionStoreManager _prepareStatements]";
      v108 = 2080;
      v109 = "SELECT k1 FROM SystemAssetSetUsages WHERE k0 = ?";
      v110 = 1024;
      v111 = _beginDatabaseTransaction;
      v112 = 2080;
      v113 = v67;
      v8 = "%s SQL error while preparing statement: %s, SQL error: (%d) %s";
      goto LABEL_160;
    }

    goto LABEL_162;
  }

  fetchAllSystemAssetSetUsages = self->_fetchAllSystemAssetSetUsages;
  if (fetchAllSystemAssetSetUsages)
  {
    sqlite3_finalize(fetchAllSystemAssetSetUsages);
    self->_fetchAllSystemAssetSetUsages = 0;
  }

  v69 = sqlite3_prepare_v2(self->_store, "SELECT k0, k1 FROM SystemAssetSetUsages", 39, &self->_fetchAllSystemAssetSetUsages, 0);
  if (v69)
  {
    _beginDatabaseTransaction = v69;
    v6 = UAFGetLogCategory(&UAFLogContextStorage);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v70 = sqlite3_errmsg(self->_store);
      *buf = 136315906;
      v107 = "[UAFSubscriptionStoreManager _prepareStatements]";
      v108 = 2080;
      v109 = "SELECT k0, k1 FROM SystemAssetSetUsages";
      v110 = 1024;
      v111 = _beginDatabaseTransaction;
      v112 = 2080;
      v113 = v70;
      v8 = "%s SQL error while preparing statement: %s, SQL error: (%d) %s";
      goto LABEL_160;
    }

    goto LABEL_162;
  }

  clearSystemAssetSetUsages = self->_clearSystemAssetSetUsages;
  if (clearSystemAssetSetUsages)
  {
    sqlite3_finalize(clearSystemAssetSetUsages);
    self->_clearSystemAssetSetUsages = 0;
  }

  v72 = sqlite3_prepare_v2(self->_store, "DELETE FROM SystemAssetSetUsages WHERE k0 = ?", 45, &self->_clearSystemAssetSetUsages, 0);
  if (v72)
  {
    _beginDatabaseTransaction = v72;
    v6 = UAFGetLogCategory(&UAFLogContextStorage);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v73 = sqlite3_errmsg(self->_store);
      *buf = 136315906;
      v107 = "[UAFSubscriptionStoreManager _prepareStatements]";
      v108 = 2080;
      v109 = "DELETE FROM SystemAssetSetUsages WHERE k0 = ?";
      v110 = 1024;
      v111 = _beginDatabaseTransaction;
      v112 = 2080;
      v113 = v73;
      v8 = "%s SQL error while preparing statement: %s, SQL error: (%d) %s";
      goto LABEL_160;
    }

    goto LABEL_162;
  }

  removeAllSystemAssetSetUsages = self->_removeAllSystemAssetSetUsages;
  if (removeAllSystemAssetSetUsages)
  {
    sqlite3_finalize(removeAllSystemAssetSetUsages);
    self->_removeAllSystemAssetSetUsages = 0;
  }

  v75 = sqlite3_prepare_v2(self->_store, "DELETE FROM SystemAssetSetUsages", 32, &self->_removeAllSystemAssetSetUsages, 0);
  if (v75)
  {
    _beginDatabaseTransaction = v75;
    v6 = UAFGetLogCategory(&UAFLogContextStorage);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v76 = sqlite3_errmsg(self->_store);
      *buf = 136315906;
      v107 = "[UAFSubscriptionStoreManager _prepareStatements]";
      v108 = 2080;
      v109 = "DELETE FROM SystemAssetSetUsages";
      v110 = 1024;
      v111 = _beginDatabaseTransaction;
      v112 = 2080;
      v113 = v76;
      v8 = "%s SQL error while preparing statement: %s, SQL error: (%d) %s";
      goto LABEL_160;
    }

    goto LABEL_162;
  }

  readConfigurationKey = self->_readConfigurationKey;
  if (readConfigurationKey)
  {
    sqlite3_finalize(readConfigurationKey);
    self->_readConfigurationKey = 0;
  }

  v78 = sqlite3_prepare_v2(self->_store, "SELECT k1 FROM SystemConfiguration WHERE k0 = ?", 47, &self->_readConfigurationKey, 0);
  if (v78)
  {
    _beginDatabaseTransaction = v78;
    v6 = UAFGetLogCategory(&UAFLogContextStorage);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v79 = sqlite3_errmsg(self->_store);
      *buf = 136315906;
      v107 = "[UAFSubscriptionStoreManager _prepareStatements]";
      v108 = 2080;
      v109 = "SELECT k1 FROM SystemConfiguration WHERE k0 = ?";
      v110 = 1024;
      v111 = _beginDatabaseTransaction;
      v112 = 2080;
      v113 = v79;
      v8 = "%s SQL error while preparing statement: %s, SQL error: (%d) %s";
      goto LABEL_160;
    }

    goto LABEL_162;
  }

  writeConfigurationKey = self->_writeConfigurationKey;
  if (writeConfigurationKey)
  {
    sqlite3_finalize(writeConfigurationKey);
    self->_writeConfigurationKey = 0;
  }

  v81 = sqlite3_prepare_v2(self->_store, "INSERT OR REPLACE INTO SystemConfiguration (k0, k1) VALUES (?, ?)", 65, &self->_writeConfigurationKey, 0);
  if (v81)
  {
    _beginDatabaseTransaction = v81;
    v6 = UAFGetLogCategory(&UAFLogContextStorage);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v82 = sqlite3_errmsg(self->_store);
      *buf = 136315906;
      v107 = "[UAFSubscriptionStoreManager _prepareStatements]";
      v108 = 2080;
      v109 = "INSERT OR REPLACE INTO SystemConfiguration (k0, k1) VALUES (?, ?)";
      v110 = 1024;
      v111 = _beginDatabaseTransaction;
      v112 = 2080;
      v113 = v82;
      v8 = "%s SQL error while preparing statement: %s, SQL error: (%d) %s";
      goto LABEL_160;
    }

    goto LABEL_162;
  }

  fetchAllConfiguration = self->_fetchAllConfiguration;
  if (fetchAllConfiguration)
  {
    sqlite3_finalize(fetchAllConfiguration);
    self->_fetchAllConfiguration = 0;
  }

  v84 = sqlite3_prepare_v2(self->_store, "SELECT k0, k1 FROM SystemConfiguration", 38, &self->_fetchAllConfiguration, 0);
  if (v84)
  {
    _beginDatabaseTransaction = v84;
    v6 = UAFGetLogCategory(&UAFLogContextStorage);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v85 = sqlite3_errmsg(self->_store);
      *buf = 136315906;
      v107 = "[UAFSubscriptionStoreManager _prepareStatements]";
      v108 = 2080;
      v109 = "SELECT k0, k1 FROM SystemConfiguration";
      v110 = 1024;
      v111 = _beginDatabaseTransaction;
      v112 = 2080;
      v113 = v85;
      v8 = "%s SQL error while preparing statement: %s, SQL error: (%d) %s";
      goto LABEL_160;
    }

    goto LABEL_162;
  }

  readUser = self->_readUser;
  if (readUser)
  {
    sqlite3_finalize(readUser);
    self->_readUser = 0;
  }

  v87 = sqlite3_prepare_v2(self->_store, "SELECT k1, k2 FROM UserInformation WHERE k0 = ?", 47, &self->_readUser, 0);
  if (v87)
  {
    _beginDatabaseTransaction = v87;
    v6 = UAFGetLogCategory(&UAFLogContextStorage);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v88 = sqlite3_errmsg(self->_store);
      *buf = 136315906;
      v107 = "[UAFSubscriptionStoreManager _prepareStatements]";
      v108 = 2080;
      v109 = "SELECT k1, k2 FROM UserInformation WHERE k0 = ?";
      v110 = 1024;
      v111 = _beginDatabaseTransaction;
      v112 = 2080;
      v113 = v88;
      v8 = "%s SQL error while preparing statement: %s, SQL error: (%d) %s";
      goto LABEL_160;
    }

    goto LABEL_162;
  }

  writeUserLastSeen = self->_writeUserLastSeen;
  if (writeUserLastSeen)
  {
    sqlite3_finalize(writeUserLastSeen);
    self->_writeUserLastSeen = 0;
  }

  v90 = sqlite3_prepare_v2(self->_store, "INSERT OR REPLACE INTO UserInformation (k0, k1, k2) VALUES (?, ?, ?)", 68, &self->_writeUserLastSeen, 0);
  if (v90)
  {
    _beginDatabaseTransaction = v90;
    v6 = UAFGetLogCategory(&UAFLogContextStorage);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v91 = sqlite3_errmsg(self->_store);
      *buf = 136315906;
      v107 = "[UAFSubscriptionStoreManager _prepareStatements]";
      v108 = 2080;
      v109 = "INSERT OR REPLACE INTO UserInformation (k0, k1, k2) VALUES (?, ?, ?)";
      v110 = 1024;
      v111 = _beginDatabaseTransaction;
      v112 = 2080;
      v113 = v91;
      v8 = "%s SQL error while preparing statement: %s, SQL error: (%d) %s";
      goto LABEL_160;
    }

    goto LABEL_162;
  }

  readUsersOlderThan = self->_readUsersOlderThan;
  if (readUsersOlderThan)
  {
    sqlite3_finalize(readUsersOlderThan);
    self->_readUsersOlderThan = 0;
  }

  v93 = sqlite3_prepare_v2(self->_store, "SELECT k0, k1, k2 FROM UserInformation WHERE k1 <= ?", 52, &self->_readUsersOlderThan, 0);
  if (v93)
  {
    _beginDatabaseTransaction = v93;
    v6 = UAFGetLogCategory(&UAFLogContextStorage);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v94 = sqlite3_errmsg(self->_store);
      *buf = 136315906;
      v107 = "[UAFSubscriptionStoreManager _prepareStatements]";
      v108 = 2080;
      v109 = "SELECT k0, k1, k2 FROM UserInformation WHERE k1 <= ?";
      v110 = 1024;
      v111 = _beginDatabaseTransaction;
      v112 = 2080;
      v113 = v94;
      v8 = "%s SQL error while preparing statement: %s, SQL error: (%d) %s";
      goto LABEL_160;
    }

    goto LABEL_162;
  }

  removeUser = self->_removeUser;
  if (removeUser)
  {
    sqlite3_finalize(removeUser);
    self->_removeUser = 0;
  }

  v96 = sqlite3_prepare_v2(self->_store, "DELETE FROM UserInformation WHERE k0 = ?", 40, &self->_removeUser, 0);
  if (v96)
  {
    _beginDatabaseTransaction = v96;
    v6 = UAFGetLogCategory(&UAFLogContextStorage);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v97 = sqlite3_errmsg(self->_store);
      *buf = 136315906;
      v107 = "[UAFSubscriptionStoreManager _prepareStatements]";
      v108 = 2080;
      v109 = "DELETE FROM UserInformation WHERE k0 = ?";
      v110 = 1024;
      v111 = _beginDatabaseTransaction;
      v112 = 2080;
      v113 = v97;
      v8 = "%s SQL error while preparing statement: %s, SQL error: (%d) %s";
      goto LABEL_160;
    }

    goto LABEL_162;
  }

  removeAllUsers = self->_removeAllUsers;
  if (removeAllUsers)
  {
    sqlite3_finalize(removeAllUsers);
    self->_removeAllUsers = 0;
  }

  _beginDatabaseTransaction = sqlite3_prepare_v2(self->_store, "DELETE FROM UserInformation", 27, &self->_removeAllUsers, 0);
  if (_beginDatabaseTransaction)
  {
    v6 = UAFGetLogCategory(&UAFLogContextStorage);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v99 = sqlite3_errmsg(self->_store);
      *buf = 136315906;
      v107 = "[UAFSubscriptionStoreManager _prepareStatements]";
      v108 = 2080;
      v109 = "DELETE FROM UserInformation";
      v110 = 1024;
      v111 = _beginDatabaseTransaction;
      v112 = 2080;
      v113 = v99;
      v8 = "%s SQL error while preparing statement: %s, SQL error: (%d) %s";
      goto LABEL_160;
    }

    goto LABEL_162;
  }

LABEL_163:
  v100 = *MEMORY[0x1E69E9840];
  return _beginDatabaseTransaction;
}

- (void)_closeDatabase
{
  if (self->_store)
  {
    [(UAFSubscriptionStoreManager *)self _finalizeStatements];
    sqlite3_close_v2(self->_store);
    self->_store = 0;

    [(UAFSubscriptionStoreManager *)self _releaseAssertion];
  }
}

- (void)_finalizeStatements
{
  sqlite3_finalize(self->_writeSubscription);
  self->_writeSubscription = 0;
  sqlite3_finalize(self->_readSubscriptionsForSubscriber);
  self->_readSubscriptionsForSubscriber = 0;
  sqlite3_finalize(self->_readSubscriptionsForUser);
  self->_readSubscriptionsForUser = 0;
  sqlite3_finalize(self->_readSubscription);
  self->_readSubscription = 0;
  sqlite3_finalize(self->_readAllSubscriptions);
  self->_readAllSubscriptions = 0;
  sqlite3_finalize(self->_readAllSubscriptionsAndSubscribers);
  self->_readAllSubscriptionsAndSubscribers = 0;
  sqlite3_finalize(self->_readAllSubscribers);
  self->_readAllSubscribers = 0;
  sqlite3_finalize(self->_readAllUsers);
  self->_readAllUsers = 0;
  sqlite3_finalize(self->_removeSubscription);
  self->_removeSubscription = 0;
  sqlite3_finalize(self->_removeAllSubscriptions);
  self->_removeAllSubscriptions = 0;
  sqlite3_finalize(self->_fetchExpiredSubscriptions);
  self->_fetchExpiredSubscriptions = 0;
  sqlite3_finalize(self->_setSystemAssetSetUsages);
  self->_setSystemAssetSetUsages = 0;
  sqlite3_finalize(self->_fetchSystemAssetSetUsages);
  self->_fetchSystemAssetSetUsages = 0;
  sqlite3_finalize(self->_fetchAllSystemAssetSetUsages);
  self->_fetchAllSystemAssetSetUsages = 0;
  sqlite3_finalize(self->_clearSystemAssetSetUsages);
  self->_clearSystemAssetSetUsages = 0;
  sqlite3_finalize(self->_removeAllSystemAssetSetUsages);
  self->_removeAllSystemAssetSetUsages = 0;
  sqlite3_finalize(self->_setDbVersion);
  self->_setDbVersion = 0;
  sqlite3_finalize(self->_deleteDbVersion);
  self->_deleteDbVersion = 0;
  sqlite3_finalize(self->_readDbVersion);
  self->_readDbVersion = 0;
  sqlite3_finalize(self->_readConfigurationKey);
  self->_readConfigurationKey = 0;
  sqlite3_finalize(self->_writeConfigurationKey);
  self->_writeConfigurationKey = 0;
  sqlite3_finalize(self->_fetchAllConfiguration);
  self->_fetchAllConfiguration = 0;
  sqlite3_finalize(self->_readUser);
  self->_readUser = 0;
  sqlite3_finalize(self->_writeUserLastSeen);
  self->_writeUserLastSeen = 0;
  sqlite3_finalize(self->_readUsersOlderThan);
  self->_readUsersOlderThan = 0;
  sqlite3_finalize(self->_removeUser);
  self->_removeUser = 0;
  sqlite3_finalize(self->_removeAllUsers);
  self->_removeAllUsers = 0;
}

+ (id)defaultManager
{
  if (qword_1ED7D1168 != -1)
  {
    dispatch_once(&qword_1ED7D1168, &__block_literal_global_328);
  }

  v3 = qword_1ED7D1170;

  return v3;
}

+ (id)getSerialQueue
{
  if (_MergedGlobals_11 != -1)
  {
    dispatch_once(&_MergedGlobals_11, &__block_literal_global_323);
  }

  v3 = qword_1ED7D1160;

  return v3;
}

void __45__UAFSubscriptionStoreManager_getSerialQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("UAFSubscriptionStoreManager.Serial", v2);
  v1 = qword_1ED7D1160;
  qword_1ED7D1160 = v0;
}

void __45__UAFSubscriptionStoreManager_defaultManager__block_invoke()
{
  v0 = [UAFSubscriptionStoreManager _getManagerReadOnly:1];
  v1 = qword_1ED7D1170;
  qword_1ED7D1170 = v0;
}

+ (void)sendNotificationDBReset
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = UAFGetLogCategory(&UAFLogContextStorage);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "+[UAFSubscriptionStoreManager sendNotificationDBReset]";
    _os_log_impl(&dword_1BCF2C000, v2, OS_LOG_TYPE_DEFAULT, "%s Sending notification of DB reset", &v4, 0xCu);
  }

  notify_post([@"com.apple.siri.uaf.reset" UTF8String]);
  v3 = *MEMORY[0x1E69E9840];
}

+ (id)writeManager
{
  if (qword_1ED7D1178 != -1)
  {
    dispatch_once(&qword_1ED7D1178, &__block_literal_global_330);
  }

  v3 = qword_1ED7D1180;

  return v3;
}

uint64_t __43__UAFSubscriptionStoreManager_writeManager__block_invoke()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = [UAFSubscriptionStoreManager _getManagerReadOnly:0];
  v1 = qword_1ED7D1180;
  qword_1ED7D1180 = v0;

  if (objc_opt_class())
  {
    v2 = MEMORY[0x1E69C5D00];
    v3 = *MEMORY[0x1E69E9840];

    return [v2 runBlockWhenDeviceIsClassCUnlocked:&__block_literal_global_333];
  }

  else
  {
    v5 = UAFGetLogCategory(&UAFLogContextXPCService);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = "+[UAFSubscriptionStoreManager writeManager]_block_invoke";
      _os_log_impl(&dword_1BCF2C000, v5, OS_LOG_TYPE_DEFAULT, "%s Device doesn't support PASDeviceState. Performing database upgrade check", &v7, 0xCu);
    }

    result = [qword_1ED7D1180 performDbUpgrade];
    v6 = *MEMORY[0x1E69E9840];
  }

  return result;
}

uint64_t __43__UAFSubscriptionStoreManager_writeManager__block_invoke_2()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = UAFGetLogCategory(&UAFLogContextXPCService);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "+[UAFSubscriptionStoreManager writeManager]_block_invoke_2";
    _os_log_impl(&dword_1BCF2C000, v0, OS_LOG_TYPE_DEFAULT, "%s Device has been unlocked, performing database upgrade check", &v3, 0xCu);
  }

  result = [qword_1ED7D1180 performDbUpgrade];
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

+ (id)flattenSubscriptions:(id)subscriptions
{
  v3 = MEMORY[0x1E695DF70];
  subscriptionsCopy = subscriptions;
  array = [v3 array];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __52__UAFSubscriptionStoreManager_flattenSubscriptions___block_invoke;
  v8[3] = &unk_1E7FFE050;
  v6 = array;
  v9 = v6;
  [subscriptionsCopy enumerateKeysAndObjectsUsingBlock:v8];

  return v6;
}

void __52__UAFSubscriptionStoreManager_flattenSubscriptions___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __52__UAFSubscriptionStoreManager_flattenSubscriptions___block_invoke_2;
  v4[3] = &unk_1E7FFE028;
  v5 = *(a1 + 32);
  [a3 enumerateKeysAndObjectsUsingBlock:v4];
}

- (UAFSubscriptionStoreManager)initWithDbDirPath:(id)path dbName:(id)name readOnly:(BOOL)only allowCreate:(BOOL)create
{
  v30 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  nameCopy = name;
  v23.receiver = self;
  v23.super_class = UAFSubscriptionStoreManager;
  v12 = [(UAFSubscriptionStoreManager *)&v23 init];
  v13 = v12;
  if (!v12)
  {
    goto LABEL_7;
  }

  v12->_store = 0;
  v12->_updateCount = 0;
  if (nameCopy)
  {
    v14 = nameCopy;
  }

  else
  {
    v14 = @"/UAFAssetSubscriptions.db";
  }

  v15 = [pathCopy stringByAppendingString:v14];
  databaseName = v13->_databaseName;
  v13->_databaseName = v15;

  v17 = [pathCopy stringByAppendingPathComponent:@"UAFOldVersionDbName.db"];
  oldDatabaseName = v13->_oldDatabaseName;
  v13->_oldDatabaseName = v17;

  if (v13->_databaseName)
  {
    v13->_dbUpToDate = 0;
    v13->_readOnly = only;
    v13->_allowCreate = create;
LABEL_7:
    v19 = v13;
    goto LABEL_11;
  }

  v20 = UAFGetLogCategory(&UAFLogContextStorage);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v25 = "[UAFSubscriptionStoreManager initWithDbDirPath:dbName:readOnly:allowCreate:]";
    v26 = 2112;
    v27 = pathCopy;
    v28 = 2112;
    v29 = v14;
    _os_log_error_impl(&dword_1BCF2C000, v20, OS_LOG_TYPE_ERROR, "%s Could not construct database path from %@ and %@", buf, 0x20u);
  }

  v19 = 0;
LABEL_11:

  v21 = *MEMORY[0x1E69E9840];
  return v19;
}

- (void)dealloc
{
  v3 = +[UAFSubscriptionStoreManager getSerialQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__UAFSubscriptionStoreManager_dealloc__block_invoke;
  block[3] = &unk_1E7FFCFD0;
  block[4] = self;
  dispatch_sync(v3, block);

  v4.receiver = self;
  v4.super_class = UAFSubscriptionStoreManager;
  [(UAFSubscriptionStoreManager *)&v4 dealloc];
}

- (int)_dropTable:(id)table
{
  v18 = *MEMORY[0x1E69E9840];
  table = [MEMORY[0x1E696AEC0] stringWithFormat:@"DROP TABLE IF EXISTS %@", table];
  if ([table UTF8String])
  {
    v5 = -[UAFSubscriptionStoreManager executeSQL:](self, "executeSQL:", [table UTF8String]);
    if (v5)
    {
      v6 = UAFGetLogCategory(&UAFLogContextStorage);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v9 = sqlite3_errmsg(self->_store);
        *buf = 136315906;
        v11 = "[UAFSubscriptionStoreManager _dropTable:]";
        v12 = 2114;
        v13 = table;
        v14 = 1024;
        v15 = v5;
        v16 = 2082;
        v17 = v9;
        _os_log_error_impl(&dword_1BCF2C000, v6, OS_LOG_TYPE_ERROR, "%s SQL error while executing statement: '%{public}@': (%d) '%{public}s", buf, 0x26u);
      }
    }
  }

  else
  {
    v5 = 1;
  }

  v7 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)_openDatabaseFile:(id)file existed:(BOOL *)existed
{
  v35 = *MEMORY[0x1E69E9840];
  fileCopy = file;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  *existed = [defaultManager fileExistsAtPath:fileCopy];
  stringByDeletingLastPathComponent = [fileCopy stringByDeletingLastPathComponent];
  v9 = stringByDeletingLastPathComponent;
  if (self->_readOnly)
  {
    goto LABEL_2;
  }

  v10 = 2;
  if (*existed || !stringByDeletingLastPathComponent)
  {
    goto LABEL_12;
  }

  if (!self->_allowCreate)
  {
    goto LABEL_11;
  }

  v26 = 0;
  v11 = [defaultManager createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v26];
  v12 = v26;
  if ((v11 & 1) == 0)
  {
    v13 = UAFGetLogCategory(&UAFLogContextStorage);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v30 = "[UAFSubscriptionStoreManager _openDatabaseFile:existed:]";
      v31 = 2112;
      v32 = v9;
      v33 = 2112;
      v34 = v12;
      _os_log_error_impl(&dword_1BCF2C000, v13, OS_LOG_TYPE_ERROR, "%s Could not create database directory %@: %@", buf, 0x20u);
    }
  }

  if (self->_readOnly)
  {
LABEL_2:
    v10 = 1;
  }

  else
  {
LABEL_11:
    v10 = 2;
  }

LABEL_12:
  if (self->_allowCreate)
  {
    v14 = v10 | 4;
  }

  else
  {
    v14 = v10;
  }

  v15 = sqlite3_open_v2([fileCopy UTF8String], &self->_store, v14, 0);
  store = self->_store;
  if (!v15)
  {
    if (store)
    {
      sqlite3_busy_timeout(store, 60000);
      v21 = 0;
      goto LABEL_27;
    }

    v18 = 0;
    v17 = MEMORY[0x1E696ABC0];
    v27 = *MEMORY[0x1E696A578];
    goto LABEL_21;
  }

  v17 = MEMORY[0x1E696ABC0];
  v18 = v15;
  v27 = *MEMORY[0x1E696A578];
  if (!store)
  {
LABEL_21:
    v19 = &stru_1F3B6B510;
    v20 = 1;
    goto LABEL_22;
  }

  v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:sqlite3_errmsg(store)];
  v20 = 0;
LABEL_22:
  v28 = v19;
  v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
  v21 = [v17 errorWithDomain:@"SQLITE" code:v18 userInfo:v22];

  if ((v20 & 1) == 0)
  {
  }

  v23 = self->_store;
  if (v23)
  {
    sqlite3_close(v23);
  }

  self->_store = 0;
LABEL_27:

  v24 = *MEMORY[0x1E69E9840];

  return v21;
}

- (void)_acquireAssertion
{
  v21[1] = *MEMORY[0x1E69E9840];
  if (!objc_opt_class() || !objc_opt_class() || !objc_opt_class() || !objc_opt_class())
  {
    v3 = UAFGetLogCategory(&UAFLogContextStorage);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v18 = "[UAFSubscriptionStoreManager _acquireAssertion]";
      _os_log_impl(&dword_1BCF2C000, v3, OS_LOG_TYPE_DEFAULT, "%s RunningBoard not available, not pursuing assertion", buf, 0xCu);
    }
  }

  currentProcess = [MEMORY[0x1E69C75C8] currentProcess];
  if ([currentProcess isManaged])
  {
    v5 = UAFGetLogCategory(&UAFLogContextStorage);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v18 = "[UAFSubscriptionStoreManager _acquireAssertion]";
      _os_log_impl(&dword_1BCF2C000, v5, OS_LOG_TYPE_INFO, "%s Current process is RB managed, acquiring assertion", buf, 0xCu);
    }

    v6 = objc_alloc(MEMORY[0x1E69C7540]);
    currentProcess2 = [MEMORY[0x1E69C7648] currentProcess];
    v8 = [MEMORY[0x1E69C7568] attributeWithDomain:@"com.apple.common" name:@"FinishTaskUninterruptable"];
    v21[0] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
    v10 = [v6 initWithExplanation:@"UAF database access" target:currentProcess2 attributes:v9];
    rbassertion = self->_rbassertion;
    self->_rbassertion = v10;

    v12 = self->_rbassertion;
    v16 = 0;
    [(RBSAssertion *)v12 acquireWithError:&v16];
    v13 = v16;
    if (v13)
    {
      v14 = UAFGetLogCategory(&UAFLogContextStorage);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v18 = "[UAFSubscriptionStoreManager _acquireAssertion]";
        v19 = 2114;
        v20 = v13;
        _os_log_error_impl(&dword_1BCF2C000, v14, OS_LOG_TYPE_ERROR, "%s Unable to acquire RB assertion: %{public}@", buf, 0x16u);
      }
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)_releaseAssertion
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->_rbassertion)
  {
    v3 = UAFGetLogCategory(&UAFLogContextStorage);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v11 = "[UAFSubscriptionStoreManager _releaseAssertion]";
      _os_log_impl(&dword_1BCF2C000, v3, OS_LOG_TYPE_INFO, "%s Releasing RB assertion", buf, 0xCu);
    }

    rbassertion = self->_rbassertion;
    v9 = 0;
    [(RBSAssertion *)rbassertion invalidateSyncWithError:&v9];
    v5 = v9;
    if (v5)
    {
      v6 = UAFGetLogCategory(&UAFLogContextStorage);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v11 = "[UAFSubscriptionStoreManager _releaseAssertion]";
        v12 = 2114;
        v13 = v5;
        _os_log_error_impl(&dword_1BCF2C000, v6, OS_LOG_TYPE_ERROR, "%s Error invalidating assertion: %{public}@", buf, 0x16u);
      }
    }

    v7 = self->_rbassertion;
    self->_rbassertion = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (BOOL)_openDatabase:(id)database
{
  v46 = *MEMORY[0x1E69E9840];
  databaseCopy = database;
  if (!databaseCopy)
  {
    databaseCopy = self->_databaseName;
    if (!databaseCopy)
    {
      v5 = UAFGetLogCategory(&UAFLogContextStorage);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v41 = "[UAFSubscriptionStoreManager _openDatabase:]";
        _os_log_error_impl(&dword_1BCF2C000, v5, OS_LOG_TYPE_ERROR, "%s nil database filename", buf, 0xCu);
      }

      goto LABEL_26;
    }
  }

  v5 = databaseCopy;
  if (objc_opt_class() && [MEMORY[0x1E69C5D00] isClassCLocked])
  {
    v6 = UAFGetLogCategory(&UAFLogContextStorage);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v41 = "[UAFSubscriptionStoreManager _openDatabase:]";
      _os_log_error_impl(&dword_1BCF2C000, v6, OS_LOG_TYPE_ERROR, "%s Attempt to open database before class c unlock", buf, 0xCu);
    }

LABEL_26:
    v10 = 0;
    goto LABEL_27;
  }

  [(UAFSubscriptionStoreManager *)self _acquireAssertion];
  v39 = 0;
  v7 = [(UAFSubscriptionStoreManager *)self _openDatabaseFile:v5 existed:&v39];
  if (v7)
  {
    v8 = v7;
    v9 = UAFGetLogCategory(&UAFLogContextStorage);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v41 = "[UAFSubscriptionStoreManager _openDatabase:]";
      v42 = 2112;
      *v43 = v5;
      *&v43[8] = 2112;
      *v44 = v8;
      _os_log_error_impl(&dword_1BCF2C000, v9, OS_LOG_TYPE_ERROR, "%s Could not open database (%@): %@", buf, 0x20u);
    }

    [(UAFSubscriptionStoreManager *)self _releaseAssertion];
    goto LABEL_12;
  }

  v38 = 0;
  v37 = 0;
  _prepareStatements = [(UAFSubscriptionStoreManager *)self _prepareStatements];
  _prepareStatements2 = _prepareStatements;
  if (self->_allowCreate && !self->_readOnly && _prepareStatements <= 0x1A && ((1 << _prepareStatements) & 0x4000C00) != 0)
  {
    v17 = UAFGetLogCategory(&UAFLogContextStorage);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v41 = "[UAFSubscriptionStoreManager _openDatabase:]";
      v42 = 1024;
      *v43 = _prepareStatements2;
      _os_log_error_impl(&dword_1BCF2C000, v17, OS_LOG_TYPE_ERROR, "%s Detected database corruption.  Deleting database and recreating: %d", buf, 0x12u);
    }

    sqlite3_close(self->_store);
    self->_store = 0;
    v18 = [v5 stringByAppendingString:@".corrupt"];
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    [defaultManager removeItemAtPath:v18 error:0];

    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    v36 = 0;
    v21 = [defaultManager2 moveItemAtPath:v5 toPath:v18 error:&v36];
    v8 = v36;

    if ((v21 & 1) == 0)
    {
      v28 = UAFGetLogCategory(&UAFLogContextStorage);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v41 = "[UAFSubscriptionStoreManager _openDatabase:]";
        v42 = 2112;
        *v43 = v5;
        *&v43[8] = 2112;
        *v44 = v18;
        *&v44[8] = 2114;
        v45 = v8;
        _os_log_error_impl(&dword_1BCF2C000, v28, OS_LOG_TYPE_ERROR, "%s Could not rename %@ to %@: %{public}@", buf, 0x2Au);
      }

      goto LABEL_55;
    }

    v22 = [(UAFSubscriptionStoreManager *)self _openDatabaseFile:v5 existed:&v39];

    if (v22)
    {
      v23 = UAFGetLogCategory(&UAFLogContextStorage);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v41 = "[UAFSubscriptionStoreManager _openDatabase:]";
        v42 = 2112;
        *v43 = v5;
        *&v43[8] = 2112;
        *v44 = v22;
        _os_log_error_impl(&dword_1BCF2C000, v23, OS_LOG_TYPE_ERROR, "%s Could not open database (%@): %@", buf, 0x20u);
      }

      v8 = v22;
LABEL_55:

      goto LABEL_12;
    }

    if ([(UAFSubscriptionStoreManager *)self _prepareStatements])
    {
      v29 = UAFGetLogCategory(&UAFLogContextStorage);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v41 = "[UAFSubscriptionStoreManager _openDatabase:]";
        _os_log_error_impl(&dword_1BCF2C000, v29, OS_LOG_TYPE_ERROR, "%s Could not prepare statements after database recreation", buf, 0xCu);
      }

      sqlite3_close(self->_store);
      v8 = 0;
      self->_store = 0;
      goto LABEL_55;
    }

    v30 = [(UAFSubscriptionStoreManager *)self _setDbVersion:2];
    _prepareStatements2 = v30;
    if (v30 && v30 != 101)
    {
      v34 = UAFGetLogCategory(&UAFLogContextStorage);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v41 = "[UAFSubscriptionStoreManager _openDatabase:]";
        _os_log_error_impl(&dword_1BCF2C000, v34, OS_LOG_TYPE_ERROR, "%s Could not set database version after recreation", buf, 0xCu);
      }

      [(UAFSubscriptionStoreManager *)self _closeDatabase];
      v8 = 0;
      goto LABEL_55;
    }

    +[UAFSubscriptionStoreManager sendNotificationDBReset];

LABEL_66:
    v33 = UAFGetLogCategory(&UAFLogContextStorage);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v41 = "[UAFSubscriptionStoreManager _openDatabase:]";
      v42 = 2112;
      *v43 = v5;
      *&v43[8] = 1024;
      *v44 = v39;
      *&v44[4] = 1024;
      *&v44[6] = _prepareStatements2;
      _os_log_impl(&dword_1BCF2C000, v33, OS_LOG_TYPE_DEFAULT, "%s Opened database (%@), database existed:%d, result: %d", buf, 0x22u);
    }

    v8 = 0;
    v10 = 1;
    goto LABEL_13;
  }

  if ((v39 & 1) != 0 || _prepareStatements != 101 && _prepareStatements)
  {
    if (self->_dbUpToDate || [(UAFSubscriptionStoreManager *)self _checkDbVersion:&v38 storedVersion:&v37])
    {
      if (!_prepareStatements2)
      {
        goto LABEL_66;
      }
    }

    else
    {
      if (self->_readOnly || v38 != 1)
      {
        v27 = UAFGetLogCategory(&UAFLogContextStorage);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v41 = "[UAFSubscriptionStoreManager _openDatabase:]";
          v42 = 1024;
          *v43 = v37;
          *&v43[4] = 1024;
          *&v43[6] = 2;
          _os_log_impl(&dword_1BCF2C000, v27, OS_LOG_TYPE_DEFAULT, "%s Denying open due to version mismatch, %d vs %d", buf, 0x18u);
        }

        sqlite3_close_v2(self->_store);
        v8 = 0;
        v10 = 0;
        self->_store = 0;
        goto LABEL_13;
      }

      v24 = UAFGetLogCategory(&UAFLogContextStorage);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v41 = "[UAFSubscriptionStoreManager _openDatabase:]";
        _os_log_impl(&dword_1BCF2C000, v24, OS_LOG_TYPE_DEFAULT, "%s Database in need of upgrade.  Attempting DB upgrade.", buf, 0xCu);
      }

      [(UAFSubscriptionStoreManager *)self _closeDatabase];
      v25 = [(UAFSubscriptionStoreManager *)self _openDatabaseFile:v5 existed:&v39];
      if (v25)
      {
        v8 = v25;
        v26 = UAFGetLogCategory(&UAFLogContextStorage);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v41 = "[UAFSubscriptionStoreManager _openDatabase:]";
          v42 = 2112;
          *v43 = v5;
          *&v43[8] = 2112;
          *v44 = v8;
          _os_log_error_impl(&dword_1BCF2C000, v26, OS_LOG_TYPE_ERROR, "%s Could not open database (%@): %@", buf, 0x20u);
        }

        goto LABEL_12;
      }

      [(UAFSubscriptionStoreManager *)self _prepareStatements];
      v31 = [(UAFSubscriptionStoreManager *)self _performDbUpgrade:v37];
      if (!v31 || (v32 = v31, v31 == 101))
      {
        [(UAFSubscriptionStoreManager *)self _finalizeStatements];
        _prepareStatements2 = [(UAFSubscriptionStoreManager *)self _prepareStatements];
        goto LABEL_66;
      }

      v35 = UAFGetLogCategory(&UAFLogContextStorage);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v41 = "[UAFSubscriptionStoreManager _openDatabase:]";
        v42 = 1024;
        *v43 = v32;
        _os_log_error_impl(&dword_1BCF2C000, v35, OS_LOG_TYPE_ERROR, "%s Denying open due to upgrade failure: %d", buf, 0x12u);
      }
    }
  }

  else
  {
    v13 = UAFGetLogCategory(&UAFLogContextStorage);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v41 = "[UAFSubscriptionStoreManager _openDatabase:]";
      v42 = 1024;
      *v43 = 2;
      _os_log_impl(&dword_1BCF2C000, v13, OS_LOG_TYPE_DEFAULT, "%s Setting DB version to %d", buf, 0x12u);
    }

    v14 = [(UAFSubscriptionStoreManager *)self _setDbVersion:2];
    if (!v14 || v14 == 101)
    {
      goto LABEL_66;
    }
  }

  [(UAFSubscriptionStoreManager *)self _closeDatabase];
  v8 = 0;
LABEL_12:
  v10 = 0;
LABEL_13:

LABEL_27:
  v15 = *MEMORY[0x1E69E9840];
  return v10;
}

- (int)_beginDatabaseTransaction
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [(UAFSubscriptionStoreManager *)self executeSQL:"BEGIN TRANSACTION;"];
  if (v3)
  {
    v4 = UAFGetLogCategory(&UAFLogContextStorage);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = sqlite3_errmsg(self->_store);
      v8 = sqlite3_extended_errcode(self->_store);
      v9 = 136315906;
      v10 = "[UAFSubscriptionStoreManager _beginDatabaseTransaction]";
      v11 = 1024;
      v12 = v3;
      v13 = 2080;
      v14 = v7;
      v15 = 1024;
      v16 = v8;
      _os_log_error_impl(&dword_1BCF2C000, v4, OS_LOG_TYPE_ERROR, "%s Failed to begin transaction with error SQLite error: %d (%s, Extended: %d)", &v9, 0x22u);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return v3;
}

- (int)_endDatabaseTransaction
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [(UAFSubscriptionStoreManager *)self executeSQL:"COMMIT;"];
  if (v3)
  {
    v4 = UAFGetLogCategory(&UAFLogContextStorage);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = sqlite3_errmsg(self->_store);
      v8 = sqlite3_extended_errcode(self->_store);
      v9 = 136315906;
      v10 = "[UAFSubscriptionStoreManager _endDatabaseTransaction]";
      v11 = 1024;
      v12 = v3;
      v13 = 2080;
      v14 = v7;
      v15 = 1024;
      v16 = v8;
      _os_log_error_impl(&dword_1BCF2C000, v4, OS_LOG_TYPE_ERROR, "%s Failed to commit transaction with error SQLite error: %d (%s, Extended: %d)", &v9, 0x22u);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return v3;
}

- (int)_rollbackDatabaseTransaction
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [(UAFSubscriptionStoreManager *)self executeSQL:"ROLLBACK;"];
  if (v3)
  {
    v4 = UAFGetLogCategory(&UAFLogContextStorage);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = sqlite3_errmsg(self->_store);
      v8 = sqlite3_extended_errcode(self->_store);
      v9 = 136315906;
      v10 = "[UAFSubscriptionStoreManager _rollbackDatabaseTransaction]";
      v11 = 1024;
      v12 = v3;
      v13 = 2080;
      v14 = v7;
      v15 = 1024;
      v16 = v8;
      _os_log_error_impl(&dword_1BCF2C000, v4, OS_LOG_TYPE_ERROR, "%s Failed to rollback transaction with error SQLite error: %d (%s, Extended: %d)", &v9, 0x22u);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return v3;
}

- (BOOL)_isUsageLimitExceeded:(id)exceeded
{
  v18 = *MEMORY[0x1E69E9840];
  exceededCopy = exceeded;
  v5 = +[UAFConfigurationManager defaultManager];
  v13 = 0;
  v6 = [(UAFSubscriptionStoreManager *)self _getAllSubscriptions:&v13];
  if (v13)
  {
    v7 = UAFGetLogCategory(&UAFLogContextStorage);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v15 = "[UAFSubscriptionStoreManager _isUsageLimitExceeded:]";
      v16 = 1024;
      v17 = v13;
      _os_log_error_impl(&dword_1BCF2C000, v7, OS_LOG_TYPE_ERROR, "%s Could not retrieve all subscriptions: %d", buf, 0x12u);
    }

    v8 = 0;
  }

  else
  {
    v9 = [UAFSubscriptionStoreManager flattenSubscriptions:v6];
    v7 = [v9 arrayByAddingObjectsFromArray:exceededCopy];

    v10 = [v5 applySubscriptions:v7];
    v8 = [v5 isUsageLimitExceeded:v10];
  }

  v11 = *MEMORY[0x1E69E9840];
  return v8;
}

- (BOOL)_checkDbVersion:(BOOL *)version storedVersion:(int *)storedVersion
{
  v24 = *MEMORY[0x1E69E9840];
  if (version)
  {
    *version = 0;
  }

  readDbVersion = self->_readDbVersion;
  if (!readDbVersion)
  {
    v15 = UAFGetLogCategory(&UAFLogContextStorage);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v18 = 136315138;
      v19 = "[UAFSubscriptionStoreManager _checkDbVersion:storedVersion:]";
      _os_log_error_impl(&dword_1BCF2C000, v15, OS_LOG_TYPE_ERROR, "%s readDbVersion prepared statement is null", &v18, 0xCu);
    }

    goto LABEL_12;
  }

  v8 = sqlite3_step(readDbVersion);
  if ((v8 & 0xFFFFFFFE) != 0x64)
  {
    if (v8)
    {
      v11 = UAFGetLogCategory(&UAFLogContextStorage);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v18 = 136315138;
        v19 = "[UAFSubscriptionStoreManager _checkDbVersion:storedVersion:]";
        v12 = "%s Reading db version from DbVersion table failed";
        v13 = v11;
        v14 = 12;
        goto LABEL_24;
      }

LABEL_15:

LABEL_21:
      result = 0;
      goto LABEL_22;
    }

    v10 = 0;
    goto LABEL_17;
  }

  v9 = sqlite3_column_int(self->_readDbVersion, 0);
  if (v9 == 2)
  {
LABEL_12:
    result = 1;
    goto LABEL_22;
  }

  v10 = v9;
  if (v9 >= 3)
  {
    v11 = UAFGetLogCategory(&UAFLogContextStorage);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v18 = 136315650;
      v19 = "[UAFSubscriptionStoreManager _checkDbVersion:storedVersion:]";
      v20 = 1024;
      v21 = 2;
      v22 = 1024;
      v23 = v10;
      v12 = "%s Db upgrade requested a version %d lesser than the current stored version %d";
      v13 = v11;
      v14 = 24;
LABEL_24:
      _os_log_error_impl(&dword_1BCF2C000, v13, OS_LOG_TYPE_ERROR, v12, &v18, v14);
      goto LABEL_15;
    }

    goto LABEL_15;
  }

LABEL_17:
  self->_dbUpToDate = 0;
  if (version)
  {
    *version = 1;
  }

  if (!storedVersion)
  {
    goto LABEL_21;
  }

  result = 0;
  *storedVersion = v10;
LABEL_22:
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)subscribe:(id)subscribe subscriptions:(id)subscriptions user:(id)user node:(id)node
{
  subscribeCopy = subscribe;
  subscriptionsCopy = subscriptions;
  userCopy = user;
  nodeCopy = node;
  v24 = MEMORY[0x1E69E9820];
  v25 = subscriptionsCopy;
  v26 = subscribeCopy;
  v27 = userCopy;
  v28 = nodeCopy;
  v14 = MEMORY[0x1E696AEC0];
  v15 = nodeCopy;
  v16 = userCopy;
  v17 = subscribeCopy;
  v18 = subscriptionsCopy;
  v19 = [v14 stringWithFormat:@"subscribe for Subscriber: %@", v17, v24, 3221225472, __65__UAFSubscriptionStoreManager_subscribe_subscriptions_user_node___block_invoke, &unk_1E7FFE078, self];
  v20 = [(UAFSubscriptionStoreManager *)self doDatabaseOperation:&v24 useTransaction:1 logDescription:v19 error:0];

  if (v20)
  {
    v21 = v20 == 101;
  }

  else
  {
    v21 = 1;
  }

  v22 = v21;

  return v22;
}

uint64_t __65__UAFSubscriptionStoreManager_subscribe_subscriptions_user_node___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) _isUsageLimitExceeded:*(a1 + 40)])
  {
    v2 = UAFGetLogCategory(&UAFLogContextStorage);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 48);
      *buf = 136315394;
      v30 = "[UAFSubscriptionStoreManager subscribe:subscriptions:user:node:]_block_invoke";
      v31 = 2114;
      v32 = v3;
      _os_log_impl(&dword_1BCF2C000, v2, OS_LOG_TYPE_DEFAULT, "%s Denying subscription due to exceeding usage limits for subscriber %{public}@", buf, 0x16u);
    }

    v4 = 3;
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v5 = *(a1 + 40);
    v6 = [v5 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v25;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v25 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v24 + 1) + 8 * i);
          v11 = *(a1 + 32);
          v12 = *(a1 + 48);
          v13 = [v10 name];
          v14 = [v10 expiration];
          LODWORD(v10) = [v11 _subscribeSubscription:v12 subscriptionName:v13 assetSetSubscription:v10 expires:v14 user:*(a1 + 56)];

          if (!v10)
          {
            v15 = 0;
            goto LABEL_15;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v15 = 1;
LABEL_15:

    v16 = [*(a1 + 32) _updateSystemAssetSetUsages:0 assetSetUsages:0 configurationManager:0];
    if (!v15 || (v4 = v16, v16 == 101) || !v16)
    {
      v17 = *(a1 + 32);
      v19 = *(a1 + 56);
      v18 = *(a1 + 64);
      v20 = [MEMORY[0x1E695DF00] now];
      v4 = [v17 _setUserLastSeenTime:v19 node:v18 time:v20];

      if (v15)
      {
        v21 = 0;
        if (v4 != 101 && v4)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v21 = 3;
      }

      v4 = v21;
    }
  }

LABEL_24:
  v22 = *MEMORY[0x1E69E9840];
  return v4;
}

- (BOOL)_subscribeSubscription:(id)subscription subscriptionName:(id)name assetSetSubscription:(id)setSubscription expires:(id)expires user:(id)user
{
  v68 = *MEMORY[0x1E69E9840];
  subscriptionCopy = subscription;
  nameCopy = name;
  setSubscriptionCopy = setSubscription;
  expiresCopy = expires;
  userCopy = user;
  v17 = [(UAFSubscriptionStoreManager *)self bindString:self->_writeSubscription col:1 string:subscriptionCopy];
  if (v17)
  {
    v18 = v17;
    expiration = UAFGetLogCategory(&UAFLogContextStorage);
    if (os_log_type_enabled(expiration, OS_LOG_TYPE_ERROR))
    {
      v20 = sqlite3_errmsg(self->_store);
      v21 = sqlite3_extended_errcode(self->_store);
      *buf = 136316418;
      v57 = "[UAFSubscriptionStoreManager _subscribeSubscription:subscriptionName:assetSetSubscription:expires:user:]";
      v58 = 2114;
      v59 = subscriptionCopy;
      v60 = 2112;
      v61 = nameCopy;
      v62 = 1024;
      *v63 = v18;
      *&v63[4] = 2080;
      *&v63[6] = v20;
      v64 = 1024;
      LODWORD(v65) = v21;
      v22 = "%s Binding subscriber name to the write subscription sql query failed for Subscriber: %{public}@, SubscriptionName: '%@' SQLite error: %d (%s, Extended: %d)";
LABEL_7:
      v26 = expiration;
      v27 = 54;
LABEL_8:
      _os_log_error_impl(&dword_1BCF2C000, v26, OS_LOG_TYPE_ERROR, v22, buf, v27);
      goto LABEL_18;
    }

    goto LABEL_18;
  }

  v23 = [(UAFSubscriptionStoreManager *)self bindString:self->_writeSubscription col:2 string:nameCopy];
  if (v23)
  {
    v18 = v23;
    expiration = UAFGetLogCategory(&UAFLogContextStorage);
    if (os_log_type_enabled(expiration, OS_LOG_TYPE_ERROR))
    {
      v24 = sqlite3_errmsg(self->_store);
      v25 = sqlite3_extended_errcode(self->_store);
      *buf = 136316418;
      v57 = "[UAFSubscriptionStoreManager _subscribeSubscription:subscriptionName:assetSetSubscription:expires:user:]";
      v58 = 2114;
      v59 = subscriptionCopy;
      v60 = 2112;
      v61 = nameCopy;
      v62 = 1024;
      *v63 = v18;
      *&v63[4] = 2080;
      *&v63[6] = v24;
      v64 = 1024;
      LODWORD(v65) = v25;
      v22 = "%s Binding subscription name to the write subscription sql query failed for Subscriber: %{public}@, SubscriptionName: '%@' SQLite error: %d (%s, Extended: %d)";
      goto LABEL_7;
    }

LABEL_18:

    goto LABEL_19;
  }

  expiration = [(UAFSubscriptionStoreManager *)self _dataFromUAFAssetSubscription:setSubscriptionCopy];
  if (expiration)
  {
    v28 = [(UAFSubscriptionStoreManager *)self bindData:self->_writeSubscription col:3 data:expiration];
    if (v28)
    {
      v18 = v28;
      v29 = UAFGetLogCategory(&UAFLogContextStorage);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = sqlite3_errmsg(self->_store);
        v31 = sqlite3_extended_errcode(self->_store);
        *buf = 136316418;
        v57 = "[UAFSubscriptionStoreManager _subscribeSubscription:subscriptionName:assetSetSubscription:expires:user:]";
        v58 = 2114;
        v59 = subscriptionCopy;
        v60 = 2112;
        v61 = nameCopy;
        v62 = 1024;
        *v63 = v18;
        *&v63[4] = 2080;
        *&v63[6] = v30;
        v64 = 1024;
        LODWORD(v65) = v31;
        v32 = "%s Binding asset set subscription data to the write subscription sql query failed for Subscriber: '%{public}@', SubscriptionName: '%@' SQLite error: %d (%s, Extended: %d)";
LABEL_36:
        v44 = v29;
        v45 = 54;
        goto LABEL_37;
      }

      goto LABEL_17;
    }
  }

  expiration = expiresCopy;
  if (!expiration)
  {
    expiration = [setSubscriptionCopy expiration];
  }

  v33 = [(UAFSubscriptionStoreManager *)self bindDate:self->_writeSubscription col:4 date:expiration];
  if (v33)
  {
    v18 = v33;
    v29 = UAFGetLogCategory(&UAFLogContextStorage);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v47 = sqlite3_errmsg(self->_store);
      v48 = sqlite3_extended_errcode(self->_store);
      *buf = 136316418;
      v57 = "[UAFSubscriptionStoreManager _subscribeSubscription:subscriptionName:assetSetSubscription:expires:user:]";
      v58 = 2114;
      v59 = subscriptionCopy;
      v60 = 2112;
      v61 = nameCopy;
      v62 = 1024;
      *v63 = v18;
      *&v63[4] = 2080;
      *&v63[6] = v47;
      v64 = 1024;
      LODWORD(v65) = v48;
      v32 = "%s Binding expiry field to the write subscription sql query failed for Subscriber: '%{public}@', SubscriptionName: '%@' SQLite error: %d (%s, Extended: %d)";
      goto LABEL_36;
    }

LABEL_17:

    goto LABEL_18;
  }

  v38 = [(UAFSubscriptionStoreManager *)self bindString:self->_writeSubscription col:5 string:userCopy];
  if (v38)
  {
    v18 = v38;
    expiration = UAFGetLogCategory(&UAFLogContextStorage);
    if (!os_log_type_enabled(expiration, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    v39 = sqlite3_errmsg(self->_store);
    v40 = sqlite3_extended_errcode(self->_store);
    *buf = 136316674;
    v57 = "[UAFSubscriptionStoreManager _subscribeSubscription:subscriptionName:assetSetSubscription:expires:user:]";
    v58 = 2114;
    v59 = subscriptionCopy;
    v60 = 2112;
    v61 = nameCopy;
    v62 = 2112;
    *v63 = userCopy;
    *&v63[8] = 1024;
    *&v63[10] = v18;
    v64 = 2080;
    v65 = v39;
    v66 = 1024;
    v67 = v40;
    v22 = "%s Binding user to the write subscription sql query failed for Subscriber: %{public}@, SubscriptionName: '%@', user: '%@' SQLite error: %d (%s, Extended: %d)";
    v26 = expiration;
    v27 = 64;
    goto LABEL_8;
  }

  expiration = [MEMORY[0x1E695DF00] now];
  v41 = [(UAFSubscriptionStoreManager *)self bindDate:self->_writeSubscription col:6 date:expiration];
  if (v41)
  {
    v18 = v41;
    v29 = UAFGetLogCategory(&UAFLogContextStorage);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v42 = sqlite3_errmsg(self->_store);
      v43 = sqlite3_extended_errcode(self->_store);
      *buf = 136316674;
      v57 = "[UAFSubscriptionStoreManager _subscribeSubscription:subscriptionName:assetSetSubscription:expires:user:]";
      v58 = 2114;
      v59 = subscriptionCopy;
      v60 = 2112;
      v61 = nameCopy;
      v62 = 2112;
      *v63 = userCopy;
      *&v63[8] = 1024;
      *&v63[10] = v18;
      v64 = 2080;
      v65 = v42;
      v66 = 1024;
      v67 = v43;
      v32 = "%s Binding creation field to the write subscription sql query failed for Subscriber: '%{public}@', SubscriptionName: '%@', User: '%@' SQLite error: %d (%s, Extended: %d)";
      v44 = v29;
      v45 = 64;
LABEL_37:
      _os_log_error_impl(&dword_1BCF2C000, v44, OS_LOG_TYPE_ERROR, v32, buf, v45);
      goto LABEL_17;
    }

    goto LABEL_17;
  }

  v46 = sqlite3_step(self->_writeSubscription);
  v18 = v46;
  if (v46 && v46 != 101)
  {
    v49 = UAFGetLogCategory(&UAFLogContextStorage);
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      v53 = sqlite3_errmsg(self->_store);
      v54 = sqlite3_extended_errcode(self->_store);
      *buf = 136316418;
      v57 = "[UAFSubscriptionStoreManager _subscribeSubscription:subscriptionName:assetSetSubscription:expires:user:]";
      v58 = 2114;
      v59 = subscriptionCopy;
      v60 = 2112;
      v61 = nameCopy;
      v62 = 1024;
      *v63 = v18;
      *&v63[4] = 2080;
      *&v63[6] = v53;
      v64 = 1024;
      LODWORD(v65) = v54;
      _os_log_error_impl(&dword_1BCF2C000, v49, OS_LOG_TYPE_ERROR, "%s Executing write subscription failed for Subscriber: '%{public}@', SubscriptionName: '%@' SQLite error: %d (%s, Extended: %d)", buf, 0x36u);
    }

    v55 = UAFLogContextStorage;
    v50 = kUAFABCDatabaseFailure;
    v51 = [MEMORY[0x1E696AD98] numberWithInt:sqlite3_extended_errcode(self->_store)];
    stringValue = [v51 stringValue];
    UAFFaultCapture(v55, v50, @"subscription", stringValue);
  }

  else
  {
    ++self->_updateCount;
  }

LABEL_19:
  sqlite3_reset(self->_writeSubscription);
  sqlite3_clear_bindings(self->_writeSubscription);
  if (v18)
  {
    v34 = v18 == 101;
  }

  else
  {
    v34 = 1;
  }

  v35 = v34;

  v36 = *MEMORY[0x1E69E9840];
  return v35;
}

- (id)_getSubscription:(sqlite3_stmt *)subscription
{
  v4 = [(UAFSubscriptionStoreManager *)self readData:subscription col:0];
  if (v4)
  {
    v5 = [(UAFSubscriptionStoreManager *)self _uafAssetSetSubscriptionFromData:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_getSubscriptions:(sqlite3_stmt *)subscriptions subscriptionsFor:(id)for
{
  v21 = *MEMORY[0x1E69E9840];
  forCopy = for;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (sqlite3_step(subscriptions) == 100)
  {
    *&v8 = 136315650;
    v14 = v8;
    do
    {
      v9 = [(UAFSubscriptionStoreManager *)self _getSubscription:subscriptions, v14];
      if (v9)
      {
        [v7 addObject:v9];
      }

      else
      {
        v10 = UAFGetLogCategory(&UAFLogContextStorage);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v11 = sqlite3_errmsg(self->_store);
          *buf = v14;
          v16 = "[UAFSubscriptionStoreManager _getSubscriptions:subscriptionsFor:]";
          v17 = 2114;
          v18 = forCopy;
          v19 = 2080;
          v20 = v11;
          _os_log_error_impl(&dword_1BCF2C000, v10, OS_LOG_TYPE_ERROR, "%s Failed to read subscription for %{public}@: %s", buf, 0x20u);
        }
      }
    }

    while (sqlite3_step(subscriptions) == 100);
  }

  sqlite3_reset(subscriptions);
  sqlite3_clear_bindings(subscriptions);

  v12 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)getSubscriptions:(id)subscriptions user:(id)user error:(id *)error
{
  subscriptionsCopy = subscriptions;
  userCopy = user;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__6;
  v22 = __Block_byref_object_dispose__6;
  v23 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __59__UAFSubscriptionStoreManager_getSubscriptions_user_error___block_invoke;
  v14[3] = &unk_1E7FFE0A0;
  v17 = &v18;
  v14[4] = self;
  v10 = subscriptionsCopy;
  v15 = v10;
  v11 = userCopy;
  v16 = v11;
  [(UAFSubscriptionStoreManager *)self doDatabaseOperation:v14 useTransaction:0 logDescription:@"get subscriptions" error:error];
  v12 = v19[5];

  _Block_object_dispose(&v18, 8);

  return v12;
}

uint64_t __59__UAFSubscriptionStoreManager_getSubscriptions_user_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _getSubscriptions:*(a1 + 40) user:*(a1 + 48)];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return 0;
}

- (id)_getSubscriptions:(id)subscriptions user:(id)user
{
  v41 = *MEMORY[0x1E69E9840];
  subscriptionsCopy = subscriptions;
  userCopy = user;
  v8 = userCopy;
  readAllSubscriptions = self->_readAllSubscriptions;
  if (subscriptionsCopy && userCopy)
  {
    p_readSubscriptionsForSubscriber = &self->_readSubscriptionsForSubscriber;
    v11 = [(UAFSubscriptionStoreManager *)self bindString:self->_readSubscriptionsForSubscriber col:1 string:subscriptionsCopy];
    if (v11)
    {
      v12 = v11;
      v13 = UAFGetLogCategory(&UAFLogContextStorage);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = sqlite3_errmsg(self->_store);
        v15 = sqlite3_extended_errcode(self->_store);
        v31 = 136316418;
        v32 = "[UAFSubscriptionStoreManager _getSubscriptions:user:]";
        v33 = 2114;
        v34 = subscriptionsCopy;
        v35 = 2112;
        *v36 = v8;
        *&v36[8] = 1024;
        *&v36[10] = v12;
        v37 = 2080;
        v38 = v14;
        v39 = 1024;
        v40 = v15;
        v16 = "%s Binding subscription name to the get subscriptions query failed for Subscriber: '%{public}@' and user: '%@' SQLite error: %d (%s, Extended: %d)";
LABEL_19:
        v21 = v13;
        v22 = 54;
        goto LABEL_20;
      }

      goto LABEL_21;
    }

    v24 = [(UAFSubscriptionStoreManager *)self bindString:self->_readSubscriptionsForSubscriber col:2 string:v8];
    if (v24)
    {
      v25 = v24;
      v13 = UAFGetLogCategory(&UAFLogContextStorage);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v26 = sqlite3_errmsg(self->_store);
        v27 = sqlite3_extended_errcode(self->_store);
        v31 = 136316418;
        v32 = "[UAFSubscriptionStoreManager _getSubscriptions:user:]";
        v33 = 2114;
        v34 = subscriptionsCopy;
        v35 = 2112;
        *v36 = v8;
        *&v36[8] = 1024;
        *&v36[10] = v25;
        v37 = 2080;
        v38 = v26;
        v39 = 1024;
        v40 = v27;
        v16 = "%s Binding user to the get subscriptions query failed for Subscriber: '%{public}@' and user: '%@' SQLite error: %d (%s, Extended: %d)";
        goto LABEL_19;
      }

LABEL_21:

LABEL_22:
      v28 = 0;
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  if (!subscriptionsCopy && userCopy)
  {
    p_readSubscriptionsForSubscriber = &self->_readSubscriptionsForUser;
    v17 = [(UAFSubscriptionStoreManager *)self bindString:self->_readSubscriptionsForUser col:1 string:userCopy];
    if (v17)
    {
      v18 = v17;
      v13 = UAFGetLogCategory(&UAFLogContextStorage);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v19 = sqlite3_errmsg(self->_store);
        v20 = sqlite3_extended_errcode(self->_store);
        v31 = 136316162;
        v32 = "[UAFSubscriptionStoreManager _getSubscriptions:user:]";
        v33 = 2112;
        v34 = v8;
        v35 = 1024;
        *v36 = v18;
        *&v36[4] = 2080;
        *&v36[6] = v19;
        v37 = 1024;
        LODWORD(v38) = v20;
        v16 = "%s Binding user to the get subscriptions query failed for user: '%@' SQLite error: %d (%s, Extended: %d)";
        v21 = v13;
        v22 = 44;
LABEL_20:
        _os_log_error_impl(&dword_1BCF2C000, v21, OS_LOG_TYPE_ERROR, v16, &v31, v22);
        goto LABEL_21;
      }

      goto LABEL_21;
    }

LABEL_23:
    readAllSubscriptions = *p_readSubscriptionsForSubscriber;
    goto LABEL_24;
  }

  if (subscriptionsCopy && !userCopy)
  {
    v23 = UAFGetLogCategory(&UAFLogContextStorage);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      v31 = 136315394;
      v32 = "[UAFSubscriptionStoreManager _getSubscriptions:user:]";
      v33 = 2114;
      v34 = subscriptionsCopy;
      _os_log_fault_impl(&dword_1BCF2C000, v23, OS_LOG_TYPE_FAULT, "%s API MISUSE: Unsupported call subcriber = '%{public}@' and user is nil", &v31, 0x16u);
    }

    goto LABEL_22;
  }

LABEL_24:
  v28 = [(UAFSubscriptionStoreManager *)self _getSubscriptions:readAllSubscriptions subscriptionsFor:subscriptionsCopy];
LABEL_25:

  v29 = *MEMORY[0x1E69E9840];

  return v28;
}

- (id)getSubscription:(id)subscription subscriber:(id)subscriber user:(id)user error:(id *)error
{
  subscriptionCopy = subscription;
  subscriberCopy = subscriber;
  userCopy = user;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__6;
  v27 = __Block_byref_object_dispose__6;
  v28 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __69__UAFSubscriptionStoreManager_getSubscription_subscriber_user_error___block_invoke;
  v18[3] = &unk_1E7FFE0C8;
  v22 = &v23;
  v18[4] = self;
  v13 = subscriberCopy;
  v19 = v13;
  v14 = subscriptionCopy;
  v20 = v14;
  v15 = userCopy;
  v21 = v15;
  [(UAFSubscriptionStoreManager *)self doDatabaseOperation:v18 useTransaction:0 logDescription:@"get subscription" error:error];
  v16 = v24[5];

  _Block_object_dispose(&v23, 8);

  return v16;
}

uint64_t __69__UAFSubscriptionStoreManager_getSubscription_subscriber_user_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _getSubscription:*(a1 + 40) subscription:*(a1 + 48) user:*(a1 + 56)];
  v3 = *(*(a1 + 64) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return 0;
}

- (id)_getSubscription:(id)subscription subscription:(id)a4 user:(id)user
{
  v47 = *MEMORY[0x1E69E9840];
  subscriptionCopy = subscription;
  v9 = a4;
  userCopy = user;
  readSubscription = self->_readSubscription;
  v12 = [(UAFSubscriptionStoreManager *)self bindString:readSubscription col:1 string:subscriptionCopy];
  if (v12)
  {
    v13 = v12;
    v14 = UAFGetLogCategory(&UAFLogContextStorage);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = sqlite3_errmsg(self->_store);
      v16 = sqlite3_extended_errcode(self->_store);
      v33 = 136316674;
      v34 = "[UAFSubscriptionStoreManager _getSubscription:subscription:user:]";
      v35 = 2112;
      v36 = subscriptionCopy;
      v37 = 2114;
      v38 = v9;
      v39 = 2114;
      v40 = userCopy;
      v41 = 1024;
      v42 = v13;
      v43 = 2080;
      v44 = v15;
      v45 = 1024;
      v46 = v16;
      v17 = "%s Error binding read subscriber for user '%@', subscriber '%{public}@', subscription '%{public}@' SQLite error: %d (%s, Extended: %d)";
LABEL_10:
      _os_log_error_impl(&dword_1BCF2C000, v14, OS_LOG_TYPE_ERROR, v17, &v33, 0x40u);
      goto LABEL_11;
    }

    goto LABEL_11;
  }

  v18 = [(UAFSubscriptionStoreManager *)self bindString:readSubscription col:2 string:v9];
  if (v18)
  {
    v19 = v18;
    v14 = UAFGetLogCategory(&UAFLogContextStorage);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v20 = sqlite3_errmsg(self->_store);
      v21 = sqlite3_extended_errcode(self->_store);
      v33 = 136316674;
      v34 = "[UAFSubscriptionStoreManager _getSubscription:subscription:user:]";
      v35 = 2112;
      v36 = userCopy;
      v37 = 2114;
      v38 = subscriptionCopy;
      v39 = 2114;
      v40 = v9;
      v41 = 1024;
      v42 = v19;
      v43 = 2080;
      v44 = v20;
      v45 = 1024;
      v46 = v21;
      v17 = "%s Error binding read subscription for user '%@', subscriber '%{public}@', subscription '%{public}@' SQLite error: %d (%s, Extended: %d)";
      goto LABEL_10;
    }

LABEL_11:

    v26 = 0;
    goto LABEL_12;
  }

  v22 = [(UAFSubscriptionStoreManager *)self bindString:readSubscription col:3 string:userCopy];
  if (v22)
  {
    v23 = v22;
    v14 = UAFGetLogCategory(&UAFLogContextStorage);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v24 = sqlite3_errmsg(self->_store);
      v25 = sqlite3_extended_errcode(self->_store);
      v33 = 136316674;
      v34 = "[UAFSubscriptionStoreManager _getSubscription:subscription:user:]";
      v35 = 2112;
      v36 = userCopy;
      v37 = 2114;
      v38 = subscriptionCopy;
      v39 = 2114;
      v40 = v9;
      v41 = 1024;
      v42 = v23;
      v43 = 2080;
      v44 = v24;
      v45 = 1024;
      v46 = v25;
      v17 = "%s Error binding read user for user '%@', subscriber '%{public}@', subscription '%{public}@' SQLite error: %d (%s, Extended: %d)";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v29 = sqlite3_step(readSubscription);
  if ((v29 - 100) >= 2)
  {
    v30 = v29;
    if (v29)
    {
      v14 = UAFGetLogCategory(&UAFLogContextStorage);
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_11;
      }

      v31 = sqlite3_errmsg(self->_store);
      v32 = sqlite3_extended_errcode(self->_store);
      v33 = 136316674;
      v34 = "[UAFSubscriptionStoreManager _getSubscription:subscription:user:]";
      v35 = 2112;
      v36 = userCopy;
      v37 = 2114;
      v38 = subscriptionCopy;
      v39 = 2114;
      v40 = v9;
      v41 = 1024;
      v42 = v30;
      v43 = 2080;
      v44 = v31;
      v45 = 1024;
      v46 = v32;
      v17 = "%s Error executing read subscription for user '%@', subscriber '%{public}@', subscription '%{public}@' SQLite error: %d (%s, Extended: %d)";
      goto LABEL_10;
    }
  }

  v26 = [(UAFSubscriptionStoreManager *)self _getSubscription:readSubscription];
LABEL_12:
  sqlite3_reset(readSubscription);
  sqlite3_clear_bindings(readSubscription);

  v27 = *MEMORY[0x1E69E9840];

  return v26;
}

- (id)getAllSubscriptions:(id *)subscriptions
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6;
  v10 = __Block_byref_object_dispose__6;
  v11 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__UAFSubscriptionStoreManager_getAllSubscriptions___block_invoke;
  v5[3] = &unk_1E7FFE0F0;
  v5[4] = self;
  v5[5] = &v6;
  [(UAFSubscriptionStoreManager *)self doDatabaseOperation:v5 useTransaction:0 logDescription:@"get all subscriptions" error:subscriptions];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __51__UAFSubscriptionStoreManager_getAllSubscriptions___block_invoke(uint64_t a1)
{
  v6 = 0;
  v2 = [*(a1 + 32) _getAllSubscriptions:&v6];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return v6;
}

- (id)_getAllSubscriptions:(int *)subscriptions
{
  v33 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  readAllSubscriptionsAndSubscribers = self->_readAllSubscriptionsAndSubscribers;
  if (sqlite3_step(readAllSubscriptionsAndSubscribers) == 100)
  {
    subscriptionsCopy = subscriptions;
    while (1)
    {
      v7 = [(UAFSubscriptionStoreManager *)self _getSubscription:readAllSubscriptionsAndSubscribers];
      if (!v7)
      {
        break;
      }

      v8 = v7;
      v9 = [(UAFSubscriptionStoreManager *)self readString:readAllSubscriptionsAndSubscribers col:1];
      if (!v9)
      {
        v10 = UAFGetLogCategory(&UAFLogContextStorage);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v23 = sqlite3_errmsg(self->_store);
          *buf = 136315394;
          v30 = "[UAFSubscriptionStoreManager _getAllSubscriptions:]";
          v31 = 2080;
          v32 = v23;
          _os_log_error_impl(&dword_1BCF2C000, v10, OS_LOG_TYPE_ERROR, "%s Failed to read subscriber, SQL error: %s", buf, 0x16u);
        }

        goto LABEL_20;
      }

      v10 = v9;
      v11 = [(UAFSubscriptionStoreManager *)self readString:readAllSubscriptionsAndSubscribers col:2];
      if (!v11)
      {
        v24 = UAFGetLogCategory(&UAFLogContextStorage);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v27 = sqlite3_errmsg(self->_store);
          *buf = 136315394;
          v30 = "[UAFSubscriptionStoreManager _getAllSubscriptions:]";
          v31 = 2080;
          v32 = v27;
          _os_log_error_impl(&dword_1BCF2C000, v24, OS_LOG_TYPE_ERROR, "%s Failed to read user, SQL error: %s", buf, 0x16u);
        }

LABEL_20:
        goto LABEL_21;
      }

      v12 = v11;
      v13 = [dictionary objectForKeyedSubscript:v11];

      if (!v13)
      {
        dictionary2 = [MEMORY[0x1E695DF90] dictionary];
        [dictionary setObject:dictionary2 forKeyedSubscript:v12];
      }

      v15 = [dictionary objectForKeyedSubscript:v12];
      v16 = [v15 objectForKeyedSubscript:v10];

      if (!v16)
      {
        array = [MEMORY[0x1E695DF70] array];
        v18 = [dictionary objectForKeyedSubscript:v12];
        [v18 setObject:array forKeyedSubscript:v10];
      }

      v19 = [dictionary objectForKeyedSubscript:v12];
      v20 = [v19 objectForKeyedSubscript:v10];
      [v20 addObject:v8];

      if (sqlite3_step(readAllSubscriptionsAndSubscribers) != 100)
      {
        v21 = 0;
        goto LABEL_22;
      }
    }

    v8 = UAFGetLogCategory(&UAFLogContextStorage);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v22 = sqlite3_errmsg(self->_store);
      *buf = 136315394;
      v30 = "[UAFSubscriptionStoreManager _getAllSubscriptions:]";
      v31 = 2080;
      v32 = v22;
      _os_log_error_impl(&dword_1BCF2C000, v8, OS_LOG_TYPE_ERROR, "%s Failed to read subscription: %s", buf, 0x16u);
    }

LABEL_21:

    v21 = 3;
LABEL_22:
    subscriptions = subscriptionsCopy;
  }

  else
  {
    v21 = 0;
  }

  sqlite3_reset(readAllSubscriptionsAndSubscribers);
  sqlite3_clear_bindings(readAllSubscriptionsAndSubscribers);
  *subscriptions = v21;
  v25 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (id)getUsers:(id *)users
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__6;
  v12 = __Block_byref_object_dispose__6;
  v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__UAFSubscriptionStoreManager_getUsers___block_invoke;
  v7[3] = &unk_1E7FFE0F0;
  v7[4] = self;
  v7[5] = &v8;
  [(UAFSubscriptionStoreManager *)self doDatabaseOperation:v7 useTransaction:0 logDescription:@"get users" error:users];
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

uint64_t __40__UAFSubscriptionStoreManager_getUsers___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  for (i = *(a1 + 32); ; i = *(a1 + 32))
  {
    v3 = sqlite3_step(*(i + 72));
    if (v3 != 100)
    {
      v6 = v3;
      goto LABEL_9;
    }

    v4 = [*(a1 + 32) readString:*(*(a1 + 32) + 72) col:0];
    if (!v4)
    {
      break;
    }

    v5 = v4;
    [*(*(*(a1 + 40) + 8) + 40) addObject:v4];
  }

  v7 = UAFGetLogCategory(&UAFLogContextStorage);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v10 = sqlite3_errmsg(*(*(a1 + 32) + 8));
    v11 = 136315394;
    v12 = "[UAFSubscriptionStoreManager getUsers:]_block_invoke";
    v13 = 2080;
    v14 = v10;
    _os_log_error_impl(&dword_1BCF2C000, v7, OS_LOG_TYPE_ERROR, "%s Failed to read user, SQL error: %s", &v11, 0x16u);
  }

  v6 = 3;
LABEL_9:
  sqlite3_reset(*(*(a1 + 32) + 72));
  v8 = *MEMORY[0x1E69E9840];
  return v6;
}

- (id)getSubscribers:(id)subscribers error:(id *)error
{
  subscribersCopy = subscribers;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__6;
  v17 = __Block_byref_object_dispose__6;
  v18 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __52__UAFSubscriptionStoreManager_getSubscribers_error___block_invoke;
  v10[3] = &unk_1E7FFE118;
  v10[4] = self;
  v7 = subscribersCopy;
  v11 = v7;
  v12 = &v13;
  [(UAFSubscriptionStoreManager *)self doDatabaseOperation:v10 useTransaction:0 logDescription:@"get subscribers" error:error];
  v8 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v8;
}

uint64_t __52__UAFSubscriptionStoreManager_getSubscribers_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v1 = a1[5];
  v3 = *(a1[6] + 8);
  obj = *(v3 + 40);
  [v2 _getSubscribers:v1 subscribers:&obj];
  objc_storeStrong((v3 + 40), obj);
  return 0;
}

- (int)_getSubscribers:(id)subscribers subscribers:(id *)a4
{
  v21 = *MEMORY[0x1E69E9840];
  subscribersCopy = subscribers;
  v7 = objc_opt_new();
  v8 = [(UAFSubscriptionStoreManager *)self bindString:self->_readAllSubscribers col:1 string:subscribersCopy];
  if (!v8 && sqlite3_step(self->_readAllSubscribers) == 100)
  {
    *&v9 = 136315394;
    v16 = v9;
    do
    {
      v10 = [(UAFSubscriptionStoreManager *)self readString:self->_readAllSubscribers col:0, v16];
      if (v10)
      {
        [v7 addObject:v10];
      }

      else
      {
        v11 = UAFGetLogCategory(&UAFLogContextStorage);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v12 = sqlite3_errmsg(self->_store);
          *buf = v16;
          v18 = "[UAFSubscriptionStoreManager _getSubscribers:subscribers:]";
          v19 = 2080;
          v20 = v12;
          _os_log_error_impl(&dword_1BCF2C000, v11, OS_LOG_TYPE_ERROR, "%s Failed to read subscriber, SQL error: %s", buf, 0x16u);
        }
      }
    }

    while (sqlite3_step(self->_readAllSubscribers) == 100);
  }

  if (a4)
  {
    v13 = v7;
    *a4 = v7;
  }

  sqlite3_reset(self->_readAllSubscribers);

  v14 = *MEMORY[0x1E69E9840];
  return v8;
}

- (BOOL)unsubscribe:(id)unsubscribe subscriptions:(id)subscriptions user:(id)user node:(id)node
{
  unsubscribeCopy = unsubscribe;
  subscriptionsCopy = subscriptions;
  userCopy = user;
  nodeCopy = node;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 1;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __67__UAFSubscriptionStoreManager_unsubscribe_subscriptions_user_node___block_invoke;
  v24[3] = &unk_1E7FFE140;
  v14 = subscriptionsCopy;
  v30 = &v31;
  v25 = v14;
  selfCopy = self;
  v15 = unsubscribeCopy;
  v27 = v15;
  v16 = userCopy;
  v28 = v16;
  v17 = nodeCopy;
  v29 = v17;
  v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unsubscribe for Subscriber: %@", v15];
  v19 = [(UAFSubscriptionStoreManager *)self doDatabaseOperation:v24 useTransaction:1 logDescription:v18 error:0];

  if (v19)
  {
    v20 = v19 == 101;
  }

  else
  {
    v20 = 1;
  }

  v21 = v20;
  if (*(v32 + 24) == 1)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  _Block_object_dispose(&v31, 8);
  return v22;
}

uint64_t __67__UAFSubscriptionStoreManager_unsubscribe_subscriptions_user_node___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v28;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v28 != v5)
      {
        objc_enumerationMutation(v2);
      }

      *(*(*(a1 + 72) + 8) + 24) = [*(a1 + 40) _unsubscribeSubscription:*(a1 + 48) subscription:*(*(&v27 + 1) + 8 * v6) user:*(a1 + 56)];
      if (*(*(*(a1 + 72) + 8) + 24) != 1)
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v7 = [*(a1 + 40) _updateSystemAssetSetUsages:0 assetSetUsages:0 configurationManager:0];
  v8 = v7;
  v9 = *(*(a1 + 72) + 8);
  if (*(v9 + 24) == 1 && v7 != 0)
  {
    *(v9 + 24) = 0;
  }

  v11 = *(a1 + 40);
  v12 = *(a1 + 56);
  v26 = 0;
  [v11 _getSubscribers:v12 subscribers:&v26];
  v13 = v26;
  v14 = v13;
  if (v13 && [v13 count])
  {
    v15 = *(a1 + 40);
    v16 = *(a1 + 56);
    v17 = *(a1 + 64);
    v18 = [MEMORY[0x1E695DF00] now];
    v19 = [v15 _setUserLastSeenTime:v16 node:v17 time:v18] | v8;
  }

  else
  {
    v19 = [*(a1 + 40) _removeUser:*(a1 + 56)] | v8;
  }

  v20 = *(*(a1 + 72) + 8);
  v22 = *(v20 + 24);
  v21 = (v20 + 24);
  v23 = v22 != 1 || v19 == 0;
  if (!v23 && v19 != 101)
  {
    *v21 = 0;
  }

  v24 = *MEMORY[0x1E69E9840];
  return v19;
}

- (BOOL)_unsubscribeSubscription:(id)subscription subscription:(id)a4 user:(id)user
{
  v49 = *MEMORY[0x1E69E9840];
  subscriptionCopy = subscription;
  v9 = a4;
  userCopy = user;
  v11 = [(UAFSubscriptionStoreManager *)self bindString:self->_removeSubscription col:1 string:subscriptionCopy];
  if (v11)
  {
    v12 = v11;
    v13 = UAFGetLogCategory(&UAFLogContextStorage);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = sqlite3_errmsg(self->_store);
      v15 = sqlite3_extended_errcode(self->_store);
      v35 = 136316674;
      v36 = "[UAFSubscriptionStoreManager _unsubscribeSubscription:subscription:user:]";
      v37 = 2112;
      v38 = userCopy;
      v39 = 2114;
      v40 = subscriptionCopy;
      v41 = 2114;
      v42 = v9;
      v43 = 1024;
      v44 = v12;
      v45 = 2080;
      v46 = v14;
      v47 = 1024;
      v48 = v15;
      v16 = "%s Binding of subscriber name failed in remove subscription query for User: '%@', Subscriber: '%{public}@', Subscription: '%{public}@' SQLite error: %d (%s, Extended: %d)";
LABEL_10:
      _os_log_error_impl(&dword_1BCF2C000, v13, OS_LOG_TYPE_ERROR, v16, &v35, 0x40u);
      goto LABEL_11;
    }

    goto LABEL_11;
  }

  v17 = [(UAFSubscriptionStoreManager *)self bindString:self->_removeSubscription col:2 string:v9];
  if (v17)
  {
    v12 = v17;
    v13 = UAFGetLogCategory(&UAFLogContextStorage);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v18 = sqlite3_errmsg(self->_store);
      v19 = sqlite3_extended_errcode(self->_store);
      v35 = 136316674;
      v36 = "[UAFSubscriptionStoreManager _unsubscribeSubscription:subscription:user:]";
      v37 = 2112;
      v38 = userCopy;
      v39 = 2114;
      v40 = subscriptionCopy;
      v41 = 2114;
      v42 = v9;
      v43 = 1024;
      v44 = v12;
      v45 = 2080;
      v46 = v18;
      v47 = 1024;
      v48 = v19;
      v16 = "%s Binding of subscription name failed in remove subscription query for User: '%@', Subscriber: '%{public}@', Subscription: '%{public}@' SQLite error: %d (%s, Extended: %d)";
      goto LABEL_10;
    }

LABEL_11:

    goto LABEL_12;
  }

  v20 = [(UAFSubscriptionStoreManager *)self bindString:self->_removeSubscription col:3 string:userCopy];
  if (v20)
  {
    v12 = v20;
    v13 = UAFGetLogCategory(&UAFLogContextStorage);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v21 = sqlite3_errmsg(self->_store);
      v22 = sqlite3_extended_errcode(self->_store);
      v35 = 136316674;
      v36 = "[UAFSubscriptionStoreManager _unsubscribeSubscription:subscription:user:]";
      v37 = 2112;
      v38 = userCopy;
      v39 = 2114;
      v40 = subscriptionCopy;
      v41 = 2114;
      v42 = v9;
      v43 = 1024;
      v44 = v12;
      v45 = 2080;
      v46 = v21;
      v47 = 1024;
      v48 = v22;
      v16 = "%s Binding of user failed in remove subscription query for user '%@', Subscriber: '%{public}@', Subscription: '%{public}@' SQLite error: %d (%s, Extended: %d)";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v27 = sqlite3_step(self->_removeSubscription);
  v12 = v27;
  if (v27 && v27 != 101)
  {
    v28 = UAFGetLogCategory(&UAFLogContextStorage);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v33 = sqlite3_errmsg(self->_store);
      v34 = sqlite3_extended_errcode(self->_store);
      v35 = 136316674;
      v36 = "[UAFSubscriptionStoreManager _unsubscribeSubscription:subscription:user:]";
      v37 = 2112;
      v38 = userCopy;
      v39 = 2114;
      v40 = subscriptionCopy;
      v41 = 2114;
      v42 = v9;
      v43 = 1024;
      v44 = v12;
      v45 = 2080;
      v46 = v33;
      v47 = 1024;
      v48 = v34;
      _os_log_error_impl(&dword_1BCF2C000, v28, OS_LOG_TYPE_ERROR, "%s Removal of subscription failed for User: '%@', Subscriber: '%{public}@', Subscription: '%{public}@' SQLite error: %d (%s, Extended: %d)", &v35, 0x40u);
    }

    v29 = UAFLogContextStorage;
    v30 = kUAFABCDatabaseFailure;
    v31 = [MEMORY[0x1E696AD98] numberWithInt:sqlite3_extended_errcode(self->_store)];
    stringValue = [v31 stringValue];
    UAFFaultCapture(v29, v30, @"subscription", stringValue);
  }

  else
  {
    ++self->_updateCount;
  }

LABEL_12:
  sqlite3_reset(self->_removeSubscription);
  sqlite3_clear_bindings(self->_removeSubscription);
  if (v12)
  {
    v23 = v12 == 101;
  }

  else
  {
    v23 = 1;
  }

  v24 = v23;

  v25 = *MEMORY[0x1E69E9840];
  return v24;
}

- (BOOL)_removeAllSubscriptions
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = sqlite3_step(self->_removeAllSubscriptions);
  if (v3 == 101)
  {
    ++self->_updateCount;
  }

  else
  {
    v4 = UAFGetLogCategory(&UAFLogContextStorage);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v8 = sqlite3_errmsg(self->_store);
      v9 = sqlite3_extended_errcode(self->_store);
      v10 = 136315906;
      v11 = "[UAFSubscriptionStoreManager _removeAllSubscriptions]";
      v12 = 1024;
      v13 = v3;
      v14 = 2080;
      v15 = v8;
      v16 = 1024;
      v17 = v9;
      _os_log_error_impl(&dword_1BCF2C000, v4, OS_LOG_TYPE_ERROR, "%s Removal of all the subscriptions failed SQLite error: %d (%s, Extended: %d)", &v10, 0x22u);
    }
  }

  sqlite3_reset(self->_removeAllSubscriptions);
  if (v3)
  {
    v5 = v3 == 101;
  }

  else
  {
    v5 = 1;
  }

  result = v5;
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)removeAllSubscriptions
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__UAFSubscriptionStoreManager_removeAllSubscriptions__block_invoke;
  v5[3] = &unk_1E7FFE168;
  v5[4] = self;
  v2 = [(UAFSubscriptionStoreManager *)self doDatabaseOperation:v5 useTransaction:1 logDescription:@"removing all subscriptions" error:0];
  return !v2 || v2 == 101;
}

uint64_t __53__UAFSubscriptionStoreManager_removeAllSubscriptions__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) _removeAllSubscriptions])
  {
    return 0;
  }

  else
  {
    return 3;
  }
}

- (int)_setSystemAssetSetUsages:(id)usages
{
  v23 = *MEMORY[0x1E69E9840];
  usagesCopy = usages;
  [(UAFSubscriptionStoreManager *)self _removeAllSystemAssetSetUsages];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = usagesCopy;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v19 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v18 + 1) + 8 * v10);
      v12 = [v6 objectForKeyedSubscript:{v11, v18}];
      v13 = [(UAFSubscriptionStoreManager *)self _setSystemAssetSetUsages:v11 usages:v12];

      if (v13 != 101 && v13 != 0)
      {
        v3 = v13;
      }

      if (v13 != 101 && v13 != 0)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_18;
      }
    }
  }

  else
  {
LABEL_18:
    v3 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v3;
}

- (int)doDatabaseOperation:(id)operation useTransaction:(BOOL)transaction logDescription:(id)description error:(id *)error
{
  v38[1] = *MEMORY[0x1E69E9840];
  operationCopy = operation;
  descriptionCopy = description;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v12 = +[UAFSubscriptionStoreManager getSerialQueue];
  v24 = MEMORY[0x1E69E9820];
  v25 = 3221225472;
  v26 = __87__UAFSubscriptionStoreManager_doDatabaseOperation_useTransaction_logDescription_error___block_invoke;
  v27 = &unk_1E7FFE190;
  selfCopy = self;
  v31 = &v33;
  transactionCopy = transaction;
  v13 = operationCopy;
  v30 = v13;
  v14 = descriptionCopy;
  v29 = v14;
  dispatch_sync(v12, &v24);

  v15 = v34;
  if (error)
  {
    v16 = *(v34 + 6);
    if (v16 && v16 != 101)
    {
      v17 = v16;
      v18 = MEMORY[0x1E696ABC0];
      v37 = *MEMORY[0x1E696A588];
      v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{sqlite3_errstr(v16), v24, v25, v26, v27, selfCopy}];
      v38[0] = v19;
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:&v37 count:1];
      *error = [v18 errorWithDomain:@"com.apple.UnifiedAssetFramework.Storage" code:v17 userInfo:v20];

      v15 = v34;
    }

    else
    {
      *error = 0;
    }
  }

  v21 = *(v15 + 6);

  _Block_object_dispose(&v33, 8);
  v22 = *MEMORY[0x1E69E9840];
  return v21;
}

uint64_t __87__UAFSubscriptionStoreManager_doDatabaseOperation_useTransaction_logDescription_error___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if ((*(v2 + 249) & 1) == 0)
  {
    v3 = os_transaction_create();
    v2 = *(a1 + 32);
  }

  result = [v2 _openDatabase:*(v2 + 232)];
  if (result)
  {
    if (*(a1 + 64) == 1)
    {
      *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) _beginDatabaseTransaction];
      if (!*(*(*(a1 + 56) + 8) + 24))
      {
        *(*(*(a1 + 56) + 8) + 24) = (*(*(a1 + 48) + 16))();
        v5 = *(*(*(a1 + 56) + 8) + 24);
        if (v5 && v5 != 101)
        {
          v11 = UAFGetLogCategory(&UAFLogContextStorage);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v12 = *(a1 + 40);
            *v15 = 136315394;
            *&v15[4] = "[UAFSubscriptionStoreManager doDatabaseOperation:useTransaction:logDescription:error:]_block_invoke";
            *&v15[12] = 2114;
            *&v15[14] = v12;
            _os_log_impl(&dword_1BCF2C000, v11, OS_LOG_TYPE_DEFAULT, "%s Rolling back exclusive transaction of %{public}@", v15, 0x16u);
          }

          v13 = [*(a1 + 32) _rollbackDatabaseTransaction];
          if (!v13 || v13 == 101)
          {
            goto LABEL_14;
          }

          v7 = UAFGetLogCategory(&UAFLogContextStorage);
          if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_21;
          }

          v14 = *(a1 + 40);
          *v15 = 136315394;
          *&v15[4] = "[UAFSubscriptionStoreManager doDatabaseOperation:useTransaction:logDescription:error:]_block_invoke";
          *&v15[12] = 2114;
          *&v15[14] = v14;
          v9 = "%s Rollback exclusive transaction of %{public}@ failed";
        }

        else
        {
          *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) _endDatabaseTransaction];
          v6 = *(*(*(a1 + 56) + 8) + 24);
          if (!v6 || v6 == 101)
          {
            goto LABEL_14;
          }

          v7 = UAFGetLogCategory(&UAFLogContextStorage);
          if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_21;
          }

          v8 = *(a1 + 40);
          *v15 = 136315394;
          *&v15[4] = "[UAFSubscriptionStoreManager doDatabaseOperation:useTransaction:logDescription:error:]_block_invoke";
          *&v15[12] = 2114;
          *&v15[14] = v8;
          v9 = "%s Commit of exclusive transaction of %{public}@ failed";
        }

        _os_log_error_impl(&dword_1BCF2C000, v7, OS_LOG_TYPE_ERROR, v9, v15, 0x16u);
LABEL_21:
      }
    }

    else
    {
      *(*(*(a1 + 56) + 8) + 24) = (*(*(a1 + 48) + 16))();
    }

LABEL_14:
    result = [*(a1 + 32) _closeDatabase];
    goto LABEL_15;
  }

  *(*(*(a1 + 56) + 8) + 24) = 3;
LABEL_15:
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)_subscriptionTime:(id)time
{
  timeCopy = time;
  v4 = objc_opt_new();
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  [v4 setLocale:currentLocale];

  [v4 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
  localTimeZone = [MEMORY[0x1E695DFE8] localTimeZone];
  [v4 setTimeZone:localTimeZone];

  v7 = [v4 stringFromDate:timeCopy];

  return v7;
}

- (void)expireSubscriptions
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __50__UAFSubscriptionStoreManager_expireSubscriptions__block_invoke;
  v2[3] = &unk_1E7FFE168;
  v2[4] = self;
  [(UAFSubscriptionStoreManager *)self doDatabaseOperation:v2 useTransaction:1 logDescription:@"expiring subscriptions" error:0];
}

uint64_t __50__UAFSubscriptionStoreManager_expireSubscriptions__block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 96);
  v3 = sqlite3_step(v2);
  v5 = *(a1 + 32);
  if (v3 == 100)
  {
    *&v4 = 136316162;
    v21 = v4;
    do
    {
      v6 = [v5 readString:v2 col:{0, v21}];
      v7 = [*(a1 + 32) readData:v2 col:1];
      if (v7)
      {
        v8 = v6 == 0;
      }

      else
      {
        v8 = 1;
      }

      if (!v8)
      {
        v9 = [*(a1 + 32) _uafAssetSetSubscriptionFromData:v7];
        if (v9)
        {
          v10 = v9;
          v11 = [*(a1 + 32) readString:v2 col:2];
          v12 = UAFGetLogCategory(&UAFLogContextStorage);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v13 = *(a1 + 32);
            v14 = [MEMORY[0x1E695DF00] now];
            v15 = [v13 _subscriptionTime:v14];
            *buf = v21;
            v23 = "[UAFSubscriptionStoreManager expireSubscriptions]_block_invoke";
            v24 = 2114;
            v25 = v10;
            v26 = 2114;
            v27 = v6;
            v28 = 2114;
            v29 = v15;
            v30 = 2112;
            v31 = v11;
            _os_log_impl(&dword_1BCF2C000, v12, OS_LOG_TYPE_DEFAULT, "%s Removing expired sub '%{public}@' from subscriber '%{public}@' at '%{public}@' for user '%@'", buf, 0x34u);
          }

          v16 = *(a1 + 32);
          v17 = [v10 name];
          [v16 _unsubscribeSubscription:v6 subscription:v17 user:v11];
        }
      }

      v18 = sqlite3_step(v2);
      v5 = *(a1 + 32);
    }

    while (v18 == 100);
  }

  sqlite3_reset(v5[12]);
  v19 = *MEMORY[0x1E69E9840];
  return 0;
}

- (int)_updateSystemAssetSetUsages:(id *)usages assetSetUsages:(id *)setUsages configurationManager:(id)manager
{
  v28 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  v23 = 0;
  v9 = [(UAFSubscriptionStoreManager *)self _getAllSubscriptions:&v23];
  if (v23)
  {
    v10 = UAFGetLogCategory(&UAFLogContextStorage);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v25 = "[UAFSubscriptionStoreManager _updateSystemAssetSetUsages:assetSetUsages:configurationManager:]";
      v26 = 1024;
      LODWORD(v27) = v23;
      _os_log_error_impl(&dword_1BCF2C000, v10, OS_LOG_TYPE_ERROR, "%s Could not retrieve all subscriptions: %d", buf, 0x12u);
    }

    v11 = v23;
  }

  else
  {
    v12 = [UAFSubscriptionStoreManager flattenSubscriptions:v9];
    v13 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v25 = "[UAFSubscriptionStoreManager _updateSystemAssetSetUsages:assetSetUsages:configurationManager:]";
      v26 = 2114;
      v27 = v12;
      _os_log_debug_impl(&dword_1BCF2C000, v13, OS_LOG_TYPE_DEBUG, "%s All subscriptions now %{public}@", buf, 0x16u);
    }

    v14 = managerCopy;
    if (!v14)
    {
      v14 = +[UAFConfigurationManager defaultManager];
    }

    v15 = [v14 applySubscriptions:v12];
    v16 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v25 = "[UAFSubscriptionStoreManager _updateSystemAssetSetUsages:assetSetUsages:configurationManager:]";
      v26 = 2114;
      v27 = v15;
      _os_log_debug_impl(&dword_1BCF2C000, v16, OS_LOG_TYPE_DEBUG, "%s All asset set usages now %{public}@", buf, 0x16u);
    }

    v17 = [(UAFSubscriptionStoreManager *)self _setSystemAssetSetUsages:v15];
    if (v17 && (v11 = v17, v17 != 101))
    {
      v20 = UAFGetLogCategory(&UAFLogContextClient);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v25 = "[UAFSubscriptionStoreManager _updateSystemAssetSetUsages:assetSetUsages:configurationManager:]";
        v26 = 2114;
        v27 = v15;
        _os_log_error_impl(&dword_1BCF2C000, v20, OS_LOG_TYPE_ERROR, "%s Failed to update storage to reflect asset set usages %{public}@", buf, 0x16u);
      }
    }

    else
    {
      if (setUsages)
      {
        v18 = v15;
        *setUsages = v15;
      }

      if (usages)
      {
        v19 = v12;
        v11 = 0;
        *usages = v12;
      }

      else
      {
        v11 = 0;
      }
    }
  }

  v21 = *MEMORY[0x1E69E9840];
  return v11;
}

- (id)updateSystemAssetSetUsages:(id *)usages configurationManager:(id)manager
{
  managerCopy = manager;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__6;
  v24 = __Block_byref_object_dispose__6;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__6;
  v18 = __Block_byref_object_dispose__6;
  v19 = 0;
  if (!managerCopy)
  {
    managerCopy = +[UAFConfigurationManager defaultManager];
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __79__UAFSubscriptionStoreManager_updateSystemAssetSetUsages_configurationManager___block_invoke;
  v10[3] = &unk_1E7FFE1B8;
  v10[4] = self;
  v12 = &v20;
  v13 = &v14;
  v7 = managerCopy;
  v11 = v7;
  [(UAFSubscriptionStoreManager *)self doDatabaseOperation:v10 useTransaction:1 logDescription:@"updating system asset set usages" error:0];
  if (usages)
  {
    *usages = v21[5];
  }

  v8 = v15[5];

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);

  return v8;
}

uint64_t __79__UAFSubscriptionStoreManager_updateSystemAssetSetUsages_configurationManager___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 48) + 8);
  v2 = *(v1 + 40);
  v3 = *(*(a1 + 56) + 8);
  v6 = *(v3 + 40);
  obj = v2;
  v4 = [*(a1 + 32) _updateSystemAssetSetUsages:&obj assetSetUsages:&v6 configurationManager:*(a1 + 40)];
  objc_storeStrong((v1 + 40), obj);
  objc_storeStrong((v3 + 40), v6);
  return v4;
}

- (int)_setSystemAssetSetUsages:(id)usages usages:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  usagesCopy = usages;
  v7 = a4;
  v8 = [(UAFSubscriptionStoreManager *)self bindString:self->_setSystemAssetSetUsages col:1 string:usagesCopy];
  if (!v8)
  {
    v10 = [(UAFSubscriptionStoreManager *)self _dataFromSystemAssetSetUsages:v7];
    if (!v10)
    {
      v14 = UAFGetLogCategory(&UAFLogContextStorage);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v23 = 136315394;
        v24 = "[UAFSubscriptionStoreManager _setSystemAssetSetUsages:usages:]";
        v25 = 2114;
        v26 = usagesCopy;
        _os_log_error_impl(&dword_1BCF2C000, v14, OS_LOG_TYPE_ERROR, "%s Getting system asset set usages data from the usages failed for AssetSetName: '%{public}@'", &v23, 0x16u);
      }

      v9 = 3;
      goto LABEL_12;
    }

    v13 = [(UAFSubscriptionStoreManager *)self bindData:self->_setSystemAssetSetUsages col:2 data:v10];
    if (v13)
    {
      v9 = v13;
      v14 = UAFGetLogCategory(&UAFLogContextStorage);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = sqlite3_errmsg(self->_store);
        v16 = sqlite3_extended_errcode(self->_store);
        v23 = 136316162;
        v24 = "[UAFSubscriptionStoreManager _setSystemAssetSetUsages:usages:]";
        v25 = 2114;
        v26 = usagesCopy;
        v27 = 1024;
        v28 = v9;
        v29 = 2080;
        v30 = v15;
        v31 = 1024;
        v32 = v16;
        v17 = "%s Binding system asset set usages data failed for AssetSetName: '%{public}@' SQLite error: %d (%s, Extended: %d)";
LABEL_8:
        _os_log_error_impl(&dword_1BCF2C000, v14, OS_LOG_TYPE_ERROR, v17, &v23, 0x2Cu);
      }
    }

    else
    {
      v20 = sqlite3_step(self->_setSystemAssetSetUsages);
      v9 = v20;
      if (!v20 || v20 == 101)
      {
        goto LABEL_13;
      }

      v14 = UAFGetLogCategory(&UAFLogContextStorage);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v21 = sqlite3_errmsg(self->_store);
        v22 = sqlite3_extended_errcode(self->_store);
        v23 = 136316162;
        v24 = "[UAFSubscriptionStoreManager _setSystemAssetSetUsages:usages:]";
        v25 = 2114;
        v26 = usagesCopy;
        v27 = 1024;
        v28 = v9;
        v29 = 2080;
        v30 = v21;
        v31 = 1024;
        v32 = v22;
        v17 = "%s Setting system asset set usages failed for AssetSetName: '%{public}@' SQLite error: %d (%s, Extended: %d)";
        goto LABEL_8;
      }
    }

LABEL_12:

    goto LABEL_13;
  }

  v9 = v8;
  v10 = UAFGetLogCategory(&UAFLogContextStorage);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = sqlite3_errmsg(self->_store);
    v12 = sqlite3_extended_errcode(self->_store);
    v23 = 136316162;
    v24 = "[UAFSubscriptionStoreManager _setSystemAssetSetUsages:usages:]";
    v25 = 2114;
    v26 = usagesCopy;
    v27 = 1024;
    v28 = v9;
    v29 = 2080;
    v30 = v11;
    v31 = 1024;
    v32 = v12;
    _os_log_error_impl(&dword_1BCF2C000, v10, OS_LOG_TYPE_ERROR, "%s Binding asset set name to the set system asset set usages query failed for  AssetSetName: '%{public}@' SQLite error: %d (%s, Extended: %d)", &v23, 0x2Cu);
  }

LABEL_13:

  sqlite3_reset(self->_setSystemAssetSetUsages);
  sqlite3_clear_bindings(self->_setSystemAssetSetUsages);

  v18 = *MEMORY[0x1E69E9840];
  return v9;
}

- (id)getSystemAssetSetUsages:(id)usages
{
  usagesCopy = usages;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__6;
  v15 = __Block_byref_object_dispose__6;
  v16 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __55__UAFSubscriptionStoreManager_getSystemAssetSetUsages___block_invoke;
  v8[3] = &unk_1E7FFE118;
  v8[4] = self;
  v5 = usagesCopy;
  v9 = v5;
  v10 = &v11;
  [(UAFSubscriptionStoreManager *)self doDatabaseOperation:v8 useTransaction:0 logDescription:@"get system asset set usages" error:0];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

uint64_t __55__UAFSubscriptionStoreManager_getSystemAssetSetUsages___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) bindString:*(*(a1 + 32) + 112) col:1 string:*(a1 + 40)];
  if (v2)
  {
    v3 = v2;
    v4 = UAFGetLogCategory(&UAFLogContextStorage);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 40);
      v6 = sqlite3_errmsg(*(*(a1 + 32) + 8));
      v7 = sqlite3_extended_errcode(*(*(a1 + 32) + 8));
      v25 = 136316162;
      v26 = "[UAFSubscriptionStoreManager getSystemAssetSetUsages:]_block_invoke";
      v27 = 2114;
      v28 = v5;
      v29 = 1024;
      v30 = v3;
      v31 = 2080;
      v32 = v6;
      v33 = 1024;
      v34 = v7;
      v8 = "%s Binding asset set name failed for get system asset set usages query failed for AssetSetName: '%{public}@' SQLite error: %d (%s, Extended: %d)";
LABEL_4:
      _os_log_error_impl(&dword_1BCF2C000, v4, OS_LOG_TYPE_ERROR, v8, &v25, 0x2Cu);
    }
  }

  else
  {
    v9 = sqlite3_step(*(*(a1 + 32) + 112));
    v3 = v9;
    if ((v9 - 100) < 2 || v9 == 0)
    {
      v11 = [*(a1 + 32) readData:*(*(a1 + 32) + 112) col:0];
      if (v11)
      {
        v4 = v11;
        v12 = [*(a1 + 32) _systemAssetSetUsagesFromData:v11];
        v13 = *(*(a1 + 48) + 8);
        v14 = *(v13 + 40);
        *(v13 + 40) = v12;
      }

      else
      {
        v15 = UAFGetLogCategory(&UAFLogContextStorage);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v19 = *(a1 + 40);
          v20 = sqlite3_errmsg(*(*(a1 + 32) + 8));
          v21 = sqlite3_extended_errcode(*(*(a1 + 32) + 8));
          v25 = 136316162;
          v26 = "[UAFSubscriptionStoreManager getSystemAssetSetUsages:]_block_invoke";
          v27 = 2114;
          v28 = v19;
          v29 = 1024;
          v30 = v3;
          v31 = 2080;
          v32 = v20;
          v33 = 1024;
          v34 = v21;
          _os_log_error_impl(&dword_1BCF2C000, v15, OS_LOG_TYPE_ERROR, "%s Fetched nil system asset set usages for AssetSetName: '%{public}@' SQLite error: %d (%s, Extended: %d)", &v25, 0x2Cu);
        }

        v4 = 0;
      }
    }

    else
    {
      v4 = UAFGetLogCategory(&UAFLogContextStorage);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v22 = *(a1 + 40);
        v23 = sqlite3_errmsg(*(*(a1 + 32) + 8));
        v24 = sqlite3_extended_errcode(*(*(a1 + 32) + 8));
        v25 = 136316162;
        v26 = "[UAFSubscriptionStoreManager getSystemAssetSetUsages:]_block_invoke";
        v27 = 2114;
        v28 = v22;
        v29 = 1024;
        v30 = v3;
        v31 = 2080;
        v32 = v23;
        v33 = 1024;
        v34 = v24;
        v8 = "%s Fetching system asset usages from database failed for AssetSetName: '%{public}@' SQLite error: %d (%s, Extended: %d)";
        goto LABEL_4;
      }
    }
  }

  sqlite3_reset(*(*(a1 + 32) + 112));
  sqlite3_clear_bindings(*(*(a1 + 32) + 112));
  v17 = *MEMORY[0x1E69E9840];
  return v3;
}

- (id)getAllSystemAssetSetUsages:(id *)usages
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__6;
  v12 = __Block_byref_object_dispose__6;
  v13 = objc_opt_new();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__UAFSubscriptionStoreManager_getAllSystemAssetSetUsages___block_invoke;
  v7[3] = &unk_1E7FFE0F0;
  v7[4] = self;
  v7[5] = &v8;
  [(UAFSubscriptionStoreManager *)self doDatabaseOperation:v7 useTransaction:0 logDescription:@"get system asset set usages" error:usages];
  if ([v9[5] count])
  {
    v5 = v9[5];
  }

  else
  {
    v5 = 0;
  }

  _Block_object_dispose(&v8, 8);

  return v5;
}

uint64_t __58__UAFSubscriptionStoreManager_getAllSystemAssetSetUsages___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = sqlite3_step(*(*(a1 + 32) + 120));
  v4 = *(a1 + 32);
  v5 = v4[15];
  if (v2 == 100)
  {
    *&v3 = 136315138;
    v14 = v3;
    do
    {
      v6 = [v4 readString:v5 col:{0, v14}];
      if (v6)
      {
        v7 = [*(a1 + 32) readData:*(*(a1 + 32) + 120) col:1];
        if (v7)
        {
          v8 = [*(a1 + 32) _systemAssetSetUsagesFromData:v7];
          if (v8)
          {
            v9 = v8;
            [*(*(*(a1 + 40) + 8) + 40) setObject:v8 forKeyedSubscript:v6];
          }

          else
          {
            v10 = UAFGetLogCategory(&UAFLogContextStorage);
            if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              v16 = "[UAFSubscriptionStoreManager getAllSystemAssetSetUsages:]_block_invoke";
              v17 = 2114;
              v18 = v6;
              _os_log_impl(&dword_1BCF2C000, v10, OS_LOG_TYPE_DEFAULT, "%s Could not deserialize usages for assetset %{public}@", buf, 0x16u);
            }

            v9 = 0;
          }
        }

        else
        {
          v9 = UAFGetLogCategory(&UAFLogContextStorage);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v16 = "[UAFSubscriptionStoreManager getAllSystemAssetSetUsages:]_block_invoke";
            v17 = 2114;
            v18 = v6;
            _os_log_impl(&dword_1BCF2C000, v9, OS_LOG_TYPE_DEFAULT, "%s Unexpectedly retrieved a nil usage for assetset %{public}@", buf, 0x16u);
          }
        }
      }

      else
      {
        v7 = UAFGetLogCategory(&UAFLogContextStorage);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v14;
          v16 = "[UAFSubscriptionStoreManager getAllSystemAssetSetUsages:]_block_invoke";
          _os_log_impl(&dword_1BCF2C000, v7, OS_LOG_TYPE_DEFAULT, "%s Unexpectedly retrieved a nil assetset name from SystemAssetSetUsages", buf, 0xCu);
        }
      }

      v11 = sqlite3_step(*(*(a1 + 32) + 120));
      v4 = *(a1 + 32);
      v5 = v4[15];
    }

    while (v11 == 100);
  }

  sqlite3_reset(v5);
  sqlite3_clear_bindings(*(*(a1 + 32) + 120));
  v12 = *MEMORY[0x1E69E9840];
  return 0;
}

- (BOOL)clearSystemAssetSetUsages:(id)usages
{
  usagesCopy = usages;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57__UAFSubscriptionStoreManager_clearSystemAssetSetUsages___block_invoke;
  v10[3] = &unk_1E7FFE1E0;
  v10[4] = self;
  v11 = usagesCopy;
  v5 = usagesCopy;
  v6 = [(UAFSubscriptionStoreManager *)self doDatabaseOperation:v10 useTransaction:1 logDescription:@"clearing system asset set usages" error:0];
  if (v6)
  {
    v7 = v6 == 101;
  }

  else
  {
    v7 = 1;
  }

  v8 = v7;

  return v8;
}

uint64_t __57__UAFSubscriptionStoreManager_clearSystemAssetSetUsages___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) bindString:*(*(a1 + 32) + 128) col:1 string:*(a1 + 40)];
  if (v2)
  {
    v3 = v2;
    v4 = UAFGetLogCategory(&UAFLogContextStorage);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
LABEL_3:

      goto LABEL_4;
    }

    v12 = *(a1 + 40);
    v13 = sqlite3_errmsg(*(*(a1 + 32) + 8));
    v14 = sqlite3_extended_errcode(*(*(a1 + 32) + 8));
    v15 = 136316162;
    v16 = "[UAFSubscriptionStoreManager clearSystemAssetSetUsages:]_block_invoke";
    v17 = 2114;
    v18 = v12;
    v19 = 1024;
    v20 = v3;
    v21 = 2080;
    v22 = v13;
    v23 = 1024;
    v24 = v14;
    v11 = "%s Binding asset set name failed for removing system asset set usages query failed for AssetSetName: '%{public}@' SQLite error: %d (%s, Extended: %d)";
LABEL_10:
    _os_log_error_impl(&dword_1BCF2C000, v4, OS_LOG_TYPE_ERROR, v11, &v15, 0x2Cu);
    goto LABEL_3;
  }

  v7 = sqlite3_step(*(*(a1 + 32) + 128));
  v3 = v7;
  if (v7 && v7 != 101)
  {
    v4 = UAFGetLogCategory(&UAFLogContextStorage);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_3;
    }

    v8 = *(a1 + 40);
    v9 = sqlite3_errmsg(*(*(a1 + 32) + 8));
    v10 = sqlite3_extended_errcode(*(*(a1 + 32) + 8));
    v15 = 136316162;
    v16 = "[UAFSubscriptionStoreManager clearSystemAssetSetUsages:]_block_invoke";
    v17 = 2114;
    v18 = v8;
    v19 = 1024;
    v20 = v3;
    v21 = 2080;
    v22 = v9;
    v23 = 1024;
    v24 = v10;
    v11 = "%s Removing system asset set usages failed for AssetSetName: '%{public}@' SQLite error: %d (%s, Extended: %d)";
    goto LABEL_10;
  }

LABEL_4:
  sqlite3_reset(*(*(a1 + 32) + 128));
  sqlite3_clear_bindings(*(*(a1 + 32) + 128));
  v5 = *MEMORY[0x1E69E9840];
  return v3;
}

- (BOOL)_removeAllSystemAssetSetUsages
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = sqlite3_step(self->_removeAllSystemAssetSetUsages);
  if (v3 != 101)
  {
    v4 = UAFGetLogCategory(&UAFLogContextStorage);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v8 = sqlite3_errmsg(self->_store);
      v9 = sqlite3_extended_errcode(self->_store);
      v10 = 136315906;
      v11 = "[UAFSubscriptionStoreManager _removeAllSystemAssetSetUsages]";
      v12 = 1024;
      v13 = v3;
      v14 = 2080;
      v15 = v8;
      v16 = 1024;
      v17 = v9;
      _os_log_error_impl(&dword_1BCF2C000, v4, OS_LOG_TYPE_ERROR, "%s Removal of all the system asset set usages failed SQLite error: %d (%s, Extended: %d)", &v10, 0x22u);
    }
  }

  sqlite3_reset(self->_removeAllSystemAssetSetUsages);
  if (v3)
  {
    v5 = v3 == 101;
  }

  else
  {
    v5 = 1;
  }

  result = v5;
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)removeAllSystemAssetSetUsages
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __60__UAFSubscriptionStoreManager_removeAllSystemAssetSetUsages__block_invoke;
  v5[3] = &unk_1E7FFE168;
  v5[4] = self;
  v2 = [(UAFSubscriptionStoreManager *)self doDatabaseOperation:v5 useTransaction:1 logDescription:@"remove all system asset set usages" error:0];
  return !v2 || v2 == 101;
}

uint64_t __60__UAFSubscriptionStoreManager_removeAllSystemAssetSetUsages__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) _removeAllSystemAssetSetUsages])
  {
    return 0;
  }

  else
  {
    return 3;
  }
}

- (int)_setDbVersion:(int)version
{
  v22 = *MEMORY[0x1E69E9840];
  _beginDatabaseTransaction = [(UAFSubscriptionStoreManager *)self _beginDatabaseTransaction];
  if (_beginDatabaseTransaction)
  {
    v6 = _beginDatabaseTransaction;
    v7 = UAFGetLogCategory(&UAFLogContextStorage);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v21 = 136315138;
      *&v21[4] = "[UAFSubscriptionStoreManager _setDbVersion:]";
      _os_log_error_impl(&dword_1BCF2C000, v7, OS_LOG_TYPE_ERROR, "%s Begin exclusive transaction of setting db version failed", v21, 0xCu);
    }

    goto LABEL_22;
  }

  v8 = sqlite3_step(self->_deleteDbVersion);
  if (v8 != 101 && v8 != 0)
  {
    v6 = v8;
    v14 = UAFGetLogCategory(&UAFLogContextStorage);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
LABEL_14:

      if (!v6)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    v19 = sqlite3_errmsg(self->_store);
    v20 = sqlite3_extended_errcode(self->_store);
    *v21 = 136315906;
    *&v21[4] = "[UAFSubscriptionStoreManager _setDbVersion:]";
    *&v21[12] = 1024;
    *&v21[14] = v6;
    *&v21[18] = 2080;
    *&v21[20] = v19;
    *&v21[28] = 1024;
    *&v21[30] = v20;
    v13 = "%s Error deleting existing entries SQLite error: %d (%s, Extended: %d)";
LABEL_24:
    _os_log_error_impl(&dword_1BCF2C000, v14, OS_LOG_TYPE_ERROR, v13, v21, 0x22u);
    goto LABEL_14;
  }

  v10 = sqlite3_bind_int(self->_setDbVersion, 1, version);
  if (v10)
  {
    v6 = v10;
    v14 = UAFGetLogCategory(&UAFLogContextStorage);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    v11 = sqlite3_errmsg(self->_store);
    v12 = sqlite3_extended_errcode(self->_store);
    *v21 = 136315906;
    *&v21[4] = "[UAFSubscriptionStoreManager _setDbVersion:]";
    *&v21[12] = 1024;
    *&v21[14] = v6;
    *&v21[18] = 2080;
    *&v21[20] = v11;
    *&v21[28] = 1024;
    *&v21[30] = v12;
    v13 = "%s Binding db version failed SQLite error: %d (%s, Extended: %d)";
    goto LABEL_24;
  }

  v6 = sqlite3_step(self->_setDbVersion);
  if (!v6)
  {
LABEL_18:
    v6 = [(UAFSubscriptionStoreManager *)self _endDatabaseTransaction:*v21];
    goto LABEL_22;
  }

LABEL_17:
  if (v6 == 101)
  {
    goto LABEL_18;
  }

  v16 = UAFGetLogCategory(&UAFLogContextStorage);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *v21 = 136315138;
    *&v21[4] = "[UAFSubscriptionStoreManager _setDbVersion:]";
    _os_log_impl(&dword_1BCF2C000, v16, OS_LOG_TYPE_DEFAULT, "%s Rolling back exclusive transaction of setting db version", v21, 0xCu);
  }

  [(UAFSubscriptionStoreManager *)self _rollbackDatabaseTransaction];
LABEL_22:
  sqlite3_reset(self->_setDbVersion);
  sqlite3_reset(self->_deleteDbVersion);
  sqlite3_clear_bindings(self->_setDbVersion);
  v17 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)_moveDatabase
{
  v20 = *MEMORY[0x1E69E9840];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  oldDatabaseName = self->_oldDatabaseName;
  v15 = 0;
  [defaultManager removeItemAtPath:oldDatabaseName error:&v15];
  v5 = v15;

  defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
  databaseName = self->_databaseName;
  v8 = self->_oldDatabaseName;
  v14 = v5;
  v9 = [defaultManager2 moveItemAtPath:databaseName toPath:v8 error:&v14];
  v10 = v14;

  if ((v9 & 1) == 0)
  {
    v11 = UAFGetLogCategory(&UAFLogContextStorage);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v17 = "[UAFSubscriptionStoreManager _moveDatabase]";
      v18 = 2112;
      v19 = v10;
      _os_log_error_impl(&dword_1BCF2C000, v11, OS_LOG_TYPE_ERROR, "%s Moving the database failed with error: %@", buf, 0x16u);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return v9;
}

- (int)_performDbUpgrade:(int)upgrade
{
  LODWORD(v3) = upgrade;
  v29 = *MEMORY[0x1E69E9840];
  v5 = UAFGetLogCategory(&UAFLogContextStorage);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v24 = "[UAFSubscriptionStoreManager _performDbUpgrade:]";
    _os_log_impl(&dword_1BCF2C000, v5, OS_LOG_TYPE_DEFAULT, "%s performing db upgrade", buf, 0xCu);
  }

  v6 = 0;
  v7 = 0;
  while (!self->_dbUpToDate)
  {
    if (v3 <= 1)
    {
      v3 = v3;
      while (1)
      {
        v8 = MEMORY[0x1BFB33950](*(&upgradeBlocks + v3));
        if (((v8)[2](v8, self) & 1) == 0)
        {
          break;
        }

        v9 = UAFGetLogCategory(&UAFLogContextStorage);
        v10 = v3 + 1;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v24 = "[UAFSubscriptionStoreManager _performDbUpgrade:]";
          v25 = 1024;
          v26 = v3 + 1;
          _os_log_impl(&dword_1BCF2C000, v9, OS_LOG_TYPE_DEFAULT, "%s Incrementing DB version to %d", buf, 0x12u);
        }

        v11 = [(UAFSubscriptionStoreManager *)self _setDbVersion:v3 + 1];
        v6 = v11;
        if (v11 && v11 != 101)
        {
          v12 = UAFGetLogCategory(&UAFLogContextStorage);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v24 = "[UAFSubscriptionStoreManager _performDbUpgrade:]";
            v25 = 1024;
            v26 = v3 + 1;
            v27 = 1024;
            v28 = v6;
            _os_log_impl(&dword_1BCF2C000, v12, OS_LOG_TYPE_DEFAULT, "%s Setting DB version to %d failed: %d", buf, 0x18u);
          }

          goto LABEL_17;
        }

        ++v3;
        if (v10 == 2)
        {
          LODWORD(v3) = 2;
          goto LABEL_18;
        }
      }

      v12 = UAFGetLogCategory(&UAFLogContextStorage);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v24 = "[UAFSubscriptionStoreManager _performDbUpgrade:]";
        v25 = 1024;
        v26 = v3;
        v27 = 1024;
        v28 = v7;
        _os_log_error_impl(&dword_1BCF2C000, v12, OS_LOG_TYPE_ERROR, "%s Upgrading db failed at version %d in attempt %d", buf, 0x18u);
      }

      v6 = 3;
LABEL_17:
    }

LABEL_18:
    if (v6)
    {
      v13 = v6 == 101;
    }

    else
    {
      v13 = 1;
    }

    v14 = v13;
    self->_dbUpToDate = v14;
    if (v6 && v6 != 101)
    {
      v15 = UAFGetLogCategory(&UAFLogContextStorage);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v24 = "[UAFSubscriptionStoreManager _performDbUpgrade:]";
        v25 = 1024;
        v26 = v7;
        _os_log_error_impl(&dword_1BCF2C000, v15, OS_LOG_TYPE_ERROR, "%s Couldn't upgrade the database so attempting db deletion and retrying during attempt %d", buf, 0x12u);
      }
    }

    if (++v7 == 5)
    {
      if (self->_dbUpToDate)
      {
        break;
      }

      v16 = UAFGetLogCategory(&UAFLogContextStorage);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v24 = "[UAFSubscriptionStoreManager _performDbUpgrade:]";
        v25 = 1024;
        v26 = 5;
        _os_log_error_impl(&dword_1BCF2C000, v16, OS_LOG_TYPE_ERROR, "%s Couldn't upgrade the database even after %d attempts, moving database aside and creating new", buf, 0x12u);
      }

      [(UAFSubscriptionStoreManager *)self _closeDatabase];
      if ([(UAFSubscriptionStoreManager *)self _moveDatabase])
      {
        if ([(UAFSubscriptionStoreManager *)self _openDatabase:self->_databaseName])
        {
          +[UAFSubscriptionStoreManager sendNotificationDBReset];
          v6 = 0;
          break;
        }

        v17 = UAFGetLogCategory(&UAFLogContextStorage);
        if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_42;
        }

        *buf = 136315394;
        v24 = "[UAFSubscriptionStoreManager _performDbUpgrade:]";
        v25 = 1024;
        v26 = v6;
        v18 = "%s Could not create new subscription database: %d";
        v19 = v17;
        v20 = 18;
LABEL_45:
        _os_log_error_impl(&dword_1BCF2C000, v19, OS_LOG_TYPE_ERROR, v18, buf, v20);
      }

      else
      {
        v17 = UAFGetLogCategory(&UAFLogContextStorage);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v24 = "[UAFSubscriptionStoreManager _performDbUpgrade:]";
          v18 = "%s Could not move existing database aside";
          v19 = v17;
          v20 = 12;
          goto LABEL_45;
        }
      }

LABEL_42:

      v6 = 3;
      break;
    }
  }

  v21 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)performDbUpgrade
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v3 = +[UAFSubscriptionStoreManager getSerialQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __47__UAFSubscriptionStoreManager_performDbUpgrade__block_invoke;
  v8[3] = &unk_1E7FFD0E8;
  v8[4] = self;
  v8[5] = &v9;
  dispatch_sync(v3, v8);

  v4 = *(v10 + 6);
  if (v4)
  {
    v5 = v4 == 101;
  }

  else
  {
    v5 = 1;
  }

  v6 = v5;
  _Block_object_dispose(&v9, 8);
  return v6;
}

uint64_t __47__UAFSubscriptionStoreManager_performDbUpgrade__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _openDatabase:*(*(a1 + 32) + 232)];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 _closeDatabase];
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 3;
  }

  return result;
}

- (id)_dataFromUAFAssetSubscription:(id)subscription
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v3 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:subscription requiringSecureCoding:1 error:&v8];
  v4 = v8;
  if (v4)
  {
    v5 = UAFGetLogCategory(&UAFLogContextStorage);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v10 = "[UAFSubscriptionStoreManager _dataFromUAFAssetSubscription:]";
      v11 = 2112;
      v12 = v4;
      _os_log_error_impl(&dword_1BCF2C000, v5, OS_LOG_TYPE_ERROR, "%s Failed to archive subscription asset set usages: %@", buf, 0x16u);
    }
  }

  v6 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)_uafAssetSetSubscriptionFromData:(id)data
{
  v15 = *MEMORY[0x1E69E9840];
  if (data)
  {
    v3 = MEMORY[0x1E696ACD0];
    dataCopy = data;
    v10 = 0;
    v5 = [v3 unarchivedObjectOfClass:objc_opt_class() fromData:dataCopy error:&v10];

    v6 = v10;
    if (v6)
    {
      v7 = UAFGetLogCategory(&UAFLogContextStorage);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v12 = "[UAFSubscriptionStoreManager _uafAssetSetSubscriptionFromData:]";
        v13 = 2112;
        v14 = v6;
        _os_log_error_impl(&dword_1BCF2C000, v7, OS_LOG_TYPE_ERROR, "%s Failed to unarchive subscription asset set usages: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)_dataFromSystemAssetSetUsages:(id)usages
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v3 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:usages requiringSecureCoding:1 error:&v8];
  v4 = v8;
  if (v4)
  {
    v5 = UAFGetLogCategory(&UAFLogContextStorage);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v10 = "[UAFSubscriptionStoreManager _dataFromSystemAssetSetUsages:]";
      v11 = 2112;
      v12 = v4;
      _os_log_error_impl(&dword_1BCF2C000, v5, OS_LOG_TYPE_ERROR, "%s Failed to archive system asset set usages: %@", buf, 0x16u);
    }
  }

  v6 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)_systemAssetSetUsagesFromData:(id)data
{
  v18[3] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696ACD0];
  v4 = MEMORY[0x1E695DFD8];
  dataCopy = data;
  v18[0] = objc_opt_class();
  v18[1] = objc_opt_class();
  v18[2] = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:3];
  v7 = [v4 setWithArray:v6];
  v13 = 0;
  v8 = [v3 unarchivedObjectOfClasses:v7 fromData:dataCopy error:&v13];

  v9 = v13;
  if (v9)
  {
    v10 = UAFGetLogCategory(&UAFLogContextStorage);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v15 = "[UAFSubscriptionStoreManager _systemAssetSetUsagesFromData:]";
      v16 = 2112;
      v17 = v9;
      _os_log_error_impl(&dword_1BCF2C000, v10, OS_LOG_TYPE_ERROR, "%s Failed to unarchive subscription asset set usages: %@", buf, 0x16u);
    }
  }

  v11 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)getSystemConfigurationForKey:(id)key
{
  keyCopy = key;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__6;
  v16 = __Block_byref_object_dispose__6;
  v17 = 0;
  v9 = MEMORY[0x1E69E9820];
  v5 = keyCopy;
  v10 = v5;
  v11 = &v12;
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"get system configuration for key: %@", v5, v9, 3221225472, __60__UAFSubscriptionStoreManager_getSystemConfigurationForKey___block_invoke, &unk_1E7FFE118, self];
  [(UAFSubscriptionStoreManager *)self doDatabaseOperation:&v9 useTransaction:0 logDescription:v6 error:0];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __60__UAFSubscriptionStoreManager_getSystemConfigurationForKey___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = v2[21];
  v4 = [v2 bindString:v3 col:1 string:*(a1 + 40)];
  if (v4)
  {
    v5 = v4;
    v6 = UAFGetLogCategory(&UAFLogContextStorage);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_3;
    }

    v19 = *(a1 + 40);
    v20 = sqlite3_errmsg(*(*(a1 + 32) + 8));
    v21 = sqlite3_extended_errcode(*(*(a1 + 32) + 8));
    v22 = 136316162;
    v23 = "[UAFSubscriptionStoreManager getSystemConfigurationForKey:]_block_invoke";
    v24 = 2114;
    v25 = v19;
    v26 = 1024;
    v27 = v5;
    v28 = 2080;
    v29 = v20;
    v30 = 1024;
    v31 = v21;
    v18 = "%s Error binding read subscription for '%{public}@' SQLite error: %d (%s, Extended: %d)";
LABEL_14:
    _os_log_error_impl(&dword_1BCF2C000, v6, OS_LOG_TYPE_ERROR, v18, &v22, 0x2Cu);
    goto LABEL_3;
  }

  v7 = sqlite3_step(v3);
  v5 = v7;
  if ((v7 - 100) < 2 || v7 == 0)
  {
    v9 = [*(a1 + 32) readString:*(*(a1 + 32) + 168) col:0];
    v10 = *(*(a1 + 48) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    goto LABEL_10;
  }

  v6 = UAFGetLogCategory(&UAFLogContextStorage);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v15 = *(a1 + 40);
    v16 = sqlite3_errmsg(*(*(a1 + 32) + 8));
    v17 = sqlite3_extended_errcode(*(*(a1 + 32) + 8));
    v22 = 136316162;
    v23 = "[UAFSubscriptionStoreManager getSystemConfigurationForKey:]_block_invoke";
    v24 = 2114;
    v25 = v15;
    v26 = 1024;
    v27 = v5;
    v28 = 2080;
    v29 = v16;
    v30 = 1024;
    v31 = v17;
    v18 = "%s Error executing read SystemConfiguration key for '%{public}@' SQLite error: %d (%s, Extended: %d)";
    goto LABEL_14;
  }

LABEL_3:

LABEL_10:
  sqlite3_reset(v3);
  sqlite3_clear_bindings(v3);
  v12 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)setSystemConfigurationForKey:(id)key withValue:(id)value
{
  v20 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  valueCopy = value;
  v8 = [(UAFSubscriptionStoreManager *)self getSystemConfigurationForKey:keyCopy];
  v9 = v8;
  if (v8 && [v8 isEqualToString:valueCopy])
  {
    v10 = UAFGetLogCategory(&UAFLogContextStorage);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v17 = "[UAFSubscriptionStoreManager setSystemConfigurationForKey:withValue:]";
      v18 = 2114;
      v19 = keyCopy;
      _os_log_impl(&dword_1BCF2C000, v10, OS_LOG_TYPE_DEFAULT, "%s Skipping update of %{public}@ as value is unchanged", buf, 0x16u);
    }
  }

  else
  {
    v13 = MEMORY[0x1E69E9820];
    v14 = keyCopy;
    v15 = valueCopy;
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"set system configuration for key: %@", v14, v13, 3221225472, __70__UAFSubscriptionStoreManager_setSystemConfigurationForKey_withValue___block_invoke, &unk_1E7FFE208, self];
    [(UAFSubscriptionStoreManager *)self doDatabaseOperation:&v13 useTransaction:0 logDescription:v11 error:0];
  }

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t __70__UAFSubscriptionStoreManager_setSystemConfigurationForKey_withValue___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) bindString:*(*(a1 + 32) + 176) col:1 string:*(a1 + 40)];
  if (v2)
  {
    v3 = v2;
    v4 = UAFGetLogCategory(&UAFLogContextStorage);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 40);
      v6 = sqlite3_errmsg(*(*(a1 + 32) + 8));
      v7 = sqlite3_extended_errcode(*(*(a1 + 32) + 8));
      v19 = 136316162;
      v20 = "[UAFSubscriptionStoreManager setSystemConfigurationForKey:withValue:]_block_invoke";
      v21 = 2114;
      v22 = v5;
      v23 = 1024;
      v24 = v3;
      v25 = 2080;
      v26 = v6;
      v27 = 1024;
      v28 = v7;
      v8 = "%s Binding key to SystemConfiguration: '%{public}@' SQLite error: %d (%s, Extended: %d)";
LABEL_13:
      _os_log_error_impl(&dword_1BCF2C000, v4, OS_LOG_TYPE_ERROR, v8, &v19, 0x2Cu);
      goto LABEL_6;
    }

    goto LABEL_6;
  }

  v9 = [*(a1 + 32) bindString:*(*(a1 + 32) + 176) col:2 string:*(a1 + 48)];
  if (v9)
  {
    v3 = v9;
    v4 = UAFGetLogCategory(&UAFLogContextStorage);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v16 = *(a1 + 40);
      v17 = sqlite3_errmsg(*(*(a1 + 32) + 8));
      v18 = sqlite3_extended_errcode(*(*(a1 + 32) + 8));
      v19 = 136316162;
      v20 = "[UAFSubscriptionStoreManager setSystemConfigurationForKey:withValue:]_block_invoke";
      v21 = 2114;
      v22 = v16;
      v23 = 1024;
      v24 = v3;
      v25 = 2080;
      v26 = v17;
      v27 = 1024;
      v28 = v18;
      v8 = "%s Binding value to SystemConfiguration: '%{public}@' SQLite error: %d (%s, Extended: %d)";
      goto LABEL_13;
    }

    goto LABEL_6;
  }

  v12 = sqlite3_step(*(*(a1 + 32) + 176));
  v3 = v12;
  if (v12 && v12 != 101)
  {
    v4 = UAFGetLogCategory(&UAFLogContextStorage);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 40);
      v14 = sqlite3_errmsg(*(*(a1 + 32) + 8));
      v15 = sqlite3_extended_errcode(*(*(a1 + 32) + 8));
      v19 = 136316162;
      v20 = "[UAFSubscriptionStoreManager setSystemConfigurationForKey:withValue:]_block_invoke";
      v21 = 2114;
      v22 = v13;
      v23 = 1024;
      v24 = v3;
      v25 = 2080;
      v26 = v14;
      v27 = 1024;
      v28 = v15;
      v8 = "%s Executing set SystemConfiguration failed for: '%{public}@' SQLite error: %d (%s, Extended: %d)";
      goto LABEL_13;
    }

LABEL_6:
  }

  sqlite3_reset(*(*(a1 + 32) + 176));
  sqlite3_clear_bindings(*(*(a1 + 32) + 176));
  v10 = *MEMORY[0x1E69E9840];
  return v3;
}

- (id)getAllSystemConfiguration:(id *)configuration
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __57__UAFSubscriptionStoreManager_getAllSystemConfiguration___block_invoke;
  v13[3] = &unk_1E7FFE1E0;
  v13[4] = self;
  v6 = dictionary;
  v14 = v6;
  v12 = 0;
  [(UAFSubscriptionStoreManager *)self doDatabaseOperation:v13 useTransaction:1 logDescription:@"getting all system configuration keys & values" error:&v12];
  v7 = v12;
  v8 = v7;
  if (v7)
  {
    if (configuration)
    {
      v9 = v7;
      v10 = 0;
      *configuration = v8;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = v6;
  }

  return v10;
}

uint64_t __57__UAFSubscriptionStoreManager_getAllSystemConfiguration___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = sqlite3_step(*(*(a1 + 32) + 184));
  v4 = *(a1 + 32);
  v5 = v4[23];
  if (v2 == 100)
  {
    *&v3 = 136315138;
    v13 = v3;
    do
    {
      v6 = [v4 readString:v5 col:{0, v13}];
      if (v6)
      {
        v7 = [*(a1 + 32) readString:*(*(a1 + 32) + 184) col:1];
        if (v7)
        {
          v8 = v7;
          [*(a1 + 40) setObject:v7 forKeyedSubscript:v6];
        }

        else
        {
          v9 = UAFGetLogCategory(&UAFLogContextStorage);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            *buf = v13;
            v15 = "[UAFSubscriptionStoreManager getAllSystemConfiguration:]_block_invoke";
            _os_log_error_impl(&dword_1BCF2C000, v9, OS_LOG_TYPE_ERROR, "%s Unexpectedly retrieved a nil value from SystemConfiguration", buf, 0xCu);
          }

          v8 = 0;
        }
      }

      else
      {
        v8 = UAFGetLogCategory(&UAFLogContextStorage);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *buf = v13;
          v15 = "[UAFSubscriptionStoreManager getAllSystemConfiguration:]_block_invoke";
          _os_log_error_impl(&dword_1BCF2C000, v8, OS_LOG_TYPE_ERROR, "%s Unexpectedly retrieved a nil key from SystemConfiguration", buf, 0xCu);
        }
      }

      v10 = sqlite3_step(*(*(a1 + 32) + 184));
      v4 = *(a1 + 32);
      v5 = v4[23];
    }

    while (v10 == 100);
  }

  sqlite3_reset(v5);
  sqlite3_clear_bindings(*(*(a1 + 32) + 184));
  v11 = *MEMORY[0x1E69E9840];
  return 0;
}

- (id)getUserLastSeenTime:(id)time error:(id *)error
{
  timeCopy = time;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__6;
  v17 = __Block_byref_object_dispose__6;
  v18 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57__UAFSubscriptionStoreManager_getUserLastSeenTime_error___block_invoke;
  v10[3] = &unk_1E7FFE118;
  v10[4] = self;
  v7 = timeCopy;
  v11 = v7;
  v12 = &v13;
  [(UAFSubscriptionStoreManager *)self doDatabaseOperation:v10 useTransaction:1 logDescription:@"getting user last seen" error:error];
  v8 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v8;
}

uint64_t __57__UAFSubscriptionStoreManager_getUserLastSeenTime_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  obj = 0;
  v4 = [v2 _getUser:v3 lastSeen:&obj nodeName:0];
  objc_storeStrong((*(a1[6] + 8) + 40), obj);
  return v4;
}

- (id)getUserNodeName:(id)name error:(id *)error
{
  nameCopy = name;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__6;
  v17 = __Block_byref_object_dispose__6;
  v18 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __53__UAFSubscriptionStoreManager_getUserNodeName_error___block_invoke;
  v10[3] = &unk_1E7FFE118;
  v10[4] = self;
  v7 = nameCopy;
  v11 = v7;
  v12 = &v13;
  [(UAFSubscriptionStoreManager *)self doDatabaseOperation:v10 useTransaction:1 logDescription:@"getting user node name" error:error];
  v8 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v8;
}

uint64_t __53__UAFSubscriptionStoreManager_getUserNodeName_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  obj = 0;
  v4 = [v2 _getUser:v3 lastSeen:0 nodeName:&obj];
  objc_storeStrong((*(a1[6] + 8) + 40), obj);
  return v4;
}

- (int)_getUser:(id)user lastSeen:(id *)seen nodeName:(id *)name
{
  v39 = *MEMORY[0x1E69E9840];
  userCopy = user;
  readUser = self->_readUser;
  v10 = [(UAFSubscriptionStoreManager *)self bindString:readUser col:1 string:userCopy];
  if (v10)
  {
    v11 = v10;
    v12 = UAFGetLogCategory(&UAFLogContextStorage);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = sqlite3_errmsg(self->_store);
      v14 = sqlite3_extended_errcode(self->_store);
      v31 = 136316162;
      v32 = "[UAFSubscriptionStoreManager _getUser:lastSeen:nodeName:]";
      v33 = 2112;
      *v34 = userCopy;
      *&v34[8] = 1024;
      *&v34[10] = v11;
      v35 = 2080;
      v36 = v13;
      v37 = 1024;
      v38 = v14;
      _os_log_error_impl(&dword_1BCF2C000, v12, OS_LOG_TYPE_ERROR, "%s Error binding read user for '%@' SQLite error: %d (%s, Extended: %d)", &v31, 0x2Cu);
    }
  }

  else
  {
    v15 = 0;
    v12 = 0;
    while (1)
    {
      v16 = sqlite3_step(readUser);
      if (v16 != 100)
      {
        break;
      }

      v17 = [(UAFSubscriptionStoreManager *)self readDate:self->_readUser col:0];

      if (seen && !v17)
      {
        v21 = UAFGetLogCategory(&UAFLogContextStorage);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v27 = sqlite3_errmsg(self->_store);
          v28 = sqlite3_extended_errcode(self->_store);
          v31 = 136315906;
          v32 = "[UAFSubscriptionStoreManager _getUser:lastSeen:nodeName:]";
          v33 = 1024;
          *v34 = 100;
          *&v34[4] = 2080;
          *&v34[6] = v27;
          v35 = 1024;
          LODWORD(v36) = v28;
          _os_log_error_impl(&dword_1BCF2C000, v21, OS_LOG_TYPE_ERROR, "%s Could not read lastSeen date SQLite error: %d (%s, Extended: %d)", &v31, 0x22u);
        }

        v17 = 0;
        goto LABEL_23;
      }

      if (seen)
      {
        v18 = v17;
        *seen = v17;
      }

      v19 = [(UAFSubscriptionStoreManager *)self readString:self->_readUser col:1];

      if (name && !v19)
      {
        v21 = UAFGetLogCategory(&UAFLogContextStorage);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v29 = sqlite3_errmsg(self->_store);
          v30 = sqlite3_extended_errcode(self->_store);
          v31 = 136315906;
          v32 = "[UAFSubscriptionStoreManager _getUser:lastSeen:nodeName:]";
          v33 = 1024;
          *v34 = 100;
          *&v34[4] = 2080;
          *&v34[6] = v29;
          v35 = 1024;
          LODWORD(v36) = v30;
          _os_log_error_impl(&dword_1BCF2C000, v21, OS_LOG_TYPE_ERROR, "%s Could not read nodeName SQLite error: %d (%s, Extended: %d)", &v31, 0x22u);
        }

        v15 = 0;
LABEL_23:

        v11 = 3;
        v12 = v17;
        goto LABEL_24;
      }

      v15 = v19;
      v12 = v17;
      if (name)
      {
        v20 = v19;
        *name = v19;
        v15 = v19;
        v12 = v17;
      }
    }

    v11 = v16;
    if (!v16 || v16 == 101)
    {
      goto LABEL_27;
    }

LABEL_24:
    v22 = UAFGetLogCategory(&UAFLogContextStorage);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v25 = sqlite3_errmsg(self->_store);
      v26 = sqlite3_extended_errcode(self->_store);
      v31 = 136316162;
      v32 = "[UAFSubscriptionStoreManager _getUser:lastSeen:nodeName:]";
      v33 = 2112;
      *v34 = userCopy;
      *&v34[8] = 1024;
      *&v34[10] = v11;
      v35 = 2080;
      v36 = v25;
      v37 = 1024;
      v38 = v26;
      _os_log_error_impl(&dword_1BCF2C000, v22, OS_LOG_TYPE_ERROR, "%s Error executing read UserInformation key for '%@' SQLite error: %d (%s, Extended: %d)", &v31, 0x2Cu);
    }

LABEL_27:
  }

  sqlite3_reset(readUser);
  sqlite3_clear_bindings(readUser);

  v23 = *MEMORY[0x1E69E9840];
  return v11;
}

- (id)setUserLastSeenTime:(id)time node:(id)node time:(id)a5
{
  timeCopy = time;
  nodeCopy = node;
  v10 = a5;
  v18 = 0;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __61__UAFSubscriptionStoreManager_setUserLastSeenTime_node_time___block_invoke;
  v19[3] = &unk_1E7FFE230;
  v19[4] = self;
  v20 = timeCopy;
  v21 = nodeCopy;
  v22 = v10;
  v11 = v10;
  v12 = nodeCopy;
  v13 = timeCopy;
  [(UAFSubscriptionStoreManager *)self doDatabaseOperation:v19 useTransaction:0 logDescription:@"set last seen time" error:&v18];
  v14 = v18;
  v15 = v22;
  v16 = v14;

  return v14;
}

- (int)_setUserLastSeenTime:(id)time node:(id)node time:(id)a5
{
  v38 = *MEMORY[0x1E69E9840];
  timeCopy = time;
  nodeCopy = node;
  v10 = a5;
  v11 = [(UAFSubscriptionStoreManager *)self bindString:self->_writeUserLastSeen col:1 string:timeCopy];
  if (v11)
  {
    v12 = v11;
    v13 = UAFGetLogCategory(&UAFLogContextStorage);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = sqlite3_errmsg(self->_store);
      v15 = sqlite3_extended_errcode(self->_store);
      v28 = 136316162;
      v29 = "[UAFSubscriptionStoreManager _setUserLastSeenTime:node:time:]";
      v30 = 2112;
      v31 = timeCopy;
      v32 = 1024;
      v33 = v12;
      v34 = 2080;
      v35 = v14;
      v36 = 1024;
      v37 = v15;
      v16 = "%s Binding user to UserInformation: '%@' SQLite error: %d (%s, Extended: %d)";
LABEL_10:
      _os_log_error_impl(&dword_1BCF2C000, v13, OS_LOG_TYPE_ERROR, v16, &v28, 0x2Cu);
      goto LABEL_14;
    }

    goto LABEL_14;
  }

  v17 = [(UAFSubscriptionStoreManager *)self bindDate:self->_writeUserLastSeen col:2 date:v10];
  if (v17)
  {
    v12 = v17;
    v13 = UAFGetLogCategory(&UAFLogContextStorage);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v18 = sqlite3_errmsg(self->_store);
      v19 = sqlite3_extended_errcode(self->_store);
      v28 = 136316162;
      v29 = "[UAFSubscriptionStoreManager _setUserLastSeenTime:node:time:]";
      v30 = 2112;
      v31 = timeCopy;
      v32 = 1024;
      v33 = v12;
      v34 = 2080;
      v35 = v18;
      v36 = 1024;
      v37 = v19;
      v16 = "%s Binding date to UserInformation: '%@' SQLite error: %d (%s, Extended: %d)";
      goto LABEL_10;
    }

LABEL_14:

    goto LABEL_15;
  }

  v20 = [(UAFSubscriptionStoreManager *)self bindString:self->_writeUserLastSeen col:3 string:nodeCopy];
  if (v20)
  {
    v12 = v20;
    v13 = UAFGetLogCategory(&UAFLogContextStorage);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v21 = sqlite3_errmsg(self->_store);
      v22 = sqlite3_extended_errcode(self->_store);
      v28 = 136316162;
      v29 = "[UAFSubscriptionStoreManager _setUserLastSeenTime:node:time:]";
      v30 = 2112;
      v31 = timeCopy;
      v32 = 1024;
      v33 = v12;
      v34 = 2080;
      v35 = v21;
      v36 = 1024;
      v37 = v22;
      v16 = "%s Binding node to UserInformation: '%@' SQLite error: %d (%s, Extended: %d)";
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  v23 = sqlite3_step(self->_writeUserLastSeen);
  v12 = v23;
  if (v23 && v23 != 101)
  {
    v13 = UAFGetLogCategory(&UAFLogContextStorage);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    v26 = sqlite3_errmsg(self->_store);
    v27 = sqlite3_extended_errcode(self->_store);
    v28 = 136316162;
    v29 = "[UAFSubscriptionStoreManager _setUserLastSeenTime:node:time:]";
    v30 = 2112;
    v31 = timeCopy;
    v32 = 1024;
    v33 = v12;
    v34 = 2080;
    v35 = v26;
    v36 = 1024;
    v37 = v27;
    v16 = "%s Executing set UserInformation failed for: '%@' SQLite error: %d (%s, Extended: %d)";
    goto LABEL_10;
  }

LABEL_15:
  sqlite3_reset(self->_writeUserLastSeen);
  sqlite3_clear_bindings(self->_writeUserLastSeen);

  v24 = *MEMORY[0x1E69E9840];
  return v12;
}

- (id)getUsersOlderThanDate:(id)date error:(id *)error
{
  dateCopy = date;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__6;
  v17 = __Block_byref_object_dispose__6;
  v18 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __59__UAFSubscriptionStoreManager_getUsersOlderThanDate_error___block_invoke;
  v10[3] = &unk_1E7FFE118;
  v10[4] = self;
  v7 = dateCopy;
  v11 = v7;
  v12 = &v13;
  [(UAFSubscriptionStoreManager *)self doDatabaseOperation:v10 useTransaction:1 logDescription:@"getting users older than" error:error];
  v8 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v8;
}

uint64_t __59__UAFSubscriptionStoreManager_getUsersOlderThanDate_error___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) bindDate:*(*(a1 + 32) + 208) col:1 date:*(a1 + 40)];
  if (v2)
  {
    v3 = v2;
    v4 = UAFGetLogCategory(&UAFLogContextStorage);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v19 = *(a1 + 40);
      v20 = sqlite3_errmsg(*(*(a1 + 32) + 8));
      v21 = sqlite3_extended_errcode(*(*(a1 + 32) + 8));
      *buf = 136316162;
      v24 = "[UAFSubscriptionStoreManager getUsersOlderThanDate:error:]_block_invoke";
      v25 = 2112;
      v26 = v19;
      v27 = 1024;
      v28 = v3;
      v29 = 2080;
      v30 = v20;
      v31 = 1024;
      v32 = v21;
      _os_log_error_impl(&dword_1BCF2C000, v4, OS_LOG_TYPE_ERROR, "%s Binding date to UserInformation: '%@' SQLite error: %d (%s, Extended: %d)", buf, 0x2Cu);
    }
  }

  else if (sqlite3_step(*(*(a1 + 32) + 208)) == 100)
  {
    v3 = 0;
    *&v5 = 136315138;
    v22 = v5;
    do
    {
      v6 = [*(a1 + 32) readString:*(*(a1 + 32) + 208) col:{0, v22}];
      if (v6)
      {
        v7 = [*(a1 + 32) readDate:*(*(a1 + 32) + 208) col:1];
        if (v7)
        {
          v8 = [*(a1 + 32) readString:*(*(a1 + 32) + 208) col:2];
          if (v8)
          {
            v9 = *(*(*(a1 + 48) + 8) + 40);
            if (!v9)
            {
              v10 = [MEMORY[0x1E695DF90] dictionary];
              v11 = *(*(a1 + 48) + 8);
              v12 = *(v11 + 40);
              *(v11 + 40) = v10;

              v9 = *(*(*(a1 + 48) + 8) + 40);
            }

            v13 = [v9 objectForKeyedSubscript:v6];

            if (!v13)
            {
              v14 = [MEMORY[0x1E695DF90] dictionary];
              [*(*(*(a1 + 48) + 8) + 40) setObject:v14 forKeyedSubscript:v6];
            }

            v15 = [*(*(*(a1 + 48) + 8) + 40) objectForKeyedSubscript:v6];
            [v15 setObject:v7 forKeyedSubscript:@"LastSeen"];

            v16 = [*(*(*(a1 + 48) + 8) + 40) objectForKeyedSubscript:v6];
            [v16 setObject:v8 forKeyedSubscript:@"Node"];
          }

          else
          {
            v16 = UAFGetLogCategory(&UAFLogContextStorage);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              *buf = v22;
              v24 = "[UAFSubscriptionStoreManager getUsersOlderThanDate:error:]_block_invoke";
              _os_log_error_impl(&dword_1BCF2C000, v16, OS_LOG_TYPE_ERROR, "%s Unexpectedly retrieved a nil node from UserInformation", buf, 0xCu);
            }

            v3 = 3;
          }
        }

        else
        {
          v8 = UAFGetLogCategory(&UAFLogContextStorage);
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            *buf = v22;
            v24 = "[UAFSubscriptionStoreManager getUsersOlderThanDate:error:]_block_invoke";
            _os_log_error_impl(&dword_1BCF2C000, v8, OS_LOG_TYPE_ERROR, "%s Unexpectedly retrieved a nil date from UserInformation", buf, 0xCu);
          }

          v3 = 3;
        }
      }

      else
      {
        v7 = UAFGetLogCategory(&UAFLogContextStorage);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          *buf = v22;
          v24 = "[UAFSubscriptionStoreManager getUsersOlderThanDate:error:]_block_invoke";
          _os_log_error_impl(&dword_1BCF2C000, v7, OS_LOG_TYPE_ERROR, "%s Unexpectedly retrieved a nil user from UserInformation", buf, 0xCu);
        }

        v3 = 3;
      }
    }

    while (sqlite3_step(*(*(a1 + 32) + 208)) == 100);
  }

  else
  {
    v3 = 0;
  }

  sqlite3_reset(*(*(a1 + 32) + 208));
  sqlite3_clear_bindings(*(*(a1 + 32) + 208));
  v17 = *MEMORY[0x1E69E9840];
  return v3;
}

- (id)removeUser:(id)user
{
  userCopy = user;
  v10 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __42__UAFSubscriptionStoreManager_removeUser___block_invoke;
  v11[3] = &unk_1E7FFE1E0;
  v11[4] = self;
  v12 = userCopy;
  v5 = userCopy;
  [(UAFSubscriptionStoreManager *)self doDatabaseOperation:v11 useTransaction:0 logDescription:@"remove user" error:&v10];
  v6 = v10;
  v7 = v12;
  v8 = v6;

  return v6;
}

- (int)_removeUser:(id)user
{
  v26 = *MEMORY[0x1E69E9840];
  userCopy = user;
  v5 = [(UAFSubscriptionStoreManager *)self bindString:self->_removeUser col:1 string:userCopy];
  if (v5)
  {
    v6 = v5;
    v7 = UAFGetLogCategory(&UAFLogContextStorage);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
LABEL_3:

      goto LABEL_4;
    }

    v14 = sqlite3_errmsg(self->_store);
    v15 = sqlite3_extended_errcode(self->_store);
    v16 = 136316162;
    v17 = "[UAFSubscriptionStoreManager _removeUser:]";
    v18 = 2112;
    v19 = userCopy;
    v20 = 1024;
    v21 = v6;
    v22 = 2080;
    v23 = v14;
    v24 = 1024;
    v25 = v15;
    v13 = "%s Binding of user failed: '%@' SQLite error: %d (%s, Extended: %d)";
LABEL_10:
    _os_log_error_impl(&dword_1BCF2C000, v7, OS_LOG_TYPE_ERROR, v13, &v16, 0x2Cu);
    goto LABEL_3;
  }

  v10 = sqlite3_step(self->_removeUser);
  v6 = v10;
  if (v10 && v10 != 101)
  {
    v7 = UAFGetLogCategory(&UAFLogContextStorage);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_3;
    }

    v11 = sqlite3_errmsg(self->_store);
    v12 = sqlite3_extended_errcode(self->_store);
    v16 = 136316162;
    v17 = "[UAFSubscriptionStoreManager _removeUser:]";
    v18 = 2112;
    v19 = userCopy;
    v20 = 1024;
    v21 = v6;
    v22 = 2080;
    v23 = v11;
    v24 = 1024;
    v25 = v12;
    v13 = "%s Removal of user failed: '%@' SQLite error: %d (%s, Extended: %d)";
    goto LABEL_10;
  }

LABEL_4:
  sqlite3_reset(self->_removeUser);
  sqlite3_clear_bindings(self->_removeUser);

  v8 = *MEMORY[0x1E69E9840];
  return v6;
}

- (id)removeAllUsers
{
  v3 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __45__UAFSubscriptionStoreManager_removeAllUsers__block_invoke;
  v4[3] = &unk_1E7FFE168;
  v4[4] = self;
  [(UAFSubscriptionStoreManager *)self doDatabaseOperation:v4 useTransaction:1 logDescription:@"removing all users" error:&v3];
  return v3;
}

uint64_t __45__UAFSubscriptionStoreManager_removeAllUsers__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = sqlite3_step(*(*(a1 + 32) + 224));
  v3 = v2;
  if (v2 && v2 != 101)
  {
    v4 = UAFGetLogCategory(&UAFLogContextStorage);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = sqlite3_errmsg(*(*(a1 + 32) + 8));
      v8 = sqlite3_extended_errcode(*(*(a1 + 32) + 8));
      v9 = 136315906;
      v10 = "[UAFSubscriptionStoreManager removeAllUsers]_block_invoke";
      v11 = 1024;
      v12 = v3;
      v13 = 2080;
      v14 = v7;
      v15 = 1024;
      v16 = v8;
      _os_log_error_impl(&dword_1BCF2C000, v4, OS_LOG_TYPE_ERROR, "%s Removing users failed SQLite error: %d (%s, Extended: %d)", &v9, 0x22u);
    }
  }

  sqlite3_reset(*(*(a1 + 32) + 224));
  sqlite3_clear_bindings(*(*(a1 + 32) + 224));
  v5 = *MEMORY[0x1E69E9840];
  return v3;
}

- (int)executeSQL:(const char *)l
{
  v18 = *MEMORY[0x1E69E9840];
  if (self->_store)
  {
    errmsg = 0;
    v5 = sqlite3_vmprintf(l, &v19);
    v6 = sqlite3_exec(self->_store, v5, 0, 0, &errmsg);
    if (v6)
    {
      v7 = errmsg == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      v8 = UAFGetLogCategory(&UAFLogContextStorage);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v13 = "[UAFSubscriptionStoreManager executeSQL:]";
        v14 = 2080;
        lCopy = l;
        v16 = 2080;
        v17 = errmsg;
        _os_log_error_impl(&dword_1BCF2C000, v8, OS_LOG_TYPE_ERROR, "%s execute(%s) Error: %s", buf, 0x20u);
      }

      sqlite3_free(errmsg);
    }

    sqlite3_free(v5);
  }

  else
  {
    v6 = 1;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

- (int)bindString:(sqlite3_stmt *)string col:(int)col string:(id)a5
{
  uTF8String = [a5 UTF8String];

  return sqlite3_bind_text(string, col, uTF8String, -1, 0xFFFFFFFFFFFFFFFFLL);
}

- (int)bindData:(sqlite3_stmt *)data col:(int)col data:(id)a5
{
  v7 = a5;
  bytes = [v7 bytes];
  v9 = [v7 length];

  return sqlite3_bind_blob(data, col, bytes, v9, 0xFFFFFFFFFFFFFFFFLL);
}

- (int)bindDate:(sqlite3_stmt *)date col:(int)col date:(id)a5
{
  [a5 timeIntervalSince1970];

  return sqlite3_bind_double(date, col, v7);
}

- (id)readData:(sqlite3_stmt *)data col:(int)col
{
  v6 = sqlite3_column_bytes(data, col);
  v7 = sqlite3_column_blob(data, col);
  if (v6 < 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = [MEMORY[0x1E695DEF0] dataWithBytes:v7 length:v6];
  }

  return v8;
}

- (id)readString:(sqlite3_stmt *)string col:(int)col
{
  v4 = sqlite3_column_text(string, col);
  if (v4)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v4];
  }

  return v4;
}

- (id)readDate:(sqlite3_stmt *)date col:(int)col
{
  v4 = sqlite3_column_double(date, col);
  v5 = MEMORY[0x1E695DF00];

  return [v5 dateWithTimeIntervalSince1970:v4];
}

@end