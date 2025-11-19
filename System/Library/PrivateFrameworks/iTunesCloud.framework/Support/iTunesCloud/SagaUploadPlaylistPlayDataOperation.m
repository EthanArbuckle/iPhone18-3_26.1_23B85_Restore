@interface SagaUploadPlaylistPlayDataOperation
- (void)main;
@end

@implementation SagaUploadPlaylistPlayDataOperation

- (void)main
{
  v38 = [[MSVXPCTransaction alloc] initWithName:@"SagaUploadPlaylistPlayDataOperation"];
  [v38 beginTransaction];
  v3 = [(CloudLibraryOperation *)self musicLibrary];
  v4 = [(CloudLibraryOperation *)self clientIdentity];
  [v3 setClientIdentity:v4];

  v35 = +[NSMutableArray array];
  v36 = self;
  v5 = [(CloudLibraryOperation *)self musicLibrary];
  v34 = [v5 sagaLastItemPlayDataUploadDate];
  [v34 timeIntervalSinceReferenceDate];
  v7 = v6;
  v33 = ML3ContainerPropertyStoreCloudID;
  v8 = [ML3ComparisonPredicate predicateWithProperty:"predicateWithProperty:value:comparison:" value:? comparison:?];
  v53[0] = v8;
  v32 = ML3ContainerPropertyPlayCountRecent;
  v9 = [ML3ComparisonPredicate predicateWithProperty:"predicateWithProperty:value:comparison:" value:? comparison:?];
  v52[0] = v9;
  v10 = ML3ContainerPropertyDatePlayed;
  v11 = [NSNumber numberWithDouble:v7];
  v12 = [ML3ComparisonPredicate predicateWithProperty:v10 value:v11 comparison:4];
  v52[1] = v12;
  v13 = [NSArray arrayWithObjects:v52 count:2];
  v14 = [ML3AnyCompoundPredicate predicateMatchingPredicates:v13];
  v53[1] = v14;
  v15 = [NSArray arrayWithObjects:v53 count:2];
  v16 = [ML3AllCompoundPredicate predicateMatchingPredicates:v15];
  v37 = v5;
  v17 = [ML3Container queryWithLibrary:v5 predicate:v16];

  v18 = v17;
  v19 = +[NSMutableArray array];
  v20 = +[NSMutableArray array];
  v51[0] = v33;
  v51[1] = v32;
  v51[2] = v10;
  v21 = [NSArray arrayWithObjects:v51 count:3];
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_10013215C;
  v44[3] = &unk_1001DF378;
  v22 = v34;
  v45 = v22;
  v23 = v19;
  v46 = v23;
  v24 = v20;
  v47 = v24;
  v25 = v35;
  v48 = v25;
  [v18 enumeratePersistentIDsAndProperties:v21 usingBlock:v44];

  v26 = os_log_create("com.apple.amp.itunescloudd", "CloudSync_Oversize");
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v50 = v24;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Sending container property changes: %{public}@", buf, 0xCu);
  }

  if ([v23 count])
  {
    v27 = [(CloudLibraryOperation *)v36 connection];
    v28 = +[ICBulkSetContainerPropertyRequest requestWithDatabaseID:containerIDs:properties:](ICBulkSetContainerPropertyRequest, "requestWithDatabaseID:containerIDs:properties:", [v27 databaseID], v23, v24);
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_1001322C8;
    v42[3] = &unk_1001DF838;
    v42[4] = v36;
    v29 = dispatch_semaphore_create(0);
    v43 = v29;
    [v27 sendRequest:v28 withResponseHandler:v42];
    dispatch_semaphore_wait(v29, 0xFFFFFFFFFFFFFFFFLL);
    if ([(CloudLibraryOperation *)v36 status]== 1)
    {
      v39[0] = _NSConcreteStackBlock;
      v39[1] = 3221225472;
      v39[2] = sub_10013245C;
      v39[3] = &unk_1001DF3A0;
      v39[4] = v36;
      v40 = v25;
      v41 = v37;
      [v41 performDatabaseTransactionWithBlock:v39];
    }
  }

  v30 = [(CloudLibraryOperation *)v36 musicLibrary];
  v31 = MSVTCCIdentityForCurrentProcess();
  [v30 setClientIdentity:v31];

  [v38 endTransaction];
}

@end