@interface smbcdMountServiceDelegate
- (smbcdMountServiceDelegate)init;
- (void)LiveMountService:(id)service addDisk:(id)disk fileSystemType:(id)type reply:(id)reply;
- (void)LiveMountService:(id)service addVolume:(id)volume atServer:(id)server credentialType:(int64_t)type credential:(id)credential reply:(id)reply;
- (void)LiveMountService:(id)service ejectDisk:(id)disk reply:(id)reply;
- (void)LiveMountService:(id)service ejectDisk:(id)disk usingFlags:(unsigned int)flags reply:(id)reply;
- (void)LiveMountService:(id)service ejectVolumeCluster:(id)cluster withFlags:(unsigned int)flags reply:(id)reply;
- (void)LiveMountService:(id)service sharesAtServer:(id)server credentialType:(int64_t)type credential:(id)credential reply:(id)reply;
- (void)LiveMountService:(id)service unlockVolume:(id)volume password:(id)password saveToKeychain:(BOOL)keychain completionHandler:(id)handler;
@end

@implementation smbcdMountServiceDelegate

- (smbcdMountServiceDelegate)init
{
  v3.receiver = self;
  v3.super_class = smbcdMountServiceDelegate;
  return [(smbcdMountServiceDelegate *)&v3 init];
}

- (void)LiveMountService:(id)service addVolume:(id)volume atServer:(id)server credentialType:(int64_t)type credential:(id)credential reply:(id)reply
{
  serviceCopy = service;
  volumeCopy = volume;
  serverCopy = server;
  credentialCopy = credential;
  replyCopy = reply;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10004B780();
    if (type)
    {
      goto LABEL_3;
    }

LABEL_7:
    v18 = @"GUEST";
    v19 = &stru_10008EA58;
    goto LABEL_8;
  }

  if (!type)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (type != 1)
  {
    v18 = getNSErrorFromLiveFSErrno();
    replyCopy[2](replyCopy, v18);
    goto LABEL_12;
  }

  v18 = [credentialCopy objectForKey:LiveFSAuthCredUsernameKey];
  v19 = [credentialCopy objectForKey:LiveFSAuthCredPasswordKey];
LABEL_8:
  if ((-[__CFString containsString:](v18, "containsString:", @"@") & 1) != 0 || -[__CFString containsString:](v18, "containsString:", @"/") || [serverCopy containsString:@"/"])
  {
    v20 = getNSErrorFromLiveFSErrno();
    replyCopy[2](replyCopy, v20);
  }

  else
  {
    serverCopy = [NSString stringWithFormat:@"smb://%@:%@@%@/", v18, v19, serverCopy];
    v21 = [NSURL URLWithString:?];
    v22 = qword_1000954F0;
    v26 = volumeCopy;
    v23 = [NSArray arrayWithObjects:&v26 count:1];
    v24 = [v22 addShares:v23 atServer:v21 serverDomainName:0 service:serviceCopy];

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10004B7C4();
    }

    replyCopy[2](replyCopy, v24);

    v18 = v24;
  }

LABEL_12:
}

- (void)LiveMountService:(id)service ejectVolumeCluster:(id)cluster withFlags:(unsigned int)flags reply:(id)reply
{
  serviceCopy = service;
  clusterCopy = cluster;
  replyCopy = reply;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315650;
    v16 = "[smbcdMountServiceDelegate LiveMountService:ejectVolumeCluster:withFlags:reply:]";
    v17 = 2112;
    v18 = clusterCopy;
    v19 = 1024;
    flagsCopy = flags;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s: called on vol cluster %@, how %x", &v15, 0x1Cu);
  }

  if ((flags & 2) != 0 && (v12 = [qword_1000954F0 removeServer:clusterCopy], +[SMBFPClient locallyDestroyFPDomain:provider:](SMBFPClient, "locallyDestroyFPDomain:provider:", clusterCopy, @"com.apple.SMBClientProvider.FileProvider"), (v13 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v14 = v13;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10004B884();
    }

    replyCopy[2](replyCopy, v14);
  }

  else
  {
    replyCopy[2](replyCopy, 0);
  }
}

- (void)LiveMountService:(id)service sharesAtServer:(id)server credentialType:(int64_t)type credential:(id)credential reply:(id)reply
{
  serviceCopy = service;
  serverCopy = server;
  credentialCopy = credential;
  replyCopy = reply;
  v22 = 0;
  if (type == 1)
  {
    v15 = [credentialCopy objectForKey:LiveFSAuthCredUsernameKey];
    NSLog(@"%s: user auth, user %@", "[smbcdMountServiceDelegate LiveMountService:sharesAtServer:credentialType:credential:reply:]", v15);
    v16 = [credentialCopy objectForKey:LiveFSAuthCredPasswordKey];
  }

  else
  {
    if (type)
    {
      v15 = getNSErrorFromLiveFSErrno();
      replyCopy[2](replyCopy, 0, v15);
      goto LABEL_14;
    }

    NSLog(@"%s: GUEST auth", "[smbcdMountServiceDelegate LiveMountService:sharesAtServer:credentialType:credential:reply:]");
    v15 = @"GUEST";
    v16 = &stru_10008EA58;
  }

  serverCopy = [NSString stringWithFormat:@"smb://%@:%@@%@/", v15, v16, serverCopy];
  v18 = [NSURL URLWithString:serverCopy];
  NSLog(@"%s: server %@", "[smbcdMountServiceDelegate LiveMountService:sharesAtServer:credentialType:credential:reply:]", serverCopy);
  v19 = [srvsvc_subr getSharesAtServerURL:v18 Result:&v22];
  v20 = v19;
  if (v22)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10004B91C(&v22);
    }

    v21 = [LiveFSFPExtensionHelper getNSErrorFromLiveFSErrno:v22];
    replyCopy[2](replyCopy, 0, v21);
  }

  else if ([v19 count])
  {
    v21 = [NSArray arrayWithArray:v20];
    (replyCopy)[2](replyCopy, v21, 0);
  }

  else
  {
    v21 = [LiveFSFPExtensionHelper getNSErrorFromLiveFSErrno:1];
    replyCopy[2](replyCopy, 0, v21);
  }

LABEL_14:
}

- (void)LiveMountService:(id)service ejectDisk:(id)disk reply:(id)reply
{
  replyCopy = reply;
  v7 = getNSErrorFromLiveFSErrno();
  (*(reply + 2))(replyCopy, v7);
}

- (void)LiveMountService:(id)service unlockVolume:(id)volume password:(id)password saveToKeychain:(BOOL)keychain completionHandler:(id)handler
{
  handlerCopy = handler;
  v9 = getNSErrorFromLiveFSErrno();
  (*(handler + 2))(handlerCopy, v9);
}

- (void)LiveMountService:(id)service addDisk:(id)disk fileSystemType:(id)type reply:(id)reply
{
  replyCopy = reply;
  v8 = getNSErrorFromLiveFSErrno();
  (*(reply + 2))(replyCopy, v8, 0);
}

- (void)LiveMountService:(id)service ejectDisk:(id)disk usingFlags:(unsigned int)flags reply:(id)reply
{
  replyCopy = reply;
  v8 = getNSErrorFromLiveFSErrno();
  (*(reply + 2))(replyCopy, v8);
}

@end