@interface _PSBackgroundProcessingTask
+ (BOOL)attachmentsInObject:(id)object hasField:(id)field;
+ (id)interactionStore;
+ (id)savedBookmark;
+ (void)savedBookmark;
+ (void)updateInteractionWithPhotoFeatures:(id)features;
- (BOOL)updatePlistWithDict:(id)dict;
- (_PSBackgroundProcessingTask)init;
- (void)handleRepeatingTask:(id)task;
- (void)saveBookmark;
@end

@implementation _PSBackgroundProcessingTask

+ (id)interactionStore
{
  v2 = MEMORY[0x1E69978F8];
  defaultDatabaseDirectory = [MEMORY[0x1E69978F8] defaultDatabaseDirectory];
  v4 = [v2 storeWithDirectory:defaultDatabaseDirectory readOnly:0];

  [v4 setReadConcurrently:1];

  return v4;
}

+ (id)savedBookmark
{
  peopleDirectory = [MEMORY[0x1E6997910] peopleDirectory];
  v3 = [peopleDirectory stringByAppendingPathComponent:@"PSBackgroundTaskData"];

  v4 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:v3];
  if (v4)
  {
    v11 = 0;
    v5 = [MEMORY[0x1E696AE40] propertyListWithData:v4 options:0 format:0 error:&v11];
    v6 = v11;
    if (v6)
    {
      v7 = +[_PSLogging psBackgroundProcessingChannel];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        +[(_PSBackgroundProcessingTask *)v6];
      }
    }

    if (v5)
    {
      v8 = [v5 objectForKeyedSubscript:@"_PSInteractionsUpdate"];
      distantPast = [v8 objectForKeyedSubscript:@"BookmarkDate"];

      if (distantPast)
      {

        goto LABEL_11;
      }
    }
  }

  distantPast = [MEMORY[0x1E695DF00] distantPast];
LABEL_11:

  return distantPast;
}

- (_PSBackgroundProcessingTask)init
{
  v8.receiver = self;
  v8.super_class = _PSBackgroundProcessingTask;
  v2 = [(_PSBackgroundProcessingTask *)&v8 init];
  if (v2)
  {
    v3 = +[_PSBackgroundProcessingTask interactionStore];
    interactionStore = v2->_interactionStore;
    v2->_interactionStore = v3;

    v5 = +[_PSBackgroundProcessingTask savedBookmark];
    bookmark = v2->_bookmark;
    v2->_bookmark = v5;
  }

  return v2;
}

- (void)handleRepeatingTask:(id)task
{
  v43[1] = *MEMORY[0x1E69E9840];
  taskCopy = task;
  v4 = +[_PSLogging psBackgroundProcessingChannel];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [_PSBackgroundProcessingTask handleRepeatingTask:v4];
  }

  v37 = 0;
  v38 = &v37;
  v39 = 0x3020000000;
  v40 = 0;
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __51___PSBackgroundProcessingTask_handleRepeatingTask___block_invoke;
  v36[3] = &unk_1E7C262F0;
  v36[4] = self;
  v36[5] = &v37;
  [taskCopy setExpirationHandler:v36];
  v32 = [MEMORY[0x1E696AE18] predicateWithFormat:@"startDate > %@ AND direction == %@ AND mechanism IN %@", self->_bookmark, &unk_1F2D8BCE8, &unk_1F2D8C5A0];
  v35 = 0;
  interactionStore = self->_interactionStore;
  v6 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startDate" ascending:1];
  v43[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:1];
  v8 = [(_CDInteractionStore *)interactionStore queryInteractionsUsingPredicate:v32 sortDescriptors:v7 limit:-1 offset:0 objectIDs:&v35 error:0];

  v9 = [v8 count];
  if (v9 == [v35 count])
  {
    v10 = 0;
    v11 = *MEMORY[0x1E696A388];
    while ([v35 count] > v10)
    {
      if (*(v38 + 40) == 1)
      {
        v23 = +[_PSLogging psBackgroundProcessingChannel];
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          [_PSBackgroundProcessingTask handleRepeatingTask:v23];
        }

        goto LABEL_14;
      }

      v12 = MEMORY[0x1E6997950];
      storage = [(_CDInteractionStore *)self->_interactionStore storage];
      v14 = [storage managedObjectContextFor:v11];
      v15 = MEMORY[0x1E696AE18];
      v16 = [v35 objectAtIndexedSubscript:v10];
      v42 = v16;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v42 count:1];
      v18 = [v15 predicateWithFormat:@"self in %@", v17];
      LOBYTE(v31) = 0;
      v19 = [v12 updateObjectsInContext:v14 entityName:@"Interactions" predicate:v18 sortDescriptors:0 batchFetchLimit:-1 totalFetchLimit:-1 includeSubentities:v31 updateBlock:&__block_literal_global_39];

      if (!v19)
      {
        v23 = +[_PSLogging psBackgroundProcessingChannel];
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v24 = [v8 objectAtIndexedSubscript:v10];
          uuid = [v24 uuid];
          [(_PSBackgroundProcessingTask *)uuid handleRepeatingTask:v41, v23, v24];
        }

LABEL_14:

        break;
      }

      v20 = [v8 objectAtIndexedSubscript:v10];
      startDate = [v20 startDate];
      bookmark = self->_bookmark;
      self->_bookmark = startDate;

      [(_PSBackgroundProcessingTask *)self saveBookmark];
      ++v10;
    }

    if (v38[5])
    {
      v34 = 0;
      v26 = [taskCopy setTaskExpiredWithRetryAfter:&v34 error:0.0];
      v27 = v34;
      if ((v26 & 1) == 0)
      {
        [taskCopy setTaskCompleted];
        v28 = +[_PSLogging psBackgroundProcessingChannel];
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          [(_PSBackgroundProcessingTask *)v27 handleRepeatingTask:v28, v29];
        }
      }
    }

    else
    {
      [taskCopy setTaskCompleted];
      v27 = +[_PSLogging psBackgroundProcessingChannel];
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        [_PSBackgroundProcessingTask handleRepeatingTask:v27];
      }
    }
  }

  else
  {
    [taskCopy setTaskCompleted];
  }

  _Block_object_dispose(&v37, 8);
  v30 = *MEMORY[0x1E69E9840];
}

- (void)saveBookmark
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = *self;
  v5 = 138412290;
  v6 = v3;
  OUTLINED_FUNCTION_0_10(&dword_1B5ED1000, a2, a3, "Could not update plist file for bookmark: %@", &v5);
  v4 = *MEMORY[0x1E69E9840];
}

- (BOOL)updatePlistWithDict:(id)dict
{
  v9 = 0;
  v3 = [MEMORY[0x1E696AE40] dataWithPropertyList:dict format:200 options:0 error:&v9];
  v4 = v9;
  if (v3)
  {
    peopleDirectory = [MEMORY[0x1E6997910] peopleDirectory];
    v6 = [peopleDirectory stringByAppendingPathComponent:@"PSBackgroundTaskData"];

    v7 = [v3 writeToFile:v6 atomically:1];
  }

  else
  {
    v6 = +[_PSLogging psBackgroundProcessingChannel];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(_PSBackgroundProcessingTask *)v4 updatePlistWithDict:v6];
    }

    v7 = 0;
  }

  return v7;
}

+ (void)updateInteractionWithPhotoFeatures:(id)features
{
  v33 = *MEMORY[0x1E69E9840];
  featuresCopy = features;
  v25 = [_PSBackgroundProcessingTask attachmentsInObject:featuresCopy hasField:@"photoSceneDescriptor"];
  v24 = [_PSBackgroundProcessingTask attachmentsInObject:featuresCopy hasField:@"personInPhoto"];
  v4 = objc_opt_new();
  v22 = featuresCopy;
  v5 = [featuresCopy valueForKey:@"attachments"];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = @"photoLocalIdentifier";
    v9 = *v27;
    v23 = v4;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v26 + 1) + 8 * i);
        v12 = [v11 valueForKey:v8];
        if (v12 && ([v4 containsObject:v12] & 1) == 0)
        {
          if (!v25)
          {
            v31 = v12;
            v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
            v14 = [_PSPhotoUtils sceneTagsForPhotosWithIdentifiers:v13];

            if ([v14 count])
            {
              v15 = [v14 componentsJoinedByString:@""];;
              [v11 setValue:v15 forKey:@"photoSceneDescriptor"];
            }
          }

          if (!v24)
          {
            v16 = v8;
            v17 = v5;
            v30 = v12;
            v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
            v19 = [_PSPhotoUtils personIdentifiersForPeopleInPicturesWithIdentifiers:v18];

            if ([v19 count])
            {
              v20 = [v19 componentsJoinedByString:@""];;
              [v11 setValue:v20 forKey:@"personInPhoto"];
            }

            v5 = v17;
            v8 = v16;
            v4 = v23;
          }

          [v4 addObject:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v26 objects:v32 count:16];
    }

    while (v7);
  }

  v21 = *MEMORY[0x1E69E9840];
}

+ (BOOL)attachmentsInObject:(id)object hasField:(id)field
{
  v18 = *MEMORY[0x1E69E9840];
  fieldCopy = field;
  [object valueForKey:@"attachments"];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v16 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) valueForKey:{fieldCopy, v13}];

        if (v10)
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v11 = *MEMORY[0x1E69E9840];
  return v7;
}

+ (void)savedBookmark
{
  v8 = *MEMORY[0x1E69E9840];
  localizedDescription = [self localizedDescription];
  v6 = 138412290;
  v7 = localizedDescription;
  OUTLINED_FUNCTION_0_10(&dword_1B5ED1000, a2, v4, "Error encountered while reading bookmark: %@", &v6);

  v5 = *MEMORY[0x1E69E9840];
}

- (void)handleRepeatingTask:(os_log_t)log .cold.1(os_log_t log)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = @"com.apple.proactive.psbackgroundprocessingtask";
  _os_log_debug_impl(&dword_1B5ED1000, log, OS_LOG_TYPE_DEBUG, "Running background task: %@", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)handleRepeatingTask:(NSObject *)a3 .cold.2(void *a1, uint64_t a2, NSObject *a3, void *a4)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_0_10(&dword_1B5ED1000, a3, a3, "Failed to update interaction with uuid: %@", a2);
}

- (void)handleRepeatingTask:(os_log_t)log .cold.4(os_log_t log)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = @"com.apple.proactive.psbackgroundprocessingtask";
  _os_log_debug_impl(&dword_1B5ED1000, log, OS_LOG_TYPE_DEBUG, "Completed background task: %@", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)handleRepeatingTask:(uint64_t)a3 .cold.5(__CFString *a1, NSObject *a2, uint64_t a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = @"Unknown";
  if (a1)
  {
    v3 = a1;
  }

  v5 = 138412290;
  v6 = v3;
  OUTLINED_FUNCTION_0_10(&dword_1B5ED1000, a2, a3, "Failed to expire task with error: %@", &v5);
  v4 = *MEMORY[0x1E69E9840];
}

- (void)updatePlistWithDict:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = [a1 localizedDescription];
  v6 = 138412290;
  v7 = v3;
  OUTLINED_FUNCTION_0_10(&dword_1B5ED1000, a2, v4, "Error encountered while updating bookmark: %@", &v6);

  v5 = *MEMORY[0x1E69E9840];
}

@end