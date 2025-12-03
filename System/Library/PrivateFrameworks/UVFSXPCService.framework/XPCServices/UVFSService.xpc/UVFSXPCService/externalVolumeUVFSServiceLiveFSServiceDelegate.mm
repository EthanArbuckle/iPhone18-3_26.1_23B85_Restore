@interface externalVolumeUVFSServiceLiveFSServiceDelegate
- (void)LiveMountService:(id)service addDisk:(id)disk fileSystemType:(id)type reply:(id)reply;
- (void)LiveMountService:(id)service addDisk:(id)disk reply:(id)reply;
- (void)LiveMountService:(id)service addVolume:(id)volume atServer:(id)server credentialType:(int64_t)type credential:(id)credential reply:(id)reply;
- (void)LiveMountService:(id)service ejectVolumeCluster:(id)cluster withFlags:(unsigned int)flags reply:(id)reply;
- (void)LiveMountService:(id)service sharesAtServer:(id)server credentialType:(int64_t)type credential:(id)credential reply:(id)reply;
- (void)LiveMountService:(id)service unlockVolume:(id)volume password:(id)password saveToKeychain:(BOOL)keychain completionHandler:(id)handler;
@end

@implementation externalVolumeUVFSServiceLiveFSServiceDelegate

- (void)LiveMountService:(id)service addDisk:(id)disk reply:(id)reply
{
  replyCopy = reply;
  v7 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
  (*(reply + 2))(replyCopy, v7);
}

- (void)LiveMountService:(id)service addDisk:(id)disk fileSystemType:(id)type reply:(id)reply
{
  replyCopy = reply;
  v8 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
  (*(reply + 2))(replyCopy, v8, 0);
}

- (void)LiveMountService:(id)service addVolume:(id)volume atServer:(id)server credentialType:(int64_t)type credential:(id)credential reply:(id)reply
{
  replyCopy = reply;
  v10 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
  (*(reply + 2))(replyCopy, v10);
}

- (void)LiveMountService:(id)service ejectVolumeCluster:(id)cluster withFlags:(unsigned int)flags reply:(id)reply
{
  replyCopy = reply;
  v8 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
  (*(reply + 2))(replyCopy, v8);
}

- (void)LiveMountService:(id)service sharesAtServer:(id)server credentialType:(int64_t)type credential:(id)credential reply:(id)reply
{
  replyCopy = reply;
  v9 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
  (*(reply + 2))(replyCopy, 0, v9);
}

- (void)LiveMountService:(id)service unlockVolume:(id)volume password:(id)password saveToKeychain:(BOOL)keychain completionHandler:(id)handler
{
  volumeCopy = volume;
  handlerCopy = handler;
  v10 = userfs_log_default;
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000235D4(volumeCopy, v10, v11, v12, v13, v14, v15, v16);
  }

  v17 = getNSErrorFromLiveFSErrno();
  handlerCopy[2](handlerCopy, v17);
}

@end