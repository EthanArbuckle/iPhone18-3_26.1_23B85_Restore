@interface ISLogoutOperation
- (ISLogoutOperation)initWithAccount:(id)a3 logKey:(id)a4;
- (id)_copyAuthenticationContext;
- (id)_createDisableBookkeeperRequestPropertiesWithURL:(id)a3;
- (id)_createLogoutRequestProperties;
- (id)_sbsyncData;
- (void)_disableAutomaticDownloadKinds;
- (void)_disableBookkeeper;
- (void)_sendLogoutRequest;
- (void)run;
@end

@implementation ISLogoutOperation

- (ISLogoutOperation)initWithAccount:(id)a3 logKey:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = ISLogoutOperation;
  v9 = [(ISOperation *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_account, a3);
    objc_storeStrong(&v10->_logKey, a4);
    if (!v10->_logKey)
    {
      v11 = SSGenerateLogCorrelationString();
      logKey = v10->_logKey;
      v10->_logKey = v11;
    }
  }

  return v10;
}

- (void)run
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D69B38] sharedAccountsLogoutConfig];
  if (!v3)
  {
    v3 = [MEMORY[0x277D69B38] sharedConfig];
  }

  v4 = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    v5 = v4 | 2;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 OSLogObject];
  if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v5 &= 2u;
  }

  if (!v5)
  {
    goto LABEL_11;
  }

  v7 = objc_opt_class();
  v8 = v7;
  [(ISLogoutOperation *)self logKey];
  v12 = 138543618;
  v13 = v7;
  v15 = v14 = 2114;
  LODWORD(v11) = 22;
  v9 = _os_log_send_and_compose_impl();

  if (v9)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithCString:v9 encoding:{4, &v12, v11}];
    free(v9);
    SSFileLog();
LABEL_11:
  }

  [(ISLogoutOperation *)self _disableAutomaticDownloadKinds];
  [(ISLogoutOperation *)self _disableBookkeeper];
  [(ISLogoutOperation *)self _sendLogoutRequest];
  [(ISOperation *)self setSuccess:1];
  v10 = *MEMORY[0x277D85DE8];
}

- (id)_copyAuthenticationContext
{
  v3 = objc_alloc(MEMORY[0x277D69BC8]);
  v4 = [(ISLogoutOperation *)self account];
  v5 = [v3 initWithAccount:v4];

  [v5 setPromptStyle:1000];
  v6 = [v5 copy];

  return v6;
}

- (id)_createDisableBookkeeperRequestPropertiesWithURL:(id)a3
{
  v3 = MEMORY[0x277D69BD0];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  [v5 setHTTPMethod:@"POST"];
  [v5 setURL:v4];

  [v5 setValue:@"application/x-apple-plist" forHTTPHeaderField:@"Content-Type"];
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v7 = +[ISDevice sharedInstance];
  v8 = [v7 guid];

  if (v8)
  {
    [v6 setObject:v8 forKey:@"guid"];
  }

  v9 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{@"0", @"bookkeeperDomain:com.apple.upp", 0}];
  [v6 setObject:v9 forKey:@"put-parameters"];
  [v6 setObject:@"mzbookkeeper" forKey:@"notification-type"];
  [v5 setRequestParameters:v6];

  return v5;
}

- (id)_createLogoutRequestProperties
{
  v3 = objc_alloc_init(MEMORY[0x277D69BD0]);
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v5 = +[ISDevice sharedInstance];
  v6 = [v5 guid];

  if (v6)
  {
    [v4 setObject:v6 forKey:@"guid"];
  }

  v7 = [(ISLogoutOperation *)self _sbsyncData];
  if (v7)
  {
    [v4 setObject:v7 forKey:@"sbsync"];
  }

  if ([v4 count])
  {
    v8 = [MEMORY[0x277CCAC58] dataWithPropertyList:v4 format:100 options:0 error:0];
    [v3 setHTTPBody:v8];
    [v3 setHTTPMethod:@"POST"];
    [v3 setValue:@"application/x-apple-plist" forHTTPHeaderField:@"Content-Type"];
  }

  [v3 setURLBagKey:@"logout"];

  return v3;
}

- (void)_disableAutomaticDownloadKinds
{
  v29 = *MEMORY[0x277D85DE8];
  if (SSIsInternalBuild() && _os_feature_enabled_impl())
  {
    v3 = [MEMORY[0x277D69B38] sharedStoreServicesConfig];
    if (!v3)
    {
      v3 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v4 = [v3 shouldLog];
    if ([v3 shouldLogToDisk])
    {
      v5 = v4 | 2;
    }

    else
    {
      v5 = v4;
    }

    v6 = [v3 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v7 = v5;
    }

    else
    {
      v7 = v5 & 2;
    }

    if (v7)
    {
      v25 = 136446210;
      v26 = "[ISLogoutOperation _disableAutomaticDownloadKinds]";
      LODWORD(v23) = 12;
      v22 = &v25;
      v8 = _os_log_send_and_compose_impl();

      if (!v8)
      {
LABEL_15:

        goto LABEL_16;
      }

      v6 = [MEMORY[0x277CCACA8] stringWithCString:v8 encoding:{4, &v25, v23}];
      free(v8);
      v22 = v6;
      SSFileLog();
    }

    goto LABEL_15;
  }

LABEL_16:
  v9 = [MEMORY[0x277D69B38] sharedAccountsLogoutConfig];
  if (!v9)
  {
    v9 = [MEMORY[0x277D69B38] sharedConfig];
  }

  v10 = [v9 shouldLog];
  if ([v9 shouldLogToDisk])
  {
    v11 = v10 | 2;
  }

  else
  {
    v11 = v10;
  }

  v12 = [v9 OSLogObject];
  if (!os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v11 &= 2u;
  }

  if (!v11)
  {
    goto LABEL_26;
  }

  v13 = objc_opt_class();
  v14 = v13;
  v15 = [(ISLogoutOperation *)self logKey];
  v25 = 138543618;
  v26 = v13;
  v27 = 2114;
  v28 = v15;
  LODWORD(v23) = 22;
  v16 = _os_log_send_and_compose_impl();

  if (v16)
  {
    v12 = [MEMORY[0x277CCACA8] stringWithCString:v16 encoding:{4, &v25, v23}];
    free(v16);
    SSFileLog();
LABEL_26:
  }

  v17 = SSXPCCreateMessageDictionary();
  v18 = [(ISLogoutOperation *)self _copyAuthenticationContext];
  SSXPCDictionarySetCFObject();

  v19 = objc_alloc(MEMORY[0x277D69D68]);
  v20 = [v19 initWithServiceName:*MEMORY[0x277D6A6A8]];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __51__ISLogoutOperation__disableAutomaticDownloadKinds__block_invoke;
  v24[3] = &unk_27A671620;
  v24[4] = self;
  [v20 sendMessage:v17 withReply:v24];

  v21 = *MEMORY[0x277D85DE8];
}

void __51__ISLogoutOperation__disableAutomaticDownloadKinds__block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (v3 == MEMORY[0x277D863F0])
  {
    v6 = *MEMORY[0x277D6A110];
    goto LABEL_6;
  }

  if (!v3 || MEMORY[0x277C8C570](v3) != MEMORY[0x277D86468])
  {
    v5 = *MEMORY[0x277D6A110];
LABEL_6:
    v7 = SSError();
    goto LABEL_7;
  }

  v25 = objc_alloc(MEMORY[0x277CCA9B8]);
  v26 = xpc_dictionary_get_value(v4, "0");
  v7 = [v25 initWithXPCEncoding:v26];

LABEL_7:
  v8 = [MEMORY[0x277D69B38] sharedAccountsLogoutConfig];
  v9 = v8;
  if (v7)
  {
    if (!v8)
    {
      v9 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v10 = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      v11 = v10 | 2;
    }

    else
    {
      v11 = v10;
    }

    v12 = [v9 OSLogObject];
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v11 &= 2u;
    }

    if (!v11)
    {
      goto LABEL_28;
    }

    v13 = *(a1 + 32);
    v14 = objc_opt_class();
    v15 = *(a1 + 32);
    v16 = v14;
    v17 = [v15 logKey];
    *v28 = 138543874;
    *&v28[4] = v14;
    *&v28[12] = 2114;
    *&v28[14] = v17;
    *&v28[22] = 2114;
    v29 = v7;
    LODWORD(v27) = 32;
  }

  else
  {
    if (!v8)
    {
      v9 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v18 = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      v19 = v18 | 2;
    }

    else
    {
      v19 = v18;
    }

    v12 = [v9 OSLogObject];
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v19 &= 2u;
    }

    if (!v19)
    {
      goto LABEL_28;
    }

    v20 = *(a1 + 32);
    v21 = objc_opt_class();
    v22 = *(a1 + 32);
    v16 = v21;
    v17 = [v22 logKey];
    *v28 = 138543618;
    *&v28[4] = v21;
    *&v28[12] = 2114;
    *&v28[14] = v17;
    LODWORD(v27) = 22;
  }

  v23 = _os_log_send_and_compose_impl();

  if (v23)
  {
    v12 = [MEMORY[0x277CCACA8] stringWithCString:v23 encoding:{4, v28, v27, *v28, *&v28[16]}];
    free(v23);
    SSFileLog();
LABEL_28:
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_disableBookkeeper
{
  v66 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D69B38] sharedAccountsLogoutConfig];
  if (!v3)
  {
    v3 = [MEMORY[0x277D69B38] sharedConfig];
  }

  v4 = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    v5 = v4 | 2;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 OSLogObject];
  if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v5 &= 2u;
  }

  if (v5)
  {
    v7 = objc_opt_class();
    v8 = v7;
    v9 = [(ISLogoutOperation *)self logKey];
    v60 = 138543618;
    v61 = v7;
    v62 = 2114;
    v63 = v9;
    LODWORD(v53) = 22;
    v52 = &v60;
    v10 = _os_log_send_and_compose_impl();

    if (!v10)
    {
      goto LABEL_12;
    }

    v6 = [MEMORY[0x277CCACA8] stringWithCString:v10 encoding:{4, &v60, v53}];
    free(v10);
    v52 = v6;
    SSFileLog();
  }

LABEL_12:
  v11 = [MEMORY[0x277D69C90] contextWithBagType:0];
  v12 = [(ISLogoutOperation *)self account];
  v13 = [v12 uniqueIdentifier];
  [v11 setUserIdentifier:v13];

  v14 = [(ISOperation *)self loadedURLBagWithContext:v11 returningError:0];
  v15 = [v14 valueForKey:@"push-notification-types"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = [v15 objectForKey:@"add-push-notification-type-url"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = objc_alloc_init(ISStoreURLOperation);
      v18 = [(ISLogoutOperation *)self _copyAuthenticationContext];
      [(ISURLOperation *)v17 setAuthenticationContext:v18];

      v19 = +[(ISDataProvider *)ISProtocolDataProvider];
      [(ISURLOperation *)v17 setDataProvider:v19];

      v20 = [MEMORY[0x277CBEBC0] URLWithString:v16];
      v21 = [(ISLogoutOperation *)self _createDisableBookkeeperRequestPropertiesWithURL:v20];
      [(ISURLOperation *)v17 setRequestProperties:v21];

      v59 = 0;
      [(ISOperation *)self runSubOperation:v17 returningError:&v59];
      v22 = v59;
      v23 = [MEMORY[0x277D69B38] sharedAccountsLogoutConfig];
      v24 = v23;
      v57 = v15;
      if (v22)
      {
        if (!v23)
        {
          v24 = [MEMORY[0x277D69B38] sharedConfig];
        }

        v25 = [v24 shouldLog];
        if ([v24 shouldLogToDisk])
        {
          v25 |= 2u;
        }

        v26 = [v24 OSLogObject];
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v27 = v25;
        }

        else
        {
          v27 = v25 & 2;
        }

        if (v27)
        {
          v55 = v14;
          v28 = objc_opt_class();
          v54 = v28;
          v29 = [(ISLogoutOperation *)self logKey];
          v60 = 138543874;
          v61 = v28;
          v62 = 2114;
          v63 = v29;
          v64 = 2114;
          v65 = v22;
          LODWORD(v53) = 32;
          v30 = _os_log_send_and_compose_impl();

          if (v30)
          {
            v14 = v55;
LABEL_57:
            v15 = v57;
            v26 = [MEMORY[0x277CCACA8] stringWithCString:v30 encoding:{4, &v60, v53}];
            free(v30);
            SSFileLog();
LABEL_59:

LABEL_63:
            goto LABEL_64;
          }

          v14 = v55;
LABEL_62:
          v15 = v57;
          goto LABEL_63;
        }
      }

      else
      {
        if (!v23)
        {
          v24 = [MEMORY[0x277D69B38] sharedConfig];
        }

        v46 = [v24 shouldLog];
        if ([v24 shouldLogToDisk])
        {
          v46 |= 2u;
        }

        v26 = [v24 OSLogObject];
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          v47 = v46;
        }

        else
        {
          v47 = v46 & 2;
        }

        if (v47)
        {
          v48 = objc_opt_class();
          v56 = v48;
          v49 = [(ISLogoutOperation *)self logKey];
          v60 = 138543618;
          v61 = v48;
          v62 = 2114;
          v63 = v49;
          v50 = v49;
          LODWORD(v53) = 22;
          v30 = _os_log_send_and_compose_impl();

          if (v30)
          {
            goto LABEL_57;
          }

          goto LABEL_62;
        }
      }

      v15 = v57;
      goto LABEL_59;
    }

    v17 = [MEMORY[0x277D69B38] sharedAccountsLogoutConfig];
    if (!v17)
    {
      v17 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v39 = [(ISStoreURLOperation *)v17 shouldLog];
    if ([(ISStoreURLOperation *)v17 shouldLogToDisk])
    {
      v40 = v39 | 2;
    }

    else
    {
      v40 = v39;
    }

    v22 = [(ISStoreURLOperation *)v17 OSLogObject];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v41 = v40;
    }

    else
    {
      v41 = v40 & 2;
    }

    if (!v41)
    {
      goto LABEL_64;
    }

    v58 = v15;
    v42 = objc_opt_class();
    v43 = v42;
    v44 = [(ISLogoutOperation *)self logKey];
    v60 = 138543618;
    v61 = v42;
    v62 = 2114;
    v63 = v44;
    LODWORD(v53) = 22;
    v45 = _os_log_send_and_compose_impl();

    if (v45)
    {
      v22 = [MEMORY[0x277CCACA8] stringWithCString:v45 encoding:{4, &v60, v53}];
      free(v45);
      SSFileLog();
      v15 = v58;
LABEL_64:

      goto LABEL_65;
    }

    v15 = v58;
LABEL_65:

    goto LABEL_66;
  }

  v16 = [MEMORY[0x277D69B38] sharedAccountsLogoutConfig];
  if (!v16)
  {
    v16 = [MEMORY[0x277D69B38] sharedConfig];
  }

  v31 = [v16 shouldLog];
  if ([v16 shouldLogToDisk])
  {
    v32 = v31 | 2;
  }

  else
  {
    v32 = v31;
  }

  v17 = [v16 OSLogObject];
  if (os_log_type_enabled(&v17->super.super.super.super, OS_LOG_TYPE_ERROR))
  {
    v33 = v32;
  }

  else
  {
    v33 = v32 & 2;
  }

  if (!v33)
  {
    goto LABEL_65;
  }

  v34 = v15;
  v35 = objc_opt_class();
  v36 = v35;
  v37 = [(ISLogoutOperation *)self logKey];
  v60 = 138543618;
  v61 = v35;
  v62 = 2114;
  v63 = v37;
  LODWORD(v53) = 22;
  v38 = _os_log_send_and_compose_impl();

  if (v38)
  {
    v17 = [MEMORY[0x277CCACA8] stringWithCString:v38 encoding:{4, &v60, v53}];
    free(v38);
    SSFileLog();
    v15 = v34;
    goto LABEL_65;
  }

  v15 = v34;
LABEL_66:

  v51 = *MEMORY[0x277D85DE8];
}

- (id)_sbsyncData
{
  v14 = 0;
  v15 = 0;
  v13 = 0;
  qi864985u0(-1, &v15, &v13 + 4, &v14, &v13);
  v3 = 0;
  if (!v4)
  {
    v5 = [(ISLogoutOperation *)self account];
    v6 = [v5 uniqueIdentifier];
    v7 = [v6 unsignedLongLongValue];

    v8 = objc_alloc_init(MEMORY[0x277D69CC8]);
    v9 = objc_alloc(MEMORY[0x277CBEA90]);
    v10 = [v9 initWithBytesNoCopy:v15 length:HIDWORD(v13) freeWhenDone:0];
    v12 = 0;
    [v8 generateSubscriptionBagRequestWithAccountUniqueIdentifier:v7 transactionType:303 machineIDData:v10 returningSubscriptionBagData:&v12 error:0];
    v3 = v12;
  }

  if (v15)
  {
    jk24uiwqrg(v15);
  }

  if (v14)
  {
    jk24uiwqrg(v14);
  }

  return v3;
}

- (void)_sendLogoutRequest
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D69B38] sharedAccountsLogoutConfig];
  if (!v3)
  {
    v3 = [MEMORY[0x277D69B38] sharedConfig];
  }

  v4 = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    v5 = v4 | 2;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 OSLogObject];
  if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v5 &= 2u;
  }

  if (v5)
  {
    v7 = objc_opt_class();
    v8 = v7;
    v9 = [(ISLogoutOperation *)self logKey];
    v32 = 138543618;
    v33 = v7;
    v34 = 2114;
    v35 = v9;
    LODWORD(v30) = 22;
    v29 = &v32;
    v10 = _os_log_send_and_compose_impl();

    if (!v10)
    {
      goto LABEL_12;
    }

    v6 = [MEMORY[0x277CCACA8] stringWithCString:v10 encoding:{4, &v32, v30}];
    free(v10);
    v29 = v6;
    SSFileLog();
  }

LABEL_12:
  v11 = objc_alloc_init(ISStoreURLOperation);
  v12 = [(ISLogoutOperation *)self _copyAuthenticationContext];
  [(ISURLOperation *)v11 setAuthenticationContext:v12];

  v13 = +[(ISDataProvider *)ISProtocolDataProvider];
  [(ISURLOperation *)v11 setDataProvider:v13];

  v14 = [(ISLogoutOperation *)self _createLogoutRequestProperties];
  [(ISURLOperation *)v11 setRequestProperties:v14];

  [(ISStoreURLOperation *)v11 setUseUserSpecificURLBag:1];
  v31 = 0;
  [(ISOperation *)self runSubOperation:v11 returningError:&v31];
  v15 = v31;
  if (!v15)
  {
    goto LABEL_25;
  }

  v16 = [MEMORY[0x277D69B38] sharedAccountsLogoutConfig];
  if (!v16)
  {
    v16 = [MEMORY[0x277D69B38] sharedConfig];
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
  if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v18 &= 2u;
  }

  if (!v18)
  {
    goto LABEL_23;
  }

  v20 = objc_opt_class();
  v21 = v20;
  v22 = [(ISLogoutOperation *)self logKey];
  v32 = 138543874;
  v33 = v20;
  v34 = 2114;
  v35 = v22;
  v36 = 2114;
  v37 = v15;
  LODWORD(v30) = 32;
  v29 = &v32;
  v23 = _os_log_send_and_compose_impl();

  if (v23)
  {
    v19 = [MEMORY[0x277CCACA8] stringWithCString:v23 encoding:{4, &v32, v30}];
    free(v23);
    v29 = v19;
    SSFileLog();
LABEL_23:
  }

LABEL_25:
  v24 = [(ISURLOperation *)v11 dataProvider];
  v25 = [v24 output];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v26 = SSVSubscriptionBagForDictionary();
    if (v26)
    {
      v27 = objc_alloc_init(MEMORY[0x277D69CC8]);
      [v27 importSubscriptionKeyBagData:v26 returningError:0];
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

@end