@interface ISSoftwareCapabilitiesDialogOperation
- (ISSoftwareCapabilitiesDialogOperation)initWithRequiredCapabilities:(id)a3 mismatches:(id)a4;
- (NSDictionary)mismatches;
- (id)requiredCapabilities;
- (void)_postDefaultDialog;
- (void)dealloc;
- (void)run;
@end

@implementation ISSoftwareCapabilitiesDialogOperation

- (ISSoftwareCapabilitiesDialogOperation)initWithRequiredCapabilities:(id)a3 mismatches:(id)a4
{
  __ISRecordSPIClassUsage(self);
  v7 = [(ISOperation *)self init];
  if (v7)
  {
    v7->_mismatches = [a4 copy];
    v7->_requiredCapabilities = [a3 copy];
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ISSoftwareCapabilitiesDialogOperation;
  [(ISSoftwareCapabilitiesDialogOperation *)&v3 dealloc];
}

- (NSDictionary)mismatches
{
  v2 = self->_mismatches;

  return v2;
}

- (id)requiredCapabilities
{
  v2 = self->_requiredCapabilities;

  return v2;
}

- (void)run
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D69C90] contextWithBagType:0];
  [(ISOperation *)self loadURLBagWithContext:v3 returningError:0];
  v4 = [objc_msgSend(+[ISURLBagCache sharedCache](ISURLBagCache "sharedCache")];
  if (v4)
  {
    v36 = v4;
    v37 = objc_alloc_init(ISStoreURLOperation);
    [(ISURLOperation *)v37 setDataProvider:+[(ISDataProvider *)ISProtocolDataProvider]];
    v5 = [(ISSoftwareCapabilitiesDialogOperation *)self requiredCapabilities];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v38 = self;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    obj = [(ISSoftwareCapabilitiesDialogOperation *)self mismatches];
    v8 = [(NSDictionary *)obj countByEnumeratingWithState:&v41 objects:v45 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v42;
      v11 = 1;
      v12 = 1;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v42 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v41 + 1) + 8 * i);
          v15 = [v6 objectForKey:v14];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && ([v15 BOOLValue] & 1) == 0)
          {
            v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"vCap%ld", v11++];
          }

          else
          {
            v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"cap%ld", v12++];
          }

          [v7 setObject:v14 forKey:v16];
        }

        v9 = [(NSDictionary *)obj countByEnumeratingWithState:&v41 objects:v45 count:16];
      }

      while (v9);
    }

    v17 = objc_alloc_init(MEMORY[0x277D69BD0]);
    [v17 setCachePolicy:1];
    [v17 setRequestParameters:v7];
    [v17 setURL:v36];
    [(ISURLOperation *)v37 setRequestProperties:v17];

    v40 = 0;
    if ([(ISOperation *)v38 runSubOperation:v37 returningError:&v40])
    {
      [(ISOperation *)v38 setSuccess:1];
    }

    else
    {
      v25 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
      if (!v25)
      {
        v25 = [MEMORY[0x277D69B38] sharedConfig];
      }

      v26 = [v25 shouldLog];
      if ([v25 shouldLogToDisk])
      {
        v27 = v26 | 2;
      }

      else
      {
        v27 = v26;
      }

      if (os_log_type_enabled([v25 OSLogObject], OS_LOG_TYPE_DEFAULT))
      {
        v28 = v27;
      }

      else
      {
        v28 = v27 & 2;
      }

      if (v28)
      {
        v29 = objc_opt_class();
        v46 = 138412290;
        v47 = v29;
        LODWORD(v35) = 12;
        v34 = &v46;
        v30 = _os_log_send_and_compose_impl();
        if (v30)
        {
          v31 = v30;
          v32 = [MEMORY[0x277CCACA8] stringWithCString:v30 encoding:{4, &v46, v35}];
          free(v31);
          v34 = v32;
          SSFileLog();
        }
      }

      [(ISSoftwareCapabilitiesDialogOperation *)v38 _postDefaultDialog];
      [(ISOperation *)v38 setError:v40];
    }
  }

  else
  {
    v18 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!v18)
    {
      v18 = [MEMORY[0x277D69B38] sharedConfig];
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

    if (os_log_type_enabled([v18 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v21 = v20;
    }

    else
    {
      v21 = v20 & 2;
    }

    if (v21)
    {
      v46 = 138412290;
      v47 = objc_opt_class();
      LODWORD(v35) = 12;
      v34 = &v46;
      v22 = _os_log_send_and_compose_impl();
      if (v22)
      {
        v23 = v22;
        v24 = [MEMORY[0x277CCACA8] stringWithCString:v22 encoding:{4, &v46, v35}];
        free(v23);
        v34 = v24;
        SSFileLog();
      }
    }

    [(ISSoftwareCapabilitiesDialogOperation *)self _postDefaultDialog];
    [(ISOperation *)self setSuccess:1];
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (void)_postDefaultDialog
{
  v8 = MGCopyAnswer();
  v2 = [v8 intValue];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = @"HARDWARE_INCOMPATIBLE_ERROR_BODY_IPHONE";
  if (v2 == 3)
  {
    v4 = @"HARDWARE_INCOMPATIBLE_ERROR_BODY_IPAD";
  }

  if (v2 == 2)
  {
    v5 = @"HARDWARE_INCOMPATIBLE_ERROR_BODY_IPOD";
  }

  else
  {
    v5 = v4;
  }

  [v3 localizedStringForKey:v5 value:&stru_2884BCFD0 table:0];
  v6 = +[ISOperationQueue mainQueue];
  v7 = *MEMORY[0x277D6A110];
  [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"HARDWARE_INCOMPATIBLE_ERROR_TITLE", &stru_2884BCFD0, 0}];
  [v6 addOperation:{+[ISDialogOperation operationWithError:](ISDialogOperation, "operationWithError:", SSError())}];
}

@end