@interface PushNotificationSoundsSyncOperation
- (BOOL)_downloadSoundFileWithURL:(id)a3 name:(id)a4 cache:(id)a5 error:(id *)a6;
- (BOOL)_downloadSoundFiles:(id)a3 error:(id *)a4;
- (id)_newSoundFileURLCache;
- (void)run;
@end

@implementation PushNotificationSoundsSyncOperation

- (void)run
{
  v17 = 0;
  v3 = [SSURLBagContext contextWithBagType:0];
  if (([(PushNotificationSoundsSyncOperation *)self loadURLBagWithContext:v3 returningError:&v17]& 1) != 0)
  {
    v4 = [objc_msgSend(+[ISURLBagCache sharedCache](ISURLBagCache "sharedCache")];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v4 objectForKey:@"sound-files"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }

    v14 = [(PushNotificationSoundsSyncOperation *)self _downloadSoundFiles:v6 error:&v17];
  }

  else
  {
    v7 = +[SSLogConfig sharedDaemonConfig];
    if (!v7)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

    v8 = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      v9 = v8 | 2;
    }

    else
    {
      v9 = v8;
    }

    if (!os_log_type_enabled([v7 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v9 &= 2u;
    }

    if (v9)
    {
      v10 = objc_opt_class();
      v18 = 138412546;
      v19 = v10;
      v20 = 2112;
      v21 = v17;
      LODWORD(v16) = 22;
      v15 = &v18;
      v11 = _os_log_send_and_compose_impl();
      if (v11)
      {
        v12 = v11;
        v13 = [NSString stringWithCString:v11 encoding:4, &v18, v16];
        free(v12);
        v15 = v13;
        SSFileLog();
      }
    }

    v14 = 0;
  }

  [(PushNotificationSoundsSyncOperation *)self setError:v17, v15];
  [(PushNotificationSoundsSyncOperation *)self setSuccess:v14];
}

- (BOOL)_downloadSoundFileWithURL:(id)a3 name:(id)a4 cache:(id)a5 error:(id *)a6
{
  v50 = 0;
  v10 = [[NSURLRequest alloc] initWithURL:a3];
  v48 = a5;
  v11 = [a5 cachedResponseForRequest:v10];
  if (!v11)
  {
    goto LABEL_12;
  }

  [objc_msgSend(v11 "response")];
  v13 = v12;
  v14 = +[SSLogConfig sharedDaemonConfig];
  if (!v14)
  {
    v14 = +[SSLogConfig sharedConfig];
  }

  v15 = [v14 shouldLog];
  if ([v14 shouldLogToDisk])
  {
    v15 |= 2u;
  }

  if (!os_log_type_enabled([v14 OSLogObject], OS_LOG_TYPE_INFO))
  {
    v15 &= 2u;
  }

  if (v15)
  {
    v16 = objc_opt_class();
    +[NSDate timeIntervalSinceReferenceDate];
    v51 = 138412546;
    v52 = v16;
    v53 = 2048;
    v54 = v13 - v17;
    LODWORD(v47) = 22;
    v45 = &v51;
    v18 = _os_log_send_and_compose_impl();
    if (v18)
    {
      v19 = v18;
      v20 = [NSString stringWithCString:v18 encoding:4, &v51, v47];
      free(v19);
      v45 = v20;
      SSFileLog();
    }
  }

  +[NSDate timeIntervalSinceReferenceDate];
  if (v13 >= v21)
  {
    LOBYTE(v32) = 1;
  }

  else
  {
LABEL_12:
    v22 = objc_alloc_init(ISStoreURLOperation);
    v23 = [[SSMutableURLRequestProperties alloc] initWithURL:a3];
    [v23 setCachePolicy:1];
    [v22 setRequestProperties:v23];

    v24 = objc_alloc_init(ISHashedDownloadProvider);
    [v24 setLocalFilePath:{objc_msgSend(+[PushNotificationController soundFilesDirectoryPath](PushNotificationController, "soundFilesDirectoryPath"), "stringByAppendingPathComponent:", a4)}];
    [v24 resetStream];
    v25 = +[SSLogConfig sharedDaemonConfig];
    if (!v25)
    {
      v25 = +[SSLogConfig sharedConfig];
    }

    v26 = [v25 shouldLog];
    if ([v25 shouldLogToDisk])
    {
      v26 |= 2u;
    }

    if (!os_log_type_enabled([v25 OSLogObject], OS_LOG_TYPE_INFO))
    {
      v26 &= 2u;
    }

    if (v26)
    {
      v27 = objc_opt_class();
      v28 = [v24 localFilePath];
      v51 = 138412802;
      v52 = v27;
      v53 = 2112;
      v54 = *&a3;
      v55 = 2112;
      v56 = v28;
      LODWORD(v47) = 32;
      v45 = &v51;
      v29 = _os_log_send_and_compose_impl();
      if (v29)
      {
        v30 = v29;
        v31 = [NSString stringWithCString:v29 encoding:4, &v51, v47];
        free(v30);
        v45 = v31;
        SSFileLog();
      }
    }

    [v22 setDataProvider:{v24, v45}];

    v32 = [(PushNotificationSoundsSyncOperation *)self runSubOperation:v22 returningError:&v50];
    if (v32)
    {
      v33 = [[NSMutableData alloc] initWithLength:1];
      v34 = [[NSCachedURLResponse alloc] initWithResponse:objc_msgSend(v22 data:{"response"), v33}];
      v35 = +[SSLogConfig sharedDaemonConfig];
      if (!v35)
      {
        v35 = +[SSLogConfig sharedConfig];
      }

      v36 = [v35 shouldLog];
      if ([v35 shouldLogToDisk])
      {
        v36 |= 2u;
      }

      if (!os_log_type_enabled([v35 OSLogObject], OS_LOG_TYPE_INFO))
      {
        v36 &= 2u;
      }

      if (v36)
      {
        v37 = objc_opt_class();
        [objc_msgSend(v22 "response")];
        v39 = v38;
        +[NSDate timeIntervalSinceReferenceDate];
        v51 = 138412546;
        v52 = v37;
        v53 = 2048;
        v54 = v39 - v40;
        LODWORD(v47) = 22;
        v46 = &v51;
        v41 = _os_log_send_and_compose_impl();
        if (v41)
        {
          v42 = v41;
          v43 = [NSString stringWithCString:v41 encoding:4, &v51, v47];
          free(v42);
          v46 = v43;
          SSFileLog();
        }
      }

      [v48 storeCachedResponse:v34 forRequest:{v10, v46}];
      [v48 saveMemoryCacheToDisk];
    }
  }

  if (a6)
  {
    *a6 = v50;
  }

  return v32;
}

- (BOOL)_downloadSoundFiles:(id)a3 error:(id *)a4
{
  v6 = objc_alloc_init(NSFileManager);
  v7 = +[PushNotificationController soundFilesDirectoryPath];
  [v6 createDirectoryAtPath:v7 withIntermediateDirectories:1 attributes:0 error:0];
  v8 = objc_alloc_init(NSMutableSet);
  v9 = [v6 contentsOfDirectoryAtPath:v7 error:0];
  if (v9)
  {
    [v8 addObjectsFromArray:v9];
  }

  v49 = a3;
  v10 = +[SSLogConfig sharedDaemonConfig];
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

  if (!os_log_type_enabled([v10 OSLogObject], OS_LOG_TYPE_INFO))
  {
    v12 &= 2u;
  }

  if (v12)
  {
    *v60 = 138412546;
    *&v60[4] = objc_opt_class();
    v61 = 2048;
    v62 = [v49 count];
    LODWORD(v44) = 22;
    v42 = v60;
    v13 = _os_log_send_and_compose_impl();
    if (v13)
    {
      v14 = v13;
      v15 = [NSString stringWithCString:v13 encoding:4, v60, v44];
      free(v14);
      v42 = v15;
      SSFileLog();
    }
  }

  v16 = v49;
  if ([v49 count])
  {
    v45 = [(PushNotificationSoundsSyncOperation *)self _newSoundFileURLCache];
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v17 = [v49 countByEnumeratingWithState:&v54 objects:v59 count:16];
    if (v17)
    {
      v18 = v17;
      v47 = 0;
      v19 = *v55;
      v48 = 1;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v55 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v54 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v22 = [v21 objectForKey:@"name"];
            v23 = [v21 objectForKey:@"url"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v24 = [[NSURL alloc] initWithString:v23];
                if (v24)
                {
                  v25 = v24;
                  *v60 = 0;
                  v48 &= [(PushNotificationSoundsSyncOperation *)self _downloadSoundFileWithURL:v24 name:v22 cache:v45 error:v60];
                  v26 = v47;
                  if (!v47)
                  {
                    v26 = *v60;
                  }

                  v47 = v26;
                  [v8 removeObject:v22];
                }
              }
            }

            v16 = v49;
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v54 objects:v59 count:16];
      }

      while (v18);
    }

    else
    {
      v47 = 0;
      LOBYTE(v48) = 1;
    }

    v28 = v48;
    v27 = v47;
  }

  else
  {
    v27 = 0;
    v28 = 1;
  }

  v29 = +[SSLogConfig sharedDaemonConfig];
  if (!v29)
  {
    v29 = +[SSLogConfig sharedConfig];
  }

  v30 = [v29 shouldLog];
  if ([v29 shouldLogToDisk])
  {
    v31 = v30 | 2;
  }

  else
  {
    v31 = v30;
  }

  if (!os_log_type_enabled([v29 OSLogObject], OS_LOG_TYPE_INFO))
  {
    v31 &= 2u;
  }

  if (v31)
  {
    v32 = objc_opt_class();
    v33 = [v8 count];
    *v60 = 138412546;
    *&v60[4] = v32;
    v61 = 2048;
    v62 = v33;
    LODWORD(v44) = 22;
    v43 = v60;
    v34 = _os_log_send_and_compose_impl();
    if (v34)
    {
      v35 = v34;
      v36 = [NSString stringWithCString:v34 encoding:4, v60, v44];
      free(v35);
      v43 = v36;
      SSFileLog();
    }
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v37 = [v8 countByEnumeratingWithState:&v50 objects:v58 count:{16, v43}];
  if (v37)
  {
    v38 = v37;
    v39 = *v51;
    do
    {
      for (j = 0; j != v38; j = j + 1)
      {
        if (*v51 != v39)
        {
          objc_enumerationMutation(v8);
        }

        [v6 removeItemAtPath:objc_msgSend(v7 error:{"stringByAppendingPathComponent:", *(*(&v50 + 1) + 8 * j)), 0}];
      }

      v38 = [v8 countByEnumeratingWithState:&v50 objects:v58 count:16];
    }

    while (v38);
  }

  if (a4)
  {
    *a4 = v27;
  }

  return v28 & 1;
}

- (id)_newSoundFileURLCache
{
  v2 = objc_alloc_init(ISURLCacheConfiguration);
  [v2 setPersistentIdentifier:@"com.apple.itunesstored.APNS_Sounds_Cache"];
  [v2 setDiskCapacity:10485760];
  [v2 setMemoryCapacity:0x100000];
  v3 = [[ISURLCache alloc] initWithCacheConfiguration:v2];

  return v3;
}

@end