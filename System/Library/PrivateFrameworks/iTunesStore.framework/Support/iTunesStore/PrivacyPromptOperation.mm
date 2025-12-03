@interface PrivacyPromptOperation
- (PrivacyPromptOperation)initWithPrivacyIdentifier:(id)identifier;
- (id)_privacyAcknowledgementURLString;
- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error;
- (void)remoteAlertHandleDidDeactivate:(id)deactivate;
- (void)run;
@end

@implementation PrivacyPromptOperation

- (PrivacyPromptOperation)initWithPrivacyIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = PrivacyPromptOperation;
  v6 = [(PrivacyPromptOperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_privacyIdentifier, identifier);
  }

  return v7;
}

- (void)run
{
  v3 = MKBGetDeviceLockState();
  if (!v3 || v3 == 3)
  {
    privacyIdentifier = [(PrivacyPromptOperation *)self privacyIdentifier];
    if (![SSPrivacyController shouldDisplayPrivacyLinkWithIdentifier:privacyIdentifier])
    {
      v34 = 0;
      v26 = 2;
LABEL_80:

      goto LABEL_81;
    }

    v5 = dispatch_semaphore_create(0);
    privacyPromptSemaphore = self->_privacyPromptSemaphore;
    self->_privacyPromptSemaphore = v5;

    *v80 = 0;
    *&v80[8] = v80;
    *&v80[16] = 0x2020000000;
    LOBYTE(v81) = 0;
    v73 = [[SBSRemoteAlertDefinition alloc] initWithServiceName:@"com.apple.ios.StoreKitUIService" viewControllerClassName:@"ServicePrivacyPromptViewController"];
    v7 = objc_alloc_init(SBSRemoteAlertConfigurationContext);
    v8 = objc_alloc_init(BSMutableSettings);
    v75[0] = _NSConcreteStackBlock;
    v75[1] = 3221225472;
    v75[2] = sub_1001B211C;
    v75[3] = &unk_10032A8B0;
    v75[4] = self;
    v75[5] = v80;
    v9 = [[BSAction alloc] initWithInfo:v8 timeout:0 forResponseOnQueue:v75 withHandler:0.0];
    v10 = [NSSet setWithObject:v9];
    [v7 setActions:v10];
    v71 = v8;
    v72 = v9;
    v74 = v7;

    _privacyAcknowledgementURLString = [(PrivacyPromptOperation *)self _privacyAcknowledgementURLString];
    v12 = _privacyAcknowledgementURLString;
    if (privacyIdentifier)
    {
      v13 = _privacyAcknowledgementURLString == 0;
    }

    else
    {
      v13 = 1;
    }

    v14 = !v13;
    HIDWORD(v70) = v14;
    if (!v13)
    {
      v76[0] = @"privacyIdentifier";
      v76[1] = @"privacyAcknowledgementUrlString";
      v77[0] = privacyIdentifier;
      v77[1] = _privacyAcknowledgementURLString;
      v15 = [NSDictionary dictionaryWithObjects:v77 forKeys:v76 count:2];
      [v7 setUserInfo:v15];

      completion = [SBSRemoteAlertHandle newHandleWithDefinition:v73 configurationContext:v7];
      if (completion)
      {
        v17 = +[SSLogConfig sharedDaemonConfig];
        if (!v17)
        {
          v17 = +[SSLogConfig sharedConfig];
        }

        shouldLog = [v17 shouldLog];
        shouldLogToDisk = [v17 shouldLogToDisk];
        oSLogObject = [v17 OSLogObject];
        v21 = oSLogObject;
        if (shouldLogToDisk)
        {
          shouldLog |= 2u;
        }

        if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
        {
          shouldLog &= 2u;
        }

        if (shouldLog)
        {
          v22 = objc_opt_class();
          v78 = 138543362;
          v79 = v22;
          v23 = v22;
          LODWORD(v70) = 12;
          v69 = &v78;
          v24 = _os_log_send_and_compose_impl();

          if (!v24)
          {
LABEL_22:

            [completion addObserver:self];
            [completion activateWithContext:0];
            dispatch_semaphore_wait(self->_privacyPromptSemaphore, 0xFFFFFFFFFFFFFFFFLL);
            if (*(*&v80[8] + 24) != 1)
            {
              v26 = 0;
              goto LABEL_78;
            }

            v25 = [NSURL URLWithString:v12];
            [SSPrivacyController acknowledgePrivacyLinkWithIdentifier:privacyIdentifier URL:v25];
            v26 = 1;
LABEL_61:

LABEL_78:
            v34 = 0;
LABEL_79:

            _Block_object_dispose(v80, 8);
            if ((v70 & 0x100000000) == 0)
            {
              goto LABEL_95;
            }

            goto LABEL_80;
          }

          v21 = [NSString stringWithCString:v24 encoding:4, &v78, v70, v71, v72];
          free(v24);
          v69 = v21;
          SSFileLog();
        }

        goto LABEL_22;
      }

      v51 = +[SSLogConfig sharedDaemonConfig];
      if (!v51)
      {
        v51 = +[SSLogConfig sharedConfig];
      }

      shouldLog2 = [v51 shouldLog];
      shouldLogToDisk2 = [v51 shouldLogToDisk];
      oSLogObject2 = [v51 OSLogObject];
      v55 = oSLogObject2;
      if (shouldLogToDisk2)
      {
        shouldLog2 |= 2u;
      }

      if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
      {
        shouldLog2 &= 2u;
      }

      if (shouldLog2)
      {
        v56 = objc_opt_class();
        v78 = 138543362;
        v79 = v56;
        v57 = v56;
        LODWORD(v70) = 12;
        v69 = &v78;
        v58 = _os_log_send_and_compose_impl();

        if (!v58)
        {
LABEL_74:

          v34 = SSError();
          goto LABEL_76;
        }

        v55 = [NSString stringWithCString:v58 encoding:4, &v78, v70, v71, v72];
        free(v58);
        v69 = v55;
        SSFileLog();
      }

      goto LABEL_74;
    }

    if (privacyIdentifier)
    {
LABEL_47:
      if (v12)
      {
LABEL_59:
        completion = [(PrivacyPromptOperation *)self completion];
        if (completion)
        {
          v25 = SSError();
          v26 = 3;
          (*(completion + 2))(completion, 3, v25);
          goto LABEL_61;
        }

        v34 = 0;
LABEL_76:
        v26 = 3;
        goto LABEL_79;
      }

      v43 = +[SSLogConfig sharedDaemonConfig];
      if (!v43)
      {
        v43 = +[SSLogConfig sharedConfig];
      }

      shouldLog3 = [v43 shouldLog];
      shouldLogToDisk3 = [v43 shouldLogToDisk];
      oSLogObject3 = [v43 OSLogObject];
      v47 = oSLogObject3;
      if (shouldLogToDisk3)
      {
        shouldLog3 |= 2u;
      }

      if (!os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
      {
        shouldLog3 &= 2u;
      }

      if (shouldLog3)
      {
        v48 = objc_opt_class();
        v78 = 138543362;
        v79 = v48;
        v49 = v48;
        LODWORD(v70) = 12;
        v69 = &v78;
        v50 = _os_log_send_and_compose_impl();

        if (!v50)
        {
LABEL_58:

          goto LABEL_59;
        }

        v47 = [NSString stringWithCString:v50 encoding:4, &v78, v70];
        free(v50);
        v69 = v47;
        SSFileLog();
      }

      goto LABEL_58;
    }

    v35 = +[SSLogConfig sharedDaemonConfig];
    if (!v35)
    {
      v35 = +[SSLogConfig sharedConfig];
    }

    shouldLog4 = [v35 shouldLog];
    shouldLogToDisk4 = [v35 shouldLogToDisk];
    oSLogObject4 = [v35 OSLogObject];
    v39 = oSLogObject4;
    if (shouldLogToDisk4)
    {
      shouldLog4 |= 2u;
    }

    if (!os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_ERROR))
    {
      shouldLog4 &= 2u;
    }

    if (shouldLog4)
    {
      v40 = objc_opt_class();
      v78 = 138543362;
      v79 = v40;
      v41 = v40;
      LODWORD(v70) = 12;
      v69 = &v78;
      v42 = _os_log_send_and_compose_impl();

      if (!v42)
      {
LABEL_46:

        goto LABEL_47;
      }

      v39 = [NSString stringWithCString:v42 encoding:4, &v78, v70, v71, v72];
      free(v42);
      v69 = v39;
      SSFileLog();
    }

    goto LABEL_46;
  }

  v27 = +[SSLogConfig sharedDaemonConfig];
  if (!v27)
  {
    v27 = +[SSLogConfig sharedConfig];
  }

  shouldLog5 = [v27 shouldLog];
  if ([v27 shouldLogToDisk])
  {
    v29 = shouldLog5 | 2;
  }

  else
  {
    v29 = shouldLog5;
  }

  oSLogObject5 = [v27 OSLogObject];
  if (!os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_ERROR))
  {
    v29 &= 2u;
  }

  if (v29)
  {
    *v80 = 138543362;
    *&v80[4] = objc_opt_class();
    v31 = *&v80[4];
    LODWORD(v70) = 12;
    v69 = v80;
    v32 = _os_log_send_and_compose_impl();

    if (v32)
    {
      v33 = [NSString stringWithCString:v32 encoding:4, v80, v70];
      free(v32);
      v69 = v33;
      SSFileLog();
    }
  }

  else
  {
  }

  v34 = SSError();
  v26 = 3;
LABEL_81:
  [(PrivacyPromptOperation *)self setError:v34, v69];
  [(PrivacyPromptOperation *)self setSuccess:(v26 - 1) < 2];
  v59 = +[SSLogConfig sharedDaemonConfig];
  if (!v59)
  {
    v59 = +[SSLogConfig sharedConfig];
  }

  shouldLog6 = [v59 shouldLog];
  if ([v59 shouldLogToDisk])
  {
    v61 = shouldLog6 | 2;
  }

  else
  {
    v61 = shouldLog6;
  }

  oSLogObject6 = [v59 OSLogObject];
  if (os_log_type_enabled(oSLogObject6, OS_LOG_TYPE_DEFAULT))
  {
    v63 = v61;
  }

  else
  {
    v63 = v61 & 2;
  }

  if (v63)
  {
    v64 = objc_opt_class();
    v65 = v64;
    v66 = [NSNumber numberWithUnsignedInteger:v26];
    *v80 = 138543874;
    *&v80[4] = v64;
    *&v80[12] = 2114;
    *&v80[14] = v66;
    *&v80[22] = 2114;
    v81 = v34;
    LODWORD(v70) = 32;
    v67 = _os_log_send_and_compose_impl();

    if (!v67)
    {
      goto LABEL_93;
    }

    oSLogObject6 = [NSString stringWithCString:v67 encoding:4, v80, v70];
    free(v67);
    SSFileLog();
  }

LABEL_93:
  completion2 = [(PrivacyPromptOperation *)self completion];
  privacyIdentifier = completion2;
  if (completion2)
  {
    (*(completion2 + 16))(completion2, v26, v34);
  }

LABEL_95:
}

- (void)remoteAlertHandleDidDeactivate:(id)deactivate
{
  v4 = +[SSLogConfig sharedDaemonConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    v6 = shouldLog | 2;
  }

  else
  {
    v6 = shouldLog;
  }

  oSLogObject = [v4 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v6 &= 2u;
  }

  if (!v6)
  {
    goto LABEL_11;
  }

  LODWORD(v11) = 138543362;
  *(&v11 + 4) = objc_opt_class();
  v8 = *(&v11 + 4);
  LODWORD(v10) = 12;
  v9 = _os_log_send_and_compose_impl();

  if (v9)
  {
    oSLogObject = [NSString stringWithCString:v9 encoding:4, &v11, v10, v11];
    free(v9);
    SSFileLog();
LABEL_11:
  }

  dispatch_semaphore_signal(self->_privacyPromptSemaphore);
}

- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error
{
  errorCopy = error;
  v6 = +[SSLogConfig sharedDaemonConfig];
  if (!v6)
  {
    v6 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v6 shouldLog];
  if ([v6 shouldLogToDisk])
  {
    v8 = shouldLog | 2;
  }

  else
  {
    v8 = shouldLog;
  }

  oSLogObject = [v6 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v8 &= 2u;
  }

  if (!v8)
  {
    goto LABEL_11;
  }

  *v13 = 138543618;
  *&v13[4] = objc_opt_class();
  *&v13[12] = 2114;
  *&v13[14] = errorCopy;
  v10 = *&v13[4];
  LODWORD(v12) = 22;
  v11 = _os_log_send_and_compose_impl();

  if (v11)
  {
    oSLogObject = [NSString stringWithCString:v11 encoding:4, v13, v12, *v13, *&v13[16]];
    free(v11);
    SSFileLog();
LABEL_11:
  }

  dispatch_semaphore_signal(self->_privacyPromptSemaphore);
}

- (id)_privacyAcknowledgementURLString
{
  v3 = [ISLoadURLBagOperation alloc];
  v4 = [SSURLBagContext contextWithBagType:0];
  v5 = [v3 initWithBagContext:v4];

  v21 = 0;
  v6 = [(PrivacyPromptOperation *)self runSubOperation:v5 returningError:&v21];
  v7 = v21;
  v8 = v7;
  if (v6)
  {
    uRLBag = [v5 URLBag];
    goto LABEL_17;
  }

  if (v7)
  {
    v10 = +[SSLogConfig sharedDaemonConfig];
    if (!v10)
    {
      v10 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v10 shouldLog];
    if ([v10 shouldLogToDisk])
    {
      v12 = shouldLog | 2;
    }

    else
    {
      v12 = shouldLog;
    }

    oSLogObject = [v10 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v12 &= 2u;
    }

    if (v12)
    {
      v14 = objc_opt_class();
      v22 = 138543362;
      v23 = v14;
      v15 = v14;
      LODWORD(v20) = 12;
      v19 = &v22;
      v16 = _os_log_send_and_compose_impl();

      if (!v16)
      {
LABEL_15:

        goto LABEL_16;
      }

      oSLogObject = [NSString stringWithCString:v16 encoding:4, &v22, v20];
      free(v16);
      v19 = oSLogObject;
      SSFileLog();
    }

    goto LABEL_15;
  }

LABEL_16:
  uRLBag = 0;
LABEL_17:
  v17 = [uRLBag valueForKey:{@"privacyAcknowledgementUrl", v19}];

  return v17;
}

@end