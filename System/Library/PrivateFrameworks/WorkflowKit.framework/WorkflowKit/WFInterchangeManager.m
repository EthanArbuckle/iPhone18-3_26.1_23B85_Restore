@interface WFInterchangeManager
+ (WFInterchangeManager)sharedManager;
- (BOOL)handleIncomingRequest:(id)a3;
- (BOOL)handleOpenURL:(id)a3 fromSourceApplication:(id)a4 errorHandler:(id)a5 postNotification:(BOOL)a6;
- (WFInterchangeManager)init;
- (WFInterchangeScheme)callbackScheme;
- (id)popQueuedRequest;
- (void)_performRequest:(id)a3;
- (void)applicationContext:(id)a3 applicationStateDidChange:(int64_t)a4;
- (void)dealloc;
- (void)handleOpenURLRequestNotification:(id)a3;
- (void)performQueuedRequestIfApplicable;
- (void)performRequest:(id)a3;
- (void)queueRequest:(id)a3;
- (void)registerHandler:(id)a3 forIncomingRequestsWithAction:(id)a4 legacyAction:(id)a5 scheme:(id)a6;
- (void)registerHandler:(id)a3 forIncomingRequestsWithAction:(id)a4 scheme:(id)a5;
- (void)removeHandlerForIncomingRequestsWithAction:(id)a3 scheme:(id)a4;
@end

@implementation WFInterchangeManager

+ (WFInterchangeManager)sharedManager
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__WFInterchangeManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedManager_onceToken_60596 != -1)
  {
    dispatch_once(&sharedManager_onceToken_60596, block);
  }

  v2 = sharedManager_sharedManager_60597;

  return v2;
}

void __37__WFInterchangeManager_sharedManager__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedManager_sharedManager_60597;
  sharedManager_sharedManager_60597 = v1;
}

- (WFInterchangeManager)init
{
  v17.receiver = self;
  v17.super_class = WFInterchangeManager;
  v2 = [(WFInterchangeManager *)&v17 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696ABB0] defaultCenter];
    notificationCenter = v2->_notificationCenter;
    v2->_notificationCenter = v3;

    v5 = [MEMORY[0x1E6996CA8] sharedContext];
    [v5 addApplicationStateObserver:v2 forEvent:1];

    v6 = [MEMORY[0x1E6996CA8] sharedContext];
    [v6 addApplicationStateObserver:v2 forEvent:0];

    v7 = [MEMORY[0x1E6996CA8] sharedContext];
    [v7 addApplicationStateObserver:v2 forEvent:3];

    v8 = objc_opt_new();
    queuedRequests = v2->_queuedRequests;
    v2->_queuedRequests = v8;

    v10 = objc_opt_new();
    queueLock = v2->_queueLock;
    v2->_queueLock = v10;

    [(WFInterchangeManager *)v2 registerHandler:&__block_literal_global_60582 forIncomingRequestsWithAction:@"ic-success" scheme:0];
    [(WFInterchangeManager *)v2 registerHandler:&__block_literal_global_189_60583 forIncomingRequestsWithAction:@"ic-cancel" scheme:0];
    [(WFInterchangeManager *)v2 registerHandler:&__block_literal_global_191_60584 forIncomingRequestsWithAction:@"ic-error" scheme:0];
    v12 = [(WFInterchangeManager *)v2 notificationCenter];
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    [v12 addObserver:v2 selector:sel_handleOpenURLRequestNotification_ name:@"WFInterchangeManagerHandleOpenURLNotification" object:v14];

    v15 = v2;
  }

  return v2;
}

- (void)performQueuedRequestIfApplicable
{
  v3 = [(WFInterchangeManager *)self popQueuedRequest];
  v4 = v3;
  if (v3)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __56__WFInterchangeManager_performQueuedRequestIfApplicable__block_invoke;
    v5[3] = &unk_1E837F870;
    v5[4] = self;
    v6 = v3;
    dispatch_async(MEMORY[0x1E69E96A0], v5);
  }
}

- (id)popQueuedRequest
{
  v3 = [(WFInterchangeManager *)self queueLock];
  v4 = [(WFInterchangeManager *)self queuedRequests];
  [v3 lock];
  v5 = [v4 lastObject];
  [v4 removeLastObject];
  [v3 unlock];

  return v5;
}

- (WFInterchangeScheme)callbackScheme
{
  callbackScheme = self->_callbackScheme;
  if (!callbackScheme)
  {
    v4 = +[WFInterchangeAppRegistry sharedRegistry];
    v5 = [v4 currentApp];
    v6 = [v5 schemes];
    v7 = [v6 objectMatchingKey:@"callbackScheme" BOOLValue:1];
    v8 = self->_callbackScheme;
    self->_callbackScheme = v7;

    callbackScheme = self->_callbackScheme;
  }

  return callbackScheme;
}

- (void)_performRequest:(id)a3
{
  v67 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = getWFInterchangeLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v64 = "[WFInterchangeManager _performRequest:]";
    v65 = 2112;
    v66 = v4;
    _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_INFO, "%s Performing incoming request: %@", buf, 0x16u);
  }

  v6 = [MEMORY[0x1E6996CA8] sharedContext];
  v7 = [v6 applicationBundleURLSchemes];
  v8 = [v4 URL];
  v9 = [v8 scheme];
  v10 = [v9 lowercaseString];
  if ([v7 containsObject:v10] && objc_msgSend(v4, "isCallbackRequest"))
  {
    v11 = [v4 successHandler];

    if (v11)
    {
      [v4 setInternalCallbackRequest:1];
      if ([(WFInterchangeManager *)self handleIncomingRequest:v4])
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
  }

  if (![v4 isCallbackRequest])
  {
LABEL_15:
    [(WFInterchangeManager *)self queueRequest:v4];
    goto LABEL_16;
  }

  v12 = [MEMORY[0x1E6996CA8] sharedContext];
  v13 = [v12 provider];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    goto LABEL_15;
  }

  v14 = [(WFInterchangeManager *)self callbackScheme];

  if (!v14)
  {
    goto LABEL_15;
  }

  v15 = [v4 scheme];
  v16 = objc_opt_new();
  v17 = [v4 sourceName];
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v21 = [(WFInterchangeManager *)self callbackScheme];
    v22 = [v21 app];
    v19 = [v22 localizedShortName];
  }

  v23 = [v15 callbackSourceNameKey];
  v24 = v23;
  if (v19 && v23)
  {
    [v16 setObject:v19 forKey:v23];
  }

  v25 = [v4 successHandler];

  if (v25)
  {
    v26 = [v15 callbackSuccessURLKey];
    v27 = [v15 callbackCancelURLKey];
    v57 = v27;
    v58 = v26;
    if (v26)
    {
      v60 = v19;
      v28 = MEMORY[0x1E696AEC0];
      v29 = [(WFInterchangeManager *)self callbackScheme];
      v30 = [v29 scheme];
      v31 = [v4 uniqueID];
      v32 = [v31 UUIDString];
      v33 = [v28 stringWithFormat:@"%@://%@/%@/%@", v30, @"x-callback-url", @"ic-success", v32];

      v34 = [v4 successURLQueryString];
      v35 = v34;
      if (v34)
      {
        v36 = [v33 stringByAppendingFormat:@"?%@", v34];

        v33 = v36;
      }

      v26 = v58;
      [v16 setObject:v33 forKey:v58];

      v19 = v60;
      v27 = v57;
    }

    if (v27)
    {
      v37 = MEMORY[0x1E696AEC0];
      v38 = [(WFInterchangeManager *)self callbackScheme];
      v39 = [v38 scheme];
      [v4 uniqueID];
      v61 = v24;
      v40 = v16;
      v42 = v41 = v19;
      v43 = [v42 UUIDString];
      v44 = [v37 stringWithFormat:@"%@://%@/%@/%@", v39, @"x-callback-url", @"ic-cancel", v43];

      v19 = v41;
      v16 = v40;
      v24 = v61;

      v27 = v57;
      [v16 setObject:v44 forKey:v57];

      v26 = v58;
    }
  }

  v45 = [v15 callbackErrorURLKey];
  v46 = [v4 failureHandler];

  if (v46 && v45)
  {
    v47 = MEMORY[0x1E696AEC0];
    v48 = [(WFInterchangeManager *)self callbackScheme];
    [v48 scheme];
    v49 = v62 = v24;
    [v4 uniqueID];
    v59 = v15;
    v50 = v16;
    v52 = v51 = v19;
    v53 = [v52 UUIDString];
    v54 = [v47 stringWithFormat:@"%@://%@/%@/%@", v49, @"x-callback-url", @"ic-error", v53];

    v19 = v51;
    v16 = v50;
    v15 = v59;

    v24 = v62;
    [v16 setObject:v54 forKey:v45];
  }

  v55 = [v4 URL];
  v56 = [v55 URLByAddingValuesFromQueryDictionary:v16];
  [v4 setGeneratedCallbackURL:v56];

  [(WFInterchangeManager *)self queueRequest:v4];
LABEL_16:

  v20 = *MEMORY[0x1E69E9840];
}

- (void)performRequest:(id)a3
{
  v4 = a3;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    [(WFInterchangeManager *)self _performRequest:v4];
  }

  else
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __39__WFInterchangeManager_performRequest___block_invoke;
    v5[3] = &unk_1E837F870;
    v5[4] = self;
    v6 = v4;
    dispatch_sync(MEMORY[0x1E69E96A0], v5);
  }
}

void __56__WFInterchangeManager_performQueuedRequestIfApplicable__block_invoke(uint64_t a1)
{
  v49 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E6996CA8] sharedContext];
  if (![v2 applicationState])
  {

LABEL_7:
    v7 = [*(a1 + 40) generatedCallbackURL];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = [*(a1 + 40) URL];
    }

    v10 = v9;

    v11 = getWFInterchangeLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v46 = "[WFInterchangeManager performQueuedRequestIfApplicable]_block_invoke";
      v47 = 2112;
      v48 = v10;
      _os_log_impl(&dword_1CA256000, v11, OS_LOG_TYPE_DEFAULT, "%s Performing request: %@", buf, 0x16u);
    }

    v12 = [*(a1 + 40) deferCompletionUntilReturn];
    v13 = [MEMORY[0x1E6996CA8] sharedContext];
    v14 = [v13 canOpenURL:v10];

    if (v14)
    {
      if (v12)
      {
        v15 = +[WFInterchangeURLRequestRegistry sharedRegistry];
        [v15 registerOutgoingRequest:*(a1 + 40)];
      }

      v16 = [*(a1 + 40) opener];

      if (!v16)
      {
        goto LABEL_27;
      }

      *(*(a1 + 32) + 10) = 0;
      v17 = [*(a1 + 40) opener];
      v18 = [*(a1 + 40) bundleIdentifier];
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __56__WFInterchangeManager_performQueuedRequestIfApplicable__block_invoke_213;
      v38[3] = &unk_1E837CFA8;
      v39 = *(a1 + 40);
      v19 = v10;
      v20 = *(a1 + 32);
      v40 = v19;
      v41 = v20;
      v42 = v12;
      (v17)[2](v17, v19, v18, v38);

      v21 = v39;
LABEL_26:

LABEL_27:
      v37 = *MEMORY[0x1E69E9840];
      return;
    }

    v22 = [*(a1 + 40) scheme];
    v23 = [v22 app];
    v24 = [v23 localizedName];
    v25 = MEMORY[0x1E696AEC0];
    if (v24)
    {
      v26 = WFLocalizedString(@"Shortcuts could not open %@ because it is not installed.");
      v27 = [*(a1 + 40) scheme];
      v28 = [v27 app];
      v29 = [v28 localizedName];
      v21 = [v25 stringWithFormat:v26, v29];
    }

    else
    {
      v26 = WFLocalizedString(@"Shortcuts could not open the app for the URL scheme “%@” because the app is not installed on this device.");
      v27 = [*(a1 + 40) URL];
      v28 = [v27 scheme];
      v21 = [v25 stringWithFormat:v26, v28];
    }

    v30 = MEMORY[0x1E696ABC0];
    v43 = *MEMORY[0x1E696A578];
    v44 = v21;
    v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
    v32 = [v30 errorWithDomain:@"InterchangeErrorDomain" code:1 userInfo:v31];

    v33 = [*(a1 + 40) failureHandler];

    v34 = *(a1 + 40);
    if (v33)
    {
      v35 = [v34 failureHandler];
      (v35)[2](v35, v32);
    }

    else
    {
      v36 = [v34 successHandler];

      if (!v36)
      {
LABEL_25:

        goto LABEL_26;
      }

      v35 = [*(a1 + 40) successHandler];
      (v35[2])(v35, 0, 0);
    }

    goto LABEL_25;
  }

  v3 = [*(a1 + 32) allowsOpeningFromBackground];

  if (v3)
  {
    goto LABEL_7;
  }

  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *MEMORY[0x1E69E9840];

  [v4 queueRequest:v5];
}

void __56__WFInterchangeManager_performQueuedRequestIfApplicable__block_invoke_213(uint64_t a1, char a2, void *a3)
{
  v39[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    if ((*(a1 + 56) & 1) == 0)
    {
      v6 = [*(a1 + 32) successHandler];

      if (v6)
      {
        v7 = [*(a1 + 32) successHandler];
        v7[2](v7, 0, 0);
LABEL_12:
      }
    }
  }

  else
  {
    v8 = [*(a1 + 32) userInterface];
    v9 = [v8 isRunningWithSiriUI];

    if (v9)
    {
      v7 = [*(a1 + 32) failureHandler];
      v10 = [MEMORY[0x1E696ABC0] wfUnsupportedUserInterfaceError];
      (v7[2])(v7, v10);

      goto LABEL_12;
    }

    v11 = [*(a1 + 40) scheme];
    if (([v11 isEqualToString:@"tel"] & 1) != 0 || *(*(a1 + 48) + 10) == 1)
    {
    }

    else
    {
      v14 = [MEMORY[0x1E6996CA8] sharedContext];
      v15 = [v14 currentUserInterfaceType];
      v16 = [v15 isEqualToString:*MEMORY[0x1E6997178]];

      if (!v16)
      {
        if ([*(a1 + 32) retries] < 6)
        {
          v27 = dispatch_time(0, 100000000);
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __56__WFInterchangeManager_performQueuedRequestIfApplicable__block_invoke_2;
          block[3] = &unk_1E837F870;
          v28 = *(a1 + 32);
          v29 = *(a1 + 48);
          v36 = v28;
          v37 = v29;
          dispatch_after(v27, MEMORY[0x1E69E96A0], block);
        }

        else
        {
          v17 = [*(a1 + 32) failureHandler];

          if (v17)
          {
            v18 = [*(a1 + 32) scheme];
            v19 = [v18 app];
            v20 = [v19 localizedName];
            v21 = MEMORY[0x1E696AEC0];
            if (v20)
            {
              v22 = WFLocalizedString(@"Shortcuts could not open %@. It may not be installed on this device.");
              v23 = [*(a1 + 32) scheme];
              v24 = [v23 app];
              v25 = [v24 localizedName];
              v26 = [v21 localizedStringWithFormat:v22, v25];
            }

            else
            {
              v22 = WFLocalizedString(@"Shortcuts could not open the app for the URL scheme “%@”. The app may not be installed on this device.");
              v23 = [*(a1 + 40) scheme];
              v26 = [v21 localizedStringWithFormat:v22, v23];
            }

            v30 = [*(a1 + 32) failureHandler];
            v31 = v30;
            if (v5)
            {
              (*(v30 + 16))(v30, v5);
            }

            else
            {
              v32 = MEMORY[0x1E696ABC0];
              v38 = *MEMORY[0x1E696A578];
              v39[0] = v26;
              v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:&v38 count:1];
              v34 = [v32 errorWithDomain:@"InterchangeErrorDomain" code:3 userInfo:v33];
              (v31)[2](v31, v34);
            }
          }
        }

        goto LABEL_13;
      }
    }

    v12 = [*(a1 + 32) failureHandler];

    if (v12)
    {
      v7 = [*(a1 + 32) failureHandler];
      (v7[2])(v7, 0);
      goto LABEL_12;
    }
  }

LABEL_13:

  v13 = *MEMORY[0x1E69E9840];
}

uint64_t __56__WFInterchangeManager_performQueuedRequestIfApplicable__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setRetries:{objc_msgSend(*(a1 + 32), "retries") + 1}];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);

  return [v2 queueRequest:v3];
}

- (void)queueRequest:(id)a3
{
  v4 = a3;
  v6 = [(WFInterchangeManager *)self queueLock];
  [v6 lock];
  v5 = [(WFInterchangeManager *)self queuedRequests];
  [v5 addObject:v4];

  [v6 unlock];
  [(WFInterchangeManager *)self performQueuedRequestIfApplicable];
}

- (void)applicationContext:(id)a3 applicationStateDidChange:(int64_t)a4
{
  v6 = a3;
  if (a4)
  {
    if (a4 == 3)
    {
      self->_enteringForeground = 1;
    }

    else if (a4 == 1)
    {
      self->_resignedActiveWhileOpeningURL = 1;
    }
  }

  else
  {
    v26 = v6;
    v7 = [MEMORY[0x1E69E0A90] currentDevice];
    v8 = [v7 idiom];

    if (v8 != 1)
    {
      goto LABEL_13;
    }

    v9 = [MEMORY[0x1E6996CA8] sharedContext];
    v10 = [v9 applicationOrNil];

    if (!v10)
    {
      goto LABEL_13;
    }

    v11 = [v10 keyWindow];
    [v11 frame];
    v13 = v12;
    v15 = v14;

    v16 = [MEMORY[0x1E69E0A90] currentDevice];
    [v16 screenBounds];
    v18 = v17;
    v20 = v19;

    v6 = v26;
    v21 = v13 == v18 && v15 == v20;
    if (v21 || self->_enteringForeground)
    {
LABEL_13:
      self->_enteringForeground = 0;
      v22 = +[WFInterchangeURLRequestRegistry sharedRegistry];
      v23 = [v22 popActiveRequest];

      v24 = [v23 successHandler];

      if (v24)
      {
        v25 = [v23 successHandler];
        v25[2](v25, 0, 0);
      }

      [(WFInterchangeManager *)self performQueuedRequestIfApplicable];

      v6 = v26;
    }
  }
}

- (void)removeHandlerForIncomingRequestsWithAction:(id)a3 scheme:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[WFInterchangeURLRequestRegistry sharedRegistry];
  [v7 removeHandlerForIncomingRequestsWithAction:v6 scheme:v5];
}

- (void)registerHandler:(id)a3 forIncomingRequestsWithAction:(id)a4 legacyAction:(id)a5 scheme:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = +[WFInterchangeURLRequestRegistry sharedRegistry];
  [v13 registerHandler:v12 forIncomingRequestsWithAction:v11 scheme:v9];

  v14 = +[WFInterchangeURLRequestRegistry sharedRegistry];
  [v14 registerHandler:v12 forIncomingRequestsWithAction:v10 scheme:v9];
}

- (void)registerHandler:(id)a3 forIncomingRequestsWithAction:(id)a4 scheme:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = +[WFInterchangeURLRequestRegistry sharedRegistry];
  [v10 registerHandler:v9 forIncomingRequestsWithAction:v8 scheme:v7];
}

- (BOOL)handleIncomingRequest:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = getWFInterchangeLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v28 = "[WFInterchangeManager handleIncomingRequest:]";
    v29 = 2112;
    v30 = v4;
    _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_DEBUG, "%s Handling incoming request: %@", buf, 0x16u);
  }

  v6 = [v4 URL];
  v7 = +[WFInterchangeURLRequestRegistry sharedRegistry];
  v8 = [v4 action];
  v9 = [v6 scheme];
  v10 = [v7 handlerForIncomingRequestWithAction:v8 scheme:v9];

  if (v10)
  {
    (v10)[2](v10, v4);
  }

  else
  {
    if (![v4 isCallbackRequest] || (-[WFInterchangeManager callbackScheme](self, "callbackScheme"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "matchesURL:", v6), v12, !v13))
    {
      v11 = 0;
      goto LABEL_12;
    }

    v14 = MEMORY[0x1E696ABC0];
    v25 = *MEMORY[0x1E696A578];
    v15 = MEMORY[0x1E696AEC0];
    v16 = WFLocalizedString(@"This app does not support the %@ action.");
    v17 = [v4 action];
    v18 = [v15 stringWithFormat:v16, v17];
    v26 = v18;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v20 = [v14 errorWithDomain:@"InterchangeErrorDomain" code:2 userInfo:v19];

    v21 = [v4 failureHandler];

    if (v21)
    {
      v22 = [v4 failureHandler];
      (v22)[2](v22, v20);
    }
  }

  v11 = 1;
LABEL_12:

  v23 = *MEMORY[0x1E69E9840];
  return v11;
}

- (BOOL)handleOpenURL:(id)a3 fromSourceApplication:(id)a4 errorHandler:(id)a5 postNotification:(BOOL)a6
{
  v33 = a6;
  v50 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = getWFInterchangeLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v47 = "[WFInterchangeManager handleOpenURL:fromSourceApplication:errorHandler:postNotification:]";
    v48 = 2112;
    v49 = v8;
    _os_log_impl(&dword_1CA256000, v11, OS_LOG_TYPE_INFO, "%s Handling opening URL: %@", buf, 0x16u);
  }

  v12 = [WFInterchangeURLRequest requestWithURL:v8 fromSourceApplication:v9];
  v13 = [v12 parameters];
  v14 = MEMORY[0x1E695DFF8];
  v15 = [v13 objectForKey:@"x-error"];
  v16 = [v14 URLWithString:v15];

  if (v10 | v16)
  {
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __90__WFInterchangeManager_handleOpenURL_fromSourceApplication_errorHandler_postNotification___block_invoke;
    v40[3] = &unk_1E837CF40;
    v41 = v16;
    v42 = self;
    v43 = v10;
    [v12 setFailureHandler:v40];
  }

  v35 = v10;
  v17 = [v13 objectForKey:@"x-cancel"];
  v18 = [v13 objectForKey:@"x-success"];
  if (v17 | v18)
  {
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __90__WFInterchangeManager_handleOpenURL_fromSourceApplication_errorHandler_postNotification___block_invoke_202;
    v37[3] = &unk_1E837CF78;
    v38 = v17;
    v39 = v18;
    [v12 setSuccessHandler:v37];
  }

  v19 = [(WFInterchangeManager *)self handleIncomingRequest:v12];
  v20 = v19;
  if (v33)
  {
    v32 = v19;
    v21 = MEMORY[0x1E695DF90];
    v44[0] = @"HandleURLNotificationURL";
    v34 = v8;
    [v8 absoluteString];
    v23 = v22 = v9;
    v45[0] = v23;
    v44[1] = @"HandleURLNotificationProcessIdentifier";
    v24 = [MEMORY[0x1E696AD98] numberWithInt:getpid()];
    v45[1] = v24;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:v44 count:2];
    v26 = [v21 dictionaryWithDictionary:v25];

    if (v22)
    {
      [v26 setObject:v22 forKeyedSubscript:@"HandleURLNotificationSourceApplication"];
    }

    v27 = [(WFInterchangeManager *)self notificationCenter];
    v28 = objc_opt_class();
    v29 = NSStringFromClass(v28);
    [v27 postNotificationName:@"WFInterchangeManagerHandleOpenURLNotification" object:v29 userInfo:v26 deliverImmediately:1];

    v9 = v22;
    v8 = v34;
    v20 = v32;
  }

  v30 = *MEMORY[0x1E69E9840];
  return v20;
}

void __90__WFInterchangeManager_handleOpenURL_fromSourceApplication_errorHandler_postNotification___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __90__WFInterchangeManager_handleOpenURL_fromSourceApplication_errorHandler_postNotification___block_invoke_2;
  v6[3] = &unk_1E837F510;
  v7 = *(a1 + 32);
  v8 = v3;
  v4 = *(a1 + 48);
  v9 = *(a1 + 40);
  v10 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __90__WFInterchangeManager_handleOpenURL_fromSourceApplication_errorHandler_postNotification___block_invoke_202(uint64_t a1, void *a2, int a3)
{
  v4 = 40;
  if (a3)
  {
    v4 = 32;
  }

  v5 = MEMORY[0x1E695DFF8];
  v6 = *(a1 + v4);
  v7 = a2;
  v8 = [v5 URLWithString:v6];
  v9 = [v8 URLByAddingValuesFromQueryDictionary:v7];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __90__WFInterchangeManager_handleOpenURL_fromSourceApplication_errorHandler_postNotification___block_invoke_2_203;
  block[3] = &unk_1E837FA70;
  v12 = v9;
  v10 = v9;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __90__WFInterchangeManager_handleOpenURL_fromSourceApplication_errorHandler_postNotification___block_invoke_2_203(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) isFileURL])
  {
    v2 = getWFInterchangeLogObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = *(a1 + 32);
      *buf = 136315394;
      v10 = "[WFInterchangeManager handleOpenURL:fromSourceApplication:errorHandler:postNotification:]_block_invoke_2";
      v11 = 2112;
      v12 = v3;
      v4 = "%s Not opening file-based URL in response to success/cancellation: %@";
LABEL_10:
      _os_log_impl(&dword_1CA256000, v2, OS_LOG_TYPE_ERROR, v4, buf, 0x16u);
      goto LABEL_11;
    }

    goto LABEL_11;
  }

  if (([*(a1 + 32) wf_isAllowedInXCallback] & 1) == 0)
  {
    v2 = getWFInterchangeLogObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      *buf = 136315394;
      v10 = "[WFInterchangeManager handleOpenURL:fromSourceApplication:errorHandler:postNotification:]_block_invoke";
      v11 = 2112;
      v12 = v6;
      v4 = "%s URL cannot be used as success/cancellation handler: %@";
      goto LABEL_10;
    }

LABEL_11:

    v7 = *MEMORY[0x1E69E9840];
    return;
  }

  v8 = [MEMORY[0x1E6996CA8] sharedContext];
  [v8 openURL:*(a1 + 32)];
  v5 = *MEMORY[0x1E69E9840];
}

void __90__WFInterchangeManager_handleOpenURL_fromSourceApplication_errorHandler_postNotification___block_invoke_2(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2 && ([v2 isFileURL] & 1) == 0)
  {
    v3 = [MEMORY[0x1E6996CA8] sharedContext];
    if ([v3 canOpenURL:*(a1 + 32)])
    {
      v4 = *(a1 + 32);
      if ((WFURLIsWebPage() & 1) == 0)
      {

LABEL_13:
        if ([*(a1 + 32) wf_isAllowedInXCallback])
        {
          v23 = [*(a1 + 40) interchangeErrorDictionary];
          v11 = [*(a1 + 32) URLByAddingValuesFromQueryDictionary:?];
          v12 = [v11 scheme];
          v13 = [*(a1 + 48) callbackScheme];
          v14 = [v13 scheme];
          v15 = [v12 isEqualToString:v14];

          if (v15)
          {
            v16 = *(a1 + 48);
            v17 = [MEMORY[0x1E6996CA8] sharedContext];
            v18 = [v17 bundle];
            v19 = [v18 bundleIdentifier];
            [v16 handleOpenURL:v11 fromSourceApplication:v19 errorHandler:*(a1 + 56)];
          }

          else
          {
            v17 = [MEMORY[0x1E6996CA8] sharedContext];
            [v17 openURL:v11];
          }

          v22 = *MEMORY[0x1E69E9840];

          return;
        }

        v20 = getWFInterchangeLogObject();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v25 = "[WFInterchangeManager handleOpenURL:fromSourceApplication:errorHandler:postNotification:]_block_invoke_2";
          _os_log_impl(&dword_1CA256000, v20, OS_LOG_TYPE_ERROR, "%s URL cannot be used as failure handler, bailing out.", buf, 0xCu);
        }

LABEL_19:
        v21 = *MEMORY[0x1E69E9840];
        return;
      }

      v5 = *(a1 + 32);
      v6 = WFURLIsUniversalLink();

      if (v6)
      {
        goto LABEL_13;
      }
    }

    else
    {
    }
  }

  v7 = *(a1 + 56);
  if (!v7)
  {
    goto LABEL_19;
  }

  v8 = *(a1 + 40);
  v9 = *(v7 + 16);
  v10 = *MEMORY[0x1E69E9840];

  v9();
}

- (void)handleOpenURLRequestNotification:(id)a3
{
  v16 = a3;
  v4 = [v16 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"HandleURLNotificationProcessIdentifier"];

  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [v16 userInfo];
  v9 = [v8 objectForKeyedSubscript:@"HandleURLNotificationURL"];

  if (!v9)
  {
    v15 = 0;
    v10 = 0;
LABEL_18:

    goto LABEL_19;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = 0;
    v15 = v9;
    v9 = 0;
    goto LABEL_18;
  }

  v10 = [MEMORY[0x1E695DFF8] URLWithString:v9];
  if (v10)
  {
    v11 = [v7 integerValue];
    if (v11 != getpid())
    {
      v12 = [v16 userInfo];
      v13 = [v12 objectForKeyedSubscript:@"HandleURLNotificationSourceApplication"];

      if (v13)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = v13;
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
      }

      v15 = v14;

      [(WFInterchangeManager *)self handleOpenURL:v10 fromSourceApplication:v15 errorHandler:0 postNotification:0];
      goto LABEL_18;
    }
  }

LABEL_19:
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E6996CA8] sharedContext];
  [v3 removeApplicationStateObserver:self forEvent:1];

  v4 = [MEMORY[0x1E6996CA8] sharedContext];
  [v4 removeApplicationStateObserver:self forEvent:0];

  v5 = [MEMORY[0x1E6996CA8] sharedContext];
  [v5 removeApplicationStateObserver:self forEvent:3];

  v6.receiver = self;
  v6.super_class = WFInterchangeManager;
  [(WFInterchangeManager *)&v6 dealloc];
}

void __28__WFInterchangeManager_init__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AFB0];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 subAction];
  v14 = [v4 initWithUUIDString:v5];

  v6 = +[WFInterchangeURLRequestRegistry sharedRegistry];
  v7 = [v6 popRequestWithUUID:v14];

  v8 = MEMORY[0x1E696ABC0];
  v9 = [v3 parameters];

  v10 = [v8 errorWithInterchangeErrorDictionary:v9];

  v11 = [v7 failureHandler];

  if (v11)
  {
    v12 = [v7 failureHandler];
    (v12)[2](v12, v10);
  }

  else
  {
    v13 = [v7 successHandler];

    if (!v13)
    {
      goto LABEL_6;
    }

    v12 = [v7 successHandler];
    (v12[2])(v12, 0, 0);
  }

LABEL_6:
}

void __28__WFInterchangeManager_init__block_invoke_2(uint64_t a1, void *a2)
{
  v10 = a2;
  v2 = objc_alloc(MEMORY[0x1E696AFB0]);
  v3 = [v10 subAction];
  v4 = [v2 initWithUUIDString:v3];

  v5 = +[WFInterchangeURLRequestRegistry sharedRegistry];
  v6 = [v5 popRequestWithUUID:v4];

  v7 = [v6 successHandler];

  if (v7)
  {
    v8 = [v6 successHandler];
    v9 = [v10 parameters];
    (v8)[2](v8, v9, 1);
  }
}

void __28__WFInterchangeManager_init__block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  v2 = objc_alloc(MEMORY[0x1E696AFB0]);
  v3 = [v10 subAction];
  v4 = [v2 initWithUUIDString:v3];

  v5 = +[WFInterchangeURLRequestRegistry sharedRegistry];
  v6 = [v5 popRequestWithUUID:v4];

  v7 = [v6 successHandler];

  if (v7)
  {
    v8 = [v6 successHandler];
    v9 = [v10 parameters];
    (v8)[2](v8, v9, 0);
  }
}

@end