@interface STConcreteCoreDataObserver
+ (id)_updatedOrInsertedChangePredicate;
- (STConcreteCoreDataObserver)initWithPersistentContainer:(id)a3;
- (id)_coreDataChangesFromInterestingDeleteChanges:(id)a3 withObservationFilters:(id)a4 inContext:(id)a5;
- (id)_coreDataChangesFromInterestingUpsertChanges:(id)a3 withObservationFilters:(id)a4 inContext:(id)a5;
- (id)_filteredObjectIDsFromObjects:(id)a3 predicate:(id)a4;
- (id)_filteredPersistentHistoryChangesFromChanges:(id)a3 predicate:(id)a4;
- (id)_filteredTombstonesFromChanges:(id)a3 predicate:(id)a4;
- (void)addObservationFiltersByTriggerPredicate:(id)a3 forDelegate:(id)a4;
- (void)dealloc;
- (void)debouncer:(id)a3 didDebounce:(id)a4;
- (void)handleManagedObjectContextDidMergeChangesNotification:(id)a3;
- (void)start;
@end

@implementation STConcreteCoreDataObserver

- (STConcreteCoreDataObserver)initWithPersistentContainer:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = STConcreteCoreDataObserver;
  v5 = [(STConcreteCoreDataObserver *)&v15 init];
  persistentContainer = v5->_persistentContainer;
  v5->_persistentContainer = v4;
  v7 = v4;

  v8 = [(NSPersistentContainer *)v7 viewContext];
  managedObjectContext = v5->_managedObjectContext;
  v5->_managedObjectContext = v8;

  v10 = +[NSMapTable weakToStrongObjectsMapTable];
  triggerableObservationFiltersByDelegate = v5->_triggerableObservationFiltersByDelegate;
  v5->_triggerableObservationFiltersByDelegate = v10;

  v12 = [[STDebouncer alloc] initWithMinCoalescenceInterval:5.0 maxCoalescenceInterval:10.0];
  changeNotificationDebouncer = v5->_changeNotificationDebouncer;
  v5->_changeNotificationDebouncer = v12;

  [(STDebouncer *)v5->_changeNotificationDebouncer setDelegate:v5];
  return v5;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self->_managedObjectContextObserver];

  v4.receiver = self;
  v4.super_class = STConcreteCoreDataObserver;
  [(STConcreteCoreDataObserver *)&v4 dealloc];
}

- (void)start
{
  objc_initWeak(&location, self);
  v3 = +[NSDate now];
  [(STConcreteCoreDataObserver *)self setStartTime:v3];

  v4 = +[NSNotificationCenter defaultCenter];
  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = sub_100013028;
  v9 = &unk_1001A2FF8;
  objc_copyWeak(&v10, &location);
  v5 = [v4 addObserverForName:NSManagedObjectContextDidSaveObjectIDsNotification object:0 queue:0 usingBlock:&v6];
  [(STConcreteCoreDataObserver *)self setManagedObjectContextObserver:v5, v6, v7, v8, v9];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)addObservationFiltersByTriggerPredicate:(id)a3 forDelegate:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(STConcreteCoreDataObserver *)self triggerableObservationFiltersByDelegate];
  [v8 setObject:v7 forKey:v6];
}

- (void)debouncer:(id)a3 didDebounce:(id)a4
{
  v9 = a4;
  v6 = a3;
  v7 = [(STConcreteCoreDataObserver *)self changeNotificationDebouncer];

  v8 = v9;
  if (v7 == v6 && v9)
  {
    [(STConcreteCoreDataObserver *)self handleManagedObjectContextDidMergeChangesNotification:v9];
    v8 = v9;
  }
}

- (void)handleManagedObjectContextDidMergeChangesNotification:(id)a3
{
  [(STConcreteCoreDataObserver *)self managedObjectContext];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100013230;
  v5[3] = &unk_1001A3020;
  v6 = v5[4] = self;
  v4 = v6;
  [v4 performBlock:v5];
}

+ (id)_updatedOrInsertedChangePredicate
{
  if (qword_1001E38D8 != -1)
  {
    sub_10011257C();
  }

  v3 = qword_1001E38D0;

  return v3;
}

- (id)_filteredPersistentHistoryChangesFromChanges:(id)a3 predicate:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[STConcreteCoreDataObserver _updatedOrInsertedChangePredicate];
  v12[0] = v7;
  v12[1] = v5;
  v8 = [NSArray arrayWithObjects:v12 count:2];
  v9 = [NSCompoundPredicate andPredicateWithSubpredicates:v8];

  v10 = [v6 filteredArrayUsingPredicate:v9];

  return v10;
}

- (id)_coreDataChangesFromInterestingUpsertChanges:(id)a3 withObservationFilters:(id)a4 inContext:(id)a5
{
  v7 = a3;
  v41 = a4;
  v8 = a5;
  v9 = [v7 valueForKeyPath:@"changedObjectID"];
  v10 = +[STLog coreDataObserver];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_100112590(v9);
  }

  v49 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v9 count]);
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  obj = v9;
  v11 = [obj countByEnumeratingWithState:&v58 objects:v66 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v59;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v59 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v58 + 1) + 8 * i);
        v16 = [v8 objectWithID:v15];
        if (v16)
        {
          [v49 addObject:v16];
        }

        else
        {
          v17 = +[STLog coreDataObserver];
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v65 = v15;
            _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to fetch managed object for objectID: %{public}@", buf, 0xCu);
          }
        }
      }

      v12 = [obj countByEnumeratingWithState:&v58 objects:v66 count:16];
    }

    while (v12);
  }

  if ([v49 count])
  {
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v42 = v41;
    v47 = [v42 countByEnumeratingWithState:&v54 objects:v63 count:16];
    v18 = 0;
    if (v47)
    {
      v45 = *v55;
      v43 = v8;
      do
      {
        for (j = 0; j != v47; j = j + 1)
        {
          if (*v55 != v45)
          {
            objc_enumerationMutation(v42);
          }

          v20 = *(*(&v54 + 1) + 8 * j);
          v21 = [v20 predicate];
          v22 = [(STConcreteCoreDataObserver *)self _filteredObjectIDsFromObjects:v49 predicate:v21];

          if ([v22 count])
          {
            v23 = [v20 primaryType];
            v24 = [v20 secondaryType];
            v25 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v22 count]);

            v52 = 0u;
            v53 = 0u;
            v50 = 0u;
            v51 = 0u;
            v48 = v22;
            v26 = v22;
            v27 = [v26 countByEnumeratingWithState:&v50 objects:v62 count:16];
            if (v27)
            {
              v28 = v27;
              v29 = *v51;
              do
              {
                for (k = 0; k != v28; k = k + 1)
                {
                  if (*v51 != v29)
                  {
                    objc_enumerationMutation(v26);
                  }

                  v31 = [[STCoreDataChange alloc] initWithChangeIdentifier:*(*(&v50 + 1) + 8 * k) primaryType:v23 secondaryType:v24];
                  [v25 addObject:v31];
                }

                v28 = [v26 countByEnumeratingWithState:&v50 objects:v62 count:16];
              }

              while (v28);
            }

            v18 = v25;
            v8 = v43;
            v22 = v48;
          }
        }

        v47 = [v42 countByEnumeratingWithState:&v54 objects:v63 count:16];
      }

      while (v47);
    }

    v32 = [v18 copy];
  }

  else
  {
    v18 = +[STLog coreDataObserver];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      sub_10011260C(v18, v33, v34, v35, v36, v37, v38, v39);
    }

    v32 = 0;
  }

  return v32;
}

- (id)_coreDataChangesFromInterestingDeleteChanges:(id)a3 withObservationFilters:(id)a4 inContext:(id)a5
{
  v29 = a3;
  v7 = a4;
  v25 = a5;
  v8 = +[STLog coreDataObserver];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_100112644(v29);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v7;
  v30 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
  v9 = 0;
  if (v30)
  {
    v27 = *v37;
    do
    {
      for (i = 0; i != v30; i = i + 1)
      {
        if (*v37 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v36 + 1) + 8 * i);
        v12 = [v11 predicate];
        v13 = [(STConcreteCoreDataObserver *)self _filteredTombstonesFromChanges:v29 predicate:v12];

        if ([v13 count])
        {
          v14 = [v11 primaryType];
          v15 = [v11 secondaryType];
          v16 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v13 count]);

          v34 = 0u;
          v35 = 0u;
          v32 = 0u;
          v33 = 0u;
          v31 = v13;
          v17 = v13;
          v18 = [v17 countByEnumeratingWithState:&v32 objects:v40 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v33;
            do
            {
              for (j = 0; j != v19; j = j + 1)
              {
                if (*v33 != v20)
                {
                  objc_enumerationMutation(v17);
                }

                v22 = [[STCoreDataChange alloc] initWithChangeIdentifier:*(*(&v32 + 1) + 8 * j) primaryType:v14 secondaryType:v15];
                [v16 addObject:v22];
              }

              v19 = [v17 countByEnumeratingWithState:&v32 objects:v40 count:16];
            }

            while (v19);
          }

          v9 = v16;
          v13 = v31;
        }
      }

      v30 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v30);
  }

  v23 = [v9 copy];

  return v23;
}

- (id)_filteredObjectIDsFromObjects:(id)a3 predicate:(id)a4
{
  v5 = a4;
  v6 = [a3 mutableCopy];
  [v6 filterUsingPredicate:v5];

  v7 = [v6 valueForKeyPath:@"objectID"];

  return v7;
}

- (id)_filteredTombstonesFromChanges:(id)a3 predicate:(id)a4
{
  v5 = a4;
  v6 = [a3 mutableCopy];
  [v6 filterUsingPredicate:v5];

  v7 = [v6 valueForKeyPath:@"tombstone"];

  return v7;
}

@end