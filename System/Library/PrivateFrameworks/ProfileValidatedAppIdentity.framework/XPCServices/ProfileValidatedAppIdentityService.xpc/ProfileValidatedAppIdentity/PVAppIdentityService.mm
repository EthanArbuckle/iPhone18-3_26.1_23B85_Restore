@interface PVAppIdentityService
- (BOOL)isEntitled;
- (PVAppIdentityService)initWithConnection:(id)connection;
- (void)generateDigest:(id)digest ppqAppId:(id)id withReply:(id)reply;
@end

@implementation PVAppIdentityService

- (PVAppIdentityService)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v6 = [(PVAppIdentityService *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, connection);
  }

  return v7;
}

- (BOOL)isEntitled
{
  v2 = [(NSXPCConnection *)self->_connection valueForEntitlement:@"com.apple.private.pvappidentity.spi"];
  v3 = isNSNumber(v2);
  if (v3 && (v4 = v3, v5 = [v2 BOOLValue], v4, (v5 & 1) != 0))
  {
    v6 = 1;
  }

  else
  {
    v7 = _PVAppIdentityLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_100019A0C(v7);
    }

    v6 = 0;
  }

  return v6;
}

- (void)generateDigest:(id)digest ppqAppId:(id)id withReply:(id)reply
{
  digestCopy = digest;
  idCopy = id;
  replyCopy = reply;
  if ([(PVAppIdentityService *)self isFeatureEnabled]&& [(PVAppIdentityService *)self isEntitled])
  {
    v10 = [[PVAppIdentityGenerator alloc] initWithApplicationURL:digestCopy ppqAppId:idCopy];
    generateDigest = [(PVAppIdentityGenerator *)v10 generateDigest];
    replyCopy[2](replyCopy, generateDigest);
  }

  else
  {
    v10 = [PVAppIdentityDigest digestWithErrorCode:-10000];
    replyCopy[2](replyCopy, v10);
  }
}

@end