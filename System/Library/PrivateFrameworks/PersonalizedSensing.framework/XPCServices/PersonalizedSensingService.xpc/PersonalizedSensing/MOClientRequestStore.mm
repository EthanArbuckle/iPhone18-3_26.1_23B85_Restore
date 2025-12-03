@interface MOClientRequestStore
- (MOClientRequestStore)initWithPersistenceManager:(id)manager;
- (void)fetchMostRecentClientRequestWithHandler:(id)handler;
- (void)removeExpiredClientRequestsWithHandler:(id)handler;
- (void)storeClientRequest:(id)request handler:(id)handler;
@end

@implementation MOClientRequestStore

- (MOClientRequestStore)initWithPersistenceManager:(id)manager
{
  managerCopy = manager;
  if (managerCopy)
  {
    v13.receiver = self;
    v13.super_class = MOClientRequestStore;
    v6 = [(MOClientRequestStore *)&v13 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_persistenceManager, manager);
      v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v9 = dispatch_queue_create("MOClientRequestStore", v8);
      queue = v7->_queue;
      v7->_queue = v9;
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)storeClientRequest:(id)request handler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__3;
  v18 = __Block_byref_object_dispose__3;
  v19 = 0;
  if (requestCopy)
  {
    persistenceManager = [(MOClientRequestStore *)self persistenceManager];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = __51__MOClientRequestStore_storeClientRequest_handler___block_invoke;
    v11[3] = &unk_1000B4E58;
    v12 = requestCopy;
    v13 = &v14;
    [persistenceManager performBlockAndWait:v11];

    v9 = v12;
  }

  else
  {
    v9 = _mo_log_facility_get_os_log(&MOLogFacilityClientRequestStore);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "no client request to be saved", v10, 2u);
    }
  }

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, v15[5]);
  }

  _Block_object_dispose(&v14, 8);
}

void __51__MOClientRequestStore_storeClientRequest_handler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MOClientRequestMO fetchRequest];
  v5 = (a1 + 32);
  v6 = [*(a1 + 32) requestIdentifier];
  v7 = [NSPredicate predicateWithFormat:@"requestIdentifier == %@", v6];
  [v4 setPredicate:v7];

  v31 = 0;
  v8 = [v3 executeFetchRequest:v4 error:&v31];
  v9 = v31;
  if (v9)
  {
    v10 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __51__MOClientRequestStore_storeClientRequest_handler___block_invoke_cold_1(v9, v10);
    }

    goto LABEL_5;
  }

  if (![v8 count] || (objc_msgSend(v8, "lastObject"), (v26 = objc_claimAutoreleasedReturnValue()) == 0))
  {
LABEL_5:
    v11 = _mo_log_facility_get_os_log(&MOLogFacilityClientRequestStore);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = *v5;
      *buf = 138412290;
      v35 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "save client request, %@", buf, 0xCu);
    }

    v13 = [MOClientRequestMO managedObjectWithClientRequest:*v5 inManagedObjectContext:v3];
    goto LABEL_8;
  }

  v27 = v26;
  v28 = _mo_log_facility_get_os_log(&MOLogFacilityClientRequestStore);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    v29 = *v5;
    *buf = 138412290;
    v35 = v29;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "update client request, %@", buf, 0xCu);
  }

  [MOClientRequestMO updateManagedObject:v27 withClientRequest:*v5 inManagedObjectContext:v3];
LABEL_8:
  v15 = *(a1 + 40);
  v14 = a1 + 40;
  v16 = *(v15 + 8);
  obj = *(v16 + 40);
  v17 = [v3 save:&obj];
  objc_storeStrong((v16 + 40), obj);
  v18 = _mo_log_facility_get_os_log(&MOLogFacilityClientRequestStore);
  v19 = v18;
  if (v17)
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v20 = *v5;
      *buf = 138412290;
      v35 = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "saving client request succeeded, client request, %@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    __51__MOClientRequestStore_storeClientRequest_handler___block_invoke_cold_2(v14, v5, v19);
  }

  if (v9 && !*(*(*v14 + 8) + 40))
  {
    v32 = NSLocalizedDescriptionKey;
    v33 = @"MOClientRequestStore:storeClientRequest persistence error";
    v21 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v22 = [NSError errorWithDomain:@"MOContextErrorDomain" code:2058 userInfo:v21];
    v23 = [NSError errorUsingError:v22 withUnderyingError:v9];
    v24 = *(*v14 + 8);
    v25 = *(v24 + 40);
    *(v24 + 40) = v23;
  }

  [v3 reset];
}

- (void)fetchMostRecentClientRequestWithHandler:(id)handler
{
  handlerCopy = handler;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__3;
  v17 = __Block_byref_object_dispose__3;
  v18 = 0;
  v10 = 0;
  v11[0] = &v10;
  v11[1] = 0x3032000000;
  v11[2] = __Block_byref_object_copy__3;
  v11[3] = __Block_byref_object_dispose__3;
  v12 = 0;
  persistenceManager = [(MOClientRequestStore *)self persistenceManager];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __64__MOClientRequestStore_fetchMostRecentClientRequestWithHandler___block_invoke;
  v9[3] = &unk_1000B4F90;
  v9[5] = &v10;
  v9[6] = a2;
  v9[4] = &v13;
  [persistenceManager performBlockAndWait:v9];

  if (handlerCopy)
  {
    v7 = _mo_log_facility_get_os_log(&MOLogFacilityClientRequestStore);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = NSStringFromSelector(a2);
      [(MOClientRequestStore *)v8 fetchMostRecentClientRequestWithHandler:v11, buf, v7];
    }

    handlerCopy[2](handlerCopy, *(v11[0] + 40), v14[5]);
  }

  _Block_object_dispose(&v10, 8);

  _Block_object_dispose(&v13, 8);
}

void __64__MOClientRequestStore_fetchMostRecentClientRequestWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MOClientRequestMO fetchRequest];
  v5 = [NSPredicate predicateWithFormat:@"requestType == %lu", 2];
  [v4 setPredicate:v5];

  [v4 setReturnsObjectsAsFaults:0];
  v6 = [[NSSortDescriptor alloc] initWithKey:@"creationDate" ascending:1];
  v28 = v6;
  v7 = [NSArray arrayWithObjects:&v28 count:1];
  [v4 setSortDescriptors:v7];

  v8 = *(*(a1 + 32) + 8);
  obj = *(v8 + 40);
  v9 = [v3 executeFetchRequest:v4 error:&obj];
  objc_storeStrong((v8 + 40), obj);
  v10 = _mo_log_facility_get_os_log(&MOLogFacilityClientRequestStore);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v16 = NSStringFromSelector(*(a1 + 48));
    v17 = [v9 count];
    v18 = *(*(*(a1 + 32) + 8) + 40);
    *buf = 138413058;
    v21 = v16;
    v22 = 2112;
    v23 = v4;
    v24 = 2048;
    v25 = v17;
    v26 = 2112;
    v27 = v18;
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%@, request, %@, results count, %lu, error, %@", buf, 0x2Au);
  }

  if (!*(*(*(a1 + 32) + 8) + 40) && [v9 count])
  {
    v11 = [MOClientRequest alloc];
    v12 = [v9 lastObject];
    v13 = [(MOClientRequest *)v11 initWithClientRequestMO:v12];
    v14 = *(*(a1 + 40) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;
  }

  [v3 reset];
}

- (void)removeExpiredClientRequestsWithHandler:(id)handler
{
  handlerCopy = handler;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__3;
  v12 = __Block_byref_object_dispose__3;
  v13 = 0;
  persistenceManager = [(MOClientRequestStore *)self persistenceManager];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __63__MOClientRequestStore_removeExpiredClientRequestsWithHandler___block_invoke;
  v7[3] = &unk_1000B4EA8;
  v7[4] = &v8;
  v7[5] = a2;
  [persistenceManager performBlockAndWait:v7];

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, v9[5]);
  }

  _Block_object_dispose(&v8, 8);
}

void __63__MOClientRequestStore_removeExpiredClientRequestsWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSDate date];
  v5 = [NSDate dateWithTimeInterval:v4 sinceDate:-2419200.0];

  v6 = +[MOClientRequestMO fetchRequest];
  v7 = [NSPredicate predicateWithFormat:@"creationDate < %@ ", v5];
  [v6 setPredicate:v7];

  [v6 setReturnsObjectsAsFaults:0];
  v8 = a1 + 32;
  v9 = *(*(a1 + 32) + 8);
  obj = *(v9 + 40);
  v10 = [v3 executeFetchRequest:v6 error:&obj];
  objc_storeStrong((v9 + 40), obj);
  v11 = _mo_log_facility_get_os_log(&MOLogFacilityClientRequestStore);
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
    v19 = _mo_log_facility_get_os_log(&MOLogFacilityClientRequestStore);
    v20 = v19;
    if (v18)
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v21 = [v12 count];
        *buf = 134217984;
        v33 = v21;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "expired client request deletion operation succeeded, contexts count %lu", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      __63__MOClientRequestStore_removeExpiredClientRequestsWithHandler___block_invoke_cold_1(v8, v12, v20);
    }
  }

  [v3 reset];
}

void __51__MOClientRequestStore_storeClientRequest_handler___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v3 = [a1 localizedDescription];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "storeClientRequest: '%@'", &v4, 0xCu);
}

void __51__MOClientRequestStore_storeClientRequest_handler___block_invoke_cold_2(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v3 = *(*(*a1 + 8) + 40);
  v4 = *a2;
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = v4;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "saving client request hit error, %@, client request, %@", &v5, 0x16u);
}

- (void)fetchMostRecentClientRequestWithHandler:(uint8_t *)buf .cold.1(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  v5 = *(*a2 + 40);
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = v5;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%@, most recent client request fetched, %@", buf, 0x16u);
}

void __63__MOClientRequestStore_removeExpiredClientRequestsWithHandler___block_invoke_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v4 = *(*(*a1 + 8) + 40);
  v5 = 138412546;
  v6 = v4;
  v7 = 2048;
  v8 = [a2 count];
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "expired client request deletion operation error, %@, contexts count %lu", &v5, 0x16u);
}

@end