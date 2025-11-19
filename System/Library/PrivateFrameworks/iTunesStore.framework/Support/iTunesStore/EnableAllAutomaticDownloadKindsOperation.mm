@interface EnableAllAutomaticDownloadKindsOperation
- (void)run;
@end

@implementation EnableAllAutomaticDownloadKindsOperation

- (void)run
{
  v17 = 0;
  v3 = +[SSLogConfig sharedDaemonConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  v4 = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    v5 = v4 | 2;
  }

  else
  {
    v5 = v4;
  }

  if (!os_log_type_enabled([v3 OSLogObject], OS_LOG_TYPE_INFO))
  {
    v5 &= 2u;
  }

  if (v5)
  {
    v18 = 138412290;
    v19 = objc_opt_class();
    LODWORD(v16) = 12;
    v15 = &v18;
    v6 = _os_log_send_and_compose_impl();
    if (v6)
    {
      v7 = v6;
      v8 = [NSString stringWithCString:v6 encoding:4, &v18, v16];
      free(v7);
      v15 = v8;
      SSFileLog();
    }
  }

  v9 = [SSURLBagContext contextWithBagType:0, v15];
  v10 = 0;
  if ([(EnableAllAutomaticDownloadKindsOperation *)self loadURLBagWithContext:v9 returningError:0])
  {
    v10 = [ISURLBag copyAllowedAutomaticDownloadKindsInBagContext:v9];
  }

  if ([v10 count])
  {
    v11 = objc_alloc_init(GetAutomaticDownloadKindsOperation);
    if ([(EnableAllAutomaticDownloadKindsOperation *)self runSubOperation:v11 returningError:&v17])
    {
      v12 = [(GetAutomaticDownloadKindsOperation *)v11 enabledDownloadKinds];
      if ([(NSArray *)v12 count])
      {
        [+[StoreDownloadQueue sharedDownloadQueue](StoreDownloadQueue "sharedDownloadQueue")];
        v13 = 1;
      }

      else
      {
        v14 = [[SetAutomaticDownloadKindsOperation alloc] initWithDownloadKinds:v10];
        v13 = [(EnableAllAutomaticDownloadKindsOperation *)self runSubOperation:v14 returningError:&v17];
        if (v13)
        {
          [+[StoreDownloadQueue sharedDownloadQueue](StoreDownloadQueue "sharedDownloadQueue")];
        }
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 1;
  }

  [(EnableAllAutomaticDownloadKindsOperation *)self setError:v17];
  [(EnableAllAutomaticDownloadKindsOperation *)self setSuccess:v13];
}

@end