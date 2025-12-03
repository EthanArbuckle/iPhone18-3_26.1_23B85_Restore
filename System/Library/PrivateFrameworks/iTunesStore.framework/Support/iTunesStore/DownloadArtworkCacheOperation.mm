@interface DownloadArtworkCacheOperation
- (DownloadArtworkCacheOperation)initWithDownloadIdentifier:(int64_t)identifier thumbnailURL:(id)l;
- (DownloadArtworkCacheOperation)initWithStoreDownloadIdentifier:(int64_t)identifier thumbnailURL:(id)l;
- (NSData)artworkData;
- (void)_setArtworkData:(id)data;
- (void)dealloc;
- (void)run;
@end

@implementation DownloadArtworkCacheOperation

- (DownloadArtworkCacheOperation)initWithDownloadIdentifier:(int64_t)identifier thumbnailURL:(id)l
{
  v9.receiver = self;
  v9.super_class = DownloadArtworkCacheOperation;
  v6 = [(DownloadArtworkCacheOperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_downloadID = identifier;
    v6->_thumbnailURL = [l copy];
  }

  return v7;
}

- (DownloadArtworkCacheOperation)initWithStoreDownloadIdentifier:(int64_t)identifier thumbnailURL:(id)l
{
  v9.receiver = self;
  v9.super_class = DownloadArtworkCacheOperation;
  v6 = [(DownloadArtworkCacheOperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_downloadID = identifier;
    v6->_isStoreDownload = 1;
    v6->_thumbnailURL = [l copy];
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = DownloadArtworkCacheOperation;
  [(DownloadArtworkCacheOperation *)&v3 dealloc];
}

- (NSData)artworkData
{
  [(DownloadArtworkCacheOperation *)self lock];
  v3 = self->_artworkData;
  [(DownloadArtworkCacheOperation *)self unlock];
  return v3;
}

- (void)run
{
  v33 = 0;
  v3 = [+[ScratchManager directoryPathForDownloadID:kind:createIfNeeded:](ScratchManager directoryPathForDownloadID:self->_downloadID kind:0 createIfNeeded:{1), "stringByAppendingPathComponent:", @"thumbnail"}];
  v4 = [[NSData alloc] initWithContentsOfFile:v3];
  if (!v4)
  {
    if (self->_thumbnailURL)
    {
      v14 = +[SSLogConfig sharedDaemonConfig];
      if (!v14)
      {
        v14 = +[SSLogConfig sharedConfig];
      }

      shouldLog = [v14 shouldLog];
      if ([v14 shouldLogToDisk])
      {
        v16 = shouldLog | 2;
      }

      else
      {
        v16 = shouldLog;
      }

      if (!os_log_type_enabled([v14 OSLogObject], OS_LOG_TYPE_INFO))
      {
        v16 &= 2u;
      }

      if (v16)
      {
        v17 = objc_opt_class();
        thumbnailURL = self->_thumbnailURL;
        v34 = 138412546;
        v35 = v17;
        v36 = 2112;
        v37 = thumbnailURL;
        LODWORD(v32) = 22;
        v31 = &v34;
        v19 = _os_log_send_and_compose_impl();
        if (v19)
        {
          v20 = v19;
          v21 = [NSString stringWithCString:v19 encoding:4, &v34, v32];
          free(v20);
          v31 = v21;
          SSFileLog();
        }
      }

      if ([(NSString *)[(NSURL *)self->_thumbnailURL scheme] caseInsensitiveCompare:@"file"])
      {
        v22 = [[SSMutableURLRequestProperties alloc] initWithURL:self->_thumbnailURL];
        isStoreDownload = self->_isStoreDownload;
        if (isStoreDownload)
        {
          v24 = objc_alloc_init(ISStoreURLOperation);
          [v24 setUrlKnownToBeTrusted:1];
        }

        else
        {
          v24 = objc_alloc_init(ISURLOperation);
          [v24 _setUsesPrivateCookieStore:0];
        }

        [v22 setITunesStoreRequest:isStoreDownload];
        [v24 setDataProvider:{+[ISDataProvider provider](ISDataProvider, "provider")}];
        [v24 setRequestProperties:v22];
        if ([(DownloadArtworkCacheOperation *)self runSubOperation:v24 returningError:&v33])
        {
          v5 = [objc_msgSend(v24 "dataProvider")];
          [v5 writeToFile:v3 options:1 error:0];
        }

        else
        {
          v5 = 0;
        }

        goto LABEL_43;
      }

      v5 = [[NSData alloc] initWithContentsOfURL:self->_thumbnailURL options:0 error:&v33];
      if (v5)
      {
        goto LABEL_43;
      }

      v25 = +[SSLogConfig sharedDaemonConfig];
      if (!v25)
      {
        v25 = +[SSLogConfig sharedConfig];
      }

      shouldLog2 = [v25 shouldLog];
      if ([v25 shouldLogToDisk])
      {
        v27 = shouldLog2 | 2;
      }

      else
      {
        v27 = shouldLog2;
      }

      if (!os_log_type_enabled([v25 OSLogObject], OS_LOG_TYPE_DEFAULT))
      {
        v27 &= 2u;
      }

      if (v27)
      {
        v28 = objc_opt_class();
        v29 = self->_thumbnailURL;
        v34 = 138412802;
        v35 = v28;
        v36 = 2112;
        v37 = v29;
        v38 = 2112;
        v39 = v33;
        LODWORD(v32) = 32;
        v31 = &v34;
        v5 = _os_log_send_and_compose_impl();
        if (!v5)
        {
          goto LABEL_43;
        }

        v30 = [NSString stringWithCString:v5 encoding:4, &v34, v32];
        free(v5);
        v31 = v30;
        SSFileLog();
      }
    }

    v5 = 0;
    goto LABEL_43;
  }

  v5 = v4;
  v6 = +[SSLogConfig sharedDaemonConfig];
  if (!v6)
  {
    v6 = +[SSLogConfig sharedConfig];
  }

  shouldLog3 = [v6 shouldLog];
  if ([v6 shouldLogToDisk])
  {
    v8 = shouldLog3 | 2;
  }

  else
  {
    v8 = shouldLog3;
  }

  if (!os_log_type_enabled([v6 OSLogObject], OS_LOG_TYPE_INFO))
  {
    v8 &= 2u;
  }

  if (v8)
  {
    v9 = objc_opt_class();
    downloadID = self->_downloadID;
    v34 = 138412546;
    v35 = v9;
    v36 = 2048;
    v37 = downloadID;
    LODWORD(v32) = 22;
    v31 = &v34;
    v11 = _os_log_send_and_compose_impl();
    if (v11)
    {
      v12 = v11;
      v13 = [NSString stringWithCString:v11 encoding:4, &v34, v32];
      free(v12);
      v31 = v13;
      SSFileLog();
    }
  }

LABEL_43:
  [(DownloadArtworkCacheOperation *)self _setArtworkData:v5, v31];

  [(DownloadArtworkCacheOperation *)self setError:v33];
  [(DownloadArtworkCacheOperation *)self setSuccess:v5 != 0];
}

- (void)_setArtworkData:(id)data
{
  [(DownloadArtworkCacheOperation *)self lock];
  artworkData = self->_artworkData;
  if (artworkData != data)
  {

    self->_artworkData = data;
  }

  [(DownloadArtworkCacheOperation *)self unlock];
}

@end