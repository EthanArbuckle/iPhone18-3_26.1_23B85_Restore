@interface STPurgeUsageOperation
- (BOOL)_runWithManagedObjectContext:(id)context error:(id *)error;
- (STPurgeUsageOperation)initWithPersistenceController:(id)controller purgeAllUsage:(BOOL)usage;
- (void)main;
@end

@implementation STPurgeUsageOperation

- (STPurgeUsageOperation)initWithPersistenceController:(id)controller purgeAllUsage:(BOOL)usage
{
  v6.receiver = self;
  v6.super_class = STPurgeUsageOperation;
  result = [(STPersistenceOperation *)&v6 initWithPersistenceController:controller];
  result->_purgeAllUsage = usage;
  return result;
}

- (void)main
{
  v3 = _os_activity_create(&_mh_execute_header, "STPurgeUsageOperation start", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  [(STOperation *)self setActivity:v3];

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  activity = [(STOperation *)self activity];
  os_activity_scope_enter(activity, &state);

  persistenceController = [(STPersistenceOperation *)self persistenceController];
  newBackgroundContext = [persistenceController newBackgroundContext];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10005E9F8;
  v8[3] = &unk_1001A3020;
  v8[4] = self;
  v7 = newBackgroundContext;
  v9 = v7;
  [v7 performBlock:v8];

  os_activity_scope_leave(&state);
}

- (BOOL)_runWithManagedObjectContext:(id)context error:(id *)error
{
  contextCopy = context;
  v7 = [STCoreUser fetchLocalUserInContext:contextCopy error:error];
  if (v7)
  {
    v24 = v7;
    [v7 usages];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    obj = v35 = 0u;
    v8 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (!v8)
    {
      goto LABEL_24;
    }

    v9 = v8;
    v10 = *v33;
    while (1)
    {
      v11 = 0;
      v25 = v9;
      do
      {
        if (*v33 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v32 + 1) + 8 * v11);
        if ([(STPurgeUsageOperation *)self purgeAllUsage])
        {
          goto LABEL_21;
        }

        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        blocks = [v12 blocks];
        v14 = [blocks countByEnumeratingWithState:&v28 objects:v36 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v29;
          do
          {
            for (i = 0; i != v15; i = i + 1)
            {
              if (*v29 != v16)
              {
                objc_enumerationMutation(blocks);
              }

              v18 = *(*(&v28 + 1) + 8 * i);
              if ([v18 durationInMinutes] == 60)
              {
                [contextCopy deleteObject:v18];
              }
            }

            v15 = [blocks countByEnumeratingWithState:&v28 objects:v36 count:16];
          }

          while (v15);
        }

        blocks2 = [v12 blocks];
        v20 = [blocks2 count];

        v9 = v25;
        if (!v20)
        {
          v21 = +[STLog usage];
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Purging usage with zero blocks", buf, 2u);
          }

LABEL_21:
          [contextCopy deleteObject:v12];
        }

        v11 = v11 + 1;
      }

      while (v11 != v9);
      v9 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
      if (!v9)
      {
LABEL_24:

        v7 = v24;
        break;
      }
    }
  }

  v22 = v7 != 0;

  return v22;
}

@end