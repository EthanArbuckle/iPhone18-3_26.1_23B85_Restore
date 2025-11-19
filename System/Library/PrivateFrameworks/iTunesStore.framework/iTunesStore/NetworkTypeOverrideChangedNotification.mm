@interface NetworkTypeOverrideChangedNotification
@end

@implementation NetworkTypeOverrideChangedNotification

uint64_t ____NetworkTypeOverrideChangedNotification_block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!v2)
  {
    v2 = [MEMORY[0x277D69B38] sharedConfig];
  }

  v3 = [v2 shouldLog];
  if ([v2 shouldLogToDisk])
  {
    v4 = v3 | 2;
  }

  else
  {
    v4 = v3;
  }

  if (!os_log_type_enabled([v2 OSLogObject], OS_LOG_TYPE_DEFAULT))
  {
    v4 &= 2u;
  }

  if (v4)
  {
    v5 = *(a1 + 32);
    v11 = 138412290;
    v12 = objc_opt_class();
    LODWORD(v10) = 12;
    v6 = _os_log_send_and_compose_impl();
    if (v6)
    {
      v7 = v6;
      [MEMORY[0x277CCACA8] stringWithCString:v6 encoding:{4, &v11, v10}];
      free(v7);
      SSFileLog();
    }
  }

  CFPreferencesAppSynchronize(*MEMORY[0x277D6A708]);
  result = [*(a1 + 32) _reloadNetworkType];
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

@end