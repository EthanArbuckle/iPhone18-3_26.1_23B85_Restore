@interface LoadSoftwareThumbnailOperation
- (BOOL)isStoreDownload;
- (LoadSoftwareThumbnailOperation)initWithApplicationHandle:(id)handle thumbnailURL:(id)l;
- (id)_artworkDataWithError:(id *)error;
- (void)run;
- (void)setStoreDownload:(BOOL)download;
@end

@implementation LoadSoftwareThumbnailOperation

- (LoadSoftwareThumbnailOperation)initWithApplicationHandle:(id)handle thumbnailURL:(id)l
{
  handleCopy = handle;
  lCopy = l;
  v14.receiver = self;
  v14.super_class = LoadSoftwareThumbnailOperation;
  v8 = [(LoadSoftwareThumbnailOperation *)&v14 init];
  if (v8)
  {
    v9 = [handleCopy copy];
    applicationHandle = v8->_applicationHandle;
    v8->_applicationHandle = v9;

    v11 = [lCopy copy];
    thumbnailURL = v8->_thumbnailURL;
    v8->_thumbnailURL = v11;
  }

  return v8;
}

- (BOOL)isStoreDownload
{
  [(LoadSoftwareThumbnailOperation *)self lock];
  storeDownload = self->_storeDownload;
  [(LoadSoftwareThumbnailOperation *)self unlock];
  return storeDownload;
}

- (void)setStoreDownload:(BOOL)download
{
  [(LoadSoftwareThumbnailOperation *)self lock];
  self->_storeDownload = download;

  [(LoadSoftwareThumbnailOperation *)self unlock];
}

- (void)run
{
  bundleID = [(ApplicationHandle *)self->_applicationHandle bundleID];

  if (bundleID)
  {
    bundleID2 = [(ApplicationHandle *)self->_applicationHandle bundleID];
    v5 = [LSApplicationProxy applicationProxyForIdentifier:bundleID2 placeholder:1];

    if ([v5 foundBackingBundle])
    {
      iconsDictionary = [v5 iconsDictionary];
      v7 = [iconsDictionary count];

      if (v7)
      {
        oSLogObject3 = +[SSLogConfig sharedDaemonConfig];
        if (!oSLogObject3)
        {
          oSLogObject3 = +[SSLogConfig sharedConfig];
        }

        shouldLog = [oSLogObject3 shouldLog];
        if ([oSLogObject3 shouldLogToDisk])
        {
          v10 = shouldLog | 2;
        }

        else
        {
          v10 = shouldLog;
        }

        oSLogObject = [oSLogObject3 OSLogObject];
        if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
        {
          v10 &= 2u;
        }

        if (v10)
        {
          v12 = objc_opt_class();
          applicationHandle = self->_applicationHandle;
          v39 = 138412546;
          v40 = v12;
          v41 = 2112;
          v42 = applicationHandle;
          v14 = v12;
          LODWORD(v35) = 22;
          v15 = _os_log_send_and_compose_impl();

          if (!v15)
          {
LABEL_43:

            goto LABEL_44;
          }

          oSLogObject = [NSString stringWithCString:v15 encoding:4, &v39, v35];
          free(v15);
          SSFileLog();
        }

LABEL_32:

        goto LABEL_43;
      }
    }
  }

  if (self->_thumbnailURL)
  {
    v38 = 0;
    oSLogObject3 = [(LoadSoftwareThumbnailOperation *)self _artworkDataWithError:&v38];
    v5 = v38;
    [(LoadSoftwareThumbnailOperation *)self setError:v5];
    if (![oSLogObject3 length]|| v5)
    {
      goto LABEL_43;
    }

    v16 = +[SSLogConfig sharedDaemonConfig];
    if (!v16)
    {
      v16 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v16 shouldLog];
    if ([v16 shouldLogToDisk])
    {
      v18 = shouldLog2 | 2;
    }

    else
    {
      v18 = shouldLog2;
    }

    oSLogObject2 = [v16 OSLogObject];
    if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
    {
      v18 &= 2u;
    }

    if (v18)
    {
      v20 = objc_opt_class();
      v21 = self->_applicationHandle;
      v39 = 138412546;
      v40 = v20;
      v41 = 2112;
      v42 = v21;
      v22 = v20;
      LODWORD(v35) = 22;
      v34 = &v39;
      v23 = _os_log_send_and_compose_impl();

      if (!v23)
      {
LABEL_29:

        oSLogObject = +[ApplicationWorkspace defaultWorkspace];
        v24 = dispatch_semaphore_create(0);
        downloadID = [(DownloadHandle *)self->_applicationHandle downloadID];
        v36[0] = _NSConcreteStackBlock;
        v36[1] = 3221225472;
        v36[2] = sub_100202E04;
        v36[3] = &unk_100327110;
        v26 = v24;
        v37 = v26;
        [oSLogObject waitForInstallOfDownloadIdentifier:downloadID completionBlock:v36];
        v27 = dispatch_time(0, 60000000000);
        dispatch_semaphore_wait(v26, v27);
        if (([(LoadSoftwareThumbnailOperation *)self isCancelled]& 1) == 0)
        {
          [oSLogObject setIconData:oSLogObject3 forApplicationHandle:self->_applicationHandle];
        }

        [(LoadSoftwareThumbnailOperation *)self setSuccess:1, v34];

        goto LABEL_32;
      }

      oSLogObject2 = [NSString stringWithCString:v23 encoding:4, &v39, v35];
      free(v23);
      v34 = oSLogObject2;
      SSFileLog();
    }

    goto LABEL_29;
  }

  v5 = +[SSLogConfig sharedDaemonConfig];
  if (!v5)
  {
    v5 = +[SSLogConfig sharedConfig];
  }

  shouldLog3 = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    v29 = shouldLog3 | 2;
  }

  else
  {
    v29 = shouldLog3;
  }

  oSLogObject3 = [v5 OSLogObject];
  if (!os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
  {
    v29 &= 2u;
  }

  if (!v29)
  {
    goto LABEL_43;
  }

  v30 = objc_opt_class();
  v31 = self->_applicationHandle;
  v39 = 138412546;
  v40 = v30;
  v41 = 2112;
  v42 = v31;
  v32 = v30;
  LODWORD(v35) = 22;
  v33 = _os_log_send_and_compose_impl();

  if (v33)
  {
    oSLogObject3 = [NSString stringWithCString:v33 encoding:4, &v39, v35];
    free(v33);
    SSFileLog();
    goto LABEL_43;
  }

LABEL_44:
}

- (id)_artworkDataWithError:(id *)error
{
  isStoreDownload = [(LoadSoftwareThumbnailOperation *)self isStoreDownload];
  v6 = [DownloadArtworkCacheOperation alloc];
  downloadID = [(DownloadHandle *)self->_applicationHandle downloadID];
  thumbnailURL = self->_thumbnailURL;
  if (isStoreDownload)
  {
    v9 = [(DownloadArtworkCacheOperation *)v6 initWithStoreDownloadIdentifier:downloadID thumbnailURL:thumbnailURL];
  }

  else
  {
    v9 = [(DownloadArtworkCacheOperation *)v6 initWithDownloadIdentifier:downloadID thumbnailURL:thumbnailURL];
  }

  v10 = v9;
  v16 = 0;
  v11 = [(LoadSoftwareThumbnailOperation *)self runSubOperation:v9 returningError:&v16];
  v12 = v16;
  artworkData = [(DownloadArtworkCacheOperation *)v10 artworkData];
  if (error && (v11 & 1) == 0)
  {
    v14 = v12;
    *error = v12;
  }

  return artworkData;
}

@end