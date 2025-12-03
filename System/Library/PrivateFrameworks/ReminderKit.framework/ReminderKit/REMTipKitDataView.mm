@interface REMTipKitDataView
- (REMTipKitDataView)initWithStore:(id)store;
- (id)fetchCompletedRemindersCountInList:(id)list error:(id *)error;
- (id)fetchCompletedRemindersCountWithError:(id *)error;
- (id)fetchCustomSmartListsCountWithError:(id *)error;
- (id)fetchHashtagsCountWithError:(id *)error;
- (id)fetchListsCountWithError:(id *)error;
- (id)fetchListsWithCustomBadgeCountWithError:(id *)error;
- (id)fetchUncompletedRemindersCountWithError:(id *)error;
@end

@implementation REMTipKitDataView

- (REMTipKitDataView)initWithStore:(id)store
{
  storeCopy = store;
  v9.receiver = self;
  v9.super_class = REMTipKitDataView;
  v6 = [(REMTipKitDataView *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_store, store);
  }

  return v7;
}

- (id)fetchListsCountWithError:(id *)error
{
  v5 = objc_alloc_init(REMTipKitDataViewInvocation_fetchListsCount);
  store = [(REMTipKitDataView *)self store];
  v7 = [store resultFromPerformingInvocation:v5 error:error];

  v8 = objc_opt_class();
  v9 = [v7 storedPropertyForKey:@"ListsCount"];
  v10 = REMDynamicCast(v8, v9);

  if (!v10)
  {
    v12 = +[REMLogStore read];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [REMTipKitDataView fetchListsCountWithError:];
    }

    if (error && !*error)
    {
      *error = +[REMError unexpectedError];
    }
  }

  return v10;
}

- (id)fetchListsWithCustomBadgeCountWithError:(id *)error
{
  v5 = objc_alloc_init(REMTipKitDataViewInvocation_fetchListsWithCustomBadgeCount);
  store = [(REMTipKitDataView *)self store];
  v7 = [store resultFromPerformingInvocation:v5 error:error];

  v8 = objc_opt_class();
  v9 = [v7 storedPropertyForKey:@"ListsWithCustomBadgeCount"];
  v10 = REMDynamicCast(v8, v9);

  if (!v10)
  {
    v12 = +[REMLogStore read];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [REMTipKitDataView fetchListsWithCustomBadgeCountWithError:];
    }

    if (error && !*error)
    {
      *error = +[REMError unexpectedError];
    }
  }

  return v10;
}

- (id)fetchUncompletedRemindersCountWithError:(id *)error
{
  v5 = objc_alloc_init(REMTipKitDataViewInvocation_fetchUncompletedRemindersCount);
  store = [(REMTipKitDataView *)self store];
  v7 = [store resultFromPerformingInvocation:v5 error:error];

  v8 = objc_opt_class();
  v9 = [v7 storedPropertyForKey:@"UncompletedRemindersCount"];
  v10 = REMDynamicCast(v8, v9);

  if (!v10)
  {
    v12 = +[REMLogStore read];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [REMTipKitDataView fetchUncompletedRemindersCountWithError:];
    }

    if (error && !*error)
    {
      *error = +[REMError unexpectedError];
    }
  }

  return v10;
}

- (id)fetchCompletedRemindersCountWithError:(id *)error
{
  v5 = objc_alloc_init(REMTipKitDataViewInvocation_fetchCompletedRemindersCount);
  store = [(REMTipKitDataView *)self store];
  v7 = [store resultFromPerformingInvocation:v5 error:error];

  v8 = objc_opt_class();
  v9 = [v7 storedPropertyForKey:@"CompletedRemindersCountInList"];
  v10 = REMDynamicCast(v8, v9);

  if (!v10)
  {
    v12 = +[REMLogStore read];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [REMTipKitDataView fetchCompletedRemindersCountWithError:];
    }

    if (error && !*error)
    {
      *error = +[REMError unexpectedError];
    }
  }

  return v10;
}

- (id)fetchCompletedRemindersCountInList:(id)list error:(id *)error
{
  listCopy = list;
  v7 = [[REMTipKitDataViewInvocation_fetchCompletedRemindersCountInList alloc] initWithListID:listCopy];

  store = [(REMTipKitDataView *)self store];
  v9 = [store resultFromPerformingInvocation:v7 error:error];

  v10 = objc_opt_class();
  v11 = [v9 storedPropertyForKey:@"CompletedRemindersCount"];
  v12 = REMDynamicCast(v10, v11);

  if (!v12)
  {
    v14 = +[REMLogStore read];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [REMTipKitDataView fetchCompletedRemindersCountInList:error:];
    }

    if (error && !*error)
    {
      *error = +[REMError unexpectedError];
    }
  }

  return v12;
}

- (id)fetchCustomSmartListsCountWithError:(id *)error
{
  v5 = objc_alloc_init(REMTipKitDataViewInvocation_fetchCustomSmartListsCount);
  store = [(REMTipKitDataView *)self store];
  v7 = [store resultFromPerformingInvocation:v5 error:error];

  v8 = objc_opt_class();
  v9 = [v7 storedPropertyForKey:@"CustomSmartListsCount"];
  v10 = REMDynamicCast(v8, v9);

  if (!v10)
  {
    v12 = +[REMLogStore read];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [REMTipKitDataView fetchCustomSmartListsCountWithError:];
    }

    if (error && !*error)
    {
      *error = +[REMError unexpectedError];
    }
  }

  return v10;
}

- (id)fetchHashtagsCountWithError:(id *)error
{
  v5 = objc_alloc_init(REMTipKitDataViewInvocation_fetchHashtagsCount);
  store = [(REMTipKitDataView *)self store];
  v7 = [store resultFromPerformingInvocation:v5 error:error];

  v8 = objc_opt_class();
  v9 = [v7 storedPropertyForKey:@"HashtagsCount"];
  v10 = REMDynamicCast(v8, v9);

  if (!v10)
  {
    v12 = +[REMLogStore read];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [REMTipKitDataView fetchHashtagsCountWithError:];
    }

    if (error && !*error)
    {
      *error = +[REMError unexpectedError];
    }
  }

  return v10;
}

@end