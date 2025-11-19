@interface SSAuthorizationMetricsController
+ (id)_clientIDForAccount:(id)a3 orUserID:(id)a4;
+ (id)_clientIdForMetrics;
+ (id)_dialogEventForBiometricAuthorizationWithDialogId:(id)a3 buyParams:(id)a4 matchState:(int64_t)a5 topicName:(id)a6 userAgent:(id)a7;
+ (id)_dialogEventForBiometricOptInWithResult:(BOOL)a3 message:(id)a4 topicName:(id)a5 userAgent:(id)a6 error:(id)a7;
+ (id)_dialogEventForPasswordAuthorizationWithDialogId:(id)a3 buyParams:(id)a4 topicName:(id)a5 userAgent:(id)a6;
+ (id)_dialogEventForPaymentSheetPresentationErrorWithBuyParams:(id)a3 error:(id)a4;
+ (id)_mtTopicForBuyParams:(id)a3;
+ (id)authorizationDialogEventForParameters:(id)a3;
+ (id)dialogIdForMetricsDictionary:(id)a3;
+ (id)userActionDictionaryForBiometricMatchState:(unint64_t)a3 didBiometricsLockout:(BOOL)a4;
+ (id)userActionDictionaryForUserAction:(int64_t)a3 didBiometricsLockout:(BOOL)a4;
@end

@implementation SSAuthorizationMetricsController

+ (id)authorizationDialogEventForParameters:(id)a3
{
  v3 = a3;
  v22 = [v3 objectForKeyedSubscript:@"buyParams"];
  v4 = [v3 objectForKeyedSubscript:@"dialogID"];
  v5 = [v3 objectForKeyedSubscript:@"dualAction"];
  v6 = [v3 objectForKeyedSubscript:@"error"];
  v7 = [v3 objectForKeyedSubscript:@"eventType"];
  v8 = [v7 integerValue];

  v9 = [v3 objectForKeyedSubscript:@"biometricMatchState"];
  v10 = [v9 integerValue];

  v11 = [v3 objectForKeyedSubscript:@"message"];
  v12 = [v3 objectForKeyedSubscript:@"result"];
  v13 = [v12 BOOLValue];

  v14 = [v3 objectForKeyedSubscript:@"topicName"];
  v15 = [v3 objectForKeyedSubscript:@"userAgent"];

  v16 = 0;
  if (v8 <= 2)
  {
    if (v8 != 1)
    {
      v19 = v10;
      v17 = v22;
      if (v8 != 2)
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

  if (v8 != 3)
  {
    if (v8 != 4)
    {
      v17 = v22;
      if (v8 != 5)
      {
        goto LABEL_11;
      }

      v18 = [objc_opt_class() _dialogEventForPaymentSheetPresentationErrorWithBuyParams:v22 error:v6];
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v16 = [objc_opt_class() _dialogEventForBiometricOptInWithResult:v13 message:v11 topicName:v14 userAgent:v15 error:v6];
  v17 = v22;
  if (v5)
  {
LABEL_12:
    [v16 setDualAction:{v5, a1}];
  }

LABEL_13:

  return v16;
}

+ (id)dialogIdForMetricsDictionary:(id)a3
{
  if (a3)
  {
    v3 = [a3 objectForKey:@"dialogId"];
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

+ (id)userActionDictionaryForBiometricMatchState:(unint64_t)a3 didBiometricsLockout:(BOOL)a4
{
  v4 = a4;
  v62 = *MEMORY[0x1E69E9840];
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v7 = v6;
  v8 = 0x1E696A000uLL;
  if (a3 > 7)
  {
    switch(a3)
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

  if (a3 != 1)
  {
    if (a3 != 2)
    {
      if (a3 == 4)
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

      v14 = [v13 shouldLog];
      if ([v13 shouldLogToDisk])
      {
        v15 = v14 | 2;
      }

      else
      {
        v15 = v14;
      }

      v16 = [v13 OSLogObject];
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v15 &= 2u;
      }

      if (v15)
      {
        v17 = objc_opt_class();
        v18 = MEMORY[0x1E696AD98];
        v19 = v17;
        v20 = [v18 numberWithUnsignedInteger:a3];
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

        v16 = [MEMORY[0x1E696AEC0] stringWithCString:v21 encoding:{4, &v58, v57}];
        free(v21);
        SSFileLog(v13, @"%@", v22, v23, v24, v25, v26, v27, v16);
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
  v30 = [v29 deviceBiometricStyle];

  if (v30)
  {
    if (v30 == 3)
    {
      v31 = @"faceId";
LABEL_35:
      [v7 setObject:v31 forKey:@"biometricType"];
      if (!v4)
      {
        goto LABEL_37;
      }

      goto LABEL_36;
    }

    if (v30 == 2)
    {
      v31 = @"touchId";
      goto LABEL_35;
    }

    v40 = +[SSLogConfig sharediTunesStoreConfig];
    if (!v40)
    {
      v40 = +[SSLogConfig sharedConfig];
    }

    v44 = [v40 shouldLog];
    if ([v40 shouldLogToDisk])
    {
      v45 = v44 | 2;
    }

    else
    {
      v45 = v44;
    }

    v43 = [v40 OSLogObject];
    if (!os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
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

    v41 = [v40 shouldLog];
    if ([v40 shouldLogToDisk])
    {
      v42 = v41 | 2;
    }

    else
    {
      v42 = v41;
    }

    v43 = [v40 OSLogObject];
    if (!os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
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

  v43 = [MEMORY[0x1E696AEC0] stringWithCString:v48 encoding:{4, &v58, v57}];
  free(v48);
  SSFileLog(v40, @"%@", v49, v50, v51, v52, v53, v54, v43);
LABEL_59:

LABEL_60:
  if (v4)
  {
LABEL_36:
    [v7 setObject:MEMORY[0x1E695E118] forKeyedSubscript:{@"bioLockout", v56}];
  }

LABEL_37:
  v32 = [MEMORY[0x1E695DF00] date];
  [v32 timeIntervalSince1970];
  v34 = v33;

  v35 = MEMORY[0x1E696AEC0];
  v36 = [*(v8 + 3480) numberWithLongLong:v34];
  v37 = [v35 stringWithFormat:@"%@", v36];

  [v7 setObject:v37 forKeyedSubscript:@"responseTime"];
  v38 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v7];

  return v38;
}

+ (id)userActionDictionaryForUserAction:(int64_t)a3 didBiometricsLockout:(BOOL)a4
{
  v4 = a4;
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v7 = v6;
  v8 = SSMetricsDialogEventResultSuccess;
  if (a3 > 4)
  {
    if (a3 <= 6)
    {
      if (a3 == 5)
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
      switch(a3)
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

  if (a3 > 2)
  {
    if (a3 == 3)
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
    if (a3 == 1)
    {
      [v6 setObject:@"success" forKeyedSubscript:@"result"];
      v9 = SSMetricsDialogEventTargetIdOK;
      v10 = @"actionType";
      v8 = SSMetricsDialogEventActionTypeOK;
      goto LABEL_21;
    }

    if (a3 != 2)
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
  if (v4)
  {
    [v7 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"bioLockout"];
  }

  v11 = [MEMORY[0x1E695DF00] date];
  [v11 timeIntervalSince1970];
  v13 = v12;

  v14 = MEMORY[0x1E696AEC0];
  v15 = [MEMORY[0x1E696AD98] numberWithLongLong:v13];
  v16 = [v14 stringWithFormat:@"%@", v15];

  [v7 setObject:v16 forKeyedSubscript:@"responseTime"];
  v17 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v7];

  return v17;
}

+ (id)_dialogEventForBiometricAuthorizationWithDialogId:(id)a3 buyParams:(id)a4 matchState:(int64_t)a5 topicName:(id)a6 userAgent:(id)a7
{
  v45[1] = *MEMORY[0x1E69E9840];
  v12 = a4;
  v13 = a6;
  v14 = a7;
  v15 = a3;
  v16 = objc_alloc_init(SSMetricsDialogEvent);
  [(SSMetricsDialogEvent *)v16 setDialogId:v15];

  [(SSMetricsDialogEvent *)v16 setDialogType:@"SignIn"];
  v17 = [objc_opt_class() _clientIdForMetrics];
  if (v17)
  {
    [(SSMetricsMutableEvent *)v16 setProperty:v17 forBodyKey:@"clientId"];
  }

  if (v12)
  {
    v44 = @"buyParams";
    v45[0] = v12;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:&v44 count:1];
    [(SSMetricsDialogEvent *)v16 setDetails:v18];
  }

  if (v14)
  {
    [(SSMetricsMutableEvent *)v16 setUserAgent:v14];
  }

  v19 = v13;
  v20 = v19;
  if (!v19)
  {
    v21 = [a1 _mtTopicForBuyParams:v12];
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
  if (a5 <= 3)
  {
    if (a5 == 1)
    {
      [(SSMetricsDialogEvent *)v16 setResult:@"failure"];
      goto LABEL_23;
    }

    if (a5 == 2)
    {
      [(SSMetricsDialogEvent *)v16 setActionType:@"biometricsAnalyze"];
      v22 = SSMetricsDialogEventResultSuccess;
      goto LABEL_19;
    }
  }

  else
  {
    switch(a5)
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

  v26 = [v25 shouldLog];
  if ([v25 shouldLogToDisk])
  {
    v26 |= 2u;
  }

  v39 = [v25 OSLogObject];
  if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
  {
    v26 &= 2u;
  }

  if (!v26)
  {
    v30 = v39;
    goto LABEL_37;
  }

  HIDWORD(v37) = v26;
  v27 = objc_opt_class();
  v28 = MEMORY[0x1E696AD98];
  v38 = v27;
  [v28 numberWithInteger:a5];
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

+ (id)_dialogEventForBiometricOptInWithResult:(BOOL)a3 message:(id)a4 topicName:(id)a5 userAgent:(id)a6 error:(id)a7
{
  v10 = a3;
  v31[1] = *MEMORY[0x1E69E9840];
  v11 = a4;
  v12 = a6;
  v13 = a5;
  v14 = objc_alloc_init(SSMetricsDialogEvent);
  v15 = [objc_opt_class() _clientIdForMetrics];
  if (v15)
  {
    [(SSMetricsMutableEvent *)v14 setProperty:v15 forBodyKey:@"clientId"];
  }

  [(SSMetricsDialogEvent *)v14 setDialogId:@"EnableTouchIdPurchases"];
  [(SSMetricsDialogEvent *)v14 setDialogType:@"OkCancel"];
  if (v13)
  {
    v16 = v13;
  }

  else
  {
    v16 = @"xp_its_main";
  }

  [(SSMetricsMutableEvent *)v14 setTopic:v16];

  if (v11)
  {
    [(SSMetricsDialogEvent *)v14 setMessage:v11];
  }

  if (v12)
  {
    [(SSMetricsMutableEvent *)v14 setUserAgent:v12];
  }

  v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (a7)
  {
    v18 = SSMetricsDialogEventResultFailure;
  }

  else
  {
    v19 = SSMetricsDialogEventActionTypeOK;
    if (v10)
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
  v23 = [MEMORY[0x1E695DF00] date];
  [v23 timeIntervalSince1970];
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

+ (id)_dialogEventForPasswordAuthorizationWithDialogId:(id)a3 buyParams:(id)a4 topicName:(id)a5 userAgent:(id)a6
{
  v22[1] = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = a3;
  v14 = objc_alloc_init(SSMetricsDialogEvent);
  [(SSMetricsDialogEvent *)v14 setDialogId:v13];

  [(SSMetricsDialogEvent *)v14 setDialogType:@"SignIn"];
  v15 = [objc_opt_class() _clientIdForMetrics];
  if (v15)
  {
    [(SSMetricsMutableEvent *)v14 setProperty:v15 forBodyKey:@"clientId"];
  }

  if (v10)
  {
    v21 = @"buyParams";
    v22[0] = v10;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    [(SSMetricsDialogEvent *)v14 setDetails:v16];
  }

  if (v12)
  {
    [(SSMetricsMutableEvent *)v14 setUserAgent:v12];
  }

  v17 = v11;
  v18 = v17;
  if (!v17)
  {
    v19 = [a1 _mtTopicForBuyParams:v10];
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

+ (id)_dialogEventForPaymentSheetPresentationErrorWithBuyParams:(id)a3 error:(id)a4
{
  v22[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(SSMetricsDialogEvent);
  v9 = [objc_opt_class() _clientIdForMetrics];
  if (v9)
  {
    [(SSMetricsMutableEvent *)v8 setProperty:v9 forBodyKey:@"clientId"];
  }

  [(SSMetricsDialogEvent *)v8 setDialogId:@"PaymentSheet"];
  [(SSMetricsDialogEvent *)v8 setDialogType:@"SignIn"];
  [(SSMetricsDialogEvent *)v8 setResult:@"failure"];
  v10 = [a1 _mtTopicForBuyParams:v7];

  if (v10)
  {
    [(SSMetricsMutableEvent *)v8 setTopic:v10];
  }

  v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v11 setObject:@"authenticate" forKey:@"actionType"];
  [v11 setObject:@"failure" forKey:@"result"];
  v12 = [v6 code];

  if (v12 == 151)
  {
    v13 = SSMetricsDialogEventReasonPaymentSheetPresentationFailure;
  }

  else
  {
    if (v12 != 152)
    {
      goto LABEL_10;
    }

    v13 = SSMetricsDialogEventReasonPaymentSheetTimeout;
  }

  [v11 setObject:*v13 forKey:@"reason"];
LABEL_10:
  v14 = [MEMORY[0x1E695DF00] date];
  [v14 timeIntervalSince1970];
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
  v4 = [v3 activeAccount];

  if (!v4 || ([a1 _clientIDForAccount:v4 orUserID:0], (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v5 = [a1 _clientIDForAccount:0 orUserID:&unk_1F507A2A0];
    if (!v5)
    {
      v5 = [a1 _clientIDForAccount:0 orUserID:&unk_1F507A2B8];
    }
  }

  v6 = v5;

  return v6;
}

+ (id)_clientIDForAccount:(id)a3 orUserID:(id)a4
{
  v72 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = +[SSLogConfig sharediTunesStoreConfig];
  v8 = v7;
  if (!v6)
  {
    if (!v7)
    {
      v8 = +[SSLogConfig sharedConfig];
    }

    v23 = [v8 shouldLog];
    if ([v8 shouldLogToDisk])
    {
      v24 = v23 | 2;
    }

    else
    {
      v24 = v23;
    }

    v25 = [v8 OSLogObject];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
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
        v35 = 0;
        goto LABEL_53;
      }

      v25 = [MEMORY[0x1E696AEC0] stringWithCString:v28 encoding:{4, &v65, v60}];
      free(v28);
      SSFileLog(v8, @"%@", v29, v30, v31, v32, v33, v34, v25);
    }

    goto LABEL_28;
  }

  if (!v7)
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

  if (!v12)
  {
    goto LABEL_13;
  }

  v65 = 138543618;
  v66 = objc_opt_class();
  v67 = 2112;
  v68 = v6;
  v13 = v66;
  LODWORD(v60) = 22;
  v59 = &v65;
  v14 = _os_log_send_and_compose_impl();

  if (v14)
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithCString:v14 encoding:{4, &v65, v60}];
    free(v14);
    SSFileLog(v8, @"%@", v15, v16, v17, v18, v19, v20, v11);
LABEL_13:
  }

  v21 = +[SSVCookieStorage sharedStorage];
  v22 = v21;
  if (v5)
  {
    [v21 allCookiesForAccount:v5];
  }

  else
  {
    [v21 allCookiesForUserIdentifier:v6];
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
      v42 = [v41 name];
      v43 = [v42 isEqualToString:@"xp_ci"];

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

    v35 = [v41 value];

    if (!v35)
    {
      goto LABEL_53;
    }

    v44 = +[SSLogConfig sharediTunesStoreConfig];
    if (!v44)
    {
      v44 = +[SSLogConfig sharedConfig];
    }

    v45 = [v44 shouldLog];
    if ([v44 shouldLogToDisk])
    {
      v46 = v45 | 2;
    }

    else
    {
      v46 = v45;
    }

    v47 = [v44 OSLogObject];
    if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
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
      v68 = v35;
      v69 = 2112;
      v70 = v6;
      v50 = v49;
      LODWORD(v60) = 32;
      v51 = _os_log_send_and_compose_impl();

      if (!v51)
      {
        goto LABEL_52;
      }

      v47 = [MEMORY[0x1E696AEC0] stringWithCString:v51 encoding:{4, &v65, v60}];
      free(v51);
      SSFileLog(v44, @"%@", v52, v53, v54, v55, v56, v57, v47);
    }
  }

  else
  {
LABEL_38:
    v35 = 0;
    v44 = v8;
  }

LABEL_52:

LABEL_53:

  return v35;
}

+ (id)_mtTopicForBuyParams:(id)a3
{
  v3 = a3;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__86;
  v12 = __Block_byref_object_dispose__86;
  v13 = 0;
  v4 = [v3 componentsSeparatedByString:@"&"];
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