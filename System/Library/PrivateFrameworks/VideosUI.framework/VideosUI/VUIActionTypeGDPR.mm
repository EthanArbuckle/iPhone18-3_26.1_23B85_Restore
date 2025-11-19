@interface VUIActionTypeGDPR
- (VUIActionTypeGDPR)initWithContextData:(id)a3 appContext:(id)a4;
- (VUIAppContext)appContext;
- (void)performWithTargetResponder:(id)a3 completionHandler:(id)a4;
@end

@implementation VUIActionTypeGDPR

- (VUIActionTypeGDPR)initWithContextData:(id)a3 appContext:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = VUIActionTypeGDPR;
  v9 = [(VUIActionTypeGDPR *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_contextData, a3);
    objc_storeWeak(&v10->_appContext, v8);
  }

  return v10;
}

- (void)performWithTargetResponder:(id)a3 completionHandler:(id)a4
{
  v24[5] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = +[VUITVAppLauncher sharedInstance];
  v9 = [v8 appController];

  v10 = [v9 navigationController];
  objc_initWeak(&location, self);
  v11 = +[VUIMetricsController sharedInstance];
  v23[0] = @"targetId";
  v23[1] = @"targetType";
  v24[0] = @"continue";
  v24[1] = @"button";
  v23[2] = @"actionType";
  v23[3] = @"dialogId";
  v24[2] = @"gdprConsent";
  v24[3] = @"GDPR";
  v23[4] = @"dialogType";
  v24[4] = @"GDPR";
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:5];
  [v11 recordClick:v12];

  v13 = +[VUIMetricsController sharedInstance];
  [v13 forceGDPRConsentStatus:1];

  v14 = [MEMORY[0x1E696ABB0] defaultCenter];
  [v14 vui_postNotificationName:@"VUIGDPRUserDidConsentNotification" object:0 userInfo:0];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __66__VUIActionTypeGDPR_performWithTargetResponder_completionHandler___block_invoke;
  v17[3] = &unk_1E87302E0;
  v15 = v10;
  v18 = v15;
  objc_copyWeak(&v21, &location);
  v16 = v7;
  v19 = self;
  v20 = v16;
  [VUIGDPRPresentationManager acceptGDPRAndSyncWithServers:v17];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

void __66__VUIActionTypeGDPR_performWithTargetResponder_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __66__VUIActionTypeGDPR_performWithTargetResponder_completionHandler___block_invoke_2;
  v10 = &unk_1E87302B8;
  v11 = *(a1 + 32);
  objc_copyWeak(&v14, (a1 + 56));
  v5 = *(a1 + 48);
  v12 = *(a1 + 40);
  v13 = v5;
  v6 = &v7;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v9(v6);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], v6);
  }

  objc_destroyWeak(&v14);
}

void __66__VUIActionTypeGDPR_performWithTargetResponder_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __66__VUIActionTypeGDPR_performWithTargetResponder_completionHandler___block_invoke_3;
  v10[3] = &unk_1E872E828;
  objc_copyWeak(&v12, (a1 + 56));
  v11 = *(a1 + 48);
  [v2 dismissViewControllerAnimated:1 completion:v10];
  v3 = +[VUIInterfaceFactory sharedInstance];
  v4 = [v3 openURLHandler];
  v5 = [v4 openedByDeeplink];

  if ((v5 & 1) == 0)
  {
    v6 = VUIDefaultLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "VUIApplicationActionRouter - GDPR Accept Button -- Check if there is any pending offer to spend", v9, 2u);
    }

    v7 = [*(a1 + 40) appContext];
    [VUIOfferUtilities fetchAndPresentOffer:v7 sourceEvent:@"AppLaunch" completion:0];
  }

  v8 = dispatch_get_global_queue(0, 0);
  dispatch_async(v8, &__block_literal_global_43);

  objc_destroyWeak(&v12);
}

void __66__VUIActionTypeGDPR_performWithTargetResponder_completionHandler___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained appContext];
    v5 = +[VUIInterfaceFactory sharedInstance];
    v6 = [v5 openURLHandler];
    [v6 handleDeferredURLWithAppContext:v4];

    v3 = v8;
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, 1);
    v3 = v8;
  }
}

- (VUIAppContext)appContext
{
  WeakRetained = objc_loadWeakRetained(&self->_appContext);

  return WeakRetained;
}

@end