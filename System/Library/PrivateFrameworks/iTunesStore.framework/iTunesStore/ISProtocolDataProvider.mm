@interface ISProtocolDataProvider
- (BOOL)_processFailureTypeFromDictionary:(id)dictionary error:(id *)error;
- (BOOL)_shouldAttemptPasswordPaymentSheetForError:(id)error;
- (BOOL)_shouldFailWithTokenErrorForDialog:(id)dialog dictionary:(id)dictionary error:(id *)error;
- (BOOL)parseData:(id)data returningError:(id *)error;
- (BOOL)processDialogFromDictionary:(id)dictionary error:(id *)error;
- (BOOL)processDictionary:(id)dictionary error:(id *)error;
- (BOOL)shouldProcessTouchIDDialogs;
- (ISProtocolDataProvider)init;
- (id)_metricsDictionaryForResponse:(id)response;
- (id)_touchIDDialogForResponse:(id)response;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_checkBiometricFailureForResponse:(id)response;
- (void)_checkDownloadQueues;
- (void)_checkInAppPurchaseQueueForAction:(id)action;
- (void)_performActionsForResponse:(id)response;
- (void)_presentDialog:(id)dialog;
- (void)_refreshSubscriptionStatus;
- (void)_selectFooterSection:(id)section;
@end

@implementation ISProtocolDataProvider

- (ISProtocolDataProvider)init
{
  __ISRecordSPIClassUsage(self);
  v4.receiver = self;
  v4.super_class = ISProtocolDataProvider;
  result = [(ISDataProvider *)&v4 init];
  if (result)
  {
    result->_shouldPostFooterSectionChanged = 1;
    result->_shouldProcessAccount = 1;
    result->_shouldProcessAuthenticationDialogs = 1;
    result->_shouldProcessDialogs = 1;
    result->_shouldProcessDialogsOutsideDaemon = 0;
    result->_shouldProcessProtocol = 1;
    result->_shouldTriggerDownloads = 1;
  }

  return result;
}

- (BOOL)processDialogFromDictionary:(id)dictionary error:(id *)error
{
  v84 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  authenticationContext = [(ISDataProvider *)self authenticationContext];
  v7 = [authenticationContext mutableCopy];

  v8 = MEMORY[0x277D69A20];
  response = [(ISDataProvider *)self response];
  [v7 setAllowsSilentAuthentication:{objc_msgSend(v8, "URLResponseAllowsSilentAuthentication:", response)}];

  LODWORD(v8) = [(ISProtocolDataProvider *)self shouldProcessAuthenticationDialogs];
  selfCopy = self;
  shouldProcessTouchIDDialogs = [(ISProtocolDataProvider *)self shouldProcessTouchIDDialogs];
  if (!v8)
  {
    goto LABEL_4;
  }

  if (v7)
  {
    if ([v7 promptStyle] == 1000)
    {
LABEL_4:
      v60 = 0;
      goto LABEL_8;
    }

    v10 = [v7 shouldSuppressDialogs] ^ 1;
  }

  else
  {
    v10 = 1;
  }

  v60 = v10;
LABEL_8:
  if ([(ISProtocolDataProvider *)self shouldProcessDialogs])
  {
    v61 = [v7 shouldSuppressDialogs] ^ 1;
  }

  else
  {
    v61 = 0;
  }

  v68 = [objc_alloc(MEMORY[0x277D69A88]) initWithResponseDictionary:dictionaryCopy];
  [v68 actionsWithActionType:*MEMORY[0x277D6A570]];
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v11 = v78 = 0u;
  v67 = [v11 countByEnumeratingWithState:&v75 objects:v83 count:16];
  if (v67)
  {
    errorCopy = error;
    v12 = 0;
    v66 = *v76;
    v13 = &selRef_initWithBundleIdentifier_;
    v63 = v7;
    obj = v11;
LABEL_13:
    v14 = 0;
    v59 = v13[392];
    v15 = v12;
    while (1)
    {
      if (*v76 != v66)
      {
        objc_enumerationMutation(obj);
      }

      v16 = *(*(&v75 + 1) + 8 * v14);
      v17 = [(ISProtocolDataProvider *)selfCopy _metricsDictionaryForResponse:v68, v56, v57];
      v18 = [MEMORY[0x277D69A60] dialogIdForMetricsDictionary:v17];
      dialog = [v16 dialog];
      v20 = [ISDialog alloc];
      dialogDictionary = [dialog dialogDictionary];
      v22 = [(ISDialog *)v20 initWithDialogDictionary:dialogDictionary authenticationContext:v7];

      paymentSheet = [(ISDialog *)v22 paymentSheet];
      [paymentSheet setDialogId:v18];

      paymentSheet2 = [(ISDialog *)v22 paymentSheet];
      [paymentSheet2 setPresentingSceneIdentifier:selfCopy->_presentingSceneIdentifier];

      if (!v22)
      {
        v33 = 1;
LABEL_33:
        v12 = v15;
        goto LABEL_49;
      }

      v74 = v15;
      v25 = [(ISProtocolDataProvider *)selfCopy _shouldFailWithTokenErrorForDialog:v22 dictionary:dictionaryCopy error:&v74];
      v12 = v74;

      if (v25)
      {
        break;
      }

      if ([(ISDialog *)v22 kind]!= 1)
      {
        if (v61)
        {
          [(ISProtocolDataProvider *)selfCopy _presentDialog:v22];
        }

LABEL_48:
        v33 = 1;
        goto LABEL_49;
      }

      if (!shouldProcessTouchIDDialogs)
      {
        if (!v60)
        {
          goto LABEL_48;
        }

        biometricSessionDelegate = [(ISDataProvider *)selfCopy biometricSessionDelegate];
        v43 = objc_opt_respondsToSelector();

        if (v43)
        {
          biometricSessionDelegate2 = [(ISDataProvider *)selfCopy biometricSessionDelegate];
          [biometricSessionDelegate2 sender:selfCopy didFallbackToPassword:1];
        }

        v70 = v12;
        v33 = [(ISDataProvider *)selfCopy runAuthorizationDialog:v22 error:&v70];
        v15 = v70;

        goto LABEL_33;
      }

      v34 = selfCopy;
      v35 = [(ISProtocolDataProvider *)selfCopy _touchIDDialogForResponse:v68];
      paymentSheet3 = [v35 paymentSheet];
      [paymentSheet3 setDialogId:v18];

      paymentSheet4 = [v35 paymentSheet];
      v38 = v35;
      [paymentSheet4 setPresentingSceneIdentifier:selfCopy->_presentingSceneIdentifier];

      [(ISProtocolDataProvider *)selfCopy _checkBiometricFailureForResponse:dictionaryCopy];
      v73 = v12;
      v39 = [(ISDataProvider *)selfCopy runTouchIDAuthorizationDialog:v35 fallbackDialog:v22 metricsDictionary:v17 error:&v73];
      v40 = v73;

      if (v40)
      {
        v41 = 1;
      }

      else
      {
        v41 = v39;
      }

      if ((v41 | v60 ^ 1))
      {
        if (v39)
        {
          v12 = v40;
LABEL_55:

          v33 = 1;
          goto LABEL_31;
        }

        v34 = selfCopy;
        if (([(ISProtocolDataProvider *)selfCopy _shouldAttemptPasswordPaymentSheetForError:v40]& v60) == 1)
        {
          v71 = v40;
          v50 = [(ISDataProvider *)selfCopy runAuthorizationDialog:v22 error:&v71];
          v12 = v71;

          if (v50)
          {
LABEL_53:
            biometricAuthenticationContext = [(ISDataProvider *)v34 biometricAuthenticationContext];
            [biometricAuthenticationContext setDidFallbackToPassword:1];

            biometricSessionDelegate3 = [(ISDataProvider *)v34 biometricSessionDelegate];
            v48 = objc_opt_respondsToSelector();

            if (v48)
            {
              biometricSessionDelegate4 = [(ISDataProvider *)selfCopy biometricSessionDelegate];
              [biometricSessionDelegate4 sender:selfCopy didFallbackToPassword:1];
            }

            goto LABEL_55;
          }
        }

        else
        {
          v12 = v40;
        }
      }

      else
      {
        v72 = 0;
        v45 = [(ISDataProvider *)selfCopy runAuthorizationDialog:v22 error:&v72];
        v12 = v72;
        if (v45)
        {
          goto LABEL_53;
        }
      }

LABEL_30:
      v33 = 0;
LABEL_31:
      v7 = v63;
LABEL_49:

      if ((v33 & 1) == 0)
      {
        v11 = obj;

        if (errorCopy)
        {
          v52 = v12;
          v53 = 0;
          *errorCopy = v12;
        }

        else
        {
          v53 = 0;
        }

        goto LABEL_68;
      }

      ++v14;
      v15 = v12;
      if (v67 == v14)
      {
        v11 = obj;
        v51 = [obj countByEnumeratingWithState:&v75 objects:v83 count:16];
        v67 = v51;
        v13 = &selRef_initWithBundleIdentifier_;
        if (v51)
        {
          goto LABEL_13;
        }

        goto LABEL_66;
      }
    }

    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedAccountsAuthenticationConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    if ([mEMORY[0x277D69B38] shouldLogToDisk])
    {
      v28 = shouldLog | 2;
    }

    else
    {
      v28 = shouldLog;
    }

    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v28 &= 2u;
    }

    if (v28)
    {
      v30 = objc_opt_class();
      v79 = 138543618;
      v80 = v30;
      v81 = 2112;
      v82 = v12;
      v31 = v30;
      LODWORD(v57) = 22;
      v56 = &v79;
      v32 = _os_log_send_and_compose_impl();

      if (!v32)
      {
LABEL_29:

        goto LABEL_30;
      }

      oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v32 encoding:{4, &v79, v57}];
      free(v32);
      v56 = oSLogObject;
      SSFileLog();
    }

    goto LABEL_29;
  }

  v12 = 0;
LABEL_66:

  v53 = 1;
LABEL_68:

  v54 = *MEMORY[0x277D85DE8];
  return v53;
}

- (BOOL)processDictionary:(id)dictionary error:(id *)error
{
  v59 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  if (![(ISProtocolDataProvider *)self shouldProcessProtocol])
  {
    v12 = 0;
    v13 = 1;
    goto LABEL_46;
  }

  v7 = [objc_alloc(MEMORY[0x277D69A88]) initWithResponseDictionary:dictionaryCopy];
  errorCopy = error;
  v46 = dictionaryCopy;
  if (([v7 isSupportedProtocolVersion] & 1) == 0)
  {
    versionMismatchURL = [v7 versionMismatchURL];
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    if ([mEMORY[0x277D69B38] shouldLogToDisk])
    {
      v16 = shouldLog | 2;
    }

    else
    {
      v16 = shouldLog;
    }

    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v16;
    }

    else
    {
      v18 = v16 & 2;
    }

    if (v18)
    {
      v55 = 138412546;
      v56 = objc_opt_class();
      v57 = 2112;
      v58 = versionMismatchURL;
      v19 = v56;
      LODWORD(v41) = 22;
      v39 = &v55;
      v20 = _os_log_send_and_compose_impl();

      if (!v20)
      {
LABEL_18:

        [(ISDataProvider *)self setRedirectURL:versionMismatchURL];
        v11 = 0;
        v42 = versionMismatchURL != 0;
        goto LABEL_19;
      }

      oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v20 encoding:{4, &v55, v41}];
      free(v20);
      v39 = oSLogObject;
      SSFileLog();
    }

    goto LABEL_18;
  }

  v53 = 0;
  v8 = [(ISProtocolDataProvider *)self processDialogFromDictionary:dictionaryCopy error:&v53];
  v9 = v53;
  versionMismatchURL = v9;
  if (!v8)
  {
    v43 = v9;
    v42 = 0;
    goto LABEL_21;
  }

  [(ISProtocolDataProvider *)self _performActionsForResponse:v7];
  v52 = versionMismatchURL;
  v42 = [(ISProtocolDataProvider *)self _processFailureTypeFromDictionary:dictionaryCopy error:&v52];
  v11 = v52;
LABEL_19:

  v43 = v11;
LABEL_21:
  v44 = v7;
  [v7 pingURLs];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = v51 = 0u;
  v21 = [obj countByEnumeratingWithState:&v48 objects:v54 count:16];
  if (!v21)
  {
    goto LABEL_40;
  }

  v22 = v21;
  v23 = *v49;
  do
  {
    for (i = 0; i != v22; ++i)
    {
      if (*v49 != v23)
      {
        objc_enumerationMutation(obj);
      }

      v25 = *(*(&v48 + 1) + 8 * i);
      mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
      if (!mEMORY[0x277D69B38]2)
      {
        mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
      }

      shouldLog2 = [mEMORY[0x277D69B38]2 shouldLog];
      if ([mEMORY[0x277D69B38]2 shouldLogToDisk])
      {
        v28 = shouldLog2 | 2;
      }

      else
      {
        v28 = shouldLog2;
      }

      oSLogObject2 = [mEMORY[0x277D69B38]2 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
      {
        v30 = v28;
      }

      else
      {
        v30 = v28 & 2;
      }

      if (v30)
      {
        v31 = objc_opt_class();
        v55 = 138412546;
        v56 = v31;
        v57 = 2112;
        v58 = v25;
        v32 = v31;
        LODWORD(v41) = 22;
        v40 = &v55;
        v33 = _os_log_send_and_compose_impl();

        if (!v33)
        {
          goto LABEL_38;
        }

        oSLogObject2 = [MEMORY[0x277CCACA8] stringWithCString:v33 encoding:{4, &v55, v41}];
        free(v33);
        v40 = oSLogObject2;
        SSFileLog();
      }

LABEL_38:
      v34 = +[ISOperationQueue mainQueue];
      v35 = [ISStoreURLOperation pingOperationWithUrl:v25];
      [v34 addOperation:v35];
    }

    v22 = [obj countByEnumeratingWithState:&v48 objects:v54 count:16];
  }

  while (v22);
LABEL_40:

  v13 = v42;
  if (errorCopy)
  {
    v36 = v42;
  }

  else
  {
    v36 = 1;
  }

  if (v36)
  {
    dictionaryCopy = v46;
    v12 = v43;
  }

  else
  {
    v12 = v43;
    v13 = 0;
    *errorCopy = v12;
    dictionaryCopy = v46;
  }

LABEL_46:

  v37 = *MEMORY[0x277D85DE8];
  return v13;
}

- (BOOL)shouldProcessTouchIDDialogs
{
  biometricAuthenticationContext = [(ISDataProvider *)self biometricAuthenticationContext];
  v3 = biometricAuthenticationContext != 0;

  return v3;
}

- (BOOL)parseData:(id)data returningError:(id *)error
{
  v49 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  contentType = [(ISDataProvider *)self contentType];
  v8 = contentType;
  v9 = contentType != 0;
  if (contentType && [contentType rangeOfString:@"application/json" options:1] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = 0;
    mEMORY[0x277D69B38]3 = 0;
  }

  else
  {
    v44 = 0;
    v10 = [MEMORY[0x277CCAAA0] JSONObjectWithData:dataCopy options:0 error:&v44];
    mEMORY[0x277D69B38]3 = v44;
    if (v9)
    {
      goto LABEL_8;
    }
  }

  if (!v10)
  {
    if (dataCopy)
    {
      v43 = 0;
      v10 = [MEMORY[0x277CCAC58] propertyListWithData:dataCopy options:0 format:0 error:&v43];
      v12 = v43;

      mEMORY[0x277D69B38]3 = v12;
      goto LABEL_8;
    }

    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    if ([mEMORY[0x277D69B38] shouldLogToDisk])
    {
      v24 = shouldLog | 2;
    }

    else
    {
      v24 = shouldLog;
    }

    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v24 &= 2u;
    }

    if (v24)
    {
      v26 = objc_opt_class();
      v45 = 138412290;
      v46 = v26;
      v27 = v26;
      LODWORD(v41) = 12;
      v40 = &v45;
      v28 = _os_log_send_and_compose_impl();

      if (!v28)
      {
LABEL_33:

LABEL_34:
        mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
        if (!mEMORY[0x277D69B38]2)
        {
          mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
        }

        shouldLog2 = [mEMORY[0x277D69B38]2 shouldLog];
        if ([mEMORY[0x277D69B38]2 shouldLogToDisk])
        {
          v31 = shouldLog2 | 2;
        }

        else
        {
          v31 = shouldLog2;
        }

        oSLogObject2 = [mEMORY[0x277D69B38]2 OSLogObject];
        if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
        {
          v31 &= 2u;
        }

        if (v31)
        {
          v33 = objc_opt_class();
          v45 = 138412546;
          v46 = v33;
          v47 = 2112;
          v48 = mEMORY[0x277D69B38]3;
          v34 = v33;
          LODWORD(v41) = 22;
          v35 = _os_log_send_and_compose_impl();

          if (!v35)
          {
LABEL_45:

            v36 = *MEMORY[0x277D6A110];
            v14 = SSError();
            v10 = 0;
            goto LABEL_46;
          }

          oSLogObject2 = [MEMORY[0x277CCACA8] stringWithCString:v35 encoding:{4, &v45, v41}];
          free(v35);
          SSFileLog();
        }

        goto LABEL_45;
      }

      oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v28 encoding:{4, &v45, v41}];
      free(v28);
      v40 = oSLogObject;
      SSFileLog();
    }

    goto LABEL_33;
  }

LABEL_8:
  if (!v10)
  {
    goto LABEL_34;
  }

  v42 = mEMORY[0x277D69B38]3;
  v13 = [(ISProtocolDataProvider *)self processDictionary:v10 error:&v42];
  v14 = v42;

  if (v13)
  {
    [(ISDataProvider *)self setOutput:v10];
    v15 = 1;
    goto LABEL_49;
  }

  mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!mEMORY[0x277D69B38]3)
  {
    mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog3 = [mEMORY[0x277D69B38]3 shouldLog];
  if ([mEMORY[0x277D69B38]3 shouldLogToDisk])
  {
    v17 = shouldLog3 | 2;
  }

  else
  {
    v17 = shouldLog3;
  }

  oSLogObject3 = [mEMORY[0x277D69B38]3 OSLogObject];
  if (!os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
  {
    v17 &= 2u;
  }

  if (v17)
  {
    v19 = objc_opt_class();
    v45 = 138412546;
    v46 = v19;
    v47 = 2112;
    v48 = v14;
    v20 = v19;
    LODWORD(v41) = 22;
    v21 = _os_log_send_and_compose_impl();

    if (!v21)
    {
      goto LABEL_46;
    }

    oSLogObject3 = [MEMORY[0x277CCACA8] stringWithCString:v21 encoding:{4, &v45, v41}];
    free(v21);
    SSFileLog();
  }

LABEL_46:
  [(ISDataProvider *)self setOutput:v10];
  if (error)
  {
    v37 = v14;
    v15 = 0;
    *error = v14;
  }

  else
  {
    v15 = 0;
  }

LABEL_49:

  v38 = *MEMORY[0x277D85DE8];
  return v15;
}

- (void)_presentDialog:(id)dialog
{
  dialogCopy = dialog;
  if ((SSIsDaemon() & 1) != 0 || [(ISProtocolDataProvider *)self shouldProcessDialogsOutsideDaemon])
  {
    defaultCenter = +[ISOperationQueue mainQueue];
    v5 = [ISDialogOperation operationWithDialog:dialogCopy];
    [defaultCenter addOperation:v5];
  }

  else
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"ISDialogReceivedNotification" object:dialogCopy];
  }
}

- (void)_checkDownloadQueues
{
  v11 = *MEMORY[0x277D85DE8];
  if ([(ISProtocolDataProvider *)self shouldTriggerDownloads])
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    if ([mEMORY[0x277D69B38] shouldLogToDisk])
    {
      v4 = shouldLog | 2;
    }

    else
    {
      v4 = shouldLog;
    }

    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v4 &= 2u;
    }

    if (v4)
    {
      LODWORD(v10) = 138412290;
      *(&v10 + 4) = objc_opt_class();
      v6 = *(&v10 + 4);
      LODWORD(v9) = 12;
      v7 = _os_log_send_and_compose_impl();

      if (!v7)
      {
LABEL_13:

        [MEMORY[0x277D69AB8] _triggerDownloads];
        goto LABEL_14;
      }

      oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v7 encoding:{4, &v10, v9, v10}];
      free(v7);
      SSFileLog();
    }

    goto LABEL_13;
  }

LABEL_14:
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_checkBiometricFailureForResponse:(id)response
{
  v57 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D69B38];
  responseCopy = response;
  sharediTunesStoreConfig = [v4 sharediTunesStoreConfig];
  if (!sharediTunesStoreConfig)
  {
    sharediTunesStoreConfig = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog = [sharediTunesStoreConfig shouldLog];
  if ([sharediTunesStoreConfig shouldLogToDisk])
  {
    v8 = shouldLog | 2;
  }

  else
  {
    v8 = shouldLog;
  }

  oSLogObject = [sharediTunesStoreConfig OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
  {
    v8 &= 2u;
  }

  if (v8)
  {
    *v56 = 138543362;
    *&v56[4] = objc_opt_class();
    v10 = *&v56[4];
    LODWORD(v55) = 12;
    v53 = v56;
    v11 = _os_log_send_and_compose_impl();

    if (!v11)
    {
      goto LABEL_12;
    }

    oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v11 encoding:{4, v56, v55, *v56}];
    free(v11);
    v53 = oSLogObject;
    SSFileLog();
  }

LABEL_12:
  v12 = [responseCopy objectForKeyedSubscript:@"dialog"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [v12 objectForKeyedSubscript:@"okButtonAction"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [v13 objectForKeyedSubscript:@"buyParams"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = [MEMORY[0x277CBEBC0] copyDictionaryForQueryString:v14 unescapedValues:1];
        v16 = [v15 objectForKeyedSubscript:@"hasFailedTouchIDChallenge"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          lowercaseString = [v16 lowercaseString];
          v18 = [lowercaseString isEqualToString:@"true"];
        }

        else
        {
          v18 = 0;
        }
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!mEMORY[0x277D69B38])
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog2 = [mEMORY[0x277D69B38] shouldLog];
  if ([mEMORY[0x277D69B38] shouldLogToDisk])
  {
    v21 = shouldLog2 | 2;
  }

  else
  {
    v21 = shouldLog2;
  }

  oSLogObject2 = [mEMORY[0x277D69B38] OSLogObject];
  if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
  {
    v21 &= 2u;
  }

  if (v21)
  {
    v23 = objc_opt_class();
    v24 = MEMORY[0x277CCABB0];
    v25 = v23;
    v26 = [v24 numberWithBool:v18];
    *v56 = 138543618;
    *&v56[4] = v23;
    *&v56[12] = 2114;
    *&v56[14] = v26;
    LODWORD(v55) = 22;
    v54 = v56;
    v27 = _os_log_send_and_compose_impl();

    if (!v27)
    {
      goto LABEL_35;
    }

    oSLogObject2 = [MEMORY[0x277CCACA8] stringWithCString:v27 encoding:{4, v56, v55}];
    free(v27);
    v54 = oSLogObject2;
    SSFileLog();
  }

LABEL_35:
  if (v18)
  {
    defaultStore = [MEMORY[0x277D69A20] defaultStore];
    activeAccount = [defaultStore activeAccount];

    biometricAuthenticationContext = [(ISDataProvider *)self biometricAuthenticationContext];
    accountName = [biometricAuthenticationContext accountName];

    if (accountName)
    {
      goto LABEL_49;
    }

    mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38]2)
    {
      mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog3 = [mEMORY[0x277D69B38]2 shouldLog];
    if ([mEMORY[0x277D69B38]2 shouldLogToDisk])
    {
      v34 = shouldLog3 | 2;
    }

    else
    {
      v34 = shouldLog3;
    }

    oSLogObject3 = [mEMORY[0x277D69B38]2 OSLogObject];
    if (!os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEBUG))
    {
      v34 &= 2u;
    }

    if (v34)
    {
      v36 = objc_opt_class();
      *v56 = 138543362;
      *&v56[4] = v36;
      v37 = v36;
      LODWORD(v55) = 12;
      v54 = v56;
      v38 = _os_log_send_and_compose_impl();

      if (!v38)
      {
LABEL_48:

        biometricAuthenticationContext2 = [(ISDataProvider *)self biometricAuthenticationContext];
        accountName2 = [activeAccount accountName];
        [biometricAuthenticationContext2 setAccountName:accountName2];

LABEL_49:
        biometricAuthenticationContext3 = [(ISDataProvider *)self biometricAuthenticationContext];
        accountIdentifier = [biometricAuthenticationContext3 accountIdentifier];

        if (accountIdentifier)
        {
LABEL_62:

          goto LABEL_63;
        }

        mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
        if (!mEMORY[0x277D69B38]3)
        {
          mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharedConfig];
        }

        shouldLog4 = [mEMORY[0x277D69B38]3 shouldLog];
        if ([mEMORY[0x277D69B38]3 shouldLogToDisk])
        {
          v45 = shouldLog4 | 2;
        }

        else
        {
          v45 = shouldLog4;
        }

        oSLogObject4 = [mEMORY[0x277D69B38]3 OSLogObject];
        if (!os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEBUG))
        {
          v45 &= 2u;
        }

        if (v45)
        {
          v47 = objc_opt_class();
          *v56 = 138543362;
          *&v56[4] = v47;
          v48 = v47;
          LODWORD(v55) = 12;
          v49 = _os_log_send_and_compose_impl();

          if (!v49)
          {
LABEL_61:

            biometricAuthenticationContext4 = [(ISDataProvider *)self biometricAuthenticationContext];
            uniqueIdentifier = [activeAccount uniqueIdentifier];
            [biometricAuthenticationContext4 setAccountIdentifier:uniqueIdentifier];

            goto LABEL_62;
          }

          oSLogObject4 = [MEMORY[0x277CCACA8] stringWithCString:v49 encoding:{4, v56, v55}];
          free(v49);
          SSFileLog();
        }

        goto LABEL_61;
      }

      oSLogObject3 = [MEMORY[0x277CCACA8] stringWithCString:v38 encoding:{4, v56, v55}];
      free(v38);
      v54 = oSLogObject3;
      SSFileLog();
    }

    goto LABEL_48;
  }

LABEL_63:

  v52 = *MEMORY[0x277D85DE8];
}

- (void)_checkInAppPurchaseQueueForAction:(id)action
{
  v25 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  v5 = objc_alloc_init(MEMORY[0x277D69C90]);
  [v5 setBagType:{objc_msgSend(actionCopy, "URLBagType")}];
  authenticationContext = [(ISDataProvider *)self authenticationContext];
  requiredUniqueIdentifier = [authenticationContext requiredUniqueIdentifier];
  [v5 setUserIdentifier:requiredUniqueIdentifier];

  mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!mEMORY[0x277D69B38])
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog = [mEMORY[0x277D69B38] shouldLog];
  if ([mEMORY[0x277D69B38] shouldLogToDisk])
  {
    v10 = shouldLog | 2;
  }

  else
  {
    v10 = shouldLog;
  }

  oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
  {
    v10 &= 2u;
  }

  if (!v10)
  {
    goto LABEL_11;
  }

  v12 = objc_opt_class();
  v13 = v12;
  bagType = [v5 bagType];
  [actionCopy clientIdentifier];
  v19 = 138412802;
  v20 = v12;
  v21 = 2048;
  v22 = bagType;
  v24 = v23 = 2112;
  LODWORD(v18) = 32;
  v15 = _os_log_send_and_compose_impl();

  if (v15)
  {
    oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v15 encoding:{4, &v19, v18}];
    free(v15);
    SSFileLog();
LABEL_11:
  }

  clientIdentifier = [actionCopy clientIdentifier];
  SSCheckInAppPurchaseQueue();

  v17 = *MEMORY[0x277D85DE8];
}

- (id)_metricsDictionaryForResponse:(id)response
{
  responseDictionary = [response responseDictionary];
  v4 = [responseDictionary objectForKey:@"metrics"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_performActionsForResponse:(id)response
{
  v124 = *MEMORY[0x277D85DE8];
  actions = [response actions];
  v5 = 0x277D69000uLL;
  if (![actions count])
  {
    goto LABEL_14;
  }

  mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
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
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
  {
    v8 &= 2u;
  }

  if (!v8)
  {
    goto LABEL_12;
  }

  v117 = 138412546;
  v118 = objc_opt_class();
  v119 = 2112;
  v120 = actions;
  v10 = v118;
  LODWORD(v90) = 22;
  v88 = &v117;
  v11 = _os_log_send_and_compose_impl();

  if (v11)
  {
    oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v11 encoding:{4, &v117, v90}];
    free(v11);
    v88 = oSLogObject;
    SSFileLog();
LABEL_12:
  }

LABEL_14:
  v115 = 0u;
  v116 = 0u;
  v113 = 0u;
  v114 = 0u;
  v12 = actions;
  v13 = [v12 countByEnumeratingWithState:&v113 objects:v123 count:16];
  if (!v13)
  {
    goto LABEL_122;
  }

  v14 = v13;
  v15 = *v114;
  v108 = *MEMORY[0x277D6A530];
  v104 = *MEMORY[0x277D6A538];
  v101 = *MEMORY[0x277D6A540];
  name = *MEMORY[0x277D6A6F0];
  v110 = *MEMORY[0x277D6A548];
  v107 = *MEMORY[0x277D6A550];
  v103 = *MEMORY[0x277D6A558];
  v99 = *MEMORY[0x277D6A560];
  v98 = *MEMORY[0x277D6A568];
  v16 = *MEMORY[0x277D6A520];
  v93 = *MEMORY[0x277D6A528];
  v102 = v12;
  v105 = *v114;
  v106 = *MEMORY[0x277D6A520];
  do
  {
    v17 = 0;
    v109 = v14;
    do
    {
      if (*v114 != v15)
      {
        objc_enumerationMutation(v12);
      }

      v18 = *(*(&v113 + 1) + 8 * v17);
      actionType = [v18 actionType];
      if ([actionType isEqualToString:v16])
      {
        [(ISProtocolDataProvider *)self _checkDownloadQueues];
        goto LABEL_58;
      }

      if (![actionType isEqualToString:v108])
      {
        if ([actionType isEqualToString:v104])
        {
          sharediTunesStoreConfig = [*(v5 + 2872) sharediTunesStoreConfig];
          if (!sharediTunesStoreConfig)
          {
            sharediTunesStoreConfig = [*(v5 + 2872) sharedConfig];
          }

          shouldLog2 = [sharediTunesStoreConfig shouldLog];
          if ([sharediTunesStoreConfig shouldLogToDisk])
          {
            shouldLog2 |= 2u;
          }

          oSLogObject2 = [sharediTunesStoreConfig OSLogObject];
          if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
          {
            shouldLog2 &= 2u;
          }

          if (shouldLog2)
          {
            v31 = objc_opt_class();
            v117 = 138412290;
            v118 = v31;
            v32 = v31;
            LODWORD(v90) = 12;
            v89 = &v117;
            v33 = _os_log_send_and_compose_impl();

            v15 = v105;
            if (v33)
            {
              oSLogObject2 = [MEMORY[0x277CCACA8] stringWithCString:v33 encoding:{4, &v117, v90}];
              free(v33);
              v89 = oSLogObject2;
              SSFileLog();
              goto LABEL_43;
            }
          }

          else
          {
LABEL_43:
          }

          DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
          CFNotificationCenterPostNotification(DarwinNotifyCenter, name, 0, 0, 1u);
          goto LABEL_57;
        }

        if (![actionType isEqualToString:v101])
        {
          goto LABEL_58;
        }

        sharediTunesStoreConfig2 = [*(v5 + 2872) sharediTunesStoreConfig];
        if (!sharediTunesStoreConfig2)
        {
          sharediTunesStoreConfig2 = [*(v5 + 2872) sharedConfig];
        }

        shouldLog3 = [sharediTunesStoreConfig2 shouldLog];
        if ([sharediTunesStoreConfig2 shouldLogToDisk])
        {
          shouldLog3 |= 2u;
        }

        oSLogObject3 = [sharediTunesStoreConfig2 OSLogObject];
        if (!os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEBUG))
        {
          shouldLog3 &= 2u;
        }

        if (shouldLog3)
        {
          v38 = objc_opt_class();
          v39 = v38;
          v40 = [v18 URL];
          v117 = 138412546;
          v118 = v38;
          v119 = 2112;
          v120 = v40;
          LODWORD(v90) = 22;
          v89 = &v117;
          v41 = _os_log_send_and_compose_impl();

          v12 = v102;
          v5 = 0x277D69000uLL;

          if (v41)
          {
            oSLogObject3 = [MEMORY[0x277CCACA8] stringWithCString:v41 encoding:{4, &v117, v90}];
            free(v41);
            v89 = oSLogObject3;
            SSFileLog();
            goto LABEL_55;
          }
        }

        else
        {
LABEL_55:
        }

        v42 = [v18 URL];
        v43 = [ISOpenURLRequest openURLRequestWithURL:v42];

        [v43 setITunesStoreURL:0];
        v44 = [[ISOpenURLOperation alloc] initWithOpenURLRequest:v43];
        v45 = +[ISOperationQueue mainQueue];
        [v45 addOperation:v44];

        v15 = v105;
        goto LABEL_57;
      }

      sharediTunesStoreConfig3 = [*(v5 + 2872) sharediTunesStoreConfig];
      if (!sharediTunesStoreConfig3)
      {
        sharediTunesStoreConfig3 = [*(v5 + 2872) sharedConfig];
      }

      shouldLog4 = [sharediTunesStoreConfig3 shouldLog];
      if ([sharediTunesStoreConfig3 shouldLogToDisk])
      {
        shouldLog4 |= 2u;
      }

      oSLogObject4 = [sharediTunesStoreConfig3 OSLogObject];
      if (!os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
      {
        shouldLog4 &= 2u;
      }

      if (!shouldLog4)
      {
        goto LABEL_31;
      }

      v23 = objc_opt_class();
      v24 = v23;
      v25 = [v18 URL];
      v117 = 138412546;
      v118 = v23;
      v12 = v102;
      v119 = 2112;
      v120 = v25;
      LODWORD(v90) = 22;
      v89 = &v117;
      v26 = _os_log_send_and_compose_impl();

      v5 = 0x277D69000;
      v15 = v105;

      if (v26)
      {
        oSLogObject4 = [MEMORY[0x277CCACA8] stringWithCString:v26 encoding:{4, &v117, v90}];
        free(v26);
        v89 = oSLogObject4;
        SSFileLog();
LABEL_31:
      }

      v27 = [v18 URL];
      [(ISDataProvider *)self setRedirectURL:v27];

LABEL_57:
      v14 = v109;
      v16 = v106;
LABEL_58:
      if ([actionType isEqualToString:{v110, v89}])
      {
        [(ISProtocolDataProvider *)self _refreshSubscriptionStatus];
        goto LABEL_64;
      }

      if ([actionType isEqualToString:v107])
      {
        [MEMORY[0x277D69AB8] retryAllRestoreDownloads];
        goto LABEL_64;
      }

      if ([actionType isEqualToString:v103])
      {
        footerSection = [v18 footerSection];
        [(ISProtocolDataProvider *)self _selectFooterSection:footerSection];

        goto LABEL_64;
      }

      if ([actionType isEqualToString:v99])
      {
        if (![(ISProtocolDataProvider *)self shouldProcessAccount])
        {
          goto LABEL_64;
        }

        account = [v18 account];
        creditsString = [v18 creditsString];
        [account setCreditsString:creditsString];

        defaultStore = [MEMORY[0x277D69A20] defaultStore];
        v112 = 0;
        [defaultStore saveAccount:account verifyCredentials:0 error:&v112];
        v50 = v112;

        if (v50)
        {
          sharedAccountsConfig = [*(v5 + 2872) sharedAccountsConfig];
          if (!sharedAccountsConfig)
          {
            sharedAccountsConfig = [*(v5 + 2872) sharedConfig];
          }

          shouldLog5 = [sharedAccountsConfig shouldLog];
          if ([sharedAccountsConfig shouldLogToDisk])
          {
            shouldLog5 |= 2u;
          }

          oSLogObject5 = [sharedAccountsConfig OSLogObject];
          if (!os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_ERROR))
          {
            shouldLog5 &= 2u;
          }

          if (shouldLog5)
          {
            v54 = objc_opt_class();
            v94 = v54;
            accountName = [account accountName];
            SSHashIfNeeded();
            v56 = v96 = v50;
            v117 = 138543618;
            v118 = v54;
            v15 = v105;
            v119 = 2114;
            v120 = v56;
            LODWORD(v90) = 22;
            v88 = &v117;
            v57 = _os_log_send_and_compose_impl();

            v5 = 0x277D69000;
            v50 = v96;

            if (v57)
            {
              oSLogObject5 = [MEMORY[0x277CCACA8] stringWithCString:v57 encoding:{4, &v117, v90}];
              free(v57);
              v88 = oSLogObject5;
              SSFileLog();
              goto LABEL_78;
            }
          }

          else
          {
LABEL_78:
          }

          v12 = v102;
          v14 = v109;
        }

        v16 = v106;
        goto LABEL_64;
      }

      if ([actionType isEqualToString:v98])
      {
        if (![(ISProtocolDataProvider *)self shouldProcessAccount])
        {
          goto LABEL_64;
        }

        account2 = [v18 account];
        [account2 setActive:1];
        sharedAccountsConfig2 = [*(v5 + 2872) sharedAccountsConfig];
        if (!sharedAccountsConfig2)
        {
          sharedAccountsConfig2 = [*(v5 + 2872) sharedConfig];
        }

        shouldLog6 = [sharedAccountsConfig2 shouldLog];
        if ([sharedAccountsConfig2 shouldLogToDisk])
        {
          shouldLog6 |= 2u;
        }

        oSLogObject6 = [sharedAccountsConfig2 OSLogObject];
        if (os_log_type_enabled(oSLogObject6, OS_LOG_TYPE_DEFAULT))
        {
          v62 = shouldLog6;
        }

        else
        {
          v62 = shouldLog6 & 2;
        }

        v97 = account2;
        if (v62)
        {
          v63 = objc_opt_class();
          v64 = v63;
          accountName2 = [account2 accountName];
          v66 = SSHashIfNeeded();
          v117 = 138543618;
          v118 = v63;
          v119 = 2114;
          v120 = v66;
          LODWORD(v90) = 22;
          v88 = &v117;
          v67 = _os_log_send_and_compose_impl();

          v5 = 0x277D69000uLL;
          account2 = v97;

          if (v67)
          {
            oSLogObject6 = [MEMORY[0x277CCACA8] stringWithCString:v67 encoding:{4, &v117, v90}];
            free(v67);
            v88 = oSLogObject6;
            SSFileLog();
            goto LABEL_93;
          }
        }

        else
        {
LABEL_93:
        }

        defaultStore2 = [MEMORY[0x277D69A20] defaultStore];
        v111 = 0;
        v69 = [defaultStore2 saveAccount:account2 verifyCredentials:0 error:&v111];
        v95 = v111;

        sharedAccountsConfig3 = [*(v5 + 2872) sharedAccountsConfig];
        sharedConfig = sharedAccountsConfig3;
        if (v69)
        {
          if (!sharedAccountsConfig3)
          {
            sharedConfig = [*(v5 + 2872) sharedConfig];
          }

          shouldLog7 = [sharedConfig shouldLog];
          if ([sharedConfig shouldLogToDisk])
          {
            shouldLog7 |= 2u;
          }

          oSLogObject7 = [sharedConfig OSLogObject];
          if (os_log_type_enabled(oSLogObject7, OS_LOG_TYPE_INFO))
          {
            v74 = shouldLog7;
          }

          else
          {
            v74 = shouldLog7 & 2;
          }

          if (v74)
          {
            v75 = objc_opt_class();
            v76 = v75;
            accountName3 = [account2 accountName];
            v78 = SSHashIfNeeded();
            v117 = 138543618;
            v118 = v75;
            v119 = 2114;
            v120 = v78;
            LODWORD(v90) = 22;
            v88 = &v117;
            v79 = _os_log_send_and_compose_impl();

            goto LABEL_115;
          }

LABEL_117:
          v12 = v102;
          v15 = v105;
LABEL_118:
          v14 = v109;
        }

        else
        {
          if (!sharedAccountsConfig3)
          {
            sharedConfig = [*(v5 + 2872) sharedConfig];
          }

          shouldLog8 = [sharedConfig shouldLog];
          if ([sharedConfig shouldLogToDisk])
          {
            shouldLog8 |= 2u;
          }

          oSLogObject7 = [sharedConfig OSLogObject];
          if (os_log_type_enabled(oSLogObject7, OS_LOG_TYPE_ERROR))
          {
            v81 = shouldLog8;
          }

          else
          {
            v81 = shouldLog8 & 2;
          }

          if (!v81)
          {
            goto LABEL_117;
          }

          v82 = objc_opt_class();
          v92 = v82;
          accountName4 = [account2 accountName];
          v83 = SSHashIfNeeded();
          v84 = [v95 description];
          v85 = SSHashIfNeeded();
          v117 = 138543874;
          v118 = v82;
          v119 = 2114;
          v120 = v83;
          v121 = 2114;
          v122 = v85;
          LODWORD(v90) = 32;
          v88 = &v117;
          v79 = _os_log_send_and_compose_impl();

LABEL_115:
          v5 = 0x277D69000;
          if (v79)
          {
            v12 = v102;
            v15 = v105;
            oSLogObject7 = [MEMORY[0x277CCACA8] stringWithCString:v79 encoding:{4, &v117, v90}];
            free(v79);
            v88 = oSLogObject7;
            SSFileLog();
            goto LABEL_118;
          }

          v12 = v102;
          v15 = v105;
          v14 = v109;
        }

        v16 = v106;

        goto LABEL_64;
      }

      if ([actionType isEqualToString:v93])
      {
        [(ISProtocolDataProvider *)self _checkInAppPurchaseQueueForAction:v18];
      }

LABEL_64:

      ++v17;
    }

    while (v14 != v17);
    v86 = [v12 countByEnumeratingWithState:&v113 objects:v123 count:16];
    v14 = v86;
  }

  while (v86);
LABEL_122:

  v87 = *MEMORY[0x277D85DE8];
}

- (BOOL)_processFailureTypeFromDictionary:(id)dictionary error:(id *)error
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = [dictionary objectForKey:@"failureType"];
  if (objc_opt_respondsToSelector())
  {
    intValue = [v5 intValue];
    if ((intValue - 1001) <= 3 && intValue != 1002)
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedAccountsAuthenticationConfig];
      mEMORY[0x277D69B38]2 = mEMORY[0x277D69B38];
      if (!mEMORY[0x277D69B38])
      {
        mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
      }

      shouldLog = [mEMORY[0x277D69B38]2 shouldLog];
      if ([mEMORY[0x277D69B38]2 shouldLogToDisk])
      {
        v24 = shouldLog | 2;
      }

      else
      {
        v24 = shouldLog;
      }

      oSLogObject = [mEMORY[0x277D69B38]2 OSLogObject];
      if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        v24 &= 2u;
      }

      if (v24)
      {
        v26 = objc_opt_class();
        v27 = v26;
        v31 = 138543618;
        v32 = v26;
        v33 = 1024;
        intValue2 = [v5 intValue];
        LODWORD(v30) = 18;
        v28 = _os_log_send_and_compose_impl();

        if (!v28)
        {
LABEL_35:

          v29 = *MEMORY[0x277D6A5A8];
          [v5 intValue];
          v15 = SSError();
LABEL_36:
          v16 = v15;
          v17 = 0;
          if (!error)
          {
            goto LABEL_23;
          }

          goto LABEL_22;
        }

        oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v28 encoding:{4, &v31, v30}];
        free(v28);
        SSFileLog();
      }

      goto LABEL_35;
    }

    if (intValue == 2034 || intValue == 2002)
    {
      mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharedAccountsAuthenticationConfig];
      if (!mEMORY[0x277D69B38]3)
      {
        mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharedConfig];
      }

      shouldLog2 = [mEMORY[0x277D69B38]3 shouldLog];
      if ([mEMORY[0x277D69B38]3 shouldLogToDisk])
      {
        v10 = shouldLog2 | 2;
      }

      else
      {
        v10 = shouldLog2;
      }

      oSLogObject2 = [mEMORY[0x277D69B38]3 OSLogObject];
      if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
      {
        v10 &= 2u;
      }

      if (v10)
      {
        v12 = objc_opt_class();
        v13 = v12;
        v31 = 138543618;
        v32 = v12;
        v33 = 1024;
        intValue2 = [v5 intValue];
        LODWORD(v30) = 18;
        v14 = _os_log_send_and_compose_impl();

        if (!v14)
        {
LABEL_20:

          v15 = ISError(18, 0, 0);
          goto LABEL_36;
        }

        oSLogObject2 = [MEMORY[0x277CCACA8] stringWithCString:v14 encoding:{4, &v31, v30}];
        free(v14);
        SSFileLog();
      }

      goto LABEL_20;
    }
  }

  v16 = 0;
  v17 = 1;
  if (error)
  {
LABEL_22:
    v18 = v16;
    *error = v16;
  }

LABEL_23:

  v19 = *MEMORY[0x277D85DE8];
  return v17;
}

- (void)_refreshSubscriptionStatus
{
  if ((SSIsDaemon() & 1) == 0)
  {
    v2 = objc_alloc(MEMORY[0x277CBEAC0]);
    v4 = [v2 initWithObjectsAndKeys:{MEMORY[0x277CBEC28], *MEMORY[0x277D6A638], MEMORY[0x277CBEC38], *MEMORY[0x277D6A640], 0}];
    mEMORY[0x277D69D18] = [MEMORY[0x277D69D18] sharedCoordinator];
    [mEMORY[0x277D69D18] getStatusWithOptions:v4 statusBlock:0];
  }
}

- (void)_selectFooterSection:(id)section
{
  v19 = *MEMORY[0x277D85DE8];
  sectionCopy = section;
  if ([(ISProtocolDataProvider *)self shouldPostFooterSectionChanged])
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
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v7 &= 2u;
    }

    if (v7)
    {
      v15 = 138412546;
      v16 = objc_opt_class();
      v17 = 2112;
      v18 = sectionCopy;
      v9 = v16;
      LODWORD(v12) = 22;
      v10 = _os_log_send_and_compose_impl();

      if (!v10)
      {
LABEL_13:

        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __47__ISProtocolDataProvider__selectFooterSection___block_invoke;
        block[3] = &unk_27A670818;
        v14 = sectionCopy;
        dispatch_async(MEMORY[0x277D85CD0], block);

        goto LABEL_14;
      }

      oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v10 encoding:{4, &v15, v12}];
      free(v10);
      SSFileLog();
    }

    goto LABEL_13;
  }

LABEL_14:

  v11 = *MEMORY[0x277D85DE8];
}

void __47__ISProtocolDataProvider__selectFooterSection___block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  v2 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{*(a1 + 32), @"ISProtocolKeySection", 0}];
  [v3 postNotificationName:@"ISProtocolNotificationSelectFooterSection" object:0 userInfo:v2];
}

- (BOOL)_shouldAttemptPasswordPaymentSheetForError:(id)error
{
  errorCopy = error;
  v4 = ISWeakLinkedStringConstantForString("MobileActivationErrorDomain", 0x25);
  domain = [errorCopy domain];
  v6 = [domain isEqualToString:v4];

  domain2 = [errorCopy domain];
  if ([domain2 isEqualToString:*MEMORY[0x277D6A110]])
  {
    v8 = [errorCopy code] == 147;

    v6 |= v8;
  }

  else
  {
  }

  return v6 & 1;
}

- (BOOL)_shouldFailWithTokenErrorForDialog:(id)dialog dictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  contentType = [(ISDataProvider *)self contentType];
  v9 = [contentType rangeOfString:@"json" options:1];

  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_8;
  }

  v10 = [dictionaryCopy objectForKey:@"errorNumber"];
  if ((objc_opt_respondsToSelector() & 1) == 0 || [v10 integerValue] != 2055)
  {

LABEL_8:
    v14 = 0;
    v12 = 0;
    goto LABEL_9;
  }

  v11 = *MEMORY[0x277D6A110];
  v12 = SSError();

  if (error)
  {
    v13 = v12;
    *error = v12;
  }

  v14 = 1;
LABEL_9:

  return v14;
}

- (id)_touchIDDialogForResponse:(id)response
{
  responseCopy = response;
  v4 = [responseCopy actionsWithActionType:*MEMORY[0x277D6A578]];
  if ([v4 count])
  {
    v5 = [v4 objectAtIndex:0];
    dialog = [v5 dialog];

    v7 = [ISTouchIDDialog alloc];
    dialogDictionary = [dialog dialogDictionary];
    v9 = [(ISTouchIDDialog *)v7 initWithDialogDictionary:dialogDictionary];
  }

  else
  {
    v9 = 0;
  }

  v10 = [responseCopy actionsWithActionType:*MEMORY[0x277D6A570]];
  if ([v10 count])
  {
    v11 = [v10 objectAtIndex:0];
    dialog2 = [v11 dialog];

    if (v9)
    {
      message = [dialog2 message];
      if (message)
      {
        [(ISTouchIDDialog *)v9 setFallbackExplanation:message];
      }

      title = [dialog2 title];
      if (title)
      {
        [(ISTouchIDDialog *)v9 setFallbackMessage:title];
      }
    }
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v11.receiver = self;
  v11.super_class = ISProtocolDataProvider;
  v5 = [(ISDataProvider *)&v11 copyWithZone:?];
  v5[112] = [(ISProtocolDataProvider *)self shouldPostFooterSectionChanged];
  v5[113] = [(ISProtocolDataProvider *)self shouldProcessAccount];
  v5[114] = [(ISProtocolDataProvider *)self shouldProcessAuthenticationDialogs];
  v5[115] = [(ISProtocolDataProvider *)self shouldProcessDialogs];
  v5[117] = [(ISProtocolDataProvider *)self shouldProcessProtocol];
  v5[118] = [(ISProtocolDataProvider *)self shouldProcessTouchIDDialogs];
  v5[119] = [(ISProtocolDataProvider *)self shouldTriggerDownloads];
  v6 = [(SSBiometricAuthenticationContext *)self->_biometricAuthenticationContext copyWithZone:zone];
  v7 = *(v5 + 15);
  *(v5 + 15) = v6;

  v8 = [(NSString *)self->_presentingSceneIdentifier copyWithZone:zone];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  return v5;
}

@end