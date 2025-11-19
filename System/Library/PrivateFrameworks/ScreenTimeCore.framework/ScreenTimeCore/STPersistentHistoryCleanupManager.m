@interface STPersistentHistoryCleanupManager
+ (BOOL)_wouldDeletingTransactionsBeforeDate:(id)a3 causeExpiryOfToken:(id)a4 forStore:(id)a5 inManagedObjectContext:(id)a6;
+ (id)_buildChangeDateForHourAge:(int64_t)a3 fromDate:(id)a4;
+ (id)_transactionsFoundByRequest:(id)a3 forStore:(id)a4 inManagedObjectContext:(id)a5 error:(id *)a6;
- (BOOL)_deletePersistentHistoryInContext:(id)a3 beforeDate:(id)a4 error:(id *)a5;
- (BOOL)cleanUpInContext:(id)a3 error:(id *)a4;
- (STPersistentHistoryCleanupManager)initWithRelevantStores:(id)a3 hourAge:(int64_t)a4 historyTokenForStore:(id)a5;
@end

@implementation STPersistentHistoryCleanupManager

- (STPersistentHistoryCleanupManager)initWithRelevantStores:(id)a3 hourAge:(int64_t)a4 historyTokenForStore:(id)a5
{
  v8 = a3;
  v16.receiver = self;
  v16.super_class = STPersistentHistoryCleanupManager;
  v9 = a5;
  v10 = [(STPersistentHistoryCleanupManager *)&v16 init];
  relevantStores = v10->_relevantStores;
  v10->_relevantStores = v8;
  v12 = v8;

  v10->_hourAge = a4;
  v13 = objc_retainBlock(v9);

  historyTokenForStore = v10->_historyTokenForStore;
  v10->_historyTokenForStore = v13;

  return v10;
}

- (BOOL)cleanUpInContext:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(STPersistentHistoryCleanupManager *)self hourAge];
  v8 = objc_opt_new();
  v9 = [STPersistentHistoryCleanupManager _buildChangeDateForHourAge:v7 fromDate:v8];

  LOBYTE(a4) = [(STPersistentHistoryCleanupManager *)self _deletePersistentHistoryInContext:v6 beforeDate:v9 error:a4];
  return a4;
}

- (BOOL)_deletePersistentHistoryInContext:(id)a3 beforeDate:(id)a4 error:(id *)a5
{
  v9 = a3;
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
  v10 = a4;
  v16 = v10;
  v11 = v9;
  v17 = v11;
  v18 = &v27;
  v19 = &v21;
  v20 = a2;
  [v11 performBlockAndWait:v15];
  if (a5)
  {
    v12 = v22[5];
    if (v12)
    {
      *a5 = v12;
    }
  }

  v13 = *(v28 + 24);

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);

  return v13;
}

+ (BOOL)_wouldDeletingTransactionsBeforeDate:(id)a3 causeExpiryOfToken:(id)a4 forStore:(id)a5 inManagedObjectContext:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v12 = [NSPersistentHistoryChangeRequest fetchHistoryAfterToken:a4];
  v23 = 0;
  v13 = [STPersistentHistoryCleanupManager _transactionsFoundByRequest:v12 forStore:v10 inManagedObjectContext:v11 error:&v23];
  v14 = v23;
  if (v13)
  {
    v15 = [NSPersistentHistoryChangeRequest fetchHistoryAfterDate:v9];
    v22 = v14;
    v16 = [STPersistentHistoryCleanupManager _transactionsFoundByRequest:v15 forStore:v10 inManagedObjectContext:v11 error:&v22];
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

+ (id)_transactionsFoundByRequest:(id)a3 forStore:(id)a4 inManagedObjectContext:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
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
  v12 = v9;
  v19 = v12;
  v13 = v10;
  v20 = v13;
  v14 = v11;
  v21 = v14;
  v22 = &v24;
  v23 = &v30;
  [v14 performBlockAndWait:v18];
  if (a6)
  {
    v15 = v25[5];
    if (v15)
    {
      *a6 = v15;
    }
  }

  v16 = v31[5];

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);

  return v16;
}

+ (id)_buildChangeDateForHourAge:(int64_t)a3 fromDate:(id)a4
{
  v5 = a4;
  v6 = +[NSCalendar currentCalendar];
  v7 = [v6 dateByAddingUnit:32 value:-a3 toDate:v5 options:0];

  return v7;
}

@end