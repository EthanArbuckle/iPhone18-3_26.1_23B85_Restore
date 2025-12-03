@interface WAAnalyticsAccess
+ (WAAnalyticsAccess)accessWithPersistentContainer:(id)container;
+ (void)initialize;
- (WAAnalyticsAccess)initWithOptions:(unint64_t)options andContainer:(id)container;
- (id)_performFetch:(id)fetch error:(id *)error onMoc:(id)moc;
- (id)_performFetchWithBlockAndWait:(id)wait error:(id *)error onMoc:(id)moc;
- (id)performFetchWithBlockAndWait:(id)wait error:(id *)error;
- (id)performFetchWithBlockAndWaitOnBbMoc:(id)moc error:(id *)error;
- (id)persistentStoreCoordinator;
- (unint64_t)_countForFetchRequest:(id)request error:(id *)error onMoc:(id)moc;
- (unint64_t)_countForFetchRequestWithBlockAndWait:(id)wait error:(id *)error onMoc:(id)moc;
- (unint64_t)countForFetchRequestWithBlockAndWait:(id)wait error:(id *)error;
- (unint64_t)countForFetchRequestWithBlockAndWaitOnBbMoc:(id)moc error:(id *)error;
@end

@implementation WAAnalyticsAccess

+ (void)initialize
{
  registry = objc_alloc_init(MEMORY[0x1E695DF90]);

  MEMORY[0x1EEE66BB8]();
}

+ (WAAnalyticsAccess)accessWithPersistentContainer:(id)container
{
  v15 = *MEMORY[0x1E69E9840];
  containerCopy = container;
  v4 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136446722;
    v10 = "+[WAAnalyticsAccess accessWithPersistentContainer:]";
    v11 = 1024;
    v12 = 66;
    v13 = 2112;
    v14 = @"read";
    _os_log_impl(&dword_1C8460000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Initializing WAAnalyticsAccess with option %@", &v9, 0x1Cu);
  }

  v5 = registry;
  objc_sync_enter(v5);
  v6 = [registry objectForKey:@"WAAccessReadOnly"];
  if (!v6)
  {
    v6 = [[WAAnalyticsAccess alloc] initWithOptions:1 andContainer:containerCopy];
    [registry setObject:v6 forKey:@"WAAccessReadOnly"];
  }

  objc_sync_exit(v5);

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (WAAnalyticsAccess)initWithOptions:(unint64_t)options andContainer:(id)container
{
  containerCopy = container;
  v11.receiver = self;
  v11.super_class = WAAnalyticsAccess;
  v8 = [(WAAnalyticsAccess *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_options = options;
    objc_storeStrong(&v8->_persistentContainer, container);
  }

  return v9;
}

- (unint64_t)countForFetchRequestWithBlockAndWaitOnBbMoc:(id)moc error:(id *)error
{
  mocCopy = moc;
  backgroundMOC = [(WAAnalyticsAccess *)self backgroundMOC];
  v8 = [(WAAnalyticsAccess *)self _countForFetchRequestWithBlockAndWait:mocCopy error:error onMoc:backgroundMOC];

  return v8;
}

- (id)performFetchWithBlockAndWaitOnBbMoc:(id)moc error:(id *)error
{
  mocCopy = moc;
  backgroundMOC = [(WAAnalyticsAccess *)self backgroundMOC];
  v8 = [(WAAnalyticsAccess *)self _performFetchWithBlockAndWait:mocCopy error:error onMoc:backgroundMOC];

  return v8;
}

- (id)persistentStoreCoordinator
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_options)
  {
    v6 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136446466;
      v8 = "[WAAnalyticsAccess persistentStoreCoordinator]";
      v9 = 1024;
      v10 = 149;
      _os_log_impl(&dword_1C8460000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Return no persistentStoreCoordinator for WAAccessReadOnly", &v7, 0x12u);
    }

    persistentStoreCoordinator = 0;
  }

  else
  {
    persistentStoreCoordinator = [(NSPersistentContainer *)self->_persistentContainer persistentStoreCoordinator];
  }

  v3 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v7 = 136446722;
    v8 = "[WAAnalyticsAccess persistentStoreCoordinator]";
    v9 = 1024;
    v10 = 154;
    v11 = 2112;
    v12 = persistentStoreCoordinator;
    _os_log_impl(&dword_1C8460000, v3, OS_LOG_TYPE_DEBUG, "%{public}s::%d:ret: %@", &v7, 0x1Cu);
  }

  v4 = *MEMORY[0x1E69E9840];

  return persistentStoreCoordinator;
}

- (id)performFetchWithBlockAndWait:(id)wait error:(id *)error
{
  waitCopy = wait;
  mainObjectContext = [(WAAnalyticsAccess *)self mainObjectContext];
  v8 = [(WAAnalyticsAccess *)self _performFetchWithBlockAndWait:waitCopy error:error onMoc:mainObjectContext];

  return v8;
}

- (unint64_t)countForFetchRequestWithBlockAndWait:(id)wait error:(id *)error
{
  waitCopy = wait;
  mainObjectContext = [(WAAnalyticsAccess *)self mainObjectContext];
  v8 = [(WAAnalyticsAccess *)self _countForFetchRequestWithBlockAndWait:waitCopy error:error onMoc:mainObjectContext];

  return v8;
}

- (id)_performFetchWithBlockAndWait:(id)wait error:(id *)error onMoc:(id)moc
{
  waitCopy = wait;
  mocCopy = moc;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__11;
  v23 = __Block_byref_object_dispose__11;
  v24 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __63__WAAnalyticsAccess__performFetchWithBlockAndWait_error_onMoc___block_invoke;
  v14[3] = &unk_1E830F630;
  v17 = &v19;
  v14[4] = self;
  v10 = waitCopy;
  v15 = v10;
  errorCopy = error;
  v11 = mocCopy;
  v16 = v11;
  [v11 performBlockAndWait:v14];
  v12 = v20[5];

  _Block_object_dispose(&v19, 8);

  return v12;
}

uint64_t __63__WAAnalyticsAccess__performFetchWithBlockAndWait_error_onMoc___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _performFetch:*(a1 + 40) error:*(a1 + 64) onMoc:*(a1 + 48)];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (unint64_t)_countForFetchRequestWithBlockAndWait:(id)wait error:(id *)error onMoc:(id)moc
{
  waitCopy = wait;
  mocCopy = moc;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __71__WAAnalyticsAccess__countForFetchRequestWithBlockAndWait_error_onMoc___block_invoke;
  v14[3] = &unk_1E830F630;
  v17 = &v19;
  v14[4] = self;
  v10 = waitCopy;
  v15 = v10;
  errorCopy = error;
  v11 = mocCopy;
  v16 = v11;
  [v11 performBlockAndWait:v14];
  v12 = v20[3];

  _Block_object_dispose(&v19, 8);
  return v12;
}

uint64_t __71__WAAnalyticsAccess__countForFetchRequestWithBlockAndWait_error_onMoc___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _countForFetchRequest:*(a1 + 40) error:*(a1 + 64) onMoc:*(a1 + 48)];
  *(*(*(a1 + 56) + 8) + 24) = result;
  return result;
}

- (id)_performFetch:(id)fetch error:(id *)error onMoc:(id)moc
{
  v48 = *MEMORY[0x1E69E9840];
  fetchCopy = fetch;
  mocCopy = moc;
  array = [MEMORY[0x1E695DEC8] array];
  persistentStoreCoordinator = [mocCopy persistentStoreCoordinator];
  managedObjectModel = [persistentStoreCoordinator managedObjectModel];
  entitiesByName = [managedObjectModel entitiesByName];

  allKeys = [entitiesByName allKeys];
  entityName = [fetchCopy entityName];
  v16 = [allKeys containsObject:entityName];

  if ((v16 & 1) == 0)
  {
    v23 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      entityName2 = [fetchCopy entityName];
      *buf = 136446722;
      v39 = "[WAAnalyticsAccess _performFetch:error:onMoc:]";
      v40 = 1024;
      v41 = 194;
      v42 = 2112;
      v43 = entityName2;
      _os_log_impl(&dword_1C8460000, v23, OS_LOG_TYPE_ERROR, "%{public}s::%d:entityName %@ doesn't exist", buf, 0x1Cu);
    }

    goto LABEL_11;
  }

  v37 = 0;
  v17 = [(WAAnalyticsAccess *)self _countForFetchRequest:fetchCopy error:&v37 onMoc:mocCopy];
  v18 = v37;
  v19 = WALogCategoryDeviceStoreHandle();
  v20 = v19;
  if (!v18)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      entityName3 = [fetchCopy entityName];
      *buf = 136446978;
      v39 = "[WAAnalyticsAccess _performFetch:error:onMoc:]";
      v40 = 1024;
      v41 = 200;
      v42 = 2048;
      v43 = v17;
      v44 = 2112;
      v45 = entityName3;
      _os_log_impl(&dword_1C8460000, v20, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:retrieving %lu entries from request.entityName %@", buf, 0x26u);
    }

    if (v17)
    {
      v36 = 0;
      v22 = [mocCopy executeFetchRequest:fetchCopy error:&v36];
      v18 = v36;

      if (v18)
      {
        v32 = WALogCategoryDeviceStoreHandle();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          localizedDescription = [v18 localizedDescription];
          userInfo = [v18 userInfo];
          *buf = 136447234;
          v39 = "[WAAnalyticsAccess _performFetch:error:onMoc:]";
          v40 = 1024;
          v41 = 210;
          v42 = 2112;
          v43 = fetchCopy;
          v44 = 2112;
          v45 = localizedDescription;
          v46 = 2112;
          v47 = userInfo;
          v35 = userInfo;
          _os_log_impl(&dword_1C8460000, v32, OS_LOG_TYPE_ERROR, "%{public}s::%d:Error with executeFetchRequest %@. %@ %@", buf, 0x30u);
        }
      }

      array = v22;
      goto LABEL_12;
    }

LABEL_11:
    v18 = 0;
    goto LABEL_12;
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    localizedDescription2 = [v18 localizedDescription];
    userInfo2 = [v18 userInfo];
    *buf = 136447234;
    v39 = "[WAAnalyticsAccess _performFetch:error:onMoc:]";
    v40 = 1024;
    v41 = 198;
    v42 = 2112;
    v43 = fetchCopy;
    v44 = 2112;
    v45 = localizedDescription2;
    v46 = 2112;
    v47 = userInfo2;
    v31 = userInfo2;
    _os_log_impl(&dword_1C8460000, v20, OS_LOG_TYPE_ERROR, "%{public}s::%d:Error with countForFetchRequest %@. %@ %@", buf, 0x30u);
  }

LABEL_12:
  if (error)
  {
    v25 = v18;
    *error = v18;
  }

  v26 = array;

  v27 = *MEMORY[0x1E69E9840];
  return array;
}

- (unint64_t)_countForFetchRequest:(id)request error:(id *)error onMoc:(id)moc
{
  v37 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  mocCopy = moc;
  persistentStoreCoordinator = [mocCopy persistentStoreCoordinator];
  managedObjectModel = [persistentStoreCoordinator managedObjectModel];
  entitiesByName = [managedObjectModel entitiesByName];

  allKeys = [entitiesByName allKeys];
  entityName = [requestCopy entityName];
  v14 = [allKeys containsObject:entityName];

  if (v14)
  {
    v26 = 0;
    v15 = [mocCopy countForFetchRequest:requestCopy error:&v26];
    v16 = v26;
    if (v16)
    {
      v22 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        localizedDescription = [v16 localizedDescription];
        userInfo = [v16 userInfo];
        *buf = 136447234;
        v28 = "[WAAnalyticsAccess _countForFetchRequest:error:onMoc:]";
        v29 = 1024;
        v30 = 240;
        v31 = 2112;
        v32 = requestCopy;
        v33 = 2112;
        v34 = localizedDescription;
        v35 = 2112;
        v36 = userInfo;
        v25 = userInfo;
        _os_log_impl(&dword_1C8460000, v22, OS_LOG_TYPE_ERROR, "%{public}s::%d:Error with countForFetchRequest %@. %@ %@", buf, 0x30u);
      }
    }
  }

  else
  {
    v20 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      entityName2 = [requestCopy entityName];
      *buf = 136446722;
      v28 = "[WAAnalyticsAccess _countForFetchRequest:error:onMoc:]";
      v29 = 1024;
      v30 = 228;
      v31 = 2112;
      v32 = entityName2;
      _os_log_impl(&dword_1C8460000, v20, OS_LOG_TYPE_ERROR, "%{public}s::%d:entityName %@ doesn't exist", buf, 0x1Cu);
    }

    v15 = 0;
    v16 = 0;
  }

  if (error)
  {
    v17 = v16;
    *error = v16;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v15;
}

@end