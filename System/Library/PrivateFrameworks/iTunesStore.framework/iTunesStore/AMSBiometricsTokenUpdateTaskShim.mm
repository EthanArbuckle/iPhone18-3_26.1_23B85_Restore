@interface AMSBiometricsTokenUpdateTaskShim
- (AMSBiometricsTokenUpdateTaskShim)initWithAccountIdentifier:(id)identifier;
- (void)runUpdateWithCompletionBlock:(id)block;
@end

@implementation AMSBiometricsTokenUpdateTaskShim

- (AMSBiometricsTokenUpdateTaskShim)initWithAccountIdentifier:(id)identifier
{
  v25 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v18.receiver = self;
  v18.super_class = AMSBiometricsTokenUpdateTaskShim;
  v5 = [(AMSBiometricsTokenUpdateTaskShim *)&v18 init];
  v6 = v5;
  if (v5)
  {
    [(AMSBiometricsTokenUpdateTaskShim *)v5 setAccountIdentifier:identifierCopy];
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedStoreServicesConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    if ([mEMORY[0x277D69B38] shouldLogToDisk])
    {
      v9 = shouldLog | 2;
    }

    else
    {
      v9 = shouldLog;
    }

    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      v9 &= 2u;
    }

    if (v9)
    {
      v11 = objc_opt_class();
      v12 = v11;
      v13 = AMSSetLogKeyIfNeeded();
      v19 = 138543874;
      v20 = v11;
      v21 = 2114;
      v22 = v13;
      v23 = 2114;
      v24 = identifierCopy;
      LODWORD(v17) = 32;
      v14 = _os_log_send_and_compose_impl();

      if (!v14)
      {
LABEL_13:

        goto LABEL_14;
      }

      oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v14 encoding:{4, &v19, v17}];
      free(v14);
      SSFileLog();
    }

    goto LABEL_13;
  }

LABEL_14:

  v15 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)runUpdateWithCompletionBlock:(id)block
{
  v28 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v5 = AMSSetLogKeyIfNeeded();
  mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedStoreServicesConfig];
  if (!mEMORY[0x277D69B38])
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog = [mEMORY[0x277D69B38] shouldLog];
  if ([mEMORY[0x277D69B38] shouldLogToDisk])
  {
    v8 = shouldLog | 2;
  }

  else
  {
    v8 = shouldLog;
  }

  oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    v8 &= 2u;
  }

  if (v8)
  {
    v24 = 138543618;
    v25 = objc_opt_class();
    v26 = 2114;
    v27 = v5;
    v10 = v25;
    LODWORD(v20) = 22;
    v11 = _os_log_send_and_compose_impl();

    if (!v11)
    {
      goto LABEL_12;
    }

    oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v11 encoding:{4, &v24, v20}];
    free(v11);
    SSFileLog();
  }

LABEL_12:
  defaultStore = [MEMORY[0x277CB8F48] defaultStore];
  ams_activeiTunesAccount = [defaultStore ams_iTunesAccountWithDSID:self->_accountIdentifier];

  if (!ams_activeiTunesAccount)
  {
    defaultStore2 = [MEMORY[0x277CB8F48] defaultStore];
    ams_activeiTunesAccount = [defaultStore2 ams_activeiTunesAccount];
  }

  v15 = [objc_alloc(MEMORY[0x277CEE430]) initWithAccount:ams_activeiTunesAccount];
  performUpdate = [v15 performUpdate];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __65__AMSBiometricsTokenUpdateTaskShim_runUpdateWithCompletionBlock___block_invoke;
  v21[3] = &unk_27A6714A0;
  v21[4] = self;
  v22 = v5;
  v23 = blockCopy;
  v17 = blockCopy;
  v18 = v5;
  [performUpdate addFinishBlock:v21];

  v19 = *MEMORY[0x277D85DE8];
}

void __65__AMSBiometricsTokenUpdateTaskShim_runUpdateWithCompletionBlock___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [MEMORY[0x277D69B38] sharedStoreServicesConfig];
  v7 = v6;
  if (a2)
  {
    if (!v6)
    {
      v7 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v8 = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      v9 = v8 | 2;
    }

    else
    {
      v9 = v8;
    }

    v10 = [v7 OSLogObject];
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v9 &= 2u;
    }

    if (!v9)
    {
      goto LABEL_22;
    }

    v11 = a1[4];
    v12 = objc_opt_class();
    v13 = a1[5];
    v25 = 138543618;
    v26 = v12;
    v27 = 2114;
    v28 = v13;
    v14 = v12;
    LODWORD(v24) = 22;
    v15 = _os_log_send_and_compose_impl();
  }

  else
  {
    if (!v6)
    {
      v7 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v16 = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      v17 = v16 | 2;
    }

    else
    {
      v17 = v16;
    }

    v10 = [v7 OSLogObject];
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v17 &= 2u;
    }

    if (!v17)
    {
      goto LABEL_22;
    }

    v18 = a1[4];
    v19 = objc_opt_class();
    v20 = a1[5];
    v21 = v19;
    AMSHashIfNeeded();
    v25 = 138543874;
    v26 = v19;
    v27 = 2114;
    v28 = v20;
    v30 = v29 = 2114;
    LODWORD(v24) = 32;
    v15 = _os_log_send_and_compose_impl();
  }

  if (!v15)
  {
    goto LABEL_23;
  }

  v10 = [MEMORY[0x277CCACA8] stringWithCString:v15 encoding:{4, &v25, v24}];
  free(v15);
  SSFileLog();
LABEL_22:

LABEL_23:
  v22 = a1[6];
  if (v22)
  {
    (*(v22 + 16))(v22, a2, v5);
  }

  v23 = *MEMORY[0x277D85DE8];
}

@end