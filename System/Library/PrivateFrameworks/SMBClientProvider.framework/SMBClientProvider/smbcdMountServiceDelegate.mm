@interface smbcdMountServiceDelegate
- (smbcdMountServiceDelegate)init;
- (void)LiveMountService:(id)a3 addDisk:(id)a4 fileSystemType:(id)a5 reply:(id)a6;
- (void)LiveMountService:(id)a3 addVolume:(id)a4 atServer:(id)a5 credentialType:(int64_t)a6 credential:(id)a7 reply:(id)a8;
- (void)LiveMountService:(id)a3 ejectDisk:(id)a4 reply:(id)a5;
- (void)LiveMountService:(id)a3 ejectDisk:(id)a4 usingFlags:(unsigned int)a5 reply:(id)a6;
- (void)LiveMountService:(id)a3 ejectVolumeCluster:(id)a4 withFlags:(unsigned int)a5 reply:(id)a6;
- (void)LiveMountService:(id)a3 sharesAtServer:(id)a4 credentialType:(int64_t)a5 credential:(id)a6 reply:(id)a7;
- (void)LiveMountService:(id)a3 unlockVolume:(id)a4 password:(id)a5 saveToKeychain:(BOOL)a6 completionHandler:(id)a7;
@end

@implementation smbcdMountServiceDelegate

- (smbcdMountServiceDelegate)init
{
  v3.receiver = self;
  v3.super_class = smbcdMountServiceDelegate;
  return [(smbcdMountServiceDelegate *)&v3 init];
}

- (void)LiveMountService:(id)a3 addVolume:(id)a4 atServer:(id)a5 credentialType:(int64_t)a6 credential:(id)a7 reply:(id)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  v17 = a8;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10004B780();
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_7:
    v18 = @"GUEST";
    v19 = &stru_10008EA58;
    goto LABEL_8;
  }

  if (!a6)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (a6 != 1)
  {
    v18 = getNSErrorFromLiveFSErrno();
    v17[2](v17, v18);
    goto LABEL_12;
  }

  v18 = [v16 objectForKey:LiveFSAuthCredUsernameKey];
  v19 = [v16 objectForKey:LiveFSAuthCredPasswordKey];
LABEL_8:
  if ((-[__CFString containsString:](v18, "containsString:", @"@") & 1) != 0 || -[__CFString containsString:](v18, "containsString:", @"/") || [v15 containsString:@"/"])
  {
    v20 = getNSErrorFromLiveFSErrno();
    v17[2](v17, v20);
  }

  else
  {
    v25 = [NSString stringWithFormat:@"smb://%@:%@@%@/", v18, v19, v15];
    v21 = [NSURL URLWithString:?];
    v22 = qword_1000954F0;
    v26 = v14;
    v23 = [NSArray arrayWithObjects:&v26 count:1];
    v24 = [v22 addShares:v23 atServer:v21 serverDomainName:0 service:v13];

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10004B7C4();
    }

    v17[2](v17, v24);

    v18 = v24;
  }

LABEL_12:
}

- (void)LiveMountService:(id)a3 ejectVolumeCluster:(id)a4 withFlags:(unsigned int)a5 reply:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315650;
    v16 = "[smbcdMountServiceDelegate LiveMountService:ejectVolumeCluster:withFlags:reply:]";
    v17 = 2112;
    v18 = v10;
    v19 = 1024;
    v20 = a5;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s: called on vol cluster %@, how %x", &v15, 0x1Cu);
  }

  if ((a5 & 2) != 0 && (v12 = [qword_1000954F0 removeServer:v10], +[SMBFPClient locallyDestroyFPDomain:provider:](SMBFPClient, "locallyDestroyFPDomain:provider:", v10, @"com.apple.SMBClientProvider.FileProvider"), (v13 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v14 = v13;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10004B884();
    }

    v11[2](v11, v14);
  }

  else
  {
    v11[2](v11, 0);
  }
}

- (void)LiveMountService:(id)a3 sharesAtServer:(id)a4 credentialType:(int64_t)a5 credential:(id)a6 reply:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = a7;
  v22 = 0;
  if (a5 == 1)
  {
    v15 = [v13 objectForKey:LiveFSAuthCredUsernameKey];
    NSLog(@"%s: user auth, user %@", "[smbcdMountServiceDelegate LiveMountService:sharesAtServer:credentialType:credential:reply:]", v15);
    v16 = [v13 objectForKey:LiveFSAuthCredPasswordKey];
  }

  else
  {
    if (a5)
    {
      v15 = getNSErrorFromLiveFSErrno();
      v14[2](v14, 0, v15);
      goto LABEL_14;
    }

    NSLog(@"%s: GUEST auth", "[smbcdMountServiceDelegate LiveMountService:sharesAtServer:credentialType:credential:reply:]");
    v15 = @"GUEST";
    v16 = &stru_10008EA58;
  }

  v17 = [NSString stringWithFormat:@"smb://%@:%@@%@/", v15, v16, v12];
  v18 = [NSURL URLWithString:v17];
  NSLog(@"%s: server %@", "[smbcdMountServiceDelegate LiveMountService:sharesAtServer:credentialType:credential:reply:]", v12);
  v19 = [srvsvc_subr getSharesAtServerURL:v18 Result:&v22];
  v20 = v19;
  if (v22)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10004B91C(&v22);
    }

    v21 = [LiveFSFPExtensionHelper getNSErrorFromLiveFSErrno:v22];
    v14[2](v14, 0, v21);
  }

  else if ([v19 count])
  {
    v21 = [NSArray arrayWithArray:v20];
    (v14)[2](v14, v21, 0);
  }

  else
  {
    v21 = [LiveFSFPExtensionHelper getNSErrorFromLiveFSErrno:1];
    v14[2](v14, 0, v21);
  }

LABEL_14:
}

- (void)LiveMountService:(id)a3 ejectDisk:(id)a4 reply:(id)a5
{
  v6 = a5;
  v7 = getNSErrorFromLiveFSErrno();
  (*(a5 + 2))(v6, v7);
}

- (void)LiveMountService:(id)a3 unlockVolume:(id)a4 password:(id)a5 saveToKeychain:(BOOL)a6 completionHandler:(id)a7
{
  v8 = a7;
  v9 = getNSErrorFromLiveFSErrno();
  (*(a7 + 2))(v8, v9);
}

- (void)LiveMountService:(id)a3 addDisk:(id)a4 fileSystemType:(id)a5 reply:(id)a6
{
  v7 = a6;
  v8 = getNSErrorFromLiveFSErrno();
  (*(a6 + 2))(v7, v8, 0);
}

- (void)LiveMountService:(id)a3 ejectDisk:(id)a4 usingFlags:(unsigned int)a5 reply:(id)a6
{
  v7 = a6;
  v8 = getNSErrorFromLiveFSErrno();
  (*(a6 + 2))(v7, v8);
}

@end