@interface SSVPlaybackKDLeaseRequest
- (id)_actionParameterValue;
- (id)_copyBodyDictionaryWithFairPlaySession:(void *)a3;
@end

@implementation SSVPlaybackKDLeaseRequest

- (id)_actionParameterValue
{
  v2 = [(SSVPlaybackLeaseRequest *)self _actionType];
  v3 = @"init";
  if (v2 == 1)
  {
    v3 = @"lease";
  }

  if (v2 == 2)
  {
    return @"init+lease";
  }

  else
  {
    return v3;
  }
}

- (id)_copyBodyDictionaryWithFairPlaySession:(void *)a3
{
  v52 = *MEMORY[0x1E69E9840];
  v44.receiver = self;
  v44.super_class = SSVPlaybackKDLeaseRequest;
  v5 = [(SSVPlaybackLeaseRequest *)&v44 _copyBodyDictionaryWithFairPlaySession:?];
  v6 = [(SSVPlaybackLeaseRequest *)self _certificateData];
  v7 = [(SSVPlaybackLeaseRequest *)self _KDMovieIdentifier];
  v43 = v7;
  if (!v7 && v6)
  {
    LODWORD(v42[0]) = 1;
    v8 = Qhl17oSYJtCJIxM([v6 bytes], objc_msgSend(v6, "length"), v42, 1, &v43);
    if (!v8)
    {
      [(SSVPlaybackLeaseRequest *)self _setKDMovieIdentifier:v43];
      goto LABEL_18;
    }

    v9 = v8;
    v10 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v10)
    {
      v10 = +[SSLogConfig sharedConfig];
    }

    v11 = [v10 shouldLog];
    if ([v10 shouldLogToDisk])
    {
      v12 = v11 | 2;
    }

    else
    {
      v12 = v11;
    }

    v13 = [v10 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v12;
    }

    else
    {
      v14 = v12 & 2;
    }

    if (v14)
    {
      LODWORD(v47) = 134217984;
      *(&v47 + 4) = v9;
      LODWORD(v38) = 12;
      v37 = &v47;
      v15 = _os_log_send_and_compose_impl();

      if (!v15)
      {
LABEL_16:

LABEL_18:
        v7 = v43;
        goto LABEL_19;
      }

      v13 = [MEMORY[0x1E696AEC0] stringWithCString:v15 encoding:{4, &v47, v38}];
      free(v15);
      SSFileLog(v10, @"%@", v16, v17, v18, v19, v20, v21, v13);
    }

    goto LABEL_16;
  }

LABEL_19:
  v48 = 0u;
  v49 = 0u;
  *&v47 = 1;
  *(&v47 + 1) = v7;
  *&v48 = [v6 bytes];
  DWORD2(v48) = [v6 length];
  *&v49 = 0;
  DWORD2(v49) = 0;
  v50 = 0;
  v51 = [(SSVPlaybackLeaseRequest *)self KDChannelIdentifier];
  v41 = 0;
  v42[0] = 1;
  v42[1] = &v47;
  v42[2] = 1;
  v39 = 0;
  v40 = 0;
  MpP1bcydEGt61uk5lIIoLR(v42, &v39);
  if (v22)
  {
    v23 = v22;
    v24 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v24)
    {
      v24 = +[SSLogConfig sharedConfig];
    }

    v25 = [v24 shouldLog];
    if ([v24 shouldLogToDisk])
    {
      v26 = v25 | 2;
    }

    else
    {
      v26 = v25;
    }

    v27 = [v24 OSLogObject];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = v26;
    }

    else
    {
      v28 = v26 & 2;
    }

    if (v28)
    {
      v45 = 134217984;
      v46 = v23;
      LODWORD(v38) = 12;
      v29 = _os_log_send_and_compose_impl();

      if (!v29)
      {
LABEL_36:

        goto LABEL_37;
      }

      v27 = [MEMORY[0x1E696AEC0] stringWithCString:v29 encoding:{4, &v45, v38}];
      free(v29);
      SSFileLog(v24, @"%@", v30, v31, v32, v33, v34, v35, v27);
    }

    v29 = 0;
LABEL_35:

    goto LABEL_36;
  }

  if (!v41)
  {
    v29 = 0;
    if (!a3)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  v29 = *(v40 + 16);
  if (*v40)
  {
    v24 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:*v40 length:*(v40 + 8) freeWhenDone:0];
    v27 = [v24 base64EncodedStringWithOptions:0];
    [v5 setObject:v27 forKey:@"spc"];
    goto LABEL_35;
  }

LABEL_37:
  if (a3)
  {
LABEL_38:
    *a3 = v29;
  }

LABEL_39:

  return v5;
}

@end