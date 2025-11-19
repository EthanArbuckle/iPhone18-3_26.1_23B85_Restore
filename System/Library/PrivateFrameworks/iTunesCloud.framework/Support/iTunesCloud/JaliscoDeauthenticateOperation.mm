@interface JaliscoDeauthenticateOperation
- (void)main;
@end

@implementation JaliscoDeauthenticateOperation

- (void)main
{
  v3 = +[ICDeviceInfo currentDeviceInfo];
  if ([v3 isWatch] && (+[ICNanoPairedDeviceStatusMonitor sharedMonitor](ICNanoPairedDeviceStatusMonitor, "sharedMonitor"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isMediaSyncingSupported"), v4, v5))
  {
    [(CloudLibraryOperation *)self setStatus:1];
    v6 = os_log_create("com.apple.amp.itunescloudd", "Accounts");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Not running JaliscoDeauthenticateOperation on wOS platform", buf, 2u);
    }
  }

  else
  {
    v6 = [[MSVXPCTransaction alloc] initWithName:@"JaliscoDeauthenticateOperation"];
    [v6 beginTransaction];
    v7 = [(CloudLibraryOperation *)self musicLibrary];
    v8 = [(CloudLibraryOperation *)self clientIdentity];
    [v7 setClientIdentity:v8];

    [(CloudLibraryOperation *)self musicLibrary];
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_10002D498;
    v15 = &unk_1001DEDD0;
    v17 = v16 = self;
    v9 = v17;
    [v9 performDatabaseTransactionWithBlock:&v12];
    [(CloudLibraryOperation *)self setStatus:1, v12, v13, v14, v15, v16];
    v10 = [(CloudLibraryOperation *)self musicLibrary];
    v11 = MSVTCCIdentityForCurrentProcess();
    [v10 setClientIdentity:v11];

    [v6 endTransaction];
  }
}

@end