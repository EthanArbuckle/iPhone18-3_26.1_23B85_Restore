@interface PLAssetResourceUploadJob
+ (id)_uploadJobsMatchingPredicate:(id)predicate sortDescriptors:(id)descriptors limit:(int64_t)limit inPhotoLibrary:(id)library error:(id *)error;
+ (id)insertInManagedObjectContext:(id)context withUUID:(id)d;
+ (id)predicateForAcknowledgeableJobs;
+ (id)uploadJobsWithConfiguration:(id)configuration inPhotoLibrary:(id)library error:(id *)error;
+ (id)uploadJobsWithConfiguration:(id)configuration state:(signed __int16)state inPhotoLibrary:(id)library error:(id *)error;
+ (id)uploadJobsWithUUIDs:(id)ds inPhotoLibrary:(id)library error:(id *)error;
+ (unint64_t)_countOfUploadJobsWithPredicate:(id)predicate inPhotoLibrary:(id)library error:(id *)error;
+ (unint64_t)_deleteUploadJobsMatchingPredicate:(id)predicate inPhotoLibrary:(id)library;
+ (unint64_t)countOfAcknowledgedUploadJobsWithConfiguration:(id)configuration inPhotoLibrary:(id)library error:(id *)error;
+ (unint64_t)countOfUploadJobsWithConfiguration:(id)configuration state:(signed __int16)state inPhotoLibrary:(id)library error:(id *)error;
+ (unint64_t)countOfUploadJobsWithConfiguration:(id)configuration states:(id)states inPhotoLibrary:(id)library error:(id *)error;
+ (unint64_t)deleteUploadJobsWithConfiguration:(id)configuration inPhotoLibrary:(id)library;
+ (unint64_t)deleteUploadJobsWithConfiguration:(id)configuration state:(signed __int16)state inPhotoLibrary:(id)library;
+ (unint64_t)deleteUploadJobsWithUUIDs:(id)ds inPhotoLibrary:(id)library;
+ (void)_signalPendingBackgroundUploadWorkItemForLibrary:(id)library;
- (NSData)urlRequestData;
- (void)delete;
- (void)setUrlRequestData:(id)data;
- (void)updateState:(signed __int16)state;
- (void)willSave;
@end

@implementation PLAssetResourceUploadJob

- (void)updateState:(signed __int16)state
{
  stateCopy = state;
  [(PLAssetResourceUploadJob *)self willChangeValueForKey:@"state"];
  v5 = [MEMORY[0x1E696AD98] numberWithShort:stateCopy];
  [(PLAssetResourceUploadJob *)self setPrimitiveValue:v5 forKey:@"state"];

  [(PLAssetResourceUploadJob *)self didChangeValueForKey:@"state"];
  date = [MEMORY[0x1E695DF00] date];
  [(PLAssetResourceUploadJob *)self setLastModifiedDate:date];
}

- (void)willSave
{
  v15.receiver = self;
  v15.super_class = PLAssetResourceUploadJob;
  [(PLManagedObject *)&v15 willSave];
  managedObjectContext = [(PLAssetResourceUploadJob *)self managedObjectContext];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([(PLAssetResourceUploadJob *)self isDeleted]& 1) == 0)
  {
    if ([(PLAssetResourceUploadJob *)self isInserted])
    {
      v4 = objc_opt_class();
      photoLibrary = [(PLManagedObject *)self photoLibrary];
      [v4 _signalPendingBackgroundUploadWorkItemForLibrary:photoLibrary];
    }

    changedValues = [(PLAssetResourceUploadJob *)self changedValues];
    v7 = [changedValues objectForKeyedSubscript:@"state"];

    if (!v7)
    {
      goto LABEL_14;
    }

    state = [(PLAssetResourceUploadJob *)self state];
    if ((state - 3) >= 3)
    {
      if ((state - 1) >= 2)
      {
LABEL_14:

        goto LABEL_15;
      }
    }

    else
    {
      v9 = PLBackendGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *v14 = 0;
        _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_INFO, "PLAssetResourceJob is signaling the extension worker", v14, 2u);
      }

      photoLibrary2 = [(PLManagedObject *)self photoLibrary];
      [PLAssetResourceUploadJobConfiguration signalPendingBackgroundProcessingForLibrary:photoLibrary2];
    }

    v11 = PLBackendGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *v14 = 0;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_INFO, "PLAssetResourceJob is signaling the upload worker", v14, 2u);
    }

    v12 = objc_opt_class();
    photoLibrary3 = [(PLManagedObject *)self photoLibrary];
    [v12 _signalPendingBackgroundUploadWorkItemForLibrary:photoLibrary3];

    goto LABEL_14;
  }

LABEL_15:
}

- (void)setUrlRequestData:(id)data
{
  dataCopy = data;
  managedObjectContext = [(PLAssetResourceUploadJob *)self managedObjectContext];
  request = [(PLAssetResourceUploadJob *)self request];
  if (dataCopy)
  {
    if (!request)
    {
      managedObjectContext2 = [(PLAssetResourceUploadJob *)self managedObjectContext];
      request = [(PLManagedObject *)PLAssetResourceUploadJobRequest insertInManagedObjectContext:managedObjectContext2];

      [(PLAssetResourceUploadJob *)self setRequest:request];
    }

    [request setUrlRequestData:dataCopy];
  }

  else
  {
    if (!request)
    {
      goto LABEL_8;
    }

    [managedObjectContext deleteObject:request];
    [(PLAssetResourceUploadJob *)self setRequest:0];
  }

LABEL_8:
}

- (NSData)urlRequestData
{
  request = [(PLAssetResourceUploadJob *)self request];
  v3 = request;
  if (request)
  {
    urlRequestData = [request urlRequestData];
  }

  else
  {
    urlRequestData = 0;
  }

  return urlRequestData;
}

- (void)delete
{
  managedObjectContext = [(PLAssetResourceUploadJob *)self managedObjectContext];
  [managedObjectContext deleteObject:self];
}

+ (void)_signalPendingBackgroundUploadWorkItemForLibrary:(id)library
{
  libraryCopy = library;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __77__PLAssetResourceUploadJob__signalPendingBackgroundUploadWorkItemForLibrary___block_invoke;
  v5[3] = &unk_1E75781E8;
  v6 = libraryCopy;
  v4 = libraryCopy;
  [v4 performBlock:v5];
}

void __77__PLAssetResourceUploadJob__signalPendingBackgroundUploadWorkItemForLibrary___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[PLBackgroundJobWorkerTypes maskForAssetResourceUploadJob];
  [v1 signalBackgroundProcessingNeededForWorkerTypes:v2];
}

+ (unint64_t)_countOfUploadJobsWithPredicate:(id)predicate inPhotoLibrary:(id)library error:(id *)error
{
  predicateCopy = predicate;
  libraryCopy = library;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__6141;
  v28 = __Block_byref_object_dispose__6142;
  v29 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __81__PLAssetResourceUploadJob__countOfUploadJobsWithPredicate_inPhotoLibrary_error___block_invoke;
  v15[3] = &unk_1E7578898;
  v9 = predicateCopy;
  v16 = v9;
  v10 = libraryCopy;
  v17 = v10;
  v18 = &v24;
  v19 = &v20;
  [v10 performBlockAndWait:v15];
  v11 = v21[3];
  v12 = v25[5];
  if (v11 == 0x7FFFFFFFFFFFFFFFLL && error)
  {
    v12 = v12;
    *error = v12;
  }

  v13 = v21[3];
  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);

  return v13;
}

void __81__PLAssetResourceUploadJob__countOfUploadJobsWithPredicate_inPhotoLibrary_error___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E695D5E0];
  v3 = +[PLAssetResourceUploadJob entityName];
  v4 = [v2 fetchRequestWithEntityName:v3];

  [v4 setResultType:4];
  [v4 setPredicate:*(a1 + 32)];
  v5 = [*(a1 + 40) managedObjectContext];
  v6 = *(*(a1 + 48) + 8);
  obj = *(v6 + 40);
  v7 = [v5 countForFetchRequest:v4 error:&obj];
  objc_storeStrong((v6 + 40), obj);

  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    *(*(*(a1 + 56) + 8) + 24) = v7;
  }
}

+ (unint64_t)countOfUploadJobsWithConfiguration:(id)configuration states:(id)states inPhotoLibrary:(id)library error:(id *)error
{
  v34[2] = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  statesCopy = states;
  libraryCopy = library;
  v13 = MEMORY[0x1E696AB28];
  v14 = MEMORY[0x1E696AE18];
  if (configurationCopy)
  {
    objectID = [configurationCopy objectID];
    v16 = [v14 predicateWithFormat:@"%K == %@", @"configuration", objectID];
  }

  else
  {
    v16 = [MEMORY[0x1E696AE18] predicateWithValue:1];
    objectID = v16;
  }

  v34[0] = v16;
  if ([statesCopy count])
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"state", statesCopy];
  }

  else
  {
    [MEMORY[0x1E696AE18] predicateWithValue:1];
  }
  v17 = ;
  v34[1] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:2];
  v19 = [v13 andPredicateWithSubpredicates:v18];

  if (configurationCopy)
  {
  }

  v27 = 0;
  v20 = [self _countOfUploadJobsWithPredicate:v19 inPhotoLibrary:libraryCopy error:&v27];
  v21 = v27;
  v22 = v21;
  if (v20 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (error)
    {
      v23 = v21;
      *error = v22;
    }

    v24 = PLBackendGetLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      uuid = [configurationCopy uuid];
      *buf = 138412802;
      v29 = statesCopy;
      v30 = 2114;
      v31 = uuid;
      v32 = 2112;
      v33 = v22;
      _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_ERROR, "Failed to fetch count of jobs with state (%@) for configuration: %{public}@: %@", buf, 0x20u);
    }
  }

  return v20;
}

+ (unint64_t)countOfUploadJobsWithConfiguration:(id)configuration state:(signed __int16)state inPhotoLibrary:(id)library error:(id *)error
{
  stateCopy = state;
  v17[1] = *MEMORY[0x1E69E9840];
  v10 = MEMORY[0x1E696AD98];
  libraryCopy = library;
  configurationCopy = configuration;
  v13 = [v10 numberWithShort:stateCopy];
  v17[0] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  v15 = [self countOfUploadJobsWithConfiguration:configurationCopy states:v14 inPhotoLibrary:libraryCopy error:error];

  return v15;
}

+ (unint64_t)countOfAcknowledgedUploadJobsWithConfiguration:(id)configuration inPhotoLibrary:(id)library error:(id *)error
{
  v29[2] = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  libraryCopy = library;
  v11 = MEMORY[0x1E696AB28];
  v12 = MEMORY[0x1E696AE18];
  if (configurationCopy)
  {
    objectID = [configurationCopy objectID];
    [v12 predicateWithFormat:@"%K == %@", @"configuration", objectID];
  }

  else
  {
    [MEMORY[0x1E696AE18] predicateWithValue:1];
  }
  v13 = ;
  v29[0] = v13;
  predicateForAcknowledgeableJobs = [self predicateForAcknowledgeableJobs];
  v29[1] = predicateForAcknowledgeableJobs;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
  v16 = [v11 andPredicateWithSubpredicates:v15];

  if (configurationCopy)
  {

    v13 = objectID;
  }

  v24 = 0;
  v17 = [self _countOfUploadJobsWithPredicate:v16 inPhotoLibrary:libraryCopy error:&v24];
  v18 = v24;
  v19 = v18;
  if (v17 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (error)
    {
      v20 = v18;
      *error = v19;
    }

    v21 = PLBackendGetLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      uuid = [configurationCopy uuid];
      *buf = 138543618;
      v26 = uuid;
      v27 = 2112;
      v28 = v19;
      _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_ERROR, "Failed to fetch count of unacknowledged jobs for configuration: %{public}@: %@", buf, 0x16u);
    }
  }

  return v17;
}

+ (id)predicateForAcknowledgeableJobs
{
  v8[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AB28];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != %hu", @"clientStatus", 1];
  v8[0] = v3;
  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"state", &unk_1F0FBF358];
  v8[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];
  v6 = [v2 andPredicateWithSubpredicates:v5];

  return v6;
}

+ (unint64_t)_deleteUploadJobsMatchingPredicate:(id)predicate inPhotoLibrary:(id)library
{
  predicateCopy = predicate;
  libraryCopy = library;
  v8 = objc_autoreleasePoolPush();
  v9 = MEMORY[0x1E695D5E0];
  entityName = [self entityName];
  v11 = [v9 fetchRequestWithEntityName:entityName];

  [v11 setPredicate:predicateCopy];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __78__PLAssetResourceUploadJob__deleteUploadJobsMatchingPredicate_inPhotoLibrary___block_invoke;
  v16[3] = &unk_1E7578820;
  v12 = libraryCopy;
  v17 = v12;
  v13 = v11;
  v18 = v13;
  v19 = &v20;
  [v12 performBlockAndWait:v16];
  v14 = v21[3];

  _Block_object_dispose(&v20, 8);
  objc_autoreleasePoolPop(v8);

  return v14;
}

void __78__PLAssetResourceUploadJob__deleteUploadJobsMatchingPredicate_inPhotoLibrary___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = [v2 enumerateObjectsFromFetchRequest:*(a1 + 40) count:*(*(a1 + 48) + 8) + 24 batchSize:100 usingBlock:&__block_literal_global_6171];

  v4 = PLBackendGetLog();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (v3)
  {
    if (v5)
    {
      v8 = 138543362;
      v9 = v3;
      v6 = "Error fetching uploadJobs: %{public}@";
LABEL_6:
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEBUG, v6, &v8, 0xCu);
    }
  }

  else if (v5)
  {
    v7 = *(*(*(a1 + 48) + 8) + 24);
    v8 = 134349056;
    v9 = v7;
    v6 = "Deleted %{public}lu uploadJobs";
    goto LABEL_6;
  }
}

+ (unint64_t)deleteUploadJobsWithConfiguration:(id)configuration state:(signed __int16)state inPhotoLibrary:(id)library
{
  stateCopy = state;
  v17[2] = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  libraryCopy = library;
  v10 = MEMORY[0x1E696AB28];
  if (configurationCopy)
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"configuration", configurationCopy];
  }

  else
  {
    [MEMORY[0x1E696AE18] predicateWithValue:1];
  }
  v11 = ;
  v17[0] = v11;
  stateCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"state", stateCopy];
  v17[1] = stateCopy;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
  v14 = [v10 andPredicateWithSubpredicates:v13];

  v15 = [self _deleteUploadJobsMatchingPredicate:v14 inPhotoLibrary:libraryCopy];
  return v15;
}

+ (unint64_t)deleteUploadJobsWithConfiguration:(id)configuration inPhotoLibrary:(id)library
{
  v6 = MEMORY[0x1E696AE18];
  libraryCopy = library;
  configuration = [v6 predicateWithFormat:@"%K == %@", @"configuration", configuration];
  v9 = [self _deleteUploadJobsMatchingPredicate:configuration inPhotoLibrary:libraryCopy];

  return v9;
}

+ (unint64_t)deleteUploadJobsWithUUIDs:(id)ds inPhotoLibrary:(id)library
{
  v6 = MEMORY[0x1E696AE18];
  libraryCopy = library;
  v8 = [v6 predicateWithFormat:@"%K IN %@", @"uuid", ds];
  v9 = [self _deleteUploadJobsMatchingPredicate:v8 inPhotoLibrary:libraryCopy];

  return v9;
}

+ (id)_uploadJobsMatchingPredicate:(id)predicate sortDescriptors:(id)descriptors limit:(int64_t)limit inPhotoLibrary:(id)library error:(id *)error
{
  predicateCopy = predicate;
  descriptorsCopy = descriptors;
  libraryCopy = library;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__6141;
  v40 = __Block_byref_object_dispose__6142;
  v41 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__6141;
  v34 = __Block_byref_object_dispose__6142;
  v35 = 0;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __100__PLAssetResourceUploadJob__uploadJobsMatchingPredicate_sortDescriptors_limit_inPhotoLibrary_error___block_invoke;
  v22[3] = &unk_1E7565F90;
  selfCopy = self;
  v15 = predicateCopy;
  v23 = v15;
  v16 = descriptorsCopy;
  limitCopy = limit;
  v24 = v16;
  v26 = &v36;
  v17 = libraryCopy;
  v25 = v17;
  v27 = &v30;
  [v17 performBlockAndWait:v22];
  v18 = v37[5];
  v19 = v31[5];
  if (!v18 && error)
  {
    v19 = v19;
    *error = v19;
  }

  v20 = v37[5];
  _Block_object_dispose(&v30, 8);

  _Block_object_dispose(&v36, 8);

  return v20;
}

void __100__PLAssetResourceUploadJob__uploadJobsMatchingPredicate_sortDescriptors_limit_inPhotoLibrary_error___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695D5E0];
  v3 = [*(a1 + 72) entityName];
  v4 = [v2 fetchRequestWithEntityName:v3];

  [v4 setFetchBatchSize:100];
  [v4 setPredicate:*(a1 + 32)];
  if (*(a1 + 40))
  {
    [v4 setSortDescriptors:?];
  }

  if (*(a1 + 80) >= 1)
  {
    [v4 setFetchLimit:?];
  }

  v5 = [*(a1 + 48) managedObjectContext];
  v6 = *(*(a1 + 64) + 8);
  obj = *(v6 + 40);
  v7 = [v5 executeFetchRequest:v4 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  v8 = *(*(a1 + 56) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  if (!*(*(*(a1 + 56) + 8) + 40))
  {
    v10 = PLBackendGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = *(*(*(a1 + 64) + 8) + 40);
      *buf = 138412290;
      v14 = v11;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "Failed to fetch uploadJobs: %@", buf, 0xCu);
    }
  }
}

+ (id)uploadJobsWithConfiguration:(id)configuration state:(signed __int16)state inPhotoLibrary:(id)library error:(id *)error
{
  stateCopy = state;
  v19[2] = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  libraryCopy = library;
  v12 = MEMORY[0x1E696AB28];
  if (configurationCopy)
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"configuration", configurationCopy];
  }

  else
  {
    [MEMORY[0x1E696AE18] predicateWithValue:1];
  }
  v13 = ;
  v19[0] = v13;
  stateCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"state", stateCopy];
  v19[1] = stateCopy;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
  v16 = [v12 andPredicateWithSubpredicates:v15];

  v17 = [self _uploadJobsMatchingPredicate:v16 sortDescriptors:0 limit:0 inPhotoLibrary:libraryCopy error:error];

  return v17;
}

+ (id)uploadJobsWithConfiguration:(id)configuration inPhotoLibrary:(id)library error:(id *)error
{
  v8 = MEMORY[0x1E696AE18];
  libraryCopy = library;
  configuration = [v8 predicateWithFormat:@"%K == %@", @"configuration", configuration];
  v11 = [self _uploadJobsMatchingPredicate:configuration sortDescriptors:0 limit:0 inPhotoLibrary:libraryCopy error:error];

  return v11;
}

+ (id)uploadJobsWithUUIDs:(id)ds inPhotoLibrary:(id)library error:(id *)error
{
  v8 = MEMORY[0x1E696AE18];
  libraryCopy = library;
  v10 = [v8 predicateWithFormat:@"%K IN %@", @"uuid", ds];
  v11 = [self _uploadJobsMatchingPredicate:v10 sortDescriptors:0 limit:0 inPhotoLibrary:libraryCopy error:error];

  return v11;
}

+ (id)insertInManagedObjectContext:(id)context withUUID:(id)d
{
  dCopy = d;
  v7 = [self insertInManagedObjectContext:context];
  if (dCopy)
  {
    uUIDString = dCopy;
    if (!v7)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];

  if (v7)
  {
LABEL_3:
    [v7 setUuid:uUIDString];
  }

LABEL_4:

  return v7;
}

@end