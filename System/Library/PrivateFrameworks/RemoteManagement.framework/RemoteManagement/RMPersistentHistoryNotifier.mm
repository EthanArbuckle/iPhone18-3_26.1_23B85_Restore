@interface RMPersistentHistoryNotifier
+ (id)sharedQueryQueue;
- (RMPersistentHistoryNotifier)initWithContext:(id)context;
- (RMPersistentHistoryNotifier)initWithPersistentHistoryToken:(id)token context:(id)context;
- (RMPersistentHistoryNotifierDelegate)delegate;
- (void)_delayedQuery;
- (void)_managedObjectContextDidSave:(id)save;
- (void)_queryForTransactionsWithCompletion:(id)completion;
- (void)_scheduleQueryForTransactions;
- (void)dealloc;
- (void)start;
@end

@implementation RMPersistentHistoryNotifier

- (RMPersistentHistoryNotifier)initWithPersistentHistoryToken:(id)token context:(id)context
{
  tokenCopy = token;
  v7 = [(RMPersistentHistoryNotifier *)self initWithContext:context];
  if (v7)
  {
    v8 = [tokenCopy copy];
    persistentHistoryToken = v7->_persistentHistoryToken;
    v7->_persistentHistoryToken = v8;

    v7->_shouldUsePersistentHistoryToken = 1;
    v10 = [[NSConditionLock alloc] initWithCondition:0];
    queryCondition = v7->_queryCondition;
    v7->_queryCondition = v10;

    v7->_queryNeeded = 0;
  }

  return v7;
}

- (RMPersistentHistoryNotifier)initWithContext:(id)context
{
  contextCopy = context;
  v11.receiver = self;
  v11.super_class = RMPersistentHistoryNotifier;
  v6 = [(RMPersistentHistoryNotifier *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, context);
    v7->_shouldUsePersistentHistoryToken = 0;
    v8 = [[NSConditionLock alloc] initWithCondition:0];
    queryCondition = v7->_queryCondition;
    v7->_queryCondition = v8;

    v7->_queryNeeded = 0;
  }

  return v7;
}

- (void)dealloc
{
  if ([(RMPersistentHistoryNotifier *)self hasStarted]&& os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Stopped persistent history notifier (%p).", buf, 0xCu);
  }

  v3.receiver = self;
  v3.super_class = RMPersistentHistoryNotifier;
  [(RMPersistentHistoryNotifier *)&v3 dealloc];
}

+ (id)sharedQueryQueue
{
  if (qword_1000E6A20 != -1)
  {
    sub_10005AB98();
  }

  v3 = qword_1000E6A18;

  return v3;
}

- (void)start
{
  if ([(RMPersistentHistoryNotifier *)self hasStarted])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_10005AC1C();
    }
  }

  else
  {
    v3 = _os_activity_create(&_mh_execute_header, "Starting persistent history notifier", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    v11.opaque[0] = 0;
    v11.opaque[1] = 0;
    os_activity_scope_enter(v3, &v11);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_10005ABAC();
    }

    [(RMPersistentHistoryNotifier *)self setHasStarted:1];
    if (![(RMPersistentHistoryNotifier *)self shouldUsePersistentHistoryToken])
    {
      persistentHistoryToken = [(RMPersistentHistoryNotifier *)self persistentHistoryToken];
      v5 = persistentHistoryToken == 0;

      if (v5)
      {
        context = [(RMPersistentHistoryNotifier *)self context];
        persistentStoreCoordinator = [context persistentStoreCoordinator];

        persistentStores = [persistentStoreCoordinator persistentStores];
        v9 = [persistentStoreCoordinator currentPersistentHistoryTokenFromStores:persistentStores];
        [(RMPersistentHistoryNotifier *)self setPersistentHistoryToken:v9];
      }
    }

    v10 = +[NSNotificationCenter defaultCenter];
    [v10 addObserver:self selector:"_managedObjectContextDidSave:" name:NSManagedObjectContextDidSaveNotification object:0];

    [(RMPersistentHistoryNotifier *)self _scheduleQueryForTransactions];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Started persistent history notifier (%p).", buf, 0xCu);
    }

    os_activity_scope_leave(&v11);
  }
}

- (void)_managedObjectContextDidSave:(id)save
{
  object = [save object];
  context = [(RMPersistentHistoryNotifier *)self context];
  persistentStoreCoordinator = [object persistentStoreCoordinator];
  persistentStoreCoordinator2 = [context persistentStoreCoordinator];

  if (persistentStoreCoordinator == persistentStoreCoordinator2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_10005AC8C();
    }

    [(RMPersistentHistoryNotifier *)self _scheduleQueryForTransactions];
  }
}

- (void)_scheduleQueryForTransactions
{
  v3 = self->_queryCondition;
  [(NSConditionLock *)v3 lock];
  condition = [(NSConditionLock *)self->_queryCondition condition];
  switch(condition)
  {
    case 2:
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        sub_10005AD14();
      }

      [(RMPersistentHistoryNotifier *)self setQueryNeeded:1];
      v5 = v3;
      v6 = 2;
      goto LABEL_13;
    case 1:
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        sub_10005AD84();
      }

      v5 = v3;
      v6 = 1;
LABEL_13:
      [(NSConditionLock *)v5 unlockWithCondition:v6];
      break;
    case 0:
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        sub_10005ADF4();
      }

      [(NSConditionLock *)v3 unlockWithCondition:1];
      [(RMPersistentHistoryNotifier *)self _delayedQuery];
      break;
  }
}

- (void)_delayedQuery
{
  v3 = self->_queryCondition;
  objc_initWeak(&location, self);
  [(NSConditionLock *)v3 lockWhenCondition:1];
  [(NSConditionLock *)v3 unlockWithCondition:2];
  v4 = +[RMPersistentHistoryNotifier sharedQueryQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100059C7C;
  v6[3] = &unk_1000D11C8;
  objc_copyWeak(&v8, &location);
  v5 = v3;
  v7 = v5;
  [v4 addOperationWithBlock:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)_queryForTransactionsWithCompletion:(id)completion
{
  completionCopy = completion;
  selfCopy = self;
  delegate = [(RMPersistentHistoryNotifier *)self delegate];
  v4 = objc_opt_respondsToSelector();
  v5 = objc_opt_respondsToSelector();
  v91 = 0;
  v92 = &v91;
  v93 = 0x3032000000;
  v94 = sub_10005A668;
  v95 = sub_10005A678;
  v96 = 0;
  v85 = 0;
  v86 = &v85;
  v87 = 0x3032000000;
  v88 = sub_10005A668;
  v89 = sub_10005A678;
  v90 = 0;
  v79 = 0;
  v80 = &v79;
  v81 = 0x3032000000;
  v82 = sub_10005A668;
  v83 = sub_10005A678;
  v84 = 0;
  v73 = 0;
  v74 = &v73;
  v75 = 0x3032000000;
  v76 = sub_10005A668;
  v77 = sub_10005A678;
  v78 = 0;
  v69 = 0;
  v70 = &v69;
  v71 = 0x2020000000;
  v72 = 0;
  [(RMPersistentHistoryNotifier *)selfCopy context];
  v59[0] = _NSConcreteStackBlock;
  v59[1] = 3221225472;
  v59[2] = sub_10005A680;
  v59[3] = &unk_1000D26A0;
  v67 = v4 & 1;
  v60 = v68 = v5 & 1;
  v61 = selfCopy;
  v62 = &v85;
  v63 = &v69;
  v64 = &v79;
  v65 = &v91;
  v66 = &v73;
  v33 = v60;
  [v60 performBlockAndWait:v59];
  if (*(v70 + 24) == 1)
  {
    completionCopy[2]();
    goto LABEL_38;
  }

  ignoredTransactionAuthors = [(RMPersistentHistoryNotifier *)selfCopy ignoredTransactionAuthors];
  interestingEntities = [(RMPersistentHistoryNotifier *)selfCopy interestingEntities];
  v55 = 0;
  v56 = &v55;
  v57 = 0x2020000000;
  v58 = 0;
  v31 = interestingEntities;
  if (v4)
  {
    v7 = v51;
    v51[0] = _NSConcreteStackBlock;
    v51[1] = 3221225472;
    v51[2] = sub_10005A928;
    v51[3] = &unk_1000D26C8;
    v51[4] = interestingEntities;
    v52 = delegate;
    v53 = selfCopy;
    v54 = &v55;
    v8 = objc_retainBlock(v51);
  }

  else
  {
    if (!interestingEntities)
    {
      v8 = &stru_1000D2730;
      goto LABEL_8;
    }

    v7 = v50;
    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_10005A9CC;
    v50[3] = &unk_1000D26F0;
    v50[4] = interestingEntities;
    v8 = objc_retainBlock(v50);
  }

LABEL_8:
  if (v74[5])
  {
    v9 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      v26 = [v74[5] count];
      v27 = @"(none)";
      v28 = ignoredTransactionAuthors;
      if (!ignoredTransactionAuthors)
      {
        v28 = @"(none)";
      }

      v29 = v92[5];
      if (v31)
      {
        v27 = v31;
      }

      v30 = v86[5];
      *buf = 134219266;
      v100 = selfCopy;
      v101 = 2048;
      v102 = v26;
      v103 = 2112;
      v104 = v28;
      v105 = 2112;
      v106 = v27;
      v107 = 2112;
      v108 = v29;
      v109 = 2112;
      v110 = v30;
      _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Persistent history notifier (%p) processing transactions: %lu { authors = %@, entities = %@, old token = %@, new token = %@ }.", buf, 0x3Eu);
    }

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    obj = v74[5];
    v10 = [obj countByEnumeratingWithState:&v46 objects:v98 count:16];
    if (v10)
    {
      v41 = *v47;
      v39 = v5;
      do
      {
        v11 = 0;
        v40 = v10;
        do
        {
          if (*v47 != v41)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v46 + 1) + 8 * v11);
          v13 = objc_autoreleasePoolPush();
          author = [v12 author];
          if (author && ([v12 author], v15 = objc_claimAutoreleasedReturnValue(), v16 = -[__CFString containsObject:](ignoredTransactionAuthors, "containsObject:", v15), v15, v16))
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
            {
              *buf = 134218242;
              v100 = selfCopy;
              v101 = 2112;
              v102 = author;
              _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Persistent history notifier (%p) ignoring transaction from author %@", buf, 0x16u);
            }
          }

          else
          {
            v44 = 0u;
            v45 = 0u;
            v42 = 0u;
            v43 = 0u;
            changes = [v12 changes];
            v18 = [changes countByEnumeratingWithState:&v42 objects:v97 count:16];
            if (v18)
            {
              v19 = *v43;
LABEL_21:
              v20 = 0;
              while (1)
              {
                if (*v43 != v19)
                {
                  objc_enumerationMutation(changes);
                }

                v21 = *(*(&v42 + 1) + 8 * v20);
                if ((v8->invoke)(v8, v21))
                {
                  [v80[5] updateWithChange:v21];
                }

                if (v56[3])
                {
                  break;
                }

                if (v18 == ++v20)
                {
                  v18 = [changes countByEnumeratingWithState:&v42 objects:v97 count:16];
                  if (v18)
                  {
                    goto LABEL_21;
                  }

                  break;
                }
              }
            }

            v5 = v39;
            v10 = v40;
          }

          objc_autoreleasePoolPop(v13);
          v11 = v11 + 1;
        }

        while (v11 != v10);
        v10 = [obj countByEnumeratingWithState:&v46 objects:v98 count:16];
      }

      while (v10);
    }
  }

  persistentHistoryToken = [(RMPersistentHistoryNotifier *)selfCopy persistentHistoryToken];
  persistentHistoryToken2 = [v80[5] persistentHistoryToken];
  v24 = [persistentHistoryToken compareToken:persistentHistoryToken2 error:0] == 3;

  if (!v24)
  {
    if (v5)
    {
      [delegate persistentHistoryNotifier:selfCopy hasChanges:v80[5]];
    }

    persistentHistoryToken3 = [v80[5] persistentHistoryToken];
    [(RMPersistentHistoryNotifier *)selfCopy setPersistentHistoryToken:persistentHistoryToken3];
  }

  completionCopy[2]();

  _Block_object_dispose(&v55, 8);
LABEL_38:

  _Block_object_dispose(&v69, 8);
  _Block_object_dispose(&v73, 8);

  _Block_object_dispose(&v79, 8);
  _Block_object_dispose(&v85, 8);

  _Block_object_dispose(&v91, 8);
}

- (RMPersistentHistoryNotifierDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end