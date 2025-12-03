@interface _VUIAccessViewController
+ (id)_channelIDFromBundleID:(id)d;
+ (id)_getChannelForBundleIDSynchronously:(id)synchronously;
+ (id)_getChannelIDForBundleIDSynchronously:(id)synchronously;
+ (id)getOrderedChannelsSynchronously;
- (CGSize)_iconSize;
- (_VUIAccessViewController)init;
- (_VUIAccessViewController)initWithBundleIDs:(id)ds channels:(id)channels consentCancelButtonType:(unint64_t)type options:(id)options completionHandler:(id)handler;
- (id)_imageForBundleID:(id)d;
- (id)_watchListAppIcon;
- (id)cappedTraitCollection;
- (id)preferredFocusEnvironments;
- (void)_allow:(id)_allow;
- (void)_completeWithStatus:(unint64_t)status;
- (void)_disallow:(id)_disallow;
- (void)_fetchRemoteAppInfo;
- (void)_handleMenuGesture:(id)gesture;
- (void)_handleNackButton:(id)button;
- (void)_handleSeeAllButton:(id)button;
- (void)_init;
- (void)_presentGenericErrorWithCompletion:(id)completion;
- (void)_setupAccessViews;
- (void)_setupNavigationBar;
- (void)_toggleLoadingScreen;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation _VUIAccessViewController

- (_VUIAccessViewController)initWithBundleIDs:(id)ds channels:(id)channels consentCancelButtonType:(unint64_t)type options:(id)options completionHandler:(id)handler
{
  dsCopy = ds;
  channelsCopy = channels;
  optionsCopy = options;
  handlerCopy = handler;
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

    if ([dsCopy count])
    {
      [(NSMutableArray *)v16->_bundleIDs addObjectsFromArray:dsCopy];
    }

    objc_storeStrong(&v16->_options, options);
    NSLog(&cfstr_Vuiaccessviewc.isa, v16->_options);
    v16->_consentCancelButtonType = type;
    objc_storeStrong(&v16->_channels, channels);
    v21 = [handlerCopy copy];
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

    defaultAppLibrary = [MEMORY[0x1E69E14D0] defaultAppLibrary];
    v7 = [(NSMutableArray *)self->_bundleIDs objectAtIndexedSubscript:0];
    v8 = [defaultAppLibrary localizedNameForBundle:v7];

    _watchListAppIcon = [(_VUIAccessViewController *)self _watchListAppIcon];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    appChannels = dictionary;
    if (v8)
    {
      [(NSArray *)dictionary setObject:v8 forKeyedSubscript:@"appName"];
    }

    if (_watchListAppIcon)
    {
      [(NSArray *)appChannels setObject:_watchListAppIcon forKeyedSubscript:@"appIcon"];
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
    array = [MEMORY[0x1E695DF70] array];
    array2 = [MEMORY[0x1E695DF70] array];
    defaultAppLibrary2 = [MEMORY[0x1E69E14D0] defaultAppLibrary];
    _watchListAppIcon = [defaultAppLibrary2 allAppBundleIdentifiers];

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
          if ([_watchListAppIcon containsObject:v18])
          {
            defaultAppLibrary3 = [MEMORY[0x1E69E14D0] defaultAppLibrary];
            v20 = [defaultAppLibrary3 localizedNameForBundle:v18];

            v21 = [(_VUIAccessViewController *)self _imageForBundleID:v18];
            dictionary2 = [MEMORY[0x1E695DF90] dictionary];
            v23 = dictionary2;
            if (v20)
            {
              [dictionary2 setObject:v20 forKeyedSubscript:@"appName"];
            }

            if (v21)
            {
              [v23 setObject:v21 forKeyedSubscript:@"appIcon"];
            }

            [array addObject:v23];
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
              mEMORY[0x1E69E1500] = [_VUIAccessViewController _getChannelForBundleIDSynchronously:v18];
              v26 = [objc_alloc(MEMORY[0x1E69E14F0]) initWithDictionary:mEMORY[0x1E69E1500]];
            }

            else
            {
              mEMORY[0x1E69E1500] = [MEMORY[0x1E69E1500] sharedInstance];
              v26 = [mEMORY[0x1E69E1500] channelForBundleID:v18];
            }

            v20 = v26;

            if (v20)
            {
              [array2 addObject:v20];
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

    v8 = array2;
    if (self->_channels)
    {
      [array2 addObjectsFromArray:?];
    }

    v5 = array;
    v27 = [array copy];
    v28 = self->_appInfos;
    self->_appInfos = v27;

    v29 = [array2 copy];
    appChannels = self->_appChannels;
    self->_appChannels = v29;
  }
}

+ (id)_channelIDFromBundleID:(id)d
{
  dCopy = d;
  if (_os_feature_enabled_impl())
  {
    v4 = [_VUIAccessViewController _getChannelIDForBundleIDSynchronously:dCopy];
  }

  else
  {
    mEMORY[0x1E69E1500] = [MEMORY[0x1E69E1500] sharedInstanceFiltered];
    v4 = [mEMORY[0x1E69E1500] channelIDForBundleID:dCopy];
  }

  return v4;
}

+ (id)_getChannelIDForBundleIDSynchronously:(id)synchronously
{
  if (synchronously)
  {
    v3 = [self _getChannelForBundleIDSynchronously:?];
    v4 = [v3 objectForKey:@"id"];
  }

  else
  {
    NSLog(&cfstr_Vuiaccessviewc_2.isa, a2);
    v4 = 0;
  }

  return v4;
}

+ (id)_getChannelForBundleIDSynchronously:(id)synchronously
{
  synchronouslyCopy = synchronously;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__39;
  v17 = __Block_byref_object_dispose__39;
  v18 = 0;
  if (synchronouslyCopy)
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
    [v5 getChannelForBundleID:synchronouslyCopy completion:v10];

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
  view = [(_VUIAccessViewController *)self view];
  [view addSubview:self->_loadingView];

  leadingAnchor = [(VUIAppSpinnerView *)self->_loadingView leadingAnchor];
  view2 = [(_VUIAccessViewController *)self view];
  leadingAnchor2 = [view2 leadingAnchor];
  v9 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v9 setActive:1];

  topAnchor = [(VUIAppSpinnerView *)self->_loadingView topAnchor];
  view3 = [(_VUIAccessViewController *)self view];
  topAnchor2 = [view3 topAnchor];
  v13 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v13 setActive:1];

  trailingAnchor = [(VUIAppSpinnerView *)self->_loadingView trailingAnchor];
  view4 = [(_VUIAccessViewController *)self view];
  trailingAnchor2 = [view4 trailingAnchor];
  v17 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v17 setActive:1];

  bottomAnchor = [(VUIAppSpinnerView *)self->_loadingView bottomAnchor];
  view5 = [(_VUIAccessViewController *)self view];
  bottomAnchor2 = [view5 bottomAnchor];
  v21 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
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

  view6 = [(_VUIAccessViewController *)self view];
  v25 = [MEMORY[0x1E69DF678] makeAccessibilityIdentifierString:*MEMORY[0x1E69DF7C8] additionalString:@"Library.id=Access"];
  [view6 setAccessibilityIdentifier:v25];
}

- (void)viewDidAppear:(BOOL)appear
{
  v15[1] = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = _VUIAccessViewController;
  [(_VUIAccessViewController *)&v11 viewDidAppear:appear];
  bodyScroll = [(VUIAccessView_iOS *)self->_accessView bodyScroll];
  [bodyScroll flashScrollIndicators];

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

- (void)_allow:(id)_allow
{
  v4 = [(NSDictionary *)self->_options objectForKeyedSubscript:@"requireVPPAStateUpdate"];
  bOOLValue = [v4 BOOLValue];

  if (bOOLValue)
  {
    mEMORY[0x1E69E1508] = [MEMORY[0x1E69E1508] sharedInstance];
    [mEMORY[0x1E69E1508] _invalidateCache];
  }

  navigationItem = [(_VUIAccessViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:0];

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

- (void)_disallow:(id)_disallow
{
  v13[3] = *MEMORY[0x1E69E9840];
  _disallowCopy = _disallow;
  [(_VUIAccessViewController *)self _toggleLoadingScreen];
  if (self->_shouldDenyOnCancel)
  {
    navigationItem = [(_VUIAccessViewController *)self navigationItem];
    [navigationItem setRightBarButtonItem:0];
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

- (void)_handleSeeAllButton:(id)button
{
  v11[3] = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(VUIAppsGridViewController);
  [(_VUIAccessViewController *)self _iconSize];
  [(VUIAppsGridViewController *)v4 setIconSize:?];
  [(VUIAppsGridViewController *)v4 setApps:self->_appInfos];
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 2)
  {
    [(_VUIAccessViewController *)self presentViewController:v4 animated:1 completion:0];
  }

  else
  {
    navigationController = [(_VUIAccessViewController *)self navigationController];
    [navigationController pushViewController:v4 animated:1];
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

- (void)_handleMenuGesture:(id)gesture
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

- (void)_handleNackButton:(id)button
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

- (void)_completeWithStatus:(unint64_t)status
{
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v6 = __48___VUIAccessViewController__completeWithStatus___block_invoke;
  v7 = &unk_1E8730340;
  objc_copyWeak(v8, &location);
  v8[1] = status;
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

  navigationItem = [(_VUIAccessViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v10];

  [v10 setAccessibilityIdentifier:@"UIA.TV.Button.access.disallow"];
}

- (void)_setupAccessViews
{
  v3 = [[VUIAccessView_iOS alloc] initWithApps:self->_appInfos];
  accessView = self->_accessView;
  self->_accessView = v3;

  [(VUIAccessView_iOS *)self->_accessView setTranslatesAutoresizingMaskIntoConstraints:0];
  view = [(_VUIAccessViewController *)self view];
  [view addSubview:self->_accessView];

  leadingAnchor = [(VUIAccessView_iOS *)self->_accessView leadingAnchor];
  view2 = [(_VUIAccessViewController *)self view];
  leadingAnchor2 = [view2 leadingAnchor];
  v9 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v9 setActive:1];

  topAnchor = [(VUIAccessView_iOS *)self->_accessView topAnchor];
  view3 = [(_VUIAccessViewController *)self view];
  topAnchor2 = [view3 topAnchor];
  v13 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v13 setActive:1];

  trailingAnchor = [(VUIAccessView_iOS *)self->_accessView trailingAnchor];
  view4 = [(_VUIAccessViewController *)self view];
  trailingAnchor2 = [view4 trailingAnchor];
  v17 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v17 setActive:1];

  bottomAnchor = [(VUIAccessView_iOS *)self->_accessView bottomAnchor];
  view5 = [(_VUIAccessViewController *)self view];
  bottomAnchor2 = [view5 bottomAnchor];
  v21 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v21 setActive:1];

  allowButton = [(VUIAccessView_iOS *)self->_accessView allowButton];
  [allowButton addTarget:self action:sel__allow_ forControlEvents:0x2000];

  seeAllButton = [(VUIAccessView_iOS *)self->_accessView seeAllButton];
  [seeAllButton addTarget:self action:sel__handleSeeAllButton_ forControlEvents:0x2000];

  nackButton = [(VUIAccessView_iOS *)self->_accessView nackButton];
  [nackButton addTarget:self action:sel__handleNackButton_ forControlEvents:0x2000];

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

      firstObject = [(NSArray *)self->_appInfos firstObject];
      v34 = [firstObject objectForKeyedSubscript:@"appName"];

      lastObject = [(NSArray *)self->_appInfos lastObject];
      v37 = [lastObject objectForKeyedSubscript:@"appName"];

      v38 = [MEMORY[0x1E696AEC0] stringWithValidatedFormat:v32 validFormatSpecifiers:@"%@ %@" error:0, v34, v37];

      v39 = v37;
    }

    else
    {
      if (v25 == 1)
      {
        v32 = [v30 localizedStringForKey:@"ACCESS_MAIN_TITLE_SINGULAR_FORMAT"];

        firstObject2 = [(NSArray *)self->_appInfos firstObject];
        v34 = [firstObject2 objectForKeyedSubscript:@"appName"];

        [MEMORY[0x1E696AEC0] stringWithValidatedFormat:v32 validFormatSpecifiers:@"%@" error:0, v34];
      }

      else
      {
        v32 = [v30 localizedStringForKey:@"ACCESS_MAIN_TITLE_PLURAL_3+_FORMAT"];

        firstObject3 = [(NSArray *)self->_appInfos firstObject];
        v34 = [firstObject3 objectForKeyedSubscript:@"appName"];

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

      firstObject4 = [(NSArray *)self->_appInfos firstObject];
      v47 = [firstObject4 objectForKeyedSubscript:@"appName"];

      lastObject2 = [(NSArray *)self->_appInfos lastObject];
      v50 = [lastObject2 objectForKeyedSubscript:@"appName"];

      v51 = [MEMORY[0x1E696AEC0] stringWithValidatedFormat:v45 validFormatSpecifiers:@"%@ %@ %@" error:0, v47, v50, v28];

      v27 = v50;
    }

    else
    {
      if (v25 == 1)
      {
        v45 = [v43 localizedStringForKey:@"ACCESS_SECONDARY_BODY_SINGULAR_FORMAT"];

        firstObject5 = [(NSArray *)self->_appInfos firstObject];
        v47 = [firstObject5 objectForKeyedSubscript:@"appName"];

        [MEMORY[0x1E696AEC0] stringWithValidatedFormat:v45 validFormatSpecifiers:@"%@ %@" error:0, v47, v28, v55];
      }

      else
      {
        v45 = [v43 localizedStringForKey:@"ACCESS_SECONDARY_BODY_PLURAL_3+_FORMAT"];

        firstObject6 = [(NSArray *)self->_appInfos firstObject];
        v47 = [firstObject6 objectForKeyedSubscript:@"appName"];

        [MEMORY[0x1E696AEC0] stringWithValidatedFormat:v45 validFormatSpecifiers:@"%@ %d %@" error:0, v47, (v25 - 1), v28];
      }
      v51 = ;
    }

    v27 = v51;
  }

  [(VUIAccessView_iOS *)self->_accessView setSecondaryBody:v27];
  v53 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__handleMenuGesture_];
  [v53 setAllowedPressTypes:&unk_1F5E5EBC8];
  view6 = [(_VUIAccessViewController *)self view];
  [view6 addGestureRecognizer:v53];
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

- (void)_presentGenericErrorWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[VUILocalizationManager sharedInstance];
  v6 = [v5 localizedStringForKey:@"AccessUnknownErrorTitle"];
  v7 = +[VUILocalizationManager sharedInstance];
  v8 = [v7 localizedStringForKey:@"AccessUnknownErrorMessage"];
  v12 = [VUIAlertController vui_alertControllerWithTitle:v6 message:v8 preferredStyle:1];

  v9 = +[VUILocalizationManager sharedInstance];
  v10 = [v9 localizedStringForKey:@"AccessUnknownErrorButton"];
  v11 = [VUIAlertAction vui_actionWithTitle:v10 style:0 handler:0];

  [v12 vui_addAction:v11];
  [v12 vui_presentAlertFromPresentingController:self animated:1 completion:completionCopy];
}

- (id)_imageForBundleID:(id)d
{
  v3 = MEMORY[0x1E69DCEB0];
  dCopy = d;
  mainScreen = [v3 mainScreen];
  [mainScreen scale];
  v7 = v6;

  v8 = [MEMORY[0x1E69DCAB8] _applicationIconImageForBundleIdentifier:dCopy format:2 scale:v7];

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
        appBundleIDs = [v8 appBundleIDs];
        channelID = [v8 channelID];
        if (channelID && ([(NSMutableArray *)self->_channelIds containsObject:channelID]& 1) == 0)
        {
          [(NSMutableArray *)self->_channelIds addObject:channelID];
        }

        if ([appBundleIDs count])
        {
          [(NSMutableArray *)self->_bundleIDs addObjectsFromArray:appBundleIDs];
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

  traitCollection = [(_VUIAccessViewController *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];

  if ([cappedTraitCollection_cappedSizes containsObject:preferredContentSizeCategory])
  {
    v5 = MEMORY[0x1E69DD1B8];
    traitCollection2 = [(_VUIAccessViewController *)self traitCollection];
    v11[0] = traitCollection2;
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
  preferredFocusEnvironments = [(_VUIAccessViewController *)&v9 preferredFocusEnvironments];
  allowButton = [(VUIAccessView_iOS *)self->_accessView allowButton];
  v5 = allowButton;
  if (allowButton)
  {
    v10[0] = allowButton;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    v7 = [v6 arrayByAddingObjectsFromArray:preferredFocusEnvironments];
  }

  else
  {
    v7 = preferredFocusEnvironments;
  }

  return v7;
}

@end