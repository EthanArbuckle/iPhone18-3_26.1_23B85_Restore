@interface RPCompanionLinkClientDaemonConnection_XPC
- (RPCompanionLinkClientDaemonConnection_XPC)initWithConnection:(id)connection;
@end

@implementation RPCompanionLinkClientDaemonConnection_XPC

- (RPCompanionLinkClientDaemonConnection_XPC)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v9.receiver = self;
  v9.super_class = RPCompanionLinkClientDaemonConnection_XPC;
  v6 = [(RPCompanionLinkClientDaemonConnection_XPC *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_cnx, connection);
  }

  return v7;
}

@end