@interface SagaUploadItemPlayDataOperation
- (void)main;
@end

@implementation SagaUploadItemPlayDataOperation

- (void)main
{
  v46 = [[MSVXPCTransaction alloc] initWithName:@"SagaUploadItemPlayDataOperation"];
  [v46 beginTransaction];
  v3 = [(CloudLibraryOperation *)self musicLibrary];
  v4 = [(CloudLibraryOperation *)self clientIdentity];
  [v3 setClientIdentity:v4];

  v43 = +[NSMutableArray array];
  v44 = self;
  v5 = [(CloudLibraryOperation *)self musicLibrary];
  v42 = [v5 sagaLastItemPlayDataUploadDate];
  [v42 timeIntervalSinceReferenceDate];
  v7 = v6;
  v40 = [ML3ComparisonPredicate predicateWithProperty:ML3TrackPropertyRemoteLocationID equalToInt64:200];
  v61[0] = v40;
  v41 = ML3TrackPropertyPlayCountRecent;
  v38 = [ML3ComparisonPredicate predicateWithProperty:"predicateWithProperty:value:comparison:" value:? comparison:?];
  v60[0] = v38;
  v39 = ML3TrackPropertySkipCountRecent;
  v8 = [ML3ComparisonPredicate predicateWithProperty:"predicateWithProperty:value:comparison:" value:? comparison:?];
  v60[1] = v8;
  v9 = ML3TrackPropertyDatePlayed;
  v37 = ML3TrackPropertyDatePlayed;
  v10 = [NSNumber numberWithDouble:v7];
  v11 = [ML3ComparisonPredicate predicateWithProperty:v9 value:v10 comparison:4];
  v60[2] = v11;
  v12 = ML3TrackPropertyDateSkipped;
  v36 = ML3TrackPropertyDateSkipped;
  v13 = [NSNumber numberWithDouble:v7];
  v14 = [ML3ComparisonPredicate predicateWithProperty:v12 value:v13 comparison:4];
  v60[3] = v14;
  v15 = [NSArray arrayWithObjects:v60 count:4];
  v16 = [ML3AnyCompoundPredicate predicateMatchingPredicates:v15];
  v61[1] = v16;
  v17 = [NSArray arrayWithObjects:v61 count:2];
  v18 = [ML3AllCompoundPredicate predicateMatchingPredicates:v17];
  v45 = v5;
  v19 = [ML3Track queryWithLibrary:v5 predicate:v18];

  v20 = v19;
  v21 = +[NSMutableArray array];
  v22 = +[NSMutableArray array];
  v59[0] = ML3TrackPropertyStoreSagaID;
  v59[1] = v41;
  v59[2] = v39;
  v59[3] = v37;
  v59[4] = v36;
  v23 = [NSArray arrayWithObjects:v59 count:5];
  v52[0] = _NSConcreteStackBlock;
  v52[1] = 3221225472;
  v52[2] = sub_1000C7F50;
  v52[3] = &unk_1001DF378;
  v24 = v42;
  v53 = v24;
  v25 = v21;
  v54 = v25;
  v26 = v22;
  v55 = v26;
  v27 = v43;
  v56 = v27;
  [v20 enumeratePersistentIDsAndProperties:v23 usingBlock:v52];

  v28 = os_log_create("com.apple.amp.itunescloudd", "CloudSync_Oversize");
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v58 = v26;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Sending item property changes: %{public}@", buf, 0xCu);
  }

  if ([v25 count])
  {
    v29 = v44;
    v30 = [(CloudLibraryOperation *)v44 connection];
    v31 = +[ICBulkSetItemPropertyRequest requestWithDatabaseID:itemIDs:properties:useLongIDs:](ICBulkSetItemPropertyRequest, "requestWithDatabaseID:itemIDs:properties:useLongIDs:", [v30 databaseID], v25, v26, 0);
    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_1000C816C;
    v50[3] = &unk_1001DF838;
    v50[4] = v44;
    v32 = dispatch_semaphore_create(0);
    v51 = v32;
    [v30 sendRequest:v31 withResponseHandler:v50];
    dispatch_semaphore_wait(v32, 0xFFFFFFFFFFFFFFFFLL);
    v33 = v45;
    if ([(CloudLibraryOperation *)v44 status]== 1)
    {
      v47[0] = _NSConcreteStackBlock;
      v47[1] = 3221225472;
      v47[2] = sub_1000C8300;
      v47[3] = &unk_1001DF3A0;
      v47[4] = v44;
      v48 = v27;
      v49 = v45;
      [v49 performDatabaseTransactionWithBlock:v47];
    }
  }

  else
  {
    v29 = v44;
    [(CloudLibraryOperation *)v44 setStatus:1];
    v33 = v45;
  }

  v34 = [(CloudLibraryOperation *)v29 musicLibrary];
  v35 = MSVTCCIdentityForCurrentProcess();
  [v34 setClientIdentity:v35];

  [v46 endTransaction];
}

@end