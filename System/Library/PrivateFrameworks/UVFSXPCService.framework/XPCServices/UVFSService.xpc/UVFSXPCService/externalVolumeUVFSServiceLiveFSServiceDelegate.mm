@interface externalVolumeUVFSServiceLiveFSServiceDelegate
- (void)LiveMountService:(id)a3 addDisk:(id)a4 fileSystemType:(id)a5 reply:(id)a6;
- (void)LiveMountService:(id)a3 addDisk:(id)a4 reply:(id)a5;
- (void)LiveMountService:(id)a3 addVolume:(id)a4 atServer:(id)a5 credentialType:(int64_t)a6 credential:(id)a7 reply:(id)a8;
- (void)LiveMountService:(id)a3 ejectVolumeCluster:(id)a4 withFlags:(unsigned int)a5 reply:(id)a6;
- (void)LiveMountService:(id)a3 sharesAtServer:(id)a4 credentialType:(int64_t)a5 credential:(id)a6 reply:(id)a7;
- (void)LiveMountService:(id)a3 unlockVolume:(id)a4 password:(id)a5 saveToKeychain:(BOOL)a6 completionHandler:(id)a7;
@end

@implementation externalVolumeUVFSServiceLiveFSServiceDelegate

- (void)LiveMountService:(id)a3 addDisk:(id)a4 reply:(id)a5
{
  v6 = a5;
  v7 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
  (*(a5 + 2))(v6, v7);
}

- (void)LiveMountService:(id)a3 addDisk:(id)a4 fileSystemType:(id)a5 reply:(id)a6
{
  v7 = a6;
  v8 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
  (*(a6 + 2))(v7, v8, 0);
}

- (void)LiveMountService:(id)a3 addVolume:(id)a4 atServer:(id)a5 credentialType:(int64_t)a6 credential:(id)a7 reply:(id)a8
{
  v9 = a8;
  v10 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
  (*(a8 + 2))(v9, v10);
}

- (void)LiveMountService:(id)a3 ejectVolumeCluster:(id)a4 withFlags:(unsigned int)a5 reply:(id)a6
{
  v7 = a6;
  v8 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
  (*(a6 + 2))(v7, v8);
}

- (void)LiveMountService:(id)a3 sharesAtServer:(id)a4 credentialType:(int64_t)a5 credential:(id)a6 reply:(id)a7
{
  v8 = a7;
  v9 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
  (*(a7 + 2))(v8, 0, v9);
}

- (void)LiveMountService:(id)a3 unlockVolume:(id)a4 password:(id)a5 saveToKeychain:(BOOL)a6 completionHandler:(id)a7
{
  v8 = a4;
  v9 = a7;
  v10 = userfs_log_default;
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000235D4(v8, v10, v11, v12, v13, v14, v15, v16);
  }

  v17 = getNSErrorFromLiveFSErrno();
  v9[2](v9, v17);
}

@end