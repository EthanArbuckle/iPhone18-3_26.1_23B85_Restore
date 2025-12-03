@interface RMDeviceAuthenticationCredential
- (BOOL)prepareURLRequest:(id)request error:(id *)error;
@end

@implementation RMDeviceAuthenticationCredential

- (BOOL)prepareURLRequest:(id)request error:(id *)error
{
  requestCopy = request;
  hTTPBody = [requestCopy HTTPBody];
  if (!hTTPBody)
  {
    hTTPBody = [&stru_1000D3680 dataUsingEncoding:4];
  }

  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = sub_1000091C0;
  v37 = sub_1000091D0;
  v38 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_1000091C0;
  v31 = sub_1000091D0;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_1000091C0;
  v25 = sub_1000091D0;
  v26 = 0;
  v7 = [[NSConditionLock alloc] initWithCondition:0];
  v8 = +[RMDeviceIdentity sharedDeviceIdentity];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000091D8;
  v15[3] = &unk_1000D0EA0;
  v9 = v7;
  v16 = v9;
  v18 = &v33;
  v10 = hTTPBody;
  v17 = v10;
  v19 = &v21;
  v20 = &v27;
  [v8 deviceIdentityWithCompletionHandler:v15];

  [v9 lockWhenCondition:1];
  [v9 unlock];
  v11 = v22[5];
  if (v11)
  {
    if (error)
    {
      v12 = +[RMErrorUtilities createInternalError];
      if (v12)
      {
        v12 = v12;
        *error = v12;
      }
    }
  }

  else
  {
    v13 = +[RMLog deviceAuthenticationCredential];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_1000094DC(v13);
    }

    [requestCopy setValue:v34[5] forHTTPHeaderField:@"X-Apple-RM-Signature-Data"];
    [requestCopy setValue:v28[5] forHTTPHeaderField:@"X-Apple-RM-Signature-Certificates"];
  }

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);

  _Block_object_dispose(&v33, 8);
  return v11 == 0;
}

@end