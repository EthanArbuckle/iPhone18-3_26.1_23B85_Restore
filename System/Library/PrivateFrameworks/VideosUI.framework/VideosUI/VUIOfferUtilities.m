@interface VUIOfferUtilities
+ (void)_handleOfferDataSource:(id)a3 appContext:(id)a4;
+ (void)fetchAndPresentOffer:(id)a3 sourceEvent:(id)a4 completion:(id)a5;
+ (void)registerDeviceForCommerceOffers;
@end

@implementation VUIOfferUtilities

+ (void)registerDeviceForCommerceOffers
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [v2 BOOLForKey:@"hasRegisterdDeviceForOffer"];

  if (v3)
  {
    v4 = VUIDefaultLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_INFO, "VUIOfferUtilities - Already registered the device for offers.", buf, 2u);
    }
  }

  else
  {
    v4 = [MEMORY[0x1E69D5920] activeAccount];
    if (v4)
    {
      v5 = [MEMORY[0x1E698C7D8] vui_defaultBag];
      v6 = [objc_alloc(MEMORY[0x1E698C8B0]) initWithAccount:v4 bag:v5];
      v7 = [v6 perform];
      [v7 addFinishBlock:&__block_literal_global_46_0];
    }

    else
    {
      v5 = VUIDefaultLogObject();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *v8 = 0;
        _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_INFO, "VUIOfferUtilities - No account is signed in, skipping device offer registration.", v8, 2u);
      }
    }
  }
}

+ (void)fetchAndPresentOffer:(id)a3 sourceEvent:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (_os_feature_enabled_impl())
  {
    v10[2](v10, 0);
    v11 = VUIDefaultLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v11, OS_LOG_TYPE_INFO, "Disabled Fetching Device Offer", buf, 2u);
    }
  }

  else
  {
    v12 = VUISignpostLogObject();
    if (os_signpost_enabled(v12))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1E323F000, v12, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Launch.FetchAndPresentOffer", "", buf, 2u);
    }

    v13 = [MEMORY[0x1E696AD88] defaultCenter];
    [v13 postNotificationName:@"VUIJSOfferdidStartProcessing" object:0];

    v14 = +[VUIPlaybackManager sharedInstance];
    v15 = [v14 isFullscreenPlaybackUIBeingShown];

    v16 = +[VUIInterfaceFactory sharedInstance];
    v17 = [v16 openURLHandler];
    v18 = [v17 isLoadingSharedWatchURL];

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __65__VUIOfferUtilities_fetchAndPresentOffer_sourceEvent_completion___block_invoke;
    v19[3] = &unk_1E8736228;
    v24 = v15;
    v25 = v18;
    v20 = v9;
    v21 = v8;
    v23 = a1;
    v22 = v10;
    [v21 evaluate:v19];

    v11 = v20;
  }
}

void __65__VUIOfferUtilities_fetchAndPresentOffer_sourceEvent_completion___block_invoke(uint64_t a1, void *a2)
{
  v21[3] = *MEMORY[0x1E69E9840];
  v3 = [a2 objectForKeyedSubscript:@"offersInterface"];
  v4 = v3;
  if (v3 && [v3 hasProperty:@"onProcessOffers"])
  {
    if (*(a1 + 64))
    {
      v5 = MEMORY[0x1E695E118];
    }

    else
    {
      v5 = MEMORY[0x1E695E110];
    }

    v20[0] = @"isInFullScreenPlayback";
    v20[1] = @"isBusyLoadingSharedWatch";
    if (*(a1 + 65))
    {
      v6 = MEMORY[0x1E695E118];
    }

    else
    {
      v6 = MEMORY[0x1E695E110];
    }

    v21[0] = v5;
    v21[1] = v6;
    v20[2] = @"eventSource";
    v7 = @"Unknown";
    if (*(a1 + 32))
    {
      v7 = *(a1 + 32);
    }

    v21[2] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:3];
    v19[0] = v8;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __65__VUIOfferUtilities_fetchAndPresentOffer_sourceEvent_completion___block_invoke_2;
    aBlock[3] = &unk_1E8736200;
    v17 = *(a1 + 40);
    v15 = *(a1 + 48);
    v9 = v15;
    v18 = v15;
    v10 = _Block_copy(aBlock);
    v19[1] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
    v12 = [v4 invokeMethod:@"onProcessOffers" withArguments:v11];
  }

  else
  {
    v13 = *(a1 + 48);
    if (v13)
    {
      (*(v13 + 16))(v13, 0);
    }

    v14 = [MEMORY[0x1E696AD88] defaultCenter];
    [v14 postNotificationName:@"VUIJSOfferdidFinishProcessing" object:0];
  }
}

void __65__VUIOfferUtilities_fetchAndPresentOffer_sourceEvent_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__VUIOfferUtilities_fetchAndPresentOffer_sourceEvent_completion___block_invoke_3;
  block[3] = &unk_1E8734720;
  v8 = v3;
  v9 = *(a1 + 32);
  v6 = *(a1 + 40);
  v4 = v6;
  v10 = v6;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __65__VUIOfferUtilities_fetchAndPresentOffer_sourceEvent_completion___block_invoke_3(void *a1)
{
  [_TtC8VideosUI8VideosUI handleUpsellPresented:0];
  v2 = a1[4];
  if (v2)
  {
    v3 = [VUIOpenURLRouterDataSource routerDataSourceWithDict:v2 appContext:a1[5]];
    v4 = v3 != 0;
    if (v3)
    {
      [_TtC8VideosUI8VideosUI handleUpsellPresented:1];
      v5 = [v3 action];
      v6 = v5;
      if (v5)
      {
        [v5 performWithTargetResponder:0 completionHandler:&__block_literal_global_141];
      }

      else
      {
        v7 = VUIDefaultLogObject();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          *v14 = 0;
          _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_INFO, "Processing valid offer router data source", v14, 2u);
        }

        [objc_opt_class() _handleOfferDataSource:v3 appContext:a1[5]];
      }
    }

    else
    {
      v6 = VUIDefaultLogObject();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *v13 = 0;
        _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_INFO, "Invalid offer router data source", v13, 2u);
      }
    }
  }

  else
  {
    v3 = VUIDefaultLogObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_INFO, "Empty offer router data source", buf, 2u);
    }

    v4 = 0;
  }

  v8 = [MEMORY[0x1E696AD88] defaultCenter];
  [v8 postNotificationName:@"VUIJSOfferdidFinishProcessing" object:0];

  v9 = VUISignpostLogObject();
  if (os_signpost_enabled(v9))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&dword_1E323F000, v9, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Launch.FetchAndPresentOffer", "", v11, 2u);
  }

  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, v4);
  }

  return result;
}

void __65__VUIOfferUtilities_fetchAndPresentOffer_sourceEvent_completion___block_invoke_4()
{
  v0 = VUIDefaultLogObject();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_1E323F000, v0, OS_LOG_TYPE_INFO, "Processed offer action data source", v1, 2u);
  }
}

void __52__VUIOfferUtilities_registerDeviceForCommerceOffers__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = VUIDefaultLogObject();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (v3)
  {
    if (v5)
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_INFO, "VUIOfferUtilities - Error running the device offer registration. %@", &v6, 0xCu);
    }
  }

  else
  {
    if (v5)
    {
      LOWORD(v6) = 0;
      _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_INFO, "VUIOfferUtilities - Registered the device for offers.", &v6, 2u);
    }

    v4 = [MEMORY[0x1E695E000] standardUserDefaults];
    [v4 setBool:1 forKey:@"hasRegisterdDeviceForOffer"];
  }
}

+ (void)_handleOfferDataSource:(id)a3 appContext:(id)a4
{
  v16 = a4;
  v5 = [a3 documentDataSources];
  v6 = v5;
  if (v5 && [v5 count])
  {
    v7 = [v6 firstObject];
    v8 = +[VUIInterfaceFactory sharedInstance];
    v9 = [v8 viewControllerWithDocumentDataSource:v7 appContext:v16];

    v10 = [v7 uiConfiguration];
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  v11 = +[VUITVAppLauncher sharedInstance];
  v12 = [v11 appController];
  v13 = [v12 navigationController];

  if (v9)
  {
    v14 = +[VUIPlaybackManager sharedInstance];
    [v14 dismissPlaybackAnimated:0 leaveGroupActivitySession:1 completion:0];

    [v13 vui_dismissViewControllerAnimated:1 completion:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = +[VUIApplicationRouter topPresentedViewController];
      [VUIPresenterController presentViewController:v9 fromViewController:v15 WithConfiguration:v10 completion:0];
    }

    else
    {
      [v13 pushViewController:v9 animated:0];
    }
  }
}

@end