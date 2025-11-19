@interface RedeemCodesOperation
- (BOOL)_canPerformExtendedBiometricActions;
- (BOOL)_didUserCancelWithError:(id)a3;
- (BOOL)_fetchRedeemCodeMetadataWithError:(id *)a3;
- (BOOL)_processDictionary:(id)a3 dialog:(id *)a4 error:(id *)a5;
- (BOOL)_useLegacyRedeem;
- (NSString)userAgent;
- (RedeemCodesOperation)initWithRedeemCodes:(id)a3;
- (SSAuthenticationContext)authenticationContext;
- (SSRedeemCodesResponse)redeemResponse;
- (id)_authenticateAppleAccount:(id)a3 withTitle:(id)a4 error:(id *)a5;
- (id)_installedExternalVersionForRedeemCodeMetadata:(id)a3;
- (id)_newURLRequestPropertiesForCode:(id)a3;
- (id)_newURLRequestPropertiesForServiceActionButton:(id)a3;
- (void)_postNotificationWithResponse:(id)a3;
- (void)_runHeadless;
- (void)_runNonHeadless;
- (void)run;
- (void)setAuthenticationContext:(id)a3;
- (void)setUserAgent:(id)a3;
@end

@implementation RedeemCodesOperation

- (RedeemCodesOperation)initWithRedeemCodes:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = RedeemCodesOperation;
  v5 = [(RedeemCodesOperation *)&v13 init];
  if (v5)
  {
    v6 = objc_alloc_init(ISBiometricStore);
    biometricStore = v5->_biometricStore;
    v5->_biometricStore = v6;

    v8 = [v4 copy];
    redeemCodes = v5->_redeemCodes;
    v5->_redeemCodes = v8;

    v5->_headless = 1;
    v10 = AMSGenerateLogCorrelationKey();
    logCorrelationKey = v5->_logCorrelationKey;
    v5->_logCorrelationKey = v10;
  }

  return v5;
}

- (SSAuthenticationContext)authenticationContext
{
  [(RedeemCodesOperation *)self lock];
  v3 = self->_authenticationContext;
  [(RedeemCodesOperation *)self unlock];

  return v3;
}

- (SSRedeemCodesResponse)redeemResponse
{
  [(RedeemCodesOperation *)self lock];
  v3 = self->_redeemResponse;
  [(RedeemCodesOperation *)self unlock];

  return v3;
}

- (void)setAuthenticationContext:(id)a3
{
  v6 = a3;
  [(RedeemCodesOperation *)self lock];
  if (self->_authenticationContext != v6)
  {
    v4 = [(SSAuthenticationContext *)v6 copy];
    authenticationContext = self->_authenticationContext;
    self->_authenticationContext = v4;
  }

  [(RedeemCodesOperation *)self unlock];
}

- (void)setUserAgent:(id)a3
{
  v6 = a3;
  [(RedeemCodesOperation *)self lock];
  if (self->_userAgent != v6)
  {
    v4 = [(NSString *)v6 copy];
    userAgent = self->_userAgent;
    self->_userAgent = v4;
  }

  [(RedeemCodesOperation *)self unlock];
}

- (NSString)userAgent
{
  [(RedeemCodesOperation *)self lock];
  v3 = self->_userAgent;
  [(RedeemCodesOperation *)self unlock];

  return v3;
}

- (void)run
{
  if (self->_headless)
  {
    [(RedeemCodesOperation *)self _runHeadless];
  }

  else
  {
    [(RedeemCodesOperation *)self _runNonHeadless];
  }
}

- (id)_authenticateAppleAccount:(id)a3 withTitle:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [v8 aa_altDSID];
  v10 = [v8 aa_personID];
  v11 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v10 longLongValue]);

  v12 = [v8 username];

  v13 = +[SSAccountStore defaultStore];
  v14 = [v13 accountWithAltDSID:v9 uniqueIdentifier:v11 accountName:v12];

  if (!v14)
  {
    v14 = objc_alloc_init(SSAccount);
    [v14 setAccountName:v12];
    [v14 setAltDSID:v9];
    [v14 setUniqueIdentifier:v11];
  }

  v65 = v12;
  v66 = v11;
  v68 = v9;
  v15 = [[SSMutableAuthenticationContext alloc] initWithAccount:v14];
  [v15 setCanSetActiveAccount:0];
  [v15 setPromptStyle:1];
  [v15 setPromptTitle:v7];

  [v15 setValue:@"1" forHTTPHeaderField:SSHTTPHeaderXAppleAllowLiteAccountConversion];
  v16 = +[SSLogConfig sharedDaemonConfig];
  if (!v16)
  {
    v16 = +[SSLogConfig sharedConfig];
  }

  v17 = [v16 shouldLog];
  if ([v16 shouldLogToDisk])
  {
    v18 = v17 | 2;
  }

  else
  {
    v18 = v17;
  }

  v19 = [v16 OSLogObject];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = v18;
  }

  else
  {
    v20 = v18 & 2;
  }

  if (!v20)
  {
    goto LABEL_14;
  }

  v21 = objc_opt_class();
  v22 = v21;
  [(RedeemCodesOperation *)self logCorrelationKey];
  v24 = v23 = self;
  v25 = [v14 hashedDescription];
  v69 = 138543874;
  v70 = v21;
  v71 = 2114;
  v72 = v24;
  v73 = 2114;
  v74 = v25;
  LODWORD(v61) = 32;
  v60 = &v69;
  v26 = _os_log_send_and_compose_impl();

  self = v23;
  if (v26)
  {
    v19 = [NSString stringWithCString:v26 encoding:4, &v69, v61];
    free(v26);
    v60 = v19;
    SSFileLog();
LABEL_14:
  }

  v27 = objc_alloc_init(SSPromise);
  v28 = [[SSAuthenticateRequest alloc] initWithAuthenticationContext:v15];
  v29 = [v27 completionHandlerAdapter];
  [v28 startWithAuthenticateResponseBlock:v29];

  v64 = [v27 resultWithError:0];
  v30 = [v64 error];
  v31 = [v30 domain];
  if ([v31 isEqualToString:SSErrorDomain] && objc_msgSend(v30, "code") == 140)
  {

    goto LABEL_20;
  }

  v32 = [v30 domain];
  if ([v32 isEqualToString:AKAppleIDAuthenticationErrorDomain])
  {
    v33 = [v30 code];

    if (v33 == -7003)
    {
LABEL_20:
      v34 = +[SSLogConfig sharedDaemonConfig];
      if (!v34)
      {
        v34 = +[SSLogConfig sharedConfig];
      }

      v35 = [v34 shouldLog];
      if ([v34 shouldLogToDisk])
      {
        v36 = v35 | 2;
      }

      else
      {
        v36 = v35;
      }

      v37 = [v34 OSLogObject];
      if (!os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v36 &= 2u;
      }

      if (v36)
      {
        v38 = v15;
        v39 = v28;
        v40 = v14;
        v41 = v27;
        v42 = objc_opt_class();
        v62 = v42;
        v43 = [(RedeemCodesOperation *)self logCorrelationKey];
        v69 = 138543874;
        v70 = v42;
        v27 = v41;
        v14 = v40;
        v28 = v39;
        v15 = v38;
        v71 = 2114;
        v72 = v43;
        v73 = 2114;
        v74 = v30;
        LODWORD(v61) = 32;
        v60 = &v69;
        v44 = _os_log_send_and_compose_impl();

        if (!v44)
        {
LABEL_44:

          SSError();
          v30 = v45 = v30;
          v55 = v65;
          goto LABEL_48;
        }

        v37 = [NSString stringWithCString:v44 encoding:4, &v69, v61];
        free(v44);
        v60 = v37;
        SSFileLog();
      }

      goto LABEL_44;
    }
  }

  else
  {
  }

  if (!v30)
  {
    v55 = v65;
    v56 = v66;
    goto LABEL_49;
  }

  v45 = +[SSLogConfig sharedDaemonConfig];
  if (!v45)
  {
    v45 = +[SSLogConfig sharedConfig];
  }

  v46 = [v45 shouldLog];
  if ([v45 shouldLogToDisk])
  {
    v47 = v46 | 2;
  }

  else
  {
    v47 = v46;
  }

  v48 = [v45 OSLogObject];
  if (!os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
  {
    v47 &= 2u;
  }

  if (v47)
  {
    v63 = v27;
    v49 = objc_opt_class();
    v50 = v49;
    v51 = self;
    v52 = v50;
    v53 = [(RedeemCodesOperation *)v51 logCorrelationKey];
    v69 = 138543874;
    v70 = v49;
    v71 = 2114;
    v72 = v53;
    v73 = 2114;
    v74 = v30;
    LODWORD(v61) = 32;
    v60 = &v69;
    v54 = _os_log_send_and_compose_impl();

    if (!v54)
    {
      v55 = v65;
      v27 = v63;
      goto LABEL_48;
    }

    v48 = [NSString stringWithCString:v54 encoding:4, &v69, v61];
    free(v54);
    v60 = v48;
    SSFileLog();
    v55 = v65;
    v27 = v63;
  }

  else
  {
    v55 = v65;
  }

LABEL_48:
  v56 = v66;
LABEL_49:
  if (a5)
  {
    v57 = v30;
    *a5 = v30;
  }

  v58 = [v64 authenticatedAccount];

  return v58;
}

- (void)_runHeadless
{
  v65 = objc_alloc_init(NSMutableDictionary);
  v64 = objc_alloc_init(NSMutableDictionary);
  v73 = objc_alloc_init(NSMutableDictionary);
  v3 = [(RedeemCodesOperation *)self userAgent];
  v67 = self;
  v4 = [(RedeemCodesOperation *)self authenticationContext];
  v5 = [v4 mutableCopy];

  v71 = v5;
  v72 = v3;
  v70 = SSHTTPHeaderUserAgent;
  [v5 setValue:v3 forHTTPHeaderField:?];
  v6 = &CFDictionaryGetValue_ptr;
  v7 = +[SSLogConfig sharedDaemonConfig];
  if (!v7)
  {
    v7 = +[SSLogConfig sharedConfig];
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
    goto LABEL_11;
  }

  v11 = objc_opt_class();
  v12 = v11;
  v13 = [(RedeemCodesOperation *)v67 logCorrelationKey];
  v14 = [(NSArray *)v67->_redeemCodes count];
  v80 = 138543874;
  v81 = v11;
  v82 = 2114;
  v83 = v13;
  v84 = 2048;
  v85 = v14;
  LODWORD(v60) = 32;
  v59 = &v80;
  v15 = _os_log_send_and_compose_impl();

  if (v15)
  {
    v10 = [NSString stringWithCString:v15 encoding:4, &v80, v60];
    free(v15);
    v59 = v10;
    SSFileLog();
LABEL_11:
  }

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v16 = v67;
  obj = v67->_redeemCodes;
  v17 = v65;
  v69 = [(NSArray *)obj countByEnumeratingWithState:&v76 objects:v88 count:16];
  if (!v69)
  {
    goto LABEL_58;
  }

  v63 = kISDialogKey;
  v68 = *v77;
  do
  {
    v18 = 0;
    do
    {
      if (*v77 != v68)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(*(&v76 + 1) + 8 * v18);
      context = objc_autoreleasePoolPush();
      v20 = objc_alloc_init(ISStoreURLOperation);
      [v20 setAuthenticationContext:v71];
      v21 = +[DaemonProtocolDataProvider provider];
      [v20 setDataProvider:v21];

      [v20 setNeedsAuthentication:{objc_msgSend(v16, "_canPerformExtendedBiometricActions") ^ 1}];
      v22 = objc_alloc_init(SSMutableURLRequestProperties);
      [v22 setValue:v19 forRequestParameter:@"certId"];
      [v22 setURLBagKey:@"p2-headless-redemption"];
      [v22 setValue:v72 forHTTPHeaderField:v70];
      [v20 setRequestProperties:v22];
      v75 = 0;
      LOBYTE(v21) = [v16 runSubOperation:v20 returningError:&v75];
      v23 = v75;
      if (v21)
      {
        v24 = [v20 dataProvider];
        v25 = [v24 output];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v26 = v25;
          v27 = [v26 objectForKey:@"failureType"];
          if (v27)
          {
            if (objc_opt_respondsToSelector())
            {
              [v27 integerValue];
            }

            v32 = [v26 objectForKey:{@"customerMessage", v59}];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v33 = [v26 objectForKey:v63];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v62 = [[ISDialog alloc] initWithDialogDictionary:v33];
                v61 = [v62 title];

                v32 = v61;
              }
            }

            v34 = SSError();

            v23 = v34;
          }

          v35 = [v26 objectForKey:{@"cancel-purchase-batch", v59}];
          if (objc_opt_respondsToSelector())
          {
            v28 = [v35 BOOLValue];
          }

          else
          {
            v28 = 0;
          }

          v17 = v65;
          v31 = v27 == 0;
        }

        else
        {
          v26 = 0;
          v28 = 0;
          v31 = 1;
        }

        [v73 setObject:v26 forKey:v19];
        if (v31)
        {
          v16 = v67;
          if (v26)
          {
            [(RedeemCodesOperation *)v67 _postNotificationWithResponse:v26];
            v29 = v64;
            v30 = v26;
            goto LABEL_40;
          }
        }

        else
        {
          v16 = v67;
        }
      }

      else
      {
        [v73 setObject:0 forKey:v19];
        v28 = 0;
        v26 = 0;
      }

      if (v23)
      {
        v28 |= ISErrorIsEqual();
      }

      else
      {
        v23 = SSError();
      }

      v29 = v17;
      v30 = v23;
LABEL_40:
      [v29 setObject:v30 forKey:{v19, v59}];

      objc_autoreleasePoolPop(context);
      if (v28)
      {
        v6 = &CFDictionaryGetValue_ptr;
        v37 = +[SSLogConfig sharedDaemonConfig];
        if (!v37)
        {
          v37 = +[SSLogConfig sharedConfig];
        }

        v38 = [v37 shouldLog];
        if ([v37 shouldLogToDisk])
        {
          v39 = v38 | 2;
        }

        else
        {
          v39 = v38;
        }

        v40 = [v37 OSLogObject];
        if (!os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          v39 &= 2u;
        }

        if (v39)
        {
          v41 = objc_opt_class();
          v42 = v41;
          v43 = [v16 logCorrelationKey];
          v80 = 138543618;
          v81 = v41;
          v82 = 2114;
          v83 = v43;
          LODWORD(v60) = 22;
          v59 = &v80;
          v44 = _os_log_send_and_compose_impl();

          if (!v44)
          {
LABEL_57:

            goto LABEL_58;
          }

          v40 = [NSString stringWithCString:v44 encoding:4, &v80, v60];
          free(v44);
          v59 = v40;
          SSFileLog();
        }

        goto LABEL_57;
      }

      v18 = v18 + 1;
    }

    while (v69 != v18);
    v36 = [(NSArray *)obj countByEnumeratingWithState:&v76 objects:v88 count:16];
    v6 = &CFDictionaryGetValue_ptr;
    v69 = v36;
  }

  while (v36);
LABEL_58:

  v45 = [v6[412] sharedDaemonConfig];
  if (!v45)
  {
    v45 = [v6[412] sharedConfig];
  }

  v46 = [v45 shouldLog];
  if ([v45 shouldLogToDisk])
  {
    v47 = v46 | 2;
  }

  else
  {
    v47 = v46;
  }

  v48 = [v45 OSLogObject];
  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
  {
    v49 = v47;
  }

  else
  {
    v49 = v47 & 2;
  }

  if (v49)
  {
    v50 = objc_opt_class();
    v51 = v50;
    v52 = [v16 logCorrelationKey];
    v53 = [v64 count];
    v54 = v65;
    v55 = [v65 count];
    v80 = 138544130;
    v81 = v50;
    v82 = 2114;
    v83 = v52;
    v84 = 2048;
    v85 = v53;
    v16 = v67;
    v86 = 2048;
    v87 = v55;
    LODWORD(v60) = 42;
    v56 = _os_log_send_and_compose_impl();

    if (v56)
    {
      v48 = [NSString stringWithCString:v56 encoding:4, &v80, v60];
      free(v56);
      SSFileLog();
      goto LABEL_70;
    }
  }

  else
  {
    v54 = v65;
LABEL_70:
  }

  [v16 lock];
  v57 = objc_alloc_init(SSRedeemCodesResponse);
  v58 = v16[20];
  v16[20] = v57;

  [v16[20] setCodeResponses:v73];
  [v16[20] setFailedCodes:v54];
  [v16[20] setRedeemedCodes:v64];
  [v16 unlock];
  [v16 setSuccess:1];
}

- (void)_runNonHeadless
{
  v103 = objc_alloc_init(NSMutableDictionary);
  v101 = objc_alloc_init(NSMutableDictionary);
  v105 = objc_alloc_init(NSMutableDictionary);
  v3 = [(RedeemCodesOperation *)self userAgent];
  v4 = [(RedeemCodesOperation *)self authenticationContext];
  v5 = [v4 mutableCopy];

  if (!v5)
  {
    v5 = objc_alloc_init(SSMutableAuthenticationContext);
  }

  v109 = v5;
  [v5 setValue:v3 forHTTPHeaderField:SSHTTPHeaderUserAgent];
  v112 = self;
  v99 = v3;
  if (![(RedeemCodesOperation *)self _useLegacyRedeem])
  {
    v100 = 0;
LABEL_27:
    v22 = +[SSLogConfig sharedDaemonConfig];
    if (!v22)
    {
      v22 = +[SSLogConfig sharedConfig];
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
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v24 &= 2u;
    }

    if (v24)
    {
      v26 = objc_opt_class();
      v27 = v26;
      v28 = [(RedeemCodesOperation *)v112 logCorrelationKey];
      v29 = [(NSArray *)v112->_redeemCodes count];
      v131 = 138543874;
      v132 = v26;
      v133 = 2114;
      v134 = v28;
      v135 = 2048;
      v136 = v29;
      LODWORD(v98) = 32;
      v97 = &v131;
      v30 = _os_log_send_and_compose_impl();

      if (!v30)
      {
LABEL_38:

        v124 = 0u;
        v125 = 0u;
        v122 = 0u;
        v123 = 0u;
        v31 = v112;
        obj = v112->_redeemCodes;
        v106 = [(NSArray *)obj countByEnumeratingWithState:&v122 objects:v139 count:16];
        if (!v106)
        {
          v18 = v109;
          goto LABEL_95;
        }

        v104 = *v123;
        v18 = v109;
        while (1)
        {
          v32 = 0;
          do
          {
            if (*v123 != v104)
            {
              objc_enumerationMutation(obj);
            }

            v108 = v32;
            v111 = *(*(&v122 + 1) + 8 * v32);
            context = objc_autoreleasePoolPush();
            v33 = 0;
            v34 = 0;
            v35 = 0;
            while (1)
            {

              v36 = objc_alloc_init(ISStoreURLOperation);
              [v36 setAuthenticationContext:v18];
              v37 = +[RedeemCodesProtocolDataProvider provider];
              [v37 setShouldProcessDialogs:0];
              [v36 setDataProvider:v37];
              v114 = [v31 _newURLRequestPropertiesForCode:v111];
              [v36 setRequestProperties:?];
              v121 = 0;
              v38 = [v31 runSubOperation:v36 returningError:&v121];
              v33 = v121;
              if (v38)
              {
                v39 = [v36 dataProvider];
                v40 = [v39 output];

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v34 = v40;
                  v119 = v33;
                  v120 = 0;
                  v41 = [(RedeemCodesOperation *)v112 _processDictionary:v34 dialog:&v120 error:&v119];
                  v35 = v120;
                  v42 = v119;

                  v43 = v41;
                  v44 = v42;
                  v31 = v112;
                  v33 = v44;
                }

                else
                {
                  v43 = 0;
                  v35 = 0;
                  v34 = 0;
                  v31 = v112;
                }
              }

              else
              {
                v43 = 0;
                v35 = 0;
                v34 = 0;
              }

              v45 = [v37 dialogButton];
              v46 = v31[15];
              v31[15] = v45;

              if ((v43 & 1) != 0 || [v33 code] != 3580)
              {
                break;
              }

              v110 = v43;
              v113 = v34;
              v47 = +[SSVAppleAccountStore sharedAccountStore];
              v48 = [v47 primaryAppleAccount];

              [v33 userInfo];
              v50 = v49 = v33;
              v51 = [v50 objectForKeyedSubscript:NSLocalizedDescriptionKey];
              v118 = 0;
              v52 = [v31 _authenticateAppleAccount:v48 withTitle:v51 error:&v118];
              v53 = v118;

              if (v52)
              {
                v54 = v49;
                v55 = [v52 uniqueIdentifier];
                v18 = v109;
                [v109 setRequiredUniqueIdentifier:v55];
              }

              else
              {

                v35 = 0;
                v54 = v53;
                v55 = v49;
                v18 = v109;
              }

              v31 = v112;
              v34 = v113;
              v33 = v54;
              if (!v52)
              {
                v43 = v110;
                if (!v35)
                {
                  goto LABEL_61;
                }

                goto LABEL_59;
              }
            }

            if (!v35)
            {
              goto LABEL_61;
            }

LABEL_59:
            if ([v35 kind] != 1)
            {
              v56 = [ISDialogOperation operationWithDialog:v35];
              [v56 setDelegate:v31];
              v117 = v33;
              [v31 runSubOperation:v56 returningError:&v117];
              v57 = v117;

              v33 = v57;
              v31 = v112;
            }

LABEL_61:
            v58 = v31[15];
            if (v58)
            {
              if ([v58 actionType] == 10)
              {
                v59 = v43;
                v60 = v18;
                v61 = [v31 _newURLRequestPropertiesForServiceActionButton:v31[15]];
                v62 = objc_alloc_init(ISStoreURLOperation);
                v63 = v60;
                [v62 setAuthenticationContext:v60];
                v64 = +[DaemonProtocolDataProvider provider];
                [v62 setDataProvider:v64];

                [v62 setRequestProperties:v61];
                v116 = v33;
                LODWORD(v64) = [v31 runSubOperation:v62 returningError:&v116];
                v65 = v116;

                if (v64)
                {
                  v66 = v35;
                  v67 = [v62 dataProvider];
                  v68 = [v67 output];

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v69 = v68;

                    v115 = v65;
                    v59 = [v31 _processDictionary:v69 dialog:0 error:&v115];
                    v70 = v115;

                    v34 = v69;
                    v65 = v70;
                    v31 = v112;
                  }

                  v35 = v66;
                }

                v71 = 0;
                v33 = v65;
                v18 = v63;
                v43 = v59;
              }

              else
              {
                [v31[15] performDefaultActionForDialog:v35];
                v71 = 1;
              }
            }

            else
            {
              v71 = 0;
            }

            [v105 setObject:v34 forKey:v111];
            if (v43 && v34)
            {
              [v31 _postNotificationWithResponse:v34];
              [v101 setObject:v34 forKey:v111];
              goto LABEL_91;
            }

            if (v33)
            {
              if (v71)
              {
                goto LABEL_78;
              }
            }

            else
            {
              v33 = SSError();
              if (v71)
              {
                goto LABEL_78;
              }
            }

            if (ISErrorIsEqual())
            {
LABEL_78:
              v72 = v18;
              v73 = SSErrorBySettingUserInfoValue();

              v33 = v73;
              goto LABEL_80;
            }

            v72 = v18;
LABEL_80:
            [v103 setObject:v33 forKey:v111];
            v74 = +[SSLogConfig sharedDaemonConfig];
            if (!v74)
            {
              v74 = +[SSLogConfig sharedConfig];
            }

            v75 = [v74 shouldLog];
            if ([v74 shouldLogToDisk])
            {
              v75 |= 2u;
            }

            v76 = [v74 OSLogObject];
            if (!os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
            {
              v75 &= 2u;
            }

            if (!v75)
            {
              goto LABEL_89;
            }

            v77 = objc_opt_class();
            v78 = v33;
            v79 = v77;
            v80 = [(RedeemCodesOperation *)v112 logCorrelationKey];
            v81 = AMSLogableError();
            v131 = 138544130;
            v132 = v77;
            v133 = 2114;
            v134 = v80;
            v135 = 2112;
            v31 = v112;
            v136 = v111;
            v137 = 2114;
            v138 = v81;
            LODWORD(v98) = 42;
            v97 = &v131;
            v82 = _os_log_send_and_compose_impl();

            v72 = v109;
            v33 = v78;

            if (v82)
            {
              v76 = [NSString stringWithCString:v82 encoding:4, &v131, v98];
              free(v82);
              v97 = v76;
              SSFileLog();
LABEL_89:
            }

            v18 = v72;
LABEL_91:

            objc_autoreleasePoolPop(context);
            v32 = v108 + 1;
          }

          while ((v108 + 1) != v106);
          v106 = [(NSArray *)obj countByEnumeratingWithState:&v122 objects:v139 count:16];
          if (!v106)
          {
            goto LABEL_95;
          }
        }
      }

      v25 = [NSString stringWithCString:v30 encoding:4, &v131, v98, v99];
      free(v30);
      v97 = v25;
      SSFileLog();
    }

    goto LABEL_38;
  }

  v130 = 0;
  v6 = [(RedeemCodesOperation *)self _fetchRedeemCodeMetadataWithError:&v130];
  v100 = v130;
  if (v6)
  {
    goto LABEL_27;
  }

  v7 = +[SSLogConfig sharedDaemonConfig];
  if (!v7)
  {
    v7 = +[SSLogConfig sharedConfig];
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
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v9;
  }

  else
  {
    v11 = v9 & 2;
  }

  if (v11)
  {
    v12 = objc_opt_class();
    v13 = v12;
    v14 = [(RedeemCodesOperation *)v112 logCorrelationKey];
    v15 = AMSLogableError();
    v131 = 138543874;
    v132 = v12;
    v133 = 2114;
    v134 = v14;
    v135 = 2114;
    v136 = v15;
    LODWORD(v98) = 32;
    v97 = &v131;
    v16 = _os_log_send_and_compose_impl();

    if (!v16)
    {
      goto LABEL_17;
    }

    v10 = [NSString stringWithCString:v16 encoding:4, &v131, v98, v99];
    free(v16);
    v97 = v10;
    SSFileLog();
  }

LABEL_17:
  if (v100)
  {
    v128 = 0u;
    v129 = 0u;
    v127 = 0u;
    v126 = 0u;
    obj = v112->_redeemCodes;
    v17 = [(NSArray *)obj countByEnumeratingWithState:&v126 objects:v140 count:16];
    v18 = v109;
    if (v17)
    {
      v19 = v17;
      v20 = *v127;
      do
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v127 != v20)
          {
            objc_enumerationMutation(obj);
          }

          [v103 setObject:v100 forKey:{*(*(&v126 + 1) + 8 * i), v97}];
        }

        v19 = [(NSArray *)obj countByEnumeratingWithState:&v126 objects:v140 count:16];
      }

      while (v19);
    }

LABEL_95:
  }

  else
  {
    v100 = 0;
    v18 = v109;
  }

  v83 = +[SSLogConfig sharedDaemonConfig];
  if (!v83)
  {
    v83 = +[SSLogConfig sharedConfig];
  }

  v84 = [v83 shouldLog];
  if ([v83 shouldLogToDisk])
  {
    v85 = v84 | 2;
  }

  else
  {
    v85 = v84;
  }

  v86 = [v83 OSLogObject];
  if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
  {
    v87 = v85;
  }

  else
  {
    v87 = v85 & 2;
  }

  if (!v87)
  {
    v88 = v112;
    goto LABEL_108;
  }

  v88 = v112;
  v89 = objc_opt_class();
  v90 = v89;
  v91 = [(RedeemCodesOperation *)v112 logCorrelationKey];
  v92 = [v101 count];
  v93 = [v103 count];
  v131 = 138544130;
  v132 = v89;
  v133 = 2114;
  v134 = v91;
  v135 = 2048;
  v136 = v92;
  v137 = 2048;
  v138 = v93;
  LODWORD(v98) = 42;
  v94 = _os_log_send_and_compose_impl();

  v18 = v109;
  if (v94)
  {
    v86 = [NSString stringWithCString:v94 encoding:4, &v131, v98];
    free(v94);
    SSFileLog();
LABEL_108:
  }

  [v88 lock];
  v95 = objc_alloc_init(SSRedeemCodesResponse);
  v96 = v88[20];
  v88[20] = v95;

  [v88[20] setCodeResponses:v105];
  [v88[20] setFailedCodes:v103];
  [v88[20] setRedeemedCodes:v101];
  [v88 unlock];
  [v88 setSuccess:1];
}

- (BOOL)_processDictionary:(id)a3 dialog:(id *)a4 error:(id *)a5
{
  v7 = a3;
  v8 = [v7 objectForKey:@"status"];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v10 = 0;
    goto LABEL_16;
  }

  v9 = [v8 integerValue];
  v10 = v9 >= 0;
  if (v9 < 0)
  {
    v11 = [v7 objectForKey:@"userPresentableErrorMessage"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v8 = [v7 objectForKey:@"errorNumber"];

    if (objc_opt_respondsToSelector())
    {
      [v8 integerValue];
      if (!a5)
      {
        goto LABEL_12;
      }
    }

    else if (!a5)
    {
LABEL_12:

      goto LABEL_13;
    }

    *a5 = SSError();
    goto LABEL_12;
  }

LABEL_13:
  v13 = v8;
  v8 = [v7 objectForKey:kISDialogKey];

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (a4 && (isKindOfClass & 1) != 0)
  {
    *a4 = [[ISDialog alloc] initWithDialogDictionary:v8];
  }

LABEL_16:

  return v10;
}

- (id)_newURLRequestPropertiesForCode:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableDictionary);
  v6 = +[ISDevice sharedInstance];
  v7 = [v6 guid];
  [v5 setObject:v7 forKeyedSubscript:@"guid"];

  [v5 setObject:v4 forKeyedSubscript:@"code"];
  [v5 setObject:@"application/json" forKeyedSubscript:@"response-content-type"];
  v8 = [NSNumber numberWithBool:self->_cameraRecognized];
  [v5 setObject:v8 forKeyedSubscript:@"cameraRecognizedCode"];

  if ([(RedeemCodesOperation *)self _useLegacyRedeem])
  {
    v9 = [(NSDictionary *)self->_redeemMetadataByCode valueForKey:v4];
    v10 = [(RedeemCodesOperation *)self _installedExternalVersionForRedeemCodeMetadata:v9];
    if (v10)
    {
      [v5 setObject:v10 forKeyedSubscript:@"installed-version"];
    }
  }

  if (self->_params)
  {
    [v5 addEntriesFromDictionary:?];
  }

  v11 = objc_alloc_init(SSMutableURLRequestProperties);
  v12 = [NSJSONSerialization dataWithJSONObject:v5 options:0 error:0];
  [v11 setHTTPBody:v12];

  [v11 setHTTPMethod:@"POST"];
  [v11 setURLBagKey:@"redeemCodeSrv"];
  [v11 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  v13 = [(RedeemCodesOperation *)self userAgent];
  [v11 setValue:v13 forHTTPHeaderField:SSHTTPHeaderUserAgent];

  return v11;
}

- (id)_newURLRequestPropertiesForServiceActionButton:(id)a3
{
  v4 = a3;
  v5 = [v4 dictionary];
  v6 = [v5 objectForKey:@"url"];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = 0;
    goto LABEL_5;
  }

  v7 = [[NSURL alloc] initWithString:v6];
  if (!v7)
  {
LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v8 = [v4 dictionary];
  v9 = [v8 objectForKey:@"dialogData"];

  v10 = [[SSMutableURLRequestProperties alloc] initWithURL:v7];
  v11 = [NSJSONSerialization dataWithJSONObject:v9 options:0 error:0];
  [v10 setHTTPBody:v11];

  [v10 setHTTPMethod:@"POST"];
  [v10 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  v12 = [(RedeemCodesOperation *)self userAgent];
  [v10 setValue:v12 forHTTPHeaderField:SSHTTPHeaderUserAgent];

LABEL_6:
  return v10;
}

- (BOOL)_canPerformExtendedBiometricActions
{
  [(RedeemCodesOperation *)self lock];
  v3 = [(SSAuthenticationContext *)self->_authenticationContext requiredUniqueIdentifier];
  v4 = [(ISBiometricStore *)self->_biometricStore canPerformExtendedBiometricActionsForAccountIdentifier:v3];
  [(RedeemCodesOperation *)self unlock];

  return v4;
}

- (BOOL)_didUserCancelWithError:(id)a3
{
  v3 = a3;
  v4 = ISWeakLinkedStringConstantForString();
  if (ISErrorIsEqual())
  {
    IsEqual = 1;
  }

  else
  {
    IsEqual = ISErrorIsEqual();
  }

  return IsEqual;
}

- (BOOL)_fetchRedeemCodeMetadataWithError:(id *)a3
{
  v106 = objc_alloc_init(NSMutableDictionary);
  v125 = objc_alloc_init(NSMutableDictionary);
  v4 = [(RedeemCodesOperation *)self userAgent];
  v5 = [(RedeemCodesOperation *)self authenticationContext];
  v6 = [v5 mutableCopy];

  v7 = SSHTTPHeaderUserAgent;
  v120 = v6;
  [v6 setValue:v4 forHTTPHeaderField:SSHTTPHeaderUserAgent];
  v128 = objc_alloc_init(NSMutableArray);
  v8 = +[SSLogConfig sharedDaemonConfig];
  if (!v8)
  {
    v8 = +[SSLogConfig sharedConfig];
  }

  v108 = v7;
  v109 = v4;
  v9 = [v8 shouldLog];
  if ([v8 shouldLogToDisk])
  {
    v9 |= 2u;
  }

  v10 = [v8 OSLogObject];
  if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v9 &= 2u;
  }

  v11 = &OBJC_INSTANCE_METHODS_NSMutableCopying;
  if (!v9)
  {
    goto LABEL_10;
  }

  v12 = objc_opt_class();
  redeemCodes = self->_redeemCodes;
  v14 = v12;
  v15 = redeemCodes;
  v11 = &OBJC_INSTANCE_METHODS_NSMutableCopying;
  v144 = 138543618;
  v145 = v12;
  v146 = 2050;
  v147 = [(NSArray *)v15 count];
  LODWORD(v104) = 22;
  v102 = &v144;
  v16 = _os_log_send_and_compose_impl();

  if (v16)
  {
    v10 = [NSString stringWithCString:v16 encoding:4, &v144, v104];
    free(v16);
    v102 = v10;
    SSFileLog();
LABEL_10:
  }

  v141 = 0u;
  v142 = 0u;
  v139 = 0u;
  v140 = 0u;
  obj = self->_redeemCodes;
  v122 = self;
  v121 = [(NSArray *)obj countByEnumeratingWithState:&v139 objects:v151 count:16];
  if (!v121)
  {
    v110 = 0;
    v107 = 1;
    goto LABEL_62;
  }

  v110 = 0;
  v107 = 1;
  v116 = SSVRedeemCodeMetadataQueryParameterRedeemCode;
  v118 = *v140;
  v115 = SSVRedeemCodeMetadataURLBagKey;
  v18 = v108;
  v17 = v109;
  do
  {
    v19 = 0;
    do
    {
      if (*v140 != v118)
      {
        objc_enumerationMutation(obj);
      }

      v20 = *(*(&v139 + 1) + 8 * v19);
      v21 = objc_autoreleasePoolPush();
      v22 = objc_alloc_init(ISStoreURLOperation);
      [v22 setAuthenticationContext:v120];
      v23 = +[DaemonProtocolDataProvider provider];
      [v22 setDataProvider:v23];

      [v22 setNeedsAuthentication:{-[RedeemCodesOperation _canPerformExtendedBiometricActions](self, "_canPerformExtendedBiometricActions") ^ 1}];
      v24 = objc_alloc_init(SSMutableURLRequestProperties);
      [v24 setValue:v20 forRequestParameter:v116];
      [v24 setURLBagKey:v115];
      [v24 setValue:v17 forHTTPHeaderField:v18];
      [v22 setRequestProperties:v24];
      v138 = 0;
      LODWORD(v23) = [(RedeemCodesOperation *)self runSubOperation:v22 returningError:&v138];
      v25 = v138;
      v126 = v25;
      if (v23)
      {
        v26 = [v22 dataProvider];
        v27 = [v26 output];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v123 = v21;
          v28 = v27;
          v29 = [v28 objectForKey:@"failureType"];
          if (v29)
          {
          }

          else
          {
            v36 = [[SSVRedeemCodeMetadata alloc] initWithRedeemCodeDictionary:v28];
            if (v36)
            {
              v37 = v36;
              [v106 setObject:v36 forKey:v20];
              v136 = 0u;
              v137 = 0u;
              v134 = 0u;
              v135 = 0u;
              v114 = v37;
              v38 = [v37 items];
              v39 = [v38 countByEnumeratingWithState:&v134 objects:v150 count:16];
              if (v39)
              {
                v40 = v39;
                v41 = *v135;
                do
                {
                  for (i = 0; i != v40; i = i + 1)
                  {
                    if (*v135 != v41)
                    {
                      objc_enumerationMutation(v38);
                    }

                    v43 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [*(*(&v134 + 1) + 8 * i) itemIdentifier]);
                    [v128 addObject:v43];
                  }

                  v40 = [v38 countByEnumeratingWithState:&v134 objects:v150 count:16];
                }

                while (v40);
              }

              v30 = 0;
              v27 = v28;
              v18 = v108;
              v17 = v109;
              goto LABEL_33;
            }
          }

          v30 = 0;
          v27 = v28;
LABEL_33:

          v21 = v123;
          goto LABEL_36;
        }

        v30 = 0;
      }

      else
      {
        v113 = [(RedeemCodesOperation *)self _didUserCancelWithError:v25];
        if (v113)
        {
          v31 = SSError();

          v110 = SSErrorBySettingUserInfoValue();

          v107 = 0;
        }

        v123 = v21;
        v27 = [SSLogConfig sharedDaemonConfig:v102];
        if (!v27)
        {
          v27 = +[SSLogConfig sharedConfig];
        }

        v32 = [v27 shouldLog];
        if ([v27 shouldLogToDisk])
        {
          v32 |= 2u;
        }

        v28 = [v27 OSLogObject];
        if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v32 &= 2u;
        }

        if (!v32)
        {
          goto LABEL_32;
        }

        v33 = objc_opt_class();
        v111 = v33;
        v34 = AMSLogableError();
        v144 = 138543874;
        v145 = v33;
        v146 = 2112;
        v147 = v20;
        v148 = 2114;
        v149 = v34;
        LODWORD(v104) = 32;
        v102 = &v144;
        v35 = _os_log_send_and_compose_impl();

        if (v35)
        {
          v28 = [NSString stringWithCString:v35 encoding:4, &v144, v104];
          free(v35);
          v102 = v28;
          SSFileLog();
          v18 = v108;
          v17 = v109;
LABEL_32:
          v30 = v113;
          goto LABEL_33;
        }

        v18 = v108;
        v17 = v109;
        v21 = v123;
        v30 = v113;
      }

LABEL_36:

      objc_autoreleasePoolPop(v21);
      if (v30)
      {
        v45 = +[SSLogConfig sharedDaemonConfig];
        self = v122;
        v11 = &OBJC_INSTANCE_METHODS_NSMutableCopying;
        if (!v45)
        {
          v45 = +[SSLogConfig sharedConfig];
        }

        v46 = [v45 shouldLog];
        if ([v45 shouldLogToDisk])
        {
          v46 |= 2u;
        }

        v47 = [v45 OSLogObject];
        if (!os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          v46 &= 2u;
        }

        if (v46)
        {
          v48 = objc_opt_class();
          v144 = 138543362;
          v145 = v48;
          v49 = v48;
          LODWORD(v104) = 12;
          v102 = &v144;
          v50 = _os_log_send_and_compose_impl();

          if (!v50)
          {
LABEL_60:

            goto LABEL_62;
          }

          v47 = [NSString stringWithCString:v50 encoding:4, &v144, v104];
          free(v50);
          v102 = v47;
          SSFileLog();
        }

        goto LABEL_60;
      }

      v19 = v19 + 1;
      self = v122;
      v11 = &OBJC_INSTANCE_METHODS_NSMutableCopying;
    }

    while (v19 != v121);
    v44 = [(NSArray *)obj countByEnumeratingWithState:&v139 objects:v151 count:16];
    v121 = v44;
  }

  while (v44);
LABEL_62:

  v51 = &CFDictionaryGetValue_ptr;
  v52 = +[SSLogConfig sharedDaemonConfig];
  if (!v52)
  {
    v52 = +[SSLogConfig sharedConfig];
  }

  v53 = [v52 shouldLog];
  if ([v52 shouldLogToDisk])
  {
    v53 |= 2u;
  }

  v54 = [v52 OSLogObject];
  if (!os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
  {
    v53 &= 2u;
  }

  if (v53)
  {
    v55 = objc_opt_class();
    v144 = 138543362;
    v145 = v55;
    v56 = v55;
    LODWORD(v104) = 12;
    v103 = &v144;
    v57 = _os_log_send_and_compose_impl();

    if (v57)
    {
      v54 = [NSString stringWithCString:v57 encoding:4, &v144, v104];
      free(v57);
      v103 = v54;
      SSFileLog();
      goto LABEL_71;
    }
  }

  else
  {
LABEL_71:
  }

  v133 = 0;
  v119 = [[SoftwareLibraryLookupOperation alloc] initWithItemIdentifiers:v128];
  v58 = [RedeemCodesOperation runSubOperation:"runSubOperation:returningError:" returningError:?];
  v117 = 0;
  if (!v58)
  {
    goto LABEL_117;
  }

  [(SoftwareLibraryLookupOperation *)v119 softwareLibraryItems];
  v129 = 0u;
  v130 = 0u;
  v131 = 0u;
  v127 = v132 = 0u;
  v59 = [v127 countByEnumeratingWithState:&v129 objects:v143 count:16];
  if (!v59)
  {
    goto LABEL_116;
  }

  v60 = v59;
  v61 = *v130;
  v62 = SSSoftwareLibraryItemPropertyITunesItemIdentifier;
  v63 = SSSoftwareLibraryItemPropertyITunesVersionIdentifier;
  v124 = *v130;
  while (2)
  {
    v64 = 0;
    while (2)
    {
      if (*v130 != v61)
      {
        objc_enumerationMutation(v127);
      }

      v65 = *(*(&v129 + 1) + 8 * v64);
      v66 = [v65 valueForProperty:{v62, v103, v104}];
      v67 = [v65 valueForProperty:v63];
      v68 = v67;
      if (v66)
      {
        v69 = v67 == 0;
      }

      else
      {
        v69 = 1;
      }

      if (!v69)
      {
        [v125 setObject:v67 forKey:v66];
        goto LABEL_114;
      }

      if (!v66)
      {
        v70 = [v51[412] sharedDaemonConfig];
        if (!v70)
        {
          v70 = [v51[412] sharedConfig];
        }

        v71 = [v70 shouldLog];
        if ([v70 shouldLogToDisk])
        {
          v72 = v71 | 2;
        }

        else
        {
          v72 = v71;
        }

        v73 = [v70 OSLogObject];
        if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
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
          v144 = 138543362;
          v145 = v75;
          v76 = v75;
          LODWORD(v104) = 12;
          v103 = &v144;
          v77 = _os_log_send_and_compose_impl();

          v51 = &CFDictionaryGetValue_ptr;
          if (!v77)
          {
            goto LABEL_99;
          }

          v73 = [NSString stringWithCString:v77 encoding:4, &v144, v104];
          free(v77);
          v103 = v73;
          SSFileLog();
        }

        else
        {
          v51 = &CFDictionaryGetValue_ptr;
        }

LABEL_99:
        v61 = v124;
        if (!v68)
        {
          goto LABEL_100;
        }

        goto LABEL_114;
      }

      if (!v67)
      {
LABEL_100:
        v78 = [v51[412] sharedDaemonConfig];
        if (!v78)
        {
          v78 = [v51[412] sharedConfig];
        }

        v79 = [v78 shouldLog];
        if ([v78 shouldLogToDisk])
        {
          v80 = v79 | 2;
        }

        else
        {
          v80 = v79;
        }

        v81 = [v78 OSLogObject];
        if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
        {
          v82 = v80;
        }

        else
        {
          v82 = v80 & 2;
        }

        if (v82)
        {
          v83 = objc_opt_class();
          v144 = 138543362;
          v145 = v83;
          v84 = v83;
          LODWORD(v104) = 12;
          v103 = &v144;
          v85 = _os_log_send_and_compose_impl();

          v51 = &CFDictionaryGetValue_ptr;
          if (v85)
          {
            v81 = [NSString stringWithCString:v85 encoding:4, &v144, v104];
            free(v85);
            v103 = v81;
            SSFileLog();
            goto LABEL_112;
          }
        }

        else
        {
          v51 = &CFDictionaryGetValue_ptr;
LABEL_112:
        }

        v61 = v124;
      }

LABEL_114:

      if (v60 != ++v64)
      {
        continue;
      }

      break;
    }

    v60 = [v127 countByEnumeratingWithState:&v129 objects:v143 count:16];
    if (v60)
    {
      continue;
    }

    break;
  }

LABEL_116:

  self = v122;
  v11 = &OBJC_INSTANCE_METHODS_NSMutableCopying;
LABEL_117:
  v86 = [v51[412] sharedDaemonConfig];
  if (!v86)
  {
    v86 = [v51[412] sharedConfig];
  }

  v87 = [v86 shouldLog];
  if ([v86 shouldLogToDisk])
  {
    v87 |= 2u;
  }

  v88 = [v86 OSLogObject];
  if (!os_log_type_enabled(v88, OS_LOG_TYPE_INFO))
  {
    v87 &= 2u;
  }

  if (v87)
  {
    v89 = objc_opt_class();
    v90 = v11;
    v91 = v89;
    v92 = [v106 count];
    v144 = v90[447];
    v145 = v89;
    v146 = 2050;
    v147 = v92;
    LODWORD(v104) = 22;
    v93 = _os_log_send_and_compose_impl();

    v94 = v109;
    v95 = v110;
    if (v93)
    {
      v88 = [NSString stringWithCString:v93 encoding:4, &v144, v104];
      free(v93);
      SSFileLog();
      goto LABEL_127;
    }
  }

  else
  {
    v94 = v109;
    v95 = v110;
LABEL_127:
  }

  [(RedeemCodesOperation *)self lock];
  v96 = [v106 copy];
  redeemMetadataByCode = self->_redeemMetadataByCode;
  self->_redeemMetadataByCode = v96;

  v98 = [v125 copy];
  installedExternalVersionByiTunesIdentifier = self->_installedExternalVersionByiTunesIdentifier;
  self->_installedExternalVersionByiTunesIdentifier = v98;

  [(RedeemCodesOperation *)self unlock];
  if (a3 && v95)
  {
    v100 = v95;
    *a3 = v95;
  }

  return v107 & 1;
}

- (id)_installedExternalVersionForRedeemCodeMetadata:(id)a3
{
  v4 = [a3 items];
  v5 = [v4 firstObject];

  if (v5)
  {
    v6 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v5 itemIdentifier]);
    v7 = [(NSDictionary *)self->_installedExternalVersionByiTunesIdentifier objectForKey:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_useLegacyRedeem
{
  v2 = [SSURLBagContext contextWithBagType:0];
  v3 = [[ISLoadURLBagOperation alloc] initWithBagContext:v2];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100206AF8;
  v20[3] = &unk_100327110;
  v4 = dispatch_semaphore_create(0);
  v21 = v4;
  [v3 setCompletionBlock:v20];
  v5 = +[ISOperationQueue mainQueue];
  [v5 addOperation:v3];

  v6 = dispatch_time(0, 30000000000);
  if (dispatch_semaphore_wait(v4, v6))
  {
    v7 = +[SSLogConfig sharedDaemonConfig];
    if (!v7)
    {
      v7 = +[SSLogConfig sharedConfig];
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
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v9 &= 2u;
    }

    if (v9)
    {
      v11 = objc_opt_class();
      v22 = 138543362;
      v23 = v11;
      v12 = v11;
      LODWORD(v19) = 12;
      v18 = &v22;
      v13 = _os_log_send_and_compose_impl();

      if (!v13)
      {
LABEL_13:

        goto LABEL_14;
      }

      v10 = [NSString stringWithCString:v13 encoding:4, &v22, v19];
      free(v13);
      v18 = v10;
      SSFileLog();
    }

    goto LABEL_13;
  }

LABEL_14:
  v14 = [v3 URLBag];
  v15 = [v14 valueForKey:@"redeemCodeLanding"];
  v16 = v15 == 0;

  return v16;
}

- (void)_postNotificationWithResponse:(id)a3
{
  v3 = a3;
  v4 = +[SSLogConfig sharedDaemonConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  v5 = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    v6 = v5 | 2;
  }

  else
  {
    v6 = v5;
  }

  v7 = [v4 OSLogObject];
  if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v6 &= 2u;
  }

  if (v6)
  {
    v25 = 138543362;
    v26 = objc_opt_class();
    v8 = v26;
    LODWORD(v21) = 12;
    v20 = &v25;
    v9 = _os_log_send_and_compose_impl();

    if (!v9)
    {
      goto LABEL_12;
    }

    v7 = [NSString stringWithCString:v9 encoding:4, &v25, v21];
    free(v9);
    v20 = v7;
    SSFileLog();
  }

LABEL_12:
  v22 = 0;
  v10 = [NSKeyedArchiver archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v22];

  v11 = v22;
  if (!v11)
  {
    v23 = @"response";
    v24 = v10;
    v12 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    DistributedCenter = CFNotificationCenterGetDistributedCenter();
    CFNotificationCenterPostNotification(DistributedCenter, kSSPurchaseRequestSucceededNotification, 0, v12, 1u);
    v15 = +[EventDispatcher eventDispatcher];
    [v15 postEventWithName:SSEventNamePurchaseSucceeded userInfo:v12];
    goto LABEL_24;
  }

  v12 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v12)
  {
    v12 = +[SSLogConfig sharedConfig];
  }

  v13 = [(__CFDictionary *)v12 shouldLog];
  if ([(__CFDictionary *)v12 shouldLogToDisk])
  {
    v14 = v13 | 2;
  }

  else
  {
    v14 = v13;
  }

  v15 = [(__CFDictionary *)v12 OSLogObject];
  if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v14 &= 2u;
  }

  if (!v14)
  {
    goto LABEL_24;
  }

  v16 = objc_opt_class();
  v25 = 138543618;
  v26 = v16;
  v27 = 2114;
  v28 = v11;
  v17 = v16;
  LODWORD(v21) = 22;
  v18 = _os_log_send_and_compose_impl();

  if (v18)
  {
    v15 = [NSString stringWithCString:v18 encoding:4, &v25, v21];
    free(v18);
    SSFileLog();
LABEL_24:
  }
}

@end