@interface AcceptTermsAndConditionsOperation
- (AcceptTermsAndConditionsOperation)initWithAccount:(id)account;
- (BOOL)isUserAccepted;
- (id)_newTermsAcceptSrvOperation;
- (id)_newTermsCheckSrvOperation;
- (void)_acceptTermsAndConditionsWithBlock:(id)block;
- (void)_checkTermsAndConditionsWithBlock:(id)block;
- (void)_dismissTermsAndConditionsWithAcceptance:(BOOL)acceptance;
- (void)_presentTermsAndConditions;
- (void)alertProxy:(id)proxy didReceiveMessage:(id)message;
- (void)run;
- (void)setUserAccepted:(BOOL)accepted;
@end

@implementation AcceptTermsAndConditionsOperation

- (AcceptTermsAndConditionsOperation)initWithAccount:(id)account
{
  accountCopy = account;
  v9.receiver = self;
  v9.super_class = AcceptTermsAndConditionsOperation;
  v6 = [(AcceptTermsAndConditionsOperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, account);
  }

  return v7;
}

- (BOOL)isUserAccepted
{
  [(AcceptTermsAndConditionsOperation *)self lock];
  userAccepted = self->_userAccepted;
  [(AcceptTermsAndConditionsOperation *)self unlock];
  return userAccepted;
}

- (void)setUserAccepted:(BOOL)accepted
{
  [(AcceptTermsAndConditionsOperation *)self lock];
  self->_userAccepted = accepted;

  [(AcceptTermsAndConditionsOperation *)self unlock];
}

- (void)run
{
  v3 = +[SSLogConfig sharedDaemonConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    v5 = shouldLog | 2;
  }

  else
  {
    v5 = shouldLog;
  }

  oSLogObject = [v3 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
  {
    v5 &= 2u;
  }

  if (v5)
  {
    LODWORD(v28) = 138412290;
    *(&v28 + 4) = objc_opt_class();
    v7 = *(&v28 + 4);
    LODWORD(v22) = 12;
    v21 = &v28;
    v8 = _os_log_send_and_compose_impl();

    if (v8)
    {
      v9 = [NSString stringWithCString:v8 encoding:4, &v28, v22];
      free(v8);
      v21 = v9;
      SSFileLog();
    }
  }

  else
  {
  }

  *&v28 = 0;
  *(&v28 + 1) = &v28;
  v29 = 0x3032000000;
  v30 = sub_10009D908;
  v31 = sub_10009D918;
  v32 = 0;
  if (!self->_account)
  {
    v12 = +[SSLogConfig sharedDaemonConfig];
    if (!v12)
    {
      v12 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v12 shouldLog];
    shouldLogToDisk = [v12 shouldLogToDisk];
    oSLogObject2 = [v12 OSLogObject];
    v16 = oSLogObject2;
    if (shouldLogToDisk)
    {
      shouldLog2 |= 2u;
    }

    if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      shouldLog2 &= 2u;
    }

    if (shouldLog2)
    {
      LODWORD(location[0]) = 138412290;
      *(location + 4) = objc_opt_class();
      v17 = *(location + 4);
      LODWORD(v22) = 12;
      v21 = location;
      v18 = _os_log_send_and_compose_impl();

      if (!v18)
      {
LABEL_27:

        v19 = SSError();
        v20 = *(*(&v28 + 1) + 40);
        *(*(&v28 + 1) + 40) = v19;

        goto LABEL_28;
      }

      v16 = [NSString stringWithCString:v18 encoding:4, location, v22];
      free(v18);
      v21 = v16;
      SSFileLog();
    }

    goto LABEL_27;
  }

  objc_initWeak(location, self);
  v10 = dispatch_semaphore_create(0);
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10009D920;
  v23[3] = &unk_100327510;
  objc_copyWeak(&v26, location);
  v25 = &v28;
  v23[4] = self;
  v11 = v10;
  v24 = v11;
  [(AcceptTermsAndConditionsOperation *)self _checkTermsAndConditionsWithBlock:v23];
  dispatch_semaphore_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
  if (!self->_userAccepted && !*(*(&v28 + 1) + 40))
  {
    [(AcceptTermsAndConditionsOperation *)self _presentTermsAndConditions];
  }

  objc_destroyWeak(&v26);
  objc_destroyWeak(location);
LABEL_28:
  [(AcceptTermsAndConditionsOperation *)self setError:*(*(&v28 + 1) + 40), v21];
  [(AcceptTermsAndConditionsOperation *)self setSuccess:self->_result];
  _Block_object_dispose(&v28, 8);
}

- (void)alertProxy:(id)proxy didReceiveMessage:(id)message
{
  v5 = xpc_dictionary_get_value(message, "1");
  xBOOL = v5;
  v6 = v5 && xpc_get_type(v5) == &_xpc_type_BOOL && xpc_BOOL_get_value(xBOOL);
  [(AcceptTermsAndConditionsOperation *)self _dismissTermsAndConditionsWithAcceptance:v6];
}

- (void)_acceptTermsAndConditionsWithBlock:(id)block
{
  blockCopy = block;
  _newTermsAcceptSrvOperation = [(AcceptTermsAndConditionsOperation *)self _newTermsAcceptSrvOperation];
  v6 = +[ISDataProvider provider];
  [_newTermsAcceptSrvOperation setDataProvider:v6];

  [_newTermsAcceptSrvOperation setNeedsAuthentication:1];
  [_newTermsAcceptSrvOperation setNeedsTermsAndConditionsAcceptance:0];
  v14 = 0;
  v7 = [(AcceptTermsAndConditionsOperation *)self runSubOperation:_newTermsAcceptSrvOperation returningError:&v14];
  v8 = v14;
  if (blockCopy && v7)
  {
    dataProvider = [_newTermsAcceptSrvOperation dataProvider];
    output = [dataProvider output];

    if (output)
    {
      v13 = v8;
      v11 = [[SSTermsAndConditions alloc] initWithResponseData:output error:&v13];
      v12 = v13;

      v8 = v12;
    }

    else
    {
      v11 = 0;
    }

    blockCopy[2](blockCopy, [v11 isUserAccepted], v8);
  }
}

- (void)_checkTermsAndConditionsWithBlock:(id)block
{
  blockCopy = block;
  _newTermsCheckSrvOperation = [(AcceptTermsAndConditionsOperation *)self _newTermsCheckSrvOperation];
  v6 = +[ISDataProvider provider];
  [_newTermsCheckSrvOperation setDataProvider:v6];

  [_newTermsCheckSrvOperation setNeedsAuthentication:1];
  [_newTermsCheckSrvOperation setNeedsTermsAndConditionsAcceptance:0];
  v13 = 0;
  LODWORD(v6) = [(AcceptTermsAndConditionsOperation *)self runSubOperation:_newTermsCheckSrvOperation returningError:&v13];
  v7 = v13;
  if (v6)
  {
    if (blockCopy)
    {
      dataProvider = [_newTermsCheckSrvOperation dataProvider];
      output = [dataProvider output];

      if (output)
      {
        v12 = v7;
        v10 = [[SSTermsAndConditions alloc] initWithResponseData:output error:&v12];
        v11 = v12;

        v7 = v11;
      }

      else
      {
        v10 = 0;
      }

      blockCopy[2](blockCopy, v10, v7);
    }
  }

  else if (blockCopy)
  {
    blockCopy[2](blockCopy, 0, v7);
  }
}

- (void)_dismissTermsAndConditionsWithAcceptance:(BOOL)acceptance
{
  acceptanceCopy = acceptance;
  v5 = +[SSLogConfig sharedDaemonConfig];
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
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
  {
    v7 &= 2u;
  }

  if (!v7)
  {
    goto LABEL_13;
  }

  v9 = objc_opt_class();
  v10 = @"NO";
  if (acceptanceCopy)
  {
    v10 = @"YES";
  }

  v20 = 138412546;
  v21 = v9;
  v22 = 2112;
  v23 = v10;
  v11 = v9;
  LODWORD(v18) = 22;
  v17 = &v20;
  v12 = _os_log_send_and_compose_impl();

  if (v12)
  {
    oSLogObject = [NSString stringWithCString:v12 encoding:4, &v20, v18];
    free(v12);
    v17 = oSLogObject;
    SSFileLog();
LABEL_13:
  }

  [(AcceptTermsAndConditionsOperation *)self lock];
  self->_userAccepted = acceptanceCopy;
  self->_result = 1;
  alertSemaphore = self->_alertSemaphore;
  if (alertSemaphore)
  {
    v14 = alertSemaphore;
    v15 = self->_alertSemaphore;
    self->_alertSemaphore = 0;
  }

  [(SpringBoardAlertProxy *)self->_alertProxy setDelegate:0, v17];
  alertProxy = self->_alertProxy;
  self->_alertProxy = 0;

  [(AcceptTermsAndConditionsOperation *)self unlock];
  if (self->_userAccepted)
  {
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10009E518;
    v19[3] = &unk_100327538;
    v19[4] = self;
    [(AcceptTermsAndConditionsOperation *)self _acceptTermsAndConditionsWithBlock:v19];
  }

  if (alertSemaphore)
  {
    dispatch_semaphore_signal(alertSemaphore);
  }
}

- (id)_newTermsAcceptSrvOperation
{
  v3 = objc_alloc_init(ISStoreURLOperation);
  v4 = objc_alloc_init(SSMutableURLRequestProperties);
  [v4 setITunesStoreRequest:1];
  [v4 setURLBagKey:@"terms-check"];
  [v4 setHTTPMethod:@"POST"];
  v5 = objc_alloc_init(NSMutableDictionary);
  v6 = [NSNumber numberWithLongLong:[(SSTermsAndConditions *)self->_conditions currentVersionIdentifier]];
  [v5 setObject:v6 forKey:@"accepted"];

  v7 = [NSJSONSerialization dataWithJSONObject:v5 options:0 error:0];
  [v4 setHTTPBody:v7];

  [v3 setRequestProperties:v4];
  v8 = [[SSMutableAuthenticationContext alloc] initWithAccount:self->_account];
  [v8 setShouldIgnoreAccountConversion:1];
  [v8 setPromptStyle:1001];
  v9 = [v8 copy];
  [v3 setAuthenticationContext:v9];

  return v3;
}

- (id)_newTermsCheckSrvOperation
{
  v3 = objc_alloc_init(ISStoreURLOperation);
  v4 = objc_alloc_init(SSMutableURLRequestProperties);
  [v4 setITunesStoreRequest:1];
  [v4 setURLBagKey:@"terms-check"];
  [v3 setRequestProperties:v4];
  v5 = [[SSMutableAuthenticationContext alloc] initWithAccount:self->_account];
  [v5 setShouldIgnoreAccountConversion:1];
  [v5 setPromptStyle:1001];
  v6 = [v5 copy];
  [v3 setAuthenticationContext:v6];

  return v3;
}

- (void)_presentTermsAndConditions
{
  v3 = +[ISDevice sharedInstance];
  copyActivePowerAssertionIdentifiers = [(AcceptTermsAndConditionsOperation *)self copyActivePowerAssertionIdentifiers];
  v5 = +[SSLogConfig sharedDaemonConfig];
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
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
  {
    v7 &= 2u;
  }

  if (v7)
  {
    v9 = objc_opt_class();
    v10 = v9;
    *location = 138412546;
    *&location[4] = v9;
    v45 = 2048;
    v46 = [copyActivePowerAssertionIdentifiers count];
    LODWORD(v31) = 22;
    v30 = location;
    v11 = _os_log_send_and_compose_impl();

    if (v11)
    {
      v12 = [NSString stringWithCString:v11 encoding:4, location, v31];
      free(v11);
      v30 = v12;
      SSFileLog();
    }
  }

  else
  {
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v13 = copyActivePowerAssertionIdentifiers;
  v14 = [v13 countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v14)
  {
    v15 = *v39;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v39 != v15)
        {
          objc_enumerationMutation(v13);
        }

        [v3 releasePowerAssertion:{*(*(&v38 + 1) + 8 * i), v30}];
      }

      v14 = [v13 countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v14);
  }

  v17 = +[Daemon daemon];
  [v17 beginShowingDialog];
  v18 = objc_alloc_init(NSMutableDictionary);
  [v18 setObject:@"ServiceTermsPageViewController" forKey:SBSUIRemoteAlertOptionViewControllerClass];
  v19 = objc_alloc_init(NSMutableDictionary);
  conditions = self->_conditions;
  if (conditions)
  {
    currentText = [(SSTermsAndConditions *)conditions currentText];
    v22 = currentText;
    if (currentText && [currentText length])
    {
      [v19 setObject:v22 forKey:@"terms"];
    }
  }

  v23 = dispatch_semaphore_create(0);
  alertSemaphore = self->_alertSemaphore;
  self->_alertSemaphore = v23;

  objc_initWeak(location, self);
  v25 = +[SpringBoardUtility sharedInstance];
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_10009EE20;
  v36[3] = &unk_100327560;
  objc_copyWeak(&v37, location);
  v36[4] = self;
  [v25 activateAlertWithDescription:v18 options:v19 completionBlock:v36];

  dispatch_semaphore_wait(self->_alertSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  objc_destroyWeak(&v37);
  objc_destroyWeak(location);

  [v17 endShowingDialog];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v26 = v13;
  v27 = [v26 countByEnumeratingWithState:&v32 objects:v42 count:16];
  if (v27)
  {
    v28 = *v33;
    do
    {
      for (j = 0; j != v27; j = j + 1)
      {
        if (*v33 != v28)
        {
          objc_enumerationMutation(v26);
        }

        [v3 takePowerAssertion:{*(*(&v32 + 1) + 8 * j), v30}];
      }

      v27 = [v26 countByEnumeratingWithState:&v32 objects:v42 count:16];
    }

    while (v27);
  }
}

@end