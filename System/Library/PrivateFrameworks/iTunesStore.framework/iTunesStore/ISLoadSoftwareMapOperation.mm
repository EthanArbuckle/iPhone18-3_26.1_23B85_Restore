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
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    if ([mEMORY[0x277D69B38] shouldLogToDisk])
    {
      v6 = shouldLog | 2;
    }

    else
    {
      v6 = shouldLog;
    }

    if (!os_log_type_enabled([mEMORY[0x277D69B38] OSLogObject], OS_LOG_TYPE_INFO))
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
    mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    mEMORY[0x277D69B38]3 = mEMORY[0x277D69B38]2;
    if (v10)
    {
      if (!mEMORY[0x277D69B38]2)
      {
        mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharedConfig];
      }

      shouldLog2 = [mEMORY[0x277D69B38]3 shouldLog];
      if ([mEMORY[0x277D69B38]3 shouldLogToDisk])
      {
        v14 = shouldLog2 | 2;
      }

      else
      {
        v14 = shouldLog2;
      }

      if (!os_log_type_enabled([mEMORY[0x277D69B38]3 OSLogObject], OS_LOG_TYPE_INFO))
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
      if (!mEMORY[0x277D69B38]2)
      {
        mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharedConfig];
      }

      shouldLog3 = [mEMORY[0x277D69B38]3 shouldLog];
      if ([mEMORY[0x277D69B38]3 shouldLogToDisk])
      {
        v21 = shouldLog3 | 2;
      }

      else
      {
        v21 = shouldLog3;
      }

      if (!os_log_type_enabled([mEMORY[0x277D69B38]3 OSLogObject], OS_LOG_TYPE_DEFAULT))
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