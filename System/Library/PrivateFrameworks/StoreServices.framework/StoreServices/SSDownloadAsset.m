@interface SSDownloadAsset
+ (id)assetWithURL:(id)a3 type:(int64_t)a4;
- (BOOL)isExternal;
- (NSString)downloadFileName;
- (NSURLRequest)URLRequest;
- (SSDownloadAsset)initWithURLRequest:(id)a3;
- (SSDownloadAsset)initWithURLRequest:(id)a3 type:(int64_t)a4;
- (SSDownloadAsset)initWithURLRequestProperties:(id)a3;
- (SSURLRequestProperties)URLRequestProperties;
- (SSURLRequestProperties)_localProperties;
- (id)_copyURLRequestProperties;
- (id)copyXPCEncoding;
- (int64_t)bytesDownloaded;
- (int64_t)bytesUploadTotal;
- (int64_t)bytesUploaded;
- (int64_t)fileSize;
- (void)_resetLocalIVars;
- (void)dealloc;
@end

@implementation SSDownloadAsset

- (SSDownloadAsset)initWithURLRequest:(id)a3
{
  v7.receiver = self;
  v7.super_class = SSDownloadAsset;
  v4 = [(SSEntity *)&v7 init];
  if (v4)
  {
    if (a3)
    {
      v5 = [[SSURLRequestProperties alloc] initWithURLRequest:a3];
    }

    else
    {
      v5 = 0;
    }

    v4->_localProperties = v5;
  }

  return v4;
}

- (SSDownloadAsset)initWithURLRequestProperties:(id)a3
{
  v6.receiver = self;
  v6.super_class = SSDownloadAsset;
  v4 = [(SSEntity *)&v6 init];
  if (v4)
  {
    v4->_localProperties = [a3 copy];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SSDownloadAsset;
  [(SSEntity *)&v3 dealloc];
}

- (int64_t)bytesDownloaded
{
  result = [(SSEntity *)self valueForExternalProperty:@"0"];
  if (result)
  {

    return [result longLongValue];
  }

  return result;
}

- (int64_t)bytesUploaded
{
  result = [(SSEntity *)self valueForExternalProperty:@"9"];
  if (result)
  {

    return [result longLongValue];
  }

  return result;
}

- (int64_t)bytesUploadTotal
{
  result = [(SSEntity *)self valueForExternalProperty:@"A"];
  if (result)
  {

    return [result longLongValue];
  }

  return result;
}

- (NSURLRequest)URLRequest
{
  v2 = [(SSDownloadAsset *)self _copyURLRequestProperties];
  v3 = [v2 copyURLRequest];

  return v3;
}

- (void)_resetLocalIVars
{
  self->_localProperties = 0;
  v3.receiver = self;
  v3.super_class = SSDownloadAsset;
  [(SSEntity *)&v3 _resetLocalIVars];
}

- (SSURLRequestProperties)URLRequestProperties
{
  v2 = [(SSDownloadAsset *)self _copyURLRequestProperties];

  return v2;
}

- (SSURLRequestProperties)_localProperties
{
  v2 = [(SSURLRequestProperties *)self->_localProperties copy];

  return v2;
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v3, "0", self->super._pid);
  dispatchQueue = self->super._dispatchQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __34__SSDownloadAsset_copyXPCEncoding__block_invoke;
  v6[3] = &unk_1E84AC458;
  v6[4] = v3;
  v6[5] = self;
  dispatch_sync(dispatchQueue, v6);
  return v3;
}

void __34__SSDownloadAsset_copyXPCEncoding__block_invoke(uint64_t a1)
{
  v71 = *MEMORY[0x1E69E9840];
  SSXPCDictionarySetCFObject(*(a1 + 32), "1", *(*(a1 + 40) + 32));
  SSXPCDictionarySetCFObject(*(a1 + 32), "2", *(*(a1 + 40) + 72));
  v2 = [*(*(a1 + 40) + 32) objectForKeyedSubscript:@"d"];
  if (v2)
  {
    v3 = v2;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v3];
      v5 = [v4 URLByDeletingLastPathComponent];

      if (v5)
      {
        goto LABEL_18;
      }
    }
  }

  v6 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v6)
  {
    v6 = +[SSLogConfig sharedConfig];
  }

  v7 = [v6 shouldLog];
  if ([v6 shouldLogToDisk])
  {
    v8 = v7 | 2;
  }

  else
  {
    v8 = v7;
  }

  if (os_log_type_enabled([v6 OSLogObject], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
  }

  else
  {
    v9 = v8 & 2;
  }

  if (v9)
  {
    v10 = *(*(a1 + 40) + 64);
    v69 = 134217984;
    v70 = v10;
    LODWORD(v67) = 12;
    v64 = &v69;
    v11 = _os_log_send_and_compose_impl();
    if (v11)
    {
      v12 = v11;
      v13 = [MEMORY[0x1E696AEC0] stringWithCString:v11 encoding:{4, &v69, v67}];
      free(v12);
      SSFileLog(v6, @"%@", v14, v15, v16, v17, v18, v19, v13);
    }
  }

  v20 = SSGetFinalizedDirectoryForAssetType(*(*(a1 + 40) + 64));
  if (v20)
  {
    v21 = [MEMORY[0x1E695DFF8] fileURLWithPath:v20];
    if (v21)
    {
      v5 = v21;
LABEL_18:
      v68 = 0;
      if (([objc_msgSend(MEMORY[0x1E696AC08] defaultManager] & 1) == 0)
      {
        v22 = +[SSLogConfig sharedStoreServicesConfig];
        if (!v22)
        {
          v22 = +[SSLogConfig sharedConfig];
        }

        v23 = [v22 shouldLog];
        if ([v22 shouldLogToDisk])
        {
          v24 = v23 | 2;
        }

        else
        {
          v24 = v23;
        }

        if (os_log_type_enabled([v22 OSLogObject], OS_LOG_TYPE_ERROR))
        {
          v25 = v24;
        }

        else
        {
          v25 = v24 & 2;
        }

        if (v25)
        {
          v69 = 138543362;
          v70 = v68;
          LODWORD(v67) = 12;
          v65 = &v69;
          v26 = _os_log_send_and_compose_impl();
          if (v26)
          {
            v27 = v26;
            v28 = [MEMORY[0x1E696AEC0] stringWithCString:v26 encoding:{4, &v69, v67}];
            free(v27);
            SSFileLog(v22, @"%@", v29, v30, v31, v32, v33, v34, v28);
          }
        }

        v68 = 0;
      }

      v35 = +[SSLogConfig sharedStoreServicesConfig];
      if (!v35)
      {
        v35 = +[SSLogConfig sharedConfig];
      }

      v36 = [v35 shouldLog];
      if ([v35 shouldLogToDisk])
      {
        v37 = v36 | 2;
      }

      else
      {
        v37 = v36;
      }

      if (os_log_type_enabled([v35 OSLogObject], OS_LOG_TYPE_INFO))
      {
        v38 = v37;
      }

      else
      {
        v38 = v37 & 2;
      }

      if (v38)
      {
        v69 = 138543362;
        v70 = v5;
        LODWORD(v67) = 12;
        v66 = &v69;
        v39 = _os_log_send_and_compose_impl();
        if (v39)
        {
          v40 = v39;
          v41 = [MEMORY[0x1E696AEC0] stringWithCString:v39 encoding:{4, &v69, v67}];
          free(v40);
          SSFileLog(v35, @"%@", v42, v43, v44, v45, v46, v47, v41);
        }
      }

      v48 = objc_alloc(MEMORY[0x1E696AE98]);
      v49 = [v48 initWithURL:v5 readonly:0 extensionClass:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", *MEMORY[0x1E69E9BB0])}];
      v50 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v49 requiringSecureCoding:1 error:&v68];
      if (v50)
      {
        SSXPCDictionarySetObject(*(a1 + 32), "3", v50);
      }

      else
      {
        v51 = +[SSLogConfig sharedStoreServicesConfig];
        if (!v51)
        {
          v51 = +[SSLogConfig sharedConfig];
        }

        v52 = [v51 shouldLog];
        if ([v51 shouldLogToDisk])
        {
          v53 = v52 | 2;
        }

        else
        {
          v53 = v52;
        }

        if (os_log_type_enabled([v51 OSLogObject], OS_LOG_TYPE_ERROR))
        {
          v54 = v53;
        }

        else
        {
          v54 = v53 & 2;
        }

        if (v54)
        {
          v69 = 138543362;
          v70 = v68;
          LODWORD(v67) = 12;
          v55 = _os_log_send_and_compose_impl();
          if (v55)
          {
            v56 = v55;
            v57 = [MEMORY[0x1E696AEC0] stringWithCString:v55 encoding:{4, &v69, v67}];
            free(v56);
            SSFileLog(v51, @"%@", v58, v59, v60, v61, v62, v63, v57);
          }
        }

        v68 = 0;
      }
    }
  }
}

+ (id)assetWithURL:(id)a3 type:(int64_t)a4
{
  v5 = [objc_alloc(objc_opt_class()) initWithURLRequest:{objc_msgSend(MEMORY[0x1E696AF68], "requestWithURL:", a3)}];
  v5[8] = a4;

  return v5;
}

- (SSDownloadAsset)initWithURLRequest:(id)a3 type:(int64_t)a4
{
  result = [(SSDownloadAsset *)self initWithURLRequest:a3];
  if (result)
  {
    result->_assetType = a4;
  }

  return result;
}

- (NSString)downloadFileName
{
  v2 = [(SSEntity *)self valueForProperty:@"4"];

  return [v2 lastPathComponent];
}

- (int64_t)fileSize
{
  result = [(SSEntity *)self valueForProperty:@"3"];
  if (result)
  {

    return [result longLongValue];
  }

  return result;
}

- (BOOL)isExternal
{
  v2 = [(SSEntity *)self valueForProperty:@"9"];

  return [v2 BOOLValue];
}

- (id)_copyURLRequestProperties
{
  v24[10] = *MEMORY[0x1E69E9840];
  v13 = 0;
  v14 = &v13;
  v15 = 0x3052000000;
  v16 = __Block_byref_object_copy__3;
  v17 = __Block_byref_object_dispose__3;
  v18 = 0;
  dispatchQueue = self->super._dispatchQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __44__SSDownloadAsset__copyURLRequestProperties__block_invoke;
  v12[3] = &unk_1E84AC698;
  v12[4] = self;
  v12[5] = &v13;
  dispatch_sync(dispatchQueue, v12);
  v4 = v14[5];
  if (!v4)
  {
    v24[0] = @"5";
    v24[1] = @"6";
    v24[2] = @"7";
    v24[3] = @"8";
    v24[4] = @"9";
    v24[5] = @"a";
    v24[6] = @"b";
    v24[7] = @"c";
    v24[8] = @"3";
    v24[9] = @"n";
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v19 = 0u;
    [(SSEntity *)self getValues:&v19 forProperties:v24 count:10];
    if (*(&v22 + 1))
    {
      v5 = objc_alloc_init(SSMutableURLRequestProperties);
      -[SSMutableURLRequestProperties setAllowedRetryCount:](v5, "setAllowedRetryCount:", [v19 integerValue]);
      [(SSMutableURLRequestProperties *)v5 setHTTPBody:*(&v19 + 1)];
      -[SSMutableURLRequestProperties setITunesStoreRequest:](v5, "setITunesStoreRequest:", [v21 BOOLValue] ^ 1);
      [v22 doubleValue];
      [(SSMutableURLRequestProperties *)v5 setTimeoutInterval:?];
      v6 = *(&v20 + 1);
      if ([*(&v20 + 1) length])
      {
        [(SSMutableURLRequestProperties *)v5 setHTTPMethod:v6];
      }

      if (v20)
      {
        -[SSMutableURLRequestProperties setHTTPHeaders:](v5, "setHTTPHeaders:", [MEMORY[0x1E696AE40] propertyListWithData:v20 options:0 format:0 error:0]);
      }

      if (*(&v23 + 1))
      {
        v7 = objc_alloc_init(MEMORY[0x1E696AC08]);
        if ([v7 fileExistsAtPath:*(&v23 + 1)])
        {
          v8 = objc_alloc(MEMORY[0x1E695DF48]);
          v9 = [v8 initWithFileAtPath:*(&v23 + 1)];
          [(SSMutableURLRequestProperties *)v5 setHTTPBodyStream:v9];
        }
      }

      if (*(&v21 + 1))
      {
        -[SSMutableURLRequestProperties setRequestParameters:](v5, "setRequestParameters:", [MEMORY[0x1E696AE40] propertyListWithData:*(&v21 + 1) options:0 format:0 error:0]);
      }

      if (*(&v22 + 1))
      {
        -[SSMutableURLRequestProperties setURL:](v5, "setURL:", [MEMORY[0x1E695DFF8] URLWithString:?]);
      }

      if (v23)
      {
        -[SSMutableURLRequestProperties setExpectedContentLength:](v5, "setExpectedContentLength:", [v23 longLongValue]);
      }

      v10 = v14;
      v14[5] = v5;
    }

    else
    {
      v10 = v14;
    }

    v4 = v10[5];
  }

  _Block_object_dispose(&v13, 8);
  return v4;
}

id __44__SSDownloadAsset__copyURLRequestProperties__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 72);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

@end