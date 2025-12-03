@interface ISOpenURLOperation
- (BOOL)_openURL:(id)l;
- (ISOpenURLOperation)initWithOpenURLRequest:(id)request;
- (ISOpenURLRequest)openURLRequest;
- (id)_newSortedTargetsArray;
- (void)run;
@end

@implementation ISOpenURLOperation

- (ISOpenURLOperation)initWithOpenURLRequest:(id)request
{
  requestCopy = request;
  currentHandler = [requestCopy URL];
  if (currentHandler)
  {
    goto LABEL_2;
  }

  uRLBagKey = [requestCopy URLBagKey];

  if (!uRLBagKey)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ISOpenURLOperation.m" lineNumber:66 description:@"Request must be resolvable"];
LABEL_2:
  }

  v12.receiver = self;
  v12.super_class = ISOpenURLOperation;
  v8 = [(ISOperation *)&v12 init];
  if (v8)
  {
    v9 = [requestCopy copy];
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
  selfCopy = self;
  v64 = *MEMORY[0x277D85DE8];
  uRLBagKey = [(ISOpenURLRequest *)self->_request URLBagKey];

  if (uRLBagKey)
  {
    v4 = [MEMORY[0x277D69C90] contextWithBagType:0];
    [(ISOperation *)selfCopy loadURLBagWithContext:v4 returningError:0];
    v5 = +[ISURLBagCache sharedCache];
    v6 = [v5 URLBagForContext:v4];

    uRLBagKey2 = [(ISOpenURLRequest *)selfCopy->_request URLBagKey];
    v8 = [v6 urlForKey:uRLBagKey2];

    if (v8)
    {
      goto LABEL_3;
    }

LABEL_43:
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    if ([mEMORY[0x277D69B38] shouldLogToDisk])
    {
      v38 = shouldLog | 2;
    }

    else
    {
      v38 = shouldLog;
    }

    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
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
      request = selfCopy->_request;
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

      oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v44 encoding:{4, &v58, v48}];
      free(v44);
      v47 = oSLogObject;
      SSFileLog();
    }

    goto LABEL_55;
  }

  v8 = [(ISOpenURLRequest *)selfCopy->_request URL];
  if (!v8)
  {
    goto LABEL_43;
  }

LABEL_3:
  if (![(ISOpenURLRequest *)selfCopy->_request isITunesStoreURL])
  {
    if ([(ISOpenURLRequest *)v8 isSafeExternalURL])
    {
      v45 = [(ISOpenURLOperation *)selfCopy _openURL:v8];
      goto LABEL_62;
    }

LABEL_58:
    v45 = 0;
    goto LABEL_62;
  }

  _newSortedTargetsArray = [(ISOpenURLOperation *)selfCopy _newSortedTargetsArray];
  v10 = [OpenURLTarget alloc];
  targetIdentifier = [(ISOpenURLRequest *)selfCopy->_request targetIdentifier];
  v12 = [(OpenURLTarget *)v10 initWithTargetIdentifier:targetIdentifier];

  if (v12)
  {
    [_newSortedTargetsArray insertObject:v12 atIndex:0];
  }

  mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!mEMORY[0x277D69B38]2)
  {
    mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog2 = [mEMORY[0x277D69B38]2 shouldLog];
  if ([mEMORY[0x277D69B38]2 shouldLogToDisk])
  {
    v15 = shouldLog2 | 2;
  }

  else
  {
    v15 = shouldLog2;
  }

  oSLogObject2 = [mEMORY[0x277D69B38]2 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
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
  v63 = _newSortedTargetsArray;
  v18 = v59;
  LODWORD(v48) = 32;
  v47 = &v58;
  v19 = _os_log_send_and_compose_impl();

  if (v19)
  {
    oSLogObject2 = [MEMORY[0x277CCACA8] stringWithCString:v19 encoding:{4, &v58, v48}];
    free(v19);
    v47 = oSLogObject2;
    SSFileLog();
LABEL_17:
  }

  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = _newSortedTargetsArray;
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
      v24 = [defaultWorkspace applicationsAvailableForOpeningURL:v23];
      if (![v24 count])
      {

        continue;
      }

      v25 = v8;
      v26 = selfCopy;
      mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
      if (!mEMORY[0x277D69B38]3)
      {
        mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharedConfig];
      }

      shouldLog3 = [mEMORY[0x277D69B38]3 shouldLog];
      if ([mEMORY[0x277D69B38]3 shouldLogToDisk])
      {
        v29 = shouldLog3 | 2;
      }

      else
      {
        v29 = shouldLog3;
      }

      oSLogObject3 = [mEMORY[0x277D69B38]3 OSLogObject];
      if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_INFO))
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

        oSLogObject3 = [MEMORY[0x277CCACA8] stringWithCString:v34 encoding:{4, &v58, v48}];
        free(v34);
        v47 = oSLogObject3;
        SSFileLog();
      }

LABEL_36:
      selfCopy = v26;
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
  [(ISOperation *)selfCopy setSuccess:v45, v47];

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

- (BOOL)_openURL:(id)l
{
  v15[1] = *MEMORY[0x277D85DE8];
  lCopy = l;
  if ([(ISOpenURLRequest *)self->_request interruptsKeybagRefresh])
  {
    SBSInterruptKeybagRefetch();
  }

  v13 = 0;
  v5 = SBSSpringBoardServerPort();
  MEMORY[0x277C8B810](v5, &v13 + 1, &v13);
  if (HIBYTE(v13))
  {
    mEMORY[0x277D0AE18] = [MEMORY[0x277D0AE18] sharedService];
    createClientPort = [mEMORY[0x277D0AE18] createClientPort];

    v14 = *MEMORY[0x277D0AC58];
    v15[0] = MEMORY[0x277CBEC38];
    v8 = 1;
    defaultWorkspace = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    mEMORY[0x277D0AE18]2 = [MEMORY[0x277D0AE18] sharedService];
    [mEMORY[0x277D0AE18]2 openURL:lCopy application:@"com.apple.MobileStore" options:defaultWorkspace clientPort:createClientPort withResult:0];
  }

  else
  {
    defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
    v8 = [defaultWorkspace openSensitiveURL:lCopy withOptions:0];
  }

  v11 = *MEMORY[0x277D85DE8];
  return v8;
}

@end