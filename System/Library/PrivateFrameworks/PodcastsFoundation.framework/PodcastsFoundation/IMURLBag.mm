@interface IMURLBag
+ (id)sharedInstance;
+ (void)registerBagKeys:(id)keys;
- (BOOL)isExpired;
- (IMURLBag)init;
- (NSDate)expirationDate;
- (NSString)profile;
- (NSString)profileVersion;
- (id)BOOLForKey:(id)key;
- (id)URLForKey:(id)key;
- (id)arrayForKey:(id)key;
- (id)backgroundFetchInterval;
- (id)bag;
- (id)batchFeedFetchIsEnabled;
- (id)batchFeedFetchOnPushRolloutPercentage;
- (id)coldStartLandOnListenNow;
- (id)commerceMusicSubscriptionInfoUrl;
- (id)commerceOAuthCancellationUrl;
- (id)commerceOAuthVerificationUrl;
- (id)dictionaryForKey:(id)key;
- (id)doubleForKey:(id)key;
- (id)fetchCategoriesSyncThresholdValue;
- (id)fetchMusicSubscriptionThresholdValue;
- (id)includeEntitlementsContent;
- (id)integerForKey:(id)key;
- (id)languageTag;
- (id)libraryShowFetchThreshold;
- (id)mediaTaskCountryCode;
- (id)mescalCertificateURL;
- (id)mescalSetupURL;
- (id)mescalSignSapRequests;
- (id)mescalSignSapResponses;
- (id)mescalSignedActions;
- (id)metricsDictionary;
- (id)metricsFastImpressionTimeout;
- (id)metricsImpressionableThreshold;
- (id)metricsImpressionableViewablePercentage;
- (id)metricsSamplingPercentageUsersLog;
- (id)metricsSessionDurationLog;
- (id)metricsURL;
- (id)personalizedChannelPollingInterval;
- (id)personalizedLookupURL;
- (id)podcastsMediaAPIHostUrl;
- (id)reportAConcernURL;
- (id)storefrontSupportsColdStart;
- (id)stringForKey:(id)key;
- (id)syncStringForKey:(id)key;
- (id)syncValueForKey:(id)key;
- (id)tokenServiceUrl;
- (id)transcriptCensorWords;
- (id)trustedDomains;
- (id)unpersonalizedLookupURL;
- (unint64_t)explicitContentBadgeTreatment;
- (void)_registerBagKeysIfNeeded;
- (void)createSnapshotWithCompletion:(id)completion;
- (void)reportAConcernURLWithCompletion:(id)completion;
- (void)scheduleBagUpdateOnDate:(id)date;
- (void)updateBagOnCurrentQueue;
- (void)updateWithNewBag:(id)bag;
@end

@implementation IMURLBag

void __26__IMURLBag_sharedInstance__block_invoke(uint64_t a1)
{
  v3.receiver = *(a1 + 32);
  v3.super_class = &OBJC_METACLASS___IMURLBag;
  v1 = [objc_msgSendSuper2(&v3 allocWithZone_];
  v2 = sharedInstance_instance;
  sharedInstance_instance = v1;
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __26__IMURLBag_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken_0 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_0, block);
  }

  v2 = sharedInstance_instance;

  return v2;
}

- (void)updateBagOnCurrentQueue
{
  if (os_feature_enabled_bag_snapshot_overlay())
  {
    objc_initWeak(&location, self);
    liveBag = [(IMURLBag *)self liveBag];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __35__IMURLBag_updateBagOnCurrentQueue__block_invoke;
    v4[3] = &unk_1E856AFE0;
    objc_copyWeak(&v5, &location);
    [liveBag createSnapshotWithCompletion:v4];

    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

void __16__IMURLBag_init__block_invoke(uint64_t a1)
{
  [*(a1 + 32) updateBagOnCurrentQueue];
  v2 = [MEMORY[0x1E698CA60] networkConstraintsForMediaType:@"podcast" withBag:*(a1 + 32)];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __16__IMURLBag_init__block_invoke_2;
  v6[3] = &unk_1E856AF90;
  v7 = *(a1 + 32);
  [v2 addFinishBlock:v6];

  v3 = [MEMORY[0x1E698CA60] networkConstraintsForMediaType:@"videoPodcast" withBag:*(a1 + 32)];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __16__IMURLBag_init__block_invoke_3;
  v4[3] = &unk_1E856AF90;
  v5 = *(a1 + 32);
  [v3 addFinishBlock:v4];
}

- (id)bag
{
  if (os_feature_enabled_bag_snapshot_overlay())
  {
    currentSnapshot = [(IMURLBag *)self currentSnapshot];
    v4 = currentSnapshot;
    if (currentSnapshot)
    {
      liveBag = currentSnapshot;
    }

    else
    {
      liveBag = [(IMURLBag *)self liveBag];
    }

    liveBag2 = liveBag;
  }

  else
  {
    liveBag2 = [(IMURLBag *)self liveBag];
  }

  return liveBag2;
}

- (IMURLBag)init
{
  v16.receiver = self;
  v16.super_class = IMURLBag;
  v2 = [(IMURLBag *)&v16 init];
  v3 = v2;
  if (v2)
  {
    [(IMURLBag *)v2 _registerBagKeysIfNeeded];
    if (+[PFClientUtil isThinJetApp])
    {
      v4 = [objc_alloc(MEMORY[0x1E698CAC8]) initWithBundleIdentifier:@"com.apple.podcasts"];
    }

    else
    {
      v4 = 0;
    }

    v5 = MEMORY[0x1E698C7D8];
    v6 = +[PFClientUtil bagProfileName];
    v7 = +[PFClientUtil bagProfileVersion];
    v8 = [v5 bagForProfile:v6 profileVersion:v7 processInfo:v4];
    liveBag = v3->_liveBag;
    v3->_liveBag = v8;

    v10 = dispatch_queue_create("IMURLBag", 0);
    queue = v3->_queue;
    v3->_queue = v10;

    *&v3->_downloadLimitPodcast = vdupq_n_s64(0xBEBC200uLL);
    v3->_libraryShowFetchThresholdDefaultValue = 60.0;
    v12 = v3->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __16__IMURLBag_init__block_invoke;
    block[3] = &unk_1E8568E28;
    v15 = v3;
    dispatch_async(v12, block);
  }

  return v3;
}

- (id)metricsDictionary
{
  v2 = [(IMURLBag *)self bag];
  v3 = [v2 dictionaryForKey:@"metrics"];

  return v3;
}

- (void)_registerBagKeysIfNeeded
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__IMURLBag__registerBagKeysIfNeeded__block_invoke;
  block[3] = &unk_1E8568E28;
  block[4] = self;
  if (_registerBagKeysIfNeeded_onceToken != -1)
  {
    dispatch_once(&_registerBagKeysIfNeeded_onceToken, block);
  }
}

void __36__IMURLBag__registerBagKeysIfNeeded__block_invoke(uint64_t a1)
{
  v35 = objc_alloc_init(IMMutableBagKeySet);
  [(AMSMutableBagKeySet *)v35 addBagKey:@"js-app-url" valueType:5];
  [(AMSMutableBagKeySet *)v35 addBagKey:@"language" valueType:4];
  [(AMSMutableBagKeySet *)v35 addBagKey:@"fetch-timeout" valueType:2];
  [(IMMutableBagKeySet *)v35 addBagKey:@"ExplicitContentBadgeTreatment" valueType:4 defaultValue:&stru_1F548B930];
  [(AMSMutableBagKeySet *)v35 addBagKey:@"search" valueType:4];
  [(AMSMutableBagKeySet *)v35 addBagKey:@"searchHints" valueType:4];
  [(AMSMutableBagKeySet *)v35 addBagKey:@"podcasts" valueType:5];
  [(IMMutableBagKeySet *)v35 addBagKey:@"viewPodcast" valueType:5 defaultValue:@"https://podcasts.apple.com/podcast"];
  [(AMSMutableBagKeySet *)v35 addBagKey:@"appletv-view-top-url" valueType:5];
  [(AMSMutableBagKeySet *)v35 addBagKey:@"library-link" valueType:5];
  [(AMSMutableBagKeySet *)v35 addBagKey:@"showSearchTranscriptMessage" valueType:1];
  [(AMSMutableBagKeySet *)v35 addBagKey:@"ListenNowStoreShelvesThrottleInterval" valueType:2];
  [(AMSMutableBagKeySet *)v35 addBagKey:@"followedShowsMetricsCadence" valueType:4];
  v2 = MEMORY[0x1E696AD98];
  +[MTPodcast defaultUpdateInterval];
  v3 = [v2 numberWithDouble:?];
  [(IMMutableBagKeySet *)v35 addBagKey:@"podcast-skip-feed-update-interval-seconds" valueType:2 defaultValue:v3];

  [(IMMutableBagKeySet *)v35 addBagKey:@"podcast-upp-sync-interval-seconds" valueType:2 defaultValue:&unk_1F54BE120];
  [(IMMutableBagKeySet *)v35 addBagKey:@"podcast-old-feed-update-processor-interval-in-seconds" valueType:2 defaultValue:&unk_1F54BDEF8];
  [(AMSMutableBagKeySet *)v35 addBagKey:@"forgottenPassword" valueType:5];
  [(AMSMutableBagKeySet *)v35 addBagKey:@"modifyAccount" valueType:5];
  [(AMSMutableBagKeySet *)v35 addBagKey:@"AddFundsUrl" valueType:5];
  [(AMSMutableBagKeySet *)v35 addBagKey:@"manageSubscriptionsV2Url" valueType:5];
  v4 = [MEMORY[0x1E695DFF8] URLWithString:@"https://buy.itunes.apple.com/WebObjects/MZFinance.woa/wa/signupWizard"];
  [(IMMutableBagKeySet *)v35 addBagKey:@"signup" valueType:5 defaultValue:v4];

  [(AMSMutableBagKeySet *)v35 addBagKey:@"metrics/metricsUrl" valueType:5];
  [(AMSMutableBagKeySet *)v35 addBagKey:@"metrics" valueType:6];
  [(AMSMutableBagKeySet *)v35 addBagKey:@"metrics/performance/samplingPercentageUsersLog" valueType:2];
  [(AMSMutableBagKeySet *)v35 addBagKey:@"metrics/performance/sessionDurationLog" valueType:2];
  [(AMSMutableBagKeySet *)v35 addBagKey:@"metrics/impressions/viewableThreshold" valueType:2];
  [(AMSMutableBagKeySet *)v35 addBagKey:@"metrics/impressions/viewablePercentage" valueType:2];
  [(AMSMutableBagKeySet *)v35 addBagKey:@"metrics/postFrequencyLowLatency" valueType:2];
  [(AMSMutableBagKeySet *)v35 addBagKey:@"sign-sap-setup-cert" valueType:5];
  [(AMSMutableBagKeySet *)v35 addBagKey:@"sign-sap-setup" valueType:5];
  [(AMSMutableBagKeySet *)v35 addBagKey:@"signed-actions" valueType:6];
  [(AMSMutableBagKeySet *)v35 addBagKey:@"sign-sap-request" valueType:6];
  [(AMSMutableBagKeySet *)v35 addBagKey:@"sign-sap-response" valueType:6];
  [(AMSMutableBagKeySet *)v35 addBagKey:@"storeplatform-lookup-url" valueType:5];
  [(AMSMutableBagKeySet *)v35 addBagKey:@"storeplatform-lookup-url-unpersonalized" valueType:5];
  [(AMSMutableBagKeySet *)v35 addBagKey:@"trustedDomains" valueType:0];
  v5 = [MEMORY[0x1E695DFF8] URLWithString:@"amp-api.podcasts.apple.com"];
  [(IMMutableBagKeySet *)v35 addBagKey:@"podcasts-media-api-host" valueType:5 defaultValue:v5];

  [(IMMutableBagKeySet *)v35 addBagKey:@"countryCode" valueType:4 defaultValue:@"us"];
  v6 = [MEMORY[0x1E695DFF8] URLWithString:@"https://sf-api-token-service.itunes.apple.com/apiToken/"];
  [(IMMutableBagKeySet *)v35 addBagKey:@"sf-api-token-service-url" valueType:5 defaultValue:v6];

  [(IMMutableBagKeySet *)v35 addBagKey:@"channelSubsCacheTTL" valueType:2 defaultValue:&unk_1F54BE130];
  [(IMMutableBagKeySet *)v35 addBagKey:@"token-service-backoff-interval" valueType:2 defaultValue:&unk_1F54BE140];
  [(IMMutableBagKeySet *)v35 addBagKey:@"token-service-backoff-max" valueType:2 defaultValue:&unk_1F54BE150];
  v7 = MEMORY[0x1E695E118];
  [(IMMutableBagKeySet *)v35 addBagKey:@"token-service-enabled" valueType:1 defaultValue:MEMORY[0x1E695E118]];
  [(IMMutableBagKeySet *)v35 addBagKey:@"token-service-refresh-percentage" valueType:2 defaultValue:&unk_1F54BE160];
  [(IMMutableBagKeySet *)v35 addBagKey:@"token-service-refresh-time" valueType:2 defaultValue:&unk_1F54BDF10];
  v8 = [MEMORY[0x1E695DFF8] URLWithString:@"https://s.mzstatic.com/sap/fps-prod.crt"];
  [(IMMutableBagKeySet *)v35 addBagKey:@"fps-cert" valueType:5 defaultValue:v8];

  v9 = [MEMORY[0x1E695DFF8] URLWithString:@"https://play.itunes.apple.com/WebObjects/MZPlay.woa/podcast/hls/license/streaming/start"];
  [(IMMutableBagKeySet *)v35 addBagKey:@"podcasts-license-streaming-start" valueType:5 defaultValue:v9];

  v10 = [MEMORY[0x1E695DFF8] URLWithString:@"https://play.itunes.apple.com/WebObjects/MZPlay.woa/podcast/hls/license/streaming/renew"];
  [(IMMutableBagKeySet *)v35 addBagKey:@"podcasts-license-streaming-renew" valueType:5 defaultValue:v10];

  v11 = [MEMORY[0x1E695DFF8] URLWithString:@"https://play.itunes.apple.com/WebObjects/MZPlay.woa/podcast/hls/license/streaming/stop"];
  [(IMMutableBagKeySet *)v35 addBagKey:@"podcasts-license-streaming-stop" valueType:5 defaultValue:v11];

  v12 = [MEMORY[0x1E695DFF8] URLWithString:@"https://play.itunes.apple.com/WebObjects/MZPlay.woa/podcast/hls/license/offline/start"];
  [(IMMutableBagKeySet *)v35 addBagKey:@"podcasts-license-offline-start" valueType:5 defaultValue:v12];

  v13 = [MEMORY[0x1E695DFF8] URLWithString:@"https://play.itunes.apple.com/WebObjects/MZPlay.woa/podcast/hls/license/offline/renew"];
  [(IMMutableBagKeySet *)v35 addBagKey:@"podcasts-license-offline-renew" valueType:5 defaultValue:v13];

  v14 = [MEMORY[0x1E695DFF8] URLWithString:@"https://play.itunes.apple.com/WebObjects/MZPlay.woa/podcast/hls/license/offline/stop"];
  [(IMMutableBagKeySet *)v35 addBagKey:@"podcasts-license-offline-stop" valueType:5 defaultValue:v14];

  v15 = [MEMORY[0x1E695DFF8] URLWithString:@"https://play.itunes.apple.com/WebObjects/MZPlay.woa/podcast/hls/license/offline/stop/nonce"];
  [(IMMutableBagKeySet *)v35 addBagKey:@"podcasts-license-offline-stop-nonce" valueType:5 defaultValue:v15];

  [(IMMutableBagKeySet *)v35 addBagKey:@"fairplay-v2-enabled" valueType:1 defaultValue:v7];
  [(IMMutableBagKeySet *)v35 addBagKey:@"fairplay-v2-rollout-rate" valueType:2 defaultValue:&unk_1F54BE170];
  v16 = [MEMORY[0x1E695DFF8] URLWithString:@"https://buy.itunes.apple.com/WebObjects/MZBuy.woa/wa/buyProduct"];
  [(IMMutableBagKeySet *)v35 addBagKey:@"buyProduct" valueType:5 defaultValue:v16];

  v17 = [MEMORY[0x1E695DFF8] URLWithString:@"https://p2-buy.itunes.apple.com/WebObjects/MZBuy.woa/wa/buyProduct"];
  [(IMMutableBagKeySet *)v35 addBagKey:@"p2-in-app-buy" valueType:5 defaultValue:v17];

  [(IMMutableBagKeySet *)v35 addBagKey:@"commerce-ui-urls/url-patterns" valueType:0 defaultValue:&unk_1F54BE0C0];
  [(IMMutableBagKeySet *)v35 addBagKey:@"commerce-ui-urls/v2-url-patterns" valueType:0 defaultValue:&unk_1F54BE0D8];
  [(IMMutableBagKeySet *)v35 addBagKey:@"commerce-ui-urls/dynamic-url-patterns" valueType:0 defaultValue:&unk_1F54BE0F0];
  v18 = [MEMORY[0x1E695DFF8] URLWithString:@"https://finance-app.itunes.apple.com/account/manage-payments?=mtPageRef=BE-IAB"];
  [(IMMutableBagKeySet *)v35 addBagKey:@"paymentInformationUrl" valueType:5 defaultValue:v18];

  [(IMMutableBagKeySet *)v35 addBagKey:@"podcast-implicitly-followed-shows-limit" valueType:3 defaultValue:&unk_1F54BDF28];
  v19 = MEMORY[0x1E696AD98];
  +[MTPodcast defaultUpdateInterval];
  v20 = [v19 numberWithDouble:?];
  [(IMMutableBagKeySet *)v35 addBagKey:@"podcast-skip-feed-update-interval-seconds" valueType:2 defaultValue:v20];

  [(IMMutableBagKeySet *)v35 addBagKey:@"podcast-old-feed-update-processor-interval-in-seconds" valueType:2 defaultValue:&unk_1F54BDEF8];
  [(IMMutableBagKeySet *)v35 addBagKey:@"podcast-foreground-show-feed-update-threshold-in-seconds" valueType:2 defaultValue:&unk_1F54BDF40];
  [(IMMutableBagKeySet *)v35 addBagKey:@"podcast-feed-update-interval-seconds" valueType:2 defaultValue:&unk_1F54BDF58];
  [(IMMutableBagKeySet *)v35 addBagKey:@"podcasts-oauth-redirect-url" valueType:4 defaultValue:@"https://oauth.link.apple.com/api/v1/client/redirect/{oauth-adam-id}"];
  [(IMMutableBagKeySet *)v35 addBagKey:@"podcasts-oauth-revoke-subscription-url" valueType:4 defaultValue:@"https://oauth.link.apple.com/api/v1/revoke/subscription/{oauth-adam-id}"];
  [(AMSMutableBagKeySet *)v35 addBagKey:@"play-activity-feed-metadata" valueType:5];
  [(IMMutableBagKeySet *)v35 addBagKey:@"podcasts-music-subs-info-interval-in-seconds" valueType:2 defaultValue:&unk_1F54BDF70];
  [(IMMutableBagKeySet *)v35 addBagKey:@"podcasts-entitlements" valueType:1 defaultValue:v7];
  [(IMMutableBagKeySet *)v35 addBagKey:@"podcasts-category-sync-threshold-interval-seconds" valueType:2 defaultValue:&unk_1F54BDF88];
  v21 = [MEMORY[0x1E696AD98] numberWithDouble:60.0];
  [(IMMutableBagKeySet *)v35 addBagKey:@"podcast-library-show-feed-update-threshold-in-seconds" valueType:2 defaultValue:v21];
  [(AMSMutableBagKeySet *)v35 addBagKey:@"guid-urls/regex" valueType:0];
  [(AMSMutableBagKeySet *)v35 addBagKey:@"guid-urls/schemes" valueType:0];
  [(AMSMutableBagKeySet *)v35 addBagKey:@"pushNotificationSettings" valueType:6];
  [(AMSMutableBagKeySet *)v35 addBagKey:@"podcast-catalog" valueType:1];
  [(AMSMutableBagKeySet *)v35 addBagKey:@"upp-polling-interval-secs" valueType:3];
  [(AMSMutableBagKeySet *)v35 addBagKey:@"podcast-lookup-url" valueType:5];
  [(AMSMutableBagKeySet *)v35 addBagKey:@"podcast-genres-tree" valueType:5];
  [(AMSMutableBagKeySet *)v35 addBagKey:@"podcast-dzc-auto-download-url" valueType:5];
  [(AMSMutableBagKeySet *)v35 addBagKey:@"podcast-dzc-download-url" valueType:5];
  [(AMSMutableBagKeySet *)v35 addBagKey:@"podcast-dzc-enclosure-url" valueType:5];
  [(AMSMutableBagKeySet *)v35 addBagKey:@"podcast-dzc-material-delete-url" valueType:5];
  [(AMSMutableBagKeySet *)v35 addBagKey:@"podcast-dzc-stream-url" valueType:5];
  [(AMSMutableBagKeySet *)v35 addBagKey:@"podcast-dzc-subscribe-podcast" valueType:5];
  [(AMSMutableBagKeySet *)v35 addBagKey:@"podcast-dzc-browse-url" valueType:5];
  [(AMSMutableBagKeySet *)v35 addBagKey:@"kvs-getall" valueType:5];
  [(AMSMutableBagKeySet *)v35 addBagKey:@"kvs-putall" valueType:5];
  [(AMSMutableBagKeySet *)v35 addBagKey:@"p2-podcasts-search" valueType:5];
  v22 = [MEMORY[0x1E695DFF8] URLWithString:@"itms://itunes.com/welcometopodcasts"];
  [(IMMutableBagKeySet *)v35 addBagKey:@"podcast-welcome-room-url" valueType:5 defaultValue:v22];

  [(IMMutableBagKeySet *)v35 addBagKey:@"podcast-redirect-url-prefix" valueType:4 defaultValue:@"https://pcr.apple.com/id"];
  v23 = [MEMORY[0x1E695DFF8] URLWithString:@"https://bookkeeper.itunes.apple.com/WebObjects/MZBookkeeper.woa/wa/register"];
  [(IMMutableBagKeySet *)v35 addBagKey:@"kvs-register" valueType:5 defaultValue:v23];

  v24 = [MEMORY[0x1E695DFF8] URLWithString:@"https://buy.itunes.apple.com/WebObjects/MZFinance.woa/wa/acknowledgePrivacy"];
  [(IMMutableBagKeySet *)v35 addBagKey:@"privacyAcknowledgementUrl" valueType:5 defaultValue:v24];

  [(AMSMutableBagKeySet *)v35 addBagKey:@"kvs-getall.com.apple.upp" valueType:5];
  [(AMSMutableBagKeySet *)v35 addBagKey:@"kvs-putall.com.apple.upp" valueType:5];
  [(AMSMutableBagKeySet *)v35 addBagKey:@"baseURLForGETAll" valueType:5];
  [(AMSMutableBagKeySet *)v35 addBagKey:@"baseURLForPUTAll" valueType:5];
  [(IMMutableBagKeySet *)v35 addBagKey:@"upp-disabled" valueType:4 defaultValue:@"NO"];
  [(IMMutableBagKeySet *)v35 addBagKey:@"UPPDisabled" valueType:1 defaultValue:MEMORY[0x1E695E110]];
  LODWORD(v25) = 1163984896;
  v26 = [MEMORY[0x1E696AD98] numberWithFloat:v25];
  [(IMMutableBagKeySet *)v35 addBagKey:@"pollingInterval" valueType:2 defaultValue:v26];
  [(AMSMutableBagKeySet *)v35 addBagKey:@"mobile-network-constraints" valueType:0];
  v27 = [MEMORY[0x1E695DFF8] URLWithString:@"https://www.apple.com/feedback/apple-podcasts.html"];
  [(IMMutableBagKeySet *)v35 addBagKey:@"podcast-report-a-concern-url" valueType:5 defaultValue:v27];

  [(AMSMutableBagKeySet *)v35 addBagKey:@"podcast-cold-start-available-in-storefront" valueType:1];
  [(AMSMutableBagKeySet *)v35 addBagKey:@"podcast-cold-start-should-land-listen-now" valueType:1];
  [(AMSMutableBagKeySet *)v35 addBagKey:@"transcript-censor-words" valueType:0];
  [(IMMutableBagKeySet *)v35 addBagKey:@"podcast-delta-feed-sync-batch-enabled" valueType:1 defaultValue:v7];
  [(IMMutableBagKeySet *)v35 addBagKey:@"podcast-delta-feed-sync-batch-threshold" valueType:3 defaultValue:&unk_1F54BDFA0];
  [(IMMutableBagKeySet *)v35 addBagKey:@"podcast-delta-feed-sync-batch-size-limit" valueType:3 defaultValue:&unk_1F54BDFB8];
  [(IMMutableBagKeySet *)v35 addBagKey:@"podcast-delta-feed-sync-batch-on-pushes-rollout-percentage" valueType:3 defaultValue:&unk_1F54BDEE0];
  [(IMMutableBagKeySet *)v35 addBagKey:@"podcast-delta-feed-sync-show-decay-period-in-days" valueType:3 defaultValue:&unk_1F54BDFD0];
  [(IMMutableBagKeySet *)v35 addBagKey:@"podcast-delta-feed-sync-batch-on-pushes-size-limit" valueType:3 defaultValue:&unk_1F54BDFE8];
  v28 = MEMORY[0x1E698C7E0];
  v29 = [MEMORY[0x1E698CB88] bagKeySet];
  v30 = +[PFClientUtil bagProfileName];
  v31 = +[PFClientUtil bagProfileVersion];
  [v28 registerBagKeySet:v29 forProfile:v30 profileVersion:v31];

  v32 = MEMORY[0x1E698C7E0];
  v33 = +[PFClientUtil bagProfileName];
  v34 = +[PFClientUtil bagProfileVersion];
  [v32 registerBagKeySet:v35 forProfile:v33 profileVersion:v34];

  [*(a1 + 32) setKeySet:v35];
}

void __16__IMURLBag_init__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *MEMORY[0x1E698C708];
  v5 = v3;
  if ([v3 hasSizeLimitForNetworkType:*MEMORY[0x1E698C708]])
  {
    [*(a1 + 32) setDownloadLimitVideoPodcast:{objc_msgSend(v5, "sizeLimitForNetworkType:", v4)}];
  }
}

void __16__IMURLBag_init__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *MEMORY[0x1E698C708];
  v5 = v3;
  if ([v3 hasSizeLimitForNetworkType:*MEMORY[0x1E698C708]])
  {
    [*(a1 + 32) setDownloadLimitPodcast:{objc_msgSend(v5, "sizeLimitForNetworkType:", v4)}];
  }
}

void __35__IMURLBag_updateBagOnCurrentQueue__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __35__IMURLBag_updateBagOnCurrentQueue__block_invoke_2;
    block[3] = &unk_1E856AFB8;
    v11 = v5;
    v12 = v6;
    v13 = v8;
    dispatch_async(v9, block);
  }
}

void __35__IMURLBag_updateBagOnCurrentQueue__block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32) && !*(a1 + 40))
  {
    v7 = _MTLogCategoryBag();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_1D8CEC000, v7, OS_LOG_TYPE_DEFAULT, "Successfully updated bag snapshot.", &v9, 2u);
    }

    [*(a1 + 48) updateWithNewBag:*(a1 + 32)];
    [*(a1 + 48) setFailedUpdateAttempts:0];
  }

  else
  {
    [*(a1 + 48) setFailedUpdateAttempts:{objc_msgSend(*(a1 + 48), "failedUpdateAttempts") + 1}];
    v2 = _MTLogCategoryBag();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 48), "failedUpdateAttempts")}];
      v4 = *(a1 + 40);
      v9 = 138412546;
      v10 = v3;
      v11 = 2112;
      v12 = v4;
      _os_log_impl(&dword_1D8CEC000, v2, OS_LOG_TYPE_ERROR, "%@ failure to create snapshot bag with error %@", &v9, 0x16u);
    }

    v5 = *(a1 + 48);
    v6 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:300.0];
    [v5 scheduleBagUpdateOnDate:v6];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (BOOL)isExpired
{
  v2 = [(IMURLBag *)self bag];
  isExpired = [v2 isExpired];

  return isExpired;
}

- (id)batchFeedFetchIsEnabled
{
  if (os_feature_enabled_batch_feed_fetch_on_push_forced())
  {
    [MEMORY[0x1E698C7E8] frozenBagValueWithKey:@"podcast-delta-feed-sync-batch-enabled" value:MEMORY[0x1E695E118] valueType:1];
  }

  else
  {
    [(IMURLBag *)self BOOLForKey:@"podcast-delta-feed-sync-batch-enabled"];
  }
  v3 = ;

  return v3;
}

- (id)mediaTaskCountryCode
{
  v2 = [(IMURLBag *)self bag];
  v3 = [v2 stringForKey:@"countryCode"];

  return v3;
}

- (id)includeEntitlementsContent
{
  v2 = [(IMURLBag *)self bag];
  v3 = [v2 BOOLForKey:@"podcasts-entitlements"];

  return v3;
}

- (id)podcastsMediaAPIHostUrl
{
  v2 = [(IMURLBag *)self bag];
  v3 = [v2 URLForKey:@"podcasts-media-api-host"];

  return v3;
}

- (id)fetchCategoriesSyncThresholdValue
{
  v2 = [(IMURLBag *)self bag];
  v3 = [v2 doubleForKey:@"podcasts-category-sync-threshold-interval-seconds"];

  return v3;
}

+ (void)registerBagKeys:(id)keys
{
  v3 = MEMORY[0x1E698C7E0];
  keysCopy = keys;
  v6 = +[PFClientUtil bagProfileName];
  v5 = +[PFClientUtil bagProfileVersion];
  [v3 registerBagKeySet:keysCopy forProfile:v6 profileVersion:v5];
}

- (void)updateWithNewBag:(id)bag
{
  if (bag)
  {
    bagCopy = bag;
    [(IMURLBag *)self setCurrentSnapshot:bagCopy];
    expirationDate = [bagCopy expirationDate];

    v5 = [expirationDate dateByAddingTimeInterval:1.0];
    [(IMURLBag *)self scheduleBagUpdateOnDate:v5];
  }
}

- (void)scheduleBagUpdateOnDate:(id)date
{
  dateCopy = date;
  objc_initWeak(&location, self);
  [dateCopy timeIntervalSinceNow];
  v6 = dispatch_time(0, (v5 * 1000000000.0));
  queue = [(IMURLBag *)self queue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __36__IMURLBag_scheduleBagUpdateOnDate___block_invoke;
  v8[3] = &unk_1E8568EF0;
  objc_copyWeak(&v9, &location);
  dispatch_after(v6, queue, v8);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __36__IMURLBag_scheduleBagUpdateOnDate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateBagOnCurrentQueue];
}

- (NSDate)expirationDate
{
  v2 = [(IMURLBag *)self bag];
  expirationDate = [v2 expirationDate];

  return expirationDate;
}

- (NSString)profile
{
  v2 = [(IMURLBag *)self bag];
  profile = [v2 profile];

  return profile;
}

- (NSString)profileVersion
{
  v2 = [(IMURLBag *)self bag];
  profileVersion = [v2 profileVersion];

  return profileVersion;
}

- (void)reportAConcernURLWithCompletion:(id)completion
{
  completionCopy = completion;
  reportAConcernURL = [(IMURLBag *)self reportAConcernURL];
  queue = [(IMURLBag *)self queue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__IMURLBag_reportAConcernURLWithCompletion___block_invoke;
  v8[3] = &unk_1E85692A0;
  v9 = completionCopy;
  v7 = completionCopy;
  [reportAConcernURL asyncValueOnQueue:queue withCompletion:v8];
}

void __44__IMURLBag_reportAConcernURLWithCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__IMURLBag_reportAConcernURLWithCompletion___block_invoke_2;
  block[3] = &unk_1E8568FF8;
  v12 = v7;
  v8 = *(a1 + 32);
  v13 = v6;
  v14 = v8;
  v9 = v6;
  v10 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __44__IMURLBag_reportAConcernURLWithCompletion___block_invoke_2(void *a1)
{
  v1 = a1[6];
  if (a1[4])
  {
    v5 = [MEMORY[0x1E695DFF8] URLWithString:@"https://www.apple.com/feedback/apple-podcasts.html"];
    (*(v1 + 16))(v1, v5);
  }

  else
  {
    v2 = a1[5];
    v3 = *(v1 + 16);
    v4 = a1[6];

    v3(v4, v2);
  }
}

- (id)metricsURL
{
  v2 = [(IMURLBag *)self bag];
  v3 = [v2 URLForKey:@"metrics/metricsUrl"];

  return v3;
}

- (id)metricsSamplingPercentageUsersLog
{
  v2 = [(IMURLBag *)self bag];
  v3 = [v2 doubleForKey:@"metrics/performance/samplingPercentageUsersLog"];

  return v3;
}

- (id)metricsSessionDurationLog
{
  v2 = [(IMURLBag *)self bag];
  v3 = [v2 doubleForKey:@"metrics/performance/sessionDurationLog"];

  return v3;
}

- (id)metricsImpressionableThreshold
{
  v2 = [(IMURLBag *)self bag];
  v3 = [v2 doubleForKey:@"metrics/impressions/viewableThreshold"];

  return v3;
}

- (id)metricsImpressionableViewablePercentage
{
  v2 = [(IMURLBag *)self bag];
  v3 = [v2 doubleForKey:@"metrics/impressions/viewablePercentage"];

  return v3;
}

- (id)metricsFastImpressionTimeout
{
  v2 = [(IMURLBag *)self bag];
  v3 = [v2 doubleForKey:@"metrics/postFrequencyLowLatency"];

  return v3;
}

- (id)mescalCertificateURL
{
  v2 = [(IMURLBag *)self bag];
  v3 = [v2 URLForKey:@"sign-sap-setup-cert"];

  return v3;
}

- (id)mescalSetupURL
{
  v2 = [(IMURLBag *)self bag];
  v3 = [v2 URLForKey:@"sign-sap-setup"];

  return v3;
}

- (id)mescalSignedActions
{
  v2 = [(IMURLBag *)self bag];
  v3 = [v2 dictionaryForKey:@"signed-actions"];

  return v3;
}

- (id)mescalSignSapRequests
{
  v2 = [(IMURLBag *)self bag];
  v3 = [v2 dictionaryForKey:@"sign-sap-request"];

  return v3;
}

- (id)mescalSignSapResponses
{
  v2 = [(IMURLBag *)self bag];
  v3 = [v2 dictionaryForKey:@"sign-sap-response"];

  return v3;
}

- (id)personalizedLookupURL
{
  v2 = [(IMURLBag *)self bag];
  v3 = [v2 URLForKey:@"storeplatform-lookup-url"];

  return v3;
}

- (id)unpersonalizedLookupURL
{
  v2 = [(IMURLBag *)self bag];
  v3 = [v2 URLForKey:@"storeplatform-lookup-url-unpersonalized"];

  return v3;
}

- (id)backgroundFetchInterval
{
  v2 = [(IMURLBag *)self bag];
  v3 = [v2 doubleForKey:@"podcast-feed-update-interval-seconds"];

  return v3;
}

- (id)libraryShowFetchThreshold
{
  v2 = [(IMURLBag *)self bag];
  v3 = [v2 doubleForKey:@"podcast-library-show-feed-update-threshold-in-seconds"];

  return v3;
}

- (id)trustedDomains
{
  v2 = [(IMURLBag *)self bag];
  v3 = [v2 arrayForKey:@"trustedDomains"];

  return v3;
}

- (id)tokenServiceUrl
{
  v2 = [(IMURLBag *)self bag];
  v3 = [v2 URLForKey:@"sf-api-token-service-url"];

  return v3;
}

- (id)personalizedChannelPollingInterval
{
  v2 = [(IMURLBag *)self bag];
  v3 = [v2 doubleForKey:@"channelSubsCacheTTL"];

  return v3;
}

- (id)languageTag
{
  v2 = [(IMURLBag *)self bag];
  v3 = [v2 stringForKey:@"language"];

  return v3;
}

- (id)reportAConcernURL
{
  v2 = [(IMURLBag *)self bag];
  v3 = [v2 URLForKey:@"podcast-report-a-concern-url"];

  return v3;
}

- (id)commerceOAuthVerificationUrl
{
  v2 = [(IMURLBag *)self bag];
  v3 = [v2 stringForKey:@"podcasts-oauth-redirect-url"];

  return v3;
}

- (id)commerceOAuthCancellationUrl
{
  v2 = [(IMURLBag *)self bag];
  v3 = [v2 stringForKey:@"podcasts-oauth-revoke-subscription-url"];

  return v3;
}

- (id)commerceMusicSubscriptionInfoUrl
{
  v2 = [(IMURLBag *)self bag];
  v3 = [v2 URLForKey:@"play-activity-feed-metadata"];

  return v3;
}

- (id)fetchMusicSubscriptionThresholdValue
{
  v2 = [(IMURLBag *)self bag];
  v3 = [v2 doubleForKey:@"podcasts-music-subs-info-interval-in-seconds"];

  return v3;
}

- (unint64_t)explicitContentBadgeTreatment
{
  v2 = [(IMURLBag *)self syncStringForKey:@"ExplicitContentBadgeTreatment"];
  v3 = [v2 isEqualToString:@"korea"];

  return v3;
}

- (id)storefrontSupportsColdStart
{
  v2 = [(IMURLBag *)self bag];
  v3 = [v2 BOOLForKey:@"podcast-cold-start-available-in-storefront"];

  return v3;
}

- (id)coldStartLandOnListenNow
{
  v2 = [(IMURLBag *)self bag];
  v3 = [v2 BOOLForKey:@"podcast-cold-start-should-land-listen-now"];

  return v3;
}

- (id)transcriptCensorWords
{
  v2 = [(IMURLBag *)self bag];
  v3 = [v2 arrayForKey:@"transcript-censor-words"];

  return v3;
}

- (id)batchFeedFetchOnPushRolloutPercentage
{
  if (os_feature_enabled_batch_feed_fetch_on_push_forced())
  {
    [MEMORY[0x1E698C7E8] frozenBagValueWithKey:@"podcast-delta-feed-sync-batch-on-pushes-rollout-percentage" value:&unk_1F54BDEE0 valueType:3];
  }

  else
  {
    [(IMURLBag *)self integerForKey:@"podcast-delta-feed-sync-batch-on-pushes-rollout-percentage"];
  }
  v3 = ;

  return v3;
}

- (id)doubleForKey:(id)key
{
  keyCopy = key;
  v5 = [(IMURLBag *)self bag];
  v6 = [v5 doubleForKey:keyCopy];

  return v6;
}

- (id)stringForKey:(id)key
{
  keyCopy = key;
  v5 = [(IMURLBag *)self bag];
  v6 = [v5 stringForKey:keyCopy];

  return v6;
}

- (id)BOOLForKey:(id)key
{
  keyCopy = key;
  v5 = [(IMURLBag *)self bag];
  v6 = [v5 BOOLForKey:keyCopy];

  return v6;
}

- (id)integerForKey:(id)key
{
  keyCopy = key;
  v5 = [(IMURLBag *)self bag];
  v6 = [v5 integerForKey:keyCopy];

  return v6;
}

- (id)URLForKey:(id)key
{
  keyCopy = key;
  v5 = [(IMURLBag *)self bag];
  v6 = [v5 URLForKey:keyCopy];

  return v6;
}

- (id)dictionaryForKey:(id)key
{
  keyCopy = key;
  v5 = [(IMURLBag *)self bag];
  v6 = [v5 dictionaryForKey:keyCopy];

  return v6;
}

- (id)arrayForKey:(id)key
{
  keyCopy = key;
  v5 = [(IMURLBag *)self bag];
  v6 = [v5 arrayForKey:keyCopy];

  return v6;
}

- (id)syncValueForKey:(id)key
{
  v49 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  valueTypeMap = [(IMMutableBagKeySet *)self->_keySet valueTypeMap];
  v6 = [valueTypeMap objectForKeyedSubscript:keyCopy];

  if (!v6)
  {
    v10 = 0;
    goto LABEL_36;
  }

  integerValue = [v6 integerValue];
  v8 = 0;
  if (integerValue <= 2)
  {
    if (integerValue == 1)
    {
      v9 = [(IMURLBag *)self BOOLForKey:keyCopy];
    }

    else
    {
      if (integerValue != 2)
      {
        goto LABEL_15;
      }

      v9 = [(IMURLBag *)self doubleForKey:keyCopy];
    }
  }

  else
  {
    switch(integerValue)
    {
      case 3:
        v9 = [(IMURLBag *)self integerForKey:keyCopy];
        break;
      case 5:
        v9 = [(IMURLBag *)self URLForKey:keyCopy];
        break;
      case 4:
        v9 = [(IMURLBag *)self stringForKey:keyCopy];
        break;
      default:
        goto LABEL_15;
    }
  }

  v8 = v9;
LABEL_15:
  v11 = _MTLogCategoryBag();
  v12 = os_signpost_id_generate(v11);

  v13 = _MTLogCategoryBag();
  v14 = v13;
  v15 = v12 - 1;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 138412290;
    v42 = keyCopy;
    _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "IMURLBag.syncValue", "Key: %@", buf, 0xCu);
  }

  v16 = [(IMURLBag *)self bag];
  liveBag = [(IMURLBag *)self liveBag];
  if (v16 == liveBag)
  {
    liveBag2 = [(IMURLBag *)self liveBag];
    isExpired = [liveBag2 isExpired];
  }

  else
  {
    isExpired = 0;
  }

  v20 = 0;
  v21 = 0;
  if (![v8 isLoaded] || (isExpired & 1) != 0 || (objc_msgSend(v8, "asyncValuePromise"), v22 = objc_claimAutoreleasedReturnValue(), v40 = 0, objc_msgSend(v22, "resultWithTimeout:error:", &v40, 0.15), v21 = objc_claimAutoreleasedReturnValue(), v20 = v40, v22, !v21) || v20)
  {
    v39 = keyCopy;
    v25 = _MTLogCategoryBag();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      isLoaded = [v8 isLoaded];
      v27 = v12 - 1;
      v28 = v6;
      v29 = v8;
      v30 = v16;
      v31 = v12;
      v32 = isLoaded;
      isExpired2 = [(IMURLBag *)self isExpired];
      *buf = 138413058;
      v42 = v39;
      v43 = 1024;
      v44 = v32;
      v12 = v31;
      v16 = v30;
      v8 = v29;
      v6 = v28;
      v15 = v27;
      v45 = 1024;
      v46 = isExpired2;
      v47 = 2112;
      v48 = v20;
      _os_log_impl(&dword_1D8CEC000, v25, OS_LOG_TYPE_ERROR, "Failed synchronous bag key request: %@ isLoaded %d, isExpired %d. Error: %@", buf, 0x22u);
    }

    v34 = _MTLogCategoryBag();
    v35 = v34;
    if (v15 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v34))
    {
      *buf = 138412290;
      v42 = v20;
      _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v35, OS_SIGNPOST_INTERVAL_END, v12, "IMURLBag.syncValue", "Error: %@", buf, 0xCu);
    }

    defaultValueMap = [(IMMutableBagKeySet *)self->_keySet defaultValueMap];
    keyCopy = v39;
    v10 = [defaultValueMap objectForKeyedSubscript:v39];
  }

  else
  {
    v23 = _MTLogCategoryBag();
    v24 = v23;
    if (v15 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v24, OS_SIGNPOST_INTERVAL_END, v12, "IMURLBag.syncValue", "", buf, 2u);
    }

    v21 = v21;
    v20 = 0;
    v10 = v21;
  }

LABEL_36:
  v37 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)syncStringForKey:(id)key
{
  v3 = [(IMURLBag *)self syncValueForKey:key];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v3];
  }

  v5 = v4;

  return v5;
}

- (void)createSnapshotWithCompletion:(id)completion
{
  completionCopy = completion;
  liveBag = [(IMURLBag *)self liveBag];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__IMURLBag_createSnapshotWithCompletion___block_invoke;
  v7[3] = &unk_1E856B008;
  v8 = completionCopy;
  v6 = completionCopy;
  [liveBag createSnapshotWithCompletion:v7];
}

@end