@interface WLLockScreenCardsViewController
- (BOOL)pluginHandleEvent:(int64_t)a3;
- (SBLockScreenPluginAgent)pluginAgent;
- (SBLockScreenPluginAppearance)pluginAppearance;
- (WLLockScreenCardsViewController)init;
- (double)_animateViewBackgroundColor:(id)a3 from:(id)a4 to:(id)a5 delay:(double)a6 completion:(id)a7;
- (double)dismissAnimated:(BOOL)a3 withCompletion:(id)a4;
- (id)cardAtIndex:(unint64_t)a3;
- (id)diffForCardAtIndex:(unint64_t)a3;
- (id)pluginAnimateAppearanceTransition:(BOOL)a3 withCompletion:(id)a4;
- (int64_t)_overlayStyle;
- (void)_createCoverSheetViewController;
- (void)_createPassesView;
- (void)_insertViewControllerIfNeeded:(id)a3;
- (void)_passViewNotificationTimerFired;
- (void)_presentPassesAnimated:(BOOL)a3 completion:(id)a4;
- (void)_updateViewState;
- (void)authorizationCoverSheetViewControllerDidCompleteWithSuccess:(BOOL)a3;
- (void)dealloc;
- (void)disableIdleTimer;
- (void)enableIdleTimer;
- (void)loadView;
- (void)openApplication:(id)a3;
- (void)passLibrary:(id)a3 receivedUpdatedCatalog:(id)a4 passes:(id)a5 states:(id)a6;
- (void)pluginDidDeactivateWithContext:(id)a3;
- (void)pluginWillActivateWithContext:(id)a3;
- (void)updateBacklightWithProgress:(double)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation WLLockScreenCardsViewController

- (WLLockScreenCardsViewController)init
{
  v3 = +[UIDevice currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (v4)
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_6FA0(v5);
    }

    v6 = 0;
  }

  else
  {
    v24.receiver = self;
    v24.super_class = WLLockScreenCardsViewController;
    v7 = [(WLLockScreenCardsViewController *)&v24 init];
    if (v7)
    {
      v8 = +[PKPassLibrary sharedInstance];
      passLibrary = v7->_passLibrary;
      v7->_passLibrary = v8;

      [(PKPassLibrary *)v7->_passLibrary addDelegate:v7];
      v10 = objc_alloc_init(NSMutableDictionary);
      cardsByUniqueID = v7->_cardsByUniqueID;
      v7->_cardsByUniqueID = v10;

      v7->_lockscreenActive = 0;
      v7->_coverSheetViewState = 0;
      v7->_passViewState = 0;
      v7->_parentState = 0;
      v12 = +[PKGlyphView sharedStaticResources];
      staticGlyphResources = v7->_staticGlyphResources;
      v7->_staticGlyphResources = v12;

      v14 = +[NSNotificationCenter defaultCenter];
      [v14 addObserver:v7 selector:"openApplication:" name:PKOpenApplicationNotification object:0];

      v15 = +[PKBacklightController sharedInstance];
      [v15 beginAllowingBacklightRamping:v7];

      v16 = +[MCProfileConnection sharedConnection];
      v17 = [v16 effectiveBoolValueForSetting:MCFeatureCardsWhileLockedAllowed];

      v18 = 0;
      if (v17 != 1)
      {
        v18 = PKDeviceLocked();
      }

      v7->_showCoverSheet = v18;
      v19 = [[PKUISpringAnimationFactory alloc] initWithMass:1.0 stiffness:120.0 damping:18.0];
      springAnimationFactory = v7->_springAnimationFactory;
      v7->_springAnimationFactory = v19;

      v21 = v7->_springAnimationFactory;
      v22 = PKMagicCurve();
      [(PKUISpringAnimationFactory *)v21 setTiming:v22];
    }

    self = v7;
    v6 = self;
  }

  return v6;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:PKOpenApplicationNotification object:0];

  v4 = +[PKBacklightController sharedInstance];
  [v4 endAllowingBacklightRamping:self];

  [(PKAssertion *)self->_contactlessInterfaceAssertion invalidate];
  [(PKPassLibrary *)self->_passLibrary removeDelegate:self];
  [(NSTimer *)self->_resetIdleTimerTimer invalidate];
  [(NSTimer *)self->_notifyPassViewedTimer invalidate];
  [(PKAuthenticator *)self->_coverSheetAuthenticator invalidate];
  v5.receiver = self;
  v5.super_class = WLLockScreenCardsViewController;
  [(WLLockScreenCardsViewController *)&v5 dealloc];
}

- (void)pluginWillActivateWithContext:(id)a3
{
  v4 = a3;
  self->_startIndex = 0;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKey:@"seedIndex"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    self->_startIndex = [v6 unsignedIntegerValue];
  }

  v7 = [v5 PKArrayContaining:objc_opt_class() forKey:@"uniqueIDs"];
  if (v7)
  {
    objc_storeStrong(&self->_cardUniqueIDs, v7);
    v8 = [(WLLockScreenCardsViewController *)self cardAtIndex:self->_startIndex];
    [v8 loadImageSetSync:0 preheat:1];

    v9 = [(WLLockScreenCardsViewController *)self cardAtIndex:self->_startIndex];
    [v9 loadContentSync];
  }

  v10 = [v5 objectForKey:@"recordID"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [(PKPassLibrary *)self->_passLibrary diffForPassUpdateUserNotificationWithIdentifier:v10];
    diff = self->_diff;
    self->_diff = v11;
  }

  v13 = SBUIGetUserAgent();
  LODWORD(v14) = 1127299088;
  [v13 setMinimumBacklightLevel:1 animated:v14];

  [(WLLockScreenCardsViewController *)self disableIdleTimer];
  [(WLLockScreenView *)self->_lockScreenView setDataSource:self];
  objc_initWeak(&location, self);
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_1558;
  v19 = &unk_10440;
  objc_copyWeak(&v20, &location);
  [PKAssertion acquireAssertionOfType:0 withReason:@"Lockscreen Plugin" completion:&v16];
  self->_lockscreenActive = 1;
  coverSheetViewController = self->_coverSheetViewController;
  if (coverSheetViewController)
  {
    [(PKAuthorizationCoverSheetViewController *)coverSheetViewController startEvaluation:v16];
  }

  [(WLLockScreenCardsViewController *)self _updateViewState:v16];
  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

- (void)pluginDidDeactivateWithContext:(id)a3
{
  self->_lockscreenActive = 0;
  [(WLLockScreenCardsViewController *)self _updateViewState];
  [(WLLockScreenCardsViewController *)self enableIdleTimer];
  [(PKAssertion *)self->_contactlessInterfaceAssertion invalidate];
  contactlessInterfaceAssertion = self->_contactlessInterfaceAssertion;
  self->_contactlessInterfaceAssertion = 0;

  [(WLLockScreenView *)self->_lockScreenView setOffscreen:1];
  v5 = SBUIGetUserAgent();
  [v5 setMinimumBacklightLevel:1 animated:0.0];

  [(NSTimer *)self->_notifyPassViewedTimer invalidate];
  notifyPassViewedTimer = self->_notifyPassViewedTimer;
  self->_notifyPassViewedTimer = 0;
}

- (void)loadView
{
  v3 = objc_alloc_init(UIView);
  [(WLLockScreenCardsViewController *)self setView:?];
  if (self->_showCoverSheet)
  {
    [(WLLockScreenCardsViewController *)self _createCoverSheetViewController];
  }

  else
  {
    [(WLLockScreenCardsViewController *)self _createPassesView];
  }
}

- (void)_createPassesView
{
  v3 = [[WLLockScreenView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  lockScreenView = self->_lockScreenView;
  self->_lockScreenView = v3;

  [(WLLockScreenView *)self->_lockScreenView setDelegate:self];
  [(WLLockScreenView *)self->_lockScreenView setAnimatingPresentation:1];
  v5 = [(WLLockScreenCardsViewController *)self view];
  [v5 addSubview:self->_lockScreenView];

  if (self->_showCoverSheet)
  {
    [(WLLockScreenView *)self->_lockScreenView setDataSource:self];
    v6 = [(WLLockScreenCardsViewController *)self viewIfLoaded];
    [v6 setNeedsLayout];
    [v6 layoutIfNeeded];
  }
}

- (void)_createCoverSheetViewController
{
  if (!self->_coverSheetViewController)
  {
    if (!self->_coverSheetAuthenticator)
    {
      v3 = [[PKAuthenticator alloc] initWithDelegate:0];
      coverSheetAuthenticator = self->_coverSheetAuthenticator;
      self->_coverSheetAuthenticator = v3;
    }

    v5 = [[PKAuthorizationCoverSheetViewController alloc] initWithDelegate:self authenticator:self->_coverSheetAuthenticator passUniqueIdentifier:0 source:3];
    coverSheetViewController = self->_coverSheetViewController;
    self->_coverSheetViewController = v5;

    _objc_release_x1();
  }
}

- (void)viewWillLayoutSubviews
{
  v15.receiver = self;
  v15.super_class = WLLockScreenCardsViewController;
  [(WLLockScreenCardsViewController *)&v15 viewWillLayoutSubviews];
  v3 = [(WLLockScreenCardsViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  lockScreenView = self->_lockScreenView;
  if (lockScreenView)
  {
    [(WLLockScreenView *)lockScreenView setFrame:v5, v7, v9, v11];
    [(WLLockScreenView *)self->_lockScreenView layoutIfNeeded];
  }

  coverSheetViewController = self->_coverSheetViewController;
  if (coverSheetViewController)
  {
    v14 = [(PKAuthorizationCoverSheetViewController *)coverSheetViewController view];
    [v14 setFrame:{v5, v7, v9, v11}];
    [v14 layoutIfNeeded];
  }
}

- (void)_updateViewState
{
  v2 = &OBJC_IVAR___WLLockScreenCardsViewController__passViewState;
  if (self->_showCoverSheet && !self->_lockScreenView)
  {
    v2 = &OBJC_IVAR___WLLockScreenCardsViewController__coverSheetViewState;
  }

  v3 = *v2;
  if (self->_lockscreenActive)
  {
    parentState = self->_parentState;
  }

  else
  {
    parentState = 0;
  }

  if (*(&self->super.super.super.isa + v3) != parentState)
  {
    *(&self->super.super.super.isa + v3) = parentState;
    PKViewVisibilityStateAdvanceState();
  }
}

- (void)_passViewNotificationTimerFired
{
  v6 = [(WLLockScreenCardsViewController *)self cardAtIndex:[(WLLockScreenView *)self->_lockScreenView currentIndex]];
  if (v6)
  {
    passLibrary = self->_passLibrary;
    v4 = [v6 uniqueID];
    [(PKPassLibrary *)passLibrary notifyPassUsedWithIdentifier:v4 fromSource:2];
  }

  notifyPassViewedTimer = self->_notifyPassViewedTimer;
  self->_notifyPassViewedTimer = 0;
}

- (void)authorizationCoverSheetViewControllerDidCompleteWithSuccess:(BOOL)a3
{
  if (a3)
  {
    [(WLLockScreenCardsViewController *)self _createPassesView];
    objc_initWeak(&location, self);
    coverSheetAuthenticator = self->_coverSheetAuthenticator;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1FA0;
    v6[3] = &unk_104B8;
    objc_copyWeak(&v7, &location);
    v6[4] = self;
    [(PKAuthenticator *)coverSheetAuthenticator accessExternalizedContextWithCompletion:v6];
    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }

  else
  {
    v5 = [(WLLockScreenCardsViewController *)self pluginAgent];
    [v5 deactivatePluginController:self];
  }
}

- (void)passLibrary:(id)a3 receivedUpdatedCatalog:(id)a4 passes:(id)a5 states:(id)a6
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_21FC;
  v8[3] = &unk_10520;
  v9 = a5;
  v10 = self;
  v7 = v9;
  dispatch_async(&_dispatch_main_q, v8);
}

- (void)_presentPassesAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(NSArray *)self->_cardUniqueIDs count];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    while (1)
    {
      v10 = [(WLLockScreenCardsViewController *)self cardAtIndex:v9];
      if (PKRelevancyLocationServicesEnabled())
      {
        if ([v10 hasLocationRelevancyInfo])
        {
          break;
        }
      }

      if (v8 == ++v9)
      {
        goto LABEL_6;
      }
    }

    v21 = [CLLocationManager alloc];
    v22 = PKPassKitCoreBundle();
    v23 = [v22 bundlePath];
    v24 = [v21 initWithEffectiveBundlePath:v23 delegate:self onQueue:&_dispatch_main_q];

    [v24 markAsHavingReceivedLocation];
    if (!v4)
    {
      goto LABEL_9;
    }

LABEL_7:
    v11 = [(PKUISpringAnimationFactory *)self->_springAnimationFactory highFrameRateSpringAnimationWithKeyPath:@"transform.translation.y" reason:1];
    [v11 setRemovedOnCompletion:1];
    [v11 setAdditive:0];
    [v11 setFillMode:kCAFillModeBackwards];
    [v11 setBeginTime:0.150000006];
    v12 = self->_lockScreenView;
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_27E8;
    v33[3] = &unk_10548;
    v13 = v12;
    v34 = v13;
    [v11 pkui_setCompletionHandler:v33];
    v14 = [(WLLockScreenView *)self->_lockScreenView translatedView];
    v15 = [v14 layer];
    v16 = [v15 valueForKeyPath:@"transform.translation.y"];
    [v11 setFromValue:v16];

    v17 = [v14 layer];
    v18 = [NSNumber numberWithFloat:0.0];
    [v17 setValue:v18 forKeyPath:@"transform.translation.y"];

    v19 = [v14 layer];
    [v19 addAnimation:v11 forKey:@"transform.translation.y"];

    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_27F4;
    v31[3] = &unk_10570;
    v32 = v13;
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_2800;
    v27[3] = &unk_10598;
    v29 = v6;
    v30 = 0x3FD99999A0000000;
    v28 = v32;
    v20 = v32;
    [UIView animateWithDuration:0 delay:v31 options:v27 animations:0.400000006 completion:0.150000006];

    goto LABEL_11;
  }

LABEL_6:
  if (v4)
  {
    goto LABEL_7;
  }

LABEL_9:
  [(WLLockScreenView *)self->_lockScreenView setOffscreen:0];
  if (v6)
  {
    v6[2](v6);
  }

LABEL_11:
  [(NSTimer *)self->_notifyPassViewedTimer invalidate];
  v25 = [NSTimer scheduledTimerWithTimeInterval:self target:"_passViewNotificationTimerFired" selector:0 userInfo:0 repeats:5.0];
  notifyPassViewedTimer = self->_notifyPassViewedTimer;
  self->_notifyPassViewedTimer = v25;
}

- (id)cardAtIndex:(unint64_t)a3
{
  if ([(NSArray *)self->_cardUniqueIDs count]<= a3)
  {
    v6 = 0;
  }

  else
  {
    v5 = [(NSArray *)self->_cardUniqueIDs objectAtIndex:a3];
    v6 = [(NSMutableDictionary *)self->_cardsByUniqueID objectForKey:v5];
    if (!v6)
    {
      v6 = [(PKPassLibrary *)self->_passLibrary passWithUniqueID:v5];
      if (v6)
      {
        [(NSMutableDictionary *)self->_cardsByUniqueID setObject:v6 forKey:v5];
      }
    }
  }

  return v6;
}

- (id)diffForCardAtIndex:(unint64_t)a3
{
  if ([(NSArray *)self->_cardUniqueIDs count]<= a3)
  {
    v8 = 0;
  }

  else
  {
    v5 = [(NSArray *)self->_cardUniqueIDs objectAtIndex:a3];
    v6 = [(PKDiff *)self->_diff passUniqueID];
    v7 = [v6 isEqualToString:v5];

    if (v7)
    {
      v8 = self->_diff;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (double)dismissAnimated:(BOOL)a3 withCompletion:(id)a4
{
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_2E50;
  v28[3] = &unk_105C0;
  v28[4] = self;
  v6 = a4;
  v29 = v6;
  v7 = objc_retainBlock(v28);
  staticGlyphResources = self->_staticGlyphResources;
  self->_staticGlyphResources = 0;

  [PKAuthenticator resetSharedRootContextWithCompletion:0];
  if (!self->_showCoverSheet)
  {
    if (a3)
    {
      goto LABEL_6;
    }

LABEL_8:
    (v7[2])(v7);
    v13 = 0.0;
    goto LABEL_9;
  }

  if (!a3)
  {
    goto LABEL_8;
  }

  if (self->_lockScreenView)
  {
LABEL_6:
    v9 = [(PKUISpringAnimationFactory *)self->_springAnimationFactory highFrameRateSpringAnimationWithKeyPath:@"transform.translation.y" reason:1];
    [v9 setRemovedOnCompletion:1];
    [v9 setFillMode:kCAFillModeBackwards];
    [v9 setAdditive:0];
    v10 = [(WLLockScreenView *)self->_lockScreenView translatedView];
    v14 = [v10 layer];
    v15 = [v14 valueForKeyPath:@"transform.translation.y"];
    [v9 setFromValue:v15];

    v16 = +[UIScreen mainScreen];
    [v16 bounds];
    v18 = v17;

    v19 = [v10 layer];
    *&v20 = v18;
    v21 = [NSNumber numberWithFloat:v20];
    [v19 setValue:v21 forKeyPath:@"transform.translation.y"];

    v22 = [v10 layer];
    [v22 addAnimation:v9 forKey:@"transform.translation.y"];

    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_2ECC;
    v27[3] = &unk_10570;
    v27[4] = self;
    [UIView animateWithDuration:v27 animations:0.120000002];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_2EE4;
    v26[3] = &unk_10570;
    v26[4] = self;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_2EFC;
    v24[3] = &unk_105E8;
    v25 = v7;
    v13 = 0.400000006;
    [UIView animateWithDuration:v26 animations:v24 completion:0.400000006];

    goto LABEL_7;
  }

  [(PKAuthorizationCoverSheetViewController *)self->_coverSheetViewController fadeOutUIWithCompletion:0];
  [(PKAuthorizationCoverSheetViewController *)self->_coverSheetViewController invalidate];
  [(PKAuthenticator *)self->_coverSheetAuthenticator invalidate];
  v9 = [(PKAuthorizationCoverSheetViewController *)self->_coverSheetViewController view];
  v10 = +[UIColor systemGroupedBackgroundColor];
  v11 = +[UIColor clearColor];
  [(WLLockScreenCardsViewController *)self _animateViewBackgroundColor:v9 from:v10 to:v11 delay:v7 completion:0.0];
  v13 = v12;

LABEL_7:
LABEL_9:

  return v13;
}

- (SBLockScreenPluginAppearance)pluginAppearance
{
  v3 = objc_alloc_init(SBLockScreenPluginMutableAppearanceContext);
  [v3 setPresentationStyle:1];
  [v3 setBackgroundStyle:{-[WLLockScreenCardsViewController _overlayStyle](self, "_overlayStyle")}];
  [v3 setRestrictedCapabilities:36];

  return v3;
}

- (int64_t)_overlayStyle
{
  if (PKIsLowEndDevice())
  {
    return 0;
  }

  v4 = [(WLLockScreenCardsViewController *)self traitCollection];
  if ([v4 userInterfaceStyle] == &dword_0 + 2)
  {
    v3 = 1;
  }

  else
  {
    v3 = 3;
  }

  return v3;
}

- (BOOL)pluginHandleEvent:(int64_t)a3
{
  if ((a3 - 1) > 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = (a3 - 1) ^ 1;
    [(WLLockScreenCardsViewController *)self dismissAnimated:1];
  }

  return v3 & 1;
}

- (id)pluginAnimateAppearanceTransition:(BOOL)a3 withCompletion:(id)a4
{
  v4 = a3;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_324C;
  v16[3] = &unk_10610;
  v6 = a4;
  v17 = v6;
  v7 = objc_retainBlock(v16);
  if (!v4)
  {
    [(WLLockScreenCardsViewController *)self dismissAnimated:1 withCompletion:v7];
    v8 = [BSAnimationSettings settingsWithDuration:?];
    goto LABEL_6;
  }

  if (!self->_showCoverSheet || self->_lockScreenView)
  {
    [(WLLockScreenCardsViewController *)self _presentPassesAnimated:1 completion:v7];
    v8 = [BSAnimationSettings settingsWithDuration:0.400000006 delay:0.150000006];
LABEL_6:
    v9 = v8;
    goto LABEL_7;
  }

  v11 = objc_initWeak(&v15, self);
  v12 = [(PKAuthorizationCoverSheetViewController *)self->_coverSheetViewController view];
  v13 = +[UIColor clearColor];
  v14 = +[UIColor systemGroupedBackgroundColor];
  [(WLLockScreenCardsViewController *)self _animateViewBackgroundColor:v12 from:v13 to:v14 delay:v7 completion:0.150000006];

  [(PKAuthorizationCoverSheetViewController *)self->_coverSheetViewController fadeInUIAnimated:1 performSynchronizedAnimation:0];
  +[PKSpringAnimationFactory defaultDuration];
  v9 = [BSAnimationSettings settingsWithDuration:"settingsWithDuration:delay:" delay:?];
  objc_destroyWeak(&v15);
LABEL_7:

  return v9;
}

- (void)disableIdleTimer
{
  v3 = SBUIGetUserAgent();
  [v3 setIdleTimerDisabled:1 forReason:@"PassBookPluginShowPass"];

  [(NSTimer *)self->_resetIdleTimerTimer invalidate];
  v4 = [NSTimer scheduledTimerWithTimeInterval:self target:"enableIdleTimer" selector:0 userInfo:0 repeats:120.0];
  resetIdleTimerTimer = self->_resetIdleTimerTimer;
  self->_resetIdleTimerTimer = v4;

  _objc_release_x1();
}

- (void)enableIdleTimer
{
  [(NSTimer *)self->_resetIdleTimerTimer invalidate];
  resetIdleTimerTimer = self->_resetIdleTimerTimer;
  self->_resetIdleTimerTimer = 0;

  v4 = SBUIGetUserAgent();
  [v4 setIdleTimerDisabled:0 forReason:@"PassBookPluginShowPass"];
}

- (void)updateBacklightWithProgress:(double)a3
{
  v4 = (1.0 - a3) * 177.219;
  v5 = SBUIGetUserAgent();
  *&v6 = v4;
  [v5 setMinimumBacklightLevel:0 animated:v6];

  [(WLLockScreenCardsViewController *)self enableIdleTimer];
}

- (void)openApplication:(id)a3
{
  v4 = a3;
  v5 = [v4 object];
  v6 = self;
  if (v6)
  {
    v7 = v6;
    v8 = v6;
    while (1)
    {
      v9 = [(WLLockScreenCardsViewController *)v8 viewIfLoaded];
      v10 = [v9 window];

      if (v10)
      {
        break;
      }

      v11 = [(WLLockScreenCardsViewController *)v7 presentedViewController];
      v10 = v11;
      if (v8 == v11)
      {

        v10 = 0;
      }

      v8 = v10;
      if (!v10)
      {
        goto LABEL_11;
      }
    }

    if (v10 == v5)
    {
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_3524;
      v12[3] = &unk_10570;
      v13 = v4;
      [(WLLockScreenCardsViewController *)v7 dismissAnimated:1 withCompletion:v12];
    }
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

LABEL_11:
}

- (void)_insertViewControllerIfNeeded:(id)a3
{
  v7 = a3;
  v4 = [(WLLockScreenCardsViewController *)self viewIfLoaded];
  if (v4)
  {
    v5 = [v7 parentViewController];

    if (!v5)
    {
      v6 = [v7 view];
      [(WLLockScreenCardsViewController *)self addChildViewController:v7];
      [v4 addSubview:v6];
      [v7 didMoveToParentViewController:self];
      [(WLLockScreenCardsViewController *)self setNeedsStatusBarAppearanceUpdate];
      [v4 setNeedsLayout];
      [v4 layoutIfNeeded];
    }
  }
}

- (double)_animateViewBackgroundColor:(id)a3 from:(id)a4 to:(id)a5 delay:(double)a6 completion:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  v15 = [v11 layer];
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v16 = [v11 traitCollection];
  v25 = _NSConcreteStackBlock;
  v26 = 3221225472;
  v27 = sub_385C;
  v28 = &unk_10638;
  v30 = &v31;
  v17 = v13;
  v29 = v17;
  PKUIPerformWithEffectiveTraitCollection();

  v18 = [PKSpringAnimationFactory springAnimationWithKeyPath:@"backgroundColor"];
  [v18 setAdditive:0];
  [v18 setFromValue:{objc_msgSend(v12, "CGColor")}];
  [v18 setToValue:v32[3]];
  [v18 setBeginTimeMode:kCAAnimationRelative];
  if (a6 != 0.0)
  {
    [v18 setBeginTime:a6];
  }

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_3898;
  v23[3] = &unk_105E8;
  v19 = v14;
  v24 = v19;
  [v18 pkui_setCompletionHandler:v23];
  [v15 addAnimation:v18 forKey:@"backgroundColor"];
  CGColorRelease(v32[3]);
  [v11 setBackgroundColor:v17];
  [v18 duration];
  v21 = v20;

  _Block_object_dispose(&v31, 8);
  return v21;
}

- (SBLockScreenPluginAgent)pluginAgent
{
  WeakRetained = objc_loadWeakRetained(&self->pluginAgent);

  return WeakRetained;
}

@end