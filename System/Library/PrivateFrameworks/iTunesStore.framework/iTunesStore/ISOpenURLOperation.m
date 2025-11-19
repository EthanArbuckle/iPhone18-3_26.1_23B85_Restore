@interface ISOpenURLOperation
- (BOOL)_openURL:(id)a3;
- (ISOpenURLOperation)initWithOpenURLRequest:(id)a3;
- (ISOpenURLRequest)openURLRequest;
- (id)_newSortedTargetsArray;
- (void)run;
@end

@implementation ISOpenURLOperation

- (ISOpenURLOperation)initWithOpenURLRequest:(id)a3
{
  v5 = a3;
  v6 = [v5 URL];
  if (v6)
  {
    goto LABEL_2;
  }

  v7 = [v5 URLBagKey];

  if (!v7)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"ISOpenURLOperation.m" lineNumber:66 description:@"Request must be resolvable"];
LABEL_2:
  }

  v12.receiver = self;
  v12.super_class = ISOpenURLOperation;
  v8 = [(ISOperation *)&v12 init];
  if (v8)
  {
    v9 = [v5 copy];
    request = v8->_request;
    v8->_request = v9;
  }

  return v8;
}

- (ISOpenURLRequest)openURLRequest
{
  v2 = [(ISOpenURLRequest *)self->_request copy];

  return v2;
}

- (void)run
{
  v2 = self;
  v64 = *MEMORY[0x277D85DE8];
  v3 = [(ISOpenURLRequest *)self->_request URLBagKey];

  if (v3)
  {
    v4 = [MEMORY[0x277D69C90] contextWithBagType:0];
    [(ISOperation *)v2 loadURLBagWithContext:v4 returningError:0];
    v5 = +[ISURLBagCache sharedCache];
    v6 = [v5 URLBagForContext:v4];

    v7 = [(ISOpenURLRequest *)v2->_request URLBagKey];
    v8 = [v6 urlForKey:v7];

    if (v8)
    {
      goto LABEL_3;
    }

LABEL_43:
    v36 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!v36)
    {
      v36 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v37 = [v36 shouldLog];
    if ([v36 shouldLogToDisk])
    {
      v38 = v37 | 2;
    }

    else
    {
      v38 = v37;
    }

    v39 = [v36 OSLogObject];
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v40 = v38;
    }

    else
    {
      v40 = v38 & 2;
    }

    if (v40)
    {
      v41 = objc_opt_class();
      request = v2->_request;
      v58 = 138412546;
      v59 = v41;
      v60 = 2112;
      v61 = request;
      v43 = v41;
      LODWORD(v48) = 22;
      v47 = &v58;
      v44 = _os_log_send_and_compose_impl();

      if (!v44)
      {
LABEL_55:

        goto LABEL_58;
      }

      v39 = [MEMORY[0x277CCACA8] stringWithCString:v44 encoding:{4, &v58, v48}];
      free(v44);
      v47 = v39;
      SSFileLog();
    }

    goto LABEL_55;
  }

  v8 = [(ISOpenURLRequest *)v2->_request URL];
  if (!v8)
  {
    goto LABEL_43;
  }

LABEL_3:
  if (![(ISOpenURLRequest *)v2->_request isITunesStoreURL])
  {
    if ([(ISOpenURLRequest *)v8 isSafeExternalURL])
    {
      v45 = [(ISOpenURLOperation *)v2 _openURL:v8];
      goto LABEL_62;
    }

LABEL_58:
    v45 = 0;
    goto LABEL_62;
  }

  v9 = [(ISOpenURLOperation *)v2 _newSortedTargetsArray];
  v10 = [OpenURLTarget alloc];
  v11 = [(ISOpenURLRequest *)v2->_request targetIdentifier];
  v12 = [(OpenURLTarget *)v10 initWithTargetIdentifier:v11];

  if (v12)
  {
    [v9 insertObject:v12 atIndex:0];
  }

  v13 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!v13)
  {
    v13 = [MEMORY[0x277D69B38] sharedConfig];
  }

  v14 = [v13 shouldLog];
  if ([v13 shouldLogToDisk])
  {
    v15 = v14 | 2;
  }

  else
  {
    v15 = v14;
  }

  v16 = [v13 OSLogObject];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = v15;
  }

  else
  {
    v17 = v15 & 2;
  }

  if (!v17)
  {
    goto LABEL_17;
  }

  v58 = 138412802;
  v59 = objc_opt_class();
  v60 = 2112;
  v61 = v8;
  v62 = 2112;
  v63 = v9;
  v18 = v59;
  LODWORD(v48) = 32;
  v47 = &v58;
  v19 = _os_log_send_and_compose_impl();

  if (v19)
  {
    v16 = [MEMORY[0x277CCACA8] stringWithCString:v19 encoding:{4, &v58, v48}];
    free(v19);
    v47 = v16;
    SSFileLog();
LABEL_17:
  }

  v52 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = v9;
  v20 = [obj countByEnumeratingWithState:&v53 objects:v57 count:16];
  if (!v20)
  {
    v45 = 0;
    goto LABEL_61;
  }

  v21 = v20;
  v49 = v12;
  v51 = *v54;
  do
  {
    for (i = 0; i != v21; ++i)
    {
      if (*v54 != v51)
      {
        objc_enumerationMutation(obj);
      }

      v23 = [*(*(&v53 + 1) + 8 * i) copyURLForURL:{v8, v47}];
      v24 = [v52 applicationsAvailableForOpeningURL:v23];
      if (![v24 count])
      {

        continue;
      }

      v25 = v8;
      v26 = v2;
      v27 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
      if (!v27)
      {
        v27 = [MEMORY[0x277D69B38] sharedConfig];
      }

      v28 = [v27 shouldLog];
      if ([v27 shouldLogToDisk])
      {
        v29 = v28 | 2;
      }

      else
      {
        v29 = v28;
      }

      v30 = [v27 OSLogObject];
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v31 = v29;
      }

      else
      {
        v31 = v29 & 2;
      }

      if (v31)
      {
        v32 = objc_opt_class();
        v58 = 138412546;
        v59 = v32;
        v60 = 2112;
        v61 = v23;
        v33 = v32;
        LODWORD(v48) = 22;
        v47 = &v58;
        v34 = _os_log_send_and_compose_impl();

        if (!v34)
        {
          goto LABEL_36;
        }

        v30 = [MEMORY[0x277CCACA8] stringWithCString:v34 encoding:{4, &v58, v48}];
        free(v34);
        v47 = v30;
        SSFileLog();
      }

LABEL_36:
      v2 = v26;
      v35 = [(ISOpenURLOperation *)v26 _openURL:v23];

      v8 = v25;
      if (v35)
      {
        v45 = 1;
        goto LABEL_59;
      }
    }

    v21 = [obj countByEnumeratingWithState:&v53 objects:v57 count:16];
  }

  while (v21);
  v45 = 0;
LABEL_59:
  v12 = v49;
LABEL_61:

LABEL_62:
  [(ISOperation *)v2 setSuccess:v45, v47];

  v46 = *MEMORY[0x277D85DE8];
}

- (id)_newSortedTargetsArray
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  for (i = 0; i != 216; i += 24)
  {
    v4 = [[OpenURLTarget alloc] initWithTargetIdentifier:*(&__OpenURLTargetData + i)];
    if (v4)
    {
      [v2 addObject:v4];
    }
  }

  [v2 sortUsingSelector:sel_compare_];
  return v2;
}

- (BOOL)_openURL:(id)a3
{
  v15[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(ISOpenURLRequest *)self->_request interruptsKeybagRefresh])
  {
    SBSInterruptKeybagRefetch();
  }

  v13 = 0;
  v5 = SBSSpringBoardServerPort();
  MEMORY[0x277C8B810](v5, &v13 + 1, &v13);
  if (HIBYTE(v13))
  {
    v6 = [MEMORY[0x277D0AE18] sharedService];
    v7 = [v6 createClientPort];

    v14 = *MEMORY[0x277D0AC58];
    v15[0] = MEMORY[0x277CBEC38];
    v8 = 1;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v10 = [MEMORY[0x277D0AE18] sharedService];
    [v10 openURL:v4 application:@"com.apple.MobileStore" options:v9 clientPort:v7 withResult:0];
  }

  else
  {
    v9 = [MEMORY[0x277CC1E80] defaultWorkspace];
    v8 = [v9 openSensitiveURL:v4 withOptions:0];
  }

  v11 = *MEMORY[0x277D85DE8];
  return v8;
}

@end