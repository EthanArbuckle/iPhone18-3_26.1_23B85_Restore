@interface SSPrivacyController
+ (BOOL)shouldDisplayPrivacyLinkWithIdentifier:(id)identifier;
+ (id)_appendPrivacyAcknowledgementToActiveAccount:(id)account withURL:(id)l;
+ (id)_syncPrivacyAcknowledgementOnAccount:(id)account URL:(id)l;
+ (id)_translateIdentifierToPrivacyAcknowledgement:(id)acknowledgement withVersion:(unint64_t)version;
+ (id)appStorePrivacyIdentifiers;
+ (id)storePrivacyIdentifiers;
+ (id)viewControllerForPrivacySplashWithIdentifier:(id)identifier URL:(id)l;
+ (unint64_t)_currentPrivacyContentVersionForIdentifier:(id)identifier;
+ (void)_appendPrivacyAcknowledgement:(id)acknowledgement toAccount:(id)account;
+ (void)_appendPrivacyAcknowledgementToLocalAccount:(id)account;
+ (void)acknowledgePrivacyLinkWithIdentifier:(id)identifier URL:(id)l;
@end

@implementation SSPrivacyController

+ (void)acknowledgePrivacyLinkWithIdentifier:(id)identifier URL:(id)l
{
  v24 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  lCopy = l;
  v8 = [self _currentPrivacyContentVersionForIdentifier:identifierCopy];
  if (!v8)
  {
    v9 = +[SSLogConfig sharedPrivacyConfig];
    if (!v9)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      v12 = shouldLog | 2;
    }

    else
    {
      v12 = shouldLog;
    }

    oSLogObject = [v9 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v12 &= 2u;
    }

    if (v12)
    {
      *v23 = 138543618;
      *&v23[4] = objc_opt_class();
      *&v23[12] = 2114;
      *&v23[14] = identifierCopy;
      v14 = *&v23[4];
      LODWORD(v22) = 22;
      v15 = _os_log_send_and_compose_impl();

      if (!v15)
      {
        goto LABEL_14;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v15 encoding:{4, v23, v22, *v23, *&v23[16], v24}];
      free(v15);
      SSFileLog(v9, @"%@", v16, v17, v18, v19, v20, v21, oSLogObject);
    }

    goto LABEL_14;
  }

  v9 = [self _translateIdentifierToPrivacyAcknowledgement:identifierCopy withVersion:v8];
  [self _appendPrivacyAcknowledgementToLocalAccount:v9];
  v10 = [self _appendPrivacyAcknowledgementToActiveAccount:v9 withURL:lCopy];
  [v10 addFinishBlock:&__block_literal_global_0];

LABEL_14:
}

+ (BOOL)shouldDisplayPrivacyLinkWithIdentifier:(id)identifier
{
  v70 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  ShouldDisableGDPR = SSDebugShouldDisableGDPR();
  v6 = +[SSLogConfig sharedPrivacyConfig];
  activeAccount = v6;
  if (!ShouldDisableGDPR)
  {
    if (!v6)
    {
      activeAccount = +[SSLogConfig sharedConfig];
    }

    shouldLog = [activeAccount shouldLog];
    if ([activeAccount shouldLogToDisk])
    {
      v20 = shouldLog | 2;
    }

    else
    {
      v20 = shouldLog;
    }

    oSLogObject = [activeAccount OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      v20 &= 2u;
    }

    if (v20)
    {
      *v66 = 138543618;
      *&v66[4] = objc_opt_class();
      *&v66[12] = 2114;
      *&v66[14] = identifierCopy;
      v22 = *&v66[4];
      LODWORD(v65) = 22;
      v64 = v66;
      v23 = _os_log_send_and_compose_impl();

      if (!v23)
      {
        goto LABEL_24;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v23 encoding:{4, v66, v65, *v66, *&v66[8]}];
      free(v23);
      SSFileLog(activeAccount, @"%@", v24, v25, v26, v27, v28, v29, oSLogObject);
    }

LABEL_24:
    v30 = +[SSAccountStore defaultStore];
    activeAccount = [v30 activeAccount];

    if (!activeAccount)
    {
      v31 = +[SSAccountStore defaultStore];
      localAccount = [v31 localAccount];
      activeAccount = [localAccount resultWithError:0];
    }

    privacyAcknowledgement = [activeAccount privacyAcknowledgement];
    v34 = [privacyAcknowledgement objectForKeyedSubscript:identifierCopy];
    if (v34)
    {
      v35 = [self _currentPrivacyContentVersionForIdentifier:identifierCopy];
      v36 = +[SSLogConfig sharedPrivacyConfig];
      if (!v36)
      {
        v36 = +[SSLogConfig sharedConfig];
      }

      shouldLog2 = [v36 shouldLog];
      if ([v36 shouldLogToDisk])
      {
        v38 = shouldLog2 | 2;
      }

      else
      {
        v38 = shouldLog2;
      }

      oSLogObject2 = [v36 OSLogObject];
      if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
      {
        v38 &= 2u;
      }

      if (v38)
      {
        v40 = objc_opt_class();
        v41 = v40;
        unsignedIntegerValue = [v34 unsignedIntegerValue];
        *v66 = 138544130;
        *&v66[4] = v40;
        *&v66[12] = 2114;
        *&v66[14] = identifierCopy;
        *&v66[22] = 2048;
        v67 = unsignedIntegerValue;
        v68 = 2048;
        v69 = v35;
        LODWORD(v65) = 42;
        v43 = _os_log_send_and_compose_impl();

        if (!v43)
        {
LABEL_38:

          LOBYTE(v12) = [v34 unsignedIntegerValue] < v35;
LABEL_51:

          goto LABEL_52;
        }

        oSLogObject2 = [MEMORY[0x1E696AEC0] stringWithCString:v43 encoding:{4, v66, v65}];
        free(v43);
        SSFileLog(v36, @"%@", v44, v45, v46, v47, v48, v49, oSLogObject2);
      }

      goto LABEL_38;
    }

    v50 = +[SSLogConfig sharedPrivacyConfig];
    if (!v50)
    {
      v50 = +[SSLogConfig sharedConfig];
    }

    shouldLog3 = [v50 shouldLog];
    if ([v50 shouldLogToDisk])
    {
      v52 = shouldLog3 | 2;
    }

    else
    {
      v52 = shouldLog3;
    }

    oSLogObject3 = [v50 OSLogObject];
    if (!os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_INFO))
    {
      v52 &= 2u;
    }

    if (v52)
    {
      v54 = objc_opt_class();
      *v66 = 138543618;
      *&v66[4] = v54;
      *&v66[12] = 2114;
      *&v66[14] = identifierCopy;
      v55 = v54;
      LODWORD(v65) = 22;
      v56 = _os_log_send_and_compose_impl();

      if (!v56)
      {
LABEL_50:

        LOBYTE(v12) = 1;
        goto LABEL_51;
      }

      oSLogObject3 = [MEMORY[0x1E696AEC0] stringWithCString:v56 encoding:{4, v66, v65}];
      free(v56);
      SSFileLog(v50, @"%@", v57, v58, v59, v60, v61, v62, oSLogObject3);
    }

    goto LABEL_50;
  }

  if (!v6)
  {
    activeAccount = +[SSLogConfig sharedConfig];
  }

  shouldLog4 = [activeAccount shouldLog];
  if ([activeAccount shouldLogToDisk])
  {
    v9 = shouldLog4 | 2;
  }

  else
  {
    v9 = shouldLog4;
  }

  oSLogObject4 = [activeAccount OSLogObject];
  if (!os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
  {
    v9 &= 2u;
  }

  if (!v9)
  {
    goto LABEL_12;
  }

  *v66 = 138543362;
  *&v66[4] = objc_opt_class();
  v11 = *&v66[4];
  LODWORD(v65) = 12;
  v12 = _os_log_send_and_compose_impl();

  if (v12)
  {
    oSLogObject4 = [MEMORY[0x1E696AEC0] stringWithCString:v12 encoding:{4, v66, v65, *v66}];
    free(v12);
    SSFileLog(activeAccount, @"%@", v13, v14, v15, v16, v17, v18, oSLogObject4);
LABEL_12:

    LOBYTE(v12) = 0;
  }

LABEL_52:

  return v12;
}

+ (id)storePrivacyIdentifiers
{
  if (storePrivacyIdentifiers_ss_once_token___COUNTER__ != -1)
  {
    +[SSPrivacyController storePrivacyIdentifiers];
  }

  v3 = storePrivacyIdentifiers_ss_once_object___COUNTER__;

  return v3;
}

void __46__SSPrivacyController_storePrivacyIdentifiers__block_invoke()
{
  v4[2] = *MEMORY[0x1E69E9840];
  v0 = objc_alloc(MEMORY[0x1E695DFD8]);
  v4[0] = @"com.apple.onboarding.itunesstore";
  v4[1] = @"com.apple.onboarding.videos";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:2];
  v2 = [v0 initWithArray:v1];
  v3 = storePrivacyIdentifiers_ss_once_object___COUNTER__;
  storePrivacyIdentifiers_ss_once_object___COUNTER__ = v2;
}

+ (id)appStorePrivacyIdentifiers
{
  if (appStorePrivacyIdentifiers_ss_once_token___COUNTER__ != -1)
  {
    +[SSPrivacyController appStorePrivacyIdentifiers];
  }

  v3 = appStorePrivacyIdentifiers_ss_once_object___COUNTER__;

  return v3;
}

void __49__SSPrivacyController_appStorePrivacyIdentifiers__block_invoke()
{
  v4[2] = *MEMORY[0x1E69E9840];
  v0 = objc_alloc(MEMORY[0x1E695DFD8]);
  v4[0] = @"com.apple.onboarding.appstore";
  v4[1] = @"com.apple.onboarding.applearcade";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:2];
  v2 = [v0 initWithArray:v1];
  v3 = appStorePrivacyIdentifiers_ss_once_object___COUNTER__;
  appStorePrivacyIdentifiers_ss_once_object___COUNTER__ = v2;
}

+ (id)viewControllerForPrivacySplashWithIdentifier:(id)identifier URL:(id)l
{
  v40 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  lCopy = l;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2050000000;
  v7 = getAMSUIPrivacyViewControllerClass_softClass;
  v35 = getAMSUIPrivacyViewControllerClass_softClass;
  if (!getAMSUIPrivacyViewControllerClass_softClass)
  {
    *&v36 = MEMORY[0x1E69E9820];
    *(&v36 + 1) = 3221225472;
    v37 = __getAMSUIPrivacyViewControllerClass_block_invoke;
    v38 = &unk_1E84AC2A8;
    v39 = &v32;
    __getAMSUIPrivacyViewControllerClass_block_invoke(&v36);
    v7 = v33[3];
  }

  v8 = v7;
  _Block_object_dispose(&v32, 8);
  v26 = MEMORY[0x1E69E9820];
  v27 = 3221225472;
  v28 = __72__SSPrivacyController_viewControllerForPrivacySplashWithIdentifier_URL___block_invoke;
  v29 = &unk_1E84AC230;
  v30 = identifierCopy;
  v9 = lCopy;
  v31 = v9;
  v10 = [v7 privacyControllerWithIdentifier:identifierCopy acknowledgementHandler:&v26];
  if (!v10)
  {
    v11 = +[SSLogConfig sharedPrivacyConfig];
    if (!v11)
    {
      v11 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v11 shouldLog];
    if ([v11 shouldLogToDisk])
    {
      v13 = shouldLog | 2;
    }

    else
    {
      v13 = shouldLog;
    }

    oSLogObject = [v11 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v13 &= 2u;
    }

    if (v13)
    {
      v15 = objc_opt_class();
      LODWORD(v36) = 138543362;
      *(&v36 + 4) = v15;
      v16 = v15;
      LODWORD(v25) = 12;
      v17 = _os_log_send_and_compose_impl();

      if (!v17)
      {
LABEL_15:

        goto LABEL_16;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v17 encoding:{4, &v36, v25, v26, v27, v28, v29, v30}];
      free(v17);
      SSFileLog(v11, @"%@", v18, v19, v20, v21, v22, v23, oSLogObject);
    }

    goto LABEL_15;
  }

LABEL_16:

  return v10;
}

uint64_t __72__SSPrivacyController_viewControllerForPrivacySplashWithIdentifier_URL___block_invoke(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    return [SSPrivacyController acknowledgePrivacyLinkWithIdentifier:*(result + 32) URL:*(result + 40)];
  }

  return result;
}

+ (void)_appendPrivacyAcknowledgement:(id)acknowledgement toAccount:(id)account
{
  v59 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  v6 = MEMORY[0x1E695DF90];
  acknowledgementCopy = acknowledgement;
  v8 = [v6 alloc];
  privacyAcknowledgement = [accountCopy privacyAcknowledgement];
  v10 = privacyAcknowledgement;
  if (privacyAcknowledgement)
  {
    v11 = privacyAcknowledgement;
  }

  else
  {
    v11 = MEMORY[0x1E695E0F8];
  }

  v12 = [v8 initWithDictionary:v11];

  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __63__SSPrivacyController__appendPrivacyAcknowledgement_toAccount___block_invoke;
  v49[3] = &unk_1E84AC258;
  v13 = v12;
  v50 = v13;
  [acknowledgementCopy enumerateKeysAndObjectsUsingBlock:v49];

  privacyAcknowledgement2 = [accountCopy privacyAcknowledgement];
  v15 = [privacyAcknowledgement2 isEqualToDictionary:v13];

  if (v15)
  {
    v16 = +[SSLogConfig sharedPrivacyConfig];
    if (!v16)
    {
      v16 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v16 shouldLog];
    if ([v16 shouldLogToDisk])
    {
      v18 = shouldLog | 2;
    }

    else
    {
      v18 = shouldLog;
    }

    oSLogObject = [v16 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      v18 &= 2u;
    }

    if (!v18)
    {
      goto LABEL_27;
    }

    v20 = objc_opt_class();
    v21 = v20;
    hashedDescription = [accountCopy hashedDescription];
    privacyAcknowledgement3 = [accountCopy privacyAcknowledgement];
    v51 = 138544130;
    v52 = v20;
    v53 = 2114;
    v54 = hashedDescription;
    v55 = 2114;
    v56 = privacyAcknowledgement3;
    v57 = 2114;
    v58 = v13;
    LODWORD(v47) = 42;
    v24 = _os_log_send_and_compose_impl();

    if (v24)
    {
      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v24 encoding:{4, &v51, v47}];
      free(v24);
      SSFileLog(v16, @"%@", v25, v26, v27, v28, v29, v30, oSLogObject);
LABEL_27:
    }
  }

  else
  {
    v31 = [v13 copy];
    [accountCopy setPrivacyAcknowledgement:v31];

    v32 = +[SSAccountStore defaultStore];
    v48 = 0;
    v33 = [v32 saveAccount:accountCopy verifyCredentials:0 error:&v48];
    v16 = v48;

    if ((v33 & 1) == 0)
    {
      oSLogObject = +[SSLogConfig sharedPrivacyConfig];
      if (!oSLogObject)
      {
        oSLogObject = +[SSLogConfig sharedConfig];
      }

      shouldLog2 = [oSLogObject shouldLog];
      if ([oSLogObject shouldLogToDisk])
      {
        v35 = shouldLog2 | 2;
      }

      else
      {
        v35 = shouldLog2;
      }

      v19OSLogObject = [oSLogObject OSLogObject];
      if (!os_log_type_enabled(v19OSLogObject, OS_LOG_TYPE_ERROR))
      {
        v35 &= 2u;
      }

      if (v35)
      {
        v37 = objc_opt_class();
        v38 = v37;
        hashedDescription2 = [accountCopy hashedDescription];
        v51 = 138543874;
        v52 = v37;
        v53 = 2114;
        v54 = hashedDescription2;
        v55 = 2114;
        v56 = v16;
        LODWORD(v47) = 32;
        v40 = _os_log_send_and_compose_impl();

        if (!v40)
        {
          goto LABEL_27;
        }

        v19OSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v40 encoding:{4, &v51, v47}];
        free(v40);
        SSFileLog(oSLogObject, @"%@", v41, v42, v43, v44, v45, v46, v19OSLogObject);
      }

      goto LABEL_27;
    }
  }
}

void __63__SSPrivacyController__appendPrivacyAcknowledgement_toAccount___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(a1 + 32) setObject:v5 forKeyedSubscript:v6];
    }
  }
}

+ (id)_appendPrivacyAcknowledgementToActiveAccount:(id)account withURL:(id)l
{
  v40 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  lCopy = l;
  v8 = +[SSAccountStore defaultStore];
  activeAccount = [v8 activeAccount];

  v10 = +[SSLogConfig sharedPrivacyConfig];
  v11 = v10;
  if (activeAccount)
  {
    if (!v10)
    {
      v11 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v11 shouldLog];
    if ([v11 shouldLogToDisk])
    {
      v13 = shouldLog | 2;
    }

    else
    {
      v13 = shouldLog;
    }

    oSLogObject = [v11 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v13 &= 2u;
    }

    if (v13)
    {
      *v38 = 138543874;
      *&v38[4] = objc_opt_class();
      *&v38[12] = 2114;
      *&v38[14] = activeAccount;
      *&v38[22] = 2114;
      v39 = accountCopy;
      v15 = *&v38[4];
      LODWORD(v37) = 32;
      v16 = _os_log_send_and_compose_impl();

      if (!v16)
      {
LABEL_13:

        [self _appendPrivacyAcknowledgement:accountCopy toAccount:activeAccount];
        v23 = [self _syncPrivacyAcknowledgementOnAccount:activeAccount URL:lCopy];
        goto LABEL_26;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v16 encoding:{4, v38, v37, *v38, *&v38[16], v39}];
      free(v16);
      SSFileLog(v11, @"%@", v17, v18, v19, v20, v21, v22, oSLogObject);
    }

    goto LABEL_13;
  }

  if (!v10)
  {
    v11 = +[SSLogConfig sharedConfig];
  }

  shouldLog2 = [v11 shouldLog];
  if ([v11 shouldLogToDisk])
  {
    v25 = shouldLog2 | 2;
  }

  else
  {
    v25 = shouldLog2;
  }

  oSLogObject2 = [v11 OSLogObject];
  if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
  {
    v25 &= 2u;
  }

  if (!v25)
  {
    goto LABEL_24;
  }

  *v38 = 138543362;
  *&v38[4] = objc_opt_class();
  v27 = *&v38[4];
  LODWORD(v37) = 12;
  v28 = _os_log_send_and_compose_impl();

  if (v28)
  {
    oSLogObject2 = [MEMORY[0x1E696AEC0] stringWithCString:v28 encoding:{4, v38, v37, *v38, *&v38[8]}];
    free(v28);
    SSFileLog(v11, @"%@", v29, v30, v31, v32, v33, v34, oSLogObject2);
LABEL_24:
  }

  v23 = objc_alloc_init(SSBinaryPromise);
  v35 = SSError(@"SSErrorDomain", 106, @"Not Available", @"No account to acknowledge");
  [(SSBinaryPromise *)v23 finishWithError:v35];

LABEL_26:

  return v23;
}

+ (void)_appendPrivacyAcknowledgementToLocalAccount:(id)account
{
  v22 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  v5 = +[SSLogConfig sharedPrivacyConfig];
  if (!v5)
  {
    v5 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    v7 = shouldLog | 2;
  }

  else
  {
    v7 = shouldLog;
  }

  oSLogObject = [v5 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v7 &= 2u;
  }

  if (!v7)
  {
    goto LABEL_11;
  }

  *v21 = 138543618;
  *&v21[4] = objc_opt_class();
  *&v21[12] = 2114;
  *&v21[14] = accountCopy;
  v9 = *&v21[4];
  LODWORD(v20) = 22;
  v10 = _os_log_send_and_compose_impl();

  if (v10)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:{4, v21, v20, *v21, *&v21[16], v22}];
    free(v10);
    SSFileLog(v5, @"%@", v11, v12, v13, v14, v15, v16, oSLogObject);
LABEL_11:
  }

  v17 = +[SSAccountStore defaultStore];
  localAccount = [v17 localAccount];
  v19 = [localAccount resultWithError:0];

  [self _appendPrivacyAcknowledgement:accountCopy toAccount:v19];
}

+ (unint64_t)_currentPrivacyContentVersionForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2050000000;
  v4 = getOBBundleClass_softClass;
  v20 = getOBBundleClass_softClass;
  if (!getOBBundleClass_softClass)
  {
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __getOBBundleClass_block_invoke;
    v15 = &unk_1E84AC2A8;
    v16 = &v17;
    __getOBBundleClass_block_invoke(&v12);
    v4 = v18[3];
  }

  v5 = v4;
  _Block_object_dispose(&v17, 8);
  v6 = [v4 bundleWithIdentifier:identifierCopy];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2050000000;
  v7 = getOBPrivacyFlowClass_softClass;
  v20 = getOBPrivacyFlowClass_softClass;
  if (!getOBPrivacyFlowClass_softClass)
  {
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __getOBPrivacyFlowClass_block_invoke;
    v15 = &unk_1E84AC2A8;
    v16 = &v17;
    __getOBPrivacyFlowClass_block_invoke(&v12);
    v7 = v18[3];
  }

  v8 = v7;
  _Block_object_dispose(&v17, 8);
  v9 = [v7 flowWithBundle:v6];
  contentVersion = [v9 contentVersion];

  return contentVersion;
}

+ (id)_syncPrivacyAcknowledgementOnAccount:(id)account URL:(id)l
{
  accountCopy = account;
  lCopy = l;
  v8 = objc_alloc_init(SSBinaryPromise);
  if ([accountCopy isLocalAccount])
  {
    v9 = SSError(@"SSErrorDomain", 106, @"Not Available", @"Privacy acknowlegment not available for local accounts");
    [(SSBinaryPromise *)v8 finishWithError:v9];
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v10 = +[SSDevice currentDevice];
    uniqueDeviceIdentifier = [v10 uniqueDeviceIdentifier];

    if (uniqueDeviceIdentifier)
    {
      [v9 setObject:uniqueDeviceIdentifier forKeyedSubscript:@"guid"];
    }

    privacyAcknowledgement = [accountCopy privacyAcknowledgement];

    if (privacyAcknowledgement)
    {
      privacyAcknowledgement2 = [accountCopy privacyAcknowledgement];
      [v9 setObject:privacyAcknowledgement2 forKeyedSubscript:@"privacyAcknowledgement"];
    }

    v14 = objc_alloc_init(SSMutableURLRequestProperties);
    [(SSMutableURLRequestProperties *)v14 setCachePolicy:1];
    [(SSMutableURLRequestProperties *)v14 setHTTPMethod:@"POST"];
    [(SSMutableURLRequestProperties *)v14 setRequestParameters:v9];
    [(SSMutableURLRequestProperties *)v14 setURL:lCopy];
    [(SSMutableURLRequestProperties *)v14 setValue:@"application/x-apple-plist" forHTTPHeaderField:@"Content-Type"];
    v41 = 0;
    v42 = &v41;
    v43 = 0x2050000000;
    v15 = getISStoreURLOperationClass_softClass;
    v44 = getISStoreURLOperationClass_softClass;
    if (!getISStoreURLOperationClass_softClass)
    {
      v36 = MEMORY[0x1E69E9820];
      v37 = 3221225472;
      v38 = __getISStoreURLOperationClass_block_invoke;
      v39 = &unk_1E84AC2A8;
      v40 = &v41;
      __getISStoreURLOperationClass_block_invoke(&v36);
      v15 = v42[3];
    }

    v16 = v15;
    _Block_object_dispose(&v41, 8);
    v17 = objc_alloc_init(v15);
    v18 = [[SSAuthenticationContext alloc] initWithAccount:accountCopy];
    [v17 setAuthenticationContext:v18];

    v41 = 0;
    v42 = &v41;
    v43 = 0x2050000000;
    v19 = getISProtocolDataProviderClass_softClass;
    v44 = getISProtocolDataProviderClass_softClass;
    if (!getISProtocolDataProviderClass_softClass)
    {
      v36 = MEMORY[0x1E69E9820];
      v37 = 3221225472;
      v38 = __getISProtocolDataProviderClass_block_invoke;
      v39 = &unk_1E84AC2A8;
      v40 = &v41;
      __getISProtocolDataProviderClass_block_invoke(&v36);
      v19 = v42[3];
    }

    v20 = v19;
    _Block_object_dispose(&v41, 8);
    v21 = objc_alloc_init(v19);
    [v17 setDataProvider:v21];

    [v17 setRequestProperties:v14];
    objc_initWeak(&location, v17);
    objc_initWeak(&from, self);
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __64__SSPrivacyController__syncPrivacyAcknowledgementOnAccount_URL___block_invoke;
    v29[3] = &unk_1E84AC280;
    objc_copyWeak(&v32, &from);
    objc_copyWeak(&v33, &location);
    v22 = v8;
    v30 = v22;
    v31 = accountCopy;
    [v17 setCompletionBlock:v29];
    v41 = 0;
    v42 = &v41;
    v43 = 0x2050000000;
    v23 = getISOperationQueueClass_softClass;
    v44 = getISOperationQueueClass_softClass;
    if (!getISOperationQueueClass_softClass)
    {
      v36 = MEMORY[0x1E69E9820];
      v37 = 3221225472;
      v38 = __getISOperationQueueClass_block_invoke;
      v39 = &unk_1E84AC2A8;
      v40 = &v41;
      __getISOperationQueueClass_block_invoke(&v36);
      v23 = v42[3];
    }

    v24 = v23;
    _Block_object_dispose(&v41, 8);
    mainQueue = [v23 mainQueue];
    [mainQueue addOperation:v17];

    v26 = v31;
    v27 = v22;

    objc_destroyWeak(&v33);
    objc_destroyWeak(&v32);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  return v8;
}

void __64__SSPrivacyController__syncPrivacyAcknowledgementOnAccount_URL___block_invoke(uint64_t a1)
{
  v52 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = objc_loadWeakRetained((a1 + 56));
  v4 = [v3 success];

  if (v4)
  {
    v5 = objc_loadWeakRetained((a1 + 56));
    v6 = [v5 dataProvider];
    v7 = [v6 output];

    v8 = +[SSLogConfig sharedPrivacyConfig];
    v9 = v8;
    if (v7)
    {
      if (!v8)
      {
        v9 = +[SSLogConfig sharedConfig];
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

      if (v11)
      {
        *v51 = 138543362;
        *&v51[4] = objc_opt_class();
        v13 = *&v51[4];
        LODWORD(v50) = 12;
        v49 = v51;
        v14 = _os_log_send_and_compose_impl();

        if (!v14)
        {
LABEL_14:

          [WeakRetained _appendPrivacyAcknowledgement:v7 toAccount:*(a1 + 40)];
LABEL_39:
          [*(a1 + 32) finishWithSuccess];
          goto LABEL_40;
        }

        v12 = [MEMORY[0x1E696AEC0] stringWithCString:v14 encoding:{4, v51, v50, *v51}];
        free(v14);
        SSFileLog(v9, @"%@", v15, v16, v17, v18, v19, v20, v12);
      }

      goto LABEL_14;
    }

    if (!v8)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    v38 = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      v39 = v38 | 2;
    }

    else
    {
      v39 = v38;
    }

    v40 = [v9 OSLogObject];
    if (!os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      v39 &= 2u;
    }

    if (v39)
    {
      *v51 = 138543362;
      *&v51[4] = objc_opt_class();
      v41 = *&v51[4];
      LODWORD(v50) = 12;
      v49 = v51;
      v42 = _os_log_send_and_compose_impl();

      if (!v42)
      {
LABEL_38:

        goto LABEL_39;
      }

      v40 = [MEMORY[0x1E696AEC0] stringWithCString:v42 encoding:{4, v51, v50, *v51, *&v51[8]}];
      free(v42);
      SSFileLog(v9, @"%@", v43, v44, v45, v46, v47, v48, v40);
    }

    goto LABEL_38;
  }

  v21 = +[SSLogConfig sharedPrivacyConfig];
  if (!v21)
  {
    v21 = +[SSLogConfig sharedConfig];
  }

  v22 = [v21 shouldLog];
  if ([v21 shouldLogToDisk])
  {
    v23 = v22 | 2;
  }

  else
  {
    v23 = v22;
  }

  v24 = [v21 OSLogObject];
  if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    v23 &= 2u;
  }

  if (!v23)
  {
    goto LABEL_25;
  }

  v25 = objc_opt_class();
  v26 = v25;
  v27 = objc_loadWeakRetained((a1 + 56));
  [v27 error];
  *v51 = 138543618;
  *&v51[4] = v25;
  *&v51[14] = *&v51[12] = 2114;
  LODWORD(v50) = 22;
  v28 = _os_log_send_and_compose_impl();

  if (v28)
  {
    v24 = [MEMORY[0x1E696AEC0] stringWithCString:v28 encoding:{4, v51, v50}];
    free(v28);
    SSFileLog(v21, @"%@", v29, v30, v31, v32, v33, v34, v24);
LABEL_25:
  }

  v35 = *(a1 + 32);
  v7 = objc_loadWeakRetained((a1 + 56));
  v36 = [v7 error];
  v37 = SSErrorWithUnderlyingError(v36, @"SSErrorDomain", 100, @"Acknowlegment Failed", @"Failed to send acknowlegment");
  [v35 finishWithError:v37];

LABEL_40:
}

+ (id)_translateIdentifierToPrivacyAcknowledgement:(id)acknowledgement withVersion:(unint64_t)version
{
  v39 = *MEMORY[0x1E69E9840];
  acknowledgementCopy = acknowledgement;
  if (![acknowledgementCopy length])
  {
    [SSPrivacyController _translateIdentifierToPrivacyAcknowledgement:a2 withVersion:self];
  }

  storePrivacyIdentifiers = [self storePrivacyIdentifiers];
  appStorePrivacyIdentifiers = [self appStorePrivacyIdentifiers];
  if ([storePrivacyIdentifiers containsObject:acknowledgementCopy])
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v11 = storePrivacyIdentifiers;
    v12 = [v11 countByEnumeratingWithState:&v31 objects:v38 count:16];
    if (!v12)
    {
      goto LABEL_22;
    }

    v13 = v12;
    v25 = appStorePrivacyIdentifiers;
    v26 = storePrivacyIdentifiers;
    v14 = *v32;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v32 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v31 + 1) + 8 * i);
        v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{version, v25, v26}];
        [v10 setObject:v17 forKeyedSubscript:v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v31 objects:v38 count:16];
    }

    while (v13);
LABEL_20:
    appStorePrivacyIdentifiers = v25;
    storePrivacyIdentifiers = v26;
    goto LABEL_22;
  }

  if ([appStorePrivacyIdentifiers containsObject:acknowledgementCopy])
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v11 = appStorePrivacyIdentifiers;
    v18 = [v11 countByEnumeratingWithState:&v27 objects:v37 count:16];
    if (!v18)
    {
      goto LABEL_22;
    }

    v19 = v18;
    v25 = appStorePrivacyIdentifiers;
    v26 = storePrivacyIdentifiers;
    v20 = *v28;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v28 != v20)
        {
          objc_enumerationMutation(v11);
        }

        v22 = *(*(&v27 + 1) + 8 * j);
        v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{version, v25, v26, v27}];
        [v10 setObject:v23 forKeyedSubscript:v22];
      }

      v19 = [v11 countByEnumeratingWithState:&v27 objects:v37 count:16];
    }

    while (v19);
    goto LABEL_20;
  }

  v35 = acknowledgementCopy;
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:version];
  v36 = v11;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
LABEL_22:

  return v10;
}

+ (void)_translateIdentifierToPrivacyAcknowledgement:(uint64_t)a1 withVersion:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SSPrivacyController.m" lineNumber:298 description:@"identifier cannot be empty or nil."];
}

@end