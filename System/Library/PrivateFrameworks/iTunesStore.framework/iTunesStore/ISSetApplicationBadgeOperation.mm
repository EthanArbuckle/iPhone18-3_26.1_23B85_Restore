@interface ISSetApplicationBadgeOperation
- (void)run;
@end

@implementation ISSetApplicationBadgeOperation

- (void)run
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(ISSetApplicationBadgeOperation *)self bundleIdentifier];
  v4 = [(ISSetApplicationBadgeOperation *)self badgeValue];
  if (v3)
  {
    v5 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!v5)
    {
      v5 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v6 = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      v7 = v6 | 2;
    }

    else
    {
      v7 = v6;
    }

    v8 = [v5 OSLogObject];
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v7 &= 2u;
    }

    if (v7)
    {
      *v14 = 138412802;
      *&v14[4] = objc_opt_class();
      *&v14[12] = 2112;
      *&v14[14] = v3;
      *&v14[22] = 2112;
      v15 = v4;
      v9 = *&v14[4];
      LODWORD(v13) = 32;
      v10 = _os_log_send_and_compose_impl();

      if (!v10)
      {
LABEL_13:

        v11 = [MEMORY[0x277D0AE18] sharedService];
        [v11 setBadgeValue:v4 forBundleID:v3];

        [(ISOperation *)self setSuccess:1];
        goto LABEL_14;
      }

      v8 = [MEMORY[0x277CCACA8] stringWithCString:v10 encoding:{4, v14, v13, *v14, *&v14[16], v15}];
      free(v10);
      SSFileLog();
    }

    goto LABEL_13;
  }

LABEL_14:

  v12 = *MEMORY[0x277D85DE8];
}

@end