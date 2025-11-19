@interface ICHostedSharedListeningConnectionController
- (ICHostedSharedListeningConnectionController)initWithConnection:(id)a3 bundleID:(id)a4;
- (void)connectionController:(id)a3 connectionDidEndWithError:(id)a4;
- (void)connectionController:(id)a3 connectionDidReceiveMessage:(id)a4;
- (void)connectionController:(id)a3 didEncounterFatalError:(id)a4;
- (void)connectionControllerConnectionDidStart:(id)a3;
- (void)populateSessionIdentifier:(id)a3 identity:(id)a4;
- (void)sendMessageData:(id)a3;
- (void)start;
- (void)stop;
@end

@implementation ICHostedSharedListeningConnectionController

- (void)connectionControllerConnectionDidStart:(id)a3
{
  v12 = [(ICHostedSharedListeningConnectionController *)self xpcConnection];
  v4 = [v12 remoteObjectProxyWithErrorHandler:&stru_100008270];
  v5 = [(ICHostedSharedListeningConnectionController *)self connectionController];
  v6 = [v5 sessionIdentifier];
  v7 = [(ICHostedSharedListeningConnectionController *)self connectionController];
  v8 = [v7 sessionToken];
  v9 = [(ICHostedSharedListeningConnectionController *)self connectionController];
  v10 = [v9 inviteURL];
  v11 = [v10 absoluteString];
  [v4 receiveStartWithSessionIdentifier:v6 sessionToken:v8 inviteURLString:v11];
}

- (void)connectionController:(id)a3 didEncounterFatalError:(id)a4
{
  v5 = a4;
  v7 = [(ICHostedSharedListeningConnectionController *)self xpcConnection];
  v6 = [v7 remoteObjectProxyWithErrorHandler:&stru_100008250];
  [v6 receiveFatalError:v5];
}

- (void)connectionController:(id)a3 connectionDidReceiveMessage:(id)a4
{
  v5 = a4;
  v8 = [(ICHostedSharedListeningConnectionController *)self xpcConnection];
  v6 = [v8 remoteObjectProxyWithErrorHandler:&stru_100008230];
  v7 = [v5 data];

  [v6 receiveMessageData:v7];
}

- (void)connectionController:(id)a3 connectionDidEndWithError:(id)a4
{
  v5 = a4;
  v7 = [(ICHostedSharedListeningConnectionController *)self xpcConnection];
  v6 = [v7 remoteObjectProxyWithErrorHandler:&stru_100008210];
  [v6 receiveConnectionError:v5];
}

- (void)sendMessageData:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2050000000;
  v5 = qword_10000C948;
  v13 = qword_10000C948;
  if (!qword_10000C948)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100001DE0;
    v9[3] = &unk_1000082D8;
    v9[4] = &v10;
    sub_100001DE0(v9);
    v5 = v11[3];
  }

  v6 = v5;
  _Block_object_dispose(&v10, 8);
  v7 = [[v5 alloc] initWithData:v4];
  v8 = [(ICHostedSharedListeningConnectionController *)self connectionController];
  [v8 sendMessage:v7];
}

- (void)stop
{
  v2 = [(ICHostedSharedListeningConnectionController *)self connectionController];
  [v2 stop];
}

- (void)start
{
  v3 = sub_100002168();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    v6 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[ICSharedListeningConnectionController][H] <%p> Will start connection controller.", &v5, 0xCu);
  }

  v4 = [(ICHostedSharedListeningConnectionController *)self connectionController];
  [v4 start];
}

- (void)populateSessionIdentifier:(id)a3 identity:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ICHostedSharedListeningConnectionController *)self connectionController];

  if (!v8)
  {
    v9 = sub_100002168();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      *&buf[4] = self;
      *&buf[12] = 2112;
      *&buf[14] = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[ICSharedListeningConnectionController][H] <%p> Populating with session identifier %@.", buf, 0x16u);
    }

    v15 = 0;
    v16 = &v15;
    v17 = 0x2050000000;
    v10 = qword_10000C938;
    v18 = qword_10000C938;
    if (!qword_10000C938)
    {
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_100002400;
      v20 = &unk_1000082D8;
      v21 = &v15;
      sub_100002400(buf);
      v10 = v16[3];
    }

    v11 = v10;
    _Block_object_dispose(&v15, 8);
    v12 = [(ICHostedSharedListeningConnectionController *)self bundleID];
    v13 = [v10 sharedListeningConnectionWithSessionIdentifier:v6 identity:v7 bundleID:v12];
    [(ICHostedSharedListeningConnectionController *)self setConnectionController:v13];

    v14 = [(ICHostedSharedListeningConnectionController *)self connectionController];
    [v14 setDelegate:self];
  }
}

- (ICHostedSharedListeningConnectionController)initWithConnection:(id)a3 bundleID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ICHostedSharedListeningConnectionController;
  v9 = [(ICHostedSharedListeningConnectionController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_xpcConnection, a3);
    objc_storeStrong(&v10->_bundleID, a4);
  }

  return v10;
}

@end