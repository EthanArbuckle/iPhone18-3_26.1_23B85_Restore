@interface PrepareDirectUploadOperation
- (PrepareDirectUploadOperation)initWithRequest:(id)request;
- (id)_newURLRequestWithURL:(id)l;
- (id)_uploadURL;
- (id)outputBlock;
- (void)run;
- (void)setOutputBlock:(id)block;
@end

@implementation PrepareDirectUploadOperation

- (PrepareDirectUploadOperation)initWithRequest:(id)request
{
  requestCopy = request;
  v9.receiver = self;
  v9.super_class = PrepareDirectUploadOperation;
  v6 = [(PrepareDirectUploadOperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_request, request);
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

- (void)setOutputBlock:(id)block
{
  blockCopy = block;
  [(PrepareDirectUploadOperation *)self lock];
  if (self->_outputBlock != blockCopy)
  {
    v4 = [blockCopy copy];
    outputBlock = self->_outputBlock;
    self->_outputBlock = v4;
  }

  [(PrepareDirectUploadOperation *)self unlock];
}

- (void)run
{
  localAssetURL = [(DirectUploadRequest *)self->_request localAssetURL];
  v4 = objc_alloc_init(NSFileManager);
  if (!localAssetURL)
  {
    goto LABEL_46;
  }

  if ([localAssetURL isFileURL])
  {
    path = [localAssetURL path];
    v6 = [v4 isReadableFileAtPath:path];

    if ((v6 & 1) == 0)
    {
      v19 = +[SSLogConfig sharedDaemonConfig];
      if (!v19)
      {
        v19 = +[SSLogConfig sharedConfig];
      }

      shouldLog = [v19 shouldLog];
      shouldLogToDisk = [v19 shouldLogToDisk];
      oSLogObject = [v19 OSLogObject];
      v30 = oSLogObject;
      if (shouldLogToDisk)
      {
        shouldLog |= 2u;
      }

      if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
      {
        shouldLog &= 2u;
      }

      if (!shouldLog)
      {

        goto LABEL_45;
      }

      v31 = objc_opt_class();
      databaseIdentifier = [(DirectUploadRequest *)self->_request databaseIdentifier];
      v42 = 138412802;
      v43 = v31;
      v44 = 2048;
      v45 = databaseIdentifier;
      v46 = 2112;
      v47 = localAssetURL;
      LODWORD(v41) = 32;
      v26 = _os_log_send_and_compose_impl();

      if (v26)
      {
        goto LABEL_33;
      }

      goto LABEL_45;
    }
  }

  accountIdentifier = [(DirectUploadRequest *)self->_request accountIdentifier];

  if (!accountIdentifier)
  {
    v19 = +[SSLogConfig sharedDaemonConfig];
    if (!v19)
    {
      v19 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v19 shouldLog];
    shouldLogToDisk2 = [v19 shouldLogToDisk];
    oSLogObject2 = [v19 OSLogObject];
    v23 = oSLogObject2;
    if (shouldLogToDisk2)
    {
      shouldLog2 |= 2u;
    }

    if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      shouldLog2 &= 2u;
    }

    if (!shouldLog2)
    {

      goto LABEL_45;
    }

    v24 = objc_opt_class();
    databaseIdentifier2 = [(DirectUploadRequest *)self->_request databaseIdentifier];
    v42 = 138412546;
    v43 = v24;
    v44 = 2048;
    v45 = databaseIdentifier2;
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

  _uploadURL = [(PrepareDirectUploadOperation *)self _uploadURL];
  if (_uploadURL)
  {
    v9 = [[NSMutableString alloc] initWithString:@"com.apple.itunesstored"];
    v10 = +[SSLogConfig sharedDaemonConfig];
    if (!v10)
    {
      v10 = +[SSLogConfig sharedConfig];
    }

    shouldLog3 = [v10 shouldLog];
    shouldLogToDisk3 = [v10 shouldLogToDisk];
    oSLogObject3 = [v10 OSLogObject];
    v14 = oSLogObject3;
    if (shouldLogToDisk3)
    {
      shouldLog3 |= 2u;
    }

    if (!os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_INFO))
    {
      shouldLog3 &= 2u;
    }

    if (shouldLog3)
    {
      v15 = objc_opt_class();
      databaseIdentifier3 = [(DirectUploadRequest *)self->_request databaseIdentifier];
      v42 = 138412802;
      v43 = v15;
      v44 = 2048;
      v45 = databaseIdentifier3;
      v46 = 2112;
      v47 = _uploadURL;
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

    v35 = [(PrepareDirectUploadOperation *)self _newURLRequestWithURL:_uploadURL];
    sourceApplication = [(DirectUploadRequest *)self->_request sourceApplication];
    if (sourceApplication)
    {
      [v9 appendString:@"."];
      [v9 appendString:sourceApplication];
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
    [v36 set_sourceApplicationBundleIdentifier:sourceApplication];

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
  outputBlock = [(PrepareDirectUploadOperation *)self outputBlock];
  v39 = outputBlock;
  if (outputBlock)
  {
    (*(outputBlock + 16))(outputBlock, v36, v35, v34);
    [(PrepareDirectUploadOperation *)self setOutputBlock:0];
  }
}

- (id)_newURLRequestWithURL:(id)l
{
  lCopy = l;
  v5 = [[NSMutableURLRequest alloc] initWithURL:lCopy];
  [v5 setHTTPMethod:@"POST"];
  accountIdentifier = [(DirectUploadRequest *)self->_request accountIdentifier];
  [ISStoreURLOperation addITunesStoreHeadersToRequest:v5 withAccountIdentifier:accountIdentifier];
  v7 = +[SSDevice currentDevice];
  userAgent = [v7 userAgent];

  if (userAgent)
  {
    [v5 setValue:userAgent forHTTPHeaderField:SSHTTPHeaderUserAgent];
  }

  v9 = +[SSVCookieStorage sharedStorage];
  v10 = [v9 cookieHeadersForURL:lCopy userIdentifier:accountIdentifier];

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1001322AC;
  v24[3] = &unk_100327658;
  v11 = v5;
  v25 = v11;
  [v10 enumerateKeysAndObjectsUsingBlock:v24];
  parentRelationshipType = [(DirectUploadRequest *)self->_request parentRelationshipType];
  v13 = [parentRelationshipType isEqualToString:SSVMediaSocialPostAttachmentRelationshipCoverImage];

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
        uUIDString = [v18 UUIDString];

        v20 = UTTypeCopyPreferredTagWithClass(v16, kUTTagClassFilenameExtension);
        if (v20)
        {
          v21 = [uUIDString stringByAppendingPathExtension:v20];

          uUIDString = v21;
        }

        [v11 setValue:uUIDString forHTTPHeaderField:@"X-Original-Filename"];
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

    shouldLog = [v15 shouldLog];
    if ([v15 shouldLogToDisk])
    {
      v17 = shouldLog | 2;
    }

    else
    {
      v17 = shouldLog;
    }

    oSLogObject = [v15 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
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

      oSLogObject = [NSString stringWithCString:v20 encoding:4, v23, v22, *v23, *&v23[16]];
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