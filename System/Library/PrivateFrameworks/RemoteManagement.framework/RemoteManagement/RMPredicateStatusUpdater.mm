@interface RMPredicateStatusUpdater
+ (RMPredicateStatusUpdater)sharedUpdater;
- (BOOL)_updatePredicateStatusWithFetchPredicate:(id)a3;
- (BOOL)notifyPredicateStatusDidChangeForManagementSourceIdentifier:(id)a3;
- (RMPredicateStatusUpdater)initWithPersistentContainer:(id)a3;
@end

@implementation RMPredicateStatusUpdater

+ (RMPredicateStatusUpdater)sharedUpdater
{
  if (qword_1000E6A60 != -1)
  {
    sub_10005DC80();
  }

  v3 = qword_1000E6A58;

  return v3;
}

- (RMPredicateStatusUpdater)initWithPersistentContainer:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = RMPredicateStatusUpdater;
  v6 = [(RMPredicateStatusUpdater *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_persistentContainer, a3);
  }

  return v7;
}

- (BOOL)notifyPredicateStatusDidChangeForManagementSourceIdentifier:(id)a3
{
  v4 = a3;
  v5 = +[RMLog predicateStatusUpdater];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Posting notification for management source: %{public}@", buf, 0xCu);
  }

  v6 = [NSPredicate predicateWithFormat:@"%K == %@", @"identifier", v4];
  v7 = [(RMPredicateStatusUpdater *)self _updatePredicateStatusWithFetchPredicate:v6];

  return v7;
}

- (BOOL)_updatePredicateStatusWithFetchPredicate:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [(RMPredicateStatusUpdater *)self persistentContainer];
  v7 = [v6 newBackgroundContext];

  [v7 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10005DA6C;
  v15[3] = &unk_1000D1270;
  v8 = v4;
  v16 = v8;
  v9 = v5;
  v17 = v9;
  [v7 performBlockAndWait:v15];
  v10 = [v9 count];
  if (v10)
  {
    v11 = +[RMLog predicateStatusUpdater];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_10005DC94(v9, v11);
    }

    v12 = +[NSNotificationCenter defaultCenter];
    v18 = @"RMUserInfoKeyPredicateUpdatedManagementSourceObjectIDs";
    v19 = v9;
    v13 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    [v12 postNotificationName:@"RMPredicateStatusUpdaterDidChangeNotification" object:self userInfo:v13];
  }

  return v10 != 0;
}

@end