@interface ISBiometricSignatureOperation
- (BOOL)_promptUserToAuthenticateForIdentityMapChangeWithAccountIdentifier:(id)identifier accountName:(id)name;
- (ISBiometricSignatureOperation)initWithBiometricAuthenticationContext:(id)context touchIDDialog:(id)dialog fallbackDialog:(id)fallbackDialog;
- (void)run;
@end

@implementation ISBiometricSignatureOperation

- (ISBiometricSignatureOperation)initWithBiometricAuthenticationContext:(id)context touchIDDialog:(id)dialog fallbackDialog:(id)fallbackDialog
{
  contextCopy = context;
  dialogCopy = dialog;
  fallbackDialogCopy = fallbackDialog;
  v16.receiver = self;
  v16.super_class = ISBiometricSignatureOperation;
  v12 = [(ISOperation *)&v16 init];
  if (v12)
  {
    v13 = objc_opt_new();
    biometricStore = v12->_biometricStore;
    v12->_biometricStore = v13;

    objc_storeStrong(&v12->_context, context);
    objc_storeStrong(&v12->_fallbackDialog, fallbackDialog);
    objc_storeStrong(&v12->_touchIDDialog, dialog);
  }

  return v12;
}

- (void)run
{
  selfCopy = self;
  v194 = *MEMORY[0x277D85DE8];
  context = [(ISBiometricSignatureOperation *)self context];
  accountIdentifier = [context accountIdentifier];

  context2 = [(ISBiometricSignatureOperation *)selfCopy context];
  challenge = [context2 challenge];

  biometricStore = [(ISBiometricSignatureOperation *)selfCopy biometricStore];
  v7 = [biometricStore biometricAvailabilityForAccountIdentifier:accountIdentifier];
  v8 = v7;
  v184 = biometricStore;
  v185 = selfCopy;
  if (v7 > 3)
  {
    switch(v7)
    {
      case 4:
        mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
        if (!mEMORY[0x277D69B38])
        {
          mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
        }

        shouldLog = [mEMORY[0x277D69B38] shouldLog];
        if ([mEMORY[0x277D69B38] shouldLogToDisk])
        {
          v22 = shouldLog | 2;
        }

        else
        {
          v22 = shouldLog;
        }

        oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
        if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
        {
          v22 &= 2u;
        }

        if (!v22)
        {
          goto LABEL_81;
        }

        break;
      case 5:
        mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
        if (!mEMORY[0x277D69B38])
        {
          mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
        }

        shouldLog2 = [mEMORY[0x277D69B38] shouldLog];
        if ([mEMORY[0x277D69B38] shouldLogToDisk])
        {
          v40 = shouldLog2 | 2;
        }

        else
        {
          v40 = shouldLog2;
        }

        oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
        if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
        {
          v40 &= 2u;
        }

        if (!v40)
        {
          goto LABEL_81;
        }

        break;
      case 6:
        mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
        if (!mEMORY[0x277D69B38])
        {
          mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
        }

        shouldLog3 = [mEMORY[0x277D69B38] shouldLog];
        if ([mEMORY[0x277D69B38] shouldLogToDisk])
        {
          v14 = shouldLog3 | 2;
        }

        else
        {
          v14 = shouldLog3;
        }

        oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
        if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
        {
          v14 &= 2u;
        }

        if (!v14)
        {
          goto LABEL_81;
        }

        break;
      default:
        goto LABEL_96;
    }

LABEL_79:
    v190 = 138543362;
    v191 = objc_opt_class();
    v41 = v191;
    LODWORD(v174) = 12;
    v168 = &v190;
    v42 = _os_log_send_and_compose_impl();

    if (!v42)
    {
LABEL_82:

      goto LABEL_97;
    }

    oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v42 encoding:{4, &v190, v174}];
    free(v42);
    v168 = oSLogObject;
    SSFileLog();
LABEL_81:

    goto LABEL_82;
  }

  if (!v7)
  {
    mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38]2)
    {
      mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog4 = [mEMORY[0x277D69B38]2 shouldLog];
    if ([mEMORY[0x277D69B38]2 shouldLogToDisk])
    {
      v17 = shouldLog4 | 2;
    }

    else
    {
      v17 = shouldLog4;
    }

    oSLogObject2 = [mEMORY[0x277D69B38]2 OSLogObject];
    if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
    {
      v17 &= 2u;
    }

    if (v17)
    {
      v190 = 138543362;
      v191 = objc_opt_class();
      v19 = v191;
      LODWORD(v174) = 12;
      v168 = &v190;
      v20 = _os_log_send_and_compose_impl();

      if (!v20)
      {
LABEL_37:

        goto LABEL_128;
      }

      oSLogObject2 = [MEMORY[0x277CCACA8] stringWithCString:v20 encoding:{4, &v190, v174}];
      free(v20);
      v168 = oSLogObject2;
      SSFileLog();
    }

    goto LABEL_37;
  }

  if (v7 != 2)
  {
    if (v7 == 3)
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
      if (!mEMORY[0x277D69B38])
      {
        mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
      }

      shouldLog5 = [mEMORY[0x277D69B38] shouldLog];
      if ([mEMORY[0x277D69B38] shouldLogToDisk])
      {
        v11 = shouldLog5 | 2;
      }

      else
      {
        v11 = shouldLog5;
      }

      oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
      if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        v11 &= 2u;
      }

      if (!v11)
      {
        goto LABEL_81;
      }

      goto LABEL_79;
    }

    goto LABEL_96;
  }

  mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!mEMORY[0x277D69B38]3)
  {
    mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog6 = [mEMORY[0x277D69B38]3 shouldLog];
  if ([mEMORY[0x277D69B38]3 shouldLogToDisk])
  {
    v25 = shouldLog6 | 2;
  }

  else
  {
    v25 = shouldLog6;
  }

  oSLogObject3 = [mEMORY[0x277D69B38]3 OSLogObject];
  if (!os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
  {
    v25 &= 2u;
  }

  if (v25)
  {
    v190 = 138543362;
    v191 = objc_opt_class();
    v27 = v191;
    LODWORD(v174) = 12;
    v168 = &v190;
    v28 = _os_log_send_and_compose_impl();

    if (!v28)
    {
      goto LABEL_58;
    }

    oSLogObject3 = [MEMORY[0x277CCACA8] stringWithCString:v28 encoding:{4, &v190, v174}];
    free(v28);
    v168 = oSLogObject3;
    SSFileLog();
  }

LABEL_58:
  mEMORY[0x277D69B38]4 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!mEMORY[0x277D69B38]4)
  {
    mEMORY[0x277D69B38]4 = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog7 = [mEMORY[0x277D69B38]4 shouldLog];
  if ([mEMORY[0x277D69B38]4 shouldLogToDisk])
  {
    v31 = shouldLog7 | 2;
  }

  else
  {
    v31 = shouldLog7;
  }

  oSLogObject4 = [mEMORY[0x277D69B38]4 OSLogObject];
  if (!os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
  {
    v31 &= 2u;
  }

  if (v31)
  {
    v33 = objc_opt_class();
    v190 = 138543362;
    v191 = v33;
    v34 = v33;
    LODWORD(v174) = 12;
    v168 = &v190;
    v35 = _os_log_send_and_compose_impl();

    if (!v35)
    {
      goto LABEL_69;
    }

    oSLogObject4 = [MEMORY[0x277CCACA8] stringWithCString:v35 encoding:{4, &v190, v174}];
    free(v35);
    v168 = oSLogObject4;
    SSFileLog();
  }

LABEL_69:
  context3 = [(ISBiometricSignatureOperation *)selfCopy context];
  accountName = [context3 accountName];

  if (![(ISBiometricSignatureOperation *)selfCopy _promptUserToAuthenticateForIdentityMapChangeWithAccountIdentifier:accountIdentifier accountName:accountName])
  {
    context4 = [(ISBiometricSignatureOperation *)selfCopy context];
    [context4 setIsIdentityMapInvalid:1];

    mEMORY[0x277D69B38]5 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38]5)
    {
      mEMORY[0x277D69B38]5 = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog8 = [mEMORY[0x277D69B38]5 shouldLog];
    if ([mEMORY[0x277D69B38]5 shouldLogToDisk])
    {
      v46 = shouldLog8 | 2;
    }

    else
    {
      v46 = shouldLog8;
    }

    oSLogObject5 = [mEMORY[0x277D69B38]5 OSLogObject];
    if (!os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_DEFAULT))
    {
      v46 &= 2u;
    }

    if (v46)
    {
      v48 = objc_opt_class();
      v190 = 138543362;
      v191 = v48;
      v49 = v48;
      LODWORD(v174) = 12;
      v168 = &v190;
      v50 = _os_log_send_and_compose_impl();

      if (!v50)
      {
LABEL_94:

        touchIDDialog = [(ISBiometricSignatureOperation *)selfCopy touchIDDialog];
        paymentSheet = [touchIDDialog paymentSheet];
        [paymentSheet setMerchantSession:0];

        touchIDDialog2 = [(ISBiometricSignatureOperation *)selfCopy touchIDDialog];
        paymentSheet2 = [touchIDDialog2 paymentSheet];
        [paymentSheet2 setApplePayClassic:0];

        v8 = 2;
        goto LABEL_95;
      }

      oSLogObject5 = [MEMORY[0x277CCACA8] stringWithCString:v50 encoding:{4, &v190, v174}];
      free(v50);
      v168 = oSLogObject5;
      SSFileLog();
    }

    goto LABEL_94;
  }

  v38 = +[ISBiometricStore sharedInstance];
  [v38 saveIdentityMapForAccountIdentifier:accountIdentifier];

  v8 = [biometricStore biometricAvailabilityForAccountIdentifier:accountIdentifier];
LABEL_95:

LABEL_96:
  if (v8)
  {
LABEL_97:
    mEMORY[0x277D69B38]6 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38]6)
    {
      mEMORY[0x277D69B38]6 = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog9 = [mEMORY[0x277D69B38]6 shouldLog];
    if ([mEMORY[0x277D69B38]6 shouldLogToDisk])
    {
      v57 = shouldLog9 | 2;
    }

    else
    {
      v57 = shouldLog9;
    }

    oSLogObject6 = [mEMORY[0x277D69B38]6 OSLogObject];
    if (!os_log_type_enabled(oSLogObject6, OS_LOG_TYPE_ERROR))
    {
      v57 &= 2u;
    }

    if (v57)
    {
      v59 = objc_opt_class();
      v60 = MEMORY[0x277CCABB0];
      v61 = v59;
      v62 = [v60 numberWithInteger:v8];
      v190 = 138543618;
      v191 = v59;
      v192 = 2114;
      v193 = v62;
      LODWORD(v174) = 22;
      v169 = &v190;
      v63 = _os_log_send_and_compose_impl();

      selfCopy = v185;
      if (!v63)
      {
LABEL_108:

        touchIDDialog3 = [(ISBiometricSignatureOperation *)selfCopy touchIDDialog];
        paymentSheet3 = [touchIDDialog3 paymentSheet];
        if (paymentSheet3)
        {
          context5 = [(ISBiometricSignatureOperation *)selfCopy context];
          [context5 setPaymentSheet:paymentSheet3];
        }

        context6 = [(ISBiometricSignatureOperation *)selfCopy context];
        isExtendedAction = [context6 isExtendedAction];

        if (isExtendedAction)
        {
          v69 = *MEMORY[0x277D6A110];
          oSLogObject7 = SSError();
          v71 = *MEMORY[0x277D6A100];
          mEMORY[0x277D69B38]7 = [MEMORY[0x277CCABB0] numberWithInteger:v8];
          v73 = SSErrorBySettingUserInfoValue();
LABEL_123:

          fpanID = 0;
          paymentTokenData = 0;
          v81 = 0;
LABEL_124:

          v82 = v73;
          selfCopy = v185;
          goto LABEL_125;
        }

        mEMORY[0x277D69B38]7 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
        if (!mEMORY[0x277D69B38]7)
        {
          mEMORY[0x277D69B38]7 = [MEMORY[0x277D69B38] sharedConfig];
        }

        shouldLog10 = [mEMORY[0x277D69B38]7 shouldLog];
        if ([mEMORY[0x277D69B38]7 shouldLogToDisk])
        {
          v75 = shouldLog10 | 2;
        }

        else
        {
          v75 = shouldLog10;
        }

        oSLogObject7 = [mEMORY[0x277D69B38]7 OSLogObject];
        if (!os_log_type_enabled(oSLogObject7, OS_LOG_TYPE_DEFAULT))
        {
          v75 &= 2u;
        }

        if (!v75)
        {
LABEL_122:
          v73 = 0;
          goto LABEL_123;
        }

        v76 = objc_opt_class();
        v190 = 138543362;
        v191 = v76;
        v77 = v76;
        LODWORD(v174) = 12;
        v170 = &v190;
        v78 = _os_log_send_and_compose_impl();

        if (v78)
        {
          oSLogObject7 = [MEMORY[0x277CCACA8] stringWithCString:v78 encoding:{4, &v190, v174}];
          free(v78);
          v170 = oSLogObject7;
          SSFileLog();
          goto LABEL_122;
        }

LABEL_199:
        fpanID = 0;
        paymentTokenData = 0;
        v81 = 0;
        v73 = 0;
        goto LABEL_124;
      }

      oSLogObject6 = [MEMORY[0x277CCACA8] stringWithCString:v63 encoding:{4, &v190, v174}];
      free(v63);
      v169 = oSLogObject6;
      SSFileLog();
    }

    goto LABEL_108;
  }

LABEL_128:
  context7 = [(ISBiometricSignatureOperation *)selfCopy context];
  isExtendedAction2 = [context7 isExtendedAction];
  v88 = isExtendedAction2;
  v89 = isExtendedAction2;

  if (v88)
  {
    goto LABEL_146;
  }

  touchIDDialog4 = [(ISBiometricSignatureOperation *)selfCopy touchIDDialog];
  isDualAction = [touchIDDialog4 isDualAction];

  mEMORY[0x277D69B38]8 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!mEMORY[0x277D69B38]8)
  {
    mEMORY[0x277D69B38]8 = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog11 = [mEMORY[0x277D69B38]8 shouldLog];
  if ([mEMORY[0x277D69B38]8 shouldLogToDisk])
  {
    v94 = shouldLog11 | 2;
  }

  else
  {
    v94 = shouldLog11;
  }

  oSLogObject8 = [mEMORY[0x277D69B38]8 OSLogObject];
  if (!os_log_type_enabled(oSLogObject8, OS_LOG_TYPE_DEFAULT))
  {
    v94 &= 2u;
  }

  if (v94)
  {
    v96 = objc_opt_class();
    v97 = MEMORY[0x277CCABB0];
    v98 = v96;
    v99 = [v97 numberWithBool:isDualAction];
    v190 = 138543618;
    v191 = v96;
    v192 = 2114;
    v193 = v99;
    LODWORD(v174) = 22;
    v171 = &v190;
    v100 = _os_log_send_and_compose_impl();

    selfCopy = v185;
    if (!v100)
    {
      goto LABEL_140;
    }

    oSLogObject8 = [MEMORY[0x277CCACA8] stringWithCString:v100 encoding:{4, &v190, v174}];
    free(v100);
    v171 = oSLogObject8;
    SSFileLog();
  }

LABEL_140:
  if (!isDualAction)
  {
    goto LABEL_146;
  }

  if (!+[ISBiometricStore shouldUseApplePayClassic])
  {
    if (+[ISBiometricStore shouldUseAutoEnrollment])
    {
      goto LABEL_145;
    }

LABEL_146:
    mEMORY[0x277D69B38]9 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38]9)
    {
      mEMORY[0x277D69B38]9 = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog12 = [mEMORY[0x277D69B38]9 shouldLog];
    if ([mEMORY[0x277D69B38]9 shouldLogToDisk])
    {
      v107 = shouldLog12 | 2;
    }

    else
    {
      v107 = shouldLog12;
    }

    oSLogObject9 = [mEMORY[0x277D69B38]9 OSLogObject];
    if (!os_log_type_enabled(oSLogObject9, OS_LOG_TYPE_DEFAULT))
    {
      v107 &= 2u;
    }

    if (v107)
    {
      v109 = objc_opt_class();
      v110 = MEMORY[0x277CCABB0];
      v111 = v109;
      v112 = [v110 numberWithInteger:v89];
      v190 = 138543618;
      v191 = v109;
      v192 = 2114;
      v193 = v112;
      LODWORD(v174) = 22;
      v171 = &v190;
      v113 = _os_log_send_and_compose_impl();

      selfCopy = v185;
      if (!v113)
      {
LABEL_157:

        if (v89)
        {
          goto LABEL_161;
        }

        context8 = [(ISBiometricSignatureOperation *)selfCopy context];
        v104 = 1;
        goto LABEL_159;
      }

      oSLogObject9 = [MEMORY[0x277CCACA8] stringWithCString:v113 encoding:{4, &v190, v174}];
      free(v113);
      v171 = oSLogObject9;
      SSFileLog();
    }

    goto LABEL_157;
  }

  context9 = [(ISBiometricSignatureOperation *)selfCopy context];
  v171 = [ISBiometricStore isActionSupported:3 withBiometricAuthenticationContext:context9];

  if (+[ISBiometricStore shouldUseAutoEnrollment])
  {
LABEL_145:
    context8 = [(ISBiometricSignatureOperation *)selfCopy context];
    v104 = 4;
LABEL_159:
    v171 = [ISBiometricStore isActionSupported:v104 withBiometricAuthenticationContext:context8, v171];
  }

  if (!v171)
  {
    mEMORY[0x277D69B38]10 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38]10)
    {
      mEMORY[0x277D69B38]10 = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog13 = [mEMORY[0x277D69B38]10 shouldLog];
    if ([mEMORY[0x277D69B38]10 shouldLogToDisk])
    {
      v136 = shouldLog13 | 2;
    }

    else
    {
      v136 = shouldLog13;
    }

    oSLogObject10 = [mEMORY[0x277D69B38]10 OSLogObject];
    if (!os_log_type_enabled(oSLogObject10, OS_LOG_TYPE_DEFAULT))
    {
      v136 &= 2u;
    }

    if (v136)
    {
      v138 = objc_opt_class();
      v190 = 138543362;
      v191 = v138;
      v139 = v138;
      LODWORD(v174) = 12;
      v173 = &v190;
      v140 = _os_log_send_and_compose_impl();

      if (!v140)
      {
        goto LABEL_187;
      }

      oSLogObject10 = [MEMORY[0x277CCACA8] stringWithCString:v140 encoding:{4, &v190, v174}];
      free(v140);
      v173 = oSLogObject10;
      SSFileLog();
    }

LABEL_187:
    mEMORY[0x277D69B38]11 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38]11)
    {
      mEMORY[0x277D69B38]11 = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog14 = [mEMORY[0x277D69B38]11 shouldLog];
    if ([mEMORY[0x277D69B38]11 shouldLogToDisk])
    {
      v143 = shouldLog14 | 2;
    }

    else
    {
      v143 = shouldLog14;
    }

    oSLogObject11 = [mEMORY[0x277D69B38]11 OSLogObject];
    if (!os_log_type_enabled(oSLogObject11, OS_LOG_TYPE_ERROR))
    {
      v143 &= 2u;
    }

    if (v143)
    {
      v145 = objc_opt_class();
      v190 = 138543618;
      v191 = v145;
      v192 = 2114;
      v193 = @"Incorrect ACL version";
      v146 = v145;
      LODWORD(v174) = 22;
      v147 = _os_log_send_and_compose_impl();

      if (!v147)
      {
LABEL_198:

        touchIDDialog3 = [MEMORY[0x277CCACA8] stringWithFormat:@"mt-tid-%@", accountIdentifier];
        v188 = *MEMORY[0x277CCA240];
        v189 = touchIDDialog3;
        paymentSheet3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v189 forKeys:&v188 count:1];
        mEMORY[0x277D69B38]7 = [MEMORY[0x277D69CB8] sharedStorage];
        [mEMORY[0x277D69B38]7 removeCookiesWithProperties:paymentSheet3];
        goto LABEL_199;
      }

      oSLogObject11 = [MEMORY[0x277CCACA8] stringWithCString:v147 encoding:{4, &v190, v174}];
      free(v147);
      SSFileLog();
    }

    goto LABEL_198;
  }

LABEL_161:
  mEMORY[0x277D69B38]12 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!mEMORY[0x277D69B38]12)
  {
    mEMORY[0x277D69B38]12 = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog15 = [mEMORY[0x277D69B38]12 shouldLog];
  if ([mEMORY[0x277D69B38]12 shouldLogToDisk])
  {
    v116 = shouldLog15 | 2;
  }

  else
  {
    v116 = shouldLog15;
  }

  oSLogObject12 = [mEMORY[0x277D69B38]12 OSLogObject];
  if (!os_log_type_enabled(oSLogObject12, OS_LOG_TYPE_DEFAULT))
  {
    v116 &= 2u;
  }

  if (v116)
  {
    v118 = objc_opt_class();
    v190 = 138543362;
    v191 = v118;
    v119 = v118;
    LODWORD(v174) = 12;
    v172 = &v190;
    v120 = _os_log_send_and_compose_impl();

    if (!v120)
    {
      goto LABEL_172;
    }

    oSLogObject12 = [MEMORY[0x277CCACA8] stringWithCString:v120 encoding:{4, &v190, v174}];
    free(v120);
    v172 = oSLogObject12;
    SSFileLog();
  }

LABEL_172:
  v187 = 0;
  touchIDDialog3 = [biometricStore publicKeyDataForAccountIdentifier:accountIdentifier purpose:v89 error:&v187];
  v82 = v187;
  if (touchIDDialog3)
  {
    paymentSheet3 = ISCopyEncodedBase64([touchIDDialog3 bytes], objc_msgSend(touchIDDialog3, "length"));
    mEMORY[0x277D69B38]7 = [challenge stringByAppendingString:paymentSheet3];
    v182 = [mEMORY[0x277D69B38]7 dataUsingEncoding:4];
    touchIDDialog5 = [(ISBiometricSignatureOperation *)selfCopy touchIDDialog];
    v122 = touchIDDialog5;
    v179 = accountIdentifier;
    if (touchIDDialog5)
    {
      v123 = MEMORY[0x277D69BE8];
      body = [touchIDDialog5 body];
      context10 = [(ISBiometricSignatureOperation *)selfCopy context];
      [context10 accountName];
      v127 = v126 = v122;
      v181 = [v123 stringWithFormattedUsernameForString:body username:v127];

      v122 = v126;
      v128 = [v126 buttonForButtonType:0];
      title = [v128 title];

      title2 = [v126 title];
      paymentSheet4 = [v126 paymentSheet];

      if (!paymentSheet4)
      {
        biometricStore = v184;
        selfCopy = v185;
        goto LABEL_213;
      }

      selfCopy = v185;
      context11 = [(ISBiometricSignatureOperation *)v185 context];
      [v126 paymentSheet];
      v133 = v132 = title;
      [context11 setPaymentSheet:v133];

      title = v132;
      biometricStore = v184;
    }

    else
    {
      context11 = [(ISBiometricSignatureOperation *)selfCopy context];
      [context11 accountName];
      v181 = title2 = 0;
      title = 0;
    }

LABEL_213:
    v151 = objc_alloc_init(MEMORY[0x277D69A78]);
    [v151 setCancelLabel:title];
    [v151 setReason:v181];
    [v151 setTitle:title2];
    context12 = [(ISBiometricSignatureOperation *)selfCopy context];
    v175 = v151;
    [context12 setConsolidatedDialog:v151];

    context13 = [(ISBiometricSignatureOperation *)selfCopy context];
    v186 = v82;
    v154 = [biometricStore signData:v182 context:context13 error:&v186];
    v73 = v186;

    v177 = v122;
    v178 = v154;
    v176 = title;
    if (!v154 || v73)
    {
      mEMORY[0x277D69B38]13 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
      if (!mEMORY[0x277D69B38]13)
      {
        mEMORY[0x277D69B38]13 = [MEMORY[0x277D69B38] sharedConfig];
      }

      shouldLog16 = [mEMORY[0x277D69B38]13 shouldLog];
      if ([mEMORY[0x277D69B38]13 shouldLogToDisk])
      {
        shouldLog16 |= 2u;
      }

      oSLogObject13 = [mEMORY[0x277D69B38]13 OSLogObject];
      if (!os_log_type_enabled(oSLogObject13, OS_LOG_TYPE_ERROR))
      {
        shouldLog16 &= 2u;
      }

      v159 = v175;
      if (!shouldLog16)
      {
        v81 = 0;
        goto LABEL_235;
      }

      v164 = objc_opt_class();
      v190 = 138543618;
      v191 = v164;
      v192 = 2114;
      v193 = v73;
      v165 = v164;
      LODWORD(v174) = 22;
      v170 = &v190;
      v162 = _os_log_send_and_compose_impl();

      v81 = 0;
      if (!v162)
      {
LABEL_236:

        context14 = [(ISBiometricSignatureOperation *)v185 context];
        paymentTokenData = [context14 paymentTokenData];

        context15 = [(ISBiometricSignatureOperation *)v185 context];
        fpanID = [context15 fpanID];

        accountIdentifier = v179;
        goto LABEL_124;
      }
    }

    else
    {
      v81 = ISCopyEncodedBase64([v154 bytes], objc_msgSend(v154, "length"));
      [biometricStore saveIdentityMapForAccountIdentifier:v179];
      mEMORY[0x277D69B38]13 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
      if (!mEMORY[0x277D69B38]13)
      {
        mEMORY[0x277D69B38]13 = [MEMORY[0x277D69B38] sharedConfig];
      }

      shouldLog17 = [mEMORY[0x277D69B38]13 shouldLog];
      if ([mEMORY[0x277D69B38]13 shouldLogToDisk])
      {
        v157 = shouldLog17 | 2;
      }

      else
      {
        v157 = shouldLog17;
      }

      oSLogObject13 = [mEMORY[0x277D69B38]13 OSLogObject];
      if (!os_log_type_enabled(oSLogObject13, OS_LOG_TYPE_DEBUG))
      {
        v157 &= 2u;
      }

      v159 = v175;
      if (!v157)
      {
        goto LABEL_235;
      }

      v160 = objc_opt_class();
      v190 = 138543362;
      v191 = v160;
      v161 = v160;
      LODWORD(v174) = 12;
      v170 = &v190;
      v162 = _os_log_send_and_compose_impl();

      if (!v162)
      {
        goto LABEL_236;
      }
    }

    oSLogObject13 = [MEMORY[0x277CCACA8] stringWithCString:v162 encoding:{4, &v190, v174}];
    free(v162);
    v170 = oSLogObject13;
    SSFileLog();
LABEL_235:

    goto LABEL_236;
  }

  paymentSheet3 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!paymentSheet3)
  {
    paymentSheet3 = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog18 = [paymentSheet3 shouldLog];
  if ([paymentSheet3 shouldLogToDisk])
  {
    shouldLog18 |= 2u;
  }

  mEMORY[0x277D69B38]7 = [paymentSheet3 OSLogObject];
  if (!os_log_type_enabled(mEMORY[0x277D69B38]7, OS_LOG_TYPE_ERROR))
  {
    shouldLog18 &= 2u;
  }

  if (!shouldLog18)
  {
LABEL_209:
    fpanID = 0;
    paymentTokenData = 0;
    v81 = 0;
    v73 = v82;
    goto LABEL_124;
  }

  v149 = objc_opt_class();
  v190 = 138543618;
  v191 = v149;
  v192 = 2114;
  v193 = v82;
  v150 = v149;
  LODWORD(v174) = 22;
  v170 = &v190;
  v81 = _os_log_send_and_compose_impl();

  if (v81)
  {
    mEMORY[0x277D69B38]7 = [MEMORY[0x277CCACA8] stringWithCString:v81 encoding:{4, &v190, v174}];
    free(v81);
    v170 = mEMORY[0x277D69B38]7;
    SSFileLog();
    goto LABEL_209;
  }

  fpanID = 0;
  paymentTokenData = 0;
LABEL_125:

  [(ISOperation *)selfCopy setError:v82];
  [(ISOperation *)selfCopy setSuccess:v81 != 0, v170];
  outputBlock = [(ISBiometricSignatureOperation *)selfCopy outputBlock];
  v84 = outputBlock;
  if (outputBlock)
  {
    (*(outputBlock + 16))(outputBlock, v81, paymentTokenData, fpanID, v82);
  }

  v85 = *MEMORY[0x277D85DE8];
}

- (BOOL)_promptUserToAuthenticateForIdentityMapChangeWithAccountIdentifier:(id)identifier accountName:(id)name
{
  v70 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  identifierCopy = identifier;
  v8 = +[ISDevice sharedInstance];
  deviceBiometricStyle = [v8 deviceBiometricStyle];

  v10 = [objc_alloc(MEMORY[0x277D69BC8]) initWithAccountIdentifier:identifierCopy];
  [v10 setCanCreateNewAccount:0];
  [v10 setCanSetActiveAccount:0];
  [v10 setPromptStyle:1];
  [v10 setShouldCreateNewSession:1];
  v63 = nameCopy;
  if ([nameCopy length])
  {
    if (deviceBiometricStyle == 3)
    {
      v11 = MEMORY[0x277CCACA8];
      v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v13 = v12;
      v14 = @"PROMPT_REASON_NEW_FACE_FORMAT_%@";
      goto LABEL_9;
    }

    if (deviceBiometricStyle == 2)
    {
      v11 = MEMORY[0x277CCACA8];
      v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v13 = v12;
      v14 = @"PROMPT_REASON_NEW_FINGERS_FORMAT_%@";
LABEL_9:
      v17 = [v12 localizedStringForKey:v14 value:&stru_2884BCFD0 table:@"Mesa"];
      nameCopy = [v11 stringWithFormat:v17, nameCopy];

LABEL_22:
      goto LABEL_36;
    }

    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    if ([mEMORY[0x277D69B38] shouldLogToDisk])
    {
      v21 = shouldLog | 2;
    }

    else
    {
      v21 = shouldLog;
    }

    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v23 = v21;
    }

    else
    {
      v23 = v21 & 2;
    }

    if (!v23)
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  if (deviceBiometricStyle == 3)
  {
    v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = v15;
    v16 = @"PROMPT_REASON_NEW_FACE_ANONYMOUS";
    goto LABEL_21;
  }

  if (deviceBiometricStyle == 2)
  {
    v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = v15;
    v16 = @"PROMPT_REASON_NEW_FINGERS_ANONYMOUS";
LABEL_21:
    nameCopy = [v15 localizedStringForKey:v16 value:&stru_2884BCFD0 table:@"Mesa"];
    goto LABEL_22;
  }

  mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!mEMORY[0x277D69B38])
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog2 = [mEMORY[0x277D69B38] shouldLog];
  if ([mEMORY[0x277D69B38] shouldLogToDisk])
  {
    v25 = shouldLog2 | 2;
  }

  else
  {
    v25 = shouldLog2;
  }

  oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v26 = v25;
  }

  else
  {
    v26 = v25 & 2;
  }

  if (!v26)
  {
    goto LABEL_34;
  }

LABEL_32:
  v66 = 138543362;
  v67 = objc_opt_class();
  v27 = v67;
  LODWORD(v61) = 12;
  v59 = &v66;
  v28 = _os_log_send_and_compose_impl();

  if (v28)
  {
    oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v28 encoding:{4, &v66, v61}];
    free(v28);
    v59 = oSLogObject;
    SSFileLog();
LABEL_34:
  }

  nameCopy = 0;
LABEL_36:
  [v10 setReasonDescription:{nameCopy, v59}];
  v29 = dispatch_semaphore_create(0);
  v30 = objc_alloc_init(ISServerAuthenticationOperation);
  [(ISServerAuthenticationOperation *)v30 setAuthenticationContext:v10];
  fallbackDialog = [(ISBiometricSignatureOperation *)self fallbackDialog];
  [(ISServerAuthenticationOperation *)v30 setDialog:fallbackDialog];

  [(ISServerAuthenticationOperation *)v30 setPerformsButtonAction:0];
  v64[0] = MEMORY[0x277D85DD0];
  v64[1] = 3221225472;
  v64[2] = __112__ISBiometricSignatureOperation__promptUserToAuthenticateForIdentityMapChangeWithAccountIdentifier_accountName___block_invoke;
  v64[3] = &unk_27A670868;
  v64[4] = self;
  v32 = v29;
  v65 = v32;
  [(ISServerAuthenticationOperation *)v30 setCompletionBlock:v64];
  v33 = +[ISOperationQueue mainQueue];
  [v33 addOperation:v30];

  v34 = dispatch_time(0, 30000000000);
  if (!dispatch_semaphore_wait(v32, v34))
  {
    goto LABEL_50;
  }

  mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!mEMORY[0x277D69B38]2)
  {
    mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog3 = [mEMORY[0x277D69B38]2 shouldLog];
  if ([mEMORY[0x277D69B38]2 shouldLogToDisk])
  {
    v37 = shouldLog3 | 2;
  }

  else
  {
    v37 = shouldLog3;
  }

  oSLogObject2 = [mEMORY[0x277D69B38]2 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
  {
    v39 = v37;
  }

  else
  {
    v39 = v37 & 2;
  }

  if (!v39)
  {
    goto LABEL_48;
  }

  v40 = objc_opt_class();
  v66 = 138543362;
  v67 = v40;
  v41 = v40;
  LODWORD(v61) = 12;
  v60 = &v66;
  v42 = _os_log_send_and_compose_impl();

  if (v42)
  {
    oSLogObject2 = [MEMORY[0x277CCACA8] stringWithCString:v42 encoding:{4, &v66, v61}];
    free(v42);
    v60 = oSLogObject2;
    SSFileLog();
LABEL_48:
  }

LABEL_50:
  success = [(ISOperation *)v30 success];
  error = [(ISOperation *)v30 error];

  if (error)
  {
    mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38]3)
    {
      mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog4 = [mEMORY[0x277D69B38]3 shouldLog];
    if ([mEMORY[0x277D69B38]3 shouldLogToDisk])
    {
      v47 = shouldLog4 | 2;
    }

    else
    {
      v47 = shouldLog4;
    }

    oSLogObject3 = [mEMORY[0x277D69B38]3 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
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
      v62 = v50;
      [(ISOperation *)v30 error];
      v51 = v32;
      v52 = success;
      v53 = v10;
      v55 = v54 = nameCopy;
      v66 = 138543618;
      v67 = v50;
      v68 = 2114;
      v69 = v55;
      LODWORD(v61) = 22;
      v56 = _os_log_send_and_compose_impl();

      nameCopy = v54;
      v10 = v53;
      success = v52;
      v32 = v51;

      if (!v56)
      {
LABEL_63:

        goto LABEL_64;
      }

      oSLogObject3 = [MEMORY[0x277CCACA8] stringWithCString:v56 encoding:{4, &v66, v61}];
      free(v56);
      SSFileLog();
    }

    goto LABEL_63;
  }

LABEL_64:

  v57 = *MEMORY[0x277D85DE8];
  return success;
}

intptr_t __112__ISBiometricSignatureOperation__promptUserToAuthenticateForIdentityMapChangeWithAccountIdentifier_accountName___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
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
  if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v4 &= 2u;
  }

  if (!v4)
  {
    goto LABEL_11;
  }

  v6 = *(a1 + 32);
  LODWORD(v12) = 138543362;
  *(&v12 + 4) = objc_opt_class();
  v7 = *(&v12 + 4);
  LODWORD(v11) = 12;
  v8 = _os_log_send_and_compose_impl();

  if (v8)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithCString:v8 encoding:{4, &v12, v11, v12}];
    free(v8);
    SSFileLog();
LABEL_11:
  }

  result = dispatch_semaphore_signal(*(a1 + 40));
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

@end