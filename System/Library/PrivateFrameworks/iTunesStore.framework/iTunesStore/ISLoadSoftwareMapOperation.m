@interface ISLoadSoftwareMapOperation
- (void)run;
@end

@implementation ISLoadSoftwareMapOperation

- (void)run
{
  v30 = *MEMORY[0x277D85DE8];
  if (+[ISSoftwareMap currentMapIsValid])
  {
    v3 = *MEMORY[0x277D85DE8];

    [(ISOperation *)self setSuccess:1];
  }

  else
  {
    v4 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!v4)
    {
      v4 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v5 = [v4 shouldLog];
    if ([v4 shouldLogToDisk])
    {
      v6 = v5 | 2;
    }

    else
    {
      v6 = v5;
    }

    if (!os_log_type_enabled([v4 OSLogObject], OS_LOG_TYPE_INFO))
    {
      v6 &= 2u;
    }

    if (v6)
    {
      v28 = 138412290;
      v29 = objc_opt_class();
      LODWORD(v27) = 12;
      v25 = &v28;
      v7 = _os_log_send_and_compose_impl();
      if (v7)
      {
        v8 = v7;
        v9 = [MEMORY[0x277CCACA8] stringWithCString:v7 encoding:{4, &v28, v27}];
        free(v8);
        v25 = v9;
        SSFileLog();
      }
    }

    v10 = objc_alloc_init(ISSoftwareMap);
    v11 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    v12 = v11;
    if (v10)
    {
      if (!v11)
      {
        v12 = [MEMORY[0x277D69B38] sharedConfig];
      }

      v13 = [v12 shouldLog];
      if ([v12 shouldLogToDisk])
      {
        v14 = v13 | 2;
      }

      else
      {
        v14 = v13;
      }

      if (!os_log_type_enabled([v12 OSLogObject], OS_LOG_TYPE_INFO))
      {
        v14 &= 2u;
      }

      if (v14)
      {
        v15 = objc_opt_class();
        v28 = 138412290;
        v29 = v15;
        LODWORD(v27) = 12;
        v26 = &v28;
        v16 = _os_log_send_and_compose_impl();
        if (v16)
        {
          v17 = v16;
          v18 = [MEMORY[0x277CCACA8] stringWithCString:v16 encoding:{4, &v28, v27}];
          free(v17);
          v26 = v18;
          SSFileLog();
        }
      }

      [ISSoftwareMap setCurrentMap:v10, v26];
      [(ISOperation *)self setSuccess:1];
    }

    else
    {
      if (!v11)
      {
        v12 = [MEMORY[0x277D69B38] sharedConfig];
      }

      v20 = [v12 shouldLog];
      if ([v12 shouldLogToDisk])
      {
        v21 = v20 | 2;
      }

      else
      {
        v21 = v20;
      }

      if (!os_log_type_enabled([v12 OSLogObject], OS_LOG_TYPE_DEFAULT))
      {
        v21 &= 2u;
      }

      if (v21)
      {
        v22 = objc_opt_class();
        v28 = 138412290;
        v29 = v22;
        LODWORD(v27) = 12;
        v23 = _os_log_send_and_compose_impl();
        if (v23)
        {
          v24 = v23;
          [MEMORY[0x277CCACA8] stringWithCString:v23 encoding:{4, &v28, v27}];
          free(v24);
          SSFileLog();
        }
      }
    }

    v19 = *MEMORY[0x277D85DE8];
  }
}

@end