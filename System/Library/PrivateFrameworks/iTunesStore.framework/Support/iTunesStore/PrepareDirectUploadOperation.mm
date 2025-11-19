@interface PrepareDirectUploadOperation
- (PrepareDirectUploadOperation)initWithRequest:(id)a3;
- (id)_newURLRequestWithURL:(id)a3;
- (id)_uploadURL;
- (id)outputBlock;
- (void)run;
- (void)setOutputBlock:(id)a3;
@end

@implementation PrepareDirectUploadOperation

- (PrepareDirectUploadOperation)initWithRequest:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PrepareDirectUploadOperation;
  v6 = [(PrepareDirectUploadOperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_request, a3);
  }

  return v7;
}

- (id)outputBlock
{
  [(PrepareDirectUploadOperation *)self lock];
  v3 = [self->_outputBlock copy];
  [(PrepareDirectUploadOperation *)self unlock];
  v4 = objc_retainBlock(v3);

  return v4;
}

- (void)setOutputBlock:(id)a3
{
  v6 = a3;
  [(PrepareDirectUploadOperation *)self lock];
  if (self->_outputBlock != v6)
  {
    v4 = [v6 copy];
    outputBlock = self->_outputBlock;
    self->_outputBlock = v4;
  }

  [(PrepareDirectUploadOperation *)self unlock];
}

- (void)run
{
  v3 = [(DirectUploadRequest *)self->_request localAssetURL];
  v4 = objc_alloc_init(NSFileManager);
  if (!v3)
  {
    goto LABEL_46;
  }

  if ([v3 isFileURL])
  {
    v5 = [v3 path];
    v6 = [v4 isReadableFileAtPath:v5];

    if ((v6 & 1) == 0)
    {
      v19 = +[SSLogConfig sharedDaemonConfig];
      if (!v19)
      {
        v19 = +[SSLogConfig sharedConfig];
      }

      v27 = [v19 shouldLog];
      v28 = [v19 shouldLogToDisk];
      v29 = [v19 OSLogObject];
      v30 = v29;
      if (v28)
      {
        v27 |= 2u;
      }

      if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v27 &= 2u;
      }

      if (!v27)
      {

        goto LABEL_45;
      }

      v31 = objc_opt_class();
      v32 = [(DirectUploadRequest *)self->_request databaseIdentifier];
      v42 = 138412802;
      v43 = v31;
      v44 = 2048;
      v45 = v32;
      v46 = 2112;
      v47 = v3;
      LODWORD(v41) = 32;
      v26 = _os_log_send_and_compose_impl();

      if (v26)
      {
        goto LABEL_33;
      }

      goto LABEL_45;
    }
  }

  v7 = [(DirectUploadRequest *)self->_request accountIdentifier];

  if (!v7)
  {
    v19 = +[SSLogConfig sharedDaemonConfig];
    if (!v19)
    {
      v19 = +[SSLogConfig sharedConfig];
    }

    v20 = [v19 shouldLog];
    v21 = [v19 shouldLogToDisk];
    v22 = [v19 OSLogObject];
    v23 = v22;
    if (v21)
    {
      v20 |= 2u;
    }

    if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v20 &= 2u;
    }

    if (!v20)
    {

      goto LABEL_45;
    }

    v24 = objc_opt_class();
    v25 = [(DirectUploadRequest *)self->_request databaseIdentifier];
    v42 = 138412546;
    v43 = v24;
    v44 = 2048;
    v45 = v25;
    LODWORD(v41) = 22;
    v26 = _os_log_send_and_compose_impl();

    if (v26)
    {
LABEL_33:
      v33 = [NSString stringWithCString:v26 encoding:4, &v42, v41];
      free(v26);
      SSFileLog();
    }

LABEL_45:

LABEL_46:
    v34 = SSError();
    v35 = 0;
    v36 = 0;
    goto LABEL_47;
  }

  v8 = [(PrepareDirectUploadOperation *)self _uploadURL];
  if (v8)
  {
    v9 = [[NSMutableString alloc] initWithString:@"com.apple.itunesstored"];
    v10 = +[SSLogConfig sharedDaemonConfig];
    if (!v10)
    {
      v10 = +[SSLogConfig sharedConfig];
    }

    v11 = [v10 shouldLog];
    v12 = [v10 shouldLogToDisk];
    v13 = [v10 OSLogObject];
    v14 = v13;
    if (v12)
    {
      v11 |= 2u;
    }

    if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v11 &= 2u;
    }

    if (v11)
    {
      v15 = objc_opt_class();
      v16 = [(DirectUploadRequest *)self->_request databaseIdentifier];
      v42 = 138412802;
      v43 = v15;
      v44 = 2048;
      v45 = v16;
      v46 = 2112;
      v47 = v8;
      LODWORD(v41) = 32;
      v40 = &v42;
      v17 = _os_log_send_and_compose_impl();

      if (v17)
      {
        v18 = [NSString stringWithCString:v17 encoding:4, &v42, v41];
        free(v17);
        v40 = v18;
        SSFileLog();
      }
    }

    else
    {
    }

    v35 = [(PrepareDirectUploadOperation *)self _newURLRequestWithURL:v8];
    v37 = [(DirectUploadRequest *)self->_request sourceApplication];
    if (v37)
    {
      [v9 appendString:@"."];
      [v9 appendString:v37];
    }

    if ([v35 allowsCellularAccess])
    {
      [v9 appendString:@".cell"];
    }

    v36 = [NSURLSessionConfiguration backgroundSessionConfigurationWithIdentifier:v9];
    [v36 setAllowsCellularAccess:{objc_msgSend(v35, "allowsCellularAccess")}];
    [v36 setHTTPCookieAcceptPolicy:1];
    [v36 setHTTPShouldSetCookies:0];
    [v36 setHTTPShouldUsePipelining:1];
    [v36 setSessionSendsLaunchEvents:1];
    [v36 set_allowsRetryForBackgroundDataTasks:1];
    [v36 set_sourceApplicationBundleIdentifier:v37];

    v34 = 0;
  }

  else
  {
    v34 = SSError();
    v35 = 0;
    v36 = 0;
  }

LABEL_47:
  [(PrepareDirectUploadOperation *)self setError:v34];
  [(PrepareDirectUploadOperation *)self setSuccess:0];
  v38 = [(PrepareDirectUploadOperation *)self outputBlock];
  v39 = v38;
  if (v38)
  {
    (*(v38 + 16))(v38, v36, v35, v34);
    [(PrepareDirectUploadOperation *)self setOutputBlock:0];
  }
}

- (id)_newURLRequestWithURL:(id)a3
{
  v4 = a3;
  v5 = [[NSMutableURLRequest alloc] initWithURL:v4];
  [v5 setHTTPMethod:@"POST"];
  v6 = [(DirectUploadRequest *)self->_request accountIdentifier];
  [ISStoreURLOperation addITunesStoreHeadersToRequest:v5 withAccountIdentifier:v6];
  v7 = +[SSDevice currentDevice];
  v8 = [v7 userAgent];

  if (v8)
  {
    [v5 setValue:v8 forHTTPHeaderField:SSHTTPHeaderUserAgent];
  }

  v9 = +[SSVCookieStorage sharedStorage];
  v10 = [v9 cookieHeadersForURL:v4 userIdentifier:v6];

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1001322AC;
  v24[3] = &unk_100327658;
  v11 = v5;
  v25 = v11;
  [v10 enumerateKeysAndObjectsUsingBlock:v24];
  v12 = [(DirectUploadRequest *)self->_request parentRelationshipType];
  v13 = [v12 isEqualToString:SSVMediaSocialPostAttachmentRelationshipCoverImage];

  if (v13)
  {
    [v11 setValue:@"RP.AudioCoverArt" forHTTPHeaderField:@"X-Apple-Upload-Validation-RuleSets"];
  }

  v14 = [(DirectUploadRequest *)self->_request UTI];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
    if (([(__CFString *)v16 isEqualToString:@"com.apple.coreaudio-format"]& 1) != 0)
    {
      v17 = @"audio/x-caf";
    }

    else
    {
      v17 = UTTypeCopyPreferredTagWithClass(v16, kUTTagClassMIMEType);
      if (!v17)
      {
LABEL_10:
        v18 = +[NSUUID UUID];
        v19 = [v18 UUIDString];

        v20 = UTTypeCopyPreferredTagWithClass(v16, kUTTagClassFilenameExtension);
        if (v20)
        {
          v21 = [v19 stringByAppendingPathExtension:v20];

          v19 = v21;
        }

        [v11 setValue:v19 forHTTPHeaderField:@"X-Original-Filename"];
        CFRelease(v16);

        goto LABEL_13;
      }
    }

    [v11 setValue:v17 forHTTPHeaderField:@"Content-Type"];

    goto LABEL_10;
  }

LABEL_13:
  v22 = v11;

  return v22;
}

- (id)_uploadURL
{
  v3 = [(DirectUploadRequest *)self->_request UTI];
  v4 = SSVMediaSocialAttachmentTypeForTypeIdentifier();

  v5 = [SSURLBagContext contextWithBagType:0];
  v6 = [(PrepareDirectUploadOperation *)self loadedURLBagWithContext:v5 returningError:0];

  if (v6 && (v4 - 1) <= 3)
  {
    v7 = off_100329778[v4 - 1];
    v8 = [v6 urlForKey:v7];
    if (v8)
    {
      goto LABEL_30;
    }

    v9 = [v6 valueForKey:v7];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 objectForKey:v7];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = [NSURL URLWithString:v10];
      }

      else
      {
        v8 = 0;
      }

      if (v8)
      {
        goto LABEL_30;
      }
    }

    else
    {
    }
  }

  v11 = CFPreferencesCopyAppValue(@"ISDirectUploadURL", kSSUserDefaultsIdentifier);
  if (!v11)
  {
    v8 = 0;
    goto LABEL_30;
  }

  v12 = v11;
  v13 = CFGetTypeID(v11);
  if (v13 == CFStringGetTypeID())
  {
    v14 = [NSURL URLWithString:v12];
    v15 = +[SSLogConfig sharedDaemonConfig];
    if (!v15)
    {
      v15 = +[SSLogConfig sharedConfig];
    }

    v16 = [v15 shouldLog];
    if ([v15 shouldLogToDisk])
    {
      v17 = v16 | 2;
    }

    else
    {
      v17 = v16;
    }

    v18 = [v15 OSLogObject];
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v17 &= 2u;
    }

    if (v17)
    {
      *v23 = 138412546;
      *&v23[4] = objc_opt_class();
      *&v23[12] = 2112;
      *&v23[14] = v14;
      v19 = *&v23[4];
      LODWORD(v22) = 22;
      v20 = _os_log_send_and_compose_impl();

      if (!v20)
      {
LABEL_23:

        if ((v4 - 1) > 3)
        {
          v8 = 0;
        }

        else
        {
          v8 = [v14 URLByAppendingPathComponent:off_100329798[v4 - 1]];
        }

        goto LABEL_29;
      }

      v18 = [NSString stringWithCString:v20 encoding:4, v23, v22, *v23, *&v23[16]];
      free(v20);
      SSFileLog();
    }

    goto LABEL_23;
  }

  v8 = 0;
LABEL_29:
  CFRelease(v12);
LABEL_30:

  return v8;
}

@end