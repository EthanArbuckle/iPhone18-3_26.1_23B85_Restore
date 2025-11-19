@interface SMBClientService
- (void)SMBClientProtocolCredentialsForServer:(id)a3 completionHandler:(id)a4;
- (void)addSMBServerOrShare:(id)a3 completionHandler:(id)a4;
@end

@implementation SMBClientService

- (void)SMBClientProtocolCredentialsForServer:(id)a3 completionHandler:(id)a4
{
  v4 = a4;
  v5 = dispatch_time(0, 1000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001140;
  block[3] = &unk_10008C718;
  v8 = v4;
  v6 = v4;
  dispatch_after(v5, &_dispatch_main_q, block);
}

- (void)addSMBServerOrShare:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 scheme];
  v9 = [v8 isEqualToString:@"smb"];

  if (v9)
  {
    v10 = [v6 pathComponents];
    if ([v10 count] < 2)
    {
      *buf = 0;
      v12 = [srvsvc_subr getSharesAtServerURL:v6 Result:buf];
      if (*buf)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_10004B66C(buf);
        }

        v14 = [NSError errorWithDomain:NSPOSIXErrorDomain code:*buf userInfo:0];
        v7[2](v7, 0, v14);

        goto LABEL_19;
      }

      v13 = 0;
    }

    else
    {
      v11 = [v10 objectAtIndexedSubscript:1];
      v27 = v11;
      v12 = [NSArray arrayWithObjects:&v27 count:1];

      v13 = [v12 objectAtIndexedSubscript:0];
    }

    v20 = 0;
    v15 = [qword_1000954F0 addShares:v12 atServer:v6 serverDomainName:&v20 service:self];
    v16 = v20;
    v17 = v16;
    if (!v15)
    {
      if (v13 && v16)
      {
        v18 = [v16 stringByAppendingString:v13];
      }

      else
      {
        v18 = v16;
      }

      v19 = v18;

      v13 = v19;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v22 = "[SMBClientService addSMBServerOrShare:completionHandler:]";
      v23 = 2112;
      v24 = v13;
      v25 = 2112;
      v26 = v15;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s: sharePoint(%@) err: (%@)", buf, 0x20u);
    }

    (v7)[2](v7, v13, v15);

LABEL_19:
    goto LABEL_20;
  }

  v10 = [NSError errorWithDomain:NSCocoaErrorDomain code:262 userInfo:0];
  v7[2](v7, 0, v10);
LABEL_20:
}

@end