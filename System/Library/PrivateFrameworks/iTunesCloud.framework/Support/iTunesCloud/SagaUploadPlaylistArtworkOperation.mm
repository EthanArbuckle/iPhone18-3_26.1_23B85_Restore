@interface SagaUploadPlaylistArtworkOperation
- (SagaUploadPlaylistArtworkOperation)initWithClientIdentity:(id)identity playlistPersistentID:(int64_t)d;
- (SagaUploadPlaylistArtworkOperation)initWithCoder:(id)coder;
- (SagaUploadPlaylistArtworkOperation)initWithConfiguration:(id)configuration clientIdentity:(id)identity playlistPersistentID:(int64_t)d;
- (id)_bodyDataWithAdditionalBodyFields:(id)fields;
- (id)_requestWithURL:(id)l URLBagKey:(id)key timeoutInterval:(double)interval additionalBodyFields:(id)fields;
- (id)_responseBodyForRequest:(id)request retryTimeout:(double)timeout debugName:(id)name;
- (id)_standardBodyDictionaryWithAdditionalFields:(id)fields;
- (void)_downloadRequestsFromURL:(id)l uploadResponsesURL:(id)rL;
- (void)_initiateArtworkUpload;
- (void)_uploadArtworkAssetWithInfo:(id)info completionHandler:(id)handler;
- (void)_uploadArtworkAssetWithInfo:(id)info uploadResponsesURL:(id)l uploadResponseData:(id)data postUploadBackOffDelay:(unsigned int)delay followupDownloadRequestsURL:(id)rL;
- (void)encodeWithCoder:(id)coder;
- (void)main;
@end

@implementation SagaUploadPlaylistArtworkOperation

- (id)_bodyDataWithAdditionalBodyFields:(id)fields
{
  v3 = [(SagaUploadPlaylistArtworkOperation *)self _standardBodyDictionaryWithAdditionalFields:fields];
  v4 = [NSPropertyListSerialization dataWithPropertyList:v3 format:100 options:0 error:0];
  if ([v4 length])
  {
    v5 = NSTemporaryDirectory();
    v6 = [v5 stringByAppendingPathComponent:@"updateplaylistasset.XXXXXX"];

    v7 = MSVCreateTemporaryFileHandle();
    v8 = 0;
    [v7 writeData:v4];
    [v7 closeFile];

    v9 = [NSURL fileURLWithPath:v8];
    v10 = [v9 URLByAppendingPathExtension:@"gz"];
    v11 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      path = [v10 path];
      *buf = 138543362;
      v17 = path;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Compressing items to upload to path: %{public}@", buf, 0xCu);
    }

    MSVGzipCompressFile();
    path2 = [v9 path];
    unlink([path2 UTF8String]);

    v14 = [[NSData alloc] initWithContentsOfURL:v10 options:1 error:0];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)_requestWithURL:(id)l URLBagKey:(id)key timeoutInterval:(double)interval additionalBodyFields:(id)fields
{
  lCopy = l;
  keyCopy = key;
  fieldsCopy = fields;
  v13 = [ICStoreRequestContext alloc];
  userIdentity = [(CloudLibraryOperation *)self userIdentity];
  v15 = [v13 initWithIdentity:userIdentity];

  if (!lCopy && keyCopy)
  {
    v36 = 0;
    v37 = &v36;
    v38 = 0x3032000000;
    v39 = sub_1000FB680;
    v40 = sub_1000FB690;
    v41 = 0;
    v30 = 0;
    v31 = &v30;
    v32 = 0x3032000000;
    v33 = sub_1000FB680;
    v34 = sub_1000FB690;
    v35 = 0;
    v16 = dispatch_semaphore_create(0);
    v17 = +[ICURLBagProvider sharedBagProvider];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1000FB698;
    v26[3] = &unk_1001DE320;
    v28 = &v30;
    v29 = &v36;
    v18 = v16;
    v27 = v18;
    [v17 getBagForRequestContext:v15 withCompletionHandler:v26];

    dispatch_semaphore_wait(v18, 0xFFFFFFFFFFFFFFFFLL);
    v19 = [v31[5] stringForBagKey:keyCopy];
    if (v19)
    {
      lCopy = [NSURL URLWithString:v19];
    }

    else
    {
      v20 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = v37[5];
        *buf = 138543618;
        v43 = keyCopy;
        v44 = 2114;
        v45 = v21;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "failed to fetch bag key '%{public}@. err=%{public}@", buf, 0x16u);
      }

      lCopy = 0;
    }

    _Block_object_dispose(&v30, 8);
    _Block_object_dispose(&v36, 8);
  }

  if (lCopy)
  {
    v22 = [NSMutableURLRequest requestWithURL:lCopy];
    [v22 setHTTPMethod:@"POST"];
    [v22 setTimeoutInterval:interval];
    v23 = [(SagaUploadPlaylistArtworkOperation *)self _bodyDataWithAdditionalBodyFields:fieldsCopy];
    if (v23)
    {
      [v22 setValue:@"application/x-apple-plist" forHTTPHeaderField:@"Content-Type"];
      [v22 setValue:@"gzip" forHTTPHeaderField:@"Content-Encoding"];
      [v22 setHTTPBody:v23];
    }

    v24 = [[ICStoreURLRequest alloc] initWithURLRequest:v22 requestContext:v15];
    [v24 setShouldUseMescalSigning:1];
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (id)_standardBodyDictionaryWithAdditionalFields:(id)fields
{
  fieldsCopy = fields;
  if ([fieldsCopy count])
  {
    v4 = [fieldsCopy mutableCopy];
  }

  else
  {
    v4 = [[NSMutableDictionary alloc] initWithCapacity:2];
  }

  v5 = v4;
  [v4 setObject:&off_1001ED8A0 forKey:@"min-compatible-version"];
  [v5 setObject:&off_1001ED8A0 forKey:@"protocol-version"];

  return v5;
}

- (id)_responseBodyForRequest:(id)request retryTimeout:(double)timeout debugName:(id)name
{
  requestCopy = request;
  nameCopy = name;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = sub_1000FB680;
  v32 = sub_1000FB690;
  v33 = 0;
  v9 = +[NSDate date];
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  do
  {
    v10 = +[NSDate date];
    [v10 timeIntervalSinceDate:v9];
    v12 = v11;

    if (v12 >= timeout)
    {
      break;
    }

    v13 = dispatch_semaphore_create(0);
    v14 = +[ICURLSessionManager defaultSession];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000FBA14;
    v18[3] = &unk_1001DE2F8;
    v19 = nameCopy;
    v21 = &v24;
    v22 = &v28;
    timeoutCopy = timeout;
    v15 = v13;
    v20 = v15;
    [v14 enqueueDataRequest:requestCopy withCompletionHandler:v18];

    dispatch_semaphore_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
  }

  while ((v25[3] & 1) == 0);
  v16 = v29[5];
  _Block_object_dispose(&v24, 8);

  _Block_object_dispose(&v28, 8);

  return v16;
}

- (void)_uploadArtworkAssetWithInfo:(id)info completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = [info objectForKey:@"operations"];
  if (_NSIsNSArray() && [v7 count])
  {
    v8 = [v7 objectAtIndex:0];
    if (_NSIsNSDictionary())
    {
      v49 = handlerCopy;
      selfCopy = self;
      v48 = v7;
      v46 = [v8 objectForKey:@"endpoint"];
      v9 = [NSURL URLWithString:?];
      v10 = [NSMutableURLRequest requestWithURL:v9];

      v45 = [v8 objectForKey:@"method"];
      [v10 setHTTPMethod:?];
      v47 = v8;
      [v8 objectForKey:@"requiredHeaders"];
      v55 = 0u;
      v56 = 0u;
      v57 = 0u;
      obj = v58 = 0u;
      v11 = [obj countByEnumeratingWithState:&v55 objects:v63 count:16];
      v51 = v10;
      if (v11)
      {
        v12 = v11;
        v13 = *v56;
        do
        {
          v14 = 0;
          do
          {
            if (*v56 != v13)
            {
              objc_enumerationMutation(obj);
            }

            v15 = *(*(&v55 + 1) + 8 * v14);
            v16 = [v15 objectForKey:@"key"];
            v17 = [v15 objectForKey:@"clientGenerated"];
            v18 = v17;
            if (v17 && ![v17 compare:@"true" options:1])
            {
              if ([v16 compare:@"date" options:1])
              {
                v20 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
                if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
                {
                  *buf = 138543362;
                  v62 = v16;
                  _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_FAULT, "Unknown required client generated header: %{public}@", buf, 0xCu);
                }

                v19 = 0;
              }

              else
              {
                v21 = objc_alloc_init(NSDateFormatter);
                v22 = [NSLocale localeWithLocaleIdentifier:@"en_US"];
                [v21 setLocale:v22];

                v23 = [NSTimeZone timeZoneWithAbbreviation:@"GMT"];
                [v21 setTimeZone:v23];

                [v21 setDateFormat:@"EEE', ' dd MMM yyyy HH':'mm':'ss 'GMT'"];
                v24 = +[NSDate date];
                v19 = [v21 stringFromDate:v24];

                v10 = v51;
              }
            }

            else
            {
              v19 = [v15 objectForKey:@"value"];
            }

            if ([v16 length] && objc_msgSend(v19, "length"))
            {
              [v10 setValue:v19 forHTTPHeaderField:v16];
            }

            v14 = v14 + 1;
          }

          while (v12 != v14);
          v25 = [obj countByEnumeratingWithState:&v55 objects:v63 count:16];
          v12 = v25;
        }

        while (v25);
      }

      v26 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
      v27 = +[ICCloudAvailabilityController sharedController];
      [v26 setAllowsCellularAccess:{objc_msgSend(v27, "isCellularDataRestrictedForMusic") ^ 1}];

      v28 = [NSURLSession sessionWithConfiguration:v26];
      assetURL = [(SagaUploadPlaylistArtworkOperation *)selfCopy assetURL];
      v30 = [NSData dataWithContentsOfURL:assetURL options:1 error:0];

      v31 = v47;
      v32 = [v47 objectForKey:@"content"];
      v33 = [v32 objectForKey:@"type"];
      v34 = [v33 compare:@"byterange" options:1];

      if (v34)
      {
        handlerCopy = v49;
      }

      else
      {
        v37 = [v32 objectForKey:@"offset"];
        v38 = [v32 objectForKey:@"length"];
        longLongValue = [v37 longLongValue];
        longLongValue2 = [v38 longLongValue];
        if (longLongValue || longLongValue2 != [(SagaUploadPlaylistArtworkOperation *)selfCopy assetFileSize])
        {
          v41 = [v30 subdataWithRange:{longLongValue, longLongValue2}];

          v30 = v41;
        }

        handlerCopy = v49;
      }

      v53[0] = _NSConcreteStackBlock;
      v53[1] = 3221225472;
      v53[2] = sub_1000FC4EC;
      v53[3] = &unk_1001DE2D0;
      v54 = handlerCopy;
      v42 = [v28 msv_uploadTaskWithRequest:v51 fromData:v30 completionHandler:v53];
      ct_green_tea_logger_create();
      v43 = getCTGreenTeaOsLogHandle();
      v44 = v43;
      if (v43 && os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_INFO, "Transmitting image", buf, 2u);
      }

      ct_green_tea_logger_destroy();
      [v42 resume];

      v7 = v48;
      v36 = v46;
      goto LABEL_29;
    }
  }

  v35 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_FAULT, "Not enough information to upload artwork asset.", buf, 2u);
  }

  v59 = NSLocalizedDescriptionKey;
  v60 = @"Not enough information to upload artwork asset.";
  v31 = [NSDictionary dictionaryWithObjects:&v60 forKeys:&v59 count:1];
  v36 = [NSError ic_cloudClientErrorWithCode:2014 userInfo:v31];
  (*(handlerCopy + 2))(handlerCopy, 0, v36);
LABEL_29:
}

- (void)_uploadArtworkAssetWithInfo:(id)info uploadResponsesURL:(id)l uploadResponseData:(id)data postUploadBackOffDelay:(unsigned int)delay followupDownloadRequestsURL:(id)rL
{
  infoCopy = info;
  lCopy = l;
  dataCopy = data;
  rLCopy = rL;
  LODWORD(data) = [(SagaUploadPlaylistArtworkOperation *)self isCancelled];
  v13 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (!data)
  {
    if (v14)
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = infoCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Uploading artwork asset using info: %{public}@", &buf, 0xCu);
    }

    v15 = dispatch_semaphore_create(0);
    *&buf = 0;
    *(&buf + 1) = &buf;
    v86 = 0x3032000000;
    v87 = sub_1000FB680;
    v88 = sub_1000FB690;
    v89 = 0;
    v61 = 0;
    v62 = &v61;
    v63 = 0x3032000000;
    v64 = sub_1000FB680;
    v65 = sub_1000FB690;
    v66 = 0;
    v57[0] = _NSConcreteStackBlock;
    v57[1] = 3221225472;
    v57[2] = sub_1000FD158;
    v57[3] = &unk_1001DE2A8;
    p_buf = &buf;
    v60 = &v61;
    v16 = v15;
    v58 = v16;
    [(SagaUploadPlaylistArtworkOperation *)self _uploadArtworkAssetWithInfo:infoCopy completionHandler:v57];
    dispatch_semaphore_wait(v16, 0xFFFFFFFFFFFFFFFFLL);
    if (v62[5])
    {
      v17 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        v18 = v62[5];
        *v83 = 138543362;
        v84 = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_FAULT, "Artwork upload failed with error: %{public}@", v83, 0xCu);
      }

      [(CloudLibraryOperation *)self setStatus:2];
      v19 = v62[5];
      v81 = NSUnderlyingErrorKey;
      v82 = v19;
      v53 = [NSDictionary dictionaryWithObjects:&v82 forKeys:&v81 count:1];
      v20 = [NSError ic_cloudClientErrorWithCode:2014 userInfo:v53];
      [(CloudLibraryOperation *)self setError:v20];
      goto LABEL_44;
    }

    v53 = *(*(&buf + 1) + 40);
    statusCode = [v53 statusCode];
    if ((statusCode & 0xFFFFFFFFFFFFFFFELL) == 0xC8)
    {
      if (delay)
      {
        v22 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *v83 = 67109120;
          LODWORD(v84) = delay;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Backing off before sending uploadResponsesRequest for %u ms", v83, 8u);
        }

        usleep(1000 * delay);
      }

      v20 = [infoCopy objectForKey:@"token"];
      v79[0] = @"dsid";
      dsid = [(SagaUploadPlaylistArtworkOperation *)self dsid];
      v80[0] = dsid;
      v79[1] = @"cuid";
      cuid = [(SagaUploadPlaylistArtworkOperation *)self cuid];
      v80[1] = cuid;
      v79[2] = @"troveid";
      troveID = [(SagaUploadPlaylistArtworkOperation *)self troveID];
      v80[2] = troveID;
      v79[3] = @"payload";
      v76[0] = @"cloud-id";
      containerCloudID = [(SagaUploadPlaylistArtworkOperation *)self containerCloudID];
      v76[1] = @"actions";
      v77[0] = containerCloudID;
      v74[0] = @"upload-playlist";
      v73[0] = @"action";
      v73[1] = @"assets";
      v71 = @"artwork";
      v69 = @"response-code";
      v46 = [NSString stringWithFormat:@"%ld", statusCode];
      v70 = v46;
      v23 = [NSDictionary dictionaryWithObjects:&v70 forKeys:&v69 count:1];
      v72 = v23;
      v24 = [NSDictionary dictionaryWithObjects:&v72 forKeys:&v71 count:1];
      v73[2] = @"response-data";
      v74[1] = v24;
      v74[2] = dataCopy;
      v25 = [NSDictionary dictionaryWithObjects:v74 forKeys:v73 count:3];
      v75 = v25;
      v26 = [NSArray arrayWithObjects:&v75 count:1];
      v77[1] = v26;
      v27 = [NSDictionary dictionaryWithObjects:v77 forKeys:v76 count:2];
      v78 = v27;
      v28 = [NSArray arrayWithObjects:&v78 count:1];
      v80[3] = v28;
      v45 = [NSDictionary dictionaryWithObjects:v80 forKeys:v79 count:4];

      v29 = [(SagaUploadPlaylistArtworkOperation *)self _requestWithURL:lCopy URLBagKey:0 timeoutInterval:v45 additionalBodyFields:60.0];
      v52 = [(SagaUploadPlaylistArtworkOperation *)self _responseBodyForRequest:v29 retryTimeout:@"upload responses (report work item responses)" debugName:180.0];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v30 = [v52 objectForKey:@"back-off-delay-in-ms"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          unsignedIntValue = [v30 unsignedIntValue];

          if (unsignedIntValue)
          {
            v32 = sub_10010275C();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              *v83 = 67109120;
              LODWORD(v84) = unsignedIntValue;
              _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Backing off before sending second downloadRequestsRequest for %u ms", v83, 8u);
            }

            usleep(1000 * unsignedIntValue);
          }
        }

        else
        {
        }
      }

      v67[0] = @"dsid";
      dsid2 = [(SagaUploadPlaylistArtworkOperation *)self dsid];
      v68[0] = dsid2;
      v67[1] = @"cuid";
      cuid2 = [(SagaUploadPlaylistArtworkOperation *)self cuid];
      v68[1] = cuid2;
      v67[2] = @"troveid";
      troveID2 = [(SagaUploadPlaylistArtworkOperation *)self troveID];
      v68[2] = troveID2;
      v50 = [NSDictionary dictionaryWithObjects:v68 forKeys:v67 count:3];

      v38 = [(SagaUploadPlaylistArtworkOperation *)self _requestWithURL:rLCopy URLBagKey:0 timeoutInterval:v50 additionalBodyFields:60.0];
      v39 = [(SagaUploadPlaylistArtworkOperation *)self _responseBodyForRequest:v38 retryTimeout:@"download requests phase 2 (fetch work items)" debugName:180.0];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v40 = [v39 objectForKey:@"all-work-completed"];
        bOOLValue = [v40 BOOLValue];

        if (bOOLValue)
        {
          [(CloudLibraryOperation *)self setStatus:1];
          musicLibrary = [(CloudLibraryOperation *)self musicLibrary];
          userArtworkToken = [(SagaUploadPlaylistArtworkOperation *)self userArtworkToken];
          [musicLibrary migrateExistingArtworkToken:userArtworkToken newArtworkToken:v20 newSourceType:200];

LABEL_41:
LABEL_44:

          _Block_object_dispose(&v61, 8);
          _Block_object_dispose(&buf, 8);

          goto LABEL_45;
        }

        v44 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          *v83 = 138543362;
          v84 = v39;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "Download request phase 2 did not have all-work-completed=true: %{public}@", v83, 0xCu);
        }
      }

      else
      {
        v44 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          *v83 = 138543362;
          v84 = v39;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "Received unknown response for download request phase 2: %{public}@", v83, 0xCu);
        }
      }

      [(CloudLibraryOperation *)self setStatus:2];
      musicLibrary = [NSError ic_cloudClientErrorWithCode:2014 userInfo:0];
      [(CloudLibraryOperation *)self setError:musicLibrary];
      goto LABEL_41;
    }

    v33 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *v83 = 134217984;
      v84 = statusCode;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "Received http %ld response when uploading artwork asset.", v83, 0xCu);
    }

    if (statusCode > 399)
    {
      if (statusCode == 404 || statusCode == 400)
      {
        v34 = 3;
LABEL_43:
        [(CloudLibraryOperation *)self setStatus:v34];
        v20 = [NSError ic_cloudClientErrorWithCode:2014 userInfo:0];
        [(CloudLibraryOperation *)self setError:v20];
        goto LABEL_44;
      }
    }

    else
    {
      v34 = 1;
      if (statusCode == 200 || statusCode == 204)
      {
        goto LABEL_43;
      }
    }

    v34 = 2;
    goto LABEL_43;
  }

  if (v14)
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "SagaUploadPlaylistArtworkOperation cancelled -- After downloading work items", &buf, 2u);
  }

  [(CloudLibraryOperation *)self setStatus:4];
LABEL_45:
}

- (void)_downloadRequestsFromURL:(id)l uploadResponsesURL:(id)rL
{
  lCopy = l;
  rLCopy = rL;
  if (![(SagaUploadPlaylistArtworkOperation *)self isCancelled])
  {
    v42[0] = @"dsid";
    dsid = [(SagaUploadPlaylistArtworkOperation *)self dsid];
    v43[0] = dsid;
    v42[1] = @"cuid";
    cuid = [(SagaUploadPlaylistArtworkOperation *)self cuid];
    v43[1] = cuid;
    v42[2] = @"troveid";
    troveID = [(SagaUploadPlaylistArtworkOperation *)self troveID];
    v43[2] = troveID;
    v12 = [NSDictionary dictionaryWithObjects:v43 forKeys:v42 count:3];

    v13 = [(SagaUploadPlaylistArtworkOperation *)self _requestWithURL:lCopy URLBagKey:0 timeoutInterval:v12 additionalBodyFields:60.0];
    v14 = [(SagaUploadPlaylistArtworkOperation *)self _responseBodyForRequest:v13 retryTimeout:@"download requests phase 1 (fetch work items)" debugName:180.0];
    v15 = 0;
    v16 = 0;
    if (!_NSIsNSDictionary())
    {
      goto LABEL_34;
    }

    v17 = [v14 objectForKey:@"back-off-delay-in-ms"];
    if (_NSIsNSNumber())
    {
      unsignedIntValue = [v17 unsignedIntValue];
    }

    else
    {
      unsignedIntValue = 0;
    }

    v18 = [v14 objectForKey:@"payload"];
    if (!_NSIsNSArray() || ![v18 count])
    {
      v16 = 0;
      v15 = 0;
LABEL_31:

      if (v15 && v16)
      {
        [(SagaUploadPlaylistArtworkOperation *)self _uploadArtworkAssetWithInfo:v15 uploadResponsesURL:rLCopy uploadResponseData:v16 postUploadBackOffDelay:unsignedIntValue followupDownloadRequestsURL:lCopy];
LABEL_37:

        goto LABEL_38;
      }

LABEL_34:
      v28 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
      if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_FAULT, "Work item did not include upload-info and response-data, failing upload", buf, 2u);
      }

      [(CloudLibraryOperation *)self setStatus:2];
      v29 = [NSError ic_cloudClientErrorWithCode:2014 userInfo:0];
      [(CloudLibraryOperation *)self setError:v29];

      goto LABEL_37;
    }

    v38 = v17;
    v19 = [v18 objectAtIndex:0];
    v16 = 0;
    v15 = 0;
    if (!_NSIsNSDictionary())
    {
LABEL_30:

      v17 = v38;
      goto LABEL_31;
    }

    v37 = v19;
    v20 = [v19 objectForKey:@"cloud-id"];
    if (!_NSIsNSNumber())
    {
      v16 = 0;
      v15 = 0;
LABEL_29:

      v19 = v37;
      goto LABEL_30;
    }

    containerCloudID = [(SagaUploadPlaylistArtworkOperation *)self containerCloudID];
    v22 = [v20 isEqualToNumber:containerCloudID];

    if (v22)
    {
      v23 = [v37 objectForKey:@"actions"];
      v36 = v23;
      if (_NSIsNSArray() && [v23 count])
      {
        v35 = [v23 objectAtIndex:0];
        v24 = [v35 objectForKey:@"action"];
        v34 = v24;
        if (_NSIsNSString() && [v24 isEqualToString:@"upload-playlist"])
        {
          v25 = [v35 objectForKey:@"assets"];
          v33 = v25;
          if (_NSIsNSDictionary())
          {
            v32 = [v25 objectForKey:@"artwork"];
            if (_NSIsNSDictionary())
            {
              v26 = [v32 objectForKey:@"upload-info"];
              [v35 objectForKey:@"response-data"];
              v30 = v31 = v26;
              if (_NSIsNSDictionary() && _NSIsNSDictionary())
              {
                v15 = v26;
                v16 = v30;
              }

              else
              {
                v16 = 0;
                v15 = 0;
              }
            }

            else
            {
              v16 = 0;
              v15 = 0;
            }
          }

          else
          {
            v16 = 0;
            v15 = 0;
          }
        }

        else
        {
          v16 = 0;
          v15 = 0;
        }

        goto LABEL_28;
      }
    }

    else
    {
      v27 = sub_10010275C();
      v36 = v27;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        unsignedLongLongValue = [v20 unsignedLongLongValue];
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Received cloudID that does not match the one we initiated the asset upload for: %llu", buf, 0xCu);
      }
    }

    v16 = 0;
    v15 = 0;
LABEL_28:

    goto LABEL_29;
  }

  v8 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "SagaUploadPlaylistArtworkOperation cancelled -- After initiating artwork upload", buf, 2u);
  }

  [(CloudLibraryOperation *)self setStatus:4];
LABEL_38:
}

- (void)_initiateArtworkUpload
{
  if ([(SagaUploadPlaylistArtworkOperation *)self isCancelled])
  {
    v3 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "SagaUploadPlaylistArtworkOperation cancelled -- After preparing to initiate artwork upload", buf, 2u);
    }

    [(CloudLibraryOperation *)self setStatus:4];
  }

  else
  {
    *buf = 0;
    v9 = buf;
    v10 = 0xF810000000;
    memset(v13, 0, sizeof(v13));
    v11 = "";
    v12 = 4000;
    CC_MD5_Init(v13);
    v6[0] = 0;
    v6[1] = v6;
    v6[2] = 0xF810000000;
    memset(v7, 0, sizeof(v7));
    v6[3] = "";
    v6[4] = 4256;
    CC_SHA256_Init(v7);
    assetURL = [(SagaUploadPlaylistArtworkOperation *)self assetURL];
    v5 = MSVHasherDigestDataBlocksFromURL();

    _Block_object_dispose(v6, 8);
    _Block_object_dispose(buf, 8);
  }
}

- (void)main
{
  if (![(SagaUploadPlaylistArtworkOperation *)self isCancelled])
  {
    musicLibrary = [(CloudLibraryOperation *)self musicLibrary];
    clientIdentity = [(CloudLibraryOperation *)self clientIdentity];
    [musicLibrary setClientIdentity:clientIdentity];

    playlistPersistentID = self->_playlistPersistentID;
    musicLibrary2 = [(CloudLibraryOperation *)self musicLibrary];
    v7 = [ML3Container newWithPersistentID:playlistPersistentID inLibrary:musicLibrary2];

    if ([v7 existsInLibrary])
    {
      v8 = [v7 valueForProperty:ML3ContainerPropertyStoreCloudID];
      [(SagaUploadPlaylistArtworkOperation *)self setContainerCloudID:v8];

      containerCloudID = [(SagaUploadPlaylistArtworkOperation *)self containerCloudID];
      unsignedIntValue = [containerCloudID unsignedIntValue];

      if (unsignedIntValue)
      {
        musicLibrary11 = [[ML3ArtworkTokenSet alloc] initWithEntity:v7 artworkType:5];
        v12 = [musicLibrary11 artworkTokenForSource:100];
        [(SagaUploadPlaylistArtworkOperation *)self setUserArtworkToken:v12];

        userArtworkToken = [(SagaUploadPlaylistArtworkOperation *)self userArtworkToken];

        if (!userArtworkToken)
        {
          v41 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            v42 = self->_playlistPersistentID;
            *v61 = 134217984;
            *&v61[4] = v42;
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Playlist with pid = %lld does not have user set playlist artwork in the database, skipping upload of playlist artwork to cloud library.", v61, 0xCu);
          }

          [(CloudLibraryOperation *)self setStatus:1];
          musicLibrary3 = [(CloudLibraryOperation *)self musicLibrary];
          v19 = MSVTCCIdentityForCurrentProcess();
          [musicLibrary3 setClientIdentity:v19];
          goto LABEL_30;
        }

        v14 = [ML3Artwork alloc];
        userArtworkToken2 = [(SagaUploadPlaylistArtworkOperation *)self userArtworkToken];
        musicLibrary4 = [(CloudLibraryOperation *)self musicLibrary];
        musicLibrary3 = [v14 initWithToken:userArtworkToken2 artworkType:5 musicLibrary:musicLibrary4];

        originalFileURL = [musicLibrary3 originalFileURL];
        [(SagaUploadPlaylistArtworkOperation *)self setAssetURL:originalFileURL];

        v19 = +[NSFileManager defaultManager];
        assetURL = [(SagaUploadPlaylistArtworkOperation *)self assetURL];
        path = [assetURL path];
        v22 = [v19 fileExistsAtPath:path];

        if (v22)
        {
          assetURL2 = [(SagaUploadPlaylistArtworkOperation *)self assetURL];
          path2 = [assetURL2 path];
          v25 = [v19 attributesOfItemAtPath:path2 error:0];
          -[SagaUploadPlaylistArtworkOperation setAssetFileSize:](self, "setAssetFileSize:", [v25 fileSize]);

          if ([(SagaUploadPlaylistArtworkOperation *)self assetFileSize])
          {
            musicLibrary5 = [(CloudLibraryOperation *)self musicLibrary];
            sagaAccountID = [musicLibrary5 sagaAccountID];
            [(SagaUploadPlaylistArtworkOperation *)self setDsid:sagaAccountID];

            dsid = [(SagaUploadPlaylistArtworkOperation *)self dsid];
            longLongValue = [dsid longLongValue];

            if (!longLongValue)
            {
              v43 = sub_10010275C();
              if (os_log_type_enabled(v43, OS_LOG_TYPE_FAULT))
              {
                *v61 = 0;
                _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_FAULT, "SagaUploadPlaylistArtworkOperation failed -- Missing DSID", v61, 2u);
              }

              goto LABEL_28;
            }

            musicLibrary6 = [(CloudLibraryOperation *)self musicLibrary];
            sagaCloudLibraryCUID = [musicLibrary6 sagaCloudLibraryCUID];
            [(SagaUploadPlaylistArtworkOperation *)self setCuid:sagaCloudLibraryCUID];

            musicLibrary7 = [(CloudLibraryOperation *)self musicLibrary];
            sagaCloudLibraryTroveID = [musicLibrary7 sagaCloudLibraryTroveID];
            [(SagaUploadPlaylistArtworkOperation *)self setTroveID:sagaCloudLibraryTroveID];

            cuid = [(SagaUploadPlaylistArtworkOperation *)self cuid];
            if ([cuid length])
            {
              troveID = [(SagaUploadPlaylistArtworkOperation *)self troveID];
              v36 = [troveID length];

              if (v36)
              {
LABEL_37:
                cuid2 = [(SagaUploadPlaylistArtworkOperation *)self cuid];
                if ([cuid2 length])
                {
                  troveID2 = [(SagaUploadPlaylistArtworkOperation *)self troveID];
                  v58 = [troveID2 length];

                  if (v58)
                  {
                    [(SagaUploadPlaylistArtworkOperation *)self _initiateArtworkUpload];
                    goto LABEL_29;
                  }
                }

                else
                {
                }

                v43 = sub_10010275C();
                if (os_log_type_enabled(v43, OS_LOG_TYPE_FAULT))
                {
                  cuid3 = [(SagaUploadPlaylistArtworkOperation *)self cuid];
                  troveID3 = [(SagaUploadPlaylistArtworkOperation *)self troveID];
                  *v61 = 138543618;
                  *&v61[4] = cuid3;
                  *&v61[12] = 2114;
                  *&v61[14] = troveID3;
                  _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_FAULT, "SagaUploadPlaylistArtworkOperation failed -- Missing one required parameter: CUID (%{public}@) / TroveID (%{public}@)", v61, 0x16u);
                }

LABEL_28:

                [(CloudLibraryOperation *)self setStatus:3];
                v47 = [NSError ic_cloudClientErrorWithCode:2014 userInfo:0];
                [(CloudLibraryOperation *)self setError:v47];

LABEL_29:
                musicLibrary8 = [(CloudLibraryOperation *)self musicLibrary];
                v49 = MSVTCCIdentityForCurrentProcess();
                [musicLibrary8 setClientIdentity:v49];

LABEL_30:
                goto LABEL_31;
              }
            }

            else
            {
            }

            configuration = [(CloudLibraryOperation *)self configuration];
            v51 = sub_1000E54B0(configuration, 0, 0);

            if (v51)
            {
              musicLibrary9 = [(CloudLibraryOperation *)self musicLibrary];
              sagaCloudLibraryCUID2 = [musicLibrary9 sagaCloudLibraryCUID];
              [(SagaUploadPlaylistArtworkOperation *)self setCuid:sagaCloudLibraryCUID2];

              musicLibrary10 = [(CloudLibraryOperation *)self musicLibrary];
              sagaCloudLibraryTroveID2 = [musicLibrary10 sagaCloudLibraryTroveID];
              [(SagaUploadPlaylistArtworkOperation *)self setTroveID:sagaCloudLibraryTroveID2];
            }

            goto LABEL_37;
          }

          v43 = sub_10010275C();
          if (!os_log_type_enabled(v43, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_28;
          }

          assetURL3 = [(SagaUploadPlaylistArtworkOperation *)self assetURL];
          path3 = [assetURL3 path];
          *v61 = 138543362;
          *&v61[4] = path3;
          v46 = "SagaUploadPlaylistArtworkOperation failed -- Artwork is zero bytes at: %{public}@";
        }

        else
        {
          v43 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
          if (!os_log_type_enabled(v43, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_28;
          }

          assetURL3 = [(SagaUploadPlaylistArtworkOperation *)self assetURL];
          path3 = [assetURL3 path];
          *v61 = 138543362;
          *&v61[4] = path3;
          v46 = "SagaUploadPlaylistArtworkOperation failed -- No artwork exists at: %{public}@";
        }

        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_FAULT, v46, v61, 0xCu);

        goto LABEL_28;
      }

      v37 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v40 = self->_playlistPersistentID;
        *v61 = 134217984;
        *&v61[4] = v40;
        v39 = "Playlist with pid = %lld does not have a cloud_id in the database, skipping upload of playlist artwork to cloud library.";
        goto LABEL_18;
      }
    }

    else
    {
      v37 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v38 = self->_playlistPersistentID;
        *v61 = 134217984;
        *&v61[4] = v38;
        v39 = "Playlist with pid = %lld is not in the database, skipping upload of playlist artwork to cloud library.";
LABEL_18:
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, v39, v61, 0xCu);
      }
    }

    [(CloudLibraryOperation *)self setStatus:1];
    musicLibrary11 = [(CloudLibraryOperation *)self musicLibrary];
    musicLibrary3 = MSVTCCIdentityForCurrentProcess();
    [musicLibrary11 setClientIdentity:musicLibrary3];
LABEL_31:

    return;
  }

  [(CloudLibraryOperation *)self setStatus:4];
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SagaUploadPlaylistArtworkOperation;
  coderCopy = coder;
  [(CloudLibraryOperation *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInt64:self->_playlistPersistentID forKey:{@"SagaUploadPlaylistArtworkOperationPlaylistPersistentIDKey", v5.receiver, v5.super_class}];
}

- (SagaUploadPlaylistArtworkOperation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = SagaUploadPlaylistArtworkOperation;
  v5 = [(CloudLibraryOperation *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_playlistPersistentID = [coderCopy decodeInt64ForKey:@"SagaUploadPlaylistArtworkOperationPlaylistPersistentIDKey"];
  }

  return v5;
}

- (SagaUploadPlaylistArtworkOperation)initWithConfiguration:(id)configuration clientIdentity:(id)identity playlistPersistentID:(int64_t)d
{
  v7.receiver = self;
  v7.super_class = SagaUploadPlaylistArtworkOperation;
  result = [(CloudLibraryOperation *)&v7 initWithConfiguration:configuration clientIdentity:identity];
  if (result)
  {
    result->_playlistPersistentID = d;
  }

  return result;
}

- (SagaUploadPlaylistArtworkOperation)initWithClientIdentity:(id)identity playlistPersistentID:(int64_t)d
{
  identityCopy = identity;
  v7 = objc_opt_new();
  v8 = [(SagaUploadPlaylistArtworkOperation *)self initWithConfiguration:v7 clientIdentity:identityCopy playlistPersistentID:d];

  return v8;
}

@end