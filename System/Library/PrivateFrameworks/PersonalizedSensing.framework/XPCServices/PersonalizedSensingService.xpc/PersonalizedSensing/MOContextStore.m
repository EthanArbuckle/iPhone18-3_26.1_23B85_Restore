@interface MOContextStore
- (MOContextStore)initWithPersistenceManager:(id)a3;
- (void)fetchContextsGeneratedFromClientRequest:(id)a3 handler:(id)a4;
- (void)fetchContextsWithOption:(id)a3 handler:(id)a4;
- (void)removeContexts:(id)a3 handler:(id)a4;
- (void)removeExpiredContextWithHandler:(id)a3;
- (void)storeContexts:(id)a3 handler:(id)a4;
@end

@implementation MOContextStore

- (MOContextStore)initWithPersistenceManager:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v13.receiver = self;
    v13.super_class = MOContextStore;
    v6 = [(MOContextStore *)&v13 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_persistenceManager, a3);
      v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v9 = dispatch_queue_create("MOContextStore", v8);
      queue = v7->_queue;
      v7->_queue = v9;
    }

    self = v7;
    v11 = self;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)fetchContextsWithOption:(id)a3 handler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__0;
  v26 = __Block_byref_object_dispose__0;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__0;
  v20 = __Block_byref_object_dispose__0;
  v21 = objc_opt_new();
  v9 = [(MOContextStore *)self persistenceManager];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __50__MOContextStore_fetchContextsWithOption_handler___block_invoke;
  v11[3] = &unk_1000B4E30;
  v10 = v7;
  v12 = v10;
  v13 = &v22;
  v14 = &v16;
  v15 = a2;
  [v9 performBlockAndWait:v11];

  if (v8)
  {
    v8[2](v8, v17[5], v23[5]);
  }

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);
}

void __50__MOContextStore_fetchContextsWithOption_handler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MOContextMO fetchRequest];
  v5 = +[NSMutableArray array];
  if ([v5 count])
  {
    v6 = [NSCompoundPredicate andPredicateWithSubpredicates:v5];
    [v4 setPredicate:v6];
  }

  [v4 setReturnsObjectsAsFaults:0];
  v7 = [[NSSortDescriptor alloc] initWithKey:@"contextCreationTimestamp" ascending:1];
  v39 = v7;
  v8 = [NSArray arrayWithObjects:&v39 count:1];
  [v4 setSortDescriptors:v8];

  if ([*(a1 + 32) contextCount])
  {
    [v4 setFetchBatchSize:{objc_msgSend(*(a1 + 32), "contextCount")}];
  }

  v9 = *(*(a1 + 40) + 8);
  obj = *(v9 + 40);
  v10 = [v3 executeFetchRequest:v4 error:&obj];
  objc_storeStrong((v9 + 40), obj);
  v11 = _mo_log_facility_get_os_log(&MOLogFacilityContextStore);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v21 = NSStringFromSelector(*(a1 + 56));
    v22 = [v10 count];
    v23 = *(*(*(a1 + 40) + 8) + 40);
    *buf = 138413058;
    v32 = v21;
    v33 = 2112;
    v34 = v4;
    v35 = 2048;
    v36 = v22;
    v37 = 2112;
    v38 = v23;
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%@, request, %@, results count, %lu, error, %@", buf, 0x2Au);
  }

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v24 = v5;
    v12 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v10 count]);
    v13 = *(*(a1 + 48) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v15 = v10;
    v16 = [v15 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v26;
      do
      {
        v19 = 0;
        do
        {
          if (*v26 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = [[MOContext alloc] initWithContextMO:*(*(&v25 + 1) + 8 * v19)];
          if (v20)
          {
            [*(*(*(a1 + 48) + 8) + 40) addObject:v20];
          }

          v19 = v19 + 1;
        }

        while (v17 != v19);
        v17 = [v15 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v17);
    }

    v5 = v24;
  }

  [v3 reset];
}

- (void)storeContexts:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__0;
  v18 = __Block_byref_object_dispose__0;
  v19 = 0;
  if ([v6 count])
  {
    v8 = [(MOContextStore *)self persistenceManager];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = __40__MOContextStore_storeContexts_handler___block_invoke;
    v11[3] = &unk_1000B4E58;
    v12 = v6;
    v13 = &v14;
    [v8 performBlockAndWait:v11];

    v9 = v12;
  }

  else
  {
    v9 = _mo_log_facility_get_os_log(&MOLogFacilityContextStore);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "no contexts to be saved", v10, 2u);
    }
  }

  if (v7)
  {
    v7[2](v7, v15[5]);
  }

  _Block_object_dispose(&v14, 8);
}

void __40__MOContextStore_storeContexts_handler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v36 = a1;
  v35 = (a1 + 32);
  v4 = *(a1 + 32);
  v38 = [v4 countByEnumeratingWithState:&v41 objects:v51 count:16];
  v5 = 0;
  if (v38)
  {
    v6 = *v42;
    v37 = *v42;
    do
    {
      for (i = 0; i != v38; i = i + 1)
      {
        if (*v42 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v41 + 1) + 8 * i);
        v9 = +[MOContextMO fetchRequest];
        v10 = [v8 contextIdentifier];
        v11 = [NSPredicate predicateWithFormat:@"contextIdentifier == %@", v10];
        [v9 setPredicate:v11];

        v40 = 0;
        v12 = [v3 executeFetchRequest:v9 error:&v40];
        v13 = v40;
        v14 = v13;
        if (v13)
        {
          v15 = v13;

          v16 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            __40__MOContextStore_storeContexts_handler___block_invoke_cold_1(v49, v15, &v50, v16);
          }

          goto LABEL_16;
        }

        if (![v12 count] || (objc_msgSend(v12, "lastObject"), (v17 = objc_claimAutoreleasedReturnValue()) == 0))
        {
          v15 = v5;
LABEL_16:
          v21 = _mo_log_facility_get_os_log(&MOLogFacilityContextStore);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v48 = v8;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "save context, %@", buf, 0xCu);
          }

          v22 = [MOContextMO managedObjectWithContext:v8 inManagedObjectContext:v3];
          v5 = v15;
          goto LABEL_19;
        }

        v18 = v17;
        v19 = v4;
        v20 = _mo_log_facility_get_os_log(&MOLogFacilityContextStore);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v48 = v8;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "update context, %@", buf, 0xCu);
        }

        [MOContextMO updateManagedObject:v18 withContext:v8 inManagedObjectContext:v3];
        v4 = v19;
        v6 = v37;
LABEL_19:
      }

      v38 = [v4 countByEnumeratingWithState:&v41 objects:v51 count:16];
    }

    while (v38);
  }

  v23 = v36 + 40;
  v24 = *(*(v36 + 40) + 8);
  obj = *(v24 + 40);
  v25 = [v3 save:&obj];
  objc_storeStrong((v24 + 40), obj);
  v26 = _mo_log_facility_get_os_log(&MOLogFacilityContextStore);
  v27 = v26;
  if (v25)
  {
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v28 = [*v35 count];
      *buf = 134217984;
      v48 = v28;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "saving contexts succeeded, contexts count, %lu", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    __40__MOContextStore_storeContexts_handler___block_invoke_cold_2(v23);
  }

  if (*(*(*v23 + 8) + 40))
  {
    v29 = 1;
  }

  else
  {
    v29 = v5 == 0;
  }

  if (!v29)
  {
    v45 = NSLocalizedDescriptionKey;
    v46 = @"MOContextStore:storeContext persistence error";
    v30 = [NSDictionary dictionaryWithObjects:&v46 forKeys:&v45 count:1];
    v31 = [NSError errorWithDomain:@"MOContextErrorDomain" code:1802 userInfo:v30];
    v32 = [NSError errorUsingError:v31 withUnderyingError:v5];
    v33 = *(*v23 + 8);
    v34 = *(v33 + 40);
    *(v33 + 40) = v32;
  }

  [v3 reset];
}

- (void)removeContexts:(id)a3 handler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__0;
  v19 = __Block_byref_object_dispose__0;
  v20 = 0;
  v9 = [(MOContextStore *)self persistenceManager];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __41__MOContextStore_removeContexts_handler___block_invoke;
  v11[3] = &unk_1000B4E80;
  v10 = v7;
  v12 = v10;
  v13 = &v15;
  v14 = a2;
  [v9 performBlockAndWait:v11];

  if (v8)
  {
    v8[2](v8, v16[5]);
  }

  _Block_object_dispose(&v15, 8);
}

void __41__MOContextStore_removeContexts_handler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [*(a1 + 32) count]);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v36 objects:v49 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v37;
    do
    {
      v9 = 0;
      do
      {
        if (*v37 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v36 + 1) + 8 * v9) contextIdentifier];
        [v4 addObject:v10];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v36 objects:v49 count:16];
    }

    while (v7);
  }

  v11 = +[MOContextMO fetchRequest];
  v12 = [NSPredicate predicateWithFormat:@"contextIdentifier IN %@", v4];
  [v11 setPredicate:v12];

  [v11 setReturnsObjectsAsFaults:0];
  v13 = a1 + 40;
  v14 = *(*(a1 + 40) + 8);
  obj = *(v14 + 40);
  v15 = [v3 executeFetchRequest:v11 error:&obj];
  objc_storeStrong((v14 + 40), obj);
  v16 = _mo_log_facility_get_os_log(&MOLogFacilityContextStore);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v27 = NSStringFromSelector(*(a1 + 48));
    v28 = [v15 count];
    v29 = *(*(*(a1 + 40) + 8) + 40);
    *buf = 138413058;
    v42 = v27;
    v43 = 2112;
    v44 = v11;
    v45 = 2048;
    v46 = v28;
    v47 = 2112;
    v48 = v29;
    _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "%@, request, %@, results count, %lu, error, %@", buf, 0x2Au);
  }

  if (!*(*(*v13 + 8) + 40) && [v15 count])
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v17 = v15;
    v18 = [v17 countByEnumeratingWithState:&v31 objects:v40 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v32;
      do
      {
        v21 = 0;
        do
        {
          if (*v32 != v20)
          {
            objc_enumerationMutation(v17);
          }

          [v3 deleteObject:*(*(&v31 + 1) + 8 * v21)];
          v21 = v21 + 1;
        }

        while (v19 != v21);
        v19 = [v17 countByEnumeratingWithState:&v31 objects:v40 count:16];
      }

      while (v19);
    }

    v22 = *(*v13 + 8);
    v30 = *(v22 + 40);
    v23 = [v3 save:&v30];
    objc_storeStrong((v22 + 40), v30);
    v24 = _mo_log_facility_get_os_log(&MOLogFacilityContextStore);
    v25 = v24;
    if (v23)
    {
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v26 = [v17 count];
        *buf = 134217984;
        v42 = v26;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "context deletion operation succeeded, contexts count %lu", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      __41__MOContextStore_removeContexts_handler___block_invoke_cold_1(v13);
    }
  }

  [v3 reset];
}

- (void)removeExpiredContextWithHandler:(id)a3
{
  v5 = a3;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__0;
  v12 = __Block_byref_object_dispose__0;
  v13 = 0;
  v6 = [(MOContextStore *)self persistenceManager];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __50__MOContextStore_removeExpiredContextWithHandler___block_invoke;
  v7[3] = &unk_1000B4EA8;
  v7[4] = &v8;
  v7[5] = a2;
  [v6 performBlockAndWait:v7];

  if (v5)
  {
    v5[2](v5, v9[5]);
  }

  _Block_object_dispose(&v8, 8);
}

void __50__MOContextStore_removeExpiredContextWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSDate date];
  v5 = [NSDate dateWithTimeInterval:v4 sinceDate:-2419200.0];

  v6 = +[MOContextMO fetchRequest];
  v7 = [NSPredicate predicateWithFormat:@"contextCreationTimestamp < %@ ", v5];
  [v6 setPredicate:v7];

  [v6 setReturnsObjectsAsFaults:0];
  v8 = a1 + 32;
  v9 = *(*(a1 + 32) + 8);
  obj = *(v9 + 40);
  v10 = [v3 executeFetchRequest:v6 error:&obj];
  objc_storeStrong((v9 + 40), obj);
  v11 = _mo_log_facility_get_os_log(&MOLogFacilityContextStore);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v22 = NSStringFromSelector(*(a1 + 40));
    v23 = [v10 count];
    v24 = *(*(*(a1 + 32) + 8) + 40);
    *buf = 138413058;
    v33 = v22;
    v34 = 2112;
    v35 = v6;
    v36 = 2048;
    v37 = v23;
    v38 = 2112;
    v39 = v24;
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%@, request, %@, results count, %lu, error, %@", buf, 0x2Au);
  }

  if (!*(*(*v8 + 8) + 40) && [v10 count])
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v12 = v10;
    v13 = [v12 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v27;
      do
      {
        v16 = 0;
        do
        {
          if (*v27 != v15)
          {
            objc_enumerationMutation(v12);
          }

          [v3 deleteObject:*(*(&v26 + 1) + 8 * v16)];
          v16 = v16 + 1;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v14);
    }

    v17 = *(*v8 + 8);
    v25 = *(v17 + 40);
    v18 = [v3 save:&v25];
    objc_storeStrong((v17 + 40), v25);
    v19 = _mo_log_facility_get_os_log(&MOLogFacilityContextStore);
    v20 = v19;
    if (v18)
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v21 = [v12 count];
        *buf = 134217984;
        v33 = v21;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "expired context deletion operation succeeded, contexts count %lu", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      __50__MOContextStore_removeExpiredContextWithHandler___block_invoke_cold_1(v8);
    }
  }

  [v3 reset];
}

- (void)fetchContextsGeneratedFromClientRequest:(id)a3 handler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__0;
  v27 = __Block_byref_object_dispose__0;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__0;
  v21 = __Block_byref_object_dispose__0;
  v22 = objc_opt_new();
  if (v7)
  {
    v9 = [(MOContextStore *)self persistenceManager];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = __66__MOContextStore_fetchContextsGeneratedFromClientRequest_handler___block_invoke;
    v12[3] = &unk_1000B4E30;
    v13 = v7;
    v14 = &v23;
    v15 = &v17;
    v16 = a2;
    [v9 performBlockAndWait:v12];

    v10 = v13;
  }

  else
  {
    v10 = _mo_log_facility_get_os_log(&MOLogFacilityContextStore);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "client request is nil", v11, 2u);
    }
  }

  if (v8)
  {
    v8[2](v8, v18[5], v24[5]);
  }

  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v23, 8);
}

void __66__MOContextStore_fetchContextsGeneratedFromClientRequest_handler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MOContextMO fetchRequest];
  v5 = [*(a1 + 32) requestIdentifier];
  v6 = [v5 UUIDString];
  v7 = [NSPredicate predicateWithFormat:@"associatedRequestID == %@", v6];
  [v4 setPredicate:v7];

  [v4 setReturnsObjectsAsFaults:0];
  v8 = [[NSSortDescriptor alloc] initWithKey:@"contextCreationTimestamp" ascending:1];
  v39 = v8;
  v9 = [NSArray arrayWithObjects:&v39 count:1];
  [v4 setSortDescriptors:v9];

  v10 = *(*(a1 + 40) + 8);
  obj = *(v10 + 40);
  v11 = [v3 executeFetchRequest:v4 error:&obj];
  objc_storeStrong((v10 + 40), obj);
  v12 = _mo_log_facility_get_os_log(&MOLogFacilityContextStore);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v22 = NSStringFromSelector(*(a1 + 56));
    v23 = [v11 count];
    v24 = *(*(*(a1 + 40) + 8) + 40);
    *buf = 138413058;
    v32 = v22;
    v33 = 2112;
    v34 = v4;
    v35 = 2048;
    v36 = v23;
    v37 = 2112;
    v38 = v24;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%@, request, %@, results count, %lu, error, %@", buf, 0x2Au);
  }

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v13 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v11 count]);
    v14 = *(*(a1 + 48) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v16 = v11;
    v17 = [v16 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v26;
      do
      {
        v20 = 0;
        do
        {
          if (*v26 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [[MOContext alloc] initWithContextMO:*(*(&v25 + 1) + 8 * v20)];
          if (v21)
          {
            [*(*(*(a1 + 48) + 8) + 40) addObject:v21];
          }

          v20 = v20 + 1;
        }

        while (v18 != v20);
        v18 = [v16 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v18);
    }
  }

  [v3 reset];
}

void __40__MOContextStore_storeContexts_handler___block_invoke_cold_1(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 localizedDescription];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_error_impl(&_mh_execute_header, a4, OS_LOG_TYPE_ERROR, "storeContexts: '%@'", a1, 0xCu);
}

void __40__MOContextStore_storeContexts_handler___block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_1_1(a1);
  [*v1 count];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_0(&_mh_execute_header, v2, v3, "saving contexts error, %@, contexts count, %lu", v4, v5, v6, v7, v8);
}

void __41__MOContextStore_removeContexts_handler___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_1_1(a1);
  [v1 count];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_0(&_mh_execute_header, v2, v3, "context deletion operation error, %@, contexts count %lu", v4, v5, v6, v7, v8);
}

void __50__MOContextStore_removeExpiredContextWithHandler___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_1_1(a1);
  [v1 count];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_0(&_mh_execute_header, v2, v3, "expired context deletion operation error, %@, contexts count %lu", v4, v5, v6, v7, v8);
}

@end