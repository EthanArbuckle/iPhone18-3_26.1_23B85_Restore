@interface AMSBag
- (BOOL)asd_iTunesStoreMetricsIsEnabled;
@end

@implementation AMSBag

- (BOOL)asd_iTunesStoreMetricsIsEnabled
{
  v2 = [(AMSBag *)self BOOLForKey:@"itunesstore-metrics-enabled"];
  v14 = 0;
  v3 = [v2 valueWithError:&v14];
  v4 = v14;

  if (!v3)
  {
    if (!v4)
    {
      goto LABEL_18;
    }

    v6 = +[SSLogConfig sharedDaemonConfig];
    if (!v6)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      v8 = shouldLog | 2;
    }

    else
    {
      v8 = shouldLog;
    }

    oSLogObject = [v6 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v10 = v8;
    }

    else
    {
      v10 = v8 & 2;
    }

    if (v10)
    {
      v15 = 138412290;
      v16 = v4;
      LODWORD(v13) = 12;
      v11 = _os_log_send_and_compose_impl();

      if (!v11)
      {
LABEL_17:

        goto LABEL_18;
      }

      oSLogObject = [NSString stringWithCString:v11 encoding:4, &v15, v13];
      free(v11);
      SSFileLog();
    }

    goto LABEL_17;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
LABEL_18:
    bOOLValue = 0;
    goto LABEL_19;
  }

  bOOLValue = [v3 BOOLValue];
LABEL_19:

  return bOOLValue;
}

@end