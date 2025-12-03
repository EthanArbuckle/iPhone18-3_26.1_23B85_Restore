@interface STPersistentHistoryCleanupManager
+ (BOOL)_wouldDeletingTransactionsBeforeDate:(id)date causeExpiryOfToken:(id)token forStore:(id)store inManagedObjectContext:(id)context;
+ (id)_buildChangeDateForHourAge:(int64_t)age fromDate:(id)date;
+ (id)_transactionsFoundByRequest:(id)request forStore:(id)store inManagedObjectContext:(id)context error:(id *)error;
- (BOOL)_deletePersistentHistoryInContext:(id)context beforeDate:(id)date error:(id *)error;
- (BOOL)cleanUpInContext:(id)context error:(id *)error;
- (STPersistentHistoryCleanupManager)initWithRelevantStores:(id)stores hourAge:(int64_t)age historyTokenForStore:(id)store;
@end

@implementation STPersistentHistoryCleanupManager

- (STPersistentHistoryCleanupManager)initWithRelevantStores:(id)stores hourAge:(int64_t)age historyTokenForStore:(id)store
{
  storesCopy = stores;
  v16.receiver = self;
  v16.super_class = STPersistentHistoryCleanupManager;
  storeCopy = store;
  v10 = [(STPersistentHistoryCleanupManager *)&v16 init];
  relevantStores = v10->_relevantStores;
  v10->_relevantStores = storesCopy;
  v12 = storesCopy;

  v10->_hourAge = age;
  v13 = objc_retainBlock(storeCopy);

  historyTokenForStore = v10->_historyTokenForStore;
  v10->_historyTokenForStore = v13;

  return v10;
}

- (BOOL)cleanUpInContext:(id)context error:(id *)error
{
  contextCopy = context;
  hourAge = [(STPersistentHistoryCleanupManager *)self hourAge];
  v8 = objc_opt_new();
  v9 = [STPersistentHistoryCleanupManager _buildChangeDateForHourAge:hourAge fromDate:v8];

  LOBYTE(error) = [(STPersistentHistoryCleanupManager *)self _deletePersistentHistoryInContext:contextCopy beforeDate:v9 error:error];
  return error;
}

- (BOOL)_deletePersistentHistoryInContext:(id)context beforeDate:(id)date error:(id *)error
{
  contextCopy = context;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 1;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_100050858;
  v25 = sub_100050868;
  v26 = 0;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100050870;
  v15[3] = &unk_1001A47C0;
  v15[4] = self;
  dateCopy = date;
  v16 = dateCopy;
  v11 = contextCopy;
  v17 = v11;
  v18 = &v27;
  v19 = &v21;
  v20 = a2;
  [v11 performBlockAndWait:v15];
  if (error)
  {
    v12 = v22[5];
    if (v12)
    {
      *error = v12;
    }
  }

  v13 = *(v28 + 24);

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);

  return v13;
}

+ (BOOL)_wouldDeletingTransactionsBeforeDate:(id)date causeExpiryOfToken:(id)token forStore:(id)store inManagedObjectContext:(id)context
{
  dateCopy = date;
  storeCopy = store;
  contextCopy = context;
  v12 = [NSPersistentHistoryChangeRequest fetchHistoryAfterToken:token];
  v23 = 0;
  v13 = [STPersistentHistoryCleanupManager _transactionsFoundByRequest:v12 forStore:storeCopy inManagedObjectContext:contextCopy error:&v23];
  v14 = v23;
  if (v13)
  {
    v15 = [NSPersistentHistoryChangeRequest fetchHistoryAfterDate:dateCopy];
    v22 = v14;
    v16 = [STPersistentHistoryCleanupManager _transactionsFoundByRequest:v15 forStore:storeCopy inManagedObjectContext:contextCopy error:&v22];
    v17 = v22;

    if (v16)
    {
      v18 = [v16 count];
      v19 = v18 > [v13 count];
    }

    else
    {
      v20 = +[STLog persistence];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_100119044(v17, v20);
      }

      v19 = 1;
    }
  }

  else
  {
    v15 = +[STLog persistence];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1001190BC(v14, v15);
    }

    v19 = 1;
    v17 = v14;
  }

  return v19;
}

+ (id)_transactionsFoundByRequest:(id)request forStore:(id)store inManagedObjectContext:(id)context error:(id *)error
{
  requestCopy = request;
  storeCopy = store;
  contextCopy = context;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = sub_100050858;
  v34 = sub_100050868;
  v35 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_100050858;
  v28 = sub_100050868;
  v29 = 0;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100050F7C;
  v18[3] = &unk_1001A47E8;
  v12 = requestCopy;
  v19 = v12;
  v13 = storeCopy;
  v20 = v13;
  v14 = contextCopy;
  v21 = v14;
  v22 = &v24;
  v23 = &v30;
  [v14 performBlockAndWait:v18];
  if (error)
  {
    v15 = v25[5];
    if (v15)
    {
      *error = v15;
    }
  }

  v16 = v31[5];

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);

  return v16;
}

+ (id)_buildChangeDateForHourAge:(int64_t)age fromDate:(id)date
{
  dateCopy = date;
  v6 = +[NSCalendar currentCalendar];
  v7 = [v6 dateByAddingUnit:32 value:-age toDate:dateCopy options:0];

  return v7;
}

@end