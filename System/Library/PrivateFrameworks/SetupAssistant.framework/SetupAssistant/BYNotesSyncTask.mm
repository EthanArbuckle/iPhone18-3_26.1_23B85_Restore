@interface BYNotesSyncTask
- (ICCloudKitSyncerDelegate)delegate;
- (id)initAndStartSyncWithDelegate:(id)delegate;
- (void)cancel;
- (void)cloudKitSyncer:(id)syncer didFinishWithError:(id)error;
- (void)cloudKitSyncer:(id)syncer didUpdateProgress:(double)progress;
@end

@implementation BYNotesSyncTask

- (id)initAndStartSyncWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v14.receiver = self;
  v14.super_class = BYNotesSyncTask;
  v5 = [(BYNotesSyncTask *)&v14 init];
  v6 = v5;
  if (v5)
  {
    [(BYNotesSyncTask *)v5 setDelegate:delegateCopy];
    v7 = os_transaction_create();
    [(BYNotesSyncTask *)v6 setTransaction:v7];

    v16 = 0;
    v17 = &v16;
    v18 = 0x2050000000;
    v8 = qword_100028C10;
    v19 = qword_100028C10;
    if (!qword_100028C10)
    {
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_1000017DC;
      v15[3] = &unk_100020568;
      v15[4] = &v16;
      sub_1000017DC(v15);
      v8 = v17[3];
    }

    v9 = v8;
    _Block_object_dispose(&v16, 8);
    v10 = objc_alloc_init(v8);
    [(BYNotesSyncTask *)v6 setNotesSyncer:v10];

    notesSyncer = [(BYNotesSyncTask *)v6 notesSyncer];
    [notesSyncer setDelegate:v6];

    notesSyncer2 = [(BYNotesSyncTask *)v6 notesSyncer];
    [notesSyncer2 saveUnsyncedObjects];

    [(BYNotesSyncTask *)v6 setSelfReference:v6];
  }

  return v6;
}

- (void)cancel
{
  obj = self;
  objc_sync_enter(obj);
  [(BYNotesSyncTask *)obj setDelegate:0];
  objc_sync_exit(obj);
}

- (void)cloudKitSyncer:(id)syncer didFinishWithError:(id)error
{
  syncerCopy = syncer;
  errorCopy = error;
  if (!errorCopy)
  {
    v19 = _BYLoggingFacility();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      sub_100010C64(v19);
    }

    goto LABEL_15;
  }

  v8 = errorCopy;
  domain = [errorCopy domain];
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  domain2 = qword_100028C20;
  v29 = qword_100028C20;
  if (!qword_100028C20)
  {
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v31 = sub_1000019A8;
    v32 = &unk_100020568;
    v33 = &v26;
    v11 = sub_100001834();
    v12 = dlsym(v11, "ICCloudContextErrorDomain");
    *(v33[1] + 24) = v12;
    qword_100028C20 = *(v33[1] + 24);
    domain2 = v27[3];
  }

  _Block_object_dispose(&v26, 8);
  if (!domain2)
  {
    goto LABEL_25;
  }

  v13 = *domain2;
  if (![domain isEqualToString:v13])
  {

    goto LABEL_17;
  }

  code = [v8 code];
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v15 = qword_100028C28;
  v29 = qword_100028C28;
  if (!qword_100028C28)
  {
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v31 = sub_1000019F8;
    v32 = &unk_100020568;
    v33 = &v26;
    v16 = sub_100001834();
    v17 = dlsym(v16, "ICCloudContextErrorSyncingDisabled");
    *(v33[1] + 24) = v17;
    qword_100028C28 = *(v33[1] + 24);
    v15 = v27[3];
  }

  _Block_object_dispose(&v26, 8);
  if (!v15)
  {
LABEL_25:
    sub_100010C40();
    __break(1u);
  }

  domain2 = code == *v15;

  if (domain2)
  {
    v18 = _BYLoggingFacility();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Notes syncing disabled; treating as success", &buf, 2u);
    }

    v19 = v8;
LABEL_15:
    v8 = 0;
    goto LABEL_22;
  }

LABEL_17:
  v19 = _BYLoggingFacility();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = _BYIsInternalInstall();
    v21 = v8;
    if ((v20 & 1) == 0)
    {
      domain2 = [v8 domain];
      code2 = [v8 code];
      v21 = [NSString stringWithFormat:@"<Error domain: %@, code %ld>", domain2, code2, v26];
    }

    LODWORD(buf) = 138543362;
    *(&buf + 4) = v21;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Notes sync task failed: %{public}@", &buf, 0xCu);
    if ((v20 & 1) == 0)
    {
    }
  }

LABEL_22:

  selfCopy = self;
  objc_sync_enter(selfCopy);
  delegate = [(BYNotesSyncTask *)selfCopy delegate];
  v25 = delegate;
  if (delegate)
  {
    [delegate cloudKitSyncer:syncerCopy didFinishWithError:v8];
  }

  objc_sync_exit(selfCopy);
  [(BYNotesSyncTask *)selfCopy setDelegate:0];
  [(BYNotesSyncTask *)selfCopy setTransaction:0];
  [(BYNotesSyncTask *)selfCopy setSelfReference:0];
}

- (void)cloudKitSyncer:(id)syncer didUpdateProgress:(double)progress
{
  syncerCopy = syncer;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  delegate = [(BYNotesSyncTask *)selfCopy delegate];
  v8 = delegate;
  if (delegate)
  {
    [delegate cloudKitSyncer:syncerCopy didUpdateProgress:progress];
  }

  objc_sync_exit(selfCopy);
}

- (ICCloudKitSyncerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end