@interface AnalyticsReportingOperation
- (AnalyticsReportingOperation)initWithController:(id)a3;
- (BOOL)_runForReportingURL:(id)a3 suppressUserInfo:(BOOL)a4 error:(id *)a5;
- (BOOL)_runSSMetrics;
- (BOOL)_shouldBackoffAfterError:(id)a3;
- (BOOL)_shouldClearEventsDespiteError:(id)a3;
- (id)_path;
- (id)_signatureWithData:(id)a3 error:(id *)a4;
- (id)finishBlock;
- (id)operation:(id)a3 needNewBodyStream:(id)a4;
- (void)_destroyOutputFile:(id)a3;
- (void)_runAMSMetrics;
- (void)run;
- (void)setFinishBlock:(id)a3;
@end

@implementation AnalyticsReportingOperation

- (AnalyticsReportingOperation)initWithController:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = AnalyticsReportingOperation;
  v5 = [(AnalyticsReportingOperation *)&v14 init];
  if (v5)
  {
    +[NSDate timeIntervalSinceReferenceDate];
    v5->_insertTimestamp = vcvtpd_s64_f64(v6);
    if (v4)
    {
      v7 = v4;
    }

    else
    {
      v7 = objc_alloc_init(SSMetricsEventController);
    }

    controller = v5->_controller;
    v5->_controller = v7;

    v15[0] = CPSharedResourcesDirectory();
    v15[1] = @"Library";
    v15[2] = @"Caches";
    v15[3] = @"com.apple.itunesstored";
    v15[4] = @"AnalyticsReportingOperation";
    v9 = [NSArray arrayWithObjects:v15 count:5];
    v10 = [NSString pathWithComponents:v9];
    directory = v5->_directory;
    v5->_directory = v10;

    v12 = objc_alloc_init(NSFileManager);
    [v12 createDirectoryAtPath:v5->_directory withIntermediateDirectories:1 attributes:0 error:0];
  }

  return v5;
}

- (id)finishBlock
{
  [(AnalyticsReportingOperation *)self lock];
  v3 = [self->_finishBlock copy];
  [(AnalyticsReportingOperation *)self unlock];
  v4 = objc_retainBlock(v3);

  return v4;
}

- (void)setFinishBlock:(id)a3
{
  v6 = a3;
  [(AnalyticsReportingOperation *)self lock];
  if (self->_finishBlock != v6)
  {
    v4 = [v6 copy];
    finishBlock = self->_finishBlock;
    self->_finishBlock = v4;
  }

  [(AnalyticsReportingOperation *)self unlock];
}

- (void)run
{
  v3 = +[AMSMetrics bagSubProfile];
  v4 = +[AMSMetrics bagSubProfileVersion];
  v5 = [AMSBag bagForProfile:v3 profileVersion:v4];

  if (_os_feature_enabled_impl() && [v5 asd_iTunesStoreMetricsIsEnabled])
  {
    [(AnalyticsReportingOperation *)self _runAMSMetrics];
    v6 = 0;
  }

  else
  {
    v6 = [(AnalyticsReportingOperation *)self _runSSMetrics];
  }

  v7 = [(SSMetricsEventController *)self->_controller deleteReportedEvents];
  v8 = +[SSLogConfig sharedDaemonConfig];
  if (!v8)
  {
    v8 = +[SSLogConfig sharedConfig];
  }

  v9 = [v8 shouldLog];
  if ([v8 shouldLogToDisk])
  {
    v10 = v9 | 2;
  }

  else
  {
    v10 = v9;
  }

  v11 = [v8 OSLogObject];
  if (!os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v10 &= 2u;
  }

  if (v10)
  {
    *v26 = 138412546;
    *&v26[4] = objc_opt_class();
    *&v26[12] = 1024;
    *&v26[14] = v7;
    v12 = *&v26[4];
    LODWORD(v25) = 18;
    v24 = v26;
    v13 = _os_log_send_and_compose_impl();

    if (!v13)
    {
      goto LABEL_16;
    }

    v11 = [NSString stringWithCString:v13 encoding:4, v26, v25, *v26, *&v26[16]];
    free(v13);
    v24 = v11;
    SSFileLog();
  }

LABEL_16:
  v14 = [(SSMetricsEventController *)self->_controller deleteEventsInsertedBefore:self->_insertTimestamp - 172800];
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
  if (!os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v17 &= 2u;
  }

  if (v17)
  {
    v19 = objc_opt_class();
    *v26 = 138412802;
    *&v26[4] = v19;
    *&v26[12] = 2048;
    *&v26[14] = 172800;
    *&v26[22] = 1024;
    v27 = v14;
    v20 = v19;
    LODWORD(v25) = 28;
    v21 = _os_log_send_and_compose_impl();

    if (!v21)
    {
      goto LABEL_27;
    }

    v18 = [NSString stringWithCString:v21 encoding:4, v26, v25];
    free(v21);
    SSFileLog();
  }

LABEL_27:
  [(AnalyticsReportingOperation *)self setSuccess:1];
  v22 = [(AnalyticsReportingOperation *)self finishBlock];
  v23 = v22;
  if (v22)
  {
    (*(v22 + 16))(v22, v6);
    [(AnalyticsReportingOperation *)self setFinishBlock:0];
  }
}

- (id)operation:(id)a3 needNewBodyStream:(id)a4
{
  v5 = [(AnalyticsReportingOperation *)self _path:a3];
  v6 = +[NSFileManager defaultManager];
  v7 = [v6 fileExistsAtPath:self->_path];

  if (v7)
  {
    v8 = [[NSInputStream alloc] initWithFileAtPath:self->_path];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_destroyOutputFile:(id)a3
{
  v4 = a3;
  if (!CFPreferencesGetAppBooleanValue(@"DisableMetricsFileCleanup", kSSUserDefaultsIdentifier, 0))
  {
    v3 = objc_alloc_init(NSFileManager);
    [v3 removeItemAtPath:v4 error:0];
  }
}

- (id)_path
{
  path = self->_path;
  if (!path)
  {
    v4 = +[NSUUID UUID];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 UUIDString];
    }

    else
    {
      v6 = [[NSString alloc] initWithFormat:@"%p", self];
    }

    v7 = v6;
    v8 = [(NSString *)self->_directory stringByAppendingPathComponent:v6];
    v9 = [v8 stringByAppendingPathExtension:@"gzip"];
    v10 = self->_path;
    self->_path = v9;

    path = self->_path;
  }

  return path;
}

- (BOOL)_runForReportingURL:(id)a3 suppressUserInfo:(BOOL)a4 error:(id *)a5
{
  v74 = a4;
  v75 = a3;
  v70 = 0;
  v68 = 1;
  v69 = SSHTTPHeaderXAppleActionSignature;
  while (1)
  {
    v78 = objc_autoreleasePoolPush();
    v5 = [[SSMetricsEventReportingSession alloc] initWithReportingURL:v75 insertTimestamp:self->_insertTimestamp suppressUserInfo:v74 eventController:self->_controller];
    if (([v5 anyUnreportedEvents] & 1) == 0)
    {
      break;
    }

    v6 = [(AnalyticsReportingOperation *)self _path];
    context = objc_autoreleasePoolPush();
    v7 = 0;
    v8 = 1;
    do
    {
      [(AnalyticsReportingOperation *)self _destroyOutputFile:v6];
      v9 = [[SSGzipOutputStream alloc] initToFileAtPath:v6 append:0];

      [v9 open];
      v10 = [v5 writeEventsToStream:v9 uncompressedMaxSize:0x80000];
      [v9 close];
      v11 = 1;
      if (v10)
      {
        break;
      }

      v7 = v9;
    }

    while (v8++ <= 1);
    if (!v10)
    {
      v55 = +[SSLogConfig sharedDaemonConfig];
      if (!v55)
      {
        v55 = +[SSLogConfig sharedConfig];
      }

      v56 = [v55 shouldLog];
      if ([v55 shouldLogToDisk])
      {
        v57 = v56 | 2;
      }

      else
      {
        v57 = v56;
      }

      v58 = [v55 OSLogObject];
      if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        v59 = v57;
      }

      else
      {
        v59 = v57 & 2;
      }

      if (v59)
      {
        v60 = objc_opt_class();
        v81 = 138412290;
        v82 = v60;
        v61 = v60;
        LODWORD(v66) = 12;
        v65 = &v81;
        v62 = _os_log_send_and_compose_impl();

        if (v62)
        {
          v58 = [NSString stringWithCString:v62 encoding:4, &v81, v66];
          free(v62);
          v65 = v58;
          SSFileLog();
          goto LABEL_69;
        }
      }

      else
      {
LABEL_69:
      }

      objc_autoreleasePoolPop(context);
LABEL_71:
      v11 = 0;
      goto LABEL_72;
    }

    v13 = [v9 streamContentLength];

    objc_autoreleasePoolPop(context);
    if (!v13)
    {
      goto LABEL_71;
    }

    v14 = v13;
    v15 = +[SSLogConfig sharedDaemonConfig];
    if (!v15)
    {
      v15 = +[SSLogConfig sharedConfig];
    }

    v16 = [v15 shouldLog];
    v17 = [v15 shouldLogToDisk];
    v18 = [v15 OSLogObject];
    v19 = v18;
    if (v17)
    {
      v16 |= 2u;
    }

    if (!os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v16 &= 2u;
    }

    if (!v16)
    {
      goto LABEL_18;
    }

    v20 = objc_opt_class();
    v81 = 138412546;
    v82 = v20;
    v83 = 2112;
    v84 = v75;
    v21 = v20;
    LODWORD(v66) = 22;
    v22 = _os_log_send_and_compose_impl();

    if (v22)
    {
      v19 = [NSString stringWithCString:v22 encoding:4, &v81, v66];
      free(v22);
      SSFileLog();
LABEL_18:
    }

    v23 = [[SSMutableURLRequestProperties alloc] initWithURL:v75];
    [v23 setAllowedRetryCount:0];
    [v23 setCachePolicy:1];
    [v23 setNetworkServiceType:3];
    [v23 setShouldDecodeResponse:0];
    [v23 setTimeoutInterval:10.0];
    [v23 setValue:@"gzip" forHTTPHeaderField:@"Content-Encoding"];
    [v23 setValue:@"application/json; charset=utf-8" forHTTPHeaderField:@"Content-Type"];
    contexta = [v5 sessionCanaryIdentifier];
    if (contexta && [contexta length])
    {
      [v23 setValue:contexta forHTTPHeaderField:@"X-Apple-Canary-Id"];
    }

    v24 = [NSString stringWithFormat:@"%d", v14];
    [v23 setValue:v24 forHTTPHeaderField:@"Content-Length"];

    [v23 setHTTPMethod:@"POST"];
    if (SSDebugShouldLogFullMetricsRequest() && ([v75 absoluteString], v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "containsString:", @"xp.apple.com"), v25, v26))
    {
      v27 = [NSData dataWithContentsOfFile:v6];
      [v23 setHTTPBody:v27];
    }

    else
    {
      v27 = [[NSInputStream alloc] initWithFileAtPath:v6];
      [v23 setHTTPBodyStream:v27];
    }

    v28 = [(AnalyticsReportingOperation *)self _signatureWithData:v10 error:0];
    v29 = v28;
    if (v28)
    {
      v30 = [v28 base64EncodedStringWithOptions:0];
      [v23 setValue:v30 forHTTPHeaderField:v69];
    }

    v31 = objc_alloc_init(ISStoreURLOperation);
    [v31 setDelegate:self];
    [v31 setShouldSuppressUserInfo:v74];
    [v31 setRequestProperties:v23];
    [v31 setUrlKnownToBeTrusted:1];
    v80 = 0;
    [(AnalyticsReportingOperation *)self runSubOperation:v31 returningError:&v80];
    v32 = v80;
    v73 = v32;
    if (v32 && ![(AnalyticsReportingOperation *)self _shouldClearEventsDespiteError:v32])
    {
      v44 = +[SSLogConfig sharedDaemonConfig];
      if (!v44)
      {
        v44 = +[SSLogConfig sharedConfig];
      }

      v45 = [v44 shouldLog];
      v46 = [v44 shouldLogToDisk];
      v47 = v31;
      v48 = [v44 OSLogObject];
      v49 = v48;
      if (v46)
      {
        v50 = v45 | 2;
      }

      else
      {
        v50 = v45;
      }

      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        v51 = v50;
      }

      else
      {
        v51 = v50 & 2;
      }

      if (v51)
      {
        v52 = objc_opt_class();
        v81 = 138412546;
        v82 = v52;
        v83 = 2112;
        v84 = v73;
        v53 = v52;
        LODWORD(v66) = 22;
        v65 = &v81;
        v54 = _os_log_send_and_compose_impl();

        v43 = v47;
        if (v54)
        {
          v49 = [NSString stringWithCString:v54 encoding:4, &v81, v66];
          free(v54);
          v65 = v49;
          SSFileLog();
          goto LABEL_55;
        }
      }

      else
      {
        v43 = v47;
LABEL_55:
      }

      v11 = 0;
      v68 = 0;
      v33 = v70;
      v70 = v73;
      goto LABEL_57;
    }

    v71 = [v5 markEventsAsReported];
    v33 = +[SSLogConfig sharedDaemonConfig];
    if (!v33)
    {
      v33 = +[SSLogConfig sharedConfig];
    }

    v34 = [v33 shouldLog];
    v35 = [v33 shouldLogToDisk];
    v72 = v31;
    v36 = [v33 OSLogObject];
    v37 = v36;
    if (v35)
    {
      v38 = v34 | 2;
    }

    else
    {
      v38 = v34;
    }

    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      v39 = v38;
    }

    else
    {
      v39 = v38 & 2;
    }

    if (!v39)
    {
      v43 = v72;
      goto LABEL_53;
    }

    v40 = objc_opt_class();
    v81 = 138412546;
    v82 = v40;
    v83 = 1024;
    LODWORD(v84) = v71;
    v41 = v40;
    LODWORD(v66) = 18;
    v65 = &v81;
    v42 = _os_log_send_and_compose_impl();

    v43 = v72;
    if (v42)
    {
      v37 = [NSString stringWithCString:v42 encoding:4, &v81, v66];
      free(v42);
      v65 = v37;
      SSFileLog();
LABEL_53:
    }

LABEL_57:

LABEL_72:
    [(AnalyticsReportingOperation *)self _destroyOutputFile:v6, v65];

    objc_autoreleasePoolPop(v78);
    if ((v11 & 1) == 0)
    {
      goto LABEL_75;
    }
  }

  objc_autoreleasePoolPop(v78);
LABEL_75:
  if (a5 && (v68 & 1) == 0)
  {
    v63 = v70;
    *a5 = v70;
  }

  return v68 & 1;
}

- (void)_runAMSMetrics
{
  v2 = [(SSMetricsEventController *)self->_controller unreportedEventsSince:self->_insertTimestamp];
  v3 = +[AMSMetrics bagSubProfile];
  v4 = +[AMSMetrics bagSubProfileVersion];
  v5 = [AMSBag bagForProfile:v3 profileVersion:v4];

  v28 = v5;
  v6 = [[AMSMetrics alloc] initWithContainerID:@"com.apple.AppleMediaServices" bag:v5];
  v7 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v2, "count")}];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v2;
  v8 = [obj countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v31;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v31 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v30 + 1) + 8 * i);
        v13 = [AMSMetricsEvent alloc];
        v14 = [v12 reportingDictionary];
        v15 = [v13 initWithUnderlyingDictionary:v14];

        [v6 enqueueEvent:v15];
        v16 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v12 persistentID]);
        [v7 addObject:v16];
      }

      v9 = [obj countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v9);
  }

  v17 = [(SSMetricsEventController *)self->_controller markEventsAsReported:v7];
  v18 = +[SSLogConfig sharedDaemonConfig];
  if (!v18)
  {
    v18 = +[SSLogConfig sharedConfig];
  }

  v19 = [v18 shouldLog];
  if ([v18 shouldLogToDisk])
  {
    v20 = v19 | 2;
  }

  else
  {
    v20 = v19;
  }

  v21 = [v18 OSLogObject];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = v20;
  }

  else
  {
    v22 = v20 & 2;
  }

  if (!v22)
  {
    goto LABEL_19;
  }

  v23 = objc_opt_class();
  v34 = 138412546;
  v35 = v23;
  v36 = 1024;
  v37 = v17;
  v24 = v23;
  LODWORD(v26) = 18;
  v25 = _os_log_send_and_compose_impl();

  if (v25)
  {
    v21 = [NSString stringWithCString:v25 encoding:4, &v34, v26];
    free(v25);
    SSFileLog();
LABEL_19:
  }
}

- (BOOL)_runSSMetrics
{
  [(SSMetricsEventController *)self->_controller unreportedEventURLsSince:self->_insertTimestamp];
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  obj = v44 = 0u;
  v3 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
  if (v3)
  {
    v38 = 0;
    v40 = *v44;
    while (1)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v44 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v43 + 1) + 8 * i);
        v6 = +[SSLogConfig sharedDaemonConfig];
        if (!v6)
        {
          v6 = +[SSLogConfig sharedConfig];
        }

        v7 = [v6 shouldLog];
        v8 = [v6 shouldLogToDisk];
        v9 = [v6 OSLogObject];
        v10 = v9;
        if (v8)
        {
          v7 |= 2u;
        }

        if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v7 &= 2u;
        }

        if (!v7)
        {
          goto LABEL_15;
        }

        v11 = objc_opt_class();
        v47 = 138412546;
        v48 = v11;
        v49 = 2112;
        v50 = v5;
        v12 = v11;
        LODWORD(v37) = 22;
        v36 = &v47;
        v13 = _os_log_send_and_compose_impl();

        if (v13)
        {
          v10 = [NSString stringWithCString:v13 encoding:4, &v47, v37];
          free(v13);
          v36 = v10;
          SSFileLog();
LABEL_15:
        }

        v42 = 0;
        v14 = [(AnalyticsReportingOperation *)self _runForReportingURL:v5 suppressUserInfo:0 error:&v42];
        v15 = v42;
        if ((v14 & 1) == 0 && [(AnalyticsReportingOperation *)self _shouldBackoffAfterError:v15])
        {
          v16 = +[SSLogConfig sharedDaemonConfig];
          if (!v16)
          {
            v16 = +[SSLogConfig sharedConfig];
          }

          v17 = [v16 shouldLog];
          v18 = [v16 shouldLogToDisk];
          v19 = [v16 OSLogObject];
          v20 = v19;
          if (v18)
          {
            v17 |= 2u;
          }

          if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v17 &= 2u;
          }

          if (v17)
          {
            v21 = objc_opt_class();
            v47 = 138412546;
            v48 = v21;
            v49 = 2112;
            v50 = v5;
            v22 = v21;
            LODWORD(v37) = 22;
            v36 = &v47;
            v23 = _os_log_send_and_compose_impl();

            if (v23)
            {
              v20 = [NSString stringWithCString:v23 encoding:4, &v47, v37];
              free(v23);
              v36 = v20;
              SSFileLog();
              goto LABEL_27;
            }
          }

          else
          {
LABEL_27:
          }

          v38 = 1;
        }

        v41 = v15;
        v24 = [(AnalyticsReportingOperation *)self _runForReportingURL:v5 suppressUserInfo:1 error:&v41, v36];
        v25 = v41;

        if ((v24 & 1) == 0 && [(AnalyticsReportingOperation *)self _shouldBackoffAfterError:v25])
        {
          v26 = +[SSLogConfig sharedDaemonConfig];
          if (!v26)
          {
            v26 = +[SSLogConfig sharedConfig];
          }

          v27 = [v26 shouldLog];
          v28 = [v26 shouldLogToDisk];
          v29 = [v26 OSLogObject];
          v30 = v29;
          if (v28)
          {
            v27 |= 2u;
          }

          if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            v27 &= 2u;
          }

          if (v27)
          {
            v31 = objc_opt_class();
            v47 = 138412546;
            v48 = v31;
            v49 = 2112;
            v50 = v5;
            v32 = v31;
            LODWORD(v37) = 22;
            v35 = &v47;
            v33 = _os_log_send_and_compose_impl();

            if (v33)
            {
              v30 = [NSString stringWithCString:v33 encoding:4, &v47, v37];
              free(v33);
              v35 = v30;
              SSFileLog();
              goto LABEL_40;
            }
          }

          else
          {
LABEL_40:
          }

          v38 = 1;
        }
      }

      v3 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
      if (!v3)
      {
        goto LABEL_46;
      }
    }
  }

  v38 = 0;
LABEL_46:

  return v38 & 1;
}

- (BOOL)_shouldBackoffAfterError:(id)a3
{
  v3 = [a3 userInfo];
  v4 = [v3 objectForKey:SSErrorHTTPStatusCodeKey];

  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [v4 integerValue] - 500 < 0x64;

  return v5;
}

- (BOOL)_shouldClearEventsDespiteError:(id)a3
{
  v3 = a3;
  v4 = [v3 userInfo];
  v5 = [v4 objectForKey:SSErrorHTTPStatusCodeKey];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    IsEqual = [v5 integerValue] - 400 < 0x64;
  }

  else
  {
    IsEqual = ISErrorIsEqual();
  }

  return IsEqual;
}

- (id)_signatureWithData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_100237B44;
  v27 = sub_100237B54;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_100237B44;
  v21 = sub_100237B54;
  v22 = 0;
  v6 = dispatch_semaphore_create(0);
  v7 = +[SSVFairPlaySAPSession sharedDefaultSession];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100237B5C;
  v13[3] = &unk_10032CF88;
  v15 = &v23;
  v16 = &v17;
  v8 = v6;
  v14 = v8;
  [v7 signData:v5 completionBlock:v13];
  v9 = dispatch_time(0, 60000000000);
  dispatch_semaphore_wait(v8, v9);
  v10 = v18[5];
  if (a4 && !v10)
  {
    *a4 = v24[5];
    v10 = v18[5];
  }

  v11 = v10;

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);

  return v11;
}

@end