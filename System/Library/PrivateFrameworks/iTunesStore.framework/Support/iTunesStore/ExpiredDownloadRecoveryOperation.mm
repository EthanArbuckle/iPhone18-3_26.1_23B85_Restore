@interface ExpiredDownloadRecoveryOperation
+ (BOOL)canAttemptRecoveryWithError:(id)a3;
- (ExpiredDownloadRecoveryOperation)initWithDownloadIdentifier:(int64_t)a3 databaseSession:(id)a4;
- (id)outputBlock;
- (void)run;
- (void)setOutputBlock:(id)a3;
@end

@implementation ExpiredDownloadRecoveryOperation

- (ExpiredDownloadRecoveryOperation)initWithDownloadIdentifier:(int64_t)a3 databaseSession:(id)a4
{
  v6 = a4;
  v18.receiver = self;
  v18.super_class = ExpiredDownloadRecoveryOperation;
  v7 = [(ExpiredDownloadRecoveryOperation *)&v18 init];
  if (v7)
  {
    v8 = [[NSArray alloc] initWithObjects:{@"is_automatic", @"is_store_queued", @"kind", @"download_state.store_queue_refresh_count", @"store_saga_id", 0}];
    v9 = [DownloadEntity alloc];
    v10 = [v6 database];
    v11 = [(DownloadEntity *)v9 initWithPersistentID:a3 inDatabase:v10];

    v12 = [[SSMemoryEntity alloc] initWithDatabaseEntity:v11 properties:v8];
    download = v7->_download;
    v7->_download = v12;

    v14 = [(SSMemoryEntity *)v7->_download valueForProperty:@"download_state.store_queue_refresh_count"];
    v15 = [v14 integerValue];

    v16 = [NSNumber numberWithInteger:v15 + 1];
    [(DownloadEntity *)v11 setValue:v16 forProperty:@"download_state.store_queue_refresh_count"];
  }

  return v7;
}

+ (BOOL)canAttemptRecoveryWithError:(id)a3
{
  v3 = a3;
  v4 = [v3 userInfo];
  v5 = [v4 objectForKey:SSErrorHTTPStatusCodeKey];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v5 integerValue] == 403)
  {
    IsEqual = 1;
  }

  else
  {
    IsEqual = ISErrorIsEqual();
  }

  return IsEqual;
}

- (id)outputBlock
{
  [(ExpiredDownloadRecoveryOperation *)self lock];
  v3 = [self->_outputBlock copy];
  [(ExpiredDownloadRecoveryOperation *)self unlock];
  v4 = objc_retainBlock(v3);

  return v4;
}

- (void)setOutputBlock:(id)a3
{
  v6 = a3;
  [(ExpiredDownloadRecoveryOperation *)self lock];
  if (self->_outputBlock != v6)
  {
    v4 = [v6 copy];
    outputBlock = self->_outputBlock;
    self->_outputBlock = v4;
  }

  [(ExpiredDownloadRecoveryOperation *)self unlock];
}

- (void)run
{
  v3 = objc_alloc_init(ExpiredDownloadRecoveryResponse);
  [(ExpiredDownloadRecoveryResponse *)v3 setResult:0];
  v4 = [(SSMemoryEntity *)self->_download databaseID];
  [(ExpiredDownloadRecoveryResponse *)v3 setDownloadIdentifier:v4];
  v5 = [(SSMemoryEntity *)self->_download valueForProperty:@"is_automatic"];
  v6 = [v5 integerValue];

  if (v6 == 2)
  {
    [(ExpiredDownloadRecoveryResponse *)v3 setResult:1];
  }

  v7 = [(SSMemoryEntity *)self->_download valueForProperty:@"kind"];
  v8 = [v7 isEqualToString:SSDownloadKindInAppContent];

  v9 = [(SSMemoryEntity *)self->_download valueForProperty:@"is_store_queued"];
  v10 = [(SSMemoryEntity *)self->_download valueForProperty:@"store_saga_id"];
  v11 = SSGetItemIdentifierFromValue();

  v12 = [(SSMemoryEntity *)self->_download valueForProperty:@"download_state.store_queue_refresh_count"];
  v13 = [v12 integerValue];

  if (v8)
  {
    if (v13 <= 1)
    {
      v14 = off_100325230;
      goto LABEL_34;
    }

    goto LABEL_22;
  }

  if (![v9 BOOLValue] && !v11 && v6 != 2)
  {
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
      v53 = 138412546;
      v54 = objc_opt_class();
      v55 = 2048;
      v56 = v4;
      v19 = v54;
      LODWORD(v51) = 22;
      v50 = &v53;
      v20 = _os_log_send_and_compose_impl();

      if (!v20)
      {
LABEL_20:

        [(ExpiredDownloadRecoveryResponse *)v3 setResult:1];
        goto LABEL_72;
      }

      v18 = [NSString stringWithCString:v20 encoding:4, &v53, v51];
      free(v20);
      v50 = v18;
      SSFileLog();
    }

    goto LABEL_20;
  }

  if (v13 < 2)
  {
    v14 = off_100325228;
    if (!v11)
    {
      v14 = &off_100325238;
    }

LABEL_34:
    v21 = [objc_alloc(*v14) initWithDownloadIdentifier:v4];
    v27 = +[SSLogConfig sharedDaemonConfig];
    if (!v27)
    {
      v27 = +[SSLogConfig sharedConfig];
    }

    v28 = [v27 shouldLog];
    if ([v27 shouldLogToDisk])
    {
      v29 = v28 | 2;
    }

    else
    {
      v29 = v28;
    }

    v30 = [v27 OSLogObject];
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      v29 &= 2u;
    }

    if (v29)
    {
      v53 = 138412802;
      v54 = objc_opt_class();
      v55 = 2048;
      v56 = v4;
      v57 = 2112;
      v58 = v21;
      v31 = v54;
      LODWORD(v51) = 32;
      v50 = &v53;
      v32 = _os_log_send_and_compose_impl();

      if (!v32)
      {
        goto LABEL_45;
      }

      v30 = [NSString stringWithCString:v32 encoding:4, &v53, v51];
      free(v32);
      v50 = v30;
      SSFileLog();
    }

LABEL_45:
    v52 = 0;
    v33 = [(ExpiredDownloadRecoveryOperation *)self runSubOperation:v21 returningError:&v52];
    v24 = v52;
    v34 = +[SSLogConfig sharedDaemonConfig];
    v35 = v34;
    if (v33)
    {
      if (!v34)
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

      v38 = [v35 OSLogObject];
      if (!os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        v37 &= 2u;
      }

      if (v37)
      {
        v39 = objc_opt_class();
        v53 = 138412546;
        v54 = v39;
        v55 = 2048;
        v56 = v4;
        v40 = v39;
        LODWORD(v51) = 22;
        v50 = &v53;
        v41 = _os_log_send_and_compose_impl();

        if (!v41)
        {
LABEL_57:

          [(ExpiredDownloadRecoveryResponse *)v3 setResult:2];
          goto LABEL_70;
        }

        v38 = [NSString stringWithCString:v41 encoding:4, &v53, v51];
        free(v41);
        v50 = v38;
        SSFileLog();
      }

      goto LABEL_57;
    }

    if (!v34)
    {
      v35 = +[SSLogConfig sharedConfig];
    }

    v42 = [v35 shouldLog];
    if ([v35 shouldLogToDisk])
    {
      v43 = v42 | 2;
    }

    else
    {
      v43 = v42;
    }

    v44 = [v35 OSLogObject];
    if (!os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v43 &= 2u;
    }

    if (v43)
    {
      v45 = objc_opt_class();
      v53 = 138412802;
      v54 = v45;
      v55 = 2048;
      v56 = v4;
      v57 = 2112;
      v58 = v24;
      v46 = v45;
      LODWORD(v51) = 32;
      v50 = &v53;
      v47 = _os_log_send_and_compose_impl();

      if (!v47)
      {
LABEL_69:

        [(ExpiredDownloadRecoveryResponse *)v3 setError:v24];
        goto LABEL_70;
      }

      v44 = [NSString stringWithCString:v47 encoding:4, &v53, v51];
      free(v47);
      v50 = v44;
      SSFileLog();
    }

    goto LABEL_69;
  }

LABEL_22:
  v21 = +[SSLogConfig sharedDaemonConfig];
  if (!v21)
  {
    v21 = +[SSLogConfig sharedConfig];
  }

  v22 = [v21 shouldLog];
  if ([v21 shouldLogToDisk])
  {
    v23 = v22 | 2;
  }

  else
  {
    v23 = v22;
  }

  v24 = [v21 OSLogObject];
  if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v23 &= 2u;
  }

  if (!v23)
  {
    goto LABEL_70;
  }

  v53 = 138412546;
  v54 = objc_opt_class();
  v55 = 2048;
  v56 = v4;
  v25 = v54;
  LODWORD(v51) = 22;
  v50 = &v53;
  v26 = _os_log_send_and_compose_impl();

  if (v26)
  {
    v24 = [NSString stringWithCString:v26 encoding:4, &v53, v51];
    free(v26);
    v50 = v24;
    SSFileLog();
LABEL_70:
  }

LABEL_72:
  v48 = [(ExpiredDownloadRecoveryOperation *)self outputBlock];
  v49 = v48;
  if (v48)
  {
    (*(v48 + 16))(v48, self, v3);
    [(ExpiredDownloadRecoveryOperation *)self setOutputBlock:0];
  }
}

@end