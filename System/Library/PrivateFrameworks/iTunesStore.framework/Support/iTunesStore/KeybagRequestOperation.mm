@interface KeybagRequestOperation
- (KeybagRequestOperation)initWithKeybagRequest:(id)a3 client:(id)a4;
- (KeybagRequestOperation)initWithKeybagRequest:(id)a3 clientIdentifierHeader:(id)a4 userAgent:(id)a5;
- (void)_getDownloaderIdentifier:(id *)a3 purchaserIdentifier:(id *)a4 forApplication:(id)a5;
- (void)run;
@end

@implementation KeybagRequestOperation

- (KeybagRequestOperation)initWithKeybagRequest:(id)a3 clientIdentifierHeader:(id)a4 userAgent:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = KeybagRequestOperation;
  v12 = [(KeybagRequestOperation *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_clientIdentifierHeader, a4);
    objc_storeStrong(&v13->_request, a3);
    objc_storeStrong(&v13->_userAgent, a5);
  }

  return v13;
}

- (KeybagRequestOperation)initWithKeybagRequest:(id)a3 client:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = KeybagRequestOperation;
  v9 = [(KeybagRequestOperation *)&v15 init];
  if (v9)
  {
    v10 = [v8 clientIdentifierHeader];
    clientIdentifierHeader = v9->_clientIdentifierHeader;
    v9->_clientIdentifierHeader = v10;

    objc_storeStrong(&v9->_request, a3);
    v12 = [v8 userAgent];
    userAgent = v9->_userAgent;
    v9->_userAgent = v12;
  }

  return v9;
}

- (void)run
{
  v3 = [(SSKeybagRequest *)self->_request contentIdentifier];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = 0;
    goto LABEL_17;
  }

  v4 = [LSApplicationProxy applicationProxyForIdentifier:v3];
  v5 = v4;
  if (!v4)
  {
LABEL_17:
    v19 = 1;
    goto LABEL_33;
  }

  if ([v4 profileValidated])
  {
    goto LABEL_32;
  }

  v6 = [v5 itemID];
  v7 = [v6 integerValue];

  if (v7)
  {
    goto LABEL_32;
  }

  v8 = +[SSLogConfig sharedDaemonConfig];
  if (!v8)
  {
    v8 = +[SSLogConfig sharedConfig];
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
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = v10;
  }

  else
  {
    v12 = v10 & 2;
  }

  if (v12)
  {
    v13 = objc_opt_class();
    request = self->_request;
    v15 = v13;
    v16 = [(SSKeybagRequest *)request contentIdentifier];
    *v67 = 138412546;
    *&v67[4] = v13;
    *&v67[12] = 2112;
    *&v67[14] = v16;
    LODWORD(v44) = 22;
    v43 = v67;
    v17 = _os_log_send_and_compose_impl();

    if (v17)
    {
      v18 = [NSString stringWithCString:v17 encoding:4, v67, v44];
      free(v17);
      v43 = v18;
      SSFileLog();
    }
  }

  else
  {
  }

  *v67 = 0;
  *&v67[8] = v67;
  *&v67[16] = 0x3032000000;
  v68 = sub_1000D74DC;
  v69 = sub_1000D74EC;
  v70 = 0;
  v57 = 0;
  v58 = &v57;
  v59 = 0x3032000000;
  v60 = sub_1000D74DC;
  v61 = sub_1000D74EC;
  v62 = 0;
  v53 = 0;
  v54 = &v53;
  v55 = 0x2020000000;
  v56 = 0;
  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v48[2] = sub_1000D74F4;
  v48[3] = &unk_1003283A0;
  v50 = v67;
  v51 = &v57;
  v52 = &v53;
  v20 = dispatch_semaphore_create(0);
  v49 = v20;
  [AppStoreUtility checkClaimsEstablishingActiveAccounts:1 ignoringPreviousClaimAttempts:1 completionBlock:v48];
  dispatch_semaphore_wait(v20, 0xFFFFFFFFFFFFFFFFLL);
  if ((v54[3] & 1) == 0)
  {
    claimedBundleIdentifiers = +[SSLogConfig sharedDaemonConfig];
    if (!claimedBundleIdentifiers)
    {
      claimedBundleIdentifiers = +[SSLogConfig sharedConfig];
    }

    v23 = [claimedBundleIdentifiers shouldLog];
    v24 = [claimedBundleIdentifiers shouldLogToDisk];
    v25 = [claimedBundleIdentifiers OSLogObject];
    v26 = v25;
    if (v24)
    {
      v23 |= 2u;
    }

    if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v23 &= 2u;
    }

    if (v23)
    {
      v27 = objc_opt_class();
      v28 = v58[5];
      v63 = 138412546;
      v64 = v27;
      v65 = 2112;
      v66 = v28;
      v29 = v27;
      LODWORD(v44) = 22;
      v43 = &v63;
      v30 = _os_log_send_and_compose_impl();

      if (!v30)
      {
        goto LABEL_31;
      }

      v26 = [NSString stringWithCString:v30 encoding:4, &v63, v44];
      free(v30);
      v43 = v26;
      SSFileLog();
    }

    goto LABEL_31;
  }

  v21 = [*(*&v67[8] + 40) copy];
  claimedBundleIdentifiers = self->_claimedBundleIdentifiers;
  self->_claimedBundleIdentifiers = v21;
LABEL_31:

  _Block_object_dispose(&v53, 8);
  _Block_object_dispose(&v57, 8);

  _Block_object_dispose(v67, 8);
LABEL_32:
  v19 = 0;
LABEL_33:
  v31 = objc_alloc_init(AuthorizeMachineOperation);
  [(AuthorizeMachineOperation *)v31 setClientIdentifierHeader:self->_clientIdentifierHeader];
  [(AuthorizeMachineOperation *)v31 setReason:@"refetch"];
  [(AuthorizeMachineOperation *)v31 setShouldAddKeysToKeyBag:1];
  [(AuthorizeMachineOperation *)v31 setUserAgent:self->_userAgent];
  if (v19)
  {
    v32 = [(SSKeybagRequest *)self->_request accountID];
    v33 = 0;
  }

  else
  {
    v46 = 0;
    v47 = 0;
    [(KeybagRequestOperation *)self _getDownloaderIdentifier:&v47 purchaserIdentifier:&v46 forApplication:v5];
    v32 = v47;
    v33 = v46;
  }

  [(AuthorizeMachineOperation *)v31 setAccountIdentifier:v32, v43];
  if (([v33 isEqualToNumber:v32] & 1) == 0)
  {
    [(AuthorizeMachineOperation *)v31 setFamilyMemberAccountIdentifier:v33];
    [(AuthorizeMachineOperation *)v31 setReason:@"family"];
  }

  if (([(SSKeybagRequest *)self->_request keybagOptions]& 1) == 0)
  {
    [(AuthorizeMachineOperation *)v31 setShouldPromptForCredentials:1];
  }

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
  if (!os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
  {
    v36 &= 2u;
  }

  if (!v36)
  {
    goto LABEL_50;
  }

  v38 = objc_opt_class();
  *v67 = 138412802;
  *&v67[4] = v38;
  *&v67[12] = 2112;
  *&v67[14] = v32;
  *&v67[22] = 2112;
  v68 = v33;
  v39 = v38;
  LODWORD(v44) = 32;
  v40 = _os_log_send_and_compose_impl();

  if (v40)
  {
    v37 = [NSString stringWithCString:v40 encoding:4, v67, v44];
    free(v40);
    SSFileLog();
LABEL_50:
  }

  v45 = 0;
  v41 = [(KeybagRequestOperation *)self runSubOperation:v31 returningError:&v45];
  v42 = v45;

  [(KeybagRequestOperation *)self setError:v42];
  [(KeybagRequestOperation *)self setSuccess:v41];
}

- (void)_getDownloaderIdentifier:(id *)a3 purchaserIdentifier:(id *)a4 forApplication:(id)a5
{
  v19 = a5;
  v8 = [(SSKeybagRequest *)self->_request accountID];
  v9 = [v19 familyID];
  if ([v9 longLongValue])
  {
    v10 = [v19 downloaderDSID];
    v11 = [v19 purchaserDSID];
    v12 = +[SSAccountStore defaultStore];
    v13 = v12;
    if (v10 && v11)
    {
      v14 = [v12 accountWithUniqueIdentifier:v10];
      if (v14)
      {
        v15 = v10;

        v16 = v11;
        v8 = v16;
      }

      else
      {
        v15 = v8;
      }
    }

    else
    {
      v15 = v8;
    }

    if (a3)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v15 = v8;
    if (a3)
    {
LABEL_12:
      v17 = v15;
      *a3 = v15;
    }
  }

  if (a4)
  {
    v18 = v8;
    *a4 = v8;
  }
}

@end