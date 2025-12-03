@interface ExpiredDownloadRecoveryOperation
+ (BOOL)canAttemptRecoveryWithError:(id)error;
- (ExpiredDownloadRecoveryOperation)initWithDownloadIdentifier:(int64_t)identifier databaseSession:(id)session;
- (id)outputBlock;
- (void)run;
- (void)setOutputBlock:(id)block;
@end

@implementation ExpiredDownloadRecoveryOperation

- (ExpiredDownloadRecoveryOperation)initWithDownloadIdentifier:(int64_t)identifier databaseSession:(id)session
{
  sessionCopy = session;
  v18.receiver = self;
  v18.super_class = ExpiredDownloadRecoveryOperation;
  v7 = [(ExpiredDownloadRecoveryOperation *)&v18 init];
  if (v7)
  {
    v8 = [[NSArray alloc] initWithObjects:{@"is_automatic", @"is_store_queued", @"kind", @"download_state.store_queue_refresh_count", @"store_saga_id", 0}];
    v9 = [DownloadEntity alloc];
    database = [sessionCopy database];
    v11 = [(DownloadEntity *)v9 initWithPersistentID:identifier inDatabase:database];

    v12 = [[SSMemoryEntity alloc] initWithDatabaseEntity:v11 properties:v8];
    download = v7->_download;
    v7->_download = v12;

    v14 = [(SSMemoryEntity *)v7->_download valueForProperty:@"download_state.store_queue_refresh_count"];
    integerValue = [v14 integerValue];

    v16 = [NSNumber numberWithInteger:integerValue + 1];
    [(DownloadEntity *)v11 setValue:v16 forProperty:@"download_state.store_queue_refresh_count"];
  }

  return v7;
}

+ (BOOL)canAttemptRecoveryWithError:(id)error
{
  errorCopy = error;
  userInfo = [errorCopy userInfo];
  v5 = [userInfo objectForKey:SSErrorHTTPStatusCodeKey];

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

- (void)setOutputBlock:(id)block
{
  blockCopy = block;
  [(ExpiredDownloadRecoveryOperation *)self lock];
  if (self->_outputBlock != blockCopy)
  {
    v4 = [blockCopy copy];
    outputBlock = self->_outputBlock;
    self->_outputBlock = v4;
  }

  [(ExpiredDownloadRecoveryOperation *)self unlock];
}

- (void)run
{
  v3 = objc_alloc_init(ExpiredDownloadRecoveryResponse);
  [(ExpiredDownloadRecoveryResponse *)v3 setResult:0];
  databaseID = [(SSMemoryEntity *)self->_download databaseID];
  [(ExpiredDownloadRecoveryResponse *)v3 setDownloadIdentifier:databaseID];
  v5 = [(SSMemoryEntity *)self->_download valueForProperty:@"is_automatic"];
  integerValue = [v5 integerValue];

  if (integerValue == 2)
  {
    [(ExpiredDownloadRecoveryResponse *)v3 setResult:1];
  }

  v7 = [(SSMemoryEntity *)self->_download valueForProperty:@"kind"];
  v8 = [v7 isEqualToString:SSDownloadKindInAppContent];

  v9 = [(SSMemoryEntity *)self->_download valueForProperty:@"is_store_queued"];
  v10 = [(SSMemoryEntity *)self->_download valueForProperty:@"store_saga_id"];
  v11 = SSGetItemIdentifierFromValue();

  v12 = [(SSMemoryEntity *)self->_download valueForProperty:@"download_state.store_queue_refresh_count"];
  integerValue2 = [v12 integerValue];

  if (v8)
  {
    if (integerValue2 <= 1)
    {
      v14 = off_100325230;
      goto LABEL_34;
    }

    goto LABEL_22;
  }

  if (![v9 BOOLValue] && !v11 && integerValue != 2)
  {
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
      v53 = 138412546;
      v54 = objc_opt_class();
      v55 = 2048;
      v56 = databaseID;
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

      oSLogObject = [NSString stringWithCString:v20 encoding:4, &v53, v51];
      free(v20);
      v50 = oSLogObject;
      SSFileLog();
    }

    goto LABEL_20;
  }

  if (integerValue2 < 2)
  {
    v14 = off_100325228;
    if (!v11)
    {
      v14 = &off_100325238;
    }

LABEL_34:
    v21 = [objc_alloc(*v14) initWithDownloadIdentifier:databaseID];
    v27 = +[SSLogConfig sharedDaemonConfig];
    if (!v27)
    {
      v27 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v27 shouldLog];
    if ([v27 shouldLogToDisk])
    {
      v29 = shouldLog2 | 2;
    }

    else
    {
      v29 = shouldLog2;
    }

    oSLogObject2 = [v27 OSLogObject];
    if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
    {
      v29 &= 2u;
    }

    if (v29)
    {
      v53 = 138412802;
      v54 = objc_opt_class();
      v55 = 2048;
      v56 = databaseID;
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

      oSLogObject2 = [NSString stringWithCString:v32 encoding:4, &v53, v51];
      free(v32);
      v50 = oSLogObject2;
      SSFileLog();
    }

LABEL_45:
    v52 = 0;
    v33 = [(ExpiredDownloadRecoveryOperation *)self runSubOperation:v21 returningError:&v52];
    oSLogObject5 = v52;
    v34 = +[SSLogConfig sharedDaemonConfig];
    v35 = v34;
    if (v33)
    {
      if (!v34)
      {
        v35 = +[SSLogConfig sharedConfig];
      }

      shouldLog3 = [v35 shouldLog];
      if ([v35 shouldLogToDisk])
      {
        v37 = shouldLog3 | 2;
      }

      else
      {
        v37 = shouldLog3;
      }

      oSLogObject3 = [v35 OSLogObject];
      if (!os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_INFO))
      {
        v37 &= 2u;
      }

      if (v37)
      {
        v39 = objc_opt_class();
        v53 = 138412546;
        v54 = v39;
        v55 = 2048;
        v56 = databaseID;
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

        oSLogObject3 = [NSString stringWithCString:v41 encoding:4, &v53, v51];
        free(v41);
        v50 = oSLogObject3;
        SSFileLog();
      }

      goto LABEL_57;
    }

    if (!v34)
    {
      v35 = +[SSLogConfig sharedConfig];
    }

    shouldLog4 = [v35 shouldLog];
    if ([v35 shouldLogToDisk])
    {
      v43 = shouldLog4 | 2;
    }

    else
    {
      v43 = shouldLog4;
    }

    oSLogObject4 = [v35 OSLogObject];
    if (!os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
    {
      v43 &= 2u;
    }

    if (v43)
    {
      v45 = objc_opt_class();
      v53 = 138412802;
      v54 = v45;
      v55 = 2048;
      v56 = databaseID;
      v57 = 2112;
      v58 = oSLogObject5;
      v46 = v45;
      LODWORD(v51) = 32;
      v50 = &v53;
      v47 = _os_log_send_and_compose_impl();

      if (!v47)
      {
LABEL_69:

        [(ExpiredDownloadRecoveryResponse *)v3 setError:oSLogObject5];
        goto LABEL_70;
      }

      oSLogObject4 = [NSString stringWithCString:v47 encoding:4, &v53, v51];
      free(v47);
      v50 = oSLogObject4;
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

  shouldLog5 = [v21 shouldLog];
  if ([v21 shouldLogToDisk])
  {
    v23 = shouldLog5 | 2;
  }

  else
  {
    v23 = shouldLog5;
  }

  oSLogObject5 = [v21 OSLogObject];
  if (!os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_DEFAULT))
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
  v56 = databaseID;
  v25 = v54;
  LODWORD(v51) = 22;
  v50 = &v53;
  v26 = _os_log_send_and_compose_impl();

  if (v26)
  {
    oSLogObject5 = [NSString stringWithCString:v26 encoding:4, &v53, v51];
    free(v26);
    v50 = oSLogObject5;
    SSFileLog();
LABEL_70:
  }

LABEL_72:
  outputBlock = [(ExpiredDownloadRecoveryOperation *)self outputBlock];
  v49 = outputBlock;
  if (outputBlock)
  {
    (*(outputBlock + 16))(outputBlock, self, v3);
    [(ExpiredDownloadRecoveryOperation *)self setOutputBlock:0];
  }
}

@end