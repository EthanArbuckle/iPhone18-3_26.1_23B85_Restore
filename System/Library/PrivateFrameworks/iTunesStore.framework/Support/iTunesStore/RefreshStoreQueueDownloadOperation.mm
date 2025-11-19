@interface RefreshStoreQueueDownloadOperation
- (BOOL)_refreshDownload:(id)a3 error:(id *)a4;
- (RefreshStoreQueueDownloadOperation)initWithDownloadIdentifier:(int64_t)a3;
- (id)_URLBagKeyForDownload:(id)a3;
- (void)run;
@end

@implementation RefreshStoreQueueDownloadOperation

- (RefreshStoreQueueDownloadOperation)initWithDownloadIdentifier:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = RefreshStoreQueueDownloadOperation;
  result = [(RefreshStoreQueueDownloadOperation *)&v5 init];
  if (result)
  {
    result->_downloadID = a3;
  }

  return result;
}

- (void)run
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = sub_100210750;
  v10 = sub_100210760;
  v11 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10021076C;
  v5[3] = &unk_10032C558;
  v5[4] = self;
  v5[5] = &v6;
  [+[DownloadsDatabase downloadsDatabase](DownloadsDatabase "downloadsDatabase")];
  v4 = 0;
  v3 = [(RefreshStoreQueueDownloadOperation *)self _refreshDownload:v7[5] error:&v4];
  [(RefreshStoreQueueDownloadOperation *)self setError:v4];
  [(RefreshStoreQueueDownloadOperation *)self setSuccess:v3];

  _Block_object_dispose(&v6, 8);
}

- (BOOL)_refreshDownload:(id)a3 error:(id *)a4
{
  v55 = 0;
  v56 = &v55;
  v57 = 0x2020000000;
  v58 = 0;
  v54 = 0;
  v7 = [a3 valueForProperty:@"store_account_id"];
  v8 = [(RefreshStoreQueueDownloadOperation *)self _URLBagKeyForDownload:a3];
  v9 = [a3 valueForProperty:@"store_transaction_id"];
  v10 = v9;
  if (v7)
  {
    v11 = v8 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11 && v9 != 0)
  {
    v13 = objc_alloc_init(SSMutableURLRequestProperties);
    [v13 setURLBagKey:v8];
    [v13 setValue:v10 forRequestParameter:@"endId"];
    [v13 setValue:v10 forRequestParameter:@"startId"];
    v14 = [[LoadDownloadQueueOperation alloc] initWithRequestProperties:v13];
    [(LoadDownloadQueueOperation *)v14 setAccountIdentifier:v7];
    [(LoadDownloadQueueOperation *)v14 setNeedsAuthentication:0];
    v15 = +[SSLogConfig sharedDaemonConfig];
    if (!v15)
    {
      v15 = +[SSLogConfig sharedConfig];
    }

    v16 = [v15 shouldLog];
    v17 = [v15 shouldLogToDisk];
    v18 = [v15 OSLogObject];
    if (v17)
    {
      v16 |= 2u;
    }

    if (!os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v16 &= 2u;
    }

    if (v16)
    {
      v19 = objc_opt_class();
      downloadID = self->_downloadID;
      v59 = 138412802;
      v60 = v19;
      v61 = 2048;
      v62 = downloadID;
      v63 = 2112;
      v64 = v10;
      LODWORD(v50) = 32;
      v48 = &v59;
      v21 = _os_log_send_and_compose_impl();
      if (v21)
      {
        v22 = v21;
        v23 = [NSString stringWithCString:v21 encoding:4, &v59, v50];
        free(v22);
        v48 = v23;
        SSFileLog();
      }
    }

    v24 = [(RefreshStoreQueueDownloadOperation *)self runSubOperation:v14 returningError:&v54, v48];
    *(v56 + 24) = v24;
    if (v24)
    {
      v25 = [(LoadDownloadQueueOperation *)v14 downloads];
      if ([(NSOrderedSet *)v25 count]== 1)
      {
        v26 = [[Download alloc] initWithStoreDownload:[(NSOrderedSet *)v25 objectAtIndex:0]];
        if (v26)
        {
          v27 = +[SSLogConfig sharedDaemonConfig];
          if (!v27)
          {
            v27 = +[SSLogConfig sharedConfig];
          }

          v28 = [v27 shouldLog];
          v29 = [v27 shouldLogToDisk];
          v30 = [v27 OSLogObject];
          if (v29)
          {
            v28 |= 2u;
          }

          if (!os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
          {
            v28 &= 2u;
          }

          if (v28)
          {
            v52 = objc_opt_class();
            v51 = self->_downloadID;
            v31 = [a3 valueForProperty:@"store_download_key"];
            v32 = [(Download *)v26 valueForProperty:@"store_download_key"];
            v59 = 138413058;
            v60 = v52;
            v61 = 2048;
            v62 = v51;
            v63 = 2112;
            v64 = v31;
            v65 = 2112;
            v66 = v32;
            LODWORD(v50) = 42;
            v49 = &v59;
            v33 = _os_log_send_and_compose_impl();
            if (v33)
            {
              v34 = v33;
              v35 = [NSString stringWithCString:v33 encoding:4, &v59, v50];
              free(v34);
              v49 = v35;
              SSFileLog();
            }
          }

          v53[0] = _NSConcreteStackBlock;
          v53[1] = 3221225472;
          v53[2] = sub_100210ED8;
          v53[3] = &unk_10032C580;
          v53[5] = v26;
          v53[6] = &v55;
          v53[4] = self;
          [+[DownloadsDatabase downloadsDatabase](DownloadsDatabase downloadsDatabase];
        }
      }

      else
      {
        v36 = +[SSLogConfig sharedDaemonConfig];
        if (!v36)
        {
          v36 = +[SSLogConfig sharedConfig];
        }

        v37 = [v36 shouldLog];
        v38 = [v36 shouldLogToDisk];
        v39 = [v36 OSLogObject];
        if (v38)
        {
          v37 |= 2u;
        }

        if (!os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          v37 &= 2u;
        }

        if (v37)
        {
          v40 = objc_opt_class();
          v41 = [(NSOrderedSet *)v25 count];
          v42 = self->_downloadID;
          v59 = 138412802;
          v60 = v40;
          v61 = 2048;
          v62 = v41;
          v63 = 2048;
          v64 = v42;
          LODWORD(v50) = 32;
          v43 = _os_log_send_and_compose_impl();
          if (v43)
          {
            v44 = v43;
            [NSString stringWithCString:v43 encoding:4, &v59, v50];
            free(v44);
            SSFileLog();
          }
        }

        *(v56 + 24) = 0;
      }
    }
  }

  v45 = v56;
  v46 = *(v56 + 24);
  if (a4 && (v56[3] & 1) == 0)
  {
    *a4 = v54;
    v46 = *(v45 + 24);
  }

  _Block_object_dispose(&v55, 8);
  return v46 & 1;
}

- (id)_URLBagKeyForDownload:(id)a3
{
  v4 = objc_alloc_init(StoreDownloadQueueRequest);
  -[StoreDownloadQueueRequest setQueueIdentifier:](v4, "setQueueIdentifier:", sub_10012E754([a3 valueForProperty:@"kind"]));
  v5 = [(StoreDownloadQueueRequest *)v4 queueContentsURLBagKey];

  return v5;
}

@end