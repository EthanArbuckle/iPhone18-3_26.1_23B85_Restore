@interface pipeChannel
- (int)pipeClose;
- (int)pipeOpen;
- (int)pipeTransceive:(id)a3 DataOut:(id)a4;
- (int)pipeWait;
- (int)pipeWrite:(id)a3;
- (pipeChannel)initWithName:(id)a3 Channel:(unsigned int)a4;
@end

@implementation pipeChannel

- (pipeChannel)initWithName:(id)a3 Channel:(unsigned int)a4
{
  v7 = a3;
  v13.receiver = self;
  v13.super_class = pipeChannel;
  v8 = [(pipeChannel *)&v13 init];
  v9 = v8;
  if (v8)
  {
    pd = v8->_pd;
    v8->_pd = 0;

    fidCtx = v9->_fidCtx;
    v9->_fidCtx = 0;

    v9->_shareID = 0;
    objc_storeStrong(&v9->_pipeName, a3);
    v9->_channel = a4;
    v9->_pipeIsOpen = 0;
  }

  return v9;
}

- (int)pipeOpen
{
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = sub_100004870;
  v35 = sub_100004880;
  v36 = 0;
  v28 = 0;
  v29[0] = &v28;
  v29[1] = 0x2020000000;
  v45 = 0;
  v46 = &v45;
  v47 = 0x11810000000;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v48 = "";
  v64 = 0;
  v30 = 0;
  if (self->_pipeIsOpen)
  {
    v3 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v4 = [(pipeChannel *)self channel];
      sub_10004C4B4(buf, v4, v5);
    }

    v6 = 0;
  }

  else
  {
    v7 = [(pipeChannel *)self pipeWait];
    *(v29[0] + 24) = v7;
    if (v7)
    {
      v8 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10004C454(v29, buf, [(pipeChannel *)self channel]);
      }

      v6 = *(v29[0] + 24);
    }

    else
    {
      v9 = dispatch_group_create();
      v10 = malloc_type_malloc(0xF8uLL, 0x10800407AD7242AuLL);
      *v10 = 0u;
      v10[1] = 0u;
      *(v10 + 30) = 0;
      v10[13] = 0u;
      v10[14] = 0u;
      v10[11] = 0u;
      v10[12] = 0u;
      v10[9] = 0u;
      v10[10] = 0u;
      v10[7] = 0u;
      v10[8] = 0u;
      v10[5] = 0u;
      v10[6] = 0u;
      v10[3] = 0u;
      v10[4] = 0u;
      v10[2] = 0u;
      *(v10 + 7) = 1;
      *(v10 + 12) = xmmword_10006D490;
      dispatch_group_enter(v9);
      v11 = [(pipeChannel *)self pd];
      v12 = [(pipeChannel *)self shareID];
      v13 = [(pipeChannel *)self pipeName];
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_100004888;
      v22[3] = &unk_10008C808;
      v24 = &v45;
      v25 = &v31;
      v26 = &v28;
      v27 = v10;
      v14 = v9;
      v23 = v14;
      [smb_subr sendCreateFile:v11 ShareID:v12 FileName:v13 StreamName:0 Param:v10 CompletionHandler:v22];

      dispatch_group_wait(v14, 0xFFFFFFFFFFFFFFFFLL);
      [(pipeChannel *)self setFidCtx:v32[5]];
      v15 = [(pipeChannel *)self fidCtx];
      LOBYTE(v10) = v15 == 0;

      if (v10)
      {
        v16 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          v18 = [(pipeChannel *)self channel];
          v19 = [(pipeChannel *)self pipeName];
          v20 = *(v29[0] + 24);
          v21 = *(v46 + 21);
          *buf = 67109890;
          v38 = v18;
          v39 = 2112;
          v40 = v19;
          v41 = 1024;
          v42 = v20;
          v43 = 1024;
          v44 = v21;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "loginSession: channel: %u, failed to open pipe %@, sendCreateFile error: %d, ntstatus: 0x%x\n", buf, 0x1Eu);
        }

        v6 = *(v29[0] + 24);
        if (!v6)
        {
          v6 = 5;
          *(v29[0] + 24) = 5;
        }
      }

      else
      {
        self->_pipeIsOpen = 1;
        v6 = *(v29[0] + 24);
      }
    }
  }

  _Block_object_dispose(&v45, 8);
  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v31, 8);

  return v6;
}

- (int)pipeWait
{
  v18 = 0;
  v19[0] = &v18;
  v19[1] = 0x2020000000;
  v20 = 0;
  v3 = dispatch_group_create();
  dispatch_group_enter(v3);
  v4 = [(pipeChannel *)self pd];
  v5 = [(pipeChannel *)self pipeName];
  v6 = [(pipeChannel *)self shareID];
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_100004B5C;
  v15 = &unk_10008C740;
  v17 = &v18;
  v7 = v3;
  v16 = v7;
  [smb_subr sendPipeWait:v4 Pipe:v5 ShareID:v6 Timeout:0 CompletionHandler:&v12];

  dispatch_group_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  if (*(v19[0] + 24))
  {
    v8 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [(pipeChannel *)self channel:v12];
      v9 = [(pipeChannel *)self pipeName];
      sub_10004C4F8(v9, v19);
    }

    v10 = *(v19[0] + 24);
  }

  else
  {
    v10 = 0;
  }

  _Block_object_dispose(&v18, 8);
  return v10;
}

- (int)pipeClose
{
  v2 = 0;
  v16 = 0;
  v17[0] = &v16;
  v17[1] = 0x2020000000;
  v18 = 0;
  if (self->_pipeIsOpen)
  {
    v4 = [(pipeChannel *)self fidCtx];

    if (v4)
    {
      v5 = dispatch_group_create();
      v6 = malloc_type_malloc(0x40uLL, 0x100004022DBA428uLL);
      v6[2] = 0u;
      v6[3] = 0u;
      *v6 = 0u;
      v6[1] = 0u;
      dispatch_group_enter(v5);
      v7 = [(pipeChannel *)self fidCtx];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100004D94;
      v12[3] = &unk_10008C830;
      v14 = &v16;
      v15 = v6;
      v4 = v5;
      v13 = v4;
      [smb_subr sendClose:v7 Param:v6 GetPostAttrs:0 CompletionHandler:v12];

      dispatch_group_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
      if (*(v17[0] + 24))
      {
        v8 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [(pipeChannel *)self channel];
          v9 = [(pipeChannel *)self pipeName];
          sub_10004C544(v9, v17);
        }
      }
    }

    self->_pipeIsOpen = 0;
    fidCtx = self->_fidCtx;
    self->_fidCtx = 0;

    v2 = *(v17[0] + 24);
  }

  _Block_object_dispose(&v16, 8);
  return v2;
}

- (int)pipeTransceive:(id)a3 DataOut:(id)a4
{
  v6 = a3;
  v7 = a4;
  v24 = 0;
  v25[0] = &v24;
  v25[1] = 0x2020000000;
  v26 = 0;
  if ([(pipeChannel *)self pipeIsOpen])
  {
    v8 = dispatch_group_create();
    dispatch_group_enter(v8);
    v9 = [(pipeChannel *)self fidCtx];
    v18 = _NSConcreteStackBlock;
    v19 = 3221225472;
    v20 = sub_10000503C;
    v21 = &unk_10008C740;
    v23 = &v24;
    v10 = v8;
    v22 = v10;
    [smb_subr sendPipeTransceive:v9 InData:v6 OutData:v7 CompletionHandler:&v18];

    dispatch_group_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
    if (*(v25[0] + 24))
    {
      v11 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [(pipeChannel *)self channel:v18];
        v12 = [(pipeChannel *)self pipeName];
        sub_10004C5E8(v12, v25);
      }

      v13 = *(v25[0] + 24);
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v14 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v15 = [(pipeChannel *)self channel];
      v16 = [(pipeChannel *)self pipeName];
      sub_10004C590(v16, v27, v15);
    }

    v13 = 9;
    *(v25[0] + 24) = 9;
  }

  _Block_object_dispose(&v24, 8);

  return v13;
}

- (int)pipeWrite:(id)a3
{
  v4 = a3;
  v21 = 0;
  v22[0] = &v21;
  v22[1] = 0x2020000000;
  v23 = 0;
  if ([(pipeChannel *)self pipeIsOpen])
  {
    v5 = malloc_type_malloc(0x20uLL, 0x1010040BA4D407CuLL);
    *v5 = 0u;
    v5[1] = 0u;
    *(v5 + 4) = [v4 length];
    v6 = v4;
    *(v5 + 1) = [v4 bytes];
    v7 = dispatch_group_create();
    dispatch_group_enter(v7);
    v8 = [(pipeChannel *)self fidCtx];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000052E0;
    v17[3] = &unk_10008C830;
    v19 = &v21;
    v20 = v5;
    v9 = v7;
    v18 = v9;
    [smb_subr sendWrite:v8 Param:v5 WriteBuf:v4 CompletionHandler:v17];

    dispatch_group_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
    if (*(v22[0] + 24))
    {
      v10 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [(pipeChannel *)self channel];
        v11 = [(pipeChannel *)self pipeName];
        sub_10004C68C(v11, v22);
      }

      v12 = *(v22[0] + 24);
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v9 = &_os_log_default;
    v13 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v14 = [(pipeChannel *)self channel];
      v15 = [(pipeChannel *)self pipeName];
      sub_10004C634(v15, v24, v14);
      v12 = 9;
      v9 = &_os_log_default;
    }

    else
    {
      v12 = 9;
    }
  }

  _Block_object_dispose(&v21, 8);
  return v12;
}

@end