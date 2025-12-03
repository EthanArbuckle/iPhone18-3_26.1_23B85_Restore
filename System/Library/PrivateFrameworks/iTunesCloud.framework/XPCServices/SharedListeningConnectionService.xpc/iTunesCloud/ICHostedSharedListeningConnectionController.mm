@interface ICHostedSharedListeningConnectionController
- (ICHostedSharedListeningConnectionController)initWithConnection:(id)connection bundleID:(id)d;
- (void)connectionController:(id)controller connectionDidEndWithError:(id)error;
- (void)connectionController:(id)controller connectionDidReceiveMessage:(id)message;
- (void)connectionController:(id)controller didEncounterFatalError:(id)error;
- (void)connectionControllerConnectionDidStart:(id)start;
- (void)populateSessionIdentifier:(id)identifier identity:(id)identity;
- (void)sendMessageData:(id)data;
- (void)start;
- (void)stop;
@end

@implementation ICHostedSharedListeningConnectionController

- (void)connectionControllerConnectionDidStart:(id)start
{
  xpcConnection = [(ICHostedSharedListeningConnectionController *)self xpcConnection];
  v4 = [xpcConnection remoteObjectProxyWithErrorHandler:&stru_100008270];
  connectionController = [(ICHostedSharedListeningConnectionController *)self connectionController];
  sessionIdentifier = [connectionController sessionIdentifier];
  connectionController2 = [(ICHostedSharedListeningConnectionController *)self connectionController];
  sessionToken = [connectionController2 sessionToken];
  connectionController3 = [(ICHostedSharedListeningConnectionController *)self connectionController];
  inviteURL = [connectionController3 inviteURL];
  absoluteString = [inviteURL absoluteString];
  [v4 receiveStartWithSessionIdentifier:sessionIdentifier sessionToken:sessionToken inviteURLString:absoluteString];
}

- (void)connectionController:(id)controller didEncounterFatalError:(id)error
{
  errorCopy = error;
  xpcConnection = [(ICHostedSharedListeningConnectionController *)self xpcConnection];
  v6 = [xpcConnection remoteObjectProxyWithErrorHandler:&stru_100008250];
  [v6 receiveFatalError:errorCopy];
}

- (void)connectionController:(id)controller connectionDidReceiveMessage:(id)message
{
  messageCopy = message;
  xpcConnection = [(ICHostedSharedListeningConnectionController *)self xpcConnection];
  v6 = [xpcConnection remoteObjectProxyWithErrorHandler:&stru_100008230];
  data = [messageCopy data];

  [v6 receiveMessageData:data];
}

- (void)connectionController:(id)controller connectionDidEndWithError:(id)error
{
  errorCopy = error;
  xpcConnection = [(ICHostedSharedListeningConnectionController *)self xpcConnection];
  v6 = [xpcConnection remoteObjectProxyWithErrorHandler:&stru_100008210];
  [v6 receiveConnectionError:errorCopy];
}

- (void)sendMessageData:(id)data
{
  dataCopy = data;
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
  v7 = [[v5 alloc] initWithData:dataCopy];
  connectionController = [(ICHostedSharedListeningConnectionController *)self connectionController];
  [connectionController sendMessage:v7];
}

- (void)stop
{
  connectionController = [(ICHostedSharedListeningConnectionController *)self connectionController];
  [connectionController stop];
}

- (void)start
{
  v3 = sub_100002168();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[ICSharedListeningConnectionController][H] <%p> Will start connection controller.", &v5, 0xCu);
  }

  connectionController = [(ICHostedSharedListeningConnectionController *)self connectionController];
  [connectionController start];
}

- (void)populateSessionIdentifier:(id)identifier identity:(id)identity
{
  identifierCopy = identifier;
  identityCopy = identity;
  connectionController = [(ICHostedSharedListeningConnectionController *)self connectionController];

  if (!connectionController)
  {
    v9 = sub_100002168();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      *&buf[4] = self;
      *&buf[12] = 2112;
      *&buf[14] = identifierCopy;
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
    bundleID = [(ICHostedSharedListeningConnectionController *)self bundleID];
    v13 = [v10 sharedListeningConnectionWithSessionIdentifier:identifierCopy identity:identityCopy bundleID:bundleID];
    [(ICHostedSharedListeningConnectionController *)self setConnectionController:v13];

    connectionController2 = [(ICHostedSharedListeningConnectionController *)self connectionController];
    [connectionController2 setDelegate:self];
  }
}

- (ICHostedSharedListeningConnectionController)initWithConnection:(id)connection bundleID:(id)d
{
  connectionCopy = connection;
  dCopy = d;
  v12.receiver = self;
  v12.super_class = ICHostedSharedListeningConnectionController;
  v9 = [(ICHostedSharedListeningConnectionController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_xpcConnection, connection);
    objc_storeStrong(&v10->_bundleID, d);
  }

  return v10;
}

@end