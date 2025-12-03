@interface VUIApplicationRouter
+ (BOOL)_handleEvent:(id)event targetResponder:(id)responder appContext:(id)context eventDataSource:(id)source documentOptions:(id)options extraInfo:(id *)info;
+ (BOOL)handleAccountSettingsEventWithUrl:(id)url amsBagKey:(id)key useAMSWebView:(BOOL)view;
+ (BOOL)handleDocumentDataSource:(id)source targetResponder:(id)responder appContext:(id)context documentOptions:(id)options completion:(id)completion;
+ (BOOL)handleEvent:(id)event targetResponder:(id)responder appContext:(id)context routerDataSource:(id)source supplementaryData:(id)data extraInfo:(id *)info;
+ (id)_viewControllerWithIdentifier:(id)identifier;
+ (id)currentNavigationController;
+ (id)eventDataSourceForEvent:(id)event routerDataSource:(id)source;
+ (id)topMostVisibleViewController;
+ (id)topPresentedViewController;
+ (void)_amsBagURLForKey:(id)key withCompletion:(id)completion;
+ (void)_dismissPresentedViewControllerWithCompletion:(id)completion;
+ (void)_handleAccountSettingsEventWithUrl:(id)url amsBagKey:(id)key useAMSWebView:(BOOL)view isModalPresentation:(BOOL)presentation originalNavigationController:(id)controller;
+ (void)_navigateAccountSettingsWithDestinationViewController:(id)controller shouldEmbedInNavController:(BOOL)navController isModalPresentation:(BOOL)presentation originalNavigationController:(id)navigationController;
+ (void)_performForType:(int64_t)type targetResponder:(id)responder appContext:(id)context eventDataSource:(id)source documentOptions:(id)options;
+ (void)dismissOrPopLastViewControllerWithCompletion:(id)completion;
+ (void)dismissOrPopViewControllerWithId:(id)id completion:(id)completion;
+ (void)invokeAction:(id)action primaryAction:(id)primaryAction targetResponder:(id)responder completion:(id)completion;
+ (void)invokeAction:(id)action targetResponder:(id)responder documentOptions:(id)options completion:(id)completion;
@end

@implementation VUIApplicationRouter

+ (id)eventDataSourceForEvent:(id)event routerDataSource:(id)source
{
  eventCopy = event;
  sourceCopy = source;
  if (sourceCopy)
  {
    if (([eventCopy isEqualToString:@"play"] & 1) != 0 || objc_msgSend(eventCopy, "isEqualToString:", @"autoPlay"))
    {
      playEventDataSource = [sourceCopy playEventDataSource];
LABEL_5:
      v8 = playEventDataSource;
      goto LABEL_11;
    }

    if ([eventCopy isEqualToString:@"select"])
    {
      playEventDataSource = [sourceCopy selectEventDataSource];
      goto LABEL_5;
    }

    if ([eventCopy isEqualToString:@"contextmenu"])
    {
      playEventDataSource = [sourceCopy contextMenuEventDataSource];
      goto LABEL_5;
    }
  }

  v8 = 0;
LABEL_11:

  return v8;
}

+ (BOOL)handleAccountSettingsEventWithUrl:(id)url amsBagKey:(id)key useAMSWebView:(BOOL)view
{
  viewCopy = view;
  urlCopy = url;
  keyCopy = key;
  if (+[VUIUtilities isSUIEnabled])
  {
    v9 = +[VUIInterfaceFactory sharedInstance];
    controllerPresenter = [v9 controllerPresenter];

    [controllerPresenter handleAccountSettingsEventWithUrl:urlCopy amsBagKey:keyCopy useAMSWebView:viewCopy];
  }

  else
  {
    [VUIApplicationRouter _handleAccountSettingsEventWithUrl:urlCopy amsBagKey:keyCopy useAMSWebView:viewCopy isModalPresentation:1 originalNavigationController:0];
  }

  return 0;
}

+ (BOOL)_handleEvent:(id)event targetResponder:(id)responder appContext:(id)context eventDataSource:(id)source documentOptions:(id)options extraInfo:(id *)info
{
  v24[2] = *MEMORY[0x1E69E9840];
  responderCopy = responder;
  contextCopy = context;
  sourceCopy = source;
  optionsCopy = options;
  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSince1970];
  v18 = v17;

  if (sourceCopy)
  {
    [objc_opt_class() _performForType:0 targetResponder:responderCopy appContext:contextCopy eventDataSource:sourceCopy documentOptions:optionsCopy];
    if (info)
    {
      if (*info)
      {
        v19 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:?];
        [v19 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"isHandled"];
        v20 = [MEMORY[0x1E696AD98] numberWithLong:(v18 * 1000.0)];
        [v19 setObject:v20 forKeyedSubscript:@"eventTimeStamp"];

        *info = [v19 copy];
      }

      else
      {
        v23[0] = @"isHandled";
        v23[1] = @"eventTimeStamp";
        v24[0] = MEMORY[0x1E695E118];
        v21 = [MEMORY[0x1E696AD98] numberWithLong:(v18 * 1000.0)];
        v24[1] = v21;
        *info = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];
      }
    }
  }

  return 0;
}

+ (void)_performForType:(int64_t)type targetResponder:(id)responder appContext:(id)context eventDataSource:(id)source documentOptions:(id)options
{
  v60 = *MEMORY[0x1E69E9840];
  responderCopy = responder;
  contextCopy = context;
  sourceCopy = source;
  optionsCopy = options;
  v16 = 3;
  if (type > 1)
  {
    if (type == 2)
    {
      postActionDocumentDataSource = [sourceCopy postActionDocumentDataSource];
      postAction = [sourceCopy postAction];
      v16 = 3;
      if (!postActionDocumentDataSource)
      {
        goto LABEL_14;
      }

      goto LABEL_10;
    }

    if (type == 3)
    {
      goto LABEL_29;
    }

LABEL_23:
    v34 = VUIDefaultLogObject();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      if (type > 2)
      {
        v35 = @"unknown";
      }

      else
      {
        v35 = off_1E872E490[type];
      }

      *buf = 138412546;
      v55 = v35;
      v56 = 2112;
      v57 = 0;
      _os_log_impl(&dword_1E323F000, v34, OS_LOG_TYPE_DEFAULT, "VUIApplicationRouter - VUIApplicationRouter::skipping empty event [%@] with %@", buf, 0x16u);
    }

    [objc_opt_class() _performForType:v16 targetResponder:responderCopy appContext:contextCopy eventDataSource:sourceCopy documentOptions:optionsCopy];
    goto LABEL_29;
  }

  if (!type)
  {
    postActionDocumentDataSource = [sourceCopy preActionDocumentDataSource];
    postAction = [sourceCopy preAction];
    v16 = 1;
    if (!postActionDocumentDataSource)
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  if (type != 1)
  {
    goto LABEL_23;
  }

  postActionDocumentDataSource = [sourceCopy documentDataSource];
  postAction = [sourceCopy action];
  v16 = 2;
  if (!postActionDocumentDataSource)
  {
LABEL_14:
    if (postAction)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v27 = [optionsCopy objectForKeyedSubscript:@"playlistCollectionViewModel"];
        [postAction setCollectionViewModel:v27];
      }

      [postAction setDocumentOptions:optionsCopy];
      v28 = VUIDefaultLogObject();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = off_1E872E490[type];
        *buf = 138412546;
        v55 = v29;
        v56 = 2112;
        v57 = postAction;
        _os_log_impl(&dword_1E323F000, v28, OS_LOG_TYPE_DEFAULT, "VUIApplicationRouter - VUIApplicationRouter::performing event [%@] with %@", buf, 0x16u);
      }

      action = [sourceCopy action];
      v31 = action;
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __99__VUIApplicationRouter__performForType_targetResponder_appContext_eventDataSource_documentOptions___block_invoke_67;
      v38[3] = &unk_1E872E380;
      if (action)
      {
        v32 = action;
      }

      else
      {
        v32 = postAction;
      }

      v39 = postAction;
      selfCopy = self;
      v45 = v16;
      v40 = responderCopy;
      v41 = contextCopy;
      v42 = sourceCopy;
      v43 = optionsCopy;
      v33 = postAction;
      [VUIApplicationRouter invokeAction:v33 primaryAction:v32 targetResponder:v40 completion:v38];

      goto LABEL_29;
    }

    goto LABEL_23;
  }

LABEL_10:
  v36 = postAction;
  v37 = responderCopy;
  v19 = VUIDefaultLogObject();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = optionsCopy;
    v21 = contextCopy;
    v22 = off_1E872E490[type];
    uiConfiguration = [postActionDocumentDataSource uiConfiguration];
    v24 = NSStringFromVUIPresentationType([uiConfiguration type]);
    *buf = 138412802;
    v55 = v22;
    contextCopy = v21;
    optionsCopy = v20;
    v56 = 2112;
    v57 = postActionDocumentDataSource;
    v58 = 2112;
    v59 = v24;
    _os_log_impl(&dword_1E323F000, v19, OS_LOG_TYPE_DEFAULT, "VUIApplicationRouter - VUIApplicationRouter::performing event [%@] with %@ (%@)", buf, 0x20u);
  }

  v25 = objc_opt_class();
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __99__VUIApplicationRouter__performForType_targetResponder_appContext_eventDataSource_documentOptions___block_invoke;
  v46[3] = &unk_1E872E380;
  v47 = postActionDocumentDataSource;
  selfCopy2 = self;
  v53 = v16;
  responderCopy = v37;
  v48 = v37;
  v49 = contextCopy;
  v50 = sourceCopy;
  v51 = optionsCopy;
  v26 = postActionDocumentDataSource;
  [v25 handleDocumentDataSource:v26 targetResponder:v48 appContext:v49 documentOptions:v51 completion:v46];

LABEL_29:
}

void __99__VUIApplicationRouter__performForType_targetResponder_appContext_eventDataSource_documentOptions___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = VUIDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v17 = v3;
    _os_log_impl(&dword_1E323F000, v2, OS_LOG_TYPE_DEFAULT, "VUIApplicationRouter - VUIApplicationRouter:: %@ handled", buf, 0xCu);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __99__VUIApplicationRouter__performForType_targetResponder_appContext_eventDataSource_documentOptions___block_invoke_61;
  v11[3] = &unk_1E872E358;
  v4 = *(a1 + 80);
  v14 = *(a1 + 72);
  v15 = v4;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  *&v10 = v5;
  *(&v10 + 1) = v6;
  v12 = v10;
  v13 = v9;
  dispatch_async(MEMORY[0x1E69E96A0], v11);
}

uint64_t __99__VUIApplicationRouter__performForType_targetResponder_appContext_eventDataSource_documentOptions___block_invoke_61(void *a1)
{
  v2 = objc_opt_class();
  v3 = a1[9];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];

  return [v2 _performForType:v3 targetResponder:v4 appContext:v5 eventDataSource:v6 documentOptions:v7];
}

void __99__VUIApplicationRouter__performForType_targetResponder_appContext_eventDataSource_documentOptions___block_invoke_67(uint64_t a1, int a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = VUIDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"NO";
    v6 = *(a1 + 32);
    if (a2)
    {
      v5 = @"YES";
    }

    *buf = 138412546;
    v20 = v6;
    v21 = 2112;
    v22 = v5;
    _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "VUIApplicationRouter - VUIApplicationRouter:: %@ complete with success: %@", buf, 0x16u);
  }

  if (a2)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __99__VUIApplicationRouter__performForType_targetResponder_appContext_eventDataSource_documentOptions___block_invoke_74;
    v14[3] = &unk_1E872E358;
    v7 = *(a1 + 80);
    v17 = *(a1 + 72);
    v18 = v7;
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    v11 = *(a1 + 64);
    *&v12 = v10;
    *(&v12 + 1) = v11;
    *&v13 = v8;
    *(&v13 + 1) = v9;
    v15 = v13;
    v16 = v12;
    dispatch_async(MEMORY[0x1E69E96A0], v14);
  }
}

uint64_t __99__VUIApplicationRouter__performForType_targetResponder_appContext_eventDataSource_documentOptions___block_invoke_74(void *a1)
{
  v2 = objc_opt_class();
  v3 = a1[9];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];

  return [v2 _performForType:v3 targetResponder:v4 appContext:v5 eventDataSource:v6 documentOptions:v7];
}

+ (void)invokeAction:(id)action targetResponder:(id)responder documentOptions:(id)options completion:(id)completion
{
  actionCopy = action;
  responderCopy = responder;
  completionCopy = completion;
  if (options)
  {
    [actionCopy setDocumentOptions:options];
  }

  [VUIApplicationRouter invokeAction:actionCopy primaryAction:actionCopy targetResponder:responderCopy completion:completionCopy];
}

+ (void)invokeAction:(id)action primaryAction:(id)primaryAction targetResponder:(id)responder completion:(id)completion
{
  v27 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  primaryActionCopy = primaryAction;
  responderCopy = responder;
  completionCopy = completion;
  objc_initWeak(&location, actionCopy);
  if ([actionCopy isAccountRequired] && !+[VUIAuthenticationManager userHasActiveAccount](VUIAuthenticationManager, "userHasActiveAccount") && +[VUIAuthenticationManager allowsAccountModification](VUIAuthenticationManager, "allowsAccountModification"))
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __78__VUIApplicationRouter_invokeAction_primaryAction_targetResponder_completion___block_invoke_2;
    v15[3] = &unk_1E872E3A8;
    v16 = actionCopy;
    v17 = responderCopy;
    objc_copyWeak(&v20, &location);
    v19 = completionCopy;
    v13 = primaryActionCopy;
    v18 = v13;
    [VUIAuthenticationManager requestAuthenticationAlwaysPrompt:1 withCompletionHandler:v15];
    v14 = VUIDefaultLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = v13;
      _os_log_impl(&dword_1E323F000, v14, OS_LOG_TYPE_DEFAULT, "VUIApplicationRouter - VUIApplicationRouter::Authentication requested for action: %@", buf, 0xCu);
    }

    objc_destroyWeak(&v20);
  }

  else
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __78__VUIApplicationRouter_invokeAction_primaryAction_targetResponder_completion___block_invoke;
    v21[3] = &unk_1E872DE58;
    objc_copyWeak(&v23, &location);
    v22 = completionCopy;
    [actionCopy performWithTargetResponder:responderCopy completionHandler:v21];

    objc_destroyWeak(&v23);
  }

  objc_destroyWeak(&location);
}

void __78__VUIApplicationRouter_invokeAction_primaryAction_targetResponder_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [WeakRetained setDocumentOptions:0];
  }

  (*(*(a1 + 32) + 16))();
}

void __78__VUIApplicationRouter_invokeAction_primaryAction_targetResponder_completion___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __78__VUIApplicationRouter_invokeAction_primaryAction_targetResponder_completion___block_invoke_3;
    v10[3] = &unk_1E872DE58;
    objc_copyWeak(&v12, (a1 + 64));
    v11 = *(a1 + 56);
    [v6 performWithTargetResponder:v7 completionHandler:v10];

    objc_destroyWeak(&v12);
  }

  else
  {
    v8 = VUIDefaultLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 48);
      *buf = 138412546;
      v14 = v9;
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "VUIApplicationRouter - VUIApplicationRouter::Authentication request failed for action: %@, error: %@", buf, 0x16u);
    }

    (*(*(a1 + 56) + 16))();
  }
}

void __78__VUIApplicationRouter_invokeAction_primaryAction_targetResponder_completion___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  (*(*(a1 + 32) + 16))();
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setDocumentOptions:0];
    v2 = WeakRetained;
  }
}

+ (void)_navigateAccountSettingsWithDestinationViewController:(id)controller shouldEmbedInNavController:(BOOL)navController isModalPresentation:(BOOL)presentation originalNavigationController:(id)navigationController
{
  navControllerCopy = navController;
  controllerCopy = controller;
  v14 = controllerCopy;
  if (!navigationController || presentation)
  {
    currentNavigationController = [self currentNavigationController];
    v12 = currentNavigationController;
    if (navControllerCopy)
    {
      v13 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v14];
      [v13 setModalPresentationStyle:2];
      [v12 presentViewController:v13 animated:1 completion:0];
    }

    else
    {
      [currentNavigationController setModalPresentationStyle:2];
      [v12 presentViewController:v14 animated:1 completion:0];
    }
  }

  else
  {
    [navigationController pushViewController:controllerCopy animated:1];
  }
}

+ (void)_amsBagURLForKey:(id)key withCompletion:(id)completion
{
  completionCopy = completion;
  v5 = MEMORY[0x1E69D5928];
  keyCopy = key;
  v7 = [v5 app];
  v8 = [v7 urlForKey:keyCopy];

  if (completionCopy)
  {
    completionCopy[2](completionCopy, v8);
  }
}

+ (void)_handleAccountSettingsEventWithUrl:(id)url amsBagKey:(id)key useAMSWebView:(BOOL)view isModalPresentation:(BOOL)presentation originalNavigationController:(id)controller
{
  presentationCopy = presentation;
  viewCopy = view;
  urlCopy = url;
  keyCopy = key;
  controllerCopy = controller;
  if (urlCopy)
  {
    if (!viewCopy)
    {
      vui_defaultBag = [objc_alloc(MEMORY[0x1E697BA60]) initWithAccountURL:urlCopy];
      v23 = +[VUIInterfaceFactory sharedInstance];
      openURLHandler = [v23 openURLHandler];
      v25 = [openURLHandler isRedeemURL:urlCopy];

      if (v25)
      {
        v26 = +[SKAccountPageHandler sharedInstance];
        [vui_defaultBag setDelegate:v26];
      }

      [self _navigateAccountSettingsWithDestinationViewController:vui_defaultBag shouldEmbedInNavController:0 isModalPresentation:presentationCopy originalNavigationController:controllerCopy];
      goto LABEL_11;
    }

    vui_defaultBag = [MEMORY[0x1E698C7D8] vui_defaultBag];
    activeAccount = [MEMORY[0x1E69D5920] activeAccount];
    v17 = [objc_alloc(MEMORY[0x1E698CD40]) initWithBag:vui_defaultBag account:activeAccount clientInfo:0];
    v18 = +[VUIMetricsController sharedInstance];
    getMetricsOverlayForWebContainer = [v18 getMetricsOverlayForWebContainer];

    [v17 setMetricsOverlay:getMetricsOverlayForWebContainer];
    v20 = [v17 loadURL:urlCopy];
    [self _navigateAccountSettingsWithDestinationViewController:v17 shouldEmbedInNavController:1 isModalPresentation:presentationCopy originalNavigationController:controllerCopy];

LABEL_7:
LABEL_11:

    goto LABEL_12;
  }

  if ([keyCopy length])
  {
    if (!viewCopy)
    {
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __132__VUIApplicationRouter__handleAccountSettingsEventWithUrl_amsBagKey_useAMSWebView_isModalPresentation_originalNavigationController___block_invoke;
      v27[3] = &unk_1E872E3F8;
      selfCopy = self;
      v30 = presentationCopy;
      v28 = controllerCopy;
      [self _amsBagURLForKey:keyCopy withCompletion:v27];

      goto LABEL_12;
    }

    vui_defaultBag = [MEMORY[0x1E698C7D8] vui_defaultBag];
    activeAccount = [MEMORY[0x1E69D5920] activeAccount];
    v17 = [objc_alloc(MEMORY[0x1E698CD40]) initWithBag:vui_defaultBag account:activeAccount clientInfo:0];
    v21 = [vui_defaultBag URLForKey:keyCopy];
    v22 = [v17 loadBagValue:v21];

    [self _navigateAccountSettingsWithDestinationViewController:v17 shouldEmbedInNavController:1 isModalPresentation:presentationCopy originalNavigationController:controllerCopy];
    goto LABEL_7;
  }

LABEL_12:
}

void __132__VUIApplicationRouter__handleAccountSettingsEventWithUrl_amsBagKey_useAMSWebView_isModalPresentation_originalNavigationController___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __132__VUIApplicationRouter__handleAccountSettingsEventWithUrl_amsBagKey_useAMSWebView_isModalPresentation_originalNavigationController___block_invoke_2;
  block[3] = &unk_1E872E3D0;
  v8 = v3;
  v10 = *(a1 + 48);
  v6 = *(a1 + 32);
  v4 = v6;
  v9 = v6;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __132__VUIApplicationRouter__handleAccountSettingsEventWithUrl_amsBagKey_useAMSWebView_isModalPresentation_originalNavigationController___block_invoke_2(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x1E697BA60]) initWithAccountURL:*(a1 + 32)];
  [*(a1 + 48) _navigateAccountSettingsWithDestinationViewController:v2 shouldEmbedInNavController:0 isModalPresentation:*(a1 + 56) originalNavigationController:*(a1 + 40)];
}

+ (BOOL)handleDocumentDataSource:(id)source targetResponder:(id)responder appContext:(id)context documentOptions:(id)options completion:(id)completion
{
  sourceCopy = source;
  responderCopy = responder;
  contextCopy = context;
  optionsCopy = options;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __103__VUIApplicationRouter_handleDocumentDataSource_targetResponder_appContext_documentOptions_completion___block_invoke;
  aBlock[3] = &unk_1E872D7E0;
  v15 = completionCopy;
  v89 = v15;
  v16 = _Block_copy(aBlock);
  topPresentedViewController = [objc_opt_class() topPresentedViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [topPresentedViewController dismissViewControllerAnimated:1 completion:0];
    topPresentedViewController2 = [objc_opt_class() topPresentedViewController];

    topPresentedViewController = topPresentedViewController2;
  }

  uiConfiguration = [sourceCopy uiConfiguration];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v78 = sourceCopy;
    v76 = v15;
    if ([uiConfiguration type] == 6 || objc_msgSend(uiConfiguration, "type") == 8 || objc_msgSend(uiConfiguration, "type") == 7 || objc_msgSend(uiConfiguration, "type") == 10 || objc_msgSend(uiConfiguration, "type") == 16 || objc_msgSend(uiConfiguration, "type") == 12)
    {
      v21 = contextCopy;
      vuiPresentedViewController = [topPresentedViewController vuiPresentedViewController];
      if (vuiPresentedViewController)
      {
        v23 = vuiPresentedViewController;
        vuiPresentedViewController2 = [topPresentedViewController vuiPresentedViewController];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          vuiPresentedViewController3 = [topPresentedViewController vuiPresentedViewController];

          topPresentedViewController = vuiPresentedViewController3;
        }
      }

      v27 = v21;
      viewControllerIdentifier = [uiConfiguration viewControllerIdentifier];
      if (viewControllerIdentifier)
      {
        v29 = viewControllerIdentifier;
        v30 = v16;
        v31 = optionsCopy;
        viewControllerIdentifier2 = [uiConfiguration viewControllerIdentifier];
        v33 = [viewControllerIdentifier2 length];

        if (v33)
        {
          v34 = objc_opt_class();
          viewControllerIdentifier3 = [uiConfiguration viewControllerIdentifier];
          v36 = [v34 _viewControllerWithIdentifier:viewControllerIdentifier3];

          topPresentedViewController = v36;
        }

        optionsCopy = v31;
        v16 = v30;
      }

      v15 = v76;
      if (topPresentedViewController)
      {
        if ([uiConfiguration type] == 8)
        {
          [VUIPresenterController popOrDismissViewController:topPresentedViewController completion:v16];
LABEL_22:
          v37 = 1;
LABEL_41:
          sourceCopy = v78;
          goto LABEL_45;
        }

        if ([uiConfiguration type] == 12 || objc_msgSend(uiConfiguration, "type") == 16)
        {
          v81[0] = MEMORY[0x1E69E9820];
          v81[1] = 3221225472;
          v81[2] = __103__VUIApplicationRouter_handleDocumentDataSource_targetResponder_appContext_documentOptions_completion___block_invoke_2;
          v81[3] = &unk_1E872E420;
          v82 = uiConfiguration;
          sourceCopy = v78;
          v83 = v78;
          v84 = v21;
          v85 = optionsCopy;
          topPresentedViewController = topPresentedViewController;
          v86 = topPresentedViewController;
          v87 = v16;
          [VUIPresenterController popOrDismissViewController:topPresentedViewController completion:v81];

          v37 = 1;
          goto LABEL_45;
        }

        if ([uiConfiguration type] == 6)
        {
          [VUIPresenterController popViewController:topPresentedViewController completion:v16];
          goto LABEL_22;
        }

        if ([uiConfiguration type] == 7)
        {
          v74 = optionsCopy;
          v53 = +[VUIPlaybackManager sharedInstance];
          isShowingExtras = [v53 isShowingExtras];

          if (isShowingExtras && (+[VUIPlaybackManager sharedInstance](VUIPlaybackManager, "sharedInstance"), v55 = objc_claimAutoreleasedReturnValue(), [v55 extrasNavigationController], v56 = objc_claimAutoreleasedReturnValue(), v55, objc_msgSend(v56, "topViewController"), v57 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v57, "presentedViewController"), v58 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v58, "presentedViewController"), v59 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v59, "presentedViewController"), v60 = objc_claimAutoreleasedReturnValue(), v60, v59, v58, v57, v56, !v60))
          {
            v16[2](v16);
          }

          else
          {
            [VUIPresenterController dismissViewController:topPresentedViewController completion:v16];
          }

          v37 = 1;
          v27 = v21;
          optionsCopy = v74;
LABEL_64:
          v15 = v76;
          goto LABEL_41;
        }
      }

      else
      {
        v16[2](v16);
      }

      v37 = 0;
      goto LABEL_41;
    }

    type = [uiConfiguration type];
    if (type == 15)
    {
      [sourceCopy setShouldUseZoomTransition:1];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v61 = topPresentedViewController;
    }

    else
    {
      v61 = 0;
    }

    v72 = v61;
    viewControllers = [v72 viewControllers];
    v63 = [viewControllers count] == 1;

    uiConfiguration2 = [sourceCopy uiConfiguration];
    [uiConfiguration2 setIsComingFromRoot:v63];

    v65 = +[VUIInterfaceFactory sharedInstance];
    v73 = contextCopy;
    v66 = [v65 viewControllerWithDocumentDataSource:sourceCopy appContext:contextCopy documentOptions:optionsCopy];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v67 = responderCopy;
    }

    else
    {
      v67 = 0;
    }

    v68 = v67;
    contextData = [v78 contextData];
    contextDataDict = [contextData contextDataDict];

    v71 = [contextDataDict objectForKeyedSubscript:@"presentationSourceID"];
    if (!v71)
    {
      v71 = [optionsCopy objectForKeyedSubscript:@"hostingViewSourceId"];
    }

    +[VUIPresenterController pushViewController:fromViewController:withZoomTransition:sourceView:presentationSourceID:isAnimated:completion:](VUIPresenterController, "pushViewController:fromViewController:withZoomTransition:sourceView:presentationSourceID:isAnimated:completion:", v66, v72, type == 15, v68, v71, [uiConfiguration isAnimated], v16);

    v37 = 1;
    v27 = v73;
    goto LABEL_64;
  }

  v77 = v16;
  if (optionsCopy)
  {
    dictionary = [optionsCopy mutableCopy];
  }

  else
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
  }

  v38 = dictionary;
  v39 = optionsCopy;
  if (responderCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v38 setObject:responderCopy forKey:@"sourceView"];
    }
  }

  v40 = +[VUIInterfaceFactory sharedInstance];
  v41 = [v38 copy];
  v42 = contextCopy;
  v43 = [v40 viewControllerWithDocumentDataSource:sourceCopy appContext:contextCopy documentOptions:v41];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v79 = sourceCopy;
    v44 = v15;
    vuiPresentedViewController4 = [topPresentedViewController vuiPresentedViewController];
    if (vuiPresentedViewController4)
    {
      v46 = vuiPresentedViewController4;
      vuiPresentedViewController5 = [topPresentedViewController vuiPresentedViewController];
      objc_opt_class();
      v48 = objc_opt_isKindOfClass();

      if (v48)
      {
        vuiPresentedViewController6 = [topPresentedViewController vuiPresentedViewController];

        topPresentedViewController = vuiPresentedViewController6;
      }
    }

    optionsCopy = v39;
    v50 = uiConfiguration;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v51 = responderCopy;
    }

    else
    {
      v51 = 0;
    }

    [v50 setSourceView:v51];

    v15 = v44;
    sourceCopy = v79;
  }

  else
  {
    optionsCopy = v39;
  }

  v16 = v77;
  if (v43)
  {
    [VUIPresenterController presentViewController:v43 fromViewController:topPresentedViewController WithConfiguration:uiConfiguration completion:v15];
  }

  v37 = 1;
  v27 = v42;
LABEL_45:

  return v37;
}

uint64_t __103__VUIApplicationRouter_handleDocumentDataSource_targetResponder_appContext_documentOptions_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

void __103__VUIApplicationRouter_handleDocumentDataSource_targetResponder_appContext_documentOptions_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) type];
  if (v2 == 16)
  {
    [*(a1 + 40) setShouldUseZoomTransition:1];
  }

  v3 = +[VUIInterfaceFactory sharedInstance];
  v8 = [v3 viewControllerWithDocumentDataSource:*(a1 + 40) appContext:*(a1 + 48) documentOptions:*(a1 + 56)];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = *(a1 + 64);
  }

  else
  {
    v4 = 0;
  }

  if (v8)
  {
    +[VUIPresenterController pushViewController:fromViewController:withZoomTransition:sourceView:presentationSourceID:isAnimated:completion:](VUIPresenterController, "pushViewController:fromViewController:withZoomTransition:sourceView:presentationSourceID:isAnimated:completion:", v8, v4, v2 == 16, 0, 0, [*(a1 + 32) isAnimated], *(a1 + 72));
  }

  else
  {
    v5 = *(a1 + 72);
    v6 = *(v5 + 16);
    v7 = v4;
    v6(v5);
  }
}

+ (void)dismissOrPopViewControllerWithId:(id)id completion:(id)completion
{
  idCopy = id;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __68__VUIApplicationRouter_dismissOrPopViewControllerWithId_completion___block_invoke;
  aBlock[3] = &unk_1E872E448;
  v7 = idCopy;
  v14 = v7;
  v8 = completionCopy;
  v15 = v8;
  v9 = _Block_copy(aBlock);
  if (!+[VUIUtilities isSUIEnabled]|| (v9[2](v9) & 1) == 0)
  {
    v10 = [objc_opt_class() _viewControllerWithIdentifier:v7];
    if (v10)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __68__VUIApplicationRouter_dismissOrPopViewControllerWithId_completion___block_invoke_2;
      v11[3] = &unk_1E872D7E0;
      v12 = v8;
      [VUIPresenterController popOrDismissViewController:v10 completion:v11];
    }

    else if (v8)
    {
      v8[2](v8);
    }
  }
}

uint64_t __68__VUIApplicationRouter_dismissOrPopViewControllerWithId_completion___block_invoke(uint64_t a1)
{
  v2 = +[VUIInterfaceFactory sharedInstance];
  v3 = [v2 controllerPresenter];

  if (v3 && [*(a1 + 32) length])
  {
    v4 = [v3 dismissViewControllerWithID:*(a1 + 32) animated:1 completion:*(a1 + 40)];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __68__VUIApplicationRouter_dismissOrPopViewControllerWithId_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

+ (void)dismissOrPopLastViewControllerWithCompletion:(id)completion
{
  completionCopy = completion;
  topPresentedViewController = [objc_opt_class() topPresentedViewController];
  [VUIPresenterController popOrDismissViewController:topPresentedViewController completion:completionCopy];
}

+ (void)_dismissPresentedViewControllerWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[VUITVAppLauncher sharedInstance];
  appController = [v4 appController];

  navigationController = [appController navigationController];
  vuiPresentedViewController = [navigationController vuiPresentedViewController];

  if (vuiPresentedViewController)
  {
    vuiPresentedViewController2 = [navigationController vuiPresentedViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    vuiPresentedViewController3 = [navigationController vuiPresentedViewController];
    v11 = vuiPresentedViewController3;
    if (isKindOfClass)
    {
      topViewController = [vuiPresentedViewController3 topViewController];

      v11 = topViewController;
    }

    if (v11)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        mEMORY[0x1E69DF750] = [MEMORY[0x1E69DF750] sharedInstance];
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __70__VUIApplicationRouter__dismissPresentedViewControllerWithCompletion___block_invoke;
        v17[3] = &unk_1E872E470;
        v14 = &v18;
        v18 = completionCopy;
        [mEMORY[0x1E69DF750] dismissViewController:v11 animated:1 completion:v17];
      }

      else
      {
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __70__VUIApplicationRouter__dismissPresentedViewControllerWithCompletion___block_invoke_2;
        v15[3] = &unk_1E872D7E0;
        v14 = &v16;
        v16 = completionCopy;
        [navigationController vui_dismissViewControllerAnimated:1 completion:v15];
      }
    }
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

uint64_t __70__VUIApplicationRouter__dismissPresentedViewControllerWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __70__VUIApplicationRouter__dismissPresentedViewControllerWithCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

+ (id)currentNavigationController
{
  v2 = +[VUITVAppLauncher sharedInstance];
  appController = [v2 appController];

  navigationController = [appController navigationController];

  if (navigationController)
  {
    navigationController2 = [appController navigationController];
    goto LABEL_10;
  }

  v6 = +[VUICurrentSiriNavControllerContainer sharedInstance];
  currentSiriNavController = [v6 currentSiriNavController];

  if (currentSiriNavController)
  {
    rootViewController = +[VUICurrentSiriNavControllerContainer sharedInstance];
    currentSiriNavController2 = [rootViewController currentSiriNavController];
  }

  else
  {
    v10 = +[VUITVExtension sharedInstance];
    currentNavigationController = [v10 currentNavigationController];

    if (currentNavigationController)
    {
      v12 = +[VUITVExtension sharedInstance];
      rootViewController = v12;
    }

    else
    {
      v14 = +[VUITVAppLauncher sharedInstance];
      rootViewController = [v14 rootViewController];

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || ![rootViewController conformsToProtocol:&unk_1F5E7E650])
      {
        navigationController2 = 0;
        goto LABEL_9;
      }

      v12 = rootViewController;
    }

    currentSiriNavController2 = [v12 currentNavigationController];
  }

  navigationController2 = currentSiriNavController2;
LABEL_9:

LABEL_10:

  return navigationController2;
}

+ (id)topPresentedViewController
{
  currentNavigationController = [objc_opt_class() currentNavigationController];
  vuiPresentedViewController = [currentNavigationController vuiPresentedViewController];
  if (vuiPresentedViewController)
  {
    v7VuiPresentedViewController = vuiPresentedViewController;
    while (1)
    {
      vuiPresentedViewController2 = [currentNavigationController vuiPresentedViewController];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        break;
      }

      vuiPresentedViewController3 = [currentNavigationController vuiPresentedViewController];

      v7VuiPresentedViewController = [vuiPresentedViewController3 vuiPresentedViewController];
      currentNavigationController = vuiPresentedViewController3;
      if (!v7VuiPresentedViewController)
      {
        goto LABEL_7;
      }
    }
  }

  vuiPresentedViewController3 = currentNavigationController;
LABEL_7:

  return vuiPresentedViewController3;
}

+ (id)topMostVisibleViewController
{
  if (+[VUIUtilities isSUIEnabled])
  {
    topPresentedViewController = +[VUIInterfaceFactory sharedInstance];
    rootPresentingViewController = [topPresentedViewController rootPresentingViewController];
    v4 = __52__VUIApplicationRouter_topMostVisibleViewController__block_invoke(rootPresentingViewController, rootPresentingViewController);
  }

  else
  {
    topPresentedViewController = [objc_opt_class() topPresentedViewController];
    v4 = __52__VUIApplicationRouter_topMostVisibleViewController__block_invoke(topPresentedViewController, topPresentedViewController);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    vuiSelectedViewController = [v4 vuiSelectedViewController];
    v6 = __52__VUIApplicationRouter_topMostVisibleViewController__block_invoke(vuiSelectedViewController, vuiSelectedViewController);

    v4 = v6;
  }

  return v4;
}

id __52__VUIApplicationRouter_topMostVisibleViewController__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 vuiPresentedViewController];

  if (v3)
  {
    do
    {
      v4 = [v2 vuiPresentedViewController];

      v5 = [v4 vuiPresentedViewController];

      v2 = v4;
    }

    while (v5);
  }

  else
  {
    v4 = v2;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v4 visibleViewController];

    v4 = v6;
  }

  return v4;
}

+ (id)_viewControllerWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[VUIApplicationRouter topPresentedViewController];
  v5 = v4;
  if (v4)
  {
    childViewControllers = [v4 childViewControllers];
    firstObject = [childViewControllers firstObject];

    if (firstObject)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        topViewController = [firstObject topViewController];
        if (topViewController)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            vuiViewControllerIdentifier = [topViewController vuiViewControllerIdentifier];
            if ([vuiViewControllerIdentifier isEqualToString:identifierCopy])
            {
              v10 = +[VUIApplicationRouter topPresentedViewController];
LABEL_29:

              vuiPresentedViewController = firstObject;
              goto LABEL_30;
            }
          }
        }
      }
    }
  }

  currentNavigationController = [objc_opt_class() currentNavigationController];
  if (currentNavigationController)
  {
    firstObject = currentNavigationController;
    while (1)
    {
      topViewController = [firstObject vuiChildViewControllers];
      if ([topViewController count])
      {
        break;
      }

LABEL_21:
      vuiPresentedViewController = [firstObject vuiPresentedViewController];

      firstObject = vuiPresentedViewController;
      if (!vuiPresentedViewController)
      {
        goto LABEL_26;
      }
    }

    v12 = 0;
    while (1)
    {
      vuiViewControllerIdentifier = [topViewController objectAtIndex:v12];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9VuiViewControllerIdentifier = [vuiViewControllerIdentifier vuiViewControllerIdentifier];
      }

      else
      {
        v9VuiViewControllerIdentifier = 0;
      }

      if ([v9VuiViewControllerIdentifier length] && objc_msgSend(v9VuiViewControllerIdentifier, "isEqualToString:", identifierCopy))
      {
        break;
      }

      if (++v12 >= [topViewController count])
      {
        goto LABEL_21;
      }
    }

    if ([topViewController indexOfObject:vuiViewControllerIdentifier] || (objc_msgSend(firstObject, "vuiPresentingViewController"), v16 = objc_claimAutoreleasedReturnValue(), v16, v15 = firstObject, !v16))
    {
      v15 = vuiViewControllerIdentifier;
    }

    v10 = v15;

    goto LABEL_29;
  }

  vuiPresentedViewController = 0;
LABEL_26:
  v10 = 0;
LABEL_30:

  return v10;
}

+ (BOOL)handleEvent:(id)event targetResponder:(id)responder appContext:(id)context routerDataSource:(id)source supplementaryData:(id)data extraInfo:(id *)info
{
  dataCopy = data;
  sourceCopy = source;
  contextCopy = context;
  responderCopy = responder;
  eventCopy = event;
  v18 = [objc_opt_class() eventDataSourceForEvent:eventCopy routerDataSource:sourceCopy];

  LOBYTE(info) = [objc_opt_class() _handleEvent:eventCopy targetResponder:responderCopy appContext:contextCopy eventDataSource:v18 documentOptions:dataCopy extraInfo:info];
  return info;
}

@end