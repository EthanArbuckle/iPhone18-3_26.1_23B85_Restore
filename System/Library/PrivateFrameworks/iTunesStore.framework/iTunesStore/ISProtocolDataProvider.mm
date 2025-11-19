@interface ISProtocolDataProvider
- (BOOL)_processFailureTypeFromDictionary:(id)a3 error:(id *)a4;
- (BOOL)_shouldAttemptPasswordPaymentSheetForError:(id)a3;
- (BOOL)_shouldFailWithTokenErrorForDialog:(id)a3 dictionary:(id)a4 error:(id *)a5;
- (BOOL)parseData:(id)a3 returningError:(id *)a4;
- (BOOL)processDialogFromDictionary:(id)a3 error:(id *)a4;
- (BOOL)processDictionary:(id)a3 error:(id *)a4;
- (BOOL)shouldProcessTouchIDDialogs;
- (ISProtocolDataProvider)init;
- (id)_metricsDictionaryForResponse:(id)a3;
- (id)_touchIDDialogForResponse:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_checkBiometricFailureForResponse:(id)a3;
- (void)_checkDownloadQueues;
- (void)_checkInAppPurchaseQueueForAction:(id)a3;
- (void)_performActionsForResponse:(id)a3;
- (void)_presentDialog:(id)a3;
- (void)_refreshSubscriptionStatus;
- (void)_selectFooterSection:(id)a3;
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

- (BOOL)processDialogFromDictionary:(id)a3 error:(id *)a4
{
  v84 = *MEMORY[0x277D85DE8];
  v65 = a3;
  v6 = [(ISDataProvider *)self authenticationContext];
  v7 = [v6 mutableCopy];

  v8 = MEMORY[0x277D69A20];
  v9 = [(ISDataProvider *)self response];
  [v7 setAllowsSilentAuthentication:{objc_msgSend(v8, "URLResponseAllowsSilentAuthentication:", v9)}];

  LODWORD(v8) = [(ISProtocolDataProvider *)self shouldProcessAuthenticationDialogs];
  v69 = self;
  v62 = [(ISProtocolDataProvider *)self shouldProcessTouchIDDialogs];
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

  v68 = [objc_alloc(MEMORY[0x277D69A88]) initWithResponseDictionary:v65];
  [v68 actionsWithActionType:*MEMORY[0x277D6A570]];
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v11 = v78 = 0u;
  v67 = [v11 countByEnumeratingWithState:&v75 objects:v83 count:16];
  if (v67)
  {
    v58 = a4;
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
      v17 = [(ISProtocolDataProvider *)v69 _metricsDictionaryForResponse:v68, v56, v57];
      v18 = [MEMORY[0x277D69A60] dialogIdForMetricsDictionary:v17];
      v19 = [v16 dialog];
      v20 = [ISDialog alloc];
      v21 = [v19 dialogDictionary];
      v22 = [(ISDialog *)v20 initWithDialogDictionary:v21 authenticationContext:v7];

      v23 = [(ISDialog *)v22 paymentSheet];
      [v23 setDialogId:v18];

      v24 = [(ISDialog *)v22 paymentSheet];
      [v24 setPresentingSceneIdentifier:v69->_presentingSceneIdentifier];

      if (!v22)
      {
        v33 = 1;
LABEL_33:
        v12 = v15;
        goto LABEL_49;
      }

      v74 = v15;
      v25 = [(ISProtocolDataProvider *)v69 _shouldFailWithTokenErrorForDialog:v22 dictionary:v65 error:&v74];
      v12 = v74;

      if (v25)
      {
        break;
      }

      if ([(ISDialog *)v22 kind]!= 1)
      {
        if (v61)
        {
          [(ISProtocolDataProvider *)v69 _presentDialog:v22];
        }

LABEL_48:
        v33 = 1;
        goto LABEL_49;
      }

      if (!v62)
      {
        if (!v60)
        {
          goto LABEL_48;
        }

        v42 = [(ISDataProvider *)v69 biometricSessionDelegate];
        v43 = objc_opt_respondsToSelector();

        if (v43)
        {
          v44 = [(ISDataProvider *)v69 biometricSessionDelegate];
          [v44 sender:v69 didFallbackToPassword:1];
        }

        v70 = v12;
        v33 = [(ISDataProvider *)v69 runAuthorizationDialog:v22 error:&v70];
        v15 = v70;

        goto LABEL_33;
      }

      v34 = v69;
      v35 = [(ISProtocolDataProvider *)v69 _touchIDDialogForResponse:v68];
      v36 = [v35 paymentSheet];
      [v36 setDialogId:v18];

      v37 = [v35 paymentSheet];
      v38 = v35;
      [v37 setPresentingSceneIdentifier:v69->_presentingSceneIdentifier];

      [(ISProtocolDataProvider *)v69 _checkBiometricFailureForResponse:v65];
      v73 = v12;
      v39 = [(ISDataProvider *)v69 runTouchIDAuthorizationDialog:v35 fallbackDialog:v22 metricsDictionary:v17 error:&v73];
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

        v34 = v69;
        if (([(ISProtocolDataProvider *)v69 _shouldAttemptPasswordPaymentSheetForError:v40]& v60) == 1)
        {
          v71 = v40;
          v50 = [(ISDataProvider *)v69 runAuthorizationDialog:v22 error:&v71];
          v12 = v71;

          if (v50)
          {
LABEL_53:
            v46 = [(ISDataProvider *)v34 biometricAuthenticationContext];
            [v46 setDidFallbackToPassword:1];

            v47 = [(ISDataProvider *)v34 biometricSessionDelegate];
            v48 = objc_opt_respondsToSelector();

            if (v48)
            {
              v49 = [(ISDataProvider *)v69 biometricSessionDelegate];
              [v49 sender:v69 didFallbackToPassword:1];
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
        v45 = [(ISDataProvider *)v69 runAuthorizationDialog:v22 error:&v72];
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

        if (v58)
        {
          v52 = v12;
          v53 = 0;
          *v58 = v12;
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

    v26 = [MEMORY[0x277D69B38] sharedAccountsAuthenticationConfig];
    if (!v26)
    {
      v26 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v27 = [v26 shouldLog];
    if ([v26 shouldLogToDisk])
    {
      v28 = v27 | 2;
    }

    else
    {
      v28 = v27;
    }

    v29 = [v26 OSLogObject];
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
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

      v29 = [MEMORY[0x277CCACA8] stringWithCString:v32 encoding:{4, &v79, v57}];
      free(v32);
      v56 = v29;
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

- (BOOL)processDictionary:(id)a3 error:(id *)a4
{
  v59 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (![(ISProtocolDataProvider *)self shouldProcessProtocol])
  {
    v12 = 0;
    v13 = 1;
    goto LABEL_46;
  }

  v7 = [objc_alloc(MEMORY[0x277D69A88]) initWithResponseDictionary:v6];
  v45 = a4;
  v46 = v6;
  if (([v7 isSupportedProtocolVersion] & 1) == 0)
  {
    v10 = [v7 versionMismatchURL];
    v14 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!v14)
    {
      v14 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v15 = [v14 shouldLog];
    if ([v14 shouldLogToDisk])
    {
      v16 = v15 | 2;
    }

    else
    {
      v16 = v15;
    }

    v17 = [v14 OSLogObject];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
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
      v58 = v10;
      v19 = v56;
      LODWORD(v41) = 22;
      v39 = &v55;
      v20 = _os_log_send_and_compose_impl();

      if (!v20)
      {
LABEL_18:

        [(ISDataProvider *)self setRedirectURL:v10];
        v11 = 0;
        v42 = v10 != 0;
        goto LABEL_19;
      }

      v17 = [MEMORY[0x277CCACA8] stringWithCString:v20 encoding:{4, &v55, v41}];
      free(v20);
      v39 = v17;
      SSFileLog();
    }

    goto LABEL_18;
  }

  v53 = 0;
  v8 = [(ISProtocolDataProvider *)self processDialogFromDictionary:v6 error:&v53];
  v9 = v53;
  v10 = v9;
  if (!v8)
  {
    v43 = v9;
    v42 = 0;
    goto LABEL_21;
  }

  [(ISProtocolDataProvider *)self _performActionsForResponse:v7];
  v52 = v10;
  v42 = [(ISProtocolDataProvider *)self _processFailureTypeFromDictionary:v6 error:&v52];
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
      v26 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
      if (!v26)
      {
        v26 = [MEMORY[0x277D69B38] sharedConfig];
      }

      v27 = [v26 shouldLog];
      if ([v26 shouldLogToDisk])
      {
        v28 = v27 | 2;
      }

      else
      {
        v28 = v27;
      }

      v29 = [v26 OSLogObject];
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
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

        v29 = [MEMORY[0x277CCACA8] stringWithCString:v33 encoding:{4, &v55, v41}];
        free(v33);
        v40 = v29;
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
  if (v45)
  {
    v36 = v42;
  }

  else
  {
    v36 = 1;
  }

  if (v36)
  {
    v6 = v46;
    v12 = v43;
  }

  else
  {
    v12 = v43;
    v13 = 0;
    *v45 = v12;
    v6 = v46;
  }

LABEL_46:

  v37 = *MEMORY[0x277D85DE8];
  return v13;
}

- (BOOL)shouldProcessTouchIDDialogs
{
  v2 = [(ISDataProvider *)self biometricAuthenticationContext];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)parseData:(id)a3 returningError:(id *)a4
{
  v49 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(ISDataProvider *)self contentType];
  v8 = v7;
  v9 = v7 != 0;
  if (v7 && [v7 rangeOfString:@"application/json" options:1] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = 0;
    v11 = 0;
  }

  else
  {
    v44 = 0;
    v10 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v6 options:0 error:&v44];
    v11 = v44;
    if (v9)
    {
      goto LABEL_8;
    }
  }

  if (!v10)
  {
    if (v6)
    {
      v43 = 0;
      v10 = [MEMORY[0x277CCAC58] propertyListWithData:v6 options:0 format:0 error:&v43];
      v12 = v43;

      v11 = v12;
      goto LABEL_8;
    }

    v22 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!v22)
    {
      v22 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v23 = [v22 shouldLog];
    if ([v22 shouldLogToDisk])
    {
      v24 = v23 | 2;
    }

    else
    {
      v24 = v23;
    }

    v25 = [v22 OSLogObject];
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
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
        v29 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
        if (!v29)
        {
          v29 = [MEMORY[0x277D69B38] sharedConfig];
        }

        v30 = [v29 shouldLog];
        if ([v29 shouldLogToDisk])
        {
          v31 = v30 | 2;
        }

        else
        {
          v31 = v30;
        }

        v32 = [v29 OSLogObject];
        if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          v31 &= 2u;
        }

        if (v31)
        {
          v33 = objc_opt_class();
          v45 = 138412546;
          v46 = v33;
          v47 = 2112;
          v48 = v11;
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

          v32 = [MEMORY[0x277CCACA8] stringWithCString:v35 encoding:{4, &v45, v41}];
          free(v35);
          SSFileLog();
        }

        goto LABEL_45;
      }

      v25 = [MEMORY[0x277CCACA8] stringWithCString:v28 encoding:{4, &v45, v41}];
      free(v28);
      v40 = v25;
      SSFileLog();
    }

    goto LABEL_33;
  }

LABEL_8:
  if (!v10)
  {
    goto LABEL_34;
  }

  v42 = v11;
  v13 = [(ISProtocolDataProvider *)self processDictionary:v10 error:&v42];
  v14 = v42;

  if (v13)
  {
    [(ISDataProvider *)self setOutput:v10];
    v15 = 1;
    goto LABEL_49;
  }

  v11 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!v11)
  {
    v11 = [MEMORY[0x277D69B38] sharedConfig];
  }

  v16 = [v11 shouldLog];
  if ([v11 shouldLogToDisk])
  {
    v17 = v16 | 2;
  }

  else
  {
    v17 = v16;
  }

  v18 = [v11 OSLogObject];
  if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
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

    v18 = [MEMORY[0x277CCACA8] stringWithCString:v21 encoding:{4, &v45, v41}];
    free(v21);
    SSFileLog();
  }

LABEL_46:
  [(ISDataProvider *)self setOutput:v10];
  if (a4)
  {
    v37 = v14;
    v15 = 0;
    *a4 = v14;
  }

  else
  {
    v15 = 0;
  }

LABEL_49:

  v38 = *MEMORY[0x277D85DE8];
  return v15;
}

- (void)_presentDialog:(id)a3
{
  v6 = a3;
  if ((SSIsDaemon() & 1) != 0 || [(ISProtocolDataProvider *)self shouldProcessDialogsOutsideDaemon])
  {
    v4 = +[ISOperationQueue mainQueue];
    v5 = [ISDialogOperation operationWithDialog:v6];
    [v4 addOperation:v5];
  }

  else
  {
    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 postNotificationName:@"ISDialogReceivedNotification" object:v6];
  }
}

- (void)_checkDownloadQueues
{
  v11 = *MEMORY[0x277D85DE8];
  if ([(ISProtocolDataProvider *)self shouldTriggerDownloads])
  {
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

    v5 = [v2 OSLogObject];
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
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

      v5 = [MEMORY[0x277CCACA8] stringWithCString:v7 encoding:{4, &v10, v9, v10}];
      free(v7);
      SSFileLog();
    }

    goto LABEL_13;
  }

LABEL_14:
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_checkBiometricFailureForResponse:(id)a3
{
  v57 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D69B38];
  v5 = a3;
  v6 = [v4 sharediTunesStoreConfig];
  if (!v6)
  {
    v6 = [MEMORY[0x277D69B38] sharedConfig];
  }

  v7 = [v6 shouldLog];
  if ([v6 shouldLogToDisk])
  {
    v8 = v7 | 2;
  }

  else
  {
    v8 = v7;
  }

  v9 = [v6 OSLogObject];
  if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
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

    v9 = [MEMORY[0x277CCACA8] stringWithCString:v11 encoding:{4, v56, v55, *v56}];
    free(v11);
    v53 = v9;
    SSFileLog();
  }

LABEL_12:
  v12 = [v5 objectForKeyedSubscript:@"dialog"];

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
          v17 = [v16 lowercaseString];
          v18 = [v17 isEqualToString:@"true"];
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

  v19 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!v19)
  {
    v19 = [MEMORY[0x277D69B38] sharedConfig];
  }

  v20 = [v19 shouldLog];
  if ([v19 shouldLogToDisk])
  {
    v21 = v20 | 2;
  }

  else
  {
    v21 = v20;
  }

  v22 = [v19 OSLogObject];
  if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
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

    v22 = [MEMORY[0x277CCACA8] stringWithCString:v27 encoding:{4, v56, v55}];
    free(v27);
    v54 = v22;
    SSFileLog();
  }

LABEL_35:
  if (v18)
  {
    v28 = [MEMORY[0x277D69A20] defaultStore];
    v29 = [v28 activeAccount];

    v30 = [(ISDataProvider *)self biometricAuthenticationContext];
    v31 = [v30 accountName];

    if (v31)
    {
      goto LABEL_49;
    }

    v32 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!v32)
    {
      v32 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v33 = [v32 shouldLog];
    if ([v32 shouldLogToDisk])
    {
      v34 = v33 | 2;
    }

    else
    {
      v34 = v33;
    }

    v35 = [v32 OSLogObject];
    if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
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

        v39 = [(ISDataProvider *)self biometricAuthenticationContext];
        v40 = [v29 accountName];
        [v39 setAccountName:v40];

LABEL_49:
        v41 = [(ISDataProvider *)self biometricAuthenticationContext];
        v42 = [v41 accountIdentifier];

        if (v42)
        {
LABEL_62:

          goto LABEL_63;
        }

        v43 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
        if (!v43)
        {
          v43 = [MEMORY[0x277D69B38] sharedConfig];
        }

        v44 = [v43 shouldLog];
        if ([v43 shouldLogToDisk])
        {
          v45 = v44 | 2;
        }

        else
        {
          v45 = v44;
        }

        v46 = [v43 OSLogObject];
        if (!os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
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

            v50 = [(ISDataProvider *)self biometricAuthenticationContext];
            v51 = [v29 uniqueIdentifier];
            [v50 setAccountIdentifier:v51];

            goto LABEL_62;
          }

          v46 = [MEMORY[0x277CCACA8] stringWithCString:v49 encoding:{4, v56, v55}];
          free(v49);
          SSFileLog();
        }

        goto LABEL_61;
      }

      v35 = [MEMORY[0x277CCACA8] stringWithCString:v38 encoding:{4, v56, v55}];
      free(v38);
      v54 = v35;
      SSFileLog();
    }

    goto LABEL_48;
  }

LABEL_63:

  v52 = *MEMORY[0x277D85DE8];
}

- (void)_checkInAppPurchaseQueueForAction:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277D69C90]);
  [v5 setBagType:{objc_msgSend(v4, "URLBagType")}];
  v6 = [(ISDataProvider *)self authenticationContext];
  v7 = [v6 requiredUniqueIdentifier];
  [v5 setUserIdentifier:v7];

  v8 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!v8)
  {
    v8 = [MEMORY[0x277D69B38] sharedConfig];
  }

  v9 = [v8 shouldLog];
  if ([v8 shouldLogToDisk])
  {
    v10 = v9 | 2;
  }

  else
  {
    v10 = v9;
  }

  v11 = [v8 OSLogObject];
  if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v10 &= 2u;
  }

  if (!v10)
  {
    goto LABEL_11;
  }

  v12 = objc_opt_class();
  v13 = v12;
  v14 = [v5 bagType];
  [v4 clientIdentifier];
  v19 = 138412802;
  v20 = v12;
  v21 = 2048;
  v22 = v14;
  v24 = v23 = 2112;
  LODWORD(v18) = 32;
  v15 = _os_log_send_and_compose_impl();

  if (v15)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithCString:v15 encoding:{4, &v19, v18}];
    free(v15);
    SSFileLog();
LABEL_11:
  }

  v16 = [v4 clientIdentifier];
  SSCheckInAppPurchaseQueue();

  v17 = *MEMORY[0x277D85DE8];
}

- (id)_metricsDictionaryForResponse:(id)a3
{
  v3 = [a3 responseDictionary];
  v4 = [v3 objectForKey:@"metrics"];

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

- (void)_performActionsForResponse:(id)a3
{
  v124 = *MEMORY[0x277D85DE8];
  v4 = [a3 actions];
  v5 = 0x277D69000uLL;
  if (![v4 count])
  {
    goto LABEL_14;
  }

  v6 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!v6)
  {
    v6 = [MEMORY[0x277D69B38] sharedConfig];
  }

  v7 = [v6 shouldLog];
  if ([v6 shouldLogToDisk])
  {
    v8 = v7 | 2;
  }

  else
  {
    v8 = v7;
  }

  v9 = [v6 OSLogObject];
  if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
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
  v120 = v4;
  v10 = v118;
  LODWORD(v90) = 22;
  v88 = &v117;
  v11 = _os_log_send_and_compose_impl();

  if (v11)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithCString:v11 encoding:{4, &v117, v90}];
    free(v11);
    v88 = v9;
    SSFileLog();
LABEL_12:
  }

LABEL_14:
  v115 = 0u;
  v116 = 0u;
  v113 = 0u;
  v114 = 0u;
  v12 = v4;
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
      v19 = [v18 actionType];
      if ([v19 isEqualToString:v16])
      {
        [(ISProtocolDataProvider *)self _checkDownloadQueues];
        goto LABEL_58;
      }

      if (![v19 isEqualToString:v108])
      {
        if ([v19 isEqualToString:v104])
        {
          v28 = [*(v5 + 2872) sharediTunesStoreConfig];
          if (!v28)
          {
            v28 = [*(v5 + 2872) sharedConfig];
          }

          v29 = [v28 shouldLog];
          if ([v28 shouldLogToDisk])
          {
            v29 |= 2u;
          }

          v30 = [v28 OSLogObject];
          if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
          {
            v29 &= 2u;
          }

          if (v29)
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
              v30 = [MEMORY[0x277CCACA8] stringWithCString:v33 encoding:{4, &v117, v90}];
              free(v33);
              v89 = v30;
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

        if (![v19 isEqualToString:v101])
        {
          goto LABEL_58;
        }

        v35 = [*(v5 + 2872) sharediTunesStoreConfig];
        if (!v35)
        {
          v35 = [*(v5 + 2872) sharedConfig];
        }

        v36 = [v35 shouldLog];
        if ([v35 shouldLogToDisk])
        {
          v36 |= 2u;
        }

        v37 = [v35 OSLogObject];
        if (!os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
        {
          v36 &= 2u;
        }

        if (v36)
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
            v37 = [MEMORY[0x277CCACA8] stringWithCString:v41 encoding:{4, &v117, v90}];
            free(v41);
            v89 = v37;
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

      v20 = [*(v5 + 2872) sharediTunesStoreConfig];
      if (!v20)
      {
        v20 = [*(v5 + 2872) sharedConfig];
      }

      v21 = [v20 shouldLog];
      if ([v20 shouldLogToDisk])
      {
        v21 |= 2u;
      }

      v22 = [v20 OSLogObject];
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v21 &= 2u;
      }

      if (!v21)
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
        v22 = [MEMORY[0x277CCACA8] stringWithCString:v26 encoding:{4, &v117, v90}];
        free(v26);
        v89 = v22;
        SSFileLog();
LABEL_31:
      }

      v27 = [v18 URL];
      [(ISDataProvider *)self setRedirectURL:v27];

LABEL_57:
      v14 = v109;
      v16 = v106;
LABEL_58:
      if ([v19 isEqualToString:{v110, v89}])
      {
        [(ISProtocolDataProvider *)self _refreshSubscriptionStatus];
        goto LABEL_64;
      }

      if ([v19 isEqualToString:v107])
      {
        [MEMORY[0x277D69AB8] retryAllRestoreDownloads];
        goto LABEL_64;
      }

      if ([v19 isEqualToString:v103])
      {
        v46 = [v18 footerSection];
        [(ISProtocolDataProvider *)self _selectFooterSection:v46];

        goto LABEL_64;
      }

      if ([v19 isEqualToString:v99])
      {
        if (![(ISProtocolDataProvider *)self shouldProcessAccount])
        {
          goto LABEL_64;
        }

        v47 = [v18 account];
        v48 = [v18 creditsString];
        [v47 setCreditsString:v48];

        v49 = [MEMORY[0x277D69A20] defaultStore];
        v112 = 0;
        [v49 saveAccount:v47 verifyCredentials:0 error:&v112];
        v50 = v112;

        if (v50)
        {
          v51 = [*(v5 + 2872) sharedAccountsConfig];
          if (!v51)
          {
            v51 = [*(v5 + 2872) sharedConfig];
          }

          v52 = [v51 shouldLog];
          if ([v51 shouldLogToDisk])
          {
            v52 |= 2u;
          }

          v53 = [v51 OSLogObject];
          if (!os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
          {
            v52 &= 2u;
          }

          if (v52)
          {
            v54 = objc_opt_class();
            v94 = v54;
            v55 = [v47 accountName];
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
              v53 = [MEMORY[0x277CCACA8] stringWithCString:v57 encoding:{4, &v117, v90}];
              free(v57);
              v88 = v53;
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

      if ([v19 isEqualToString:v98])
      {
        if (![(ISProtocolDataProvider *)self shouldProcessAccount])
        {
          goto LABEL_64;
        }

        v58 = [v18 account];
        [v58 setActive:1];
        v59 = [*(v5 + 2872) sharedAccountsConfig];
        if (!v59)
        {
          v59 = [*(v5 + 2872) sharedConfig];
        }

        v60 = [v59 shouldLog];
        if ([v59 shouldLogToDisk])
        {
          v60 |= 2u;
        }

        v61 = [v59 OSLogObject];
        if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
        {
          v62 = v60;
        }

        else
        {
          v62 = v60 & 2;
        }

        v97 = v58;
        if (v62)
        {
          v63 = objc_opt_class();
          v64 = v63;
          v65 = [v58 accountName];
          v66 = SSHashIfNeeded();
          v117 = 138543618;
          v118 = v63;
          v119 = 2114;
          v120 = v66;
          LODWORD(v90) = 22;
          v88 = &v117;
          v67 = _os_log_send_and_compose_impl();

          v5 = 0x277D69000uLL;
          v58 = v97;

          if (v67)
          {
            v61 = [MEMORY[0x277CCACA8] stringWithCString:v67 encoding:{4, &v117, v90}];
            free(v67);
            v88 = v61;
            SSFileLog();
            goto LABEL_93;
          }
        }

        else
        {
LABEL_93:
        }

        v68 = [MEMORY[0x277D69A20] defaultStore];
        v111 = 0;
        v69 = [v68 saveAccount:v58 verifyCredentials:0 error:&v111];
        v95 = v111;

        v70 = [*(v5 + 2872) sharedAccountsConfig];
        v71 = v70;
        if (v69)
        {
          if (!v70)
          {
            v71 = [*(v5 + 2872) sharedConfig];
          }

          v72 = [v71 shouldLog];
          if ([v71 shouldLogToDisk])
          {
            v72 |= 2u;
          }

          v73 = [v71 OSLogObject];
          if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
          {
            v74 = v72;
          }

          else
          {
            v74 = v72 & 2;
          }

          if (v74)
          {
            v75 = objc_opt_class();
            v76 = v75;
            v77 = [v58 accountName];
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
          if (!v70)
          {
            v71 = [*(v5 + 2872) sharedConfig];
          }

          v80 = [v71 shouldLog];
          if ([v71 shouldLogToDisk])
          {
            v80 |= 2u;
          }

          v73 = [v71 OSLogObject];
          if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
          {
            v81 = v80;
          }

          else
          {
            v81 = v80 & 2;
          }

          if (!v81)
          {
            goto LABEL_117;
          }

          v82 = objc_opt_class();
          v92 = v82;
          v91 = [v58 accountName];
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
            v73 = [MEMORY[0x277CCACA8] stringWithCString:v79 encoding:{4, &v117, v90}];
            free(v79);
            v88 = v73;
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

      if ([v19 isEqualToString:v93])
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

- (BOOL)_processFailureTypeFromDictionary:(id)a3 error:(id *)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = [a3 objectForKey:@"failureType"];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 intValue];
    if ((v6 - 1001) <= 3 && v6 != 1002)
    {
      v21 = [MEMORY[0x277D69B38] sharedAccountsAuthenticationConfig];
      v22 = v21;
      if (!v21)
      {
        v22 = [MEMORY[0x277D69B38] sharedConfig];
      }

      v23 = [v22 shouldLog];
      if ([v22 shouldLogToDisk])
      {
        v24 = v23 | 2;
      }

      else
      {
        v24 = v23;
      }

      v25 = [v22 OSLogObject];
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
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
        v34 = [v5 intValue];
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
          if (!a4)
          {
            goto LABEL_23;
          }

          goto LABEL_22;
        }

        v25 = [MEMORY[0x277CCACA8] stringWithCString:v28 encoding:{4, &v31, v30}];
        free(v28);
        SSFileLog();
      }

      goto LABEL_35;
    }

    if (v6 == 2034 || v6 == 2002)
    {
      v8 = [MEMORY[0x277D69B38] sharedAccountsAuthenticationConfig];
      if (!v8)
      {
        v8 = [MEMORY[0x277D69B38] sharedConfig];
      }

      v9 = [v8 shouldLog];
      if ([v8 shouldLogToDisk])
      {
        v10 = v9 | 2;
      }

      else
      {
        v10 = v9;
      }

      v11 = [v8 OSLogObject];
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
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
        v34 = [v5 intValue];
        LODWORD(v30) = 18;
        v14 = _os_log_send_and_compose_impl();

        if (!v14)
        {
LABEL_20:

          v15 = ISError(18, 0, 0);
          goto LABEL_36;
        }

        v11 = [MEMORY[0x277CCACA8] stringWithCString:v14 encoding:{4, &v31, v30}];
        free(v14);
        SSFileLog();
      }

      goto LABEL_20;
    }
  }

  v16 = 0;
  v17 = 1;
  if (a4)
  {
LABEL_22:
    v18 = v16;
    *a4 = v16;
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
    v3 = [MEMORY[0x277D69D18] sharedCoordinator];
    [v3 getStatusWithOptions:v4 statusBlock:0];
  }
}

- (void)_selectFooterSection:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(ISProtocolDataProvider *)self shouldPostFooterSectionChanged])
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
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v7 &= 2u;
    }

    if (v7)
    {
      v15 = 138412546;
      v16 = objc_opt_class();
      v17 = 2112;
      v18 = v4;
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
        v14 = v4;
        dispatch_async(MEMORY[0x277D85CD0], block);

        goto LABEL_14;
      }

      v8 = [MEMORY[0x277CCACA8] stringWithCString:v10 encoding:{4, &v15, v12}];
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

- (BOOL)_shouldAttemptPasswordPaymentSheetForError:(id)a3
{
  v3 = a3;
  v4 = ISWeakLinkedStringConstantForString("MobileActivationErrorDomain", 0x25);
  v5 = [v3 domain];
  v6 = [v5 isEqualToString:v4];

  v7 = [v3 domain];
  if ([v7 isEqualToString:*MEMORY[0x277D6A110]])
  {
    v8 = [v3 code] == 147;

    v6 |= v8;
  }

  else
  {
  }

  return v6 & 1;
}

- (BOOL)_shouldFailWithTokenErrorForDialog:(id)a3 dictionary:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = [(ISDataProvider *)self contentType];
  v9 = [v8 rangeOfString:@"json" options:1];

  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_8;
  }

  v10 = [v7 objectForKey:@"errorNumber"];
  if ((objc_opt_respondsToSelector() & 1) == 0 || [v10 integerValue] != 2055)
  {

LABEL_8:
    v14 = 0;
    v12 = 0;
    goto LABEL_9;
  }

  v11 = *MEMORY[0x277D6A110];
  v12 = SSError();

  if (a5)
  {
    v13 = v12;
    *a5 = v12;
  }

  v14 = 1;
LABEL_9:

  return v14;
}

- (id)_touchIDDialogForResponse:(id)a3
{
  v3 = a3;
  v4 = [v3 actionsWithActionType:*MEMORY[0x277D6A578]];
  if ([v4 count])
  {
    v5 = [v4 objectAtIndex:0];
    v6 = [v5 dialog];

    v7 = [ISTouchIDDialog alloc];
    v8 = [v6 dialogDictionary];
    v9 = [(ISTouchIDDialog *)v7 initWithDialogDictionary:v8];
  }

  else
  {
    v9 = 0;
  }

  v10 = [v3 actionsWithActionType:*MEMORY[0x277D6A570]];
  if ([v10 count])
  {
    v11 = [v10 objectAtIndex:0];
    v12 = [v11 dialog];

    if (v9)
    {
      v13 = [v12 message];
      if (v13)
      {
        [(ISTouchIDDialog *)v9 setFallbackExplanation:v13];
      }

      v14 = [v12 title];
      if (v14)
      {
        [(ISTouchIDDialog *)v9 setFallbackMessage:v14];
      }
    }
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
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
  v6 = [(SSBiometricAuthenticationContext *)self->_biometricAuthenticationContext copyWithZone:a3];
  v7 = *(v5 + 15);
  *(v5 + 15) = v6;

  v8 = [(NSString *)self->_presentingSceneIdentifier copyWithZone:a3];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  return v5;
}

@end