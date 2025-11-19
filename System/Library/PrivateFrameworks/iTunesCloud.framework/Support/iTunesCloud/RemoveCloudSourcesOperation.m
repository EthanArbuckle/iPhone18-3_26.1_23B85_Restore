@interface RemoveCloudSourcesOperation
+ (id)_icCloudSourceToMLCloudSourceMap;
+ (id)_icCloudSourceToMLCloudSourceMapDescription;
- (id)_mlRemoveSourceAttributeFromICRemoveSource;
- (id)_removeCloudSourcesDescription;
- (void)_clearDatabaseWithCompletion:(id)a3;
- (void)_disableCloudLibraryAndRemoveTracksWithCompletion:(id)a3;
- (void)_disableCloudLibraryWithCompletion:(id)a3;
- (void)_performRemoveCloudSourcesWithCompletion:(id)a3;
- (void)start;
@end

@implementation RemoveCloudSourcesOperation

- (id)_removeCloudSourcesDescription
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_1000F230C;
  v11 = sub_1000F231C;
  v12 = +[NSMutableString string];
  v3 = [(RemoveCloudSourcesOperation *)self removeCloudSouceAttributes];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000F2324;
  v6[3] = &unk_1001DDF20;
  v6[4] = &v7;
  [v3 enumerateObjectsUsingBlock:v6];
  v4 = v8[5];

  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)_mlRemoveSourceAttributeFromICRemoveSource
{
  v3 = +[NSMutableSet set];
  v4 = [(RemoveCloudSourcesOperation *)self removeCloudSouceAttributes];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000F2504;
  v11[3] = &unk_1001DDEF8;
  v5 = v3;
  v12 = v5;
  [v4 enumerateObjectsUsingBlock:v11];
  v6 = [(CloudLibraryOperation *)self musicLibrary];
  v7 = [v6 sagaOnDiskDatabaseRevision];

  if (v7)
  {
    v8 = +[RemoveCloudSourcesOperation _icCloudSourceToMLCloudSourceMap];
    v9 = [v8 objectForKeyedSubscript:&off_1001ED810];
    [v5 addObject:v9];
  }

  return v5;
}

- (void)_disableCloudLibraryWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(CloudLibraryOperation *)self userIdentity];
  v6 = [(CloudLibraryOperation *)self userIdentityStore];
  v24 = 0;
  v7 = [v6 getPropertiesForUserIdentity:v5 error:&v24];
  v8 = v24;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = v7 == 0;
  }

  if (v9)
  {
    v10 = os_log_create("com.apple.amp.itunescloudd", "Accounts");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v26 = self;
      v27 = 2114;
      v28 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ - Error (%{public}@) loading account properties. Not removing locker bit from account", buf, 0x16u);
    }

    v4[2](v4, v8);
  }

  else
  {
    v11 = [v7 isActiveLocker];
    v12 = os_log_create("com.apple.amp.itunescloudd", "Accounts");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v7 DSID];
      v15 = ICCreateLoggableValueForDSID();
      *buf = 138543874;
      v26 = self;
      v27 = 2114;
      v28 = v15;
      v29 = 1024;
      v30 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ - DSID=%{public}@, isActiveLocker=%{BOOL}u", buf, 0x1Cu);
    }

    if (*(&self->super._finished + 2) & v11)
    {
      v16 = [v7 DSID];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_1000F28EC;
      v21[3] = &unk_1001DDED0;
      v21[4] = self;
      v22 = v7;
      v23 = v4;
      [v6 disableLockerAccountWithDSID:v16 completionHandler:v21];
    }

    else
    {
      v17 = os_log_create("com.apple.amp.itunescloudd", "Accounts");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [v7 DSID];
        v18 = ICCreateLoggableValueForDSID();
        v19 = *(&self->super._finished + 2);
        *buf = 138544130;
        v26 = self;
        v27 = 2114;
        v28 = v18;
        v29 = 1024;
        v30 = v19;
        v31 = 1024;
        v32 = v11;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ - Not disabling locker account=%{public}@, _disableActiveLockerAccount=%{BOOL}u, isActiveLocker=%{BOOL}u", buf, 0x22u);
      }

      v4[2](v4, 0);
    }
  }
}

- (void)_disableCloudLibraryAndRemoveTracksWithCompletion:(id)a3
{
  v4 = a3;
  v5 = os_log_create("com.apple.amp.itunescloudd", "Accounts");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v19 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ - Disabling cloud library and removing tracks", buf, 0xCu);
  }

  v6 = [(CloudLibraryOperation *)self musicLibrary];
  v7 = [v6 sagaCloudLibraryCUID];
  v8 = [v6 sagaCloudLibraryTroveID];
  if ([v7 length] && objc_msgSend(v8, "length"))
  {
    v9 = [CloudLibraryOptOutOperation alloc];
    v10 = [(CloudLibraryOperation *)self configuration];
    v11 = [(CloudLibraryOptOutOperation *)v9 initWithConfiguration:v10 CUID:v7 troveID:v8];

    [(CloudLibraryOptOutOperation *)v11 setName:@"com.apple.itunescloudd.DisableCloudLibrary.optOutOperation"];
    v12 = +[ICDServer server];
    [v12 addOperation:v11 priority:1];
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000F2C90;
  v15[3] = &unk_1001DDEA8;
  v15[4] = self;
  v16 = v6;
  v17 = v4;
  v13 = v4;
  v14 = v6;
  [(RemoveCloudSourcesOperation *)self _disableCloudLibraryWithCompletion:v15];
}

- (void)_clearDatabaseWithCompletion:(id)a3
{
  v4 = a3;
  v5 = os_log_create("com.apple.amp.itunescloudd", "Accounts");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ - Deleting database for deauthentication request", &v10, 0xCu);
  }

  v6 = [(CloudLibraryOperation *)self musicLibrary];
  [v6 emptyAllTables];
  v7 = +[NSFileManager defaultManager];
  v8 = [v6 originalArtworkDirectory];
  [v7 removeItemAtPath:v8 error:0];

  v9 = [v6 rootArtworkCacheDirectory];
  [v7 removeItemAtPath:v9 error:0];

  v4[2](v4, 0);
}

- (void)_performRemoveCloudSourcesWithCompletion:(id)a3
{
  if (*(&self->super._finished + 1))
  {
    [(RemoveCloudSourcesOperation *)self _clearDatabaseWithCompletion:a3];
  }

  else
  {
    [(RemoveCloudSourcesOperation *)self _disableCloudLibraryAndRemoveTracksWithCompletion:a3];
  }
}

- (void)start
{
  v16.receiver = self;
  v16.super_class = RemoveCloudSourcesOperation;
  [(CloudLibraryConcurrentOperation *)&v16 start];
  if (sub_100004B8C())
  {
    [(CloudLibraryOperation *)self setStatus:1];
    v3 = os_log_create("com.apple.amp.itunescloudd", "Accounts");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v18 = self;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ - Not running RemoveCloudSourcesOperation on non standalone wOS platform", buf, 0xCu);
    }

    [(CloudLibraryConcurrentOperation *)self finish];
  }

  else
  {
    v4 = os_log_create("com.apple.amp.itunescloudd", "Accounts");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(RemoveCloudSourcesOperation *)self deleteDB];
      v6 = [(RemoveCloudSourcesOperation *)self disableActiveLockerAccount];
      v7 = [(RemoveCloudSourcesOperation *)self _removeCloudSourcesDescription];
      *buf = 138544130;
      v18 = self;
      v19 = 1024;
      v20 = v5;
      v21 = 1024;
      v22 = v6;
      v23 = 2114;
      v24 = v7;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ - Starting deleteDB=%{BOOL}u, disableActiveLockerAccount=%{BOOL}u, removeSources=%{public}@", buf, 0x22u);
    }

    v8 = [[MSVXPCTransaction alloc] initWithName:@"RemoveCloudSourcesOperation"];
    [v8 beginTransaction];
    v9 = [(CloudLibraryOperation *)self musicLibrary];
    v10 = [(CloudLibraryOperation *)self clientIdentity];
    [v9 setClientIdentity:v10];

    +[NSDate timeIntervalSinceReferenceDate];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000F3260;
    v13[3] = &unk_1001DDE80;
    v15 = v11;
    v13[4] = self;
    v14 = v8;
    v12 = v8;
    [(RemoveCloudSourcesOperation *)self _performRemoveCloudSourcesWithCompletion:v13];
  }
}

+ (id)_icCloudSourceToMLCloudSourceMapDescription
{
  if (qword_100213D98 != -1)
  {
    dispatch_once(&qword_100213D98, &stru_1001DDF40);
  }

  v3 = qword_100213D90;

  return v3;
}

+ (id)_icCloudSourceToMLCloudSourceMap
{
  v4[0] = &off_1001ED828;
  v4[1] = &off_1001ED840;
  v5[0] = MLDatabaseOperationAttributeRemovePurchaseHistoryKey;
  v5[1] = MLDatabaseOperationAttributeRemovePurchaseHistoryForMediaItemsKey;
  v4[2] = &off_1001ED858;
  v4[3] = &off_1001ED810;
  v5[2] = MLDatabaseOperationAttributeRemoveSubscriptionContentKey;
  v5[3] = MLDatabaseOperationAttributeRemoveMatchKey;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:4];

  return v2;
}

@end