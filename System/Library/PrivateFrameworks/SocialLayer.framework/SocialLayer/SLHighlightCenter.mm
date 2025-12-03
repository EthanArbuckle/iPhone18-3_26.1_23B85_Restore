@interface SLHighlightCenter
+ (BOOL)_bundleIDExistsInPreferences:(id)preferences;
+ (BOOL)_isShareWithYouEnabled;
+ (BOOL)_isShareWithYouOnboarded;
+ (BOOL)isAutomaticSharingEnabled;
+ (BOOL)isEnabled;
+ (BOOL)isMessagesLocked;
+ (BOOL)isPhotosProcess;
+ (BOOL)shouldShowOnboardingShieldView;
+ (NSString)displayName;
+ (id)highlightCenterQueue;
+ (id)rapportClient;
+ (void)_checkAndInitializeBundleIDToAppPreferences:(id)preferences;
+ (void)_isShareWithYouEnabled;
+ (void)_isShareWithYouOnboarded;
+ (void)isAutomaticSharingEnabled;
+ (void)isEnabled;
+ (void)shouldShowOnboardingShieldViewForNearbyDevice:(id)device;
- (NSArray)highlights;
- (NSDate)latestHighlightDate;
- (NSString)displayName;
- (SLHighlightCenterAPIAdapting)apiAdapterDelegate;
- (SLHighlightCenterDelegate)delegate;
- (double)highlightsRankingScore;
- (id)_initWithAppIdentifier:(id)identifier apiAdapterDelegate:(id)delegate;
- (id)appIdentifierForHighlightsCache;
- (id)fetchAttributionForAttributionIdentifier:(id)identifier;
- (id)fetchAttributionsForHighlight:(id)highlight;
- (void)_fetchHighlightsWithLimit:(unint64_t)limit reason:(id)reason completionBlock:(id)block;
- (void)_legacyNotifyDelegateDidAddHighlights;
- (void)_legacyNotifyDelegateDidRemoveHighlights:(id)highlights;
- (void)_notifyAPIAdapterDelegateHighlightsChanged;
- (void)_registerNotifications;
- (void)appEnablementStateChanged;
- (void)appProtectionSubjectsChanged:(id)changed forSubscription:(id)subscription;
- (void)dealloc;
- (void)enablementStateChanged;
- (void)feedbackForHighlight:(id)highlight withType:(unint64_t)type completionBlock:(id)block;
- (void)fetchHighlights:(id)highlights;
- (void)fetchHighlightsWithLimit:(unint64_t)limit completionBlock:(id)block;
- (void)fetchHighlightsWithLimit:(unint64_t)limit reason:(id)reason completionBlock:(id)block;
- (void)highlightsRankingScore;
- (void)latestHighlightDate;
- (void)runAfterInitialFetch:(id)fetch onQueue:(id)queue;
- (void)setDelegate:(id)delegate;
- (void)updateHighlights;
@end

@implementation SLHighlightCenter

+ (BOOL)isAutomaticSharingEnabled
{
  if ([objc_opt_class() isEnabled] && objc_msgSend(objc_opt_class(), "_isShareWithYouEnabled"))
  {
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];

    if ([objc_opt_class() _bundleIDExistsInPreferences:bundleIdentifier])
    {
      v4 = CFPreferencesCopyAppValue(@"SharedWithYouApps", @"com.apple.SocialLayer");
      v5 = [v4 objectForKey:bundleIdentifier];
      bOOLValue = [v5 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }
  }

  else
  {
    bOOLValue = 0;
  }

  v7 = SLFrameworkLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    +[SLHighlightCenter isAutomaticSharingEnabled];
  }

  return bOOLValue;
}

+ (BOOL)isEnabled
{
  if ([self isMessagesLocked])
  {
    return 0;
  }

  _isShareWithYouOnboarded = [objc_opt_class() _isShareWithYouOnboarded];
  v3 = SLFrameworkLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    +[SLHighlightCenter isEnabled];
  }

  return _isShareWithYouOnboarded;
}

+ (BOOL)isMessagesLocked
{
  if (!_os_feature_enabled_impl() || ![self isPhotosProcess])
  {
    return 0;
  }

  v3 = [MEMORY[0x277CEBE80] applicationWithBundleIdentifier:@"com.apple.MobileSMS"];
  isLocked = [v3 isLocked];

  return isLocked;
}

+ (BOOL)isPhotosProcess
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  if ([bundleIdentifier isEqualToString:@"com.apple.mobileslideshow"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [bundleIdentifier isEqualToString:@"com.apple.mobileslideshow.PhotosReliveWidget"];
  }

  return v4;
}

+ (BOOL)_isShareWithYouOnboarded
{
  keyExistsAndHasValidFormat = 0;
  CFPreferencesGetAppBooleanValue(@"SharedWithYouEnabled", @"com.apple.SocialLayer", &keyExistsAndHasValidFormat);
  v2 = SLFrameworkLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    +[(SLHighlightCenter *)&keyExistsAndHasValidFormat];
  }

  return keyExistsAndHasValidFormat != 0;
}

- (id)appIdentifierForHighlightsCache
{
  interactionHandler = [(SLHighlightCenter *)self interactionHandler];
  appIdentifier = [interactionHandler appIdentifier];

  return appIdentifier;
}

- (NSArray)highlights
{
  highlightsCache = [(SLHighlightCenter *)self highlightsCache];
  highlights = [highlightsCache highlights];

  return highlights;
}

- (void)updateHighlights
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_registerNotifications
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = self;
  v2 = *MEMORY[0x277D85DE8];
}

void __41__SLHighlightCenter_highlightCenterQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.SocialLayer.HighlightCenterQueue", v2);
  v1 = highlightCenterQueue_queue;
  highlightCenterQueue_queue = v0;
}

+ (id)highlightCenterQueue
{
  if (highlightCenterQueue_onceToken != -1)
  {
    +[SLHighlightCenter highlightCenterQueue];
  }

  v3 = highlightCenterQueue_queue;

  return v3;
}

+ (NSString)displayName
{
  v2 = SLFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"SHARED_WITH_YOU" value:&stru_28468DAB8 table:@"SocialLayer"];

  return v3;
}

+ (BOOL)_bundleIDExistsInPreferences:(id)preferences
{
  preferencesCopy = preferences;
  v4 = CFPreferencesCopyAppValue(@"SharedWithYouApps", @"com.apple.SocialLayer");
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKey:preferencesCopy];

    v7 = v6 != 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (void)_checkAndInitializeBundleIDToAppPreferences:(id)preferences
{
  v14 = *MEMORY[0x277D85DE8];
  preferencesCopy = preferences;
  if (![preferencesCopy length])
  {
    v6 = SLFrameworkLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      +[SLHighlightCenter _checkAndInitializeBundleIDToAppPreferences:];
    }

    goto LABEL_14;
  }

  if (([self _isShareWithYouOnboarded] & 1) == 0)
  {
    v6 = SLFrameworkLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      +[SLHighlightCenter _checkAndInitializeBundleIDToAppPreferences:];
    }

    goto LABEL_14;
  }

  if (([objc_opt_class() _bundleIDExistsInPreferences:preferencesCopy] & 1) == 0)
  {
    v5 = CFPreferencesCopyAppValue(@"SharedWithYouApps", @"com.apple.SocialLayer");
    v6 = v5;
    if (v5)
    {
      dictionary = [v5 mutableCopy];
    }

    else
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
    }

    v8 = dictionary;
    v9 = SLFrameworkLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v12 = 138412290;
      v13 = preferencesCopy;
      _os_log_impl(&dword_231772000, v9, OS_LOG_TYPE_INFO, "Adding bundleID:%@ to the Shared With You Preferences", &v12, 0xCu);
    }

    v10 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(objc_opt_class(), "_isShareWithYouEnabled")}];
    [v8 setObject:v10 forKey:preferencesCopy];

    CFPreferencesSetAppValue(@"SharedWithYouApps", v8, @"com.apple.SocialLayer");
    CFPreferencesAppSynchronize(@"com.apple.SocialLayer");

LABEL_14:
  }

  v11 = *MEMORY[0x277D85DE8];
}

+ (BOOL)_isShareWithYouEnabled
{
  if (([self isMessagesLocked] & 1) == 0)
  {
    if ([self _isShareWithYouOnboarded])
    {
      v3 = CFPreferencesCopyAppValue(@"SharedWithYouEnabled", @"com.apple.SocialLayer");
      bOOLValue = [v3 BOOLValue];
      CFRelease(v3);
      return bOOLValue;
    }

    v6 = SLFrameworkLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      +[SLHighlightCenter _isShareWithYouEnabled];
    }
  }

  return 0;
}

+ (id)rapportClient
{
  if (rapportClient_onceToken != -1)
  {
    +[SLHighlightCenter rapportClient];
  }

  v3 = rapportClient_client;

  return v3;
}

uint64_t __34__SLHighlightCenter_rapportClient__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277D44160]);
  v1 = rapportClient_client;
  rapportClient_client = v0;

  v2 = [rapportClient_client controlFlags] | 6;
  v3 = rapportClient_client;

  return [v3 setControlFlags:v2];
}

+ (BOOL)shouldShowOnboardingShieldView
{
  if ([self isMessagesLocked])
  {
    return 0;
  }

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [standardUserDefaults BOOLForKey:@"com.apple.SocialLayer.OnboardingVersionSeen"];

  return v4 ^ 1;
}

+ (void)shouldShowOnboardingShieldViewForNearbyDevice:(id)device
{
  deviceCopy = device;
  if ([self shouldShowOnboardingShieldView])
  {
    rapportClient = [self rapportClient];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __67__SLHighlightCenter_shouldShowOnboardingShieldViewForNearbyDevice___block_invoke;
    v7[3] = &unk_278925DE0;
    v10 = 1;
    v8 = rapportClient;
    v9 = deviceCopy;
    v6 = rapportClient;
    [v6 activateWithCompletion:v7];
  }

  else
  {
    (*(deviceCopy + 2))(deviceCopy, 0);
  }
}

void __67__SLHighlightCenter_shouldShowOnboardingShieldViewForNearbyDevice___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = SLFrameworkLogHandle();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (v3)
  {
    if (v5)
    {
      __67__SLHighlightCenter_shouldShowOnboardingShieldViewForNearbyDevice___block_invoke_cold_1(v3);
    }
  }

  else if (v5)
  {
    __67__SLHighlightCenter_shouldShowOnboardingShieldViewForNearbyDevice___block_invoke_cold_2();
  }

  v6 = *(a1 + 40);
  if (*(a1 + 48))
  {
    v7 = [*(a1 + 32) sl_phoneAndPadDevices];
    (*(v6 + 16))(v6, [v7 count] != 0);
  }

  else
  {
    (*(v6 + 16))(*(a1 + 40), 0);
  }
}

- (id)_initWithAppIdentifier:(id)identifier apiAdapterDelegate:(id)delegate
{
  identifierCopy = identifier;
  delegateCopy = delegate;
  v27.receiver = self;
  v27.super_class = SLHighlightCenter;
  v8 = [(SLHighlightCenter *)&v27 init];
  if (v8)
  {
    v9 = [[SLInteractionHandler alloc] initWithAppIdentifier:identifierCopy];
    interactionHandler = v8->_interactionHandler;
    v8->_interactionHandler = v9;

    *&v8->_notificationTokenSettingsChanges = -1;
    highlights = v8->_highlights;
    v8->_highlights = MEMORY[0x277CBEBF8];

    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];

    if (([bundleIdentifier isEqualToString:@"com.apple.SLTester"] & 1) != 0 || objc_msgSend(bundleIdentifier, "containsString:", @"com.apple.sociallayer.GelatoTester"))
    {
      [SLHighlightCenter _checkAndInitializeBundleIDToAppPreferences:bundleIdentifier];
    }

    v14 = +[SLHighlightCenter SLVariantDefault];
    [(SLHighlightCenter *)v8 setVariant:v14];

    v15 = +[SLHighlightsCache sharedCache];
    [(SLHighlightCenter *)v8 setHighlightsCache:v15];

    highlightsCache = [(SLHighlightCenter *)v8 highlightsCache];
    [highlightsCache addDelegate:v8];

    highlightsCache2 = [(SLHighlightCenter *)v8 highlightsCache];
    highlights = [highlightsCache2 highlights];
    v19 = [highlights count];

    if (!v19)
    {
      highlightsCache3 = [(SLHighlightCenter *)v8 highlightsCache];
      [highlightsCache3 updateHighlights];
    }

    objc_storeWeak(&v8->_apiAdapterDelegate, delegateCopy);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__SLHighlightCenter__initWithAppIdentifier_apiAdapterDelegate___block_invoke;
    block[3] = &unk_278925D90;
    v21 = v8;
    v26 = v21;
    dispatch_async(MEMORY[0x277D85CD0], block);
    if (_os_feature_enabled_impl())
    {
      subjectMonitorRegistry = [MEMORY[0x277CEBEB8] subjectMonitorRegistry];
      v23 = [subjectMonitorRegistry addMonitor:v21 subjectMask:1];
    }
  }

  return v8;
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v6 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    highlights = [(SLHighlightCenter *)self highlights];
    v8 = [highlights count];

    if (v8)
    {
      _legacyNotifyDelegateDidAddHighlights = [(SLHighlightCenter *)self _legacyNotifyDelegateDidAddHighlights];
    }

    else
    {
      _legacyNotifyDelegateDidAddHighlights = [(SLHighlightCenter *)self updateHighlights];
    }

    v6 = obj;
  }

  MEMORY[0x2821F96F8](_legacyNotifyDelegateDidAddHighlights, v6);
}

- (NSDate)latestHighlightDate
{
  v16 = *MEMORY[0x277D85DE8];
  highlights = [(SLHighlightCenter *)self highlights];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [highlights countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(highlights);
        }

        [*(*(&v11 + 1) + 8 * i) timestamp];
      }

      v4 = [highlights countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v7 = SLFrameworkLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [SLHighlightCenter latestHighlightDate];
  }

  distantPast = [MEMORY[0x277CBEAA8] distantPast];

  v9 = *MEMORY[0x277D85DE8];

  return distantPast;
}

- (double)highlightsRankingScore
{
  v19 = *MEMORY[0x277D85DE8];
  highlights = [(SLHighlightCenter *)self highlights];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [highlights countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    v6 = 2.22507386e-308;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(highlights);
        }

        score = [*(*(&v14 + 1) + 8 * i) score];
        [score doubleValue];
        v10 = v9;

        if (v10 >= v6)
        {
          v6 = v10;
        }
      }

      v4 = [highlights countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = 2.22507386e-308;
  }

  v11 = SLFrameworkLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [SLHighlightCenter highlightsRankingScore];
  }

  v12 = *MEMORY[0x277D85DE8];
  return v6;
}

- (NSString)displayName
{
  v2 = objc_opt_class();

  return [v2 displayName];
}

void __43__SLHighlightCenter__registerNotifications__block_invoke(uint64_t a1)
{
  objc_copyWeak(&to, (a1 + 32));
  v1 = objc_loadWeakRetained(&to);
  [v1 enablementStateChanged];

  objc_destroyWeak(&to);
}

void __43__SLHighlightCenter__registerNotifications__block_invoke_154(uint64_t a1)
{
  objc_copyWeak(&to, (a1 + 32));
  v1 = objc_loadWeakRetained(&to);
  [v1 appEnablementStateChanged];

  objc_destroyWeak(&to);
}

- (void)enablementStateChanged
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)appEnablementStateChanged
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_notifyAPIAdapterDelegateHighlightsChanged
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__SLHighlightCenter__notifyAPIAdapterDelegateHighlightsChanged__block_invoke;
  block[3] = &unk_278925D90;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __63__SLHighlightCenter__notifyAPIAdapterDelegateHighlightsChanged__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) apiAdapterDelegate];

  if (v2)
  {
    v3 = SLFrameworkLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __63__SLHighlightCenter__notifyAPIAdapterDelegateHighlightsChanged__block_invoke_cold_1();
    }

    v4 = [*(a1 + 32) apiAdapterDelegate];
    [v4 apiAdapterHighlightsDidChange:*(a1 + 32)];
  }
}

- (void)_legacyNotifyDelegateDidAddHighlights
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__SLHighlightCenter__legacyNotifyDelegateDidAddHighlights__block_invoke;
  block[3] = &unk_278925D90;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __58__SLHighlightCenter__legacyNotifyDelegateDidAddHighlights__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (v2)
  {
    v3 = v2;
    v4 = [*(a1 + 32) delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = SLFrameworkLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        __58__SLHighlightCenter__legacyNotifyDelegateDidAddHighlights__block_invoke_cold_1();
      }

      v7 = [*(a1 + 32) delegate];
      [v7 highlightCenterDidAddHighlights:*(a1 + 32)];
    }
  }
}

- (void)_legacyNotifyDelegateDidRemoveHighlights:(id)highlights
{
  highlightsCopy = highlights;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __62__SLHighlightCenter__legacyNotifyDelegateDidRemoveHighlights___block_invoke;
  v6[3] = &unk_278925CF0;
  v6[4] = self;
  v7 = highlightsCopy;
  v5 = highlightsCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __62__SLHighlightCenter__legacyNotifyDelegateDidRemoveHighlights___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (v2)
  {
    v3 = v2;
    v4 = [*(a1 + 32) delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = SLFrameworkLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        __62__SLHighlightCenter__legacyNotifyDelegateDidRemoveHighlights___block_invoke_cold_1(a1);
      }

      v7 = [*(a1 + 32) delegate];
      [v7 highlightCenter:*(a1 + 32) didRemoveHighlights:*(a1 + 40)];
    }
  }
}

- (void)fetchHighlights:(id)highlights
{
  highlightsCopy = highlights;
  v5 = SLFrameworkLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_231772000, v5, OS_LOG_TYPE_DEFAULT, "Fetching highlights as a result of a legacy client calling", v6, 2u);
  }

  [(SLHighlightCenter *)self _fetchHighlightsWithLimit:0x7FFFFFFFFFFFFFFFLL reason:0 completionBlock:highlightsCopy];
}

- (void)fetchHighlightsWithLimit:(unint64_t)limit completionBlock:(id)block
{
  v11 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v7 = SLFrameworkLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134217984;
    limitCopy = limit;
    _os_log_impl(&dword_231772000, v7, OS_LOG_TYPE_DEFAULT, "Fetching highlights as a result of a legacy client calling with limit: %lu", &v9, 0xCu);
  }

  [(SLHighlightCenter *)self fetchHighlightsWithLimit:limit reason:0 completionBlock:blockCopy];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)fetchHighlightsWithLimit:(unint64_t)limit reason:(id)reason completionBlock:(id)block
{
  v17 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  reasonCopy = reason;
  v10 = SLFrameworkLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    limitCopy = limit;
    _os_log_impl(&dword_231772000, v10, OS_LOG_TYPE_DEFAULT, "Fetching highlights as a result of a legacy client calling with limit: %lu", buf, 0xCu);
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __69__SLHighlightCenter_fetchHighlightsWithLimit_reason_completionBlock___block_invoke;
  v13[3] = &unk_278925E30;
  v14 = blockCopy;
  v11 = blockCopy;
  [(SLHighlightCenter *)self _fetchHighlightsWithLimit:limit reason:reasonCopy completionBlock:v13];

  v12 = *MEMORY[0x277D85DE8];
}

void __69__SLHighlightCenter_fetchHighlightsWithLimit_reason_completionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  [v6 count];
  (*(*(a1 + 32) + 16))();
}

- (void)_fetchHighlightsWithLimit:(unint64_t)limit reason:(id)reason completionBlock:(id)block
{
  blockCopy = block;
  reasonCopy = reason;
  v10 = SLFrameworkLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_231772000, v10, OS_LOG_TYPE_DEFAULT, "Fetch highlights with limit from SLHighlightCenter", buf, 2u);
  }

  highlightsCache = [(SLHighlightCenter *)self highlightsCache];
  variant = [(SLHighlightCenter *)self variant];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __70__SLHighlightCenter__fetchHighlightsWithLimit_reason_completionBlock___block_invoke;
  v14[3] = &unk_278925E58;
  v14[4] = self;
  v15 = blockCopy;
  v13 = blockCopy;
  [highlightsCache fetchHighlightsWithLimit:limit reason:reasonCopy variant:variant completionBlock:v14];
}

void __70__SLHighlightCenter__fetchHighlightsWithLimit_reason_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 highlights];
  (*(v2 + 16))(v2, v5, v4);
}

- (void)runAfterInitialFetch:(id)fetch onQueue:(id)queue
{
  queueCopy = queue;
  fetchCopy = fetch;
  highlightsCache = [(SLHighlightCenter *)self highlightsCache];
  [highlightsCache runAfterInitialFetch:fetchCopy onQueue:queueCopy];
}

- (id)fetchAttributionsForHighlight:(id)highlight
{
  v28 = *MEMORY[0x277D85DE8];
  highlightCopy = highlight;
  attributions = [highlightCopy attributions];
  v6 = [attributions count];

  if (v6)
  {
    v7 = MEMORY[0x277CBEB18];
    attributions2 = [highlightCopy attributions];
    v9 = [v7 arrayWithCapacity:{objc_msgSend(attributions2, "count")}];

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    attributions3 = [highlightCopy attributions];
    v11 = [attributions3 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v24;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v24 != v13)
          {
            objc_enumerationMutation(attributions3);
          }

          v15 = *(*(&v23 + 1) + 8 * i);
          interactionHandler = [(SLHighlightCenter *)self interactionHandler];
          uniqueIdentifier = [v15 uniqueIdentifier];
          v18 = [interactionHandler fetchAttributionForAttributionIdentifier:uniqueIdentifier];

          if (v18)
          {
            [v9 addObject:v18];
          }
        }

        v12 = [attributions3 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v12);
    }

    v19 = SLFrameworkLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      [(SLHighlightCenter *)v9 fetchAttributionsForHighlight:highlightCopy];
    }

    v20 = [v9 copy];
    [highlightCopy setAttributions:v20];
  }

  else
  {
    v9 = SLFrameworkLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(SLHighlightCenter *)highlightCopy fetchAttributionsForHighlight:v9];
    }
  }

  v21 = *MEMORY[0x277D85DE8];

  return highlightCopy;
}

- (id)fetchAttributionForAttributionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = SLGeneralTelemetryLogHandle();
  v6 = os_signpost_id_generate(v5);

  v7 = SLGeneralTelemetryLogHandle();
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_231772000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "SLHighlightCenterFetchAttributionWithIdentifier", "", buf, 2u);
  }

  interactionHandler = [(SLHighlightCenter *)self interactionHandler];
  v10 = [interactionHandler fetchAttributionForAttributionIdentifier:identifierCopy];

  v11 = SLFrameworkLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [SLHighlightCenter fetchAttributionForAttributionIdentifier:];
  }

  v12 = SLGeneralTelemetryLogHandle();
  v13 = v12;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *v15 = 0;
    _os_signpost_emit_with_name_impl(&dword_231772000, v13, OS_SIGNPOST_INTERVAL_END, v6, "SLHighlightCenterFetchAttributionWithIdentifier", "", v15, 2u);
  }

  return v10;
}

- (void)feedbackForHighlight:(id)highlight withType:(unint64_t)type completionBlock:(id)block
{
  highlightCopy = highlight;
  blockCopy = block;
  v10 = SLFrameworkLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [SLHighlightCenter feedbackForHighlight:withType:completionBlock:];
  }

  interactionHandler = [(SLHighlightCenter *)self interactionHandler];
  identifier = [highlightCopy identifier];
  variant = [(SLHighlightCenter *)self variant];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __67__SLHighlightCenter_feedbackForHighlight_withType_completionBlock___block_invoke;
  v16[3] = &unk_278925E80;
  v17 = highlightCopy;
  selfCopy = self;
  v19 = blockCopy;
  typeCopy = type;
  v14 = blockCopy;
  v15 = highlightCopy;
  [interactionHandler feedbackForHighlightIdentifier:identifier withType:type variant:variant completionBlock:v16];
}

void __67__SLHighlightCenter_feedbackForHighlight_withType_completionBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = SLFrameworkLogHandle();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (!a2)
  {
    if (v7)
    {
      v9 = [*(a1 + 32) identifier];
      v12 = 138412546;
      v13 = v9;
      v14 = 2112;
      v15 = v5;
      _os_log_impl(&dword_231772000, v6, OS_LOG_TYPE_INFO, "Error registering feedback for Highlight: %@. Error: %@", &v12, 0x16u);
    }

    goto LABEL_8;
  }

  if (v7)
  {
    v8 = [*(a1 + 32) identifier];
    v12 = 138412290;
    v13 = v8;
    _os_log_impl(&dword_231772000, v6, OS_LOG_TYPE_INFO, "Feedback for Highlight: %@ was successfully registered", &v12, 0xCu);
  }

  if (*(a1 + 56) == 2)
  {
    v6 = [*(a1 + 40) highlightsCache];
    [v6 didDeleteHighlightsOrAttributions];
LABEL_8:
  }

  v10 = *(a1 + 48);
  if (v10)
  {
    (*(v10 + 16))(v10, a2, v5);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)appProtectionSubjectsChanged:(id)changed forSubscription:(id)subscription
{
  v19 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [changedCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(changedCopy);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          bundleIdentifier = [v10 bundleIdentifier];
          v12 = [bundleIdentifier isEqual:@"com.apple.MobileSMS"];

          if (v12)
          {
            [(SLHighlightCenter *)self enablementStateChanged];
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [changedCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (SLHighlightCenterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SLHighlightCenterAPIAdapting)apiAdapterDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_apiAdapterDelegate);

  return WeakRetained;
}

+ (void)isEnabled
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)isAutomaticSharingEnabled
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)_checkAndInitializeBundleIDToAppPreferences:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)_checkAndInitializeBundleIDToAppPreferences:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)_isShareWithYouEnabled
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)_isShareWithYouOnboarded
{
  v7 = *MEMORY[0x277D85DE8];
  *self;
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void __67__SLHighlightCenter_shouldShowOnboardingShieldViewForNearbyDevice___block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __67__SLHighlightCenter_shouldShowOnboardingShieldViewForNearbyDevice___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)latestHighlightDate
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)highlightsRankingScore
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __63__SLHighlightCenter__notifyAPIAdapterDelegateHighlightsChanged__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __58__SLHighlightCenter__legacyNotifyDelegateDidAddHighlights__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __62__SLHighlightCenter__legacyNotifyDelegateDidRemoveHighlights___block_invoke_cold_1(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [*(a1 + 40) count];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)fetchAttributionsForHighlight:(void *)a1 .cold.1(void *a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  [a1 count];
  v9 = [a2 identifier];
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)fetchAttributionsForHighlight:(void *)a1 .cold.2(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 identifier];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(&dword_231772000, a2, OS_LOG_TYPE_ERROR, "No attributions in highlight with identifier %@", v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)fetchAttributionForAttributionIdentifier:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)feedbackForHighlight:withType:completionBlock:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end