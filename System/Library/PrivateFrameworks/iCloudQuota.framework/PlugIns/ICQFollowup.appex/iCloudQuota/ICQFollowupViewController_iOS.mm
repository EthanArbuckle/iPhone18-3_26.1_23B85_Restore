@interface ICQFollowupViewController_iOS
- (void)icqActionPhotosOptimize:(id)optimize;
- (void)icqActionPresentOptInFlowForOffer:(id)offer withCompletion:(id)completion;
- (void)icqActionPresentPurchaseFlowForOffer:(id)offer withCompletion:(id)completion;
- (void)startShowingServerUI:(id)i;
- (void)viewDidLoad;
@end

@implementation ICQFollowupViewController_iOS

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = ICQFollowupViewController_iOS;
  [(ICQFollowupViewController_iOS *)&v5 viewDidLoad];
  v3 = +[UIColor clearColor];
  view = [(ICQFollowupViewController_iOS *)self view];
  [view setBackgroundColor:v3];
}

- (void)icqActionPhotosOptimize:(id)optimize
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100001290;
  v6[3] = &unk_1000082E8;
  optimizeCopy = optimize;
  v4 = optimizeCopy;
  [ICQUIPhotosHelper enableCloudPhotosOptimizationWithCompletion:v6];
  item = [(ICQFollowupViewController *)self item];
  [(ICQFollowupViewController *)self clearFollowupItem:item];

  [(ICQFollowupViewController *)self teardownOffer];
}

- (void)icqActionPresentOptInFlowForOffer:(id)offer withCompletion:(id)completion
{
  offerCopy = offer;
  v6 = _ICQGetLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Presenting out-of-process premium CFU flow", v12, 2u);
  }

  v7 = [[ICQPremiumFlowManager alloc] initWithOffer:offerCopy];
  [v7 setDelegate:self];
  view = [(ICQFollowupViewController_iOS *)self view];
  window = [view window];
  windowScene = [window windowScene];
  _sceneIdentifier = [windowScene _sceneIdentifier];
  [v7 setPresentingSceneIdentifier:_sceneIdentifier];

  [v7 setPresentingSceneBundleIdentifier:@"com.apple.Preferences"];
  [v7 beginPremiumFlow];
  [(ICQFollowupViewController *)self setUpgradeFlowManager:v7];
}

- (void)icqActionPresentPurchaseFlowForOffer:(id)offer withCompletion:(id)completion
{
  completionCopy = completion;
  offerCopy = offer;
  v8 = _ICQGetLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Presenting CFU flow", v18, 2u);
  }

  v9 = [[ICQUpgradeFlowManager alloc] initWithOffer:offerCopy];
  [(ICQFollowupViewController *)self setUpgradeFlowManager:v9];

  upgradeFlowManager = [(ICQFollowupViewController *)self upgradeFlowManager];
  [upgradeFlowManager setDelegate:self];

  view = [(ICQFollowupViewController_iOS *)self view];
  window = [view window];
  windowScene = [window windowScene];
  _sceneIdentifier = [windowScene _sceneIdentifier];
  upgradeFlowManager2 = [(ICQFollowupViewController *)self upgradeFlowManager];
  [upgradeFlowManager2 setPresentingSceneIdentifier:_sceneIdentifier];

  upgradeFlowManager3 = [(ICQFollowupViewController *)self upgradeFlowManager];
  [upgradeFlowManager3 setPresentingSceneBundleIdentifier:@"com.apple.Preferences"];

  [(ICQFollowupViewController *)self setFollowupCompletion:completionCopy];
  upgradeFlowManager4 = [(ICQFollowupViewController *)self upgradeFlowManager];
  [upgradeFlowManager4 _configurePresentingViewController:self];
}

- (void)startShowingServerUI:(id)i
{
  v5.receiver = self;
  v5.super_class = ICQFollowupViewController_iOS;
  [(ICQFollowupViewController *)&v5 startShowingServerUI:i];
  v3 = +[NSBundle mainBundle];
  bundleIdentifier = [v3 bundleIdentifier];
  [ICQMLBiomePublisher publishOfferDisplayActionEventWithBundleId:bundleIdentifier];
}

@end