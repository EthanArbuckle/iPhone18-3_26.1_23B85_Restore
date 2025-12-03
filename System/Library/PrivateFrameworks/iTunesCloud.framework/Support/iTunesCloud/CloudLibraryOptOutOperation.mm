@interface CloudLibraryOptOutOperation
- (CloudLibraryOptOutOperation)initWithCUID:(id)d troveID:(id)iD;
- (CloudLibraryOptOutOperation)initWithConfiguration:(id)configuration CUID:(id)d troveID:(id)iD;
- (void)_sendOptOutWithCUID:(id)d troveID:(id)iD;
- (void)main;
@end

@implementation CloudLibraryOptOutOperation

- (void)_sendOptOutWithCUID:(id)d troveID:(id)iD
{
  v5 = [(CloudLibraryOptOutOperation *)self cuid:d];
  troveID = [(CloudLibraryOptOutOperation *)self troveID];
  v7 = [NSMutableDictionary dictionaryWithObjectsAndKeys:&off_1001ED7E0, @"min-itunes-match-compatible-version", &off_1001ED7F8, @"itunes-match-protocol-version", v5, @"cuid", troveID, @"troveid", 0];

  v8 = sub_1000A760C(0, @"cloud-library-opt-out-url", 0, v7, 0.0);
  if (v8)
  {
    v9 = dispatch_semaphore_create(0);
    v10 = +[ICURLSessionManager defaultSession];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000F0458;
    v12[3] = &unk_1001DDE30;
    v12[4] = self;
    v13 = v9;
    v11 = v9;
    [v10 enqueueDataRequest:v8 withCompletionHandler:v12];

    dispatch_semaphore_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
  }
}

- (void)main
{
  cuid = [(CloudLibraryOptOutOperation *)self cuid];
  if ([cuid length])
  {
    troveID = [(CloudLibraryOptOutOperation *)self troveID];
    v5 = [troveID length];

    if (v5)
    {
      v6 = os_log_create("com.apple.amp.itunescloudd", "Accounts");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        cuid2 = [(CloudLibraryOptOutOperation *)self cuid];
        troveID2 = [(CloudLibraryOptOutOperation *)self troveID];
        v12 = 138543618;
        v13 = cuid2;
        v14 = 2114;
        v15 = troveID2;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Sending cloud library opt-out for Cloud CUID: %{public}@ TroveID: %{public}@", &v12, 0x16u);
      }

      cuid3 = [(CloudLibraryOptOutOperation *)self cuid];
      troveID3 = [(CloudLibraryOptOutOperation *)self troveID];
      [(CloudLibraryOptOutOperation *)self _sendOptOutWithCUID:cuid3 troveID:troveID3];

      return;
    }
  }

  else
  {
  }

  v11 = os_log_create("com.apple.amp.itunescloudd", "Accounts");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v12) = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "No Cloud CUID or TroveID, skipping opt-out request.", &v12, 2u);
  }

  [(CloudLibraryOperation *)self setStatus:1];
}

- (CloudLibraryOptOutOperation)initWithConfiguration:(id)configuration CUID:(id)d troveID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v16.receiver = self;
  v16.super_class = CloudLibraryOptOutOperation;
  v10 = [(CloudLibraryOperation *)&v16 initWithConfiguration:configuration];
  if (v10)
  {
    v11 = [dCopy copy];
    cuid = v10->_cuid;
    v10->_cuid = v11;

    v13 = [iDCopy copy];
    troveID = v10->_troveID;
    v10->_troveID = v13;
  }

  return v10;
}

- (CloudLibraryOptOutOperation)initWithCUID:(id)d troveID:(id)iD
{
  iDCopy = iD;
  dCopy = d;
  v8 = objc_opt_new();
  v9 = [(CloudLibraryOptOutOperation *)self initWithConfiguration:v8 CUID:dCopy troveID:iDCopy];

  return v9;
}

@end