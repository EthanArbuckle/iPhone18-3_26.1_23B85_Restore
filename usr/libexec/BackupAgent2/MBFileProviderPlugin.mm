@interface MBFileProviderPlugin
- (id)_policyElementsForEngine:(id)a3;
- (id)endingRestoreWithPolicy:(id)a3 engine:(id)a4;
@end

@implementation MBFileProviderPlugin

- (id)endingRestoreWithPolicy:(id)a3 engine:(id)a4
{
  v5 = a4;
  v6 = [v5 persona];
  v7 = [v6 userIncompleteRestoreDirectory];
  v8 = [NSURL fileURLWithPath:v7 isDirectory:1];

  v9 = [v8 URLByAppendingPathComponent:@"var/mobile" isDirectory:1];
  v10 = [(MBFileProviderPlugin *)self _policyElementsForEngine:v5];
  v11 = [v10 componentsJoinedByString:@"-"];

  v12 = MBGetDefaultLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v5 properties];
    v14 = [v13 buildVersion];
    *buf = 138412802;
    v26 = v9;
    v27 = 2112;
    v28 = v14;
    v29 = 2112;
    v30 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "userURL:%@, buildVersion:%@, restorePolicy:%@", buf, 0x20u);

    v15 = [v5 properties];
    v22 = [v15 buildVersion];
    _MBLog();
  }

  v16 = dispatch_semaphore_create(0);
  v17 = +[FPDaemonConnection sharedConnection];
  v18 = [v5 properties];
  v19 = [v18 buildVersion];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10003D0D0;
  v23[3] = &unk_1000FDB50;
  v24 = v16;
  v20 = v16;
  [v17 restoreUserURL:v9 fromBuild:v19 restoreType:v11 completionHandler:v23];

  dispatch_semaphore_wait(v20, 0xFFFFFFFFFFFFFFFFLL);
  return 0;
}

- (id)_policyElementsForEngine:(id)a3
{
  v3 = [a3 enginePolicy];
  v4 = +[NSMutableArray array];
  v5 = v4;
  if (v3)
  {
    [v4 addObject:@"cloudKitEngine"];
    if ((v3 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_3;
  }

  [v5 addObject:@"driveEngine"];
  if ((v3 & 4) == 0)
  {
LABEL_4:
    if ((v3 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  [v5 addObject:@"deviceTransferEngine"];
  if ((v3 & 8) == 0)
  {
LABEL_5:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  [v5 addObject:@"serviceEngine"];
  if ((v3 & 0x10) == 0)
  {
LABEL_6:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  [v5 addObject:@"encryptedBackup"];
  if ((v3 & 0x20) == 0)
  {
LABEL_7:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  [v5 addObject:@"megaBackup"];
  if ((v3 & 0x40) != 0)
  {
LABEL_8:
    [v5 addObject:@"shouldCommit"];
  }

LABEL_9:
  v6 = [v5 copy];

  return v6;
}

@end