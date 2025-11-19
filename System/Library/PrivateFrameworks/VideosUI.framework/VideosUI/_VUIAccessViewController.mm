@interface _VUIAccessViewController
+ (id)_channelIDFromBundleID:(id)a3;
+ (id)_getChannelForBundleIDSynchronously:(id)a3;
+ (id)_getChannelIDForBundleIDSynchronously:(id)a3;
+ (id)getOrderedChannelsSynchronously;
- (CGSize)_iconSize;
- (_VUIAccessViewController)init;
- (_VUIAccessViewController)initWithBundleIDs:(id)a3 channels:(id)a4 consentCancelButtonType:(unint64_t)a5 options:(id)a6 completionHandler:(id)a7;
- (id)_imageForBundleID:(id)a3;
- (id)_watchListAppIcon;
- (id)cappedTraitCollection;
- (id)preferredFocusEnvironments;
- (void)_allow:(id)a3;
- (void)_completeWithStatus:(unint64_t)a3;
- (void)_disallow:(id)a3;
- (void)_fetchRemoteAppInfo;
- (void)_handleMenuGesture:(id)a3;
- (void)_handleNackButton:(id)a3;
- (void)_handleSeeAllButton:(id)a3;
- (void)_init;
- (void)_presentGenericErrorWithCompletion:(id)a3;
- (void)_setupAccessViews;
- (void)_setupNavigationBar;
- (void)_toggleLoadingScreen;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation _VUIAccessViewController

- (_VUIAccessViewController)initWithBundleIDs:(id)a3 channels:(id)a4 consentCancelButtonType:(unint64_t)a5 options:(id)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v24.receiver = self;
  v24.super_class = _VUIAccessViewController;
  v16 = [(_VUIAccessViewController *)&v24 init];
  if (v16)
  {
    v17 = objc_opt_new();
    bundleIDs = v16->_bundleIDs;
    v16->_bundleIDs = v17;

    v19 = objc_opt_new();
    channelIds = v16->_channelIds;
    v16->_channelIds = v19;

    if ([v12 count])
    {
      [(NSMutableArray *)v16->_bundleIDs addObjectsFromArray:v12];
    }

    objc_storeStrong(&v16->_options, a6);
    NSLog(&cfstr_Vuiaccessviewc.isa, v16->_options);
    v16->_consentCancelButtonType = a5;
    objc_storeStrong(&v16->_channels, a4);
    v21 = [v15 copy];
    completionHandler = v16->_completionHandler;
    v16->_completionHandler = v21;

    [(_VUIAccessViewController *)v16 _init];
  }

  return v16;
}

- (_VUIAccessViewController)init
{
  [MEMORY[0x1E695DF30] raise:@"VUIAccessViewControllerInitException" format:@"-init not supported. Use -initWithCompletionHandler:"];

  return 0;
}

- (void)_init
{
  v39[1] = *MEMORY[0x1E69E9840];
  [(_VUIAccessViewController *)self setModalInPresentation:1];
  v3 = [(NSDictionary *)self->_options objectForKeyedSubscript:@"shouldDenyOnCancel"];
  self->_shouldDenyOnCancel = [v3 BOOLValue];

  if (+[VUIAccessViewController isHostedInRemoteViewService]&& [(NSMutableArray *)self->_bundleIDs count]== 1)
  {
    v4 = [(NSMutableArray *)self->_bundleIDs objectAtIndexedSubscript:0];
    v5 = [_VUIAccessViewController _channelIDFromBundleID:v4];

    if (v5)
    {
      [(NSMutableArray *)self->_channelIds addObject:v5];
    }

    v6 = [MEMORY[0x1E69E14D0] defaultAppLibrary];
    v7 = [(NSMutableArray *)self->_bundleIDs objectAtIndexedSubscript:0];
    v8 = [v6 localizedNameForBundle:v7];

    v9 = [(_VUIAccessViewController *)self _watchListAppIcon];
    v10 = [MEMORY[0x1E695DF90] dictionary];
    appChannels = v10;
    if (v8)
    {
      [(NSArray *)v10 setObject:v8 forKeyedSubscript:@"appName"];
    }

    if (v9)
    {
      [(NSArray *)appChannels setObject:v9 forKeyedSubscript:@"appIcon"];
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      [_VUIAccessViewController _init];
    }

    v39[0] = appChannels;
    v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:1];
    appInfos = self->_appInfos;
    self->_appInfos = v30;
  }

  else
  {
    v33 = [MEMORY[0x1E695DF70] array];
    v32 = [MEMORY[0x1E695DF70] array];
    v12 = [MEMORY[0x1E69E14D0] defaultAppLibrary];
    v9 = [v12 allAppBundleIdentifiers];

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v13 = self->_bundleIDs;
    v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v35;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v35 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v34 + 1) + 8 * i);
          if ([v9 containsObject:v18])
          {
            v19 = [MEMORY[0x1E69E14D0] defaultAppLibrary];
            v20 = [v19 localizedNameForBundle:v18];

            v21 = [(_VUIAccessViewController *)self _imageForBundleID:v18];
            v22 = [MEMORY[0x1E695DF90] dictionary];
            v23 = v22;
            if (v20)
            {
              [v22 setObject:v20 forKeyedSubscript:@"appName"];
            }

            if (v21)
            {
              [v23 setObject:v21 forKeyedSubscript:@"appIcon"];
            }

            [v33 addObject:v23];
            v24 = [_VUIAccessViewController _channelIDFromBundleID:v18];
            if (v24)
            {
              [(NSMutableArray *)self->_channelIds addObject:v24];
            }
          }

          else
          {
            if (_os_feature_enabled_impl())
            {
              v25 = [_VUIAccessViewController _getChannelForBundleIDSynchronously:v18];
              v26 = [objc_alloc(MEMORY[0x1E69E14F0]) initWithDictionary:v25];
            }

            else
            {
              v25 = [MEMORY[0x1E69E1500] sharedInstance];
              v26 = [v25 channelForBundleID:v18];
            }

            v20 = v26;

            if (v20)
            {
              [v32 addObject:v20];
            }

            else
            {
              NSLog(&cfstr_Vuiaccessviewc_1.isa, v18);
            }
          }
        }

        v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v15);
    }

    v8 = v32;
    if (self->_channels)
    {
      [v32 addObjectsFromArray:?];
    }

    v5 = v33;
    v27 = [v33 copy];
    v28 = self->_appInfos;
    self->_appInfos = v27;

    v29 = [v32 copy];
    appChannels = self->_appChannels;
    self->_appChannels = v29;
  }
}

+ (id)_channelIDFromBundleID:(id)a3
{
  v3 = a3;
  if (_os_feature_enabled_impl())
  {
    v4 = [_VUIAccessViewController _getChannelIDForBundleIDSynchronously:v3];
  }

  else
  {
    v5 = [MEMORY[0x1E69E1500] sharedInstanceFiltered];
    v4 = [v5 channelIDForBundleID:v3];
  }

  return v4;
}

+ (id)_getChannelIDForBundleIDSynchronously:(id)a3
{
  if (a3)
  {
    v3 = [a1 _getChannelForBundleIDSynchronously:?];
    v4 = [v3 objectForKey:@"id"];
  }

  else
  {
    NSLog(&cfstr_Vuiaccessviewc_2.isa, a2);
    v4 = 0;
  }

  return v4;
}

+ (id)_getChannelForBundleIDSynchronously:(id)a3
{
  v3 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__39;
  v17 = __Block_byref_object_dispose__39;
  v18 = 0;
  if (v3)
  {
    v4 = dispatch_semaphore_create(0);
    v5 = +[_TtC8VideosUI28VUIUTSChannelsRequestManager sharedInstance];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __64___VUIAccessViewController__getChannelForBundleIDSynchronously___block_invoke;
    v10[3] = &unk_1E8735DD0;
    v12 = &v13;
    v6 = v4;
    v11 = v6;
    [v5 getChannelForBundleID:v3 completion:v10];

    v7 = dispatch_time(0, 10000000000);
    dispatch_semaphore_wait(v6, v7);
  }

  else
  {
    NSLog(&cfstr_Vuiaccessviewc_3.isa);
  }

  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v8;
}

+ (id)getOrderedChannelsSynchronously
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__39;
  v15 = __Block_byref_object_dispose__39;
  v16 = 0;
  v2 = dispatch_semaphore_create(0);
  v3 = +[_TtC8VideosUI28VUIUTSChannelsRequestManager sharedInstance];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59___VUIAccessViewController_getOrderedChannelsSynchronously__block_invoke;
  v8[3] = &unk_1E8737AF8;
  v10 = &v11;
  v4 = v2;
  v9 = v4;
  [v3 orderedChannels:v8];

  v5 = dispatch_time(0, 10000000000);
  dispatch_semaphore_wait(v4, v5);
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

- (void)viewDidLoad
{
  v26.receiver = self;
  v26.super_class = _VUIAccessViewController;
  [(_VUIAccessViewController *)&v26 viewDidLoad];
  [(_VUIAccessViewController *)self _setupNavigationBar];
  v3 = objc_alloc_init(VUIAppSpinnerView);
  loadingView = self->_loadingView;
  self->_loadingView = v3;

  [(VUIAppSpinnerView *)self->_loadingView setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = [(_VUIAccessViewController *)self view];
  [v5 addSubview:self->_loadingView];

  v6 = [(VUIAppSpinnerView *)self->_loadingView leadingAnchor];
  v7 = [(_VUIAccessViewController *)self view];
  v8 = [v7 leadingAnchor];
  v9 = [v6 constraintEqualToAnchor:v8];
  [v9 setActive:1];

  v10 = [(VUIAppSpinnerView *)self->_loadingView topAnchor];
  v11 = [(_VUIAccessViewController *)self view];
  v12 = [v11 topAnchor];
  v13 = [v10 constraintEqualToAnchor:v12];
  [v13 setActive:1];

  v14 = [(VUIAppSpinnerView *)self->_loadingView trailingAnchor];
  v15 = [(_VUIAccessViewController *)self view];
  v16 = [v15 trailingAnchor];
  v17 = [v14 constraintEqualToAnchor:v16];
  [v17 setActive:1];

  v18 = [(VUIAppSpinnerView *)self->_loadingView bottomAnchor];
  v19 = [(_VUIAccessViewController *)self view];
  v20 = [v19 bottomAnchor];
  v21 = [v18 constraintEqualToAnchor:v20];
  [v21 setActive:1];

  v22 = [(NSArray *)self->_appChannels count];
  v23 = self->_loadingView;
  if (v22)
  {
    [(VUIAppSpinnerView *)v23 setHidden:0];
    [(_VUIAccessViewController *)self _fetchRemoteAppInfo];
  }

  else
  {
    [(VUIAppSpinnerView *)v23 setHidden:1];
    [(_VUIAccessViewController *)self _setupAccessViews];
  }

  v24 = [(_VUIAccessViewController *)self view];
  v25 = [MEMORY[0x1E69DF678] makeAccessibilityIdentifierString:*MEMORY[0x1E69DF7C8] additionalString:@"Library.id=Access"];
  [v24 setAccessibilityIdentifier:v25];
}

- (void)viewDidAppear:(BOOL)a3
{
  v15[1] = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = _VUIAccessViewController;
  [(_VUIAccessViewController *)&v11 viewDidAppear:a3];
  v4 = [(VUIAccessView_iOS *)self->_accessView bodyScroll];
  [v4 flashScrollIndicators];

  v14 = @"appIds";
  bundleIDs = self->_bundleIDs;
  if (bundleIDs)
  {
    v6 = [(NSMutableArray *)self->_bundleIDs componentsJoinedByString:@", "];
  }

  else
  {
    v6 = &stru_1F5DB25C0;
  }

  v15[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  if (bundleIDs)
  {
  }

  v8 = +[VUIMetricsController sharedInstance];
  v12 = @"pageDetails";
  v13 = v7;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v10 = [VUIMetricsPageEventData createWithPageId:@"VPPA" andPageType:@"VPPA" andEventData:v9];
  [v8 recordPage:v10];
}

- (void)_allow:(id)a3
{
  v4 = [(NSDictionary *)self->_options objectForKeyedSubscript:@"requireVPPAStateUpdate"];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    v6 = [MEMORY[0x1E69E1508] sharedInstance];
    [v6 _invalidateCache];
  }

  v7 = [(_VUIAccessViewController *)self navigationItem];
  v8 = [v7 rightBarButtonItem];
  [v8 setEnabled:0];

  [(_VUIAccessViewController *)self _toggleLoadingScreen];
  v9 = [(NSDictionary *)self->_options objectForKeyedSubscript:@"NewVPPAConsentPrompt"];
  objc_opt_class();
  v10 = 0;
  if (objc_opt_isKindOfClass())
  {
    v10 = [v9 BOOLValue] ^ 1;
  }

  objc_initWeak(&location, self);
  v11 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35___VUIAccessViewController__allow___block_invoke;
  block[3] = &unk_1E872EDE0;
  objc_copyWeak(&v13, &location);
  v14 = v10;
  dispatch_async(v11, block);

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)_disallow:(id)a3
{
  v13[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(_VUIAccessViewController *)self _toggleLoadingScreen];
  if (self->_shouldDenyOnCancel)
  {
    v5 = [(_VUIAccessViewController *)self navigationItem];
    [v5 setRightBarButtonItem:0];
  }

  objc_initWeak(&location, self);
  v6 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38___VUIAccessViewController__disallow___block_invoke;
  block[3] = &unk_1E872E4B8;
  objc_copyWeak(&v10, &location);
  dispatch_async(v6, block);

  v7 = +[VUIMetricsController sharedInstance];
  v12[0] = @"targetId";
  v12[1] = @"targetType";
  v13[0] = @"disallow";
  v13[1] = @"button";
  v12[2] = @"actionType";
  v13[2] = @"disallow";
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];
  [v7 recordClick:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)_handleSeeAllButton:(id)a3
{
  v11[3] = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(VUIAppsGridViewController);
  [(_VUIAccessViewController *)self _iconSize];
  [(VUIAppsGridViewController *)v4 setIconSize:?];
  [(VUIAppsGridViewController *)v4 setApps:self->_appInfos];
  v5 = [MEMORY[0x1E69DC938] currentDevice];
  v6 = [v5 userInterfaceIdiom];

  if (v6 == 2)
  {
    [(_VUIAccessViewController *)self presentViewController:v4 animated:1 completion:0];
  }

  else
  {
    v7 = [(_VUIAccessViewController *)self navigationController];
    [v7 pushViewController:v4 animated:1];
  }

  v8 = +[VUIMetricsController sharedInstance];
  v10[0] = @"targetId";
  v10[1] = @"targetType";
  v11[0] = @"seeAll";
  v11[1] = @"button";
  v10[2] = @"actionType";
  v11[2] = @"seeAll";
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:3];
  [v8 recordClick:v9];
}

- (void)_handleMenuGesture:(id)a3
{
  v10[4] = *MEMORY[0x1E69E9840];
  if (!+[VUIAccessViewController isHostedInRemoteViewService])
  {
    [(_VUIAccessViewController *)self _completeWithStatus:0];
  }

  v4 = +[VUIMetricsController sharedInstance];
  v9[0] = @"targetId";
  v9[1] = @"targetType";
  v10[0] = @"cancel";
  v10[1] = @"button";
  v10[2] = @"cancel";
  v9[2] = @"actionType";
  v9[3] = @"actionDetails";
  v7 = @"button";
  v8 = @"menu";
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  v10[3] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:4];
  [v4 recordClick:v6];
}

- (void)_handleNackButton:(id)a3
{
  v6[3] = *MEMORY[0x1E69E9840];
  [(_VUIAccessViewController *)self _completeWithStatus:2];
  v3 = +[VUIMetricsController sharedInstance];
  v5[0] = @"targetId";
  v5[1] = @"targetType";
  v6[0] = @"cancel";
  v6[1] = @"button";
  v5[2] = @"actionType";
  v6[2] = @"cancel";
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:3];
  [v3 recordClick:v4];
}

- (void)_completeWithStatus:(unint64_t)a3
{
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v6 = __48___VUIAccessViewController__completeWithStatus___block_invoke;
  v7 = &unk_1E8730340;
  objc_copyWeak(v8, &location);
  v8[1] = a3;
  v4 = v5;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v6(v4);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], v4);
  }

  objc_destroyWeak(v8);
  objc_destroyWeak(&location);
}

- (void)_setupNavigationBar
{
  if (MEMORY[0x1E6913230](self, a2))
  {
    v3 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"xmark" withConfiguration:0];
    v4 = [objc_alloc(MEMORY[0x1E69DC708]) initWithImage:v3 style:0 target:self action:sel__disallow_];
  }

  else
  {
    if (self->_consentCancelButtonType == 1)
    {
      v5 = +[VUILocalizationManager sharedInstance];
      v6 = v5;
      v7 = @"ACCESS_CANCEL";
    }

    else
    {
      shouldDenyOnCancel = self->_shouldDenyOnCancel;
      v5 = +[VUILocalizationManager sharedInstance];
      v6 = v5;
      if (shouldDenyOnCancel)
      {
        v7 = @"ACCESS_DENY_FINAL";
      }

      else
      {
        v7 = @"ACCESS_DENY";
      }
    }

    v3 = [v5 localizedStringForKey:v7];

    v4 = [objc_alloc(MEMORY[0x1E69DC708]) initWithTitle:v3 style:0 target:self action:sel__disallow_];
  }

  v10 = v4;

  v9 = [(_VUIAccessViewController *)self navigationItem];
  [v9 setRightBarButtonItem:v10];

  [v10 setAccessibilityIdentifier:@"UIA.TV.Button.access.disallow"];
}

- (void)_setupAccessViews
{
  v3 = [[VUIAccessView_iOS alloc] initWithApps:self->_appInfos];
  accessView = self->_accessView;
  self->_accessView = v3;

  [(VUIAccessView_iOS *)self->_accessView setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = [(_VUIAccessViewController *)self view];
  [v5 addSubview:self->_accessView];

  v6 = [(VUIAccessView_iOS *)self->_accessView leadingAnchor];
  v7 = [(_VUIAccessViewController *)self view];
  v8 = [v7 leadingAnchor];
  v9 = [v6 constraintEqualToAnchor:v8];
  [v9 setActive:1];

  v10 = [(VUIAccessView_iOS *)self->_accessView topAnchor];
  v11 = [(_VUIAccessViewController *)self view];
  v12 = [v11 topAnchor];
  v13 = [v10 constraintEqualToAnchor:v12];
  [v13 setActive:1];

  v14 = [(VUIAccessView_iOS *)self->_accessView trailingAnchor];
  v15 = [(_VUIAccessViewController *)self view];
  v16 = [v15 trailingAnchor];
  v17 = [v14 constraintEqualToAnchor:v16];
  [v17 setActive:1];

  v18 = [(VUIAccessView_iOS *)self->_accessView bottomAnchor];
  v19 = [(_VUIAccessViewController *)self view];
  v20 = [v19 bottomAnchor];
  v21 = [v18 constraintEqualToAnchor:v20];
  [v21 setActive:1];

  v22 = [(VUIAccessView_iOS *)self->_accessView allowButton];
  [v22 addTarget:self action:sel__allow_ forControlEvents:0x2000];

  v23 = [(VUIAccessView_iOS *)self->_accessView seeAllButton];
  [v23 addTarget:self action:sel__handleSeeAllButton_ forControlEvents:0x2000];

  v24 = [(VUIAccessView_iOS *)self->_accessView nackButton];
  [v24 addTarget:self action:sel__handleNackButton_ forControlEvents:0x2000];

  v25 = [(NSArray *)self->_appInfos count];
  v56 = [(NSDictionary *)self->_options objectForKeyedSubscript:@"title"];
  v26 = [(NSDictionary *)self->_options objectForKeyedSubscript:@"body"];
  v27 = [(NSDictionary *)self->_options objectForKeyedSubscript:@"secondaryBody"];
  v28 = [(NSDictionary *)self->_options objectForKeyedSubscript:@"account"];
  if ([v56 length])
  {
    v29 = v56;
  }

  else
  {
    v30 = +[VUILocalizationManager sharedInstance];
    v31 = v30;
    if (v25 == 2)
    {
      v32 = [v30 localizedStringForKey:@"ACCESS_MAIN_TITLE_PLURAL_2_FORMAT"];

      v35 = [(NSArray *)self->_appInfos firstObject];
      v34 = [v35 objectForKeyedSubscript:@"appName"];

      v36 = [(NSArray *)self->_appInfos lastObject];
      v37 = [v36 objectForKeyedSubscript:@"appName"];

      v38 = [MEMORY[0x1E696AEC0] stringWithValidatedFormat:v32 validFormatSpecifiers:@"%@ %@" error:0, v34, v37];

      v39 = v37;
    }

    else
    {
      if (v25 == 1)
      {
        v32 = [v30 localizedStringForKey:@"ACCESS_MAIN_TITLE_SINGULAR_FORMAT"];

        v33 = [(NSArray *)self->_appInfos firstObject];
        v34 = [v33 objectForKeyedSubscript:@"appName"];

        [MEMORY[0x1E696AEC0] stringWithValidatedFormat:v32 validFormatSpecifiers:@"%@" error:0, v34];
      }

      else
      {
        v32 = [v30 localizedStringForKey:@"ACCESS_MAIN_TITLE_PLURAL_3+_FORMAT"];

        v40 = [(NSArray *)self->_appInfos firstObject];
        v34 = [v40 objectForKeyedSubscript:@"appName"];

        [MEMORY[0x1E696AEC0] localizedStringWithFormat:v32, v34, (v25 - 1)];
      }
      v38 = ;
      v39 = v56;
    }

    v29 = v38;
  }

  v57 = v29;
  [(VUIAccessView_iOS *)self->_accessView setTitle:?];
  if (![v26 length])
  {
    v41 = +[VUILocalizationManager sharedInstance];
    v42 = [v41 localizedStringForKey:@"ACCESS_BODY_TEXT"];

    v26 = v42;
  }

  [(VUIAccessView_iOS *)self->_accessView setBody:v26];
  if (![v27 length])
  {
    v43 = +[VUILocalizationManager sharedInstance];
    v44 = v43;
    if (v25 == 2)
    {
      v45 = [v43 localizedStringForKey:@"ACCESS_SECONDARY_BODY_PLURAL_2_FORMAT"];

      v48 = [(NSArray *)self->_appInfos firstObject];
      v47 = [v48 objectForKeyedSubscript:@"appName"];

      v49 = [(NSArray *)self->_appInfos lastObject];
      v50 = [v49 objectForKeyedSubscript:@"appName"];

      v51 = [MEMORY[0x1E696AEC0] stringWithValidatedFormat:v45 validFormatSpecifiers:@"%@ %@ %@" error:0, v47, v50, v28];

      v27 = v50;
    }

    else
    {
      if (v25 == 1)
      {
        v45 = [v43 localizedStringForKey:@"ACCESS_SECONDARY_BODY_SINGULAR_FORMAT"];

        v46 = [(NSArray *)self->_appInfos firstObject];
        v47 = [v46 objectForKeyedSubscript:@"appName"];

        [MEMORY[0x1E696AEC0] stringWithValidatedFormat:v45 validFormatSpecifiers:@"%@ %@" error:0, v47, v28, v55];
      }

      else
      {
        v45 = [v43 localizedStringForKey:@"ACCESS_SECONDARY_BODY_PLURAL_3+_FORMAT"];

        v52 = [(NSArray *)self->_appInfos firstObject];
        v47 = [v52 objectForKeyedSubscript:@"appName"];

        [MEMORY[0x1E696AEC0] stringWithValidatedFormat:v45 validFormatSpecifiers:@"%@ %d %@" error:0, v47, (v25 - 1), v28];
      }
      v51 = ;
    }

    v27 = v51;
  }

  [(VUIAccessView_iOS *)self->_accessView setSecondaryBody:v27];
  v53 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__handleMenuGesture_];
  [v53 setAllowedPressTypes:&unk_1F5E5EBC8];
  v54 = [(_VUIAccessViewController *)self view];
  [v54 addGestureRecognizer:v53];
}

- (void)_toggleLoadingScreen
{
  v7 = self->_loadingView;
  v3 = self->_accessView;
  if (([(VUIAppSpinnerView *)self->_loadingView isHidden]& 1) != 0)
  {
    v4 = v7;
  }

  else
  {
    v5 = self->_accessView;

    v6 = self->_loadingView;
    v4 = v5;
    v3 = v6;
  }

  v8 = v4;
  [MEMORY[0x1E69DD250] transitionFromView:v3 toView:v4 duration:5243136 options:0 completion:0.5];
}

- (void)_presentGenericErrorWithCompletion:(id)a3
{
  v4 = a3;
  v5 = +[VUILocalizationManager sharedInstance];
  v6 = [v5 localizedStringForKey:@"AccessUnknownErrorTitle"];
  v7 = +[VUILocalizationManager sharedInstance];
  v8 = [v7 localizedStringForKey:@"AccessUnknownErrorMessage"];
  v12 = [VUIAlertController vui_alertControllerWithTitle:v6 message:v8 preferredStyle:1];

  v9 = +[VUILocalizationManager sharedInstance];
  v10 = [v9 localizedStringForKey:@"AccessUnknownErrorButton"];
  v11 = [VUIAlertAction vui_actionWithTitle:v10 style:0 handler:0];

  [v12 vui_addAction:v11];
  [v12 vui_presentAlertFromPresentingController:self animated:1 completion:v4];
}

- (id)_imageForBundleID:(id)a3
{
  v3 = MEMORY[0x1E69DCEB0];
  v4 = a3;
  v5 = [v3 mainScreen];
  [v5 scale];
  v7 = v6;

  v8 = [MEMORY[0x1E69DCAB8] _applicationIconImageForBundleIdentifier:v4 format:2 scale:v7];

  return v8;
}

- (CGSize)_iconSize
{
  +[VUIAccessView_iOS iconSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)_fetchRemoteAppInfo
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = self->_appChannels;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = [v8 appBundleIDs];
        v10 = [v8 channelID];
        if (v10 && ([(NSMutableArray *)self->_channelIds containsObject:v10]& 1) == 0)
        {
          [(NSMutableArray *)self->_channelIds addObject:v10];
        }

        if ([v9 count])
        {
          [(NSMutableArray *)self->_bundleIDs addObjectsFromArray:v9];
        }
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  objc_initWeak(&location, self);
  v11 = dispatch_get_global_queue(0, 0);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __47___VUIAccessViewController__fetchRemoteAppInfo__block_invoke;
  v12[3] = &unk_1E872E4B8;
  objc_copyWeak(&v13, &location);
  dispatch_async(v11, v12);

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (id)_watchListAppIcon
{
  v3 = WLKTVAppBundleID();
  v4 = [(_VUIAccessViewController *)self _imageForBundleID:v3];

  return v4;
}

- (id)cappedTraitCollection
{
  v11[2] = *MEMORY[0x1E69E9840];
  if (cappedTraitCollection_onceToken != -1)
  {
    [_VUIAccessViewController cappedTraitCollection];
  }

  v3 = [(_VUIAccessViewController *)self traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if ([cappedTraitCollection_cappedSizes containsObject:v4])
  {
    v5 = MEMORY[0x1E69DD1B8];
    v6 = [(_VUIAccessViewController *)self traitCollection];
    v11[0] = v6;
    v7 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:*MEMORY[0x1E69DDC40]];
    v11[1] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
    v9 = [v5 traitCollectionWithTraitsFromCollections:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)preferredFocusEnvironments
{
  v10[1] = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = _VUIAccessViewController;
  v3 = [(_VUIAccessViewController *)&v9 preferredFocusEnvironments];
  v4 = [(VUIAccessView_iOS *)self->_accessView allowButton];
  v5 = v4;
  if (v4)
  {
    v10[0] = v4;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    v7 = [v6 arrayByAddingObjectsFromArray:v3];
  }

  else
  {
    v7 = v3;
  }

  return v7;
}

@end