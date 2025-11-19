@interface ICQFollowupViewController_iOS
- (void)icqActionPhotosOptimize:(id)a3;
- (void)icqActionPresentOptInFlowForOffer:(id)a3 withCompletion:(id)a4;
- (void)icqActionPresentPurchaseFlowForOffer:(id)a3 withCompletion:(id)a4;
- (void)startShowingServerUI:(id)a3;
- (void)viewDidLoad;
@end

@implementation ICQFollowupViewController_iOS

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = ICQFollowupViewController_iOS;
  [(ICQFollowupViewController_iOS *)&v5 viewDidLoad];
  v3 = +[UIColor clearColor];
  v4 = [(ICQFollowupViewController_iOS *)self view];
  [v4 setBackgroundColor:v3];
}

- (void)icqActionPhotosOptimize:(id)a3
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100001290;
  v6[3] = &unk_1000082E8;
  v7 = a3;
  v4 = v7;
  [ICQUIPhotosHelper enableCloudPhotosOptimizationWithCompletion:v6];
  v5 = [(ICQFollowupViewController *)self item];
  [(ICQFollowupViewController *)self clearFollowupItem:v5];

  [(ICQFollowupViewController *)self teardownOffer];
}

- (void)icqActionPresentOptInFlowForOffer:(id)a3 withCompletion:(id)a4
{
  v5 = a3;
  v6 = _ICQGetLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Presenting out-of-process premium CFU flow", v12, 2u);
  }

  v7 = [[ICQPremiumFlowManager alloc] initWithOffer:v5];
  [v7 setDelegate:self];
  v8 = [(ICQFollowupViewController_iOS *)self view];
  v9 = [v8 window];
  v10 = [v9 windowScene];
  v11 = [v10 _sceneIdentifier];
  [v7 setPresentingSceneIdentifier:v11];

  [v7 setPresentingSceneBundleIdentifier:@"com.apple.Preferences"];
  [v7 beginPremiumFlow];
  [(ICQFollowupViewController *)self setUpgradeFlowManager:v7];
}

- (void)icqActionPresentPurchaseFlowForOffer:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = _ICQGetLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Presenting CFU flow", v18, 2u);
  }

  v9 = [[ICQUpgradeFlowManager alloc] initWithOffer:v7];
  [(ICQFollowupViewController *)self setUpgradeFlowManager:v9];

  v10 = [(ICQFollowupViewController *)self upgradeFlowManager];
  [v10 setDelegate:self];

  v11 = [(ICQFollowupViewController_iOS *)self view];
  v12 = [v11 window];
  v13 = [v12 windowScene];
  v14 = [v13 _sceneIdentifier];
  v15 = [(ICQFollowupViewController *)self upgradeFlowManager];
  [v15 setPresentingSceneIdentifier:v14];

  v16 = [(ICQFollowupViewController *)self upgradeFlowManager];
  [v16 setPresentingSceneBundleIdentifier:@"com.apple.Preferences"];

  [(ICQFollowupViewController *)self setFollowupCompletion:v6];
  v17 = [(ICQFollowupViewController *)self upgradeFlowManager];
  [v17 _configurePresentingViewController:self];
}

- (void)startShowingServerUI:(id)a3
{
  v5.receiver = self;
  v5.super_class = ICQFollowupViewController_iOS;
  [(ICQFollowupViewController *)&v5 startShowingServerUI:a3];
  v3 = +[NSBundle mainBundle];
  v4 = [v3 bundleIdentifier];
  [ICQMLBiomePublisher publishOfferDisplayActionEventWithBundleId:v4];
}

@end