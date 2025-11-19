@interface VUIAccessViewController
+ (BOOL)_grantAccessToBundleIDs:(id)a3;
+ (BOOL)_grantAccessToChannelIDs:(id)a3 isReconsent:(BOOL)a4;
+ (BOOL)isHostedInRemoteViewService;
+ (id)eligibleBundleIDs;
+ (void)_handleConfigurationResponseHelper:(id)a3 config:(id)a4 error:(id)a5 completionHandler:(id)a6;
+ (void)optInUser;
+ (void)resolveBundleIDs:(id)a3 completionHandler:(id)a4;
- (VUIAccessViewController)initWithBundleIDs:(id)a3 options:(id)a4 completionHandler:(id)a5;
- (VUIAccessViewController)initWithChannels:(id)a3 options:(id)a4 consentCancelButtonType:(unint64_t)a5 completionHandler:(id)a6;
- (unint64_t)supportedInterfaceOrientations;
@end

@implementation VUIAccessViewController

void __64___VUIAccessViewController__getChannelForBundleIDSynchronously___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void __59___VUIAccessViewController_getOrderedChannelsSynchronously__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v9 = v5;
  if (!v5 || a3)
  {
    v8 = [a3 localizedDescription];
    NSLog(&cfstr_Vuiaccessviewc_4.isa, v8);
  }

  else
  {
    v6 = *(*(a1 + 40) + 8);
    v7 = v5;
    v8 = *(v6 + 40);
    *(v6 + 40) = v7;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __35___VUIAccessViewController__allow___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = [VUIAccessViewController _grantAccessToChannelIDs:WeakRetained[132] isReconsent:*(a1 + 40)];
    v5 = __35___VUIAccessViewController__allow___block_invoke_2;
    v6 = &unk_1E872ECA0;
    v8 = v3;
    v7 = WeakRetained;
    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      v5(&v4);
    }

    else
    {
      dispatch_async(MEMORY[0x1E69E96A0], &v4);
    }
  }
}

uint64_t __35___VUIAccessViewController__allow___block_invoke_2(uint64_t a1)
{
  v14[4] = *MEMORY[0x1E69E9840];
  v2 = +[VUIMetricsController sharedInstance];
  v13[0] = @"targetId";
  v13[1] = @"targetType";
  v14[0] = @"allow";
  v14[1] = @"button";
  v14[2] = @"allow";
  v13[2] = @"actionType";
  v13[3] = @"actionDetails";
  v11 = @"result";
  if (*(a1 + 40))
  {
    v3 = VUIMetricsActionDetailsResultSuccess;
  }

  else
  {
    v3 = VUIMetricsActionDetailsResultFail;
  }

  v12 = *v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v14[3] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:4];
  [v2 recordClick:v5];

  v6 = [*(a1 + 32) navigationItem];
  v7 = [v6 rightBarButtonItem];
  [v7 setEnabled:1];

  if (*(a1 + 40) == 1)
  {
    return [*(a1 + 32) _completeWithStatus:1];
  }

  NSLog(&cfstr_Vuiaccessviewc_5.isa);
  v9 = *(a1 + 32);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __35___VUIAccessViewController__allow___block_invoke_3;
  v10[3] = &unk_1E872D768;
  v10[4] = v9;
  return [v9 _presentGenericErrorWithCompletion:v10];
}

void __38___VUIAccessViewController__disallow___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained && WeakRetained[1064] == 1)
  {
    v4 = [MEMORY[0x1E69E15D0] sharedSettings];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __38___VUIAccessViewController__disallow___block_invoke_2;
    v6[3] = &unk_1E8730F50;
    v5 = v4;
    v7 = v5;
    v8 = v3;
    objc_copyWeak(&v9, (a1 + 32));
    [v5 refreshWithCompletion:v6];
    objc_destroyWeak(&v9);
  }

  else
  {
    [WeakRetained _completeWithStatus:3];
  }
}

void __38___VUIAccessViewController__disallow___block_invoke_2(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) beginIgnoringChanges];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(*(a1 + 40) + 1016);
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v14 + 1) + 8 * i);
        v8 = [_VUIAccessViewController _channelIDFromBundleID:v7];
        NSLog(&cfstr_Vuiaccessviewc_6.isa, v7);
        v9 = WLKSubscriptionIdentifierForBundleID();
        [*(a1 + 32) setStatus:2 forChannelID:v8 externalID:v9];
      }

      v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  [*(a1 + 32) endIgnoringChanges];
  v10 = [MEMORY[0x1E69E15D0] sharedSettings];
  v11 = [v10 synchronize:0];

  if ((v11 & 1) == 0)
  {
    NSLog(&cfstr_Vuiaccessviewc_7.isa);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38___VUIAccessViewController__disallow___block_invoke_3;
  block[3] = &unk_1E872E4B8;
  objc_copyWeak(&v13, (a1 + 48));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v13);
}

void __38___VUIAccessViewController__disallow___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[124] showNackScreen];
    [v2 _toggleLoadingScreen];
    WeakRetained = v2;
  }
}

uint64_t __48___VUIAccessViewController__completeWithStatus___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[135];
    if (v4)
    {
      v7 = v3;
      (*(v4 + 16))(v4, *(a1 + 40), v3[127]);
      v5 = v7[135];
      v7[135] = 0;
    }
  }

  return MEMORY[0x1EEE66BE0]();
}

void __47___VUIAccessViewController__fetchRemoteAppInfo__block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v14 = a1;
    v34 = 0;
    v35 = &v34;
    v36 = 0x3032000000;
    v37 = __Block_byref_object_copy__39;
    v38 = __Block_byref_object_dispose__39;
    v39 = [MEMORY[0x1E695DF70] array];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    obj = WeakRetained[131];
    v2 = [obj countByEnumeratingWithState:&v30 objects:v40 count:16];
    if (v2)
    {
      v3 = *v31;
      do
      {
        for (i = 0; i != v2; ++i)
        {
          if (*v31 != v3)
          {
            objc_enumerationMutation(obj);
          }

          v5 = *(*(&v30 + 1) + 8 * i);
          v24 = 0;
          v25 = &v24;
          v26 = 0x3032000000;
          v27 = __Block_byref_object_copy__39;
          v28 = __Block_byref_object_dispose__39;
          v29 = [MEMORY[0x1E695DF90] dictionary];
          v6 = [v5 name];
          [v25[5] setObject:v6 forKeyedSubscript:@"appName"];

          [WeakRetained _iconSize];
          v8 = v7;
          v10 = v9;
          v11 = dispatch_semaphore_create(0);
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 3221225472;
          aBlock[2] = __47___VUIAccessViewController__fetchRemoteAppInfo__block_invoke_2;
          aBlock[3] = &unk_1E8737B20;
          v22 = v8;
          v23 = v10;
          v21 = &v24;
          v12 = v11;
          v20 = v12;
          v13 = _Block_copy(aBlock);
          if (_os_feature_enabled_impl())
          {
            [VUIAppIconImageService fetchIconForVUIInstallable:v5 size:v13 completion:v8, v10];
          }

          else
          {
            [VUIAppIconImageService fetchIconForInstallable:v5 size:v13 completion:v8, v10];
          }

          dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
          [v35[5] addObject:v25[5]];

          _Block_object_dispose(&v24, 8);
        }

        v2 = [obj countByEnumeratingWithState:&v30 objects:v40 count:16];
      }

      while (v2);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __47___VUIAccessViewController__fetchRemoteAppInfo__block_invoke_3;
    block[3] = &unk_1E8737B48;
    objc_copyWeak(&v18, (v14 + 32));
    block[4] = &v34;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    objc_destroyWeak(&v18);
    _Block_object_dispose(&v34, 8);
  }
}

intptr_t __47___VUIAccessViewController__fetchRemoteAppInfo__block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 vui_iconImageOfSize:{*(a1 + 48), *(a1 + 56)}];
    [*(*(*(a1 + 40) + 8) + 40) setObject:v3 forKeyedSubscript:@"appIcon"];
  }

  v4 = *(a1 + 32);

  return dispatch_semaphore_signal(v4);
}

void __47___VUIAccessViewController__fetchRemoteAppInfo__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    [*(*(*(a1 + 32) + 8) + 40) addObjectsFromArray:WeakRetained[130]];
    v3 = [*(*(*(a1 + 32) + 8) + 40) copy];
    v4 = v5[130];
    v5[130] = v3;

    [v5 _setupAccessViews];
    [v5 _toggleLoadingScreen];
    WeakRetained = v5;
  }
}

void __49___VUIAccessViewController_cappedTraitCollection__block_invoke()
{
  v4[4] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69DDC30];
  v4[0] = *MEMORY[0x1E69DDC38];
  v4[1] = v0;
  v1 = *MEMORY[0x1E69DDC20];
  v4[2] = *MEMORY[0x1E69DDC28];
  v4[3] = v1;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:4];
  v3 = cappedTraitCollection_cappedSizes;
  cappedTraitCollection_cappedSizes = v2;
}

- (VUIAccessViewController)initWithBundleIDs:(id)a3 options:(id)a4 completionHandler:(id)a5
{
  v17[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = VUIAccessViewController;
  v11 = [(VUIAccessViewController *)&v16 init];
  if (v11)
  {
    v12 = [[_VUIAccessViewController alloc] initWithBundleIDs:v8 channels:0 consentCancelButtonType:0 options:v9 completionHandler:v10];
    v17[0] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
    [(VUIAccessViewController *)v11 setViewControllers:v13];

    v14 = [(VUIAccessViewController *)v11 navigationBar];
    [v14 _setHidesShadow:1];
    [v14 _setDisableBlurTinting:1];
  }

  return v11;
}

- (VUIAccessViewController)initWithChannels:(id)a3 options:(id)a4 consentCancelButtonType:(unint64_t)a5 completionHandler:(id)a6
{
  v19[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v18.receiver = self;
  v18.super_class = VUIAccessViewController;
  v13 = [(VUIAccessViewController *)&v18 init];
  if (v13)
  {
    v14 = [[_VUIAccessViewController alloc] initWithBundleIDs:0 channels:v10 consentCancelButtonType:a5 options:v11 completionHandler:v12];
    v19[0] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
    [(VUIAccessViewController *)v13 setViewControllers:v15];

    v16 = [(VUIAccessViewController *)v13 navigationBar];
    [v16 _setHidesShadow:1];
    [v16 _setDisableBlurTinting:1];
  }

  return v13;
}

+ (BOOL)_grantAccessToBundleIDs:(id)a3
{
  v52 = *MEMORY[0x1E69E9840];
  v27 = a3;
  v28 = [MEMORY[0x1E69E15D0] sharedSettings];
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 0;
  if (_os_feature_enabled_impl())
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v3 = v27;
    v4 = [v3 countByEnumeratingWithState:&v39 objects:v51 count:16];
    if (v4)
    {
      v31 = *v40;
      obj = v3;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v40 != v31)
          {
            objc_enumerationMutation(obj);
          }

          v6 = *(*(&v39 + 1) + 8 * i);
          v7 = dispatch_semaphore_create(0);
          v8 = [MEMORY[0x1E695DF90] dictionary];
          v9 = [_VUIAccessViewController _getChannelIDForBundleIDSynchronously:v6];
          [v8 setObject:v9 forKeyedSubscript:@"id"];

          [v8 setObject:@"Connect" forKeyedSubscript:@"action"];
          v49 = @"brandConsentSettings";
          v10 = [v8 copy];
          v48 = v10;
          v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v48 count:1];
          v50 = v11;
          v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1];

          v36[0] = MEMORY[0x1E69E9820];
          v36[1] = 3221225472;
          v36[2] = __51__VUIAccessViewController__grantAccessToBundleIDs___block_invoke;
          v36[3] = &unk_1E8735DD0;
          v38 = &v43;
          v13 = v7;
          v37 = v13;
          [_TtC8VideosUI32VUIUserCloudStoreSettingsService updateWithSettings:v12 completionHandler:v36];
          v14 = dispatch_time(0, 10000000000);
          dispatch_semaphore_wait(v13, v14);
        }

        v3 = obj;
        v4 = [obj countByEnumeratingWithState:&v39 objects:v51 count:16];
      }

      while (v4);
    }
  }

  else
  {
    v15 = [MEMORY[0x1E69E15C8] synchronizeSettingsFromCloudIfNeeded:0];
    *(v44 + 24) = v15;
    if ((v15 & 1) == 0)
    {
      NSLog(&cfstr_Vuiaccessviewc_8.isa);
      goto LABEL_24;
    }

    [v28 beginIgnoringChanges];
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v16 = v27;
    v17 = [v16 countByEnumeratingWithState:&v32 objects:v47 count:16];
    if (v17)
    {
      v18 = *v33;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v33 != v18)
          {
            objc_enumerationMutation(v16);
          }

          v20 = *(*(&v32 + 1) + 8 * j);
          NSLog(&cfstr_Vuiaccessviewc_9.isa, v20);
          if (_os_feature_enabled_impl())
          {
            v21 = [_VUIAccessViewController _getChannelIDForBundleIDSynchronously:v20];
          }

          else
          {
            v22 = [MEMORY[0x1E69E1500] sharedInstanceFiltered];
            v21 = [v22 channelIDForBundleID:v20];
          }

          v23 = WLKSubscriptionIdentifierForBundleID();
          [v28 setStatus:1 forChannelID:v21 externalID:v23];
        }

        v17 = [v16 countByEnumeratingWithState:&v32 objects:v47 count:16];
      }

      while (v17);
    }

    [a1 optInUser];
    [v28 endIgnoringChanges];
    v3 = [MEMORY[0x1E69E15D0] sharedSettings];
    v24 = [v3 synchronize:0];
    *(v44 + 24) = v24;
  }

LABEL_24:
  v25 = *(v44 + 24);
  _Block_object_dispose(&v43, 8);

  return v25 & 1;
}

+ (BOOL)_grantAccessToChannelIDs:(id)a3 isReconsent:(BOOL)a4
{
  v4 = a4;
  v60 = *MEMORY[0x1E69E9840];
  v29 = a3;
  v30 = [MEMORY[0x1E69E15D0] sharedSettings];
  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v54 = 0;
  if (_os_feature_enabled_impl())
  {
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    obj = v29;
    v6 = [obj countByEnumeratingWithState:&v47 objects:v59 count:16];
    if (v6)
    {
      v32 = *v48;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v48 != v32)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v47 + 1) + 8 * i);
          v9 = dispatch_semaphore_create(0);
          v10 = [MEMORY[0x1E695DF90] dictionary];
          [v10 setObject:v8 forKeyedSubscript:@"id"];
          [v10 setObject:@"Connect" forKeyedSubscript:@"action"];
          v57 = @"brandConsentSettings";
          v11 = [v10 copy];
          v56 = v11;
          v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v56 count:1];
          v58 = v12;
          v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v58 forKeys:&v57 count:1];

          v44[0] = MEMORY[0x1E69E9820];
          v44[1] = 3221225472;
          v44[2] = __64__VUIAccessViewController__grantAccessToChannelIDs_isReconsent___block_invoke;
          v44[3] = &unk_1E8735DD0;
          v46 = &v51;
          v14 = v9;
          v45 = v14;
          [_TtC8VideosUI32VUIUserCloudStoreSettingsService updateWithSettings:v13 completionHandler:v44];
          v15 = dispatch_time(0, 10000000000);
          dispatch_semaphore_wait(v14, v15);
        }

        v6 = [obj countByEnumeratingWithState:&v47 objects:v59 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v16 = [MEMORY[0x1E69E15C8] synchronizeSettingsFromCloudIfNeeded:0];
    *(v52 + 24) = v16;
    if (v16)
    {
      [v30 beginIgnoringChanges];
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v17 = v29;
      v18 = [v17 countByEnumeratingWithState:&v40 objects:v55 count:16];
      if (v18)
      {
        v19 = *v41;
        do
        {
          for (j = 0; j != v18; ++j)
          {
            if (*v41 != v19)
            {
              objc_enumerationMutation(v17);
            }

            v21 = *(*(&v40 + 1) + 8 * j);
            NSLog(&cfstr_Vuiaccessviewc_9.isa, v21);
            [v30 setStatus:1 forChannelID:v21 externalID:0];
          }

          v18 = [v17 countByEnumeratingWithState:&v40 objects:v55 count:16];
        }

        while (v18);
      }

      [a1 optInUser];
      [v30 endIgnoringChanges];
      v22 = [MEMORY[0x1E69E15D0] sharedSettings];
      v23 = [v22 synchronize:0];
      *(v52 + 24) = v23;

      if (*(v52 + 24) == 1 && v4)
      {
        NSLog(&cfstr_Vuiaccessviewc_10.isa);
        v36 = 0;
        v37 = &v36;
        v38 = 0x2020000000;
        v39 = 0;
        v24 = dispatch_semaphore_create(0);
        v25 = [MEMORY[0x1E69E15D0] sharedSettings];
        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v33[2] = __64__VUIAccessViewController__grantAccessToChannelIDs_isReconsent___block_invoke_2;
        v33[3] = &unk_1E8737B70;
        v35 = &v36;
        v26 = v24;
        v34 = v26;
        [v25 forceUpdateWithCompletion:v33];

        dispatch_semaphore_wait(v26, 0xFFFFFFFFFFFFFFFFLL);
        *(v52 + 24) = *(v37 + 24);

        _Block_object_dispose(&v36, 8);
      }
    }

    else
    {
      NSLog(&cfstr_Vuiaccessviewc_8.isa);
    }
  }

  v27 = *(v52 + 24);
  _Block_object_dispose(&v51, 8);

  return v27 & 1;
}

+ (void)optInUser
{
  v3 = [MEMORY[0x1E69E15D0] sharedSettings];
  if (([v3 optedIn] & 1) == 0)
  {
    NSLog(&cfstr_Vuiaccessviewc_11.isa);
    [v3 setOptedIn:1];
    v2 = [MEMORY[0x1E695DF00] date];
    [v3 setLastSyncDate:v2];
  }
}

+ (id)eligibleBundleIDs
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69E14D0] defaultAppLibrary];
  v3 = [v2 subscribedAppBundleIdentifiers];

  if (_os_feature_enabled_impl())
  {
    v4 = +[_VUIAccessViewController getOrderedChannelsSynchronously];
  }

  else
  {
    v5 = [MEMORY[0x1E69E1500] sharedInstance];
    v4 = [v5 orderedChannels];
  }

  v6 = [MEMORY[0x1E69E15D0] sharedSettings];
  v19 = [MEMORY[0x1E695DF70] array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        if ([v12 isWatchListEnabled] && (objc_msgSend(v12, "isFirstParty") & 1) == 0)
        {
          v13 = [v12 appBundleIDs];
          v14 = [v13 firstObject];

          if ([v3 containsObject:v14])
          {
            v15 = WLKSubscriptionIdentifierForBundleID();
            v16 = [v12 channelID];
            v17 = [v6 settingsForChannelID:v16 externalID:v15];

            if (!v17 || ![v17 accessStatus])
            {
              [v19 addObject:v14];
            }
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  return v19;
}

+ (void)resolveBundleIDs:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  NSLog(&cfstr_Vuiaccessviewc_12.isa, v5);
  if (_os_feature_enabled_impl())
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __62__VUIAccessViewController_resolveBundleIDs_completionHandler___block_invoke;
    v17[3] = &unk_1E8737B98;
    v7 = &v18;
    v8 = &v19;
    v18 = v5;
    v19 = v6;
    v9 = v6;
    v10 = v5;
    [_TtC8VideosUI25VUIUTSNetworkManagerProxy fetchConfiguration:0 completion:v17];
  }

  else
  {
    v11 = [MEMORY[0x1E69E1508] sharedInstance];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __62__VUIAccessViewController_resolveBundleIDs_completionHandler___block_invoke_2;
    v14[3] = &unk_1E8737BC0;
    v7 = &v15;
    v8 = &v16;
    v15 = v5;
    v16 = v6;
    v12 = v6;
    v13 = v5;
    [v11 fetchConfigurationWithCompletionHandler:v14];
  }
}

void __62__VUIAccessViewController_resolveBundleIDs_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 data];
  v10 = v6;
  if (a2)
  {
    a2 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v6 options:0 error:0];
  }

  v7 = objc_alloc(MEMORY[0x1E69E15C0]);
  v8 = [a2 vui_dictionaryForKey:@"data"];
  v9 = [v7 initWithServerResponseDictionary:v8 expirationDate:0 environmentHash:0];

  [VUIAccessViewController _handleConfigurationResponseHelper:*(a1 + 32) config:v9 error:v5 completionHandler:*(a1 + 40)];
}

+ (void)_handleConfigurationResponseHelper:(id)a3 config:(id)a4 error:(id)a5 completionHandler:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __93__VUIAccessViewController__handleConfigurationResponseHelper_config_error_completionHandler___block_invoke;
  aBlock[3] = &unk_1E8732000;
  v13 = v12;
  v24 = v13;
  v14 = _Block_copy(aBlock);
  v15 = v14;
  if (v10)
  {
    v16 = dispatch_get_global_queue(0, 0);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __93__VUIAccessViewController__handleConfigurationResponseHelper_config_error_completionHandler___block_invoke_2;
    v17[3] = &unk_1E8737C10;
    v18 = v10;
    v21 = v13;
    v19 = v11;
    v22 = v15;
    v20 = v9;
    dispatch_async(v16, v17);
  }

  else
  {
    (*(v14 + 2))(v14, v11);
  }
}

void __93__VUIAccessViewController__handleConfigurationResponseHelper_config_error_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    if (!v3)
    {
      NSLog(&cfstr_Vuiaccessviewc_13.isa, 0);
      v3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"VUIAccessErrorDomain" code:-1 userInfo:0];
      v4 = *(a1 + 32);
    }

    v5 = v3;
    (*(v4 + 16))(v4, MEMORY[0x1E695E0F0], v3);
    v3 = v5;
  }
}

void __93__VUIAccessViewController__handleConfigurationResponseHelper_config_error_completionHandler___block_invoke_2(uint64_t a1)
{
  v56 = *MEMORY[0x1E69E9840];
  if (([*(a1 + 32) vppaStatus] & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    v29 = a1;
    v25 = [MEMORY[0x1E69D5920] activeAccount];
    v3 = [v25 ams_DSID];
    v24 = [v3 stringValue];

    if ([v24 length])
    {
      v48 = 0;
      v49 = &v48;
      v50 = 0x3032000000;
      v51 = __Block_byref_object_copy__39;
      v52 = __Block_byref_object_dispose__39;
      v53 = 0;
      v44 = 0;
      v45 = &v44;
      v46 = 0x2020000000;
      v47 = 0;
      if (_os_feature_enabled_impl())
      {
        v4 = dispatch_semaphore_create(0);
        v39[0] = MEMORY[0x1E69E9820];
        v39[1] = 3221225472;
        v39[2] = __93__VUIAccessViewController__handleConfigurationResponseHelper_config_error_completionHandler___block_invoke_3;
        v39[3] = &unk_1E8737BE8;
        v42 = &v44;
        v40 = *(v29 + 40);
        v43 = &v48;
        v5 = v4;
        v41 = v5;
        [_TtC8VideosUI32VUIUserCloudStoreSettingsService fetchWithCompletionHandler:v39];
        v6 = dispatch_time(0, 10000000000);
        dispatch_semaphore_wait(v5, v6);

        if ((v45[3] & 1) == 0)
        {
LABEL_8:
          NSLog(&cfstr_Vuiaccessviewc_14.isa);
          (*(*(v29 + 64) + 16))();
          _Block_object_dispose(&v44, 8);
          _Block_object_dispose(&v48, 8);

LABEL_42:
          return;
        }
      }

      else
      {
        v7 = (v49 + 5);
        obj = v49[5];
        v8 = [MEMORY[0x1E69E15C8] synchronizeSettingsFromCloudIfNeeded:&obj];
        objc_storeStrong(v7, obj);
        *(v45 + 24) = v8;
        if ((v8 & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      _Block_object_dispose(&v44, 8);
      _Block_object_dispose(&v48, 8);
    }

    if (_os_feature_enabled_impl())
    {
      v23 = +[_VUIAccessViewController getOrderedChannelsSynchronously];
    }

    else
    {
      v9 = [MEMORY[0x1E69E1500] sharedInstance];
      v23 = [v9 orderedChannels];
    }

    if (v23)
    {
      v27 = [MEMORY[0x1E69E15D0] sharedSettings];
      v26 = [MEMORY[0x1E695DF70] array];
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v28 = v23;
      v10 = [v28 countByEnumeratingWithState:&v34 objects:v55 count:16];
      if (v10)
      {
        v11 = *v35;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v35 != v11)
            {
              objc_enumerationMutation(v28);
            }

            v13 = *(*(&v34 + 1) + 8 * i);
            v14 = [v13 appBundleIDs];
            if ([v13 isWatchListEnabled] && objc_msgSend(*(v29 + 48), "count"))
            {
              v32 = 0u;
              v33 = 0u;
              v30 = 0u;
              v31 = 0u;
              v15 = *(v29 + 48);
              v16 = [v15 countByEnumeratingWithState:&v30 objects:v54 count:16];
              if (v16)
              {
                v17 = *v31;
                while (2)
                {
                  for (j = 0; j != v16; ++j)
                  {
                    if (*v31 != v17)
                    {
                      objc_enumerationMutation(v15);
                    }

                    v19 = *(*(&v30 + 1) + 8 * j);
                    if ([v14 containsObject:v19])
                    {
                      v20 = WLKSubscriptionIdentifierForBundleID();
                      v21 = [v13 channelID];
                      v22 = [v27 settingsForChannelID:v21 externalID:v20];

                      if ((!v22 || ![v22 accessStatus]) && (objc_msgSend(v26, "containsObject:", v19) & 1) == 0)
                      {
                        [v26 addObject:v19];
                      }

                      goto LABEL_36;
                    }
                  }

                  v16 = [v15 countByEnumeratingWithState:&v30 objects:v54 count:16];
                  if (v16)
                  {
                    continue;
                  }

                  break;
                }
              }

LABEL_36:
            }
          }

          v10 = [v28 countByEnumeratingWithState:&v34 objects:v55 count:16];
        }

        while (v10);
      }

      NSLog(&cfstr_Vuiaccessviewc_16.isa, v26);
      (*(*(v29 + 56) + 16))();
    }

    else
    {
      NSLog(&cfstr_Vuiaccessviewc_15.isa);
      (*(*(v29 + 64) + 16))();
    }

    goto LABEL_42;
  }

  v2 = *(*(a1 + 56) + 16);

  v2();
}

void __93__VUIAccessViewController__handleConfigurationResponseHelper_config_error_completionHandler___block_invoke_3(uint64_t a1, int a2, id obj)
{
  *(*(*(a1 + 48) + 8) + 24) = *(a1 + 32) == 0;
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), obj);
  v5 = obj;
  dispatch_semaphore_signal(*(a1 + 40));
}

+ (BOOL)isHostedInRemoteViewService
{
  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v3 = [v2 bundleIdentifier];

  LOBYTE(v2) = [v3 isEqualToString:@"com.apple.TVAccessViewService"];
  return v2;
}

- (unint64_t)supportedInterfaceOrientations
{
  v3 = [MEMORY[0x1E69DC938] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (!v4)
  {
    return 2;
  }

  v6.receiver = self;
  v6.super_class = VUIAccessViewController;
  return [(VUIAccessViewController *)&v6 supportedInterfaceOrientations];
}

@end