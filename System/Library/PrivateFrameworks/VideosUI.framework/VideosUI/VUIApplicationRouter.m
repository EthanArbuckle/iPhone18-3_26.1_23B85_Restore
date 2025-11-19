@interface VUIApplicationRouter
+ (BOOL)_handleEvent:(id)a3 targetResponder:(id)a4 appContext:(id)a5 eventDataSource:(id)a6 documentOptions:(id)a7 extraInfo:(id *)a8;
+ (BOOL)handleAccountSettingsEventWithUrl:(id)a3 amsBagKey:(id)a4 useAMSWebView:(BOOL)a5;
+ (BOOL)handleDocumentDataSource:(id)a3 targetResponder:(id)a4 appContext:(id)a5 documentOptions:(id)a6 completion:(id)a7;
+ (BOOL)handleEvent:(id)a3 targetResponder:(id)a4 appContext:(id)a5 routerDataSource:(id)a6 supplementaryData:(id)a7 extraInfo:(id *)a8;
+ (id)_viewControllerWithIdentifier:(id)a3;
+ (id)currentNavigationController;
+ (id)eventDataSourceForEvent:(id)a3 routerDataSource:(id)a4;
+ (id)topMostVisibleViewController;
+ (id)topPresentedViewController;
+ (void)_amsBagURLForKey:(id)a3 withCompletion:(id)a4;
+ (void)_dismissPresentedViewControllerWithCompletion:(id)a3;
+ (void)_handleAccountSettingsEventWithUrl:(id)a3 amsBagKey:(id)a4 useAMSWebView:(BOOL)a5 isModalPresentation:(BOOL)a6 originalNavigationController:(id)a7;
+ (void)_navigateAccountSettingsWithDestinationViewController:(id)a3 shouldEmbedInNavController:(BOOL)a4 isModalPresentation:(BOOL)a5 originalNavigationController:(id)a6;
+ (void)_performForType:(int64_t)a3 targetResponder:(id)a4 appContext:(id)a5 eventDataSource:(id)a6 documentOptions:(id)a7;
+ (void)dismissOrPopLastViewControllerWithCompletion:(id)a3;
+ (void)dismissOrPopViewControllerWithId:(id)a3 completion:(id)a4;
+ (void)invokeAction:(id)a3 primaryAction:(id)a4 targetResponder:(id)a5 completion:(id)a6;
+ (void)invokeAction:(id)a3 targetResponder:(id)a4 documentOptions:(id)a5 completion:(id)a6;
@end

@implementation VUIApplicationRouter

+ (id)eventDataSourceForEvent:(id)a3 routerDataSource:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    if (([v5 isEqualToString:@"play"] & 1) != 0 || objc_msgSend(v5, "isEqualToString:", @"autoPlay"))
    {
      v7 = [v6 playEventDataSource];
LABEL_5:
      v8 = v7;
      goto LABEL_11;
    }

    if ([v5 isEqualToString:@"select"])
    {
      v7 = [v6 selectEventDataSource];
      goto LABEL_5;
    }

    if ([v5 isEqualToString:@"contextmenu"])
    {
      v7 = [v6 contextMenuEventDataSource];
      goto LABEL_5;
    }
  }

  v8 = 0;
LABEL_11:

  return v8;
}

+ (BOOL)handleAccountSettingsEventWithUrl:(id)a3 amsBagKey:(id)a4 useAMSWebView:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = a4;
  if (+[VUIUtilities isSUIEnabled])
  {
    v9 = +[VUIInterfaceFactory sharedInstance];
    v10 = [v9 controllerPresenter];

    [v10 handleAccountSettingsEventWithUrl:v7 amsBagKey:v8 useAMSWebView:v5];
  }

  else
  {
    [VUIApplicationRouter _handleAccountSettingsEventWithUrl:v7 amsBagKey:v8 useAMSWebView:v5 isModalPresentation:1 originalNavigationController:0];
  }

  return 0;
}

+ (BOOL)_handleEvent:(id)a3 targetResponder:(id)a4 appContext:(id)a5 eventDataSource:(id)a6 documentOptions:(id)a7 extraInfo:(id *)a8
{
  v24[2] = *MEMORY[0x1E69E9840];
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = [MEMORY[0x1E695DF00] date];
  [v16 timeIntervalSince1970];
  v18 = v17;

  if (v14)
  {
    [objc_opt_class() _performForType:0 targetResponder:v12 appContext:v13 eventDataSource:v14 documentOptions:v15];
    if (a8)
    {
      if (*a8)
      {
        v19 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:?];
        [v19 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"isHandled"];
        v20 = [MEMORY[0x1E696AD98] numberWithLong:(v18 * 1000.0)];
        [v19 setObject:v20 forKeyedSubscript:@"eventTimeStamp"];

        *a8 = [v19 copy];
      }

      else
      {
        v23[0] = @"isHandled";
        v23[1] = @"eventTimeStamp";
        v24[0] = MEMORY[0x1E695E118];
        v21 = [MEMORY[0x1E696AD98] numberWithLong:(v18 * 1000.0)];
        v24[1] = v21;
        *a8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];
      }
    }
  }

  return 0;
}

+ (void)_performForType:(int64_t)a3 targetResponder:(id)a4 appContext:(id)a5 eventDataSource:(id)a6 documentOptions:(id)a7
{
  v60 = *MEMORY[0x1E69E9840];
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = 3;
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v17 = [v14 postActionDocumentDataSource];
      v18 = [v14 postAction];
      v16 = 3;
      if (!v17)
      {
        goto LABEL_14;
      }

      goto LABEL_10;
    }

    if (a3 == 3)
    {
      goto LABEL_29;
    }

LABEL_23:
    v34 = VUIDefaultLogObject();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      if (a3 > 2)
      {
        v35 = @"unknown";
      }

      else
      {
        v35 = off_1E872E490[a3];
      }

      *buf = 138412546;
      v55 = v35;
      v56 = 2112;
      v57 = 0;
      _os_log_impl(&dword_1E323F000, v34, OS_LOG_TYPE_DEFAULT, "VUIApplicationRouter - VUIApplicationRouter::skipping empty event [%@] with %@", buf, 0x16u);
    }

    [objc_opt_class() _performForType:v16 targetResponder:v12 appContext:v13 eventDataSource:v14 documentOptions:v15];
    goto LABEL_29;
  }

  if (!a3)
  {
    v17 = [v14 preActionDocumentDataSource];
    v18 = [v14 preAction];
    v16 = 1;
    if (!v17)
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  if (a3 != 1)
  {
    goto LABEL_23;
  }

  v17 = [v14 documentDataSource];
  v18 = [v14 action];
  v16 = 2;
  if (!v17)
  {
LABEL_14:
    if (v18)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v27 = [v15 objectForKeyedSubscript:@"playlistCollectionViewModel"];
        [v18 setCollectionViewModel:v27];
      }

      [v18 setDocumentOptions:v15];
      v28 = VUIDefaultLogObject();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = off_1E872E490[a3];
        *buf = 138412546;
        v55 = v29;
        v56 = 2112;
        v57 = v18;
        _os_log_impl(&dword_1E323F000, v28, OS_LOG_TYPE_DEFAULT, "VUIApplicationRouter - VUIApplicationRouter::performing event [%@] with %@", buf, 0x16u);
      }

      v30 = [v14 action];
      v31 = v30;
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __99__VUIApplicationRouter__performForType_targetResponder_appContext_eventDataSource_documentOptions___block_invoke_67;
      v38[3] = &unk_1E872E380;
      if (v30)
      {
        v32 = v30;
      }

      else
      {
        v32 = v18;
      }

      v39 = v18;
      v44 = a1;
      v45 = v16;
      v40 = v12;
      v41 = v13;
      v42 = v14;
      v43 = v15;
      v33 = v18;
      [VUIApplicationRouter invokeAction:v33 primaryAction:v32 targetResponder:v40 completion:v38];

      goto LABEL_29;
    }

    goto LABEL_23;
  }

LABEL_10:
  v36 = v18;
  v37 = v12;
  v19 = VUIDefaultLogObject();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = v15;
    v21 = v13;
    v22 = off_1E872E490[a3];
    v23 = [v17 uiConfiguration];
    v24 = NSStringFromVUIPresentationType([v23 type]);
    *buf = 138412802;
    v55 = v22;
    v13 = v21;
    v15 = v20;
    v56 = 2112;
    v57 = v17;
    v58 = 2112;
    v59 = v24;
    _os_log_impl(&dword_1E323F000, v19, OS_LOG_TYPE_DEFAULT, "VUIApplicationRouter - VUIApplicationRouter::performing event [%@] with %@ (%@)", buf, 0x20u);
  }

  v25 = objc_opt_class();
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __99__VUIApplicationRouter__performForType_targetResponder_appContext_eventDataSource_documentOptions___block_invoke;
  v46[3] = &unk_1E872E380;
  v47 = v17;
  v52 = a1;
  v53 = v16;
  v12 = v37;
  v48 = v37;
  v49 = v13;
  v50 = v14;
  v51 = v15;
  v26 = v17;
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

+ (void)invokeAction:(id)a3 targetResponder:(id)a4 documentOptions:(id)a5 completion:(id)a6
{
  v11 = a3;
  v9 = a4;
  v10 = a6;
  if (a5)
  {
    [v11 setDocumentOptions:a5];
  }

  [VUIApplicationRouter invokeAction:v11 primaryAction:v11 targetResponder:v9 completion:v10];
}

+ (void)invokeAction:(id)a3 primaryAction:(id)a4 targetResponder:(id)a5 completion:(id)a6
{
  v27 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  objc_initWeak(&location, v9);
  if ([v9 isAccountRequired] && !+[VUIAuthenticationManager userHasActiveAccount](VUIAuthenticationManager, "userHasActiveAccount") && +[VUIAuthenticationManager allowsAccountModification](VUIAuthenticationManager, "allowsAccountModification"))
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __78__VUIApplicationRouter_invokeAction_primaryAction_targetResponder_completion___block_invoke_2;
    v15[3] = &unk_1E872E3A8;
    v16 = v9;
    v17 = v11;
    objc_copyWeak(&v20, &location);
    v19 = v12;
    v13 = v10;
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
    v22 = v12;
    [v9 performWithTargetResponder:v11 completionHandler:v21];

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

+ (void)_navigateAccountSettingsWithDestinationViewController:(id)a3 shouldEmbedInNavController:(BOOL)a4 isModalPresentation:(BOOL)a5 originalNavigationController:(id)a6
{
  v8 = a4;
  v10 = a3;
  v14 = v10;
  if (!a6 || a5)
  {
    v11 = [a1 currentNavigationController];
    v12 = v11;
    if (v8)
    {
      v13 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v14];
      [v13 setModalPresentationStyle:2];
      [v12 presentViewController:v13 animated:1 completion:0];
    }

    else
    {
      [v11 setModalPresentationStyle:2];
      [v12 presentViewController:v14 animated:1 completion:0];
    }
  }

  else
  {
    [a6 pushViewController:v10 animated:1];
  }
}

+ (void)_amsBagURLForKey:(id)a3 withCompletion:(id)a4
{
  v9 = a4;
  v5 = MEMORY[0x1E69D5928];
  v6 = a3;
  v7 = [v5 app];
  v8 = [v7 urlForKey:v6];

  if (v9)
  {
    v9[2](v9, v8);
  }
}

+ (void)_handleAccountSettingsEventWithUrl:(id)a3 amsBagKey:(id)a4 useAMSWebView:(BOOL)a5 isModalPresentation:(BOOL)a6 originalNavigationController:(id)a7
{
  v8 = a6;
  v9 = a5;
  v12 = a3;
  v13 = a4;
  v14 = a7;
  if (v12)
  {
    if (!v9)
    {
      v15 = [objc_alloc(MEMORY[0x1E697BA60]) initWithAccountURL:v12];
      v23 = +[VUIInterfaceFactory sharedInstance];
      v24 = [v23 openURLHandler];
      v25 = [v24 isRedeemURL:v12];

      if (v25)
      {
        v26 = +[SKAccountPageHandler sharedInstance];
        [v15 setDelegate:v26];
      }

      [a1 _navigateAccountSettingsWithDestinationViewController:v15 shouldEmbedInNavController:0 isModalPresentation:v8 originalNavigationController:v14];
      goto LABEL_11;
    }

    v15 = [MEMORY[0x1E698C7D8] vui_defaultBag];
    v16 = [MEMORY[0x1E69D5920] activeAccount];
    v17 = [objc_alloc(MEMORY[0x1E698CD40]) initWithBag:v15 account:v16 clientInfo:0];
    v18 = +[VUIMetricsController sharedInstance];
    v19 = [v18 getMetricsOverlayForWebContainer];

    [v17 setMetricsOverlay:v19];
    v20 = [v17 loadURL:v12];
    [a1 _navigateAccountSettingsWithDestinationViewController:v17 shouldEmbedInNavController:1 isModalPresentation:v8 originalNavigationController:v14];

LABEL_7:
LABEL_11:

    goto LABEL_12;
  }

  if ([v13 length])
  {
    if (!v9)
    {
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __132__VUIApplicationRouter__handleAccountSettingsEventWithUrl_amsBagKey_useAMSWebView_isModalPresentation_originalNavigationController___block_invoke;
      v27[3] = &unk_1E872E3F8;
      v29 = a1;
      v30 = v8;
      v28 = v14;
      [a1 _amsBagURLForKey:v13 withCompletion:v27];

      goto LABEL_12;
    }

    v15 = [MEMORY[0x1E698C7D8] vui_defaultBag];
    v16 = [MEMORY[0x1E69D5920] activeAccount];
    v17 = [objc_alloc(MEMORY[0x1E698CD40]) initWithBag:v15 account:v16 clientInfo:0];
    v21 = [v15 URLForKey:v13];
    v22 = [v17 loadBagValue:v21];

    [a1 _navigateAccountSettingsWithDestinationViewController:v17 shouldEmbedInNavController:1 isModalPresentation:v8 originalNavigationController:v14];
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

+ (BOOL)handleDocumentDataSource:(id)a3 targetResponder:(id)a4 appContext:(id)a5 documentOptions:(id)a6 completion:(id)a7
{
  v11 = a3;
  v80 = a4;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __103__VUIApplicationRouter_handleDocumentDataSource_targetResponder_appContext_documentOptions_completion___block_invoke;
  aBlock[3] = &unk_1E872D7E0;
  v15 = v14;
  v89 = v15;
  v16 = _Block_copy(aBlock);
  v17 = [objc_opt_class() topPresentedViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v17 dismissViewControllerAnimated:1 completion:0];
    v18 = [objc_opt_class() topPresentedViewController];

    v17 = v18;
  }

  v19 = [v11 uiConfiguration];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v78 = v11;
    v76 = v15;
    if ([v19 type] == 6 || objc_msgSend(v19, "type") == 8 || objc_msgSend(v19, "type") == 7 || objc_msgSend(v19, "type") == 10 || objc_msgSend(v19, "type") == 16 || objc_msgSend(v19, "type") == 12)
    {
      v21 = v12;
      v22 = [v17 vuiPresentedViewController];
      if (v22)
      {
        v23 = v22;
        v24 = [v17 vuiPresentedViewController];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v26 = [v17 vuiPresentedViewController];

          v17 = v26;
        }
      }

      v27 = v21;
      v28 = [v19 viewControllerIdentifier];
      if (v28)
      {
        v29 = v28;
        v30 = v16;
        v31 = v13;
        v32 = [v19 viewControllerIdentifier];
        v33 = [v32 length];

        if (v33)
        {
          v34 = objc_opt_class();
          v35 = [v19 viewControllerIdentifier];
          v36 = [v34 _viewControllerWithIdentifier:v35];

          v17 = v36;
        }

        v13 = v31;
        v16 = v30;
      }

      v15 = v76;
      if (v17)
      {
        if ([v19 type] == 8)
        {
          [VUIPresenterController popOrDismissViewController:v17 completion:v16];
LABEL_22:
          v37 = 1;
LABEL_41:
          v11 = v78;
          goto LABEL_45;
        }

        if ([v19 type] == 12 || objc_msgSend(v19, "type") == 16)
        {
          v81[0] = MEMORY[0x1E69E9820];
          v81[1] = 3221225472;
          v81[2] = __103__VUIApplicationRouter_handleDocumentDataSource_targetResponder_appContext_documentOptions_completion___block_invoke_2;
          v81[3] = &unk_1E872E420;
          v82 = v19;
          v11 = v78;
          v83 = v78;
          v84 = v21;
          v85 = v13;
          v17 = v17;
          v86 = v17;
          v87 = v16;
          [VUIPresenterController popOrDismissViewController:v17 completion:v81];

          v37 = 1;
          goto LABEL_45;
        }

        if ([v19 type] == 6)
        {
          [VUIPresenterController popViewController:v17 completion:v16];
          goto LABEL_22;
        }

        if ([v19 type] == 7)
        {
          v74 = v13;
          v53 = +[VUIPlaybackManager sharedInstance];
          v54 = [v53 isShowingExtras];

          if (v54 && (+[VUIPlaybackManager sharedInstance](VUIPlaybackManager, "sharedInstance"), v55 = objc_claimAutoreleasedReturnValue(), [v55 extrasNavigationController], v56 = objc_claimAutoreleasedReturnValue(), v55, objc_msgSend(v56, "topViewController"), v57 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v57, "presentedViewController"), v58 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v58, "presentedViewController"), v59 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v59, "presentedViewController"), v60 = objc_claimAutoreleasedReturnValue(), v60, v59, v58, v57, v56, !v60))
          {
            v16[2](v16);
          }

          else
          {
            [VUIPresenterController dismissViewController:v17 completion:v16];
          }

          v37 = 1;
          v27 = v21;
          v13 = v74;
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

    v75 = [v19 type];
    if (v75 == 15)
    {
      [v11 setShouldUseZoomTransition:1];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v61 = v17;
    }

    else
    {
      v61 = 0;
    }

    v72 = v61;
    v62 = [v72 viewControllers];
    v63 = [v62 count] == 1;

    v64 = [v11 uiConfiguration];
    [v64 setIsComingFromRoot:v63];

    v65 = +[VUIInterfaceFactory sharedInstance];
    v73 = v12;
    v66 = [v65 viewControllerWithDocumentDataSource:v11 appContext:v12 documentOptions:v13];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v67 = v80;
    }

    else
    {
      v67 = 0;
    }

    v68 = v67;
    v69 = [v78 contextData];
    v70 = [v69 contextDataDict];

    v71 = [v70 objectForKeyedSubscript:@"presentationSourceID"];
    if (!v71)
    {
      v71 = [v13 objectForKeyedSubscript:@"hostingViewSourceId"];
    }

    +[VUIPresenterController pushViewController:fromViewController:withZoomTransition:sourceView:presentationSourceID:isAnimated:completion:](VUIPresenterController, "pushViewController:fromViewController:withZoomTransition:sourceView:presentationSourceID:isAnimated:completion:", v66, v72, v75 == 15, v68, v71, [v19 isAnimated], v16);

    v37 = 1;
    v27 = v73;
    goto LABEL_64;
  }

  v77 = v16;
  if (v13)
  {
    v20 = [v13 mutableCopy];
  }

  else
  {
    v20 = [MEMORY[0x1E695DF90] dictionary];
  }

  v38 = v20;
  v39 = v13;
  if (v80)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v38 setObject:v80 forKey:@"sourceView"];
    }
  }

  v40 = +[VUIInterfaceFactory sharedInstance];
  v41 = [v38 copy];
  v42 = v12;
  v43 = [v40 viewControllerWithDocumentDataSource:v11 appContext:v12 documentOptions:v41];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v79 = v11;
    v44 = v15;
    v45 = [v17 vuiPresentedViewController];
    if (v45)
    {
      v46 = v45;
      v47 = [v17 vuiPresentedViewController];
      objc_opt_class();
      v48 = objc_opt_isKindOfClass();

      if (v48)
      {
        v49 = [v17 vuiPresentedViewController];

        v17 = v49;
      }
    }

    v13 = v39;
    v50 = v19;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v51 = v80;
    }

    else
    {
      v51 = 0;
    }

    [v50 setSourceView:v51];

    v15 = v44;
    v11 = v79;
  }

  else
  {
    v13 = v39;
  }

  v16 = v77;
  if (v43)
  {
    [VUIPresenterController presentViewController:v43 fromViewController:v17 WithConfiguration:v19 completion:v15];
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

+ (void)dismissOrPopViewControllerWithId:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __68__VUIApplicationRouter_dismissOrPopViewControllerWithId_completion___block_invoke;
  aBlock[3] = &unk_1E872E448;
  v7 = v5;
  v14 = v7;
  v8 = v6;
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

+ (void)dismissOrPopLastViewControllerWithCompletion:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() topPresentedViewController];
  [VUIPresenterController popOrDismissViewController:v4 completion:v3];
}

+ (void)_dismissPresentedViewControllerWithCompletion:(id)a3
{
  v3 = a3;
  v4 = +[VUITVAppLauncher sharedInstance];
  v5 = [v4 appController];

  v6 = [v5 navigationController];
  v7 = [v6 vuiPresentedViewController];

  if (v7)
  {
    v8 = [v6 vuiPresentedViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v10 = [v6 vuiPresentedViewController];
    v11 = v10;
    if (isKindOfClass)
    {
      v12 = [v10 topViewController];

      v11 = v12;
    }

    if (v11)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = [MEMORY[0x1E69DF750] sharedInstance];
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __70__VUIApplicationRouter__dismissPresentedViewControllerWithCompletion___block_invoke;
        v17[3] = &unk_1E872E470;
        v14 = &v18;
        v18 = v3;
        [v13 dismissViewController:v11 animated:1 completion:v17];
      }

      else
      {
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __70__VUIApplicationRouter__dismissPresentedViewControllerWithCompletion___block_invoke_2;
        v15[3] = &unk_1E872D7E0;
        v14 = &v16;
        v16 = v3;
        [v6 vui_dismissViewControllerAnimated:1 completion:v15];
      }
    }
  }

  else if (v3)
  {
    v3[2](v3);
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
  v3 = [v2 appController];

  v4 = [v3 navigationController];

  if (v4)
  {
    v5 = [v3 navigationController];
    goto LABEL_10;
  }

  v6 = +[VUICurrentSiriNavControllerContainer sharedInstance];
  v7 = [v6 currentSiriNavController];

  if (v7)
  {
    v8 = +[VUICurrentSiriNavControllerContainer sharedInstance];
    v9 = [v8 currentSiriNavController];
  }

  else
  {
    v10 = +[VUITVExtension sharedInstance];
    v11 = [v10 currentNavigationController];

    if (v11)
    {
      v12 = +[VUITVExtension sharedInstance];
      v8 = v12;
    }

    else
    {
      v14 = +[VUITVAppLauncher sharedInstance];
      v8 = [v14 rootViewController];

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || ![v8 conformsToProtocol:&unk_1F5E7E650])
      {
        v5 = 0;
        goto LABEL_9;
      }

      v12 = v8;
    }

    v9 = [v12 currentNavigationController];
  }

  v5 = v9;
LABEL_9:

LABEL_10:

  return v5;
}

+ (id)topPresentedViewController
{
  v2 = [objc_opt_class() currentNavigationController];
  v3 = [v2 vuiPresentedViewController];
  if (v3)
  {
    v4 = v3;
    while (1)
    {
      v5 = [v2 vuiPresentedViewController];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        break;
      }

      v7 = [v2 vuiPresentedViewController];

      v4 = [v7 vuiPresentedViewController];
      v2 = v7;
      if (!v4)
      {
        goto LABEL_7;
      }
    }
  }

  v7 = v2;
LABEL_7:

  return v7;
}

+ (id)topMostVisibleViewController
{
  if (+[VUIUtilities isSUIEnabled])
  {
    v2 = +[VUIInterfaceFactory sharedInstance];
    v3 = [v2 rootPresentingViewController];
    v4 = __52__VUIApplicationRouter_topMostVisibleViewController__block_invoke(v3, v3);
  }

  else
  {
    v2 = [objc_opt_class() topPresentedViewController];
    v4 = __52__VUIApplicationRouter_topMostVisibleViewController__block_invoke(v2, v2);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 vuiSelectedViewController];
    v6 = __52__VUIApplicationRouter_topMostVisibleViewController__block_invoke(v5, v5);

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

+ (id)_viewControllerWithIdentifier:(id)a3
{
  v3 = a3;
  v4 = +[VUIApplicationRouter topPresentedViewController];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 childViewControllers];
    v7 = [v6 firstObject];

    if (v7)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = [v7 topViewController];
        if (v8)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v9 = [v8 vuiViewControllerIdentifier];
            if ([v9 isEqualToString:v3])
            {
              v10 = +[VUIApplicationRouter topPresentedViewController];
LABEL_29:

              v14 = v7;
              goto LABEL_30;
            }
          }
        }
      }
    }
  }

  v11 = [objc_opt_class() currentNavigationController];
  if (v11)
  {
    v7 = v11;
    while (1)
    {
      v8 = [v7 vuiChildViewControllers];
      if ([v8 count])
      {
        break;
      }

LABEL_21:
      v14 = [v7 vuiPresentedViewController];

      v7 = v14;
      if (!v14)
      {
        goto LABEL_26;
      }
    }

    v12 = 0;
    while (1)
    {
      v9 = [v8 objectAtIndex:v12];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = [v9 vuiViewControllerIdentifier];
      }

      else
      {
        v13 = 0;
      }

      if ([v13 length] && objc_msgSend(v13, "isEqualToString:", v3))
      {
        break;
      }

      if (++v12 >= [v8 count])
      {
        goto LABEL_21;
      }
    }

    if ([v8 indexOfObject:v9] || (objc_msgSend(v7, "vuiPresentingViewController"), v16 = objc_claimAutoreleasedReturnValue(), v16, v15 = v7, !v16))
    {
      v15 = v9;
    }

    v10 = v15;

    goto LABEL_29;
  }

  v14 = 0;
LABEL_26:
  v10 = 0;
LABEL_30:

  return v10;
}

+ (BOOL)handleEvent:(id)a3 targetResponder:(id)a4 appContext:(id)a5 routerDataSource:(id)a6 supplementaryData:(id)a7 extraInfo:(id *)a8
{
  v13 = a7;
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v18 = [objc_opt_class() eventDataSourceForEvent:v17 routerDataSource:v14];

  LOBYTE(a8) = [objc_opt_class() _handleEvent:v17 targetResponder:v16 appContext:v15 eventDataSource:v18 documentOptions:v13 extraInfo:a8];
  return a8;
}

@end