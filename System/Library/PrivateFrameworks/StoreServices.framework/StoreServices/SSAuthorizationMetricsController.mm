@interface SSAuthorizationMetricsController
+ (id)_clientIDForAccount:(id)account orUserID:(id)d;
+ (id)_clientIdForMetrics;
+ (id)_dialogEventForBiometricAuthorizationWithDialogId:(id)id buyParams:(id)params matchState:(int64_t)state topicName:(id)name userAgent:(id)agent;
+ (id)_dialogEventForBiometricOptInWithResult:(BOOL)result message:(id)message topicName:(id)name userAgent:(id)agent error:(id)error;
+ (id)_dialogEventForPasswordAuthorizationWithDialogId:(id)id buyParams:(id)params topicName:(id)name userAgent:(id)agent;
+ (id)_dialogEventForPaymentSheetPresentationErrorWithBuyParams:(id)params error:(id)error;
+ (id)_mtTopicForBuyParams:(id)params;
+ (id)authorizationDialogEventForParameters:(id)parameters;
+ (id)dialogIdForMetricsDictionary:(id)dictionary;
+ (id)userActionDictionaryForBiometricMatchState:(unint64_t)state didBiometricsLockout:(BOOL)lockout;
+ (id)userActionDictionaryForUserAction:(int64_t)action didBiometricsLockout:(BOOL)lockout;
@end

@implementation SSAuthorizationMetricsController

+ (id)authorizationDialogEventForParameters:(id)parameters
{
  parametersCopy = parameters;
  v22 = [parametersCopy objectForKeyedSubscript:@"buyParams"];
  v4 = [parametersCopy objectForKeyedSubscript:@"dialogID"];
  v5 = [parametersCopy objectForKeyedSubscript:@"dualAction"];
  v6 = [parametersCopy objectForKeyedSubscript:@"error"];
  v7 = [parametersCopy objectForKeyedSubscript:@"eventType"];
  integerValue = [v7 integerValue];

  v9 = [parametersCopy objectForKeyedSubscript:@"biometricMatchState"];
  integerValue2 = [v9 integerValue];

  v11 = [parametersCopy objectForKeyedSubscript:@"message"];
  v12 = [parametersCopy objectForKeyedSubscript:@"result"];
  bOOLValue = [v12 BOOLValue];

  v14 = [parametersCopy objectForKeyedSubscript:@"topicName"];
  v15 = [parametersCopy objectForKeyedSubscript:@"userAgent"];

  v16 = 0;
  if (integerValue <= 2)
  {
    if (integerValue != 1)
    {
      v19 = integerValue2;
      v17 = v22;
      if (integerValue != 2)
      {
        goto LABEL_11;
      }

      v18 = [objc_opt_class() _dialogEventForBiometricAuthorizationWithDialogId:v4 buyParams:v22 matchState:v19 topicName:v14 userAgent:v15];
LABEL_10:
      v16 = v18;
LABEL_11:
      if (!v5)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

LABEL_9:
    v17 = v22;
    v18 = [objc_opt_class() _dialogEventForPasswordAuthorizationWithDialogId:v4 buyParams:v22 topicName:v14 userAgent:v15];
    goto LABEL_10;
  }

  if (integerValue != 3)
  {
    if (integerValue != 4)
    {
      v17 = v22;
      if (integerValue != 5)
      {
        goto LABEL_11;
      }

      v18 = [objc_opt_class() _dialogEventForPaymentSheetPresentationErrorWithBuyParams:v22 error:v6];
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v16 = [objc_opt_class() _dialogEventForBiometricOptInWithResult:bOOLValue message:v11 topicName:v14 userAgent:v15 error:v6];
  v17 = v22;
  if (v5)
  {
LABEL_12:
    [v16 setDualAction:{v5, self}];
  }

LABEL_13:

  return v16;
}

+ (id)dialogIdForMetricsDictionary:(id)dictionary
{
  if (dictionary)
  {
    v3 = [dictionary objectForKey:@"dialogId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)userActionDictionaryForBiometricMatchState:(unint64_t)state didBiometricsLockout:(BOOL)lockout
{
  lockoutCopy = lockout;
  v62 = *MEMORY[0x1E69E9840];
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v7 = v6;
  v8 = 0x1E696A000uLL;
  if (state > 7)
  {
    switch(state)
    {
      case 8uLL:
        v10 = SSMetricsDialogEventActionTypeCancel;
        break;
      case 0x10uLL:
        [v6 setObject:@"authenticate" forKeyedSubscript:@"actionType"];
        [v7 setObject:@"invalidCredentials" forKeyedSubscript:@"reason"];
        v28 = SSMetricsDialogEventResultFailure;
        goto LABEL_27;
      case 0x20uLL:
        v10 = SSMetricsDialogEventActionTypeCancelHomeButton;
        break;
      default:
        goto LABEL_13;
    }

    [v6 setObject:*v10 forKeyedSubscript:@"actionType"];
    v9 = SSMetricsDialogEventTargetIdCancel;
    goto LABEL_28;
  }

  if (state != 1)
  {
    if (state != 2)
    {
      if (state == 4)
      {
        [v6 setObject:@"enterPassword" forKeyedSubscript:@"actionType"];
        v9 = SSMetricsDialogEventTargetIdEnterPassword;
LABEL_28:
        v11 = *v9;
        v12 = @"targetId";
        goto LABEL_29;
      }

LABEL_13:
      v13 = +[SSLogConfig sharedStoreServicesConfig];
      if (!v13)
      {
        v13 = +[SSLogConfig sharedConfig];
      }

      shouldLog = [v13 shouldLog];
      if ([v13 shouldLogToDisk])
      {
        v15 = shouldLog | 2;
      }

      else
      {
        v15 = shouldLog;
      }

      oSLogObject = [v13 OSLogObject];
      if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        v15 &= 2u;
      }

      if (v15)
      {
        v17 = objc_opt_class();
        v18 = MEMORY[0x1E696AD98];
        v19 = v17;
        v20 = [v18 numberWithUnsignedInteger:state];
        v58 = 138543618;
        v59 = v17;
        v60 = 2114;
        v61 = v20;
        LODWORD(v57) = 22;
        v55 = &v58;
        v21 = _os_log_send_and_compose_impl();

        v8 = 0x1E696A000;
        if (!v21)
        {
LABEL_24:

          goto LABEL_30;
        }

        oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v21 encoding:{4, &v58, v57}];
        free(v21);
        SSFileLog(v13, @"%@", v22, v23, v24, v25, v26, v27, oSLogObject);
      }

      goto LABEL_24;
    }

    [v6 setObject:@"authenticate" forKeyedSubscript:@"actionType"];
    v28 = SSMetricsDialogEventResultSuccess;
LABEL_27:
    [v7 setObject:*v28 forKeyedSubscript:@"result"];
    v9 = SSMetricsDialogEventTargetIdBiometrics;
    goto LABEL_28;
  }

  [v6 setObject:@"error" forKeyedSubscript:@"reason"];
  v11 = @"failure";
  v12 = @"result";
LABEL_29:
  [v7 setObject:v11 forKeyedSubscript:v12];
LABEL_30:
  v29 = +[SSDevice currentDevice];
  deviceBiometricStyle = [v29 deviceBiometricStyle];

  if (deviceBiometricStyle)
  {
    if (deviceBiometricStyle == 3)
    {
      v31 = @"faceId";
LABEL_35:
      [v7 setObject:v31 forKey:@"biometricType"];
      if (!lockoutCopy)
      {
        goto LABEL_37;
      }

      goto LABEL_36;
    }

    if (deviceBiometricStyle == 2)
    {
      v31 = @"touchId";
      goto LABEL_35;
    }

    v40 = +[SSLogConfig sharediTunesStoreConfig];
    if (!v40)
    {
      v40 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v40 shouldLog];
    if ([v40 shouldLogToDisk])
    {
      v45 = shouldLog2 | 2;
    }

    else
    {
      v45 = shouldLog2;
    }

    oSLogObject2 = [v40 OSLogObject];
    if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v45 &= 2u;
    }

    if (!v45)
    {
      goto LABEL_59;
    }
  }

  else
  {
    v40 = +[SSLogConfig sharediTunesStoreConfig];
    if (!v40)
    {
      v40 = +[SSLogConfig sharedConfig];
    }

    shouldLog3 = [v40 shouldLog];
    if ([v40 shouldLogToDisk])
    {
      v42 = shouldLog3 | 2;
    }

    else
    {
      v42 = shouldLog3;
    }

    oSLogObject2 = [v40 OSLogObject];
    if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v42 &= 2u;
    }

    if (!v42)
    {
      goto LABEL_59;
    }
  }

  v46 = objc_opt_class();
  v58 = 138543362;
  v59 = v46;
  v47 = v46;
  LODWORD(v57) = 12;
  v56 = &v58;
  v48 = _os_log_send_and_compose_impl();

  if (!v48)
  {
    goto LABEL_60;
  }

  oSLogObject2 = [MEMORY[0x1E696AEC0] stringWithCString:v48 encoding:{4, &v58, v57}];
  free(v48);
  SSFileLog(v40, @"%@", v49, v50, v51, v52, v53, v54, oSLogObject2);
LABEL_59:

LABEL_60:
  if (lockoutCopy)
  {
LABEL_36:
    [v7 setObject:MEMORY[0x1E695E118] forKeyedSubscript:{@"bioLockout", v56}];
  }

LABEL_37:
  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSince1970];
  v34 = v33;

  v35 = MEMORY[0x1E696AEC0];
  v36 = [*(v8 + 3480) numberWithLongLong:v34];
  v37 = [v35 stringWithFormat:@"%@", v36];

  [v7 setObject:v37 forKeyedSubscript:@"responseTime"];
  v38 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v7];

  return v38;
}

+ (id)userActionDictionaryForUserAction:(int64_t)action didBiometricsLockout:(BOOL)lockout
{
  lockoutCopy = lockout;
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v7 = v6;
  v8 = SSMetricsDialogEventResultSuccess;
  if (action > 4)
  {
    if (action <= 6)
    {
      if (action == 5)
      {
        [v6 setObject:@"invalidCredentials" forKeyedSubscript:@"reason"];
        v9 = SSMetricsDialogEventActionTypeAuthenticate;
        v10 = @"result";
        v8 = SSMetricsDialogEventResultFailure;
      }

      else
      {
        v9 = SSMetricsDialogEventActionTypeAuthenticate;
        v10 = @"result";
      }
    }

    else
    {
      switch(action)
      {
        case 7:
          v9 = SSMetricsDialogEventActionTypeAuthenticate;
          v10 = @"actionType";
          v8 = SSMetricsDialogEventActionTypeEnterPasswordCancelled;
          break;
        case 8:
          v9 = SSMetricsDialogEventActionTypeAuthenticate;
          v10 = @"actionType";
          v8 = SSMetricsDialogEventActionTypeEnterPasswordPressed;
          break;
        case 9:
          v9 = SSMetricsDialogEventTargetIdCancel;
          v10 = @"actionType";
          v8 = SSMetricsDialogEventActionTypeCancelHomeButton;
          break;
        default:
          goto LABEL_22;
      }
    }

    goto LABEL_21;
  }

  if (action > 2)
  {
    if (action == 3)
    {
      v9 = SSMetricsDialogEventTargetIdIForgot;
      v10 = @"actionType";
      v8 = SSMetricsDialogEventActionTypeOpen;
      goto LABEL_21;
    }

    v9 = SSMetricsDialogEventTargetIdCancel;
  }

  else
  {
    if (action == 1)
    {
      [v6 setObject:@"success" forKeyedSubscript:@"result"];
      v9 = SSMetricsDialogEventTargetIdOK;
      v10 = @"actionType";
      v8 = SSMetricsDialogEventActionTypeOK;
      goto LABEL_21;
    }

    if (action != 2)
    {
      goto LABEL_22;
    }

    v9 = SSMetricsDialogEventTargetIdIForgot;
  }

  v10 = @"actionType";
  v8 = SSMetricsDialogEventActionTypeCancel;
LABEL_21:
  [v7 setObject:*v8 forKeyedSubscript:v10];
  [v7 setObject:*v9 forKeyedSubscript:@"targetId"];
LABEL_22:
  if (lockoutCopy)
  {
    [v7 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"bioLockout"];
  }

  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSince1970];
  v13 = v12;

  v14 = MEMORY[0x1E696AEC0];
  v15 = [MEMORY[0x1E696AD98] numberWithLongLong:v13];
  v16 = [v14 stringWithFormat:@"%@", v15];

  [v7 setObject:v16 forKeyedSubscript:@"responseTime"];
  v17 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v7];

  return v17;
}

+ (id)_dialogEventForBiometricAuthorizationWithDialogId:(id)id buyParams:(id)params matchState:(int64_t)state topicName:(id)name userAgent:(id)agent
{
  v45[1] = *MEMORY[0x1E69E9840];
  paramsCopy = params;
  nameCopy = name;
  agentCopy = agent;
  idCopy = id;
  v16 = objc_alloc_init(SSMetricsDialogEvent);
  [(SSMetricsDialogEvent *)v16 setDialogId:idCopy];

  [(SSMetricsDialogEvent *)v16 setDialogType:@"SignIn"];
  _clientIdForMetrics = [objc_opt_class() _clientIdForMetrics];
  if (_clientIdForMetrics)
  {
    [(SSMetricsMutableEvent *)v16 setProperty:_clientIdForMetrics forBodyKey:@"clientId"];
  }

  if (paramsCopy)
  {
    v44 = @"buyParams";
    v45[0] = paramsCopy;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:&v44 count:1];
    [(SSMetricsDialogEvent *)v16 setDetails:v18];
  }

  if (agentCopy)
  {
    [(SSMetricsMutableEvent *)v16 setUserAgent:agentCopy];
  }

  v19 = nameCopy;
  v20 = v19;
  if (!v19)
  {
    v21 = [self _mtTopicForBuyParams:paramsCopy];
    if (v21)
    {
      v20 = v21;
    }

    else
    {
      v20 = @"xp_its_main";
    }
  }

  [(SSMetricsMutableEvent *)v16 setTopic:v20];
  if (state <= 3)
  {
    if (state == 1)
    {
      [(SSMetricsDialogEvent *)v16 setResult:@"failure"];
      goto LABEL_23;
    }

    if (state == 2)
    {
      [(SSMetricsDialogEvent *)v16 setActionType:@"biometricsAnalyze"];
      v22 = SSMetricsDialogEventResultSuccess;
      goto LABEL_19;
    }
  }

  else
  {
    switch(state)
    {
      case 4:
        [(SSMetricsDialogEvent *)v16 setActionType:@"enterPassword"];
        [(SSMetricsDialogEvent *)v16 setResult:@"unknown"];
        v23 = SSMetricsDialogEventTargetIdEnterPassword;
        goto LABEL_22;
      case 8:
        [(SSMetricsDialogEvent *)v16 setActionType:@"cancel"];
        [(SSMetricsDialogEvent *)v16 setResult:@"failure"];
        v23 = SSMetricsDialogEventTargetIdCancel;
        goto LABEL_22;
      case 16:
        [(SSMetricsDialogEvent *)v16 setActionType:@"biometricsAnalyze"];
        v22 = SSMetricsDialogEventResultFailure;
LABEL_19:
        [(SSMetricsDialogEvent *)v16 setResult:*v22];
        v23 = SSMetricsDialogEventTargetIdBiometrics;
LABEL_22:
        [(SSMetricsDialogEvent *)v16 setTargetId:*v23];
        goto LABEL_23;
    }
  }

  v25 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v25)
  {
    v25 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v25 shouldLog];
  if ([v25 shouldLogToDisk])
  {
    shouldLog |= 2u;
  }

  oSLogObject = [v25 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    shouldLog &= 2u;
  }

  if (!shouldLog)
  {
    v30 = oSLogObject;
    goto LABEL_37;
  }

  HIDWORD(v37) = shouldLog;
  v27 = objc_opt_class();
  v28 = MEMORY[0x1E696AD98];
  v38 = v27;
  [v28 numberWithInteger:state];
  v40 = 138543618;
  v41 = v27;
  v43 = v42 = 2114;
  LODWORD(v37) = 22;
  v29 = _os_log_send_and_compose_impl();

  if (v29)
  {
    v30 = [MEMORY[0x1E696AEC0] stringWithCString:v29 encoding:{4, &v40, v37}];
    free(v29);
    SSFileLog(v25, @"%@", v31, v32, v33, v34, v35, v36, v30);
LABEL_37:
  }

LABEL_23:

  return v16;
}

+ (id)_dialogEventForBiometricOptInWithResult:(BOOL)result message:(id)message topicName:(id)name userAgent:(id)agent error:(id)error
{
  resultCopy = result;
  v31[1] = *MEMORY[0x1E69E9840];
  messageCopy = message;
  agentCopy = agent;
  nameCopy = name;
  v14 = objc_alloc_init(SSMetricsDialogEvent);
  _clientIdForMetrics = [objc_opt_class() _clientIdForMetrics];
  if (_clientIdForMetrics)
  {
    [(SSMetricsMutableEvent *)v14 setProperty:_clientIdForMetrics forBodyKey:@"clientId"];
  }

  [(SSMetricsDialogEvent *)v14 setDialogId:@"EnableTouchIdPurchases"];
  [(SSMetricsDialogEvent *)v14 setDialogType:@"OkCancel"];
  if (nameCopy)
  {
    v16 = nameCopy;
  }

  else
  {
    v16 = @"xp_its_main";
  }

  [(SSMetricsMutableEvent *)v14 setTopic:v16];

  if (messageCopy)
  {
    [(SSMetricsDialogEvent *)v14 setMessage:messageCopy];
  }

  if (agentCopy)
  {
    [(SSMetricsMutableEvent *)v14 setUserAgent:agentCopy];
  }

  v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (error)
  {
    v18 = SSMetricsDialogEventResultFailure;
  }

  else
  {
    v19 = SSMetricsDialogEventActionTypeOK;
    if (resultCopy)
    {
      v20 = SSMetricsDialogEventTargetIdOK;
    }

    else
    {
      v19 = SSMetricsDialogEventActionTypeCancel;
      v20 = SSMetricsDialogEventTargetIdNotNow;
    }

    [(SSMetricsDialogEvent *)v14 setActionType:*v19];
    v21 = *v20;
    [(SSMetricsDialogEvent *)v14 setTargetId:v21];
    [v17 setObject:v21 forKey:@"targetId"];
    v18 = SSMetricsDialogEventResultSuccess;
  }

  v22 = *v18;
  [(SSMetricsDialogEvent *)v14 setResult:*v18];
  [v17 setObject:v22 forKey:@"result"];
  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSince1970];
  v25 = v24;

  v26 = MEMORY[0x1E696AEC0];
  v27 = [MEMORY[0x1E696AD98] numberWithLongLong:v25];
  v28 = [v26 stringWithFormat:@"%@", v27];

  [v17 setObject:v28 forKey:@"responseTime"];
  v31[0] = v17;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
  [(SSMetricsDialogEvent *)v14 setUserActions:v29];

  return v14;
}

+ (id)_dialogEventForPasswordAuthorizationWithDialogId:(id)id buyParams:(id)params topicName:(id)name userAgent:(id)agent
{
  v22[1] = *MEMORY[0x1E69E9840];
  paramsCopy = params;
  nameCopy = name;
  agentCopy = agent;
  idCopy = id;
  v14 = objc_alloc_init(SSMetricsDialogEvent);
  [(SSMetricsDialogEvent *)v14 setDialogId:idCopy];

  [(SSMetricsDialogEvent *)v14 setDialogType:@"SignIn"];
  _clientIdForMetrics = [objc_opt_class() _clientIdForMetrics];
  if (_clientIdForMetrics)
  {
    [(SSMetricsMutableEvent *)v14 setProperty:_clientIdForMetrics forBodyKey:@"clientId"];
  }

  if (paramsCopy)
  {
    v21 = @"buyParams";
    v22[0] = paramsCopy;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    [(SSMetricsDialogEvent *)v14 setDetails:v16];
  }

  if (agentCopy)
  {
    [(SSMetricsMutableEvent *)v14 setUserAgent:agentCopy];
  }

  v17 = nameCopy;
  v18 = v17;
  if (!v17)
  {
    v19 = [self _mtTopicForBuyParams:paramsCopy];
    if (v19)
    {
      v18 = v19;
    }

    else
    {
      v18 = @"xp_its_main";
    }
  }

  [(SSMetricsMutableEvent *)v14 setTopic:v18];

  return v14;
}

+ (id)_dialogEventForPaymentSheetPresentationErrorWithBuyParams:(id)params error:(id)error
{
  v22[1] = *MEMORY[0x1E69E9840];
  errorCopy = error;
  paramsCopy = params;
  v8 = objc_alloc_init(SSMetricsDialogEvent);
  _clientIdForMetrics = [objc_opt_class() _clientIdForMetrics];
  if (_clientIdForMetrics)
  {
    [(SSMetricsMutableEvent *)v8 setProperty:_clientIdForMetrics forBodyKey:@"clientId"];
  }

  [(SSMetricsDialogEvent *)v8 setDialogId:@"PaymentSheet"];
  [(SSMetricsDialogEvent *)v8 setDialogType:@"SignIn"];
  [(SSMetricsDialogEvent *)v8 setResult:@"failure"];
  v10 = [self _mtTopicForBuyParams:paramsCopy];

  if (v10)
  {
    [(SSMetricsMutableEvent *)v8 setTopic:v10];
  }

  v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v11 setObject:@"authenticate" forKey:@"actionType"];
  [v11 setObject:@"failure" forKey:@"result"];
  code = [errorCopy code];

  if (code == 151)
  {
    v13 = SSMetricsDialogEventReasonPaymentSheetPresentationFailure;
  }

  else
  {
    if (code != 152)
    {
      goto LABEL_10;
    }

    v13 = SSMetricsDialogEventReasonPaymentSheetTimeout;
  }

  [v11 setObject:*v13 forKey:@"reason"];
LABEL_10:
  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSince1970];
  v16 = v15;

  v17 = MEMORY[0x1E696AEC0];
  v18 = [MEMORY[0x1E696AD98] numberWithLongLong:v16];
  v19 = [v17 stringWithFormat:@"%@", v18];

  [v11 setObject:v19 forKey:@"responseTime"];
  v22[0] = v11;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
  [(SSMetricsDialogEvent *)v8 setUserActions:v20];

  return v8;
}

+ (id)_clientIdForMetrics
{
  v3 = +[SSAccountStore defaultStore];
  activeAccount = [v3 activeAccount];

  if (!activeAccount || ([self _clientIDForAccount:activeAccount orUserID:0], (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v5 = [self _clientIDForAccount:0 orUserID:&unk_1F507A2A0];
    if (!v5)
    {
      v5 = [self _clientIDForAccount:0 orUserID:&unk_1F507A2B8];
    }
  }

  v6 = v5;

  return v6;
}

+ (id)_clientIDForAccount:(id)account orUserID:(id)d
{
  v72 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  dCopy = d;
  v7 = +[SSLogConfig sharediTunesStoreConfig];
  v8 = v7;
  if (!dCopy)
  {
    if (!v7)
    {
      v8 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v8 shouldLog];
    if ([v8 shouldLogToDisk])
    {
      v24 = shouldLog | 2;
    }

    else
    {
      v24 = shouldLog;
    }

    oSLogObject = [v8 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      v26 = v24;
    }

    else
    {
      v26 = v24 & 2;
    }

    if (v26)
    {
      v65 = 138543362;
      v66 = objc_opt_class();
      v27 = v66;
      LODWORD(v60) = 12;
      v28 = _os_log_send_and_compose_impl();

      if (!v28)
      {
LABEL_28:
        value = 0;
        goto LABEL_53;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v28 encoding:{4, &v65, v60}];
      free(v28);
      SSFileLog(v8, @"%@", v29, v30, v31, v32, v33, v34, oSLogObject);
    }

    goto LABEL_28;
  }

  if (!v7)
  {
    v8 = +[SSLogConfig sharedConfig];
  }

  shouldLog2 = [v8 shouldLog];
  if ([v8 shouldLogToDisk])
  {
    v10 = shouldLog2 | 2;
  }

  else
  {
    v10 = shouldLog2;
  }

  oSLogObject2 = [v8 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
  {
    v12 = v10;
  }

  else
  {
    v12 = v10 & 2;
  }

  if (!v12)
  {
    goto LABEL_13;
  }

  v65 = 138543618;
  v66 = objc_opt_class();
  v67 = 2112;
  v68 = dCopy;
  v13 = v66;
  LODWORD(v60) = 22;
  v59 = &v65;
  v14 = _os_log_send_and_compose_impl();

  if (v14)
  {
    oSLogObject2 = [MEMORY[0x1E696AEC0] stringWithCString:v14 encoding:{4, &v65, v60}];
    free(v14);
    SSFileLog(v8, @"%@", v15, v16, v17, v18, v19, v20, oSLogObject2);
LABEL_13:
  }

  v21 = +[SSVCookieStorage sharedStorage];
  v22 = v21;
  if (accountCopy)
  {
    [v21 allCookiesForAccount:accountCopy];
  }

  else
  {
    [v21 allCookiesForUserIdentifier:dCopy];
  }
  v36 = ;

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v8 = v36;
  v37 = [v8 countByEnumeratingWithState:&v61 objects:v71 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v62;
LABEL_32:
    v40 = 0;
    while (1)
    {
      if (*v62 != v39)
      {
        objc_enumerationMutation(v8);
      }

      v41 = *(*(&v61 + 1) + 8 * v40);
      name = [v41 name];
      v43 = [name isEqualToString:@"xp_ci"];

      if (v43)
      {
        break;
      }

      if (v38 == ++v40)
      {
        v38 = [v8 countByEnumeratingWithState:&v61 objects:v71 count:16];
        if (v38)
        {
          goto LABEL_32;
        }

        goto LABEL_38;
      }
    }

    value = [v41 value];

    if (!value)
    {
      goto LABEL_53;
    }

    v44 = +[SSLogConfig sharediTunesStoreConfig];
    if (!v44)
    {
      v44 = +[SSLogConfig sharedConfig];
    }

    shouldLog3 = [v44 shouldLog];
    if ([v44 shouldLogToDisk])
    {
      v46 = shouldLog3 | 2;
    }

    else
    {
      v46 = shouldLog3;
    }

    oSLogObject3 = [v44 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_INFO))
    {
      v48 = v46;
    }

    else
    {
      v48 = v46 & 2;
    }

    if (v48)
    {
      v49 = objc_opt_class();
      v65 = 138543874;
      v66 = v49;
      v67 = 2114;
      v68 = value;
      v69 = 2112;
      v70 = dCopy;
      v50 = v49;
      LODWORD(v60) = 32;
      v51 = _os_log_send_and_compose_impl();

      if (!v51)
      {
        goto LABEL_52;
      }

      oSLogObject3 = [MEMORY[0x1E696AEC0] stringWithCString:v51 encoding:{4, &v65, v60}];
      free(v51);
      SSFileLog(v44, @"%@", v52, v53, v54, v55, v56, v57, oSLogObject3);
    }
  }

  else
  {
LABEL_38:
    value = 0;
    v44 = v8;
  }

LABEL_52:

LABEL_53:

  return value;
}

+ (id)_mtTopicForBuyParams:(id)params
{
  paramsCopy = params;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__86;
  v12 = __Block_byref_object_dispose__86;
  v13 = 0;
  v4 = [paramsCopy componentsSeparatedByString:@"&"];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__SSAuthorizationMetricsController__mtTopicForBuyParams___block_invoke;
  v7[3] = &unk_1E84B3C78;
  v7[4] = &v8;
  [v4 enumerateObjectsUsingBlock:v7];
  v5 = v9[5];

  _Block_object_dispose(&v8, 8);

  return v5;
}

void __57__SSAuthorizationMetricsController__mtTopicForBuyParams___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v12 = a2;
  v6 = [v12 containsString:@"mtTopic"];
  v7 = v12;
  if (v6)
  {
    v8 = [v12 componentsSeparatedByString:@"="];
    if ([v8 count] == 2)
    {
      v9 = [v8 objectAtIndexedSubscript:1];
      v10 = *(*(a1 + 32) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;
    }

    *a4 = 1;

    v7 = v12;
  }
}

@end