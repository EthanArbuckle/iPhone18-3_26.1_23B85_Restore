@interface ISSetApplicationBadgeOperation
- (void)run;
@end

@implementation ISSetApplicationBadgeOperation

- (void)run
{
  v16 = *MEMORY[0x277D85DE8];
  bundleIdentifier = [(ISSetApplicationBadgeOperation *)self bundleIdentifier];
  badgeValue = [(ISSetApplicationBadgeOperation *)self badgeValue];
  if (bundleIdentifier)
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    if ([mEMORY[0x277D69B38] shouldLogToDisk])
    {
      v7 = shouldLog | 2;
    }

    else
    {
      v7 = shouldLog;
    }

    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      v7 &= 2u;
    }

    if (v7)
    {
      *v14 = 138412802;
      *&v14[4] = objc_opt_class();
      *&v14[12] = 2112;
      *&v14[14] = bundleIdentifier;
      *&v14[22] = 2112;
      v15 = badgeValue;
      v9 = *&v14[4];
      LODWORD(v13) = 32;
      v10 = _os_log_send_and_compose_impl();

      if (!v10)
      {
LABEL_13:

        mEMORY[0x277D0AE18] = [MEMORY[0x277D0AE18] sharedService];
        [mEMORY[0x277D0AE18] setBadgeValue:badgeValue forBundleID:bundleIdentifier];

        [(ISOperation *)self setSuccess:1];
        goto LABEL_14;
      }

      oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v10 encoding:{4, v14, v13, *v14, *&v14[16], v15}];
      free(v10);
      SSFileLog();
    }

    goto LABEL_13;
  }

LABEL_14:

  v12 = *MEMORY[0x277D85DE8];
}

@end