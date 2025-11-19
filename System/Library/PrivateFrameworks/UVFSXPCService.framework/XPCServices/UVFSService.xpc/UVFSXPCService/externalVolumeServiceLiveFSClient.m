@interface externalVolumeServiceLiveFSClient
- (BOOL)sameVolumeAlreadyLoaded:(id)a3 device:(id)a4 withError:(id *)a5;
- (id)getUniqueName:(id)a3 withError:(id *)a4;
- (id)registerNewVolume:(id)a3 listener:(id)a4 device:(id)a5;
@end

@implementation externalVolumeServiceLiveFSClient

- (id)registerNewVolume:(id)a3 listener:(id)a4 device:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = sub_10001D294;
  v34 = sub_10001D2A4;
  v35 = 0;
  v11 = dispatch_semaphore_create(0);
  v12 = *&self->LiveFSClient_opaque[OBJC_IVAR___LiveFSClient_conn];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10001D2AC;
  v27[3] = &unk_100038CE8;
  v29 = &v30;
  v13 = v11;
  v28 = v13;
  v14 = [v12 remoteObjectProxyWithErrorHandler:v27];
  v21 = _NSConcreteStackBlock;
  v22 = 3221225472;
  v23 = sub_10001D330;
  v24 = &unk_100038CE8;
  v26 = &v30;
  v15 = v13;
  v25 = v15;
  [v14 addVolume:v8 listener:v9 description:v10 reply:&v21];
  v16 = dispatch_time(0, 10000000000);
  if (dispatch_semaphore_wait(v15, v16))
  {
    if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100024378();
    }

    v17 = [NSError errorWithDomain:NSPOSIXErrorDomain code:60 userInfo:0, v21, v22, v23, v24];
    v18 = v31[5];
    v31[5] = v17;
  }

  v19 = v31[5];

  _Block_object_dispose(&v30, 8);

  return v19;
}

- (id)getUniqueName:(id)a3 withError:(id *)a4
{
  v6 = a3;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = sub_10001D294;
  v34 = sub_10001D2A4;
  v35 = 0;
  v7 = dispatch_semaphore_create(0);
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_10001D294;
  v28 = sub_10001D2A4;
  v29 = 0;
  v8 = *&self->LiveFSClient_opaque[OBJC_IVAR___LiveFSClient_conn];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10001D67C;
  v21[3] = &unk_100038CE8;
  v23 = &v30;
  v9 = v7;
  v22 = v9;
  v10 = [v8 remoteObjectProxyWithErrorHandler:v21];
  if (a4)
  {
    *a4 = 0;
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10001D700;
  v17[3] = &unk_100038D10;
  v19 = &v24;
  v20 = &v30;
  v11 = v9;
  v18 = v11;
  [v10 uniqueNameForName:v6 reply:v17];
  v12 = dispatch_time(0, 10000000000);
  if (dispatch_semaphore_wait(v11, v12))
  {
    if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000244B4();
    }

    v13 = [NSError errorWithDomain:NSPOSIXErrorDomain code:60 userInfo:0];
    v14 = v31[5];
    v31[5] = v13;
  }

  if (a4)
  {
    *a4 = v31[5];
  }

  v15 = v25[5];

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);

  return v15;
}

- (BOOL)sameVolumeAlreadyLoaded:(id)a3 device:(id)a4 withError:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = sub_10001D294;
  v41 = sub_10001D2A4;
  v42 = 0;
  v10 = dispatch_semaphore_create(0);
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = sub_10001D294;
  v35 = sub_10001D2A4;
  v36 = 0;
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100024568();
  }

  v11 = *&self->LiveFSClient_opaque[OBJC_IVAR___LiveFSClient_conn];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10001DB70;
  v28[3] = &unk_100038CE8;
  v30 = &v37;
  v12 = v10;
  v29 = v12;
  v13 = [v11 remoteObjectProxyWithErrorHandler:v28];
  v22 = _NSConcreteStackBlock;
  v23 = 3221225472;
  v24 = sub_10001DBF4;
  v25 = &unk_100038D38;
  v27 = &v31;
  v14 = v12;
  v26 = v14;
  [v13 listVolumes:&v22];
  v15 = dispatch_time(0, 10000000000);
  if (dispatch_semaphore_wait(v14, v15))
  {
    if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000245E8();
      if (!a5)
      {
LABEL_7:
        if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
        {
          sub_100024628(a5 == 0, a5);
        }

LABEL_21:
        v20 = 0;
        goto LABEL_22;
      }
    }

    else if (!a5)
    {
      goto LABEL_7;
    }

    *a5 = [NSError errorWithDomain:NSPOSIXErrorDomain code:60 userInfo:0, v22, v23, v24, v25];
    goto LABEL_7;
  }

  v16 = v38[5];
  if (v16)
  {
    if (a5)
    {
      *a5 = v16;
    }

    if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_1000246AC(a5 == 0, a5);
    }

    goto LABEL_21;
  }

  v17 = [v32[5] objectForKeyedSubscript:{v8, v22, v23, v24, v25}];
  if (!v17 || ([v32[5] objectForKeyedSubscript:v8], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "isEqual:", v9), v18, v17, !v19))
  {
    if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_1000247B0(a5);
    }

    goto LABEL_21;
  }

  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100024730();
  }

  v20 = 1;
LABEL_22:

  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v37, 8);

  return v20;
}

@end