@interface srvsvc_subr
+ (id)getSharesAtServerURL:(id)a3 Result:(int *)a4;
@end

@implementation srvsvc_subr

+ (id)getSharesAtServerURL:(id)a3 Result:(int *)a4
{
  v5 = [NSURLComponents componentsWithURL:a3 resolvingAgainstBaseURL:1];
  v6 = [v5 host];
  v7 = [v5 user];
  v8 = [v5 password];
  if ([v7 containsString:@";"])
  {
    v9 = [v7 rangeOfString:@";"];
    v10 = [v7 substringToIndex:v9];
    v11 = [v7 substringFromIndex:v9 + 1];

    v7 = v11;
  }

  else
  {
    v10 = 0;
  }

  v42 = 0;
  v40 = 0u;
  v41 = 0u;
  v38[1] = 0;
  v39 = 0;
  v38[0] = 0;
  v12 = objc_alloc_init(SMBPiston);
  if (!v12)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000655D4();
    }

    v15 = 0;
    v16 = 0;
    v14 = 12;
    goto LABEL_32;
  }

  v45 = 0;
  v44 = 0u;
  memset(v43, 0, sizeof(v43));
  v13 = [smb_subr sendNegotiate:v12 Server:v6 netBIOSName:0 VPNCookie:0 Result:v43];
  if (v13)
  {
    v14 = v13;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000653D8(v43);
    }

LABEL_31:
    v15 = 0;
    v16 = 0;
    goto LABEL_32;
  }

  v42 = 0;
  v40 = 0u;
  v41 = 0u;
  if ([v7 isEqualToString:@"GUEST"])
  {
    LODWORD(v40) = 1;
    v17 = v12;
    v18 = v7;
    v19 = 0;
    v20 = 0;
LABEL_26:
    v24 = [smb_subr sendSessionSetup:v17 User:v18 Password:v19 Realm:v20 Param:&v40];
    goto LABEL_27;
  }

  if ([v7 length] >= 0x100)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100065454();
    }

    v15 = 0;
    v16 = 0;
    v14 = 22;
    goto LABEL_32;
  }

  if ((v45 & 2) != 0)
  {
    v21 = objc_opt_new();
    v22 = [v21 realms];

    if (v10 && [v22 count])
    {
      LODWORD(v40) = 8;
      v23 = [smb_subr sendSessionSetup:v12 User:v7 Password:v8 Realm:v10 Param:&v40];

      if (v23 != 80)
      {
        goto LABEL_28;
      }
    }

    else
    {
    }
  }

  if ((v45 & 0x44) == 0 || (LODWORD(v40) = 2, v24 = [smb_subr sendSessionSetup:v12 User:v7 Password:v8 Realm:@"WELLKNOWN:COM.APPLE.LKDC" Param:&v40], v24 == 80))
  {
    LODWORD(v40) = 4;
    v17 = v12;
    v18 = v7;
    v19 = v8;
    v20 = v10;
    goto LABEL_26;
  }

LABEL_27:
  v23 = v24;
LABEL_28:
  v25 = sub_100032674(v23);
  if (v25)
  {
    v14 = v25;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100065498(&v40);
    }

    goto LABEL_31;
  }

  v27 = [smb_subr sendTreeConnect:v12 ShareName:@"IPC$" Param:v38];
  v35 = a4;
  if (v27)
  {
    v14 = v27;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100065514(v38);
    }

    v15 = 0;
    v16 = 0;
    p_superclass = (&OBJC_METACLASS___SMBClientdKeychainUtilities + 8);
  }

  else
  {
    v29 = [GetShareListArgs alloc];
    v30 = [(GetShareListArgs *)v29 initWithPiston:v12 ServerName:v6 ServerMaxRead:DWORD2(v44) ServerMaxWrite:HIDWORD(v44) ServerMaxTransact:DWORD1(v44) ShareID:HIDWORD(v39)];
    v16 = v30;
    if (v30)
    {
      v15 = sub_100049470(v30);
      v14 = [(GetShareListArgs *)v16 status];
      if (v15)
      {
        v31 = v15;
        v34 = v15;
        v15 = objc_opt_new();
        v33 = objc_opt_new();
        sub_10004B49C(v31, v15);
        v36[0] = _NSConcreteStackBlock;
        v36[1] = 3221225472;
        v36[2] = sub_10004B60C;
        v36[3] = &unk_10008E9D8;
        v37 = v33;
        v32 = v33;
        [v15 enumerateObjectsUsingBlock:v36];
        [v15 removeObjectsInArray:v32];
        sub_10004A84C(v34);
      }
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100065590();
      }

      v15 = 0;
      v14 = 12;
    }

    p_superclass = &OBJC_METACLASS___SMBClientdKeychainUtilities.superclass;
    [smb_subr sendTreeDisonnect:v12 ShareID:HIDWORD(v39) Param:v38];
  }

  [p_superclass + 14 sendLogoff:v12 Param:&v40];
  a4 = v35;
LABEL_32:
  *a4 = v14;

  return v15;
}

@end