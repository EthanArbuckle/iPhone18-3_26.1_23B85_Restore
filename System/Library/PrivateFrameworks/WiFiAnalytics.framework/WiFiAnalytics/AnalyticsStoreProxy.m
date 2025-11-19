@interface AnalyticsStoreProxy
+ (BOOL)batchDelete:(id)a3 withPredicate:(id)a4 withFetchRequest:(id)a5 moc:(id)a6;
+ (BOOL)batchUpdate:(id)a3 withPredicate:(id)a4 propertiesToUpdate:(id)a5 moc:(id)a6;
+ (id)createEntity:(id)a3 moc:(id)a4;
+ (id)entity:(id)a3 withPredicate:(id)a4 created:(BOOL *)a5 moc:(id)a6;
+ (id)fetch:(id)a3 withPredicate:(id)a4 moc:(id)a5;
+ (id)fetchAll:(id)a3 moc:(id)a4;
+ (id)fetchFirst:(id)a3 withPredicate:(id)a4 moc:(id)a5;
+ (id)fetchPropertiesForEntity:(id)a3 properties:(id)a4 predicate:(id)a5 moc:(id)a6;
+ (id)fetchRequestForEntity:(id)a3;
+ (id)fetchRequestForEntityWithBatchSize:(id)a3 batchSize:(unint64_t)a4 prefetch:(id)a5;
+ (id)fetchRequestForEntityWithOffset:(id)a3 limit:(unint64_t)a4 offset:(unint64_t)a5 prefetch:(id)a6;
+ (id)predicateForEntityWithAgeOlderThan:(id)a3 dateAttribute:(id)a4 olderThan:(double)a5;
+ (unint64_t)entityCount:(id)a3 withPredicate:(id)a4 moc:(id)a5;
@end

@implementation AnalyticsStoreProxy

+ (id)fetchAll:(id)a3 moc:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v12 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      *&buf[4] = "+[AnalyticsStoreProxy fetchAll:moc:]";
      *&buf[12] = 1024;
      *&buf[14] = 19;
      _os_log_impl(&dword_1C8460000, v12, OS_LOG_TYPE_ERROR, "%{public}s::%d:moc nil", buf, 0x12u);
    }

    goto LABEL_7;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v18 = __Block_byref_object_copy__2;
  v19 = __Block_byref_object_dispose__2;
  v20 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __36__AnalyticsStoreProxy_fetchAll_moc___block_invoke;
  v13[3] = &unk_1E830E5F0;
  v16 = buf;
  v14 = v6;
  v15 = v7;
  [v15 performBlockAndWait:v13];
  v8 = *(*&buf[8] + 40);
  if (v8 && [v8 count])
  {
    v4 = *(*&buf[8] + 40);
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  _Block_object_dispose(buf, 8);
  if (v9)
  {
LABEL_7:
    v4 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v4;
}

void __36__AnalyticsStoreProxy_fetchAll_moc___block_invoke(void *a1)
{
  v5 = [AnalyticsStoreProxy fetchRequestForEntity:a1[4]];
  v2 = [AnalyticsStoreProxy fetch:v5 withPredicate:0 moc:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

+ (id)createEntity:(id)a3 moc:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (!v5)
  {
    v13 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      *&buf[4] = "+[AnalyticsStoreProxy createEntity:moc:]";
      *&buf[12] = 1024;
      *&buf[14] = 34;
      v14 = "%{public}s::%d:entityName nil";
LABEL_14:
      _os_log_impl(&dword_1C8460000, v13, OS_LOG_TYPE_ERROR, v14, buf, 0x12u);
    }

LABEL_15:

LABEL_6:
    v9 = 0;
    goto LABEL_7;
  }

  if (!v6)
  {
    v13 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      *&buf[4] = "+[AnalyticsStoreProxy createEntity:moc:]";
      *&buf[12] = 1024;
      *&buf[14] = 35;
      v14 = "%{public}s::%d:moc nil";
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v27 = __Block_byref_object_copy__2;
  v28 = __Block_byref_object_dispose__2;
  v29 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __40__AnalyticsStoreProxy_createEntity_moc___block_invoke;
  v16[3] = &unk_1E830E5F0;
  v19 = buf;
  v8 = v5;
  v17 = v8;
  v18 = v7;
  [v18 performBlockAndWait:v16];
  v9 = *(*&buf[8] + 40);
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v15 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *v20 = 136446722;
      v21 = "+[AnalyticsStoreProxy createEntity:moc:]";
      v22 = 1024;
      v23 = 42;
      v24 = 2112;
      v25 = v8;
      _os_log_impl(&dword_1C8460000, v15, OS_LOG_TYPE_ERROR, "%{public}s::%d:Error creating entity:%@", v20, 0x1Cu);
    }
  }

  _Block_object_dispose(buf, 8);
  if (!v9)
  {
    goto LABEL_6;
  }

LABEL_7:

  v11 = *MEMORY[0x1E69E9840];

  return v9;
}

void __40__AnalyticsStoreProxy_createEntity_moc___block_invoke(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695D5B8] insertNewObjectForEntityForName:a1[4] inManagedObjectContext:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = a1[4];
    v6 = a1[5];
    v9 = 136446978;
    v10 = "+[AnalyticsStoreProxy createEntity:moc:]_block_invoke";
    v11 = 1024;
    v12 = 40;
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_1C8460000, v5, OS_LOG_TYPE_DEBUG, "%{public}s::%d:[moc: %@] Inserted new %@", &v9, 0x26u);
  }

  v8 = *MEMORY[0x1E69E9840];
}

+ (id)fetchFirst:(id)a3 withPredicate:(id)a4 moc:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  [v10 setFetchLimit:1];
  v11 = [a1 fetch:v10 withPredicate:v9 moc:v8];

  if (v11)
  {
    v12 = [v11 firstObject];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)fetch:(id)a3 withPredicate:(id)a4 moc:(id)a5
{
  v55 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (v7)
  {
    if (v9)
    {
      *v51 = 0;
      *&v51[8] = v51;
      *&v51[16] = 0x3032000000;
      v52 = __Block_byref_object_copy__2;
      v53 = __Block_byref_object_dispose__2;
      v54 = 0;
      v35 = 0;
      v36 = &v35;
      v37 = 0x3032000000;
      v38 = __Block_byref_object_copy__2;
      v39 = __Block_byref_object_dispose__2;
      v40 = 0;
      if (v8)
      {
        [v7 setPredicate:v8];
      }

      v11 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446722;
        v42 = "+[AnalyticsStoreProxy fetch:withPredicate:moc:]";
        v43 = 1024;
        v44 = 69;
        v45 = 2112;
        v46 = v7;
        _os_log_impl(&dword_1C8460000, v11, OS_LOG_TYPE_DEBUG, "%{public}s::%d:fetch:%@", buf, 0x1Cu);
      }

      v27 = MEMORY[0x1E69E9820];
      v28 = 3221225472;
      v29 = __47__AnalyticsStoreProxy_fetch_withPredicate_moc___block_invoke;
      v30 = &unk_1E830DB20;
      v33 = v51;
      v31 = v10;
      v12 = v7;
      v32 = v12;
      v34 = &v35;
      [v31 performBlockAndWait:&v27];
      v13 = v36[5];
      v14 = WALogCategoryDeviceStoreHandle();
      v15 = v14;
      if (v13)
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v23 = [v36[5] localizedDescription];
          v24 = [v36[5] userInfo];
          *buf = 136447234;
          v42 = "+[AnalyticsStoreProxy fetch:withPredicate:moc:]";
          v43 = 1024;
          v44 = 81;
          v45 = 2112;
          v46 = v12;
          v47 = 2112;
          v48 = v23;
          v49 = 2112;
          v50 = v24;
          _os_log_impl(&dword_1C8460000, v15, OS_LOG_TYPE_ERROR, "%{public}s::%d:Error fetching %@. %@ %@", buf, 0x30u);
        }
      }

      else
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          v16 = *(*&v51[8] + 40);
          *buf = 136446722;
          v42 = "+[AnalyticsStoreProxy fetch:withPredicate:moc:]";
          v43 = 1024;
          v44 = 82;
          v45 = 2112;
          v46 = v16;
          _os_log_impl(&dword_1C8460000, v15, OS_LOG_TYPE_DEBUG, "%{public}s::%d:results:%@", buf, 0x1Cu);
        }

        v17 = *(*&v51[8] + 40);
        if (v17)
        {
          v12 = v17;
          v18 = 0;
          goto LABEL_12;
        }

        v15 = WALogCategoryDeviceStoreHandle();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v25 = [v36[5] localizedDescription];
          v26 = [v36[5] userInfo];
          *buf = 136447234;
          v42 = "+[AnalyticsStoreProxy fetch:withPredicate:moc:]";
          v43 = 1024;
          v44 = 83;
          v45 = 2112;
          v46 = v12;
          v47 = 2112;
          v48 = v25;
          v49 = 2112;
          v50 = v26;
          _os_log_impl(&dword_1C8460000, v15, OS_LOG_TYPE_ERROR, "%{public}s::%d:Error fetching %@. %@ %@", buf, 0x30u);
        }
      }

      v18 = 1;
LABEL_12:

      _Block_object_dispose(&v35, 8);
      _Block_object_dispose(v51, 8);

      if ((v18 & 1) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    v21 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *v51 = 136446466;
      *&v51[4] = "+[AnalyticsStoreProxy fetch:withPredicate:moc:]";
      *&v51[12] = 1024;
      *&v51[14] = 61;
      v22 = "%{public}s::%d:moc request nil";
      goto LABEL_21;
    }
  }

  else
  {
    v21 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *v51 = 136446466;
      *&v51[4] = "+[AnalyticsStoreProxy fetch:withPredicate:moc:]";
      *&v51[12] = 1024;
      *&v51[14] = 60;
      v22 = "%{public}s::%d:fetch request nil";
LABEL_21:
      _os_log_impl(&dword_1C8460000, v21, OS_LOG_TYPE_ERROR, v22, v51, 0x12u);
    }
  }

LABEL_13:
  v12 = 0;
LABEL_14:

  v19 = *MEMORY[0x1E69E9840];

  return v12;
}

void __47__AnalyticsStoreProxy_fetch_withPredicate_moc___block_invoke(void *a1)
{
  obj[6] = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj[0] = *(v4 + 40);
  v5 = [v2 executeFetchRequest:v3 error:obj];
  objc_storeStrong((v4 + 40), obj[0]);
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = *MEMORY[0x1E69E9840];
}

+ (id)fetchRequestForEntity:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v3 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:?];
  }

  else
  {
    v6 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 136446466;
      v8 = "+[AnalyticsStoreProxy fetchRequestForEntity:]";
      v9 = 1024;
      v10 = 91;
      _os_log_impl(&dword_1C8460000, v6, OS_LOG_TYPE_ERROR, "%{public}s::%d:entityName nil", &v7, 0x12u);
    }

    v3 = 0;
  }

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (unint64_t)entityCount:(id)a3 withPredicate:(id)a4 moc:(id)a5
{
  v36 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (!v7)
  {
    v14 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    *buf = 136446466;
    v27 = "+[AnalyticsStoreProxy entityCount:withPredicate:moc:]";
    v28 = 1024;
    v29 = 101;
    v17 = "%{public}s::%d:entityName nil";
LABEL_12:
    v18 = v14;
    v19 = 18;
LABEL_15:
    _os_log_impl(&dword_1C8460000, v18, OS_LOG_TYPE_ERROR, v17, buf, v19);
    goto LABEL_16;
  }

  if (!v9)
  {
    v14 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    *buf = 136446466;
    v27 = "+[AnalyticsStoreProxy entityCount:withPredicate:moc:]";
    v28 = 1024;
    v29 = 102;
    v17 = "%{public}s::%d:entityName nil";
    goto LABEL_12;
  }

  v11 = [AnalyticsStoreProxy fetchRequestForEntity:v7];
  v12 = v11;
  if (!v11)
  {
    v14 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v27 = "+[AnalyticsStoreProxy entityCount:withPredicate:moc:]";
      v28 = 1024;
      v29 = 105;
      v30 = 2112;
      v31 = v7;
      v17 = "%{public}s::%d:fetch request nil for entity:%@";
      v18 = v14;
      v19 = 28;
      goto LABEL_15;
    }

LABEL_16:
    v12 = 0;
    v13 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_20:

    goto LABEL_7;
  }

  if (v8)
  {
    [v11 setPredicate:v8];
  }

  v25 = 0;
  v13 = [v10 countForFetchRequest:v12 error:&v25];
  v14 = v25;
  if (v14)
  {
    v20 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [v12 entityName];
      v22 = [v14 localizedDescription];
      v23 = [v14 userInfo];
      *buf = 136447234;
      v27 = "+[AnalyticsStoreProxy entityCount:withPredicate:moc:]";
      v28 = 1024;
      v29 = 119;
      v30 = 2112;
      v31 = v21;
      v32 = 2112;
      v33 = v22;
      v34 = 2112;
      v35 = v23;
      v24 = v23;
      _os_log_impl(&dword_1C8460000, v20, OS_LOG_TYPE_ERROR, "%{public}s::%d:Error countForFetchRequest for entity %@. %@ %@", buf, 0x30u);
    }

    goto LABEL_20;
  }

LABEL_7:

  v15 = *MEMORY[0x1E69E9840];
  return v13;
}

+ (id)entity:(id)a3 withPredicate:(id)a4 created:(BOOL *)a5 moc:(id)a6
{
  v33 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = v11;
  if (!v9)
  {
    v20 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      *&buf[4] = "+[AnalyticsStoreProxy entity:withPredicate:created:moc:]";
      *&buf[12] = 1024;
      *&buf[14] = 125;
      _os_log_impl(&dword_1C8460000, v20, OS_LOG_TYPE_ERROR, "%{public}s::%d:entityName nil", buf, 0x12u);
    }

    goto LABEL_21;
  }

  if (!v11)
  {
    v20 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      *&buf[4] = "+[AnalyticsStoreProxy entity:withPredicate:created:moc:]";
      *&buf[12] = 1024;
      *&buf[14] = 126;
      _os_log_impl(&dword_1C8460000, v20, OS_LOG_TYPE_ERROR, "%{public}s::%d:moc nil", buf, 0x12u);
    }

LABEL_21:

    v17 = 0;
    goto LABEL_13;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v30 = __Block_byref_object_copy__2;
  v31 = __Block_byref_object_dispose__2;
  v32 = 0;
  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __56__AnalyticsStoreProxy_entity_withPredicate_created_moc___block_invoke;
  v24 = &unk_1E830E8C0;
  v28 = buf;
  v13 = v9;
  v25 = v13;
  v26 = v10;
  v14 = v12;
  v27 = v14;
  [v14 performBlockAndWait:&v21];
  v15 = *(*&buf[8] + 40);
  if (v15 && [v15 count])
  {
    if (a5)
    {
      *a5 = 0;
    }

    if ([*(*&buf[8] + 40) count] != 1)
    {
      abort();
    }

    v16 = [*(*&buf[8] + 40) firstObject];
  }

  else
  {
    if (a5)
    {
      *a5 = 1;
    }

    v16 = [AnalyticsStoreProxy createEntity:v13 moc:v14, v21, v22, v23, v24];
  }

  v17 = v16;

  _Block_object_dispose(buf, 8);
LABEL_13:

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

void __56__AnalyticsStoreProxy_entity_withPredicate_created_moc___block_invoke(void *a1)
{
  v5 = [AnalyticsStoreProxy fetchRequestForEntity:a1[4]];
  v2 = [AnalyticsStoreProxy fetch:v5 withPredicate:a1[5] moc:a1[6]];
  v3 = *(a1[7] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

+ (id)fetchRequestForEntityWithOffset:(id)a3 limit:(unint64_t)a4 offset:(unint64_t)a5 prefetch:(id)a6
{
  v9 = a6;
  v10 = [AnalyticsStoreProxy fetchRequestForEntity:a3];
  [v10 setFetchLimit:a4];
  [v10 setFetchOffset:a5];
  if (v9)
  {
    [v10 setRelationshipKeyPathsForPrefetching:v9];
  }

  return v10;
}

+ (id)fetchRequestForEntityWithBatchSize:(id)a3 batchSize:(unint64_t)a4 prefetch:(id)a5
{
  v7 = a5;
  v8 = [AnalyticsStoreProxy fetchRequestForEntity:a3];
  [v8 setFetchBatchSize:a4];
  if (v7)
  {
    [v8 setRelationshipKeyPathsForPrefetching:v7];
  }

  return v8;
}

+ (id)predicateForEntityWithAgeOlderThan:(id)a3 dateAttribute:(id)a4 olderThan:(double)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = MEMORY[0x1E695DF00];
  v9 = a4;
  v10 = [v8 date];
  v11 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v11 setDay:-(a5 / 86400.0)];
  v12 = [MEMORY[0x1E695DEE8] currentCalendar];
  v13 = [v12 dateByAddingComponents:v11 toDate:v10 options:0];
  v14 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K < %@", v9, v13];

  v15 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [v14 description];
    *buf = 136446978;
    v20 = "+[AnalyticsStoreProxy predicateForEntityWithAgeOlderThan:dateAttribute:olderThan:]";
    v21 = 1024;
    v22 = 183;
    v23 = 2112;
    v24 = v7;
    v25 = 2112;
    v26 = v16;
    _os_log_impl(&dword_1C8460000, v15, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Batch deleted predicate on %@: %@", buf, 0x26u);
  }

  v17 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (BOOL)batchDelete:(id)a3 withPredicate:(id)a4 withFetchRequest:(id)a5 moc:(id)a6
{
  v65 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = [objc_alloc(MEMORY[0x1E695D5E0]) initWithEntityName:v9];
  }

  v14 = v13;
  if (v10)
  {
    [v13 setPredicate:v10];
    v15 = [v10 predicateFormat];
  }

  else
  {
    v15 = 0;
  }

  v16 = [objc_alloc(MEMORY[0x1E695D538]) initWithFetchRequest:v14];
  [v16 setResultType:1];
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy__2;
  v51 = __Block_byref_object_dispose__2;
  v52 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__2;
  v45 = __Block_byref_object_dispose__2;
  v46 = 0;
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __70__AnalyticsStoreProxy_batchDelete_withPredicate_withFetchRequest_moc___block_invoke;
  v36[3] = &unk_1E830DB20;
  v39 = &v47;
  v17 = v12;
  v37 = v17;
  v18 = v16;
  v38 = v18;
  v40 = &v41;
  [v17 performBlockAndWait:v36];
  if (v42[5])
  {
    v25 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v28 = [v42[5] localizedDescription];
      v29 = [v42[5] userInfo];
      *buf = 136447490;
      v54 = "+[AnalyticsStoreProxy batchDelete:withPredicate:withFetchRequest:moc:]";
      v55 = 1024;
      v56 = 212;
      v57 = 2112;
      v58 = v9;
      v59 = 2112;
      v60 = v15;
      v61 = 2112;
      v62 = v28;
      v63 = 2112;
      v31 = v29;
      v64 = v29;
      _os_log_impl(&dword_1C8460000, v25, OS_LOG_TYPE_ERROR, "%{public}s::%d:Error executing batch delete for entity[%@] predicateFormat[%@]. %@ %@", buf, 0x3Au);
    }
  }

  else
  {
    v19 = [v48[5] result];
    v20 = [v19 count] == 0;

    if (v20)
    {
      v24 = 1;
      goto LABEL_15;
    }

    if ([v48[5] resultType] == 1)
    {
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __70__AnalyticsStoreProxy_batchDelete_withPredicate_withFetchRequest_moc___block_invoke_64;
      v32[3] = &unk_1E830E910;
      v34 = &v47;
      v33 = v17;
      v35 = &v41;
      [v33 performBlockAndWait:v32];
      v21 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        v22 = [v48[5] result];
        v23 = [v22 count];
        *buf = 136447234;
        v54 = "+[AnalyticsStoreProxy batchDelete:withPredicate:withFetchRequest:moc:]";
        v55 = 1024;
        v56 = 226;
        v57 = 2048;
        v58 = v23;
        v59 = 2112;
        v60 = v9;
        v61 = 2112;
        v62 = v15;
        _os_log_impl(&dword_1C8460000, v21, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Batch deleted %lu MOs of entity[%@] predicateFormat[%@]", buf, 0x30u);
      }

      v24 = 1;
      v25 = v33;
      goto LABEL_13;
    }

    v25 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v30 = [v48[5] resultType];
      *buf = 136447234;
      v54 = "+[AnalyticsStoreProxy batchDelete:withPredicate:withFetchRequest:moc:]";
      v55 = 1024;
      v56 = 215;
      v57 = 2112;
      v58 = v9;
      v59 = 2112;
      v60 = v15;
      v61 = 2048;
      v62 = v30;
      _os_log_impl(&dword_1C8460000, v25, OS_LOG_TYPE_ERROR, "%{public}s::%d:Error executing batch delete for entity[%@] predicateFormat[%@]. Unexpected ResultType %lu ", buf, 0x30u);
    }
  }

  v24 = 0;
LABEL_13:

LABEL_15:
  _Block_object_dispose(&v41, 8);

  _Block_object_dispose(&v47, 8);
  v26 = *MEMORY[0x1E69E9840];
  return v24;
}

void __70__AnalyticsStoreProxy_batchDelete_withPredicate_withFetchRequest_moc___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v2 executeRequest:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void __70__AnalyticsStoreProxy_batchDelete_withPredicate_withFetchRequest_moc___block_invoke_64(uint64_t a1)
{
  v2 = [*(*(*(a1 + 40) + 8) + 40) result];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __70__AnalyticsStoreProxy_batchDelete_withPredicate_withFetchRequest_moc___block_invoke_2;
  v5[3] = &unk_1E830E8E8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v6 = v3;
  v7 = v4;
  [v2 enumerateObjectsUsingBlock:v5];
}

void __70__AnalyticsStoreProxy_batchDelete_withPredicate_withFetchRequest_moc___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(*(a1 + 40) + 8);
  obj = *(v4 + 40);
  v5 = [v3 existingObjectWithID:a2 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  if (v5 && ([v5 isFault] & 1) == 0)
  {
    [*(a1 + 32) refreshObject:v5 mergeChanges:1];
  }
}

+ (BOOL)batchUpdate:(id)a3 withPredicate:(id)a4 propertiesToUpdate:(id)a5 moc:(id)a6
{
  v31 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (v9)
  {
    v13 = v11 == 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = !v13;
  if (v13)
  {
    v15 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v24 = "+[AnalyticsStoreProxy batchUpdate:withPredicate:propertiesToUpdate:moc:]";
      v25 = 1024;
      v26 = 273;
      v27 = 2112;
      v28 = v9;
      v29 = 2112;
      v30 = v11;
      _os_log_impl(&dword_1C8460000, v15, OS_LOG_TYPE_ERROR, "%{public}s::%d:entityName %@ or propertiesToUpdate %@ nil", buf, 0x26u);
    }
  }

  else
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __72__AnalyticsStoreProxy_batchUpdate_withPredicate_propertiesToUpdate_moc___block_invoke;
    v18[3] = &unk_1E830E938;
    v19 = v9;
    v20 = v11;
    v21 = v10;
    v22 = v12;
    [v22 performBlockAndWait:v18];

    v15 = v19;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v14;
}

void __72__AnalyticsStoreProxy_batchUpdate_withPredicate_propertiesToUpdate_moc___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695D560] batchUpdateRequestWithEntityName:*(a1 + 32)];
  [v2 setPropertiesToUpdate:*(a1 + 40)];
  [v2 setPredicate:*(a1 + 48)];
  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = [v3 predicateFormat];
  }

  else
  {
    v4 = 0;
  }

  v5 = [*(a1 + 56) persistentStoreCoordinator];
  v6 = [v5 persistentStores];
  [v2 setAffectedStores:v6];

  [v2 setResultType:1];
  v7 = *(a1 + 56);
  v23 = 0;
  v8 = [v7 executeRequest:v2 error:&v23];
  v9 = v23;
  v10 = [v8 result];
  v11 = objc_opt_respondsToSelector();

  if ((v11 & 1) == 0)
  {
    v15 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    *buf = 136446466;
    v25 = "+[AnalyticsStoreProxy batchUpdate:withPredicate:propertiesToUpdate:moc:]_block_invoke";
    v26 = 1024;
    v27 = 268;
    v16 = "%{public}s::%d:batchUpdate results empty";
LABEL_11:
    _os_log_impl(&dword_1C8460000, v15, OS_LOG_TYPE_ERROR, v16, buf, 0x12u);
    goto LABEL_12;
  }

  v12 = [v8 result];
  v13 = [v12 count];

  if (!v13)
  {
    v15 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    *buf = 136446466;
    v25 = "+[AnalyticsStoreProxy batchUpdate:withPredicate:propertiesToUpdate:moc:]_block_invoke";
    v26 = 1024;
    v27 = 265;
    v16 = "%{public}s::%d:batchUpdate count is 0";
    goto LABEL_11;
  }

  v14 = *(a1 + 56);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __72__AnalyticsStoreProxy_batchUpdate_withPredicate_propertiesToUpdate_moc___block_invoke_2;
  v18[3] = &unk_1E830E938;
  v19 = v8;
  v20 = *(a1 + 56);
  v21 = *(a1 + 32);
  v22 = v4;
  [v14 performBlockAndWait:v18];

  v15 = v19;
LABEL_12:

  v17 = *MEMORY[0x1E69E9840];
}

void __72__AnalyticsStoreProxy_batchUpdate_withPredicate_propertiesToUpdate_moc___block_invoke_2(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v2 = [*(a1 + 32) result];
  v3 = [v2 countByEnumeratingWithState:&v20 objects:v34 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v21;
    *&v4 = 136447234;
    v18 = v4;
    do
    {
      v7 = 0;
      do
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v20 + 1) + 8 * v7);
        v9 = *(a1 + 40);
        v19 = 0;
        v10 = [v9 existingObjectWithID:v8 error:{&v19, v18}];
        v11 = v19;
        [*(a1 + 40) refreshObject:v10 mergeChanges:1];
        v12 = WALogCategoryDeviceStoreHandle();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          v13 = [*(a1 + 32) result];
          v14 = [v13 count];
          v15 = *(a1 + 48);
          v16 = *(a1 + 56);
          *buf = v18;
          v25 = "+[AnalyticsStoreProxy batchUpdate:withPredicate:propertiesToUpdate:moc:]_block_invoke_2";
          v26 = 1024;
          v27 = 261;
          v28 = 2048;
          v29 = v14;
          v30 = 2112;
          v31 = v15;
          v32 = 2112;
          v33 = v16;
          _os_log_impl(&dword_1C8460000, v12, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Batch updated %lu MOs of entity[%@] predicateFormat[%@]", buf, 0x30u);
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v2 countByEnumeratingWithState:&v20 objects:v34 count:16];
    }

    while (v5);
  }

  v17 = *MEMORY[0x1E69E9840];
}

+ (id)fetchPropertiesForEntity:(id)a3 properties:(id)a4 predicate:(id)a5 moc:(id)a6
{
  v28 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [AnalyticsStoreProxy fetchRequestForEntity:v9];
  v14 = v13;
  if (v13)
  {
    if (v12)
    {
      [v13 setResultType:2];
      [v14 setReturnsDistinctResults:1];
      [v14 setPropertiesToFetch:v10];
      v15 = [AnalyticsStoreProxy fetch:v14 withPredicate:v11 moc:v12];
      goto LABEL_4;
    }

    v18 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v22 = 136446466;
      v23 = "+[AnalyticsStoreProxy fetchPropertiesForEntity:properties:predicate:moc:]";
      v24 = 1024;
      v25 = 286;
      v19 = "%{public}s::%d:moc nil";
      v20 = v18;
      v21 = 18;
      goto LABEL_11;
    }
  }

  else
  {
    v18 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v22 = 136446722;
      v23 = "+[AnalyticsStoreProxy fetchPropertiesForEntity:properties:predicate:moc:]";
      v24 = 1024;
      v25 = 285;
      v26 = 2112;
      v27 = v9;
      v19 = "%{public}s::%d:fetch request nil for entity:%@";
      v20 = v18;
      v21 = 28;
LABEL_11:
      _os_log_impl(&dword_1C8460000, v20, OS_LOG_TYPE_ERROR, v19, &v22, v21);
    }
  }

  v15 = 0;
LABEL_4:

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

@end