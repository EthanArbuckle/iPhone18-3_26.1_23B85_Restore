@interface FMIPLockScreenViewController
- (BOOL)isDeviceActivated;
- (SBLockScreenPluginController)pluginController;
- (void)bottomButtonPressed:(id)a3;
- (void)callOwner:(id)a3;
- (void)canCallWithCompletion:(id)a3;
- (void)dealloc;
- (void)disable;
- (void)loadView;
- (void)setCallButtonEnabled:(BOOL)a3;
- (void)setLegibilitySettings:(id)a3;
- (void)updateAppearance;
- (void)updateLockScreenView;
- (void)viewDidLoad;
@end

@implementation FMIPLockScreenViewController

- (void)loadView
{
  v6.receiver = self;
  v6.super_class = FMIPLockScreenViewController;
  [(FMIPLockScreenViewController *)&v6 loadView];
  v3 = objc_alloc_init(CoreTelephonyClient);
  [(FMIPLockScreenViewController *)self setCtClient:v3];

  v4 = +[SBLockScreenModalViewFactory newLockScreenModalView];
  [(FMIPLockScreenViewController *)self setLockScreenModalView:v4];

  [(SBLockScreenModalView *)self->_lockScreenModalView setDelegate:self];
  [(FMIPLockScreenViewController *)self setView:self->_lockScreenModalView];
  v5 = sub_3FBC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_4198(self, v5);
  }
}

- (void)viewDidLoad
{
  v3 = +[NSNotificationCenter defaultCenter];
  v16.receiver = self;
  v16.super_class = FMIPLockScreenViewController;
  [(FMIPLockScreenViewController *)&v16 viewDidLoad];
  v4 = off_D188;
  v5 = +[NSOperationQueue mainQueue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1D6C;
  v15[3] = &unk_8318;
  v15[4] = self;
  v6 = [v3 addObserverForName:v4 object:0 queue:v5 usingBlock:v15];
  [(FMIPLockScreenViewController *)self setLostModeChangedToken:v6];

  v7 = off_D190;
  v8 = +[NSOperationQueue mainQueue];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1F04;
  v14[3] = &unk_8318;
  v14[4] = self;
  v9 = [v3 addObserverForName:v7 object:0 queue:v8 usingBlock:v14];
  [(FMIPLockScreenViewController *)self setSimStatusChangedToken:v9];

  v10 = off_D198;
  v11 = +[NSOperationQueue mainQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1FC4;
  v13[3] = &unk_8318;
  v13[4] = self;
  v12 = [v3 addObserverForName:v10 object:0 queue:v11 usingBlock:v13];
  [(FMIPLockScreenViewController *)self setRegistrationStatusChangedToken:v12];
}

- (void)dealloc
{
  [(FMIPLockScreenViewController *)self setCtClient:0];
  v3 = +[NSNotificationCenter defaultCenter];
  v4 = [(FMIPLockScreenViewController *)self lostModeChangedToken];

  if (v4)
  {
    v5 = [(FMIPLockScreenViewController *)self lostModeChangedToken];
    [v3 removeObserver:v5];

    [(FMIPLockScreenViewController *)self setLostModeChangedToken:0];
  }

  v6 = [(FMIPLockScreenViewController *)self simStatusChangedToken];

  if (v6)
  {
    v7 = [(FMIPLockScreenViewController *)self simStatusChangedToken];
    [v3 removeObserver:v7];

    [(FMIPLockScreenViewController *)self setSimStatusChangedToken:0];
  }

  v8 = [(FMIPLockScreenViewController *)self registrationStatusChangedToken];

  if (v8)
  {
    v9 = [(FMIPLockScreenViewController *)self registrationStatusChangedToken];
    [v3 removeObserver:v9];

    [(FMIPLockScreenViewController *)self setRegistrationStatusChangedToken:0];
  }

  v10.receiver = self;
  v10.super_class = FMIPLockScreenViewController;
  [(FMIPLockScreenViewController *)&v10 dealloc];
}

- (void)setLegibilitySettings:(id)a3
{
  v4 = a3;
  v5 = [(FMIPLockScreenViewController *)self lockScreenModalView];
  [v5 setLegibilitySettings:v4];
}

- (void)callOwner:(id)a3
{
  v4 = sub_3FBC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v18) = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "callOwner pressed", &v18, 2u);
  }

  v5 = +[FMDFMIPManager sharedInstance];
  v6 = [v5 lostModeInfo];

  if (v6)
  {
    v7 = [v6 phoneNumber];
    v8 = [v7 length];

    if (v8)
    {
      v9 = objc_alloc_init(NSURLComponents);
      [v9 setScheme:@"tel"];
      v10 = [v6 phoneNumber];
      [v9 setHost:v10];

      v11 = [v9 URL];
      v12 = [(FMIPLockScreenViewController *)self pluginController];
      v13 = [[SBLockScreenPluginCallAction alloc] initWithURL:v11];
      v14 = sub_3FBC();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [v6 phoneNumber];
        v18 = 138412546;
        v19 = v15;
        v20 = 2112;
        v21 = v11;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "Dialing %@ at URL %@", &v18, 0x16u);
      }

      v16 = [v12 pluginAgent];
      [v16 pluginController:v12 sendAction:v13];

      v17 = sub_3FBC();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138412290;
        v19 = v11;
        _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "Initiated call to %@", &v18, 0xCu);
      }
    }
  }
}

- (void)bottomButtonPressed:(id)a3
{
  v4 = sub_3FBC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "bottomButton pressed", buf, 2u);
  }

  v5 = +[FMDFMIPManager sharedInstance];
  v6 = [v5 lostModeInfo];

  if ([v6 lostModeType] == &dword_4 + 1)
  {
    activity_block[0] = _NSConcreteStackBlock;
    activity_block[1] = 3221225472;
    activity_block[2] = sub_26A4;
    activity_block[3] = &unk_8340;
    activity_block[4] = self;
    _os_activity_initiate(&dword_0, "AckManagedLostMode", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
  }

  else
  {
    v7 = [(FMIPLockScreenViewController *)self pluginController];
    v8 = +[SBLockScreenPluginEmergencyDialerAction action];
    v9 = sub_3FBC();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Show Emergency Dialer", buf, 2u);
    }

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_2808;
    v12[3] = &unk_8390;
    v13 = v7;
    v14 = v8;
    v10 = v8;
    v11 = v7;
    _os_activity_initiate(&dword_0, "ShowEmergencyDialer", OS_ACTIVITY_FLAG_DEFAULT, v12);
  }
}

- (void)disable
{
  v2 = [(FMIPLockScreenViewController *)self pluginController];
  v3 = sub_3FBC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "FMIPLockScreenController disabling with pluginController: %@", &v5, 0xCu);
  }

  v4 = [v2 pluginAgent];
  [v4 deactivatePluginController:v2];
}

- (void)canCallWithCompletion:(id)a3
{
  v4 = a3;
  v5 = MGCopyAnswer();
  if (v5)
  {
    v6 = v5;
    v7 = CFBooleanGetValue(v5) != 0;
    CFRelease(v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_3FBC();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v13 = v7;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Telephone Capability: %i", buf, 8u);
  }

  if ([(FMIPLockScreenViewController *)self isDeviceActivated]&& v7)
  {
    v9 = [(FMIPLockScreenViewController *)self ctClient];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_2C0C;
    v10[3] = &unk_8430;
    v10[4] = self;
    v11 = v4;
    [v9 getSubscriptionInfo:v10];
  }

  else if (v4)
  {
    (*(v4 + 2))(v4, 0);
  }
}

- (BOOL)isDeviceActivated
{
  v2 = MAEGetActivationStateWithError();
  v3 = 0;
  v4 = sub_3FBC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v8 = v2;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Current device activation state: %@", buf, 0xCu);
  }

  v5 = ([v2 isEqualToString:@"Activated"] & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"WildcardActivated") & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"Unlocked") & 1) != 0 || objc_msgSend(v2, "isEqualToString:", @"SoftActivation");
  return v5;
}

- (void)updateAppearance
{
  v4 = [(FMIPLockScreenViewController *)self pluginController];
  v2 = [v4 pluginAppearance];
  v3 = [v4 pluginAgent];
  [v3 pluginController:v4 updateAppearance:v2];
}

- (void)setCallButtonEnabled:(BOOL)a3
{
  if (a3 && [(FMIPLockScreenViewController *)self currentState]!= &dword_0 + 2)
  {
    v4 = sub_EE0(@"TAP_TO_CALL");
    v5 = [(FMIPLockScreenViewController *)self lockScreenModalView];
    [v5 setPrimaryActionButtonText:v4];

    v7 = +[UIColor systemGreenColor];
    v6 = [(FMIPLockScreenViewController *)self lockScreenModalView];
    [v6 setPrimaryActionButtonBackgroundColor:v7];
  }

  else
  {
    v7 = [(FMIPLockScreenViewController *)self lockScreenModalView];
    [v7 setPrimaryActionButtonText:0];
  }
}

- (void)updateLockScreenView
{
  v3 = +[FMDFMIPManager sharedInstance];
  v4 = [v3 lostModeInfo];

  v5 = sub_3FBC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v58 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "lostModeInfo = %@", buf, 0xCu);
  }

  -[FMIPLockScreenViewController setIsManagedLostmode:](self, "setIsManagedLostmode:", [v4 lostModeType] == &dword_0 + 3);
  v6 = sub_3FBC();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(FMIPLockScreenViewController *)self isManagedLostmode];
    *buf = 67109120;
    LODWORD(v58) = v7;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "updateLockScreenView in managedLostMode %i", buf, 8u);
  }

  if (!v4 || ![v4 lostModeEnabled])
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    goto LABEL_30;
  }

  v8 = +[FMSystemInfo sharedInstance];
  v9 = [v8 deviceClass];

  if ([v4 lostModeType] == &dword_4 + 1)
  {
    if ([v9 hasPrefix:@"iPad"])
    {
      v10 = @"LOCATED_IPAD_TITLE";
      goto LABEL_22;
    }

    v16 = [v9 hasPrefix:@"iPod"];
    v17 = @"LOCATED_IPHONE_TITLE";
    v18 = @"LOCATED_IPOD_TITLE";
  }

  else
  {
    v14 = [v4 lostModeType] == &dword_4;
    v15 = [v9 hasPrefix:@"iPad"];
    if (v14)
    {
      if (v15)
      {
        v10 = @"ERASED_IPAD_TITLE";
        goto LABEL_22;
      }

      v16 = [v9 hasPrefix:@"iPod"];
      v17 = @"ERASED_IPHONE_TITLE";
      v18 = @"ERASED_IPOD_TITLE";
    }

    else
    {
      if (v15)
      {
        v10 = @"LOST_IPAD_TITLE";
        goto LABEL_22;
      }

      v16 = [v9 hasPrefix:@"iPod"];
      v17 = @"LOST_IPHONE_TITLE";
      v18 = @"LOST_IPOD_TITLE";
    }
  }

  if (v16)
  {
    v10 = v18;
  }

  else
  {
    v10 = v17;
  }

LABEL_22:
  v13 = sub_EE0(v10);
  v19 = [v4 message];
  v20 = +[NSCharacterSet newlineCharacterSet];
  v21 = [v19 componentsSeparatedByCharactersInSet:v20];
  v22 = [v21 componentsJoinedByString:@" "];

  v23 = +[NSCharacterSet whitespaceCharacterSet];
  v12 = [v22 stringByTrimmingCharactersInSet:v23];

  v11 = [v4 phoneNumber];
  if ([v4 lostModeType] == &dword_4 + 1)
  {
    v24 = sub_EE0(@"CONTINUE_BUTTON");
    v25 = [(FMIPLockScreenViewController *)self lockScreenModalView];
    [v25 setSecondaryActionButtonText:v24];
  }

  else
  {
    v26 = [(FMIPLockScreenViewController *)self lockScreenModalView];
    [v26 setSecondaryActionButtonText:0];

    objc_initWeak(buf, self);
    v55[0] = _NSConcreteStackBlock;
    v55[1] = 3221225472;
    v55[2] = sub_3BAC;
    v55[3] = &unk_8480;
    objc_copyWeak(&v56, buf);
    [(FMIPLockScreenViewController *)self canCallWithCompletion:v55];
    objc_destroyWeak(&v56);
    objc_destroyWeak(buf);
  }

  v27 = [v4 lostModeType] == &dword_0 + 3;
  v28 = [v4 footnoteText];
  v29 = v28;
  if (v27)
  {
    v30 = [v28 length] == 0;

    if (v30)
    {
      v29 = sub_EE0(@"DEFAULT_MANAGED_FOOTNOTE_TEXT");
    }

    else
    {
      v31 = [v4 footnoteText];
      v32 = +[NSCharacterSet newlineCharacterSet];
      v33 = [v31 componentsSeparatedByCharactersInSet:v32];
      v34 = [v33 componentsJoinedByString:@" "];

      v35 = +[NSCharacterSet whitespaceCharacterSet];
      v29 = [v34 stringByTrimmingCharactersInSet:v35];
    }
  }

  v36 = [(FMIPLockScreenViewController *)self lockScreenModalView];
  [v36 setFooterText:v29];

LABEL_30:
  if ([v12 length] || objc_msgSend(v11, "length"))
  {
    v37 = sub_3FBC();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v37, OS_LOG_TYPE_DEFAULT, "currentState: FMIPLockScreenStateNormal", buf, 2u);
    }

    [(FMIPLockScreenViewController *)self setCurrentState:1];
    v38 = [(FMIPLockScreenViewController *)self lockScreenModalView];
    [v38 setTitleText:v13];

    v39 = [(FMIPLockScreenViewController *)self lockScreenModalView];
    [v39 setSubtitleText:v12];

    v40 = [(FMIPLockScreenViewController *)self lockScreenModalView];
    [v40 setSecondarySubtitleText:v11];

    LOBYTE(v40) = [v11 length] == 0;
    [(FMIPLockScreenViewController *)self setCallButtonEnabled:0];
    if ((v40 & 1) == 0)
    {
      objc_initWeak(buf, self);
      v50 = _NSConcreteStackBlock;
      v51 = 3221225472;
      v52 = sub_3CDC;
      v53 = &unk_8480;
      objc_copyWeak(&v54, buf);
      [(FMIPLockScreenViewController *)self canCallWithCompletion:&v50];
      objc_destroyWeak(&v54);
      objc_destroyWeak(buf);
    }

    [(FMIPLockScreenViewController *)self updateAppearance:v50];
  }

  else
  {
    v41 = sub_3FBC();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v41, OS_LOG_TYPE_DEFAULT, "currentState: FMIPLockScreenStateSilent", buf, 2u);
    }

    [(FMIPLockScreenViewController *)self setCurrentState:2];
    v42 = [(FMIPLockScreenViewController *)self lockScreenModalView];
    [v42 setTitleText:0];

    v43 = [(FMIPLockScreenViewController *)self lockScreenModalView];
    [v43 setSubtitleText:0];

    v44 = [(FMIPLockScreenViewController *)self lockScreenModalView];
    [v44 setSecondarySubtitleText:0];

    v45 = [(FMIPLockScreenViewController *)self lockScreenModalView];
    [v45 setPrimaryActionButtonText:0];

    v46 = [(FMIPLockScreenViewController *)self lockScreenModalView];
    [v46 setSecondaryActionButtonText:0];

    v47 = [(FMIPLockScreenViewController *)self lockScreenModalView];
    [v47 setFooterText:0];

    v48 = [(FMIPLockScreenViewController *)self lockScreenModalView];
    [v48 setImage:0];

    [(FMIPLockScreenViewController *)self updateAppearance];
    v49 = [(FMIPLockScreenViewController *)self view];
    [v49 setNeedsDisplay];
  }
}

- (SBLockScreenPluginController)pluginController
{
  WeakRetained = objc_loadWeakRetained(&self->_pluginController);

  return WeakRetained;
}

@end