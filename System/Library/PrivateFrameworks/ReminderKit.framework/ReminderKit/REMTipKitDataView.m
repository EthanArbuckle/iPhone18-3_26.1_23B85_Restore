@interface REMTipKitDataView
- (REMTipKitDataView)initWithStore:(id)a3;
- (id)fetchCompletedRemindersCountInList:(id)a3 error:(id *)a4;
- (id)fetchCompletedRemindersCountWithError:(id *)a3;
- (id)fetchCustomSmartListsCountWithError:(id *)a3;
- (id)fetchHashtagsCountWithError:(id *)a3;
- (id)fetchListsCountWithError:(id *)a3;
- (id)fetchListsWithCustomBadgeCountWithError:(id *)a3;
- (id)fetchUncompletedRemindersCountWithError:(id *)a3;
@end

@implementation REMTipKitDataView

- (REMTipKitDataView)initWithStore:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = REMTipKitDataView;
  v6 = [(REMTipKitDataView *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_store, a3);
  }

  return v7;
}

- (id)fetchListsCountWithError:(id *)a3
{
  v5 = objc_alloc_init(REMTipKitDataViewInvocation_fetchListsCount);
  v6 = [(REMTipKitDataView *)self store];
  v7 = [v6 resultFromPerformingInvocation:v5 error:a3];

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

    if (a3 && !*a3)
    {
      *a3 = +[REMError unexpectedError];
    }
  }

  return v10;
}

- (id)fetchListsWithCustomBadgeCountWithError:(id *)a3
{
  v5 = objc_alloc_init(REMTipKitDataViewInvocation_fetchListsWithCustomBadgeCount);
  v6 = [(REMTipKitDataView *)self store];
  v7 = [v6 resultFromPerformingInvocation:v5 error:a3];

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

    if (a3 && !*a3)
    {
      *a3 = +[REMError unexpectedError];
    }
  }

  return v10;
}

- (id)fetchUncompletedRemindersCountWithError:(id *)a3
{
  v5 = objc_alloc_init(REMTipKitDataViewInvocation_fetchUncompletedRemindersCount);
  v6 = [(REMTipKitDataView *)self store];
  v7 = [v6 resultFromPerformingInvocation:v5 error:a3];

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

    if (a3 && !*a3)
    {
      *a3 = +[REMError unexpectedError];
    }
  }

  return v10;
}

- (id)fetchCompletedRemindersCountWithError:(id *)a3
{
  v5 = objc_alloc_init(REMTipKitDataViewInvocation_fetchCompletedRemindersCount);
  v6 = [(REMTipKitDataView *)self store];
  v7 = [v6 resultFromPerformingInvocation:v5 error:a3];

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

    if (a3 && !*a3)
    {
      *a3 = +[REMError unexpectedError];
    }
  }

  return v10;
}

- (id)fetchCompletedRemindersCountInList:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [[REMTipKitDataViewInvocation_fetchCompletedRemindersCountInList alloc] initWithListID:v6];

  v8 = [(REMTipKitDataView *)self store];
  v9 = [v8 resultFromPerformingInvocation:v7 error:a4];

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

    if (a4 && !*a4)
    {
      *a4 = +[REMError unexpectedError];
    }
  }

  return v12;
}

- (id)fetchCustomSmartListsCountWithError:(id *)a3
{
  v5 = objc_alloc_init(REMTipKitDataViewInvocation_fetchCustomSmartListsCount);
  v6 = [(REMTipKitDataView *)self store];
  v7 = [v6 resultFromPerformingInvocation:v5 error:a3];

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

    if (a3 && !*a3)
    {
      *a3 = +[REMError unexpectedError];
    }
  }

  return v10;
}

- (id)fetchHashtagsCountWithError:(id *)a3
{
  v5 = objc_alloc_init(REMTipKitDataViewInvocation_fetchHashtagsCount);
  v6 = [(REMTipKitDataView *)self store];
  v7 = [v6 resultFromPerformingInvocation:v5 error:a3];

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

    if (a3 && !*a3)
    {
      *a3 = +[REMError unexpectedError];
    }
  }

  return v10;
}

@end